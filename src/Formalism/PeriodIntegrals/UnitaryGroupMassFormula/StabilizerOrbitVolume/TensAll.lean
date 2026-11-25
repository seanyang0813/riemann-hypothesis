module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.PosNear
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.VolFromSW

@[expose] public section

noncomputable section

namespace PI.VolStabSW

namespace TensAllW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes PI.AdicCompletionValuation
  PI.VolFromSW Matrix
open PI.VolStabS.PositiveNearLattice (crd continuous_crd)

def LIP (R : Type) [CommRing R] : Prop :=
  ∀ (m n : Type) [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] (W : Matrix m n R),
    (∀ c, W *ᵥ c = 0 → c = 0) → ∃ P : Matrix n m R, P * W = 1

theorem lip_field (K : Type) [Field K] : LIP K := by
  intro m n _ _ _ _ W hW
  have hker : LinearMap.ker (Matrix.toLin' W) = ⊥ := by
    rw [LinearMap.ker_eq_bot']
    intro c hc
    exact hW c (by simpa [Matrix.toLin'_apply] using hc)
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective (Matrix.toLin' W) hker
  refine ⟨LinearMap.toMatrix' g, ?_⟩
  have h := congrArg LinearMap.toMatrix' hg
  rwa [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_toLin', LinearMap.toMatrix'_id] at h

theorem lip_pi {ι : Type} [Fintype ι] [DecidableEq ι] (K : ι → Type) [∀ i, CommRing (K i)]
    (h : ∀ i, LIP (K i)) : LIP (∀ i, K i) := by
  intro m n _ _ _ _ W hW
  have hP : ∀ i, ∃ P : Matrix n m (K i), P * W.map (fun x => x i) = 1 := by
    intro i
    refine h i m n (W.map (fun x => x i)) (fun c hc => ?_)
    have h0 := hW (fun b => Pi.single i (c b)) ?_
    · funext b
      have hb := congr_fun (congr_fun h0 b) i
      simpa using hb
    · funext a j
      by_cases hj : j = i
      · subst hj
        have ha := congr_fun hc a
        simpa [Matrix.mulVec, dotProduct, Finset.sum_apply] using ha
      · simp [Matrix.mulVec, dotProduct, Finset.sum_apply, hj]
  choose P hP using hP
  refine ⟨Matrix.of fun b a j => P j b a, ?_⟩
  ext a a' j
  have hj := congr_fun (congr_fun (hP j) a) a'
  rw [Matrix.mul_apply] at hj ⊢
  rw [Finset.sum_apply]
  simp only [Matrix.map_apply, Pi.mul_apply, Matrix.of_apply] at hj ⊢
  rw [hj]
  by_cases haa : a = a' <;> simp [Matrix.one_apply, haa]

theorem inj_of_isUnit {R : Type} [CommRing R] {m n : Type} [Fintype m] [Fintype n]
    [DecidableEq n] (W : Matrix m n R) (P : Matrix n m R) (hP : IsUnit (P * W).det)
    (c : n → R) (hc : W *ᵥ c = 0) : c = 0 := by
  have h1 : (P * W) *ᵥ c = 0 := by rw [← Matrix.mulVec_mulVec, hc, Matrix.mulVec_zero]
  calc c = 1 *ᵥ c := (Matrix.one_mulVec c).symm
    _ = ((P * W)⁻¹ * (P * W)) *ᵥ c := by rw [Matrix.nonsing_inv_mul _ hP]
    _ = 0 := by rw [← Matrix.mulVec_mulVec, h1, Matrix.mulVec_zero]

variable {F E : Type} [Field F] [Field E] [Algebra F E] {d : ℕ} (b : Module.Basis (Fin d) F E)

def wMat (R : Type) [CommRing R] [Algebra F R] {a M : ℕ} (X : Fin a → Fin M → R ⊗[F] E) :
    Matrix (Fin M × Fin d) (Fin a × Fin d) R :=
  fun p q => crd b R (((1 : R) ⊗ₜ[F] b q.2) * X q.1 p.1) p.2

theorem wMat_mulVec (R : Type) [CommRing R] [Algebra F R] {a M : ℕ}
    (X : Fin a → Fin M → R ⊗[F] E) (c : Fin a × Fin d → R) (j : Fin M) (l : Fin d) :
    (wMat b R X *ᵥ c) (j, l) =
      crd b R (∑ i, (∑ k, c (i, k) • ((1 : R) ⊗ₜ[F] b k)) * X i j) l := by

  simp only [Matrix.mulVec, dotProduct, wMat, crd, Finset.sum_mul, smul_mul_assoc, map_sum, map_smul,
  Finsupp.coe_finsetSum, Finset.sum_apply, Finsupp.smul_apply, smul_eq_mul, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => ?_
  ring

theorem wMat_mulVec_eq_zero (R : Type) [CommRing R] [Algebra F R] {a M : ℕ}
    (X : Fin a → Fin M → R ⊗[F] E) (c : Fin a × Fin d → R) :
    wMat b R X *ᵥ c = 0 ↔ ∀ j, ∑ i, (∑ k, c (i, k) • ((1 : R) ⊗ₜ[F] b k)) * X i j = 0 := by
  constructor
  · intro h j
    apply (Algebra.TensorProduct.basis R b).repr.injective
    ext l
    have hl := congr_fun h (j, l)
    rw [wMat_mulVec] at hl
    simpa [crd] using hl
  · intro h
    funext q
    obtain ⟨j, l⟩ := q
    rw [wMat_mulVec, h j]
    simp [crd]

theorem linIndep_iff (R : Type) [CommRing R] [Algebra F R] {a M : ℕ}
    (X : Fin a → Fin M → R ⊗[F] E) :
    LinearIndependent (R ⊗[F] E) X ↔ ∀ c, wMat b R X *ᵥ c = 0 → c = 0 := by
  have hexp : ∀ y : R ⊗[F] E, ∑ k, crd b R y k • ((1 : R) ⊗ₜ[F] b k) = y := by
    intro y
    have hs := (Algebra.TensorProduct.basis R b).sum_repr y
    simpa only [crd, Algebra.TensorProduct.basis_apply] using hs
  have hcrd : ∀ (g : Fin d → R) (l : Fin d), crd b R (∑ k, g k • ((1 : R) ⊗ₜ[F] b k)) l = g l := by
    intro g l
    have hb : ∀ k, ((1 : R) ⊗ₜ[F] b k) = Algebra.TensorProduct.basis R b k := fun k =>
      (Algebra.TensorProduct.basis_apply b k).symm

    simp only [crd, hb, map_sum, map_smul, Module.Basis.repr_self, Finsupp.coe_finsetSum,
    Finset.sum_apply, Finsupp.smul_apply, Finsupp.single_apply, smul_eq_mul, mul_ite, mul_one,
    mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [Fintype.linearIndependent_iff]
  constructor
  · intro h c hc
    rw [wMat_mulVec_eq_zero] at hc
    have hg := h (fun i => ∑ k, c (i, k) • ((1 : R) ⊗ₜ[F] b k)) (by
      funext j
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
      exact hc j)
    funext q
    obtain ⟨i, k⟩ := q
    have hk := congrArg (fun y => crd b R y k) (hg i)
    rw [hcrd] at hk
    simpa [crd] using hk
  · intro h g hg i
    have hc := h (fun q => crd b R (g q.1) q.2) (by
      rw [wMat_mulVec_eq_zero]
      intro j
      have hj := congr_fun hg j
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at hj
      rw [← hj]
      refine Finset.sum_congr rfl fun i _ => ?_
      show (∑ k, crd b R (g i) k • ((1 : R) ⊗ₜ[F] b k)) * X i j = g i * X i j
      rw [hexp])
    rw [← hexp (g i)]
    refine Finset.sum_eq_zero fun k _ => ?_
    have hk := congr_fun hc (i, k)
    simp only [Pi.zero_apply] at hk
    rw [hk, zero_smul]

section Top

variable [FiniteDimensional F E] (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R]
  [IsTopologicalRing R]

theorem continuous_wMat {a M : ℕ} :
    Continuous (fun X : Fin a → Fin M → R ⊗[F] E => wMat b R X) := by
  refine continuous_matrix fun p q => ?_
  exact (continuous_crd b R p.2).comp (continuous_const.mul
    ((continuous_apply p.1).comp (continuous_apply q.1)))

include b in
theorem isOpen_linIndep (hU : IsOpen {r : R | IsUnit r}) (hL : LIP R) {a M : ℕ} :
    IsOpen {X : Fin a → Fin M → R ⊗[F] E | LinearIndependent (R ⊗[F] E) X} := by
  have hset : {X : Fin a → Fin M → R ⊗[F] E | LinearIndependent (R ⊗[F] E) X} =
      ⋃ P : Matrix (Fin a × Fin d) (Fin M × Fin d) R, {X | IsUnit (P * wMat b R X).det} := by
    ext X
    simp only [Set.mem_setOf_eq, Set.mem_iUnion]
    rw [linIndep_iff b R X]
    constructor
    · intro h
      obtain ⟨P, hP⟩ := hL _ _ (wMat b R X) h
      refine ⟨P, ?_⟩
      rw [hP, Matrix.det_one]
      exact isUnit_one
    · rintro ⟨P, hP⟩ c hc
      exact inj_of_isUnit (wMat b R X) P hP c hc
  rw [hset]
  exact isOpen_iUnion fun P =>
    hU.preimage ((continuous_const.matrix_mul (continuous_wMat b R)).matrix_det)

end Top

end TensAllW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes PI.AdicCompletionValuation
  PI.VolFromSW TensAllW

theorem lip_ainf (F : Type) [Field F] [NumberField F] : LIP (InfiniteAdeleRing F) := by
  classical
  exact lip_pi (fun v : InfinitePlace F => v.Completion) (fun v => lip_field _)

end PI.VolStabSW
