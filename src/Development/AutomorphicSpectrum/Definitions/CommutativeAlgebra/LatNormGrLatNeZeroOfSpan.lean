module

public import Development.AbelianVarietyTheory.Definitions.Divisors.LogAbsVpOfNormalised
public import Mathlib.LinearAlgebra.Basis.Flag
public import Mathlib.RingTheory.DedekindDomain.Different
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HT

open Module NumberField

section Norms

variable {C : Type} [Field C] (v : Valuation C NNReal) {O : Type} [CommRing O] [Algebra O C]
  {V : Type} [AddCommGroup V] [Module C V] [Module O V] [IsScalarTower O C V]

def latNorm (L : Submodule O V) (x : V) : NNReal :=
  sInf {r : NNReal | ∃ a : C, v a = r ∧ ∃ y ∈ L, x = a • y}

def latIn (L : Submodule O V) (U : Submodule C V) : Submodule O U :=
  L.comap (U.subtype.restrictScalars O)

def grLat {n : ℕ} (L : Submodule O V) (b : Basis (Fin n) C V) (i : Fin n) : Submodule O C :=
  (L ⊓ (b.flag i.succ).restrictScalars O).map ((b.coord i).restrictScalars O)

def grLog {n : ℕ} (L : Submodule O V) (b : Basis (Fin n) C V) (i : Fin n) : ℝ :=
  Real.log (latNorm v (grLat L b i) (1 : C))

def dualLat {V' : Type} [AddCommGroup V'] [Module C V'] [Module O V'] [IsScalarTower O C V']
    (B : V →ₗ[C] V' →ₗ[C] C) (L : Submodule O V) : Submodule O V' where
  carrier := {y | ∀ x ∈ L, B x y ∈ (algebraMap O C).range}
  zero_mem' := fun x _ => by simpa using (algebraMap O C).range.zero_mem
  add_mem' := fun {a b} ha hb x hx => by
    simpa using (algebraMap O C).range.add_mem (ha x hx) (hb x hx)
  smul_mem' := fun c y hy x hx => by
    obtain ⟨t, ht⟩ := hy x hx
    refine ⟨c * t, ?_⟩
    rw [map_mul, ht, ← IsScalarTower.algebraMap_smul C c y, map_smul, smul_eq_mul]

end Norms

section Eigen

variable {A : Type} [CommRing A] {K : Type} [Field K] [Algebra A K]
  {V : Type} [AddCommGroup V] [Module K V] [Module A V] [IsScalarTower A K V]
  {E : Type} [Field E] [NumberField E]

def eigSp (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) : Submodule K V :=
  ⨅ a : 𝓞 E, LinearMap.ker (ρ a - σ (a : E) • (1 : Module.End K V))

def eigSub (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) (X : Submodule A V) : Submodule A V :=
  X ⊓ (eigSp ρ σ).restrictScalars A

def dualInt (E : Type) [Field E] [NumberField E] (k : Module.Free.ChooseBasisIndex ℤ (𝓞 E)) : E :=
  (Algebra.traceForm ℚ E).dualBasis (traceForm_nondegenerate ℚ E) (integralBasis E) k

def eigProj (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) : Module.End K V :=
  ∑ k, σ (dualInt E k) • ρ (RingOfIntegers.basis E k)

def eigQuot (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) (X : Submodule A V) : Submodule A V :=
  X.map ((eigProj ρ σ).restrictScalars A)

def IsFreeOn (ρ : 𝓞 E →+* Module.End K V) (X : Submodule A V) {N : ℕ} (t : Fin N → V) : Prop :=
  LinearIndependent K (fun q : Fin N × Module.Free.ChooseBasisIndex ℤ (𝓞 E) =>
      ρ (RingOfIntegers.basis E q.2) (t q.1)) ∧
    Submodule.span K (X : Set V) = ⊤ ∧
    X = Submodule.span A (Set.range fun q : Fin N × Module.Free.ChooseBasisIndex ℤ (𝓞 E) =>
      ρ (RingOfIntegers.basis E q.2) (t q.1))

def diffAbs (v : Valuation K NNReal) (σ : E →+* K) : NNReal :=
  ⨆ x : differentIdeal ℤ (𝓞 E), v (σ ((x : 𝓞 E) : E))

end Eigen

namespace LatBasic

section Norms

variable {C : Type} [Field C] (v : Valuation C NNReal) {O : Type} [CommRing O] [Algebra O C]
  {V : Type} [AddCommGroup V] [Module C V] [Module O V] [IsScalarTower O C V]

theorem map_latIn (L : Submodule O V) (U : Submodule C V) :
    (latIn L U).map (U.subtype.restrictScalars O) = L ⊓ U.restrictScalars O := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact ⟨hy, y.2⟩
  · rintro ⟨h1, h2⟩
    exact ⟨⟨x, h2⟩, h1, rfl⟩

theorem mem_dualLat {V' : Type} [AddCommGroup V'] [Module C V'] [Module O V']
    [IsScalarTower O C V'] {B : V →ₗ[C] V' →ₗ[C] C} {L : Submodule O V} {y : V'} :
    y ∈ dualLat B L ↔ ∀ x ∈ L, B x y ∈ (algebraMap O C).range := Iff.rfl


theorem exists_smul_mem (hv : v.Integers O) {L : Submodule O V} {x : V}
    (hx : x ∈ Submodule.span C (L : Set V)) : ∃ a : C, a ≠ 0 ∧ a • x ∈ L := by
  have key : ∀ {a a' : C} {y : V}, a' ≠ 0 → v a ≤ v a' → a' • y ∈ L → a • y ∈ L := by
    intro a a' y ha' hle hy
    obtain ⟨o, ho⟩ := hv.exists_of_le_one (r := a / a') (by
      rw [map_div₀]; exact div_le_one_of_le₀ hle zero_le)
    have := L.smul_mem o hy
    rwa [← algebraMap_smul C o, ho, smul_smul, div_mul_cancel₀ _ ha'] at this
  induction hx using Submodule.span_induction with
  | mem x h => exact ⟨1, one_ne_zero, by rwa [one_smul]⟩
  | zero => exact ⟨1, one_ne_zero, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨a, ha, hx⟩ := hx
    obtain ⟨a', ha', hy⟩ := hy
    rcases le_total (v a) (v a') with h | h
    · exact ⟨a, ha, by rw [smul_add]; exact L.add_mem hx (key ha' h hy)⟩
    · exact ⟨a', ha', by rw [smul_add]; exact L.add_mem (key ha h hx) hy⟩
  | smul c x _ hx =>
    obtain ⟨a, ha, hx⟩ := hx
    by_cases hc : c = 0
    · exact ⟨1, one_ne_zero, by simp [hc]⟩
    · exact ⟨a / c, div_ne_zero ha hc, by rwa [smul_smul, div_mul_cancel₀ _ hc]⟩

end Norms

section Eigen

open TensorProduct

variable {A : Type} [CommRing A] {K : Type} [Field K] [Algebra A K]
  {V : Type} [AddCommGroup V] [Module K V] [Module A V] [IsScalarTower A K V]
  {E : Type} [Field E] [NumberField E]


omit [NumberField E] in
theorem mem_eigSp {ρ : 𝓞 E →+* Module.End K V} {σ : E →+* K} {x : V} :
    x ∈ eigSp ρ σ ↔ ∀ a : 𝓞 E, ρ a x = σ (a : E) • x := by
  simp [eigSp, Submodule.mem_iInf, sub_eq_zero]


omit [NumberField E] in
theorem eigSp_eq (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) :
    eigSp ρ σ = GlobalTheory.EigenSplit.eigenSub ρ (σ.comp (algebraMap (𝓞 E) E)) := by
  ext x
  simp [eigSp, GlobalTheory.EigenSplit.mem_eigenSub, sub_eq_zero]

theorem trace_dualInt (k j) :
    Algebra.trace ℚ E (dualInt E k * integralBasis E j) = if j = k then 1 else 0 := by
  classical
  have := LinearMap.BilinForm.apply_dualBasis_left (B := Algebra.traceForm ℚ E)
    (traceForm_nondegenerate ℚ E) (integralBasis E) k j
  rw [Algebra.traceForm_apply] at this
  convert this using 1
  rfl

theorem expand_dual (x : E) :
    x = ∑ k, Algebra.trace ℚ E (x * integralBasis E k) • dualInt E k := by
  classical
  have h := ((Algebra.traceForm ℚ E).dualBasis (traceForm_nondegenerate ℚ E)
    (integralBasis E)).sum_repr x
  simp only [LinearMap.BilinForm.dualBasis_repr_apply, Algebra.traceForm_apply] at h
  exact h.symm

theorem repr_eq_trace (a : 𝓞 E) (k) :
    (((RingOfIntegers.basis E).repr a k : ℤ) : ℚ) = Algebra.trace ℚ E (dualInt E k * (a : E)) := by
  classical
  conv_rhs => rw [← (RingOfIntegers.basis E).sum_repr a]

  simp only [map_sum, Finset.mul_sum, map_zsmul, mul_smul_comm,
  ← integralBasis_apply, trace_dualInt]
  simp

theorem eigProj_mem (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) (x : V) :
    eigProj ρ σ x ∈ eigSp ρ σ := by
  classical
  haveI : CharZero K := (RingHom.charZero_iff σ.injective).1 inferInstance
  rw [mem_eigSp]
  intro a
  set b := RingOfIntegers.basis E
  have e1 : ∀ k, ρ a (ρ (b k) x) =
      ∑ j, σ ((Algebra.trace ℚ E (dualInt E j * (a : E) * integralBasis E k) : ℚ) : E) •
        ρ (b j) x := by
    intro k

    rw [← Module.End.mul_apply, ← map_mul, ← b.sum_repr (a * b k), map_sum, LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun j _ => ?_
    have := repr_eq_trace (a * b k) j
    rw [map_zsmul, mul_assoc, integralBasis_apply]
    rw [RingOfIntegers.coe_eq_algebraMap, map_mul (algebraMap (𝓞 E) E)] at this
    rw [RingOfIntegers.coe_eq_algebraMap, ← this]
    simp [Int.cast_smul_eq_zsmul, b]

  simp only [eigProj, LinearMap.sum_apply, LinearMap.smul_apply, map_sum, map_smul]
  change ∑ k, σ (dualInt E k) • ρ a (ρ (b k) x) = _
  simp only [e1, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_

  rw [← Finset.sum_smul, ← map_mul, mul_comm (a : E), expand_dual (dualInt E j * (a : E)), map_sum]
  congr 1
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [← expand_dual, ← map_mul, Rat.smul_def, mul_comm]

theorem sum_dualInt_mul : ∑ k, dualInt E k * integralBasis E k = 1 := by
  classical
  rw [← sub_eq_zero]
  apply (traceForm_nondegenerate ℚ E).1
  intro y

  rw [Algebra.traceForm_apply, sub_mul, one_mul, map_sub, sub_eq_zero, Finset.sum_mul, map_sum,
  Algebra.trace_eq_matrix_trace (integralBasis E) y, Matrix.trace]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Matrix.diag_apply, Algebra.leftMulMatrix_eq_repr_mul, mul_assoc, mul_comm _ y]
  generalize y * integralBasis E k = z
  conv_lhs => rw [← (integralBasis E).sum_repr z]

  simp only [Finset.mul_sum, map_sum, mul_smul_comm, map_smul, trace_dualInt]
  simp

theorem eigProj_of_mem {ρ : 𝓞 E →+* Module.End K V} {σ : E →+* K} {x : V} (hx : x ∈ eigSp ρ σ) :
    eigProj ρ σ x = x := by
  rw [mem_eigSp] at hx
  simp only [eigProj, LinearMap.sum_apply, LinearMap.smul_apply, hx, smul_smul]
  rw [← Finset.sum_smul]
  have : ∑ k, σ (dualInt E k) * σ ((RingOfIntegers.basis E k : 𝓞 E) : E) = 1 := by

    rw [← map_one σ, ← sum_dualInt_mul, map_sum]
    simp
  rw [this, one_smul]

theorem eigProj_of_eigenSub_ne {ρ : 𝓞 E →+* Module.End K V} {σ : E →+* K} {χ : 𝓞 E →+* K}
    (h : σ.comp (algebraMap (𝓞 E) E) ≠ χ) {x : V} (hx : x ∈ GlobalTheory.EigenSplit.eigenSub ρ χ) :
    eigProj ρ σ x = 0 := by
  have h1 := eigProj_mem ρ σ x
  have h2 : eigProj ρ σ x ∈ GlobalTheory.EigenSplit.eigenSub ρ χ := by
    simp only [eigProj, LinearMap.sum_apply, LinearMap.smul_apply,
      GlobalTheory.EigenSplit.mem_eigenSub.1 hx]
    exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.smul_mem _ _ hx)
  by_contra hne
  refine h (RingHom.ext fun a => ?_)
  exact smul_left_injective K hne
    ((mem_eigSp.1 h1 a).symm.trans (GlobalTheory.EigenSplit.mem_eigenSub.1 h2 a))

theorem eigProj_of_ne {ρ : 𝓞 E →+* Module.End K V} {σ σ' : E →+* K} (h : σ ≠ σ') {x : V}
    (hx : x ∈ eigSp ρ σ') : eigProj ρ σ x = 0 :=
  eigProj_of_eigenSub_ne (fun e => h (IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E)) e))
    (by rwa [← eigSp_eq])

theorem eigQuot_le_eigSp (ρ : 𝓞 E →+* Module.End K V) (σ : E →+* K) (X : Submodule A V) :
    eigQuot ρ σ X ≤ (eigSp ρ σ).restrictScalars A := by
  rintro _ ⟨x, -, rfl⟩
  exact eigProj_mem ρ σ x

def regAct (K : Type) [Field K] (E : Type) [Field E] [NumberField E] :
    𝓞 E →+* Module.End K (K ⊗[ℤ] 𝓞 E) :=
  (Algebra.lmul K (K ⊗[ℤ] 𝓞 E)).toRingHom.comp
    (Algebra.TensorProduct.includeRight (R := ℤ) (A := K) (B := 𝓞 E)).toRingHom

theorem regAct_basis (k) :
    regAct K E (RingOfIntegers.basis E k) 1 =
      Algebra.TensorProduct.basis K (RingOfIntegers.basis E) k := by
  simp [regAct, Algebra.TensorProduct.basis_apply]


omit [NumberField E] in
theorem val_le_one (v : Valuation K NNReal) (σ : E →+* K) (x : 𝓞 E) : v (σ (x : E)) ≤ 1 :=
  (Valuation.integer.integers v).isIntegral_iff_v_le_one.1
    ((map_isIntegral_int σ (RingOfIntegers.isIntegral_coe x)).tower_top)

end Eigen

end LatBasic

end GlobalTheory.CompanionTheory.Ar.HT
