module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTripleChartUnitaryBoundaryPointRigidStatement
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueFixedPointOfAdicContraction
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.CohenStructureFiniteOverNormalCompleteSubring
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IntegralClosureFiniteLocalCompleteMixedChar
public import Mathlib.RingTheory.KrullDimension.Field
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfIsPullDeg
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfTorMatch
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharExistsOfIsMonHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivMapOfTorMatch
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PowCompOfIsMonHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictSurjectiveAlt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpreadOfTrait
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeOfKernelInGeneratingOpen
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsSystemOfParametersInsert
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.AdicCompletion.Noetherian
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Degenerations.MorAlgSt
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime
import Mathlib.Algebra.Azumaya.Basic
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BoundaryEtaleStalkForms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvr, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvrStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BoundaryEtaleStalkForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BoundaryEtaleStalkForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueFixedPointOfAdicContraction\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.CohenStructureFiniteOverNormalCompleteSubring\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsSystemOfParametersInsert\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IntegralClosureFiniteLocalCompleteMixedChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.KrullDimension.Field\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.MorAlgSt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\nimport Mathlib.Algebra.Azumaya.Basic\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.TorRef GlobalTheory.Cartier

noncomputable section

namespace GlobalTheory.FarTrait

section Algebra
open Polynomial

theorem exists_coefficientField (S : Type) [CommRing S] [IsLocalRing S] [IsAdicComplete (maximalIdeal S) S]
    [CharZero (ResidueField S)] :
    ∃ Λ : Subring S, IsField Λ ∧ ∀ s : S, ∃ a ∈ Λ, s - a ∈ maximalIdeal S := by
  first | exact _root_.GlobalTheory.CohenRegular.exists_coefficientField_of_charZero | exact @_root_.GlobalTheory.CohenRegular.exists_coefficientField_of_charZero | apply _root_.GlobalTheory.CohenRegular.exists_coefficientField_of_charZero <;> assumption

end Algebra


open MvPowerSeries GlobalTheory.CohenStructure in
theorem exists_finite_over_normal (S : Type) [CommRing S] [IsDomain S] [IsLocalRing S] [CharZero S]
    [IsNoetherianRing S] [hc : IsAdicComplete (maximalIdeal S) S] :
    ∃ (A : Type) (_ : CommRing A) (_ : IsDomain A) (i : A →+* S),
      Function.Injective i ∧ i.Finite ∧ IsNoetherianRing A ∧ IsIntegrallyClosed A := by
  obtain ⟨p, hp⟩ := CharP.exists (ResidueField S)
  rcases CharP.char_is_prime_or_zero (ResidueField S) p with h | rfl
  · obtain ⟨A, _, _, _, i, h1, h2, h3, h4, -⟩ := exists_finite_injective_of_isAdicComplete S p h
      (by rw [← residue_eq_zero_iff, map_natCast]; exact CharP.cast_eq_zero _ p) inferInstance hc
    exact ⟨A, inferInstance, inferInstance, i, h1, h2, h3, h4⟩
  haveI := CharP.charP_to_charZero (ResidueField S)
  by_cases hm : maximalIdeal S = ⊥
  · letI := (isField_iff_maximalIdeal_eq.2 hm).toField
    exact ⟨S, inferInstance, inferInstance, RingHom.id S, Function.injective_id, RingHom.Finite.id S, inferInstance,
      inferInstance⟩
  obtain ⟨a, ha, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hm
  obtain ⟨Λ, hF, h1⟩ := exists_coefficientField S
  letI := hF.toField
  obtain ⟨n, x₀, hx₀, hd, N, hN⟩ := GlobalTheory.exists_systemOfParameters_insert S a ha0 ha
  let x : Fin (n + 1) → S := Fin.cons a x₀
  have hx : ∀ i, x i ∈ maximalIdeal S := fun i => Fin.cases ha hx₀ i
  let A := MvPowerSeries (Fin (n + 1)) Λ
  let φ : A →ₐ[Λ] S := mvEvalAdic Λ (maximalIdeal S) x hx
  letI : Algebra A S := φ.toRingHom.toAlgebra
  have : IsDomain A := isDomain_mvPowerSeries Λ (n + 1)
  have hb : maximalIdeal Λ = ⊥ := isField_iff_maximalIdeal_eq.1 hF
  have : IsAdicComplete (maximalIdeal Λ) Λ := by rw [hb]; infer_instance
  have hA := isAdicComplete_mvPowerSeries Λ (n + 1)
  have hle : (maximalIdeal A).map (algebraMap A S) ≤ maximalIdeal S := by
    refine Ideal.map_le_iff_le_comap.2 fun g hg => ?_
    have h4 := algHom_sub_constantCoeff_mem φ (K := maximalIdeal S)
      (fun j => by simpa [φ] using hx j) g
    have h5 := FormalIsogeny.mem_maximalIdeal_iff_constantCoeff.1 hg
    rw [hb, Ideal.mem_bot] at h5
    rwa [h5, map_zero, sub_zero] at h4
  have hge : maximalIdeal S ^ N ≤ (maximalIdeal A).map (algebraMap A S) := by
    refine hN.trans (Ideal.span_le.2 ?_)
    rw [← Fin.range_cons]
    rintro _ ⟨i, rfl⟩
    show x i ∈ _
    rw [← mvEvalAdic_X (A := Λ) (maximalIdeal S) x hx i]
    exact Ideal.mem_map_of_mem (algebraMap A S)
      (FormalIsogeny.mem_maximalIdeal_iff_constantCoeff.2 (by simp))
  have : IsHausdorff ((maximalIdeal A).map (algebraMap A S)) S :=
    IsHausdorff.of_isLocalRing _ _ (ne_top_of_le_ne_top (maximalIdeal.isMaximal _).ne_top hle)
  have : Module.Finite A (S ⧸ (maximalIdeal A).map (algebraMap A S)) := by
    refine finite_quotient_of_pow_le (fun s => ?_) hge
    obtain ⟨a, ha, h⟩ := h1 s
    refine ⟨C ⟨a, ha⟩, ?_⟩
    rwa [show algebraMap A S (C ⟨a, ha⟩) = a from mvEvalAdic_C _ x hx _]
  have hfin : Module.Finite A S := FormalIsogeny.finite_of_finite_quotient_map (maximalIdeal A)
  refine ⟨A, inferInstance, inferInstance, algebraMap A S,
    injective_of_ringKrullDim_eq (n := n + 1) ?_ (by rw [hd]; norm_cast), hfin, inferInstance,
    isIntegrallyClosed_mvPowerSeries Λ (n + 1)⟩
  rw [FormalIsogeny.ringKrullDim_mvPowerSeries, ringKrullDim_eq_zero_of_isField hF,
    Nat.card_eq_fintype_card, Fintype.card_fin, zero_add]

theorem exists_factor {R W : Type} [CommRing R] [IsLocalRing R] [IsNoetherianRing R]
    [IsAdicComplete (maximalIdeal R) R] [CommRing W] [IsDomain W] [IsIntegrallyClosed W] [CharZero W] (g : R →+* W) :
    ∃ (N : Type) (_ : CommRing N) (_ : IsDomain N) (_ : IsLocalRing N) (φ : R →+* N) (g' : N →+* W),
      IsCN N ∧ IsLocalHom φ ∧ Function.Injective g' ∧ ∀ r, g' (φ r) = g r := by
  haveI := RingHom.ker_isPrime g
  let S := R ⧸ RingHom.ker g
  let k : S →+* W := RingHom.kerLift g
  have hk : Function.Injective k := RingHom.kerLift_injective g
  haveI : IsLocalRing S := ReciprocityTheory.ChartRestriction.G.T0.FiniteAlgebraLocalCompletion.isLocalRing_finite_domain (R := R) S
  haveI : IsAdicComplete (maximalIdeal S) S := CompleteFiniteExtension.isAdicComplete_of_finite_local R S
  haveI : CharZero S := RingHom.charZero k
  obtain ⟨A, _, _, i, hi, hfin, _, _⟩ := exists_finite_over_normal S
  letI : Algebra A S := i.toAlgebra
  have : FaithfulSMul A S := (faithfulSMul_iff_algebraMap_injective A S).2 hi
  have : Module.Finite A S := hfin
  let N := integralClosure S (FractionRing S)
  have hf : Module.Finite S N := finite_normalisation_of_finite_over_normal A S
  haveI : IsLocalRing N := ReciprocityTheory.ChartRestriction.G.T0.FiniteAlgebraLocalCompletion.isLocalRing_finite_domain (R := S) _
  have j : Function.Injective ((algebraMap W (FractionRing W)).comp k) := (IsFractionRing.injective W _).comp hk
  let K : FractionRing S →+* FractionRing W := IsFractionRing.lift j
  have hK : ∀ s, K (algebraMap S _ s) = algebraMap W _ (k s) := IsFractionRing.lift_algebraMap j
  have hint : ∀ x : N, K x ∈ (algebraMap W (FractionRing W)).range := fun x =>
    IsIntegrallyClosed.isIntegral_iff.1 (IsIntegral.map_of_comp_eq k K (RingHom.ext fun s => (hK s).symm) x.2)
  let eW : W ≃+* (algebraMap W (FractionRing W)).range :=
    RingEquiv.ofBijective (algebraMap W (FractionRing W)).rangeRestrict
      ⟨fun a b h => IsFractionRing.injective W (FractionRing W) (congrArg Subtype.val h),
        RingHom.rangeRestrict_surjective _⟩
  let g' : N →+* W := eW.symm.toRingHom.comp ((K.comp N.val.toRingHom).codRestrict _ hint)
  have hg' : ∀ x : N, algebraMap W (FractionRing W) (g' x) = K x := fun x =>
    congrArg Subtype.val (eW.apply_symm_apply ⟨K x, hint x⟩)
  have hinj : Function.Injective g' := fun a b h =>
    Subtype.ext (K.injective ((hg' a).symm.trans ((congrArg _ h).trans (hg' b))))
  haveI : FaithfulSMul S N := (faithfulSMul_iff_algebraMap_injective S N).2 fun a b h =>
    IsFractionRing.injective S (FractionRing S) (congrArg Subtype.val h)
  haveI : IsLocalHom (Ideal.Quotient.mk (RingHom.ker g)) := IsLocalHom.of_surjective (S := S) _ Ideal.Quotient.mk_surjective
  refine ⟨N, inferInstance, inferInstance, inferInstance, (algebraMap S N).comp (Ideal.Quotient.mk _), g',
    ⟨IsNoetherianRing.of_finite S _, integralClosure.isIntegrallyClosedOfFiniteExtension (FractionRing S),
      CompleteFiniteExtension.isAdicComplete_of_finite_local S _, RingHom.charZero g'⟩, inferInstance, hinj, fun r => ?_⟩
  exact IsFractionRing.injective W (FractionRing W) ((hg' _).trans (hK _))



end GlobalTheory.FarTrait
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BoundaryEtaleStalkForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfIsPullDeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfTorMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharExistsOfIsMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivMapOfTorMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PowCompOfIsMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictSurjectiveAlt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpreadOfTrait\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeOfKernelInGeneratingOpen\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BoundaryEtaleStalkForms\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.ZH
open scoped CategoryTheory.Obj
open GlobalTheory.Poinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

namespace GlobalTheory.Poinc.Eq8.GenRestrict

theorem exists_surjective_coordMap_equivMap : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], GlobalTheory.Mum.Base R → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (U : Unif (maximalIdeal R) D A G) (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V], GlobalTheory.Mum.Base V → IsDiscreteValuationRing V → ∀ (G' : Over (Sp V)) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (D' : DegData V (maximalIdeal V)) (A' : PolAV (Sp (FractionRing V))) (U' : Unif (maximalIdeal V) D' A' G') (g : R →+* V) (β : G'.left ⟶ G.left) (p : ℕ), p.Prime → (p : R) ∈ maximalIdeal R → ∀ (Wo : Set (Sp R)), IsOpen Wo → (∀ y, PsiUnitOn D.toPre y Wo) → (⟨RingHom.ker g, RingHom.ker_isPrime g⟩ : PrimeSpectrum R) ∈ Wo → IsGrpPullback G' G (spMap g) β → LBIso U'.LG.L (U.LG.L.pull β) → ∃ ρ : D.toPre.X →+ D'.toPre.X, Function.Surjective ρ ∧ CoordMap D.toPre D'.toPre g ρ ∧ EquivMap U U' β ρ := by
  intro R _ _ _ hR G _ _ hG D A U V _ _ _ hV hVd G' _ _ hG' D' A' U' g β p _ _ Wo hWo hψ hker gp hL
  obtain ⟨⟨hRN, -, -, hRA⟩, -⟩ := id hR
  obtain ⟨⟨-, -, hVI, -⟩, hV0⟩ := id hV
  obtain ⟨N, _, _, _, φ, g', hN, hφ, hg', hfac⟩ := GlobalTheory.FarTrait.exists_factor g
  obtain ⟨hNN, hNI, hNA, hN0⟩ := hN
  have hNb : GlobalTheory.Mum.Base N := ⟨⟨hNN, inferInstance, hNI, hNA⟩, hN0⟩
  have hsp : spMap g' ≫ spMap φ = spMap g := by
    rw [← Spec.map_comp]
    exact congrArg spMap (RingHom.ext hfac)
  have hgen : spMap φ (genericPoint (Sp N)) ∈ (⟨Wo, hWo⟩ : (Sp R).Opens) := by
    have e : spMap φ (genericPoint (Sp N)) = (⟨RingHom.ker g, RingHom.ker_isPrime g⟩ : PrimeSpectrum R) := by
      rw [genericPoint_eq_bot_of_affine]
      refine PrimeSpectrum.ext (Ideal.ext fun r => ?_)
      change φ r ∈ (⊥ : Ideal N) ↔ r ∈ RingHom.ker g
      rw [Ideal.mem_bot, RingHom.mem_ker, ← hfac, map_eq_zero_iff g' hg']
    rw [e]
    exact hker
  have hG₂ : IsSemiAbelian ((Over.pullback (specOf φ)).obj G) := Geo.Tor.IsSemiAbelian.pullback _ G hG
  haveI : IsCommMonObj ((Over.pullback (specOf φ)).obj G) := hG₂.comm
  have hbc : IsMonHom (Iso.refl ((Over.pullback (specOf φ)).obj G)).hom :=
    inferInstanceAs (IsMonHom (𝟙 ((Over.pullback (specOf φ)).obj G)))
  obtain ⟨D₂, A₂, hD, U₂, hU⟩ := GlobalTheory.Mum.unif_baseChange_of_psiUnitOn R hR D A G hG U N hNb.1 φ hφ ⟨Wo, hWo⟩ hψ hgen
    ((Over.pullback (specOf φ)).obj G) (Iso.refl _) hbc
  obtain ⟨hL₁, hC₁, hE₁⟩ := PullUnif.main R hR G hG D A U N hNb _ hG₂ D₂ A₂ U₂ φ (pullback.fst G.hom (specOf φ)) hφ
    (Iso.refl _) hbc (Category.id_comp _).symm hD hU
  have sq : β ≫ G.hom = (G'.hom ≫ spMap g') ≫ specOf φ := by
    rw [Category.assoc, gp.1.w, ← hsp]
  let β₂ : G'.left ⟶ ((Over.pullback (specOf φ)).obj G).left := pullback.lift β (G'.hom ≫ spMap g') sq
  have hβ : β₂ ≫ pullback.fst G.hom (specOf φ) = β := pullback.lift_fst _ _ _
  have hβ' : β₂ ≫ pullback.snd G.hom (specOf φ) = G'.hom ≫ spMap g' := pullback.lift_snd _ _ _
  have gp₂ : IsGrpPullback G' ((Over.pullback (specOf φ)).obj G) (spMap g') β₂ :=
    (isGrpPullback_pullback G (specOf φ)).cancel (gp.congr hsp.symm hβ.symm) hβ'
  have hL₂ : LBIso U'.LG.L (U₂.LG.L.pull β₂) :=
    LBIso.trans U'.LG.isLB (LB.isLB_pull U.LG.isLB _) (LB.isLB_pull U₂.LG.isLB _) hL
      (GlobalTheory.GenSpread.lbIso_pull_of_lbIso hL₁ β₂ hβ.symm).symm
  obtain ⟨ρ, hρ⟩ := GlobalTheory.SpreadTrait.exists_spread N hNb _ hG₂ D₂ A₂ U₂ V hV G' hG' D' A' U' g' β₂ gp₂
  have hs := GlobalTheory.TorusOntoSpread.restrict_surjective N hNb _ hG₂ D₂ A₂ U₂ V hV G' hG' D' A' U' g' β₂ gp₂ ρ hρ
  have hT := GlobalTheory.SpreadTorMatch.torMatch_of_spread N hNb _ hG₂ D₂ A₂ U₂ V hV G' hG' D' A' U' g' β₂ gp₂ ρ hρ
  have hC₂ := TorCoord.coordMap_of_torMatch N hNb _ hG₂ D₂ A₂ U₂ V hV hVd G' hG' D' A' U' g' β₂ hg' gp₂ hL₂ ρ hT
  have hE₂ := equivMap_of_torMatch N hNb _ hG₂ D₂ A₂ U₂ V hV G' hG' D' A' U' g' β₂ hg' ρ hT
  refine ⟨ρ.comp hD.xe.symm.toAddMonoidHom, hs.comp hD.xe.symm.surjective, fun y r r' hr hr' => ?_,
    fun f f' hf hf' hff m m' hm hm' y => ?_⟩
  · obtain ⟨r₂, hr₂⟩ := GlobalTheory.BetaAdd.exists_coord D₂ (hD.xe.symm.toAddMonoidHom y)
    rw [← hfac]
    exact ((hC₁ y r r₂ hr hr₂).map g').trans (hC₂ _ r₂ r' hr₂ hr')
  · have hf₂ : IsMonHom ((Over.pullback (specOf φ)).map f) := inferInstance
    have e₁ : ((Over.pullback (specOf φ)).map f).left ≫ pullback.fst G.hom (specOf φ) =
        pullback.fst G.hom (specOf φ) ≫ f.left := pullback.lift_fst _ _ _
    have e₂ : ((Over.pullback (specOf φ)).map f).left ≫ pullback.snd G.hom (specOf φ) =
        pullback.snd G.hom (specOf φ) := Over.w ((Over.pullback (specOf φ)).map f)
    have e₃ : f'.left ≫ β₂ = β₂ ≫ ((Over.pullback (specOf φ)).map f).left := by
      refine pullback.hom_ext ?_ ?_
      · refine (Category.assoc _ _ _).trans (Eq.trans ?_ (Category.assoc _ _ _).symm)
        erw [e₁, hβ, ← Category.assoc, hβ, hff]
      · refine (Category.assoc _ _ _).trans (Eq.trans ?_ (Category.assoc _ _ _).symm)
        erw [e₂, hβ', ← Category.assoc, Over.w f']
    obtain ⟨m₂, hm₂⟩ := endChar_exists_of_isMonHom N hNb _ hG₂ D₂ A₂ U₂ _ hf₂
    have h₁ := hE₁ f _ hf hf₂ e₁ m m₂ hm hm₂ y
    exact (congrArg ρ h₁).trans (hE₂ _ f' hf₂ hf' e₃ m₂ m' hm₂ hm' _)

end GlobalTheory.Poinc.Eq8.GenRestrict
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvrStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvrStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.ZH
open scoped CategoryTheory.Obj
open GlobalTheory.Poinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSurjectiveLatticeCoordMapEquivariantDvrStatement =====
