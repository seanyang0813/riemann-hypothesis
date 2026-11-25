module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpen
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletionPointClosedPointMemOfSmooth
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueAlgEquivOfCompatibleQuotient
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteMaximalSpectrumOfFiniteOfIsLocalRing
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEquivalenceFiniteEtaleBaseChangeResidueField
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsDomainAndIsIntegrallyClosedAtPrimeOfSmoothOfCo
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleLocalExtResidueFieldSeparable, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpenStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSeparablePointSmoothLocalRingOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleLocalExtResidueFieldSeparable =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleLocalExtResidueFieldSeparable", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueAlgEquivOfCompatibleQuotient\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteMaximalSpectrumOfFiniteOfIsLocalRing\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEquivalenceFiniteEtaleBaseChangeResidueField\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsDomainAndIsIntegrallyClosedAtPrimeOfSmoothOfCo\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_finExt_etale_of_isSeparable : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R],
    AdmBase R (maximalIdeal R) → ∀ (k' : Type) [Field k'] [Algebra (ResidueField R) k']
    [Module.Finite (ResidueField R) k'] [Algebra.IsSeparable (ResidueField R) k'],
    ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R')
      (σ : k' →+* ResidueField R'), FinExt ρ ∧ ρ.Etale ∧
      σ.comp ((algebraMap (ResidueField R) k').comp (residue R)) = (residue R').comp ρ := by
  intro R _ _ _ hR k' _ _ _ _
  obtain ⟨hN, -, hIC, hC⟩ := hR
  haveI := hN; haveI := hIC; haveI := hC
  obtain ⟨A, _, _, hfin, het, hloc, ⟨ε⟩⟩ := GlobalTheory.exists_etale_lift_of_isSeparable R k'
  haveI : IsLocalHom (algebraMap R A) :=
    ((local_hom_tfae (algebraMap R A)).out 1 5).mpr (comap_eq_maximalIdeal_of_finite _)
  have hm : (maximalIdeal R).map (algebraMap R A) = maximalIdeal A :=
    Algebra.FormallyUnramified.map_maximalIdeal
  obtain ⟨hD, hI⟩ := GlobalTheory.isDomain_and_isIntegrallyClosed_atPrime_of_etale R (maximalIdeal A)
    (Localization.AtPrime (maximalIdeal A))
  let e := IsLocalization.atUnits A (maximalIdeal A).primeCompl
    (S := Localization.AtPrime (maximalIdeal A)) (fun y hy => by
      rw [IsUnit.mem_submonoid_iff]
      by_contra h
      exact hy ((IsLocalRing.mem_maximalIdeal y).mpr h))
  haveI : IsDomain A := e.toMulEquiv.isDomain
  haveI : IsIntegrallyClosed A := IsIntegrallyClosed.of_equiv e.toRingEquiv.symm
  haveI : IsNoetherian R A := inferInstance
  haveI : IsNoetherianRing A := isNoetherian_of_tower R inferInstance
  let g2 : ResidueField R ⊗[R] A →ₐ[R] ResidueField A :=
    Algebra.TensorProduct.lift (IsScalarTower.toAlgHom R (ResidueField R) (ResidueField A))
      (IsScalarTower.toAlgHom R A (ResidueField A)) (fun _ _ => Commute.all _ _)
  let σ : k' →+* ResidueField A := g2.toRingHom.comp ε.symm.toRingHom
  refine ⟨A, inferInstance, inferInstance, inferInstance, algebraMap R A, σ,
    ⟨⟨inferInstance, inferInstance, inferInstance, ?_⟩, ?_, RingHom.finite_algebraMap.mpr hfin⟩,
    RingHom.etale_algebraMap.mpr het, ?_⟩
  · have := GlobalTheory.isAdicComplete_map_of_finite (maximalIdeal R) A
    rwa [hm] at this
  · haveI : Module.Free R A := Module.free_of_flat_of_isLocalRing
    intro x y hxy
    rw [← sub_eq_zero]
    have h0 : (x - y) • (1 : A) = 0 := by
      rw [Algebra.smul_def, _root_.mul_one, map_sub, hxy, sub_self]
    exact (smul_eq_zero.mp h0).resolve_right one_ne_zero
  · ext r
    simp only [RingHom.comp_apply, σ, AlgEquiv.coe_toRingEquiv, RingEquiv.toRingHom_eq_coe,
      RingHom.coe_coe, AlgEquiv.commutes, AlgHom.toRingHom_eq_coe]
    change g2 (algebraMap (ResidueField R) (ResidueField R ⊗[R] A) (residue R r)) = _
    rw [Algebra.TensorProduct.algebraMap_apply]
    simp [g2]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleLocalExtResidueFieldSeparable =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpenStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpenStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpenStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSeparablePointSmoothLocalRingOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSeparablePointSmoothLocalRingOpen", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletionPointClosedPointMemOfSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_separable_point_of_smooth : ∀ (R : Type) [CommRing R] [IsLocalRing R] (U : Over (Sp R)), Smooth U.hom →
    ∀ O : U.left.Opens, (∃ u ∈ O, U.hom u = closedPoint R) →
    ∃ (k' : Type) (_ : Field k') (_ : Algebra (ResidueField R) k') (_ : Module.Finite (ResidueField R) k')
      (_ : Algebra.IsSeparable (ResidueField R) k') (x : Sp k' ⟶ U.left),
      x ≫ U.hom = spMap ((algebraMap (ResidueField R) k').comp (residue R)) ∧ Set.range x ⊆ O := by
  intro R _ _ U hU O hO
  obtain ⟨W, _, _, _, ε, y, hy, hyO⟩ := GlobalTheory.exists_etale_point_of_smooth U.hom R
    (SeparableClosure (ResidueField R)) (𝟙 _) O (by obtain ⟨u, hu, e⟩ := hO; exact ⟨u, hu, e⟩)
  obtain ⟨s, hs⟩ := (Algebra.FiniteType.out : (⊤ : Subalgebra R W).FG)
  let k' : IntermediateField (ResidueField R) (SeparableClosure (ResidueField R)) :=
    IntermediateField.adjoin (ResidueField R) (ε '' (s : Set W))
  have hfin : FiniteDimensional (ResidueField R) k' :=
    IntermediateField.finiteDimensional_adjoin fun x _ => Algebra.IsIntegral.isIntegral x
  have hsep : Algebra.IsSeparable (ResidueField R) k' := Algebra.IsSeparable.of_algHom _ _ k'.val
  have hle : Algebra.adjoin R (s : Set W) ≤ (k'.toSubalgebra.restrictScalars R).comap ε :=
    Algebra.adjoin_le fun w hw => IntermediateField.subset_adjoin _ _ ⟨w, hw, rfl⟩
  have hmem : ∀ w, ε w ∈ k' := fun w => hle (hs ▸ Algebra.mem_top)
  let g : W →+* k' := ε.toRingHom.codRestrict k' hmem
  set_option synthInstance.maxHeartbeats 200000 in
    refine ⟨k', inferInstance, inferInstance, hfin, hsep, Spec.map (CommRingCat.ofHom g) ≫ y, ?_, ?_⟩
  · rw [Category.assoc, hy, Category.comp_id, ← Spec.map_comp]
    congr 2
    ext r
    simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply]
    congr 1
    change ε (algebraMap R W r) = algebraMap (ResidueField R) _ (residue R r)
    rw [ε.commutes]
    exact IsScalarTower.algebraMap_apply R (ResidueField R) _ r
  · rintro _ ⟨z, rfl⟩
    exact hyO ⟨_, rfl⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSeparablePointSmoothLocalRingOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleLocalExtResidueFieldSeparable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionWithRangeInOpenStatement\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSeparablePointSmoothLocalRingOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_finEtale_section_of_smooth : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (U : Over (Sp R)), Smooth U.hom → ∀ O : U.left.Opens, (∃ u ∈ O, U.hom u = closedPoint R) → ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R') (a : Sp R' ⟶ U.left), FinExt ρ ∧ ρ.Etale ∧ a ≫ U.hom = spMap ρ ∧ Set.range a ⊆ O := by
  intro R _ _ _ hR U hU O hO
  obtain ⟨k', _, _, _, _, x, hx, hxO⟩ := _root_.GlobalTheory.Mum.exists_separable_point_of_smooth R U hU O hO
  obtain ⟨R', _, _, _, ρ, σ, hF, hE, hσ⟩ := _root_.GlobalTheory.Mum.exists_finExt_etale_of_isSeparable R hR k'
  have hN : IsNoetherianRing R' := hF.1.1
  have hc : IsAdicComplete (maximalIdeal R') R' := hF.1.2.2.2
  have hx₀ : (spMap σ ≫ x) ≫ U.hom = spMap ((residue R').comp ρ) := by
    rw [Category.assoc, hx, ← hσ, ← Spec.map_comp]; rfl
  have hr : Set.range (spMap σ ≫ x) ⊆ O := by
    rintro _ ⟨p, rfl⟩; exact hxO ⟨_, rfl⟩
  obtain ⟨a, ha, haO⟩ := _root_.GlobalTheory.HenselLift.exists_lift_mem_open R R' hc ρ U hU (spMap σ ≫ x) hx₀ O hr
  exact ⟨R', _, inferInstance, inferInstance, ρ, a, hF, hE, ha, haO⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement =====
