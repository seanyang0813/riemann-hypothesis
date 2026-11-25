module

import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.CapelliEigenvalues.BetaAtInfinityZero
public import CompanionTheory.AutomorphicTheory.SchurLimitBounds.ZuckermanDuality.ZuckDualTOfZuckDual
public import CompanionTheory.AutomorphicTheory.SchurLimitBounds.SchurOrthogonality.SchurH

@[expose] public section

noncomputable section

namespace CompanionTheory.LimBd.Main

open Formalism.FourierDecayAlt PI.UpqRep Matrix CompanionTheory.LimBd.SchurHpk
open scoped InnerProductSpace

variable {k r : ℕ} {ε : Fin (2 * r + k + 1) → Bool} {P : B.Mat k r}

theorem inv_eq_ct (hP : IsCayleyU k r ε P) : P⁻¹ = Pᴴ :=
  Matrix.inv_eq_left_inv (Matrix.mem_unitaryGroup_iff'.1 hP.2)

theorem inv_unitary (hP : IsCayleyU k r ε P) : P⁻¹ ∈ Matrix.unitaryGroup (Fin (2 * r + k + 1)) ℂ := by
  rw [inv_eq_ct hP]
  exact Unitary.star_mem hP.2

theorem back_K (hP : IsCayleyU k r ε P) {g : B.Mat k r} (hg : g ∈ Kset ε) :
    P⁻¹ * g * P ∈ UH (Hpk k r) ∩ (Matrix.unitaryGroup (Fin (2 * r + k + 1)) ℂ : Set _) := by
  refine ⟨back_mem hP.1 ?_, Submonoid.mul_mem _ (Submonoid.mul_mem _ (inv_unitary hP) hg.1) hP.2⟩
  show gᴴ * Jm ε * g = Jm ε
  have h1 : gᴴ * g = 1 := Matrix.mem_unitaryGroup_iff'.1 hg.1
  rw [Matrix.mul_assoc, ← hg.2, ← Matrix.mul_assoc, h1, Matrix.one_mul]

theorem forth_K (hP : IsCayleyU k r ε P) {x : B.Mat k r}
    (hx : x ∈ UH (Hpk k r) ∩ (Matrix.unitaryGroup (Fin (2 * r + k + 1)) ℂ : Set _)) : P * x * P⁻¹ ∈ Kset ε := by
  have hu : P * x * P⁻¹ ∈ Matrix.unitaryGroup (Fin (2 * r + k + 1)) ℂ :=
    Submonoid.mul_mem _ (Submonoid.mul_mem _ hP.2 hx.2) (inv_unitary hP)
  refine ⟨hu, ?_⟩
  have h1 : (P * x * P⁻¹)ᴴ * Jm ε * (P * x * P⁻¹) = Jm ε := forth_mem hP.1 hx.1
  have h2 : (P * x * P⁻¹) * (P * x * P⁻¹)ᴴ = 1 := Matrix.mem_unitaryGroup_iff.1 hu
  generalize P * x * P⁻¹ = g at h1 h2
  calc g * Jm ε = g * (gᴴ * Jm ε * g) := by rw [h1]
    _ = (g * gᴴ) * Jm ε * g := by simp only [Matrix.mul_assoc]
    _ = Jm ε * g := by rw [h2, Matrix.one_mul]

theorem kfin_iff {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (hP : IsCayleyU k r ε P)
    (σ : B.Mat k r → (H →L[ℂ] H)) (v : H) :
    IsKFinHpk (k := k) (r := r) σ v ↔ IsKFin ε (fun g => σ (P⁻¹ * g * P)) v := by
  constructor
  · rintro ⟨S, hS, hv, hst⟩
    exact ⟨S, hS, hv, fun g hg y hy => hst _ (back_K hP hg) y hy⟩
  · rintro ⟨S, hS, hv, hst⟩
    refine ⟨S, hS, hv, fun x hx y hy => ?_⟩
    have := hst _ (forth_K hP hx) y hy
    simpa only [back_forth hP.1] using this

theorem kfin_zero {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (σ : B.Mat k r → (H →L[ℂ] H)) :
    IsKFinHpk (k := k) (r := r) σ 0 :=
  ⟨⊥, inferInstance, Submodule.zero_mem _, fun g _ x hx => by
    rw [Submodule.mem_bot] at hx ⊢; rw [hx, map_zero]⟩

theorem isCoef_of_J (hP : IsCayleyU k r ε P) {μ : Fin (2 * r + k + 1) → ℝ} {H : Type} [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] {τ : B.Mat k r → (H →L[ℂ] H)} (hμ : IsHCParam μ) (hτ : IsDS ε μ τ)
    {v w : H} (hv : IsKFin ε τ v) (hw : IsKFin ε τ w) :
    IsCoef k r ε μ fun x => ⟪w, τ (P * x * P⁻¹) v⟫_ℂ := by
  have e : (fun g => (fun x => τ (P * x * P⁻¹)) (P⁻¹ * g * P)) = τ := funext fun g => by
    simp only [forth_back hP.1]
  refine ⟨H, _, _, inferInstance, fun x => τ (P * x * P⁻¹), v, w, hμ, ⟨P, hP, by rw [e]; exact hτ⟩, ?_, ?_,
    fun _ _ => rfl⟩
  · rw [kfin_iff hP, e]; exact hv
  · rw [kfin_iff hP, e]; exact hw

theorem mem_box_self {n : ℕ} (μ : Fin n → ℝ) : μ ∈ Box μ 1 := fun s => by simp

theorem mem_box_add {n : ℕ} (μ : Fin n → ℝ) (s : Fin n) : μ + Pi.single s 1 ∈ Box μ 1 := fun t => by
  by_cases h : t = s
  · subst h; simp
  · simp [h]

theorem mem_box_sub {n : ℕ} (μ : Fin n → ℝ) (s : Fin n) : μ - Pi.single s 1 ∈ Box μ 1 := fun t => by
  by_cases h : t = s
  · subst h; simp
  · simp [h]

theorem mem_spanBox_of_eq {μ : Fin (2 * r + k + 1) → ℝ} {φ ψ ψ' : B.Mat k r → ℂ} (hφ : IsCoef k r ε μ φ)
    (hψ' : ψ' ∈ SpanBox k r ε μ 1) (h : ∀ g ∈ B.GV k r, ψ g = ψ' g) : ψ ∈ SpanBox k r ε μ 1 := by
  obtain ⟨H, i1, i2, i3, σ, v, w, hμ, hσ, -, hw, -⟩ := hφ
  have h0 : ψ - ψ' ∈ SpanBox k r ε μ 1 := Submodule.subset_span ⟨μ, mem_box_self μ, H, i1, i2, i3, σ, 0, w, hμ, hσ,
    kfin_zero σ, hw, fun g hg => by simp [h g hg]⟩
  simpa using Submodule.add_mem _ h0 hψ'

theorem dot_transport (hP : IsCayleyU k r ε P) (a : B.Mat k r) (x y : Fin (2 * r + k + 1) → ℂ) :
    star (P *ᵥ y) ⬝ᵥ ((P * a * P⁻¹) *ᵥ (P *ᵥ x)) = star y ⬝ᵥ (a *ᵥ x) := by
  rw [Matrix.star_mulVec, Matrix.mulVec_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, ← inv_eq_ct hP]
  congr 2
  calc P⁻¹ * (P * a * P⁻¹ * P) = (P⁻¹ * P) * a * (P⁻¹ * P) := by simp only [Matrix.mul_assoc]
    _ = a := by rw [inv_mul_P hP.1, Matrix.one_mul, Matrix.mul_one]

theorem letter_recursion : LetterStep := by
  intro t hZ hZd k r ε μ h q φ hq hφ hg hlt
  rcases hq with rfl | ⟨x, y, hq⟩
  · rw [one_mul]
    exact Submodule.subset_span ⟨μ, mem_box_self μ, hφ⟩
  have hφ' := hφ
  obtain ⟨H, i1, i2, i3, σ, v, w, hμ, ⟨P, hP, hτ⟩, hv, hw, hφG⟩ := hφ'
  rw [kfin_iff hP] at hv hw
  rcases hq with hq | hq
  · obtain ⟨X⟩ := hZ _ ε μ H _ hμ hτ h hg hlt
    obtain ⟨ι, _, sI, vI, wI, hI, hsum⟩ := X.toSum v w (P *ᵥ x) (P *ᵥ y) hv hw
    refine mem_spanBox_of_eq hφ (ψ' := ∑ i, fun g => ⟪wI i, X.σs (sI i) (P * g * P⁻¹) (vI i)⟫_ℂ)
      (Submodule.sum_mem _ fun i _ => Submodule.subset_span ⟨_, mem_box_add μ (sI i),
        isCoef_of_J hP (X.ds _ (hI i).1).1 (X.ds _ (hI i).1).2 (hI i).2.1 (hI i).2.2⟩) fun g hgG => ?_
    have := hsum _ (forth_mem hP.1 hgG)
    simp only [back_forth hP.1, dot_transport hP] at this
    rw [Pi.mul_apply, hq g hgG, hφG g hgG, mul_comm, this, Finset.sum_apply]
  · obtain ⟨X⟩ := hZd _ ε μ H _ hμ hτ h hg hlt
    obtain ⟨ι, _, sI, vI, wI, hI, hsum⟩ := X.toSum v w (P *ᵥ x) (P *ᵥ y) hv hw
    refine mem_spanBox_of_eq hφ (ψ' := ∑ i, fun g => ⟪wI i, X.σs (sI i) (P * g * P⁻¹) (vI i)⟫_ℂ)
      (Submodule.sum_mem _ fun i _ => Submodule.subset_span ⟨_, mem_box_sub μ (sI i),
        isCoef_of_J hP (X.ds _ (hI i).1).1 (X.ds _ (hI i).1).2 (hI i).2.1 (hI i).2.2⟩) fun g hgG => ?_
    have := hsum _ (forth_mem hP.1 hgG)
    have hi : (P * g * P⁻¹)⁻¹ = P * g⁻¹ * P⁻¹ := by
      rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev,
        Matrix.nonsing_inv_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).1 hP.1.1), Matrix.mul_assoc]
    simp only [back_forth hP.1, hi, dot_transport hP] at this
    rw [Pi.mul_apply, hq g hgG, hφG g hgG, mul_comm, this, Finset.sum_apply]

theorem mul_mem_spanBox_of_gap (t : ∀ n : ℕ, (Fin n → Bool) → ℝ) (hZ : ZuckT t) (hZd : ZuckDualT t) (k r : ℕ)
    (ε : Fin (2 * r + k + 1) → Bool) (lam : Fin (2 * r + k + 1) → ℝ) (h : ℝ) (d : ℕ) (q φ : B.Mat k r → ℂ)
    (hq : q ∈ Letters k r ^ d) (hφ : IsCoef k r ε lam φ) (hg : PI.ZuckTensor.GapAtLeast ε lam h)
    (hlt : t _ ε + 1 + 2 * (d : ℝ) < h) : q * φ ∈ SpanBox k r ε lam (d : ℝ) := by
  induction d generalizing q with
  | zero =>
    rw [pow_zero, Submodule.mem_one] at hq
    obtain ⟨c, rfl⟩ := hq
    rw [← Algebra.smul_def]
    exact Submodule.smul_mem _ c (Submodule.subset_span ⟨lam, fun s => by simp, hφ⟩)
  | succ d ih =>
    push_cast at hlt ⊢
    have step : Letters k r * SpanBox k r ε lam (d : ℝ) ≤ SpanBox k r ε lam ((d : ℝ) + 1) := by
      unfold Letters
      rw [SpanBox, Submodule.span_mul_span, Submodule.span_le]
      rintro _ ⟨a, ha, b, ⟨μ, hμ, hb⟩, rfl⟩
      have hgμ : PI.ZuckTensor.GapAtLeast ε μ (h - 2 * d) := by
        intro i j hij
        have h1 := hg i j hij
        have h2 := abs_le.1 (hμ i)
        have h3 := abs_le.1 (hμ j)
        rcases abs_cases (lam i - lam j) with h4 | h4 <;> rcases abs_cases (μ i - μ j) with h5 | h5 <;> linarith
      have := letter_recursion t hZ hZd k r ε μ _ a b ha hb hgμ (by linarith)
      refine Submodule.span_mono ?_ this
      rintro ψ ⟨ν, hν, hψ⟩
      refine ⟨ν, fun s => ?_, hψ⟩
      have h2 := abs_le.1 (hμ s)
      have h3 := abs_le.1 (hν s)
      rw [abs_le]
      constructor <;> linarith
    rw [pow_succ'] at hq
    refine Submodule.mul_induction_on hq (fun a ha b hb => ?_) (fun a b ha hb => ?_)
    · rw [mul_assoc]
      exact step (Submodule.mul_mem_mul ha (ih b hb (by linarith)))
    · rw [add_mul]
      exact Submodule.add_mem _ ha hb

theorem capelli_inequivalence : Inequiv := by
  apply CompanionTheory.CapEig.capelli_inequivalence

end CompanionTheory.LimBd.Main
