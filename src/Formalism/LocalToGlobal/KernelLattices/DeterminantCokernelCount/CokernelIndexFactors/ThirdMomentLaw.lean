module

public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.LinearAlgebra.Matrix.Adjugate
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.Analysis.Normed.Field.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.IdxSmith, Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.ThirdMomentLaw

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.IdxSmith =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.IdxSmith", "h": "module\n\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.Adjugate\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix IsLocalRing

namespace DVRLatticeIndex

variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

noncomputable def scaleAt {ι : Type*} [DecidableEq ι] (j : ι) (a : O) : Matrix ι ι O :=
  Matrix.diagonal (Function.update (fun _ => (1 : O)) j a)

theorem det_scaleAt {ι : Type*} [Fintype ι] [DecidableEq ι] (j : ι) (a : O) :
    (scaleAt j a).det = a := by
  simp [scaleAt, Matrix.det_diagonal, Function.update_apply, Finset.prod_ite_eq']

theorem range_toLin'_eq_top_of_isUnit_det {ι : Type*} [Fintype ι] [DecidableEq ι]
    (C : Matrix ι ι O) (h : IsUnit C.det) : LinearMap.range (Matrix.toLin' C) = ⊤ := by
  rw [LinearMap.range_eq_top]
  intro y
  refine ⟨C⁻¹ *ᵥ y, ?_⟩
  rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ h, Matrix.one_mulVec]

theorem card_quot_range_of_isUnit_det {ι : Type*} [Fintype ι] [DecidableEq ι]
    (C : Matrix ι ι O) (h : IsUnit C.det) :
    Nat.card ((ι → O) ⧸ LinearMap.range (Matrix.toLin' C)) = 1 := by
  rw [range_toLin'_eq_top_of_isUnit_det C h]
  refine Nat.card_eq_one_iff_unique.mpr ⟨⟨fun a b => ?_⟩, ⟨0⟩⟩
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ a
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ b
  exact (Submodule.Quotient.eq _).mpr Submodule.mem_top

theorem injective_toLin'_of_det_ne_zero {ι : Type*} [Fintype ι] [DecidableEq ι]
    (C : Matrix ι ι O) (h : C.det ≠ 0) : Function.Injective (Matrix.toLin' C) := by
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro x hx
  rw [Matrix.toLin'_apply] at hx
  have h2 : C.adjugate *ᵥ (C *ᵥ x) = C.det • x := by
    rw [Matrix.mulVec_mulVec, Matrix.adjugate_mul, Matrix.smul_mulVec, Matrix.one_mulVec]
  rw [hx, Matrix.mulVec_zero] at h2
  funext i
  have h3 := congrFun h2 i
  rw [Pi.zero_apply, Pi.smul_apply, smul_eq_mul] at h3
  exact (mul_eq_zero.mp h3.symm).resolve_left h

theorem card_quot_range_comp {M : Type*} [AddCommGroup M] [Module O M]
    (A B : M →ₗ[O] M) (hA : Function.Injective A) :
    Nat.card (M ⧸ LinearMap.range (A ∘ₗ B)) =
      Nat.card (M ⧸ LinearMap.range B) * Nat.card (M ⧸ LinearMap.range A) := by
  have h1 : (LinearMap.range (A ∘ₗ B)).toAddSubgroup =
      (LinearMap.range B).toAddSubgroup.map A.toAddMonoidHom := by
    rw [LinearMap.range_comp, Submodule.map_toAddSubgroup]
    rfl
  have h2 : A.toAddMonoidHom.range = (LinearMap.range A).toAddSubgroup := by
    ext y
    simp
  change (LinearMap.range (A ∘ₗ B)).toAddSubgroup.index =
    (LinearMap.range B).toAddSubgroup.index * (LinearMap.range A).toAddSubgroup.index
  rw [h1, AddSubgroup.index_map_of_injective _ hA, h2]

theorem card_quot_range_scaleAt {ι : Type*} [Fintype ι] [DecidableEq ι] (ϖ : O)
    (hϖ : Irreducible ϖ) (j : ι) :
    Nat.card ((ι → O) ⧸ LinearMap.range (Matrix.toLin' (scaleAt j ϖ))) =
      Nat.card (IsLocalRing.ResidueField O) := by
  classical
  have hmax := (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ
  have hrange : LinearMap.range (Matrix.toLin' (scaleAt j ϖ)) =
      LinearMap.ker ((Algebra.linearMap O (IsLocalRing.ResidueField O)) ∘ₗ LinearMap.proj j) := by
    ext y
    simp only [LinearMap.mem_range, LinearMap.mem_ker, LinearMap.comp_apply, LinearMap.proj_apply,
      Algebra.linearMap_apply]
    rw [IsLocalRing.ResidueField.algebraMap_eq, IsLocalRing.residue_eq_zero_iff, hmax,
      Ideal.mem_span_singleton]
    constructor
    · rintro ⟨x, rfl⟩
      rw [Matrix.toLin'_apply]
      simp [scaleAt, Matrix.mulVec_diagonal]
    · rintro ⟨c, hc⟩
      refine ⟨Function.update y j c, ?_⟩
      funext i
      rw [Matrix.toLin'_apply]
      simp only [scaleAt, Matrix.mulVec_diagonal, Function.update_apply]
      split_ifs with h
      · subst h
        exact hc.symm
      · simp
  rw [hrange]
  have hsurj : Function.Surjective ((Algebra.linearMap O (IsLocalRing.ResidueField O)) ∘ₗ
      (LinearMap.proj j : (ι → O) →ₗ[O] O)) := by
    intro z
    obtain ⟨a, rfl⟩ := IsLocalRing.residue_surjective z
    exact ⟨Pi.single j a, by simp [IsLocalRing.ResidueField.algebraMap_eq]⟩
  exact Nat.card_congr (LinearMap.quotKerEquivOfSurjective _ hsurj).toEquiv

theorem card_quot_range_toLin_clean {ι : Type*} [Fintype ι] [DecidableEq ι] (ϖ : O)
    (hϖ : Irreducible ϖ) (C : Matrix ι ι O) (e : ℕ) (w : Oˣ) (hC : C.det = ϖ ^ e * w) :
    Nat.card ((ι → O) ⧸ LinearMap.range (Matrix.toLin' C)) =
      Nat.card (IsLocalRing.ResidueField O) ^ e := by
  classical
  induction e generalizing C w with
  | zero =>
    rw [pow_zero, one_mul] at hC
    rw [pow_zero]
    exact card_quot_range_of_isUnit_det C (by rw [hC]; exact w.isUnit)
  | succ e ih =>
    have hmax := (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ
    have hϖ0 : ϖ ≠ 0 := hϖ.ne_zero
    have hres : IsLocalRing.residue O ϖ = 0 :=
      (IsLocalRing.residue_eq_zero_iff ϖ).mpr ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hϖ.not_isUnit))
    have hdetb : (C.map (IsLocalRing.residue O)).det = 0 := by
      rw [show (C.map (IsLocalRing.residue O)).det = IsLocalRing.residue O C.det from (RingHom.map_det _ _).symm,
        hC, map_mul, map_pow, hres, zero_pow (Nat.succ_ne_zero e), zero_mul]
    obtain ⟨vb, hvb0, hCvb⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdetb
    choose vlift hvlift using fun i => IsLocalRing.residue_surjective (vb i)
    obtain ⟨i0, hi0⟩ : ∃ i0, vb i0 ≠ 0 := by
      by_contra h
      push_neg at h
      exact hvb0 (funext h)
    have hunit : IsUnit (vlift i0) := by
      rw [← IsLocalRing.residue_ne_zero_iff_isUnit, hvlift]
      exact hi0
    have hdiv : ∀ m, ϖ ∣ (C *ᵥ vlift) m := by
      intro m
      have h1 : IsLocalRing.residue O ((C *ᵥ vlift) m) = 0 := by
        have h3 := congrFun hCvb m
        rw [Pi.zero_apply] at h3
        rw [← h3]

        simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply, hvlift]
      rw [IsLocalRing.residue_eq_zero_iff, hmax, Ideal.mem_span_singleton] at h1
      exact h1
    choose c hc using hdiv
    set P : Matrix ι ι O := (1 : Matrix ι ι O).updateCol i0 vlift with hP
    set C' : Matrix ι ι O := C.updateCol i0 c with hC'
    have hdetP : P.det = vlift i0 := by
      rw [hP, ← Matrix.cramer_apply, Matrix.cramer_one]
      rfl
    have hCP : C * P = C' * scaleAt i0 ϖ := by
      refine Matrix.ext fun m b => ?_
      rw [scaleAt, Matrix.mul_diagonal, Matrix.mul_apply]
      by_cases hb : b = i0
      · subst hb
        simp only [hP, hC', Matrix.updateCol_self, Function.update_self]
        have h2 := hc m
        simp only [Matrix.mulVec, dotProduct] at h2
        rw [h2, mul_comm]
      · simp only [hP, hC', Matrix.updateCol_ne hb, Function.update_of_ne hb, mul_one]
        rw [← Matrix.mul_apply, Matrix.mul_one]
    have hdetC' : C'.det = ϖ ^ e * ((w * hunit.unit : Oˣ) : O) := by
      have h1 : C'.det * ϖ = ϖ ^ (e + 1) * w * vlift i0 := by
        have h2 : (C' * scaleAt i0 ϖ).det = C'.det * ϖ := by rw [Matrix.det_mul, det_scaleAt]
        rw [← h2, ← hCP, Matrix.det_mul, hC, hdetP]
      apply mul_right_cancel₀ hϖ0
      rw [h1]
      simp only [Units.val_mul, IsUnit.unit_spec]
      ring
    have hCinj := injective_toLin'_of_det_ne_zero C
      (by rw [hC]; exact mul_ne_zero (pow_ne_zero _ hϖ0) w.ne_zero)
    have hC'inj := injective_toLin'_of_det_ne_zero C'
      (by rw [hdetC']; exact mul_ne_zero (pow_ne_zero _ hϖ0) (Units.ne_zero _))
    have e1 := card_quot_range_comp (Matrix.toLin' C) (Matrix.toLin' P) hCinj
    have e2 := card_quot_range_comp (Matrix.toLin' C') (Matrix.toLin' (scaleAt i0 ϖ)) hC'inj
    rw [← Matrix.toLin'_mul, hCP, Matrix.toLin'_mul, e2,
      card_quot_range_of_isUnit_det P (by rw [hdetP]; exact hunit), one_mul,
      card_quot_range_scaleAt ϖ hϖ i0, ih C' _ hdetC'] at e1
    rw [← e1, pow_succ']

end DVRLatticeIndex
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.IdxSmith =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.ThirdMomentLaw =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.ThirdMomentLaw", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.IdxSmith\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Field.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace UnitaryThetaMoves

variable {C : Type*} [NormedField C] {Γ : Type*} [CommGroup Γ]

section Val

variable {V : Type*} [Fintype V]

end Val

section Index

def matLat (O K : Type*) [CommRing O] [Field K] [Algebra O K] (N N' : ℕ) : AddSubgroup (Matrix (Fin N') (Fin N) K) where
  carrier := {x | ∀ i j, x i j ∈ (algebraMap O K).range}
  add_mem' := fun ha hb i j => Subring.add_mem _ (ha i j) (hb i j)
  zero_mem' := fun _ _ => Subring.zero_mem _
  neg_mem' := fun ha i j => Subring.neg_mem _ (ha i j)

def movHom (K : Type*) [Field K] {N N' : ℕ} (k : GL (Fin N) K) (k' : GL (Fin N') K) :
    Matrix (Fin N') (Fin N) K →+ Matrix (Fin N') (Fin N) K where
  toFun x := (k' : Matrix (Fin N') (Fin N') K) * x * ((k⁻¹ : GL (Fin N) K) : Matrix (Fin N) (Fin N) K)
  map_zero' := by simp
  map_add' x y := by simp [Matrix.mul_add, Matrix.add_mul]

def movLat (O K : Type*) [CommRing O] [Field K] [Algebra O K] {N N' : ℕ} (k : GL (Fin N) K) (k' : GL (Fin N') K) :
    AddSubgroup (Matrix (Fin N') (Fin N) K) :=
  (matLat O K N N').map (movHom K k k')

def RelIndexFormula : Prop :=
  ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field K] [Algebra O K] [IsFractionRing O K]
    (ϖ : O), Irreducible ϖ → ∀ (Q : ℕ), Nat.card (IsLocalRing.ResidueField O) = Q →
    ∀ (N N' : ℕ) (k : GL (Fin N) K) (k' : GL (Fin N') K) (a a' : ℤ) (w w' : Oˣ),
      (k : Matrix (Fin N) (Fin N) K).det = algebraMap O K ϖ ^ a * algebraMap O K (w : O) →
      (k' : Matrix (Fin N') (Fin N') K).det = algebraMap O K ϖ ^ a' * algebraMap O K (w' : O) →
      matLat O K N N' ≤ movLat O K k k' →
      0 ≤ (N' : ℤ) * a - (N : ℤ) * a' ∧
        (matLat O K N N').relIndex (movLat O K k k') = Q ^ ((N' : ℤ) * a - (N : ℤ) * a').toNat

end Index

section IdxProof

alias card_quot_range_toLin' := DVRLatticeIndex.card_quot_range_toLin_clean

end IdxProof

section IdxMain

open scoped Matrix

theorem zpow_eq_unit {O K : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field K] [Algebra O K]
    [IsFractionRing O K] (ϖ : O) (hϖ : Irreducible ϖ) (m : ℤ) (U : Oˣ)
    (h : algebraMap O K ϖ ^ m = algebraMap O K (U : O)) : m = 0 := by
  have hinj := IsFractionRing.injective O K
  have key : ∀ (j : ℕ) (V : Oˣ), algebraMap O K ϖ ^ j = algebraMap O K (V : O) → j = 0 := by
    intro j V hj
    by_contra hj0
    have h1 : ϖ ^ j = (V : O) := hinj (by rw [map_pow]; exact hj)
    have h2 : IsUnit (ϖ ^ j) := by rw [h1]; exact V.isUnit
    exact hϖ.1 ((isUnit_pow_iff hj0).1 h2)
  rcases Int.eq_nat_or_neg m with ⟨j, rfl | rfl⟩
  · rw [zpow_natCast] at h
    simp [key j U h]
  · rw [zpow_neg, zpow_natCast, inv_eq_iff_eq_inv, ← map_units_inv (algebraMap O K)] at h
    simp [key j _ h]

theorem movHom_inv_apply {K : Type*} [Field K] {N N' : ℕ} (k : GL (Fin N) K) (k' : GL (Fin N') K)
    (x : Matrix (Fin N') (Fin N) K) : movHom K k⁻¹ k'⁻¹ (movHom K k k' x) = x := by
  simp only [movHom, AddMonoidHom.coe_mk, ZeroHom.coe_mk, inv_inv]
  first
  | (rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, Units.inv_mul, Matrix.one_mul, Matrix.mul_assoc,
      Units.inv_mul, Matrix.mul_one])

theorem movHom_inv_injective {K : Type*} [Field K] {N N' : ℕ} (k : GL (Fin N) K) (k' : GL (Fin N') K) :
    Function.Injective (movHom K k⁻¹ k'⁻¹) := by
  intro x y hxy
  have h := congrArg (movHom K k⁻¹⁻¹ k'⁻¹⁻¹) hxy
  rwa [movHom_inv_apply, movHom_inv_apply] at h

private theorem zpow_identity_aux_lemma {K : Type*} [Field K] (x y z : K) (hx : x ≠ 0) (N N' : ℕ) (a a' : ℤ) :
    ((x ^ a' * z)⁻¹) ^ N * (x ^ a * y) ^ N' = x ^ ((N' : ℤ) * a - (N : ℤ) * a') * (y ^ N' * z⁻¹ ^ N) := by
  have h1 : x ^ ((N' : ℤ) * a) = (x ^ a) ^ N' := by rw [mul_comm, zpow_mul, zpow_natCast]
  have h2 : x ^ ((N : ℤ) * a') = (x ^ a') ^ N := by rw [mul_comm, zpow_mul, zpow_natCast]
  rw [zpow_sub₀ hx, h1, h2]
  first
  | ring

theorem relIndexFormula : RelIndexFormula := by
  unfold RelIndexFormula
  intro O K _ _ _ _ _ _ ϖ hϖ Q hQ N N' k k' a a' w w' hdk hdk' hle
  have hmem : ∀ y : Matrix (Fin N') (Fin N) K, y ∈ matLat O K N N' ↔
      ∀ i j, y i j ∈ (algebraMap O K).range := fun y => Iff.rfl
  have hTT₀ : ∀ x, movHom K k⁻¹ k'⁻¹ (movHom K k k' x) = x := movHom_inv_apply k k'
  have hT₀T : ∀ x, movHom K k k' (movHom K k⁻¹ k'⁻¹ x) = x := by
    intro x
    simpa only [inv_inv] using movHom_inv_apply k⁻¹ k'⁻¹ x
  have hTL : ∀ y ∈ matLat O K N N', movHom K k⁻¹ k'⁻¹ y ∈ matLat O K N N' := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := AddSubgroup.mem_map.1 (hle hy)
    rwa [hTT₀]
  have hent : ∀ (i p : Fin N') (j q : Fin N), ∃ z : O, algebraMap O K z =
      ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K) i p * (k : Matrix (Fin N) (Fin N) K) q j := by
    intro i p j q
    have hE : (Matrix.of fun (r : Fin N') (c : Fin N) => if r = p then (if c = q then (1 : K) else 0) else 0) ∈
        matLat O K N N' := by
      refine (hmem _).2 fun r c => ?_
      rw [Matrix.of_apply]
      split_ifs
      · exact Subring.one_mem _
      · exact Subring.zero_mem _
      · exact Subring.zero_mem _
    obtain ⟨z, hz⟩ := RingHom.mem_range.1 ((hmem _).1 (hTL _ hE) i j)
    refine ⟨z, hz.trans ?_⟩
    first
    | (simp only [movHom, AddMonoidHom.coe_mk, ZeroHom.coe_mk, inv_inv, Matrix.mul_apply, Matrix.of_apply,
        mul_ite, mul_one, mul_zero, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ,
        ite_true]; done)
  choose D hD using hent
  obtain ⟨Mat, hMat⟩ : ∃ Mat : Matrix (Fin N' × Fin N) (Fin N' × Fin N) O, ∀ i j p q,
      algebraMap O K (Mat (i, j) (p, q)) =
        ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K) i p * (k : Matrix (Fin N) (Fin N) K) q j :=
    ⟨Matrix.of fun r c => D r.1 c.1 r.2 c.2, fun i j p q => hD i p j q⟩
  obtain ⟨Φ, hΦ⟩ : ∃ Φ : (Fin N' × Fin N → O) →+ Matrix (Fin N') (Fin N) K,
      ∀ x i j, Φ x i j = algebraMap O K (x (i, j)) :=
    ⟨{ toFun := fun x => Matrix.of fun i j => algebraMap O K (x (i, j))
       map_zero' := by ext i j; simp
       map_add' := fun x y => by ext i j; simp }, fun x i j => rfl⟩
  have hΦinj : Function.Injective Φ := by
    intro x y hxy
    funext r
    obtain ⟨i, j⟩ := r
    have h : Φ x i j = Φ y i j := by rw [hxy]
    rw [hΦ, hΦ] at h
    exact IsFractionRing.injective O K h
  have hrange : Φ.range = matLat O K N N' := by
    ext y
    rw [AddMonoidHom.mem_range, hmem]
    constructor
    · rintro ⟨x, rfl⟩ i j
      rw [hΦ]
      exact RingHom.mem_range.2 ⟨x (i, j), rfl⟩
    · intro hy
      have hy' : ∀ i j, ∃ z, algebraMap O K z = y i j := fun i j => RingHom.mem_range.1 (hy i j)
      choose f hf using hy'
      refine ⟨fun r => f r.1 r.2, ?_⟩
      ext i j
      rw [hΦ]
      exact hf i j
  have hcomm : ∀ x, Φ (Matrix.toLin' Mat x) = movHom K k⁻¹ k'⁻¹ (Φ x) := by
    intro x
    ext i j
    calc Φ (Matrix.toLin' Mat x) i j
        = ∑ m : Fin N', ∑ l : Fin N, ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K) i m *
            (k : Matrix (Fin N) (Fin N) K) l j * algebraMap O K (x (m, l)) := by
          rw [hΦ, Matrix.toLin'_apply]
          first
          | (simp only [Matrix.mulVec, dotProduct, Fintype.sum_prod_type, map_sum, map_mul, hMat]; done)
      _ = ∑ l : Fin N, (∑ m : Fin N', ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K) i m * Φ x m l) *
            (k : Matrix (Fin N) (Fin N) K) l j := by
          rw [Finset.sum_comm]
          refine Finset.sum_congr rfl fun l _ => ?_
          rw [Finset.sum_mul]
          refine Finset.sum_congr rfl fun m _ => ?_
          rw [hΦ]
          ring
      _ = movHom K k⁻¹ k'⁻¹ (Φ x) i j := by
          first
          | (simp only [movHom, AddMonoidHom.coe_mk, ZeroHom.coe_mk, inv_inv, Matrix.mul_apply]; done)
  have hsub : ((matLat O K N N').comap (movHom K k k')).comap Φ =
      (LinearMap.range (Matrix.toLin' Mat)).toAddSubgroup := by
    ext x
    rw [AddSubgroup.mem_comap, AddSubgroup.mem_comap, Submodule.mem_toAddSubgroup, LinearMap.mem_range]
    constructor
    · intro hx
      rw [← hrange] at hx
      obtain ⟨y, hy⟩ := AddMonoidHom.mem_range.1 hx
      refine ⟨y, hΦinj ?_⟩
      rw [hcomm, hy, hTT₀]
    · rintro ⟨y, rfl⟩
      rw [hcomm, hT₀T, ← hrange]
      exact AddMonoidHom.mem_range.2 ⟨y, rfl⟩
  have hidx : ((matLat O K N N').comap (movHom K k k')).relIndex (matLat O K N N') =
      (((matLat O K N N').comap (movHom K k k')).comap Φ).index := by
    first
    | (rw [AddSubgroup.index_comap, hrange])
  have hrc : (matLat O K N N').relIndex ((matLat O K N N').map (movHom K k k')) =
      ((matLat O K N N').comap (movHom K k k')).relIndex (matLat O K N N') := by
    first
    | rw [AddSubgroup.relIndex_comap]
  have hmapMat : (algebraMap O K).mapMatrix Mat = Matrix.kroneckerMap (· * ·)
      ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K) (k : Matrix (Fin N) (Fin N) K).transpose := by
    ext ⟨i, j⟩ ⟨p, q⟩
    first
    | (rw [RingHom.mapMatrix_apply, Matrix.map_apply, hMat, Matrix.kroneckerMap_apply, Matrix.transpose_apply]; done)
  have hdetA : ((k'⁻¹ : GL (Fin N') K) : Matrix (Fin N') (Fin N') K).det =
      ((k' : Matrix (Fin N') (Fin N') K).det)⁻¹ := by
    first
    | exact eq_inv_of_mul_eq_one_left (by rw [← Matrix.det_mul, Units.inv_mul, Matrix.det_one])
  have hπ : algebraMap O K ϖ ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective O K)).2 hϖ.ne_zero
  obtain ⟨u₀, hu₀⟩ : ∃ u₀ : Oˣ, algebraMap O K (u₀ : O) =
      algebraMap O K (w : O) ^ N' * (algebraMap O K (w' : O))⁻¹ ^ N :=
    ⟨w ^ N' * w'⁻¹ ^ N, by simp only [Units.val_mul, Units.val_pow_eq_pow_val, map_mul, map_pow, map_units_inv]⟩
  have hdetK : algebraMap O K Mat.det =
      algebraMap O K ϖ ^ ((N' : ℤ) * a - (N : ℤ) * a') * algebraMap O K (u₀ : O) := by
    rw [hu₀, RingHom.map_det, hmapMat, Matrix.det_kronecker, Matrix.det_transpose, hdetA, hdk, hdk']
    simp only [Fintype.card_fin]
    exact zpow_identity_aux_lemma _ _ _ hπ N N' a a'
  have hU0 : algebraMap O K (u₀ : O) ≠ 0 := (u₀.isUnit.map (algebraMap O K)).ne_zero
  have hd0 : Mat.det ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hdetK
    exact mul_ne_zero (zpow_ne_zero _ hπ) hU0 hdetK.symm
  obtain ⟨m, v, hdv⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hd0 hϖ
  have hV : algebraMap O K (v : O) ≠ 0 := (v.isUnit.map (algebraMap O K)).ne_zero
  have h' : algebraMap O K (v : O) * algebraMap O K ϖ ^ m =
      algebraMap O K ϖ ^ ((N' : ℤ) * a - (N : ℤ) * a') * algebraMap O K (u₀ : O) := by
    rw [← hdetK, hdv, map_mul, map_pow]
  have hm : algebraMap O K ϖ ^ m =
      (algebraMap O K (v : O))⁻¹ * (algebraMap O K (v : O) * algebraMap O K ϖ ^ m) := by
    rw [← mul_assoc, inv_mul_cancel₀ hV, one_mul]
  have hkey : algebraMap O K ϖ ^ ((m : ℤ) - ((N' : ℤ) * a - (N : ℤ) * a')) =
      algebraMap O K ((u₀ * v⁻¹ : Oˣ) : O) := by
    rw [zpow_sub₀ hπ, zpow_natCast, Units.val_mul, map_mul, map_units_inv, div_eq_iff (zpow_ne_zero _ hπ), hm, h']
    ring
  have hm0 := zpow_eq_unit ϖ hϖ _ _ hkey
  have he : (N' : ℤ) * a - (N : ℤ) * a' = m := by linarith
  have hc := card_quot_range_toLin' ϖ hϖ Mat m v (by rw [hdv, mul_comm])
  refine ⟨by rw [he]; omega, ?_⟩
  have htoNat : ((N' : ℤ) * a - (N : ℤ) * a').toNat = m := by rw [he]; simp
  rw [htoNat, ← hQ, ← hc, show movLat O K k k' =
    (matLat O K N N').map (movHom K k k') from rfl, hrc, hidx, hsub]
  first
  | rfl

end IdxMain

section Model

variable {F M : Type*} [AddCommGroup F] [Module C F] [AddCommGroup M] [Module C M]

end Model

section Assembled

end Assembled

end UnitaryThetaMoves

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.DeterminantCokernelCount.CokernelIndexFactors.ThirdMomentLaw =====
