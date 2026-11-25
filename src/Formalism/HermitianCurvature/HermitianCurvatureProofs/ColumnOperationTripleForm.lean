module

public import Formalism.HermitianCurvature.BlockKernelPropertiesOfSteps
public import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.MulInvBlockDiagApplySameBlock
public import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.LowUniMulVecELast
public import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Matrix

namespace Formalism.FourierDecayAlt.P.A5x2

open Formalism.DoubleCosetMeasures.P Formalism.DoubleCosetMeasures.P.Phase

theorem blk_app (l : List ℕ) (s : ℕ) (hs : 1 ≤ s) : blk (l ++ [s]) l.sum = l.length := by
  induction l with
  | nil => simp [blk]; omega
  | cons a l ih => simp [blk, ih]; omega

theorem revIn_app (l : List ℕ) (s : ℕ) (hs : 1 ≤ s) :
    revIn (l ++ [s]) l.sum = l.sum + (s - 1) := by
  induction l with
  | nil => simp [revIn]; omega
  | cons a l ih => simp [revIn, ih]; omega

theorem inv_last {K : Type} [CommRing K] (S : List ℕ) (T : ℕ → Kˣ)
    (x y : Matrix (Fin S.sum) (Fin S.sum) K) (hx : IsLowUni x) (hy : IsUpUni y)
    (a b c : Fin S.sum) (hb : b.val + 1 = S.sum) (hc : revF S c = b) :
    (x * pt S T * y)⁻¹ a b = (((T (blk S c))⁻¹ : Kˣ) : K) * y⁻¹ a c := by
  have hinv : (x * pt S T * y)⁻¹ = y⁻¹ * ptI S T * x⁻¹ := by
    apply Matrix.inv_eq_right_inv
    calc x * pt S T * y * (y⁻¹ * ptI S T * x⁻¹)
        = x * (pt S T * ((y * y⁻¹) * ptI S T)) * x⁻¹ := by simp only [Matrix.mul_assoc]
      _ = 1 := by
        rw [mul_inv_one_up hy, Matrix.one_mul, pt_mul_ptI, Matrix.mul_one, mul_inv_one_low hx]
  have hxi := isLowUni_inv K hx
  have hbc : revF S b = c := by rw [← hc, revF_revF]
  rw [hinv, Matrix.mul_apply, Finset.sum_eq_single b]
  · rw [hxi.2 b, mul_one, ptI, mul_mono, hbc, mul_comm]
  · intro k _ hk
    have : k < b := by
      rw [Fin.lt_def]
      have h1 := k.2
      have h2 : k.val ≠ b.val := fun h => hk (Fin.ext h)
      omega
    rw [low_zero hxi this, mul_zero]
  · simp

theorem char_mem_of_annihilator {C : Type} [AddCommGroup C] [Finite C]
    (H : AddSubgroup (AddChar C ℂ)) (χ : AddChar C ℂ)
    (h : ∀ c : C, (∀ η ∈ H, η c = 1) → χ c = 1) : χ ∈ H := by
  by_contra hχ
  have hne : (QuotientAddGroup.mk χ : AddChar C ℂ ⧸ H) ≠ 0 := by
    rwa [Ne, QuotientAddGroup.eq_zero_iff]
  obtain ⟨Φ, hΦ⟩ := AddChar.exists_apply_ne_zero.2 hne
  let Ψ : AddChar (AddChar C ℂ) ℂ := Φ.compAddMonoidHom (QuotientAddGroup.mk' H)
  obtain ⟨c, hc⟩ := AddChar.doubleDualEmb_bijective.2 Ψ
  have hev : ∀ η : AddChar C ℂ, η c = Φ (QuotientAddGroup.mk η) := by
    intro η
    have := DFunLike.congr_fun hc η
    simpa [Ψ] using this
  apply hΦ
  rw [← hev]
  apply h
  intro η hη
  rw [hev, (QuotientAddGroup.eq_zero_iff η).2 hη, AddChar.map_zero_eq_one]

section

variable {K : Type} [CommRing K] (R : Subring K) (ψ : AddChar K ℂ)

theorem psiKR_mk (hψ : ∀ r ∈ R, ψ r = 1) (a : K) :
    psiKR R ψ (Submodule.Quotient.mk a) = ψ a := by
  unfold psiKR
  have h1 : (Submodule.Quotient.mk (Quotient.out (Submodule.Quotient.mk a : KR R)) : KR R)
      = Submodule.Quotient.mk a := Quotient.out_eq _
  rw [Submodule.Quotient.eq] at h1
  obtain ⟨r, hr⟩ := h1
  have h2 : Quotient.out (Submodule.Quotient.mk a : KR R) = a + (r : K) := by
    have : (r : K) = Quotient.out (Submodule.Quotient.mk a : KR R) - a := hr
    rw [this]; ring
  rw [h2, AddChar.map_add_eq_mul, hψ r r.2, mul_one]

noncomputable def psiB (hψ : ∀ r ∈ R, ψ r = 1) : AddChar (KR R) ℂ where
  toFun := psiKR R ψ
  map_zero_eq_one' := by
    have := psiKR_mk R ψ hψ 0
    rw [AddChar.map_zero_eq_one] at this
    exact this
  map_add_eq_mul' := by
    intro x y
    obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    obtain ⟨b, rfl⟩ := Submodule.Quotient.mk_surjective _ y
    rw [← Submodule.Quotient.mk_add, psiKR_mk R ψ hψ, psiKR_mk R ψ hψ, psiKR_mk R ψ hψ,
      AddChar.map_add_eq_mul]

theorem psiB_sep (hsd : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (hψ : ∀ r ∈ R, ψ r = 1)
    (x : KR R) (hx : ∀ r : R, psiB R ψ hψ (r • x) = 1) : x = 0 := by
  obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rw [Submodule.Quotient.mk_eq_zero]
  have : a ∈ R := by
    rw [← hsd a]
    intro r hr
    have h1 := hx ⟨r, hr⟩
    rw [← Submodule.Quotient.mk_smul] at h1
    have h2 : psiKR R ψ (Submodule.Quotient.mk ((⟨r, hr⟩ : R) • a)) = 1 := h1
    rw [psiKR_mk R ψ hψ] at h2
    rwa [mul_comm]
  exact ⟨⟨a, this⟩, rfl⟩

end

theorem dualSpan : DualSpan := by
  intro K _ R ψ hsd C _ _ _ ι _ lam μ hμ
  have hψ : ∀ r ∈ R, ψ r = 1 := fun r hr => by simpa using (hsd 1).2 R.one_mem r hr
  let χ : (C →ₗ[R] KR R) →+ AddChar C ℂ := AddMonoidHom.mk'
    (fun α => (psiB R ψ hψ).compAddMonoidHom α.toAddMonoidHom) (by
      intro α β
      ext c
      simp [AddChar.add_apply, AddChar.map_add_eq_mul])
  have hχ : ∀ α c, χ α c = psiB R ψ hψ (α c) := fun α c => rfl
  let S := Submodule.span R (Set.range lam)
  have hmem : χ μ ∈ S.toAddSubgroup.map χ := by
    apply char_mem_of_annihilator
    intro c hc
    have hz : ∀ α ∈ S, α c = 0 := by
      intro α hα
      apply psiB_sep R ψ hsd hψ
      intro r
      have := hc (χ (r • α)) ⟨r • α, S.smul_mem r hα, rfl⟩
      rwa [hχ] at this
    rw [hχ, hμ c (fun j => hz _ (Submodule.subset_span ⟨j, rfl⟩)), AddChar.map_zero_eq_one]
  obtain ⟨α, hα, hαμ⟩ := hmem
  have : α = μ := by
    ext c
    rw [← sub_eq_zero]
    apply psiB_sep R ψ hsd hψ
    intro r
    have h1 := DFunLike.congr_fun hαμ (r • c)
    rw [hχ, hχ] at h1
    rw [smul_sub, ← map_smul, ← map_smul, AddChar.map_sub_eq_div, h1, div_self]
    exact (AddChar.val_isUnit _ _).ne_zero
  rw [← this]; exact hα

section ColumnOp

variable {K : Type} [CommRing K] {n : ℕ}

end ColumnOp

section Triple

variable {K : Type} [CommRing K] (R : Subring K) {n : ℕ}

theorem rowN_fin (a : Fin n) (x : Fin n → K) : rowN R a.val x = x a := by
  simp only [rowN, LinearMap.sum_apply]
  rw [Finset.sum_eq_single a]
  · simp
  · intro b _ hb
    have : ¬ (b.val = a.val) := fun h => hb (Fin.ext h)
    simp [this]
  · simp

theorem rowN_big (j : ℕ) (hj : n ≤ j) : (rowN R j : (Fin n → K) →ₗ[R] K) = 0 := by
  unfold rowN
  apply Finset.sum_eq_zero
  intro a _
  have : a.val ≠ j := by have := a.2; omega
  simp [this]

theorem lamTil_fin (Z : Matrix (Fin n) (Fin n) K) (a : Fin n) (v : Fin n → R) :
    lamTil R Z a.val v = (Z⁻¹ *ᵥ coeLin R v) a := rowN_fin R a _

theorem lamTil_big (Z : Matrix (Fin n) (Fin n) K) (j : ℕ) (hj : n ≤ j) : lamTil R Z j = 0 := by
  simp [lamTil, rowN_big R j hj]

theorem lamN_big (Z : Matrix (Fin n) (Fin n) K) (l : ℕ) (hl : n ≤ l) : lamN R Z l = 0 := by
  simp [lamN, lamTil_big R Z l hl]

theorem lamN_latZ (Z : Matrix (Fin n) (Fin n) K) (hZ : IsUnit Z.det) (l : ℕ) :
    latZ R Z ≤ LinearMap.ker (lamN R Z l) := by
  intro v hv
  obtain ⟨y, hy⟩ := (mem_latZ R Z v).1 hv
  rw [LinearMap.mem_ker]
  by_cases hl : l < n
  · show Submodule.Quotient.mk (lamTil R Z (⟨l, hl⟩ : Fin n).val v) = 0
    rw [lamTil_fin, ← hy, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hZ, Matrix.one_mulVec,
      Submodule.Quotient.mk_eq_zero, coeLin_apply]
    exact ⟨y ⟨l, hl⟩, rfl⟩
  · rw [lamN_big R Z l (by omega)]; rfl

theorem lamLin_eq (Z : Matrix (Fin n) (Fin n) K) (hn : 0 < n) : lamLin R Z = lamN R Z (n - 1) := by
  unfold lamN lamLin lamTil
  congr 2
  unfold rowN lastCoord
  refine Finset.sum_congr rfl fun a _ => ?_
  have : a.val + 1 = n ↔ a.val = n - 1 := by omega
  simp [this]

theorem smul_coe (r : R) (x : Fin n → K) : r • x = (r : K) • x := rfl

variable {R}

variable (R)

end Triple

theorem lamTil_eLast {K : Type} [CommRing K] (R : Subring K) {n : ℕ}
    (Z : Matrix (Fin n) (Fin n) K) (a b : Fin n) (hb : b.val + 1 = n) :
    lamTil R Z a.val (eLast R) = Z⁻¹ a b := by
  rw [lamTil_fin]
  simp only [Matrix.mulVec, dotProduct]
  rw [Finset.sum_eq_single b]
  · simp [coeLin_apply, eLast, hb]
  · intro c _ hc
    have : ¬ (c.val + 1 = n) := fun h => hc (Fin.ext (by omega))
    simp [coeLin_apply, eLast, this]
  · simp

end Formalism.FourierDecayAlt.P.A5x2

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.P.A5x2 Formalism.DoubleCosetMeasures.P Formalism.DoubleCosetMeasures.P.Phase

theorem inverse_last_column_formula : Formalism.FourierDecayAlt.A5.InvLastCol := by
  intro K _ h s t hs x y hx hy a b c hb hc
  have hsum : (addBlock h s t).1.sum = h.1.sum + s := by simp [addBlock]
  have hrc : revF (addBlock h s t).1 c = b := by
    apply Fin.ext
    rw [revF_val, hc]
    show revIn (h.1 ++ [s]) h.1.sum = b.val
    rw [revIn_app _ _ hs]; omega
  have hblk : (addBlock h s t).2 (blk (addBlock h s t).1 c) = t := by
    rw [hc]
    show Function.update h.2 h.1.length t (blk (h.1 ++ [s]) h.1.sum) = t
    rw [blk_app _ _ hs, Function.update_self]
  have hyi := isUpUni_inv K hy
  have key : ∀ a', (x * pt (addBlock h s t).1 (addBlock h s t).2 * y)⁻¹ a' b
      = ((t⁻¹ : Kˣ) : K) * y⁻¹ a' c := by
    intro a'
    rw [inv_last _ _ x y hx hy a' b c hb hrc, hblk]
  refine ⟨key a, fun hca => ?_, ?_⟩
  · rw [key a, up_zero hyi hca, mul_zero]
  · rw [key c, hyi.2 c, mul_one]

theorem triple_form_end_identity : Formalism.FourierDecayAlt.A5.TTEnd := by
  have H := inverse_last_column_formula
  intro K _ R h h' s t t' hs h1 x y x' y' hx hy hx' hy' φ hφ hT
  have hn : (addBlock h s t).1.sum = h.1.sum + s := by simp [addBlock]
  have hn' : (addBlock h' s t').1.sum = h'.1.sum + s := by simp [addBlock]
  obtain ⟨a, ha⟩ := hT h.1.sum le_rfl (by omega)
  have e := ha (eLast R) (eLast R) hφ.1
  let c : Fin (addBlock h s t).1.sum := ⟨h.1.sum, by omega⟩
  let b : Fin (addBlock h s t).1.sum := ⟨h.1.sum + s - 1, by omega⟩
  let c' : Fin (addBlock h' s t').1.sum := ⟨h.1.sum, by omega⟩
  let b' : Fin (addBlock h' s t').1.sum := ⟨h.1.sum + s - 1, by omega⟩
  have hb : b.val + 1 = (addBlock h s t).1.sum := by simp only [b]; omega
  have hb' : b'.val + 1 = (addBlock h' s t').1.sum := by simp only [b']; omega
  have A := (H K h s t h1 x y hx hy c b c hb rfl).2.2
  have A' := (H K h' s t' h1 x' y' hx' hy' c' b' c' hb' hs).2.2
  have z : ∑ l ∈ Finset.Ioo h.1.sum (addBlock h s t).1.sum,
      a l • lamN R (x * pt (addBlock h s t).1 (addBlock h s t).2 * y) l (eLast R) = 0 := by
    refine Finset.sum_eq_zero fun l hl => ?_
    rw [Finset.mem_Ioo] at hl
    have B := (H K h s t h1 x y hx hy ⟨l, hl.2⟩ b c hb rfl).2.1
      (by simpa [c, Fin.lt_def] using hl.1)
    have := lamTil_eLast R (x * pt (addBlock h s t).1 (addBlock h s t).2 * y) ⟨l, hl.2⟩ b hb
    simp only [lamN, LinearMap.comp_apply]
    rw [this, B]; simp
  rw [z, add_zero] at e
  have E := lamTil_eLast R (x * pt (addBlock h s t).1 (addBlock h s t).2 * y) c b hb
  have E' := lamTil_eLast R (x' * pt (addBlock h' s t').1 (addBlock h' s t').2 * y') c' b' hb'
  simp only [lamN, LinearMap.comp_apply] at e
  rw [show h.1.sum = c.val from rfl, E, A] at e
  rw [show c.val = c'.val from rfl, E', A'] at e
  have := (Submodule.Quotient.eq _).1 e.symm
  obtain ⟨r, hr⟩ := this
  rw [← hr]; exact r.2

theorem triple_form_recursion : Formalism.FourierDecayAlt.A5.TTStep := by
  have hD := dualSpan
  intro K _ R ψ hsd n Z Z' hZ hZ' hfin φ k hk hT
  constructor
  · intro h v v' hv hker
    obtain ⟨a, ha⟩ := h k le_rfl hk
    rw [ha v v' hv]
    have : ∑ l ∈ Finset.Ioo k n, a l • lamN R Z l v = 0 := by
      apply Finset.sum_eq_zero
      intro l hl
      rw [hker l (Finset.mem_Ioo.1 hl).1, smul_zero]
    rw [this, add_zero]
  · intro h j hkj hjn
    by_cases hjk : j = k
    swap
    · exact hT j (by omega) hjn
    subst hjk
    let lamC : ℕ → coker R Z →ₗ[R] KR R :=
      fun l => (latZ R Z).liftQ (lamN R Z l) (lamN_latZ R Z hZ l)
    let lamC' : coker R Z' →ₗ[R] KR R := (latZ R Z').liftQ (lamN R Z' j) (lamN_latZ R Z' hZ' j)
    let μ : coker R Z →ₗ[R] KR R := lamC'.comp φ.toLinearMap - lamC j
    have hμ := hD K R ψ hsd (coker R Z) {l // l ∈ Finset.Ioo j n} (fun l => lamC l.1) μ (by
      intro c hc
      obtain ⟨v, rfl⟩ := Submodule.Quotient.mk_surjective _ c
      obtain ⟨v', hv'⟩ := Submodule.Quotient.mk_surjective _ (φ (Submodule.Quotient.mk v))
      have := h v v' hv'.symm (by
        intro l hl
        by_cases hln : l < n
        · exact hc ⟨l, Finset.mem_Ioo.2 ⟨hl, hln⟩⟩
        · rw [lamN_big R Z l (by omega)]; rfl)
      show lamC' (φ (Submodule.Quotient.mk v)) - lamC j (Submodule.Quotient.mk v) = 0
      rw [← hv']
      show lamN R Z' j v' - lamN R Z j v = 0
      rw [this, sub_self])
    obtain ⟨cf, hcf⟩ := (Submodule.mem_span_range_iff_exists_fun R).1 hμ
    classical
    refine ⟨fun l => if hl : l ∈ Finset.Ioo j n then cf ⟨l, hl⟩ else 0, ?_⟩
    intro v v' hv
    have e1 := congrArg (fun f : coker R Z →ₗ[R] KR R => f (Submodule.Quotient.mk v)) hcf
    simp only [LinearMap.sum_apply, LinearMap.smul_apply] at e1
    have e2 : μ (Submodule.Quotient.mk v) = lamN R Z' j v' - lamN R Z j v := by
      show lamC' (φ (Submodule.Quotient.mk v)) - lamC j (Submodule.Quotient.mk v) = _
      rw [hv]; rfl
    rw [e2] at e1
    rw [← Finset.sum_attach]
    have e3 : ∑ x ∈ (Finset.Ioo j n).attach,
        (if hl : x.1 ∈ Finset.Ioo j n then cf ⟨x.1, hl⟩ else 0) • lamN R Z x.1 v =
        ∑ x : {l // l ∈ Finset.Ioo j n}, cf x • lamC x.1 (Submodule.Quotient.mk v) := by
      refine Finset.sum_congr rfl fun x _ => ?_
      rw [dite_eq_left x.2]; rfl
    rw [e3, e1]; abel

end Formalism.FourierDecayAlt.P
