module

public import Formalism.HermitianCurvature.StatementKB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.JointInstanceTheoremA

@[expose] public section

open Finset
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.PBA

open Formalism.FourierDecayAlt

section block

variable {α β : Type} (Y₁ : Finset α) (Y₂ : Finset β)

noncomputable def qf {γ : Type} (Y : Finset γ) (k : γ → γ → ℂ) (c : γ → ℂ) : ℂ :=
  ∑ x ∈ Y, ∑ y ∈ Y, conj (c x) * k x y * c y

def blockK (a : α → α → ℂ) (w : α → β → ℂ) (b : β → β → ℂ) : α ⊕ β → α ⊕ β → ℂ :=
  fun x y => match x, y with
    | .inl p, .inl q => a p q
    | .inl p, .inr q => w p q
    | .inr q, .inl p => conj (w p q)
    | .inr p, .inr q => b p q

theorem blockPSD_iff (a : α → α → ℂ) (w : α → β → ℂ) (b : β → β → ℂ) :
    KB.BlockPSD Y₁ Y₂ a w b ↔ TB.PSDOn (Y₁.disjSum Y₂) (blockK a w b) := by
  unfold KB.BlockPSD blockK
  exact Iff.rfl

theorem qf_block (a : α → α → ℂ) (w : α → β → ℂ) (b : β → β → ℂ) (c : α ⊕ β → ℂ) :
    (qf (Y₁.disjSum Y₂) (blockK a w b) c).re =
      (qf Y₁ a (fun p => c (.inl p))).re + (qf Y₂ b (fun q => c (.inr q))).re +
        2 * (∑ p ∈ Y₁, ∑ q ∈ Y₂, conj (c (.inl p)) * w p q * c (.inr q)).re := by
  have hconj : (∑ x ∈ Y₂, ∑ y ∈ Y₁, conj (c (.inr x)) * conj (w y x) * c (.inl y)) =
      conj (∑ p ∈ Y₁, ∑ q ∈ Y₂, conj (c (.inl p)) * w p q * c (.inr q)) := by
    rw [Finset.sum_comm]

    simp only [map_sum, map_mul, Complex.conj_conj]
    refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
    ring
  simp only [qf, Finset.sum_disjSum, blockK, Finset.sum_add_distrib]
  rw [hconj]
  simp only [Complex.add_re, Complex.conj_re]
  ring

open scoped ComplexOrder Matrix in
theorem psd_iff_qf {γ : Type} (Y : Finset γ) (k : γ → γ → ℂ) :
    TB.PSDOn Y k ↔ (∀ x ∈ Y, ∀ y ∈ Y, k y x = conj (k x y)) ∧ ∀ c, 0 ≤ (qf Y k c).re := by
  classical
  let M : Matrix Y Y ℂ := Matrix.of fun i j : Y => k i j
  have hqf (c : γ → ℂ) : qf Y k c =
      star (fun i : Y => c i) ⬝ᵥ (M *ᵥ (fun i : Y => c i)) := by
    simp only [qf, dotProduct, Matrix.mulVec, M, Matrix.of_apply, Pi.star_apply,
      Complex.star_def, Finset.mul_sum, ← mul_assoc]
    rw [← Finset.sum_coe_sort Y]
    exact Finset.sum_congr rfl fun _ _ => by rw [← Finset.sum_coe_sort Y]
  change M.PosSemidef ↔ _
  rw [Matrix.posSemidef_iff_dotProduct_mulVec]
  constructor
  · rintro ⟨hH, hpos⟩
    refine ⟨fun x hx y hy => (hH.apply ⟨y, hy⟩ ⟨x, hx⟩).symm, fun c => ?_⟩
    rw [hqf]
    exact (Complex.le_def.mp (hpos fun i => c i)).1
  · rintro ⟨hh, hq⟩
    have hH : M.IsHermitian := Matrix.IsHermitian.ext fun i j => by
      simp only [M, Matrix.of_apply]
      rw [hh j j.2 i i.2]
      rfl
    refine ⟨hH, fun x => ?_⟩
    have hre := hq (fun g => if h : g ∈ Y then x ⟨g, h⟩ else 0)
    rw [hqf] at hre
    have hx : (fun g : Y => if h : (g : γ) ∈ Y then x ⟨g, h⟩ else 0) = x :=
      funext fun g => dite_eq_left g.2
    rw [hx] at hre
    exact Complex.le_def.mpr ⟨by simpa using hre,
      by simpa using (hH.im_star_dotProduct_mulVec_self x).symm⟩

theorem block_quad {a : α → α → ℂ} {w : α → β → ℂ} {b : β → β → ℂ} (h : KB.BlockPSD Y₁ Y₂ a w b)
    (c : α → ℂ) (d : β → ℂ) :
    0 ≤ (qf Y₁ a c).re + (qf Y₂ b d).re + 2 * (∑ p ∈ Y₁, ∑ q ∈ Y₂, conj (c p) * w p q * d q).re := by
  have h1 := ((psd_iff_qf _ _).1 ((blockPSD_iff Y₁ Y₂ a w b).1 h)).2 (Sum.elim c d)
  rw [qf_block] at h1
  simpa using h1

end block

theorem cross_le {A B x : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (h : x ^ 2 ≤ A * B) (hx : 0 ≤ x) : 2 * x ≤ A + B := by
  have hAB : 0 ≤ A + B := by linarith
  by_contra hc
  push_neg at hc
  nlinarith [sq_nonneg (A - B), mul_nonneg hAB hx]

theorem block_of_cauchy_schwarz : KB.BlockOfCS := by
  intro α β Y₁ Y₂ a w b ha hb hcs
  have ha' := (psd_iff_qf Y₁ a).1 ha
  have hb' := (psd_iff_qf Y₂ b).1 hb
  rw [blockPSD_iff, psd_iff_qf]
  refine ⟨fun x hx y hy => ?_, fun c => ?_⟩
  · rcases x with p | q <;> rcases y with p' | q'
    · simpa [blockK] using ha'.1 p (by simpa using hx) p' (by simpa using hy)
    · simp [blockK]
    · simp [blockK]
    · simpa [blockK] using hb'.1 q (by simpa using hx) q' (by simpa using hy)
  · rw [qf_block]
    set X := ∑ p ∈ Y₁, ∑ q ∈ Y₂, conj (c (.inl p)) * w p q * c (.inr q) with hX
    have hA := ha'.2 (fun p => c (.inl p))
    have hB := hb'.2 (fun q => c (.inr q))
    have h1 := hcs (fun p => conj (c (.inl p))) (fun q => conj (c (.inr q)))
    have eX : (∑ p ∈ Y₁, ∑ q ∈ Y₂, conj (c (.inl p)) * conj (conj (c (.inr q))) * w p q) = X := by
      rw [hX]
      refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
      rw [Complex.conj_conj]
      ring
    have eA : (∑ p ∈ Y₁, ∑ p' ∈ Y₁, conj (c (.inl p)) * conj (conj (c (.inl p'))) * a p p') =
        qf Y₁ a (fun p => c (.inl p)) := by
      simp only [qf, Complex.conj_conj]
      refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
      ring
    have eB : (∑ q ∈ Y₂, ∑ q' ∈ Y₂, conj (c (.inr q)) * conj (conj (c (.inr q'))) * b q q') =
        qf Y₂ b (fun q => c (.inr q)) := by
      simp only [qf, Complex.conj_conj]
      refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
      ring
    rw [eX, eA, eB] at h1
    have hx := cross_le hA hB h1 (norm_nonneg X)
    have hre : -‖X‖ ≤ X.re := by
      have h2 := Complex.normSq_eq_norm_sq X
      rw [Complex.normSq_apply] at h2
      nlinarith [sq_nonneg X.im, norm_nonneg X]
    linarith

theorem blockPSD_mul {α β : Type} {Y₁ : Finset α} {Y₂ : Finset β} {a a' : α → α → ℂ} {w w' : α → β → ℂ}
    {b b' : β → β → ℂ} (h : KB.BlockPSD Y₁ Y₂ a w b) (h' : KB.BlockPSD Y₁ Y₂ a' w' b') :
    KB.BlockPSD Y₁ Y₂ (fun p q => a p q * a' p q) (fun p q => w p q * w' p q) (fun p q => b p q * b' p q) := by
  rw [blockPSD_iff] at *
  refine Jx7.psd_congr ?_ (Jx7.psd_mul h h')
  intro x _ y _
  rcases x with p | q <;> rcases y with p' | q' <;> simp [blockK, map_mul]

theorem blockPSD_ones {α β : Type} (Y₁ : Finset α) (Y₂ : Finset β) :
    KB.BlockPSD Y₁ Y₂ (fun _ _ => 1) (fun _ _ => 1) (fun _ _ => 1) := by
  rw [blockPSD_iff]
  refine Jx7.psd_congr ?_ Jx7.psd_one
  intro x _ y _
  cases x <;> cases y <;> simp [blockK]

theorem blockPSD_prod {α β ι : Type} {Y₁ : Finset α} {Y₂ : Finset β} (s : Finset ι) (a : ι → α → α → ℂ)
    (w : ι → α → β → ℂ) (b : ι → β → β → ℂ) (h : ∀ v ∈ s, KB.BlockPSD Y₁ Y₂ (a v) (w v) (b v)) :
    KB.BlockPSD Y₁ Y₂ (fun p q => ∏ v ∈ s, a v p q) (fun p q => ∏ v ∈ s, w v p q)
      (fun p q => ∏ v ∈ s, b v p q) := by
  classical
  rw [blockPSD_iff]
  refine Jx7.psd_congr ?_ (Jx7.psd_prod s (fun v => blockK (a v) (w v) (b v))
    (fun v hv => (blockPSD_iff Y₁ Y₂ _ _ _).1 (h v hv)))
  intro x _ y _
  cases x <;> cases y <;> simp [blockK, map_prod]

open scoped ComplexOrder Matrix in
private theorem matrixGramBound {n : Type*} [Fintype n] (M : Matrix n n ℂ)
    (h : M.PosSemidef) (u v : n → ℂ) :
    ‖(M *ᵥ v) ⬝ᵥ star u‖ ≤
      (((M *ᵥ u) ⬝ᵥ star u).re + ((M *ᵥ v) ⬝ᵥ star v).re) / 2 := by
  let instGroup : SeminormedAddCommGroup (n → ℂ) := M.toSeminormedAddCommGroup h
  let instInner : InnerProductSpace ℂ (n → ℂ) := M.toInnerProductSpace h
  let nu := @norm _ instGroup.toNorm u
  let nv := @norm _ instGroup.toNorm v
  have huv : ‖(M *ᵥ v) ⬝ᵥ star u‖ ≤ nu * nv := norm_inner_le_norm (𝕜 := ℂ) u v
  have hu : nu ^ 2 = ((M *ᵥ u) ⬝ᵥ star u).re := norm_sq_eq_re_inner (𝕜 := ℂ) u
  have hv : nv ^ 2 = ((M *ᵥ v) ⬝ᵥ star v).re := norm_sq_eq_re_inner (𝕜 := ℂ) v
  rw [← hu, ← hv]
  nlinarith [sq_nonneg (nu - nv)]

open scoped ComplexOrder Matrix in
theorem block_cross_le {α β : Type} {Y₁ : Finset α} {Y₂ : Finset β} {a : α → α → ℂ} {w : α → β → ℂ}
    {b : β → β → ℂ} (h : KB.BlockPSD Y₁ Y₂ a w b) :
    ‖∑ p ∈ Y₁, ∑ q ∈ Y₂, w p q‖ ≤ ((∑ p ∈ Y₁, ∑ p' ∈ Y₁, a p p').re + (∑ q ∈ Y₂, ∑ q' ∈ Y₂, b q q').re) / 2 := by
  classical
  let Y := Y₁.disjSum Y₂
  let M : Matrix Y Y ℂ := Matrix.of fun i j : Y => blockK a w b i j
  have hM : M.PosSemidef := (blockPSD_iff Y₁ Y₂ a w b).1 h
  let u : α ⊕ β → ℂ := Sum.elim (fun _ => 1) (fun _ => 0)
  let v : α ⊕ β → ℂ := Sum.elim (fun _ => 0) (fun _ => 1)
  have hsum (c d : α ⊕ β → ℂ) :
      (M *ᵥ (fun j : Y => d j)) ⬝ᵥ star (fun i : Y => c i) =
        ∑ x ∈ Y, ∑ y ∈ Y, conj (c x) * blockK a w b x y * d y := by
    rw [dotProduct_comm]
    simp only [dotProduct, Matrix.mulVec, M, Matrix.of_apply, Pi.star_apply,
      Complex.star_def, Finset.mul_sum, ← mul_assoc]
    rw [← Finset.sum_coe_sort Y]
    exact Finset.sum_congr rfl fun _ _ => by rw [← Finset.sum_coe_sort Y]
  simpa [hsum, Y, u, v, Finset.sum_disjSum, blockK] using
    matrixGramBound M hM (fun i : Y => u i) (fun i : Y => v i)

end Formalism.FourierDecayAlt.P.PBA
