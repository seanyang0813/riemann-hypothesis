module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdealSheafDescendingDivisorPower
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType
public import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BalancedPosDefFiniteProjectiveLattice
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfIsPullDeg
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfTorMatch
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharExistsOfIsMonHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndomorphismCharacterActionConjugate
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivMapOfTorMatch
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearUniformisationPulledBackTrait
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PowCompOfIsMonHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictSurjectiveAlt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpreadOfTrait
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeOfKernelInGeneratingOpen
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCommonBaseChangePolarizedAbelianSchemeOfGe
public import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyUWit
public import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsActionPullbackUniversalUnitaryStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGrpPullbackCompleteDVROfGenericCompatStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoOfGenericSemiAbelianCompleteDVRStatement
public import Development.AbelianVarietyTheory.Definitions.Degenerations.NormNatCastPadicAlgClOfCoprime
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EssFiniteTypeIntStalk
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsActionPullbackUniversalUnitary
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitModuliOfStalkCompleteDVR
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughModuliGenericPoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UValThruTopOfDisjoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterGroupFinrankLeMinSignatureUnitaryTrait
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDvrOfDimOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalHomAdicCompletionExtend
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdlAlongEqTopOfNotMemSupport
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdealAlongStalkPointEqMap
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntBilinFormToRealMemBalancedPsdCone
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
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
import Development.AbelianVarietyTheory.Definitions.Degenerations.HomExtSt
import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ArcGenericPointDescendsToPowerSeries
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GenericPointMemModuliOfMeetsAbelianLocus
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsProperOfSubsingleton
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsSchemeTheoreticallyDominantSpecOfInjective
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ModuliFiniteSurjectiveOverGenericFamily
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal
import Mathlib.RingTheory.AdicCompletion.LocalRing
import Mathlib.RingTheory.AdicCompletion.Noetherian
import Mathlib.Algebra.Order.Star.Int

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsGrpPullbackOfEqId, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfIsGrpPullbackFst, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitLatticeEquivCompletedLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibreStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianActionEqUniversalAtFieldPointsOfTheta, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegerActionSemiAbelianAlongTraitsOverModuli, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompletionUnif, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryLocalPeriodsThetaModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUTraitOfStalkDvr, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughOpenOfStalkCompleteDvr, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorOrdersAllTraitsOverModuli

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsGrpPullbackOfEqId =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsGrpPullbackOfEqId", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.HomExtSt\nimport Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU
open GlobalTheory.LN

namespace GlobalTheory.LN.SelfCmp

end GlobalTheory.LN.SelfCmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsGrpPullbackOfEqId =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfIsGrpPullbackFst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfIsGrpPullbackFst", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isMonHom_of_isGrpPullback_fst {S S' : Scheme.{0}} {s : S' ⟶ S} {G : Over S} {G' : Over S'} [GrpObj G] [GrpObj G']
    (bc : G' ≅ (Over.pullback s).obj G) (h : IsGrpPullback G' G s (bc.hom.left ≫ pullback.fst G.hom s)) :
    IsMonHom bc.hom := by
  obtain ⟨e, me, he⟩ := grpPullback_iso h (isGrpPullback_pullback G s)
  have : e.hom = bc.hom := Over.OverMorphism.ext (pullback.hom_ext he ((Over.w e.hom).trans (Over.w bc.hom).symm))
  exact this ▸ me

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfIsGrpPullbackFst =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitLatticeEquivCompletedLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitLatticeEquivCompletedLocalRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ArcGenericPointDescendsToPowerSeries\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GenericPointMemModuliOfMeetsAbelianLocus\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsGrpPullbackOfEqId\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BalancedPosDefFiniteProjectiveLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfIsPullDeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordMapOfTorMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharExistsOfIsMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndomorphismCharacterActionConjugate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivMapOfTorMatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearUniformisationPulledBackTrait\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfIsGrpPullbackFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PowCompOfIsMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictSurjectiveAlt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpreadOfTrait\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeOfKernelInGeneratingOpen\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsProperOfSubsingleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical
namespace GlobalTheory.UPoinc.TraitCompare

theorem exists_trait_lattice_equiv : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (r : Y.Z ⟶ C.Z), X₁.S.Over₀ Y U₀ → Y.pt ≫ r = X₁.uΩ ≫ C.i → ∀ f : 𝓞 E → (out.G ⟶ out.G), (∀ a, IsMonHom (f a)) → (∀ z : Y.Z, r z ∈ Set.range C.i → z ∈ abLocus out.G) → (∀ (T : UTrait Xo c) (ξ : Sp T.V ⟶ Y.Z), jK T.V ≫ ξ ≫ r = T.y ≫ C.i → ∃ β : T.t.G.left ⟶ out.G.left, IsGrpPullback T.t.G out.G ξ β ∧ LBIso T.t.PP.L (out.L.L.pull β) ∧ ∀ a, (T.t.act.act a).left ≫ β = β ≫ (f a).left) → ∀ (x : Y.Z) (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (j : Y.Z.presheaf.stalk x →+* R), GlobalTheory.Mum.Base R → IsCpl j → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (gm : G.left ⟶ out.G.left), IsSemiAbelian G → IsGrpPullback G out.G (spMap j ≫ Y.Z.fromSpecStalk x) gm → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (U : Unif (maximalIdeal R) D A G), LBIso U.LG.L (out.L.L.pull gm) → (∀ y, PsiUnitOn D.toPre y ((spMap j ≫ Y.Z.fromSpecStalk x) ⁻¹' abLocus out.G)) → ∀ m : 𝓞 E → (D.toPre.X →+ D.toPre.X), (∀ a, ∃ fR : G ⟶ G, IsMonHom fR ∧ fR.left ≫ gm = gm ≫ (f a).left ∧ EndChar U fR (m a)) → ∀ (T : UTrait Xo c) (ψ : R →+* T.V), IsLocalHom ψ → jK T.V ≫ (spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x) ≫ r = T.y ≫ C.i → ∃ ρT : D.toPre.X ≃+ T.P.D.toPre.X, (∀ y s, PsiCoord D.toPre y s → 0 ≤ T.be (ρT y) (ρT y) ∧ Associated (ψ s ^ 2) (T.ϖ ^ (T.be (ρT y) (ρT y)).toNat)) ∧ ∀ a y, ρT (m a y) = H.bar a • ρT y := by
  intro E _ _ _ H Dw l Xo c C X₁ Y U₀ EE out r _hOver _hpt f _hf habl hT x R _ _ _ j hR _hj G _ _ gm hG hgm D A U hLB
    hPsi m hm T ψ hψ hTy
  haveI : IsDiscreteValuationRing T.V := T.cdvr.1
  haveI : CharZero T.V := T.cdvr.2.2
  have hTV : GlobalTheory.Mum.Base T.V := ⟨GlobalTheory.ArcPointDescent.admissibleBase_maximalIdeal_completeDVR T.cdvr, inferInstance⟩
  have hξT : spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x = spMap ψ ≫ (spMap j ≫ Y.Z.fromSpecStalk x) := by
    rw [spMap_comp, Category.assoc]
  have hid : spMap (RingHom.id T.V) = 𝟙 _ := by
    simp [spMap]
  obtain ⟨tW, mW, PW, e, he⟩ := GlobalTheory.UPoinc.TraitPull.exists_pull_unif E H Dw l Xo c T T.V hTV inferInstance (RingHom.id T.V)
    (fun _ _ h => h) inferInstance
  obtain ⟨βT, hβT, hLT, hactT⟩ := hT T _ hTy
  have hβ' : IsGrpPullback tW.G out.G (spMap ψ ≫ (spMap j ≫ Y.Z.fromSpecStalk x)) (mW.φ ≫ βT) :=
    (mW.cart.comp hβT).congr (by rw [hid, Category.id_comp, hξT]) rfl
  have w : (mW.φ ≫ βT) ≫ out.G.hom = (tW.G.hom ≫ spMap ψ) ≫ (spMap j ≫ Y.Z.fromSpecStalk x) := by
    rw [hβ'.1.w, Category.assoc]
  let β : tW.G.left ⟶ G.left := hgm.1.lift (mW.φ ≫ βT) (tW.G.hom ≫ spMap ψ) w
  have hβgm : β ≫ gm = mW.φ ≫ βT := hgm.1.lift_fst _ _ _
  have hβG : β ≫ G.hom = tW.G.hom ≫ spMap ψ := hgm.1.lift_snd _ _ _
  have hβ : IsGrpPullback tW.G G (spMap ψ) β := hgm.cancel (by rw [hβgm]; exact hβ') hβG
  have hLBW : LBIso PW.U.LG.L (U.LG.L.pull β) := by
    rw [PW.bundle]
    exact LBIso.trans tW.PP.isLB (LB.isLB_pull out.L.isLB _) (LB.isLB_pull U.LG.isLB _)
      (LBIso.trans tW.PP.isLB (LB.isLB_pull T.t.PP.isLB _) (LB.isLB_pull out.L.isLB _)
        (GlobalTheory.LN.GenericPoint.lbIso_of_sabMap mW) (GlobalTheory.LN.GenericPoint.lbIso_pull hLT mW.φ rfl))
      (GlobalTheory.LN.GenericPoint.lbIso_pull hLB β hβgm.symm).symm

  have hab : ∀ z, (spMap j ≫ Y.Z.fromSpecStalk x) z ∈ abLocus out.G ↔ z ∈ abLocus G :=
    abLocus_pullback abLocusOne out.semi hgm.1
  have hTy' : jK T.V ≫ (spMap ψ ≫ (spMap j ≫ Y.Z.fromSpecStalk x)) ≫ r = T.y ≫ C.i := by
    rw [← hξT]; exact hTy
  have hgen : spMap ψ (genericPoint (Sp T.V)) ∈
      (⟨abLocus G, GlobalTheory.AbLocusOpen.isOpen_abLocus_local G hG⟩ : (Sp R).Opens) := by
    show _ ∈ abLocus G
    rw [← hab]
    apply habl
    let pt : Sp (FractionRing T.V) := ⟨⊥, Ideal.isPrime_bot⟩
    have hpt : jK T.V pt = genericPoint (Sp T.V) := by
      rw [genericPoint_eq_bot_of_affine]
      refine PrimeSpectrum.ext (Ideal.ext fun s => ?_)
      change algebraMap T.V (FractionRing T.V) s ∈ (⊥ : Ideal (FractionRing T.V)) ↔ s ∈ (⊥ : Ideal T.V)
      rw [Ideal.mem_bot, Ideal.mem_bot, IsFractionRing.to_map_eq_zero_iff]
    rw [← hpt]
    exact ⟨T.y pt, (congrArg (fun g : Sp (FractionRing T.V) ⟶ C.Z => g pt) hTy').symm⟩

  have hPsi' : ∀ y, PsiUnitOn D.toPre y (⟨abLocus G, GlobalTheory.AbLocusOpen.isOpen_abLocus_local G hG⟩ : (Sp R).Opens) := by
    intro y
    have hs : (⇑(spMap j ≫ Y.Z.fromSpecStalk x) ⁻¹' abLocus out.G) = abLocus G := Set.ext hab
    have := hPsi y
    rw [hs] at this
    exact this

  let bc : tW.G ≅ (Over.pullback (specOf ψ)).obj G :=
    Over.isoMk hβ.1.isoPullback (by simp)
  have hbcβ : β = bc.hom.left ≫ pullback.fst G.hom (specOf ψ) := by
    simp [bc]
  have hbc : IsMonHom bc.hom := GlobalTheory.Mum.isMonHom_of_isGrpPullback_fst bc (hβ.congr rfl hbcβ)
  obtain ⟨D₂, A₂, hD, U₂, hU⟩ := GlobalTheory.Mum.unif_baseChange_of_psiUnitOn R hR D A G hG U T.V hTV.1 ψ hψ _ hPsi' hgen tW.G bc hbc
  obtain ⟨hL₁, hC₁, hE₁⟩ := PullUnif.main R hR G hG D A U T.V hTV tW.G tW.semi D₂ A₂ U₂ ψ β hψ bc hbc hbcβ hD hU

  have hid' : IsGrpPullback tW.G tW.G (spMap (RingHom.id T.V)) (𝟙 tW.G.left) :=
    _root_.GlobalTheory.LN.Cmp.grpPullback_id tW.G hid
  obtain ⟨ρ, hρ⟩ := GlobalTheory.SpreadTrait.exists_spread T.V hTV tW.G tW.semi D₂ A₂ U₂ T.V hTV tW.G tW.semi PW.D PW.A PW.U
    (RingHom.id T.V) (𝟙 _) hid'
  have hρs := GlobalTheory.TorusOntoSpread.restrict_surjective T.V hTV tW.G tW.semi D₂ A₂ U₂ T.V hTV tW.G tW.semi PW.D PW.A
    PW.U (RingHom.id T.V) (𝟙 _) hid' ρ hρ
  have hρT := GlobalTheory.SpreadTorMatch.torMatch_of_spread T.V hTV tW.G tW.semi D₂ A₂ U₂ T.V hTV tW.G tW.semi PW.D PW.A
    PW.U (RingHom.id T.V) (𝟙 _) hid' ρ hρ
  obtain ⟨ρ', hρ'⟩ := GlobalTheory.SpreadTrait.exists_spread T.V hTV tW.G tW.semi PW.D PW.A PW.U T.V hTV tW.G tW.semi D₂ A₂ U₂
    (RingHom.id T.V) (𝟙 _) hid'
  have hρ's := GlobalTheory.TorusOntoSpread.restrict_surjective T.V hTV tW.G tW.semi PW.D PW.A PW.U T.V hTV tW.G tW.semi D₂ A₂
    U₂ (RingHom.id T.V) (𝟙 _) hid' ρ' hρ'
  have hL₂ : LBIso PW.U.LG.L (U₂.LG.L.pull (𝟙 _)) :=
    LBIso.trans PW.U.LG.isLB (LB.isLB_pull U.LG.isLB _) (LB.isLB_pull U₂.LG.isLB _) hLBW
      (GlobalTheory.GenSpread.lbIso_pull_of_lbIso hL₁ (𝟙 _) (Category.id_comp β).symm).symm
  have hC₂ := TorCoord.coordMap_of_torMatch T.V hTV tW.G tW.semi D₂ A₂ U₂ T.V hTV inferInstance tW.G tW.semi PW.D PW.A
    PW.U (RingHom.id _) (𝟙 _) (fun _ _ h => h) hid' hL₂ ρ hρT
  have hE₂ := equivMap_of_torMatch T.V hTV tW.G tW.semi D₂ A₂ U₂ T.V hTV tW.G tW.semi PW.D PW.A PW.U (RingHom.id _)
    (𝟙 _) (fun _ _ h => h) ρ hρT
  obtain ⟨-, -, -, -, n, ⟨eZ⟩⟩ := GlobalTheory.UPoinc.UTrait.balanced_posDef_lattice E H Dw l Xo c T
  haveI : Module.Finite ℤ T.P.D.toPre.X := Module.Finite.equiv eZ.symm
  haveI : Module.Finite ℤ PW.D.toPre.X := Module.Finite.equiv e.toAddEquiv.toIntLinearEquiv.symm
  have hρ'i : Function.Injective ρ' := by
    have h := OrzechProperty.injective_of_surjective_endomorphism (ρ.comp ρ').toIntLinearMap (hρs.comp hρ's)
    exact Function.Injective.of_comp (f := ⇑ρ) (g := ⇑ρ') h
  haveI : Module.Finite ℤ D₂.toPre.X := Module.Finite.of_surjective ρ'.toIntLinearMap hρ's
  have hρi : Function.Injective ρ := by
    have h := OrzechProperty.injective_of_surjective_endomorphism (ρ'.comp ρ).toIntLinearMap (hρ's.comp hρs)
    exact Function.Injective.of_comp (f := ⇑ρ') (g := ⇑ρ) h
  let ρE : D₂.toPre.X ≃+ PW.D.toPre.X := AddEquiv.ofBijective ρ ⟨hρi, hρs⟩
  refine ⟨(hD.xe.symm.trans ρE).trans e.toAddEquiv, ?_, ?_⟩
  · intro y s hs
    obtain ⟨r₂, hr₂⟩ := GlobalTheory.BetaAdd.exists_coord D₂ (hD.xe.symm y)
    obtain ⟨h0, r', hr', hass⟩ := he (ρ (hD.xe.symm y))
    refine ⟨h0, ?_⟩
    have h1 : Associated (ψ s) r' := (hC₁ y s r₂ hs hr₂).trans (hC₂ _ r₂ r' hr₂ hr' : Associated r₂ r')
    exact (h1.pow_pow (n := 2)).trans hass
  · intro a y
    obtain ⟨fR, hfRmon, hfRgm, hfRchar⟩ := hm a
    have hcompat : (tW.act.act a).left ≫ β = β ≫ fR.left := by
      apply hgm.1.hom_ext
      · calc ((tW.act.act a).left ≫ β) ≫ gm = (tW.act.act a).left ≫ mW.φ ≫ βT := by rw [Category.assoc, hβgm]
          _ = mW.φ ≫ (T.t.act.act a).left ≫ βT := by rw [← Category.assoc, mW.act a, Category.assoc]
          _ = mW.φ ≫ βT ≫ (f a).left := by rw [hactT a]
          _ = (β ≫ fR.left) ≫ gm := by rw [Category.assoc, hfRgm, reassoc_of% hβgm]
      · rw [Category.assoc, hβG, Category.assoc, Over.w fR, hβG, ← Category.assoc, Over.w (tW.act.act a)]
    obtain ⟨m₂, hm₂⟩ := endChar_exists_of_isMonHom T.V hTV tW.G tW.semi D₂ A₂ U₂ (tW.act.act a) (tW.act.hom a)
    have h1 := hE₁ fR (tW.act.act a) hfRmon (tW.act.hom a) hcompat (m a) m₂ hfRchar hm₂ y
    have h2 := hE₂ (tW.act.act a) (tW.act.act a) (tW.act.hom a) (tW.act.hom a) (by simp) m₂ _ hm₂
      (GlobalTheory.UPoinc.endChar_act E H T.V hTV tW PW a) (hD.xe.symm y)
    show e (ρ (hD.xe.symm (m a y))) = H.bar a • e (ρ (hD.xe.symm y))
    have h1' : hD.xe.symm (m a y) = m₂ (hD.xe.symm y) := h1
    rw [h1', h2]
    exact e.map_smul _ _

end GlobalTheory.UPoinc.TraitCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitLatticeEquivCompletedLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibre", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCommonBaseChangePolarizedAbelianSchemeOfGe\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsSchemeTheoreticallyDominantSpecOfInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.UPoinc

theorem iso_of_common_generic_fibre : ∀ (O : Type) [CommRing O] [IsDomain O] [IsLocalRing O] [IsNoetherianRing O] [IsIntegrallyClosed O] (A G : Over (Sp O)) [GrpObj A] [GrpObj G] [IsCommMonObj G], IsAbelianScheme A → IsSemiAbelian G → ∀ (K : Type) [Field K] [Algebra O K] [IsFractionRing O K] (B : Over (Sp K)) [GrpObj B] (a : B.left ⟶ A.left) (g : B.left ⟶ G.left), IsGrpPullback B A (spMap (algebraMap O K)) a → IsGrpPullback B G (spMap (algebraMap O K)) g → ∃ i : A ≅ G, IsMonHom i.hom ∧ a ≫ i.hom.left = g ∧ (∀ (L : LB A.left) (L' : LB G.left), L.IsLB → L'.IsLB → LBIso (L.pull a) (L'.pull g) → LBIso L (L'.pull i.hom.left)) ∧ ∀ (e : A ⟶ A) (f : G ⟶ G) (eB : B ⟶ B), eB.left ≫ a = a ≫ e.left → eB.left ≫ g = g ≫ f.left → e ≫ i.hom = i.hom ≫ f := by
  intro O _ _ _ _ _ A G _ _ _ hA hG K _ _ _ B _ a g ha hg
  have hS := GlobalTheory.Published.SemiAbelianHomExtension.isNormalScheme_spec O
  have hj := GlobalTheory.IsGenericPointHom.fractionField O K
  have hA' := GlobalTheory.isSemiAbelian_of_isAbelianScheme A hA
  obtain ⟨E, ⟨hE, hEa⟩, -⟩ :=
    GlobalTheory.semiAbelianHomExtension_holds.generic_existsUnique_iso_of_extensions hS hj hA' hG ha hg
  obtain ⟨_, _⟩ := hj.quasiCompact_and_dominant
  obtain ⟨_, -⟩ := GlobalTheory.ExtUnique.flat_and_isSeparated_of_isSemiAbelian A hA'
  obtain ⟨-, _⟩ := GlobalTheory.ExtUnique.flat_and_isSeparated_of_isSemiAbelian G hG
  refine ⟨E, hE, hEa, ?_, ?_⟩
  · intro L L' hL hL' h
    refine GlobalTheory.Poinc.Extend.lbIso_of_generic A hA ha.1 hL (pull_isLB hL' _) ?_
    exact LBIso.trans (pull_isLB hL _) (pull_isLB hL' _) (pull_isLB (pull_isLB hL' _) _) h
      (GlobalTheory.GenSpread.lbIso_pull_pull hL' a hEa.symm)
  · intro e f eB he hf
    refine GlobalTheory.ExtUnique.over_hom_ext_of_isPullback ha.1 ?_
    rw [Over.comp_left, Over.comp_left, ← Category.assoc a e.left, ← he, Category.assoc, hEa,
      reassoc_of% hEa]
    exact hf

end GlobalTheory.UPoinc

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibreStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

theorem _root_.GlobalTheory.T.iso_abelianScheme_semiAbelian_of_common_genericFibre : ∀ (O : Type) [CommRing O] [IsDomain O] [IsLocalRing O] [IsNoetherianRing O] [IsIntegrallyClosed O] (A G : Over (Sp O)) [GrpObj A] [GrpObj G] [IsCommMonObj G], IsAbelianScheme A → IsSemiAbelian G → ∀ (K : Type) [Field K] [Algebra O K] [IsFractionRing O K] (B : Over (Sp K)) [GrpObj B] (a : B.left ⟶ A.left) (g : B.left ⟶ G.left), IsGrpPullback B A (spMap (algebraMap O K)) a → IsGrpPullback B G (spMap (algebraMap O K)) g → ∃ i : A ≅ G, IsMonHom i.hom ∧ a ≫ i.hom.left = g ∧ (∀ (L : LB A.left) (L' : LB G.left), L.IsLB → L'.IsLB → LBIso (L.pull a) (L'.pull g) → LBIso L (L'.pull i.hom.left)) ∧ ∀ (e : A ⟶ A) (f : G ⟶ G) (eB : B ⟶ B), eB.left ≫ a = a ≫ e.left → eB.left ≫ g = g ≫ f.left → e ≫ i.hom = i.hom ≫ f := by
  first | exact @GlobalTheory.UPoinc.iso_of_common_generic_fibre
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibreStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianActionEqUniversalAtFieldPointsOfTheta =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianActionEqUniversalAtFieldPointsOfTheta", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyUWit\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsActionPullbackUniversalUnitaryStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoAbelianSchemeSemiAbelianOfCommonGenericFibreStatement\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.UPoinc.ActField

theorem exists_factor_localRing : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] (Y : RatModel o Ω) (K : Type) [Field K]
    (s : Sp K ⟶ Y.Z), ∃ (z : Y.Z) (j : Sp (Y.O z) ⟶ Y.Z) (s' : Sp K ⟶ Sp (Y.O z)),
      spMap (algebraMap (Y.O z) Ω) ≫ j = Y.pt ∧ s' ≫ j = s ∧ j (IsLocalRing.closedPoint (Y.O z)) = z ∧ ∀ w, s w = z := by
  intro o Ω _ _ _ Y K _ s
  have hsz : ∀ w, s w = s (IsLocalRing.closedPoint K) := fun w => by
    rw [Subsingleton.elim w (IsLocalRing.closedPoint K)]
  let z := s (IsLocalRing.closedPoint K)
  let e := Y.stalkEquiv z
  let E : Y.Z.presheaf.stalk z ⟶ CommRingCat.of (Y.O z) := CommRingCat.ofHom e.toRingHom
  let E' : CommRingCat.of (Y.O z) ⟶ Y.Z.presheaf.stalk z := CommRingCat.ofHom e.symm.toRingHom
  have hEE : E ≫ E' = 𝟙 _ := by ext a; exact e.symm_apply_apply a
  refine ⟨z, Spec.map E ≫ Y.Z.fromSpecStalk z, Spec.map (E' ≫ Scheme.stalkClosedPointTo s), ?_, ?_, ?_, hsz⟩
  · have h1 : E ≫ CommRingCat.ofHom (algebraMap (Y.O z) Ω) =
        Y.Z.presheaf.stalkSpecializes (Y.pt_specializes (IsLocalRing.closedPoint Ω) z) ≫
          Scheme.stalkClosedPointTo (R := CommRingCat.of Ω) Y.pt := by
      ext a; rfl
    show Spec.map _ ≫ _ = _
    rw [← Category.assoc, ← Spec.map_comp, h1, Spec.map_comp, Category.assoc, Scheme.SpecMap_stalkSpecializes_fromSpecStalk,
      Scheme.Spec_stalkClosedPointTo_fromSpecStalk]
  · rw [← Category.assoc, ← Spec.map_comp, ← Category.assoc, hEE, Category.id_comp,
      Scheme.Spec_stalkClosedPointTo_fromSpecStalk]
  · haveI : IsLocalHom E.hom := ⟨fun a ha => by
      have h := ha.map e.symm.toRingHom
      have h' : e.symm.toRingHom (E.hom a) = a := e.symm_apply_apply a
      rwa [h'] at h⟩
    change Y.Z.fromSpecStalk z ((Spec.map E) (IsLocalRing.closedPoint (CommRingCat.of (Y.O z)))) = z
    rw [Spec_closedPoint, Scheme.fromSpecStalk_closedPoint]

theorem exists_factor_i : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (O : Type) [CommRing O] [IsLocalRing O] (g : Sp O ⟶ C.Z),
      g (IsLocalRing.closedPoint O) ∈ Set.range C.i → ∃ v : Sp O ⟶ Xo.XF c, g = v ≫ C.i := by
  intro E _ _ _ H Dw l Xo c C O _ _ g hg
  letI := C.b.toAlgebra
  haveI := C.isFractionRing
  haveI := C.ded
  obtain ⟨x, hx⟩ := hg
  obtain ⟨φ, hφ⟩ := Spec.map_surjective (g ≫ C.z)
  have hpt : (Spec.map φ) (IsLocalRing.closedPoint O) =
      (spMap C.b) ((pullback.snd C.z (spMap C.b)) (C.iF x)) := by
    rw [hφ]
    change C.z (g _) = _
    rw [← hx]
    change ((C.iF ≫ pullback.fst C.z (spMap C.b)) ≫ C.z) x = ((C.iF ≫ pullback.snd C.z (spMap C.b)) ≫ spMap C.b) x
    rw [Category.assoc, pullback.condition, Category.assoc]
  have hbot : Ideal.comap φ.hom (IsLocalRing.maximalIdeal O) = ⊥ := by
    have hc := congrArg PrimeSpectrum.asIdeal hpt
    change Ideal.comap φ.hom (IsLocalRing.maximalIdeal O) = Ideal.comap C.b _ at hc
    haveI := ((pullback.snd C.z (spMap C.b)) (C.iF x)).isPrime
    rw [hc, Ideal.eq_bot_of_prime ((pullback.snd C.z (spMap C.b)) (C.iF x)).asIdeal]
    exact Ideal.comap_bot_of_injective _ C.inj
  have hunit : ∀ y : nonZeroDivisors C.o, IsUnit (φ.hom y) := fun y => by
    by_contra hy
    have hm : (y : C.o) ∈ Ideal.comap φ.hom (IsLocalRing.maximalIdeal O) := (IsLocalRing.mem_maximalIdeal _).2 hy
    rw [hbot, Ideal.mem_bot] at hm
    exact nonZeroDivisors.ne_zero y.2 hm
  let ψF : c.F →+* O := IsLocalization.lift (M := nonZeroDivisors C.o) (S := c.F) hunit
  have hψF : ψF.comp C.b = φ.hom := IsLocalization.lift_comp hunit
  have w : g ≫ C.z = Spec.map (CommRingCat.ofHom ψF) ≫ spMap C.b := by
    rw [← hφ]
    show _ = Spec.map _ ≫ Spec.map _
    rw [← Spec.map_comp]
    congr 1
    ext a
    exact (RingHom.congr_fun hψF a).symm
  let g' : Sp O ⟶ pullback C.z (spMap C.b) := pullback.lift g _ w
  have hg'1 : g' ≫ pullback.fst _ _ = g := pullback.lift_fst _ _ _
  haveI : IsPreimmersion (spMap C.b) := IsPreimmersion.of_isLocalization (nonZeroDivisors C.o)
  have hinj : Function.Injective (pullback.fst C.z (spMap C.b)) := (pullback.fst C.z (spMap C.b)).isEmbedding.injective
  have hcl : g' (IsLocalRing.closedPoint O) ∈ Set.range C.iF := ⟨x, hinj (by
    change (C.iF ≫ pullback.fst _ _) x = (g' ≫ pullback.fst _ _) _
    rw [hg'1]; exact hx)⟩
  have hrange : Set.range g' ⊆ Set.range C.iF := by
    haveI := C.iF_open
    rintro _ ⟨p, rfl⟩
    exact ((IsLocalRing.specializes_closedPoint p).map g'.continuous).mem_open C.iF.isOpenEmbedding.isOpen_range hcl
  haveI := C.iF_open
  refine ⟨IsOpenImmersion.lift C.iF g' hrange, ?_⟩
  rw [← Category.assoc, IsOpenImmersion.lift_fac, hg'1]

theorem isNoetherianRing_O : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [IsNoetherianRing o] (Y : RatModel o Ω)
    (z : Y.Z), IsNoetherianRing (Y.O z) := by
  intro o Ω _ _ _ _ Y z
  haveI := Y.lft
  haveI : IsLocallyNoetherian Y.Z := LocallyOfFiniteType.isLocallyNoetherian Y.s
  exact isNoetherianRing_of_ringEquiv _ (Y.stalkEquiv z)



theorem exists_action_field : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (r : Y.Z ⟶ C.Z), X₁.S.Over₀ Y U₀ → Y.pt ≫ r = X₁.uΩ ≫ C.i → ∀ wi : UWit X₁, ∃ (f : 𝓞 E → (out.G ⟶ out.G)) (ψ : wi.G.left ⟶ out.G.left), (∀ a, IsMonHom (f a)) ∧ IsGrpPullback wi.G out.G Y.pt ψ ∧ (∀ (T : Scheme.{0}) (w : T ⟶ wi.G.left), ∃ x' : T ⟶ pullback X₁.ρ.P.A.hom out.u₀, x' ≫ out.φ = w ≫ ψ ∧ x' ≫ pullback.fst _ _ = w ≫ wi.α) ∧ (∀ (a : 𝓞 E) (e : wi.G ⟶ wi.G), e.left ≫ wi.β = wi.β ≫ (Xo.univ.t.act.act a).left → e.left ≫ ψ = ψ ≫ (f a).left) ∧ ∀ (K : Type) [Field K] (s : Sp K ⟶ Y.Z) (y : Sp K ⟶ Xo.XF c), s ≫ r = y ≫ C.i → ∀ (tK : SAB H (Sp K)), Nonempty (SABMap tK Xo.univ.t (y ≫ pullback.fst _ _)) → ∃ γ : tK.G.left ⟶ out.G.left, IsGrpPullback tK.G out.G s γ ∧ LBIso tK.PP.L (out.L.L.pull γ) ∧ ∀ a, (tK.act.act a).left ≫ γ = γ ≫ (f a).left := by
  intro E _ _ _ H Dw l Xo c C X₁ Y U₀ EE out r hO hr wi

  have hrange : Set.range Y.pt ⊆ Set.range U₀.ι := by
    rw [Scheme.Opens.range_ι]
    rintro _ ⟨w, rfl⟩
    exact Y.top_le_preimage_pt hO.ne (x := w) trivial
  let xU : Sp X₁.Ω₁ ⟶ U₀.toScheme := IsOpenImmersion.lift U₀.ι Y.pt hrange
  have hxU : xU ≫ U₀.ι = Y.pt := IsOpenImmersion.lift_fac _ _ _
  have hu₀ : xU ≫ out.u₀ = spMap X₁.S.R.val.toRingHom := out.u₀_gen xU hxU
  have wℓ : wi.α ≫ X₁.ρ.P.A.hom = (wi.G.hom ≫ xU) ≫ out.u₀ := by
    rw [Category.assoc, hu₀]; exact wi.hα.1.w
  let ℓ : wi.G.left ⟶ pullback X₁.ρ.P.A.hom out.u₀ := pullback.lift wi.α (wi.G.hom ≫ xU) wℓ
  have hℓα : ℓ ≫ pullback.fst _ _ = wi.α := pullback.lift_fst _ _ _
  have hℓ : IsGrpPullback wi.G ((Over.pullback out.u₀).obj X₁.ρ.P.A) xU ℓ :=
    (isGrpPullback_pullback X₁.ρ.P.A out.u₀).cancel (wi.hα.congr hu₀.symm hℓα.symm)
      (pullback.lift_snd _ _ _)
  let ψ : wi.G.left ⟶ out.G.left := ℓ ≫ out.φ
  have hψ : IsGrpPullback wi.G out.G Y.pt ψ := (hℓ.comp out.cart).congr hxU rfl

  obtain ⟨f₀, hf₀, -⟩ := GlobalTheory.T.exists_action_pullback_universalUnitary E H Dw l Xo c (Sp X₁.Ω₁) X₁.uΩ wi.G wi.β wi.hβ
  obtain ⟨e, he, heψ⟩ := grpPullback_iso hψ (isGrpPullback_pullback out.G Y.pt)
  haveI := he
  have hf' : ∀ a, IsMonHom (e.inv ≫ f₀ a ≫ e.hom) := fun a => by
    haveI := (hf₀ a).1
    infer_instance
  have hF : ∀ a, ∃ F : out.G ⟶ out.G, IsMonHom F ∧ (Over.pullback Y.pt).map F = e.inv ≫ f₀ a ≫ e.hom :=
    fun a => (out.endo _ (hf' a)).exists
  choose F hFm hFe using hF
  have hmap : ∀ {S' : Scheme.{0}} (q : S' ⟶ Y.Z) (a : 𝓞 E),
      ((Over.pullback q).map (F a)).left ≫ pullback.fst out.G.hom q = pullback.fst out.G.hom q ≫ (F a).left :=
    fun q a => pullback.lift_fst _ _ _
  have hei : e.hom.left ≫ e.inv.left = 𝟙 _ := by rw [← Over.comp_left, e.hom_inv_id, Over.id_left]
  have gen₀ : ∀ a, (f₀ a).left ≫ ψ = ψ ≫ (F a).left := fun a => by
    have key : e.hom.left ≫ ((Over.pullback Y.pt).map (F a)).left = (f₀ a).left ≫ e.hom.left := by
      rw [hFe a, Over.comp_left, Over.comp_left, ← Category.assoc, hei, Category.id_comp]
    calc (f₀ a).left ≫ ψ = ((f₀ a).left ≫ e.hom.left) ≫ pullback.fst _ _ := by rw [← heψ, Category.assoc]
      _ = (e.hom.left ≫ ((Over.pullback Y.pt).map (F a)).left) ≫ pullback.fst _ _ := by rw [key]
      _ = ψ ≫ (F a).left := by rw [Category.assoc, hmap, ← Category.assoc, heψ]
  have uniq : ∀ (a : 𝓞 E) (e' : wi.G ⟶ wi.G), e'.left ≫ wi.β = wi.β ≫ (Xo.univ.t.act.act a).left → e' = f₀ a :=
    fun a e' h => Over.OverMorphism.ext (wi.hβ.1.hom_ext (h.trans (hf₀ a).2.symm) (by rw [Over.w, Over.w]))
  refine ⟨F, ψ, hFm, hψ, fun T w => ⟨w ≫ ℓ, Category.assoc _ _ _, by rw [Category.assoc, hℓα]⟩,
    fun a e' h => (uniq a e' h) ▸ gen₀ a, ?_⟩

  intro K _ s y hsy tK ⟨mm⟩
  haveI : IsNoetherianRing X₁.o₁ := by haveI := X₁.ar.ded; infer_instance
  obtain ⟨z₀, j, s', hj, hs', hjz, hsz⟩ := exists_factor_localRing _ _ Y K s
  haveI := isNoetherianRing_O _ _ Y z₀
  haveI := RatModel.isIntegrallyClosed_O hO.normal z₀
  have hpt : (j ≫ r) (IsLocalRing.closedPoint (Y.O z₀)) = C.i (y (IsLocalRing.closedPoint K)) := by
    change r (j (IsLocalRing.closedPoint (Y.O z₀))) = _
    rw [hjz, ← hsz (IsLocalRing.closedPoint K)]
    change (s ≫ r) _ = (y ≫ C.i) _
    rw [hsy]
  obtain ⟨v, hv⟩ := exists_factor_i E H Dw l Xo c C (Y.O z₀) (j ≫ r) ⟨_, hpt.symm⟩
  haveI := C.isPreimmersion_i
  have hsv : s' ≫ v = y := (cancel_mono C.i).1 (by rw [Category.assoc, ← hv, ← Category.assoc, hs', hsy])
  have hgv : spMap (algebraMap (Y.O z₀) X₁.Ω₁) ≫ v = X₁.uΩ :=
    (cancel_mono C.i).1 (by rw [Category.assoc, ← hv, ← Category.assoc, hj, hr])
  haveI : IsCommMonObj ((Over.pullback j).obj out.G) := Functor.isCommMonObj_obj
  have hAb : IsAbelianScheme ((Over.pullback (v ≫ pullback.fst _ _)).obj Xo.univ.t.G) :=
    by
      have hA : IsAbelianScheme Xo.univ.t.G := (Obj.toPolAV Xo.univ).isAb
      haveI := hA.comm
      haveI := hA.smooth
      haveI := hA.proper
      haveI := hA.geomConnected
      exact ⟨Functor.isCommMonObj_obj,
        by change Smooth (pullback.snd _ _); infer_instance,
        by change IsProper (pullback.snd _ _); infer_instance,
        by change GeometricallyConnected (pullback.snd _ _); infer_instance⟩
  have hSe := IsSemiAbelian.pullback j out.G out.semi
  have wa : wi.β ≫ Xo.univ.t.G.hom = (wi.G.hom ≫ spMap (algebraMap (Y.O z₀) X₁.Ω₁)) ≫ v ≫ pullback.fst _ _ := by
    rw [wi.hβ.1.w, ← hgv]; simp only [Category.assoc]
  let aa := pullback.lift _ _ wa
  have haa : aa ≫ pullback.fst _ _ = wi.β := pullback.lift_fst _ _ _
  have ha : IsGrpPullback wi.G ((Over.pullback (v ≫ pullback.fst _ _)).obj Xo.univ.t.G)
      (spMap (algebraMap (Y.O z₀) X₁.Ω₁)) aa :=
    (isGrpPullback_pullback Xo.univ.t.G _).cancel (wi.hβ.congr (by rw [← hgv, Category.assoc]) haa.symm)
      (pullback.lift_snd _ _ _)
  have wg : ψ ≫ out.G.hom = (wi.G.hom ≫ spMap (algebraMap (Y.O z₀) X₁.Ω₁)) ≫ j := by
    rw [hψ.1.w, Category.assoc, hj]
  let gg := pullback.lift _ _ wg
  have hgg : gg ≫ pullback.fst _ _ = ψ := pullback.lift_fst _ _ _
  have hg : IsGrpPullback wi.G ((Over.pullback j).obj out.G) (spMap (algebraMap (Y.O z₀) X₁.Ω₁)) gg :=
    (isGrpPullback_pullback out.G j).cancel (hψ.congr hj.symm hgg.symm) (pullback.lift_snd _ _ _)
  obtain ⟨i, hi, hai, hLi, hEi⟩ := GlobalTheory.T.iso_abelianScheme_semiAbelian_of_common_genericFibre (Y.O z₀) _ ((Over.pullback j).obj out.G) hAb hSe X₁.Ω₁ wi.G aa gg ha hg
  haveI := hi
  obtain ⟨f₁, hf₁, hT⟩ := GlobalTheory.T.exists_action_pullback_universalUnitary E H Dw l Xo c (Sp (Y.O z₀)) v ((Over.pullback (v ≫ pullback.fst _ _)).obj Xo.univ.t.G) (pullback.fst _ _)
    (isGrpPullback_pullback Xo.univ.t.G (v ≫ pullback.fst _ _))
  have mm' : SABMap tK Xo.univ.t ((s' ≫ v) ≫ pullback.fst _ _) := hsv ▸ mm
  obtain ⟨γ₀, hγ₀, -, hLγ, hactγ⟩ := hT (Sp K) s' tK mm'
  refine ⟨γ₀ ≫ i.hom.left ≫ pullback.fst out.G.hom j, ?_, ?_, ?_⟩
  · exact (hγ₀.comp ((isGrpPullback_of_iso i).comp (isGrpPullback_pullback out.G j))).congr
      (by rw [Category.id_comp, hs']) rfl
  · have hU := Xo.univ.t.PP.isLB
    have hP := X₁.ρ.P.isLB
    have hOL := out.L.isLB
    have sA : LBIso (X₁.ρ.P.L.pull wi.α) (out.L.L.pull ψ) :=
      GenSpread.lbIso_pull_comp ℓ hℓα.symm rfl (LBIso.symm ⟨out.w, out.w_gen⟩)
    have sB : LBIso (Xo.univ.t.PP.L.pull wi.β) (out.L.L.pull ψ) :=
      LBIso.trans (pull_isLB hU _) (pull_isLB hP _) (pull_isLB hOL _) wi.hL.symm sA
    have sC : LBIso ((Xo.univ.t.PP.L.pull (pullback.fst _ _)).pull aa)
        ((out.L.L.pull (pullback.fst out.G.hom j)).pull gg) :=
      LBIso.trans (pull_isLB (pull_isLB hU _) _) (pull_isLB hU _) (pull_isLB (pull_isLB hOL _) _)
        (GenSpread.lbIso_pull_pull hU aa haa.symm).symm
        (LBIso.trans (pull_isLB hU _) (pull_isLB hOL _) (pull_isLB (pull_isLB hOL _) _) sB
          (GenSpread.lbIso_pull_pull hOL gg hgg.symm))
    have sD := hLi _ _ (pull_isLB hU _) (pull_isLB hOL _) sC
    exact LBIso.trans tK.PP.isLB (pull_isLB (pull_isLB hU _) _) (pull_isLB hOL _) hLγ
      (LBIso.trans (pull_isLB (pull_isLB hU _) _) (pull_isLB (pull_isLB (pull_isLB hOL _) _) _) (pull_isLB hOL _)
        (GenSpread.lbIso_pullback sD γ₀)
        (LBIso.trans (pull_isLB (pull_isLB (pull_isLB hOL _) _) _) (pull_isLB (pull_isLB hOL _) _) (pull_isLB hOL _)
          (GenSpread.lbIso_pull_pull (pull_isLB hOL _) γ₀ rfl).symm
          (GenSpread.lbIso_pull_pull hOL (γ₀ ≫ i.hom.left) (Category.assoc _ _ _).symm).symm))
  · intro a
    have h1 : (f₀ a).left ≫ aa = aa ≫ (f₁ a).left := by
      apply pullback.hom_ext
      · rw [Category.assoc, haa, Category.assoc, (hf₁ a).2, ← Category.assoc, haa, (hf₀ a).2]
      · have w1 := Over.w (f₁ a)
        have w0 := Over.w (f₀ a)
        erw [Category.assoc, pullback.lift_snd, Category.assoc, w1, pullback.lift_snd, ← Category.assoc, w0]
    have h2 : (f₀ a).left ≫ gg = gg ≫ ((Over.pullback j).map (F a)).left := by
      apply pullback.hom_ext
      · rw [Category.assoc, Category.assoc, hmap, hgg, ← Category.assoc gg, hgg, gen₀]
      · have w1 := Over.w ((Over.pullback j).map (F a))
        have w0 := Over.w (f₀ a)
        erw [Category.assoc, pullback.lift_snd, Category.assoc, w1, pullback.lift_snd, ← Category.assoc, w0]
    have h3 := congrArg Over.Hom.left (hEi (f₁ a) ((Over.pullback j).map (F a)) (f₀ a) h1 h2)
    rw [Over.comp_left, Over.comp_left] at h3
    rw [← Category.assoc, hactγ a]
    simp only [Category.assoc]
    rw [← Category.assoc (f₁ a).left, h3, Category.assoc, hmap]

end GlobalTheory.UPoinc.ActField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianActionEqUniversalAtFieldPointsOfTheta =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegerActionSemiAbelianAlongTraitsOverModuli =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegerActionSemiAbelianAlongTraitsOverModuli", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGrpPullbackCompleteDVROfGenericCompatStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoOfGenericSemiAbelianCompleteDVRStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianActionEqUniversalAtFieldPointsOfTheta\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ModuliFiniteSurjectiveOverGenericFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyUWit\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

namespace GlobalTheory.UPoinc

private theorem fieldPt_lift_preimm {X' X : Scheme.{0}} (j : X' ⟶ X) [IsPreimmersion j] {K : Type} [Field K]
    (y : Sp K ⟶ X) (ξ : X') (h : y (IsLocalRing.closedPoint K) = j ξ) : ∃ z : Sp K ⟶ X', z ≫ j = y := by
  obtain ⟨⟨p, φ⟩, hy⟩ := (Scheme.SpecToEquivOfField K X).symm.surjective y
  have hp : p = j ξ := by
    rw [← h, ← hy]
    exact (X.fromSpecResidueField_apply p _).symm
  subst hp
  have : IsIso (j.residueFieldMap ξ) := by
    refine (ConcreteCategory.isIso_iff_bijective _).2 ⟨(j.residueFieldMap ξ).hom.injective, fun a => ?_⟩
    obtain ⟨a, rfl⟩ := X'.residue_surjective ξ a
    obtain ⟨b, rfl⟩ := j.stalkMap_surjective ξ a
    exact ⟨X.residue _ b, congr($(Scheme.residue_residueFieldMap j ξ).hom b)⟩
  refine ⟨Spec.map (inv (j.residueFieldMap ξ) ≫ φ) ≫ X'.fromSpecResidueField ξ, ?_⟩
  rw [← hy, Scheme.SpecToEquivOfField_symm_apply, Category.assoc,
    ← Scheme.Hom.SpecMap_residueFieldMap_fromSpecResidueField, ← Category.assoc, ← Spec.map_comp,
    IsIso.hom_inv_id_assoc]

theorem oAct_along_traits_of_over : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (r : Y.Z ⟶ C.Z), X₁.S.Over₀ Y U₀ → Y.pt ≫ r = X₁.uΩ ≫ C.i → ∃ f : 𝓞 E → (out.G ⟶ out.G), (∀ a, IsMonHom (f a)) ∧ (∀ z : Y.Z, r z ∈ Set.range C.i → z ∈ abLocus out.G) ∧ (∀ (T : UTrait Xo c) (ξ : Sp T.V ⟶ Y.Z), jK T.V ≫ ξ ≫ r = T.y ≫ C.i → ∃ β : T.t.G.left ⟶ out.G.left, IsGrpPullback T.t.G out.G ξ β ∧ LBIso T.t.PP.L (out.L.L.pull β) ∧ ∀ a, (T.t.act.act a).left ≫ β = β ≫ (f a).left) := by
  intro E _ _ _ H Dw l Xo c C X₁ Y U₀ EE out r hO hpt
  obtain ⟨wi⟩ := nonempty_uWit X₁
  obtain ⟨f, ψ, hfm, -, -, -, H0⟩ := _root_.GlobalTheory.UPoinc.ActField.exists_action_field E H Dw l Xo c C X₁ Y U₀ EE out r hO hpt wi
  refine ⟨f, hfm, ?_, ?_⟩
  · rintro z ⟨x, hx⟩ K _ _ t ⟨p, hp⟩
    haveI := C.isPreimmersion_i
    obtain ⟨y, hy⟩ := fieldPt_lift_preimm C.i (t ≫ r) x (by
      have e : (t ≫ r) (IsLocalRing.closedPoint K) = r (t p) := by
        rw [Subsingleton.elim (α := PrimeSpectrum K) (IsLocalRing.closedPoint K) p]
        exact Scheme.Hom.comp_apply _ _ _
      rw [e, hp, hx])
    obtain ⟨tK, ⟨m⟩⟩ := GlobalTheory.ModFam.exists_sabPull (y ≫ pullback.fst _ _) Xo.univ.t
    obtain ⟨γ, hγ, -, -⟩ := H0 K t y hy.symm tK ⟨m⟩
    haveI : IsProper Xo.univ.t.G.hom := Xo.univ.proper
    haveI : IsProper tK.G.hom := MorphismProperty.of_isPullback m.cart.1 inferInstance
    rw [← hγ.1.isoPullback_inv_snd]
    infer_instance
  · intro T ξ hξ
    obtain ⟨tK, ⟨m₁⟩, ⟨m₂⟩⟩ := T.gen
    obtain ⟨γ, hγ, hγL, hγa⟩ := H0 (FractionRing T.V) (jK T.V ≫ ξ) T.y (by rw [Category.assoc]; exact hξ) tK ⟨m₂⟩
    obtain ⟨β, hβ, hφβ, hβa⟩ := _root_.GlobalTheory.UPoinc.exists_grpPullback_of_generic_compat T.V T.cdvr T.t.G T.t.semi Y.Z out.G out.semi ξ tK.G m₁.φ γ m₁.cart hγ
    refine ⟨β, hβ, ?_, fun a => hβa (T.t.act.act a) (f a) (tK.act.act a) (m₁.act a) (hγa a)⟩
    have h₁ : LBIso tK.PP.L (T.t.PP.L.pull m₁.φ) := by
      obtain ⟨w, hw, -⟩ := m₁.lin
      exact ⟨w, hw⟩
    have hL := out.L.isLB
    refine _root_.GlobalTheory.lbIso_of_generic_semiAbelian_cdvr T.V T.cdvr T.t.G T.t.semi tK.G m₁.φ m₁.cart _ _ T.t.PP.isLB (pull_isLB hL β) ?_
    exact LBIso.trans (pull_isLB T.t.PP.isLB _) tK.PP.isLB (pull_isLB (pull_isLB hL β) _) (LBIso.symm h₁)
      (LBIso.trans tK.PP.isLB (pull_isLB hL γ) (pull_isLB (pull_isLB hL β) _) hγL
        (GenSpread.lbIso_pull_pull hL m₁.φ hφβ.symm))

end GlobalTheory.UPoinc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegerActionSemiAbelianAlongTraitsOverModuli =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompletionUnif =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompletionUnif", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.NormNatCastPadicAlgClOfCoprime\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharExistsOfIsMonHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EssFiniteTypeIntStalk\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsActionPullbackUniversalUnitary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitLatticeEquivCompletedLocalRing\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegerActionSemiAbelianAlongTraitsOverModuli\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.LocalRing\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.UPoinc.GPeriods

theorem exists_completion_unif {o' Ω : Type} [CommRing o'] [Field Ω] [Algebra o' Ω] [hA : ArithBase o' Ω]
    {S : ThetaSys o' Ω} {ρ : S.Real} {M : RatModel o' Ω} {U₀ : M.Z.Opens} {EE : M.Lat S.J} (FinalForm : ZHOut ρ M U₀ EE)
    (hO : S.Over₀ M U₀) (x : M.Z) :
    ∃ (R : Type) (_ : CommRing R) (_ : IsDomain R) (_ : IsLocalRing R) (j : M.Z.presheaf.stalk x →+* R)
      (G : Over (Sp R)) (_ : GrpObj G) (_ : IsCommMonObj G) (gm : G.left ⟶ FinalForm.G.left) (D : DegData R (maximalIdeal R))
      (A : PolAV (Sp (FractionRing R))) (U : Unif (maximalIdeal R) D A G), GlobalTheory.Mum.Base R ∧ IsCpl j ∧ IsSemiAbelian G ∧
      IsGrpPullback G FinalForm.G (spMap j ≫ M.Z.fromSpecStalk x) gm ∧ LBIso U.LG.L (FinalForm.L.L.pull gm) ∧
      ∀ y, PsiUnitOn D.toPre y ((spMap j ≫ M.Z.fromSpecStalk x) ⁻¹' abLocus FinalForm.G) := by
  have hinjΩ := M.stalkHom_injective x
  haveI : IsDomain (M.Z.presheaf.stalk x) := hinjΩ.isDomain
  haveI : CharZero Ω := hA.char
  haveI : CharZero (M.Z.presheaf.stalk x) := (RingHom.charZero_iff hinjΩ).2 inferInstance
  haveI : IsIntegrallyClosed (M.Z.presheaf.stalk x) := (hO.normal x).2
  haveI : Algebra.EssFiniteType ℤ (M.Z.presheaf.stalk x) := GlobalTheory.Poinc.CompletedStalk.essFiniteType_int_stalk M x
  haveI : IsNoetherianRing (M.Z.presheaf.stalk x) := Algebra.EssFiniteType.isNoetherianRing ℤ _
  have fg : (maximalIdeal (M.Z.presheaf.stalk x)).FG := IsNoetherian.noetherian _
  haveI hloc : IsLocalRing (AdicCompletion (maximalIdeal (M.Z.presheaf.stalk x)) (M.Z.presheaf.stalk x)) :=
    AdicCompletion.isLocalRing_of_fg fg
  obtain ⟨hRd, hRi⟩ := GlobalTheory.AnalyticNormality.completion_isDomain_and_isIntegrallyClosed (M.Z.presheaf.stalk x)
  haveI hRn : IsNoetherianRing (AdicCompletion (maximalIdeal (M.Z.presheaf.stalk x)) (M.Z.presheaf.stalk x)) :=
    GlobalTheory.AdicNoeth.isNoetherianRing_adicCompletion _ _
  have hm := AdicCompletion.maximalIdeal_eq_map_of_fg fg
  set R := AdicCompletion (maximalIdeal (M.Z.presheaf.stalk x)) (M.Z.presheaf.stalk x) with hR
  set φ := algebraMap (M.Z.presheaf.stalk x) R with hφ
  have hcpl : IsAdicComplete (maximalIdeal R) R := by
    rw [hm]
    exact AdicCompletion.isAdicComplete_self _ fg
  have hinj : Function.Injective φ := AdicCompletion.of_injective _ _
  haveI : CharZero R := (RingHom.charZero_iff hinj).1 inferInstance
  set ξ : Sp R ⟶ M.Z := spMap φ ≫ M.Z.fromSpecStalk x with hξ
  have hne : (ξ ⁻¹' abLocus FinalForm.G).Nonempty := by
    let w : Sp R := (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum R)
    let p : Sp (M.Z.presheaf.stalk x) := spMap φ w
    have hp : p.asIdeal = ⊥ := by
      show Ideal.comap φ ⊥ = ⊥
      rw [← RingHom.ker_eq_comap_bot]
      exact (RingHom.injective_iff_ker_eq_bot φ).1 hinj
    have hgen : genericPoint M.Z ∈ Set.range (M.Z.fromSpecStalk x) := by
      rw [Scheme.range_fromSpecStalk]
      exact genericPoint_specializes x
    obtain ⟨q, hq⟩ := hgen
    have hpq : p ⤳ q := (PrimeSpectrum.le_iff_specializes p q).1 (by
      show p.asIdeal ≤ q.asIdeal
      rw [hp]
      exact bot_le)
    have hsp : ξ w ⤳ genericPoint M.Z := by
      have := hpq.map (M.Z.fromSpecStalk x).continuous
      rw [hq] at this
      exact this
    refine ⟨w, ?_⟩
    show ξ w ∈ abLocus FinalForm.G
    rw [FinalForm.ab]
    exact le_bot_iff.1 ((S.TT_anti M hsp).trans (ThetaSys.TT_genericPoint S M).le)
  haveI : IsCommMonObj ((Over.pullback ξ).obj FinalForm.G) := Functor.isCommMonObj_obj
  obtain ⟨D, A, U, hL, hP⟩ := FinalForm.unif R hRn hRi hcpl ξ hne
  exact ⟨R, inferInstance, hRd, hloc, φ, (Over.pullback ξ).obj FinalForm.G, inferInstance, inferInstance,
    pullback.fst _ _, D, A, U, ⟨⟨hRn, hRd, hRi, hcpl⟩, inferInstance⟩, isCpl_self _, IsSemiAbelian.pullback ξ FinalForm.G FinalForm.semi,
    isGrpPullback_pullback _ _, hL, hP⟩

end GlobalTheory.UPoinc.GPeriods

theorem GlobalTheory.UPoinc.GPeriods.main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (r : Y.Z ⟶ C.Z), X₁.S.Over₀ Y U₀ → Y.pt ≫ r = X₁.uΩ ≫ C.i → ∀ x : Y.Z, ∃ (R : Type) (_ : CommRing R) (_ : IsDomain R) (_ : IsLocalRing R) (j : Y.Z.presheaf.stalk x →+* R) (Λ : Type) (_ : AddCommGroup Λ) (_ : Module (𝓞 E) Λ) (p : Λ → R), GlobalTheory.Mum.Base R ∧ IsCpl j ∧ ∀ (T : UTrait Xo c) (ψ : R →+* T.V), IsLocalHom ψ → jK T.V ≫ (spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x) ≫ r = T.y ≫ C.i → ∃ e : Λ ≃ₗ[𝓞 E] T.P.D.toPre.X, ∀ y, ∃ k : ℕ, (k : ℤ) = T.be (e y) (e y) ∧ Associated (ψ (p y)) (T.ϖ ^ k) := by
  intro E _ _ _ H Dw l Xo c C X₁ Y U₀ EE out r hO hpt x
  obtain ⟨f, hf, hab, hβ⟩ := _root_.GlobalTheory.UPoinc.oAct_along_traits_of_over E H Dw l Xo c C X₁ Y U₀ EE out r hO hpt
  obtain ⟨R, _, _, _, j, G, _, _, gm, D, A, U, hB, hC, hS, hG, hL, hP⟩ :=
    GlobalTheory.UPoinc.GPeriods.exists_completion_unif out hO x
  have hm : ∀ a : 𝓞 E, ∃ m : D.toPre.X →+ D.toPre.X, ∃ fR : G ⟶ G, IsMonHom fR ∧ fR.left ≫ gm = gm ≫ (f a).left ∧
      EndChar U fR m := by
    intro a
    haveI := hf a
    obtain ⟨fR, hfR, e⟩ := GlobalTheory.PullAction.exists_lift_end hG (f a)
    obtain ⟨m, hm⟩ := GlobalTheory.Poinc.Eq8.endChar_exists_of_isMonHom R hB G hS D A U fR hfR
    exact ⟨m, fR, hfR, e, hm⟩
  choose m hm using hm
  have key := fun (T : UTrait Xo c) (ψ : R →+* T.V) (hψ : IsLocalHom ψ) hc =>
    _root_.GlobalTheory.UPoinc.TraitCompare.exists_trait_lattice_equiv E H Dw l Xo c C X₁ Y U₀ EE out r hO hpt f hf hab hβ x R j hB hC G gm hS hG D A U hL hP m hm T ψ hψ hc
  haveI : CharZero R := hB.2
  have hco : ∀ y : D.toPre.X, ∃ s, PsiCoord D.toPre y s := fun y =>
    ((GlobalTheory.PsiCoordLocal.main R D hB.1.2.2.1 y).1).imp fun _ h => h.1
  choose s hs using hco
  by_cases hex : ∃ (T : UTrait Xo c) (ψ : R →+* T.V), IsLocalHom ψ ∧
      jK T.V ≫ (spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x) ≫ r = T.y ≫ C.i
  · obtain ⟨T₀, ψ₀, hψ₀, hc₀⟩ := hex
    obtain ⟨ρ₀, -, hρ₀⟩ := key T₀ ψ₀ hψ₀ hc₀
    refine ⟨R, inferInstance, inferInstance, inferInstance, j, T₀.P.D.toPre.X, inferInstance, inferInstance,
      fun y => s (ρ₀.symm y) ^ 2, hB, hC, ?_⟩
    intro T ψ hψ hc
    obtain ⟨ρT, hord, heq⟩ := key T ψ hψ hc
    have hsymm : ∀ (a : 𝓞 E) (v : T₀.P.D.toPre.X), ρ₀.symm (H.bar a • v) = m a (ρ₀.symm v) := fun a v => by
      apply ρ₀.injective
      rw [AddEquiv.apply_symm_apply, hρ₀, AddEquiv.apply_symm_apply]
    let e₀ : T₀.P.D.toPre.X ≃+ T.P.D.toPre.X := ρ₀.symm.trans ρT
    have hlin : ∀ (a : 𝓞 E) (v : T₀.P.D.toPre.X), e₀ (a • v) = a • e₀ v := fun a v => by
      obtain ⟨b, rfl⟩ := H.bar.surjective a
      show ρT (ρ₀.symm (H.bar b • v)) = H.bar b • ρT (ρ₀.symm v)
      rw [hsymm, heq]
    refine ⟨{ e₀ with map_smul' := hlin }, fun y => ?_⟩
    obtain ⟨h0, hA⟩ := hord (ρ₀.symm y) (s (ρ₀.symm y)) (hs _)
    refine ⟨(T.be (ρT (ρ₀.symm y)) (ρT (ρ₀.symm y))).toNat, Int.toNat_of_nonneg h0, ?_⟩
    rw [map_pow]
    exact hA
  · refine ⟨R, inferInstance, inferInstance, inferInstance, j, PUnit, inferInstance, inferInstance, fun _ => 0, hB, hC,
      fun T ψ hψ hc => (hex ⟨T, ψ, hψ, hc⟩).elim⟩

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompletionUnif =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryLocalPeriodsThetaModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryLocalPeriodsThetaModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompletionUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc
open GlobalTheory
open Classical

theorem GlobalTheory.UPoinc.UPeriods.main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H), 1 ≤ Dw.p + Dw.q → ∀ (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (πY : Y.Z ⟶ X₁.M.Z), X₁.S.admitted Y U₀ → X₁.S.IsEE Y U₀ EE → X₁.M.IsHom Y (AlgHom.id X₁.o₁ X₁.Ω₁) πY → ∀ x : Y.Z, ∃ (R : Type) (_ : CommRing R) (_ : IsDomain R) (_ : IsLocalRing R) (j : Y.Z.presheaf.stalk x →+* R) (Λ : Type) (_ : AddCommGroup Λ) (_ : Module (𝓞 E) Λ) (p : Λ → R) (c₀ : ℕ), IsNoetherianRing R ∧ CharZero R ∧ GlobalTheory.Poinc.Eq8.IsCpl j ∧ 1 ≤ c₀ ∧ ∀ (T : UTrait Xo c) (ψ : R →+* T.V), IsLocalHom ψ → T.y ≫ C.i = jK T.V ≫ (spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x) ≫ πY ≫ X₁.π → ∃ e : Λ ≃ₗ[𝓞 E] T.P.D.toPre.X, ∀ a, ∃ k : ℕ, (k : ℤ) = c₀ * T.be (e a) (e a) ∧ Associated (ψ (p a)) (T.ϖ ^ k) := by
  intro E _ _ _ H Dw _ l Xo c C X₁ Y U₀ EE out πY hAdm _ hHom x
  have hpt : Y.pt ≫ πY ≫ X₁.π = X₁.uΩ ≫ C.i := by
    have h1 : Y.pt ≫ πY = X₁.M.pt := by
      have := hHom
      unfold RatModel.IsHom at this
      rw [this]
      show Spec.map (CommRingCat.ofHom (RingHom.id X₁.Ω₁)) ≫ _ = _
      rw [CommRingCat.ofHom_id, Spec.map_id, Category.id_comp]
    rw [← Category.assoc, h1, X₁.comp]
    exact (Category.assoc _ _ _).symm
  obtain ⟨R, i1, i2, i3, j, Λ, i4, i5, p, hB, hC, h⟩ :=
    GlobalTheory.UPoinc.GPeriods.main E H Dw l Xo c C X₁ Y U₀ EE out (πY ≫ X₁.π) hAdm.1 hpt x
  refine ⟨R, i1, i2, i3, j, Λ, i4, i5, p, 1, hB.1.1, hB.2, hC, le_rfl, fun T ψ hψ ht => ?_⟩
  obtain ⟨e, he⟩ := h T ψ hψ (by rw [ht])
  refine ⟨e, fun a => ?_⟩
  obtain ⟨k, hk, hA⟩ := he a
  exact ⟨k, by rw [hk]; push_cast; ring, hA⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryLocalPeriodsThetaModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUTraitOfStalkDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUTraitOfStalkDvr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTraitModuliOfStalkCompleteDVR\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughModuliGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc GlobalTheory.Poinc.Eq8 Formalism.L2.Pj
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

theorem GlobalTheory.UPoinc.exists_uTrait_of_stalk_dvr : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (o' Ω : Type) [CommRing o'] [Field Ω] [Algebra o' Ω] [CharZero Ω] (M : RatModel o' Ω) (y₀ : Sp Ω ⟶ Xo.XF c) (x : M.Z) (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V], IsAdicComplete (maximalIdeal V) V → ∀ θ : M.Z.presheaf.stalk x →+* V, Function.Injective θ → ∃ (T : UTrait Xo c) (f : V →+* T.V) (γ : Ω →+* FractionRing T.V), Function.Injective f ∧ IsLocalHom f ∧ (∀ a, γ (M.stalkHom x a) = algebraMap T.V (FractionRing T.V) (f (θ a))) ∧ jK T.V ≫ spMap (f.comp θ) ≫ M.Z.fromSpecStalk x = spMap γ ≫ M.pt ∧ T.y = spMap γ ≫ y₀ := by
  intro E _ _ _ H Dw l Xo c o' Ω _ _ _ _ M y₀ x V _ _ _ hcomp θ hθ
  haveI : CharZero (M.Z.presheaf.stalk x) := (M.stalkHom x).charZero
  haveI : CharZero V := charZero_of_injective_ringHom hθ
  have hB : GlobalTheory.Mum.Base V := ⟨⟨inferInstance, inferInstance, inferInstance, hcomp⟩, inferInstance⟩
  let θ' : M.O x →+* FractionRing V :=
    ((algebraMap V (FractionRing V)).comp θ).comp (M.stalkEquiv x).symm.toRingHom
  have hθ' : Function.Injective θ' :=
    (IsFractionRing.injective V (FractionRing V)).comp (hθ.comp (M.stalkEquiv x).symm.injective)
  let γ₀ : Ω →+* FractionRing V := IsFractionRing.lift (A := M.O x) (K := Ω) hθ'
  have hγ₀ : ∀ a, γ₀ (M.stalkHom x a) = algebraMap V (FractionRing V) (θ a) := by
    intro a
    have h := IsFractionRing.lift_algebraMap (A := M.O x) (K := Ω) hθ' (M.stalkEquiv x a)
    rw [← RatModel.coe_stalkEquiv]
    refine h.trans ?_
    simp [θ']
  obtain ⟨T, f, fK, hfi, hfl, -, hc, hy⟩ :=
    GlobalTheory.UTraitExt.uTraitExtSt E H Dw l Xo c V hB inferInstance (spMap γ₀ ≫ y₀)
  refine ⟨T, f, fK.comp γ₀, hfi, hfl, ?_, ?_, ?_⟩
  · intro a
    rw [RingHom.comp_apply, hγ₀, hc]
  · have e : (algebraMap T.V (FractionRing T.V)).comp (f.comp θ) = (fK.comp γ₀).comp (M.stalkHom x) := by
      ext a
      simp only [RingHom.comp_apply, hγ₀, hc]
    rw [← GlobalTheory.Poinc.GenTrait.spMap_stalkHom_fromSpecStalk M x, ← Category.assoc, Formalism.L2.Pj.spMap_comp', e,
      ← Formalism.L2.Pj.spMap_comp', Category.assoc]
  · rw [hy, ← Category.assoc, Formalism.L2.Pj.spMap_comp']
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUTraitOfStalkDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughOpenOfStalkCompleteDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughOpenOfStalkCompleteDvr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUTraitOfStalkDvr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc
open GlobalTheory
open Classical

theorem GlobalTheory.UPoinc.exists_uTrait_through_open_of_stalk_dvr : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H), 1 ≤ Dw.p + Dw.q → ∀ (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (πY : Y.Z ⟶ X₁.M.Z), X₁.S.admitted Y U₀ → X₁.S.IsEE Y U₀ EE → X₁.M.IsHom Y (AlgHom.id X₁.o₁ X₁.Ω₁) πY → ∀ (x : Y.Z) (A : Type) [CommRing A] [IsDomain A] [IsDiscreteValuationRing A] [CharZero A], IsAdicComplete (maximalIdeal A) A → ∀ θ : Y.Z.presheaf.stalk x →+* A, Function.Injective θ → IsLocalHom θ → ∃ (T : UTrait Xo c) (f : A →+* T.V), Function.Injective f ∧ IsLocalHom f ∧ (∃ ξ₀ : Sp (FractionRing T.V) ⟶ U₀.toScheme, ξ₀ ≫ U₀.ι = jK T.V ≫ (spMap (f.comp θ) ≫ Y.Z.fromSpecStalk x) ∧ X₁.Lies (ξ₀ ≫ out.u₀) T.y) ∧ T.y ≫ C.i = jK T.V ≫ (spMap (f.comp θ) ≫ Y.Z.fromSpecStalk x) ≫ πY ≫ X₁.π := by
  intro E _ _ _ H Dw _ l Xo c C X₁ Y U₀ EE out πY hAdm _ hHom x A _ _ _ _ hcomp θ hθ _
  haveI : CharZero X₁.Ω₁ := X₁.ar.char
  obtain ⟨T, f, γ, hfi, hfl, -, hpt, hy⟩ :=
    GlobalTheory.UPoinc.exists_uTrait_of_stalk_dvr E H Dw l Xo c X₁.o₁ X₁.Ω₁ Y X₁.uΩ x A hcomp θ hθ
  have hsub : Set.range Y.pt ⊆ Set.range U₀.ι := by
    rw [Y.gen, Scheme.Opens.range_ι, Set.singleton_subset_iff]
    exact (genericPoint_spec Y.Z).mem_open_set_iff U₀.isOpen |>.2 (by simpa using hAdm.1.ne)
  let ξg : Sp X₁.Ω₁ ⟶ U₀.toScheme := IsOpenImmersion.lift U₀.ι Y.pt hsub
  have hξg : ξg ≫ U₀.ι = Y.pt := IsOpenImmersion.lift_fac _ _ _
  have hu : ξg ≫ out.u₀ = spMap X₁.S.R.val.toRingHom := out.u₀_gen ξg hξg
  have hHom' : Y.pt ≫ πY = X₁.M.pt := by
    rw [hHom]
    show Spec.map (CommRingCat.ofHom (RingHom.id X₁.Ω₁)) ≫ _ = _
    rw [CommRingCat.ofHom_id, Spec.map_id, Category.id_comp]
  refine ⟨T, f, hfi, hfl, ⟨spMap γ ≫ ξg, ?_, ?_⟩, ?_⟩
  · rw [hpt, Category.assoc, hξg]
  · refine ⟨spMap γ ≫ spMap (ratHull X₁.S.R).val.toRingHom, ?_, ?_⟩
    · rw [Category.assoc, spMap_val_toRat, Category.assoc, hu]
    · rw [hy, Category.assoc]
  · rw [hy]
    simp only [Category.assoc] at hpt ⊢
    rw [reassoc_of% hpt, reassoc_of% hHom', X₁.comp]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughOpenOfStalkCompleteDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorOrdersAllTraitsOverModuli =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorOrdersAllTraitsOverModuli", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UValThruTopOfDisjoint\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SharpOverIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRatPointOfFiniteType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterGroupFinrankLeMinSignatureUnitaryTrait\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDvrOfDimOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalHomAdicCompletionExtend\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryLocalPeriodsThetaModel\npublic import Development.AbelianVarietyTheory.Statements.SemistableTorsion.ImmersedBy\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTraitThroughOpenOfStalkCompleteDvr\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdlAlongEqTopOfNotMemSupport\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdealAlongStalkPointEqMap\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntBilinFormToRealMemBalancedPsdCone\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.LocalRing\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc
open scoped CategoryTheory.Obj
open GlobalTheory.UPoinc
open GlobalTheory
open Classical
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UPoinc.AllTraits

theorem localPeriods : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H), 1 ≤ Dw.p + Dw.q → ∀ (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (πY : Y.Z ⟶ X₁.M.Z), X₁.S.admitted Y U₀ → X₁.S.IsEE Y U₀ EE → X₁.M.IsHom Y (AlgHom.id X₁.o₁ X₁.Ω₁) πY → ∀ x : Y.Z, ∃ (R : Type) (_ : CommRing R) (_ : IsDomain R) (_ : IsLocalRing R) (j : Y.Z.presheaf.stalk x →+* R) (Λ : Type) (_ : AddCommGroup Λ) (_ : Module (𝓞 E) Λ) (p : Λ → R) (c₀ : ℕ), IsNoetherianRing R ∧ CharZero R ∧ GlobalTheory.Poinc.Eq8.IsCpl j ∧ 1 ≤ c₀ ∧ ∀ (T : UTrait Xo c) (ψ : R →+* T.V), IsLocalHom ψ → T.y ≫ C.i = jK T.V ≫ (spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk x) ≫ πY ≫ X₁.π → ∃ e : Λ ≃ₗ[𝓞 E] T.P.D.toPre.X, ∀ a, ∃ k : ℕ, (k : ℤ) = c₀ * T.be (e a) (e a) ∧ Associated (ψ (p a)) (T.ϖ ^ k) := _root_.GlobalTheory.UPoinc.UPeriods.main

theorem traitThroughOpen : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H), 1 ≤ Dw.p + Dw.q → ∀ (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (πY : Y.Z ⟶ X₁.M.Z), X₁.S.admitted Y U₀ → X₁.S.IsEE Y U₀ EE → X₁.M.IsHom Y (AlgHom.id X₁.o₁ X₁.Ω₁) πY → ∀ (x : Y.Z) (A : Type) [CommRing A] [IsDomain A] [IsDiscreteValuationRing A] [CharZero A], IsAdicComplete (maximalIdeal A) A → ∀ θ : Y.Z.presheaf.stalk x →+* A, Function.Injective θ → IsLocalHom θ → ∃ (T : UTrait Xo c) (f : A →+* T.V), Function.Injective f ∧ IsLocalHom f ∧ (∃ ξ₀ : Sp (FractionRing T.V) ⟶ U₀.toScheme, ξ₀ ≫ U₀.ι = jK T.V ≫ (spMap (f.comp θ) ≫ Y.Z.fromSpecStalk x) ∧ X₁.Lies (ξ₀ ≫ out.u₀) T.y) ∧ T.y ≫ C.i = jK T.V ≫ (spMap (f.comp θ) ≫ Y.Z.fromSpecStalk x) ≫ πY ≫ X₁.π := _root_.GlobalTheory.UPoinc.exists_uTrait_through_open_of_stalk_dvr

theorem pow_exp_eq {V : Type} [CommRing V] [IsDomain V] {ϖ : V} (h : Irreducible ϖ) {a b : ℕ}
    (e : Associated (ϖ ^ a) (ϖ ^ b)) : a = b :=
  le_antisymm ((pow_dvd_pow_iff h.ne_zero h.not_isUnit).1 e.dvd) ((pow_dvd_pow_iff h.ne_zero h.not_isUnit).1 e.symm.dvd)

theorem form_eq_zero {X I : Type} [AddCommGroup X] (B : LinearMap.BilinForm ℤ X) (hB : ∀ a b, B a b = B b a) (b : I → X)
    (hb : Submodule.span ℤ (Set.range b) = ⊤) (h : ∀ i j, B (b i + b j) (b i + b j) = 0) : B = 0 := by
  have h1 : ∀ i j, B (b i) (b i) + 2 * B (b i) (b j) + B (b j) (b j) = 0 := by
    intro i j
    have := h i j
    simp only [map_add (f := _), LinearMap.add_apply] at this
    rw [hB (b j) (b i)] at this
    linarith
  have h2 : ∀ i, B (b i) (b i) = 0 := fun i => by have := h1 i i; linarith
  have h3 : ∀ i j, B (b i) (b j) = 0 := fun i j => by have := h1 i j; have := h2 i; have := h2 j; linarith
  refine LinearMap.ext_on_range hb fun i => LinearMap.ext_on_range hb fun j => ?_
  simpa using h3 i j

theorem idlAlong_ne_bot {X : Scheme.{0}} (J : X.IdealSheafData) {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R]
    (ξ : Sp R ⟶ X) (h : (jK R ≫ ξ) (closedPoint (FractionRing R)) ∉ J.support) : idlAlong J ξ ≠ ⊥ := by
  intro h0
  have h1 := idlAlong_eq_top_of_notMem_support X J _ _ h
  have hmap : ∀ {S : Type} [CommRing S] [IsLocalRing S] (χ : Sp S ⟶ X)
      (U : X.affineOpens) (hle : ⊤ ≤ χ ⁻¹ᵁ U.1),
      idlAlong J χ = (J.ideal U).map (χ.appLE U.1 ⊤ hle ≫ (Scheme.ΓSpecIso (.of S)).hom).hom := by
    intro S _ _ χ U hle
    have hx : χ (closedPoint S) ∈ U.1 := hle trivial
    unfold idlAlong
    rw [ds_stalkId_eq_map J U _ hx, Ideal.map_map, ← CommRingCat.hom_comp, Scheme.germ_stalkClosedPointTo]
    congr 2
  have h2 : idlAlong J (jK R ≫ ξ) = (idlAlong J ξ).map (algebraMap R (FractionRing R)) := by
    obtain ⟨U, hU, hx, -⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.1 X.isBasis_affineOpens
      (show ξ (closedPoint R) ∈ (⊤ : X.Opens) from trivial)
    have hle : ⊤ ≤ ξ ⁻¹ᵁ U := (Scheme.preimage_eq_top_of_closedPoint_mem ξ hx).ge
    have hle' : ⊤ ≤ (jK R ≫ ξ) ⁻¹ᵁ U := fun x _ => hle (show jK R x ∈ (⊤ : (Sp R).Opens) from trivial)
    rw [hmap ξ ⟨U, hU⟩ hle, hmap _ ⟨U, hU⟩ hle', Ideal.map_map]
    congr 1
    have e : (jK R ≫ ξ).appLE U ⊤ hle' = ξ.appLE U ⊤ hle ≫ (jK R).appTop := by
      rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
      exact (Scheme.Hom.appLE_comp_appLE _ _ _ _ _ _ _).symm
    rw [e, Category.assoc, Scheme.ΓSpecIso_naturality, ← Category.assoc, CommRingCat.hom_comp]
    rfl
  rw [h0, Ideal.map_bot] at h2
  exact bot_ne_top (h2.symm.trans h1)

theorem isCpl_props {O R : Type} [CommRing O] [IsLocalRing O] [IsNoetherianRing O] [CommRing R] [IsLocalRing R]
    {j : O →+* R} (hj : GlobalTheory.Poinc.Eq8.IsCpl j) : Function.Injective j ∧ IsLocalHom j ∧
      ∀ (V : Type) [CommRing V] [IsLocalRing V], IsAdicComplete (maximalIdeal V) V → ∀ φ : O →+* V, IsLocalHom φ →
        ∃ ψ : R →+* V, IsLocalHom ψ ∧ ψ.comp j = φ := by
  obtain ⟨e, he⟩ := hj
  have hj : j = e.toRingHom.comp (algebraMap O _) := RingHom.ext fun a => (he a).symm
  have hl : IsLocalHom (algebraMap O (AdicCompletion (maximalIdeal O) O)) := inferInstance
  refine ⟨?_, ?_, fun V _ _ hV φ hφ => ?_⟩
  · rw [hj]
    exact e.injective.comp (AdicCompletion.of_injective (maximalIdeal O) O)
  · refine ⟨fun a ha => ?_⟩
    rw [← he, MulEquiv.isUnit_map] at ha
    exact isUnit_of_map_unit _ _ ha
  · obtain ⟨ψ, h1, h2⟩ := GlobalTheory.LocalCompletion.exists_localHom_adicCompletion_extend O V hV φ hφ
    refine ⟨ψ.comp e.symm.toRingHom, ⟨fun a ha => ?_⟩, RingHom.ext fun a => ?_⟩
    · have := isUnit_of_map_unit ψ _ ha
      exact (MulEquiv.isUnit_map e.symm).1 this
    · rw [← h2, RingHom.comp_apply, ← he]
      simp

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H}
  {Xo : Moduli Dw l} {c : Coeff l}

theorem finite_lat (T : UTrait Xo c) : Module.Finite (𝓞 E) T.P.D.toPre.X :=
  Module.Finite.of_restrictScalars_finite ℤ _ _

theorem projective_lat (T : UTrait Xo c) : Module.Projective (𝓞 E) T.P.D.toPre.X := by
  apply _root_.GlobalTheory.UPoinc.PreSys.projective_X <;> assumption

theorem be_nonneg (T : UTrait Xo c) (x : T.P.D.toPre.X) : 0 ≤ T.be x x := by
  by_cases hx : x = 0
  · subst hx; simp
  · obtain ⟨j, hj⟩ := IsMonomial.exists_pos (IsLocalRing.maximalIdeal.isMaximal T.V).ne_top T.mono hx
    fin_cases j
    simpa using hj.le

theorem be_bal (T : UTrait Xo c) : T.be ∈ balForms (H.bar : 𝓞 E → 𝓞 E) T.P.D.toPre.X := by
  rw [balForms_eq_levelForms]; exact T.lev

theorem evalZ_prop {φ : InvFun (𝓞 E)} (hφ : IsPolFan H.bar (min Dw.p Dw.q) φ) (T T' : UTrait Xo c)
    (e : T.P.D.toPre.X ≃ₗ[𝓞 E] T'.P.D.toPre.X) (m s : ℕ) (he : ∀ a b, (m : ℤ) * T'.be (e a) (e b) = s * T.be a b) :
    (m : ℝ) * φ.evalZ T'.be = s * φ.evalZ T.be := by
  haveI := finite_lat T
  haveI := projective_lat T
  haveI := finite_lat T'
  have hon := hφ T.P.D.toPre.X (_root_.GlobalTheory.UPoinc.UTrait.finrank_le_min E H Dw l Xo c T)
  have hc := toReal_mem_psdCone_of_nonneg E H _ T.be (be_bal T) (be_nonneg T)
  have hc' := toReal_mem_psdCone_of_nonneg E H _ (pull e.toLinearMap T'.be) (pull_mem _ (be_bal T'))
    (fun x => be_nonneg T' (e x))
  rw [← evalR_toReal φ T.be, ← hon.homog _ hc s s.cast_nonneg,
    ← evalZ_pull φ (r := e.toLinearMap) e.surjective, ← evalR_toReal, ← hon.homog _ hc' m m.cast_nonneg]
  congr 1
  refine LinearMap.ext₂ fun a b => ?_
  have h := he a b
  simp only [toReal_apply, pull_apply, LinearMap.smul_apply, smul_eq_mul]
  exact_mod_cast h

end GlobalTheory.UPoinc.AllTraits


open GlobalTheory.UPoinc.AllTraits in
theorem GlobalTheory.UPoinc.AllTraits.orders_all : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H), 1 ≤ Dw.p + Dw.q → ∀ φ : InvFun (𝓞 E), IsPolFan H.bar (min Dw.p Dw.q) φ → ∀ (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (C : UCompact Xo c) (X₁ : USetup C) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (out : ZHOut X₁.ρ Y U₀ EE) (πY : Y.Z ⟶ X₁.M.Z), X₁.S.admitted Y U₀ → X₁.S.IsEE Y U₀ EE → X₁.M.IsHom Y (AlgHom.id X₁.o₁ X₁.Ω₁) πY → ∀ (ι : ℕ) (D : GlobalTheory.EffCartierData Y.Z), (∀ y ∈ D.idealSheaf.support, X₁.π (πY y) ∉ Set.range C.i) → (∀ (T : UTrait Xo c) (ξ : Sp T.V ⟶ Y.Z), (∃ ξ₀ : Sp (FractionRing T.V) ⟶ U₀.toScheme, ξ₀ ≫ U₀.ι = jK T.V ≫ ξ ∧ X₁.Lies (ξ₀ ≫ out.u₀) T.y) → ∃ a : ℕ, (a : ℝ) = ι * φ.evalZ T.be ∧ idlAlong D.idealSheaf ξ = Ideal.span {T.ϖ ^ a}) → UValThru Xo c C.i (πY ≫ X₁.π) Set.univ φ D.idealSheaf ι := by
  intro E _ _ _ H Dw hpq φ hφ l Xo c C X₁ Y U₀ EE out πY hAdm hEE hHom ι D hD hgen
  intro W _ _ _ hW ϖ hϖ χ y hy _ t tK h1 h2 P be hbe hmono
  let T₀ : UTrait Xo c :=
    { V := W, cdvr := hW, ϖ := ϖ, irr := hϖ, y := y, t := t, gen := ⟨tK, h1, h2⟩, P := P, be := be, lev := hbe, mono := hmono }
  haveI : IsDiscreteValuationRing W := hW.1
  haveI : IsDedekindDomain X₁.o₁ := ArithBase.ded X₁.Ω₁
  haveI := Y.lft
  haveI : IsLocallyNoetherian Y.Z := LocallyOfFiniteType.isLocallyNoetherian Y.s
  have hWc : IsAdicComplete (maximalIdeal W) W := hW.2.1
  obtain ⟨R, _, _, _, j, Λ, _, _, p, c₀, hRn, hRc, hj, hc, hper⟩ :=
    _root_.GlobalTheory.UPoinc.UPeriods.main E H Dw hpq l Xo c C X₁ Y U₀ EE out πY hAdm hEE hHom (χ (closedPoint W))
  obtain ⟨jinj, jloc, jext⟩ := isCpl_props hj
  obtain ⟨ψ, ψloc, hψ⟩ := jext W hWc (Scheme.stalkClosedPointTo χ).hom inferInstance
  have hξ : spMap (ψ.comp j) ≫ Y.Z.fromSpecStalk (χ (closedPoint W)) = χ := by
    rw [hψ]
    exact Scheme.Spec_stalkClosedPointTo_fromSpecStalk χ
  obtain ⟨d, hd⟩ : ∃ d, FinalTheorems.stalkId D.idealSheaf (χ (closedPoint W)) = Ideal.span {d} := by
    obtain ⟨i, hi⟩ := D.exists_mem (χ (closedPoint W))
    exact ⟨_, D.stalkId_idealSheaf i _ hi⟩
  have hid : idlAlong D.idealSheaf χ = Ideal.span {ψ (j d)} := by
    rw [idlAlong, hd, Ideal.map_span, Set.image_singleton, ← hψ]
    rfl
  have hnot : (jK W ≫ χ) (closedPoint (FractionRing W)) ∉ D.idealSheaf.support := by
    intro hs
    refine hD _ hs ⟨y (closedPoint (FractionRing W)), ?_⟩
    exact congrArg (fun f => f.base (closedPoint (FractionRing W))) hy
  have hne := idlAlong_ne_bot D.idealSheaf χ hnot
  obtain ⟨a, ha⟩ := IsDiscreteValuationRing.ideal_eq_span_pow_irreducible hne hϖ
  refine ⟨a, ?_, ha⟩
  have hda : Associated (ψ (j d)) (ϖ ^ a) := Ideal.span_singleton_eq_span_singleton.1 (hid.symm.trans ha)
  obtain ⟨e, he⟩ := hper T₀ ψ ψloc (by rw [hξ]; exact hy)
  choose k hk hk' using he
  haveI := T₀.P.D.toPre.finX
  obtain ⟨N, b, hb⟩ := Module.Finite.exists_fin (R := ℤ) (M := T₀.P.D.toPre.X)
  obtain ⟨A, _, _, _, ϖ', ψ', m, m', k', hA, hϖ', ψ'inj, ψ'loc, hm, hm', hk''⟩ :=
    _root_.GlobalTheory.CompleteDiscreteValuationRing.main R W ϖ hϖ ψ ψloc (Option (Fin N × Fin N))
      (fun i => i.elim (j d) fun ii => p (e.symm (b ii.1 + b ii.2)))
      (fun i => i.elim a fun ii => k (e.symm (b ii.1 + b ii.2)))
      (by rintro (_ | ii); exacts [hda, hk' _])
  haveI : CharZero A := (RingHom.charZero_iff ψ'inj).1 hRc
  haveI := jloc
  haveI := ψ'loc
  obtain ⟨T', f, finj, floc, hthru, hyC⟩ := _root_.GlobalTheory.UPoinc.exists_uTrait_through_open_of_stalk_dvr E H Dw hpq l Xo c C X₁ Y U₀ EE out πY hAdm hEE hHom
    (χ (closedPoint W)) A hA (ψ'.comp j) (ψ'inj.comp jinj) inferInstance
  haveI := floc
  haveI : IsDiscreteValuationRing T'.V := T'.cdvr.1
  obtain ⟨e', he'⟩ := hper T' (f.comp ψ') inferInstance (by rw [RingHom.comp_assoc]; exact hyC)
  obtain ⟨r, hr⟩ := IsDiscreteValuationRing.associated_pow_irreducible
    ((map_ne_zero_iff f finj).2 hϖ'.ne_zero) T'.irr
  have hr0 : r ≠ 0 := by
    rintro rfl
    rw [pow_zero] at hr
    exact hϖ'.not_isUnit ((isUnit_map_iff f ϖ').1 (associated_one_iff_isUnit.1 hr))
  have hpow : ∀ {x : A} {n : ℕ}, Associated x (ϖ' ^ n) → Associated (f x) (T'.ϖ ^ (r * n)) := by
    intro x n h
    have h1 := h.map f
    rw [map_pow] at h1
    rw [pow_mul]
    exact h1.trans hr.pow_pow
  obtain ⟨a', ha', hid'⟩ := hgen T' _ hthru
  rw [GlobalTheory.TraitStalk.idlAlong_spMap_fromSpecStalk _ _ _ _ _ inferInstance, hd, Ideal.map_span,
    Set.image_singleton, Ideal.span_singleton_eq_span_singleton] at hid'
  have h0 := hk'' none
  have ea : a' = r * k' none := pow_exp_eq T'.irr (hid'.symm.trans (hpow h0.1))
  have h02 : m * k' none = m' * a := h0.2
  let Eq' := e.symm.trans e'
  have hz := form_eq_zero ((m : ℤ) • pull Eq'.toLinearMap T'.be - ((m' * r : ℕ) : ℤ) • T₀.be)
    (fun x z => by
      simp only [LinearMap.sub_apply, LinearMap.smul_apply, pull_apply]
      rw [T₀.lev.1 x z, T'.lev.1]) b hb (fun i i' => by
      obtain ⟨n, hl, hl'⟩ := he' (e.symm (b i + b i'))
      obtain ⟨h1, h2⟩ := hk'' (some (i, i'))
      have h3 : n = r * k' (some (i, i')) := pow_exp_eq T'.irr (hl'.symm.trans (hpow h1))
      have h4 := hk (e.symm (b i + b i'))
      rw [e.apply_symm_apply] at h4
      have h5 : (m : ℤ) * k' (some (i, i')) = m' * k (e.symm (b i + b i')) := by exact_mod_cast h2
      have hc0 : (c₀ : ℤ) ≠ 0 := by omega
      change (m : ℤ) * T'.be (e' (e.symm (b i + b i'))) (e' (e.symm (b i + b i'))) -
        ((m' * r : ℕ) : ℤ) * T₀.be (b i + b i') (b i + b i') = 0
      refine mul_left_cancel₀ hc0 ?_
      rw [h3] at hl
      push_cast at hl ⊢
      linear_combination (-(m : ℤ)) * hl + r * h5 + m' * r * h4)
  have hev : (m : ℝ) * φ.evalZ T'.be = ((m' * r : ℕ) : ℝ) * φ.evalZ be := evalZ_prop hφ T₀ T' Eq' m (m' * r) fun x z =>
    sub_eq_zero.1 (congrArg (fun B : LinearMap.BilinForm ℤ T₀.P.D.toPre.X => B x z) hz)
  have h02' : (m : ℝ) * k' none = m' * a := by exact_mod_cast h02
  have hmr : ((m' : ℝ) * r) ≠ 0 := by
    have : m' ≠ 0 := by omega
    positivity
  refine mul_left_cancel₀ hmr ?_
  rw [ea] at ha'
  push_cast at ha' hev
  linear_combination (-(r : ℝ)) * h02' + m * ha' + ι * hev
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorOrdersAllTraitsOverModuli =====
