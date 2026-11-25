module

import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsContAutRTrans
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandBesselPeriodInvariantProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFixedLevelElementEqProdLocalParts
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAway
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotient
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBessel
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapHandedFunctionVanishingPeriodInvariant
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryAdelicInfFinSplitPeriodsUnimodularStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevel
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStep
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacuaStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawCommonRealDatumBiThetaVacuumContractionStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSmoothAutomorphicRightTranslateFinite
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowerTowerLiftsVanishOfVanishOnFock
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
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
import Mathlib.Topology.Sheaves.Init
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsUniqueIsProdMeasureFinAway
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentAnisotropicProjectionEqOne
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.T2SpaceCmHostAdeles
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlaces, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlacesStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecond, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecondStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFir, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFirStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevel, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevelStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevel, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevelStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeve, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeveStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevel, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevelStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAwayStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotientStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBesselStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacob, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacobStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlace, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceBis, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePoints, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePointsStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevelStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStepStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValue, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlaces =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SeeSaw

theorem normAt_exists : ∀ (D : D7) (V : HSp D) (R : Subgroup (GA D V)), IsClosed (R : Set (GA D V)) → ∀ (L : Lat V),
    IsSelfDualC V L → ∀ Q : Finset (Pl D), ∃ ρ μ, IsNormAt V R L (· ∈ Q) ρ μ := by
  intro D V R hR L hL Q
  obtain ⟨⟨K, hK, hKc, hKo⟩, -⟩ := (GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V Q).2.2.2.2.2.2.2.2.1 L hL (· ∈ Q)
  have hKG : ∀ g : GA D V, g ∈ K → g ∈ grpAt V (· ∈ Q) := fun g hg => ((hK g).1 hg).1
  have h1 : InK V L (· ∈ Q) 1 := (hK 1).1 K.one_mem

  let S : Set (grpAt V (· ∈ Q)) := {g | InK V L (· ∈ Q) g.1}
  have hSe : S = ((K.subgroupOf (grpAt V (· ∈ Q)) : Subgroup _) : Set (grpAt V (· ∈ Q))) := by
    ext g; simp [S, Subgroup.mem_subgroupOf, hK]
  have hSo : IsOpen S := hSe ▸ hKo
  have hSc : IsCompact S := by
    rw [Topology.IsInducing.subtypeVal.isCompact_iff]
    convert hKc using 1
    ext x
    constructor
    · rintro ⟨g, hg, rfl⟩; exact (hK _).2 hg
    · intro hx; exact ⟨⟨x, hKG x hx⟩, (hK x).1 hx, rfl⟩

  let T := R.subgroupOf (grpAt V (· ∈ Q))
  let S' : Set T := {g | InK V L (· ∈ Q) g.1.1}
  have hS'o : IsOpen S' := hSo.preimage continuous_subtype_val
  have hS'c : IsCompact S' := by
    rw [(Topology.IsInducing.subtypeVal.comp Topology.IsInducing.subtypeVal).isCompact_iff]
    convert hKc.inter_right hR using 1
    ext x
    constructor
    · rintro ⟨g, hg, rfl⟩; exact ⟨(hK _).2 hg, Subgroup.mem_subgroupOf.1 g.2⟩
    · rintro ⟨hx, hxR⟩
      exact ⟨⟨⟨x, hKG x hx⟩, Subgroup.mem_subgroupOf.2 hxR⟩, (hK x).1 hx, rfl⟩
  let K₀ : TopologicalSpace.PositiveCompacts (grpAt V (· ∈ Q)) :=
    ⟨⟨S, hSc⟩, by rw [hSo.interior_eq]; exact ⟨1, h1⟩⟩
  let K₁ : TopologicalSpace.PositiveCompacts T :=
    ⟨⟨S', hS'c⟩, by rw [hS'o.interior_eq]; exact ⟨1, h1⟩⟩
  refine ⟨Measure.haarMeasure K₁, Measure.haarMeasure K₀, inferInstance, inferInstance, ?_, ?_⟩
  · exact Measure.haarMeasure_self (K₀ := K₀)
  · exact Measure.haarMeasure_self (K₀ := K₁)

end GlobalTheory.SeeSaw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlaces =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlacesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlacesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_normalizedHaarPair_at_finitePlaces : ∀ (D : D7) (V : HSp D) (R : Subgroup (GA D V)), IsClosed (R : Set (GA D V)) → ∀ (L : Lat V), IsSelfDualC V L → ∀ Q : Finset (Pl D), ∃ ρ μ, IsNormAt V R L (· ∈ Q) ρ μ := by
  first | exact @GlobalTheory.SeeSaw.normAt_exists
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlacesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecond =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecond", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandBesselPeriodInvariantProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

noncomputable section

namespace GlobalTheory.DStepCell.LeftSecond

variable {D : D7}

theorem contAut_translate {V : HSp D} {f : GA D V → ℂ} (h : GA D V) (hf : IsContAut V f) : IsContAut V (rTrans h f) :=
  ⟨fun γ hγ x => by simp only [rTrans, mul_assoc, hf.1 γ hγ], hf.2.comp (continuous_mul_const h)⟩

theorem contAut_of_mem_multT {V : HSp D} {S : D.what₂.Tau → SPar} {θ : InfFam D} {M : DSModel V S} {J : Set (GA D V)}
    {χ : GA D V → ℂ} {G : SmT M →ₗ[ℂ] (GA D V → ℂ)} (hG : G ∈ MultT θ M J χ) (x : SmT M) : IsContAut V (G x) := by
  first | exact _root_.GlobalTheory.Core.Mi.BotPin.isContAut_multT | exact @_root_.GlobalTheory.Core.Mi.BotPin.isContAut_multT | apply _root_.GlobalTheory.Core.Mi.BotPin.isContAut_multT <;> assumption

theorem theta_comb {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {S T : HSp D} {P : Pl D → Prop}
    {e : WO S T →₀ ℂ} (he : CombAt P e) {f : WO S T → ℂ} (hf : IsThetaFunO ψ S T f) : IsThetaFunO ψ S T (comb ψ S T e f) :=
  (GlobalTheory.HeisComb.main D ψ S T).2.2.1 e f hf
    ((GlobalTheory.DisjComb.main D ψ hψ S T P (fun _ => False) (fun _ _ h => h)).2.1 e he).1 hψ

theorem integ_left_second : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ r ∈ besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o, ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f q₁ (r * q₂) = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv ht hF _ _ _ _ _ _ j σ h Ψ₁ Ψ₂ h₁ h₂ φ hφ G x a _ f hf r hr q₁ q₂
  have hΦ₁ := theta_comb hc.std (hv.atG j).1 (theta_comb hc.std (hF.atQ j).1 h₁.1)
  have hΦ₂ := theta_comb hc.std (hv.atG (j + 1)).1 (theta_comb hc.std (hF.atQ (j + 1)).1 h₂.1)
  obtain ⟨J, χ, hle⟩ := ht.CC (j + 1 + 1) (by omega)
  have hfc : IsContAut (c.V (j + 1 + 1)) f := hf ▸ contAut_translate _ (contAut_of_mem_multT (hle G.2) x)
  unfold integ
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => congrArg (w.ε j α g * ·) ?_
  exact (_root_.GlobalTheory.FinPl.HandInvPf.handInv D c.ψ σ (c.B j (σ + 1) h) (c.J j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (t.sBF j (σ + 1) h)
    (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) _ _ hΦ₁ hΦ₂ (φ α) (hv.ram j _ (hφ α)).1 g q₁ q₂).2 f hfc r hr

end GlobalTheory.DStepCell.LeftSecond

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecond =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecondStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecondStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecondStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFir =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFir", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandBesselPeriodInvariantProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

namespace GlobalTheory.DStepCell.LeftOne

theorem vac_empty_comb {D : D7} {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {S T : HSp D} {P : Pl D → Prop}
    {e : WO S T →₀ ℂ} (he : CombAt P e) {LS : Lat S} {LT : Lat T} {f : WO S T → ℂ}
    (hf : Vac ψ S T LS LT (fun _ => False) f) : Vac ψ S T LS LT (fun _ => False) (comb ψ S T e f) :=
  ((GlobalTheory.DisjComb.main D ψ hψ S T P (fun _ => False) (fun _ _ h => h)).2.1 e he).2 LS LT f hf

theorem vac_empty {D : D7} {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {S T : HSp D}
    {LS : Lat S} {LT : Lat T} (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) {f : WO S T → ℂ}
    (hf : Vac ψ S T LS LT (fun _ => True) f) : Vac ψ S T LS LT (fun _ => False) f := by
  have h := (GlobalTheory.DisjComb.main D ψ hψ S T (fun _ => True) (fun _ => False) (fun _ _ h => h)).2.2.2.2 LS LT f hS hT
  have e : (fun p : Pl D => True ∨ False) = fun _ => True := by funext p; simp
  rw [e] at h
  exact (h.1 hf).2

theorem main : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ r ∈ jacGrp (c.jac j (σ + 1) h).d, ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f (r * q₁) q₂ = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv _ hF _ _ _ _ _ _ j σ h Ψ₁ Ψ₂ h₁ h₂ φ hφ G x a _ f _ r hr q₁ q₂
  have s0 := hv.sd j (by omega)
  have s1 := hv.sd (j + 1) (by omega)
  have s2 := hv.sd (j + 1 + 1) (by omega)
  have t₁ := (vac_empty_comb hc.std (hv.atG j).1 (vac_empty_comb hc.std (hF.atQ j).1 (vac_empty hc.std s0 s1 h₁))).1
  have t₂ := (vac_empty_comb hc.std (hv.atG (j + 1)).1
    (vac_empty_comb hc.std (hF.atQ (j + 1)).1 (vac_empty hc.std s1 s2 h₂))).1
  unfold integ
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => ?_
  have key := (_root_.GlobalTheory.FinPl.HandInvPf.handInv D c.ψ σ _ _ _ (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) _ _ t₁ t₂ (φ α)
    (hv.ram j (φ α) (hφ α)).1 g q₁ q₂).1 r hr
  exact congrArg (fun z => w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ z (rTrans q₂ f)) key

end GlobalTheory.DStepCell.LeftOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFir =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFirStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFirStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFir\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFirStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

namespace GlobalTheory.DStepLev
variable {D : D7}

theorem vac_of_all {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : GlobalTheory.FinPl.Lat S} {LT : GlobalTheory.FinPl.Lat T} (P : Pl D → Prop)
    {f : WO S T → ℂ} (hf : Vac ψ S T LS LT (fun _ => True) f) : Vac ψ S T LS LT P f := by
  have hle : latO S T (↑LS) (↑LT) P ≤ latO S T (↑LS) (↑LT) (fun _ => True) := by
    apply AddSubgroup.closure_mono
    rintro w ⟨α, hα, -, hr⟩
    exact ⟨α, hα, fun _ hv => (hv trivial).elim, hr⟩
  exact ⟨hf.1, fun u hu => hf.2.1 u (hle hu), fun e he u hu => hf.2.2 e he u (hle hu)⟩

theorem hand_mul_right {ψ : AddChar (AF D.host.F) ℂ} {σ : ℕ} {B : BesLev D (σ + 1)} {J : JacLev D (σ + 1)} {B' : BesLev D σ}
    (s₁ : StepBF ψ B J) (s₂ : StepFB ψ J B') (l : Link B B'.L B'.ζ) (vL : VolM D B'.L.rank J.W₀.rank)
    (Φ₁ : WO B.V J.W → ℂ) (Φ₂ : WO J.W B'.V → ℂ) (φ : GA D B.A → ℂ) (k : GA D J.W) (a : ℂ) (ha : a ≠ 0)
    (h₁ : s₁.om (1, k) Φ₁ = a⁻¹ • Φ₁) (h₂ : s₂.om (k, 1) Φ₂ = a • Φ₂) (g : GA D B.V) (q₁ : GA D J.W) (q₂ : GA D B'.V) :
    Chain.hand s₁ s₂ l vL Φ₁ Φ₂ φ g (q₁ * k) q₂ = Chain.hand s₁ s₂ l vL Φ₁ Φ₂ φ g q₁ q₂ := by
  have e₁ : s₁.om (g, q₁ * k) Φ₁ = a⁻¹ • s₁.om (g, q₁) Φ₁ := by
    rw [show ((g, q₁ * k) : GA D B.V × GA D J.W) = (g, q₁) * (1, k) from by simp, map_mul, Module.End.mul_apply, h₁,
      LinearMap.map_smul]
  have e₂ : s₂.om (q₁ * k, q₂) Φ₂ = a • s₂.om (q₁, q₂) Φ₂ := by
    rw [show ((q₁ * k, q₂) : GA D J.W × GA D B'.V) = (q₁, q₂) * (k, 1) from by simp, map_mul, Module.End.mul_apply, h₂,
      LinearMap.map_smul]
  unfold Chain.hand
  rw [e₁, e₂, (GlobalTheory.HandHom.hand_hom D ψ σ B J B' s₁ s₂ l vL φ).1, inv_mul_cancel₀ ha, one_smul]

theorem integ_lev : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ k ∈ v.JG (j + 1), ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f (q₁ * k) q₂ = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv ht hF _ _ _ _ _ _ j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ _ G x a _ f _ k hk q₁ q₂
  obtain ⟨b, hb, l₁, l₂, -⟩ := hF.lawG j (by omega) k hk
  have hd : ∀ p, p ∈ w.Q → ¬ p ∈ v.gP := fun p hp => Finset.disjoint_left.1 hF.disjG hp
  have v₁ := ((GlobalTheory.DisjComb.main D c.ψ hc.std _ _ (· ∈ w.Q) (· ∈ v.gP) hd).2.1 (w.eQ j) (hF.atQ j).1).2 _ _ _
    (vac_of_all (· ∈ v.gP) hΨ₁)
  have v₂ := ((GlobalTheory.DisjComb.main D c.ψ hc.std _ _ (· ∈ w.Q) (· ∈ v.gP) hd).2.1 (w.eQ (j + 1)) (hF.atQ (j + 1)).1).2 _ _ _
    (vac_of_all (· ∈ v.gP) hΨ₂)
  have m₁ := l₁ _ v₁
  have m₂ := l₂ (by omega) _ v₂
  rw [← (ht.sBF j (σ + 1) h).1] at m₁
  rw [← (ht.sFB j σ h).1] at m₂
  unfold integ
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => ?_
  exact congrArg (fun y => w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ y (rTrans q₂ f))
    (hand_mul_right (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) _ _ (φ α) k b hb m₁ m₂ g q₁ q₂)

end GlobalTheory.DStepLev
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

namespace GlobalTheory.DStepOff

theorem vac_off {D : D7} {c : Comm D} {v : VCom c} {t : Tup c} {w : VTup t} (hc : c.Is) (hv : v.Is) (hf : VForm v w)
    (j : ℕ) (hj : j + 1 < D.R.m) (Ψ : WO (c.V j) (c.V (j + 1)) → ℂ)
    (hΨ : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ) :
    Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (offP v w) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ)) := by
  have h0 : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (offP v w) Ψ := by
    have h1 := (GlobalTheory.DisjComb.main D c.ψ hc.std (c.V j) (c.V (j + 1)) (offP v w) (fun p => ¬ offP v w p)
      (fun p hp hn => hn hp)).2.2.2.2 (v.N j) (v.N (j + 1)) Ψ (hv.sd j (by omega)) (hv.sd (j + 1) hj)
    have h2 : (fun p => offP v w p ∨ ¬ offP v w p) = fun _ : Pl D => True := by
      funext p; exact propext ⟨fun _ => trivial, fun _ => em _⟩
    rw [h2] at h1
    exact (h1.1 hΨ).1
  have hQ := ((GlobalTheory.DisjComb.main D c.ψ hc.std (c.V j) (c.V (j + 1)) (· ∈ w.Q) (offP v w)
    (fun p hp hn => hn.2 hp)).2.1 (w.eQ j) (hf.atQ j).1).2 _ _ _ h0
  exact ((GlobalTheory.DisjComb.main D c.ψ hc.std (c.V j) (c.V (j + 1)) (· ∈ v.gP) (offP v w)
    (fun p hp hn => hn.1 hp)).2.1 (v.eG j) (hv.atG j).1).2 _ _ _ hQ

theorem main : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ κ, InK (c.V (j + 1)) (v.N (j + 1)) (offP v w) κ → ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f (q₁ * κ) q₂ = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv ht hf _ hoff _ _ _ _ j σ h Ψ₁ Ψ₂ h₁ h₂ φ _ G x a _ f _ κ hκ q₁ q₂
  have k₁ := vac_off hc hv hf j (by omega) Ψ₁ h₁
  have k₂ := vac_off hc hv hf (j + 1) (by omega) Ψ₂ h₂
  obtain ⟨e₁, e₂⟩ := (hoff j σ h _ _ k₁ k₂).1 κ hκ
  have a₁ : ∀ g, t.om j (g, q₁ * κ) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) =
      t.om j (g, q₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) := by
    intro g
    have : ((g, q₁ * κ) : GA D (c.V j) × GA D (c.V (j + 1))) = (g, q₁) * (1, κ) := by simp
    rw [this, map_mul, Module.End.mul_apply, e₁]
  have a₂ : t.om (j + 1) (q₁ * κ, q₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) =
      t.om (j + 1) (q₁, q₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) := by
    have : ((q₁ * κ, q₂) : GA D (c.V (j + 1)) × GA D (c.V (j + 1 + 1))) = (q₁, q₂) * (κ, 1) := by simp
    rw [this, map_mul, Module.End.mul_apply, e₂]
  rw [← (ht.sBF j (σ + 1) h).1] at a₁
  rw [← (ht.sFB j σ h).1] at a₂
  unfold integ Chain.hand
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => ?_
  erw [a₁ g, a₂]

end GlobalTheory.DStepOff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeve =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeve", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFixedLevelElementEqProdLocalParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

namespace GlobalTheory.DStepLev

theorem per_hand_mul {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {σ : ℕ} {B : BesLev D (σ + 1)} {J : JacLev D (σ + 1)}
    {B' : BesLev D σ} (s₁ : StepBF ψ B J) (s₂ : StepFB ψ J B') (l : Link B B'.L B'.ζ) (vL : VolM D B'.L.rank J.W₀.rank)
    (Φ₁ : WO B.V J.W → ℂ) (Φ₂ : WO J.W B'.V → ℂ) (φ : GA D B.A → ℂ) (g : GA D B.V) (q₁ : GA D J.W) (q₂ k : GA D B'.V)
    (s : ℂ) (hs : s ≠ 0) (hom : s₂.om (1, k) Φ₂ = s⁻¹ • Φ₂) (f f' : GA D B'.V → ℂ) (hf : f' = s • f) :
    B'.per ψ (Chain.hand s₁ s₂ l vL Φ₁ Φ₂ φ g q₁ (q₂ * k)) f' = B'.per ψ (Chain.hand s₁ s₂ l vL Φ₁ Φ₂ φ g q₁ q₂) f := by
  have e : ((q₁, q₂ * k) : GA D J.W × GA D B'.V) = (q₁, q₂) * (1, k) := by simp
  have hh := GlobalTheory.HandHom.handFB_smul s₂ vL 1 s⁻¹
  simp only [one_smul, star_one, one_mul] at hh
  unfold Chain.hand
  rw [hf, e, map_mul, Module.End.mul_apply, hom, LinearMap.map_smul, GlobalTheory.HandHom.flatFB_smul, hh, GlobalTheory.HandHom.per_smul,
    inv_mul_cancel₀ hs, one_mul]

theorem rTrans_eigen {G : Type} [Group G] (a b k q : G) (F : G → ℂ) (s : ℂ) (hcm : a * k = k * a)
    (h : rTrans k (rTrans b F) = s • rTrans b F) :
    rTrans (q * k) (rTrans (a * b) F) = s • rTrans q (rTrans (a * b) F) := by
  funext g
  have := congrFun h (g * q * a)
  simp only [rTrans, Pi.smul_apply] at this ⊢
  rw [show g * (q * k) * (a * b) = g * q * a * k * b by
    rw [mul_assoc (g * q) a k, hcm]; simp only [mul_assoc], this]
  simp only [mul_assoc]

theorem vac_comb {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (hψ : IsStdChar D ψ (-1)) (S T : HSp D) (LS : Lat S) (LT : Lat T)
    (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) (P Q : Pl D → Prop) (hPQ : ∀ p, Q p → ¬ P p) (e : WO S T →₀ ℂ)
    (he : CombAt Q e) (f : WO S T → ℂ) (hf : Vac ψ S T LS LT (fun _ => True) f) : Vac ψ S T LS LT P (comb ψ S T e f) := by
  have h0 : Vac ψ S T LS LT P f := by
    have e : (fun p : Pl D => P p ∨ ¬ P p) = fun _ => True := by
      funext p; exact propext ⟨fun _ => trivial, fun _ => em _⟩
    refine (((GlobalTheory.DisjComb.main D ψ hψ S T P (fun p => ¬ P p) (fun p hp hq => hq hp)).2.2.2.2 LS LT f hS hT).1 ?_).1
    rw [e]; exact hf
  exact ((GlobalTheory.DisjComb.main D ψ hψ S T Q P hPQ).2.1 e he).2 _ _ _ h0



theorem integ_mul_level : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ k ∈ v.JG (j + 1 + 1), ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f q₁ (q₂ * k) = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv ht hF _ _ _ _ _ _ j σ h Ψ₁ Ψ₂ _ hΨ₂ φ _ G x a ha f hf k hk q₁ q₂
  have hlt : j + 1 + 1 < D.R.m := by omega
  obtain ⟨s, hs, h1, -, h3⟩ := hF.lawG (j + 1) hlt k hk
  have hom := h1 _ (vac_comb c.ψ hc.std _ _ _ _ (hv.sd (j + 1) (by omega)) (hv.sd (j + 1 + 1) hlt) (· ∈ v.gP) (· ∈ w.Q)
    (fun p hp => Finset.disjoint_left.1 hF.disjG hp) _ (hF.atQ (j + 1)).1 Ψ₂ hΨ₂)
  have hkf : k ∈ GfC _ := GlobalTheory.LevelCut.mem_GfC_of_grpAt _ _ k ((hv.JG _ hlt).1 hk)
  have hr : rTrans (q₂ * k) f = s • rTrans q₂ f := by
    rw [hf]; exact rTrans_eigen a _ k q₂ _ s (_root_.GlobalTheory.PointAtPlaceHom.comm_of_mem _ ha hkf) (h3 G x)
  rw [← (ht.sFB j σ h).1] at hom
  unfold integ
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => ?_
  exact congrArg (w.ε j α g * ·) (per_hand_mul (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) _ _ (φ α) g q₁ q₂ k
    s hs hom _ _ hr)

end GlobalTheory.DStepLev
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeve =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeveStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

noncomputable section

namespace GlobalTheory.DStepOffSnd

theorem vac_off {D : D7} {c : Comm D} (v : VCom c) {t : Tup c} (w : VTup t) (hc : c.Is) (hv : v.Is) (hw : VForm v w)
    (i : ℕ) (hi : i + 1 < D.R.m) (Ψ : WO (c.V i) (c.V (i + 1)) → ℂ)
    (hΨ : Vac c.ψ _ _ (v.N i) (v.N (i + 1)) (fun _ => True) Ψ) :
    Vac c.ψ _ _ (v.N i) (v.N (i + 1)) (offP v w) (comb c.ψ _ _ (v.eG i) (comb c.ψ _ _ (w.eQ i) Ψ)) := by
  first | exact _root_.GlobalTheory.DStepOff.vac_off | exact @_root_.GlobalTheory.DStepOff.vac_off | apply _root_.GlobalTheory.DStepOff.vac_off <;> assumption

theorem main : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ κ, InK (c.V (j + 1 + 1)) (v.N (j + 1 + 1)) (offP v w) κ → ∀ q₁ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f q₁ (q₂ * κ) = integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ := by
  intro D c v t w hc hv ht hw _ hoff _ _ _ _ j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ _ G x a ha f hf κ hκ q₁ q₂
  have hΦ₁ := vac_off v w hc hv hw j (by omega) Ψ₁ hΨ₁
  have hΦ₂ := vac_off v w hc hv hw (j + 1) (by omega) Ψ₂ hΨ₂
  have hfix := (hoff j σ h _ _ hΦ₁ hΦ₂).2.1 κ hκ
  have hom : t.om (j + 1) (q₁, q₂ * κ) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) =
      t.om (j + 1) (q₁, q₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) := by
    have e : ((q₁, q₂ * κ) : GA D (c.V (j + 1)) × GA D (c.V (j + 1 + 1))) = (q₁, q₂) * (1, κ) := by simp
    rw [e, map_mul, Module.End.mul_apply, hfix]
  have hrow : rTrans κ f = f := by
    rw [hf]; exact (hw.row (j + 1 + 1) (by omega) G x a ha).2 κ hκ
  have hr : rTrans (q₂ * κ) f = rTrans q₂ f := by
    conv_rhs => rw [← hrow]
    funext g; simp only [rTrans, mul_assoc]
  have hs := (ht.sFB j σ h).1
  have hom' : (t.sFB j σ h).om (q₁, q₂ * κ) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) =
      (t.sFB j σ h).om (q₁, q₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) := by
    rw [hs]; exact hom
  unfold integ Chain.hand
  rw [hr]
  refine Finset.sum_congr rfl fun α _ => Finset.sum_congr rfl fun g _ => ?_
  exact congrArg (fun Z => w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ
    (handFB (t.sFB j σ h) (c.vL j σ h) (handBF (t.sBF j (σ + 1) h) (c.lnk j σ h) (φ α) (flatBF (t.sBF j (σ + 1) h)
      ((t.sBF j (σ + 1) h).om (g, q₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁))))) (flatFB (t.sFB j σ h) Z))
      (rTrans q₂ f)) hom'

end GlobalTheory.DStepOffSnd

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAwayStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAwayStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAway\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

theorem _root_.GlobalTheory.T.exists_latticeStabilizer_twist_and_level_away : ∀ (D : D7) (V : HSp D) (L : Lat V) (gP Q : Finset (Pl D)) (JG : Subgroup (GA D V)), IsSelfDualC V L → Disjoint Q gP → JG ≤ grpAt V (· ∈ gP) → IsCompact (JG : Set (GA D V)) → IsOpen (((JG.subgroupOf (grpAt V (· ∈ gP))) : Subgroup _) : Set (grpAt V (· ∈ gP))) → ∃ K₁ K₂ : Subgroup (GA D V), (∀ g, g ∈ K₁ ↔ InK V L (· ∈ Q) g) ∧ K₁ ≤ grpAt V (· ∈ Q) ∧ K₂ ≤ grpAt V (· ∉ Q) ∧ IsCompact (K₁ : Set (GA D V)) ∧ IsCompact (K₂ : Set (GA D V)) ∧ IsOpen ((K₁.subgroupOf (grpAt V (· ∈ Q)) : Subgroup _) : Set (grpAt V (· ∈ Q))) ∧ IsOpen ((K₂.subgroupOf (grpAt V (· ∉ Q)) : Subgroup _) : Set (grpAt V (· ∉ Q))) ∧ (∀ g, g ∈ K₂ ↔ ∃ κ, InK V L (fun p => p ∉ gP ∧ p ∉ Q) κ ∧ ∃ k ∈ JG, g = κ * k) ∧ ∀ g, (∃ a ∈ K₁, ∃ b ∈ K₂, g = a * b) ↔ ∃ κ, InK V L (· ∉ gP) κ ∧ ∃ k ∈ JG, g = κ * k := by
  first | exact @GlobalTheory.CellLevels.levels
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAwayStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotientStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotientStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.integral_quotient_eq_integral_factor_quotient : ∀ (H : Type) [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [SecondCountableTopology H] [LocallyCompactSpace H] [T2Space H] [MeasurableSpace H] [BorelSpace H] (G G₁ G₂ R K₁ K₂ : Subgroup H), IsClosed (G : Set H) → IsClosed (G₁ : Set H) → IsClosed (G₂ : Set H) → IsClosed (R : Set H) → G₁ ≤ G → G₂ ≤ G → (∀ a ∈ G₁, ∀ b ∈ G₂, a * b = b * a) → (∃ e : (G₁ × G₂) ≃ₜ G, ∀ p, (e p : H) = p.1 * p.2) → (∀ a ∈ G₁, ∀ b ∈ G₂, a * b ∈ R → a ∈ R ∧ b ∈ R) → K₁ ≤ G₁ → K₂ ≤ G₂ → IsCompact (K₁ : Set H) → IsCompact (K₂ : Set H) → IsOpen ((K₁.subgroupOf G₁ : Subgroup G₁) : Set G₁) → IsOpen ((K₂.subgroupOf G₂ : Subgroup G₂) : Set G₂) → ∀ (ρ : Measure (R.subgroupOf G)) (μ : Measure G) (ρ₁ : Measure (R.subgroupOf G₁)) (μ₁ : Measure G₁), ρ.IsHaarMeasure → μ.IsHaarMeasure → ρ₁.IsHaarMeasure → μ₁.IsHaarMeasure → ρ.IsInvInvariant → μ₁ {g | g.1 ∈ K₁} = 1 → ρ₁ {g | g.1.1 ∈ K₁} = 1 → ∀ (f : H → ℂ) (z : ℂ), (∀ r ∈ R, r ∈ G → ∀ g ∈ G, f (r * g) = f g) → (∀ k ∈ K₂, ∀ g ∈ G, f (g * k) = f g) → (∀ g ∈ G, f g ≠ 0 → ∃ r ∈ R, r ∈ G ∧ ∃ x ∈ G₁, ∃ k ∈ K₂, g = r * x * k) → IsQuotIntL1 ρ₁ μ₁ (fun x => f x.1) z → IsQuotIntL1 ρ μ (fun g => f g.1) (((μ.real {g | ∃ a ∈ K₁, ∃ b ∈ K₂, g.1 = a * b} / ρ.real {g | ∃ a ∈ K₁, ∃ b ∈ K₂, g.1.1 = a * b} : ℝ) : ℂ) * z) := by
  first | exact @GlobalTheory.CollapseFactor.collapse_factor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotientStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBesselStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBesselStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBessel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBesselStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacob =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacob", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapHandedFunctionVanishingPeriodInvariant\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAway\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

namespace GlobalTheory.DStepSupp

variable {D : D7}

theorem mem_cong {V : HSp D} {I : Ideal (AE D)} {g : GA D V}
    (h : ∀ i j, mt V g i j - (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) i j ∈ I) : g ∈ congGrp V I := by
  unfold congGrp
  rw [MonoidHom.mem_ker]
  ext i j
  have := h i j
  rw [← Ideal.Quotient.eq] at this
  simp [Formalism.L2.Theta.mt, Matrix.one_apply] at this ⊢
  exact this

theorem off_union {V : HSp D} {P P' R : Pl D → Prop} (hR : ∀ p, R p → P p ∨ P' p) {g : GA D V} (h : g ∈ grpOff V P)
    (h' : g ∈ grpOff V P') : g ∈ grpOff V R := by
  refine mem_cong fun i j => ?_
  have a := GlobalTheory.DisjComb.mem_congGrp' h i j
  have b := GlobalTheory.DisjComb.mem_congGrp' h' i j
  unfold idOff at a b ⊢
  simp only [Submodule.mem_iInf] at a b ⊢
  intro u
  rcases hR u.1 u.2 with k | k
  · exact a ⟨u.1, k⟩
  · exact b ⟨u.1, k⟩

theorem at_le_off (V : HSp D) {P P' : Pl D → Prop} (h : ∀ p, P p → ¬ P' p) : grpAt V P ≤ grpOff V P' :=
  (GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V ∅).2.2.2.2.2.2.1 P P' h

theorem at_eq (V : HSp D) (P : Pl D → Prop) : grpAt V P = GfC V ⊓ grpOff V (fun p => ¬ P p) := by
  rw [(GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V ∅).2.2.2.2.2.2.2.1]
  simp only [not_not]

theorem split_two (V : HSp D) (A B : Finset (Pl D)) {x : GA D V} (hx : x ∈ GfC V)
    (ho : x ∈ grpOff V (fun p => p ∉ A ∧ p ∉ B)) :
    ∃ a ∈ grpAt V (· ∈ A), ∃ b ∈ grpAt V (· ∈ B), b ∈ grpAt V (· ∉ A) ∧ x = a * b := by
  obtain ⟨e, he⟩ := (GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V A).2.2.2.2.2.1
  obtain ⟨⟨a, b⟩, hab⟩ := e.surjective ⟨x, hx⟩
  have h1 : x = a.1 * b.1 := by
    have := he (a, b)
    rw [hab] at this
    exact this
  refine ⟨a.1, a.2, b.1, ?_, b.2, h1⟩
  rw [at_eq]
  refine ⟨_root_.GlobalTheory.FinPl.SetCut.grpAt_le_GfC V _ b.2, ?_⟩
  have hb1 : b.1 ∈ grpOff V (fun p => p ∉ A ∧ p ∉ B) := by
    have : b.1 = a.1⁻¹ * x := by rw [h1]; group
    rw [this]
    exact mul_mem (inv_mem (at_le_off V (fun p hp hn => hn.1 hp) a.2)) ho
  have hb2 : b.1 ∈ grpOff V (· ∈ A) := at_le_off V (fun p hp hn => hp hn) b.2
  refine off_union (fun p hp => ?_) hb1 hb2
  by_cases h : p ∈ A
  · exact Or.inr h
  · exact Or.inl ⟨h, hp⟩

theorem vac_om {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {χS χT : (AE D)ˣ →* Circle} {om : Om S T}
    (hW : IsWeilDatumO ψ S T χS χT om) {LS : Lat S} {LT : Lat T} {P : Pl D → Prop} {f : WO S T → ℂ}
    (hf : Vac ψ S T LS LT P f) {g : GA D S} {h : GA D T} (hg : g ∈ grpOff S P) (hh : h ∈ grpOff T P) :
    Vac ψ S T LS LT P (om (g, h) f) := by
  have key : ∀ u ∈ latO S T (LS : Set _) (LT : Set _) P, heisO ψ S T u f = f →
      heisO ψ S T u (om (g, h) f) = om (g, h) f := by
    intro u hu e
    have := hW.om_heis g h u f hf.1
    rw [GlobalTheory.DisjComb.actO_off hg hh (GlobalTheory.FinPl.LatMem.latO_mxAt hu), e] at this
    exact this.symm
  refine ⟨hW.om_pres _ _ hf.1, fun u hu => key _ (AddSubgroup.nsmul_mem _ hu 2) (hf.2.1 u hu),
    fun e he u hu hh' => key u hu (hf.2.2 e he u hu hh')⟩

theorem vac_mono {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} {P Q : Pl D → Prop}
    (hQ : ∀ p, Q p → P p) {f : WO S T → ℂ} (hf : Vac ψ S T LS LT P f) : Vac ψ S T LS LT Q f := by
  have hm : latO S T (LS : Set _) (LT : Set _) Q ≤ latO S T (LS : Set _) (LT : Set _) P := by
    apply AddSubgroup.closure_mono
    rintro w ⟨α, hα, hv, rest⟩
    exact ⟨α, hα, fun v hv' => hv v fun hq => hv' (hQ v hq), rest⟩
  exact ⟨hf.1, fun u hu => hf.2.1 u (hm hu), fun e he u hu => hf.2.2 e he u (hm hu)⟩

theorem main : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ q₁ ∈ GfC (c.V (j + 1)), ∀ q₂, integ v w j σ h Ψ₁ Ψ₂ φ f q₁ q₂ ≠ 0 → ∃ r ∈ jacGrp (c.jac j (σ + 1) h).d, r ∈ GfC (c.V (j + 1)) ∧ ∃ y ∈ grpAt (c.V (j + 1)) (· ∈ w.Q), ∃ κ, InK (c.V (j + 1)) (v.N (j + 1)) (offP v w) κ ∧ ∃ k ∈ v.JG (j + 1), q₁ = r * y * (κ * k) := by
  intro D c v t w hc hv ht hf _ hoff hG _ _ _ j σ h Ψ₁ Ψ₂ h₁ h₂ φ _ G x a _ f _ q₁ hq₁ q₂ hne
  have DC := GlobalTheory.DisjComb.main D c.ψ hc.std (c.V j) (c.V (j + 1))
  have hom := (ht.sBF j (σ + 1) h).1
  have hW : IsWeilDatumO c.ψ (c.V j) (c.V (j + 1)) (t.sBF j (σ + 1) h).χV (t.sBF j (σ + 1) h).χW (t.om j) := by
    rw [← hom]; exact (t.sBF j (σ + 1) h).weil
  have hGQ : ∀ p, p ∈ w.Q → p ∉ v.gP := fun p hp => Finset.disjoint_left.1 hf.disjG hp

  obtain ⟨g, hg, hflat⟩ : ∃ g ∈ grpAt (c.V j) (· ∈ w.Q), flatBF (t.sBF j (σ + 1) h)
      (t.om j (g, q₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁))) ≠ 0 := by
    unfold integ at hne
    obtain ⟨α, -, hα⟩ := Finset.exists_ne_zero_of_sum_ne_zero hne
    obtain ⟨g, hg, hg'⟩ := Finset.exists_ne_zero_of_sum_ne_zero hα
    refine ⟨g, (hf.e j α).2 g hg, fun h0 => hg' ?_⟩
    rw [← hom] at h0
    have H := GlobalTheory.HandHom.hand_hom D c.ψ σ _ _ _ (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (φ α)
    unfold Chain.hand
    erw [h0, H.2.1]
    have := H.2.2 0 1 0 (rTrans q₂ f)
    rw [zero_smul, one_smul, zero_mul, zero_mul] at this
    erw [this, mul_zero]

  have vQ : ∀ P : Pl D → Prop, (∀ p, p ∈ w.Q → ¬ P p) →
      Vac c.ψ _ _ (v.N j) (v.N (j + 1)) P (comb c.ψ _ _ (w.eQ j) Ψ₁) := fun P hP =>
    ((DC (· ∈ w.Q) P hP).2.1 (w.eQ j) (hf.atQ j).1).2 _ _ _ (vac_mono (fun _ _ => trivial) h₁)
  have k₁ : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (offP v w) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) :=
    ((DC (· ∈ v.gP) (offP v w) (fun p hp hn => hn.1 hp)).2.1 (v.eG j) (hv.atG j).1).2 _ _ _
      (vQ _ fun p hp hn => hn.2 hp)
  have k₂ : ∀ P, Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) P Ψ₂ := fun P => vac_mono (fun _ _ => trivial) h₂
  have k₁' := vac_om hW k₁ (at_le_off _ (fun p hp hn => hn.2 hp) hg) (one_mem (grpOff (c.V (j + 1)) (offP v w)))
  have mulom : ∀ (g₁ g₂ : GA D (c.V j)) (y₁ y₂ : GA D (c.V (j + 1))) (Φ : WO (c.V j) (c.V (j + 1)) → ℂ),
      t.om j (g₁ * g₂, y₁ * y₂) Φ = t.om j (g₁, y₁) (t.om j (g₂, y₂) Φ) := by
    intro g₁ g₂ y₁ y₂ Φ
    rw [← Prod.mk_mul_mk, map_mul, Module.End.mul_apply]
  obtain ⟨r, hr, hrP, z, hz, κ, hκ, hdec⟩ := (hoff j σ h _ _ k₁' (k₂ _)).2.2.1 q₁ (by
    rw [← mulom, one_mul, mul_one]; exact hflat)
  have hzf : z ∈ GfC (c.V (j + 1)) := by
    have : z = r⁻¹ * q₁ * κ⁻¹ := by rw [hdec]; group
    rw [this]
    exact mul_mem (mul_mem (inv_mem (_root_.GlobalTheory.FinPl.SetCut.grpAt_le_GfC _ _ hrP)) hq₁) (inv_mem (_root_.GlobalTheory.FinPl.SetCut.grpAt_le_GfC _ _ hκ.1))
  obtain ⟨s, hs, y, hy, hy', hzs⟩ := split_two (c.V (j + 1)) v.gP w.Q hzf hz

  have e₁ := ((hoff j σ h _ _ k₁ (k₂ _)).1 κ hκ).1
  have hgo : g ∈ grpOff (c.V j) (· ∈ v.gP) := at_le_off _ hGQ hg
  have hyo : y ∈ grpOff (c.V (j + 1)) (· ∈ v.gP) := at_le_off _ hGQ hy
  have vG := vQ (· ∈ v.gP) hGQ
  have e₂ := (DC (· ∈ v.gP) (fun _ => False) (fun _ _ => id)).2.2.1 _ _ _ hW (v.eG j) (hv.atG j).1 g hgo y hyo _ vG.1
  have e₃ : t.om j (g, q₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) =
      t.om j (1, r) (t.om j (1, s) (comb c.ψ _ _ (v.eG j) (t.om j (g, y) (comb c.ψ _ _ (w.eQ j) Ψ₁)))) := by
    rw [← e₂]
    conv_rhs => rw [← e₁]
    rw [← mulom, ← mulom, ← mulom, hdec, hzs]
    simp only [one_mul, mul_one, mul_assoc]
  have th : IsThetaFunO c.ψ _ _ (t.om j (1, s) (comb c.ψ _ _ (v.eG j) (t.om j (g, y) (comb c.ψ _ _ (w.eQ j) Ψ₁)))) := by
    rw [← e₂]
    exact hW.om_pres _ _ (hW.om_pres _ _ k₁.1)
  have hfl : flatBF (t.sBF j (σ + 1) h)
      (t.om j (1, s) (comb c.ψ _ _ (v.eG j) (t.om j (g, y) (comb c.ψ _ _ (w.eQ j) Ψ₁)))) ≠ 0 := by
    intro h0
    apply hflat
    have := ((_root_.GlobalTheory.FlatRInv.vanish_invariant D c.ψ (offP v w)).1 _ _ _ (t.sBF j (σ + 1) h) _ th r hr hrP).2 h0
    rw [hom] at this
    rw [e₃]
    exact this
  obtain ⟨r', hr', hr'P, k, hk, hsk⟩ := (hG j σ h _ _ (vac_om hW vG hgo hyo) (k₂ _)).1 s hs hfl
  refine ⟨r * r', mul_mem hr hr', mul_mem (_root_.GlobalTheory.FinPl.SetCut.grpAt_le_GfC _ _ hrP) (_root_.GlobalTheory.FinPl.SetCut.grpAt_le_GfC _ _ hr'P), y, hy, κ, hκ, k, hk, ?_⟩
  have hkP : k ∈ grpAt (c.V (j + 1)) (· ∈ v.gP) := (hv.JG (j + 1) (by omega)).1 hk
  have hcm := (GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V (j + 1)) v.gP).2.2.2.2.1 k hkP (y * κ)
    (mul_mem hy' (GlobalTheory.CellLevels.grpAt_le_of_imp _ (fun p hp => hp.1) hκ.1))
  rw [hdec, hzs, hsk]
  calc r * (r' * k * y) * κ = r * r' * (k * (y * κ)) := by group
    _ = r * r' * y * (κ * k) := by rw [hcm]; group

end GlobalTheory.DStepSupp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacob =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacobStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacobStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceAlt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacob\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacobStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\nimport Development.AbelianVarietyTheory.Definitions.Foundations.ExistsUniqueIsProdMeasureFinAway\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantBesselSecondStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandLeftInvariantFourierJacobiFirStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstFixedLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantFirstOffLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondFixedLeveStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepIntegrandRightInvariantSecondOffLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLatticeStabilizerTwistAndLevelAwayStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegralQuotientEqIntegralFactorQuotientStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffBesselStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepIntegrandVanishesOffFourierJacobStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryAdelicInfFinSplitPeriodsUnimodularStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentAnisotropicProjectionEqOne\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.T2SpaceCmHostAdeles\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DStepCell

noncomputable section

namespace GlobalTheory.DStepCell



theorem cell_collapse : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → WeilOK (t := t) v → OffLaw v w → GSupp (t := t) v → QFin v w → ContrLaw D → FlatLaw D → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) ρ₁ μ₁ ρ₂ μ₂, IsNormAt (c.V (j + 1)) (jacGrp (c.jac j (σ + 1) h).d) (v.N (j + 1)) (· ∈ w.Q) ρ₁ μ₁ → IsNormAt (c.V (j + 1 + 1)) (besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o) (v.N (j + 1 + 1)) (· ∈ w.Q) ρ₂ μ₂ → ∀ Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) Ψ₂ → ∀ φ : t.Ch j → GA D (c.X j) → ℂ, (∀ α, φ α ∈ v.RamAd j) → ∀ (G : t.CC (j + 1 + 1)) x, ∀ a ∈ GinfC _, ∀ f, f = rTrans (a * v.b (j + 1 + 1)) (G.1 x) → ∀ z, Iter2 ρ₁ μ₁ ρ₂ μ₂ (fun q₁ q₂ : _ => ∑ α, ∑ g ∈ (w.ε j α).support, w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ (Chain.hand (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) (φ α) g q₁.1 q₂.1) (rTrans q₂.1 f)) z → Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) (fun q₁ q₂ : _ => ∑ α, ∑ g ∈ (w.ε j α).support, w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ (Chain.hand (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) (φ α) g q₁.1 q₂.1) (rTrans q₂.1 f)) (v.kap j σ h * z) := by
  classical
  intro D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h ρ₁ μ₁ ρ₂ μ₂ hN₁ hN₂ Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf z hz
  change Iter2 ρ₁ μ₁ ρ₂ μ₂ (fun q₁ q₂ => integ v w j σ h Ψ₁ Ψ₂ φ f q₁.1 q₂.1) z at hz
  change Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1))
    (fun q₁ q₂ => integ v w j σ h Ψ₁ Ψ₂ φ f q₁.1 q₂.1) (v.kap j σ h * z)
  have hA1 := _root_.GlobalTheory.DStepCell.LeftOne.main D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hA2 := _root_.GlobalTheory.DStepOff.main D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hA3 := _root_.GlobalTheory.DStepLev.integ_lev D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hB := _root_.GlobalTheory.DStepSupp.main D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hC1 := _root_.GlobalTheory.DStepCell.LeftSecond.integ_left_second D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hC2 := _root_.GlobalTheory.DStepOffSnd.main D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hC3 := _root_.GlobalTheory.DStepLev.integ_mul_level D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  have hC4 := _root_.GlobalTheory.DStepSuppSecond.integ_support D c v t w hc hv ht hVF hWe hOff hGS hQF hCL hFL j σ h Ψ₁ Ψ₂ hΨ₁ hΨ₂ φ hφ G x a ha f hf
  set F := integ v w j σ h Ψ₁ Ψ₂ φ f with hFdef
  obtain ⟨f₁', hf₁', hinn⟩ := hz

  obtain ⟨-, hfc₁, -, -, -, hd₁⟩ := GlobalTheory.T.unitaryAdelic_inf_fin_split_periods_unimodular D (c.V (j + 1))
  obtain ⟨-, hfc₂, -, -, -, hd₂⟩ := GlobalTheory.T.unitaryAdelic_inf_fin_split_periods_unimodular D (c.V (j + 1 + 1))
  have invJ : (c.ρJ j (σ + 1) h).IsInvInvariant := (hd₁ _ _ (c.jac j (σ + 1) h).d).1.2.2 _ (hc.ρJ j (σ + 1) h)
  have invB : (c.ρB (j + 1 + 1) σ (idx_step h)).IsInvInvariant :=
    ((hd₂ _ _ (c.bes (j + 1 + 1) σ (idx_step h)).d).2 _ _ (c.bes (j + 1 + 1) σ (idx_step h)).o).2.2 _ (hc.ρB _ _ _)
  obtain ⟨hQc₁, hQ'c₁, hQle₁, hQ'le₁, hcm₁, he₁, -, -, -, hR₁⟩ := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V (j + 1)) w.Q
  obtain ⟨hQc₂, hQ'c₂, hQle₂, hQ'le₂, hcm₂, he₂, -, -, -, hR₂⟩ := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V (j + 1 + 1)) w.Q
  have splitJ := (hR₁ _ _ (c.jac j (σ + 1) h).d).1
  have splitB := (hR₂ _ _ (c.bes (j + 1 + 1) σ (idx_step h)).d).2 _ _ (c.bes (j + 1 + 1) σ (idx_step h)).o
  have hJcl := GlobalTheory.jacGrp_isClosed D _ _ _ (c.jac j (σ + 1) h).d
  have hBcl := GlobalTheory.BesClosed.besGrp_isClosed D _ _ _ _ _ (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o

  obtain ⟨hJG₁, hJG₁c, hJG₁o⟩ := hv.JG (j + 1) (by omega)
  obtain ⟨hJG₂, hJG₂c, hJG₂o⟩ := hv.JG (j + 1 + 1) (by omega)
  obtain ⟨K₁, K₂, hK₁, hK₁Q, hK₂Q, hK₁c, hK₂c, hK₁o, hK₂o, hK₂, hKK⟩ :=
    GlobalTheory.T.exists_latticeStabilizer_twist_and_level_away D _ (v.N (j + 1)) v.gP w.Q (v.JG (j + 1)) (hv.sd _ (by omega)) hVF.disjG hJG₁ hJG₁c hJG₁o
  obtain ⟨K₁', K₂', hK₁', hK₁Q', hK₂Q', hK₁c', hK₂c', hK₁o', hK₂o', hK₂', hKK'⟩ :=
    GlobalTheory.T.exists_latticeStabilizer_twist_and_level_away D _ (v.N (j + 1 + 1)) v.gP w.Q (v.JG (j + 1 + 1)) (hv.sd _ (by omega)) hVF.disjG hJG₂ hJG₂c hJG₂o
  have hμ₁K : μ₁ {g | (g : GA D (c.V (j + 1))) ∈ K₁} = 1 := by
    rw [show {g : grpAt (c.V (j + 1)) (· ∈ w.Q) | (g : GA D (c.V (j + 1))) ∈ K₁} =
      {g | InK _ (v.N (j + 1)) (· ∈ w.Q) g.1} from Set.ext fun g => hK₁ g.1]
    exact hN₁.2.2.1
  have hρ₁K : ρ₁ {g | ((g : grpAt (c.V (j + 1)) (· ∈ w.Q)) : GA D (c.V (j + 1))) ∈ K₁} = 1 := by
    rw [show {g : (jacGrp (c.jac j (σ + 1) h).d).subgroupOf (grpAt (c.V (j + 1)) (· ∈ w.Q)) |
      ((g : grpAt (c.V (j + 1)) (· ∈ w.Q)) : GA D (c.V (j + 1))) ∈ K₁} =
      {g | InK _ (v.N (j + 1)) (· ∈ w.Q) g.1.1} from Set.ext fun g => hK₁ g.1.1]
    exact hN₁.2.2.2
  have hμ₂K : μ₂ {g | (g : GA D (c.V (j + 1 + 1))) ∈ K₁'} = 1 := by
    rw [show {g : grpAt (c.V (j + 1 + 1)) (· ∈ w.Q) | (g : GA D (c.V (j + 1 + 1))) ∈ K₁'} =
      {g | InK _ (v.N (j + 1 + 1)) (· ∈ w.Q) g.1} from Set.ext fun g => hK₁' g.1]
    exact hN₂.2.2.1
  have hρ₂K : ρ₂ {g | ((g : grpAt (c.V (j + 1 + 1)) (· ∈ w.Q)) : GA D (c.V (j + 1 + 1))) ∈ K₁'} = 1 := by
    rw [show {g : (besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o).subgroupOf
        (grpAt (c.V (j + 1 + 1)) (· ∈ w.Q)) |
      ((g : grpAt (c.V (j + 1 + 1)) (· ∈ w.Q)) : GA D (c.V (j + 1 + 1))) ∈ K₁'} =
      {g | InK _ (v.N (j + 1 + 1)) (· ∈ w.Q) g.1.1} from Set.ext fun g => hK₁' g.1.1]
    exact hN₂.2.2.2

  have hinner : ∀ q₁ : grpAt (c.V (j + 1)) (· ∈ w.Q), IsQuotIntL1 (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1))
      (fun g => F q₁.1 g.1) (v.vr (j + 1 + 1) _ (c.ρB (j + 1 + 1) σ (idx_step h)) * f₁' q₁) := by
    intro q₁
    have hl : ∀ r ∈ besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o,
        r ∈ GfC (c.V (j + 1 + 1)) → ∀ g ∈ GfC (c.V (j + 1 + 1)), F q₁.1 (r * g) = F q₁.1 g :=
      fun r hr _ g _ => hC1 r hr q₁.1 g
    have hr : ∀ k ∈ K₂', ∀ g ∈ GfC (c.V (j + 1 + 1)), F q₁.1 (g * k) = F q₁.1 g := by
      intro k hk g _
      obtain ⟨κ, hκ, k', hk', rfl⟩ := (hK₂' k).1 hk
      rw [← mul_assoc, hC3 k' hk', hC2 κ hκ]
    have hs : ∀ g ∈ GfC (c.V (j + 1 + 1)), F q₁.1 g ≠ 0 → ∃ r ∈ besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d
        (c.bes (j + 1 + 1) σ (idx_step h)).o, r ∈ GfC (c.V (j + 1 + 1)) ∧ ∃ y ∈ grpAt (c.V (j + 1 + 1)) (· ∈ w.Q),
        ∃ k ∈ K₂', g = r * y * k := by
      intro g hg hne
      obtain ⟨r, hr, hrG, y, hy, κ, hκ, k, hk, e⟩ := hC4 q₁.1 q₁.2 g hg hne
      exact ⟨r, hr, hrG, y, hy, κ * k, (hK₂' _).2 ⟨κ, hκ, k, hk, rfl⟩, e⟩
    have H := GlobalTheory.T.integral_quotient_eq_integral_factor_quotient (GA D (c.V (j + 1 + 1))) (GfC _) (grpAt _ (· ∈ w.Q)) (grpAt _ (· ∉ w.Q))
      (besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o) K₁' K₂'
      hfc₂ hQc₂ hQ'c₂ hBcl hQle₂ hQ'le₂ hcm₂ he₂ splitB hK₁Q' hK₂Q' hK₁c' hK₂c' hK₁o' hK₂o'
      (c.ρB _ _ _) (c.μf _) ρ₂ μ₂ (hc.ρB _ _ _) (hc.μf _) hN₂.2.1 hN₂.1 invB hμ₂K hρ₂K (F q₁.1) (f₁' q₁) hl hr hs (hinn q₁)
    have e1 : {g : GfC (c.V (j + 1 + 1)) | ∃ a ∈ K₁', ∃ b ∈ K₂', (g : GA D (c.V (j + 1 + 1))) = a * b} =
        {g | g.1 ∈ v.K (j + 1 + 1)} := Set.ext fun g => hKK' g.1
    have e2 : {g : (besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o).subgroupOf
        (GfC (c.V (j + 1 + 1))) | ∃ a ∈ K₁', ∃ b ∈ K₂', ((g : GfC (c.V (j + 1 + 1))) : GA D (c.V (j + 1 + 1))) = a * b} =
        {g | g.1.1 ∈ v.K (j + 1 + 1)} := Set.ext fun g => hKK' g.1.1
    rw [e1, e2] at H
    exact H

  haveI : LocallyCompactSpace (GfC (c.V (j + 1 + 1))) := hfc₂.locallyCompactSpace
  haveI := hc.μf (j + 1 + 1)
  haveI := hc.ρB (j + 1 + 1) σ (idx_step h)
  haveI := invB
  have hBcl' : IsClosed (((besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o).subgroupOf
      (GfC (c.V (j + 1 + 1))) : Subgroup _) : Set (GfC (c.V (j + 1 + 1)))) := hBcl.preimage continuous_subtype_val
  have huniq : ∀ (Φ : GfC (c.V (j + 1 + 1)) → ℂ) (z₁ z₂ : ℂ), IsQuotIntL1 (c.ρB (j + 1 + 1) σ (idx_step h))
      (c.μf (j + 1 + 1)) Φ z₁ → IsQuotIntL1 (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) Φ z₂ → z₁ = z₂ :=
    fun Φ z₁ z₂ h1 h2 => IsQuotIntL1.unique hBcl' h1 h2

  have hex : ∀ q : GfC (c.V (j + 1)), ∃ z', IsQuotIntL1 (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1))
      (fun g => F q.1 g.1) z' := by
    intro q
    by_cases hq : ∃ q₂, F q.1 q₂ ≠ 0
    · obtain ⟨q₂, hq₂⟩ := hq
      obtain ⟨r, hr, -, y, hy, κ, hκ, k, hk, e⟩ := hB q.1 q.2 q₂ hq₂
      have e' : F q.1 = F y := funext fun q₂ => by rw [e, ← mul_assoc, hA3 k hk, hA2 κ hκ, hA1 r hr]
      exact ⟨_, by rw [e']; exact hinner ⟨y, hy⟩⟩
    · push_neg at hq
      refine ⟨0, ?_⟩
      have e : (fun g : GfC (c.V (j + 1 + 1)) => F q.1 g.1) = 0 := funext fun g => hq g.1
      rw [e]
      exact IsQuotIntL1.zero
  let fo : GA D (c.V (j + 1)) → ℂ := fun y => if hy : y ∈ GfC (c.V (j + 1)) then (hex ⟨y, hy⟩).choose else 0
  have hfo_spec : ∀ y (hy : y ∈ GfC (c.V (j + 1))), IsQuotIntL1 (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1))
      (fun g => F y g.1) (fo y) := by
    intro y hy
    have e : fo y = (hex ⟨y, hy⟩).choose := dif_pos hy
    rw [e]
    exact (hex ⟨y, hy⟩).choose_spec
  have hleft : ∀ r ∈ jacGrp (c.jac j (σ + 1) h).d, r ∈ GfC (c.V (j + 1)) → ∀ g ∈ GfC (c.V (j + 1)), fo (r * g) = fo g := by
    intro r hr hrG g hg
    have e : F (r * g) = F g := funext fun q₂ => hA1 r hr g q₂
    have h1 := hfo_spec _ (mul_mem hrG hg)
    rw [e] at h1
    exact huniq _ _ _ h1 (hfo_spec g hg)
  have hright : ∀ k ∈ K₂, ∀ g ∈ GfC (c.V (j + 1)), fo (g * k) = fo g := by
    intro k hk g hg
    have hkG : k ∈ GfC (c.V (j + 1)) := hQ'le₁ (hK₂Q hk)
    obtain ⟨κ, hκ, k', hk', e0⟩ := (hK₂ k).1 hk
    have e : F (g * k) = F g := funext fun q₂ => by rw [e0, ← mul_assoc, hA3 k' hk', hA2 κ hκ]
    have h1 := hfo_spec _ (mul_mem hg hkG)
    rw [e] at h1
    exact huniq _ _ _ h1 (hfo_spec g hg)
  have hsupp : ∀ g ∈ GfC (c.V (j + 1)), fo g ≠ 0 → ∃ r ∈ jacGrp (c.jac j (σ + 1) h).d, r ∈ GfC (c.V (j + 1)) ∧
      ∃ y ∈ grpAt (c.V (j + 1)) (· ∈ w.Q), ∃ k ∈ K₂, g = r * y * k := by
    intro g hg hne
    have hq : ∃ q₂, F g q₂ ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      apply hne
      have e : (fun g' : GfC (c.V (j + 1 + 1)) => F g g'.1) = 0 := funext fun g' => hcon g'.1
      have h0 := hfo_spec g hg
      rw [e] at h0
      exact huniq _ _ _ h0 IsQuotIntL1.zero
    obtain ⟨q₂, hq₂⟩ := hq
    obtain ⟨r, hr, hrG, y, hy, κ, hκ, k, hk, e⟩ := hB g hg q₂ hq₂
    exact ⟨r, hr, hrG, y, hy, κ * k, (hK₂ _).2 ⟨κ, hκ, k, hk, rfl⟩, e⟩
  have hint : IsQuotIntL1 ρ₁ μ₁ (fun y : grpAt (c.V (j + 1)) (· ∈ w.Q) => fo y.1)
      (v.vr (j + 1 + 1) _ (c.ρB (j + 1 + 1) σ (idx_step h)) * z) := by
    have e : (fun y : grpAt (c.V (j + 1)) (· ∈ w.Q) => fo y.1) =
        v.vr (j + 1 + 1) _ (c.ρB (j + 1 + 1) σ (idx_step h)) • f₁' := funext fun y => by
      rw [Pi.smul_apply, smul_eq_mul]
      exact huniq _ _ _ (hfo_spec y.1 (hQle₁ y.2)) (hinner y)
    rw [e]
    exact hf₁'.smul _
  have Hout := GlobalTheory.T.integral_quotient_eq_integral_factor_quotient (GA D (c.V (j + 1))) (GfC _) (grpAt _ (· ∈ w.Q)) (grpAt _ (· ∉ w.Q))
    (jacGrp (c.jac j (σ + 1) h).d) K₁ K₂ hfc₁ hQc₁ hQ'c₁ hJcl hQle₁ hQ'le₁ hcm₁ he₁ splitJ hK₁Q hK₂Q hK₁c hK₂c hK₁o hK₂o
    (c.ρJ j (σ + 1) h) (c.μf _) ρ₁ μ₁ (hc.ρJ _ _ _) (hc.μf _) hN₁.2.1 hN₁.1 invJ hμ₁K hρ₁K fo _ hleft hright hsupp hint
  have e1 : {g : GfC (c.V (j + 1)) | ∃ a ∈ K₁, ∃ b ∈ K₂, (g : GA D (c.V (j + 1))) = a * b} =
      {g | g.1 ∈ v.K (j + 1)} := Set.ext fun g => hKK g.1
  have e2 : {g : (jacGrp (c.jac j (σ + 1) h).d).subgroupOf (GfC (c.V (j + 1))) |
      ∃ a ∈ K₁, ∃ b ∈ K₂, ((g : GfC (c.V (j + 1))) : GA D (c.V (j + 1))) = a * b} =
      {g | g.1.1 ∈ v.K (j + 1)} := Set.ext fun g => hKK g.1.1
  rw [e1, e2] at Hout
  refine ⟨fun q => fo q.1, ?_, fun q => hfo_spec q.1 q.2⟩
  have ek : v.kap j σ h * z = v.vr (j + 1) _ (c.ρJ j (σ + 1) h) * (v.vr (j + 1 + 1) _ (c.ρB (j + 1 + 1) σ (idx_step h)) * z) := by
    unfold VCom.kap; ring
  rw [ek]
  exact Hout

end GlobalTheory.DStepCell

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceBis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceBis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceBis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryAdelicInfFinSplitPeriodsUnimodularStatement\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
namespace GlobalTheory.VMove



theorem seeSaw_iteratedIntegrand_vacuumForm_base_points_alt : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) P₁ P₂, ∀ a ∈ GinfC (c.V (j + 1)), ∀ a' ∈ GinfC (c.V (j + 1 + 1)), ∀ (φ : t.Ch j → GA D (c.X j) → ℂ) (F : GA D (c.V (j + 1 + 1)) → ℂ) Ψ₁ Ψ₂ f z, Ψ₁ = v.Ψ j P₁ 1 a → Ψ₂ = v.Ψ (j + 1) P₂ a a' → f = rTrans (a' * v.b (j + 1 + 1)) F → Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) (fun q₁ q₂ : _ => ∑ α, ∑ g ∈ (w.ε j α).support, w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ (Chain.hand (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) (φ α) g q₁.1 q₂.1) (rTrans q₂.1 f)) z → Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) (fun q₁ q₂ => t.integrand j σ h P₁ P₂ φ F (a * q₁.1) (a' * q₂.1)) (w.sc j * w.sc (j + 1) * z) := by
  intro D c v t w hc hv ht hw j σ h P₁ P₂ a ha a' ha' φ F Ψ₁ Ψ₂ f z hΨ₁ hΨ₂ hf hI
  classical
  obtain ⟨-, -, hcomm₁, -, hright₁, -⟩ := GlobalTheory.T.unitaryAdelic_inf_fin_split_periods_unimodular D (c.V (j + 1))
  obtain ⟨-, -, hcomm₂, -, hright₂, -⟩ := GlobalTheory.T.unitaryAdelic_inf_fin_split_periods_unimodular D (c.V (j + 1 + 1))
  have hj₁ : j + 1 < D.R.m := by omega
  have hj₂ : j + 1 + 1 < D.R.m := by omega

  have key : ∀ p₁ ∈ GfC (c.V (j + 1)), ∀ p₂ ∈ GfC (c.V (j + 1 + 1)),
      t.integrand j σ h P₁ P₂ φ F (a * (p₁ * v.b (j + 1))) (a' * (p₂ * v.b (j + 1 + 1))) =
        w.sc j * w.sc (j + 1) * ∑ α, ∑ g ∈ (w.ε j α).support, w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ
          (Chain.hand (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h)
            (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁))
            (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) (φ α) g p₁ p₂) (rTrans p₂ f) := by
    intro p₁ hp₁ p₂ hp₂
    have ec₁ : a * (p₁ * v.b (j + 1)) = p₁ * (a * v.b (j + 1)) := by
      rw [← mul_assoc, hcomm₁ a ha p₁ hp₁, mul_assoc]
    have ec₂ : a' * (p₂ * v.b (j + 1 + 1)) = p₂ * (a' * v.b (j + 1 + 1)) := by
      rw [← mul_assoc, hcomm₂ a' ha' p₂ hp₂, mul_assoc]
    have er : rTrans (a' * (p₂ * v.b (j + 1 + 1))) F = rTrans p₂ f := by
      rw [hf, ec₂]; funext x; simp only [rTrans, mul_assoc]
    unfold Tup.integrand
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun α _ => ?_
    rw [(hw.e j α).1, Finsupp.mapDomain_support_of_injective (mul_left_injective (v.b j)),
      Finset.sum_image (fun x _ y _ hxy => mul_right_cancel hxy), Finset.mul_sum]
    refine Finset.sum_congr rfl fun g _ => ?_
    rw [Finsupp.mapDomain_apply_of_injective (mul_left_injective (v.b j))]
    have e₁ : (t.sBF j (σ + 1) h).om (g * v.b j, a * (p₁ * v.b (j + 1))) (t.pt j P₁) =
        w.sc j • (t.sBF j (σ + 1) h).om (g, p₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) := by
      rw [(ht.sBF j (σ + 1) h).1, ec₁,
        show ((g * v.b j, p₁ * (a * v.b (j + 1))) : GA D (c.V j) × GA D (c.V (j + 1))) =
          (g, p₁) * (1 * v.b j, a * v.b (j + 1)) by simp,
        map_mul, Module.End.mul_apply, hw.vf j hj₁ P₁ 1 (one_mem _) a ha, map_smul, hΨ₁]
    have e₂ : (t.sFB j σ h).om (a * (p₁ * v.b (j + 1)), a' * (p₂ * v.b (j + 1 + 1))) (t.pt (j + 1) P₂) =
        w.sc (j + 1) • (t.sFB j σ h).om (p₁, p₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) := by
      rw [(ht.sFB j σ h).1, ec₁, ec₂,
        show ((p₁ * (a * v.b (j + 1)), p₂ * (a' * v.b (j + 1 + 1))) : GA D (c.V (j + 1)) × GA D (c.V (j + 1 + 1))) =
          (p₁, p₂) * (a * v.b (j + 1), a' * v.b (j + 1 + 1)) by simp,
        map_mul, Module.End.mul_apply, hw.vf (j + 1) hj₂ P₂ a ha a' ha', map_smul, hΨ₂]
    have hh := (GlobalTheory.HandHom.hand_hom D c.ψ σ _ _ _ (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (φ α)).1
    simp only [Chain.hand]
    rw [e₁, e₂, hh, er]
    have hp := GlobalTheory.HandHom.per_smul (c.B (j + 1 + 1) σ (idx_step h)) c.ψ (w.sc j * w.sc (j + 1)) 1
      (handFB (t.sFB j σ h) (c.vL j σ h) (handBF (t.sBF j (σ + 1) h) (c.lnk j σ h) (φ α)
        (flatBF (t.sBF j (σ + 1) h) ((t.sBF j (σ + 1) h).om (g, p₁) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)))))
        (flatFB (t.sFB j σ h) ((t.sFB j σ h).om (p₁, p₂) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)))))
      (rTrans p₂ f)
    rw [one_smul] at hp
    rw [hp]
    ring
  obtain ⟨f₁, h1, h2⟩ := hI
  haveI := hright₁ _ (hc.μf (j + 1))
  haveI := hright₂ _ (hc.μf (j + 1 + 1))
  set B₁ : GfC (c.V (j + 1)) := ⟨v.b (j + 1), hv.b (j + 1)⟩ with hB₁
  set B₂ : GfC (c.V (j + 1 + 1)) := ⟨v.b (j + 1 + 1), hv.b (j + 1 + 1)⟩ with hB₂
  refine ⟨fun q => (w.sc j * w.sc (j + 1)) * f₁ (q * B₁⁻¹), ?_, fun q => ?_⟩
  · exact (h1.mul_right B₁⁻¹).smul (w.sc j * w.sc (j + 1))
  · have := ((h2 (q * B₁⁻¹)).mul_right B₂⁻¹).smul (w.sc j * w.sc (j + 1))
    convert this using 1
    funext q₂
    have eq₁ : (q : GA D (c.V (j + 1))) = ((q * B₁⁻¹ : GfC (c.V (j + 1))) : GA D (c.V (j + 1))) * v.b (j + 1) := by
      simp [hB₁]
    have eq₂ : (q₂ : GA D (c.V (j + 1 + 1))) =
        ((q₂ * B₂⁻¹ : GfC (c.V (j + 1 + 1))) : GA D (c.V (j + 1 + 1))) * v.b (j + 1 + 1) := by
      simp [hB₂]
    rw [Pi.smul_apply, smul_eq_mul]
    beta_reduce
    rw [eq₁, eq₂]
    exact key _ (q * B₁⁻¹).2 _ (q₂ * B₂⁻¹).2

end GlobalTheory.VMove
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePoints =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePointsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePointsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.seeSaw_iteratedIntegrand_vacuumForm_base_points : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m) P₁ P₂, ∀ a ∈ GinfC (c.V (j + 1)), ∀ a' ∈ GinfC (c.V (j + 1 + 1)), ∀ (φ : t.Ch j → GA D (c.X j) → ℂ) (F : GA D (c.V (j + 1 + 1)) → ℂ) Ψ₁ Ψ₂ f z, Ψ₁ = v.Ψ j P₁ 1 a → Ψ₂ = v.Ψ (j + 1) P₂ a a' → f = rTrans (a' * v.b (j + 1 + 1)) F → Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) (fun q₁ q₂ : _ => ∑ α, ∑ g ∈ (w.ε j α).support, w.ε j α g * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ (Chain.hand (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ₁)) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) Ψ₂)) (φ α) g q₁.1 q₂.1) (rTrans q₂.1 f)) z → Iter2 (c.ρJ j (σ + 1) h) (c.μf (j + 1)) (c.ρB (j + 1 + 1) σ (idx_step h)) (c.μf (j + 1 + 1)) (fun q₁ q₂ => t.integrand j σ h P₁ P₂ φ F (a * q₁.1) (a' * q₂.1)) (w.sc j * w.sc (j + 1) * z) := by
  first | exact @GlobalTheory.VMove.seeSaw_iteratedIntegrand_vacuumForm_base_points_alt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePointsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStepStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStepStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.theta_flatMap_indep_unfoldingStep : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), (∀ (ρ : ℕ) (B : BesLev D ρ) (J : JacLev D ρ) (s s' : StepBF ψ B J) f, IsThetaFunO ψ B.V J.W f → flatBF s f = flatBF s' f) ∧ ∀ (σ : ℕ) (J : JacLev D (σ + 1)) (B : BesLev D σ) (s s' : StepFB ψ J B) f, IsThetaFunO ψ J.W B.V f → flatFB s f = flatFB s' f := by
  first | exact @GlobalTheory.FlatIndep.flat_indep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStepStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValue =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValue", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNormalizedHaarPairAtFinitePlacesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HandBFSmul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacuaStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawCommonRealDatumBiThetaVacuumContractionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawDoubleStepFiniteIntegralCollapseTwistPlaceBis\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawIteratedIntegrandVacuumFormBasePointsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawUnfoldedDataEqKernelDataAtLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaFlatMapIndepUnfoldingStepStatement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentAnisotropicProjectionEqOne\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSmoothAutomorphicRightTranslateFinite\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowerTowerLiftsVanishOfVanishOnFock\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.T2SpaceCmHostAdeles\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.ValFin

variable {D : D7}

theorem isLatVac_zero (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (Λ : AddSubgroup (WO S T)) :
    IsLatVac (heisO ψ S T) Λ 0 :=
  ⟨fun _ _ => by funext w; simp [heisO], fun _ _ _ _ _ => by funext w; simp [heisO]⟩

theorem isReal_zero (c : Comm D) (j : ℕ) : c.IsReal j 0 := by
  refine ⟨⟨continuous_const, fun v => ⟨_root_.Formalism.IndefR.Fock.CCR.theta_zero _ _ _, isLatVac_zero _ _ _ _⟩,
    fun u => ⟨_root_.Formalism.IndefR.Fock.CCR.theta_zero _ _ _, isLatVac_zero _ _ _ _⟩⟩, ?_⟩
  intro n L L' _ _ _ _ u v
  simp only [Pi.zero_apply]
  exact contDiff_const

theorem isAutFun_rTrans {V : HSp D} (x : GA D V) {φ : GA D V → ℂ} (h : IsAutFun V φ) :
    IsAutFun V (rTrans x φ) := by
  obtain ⟨U, hU, hUφ⟩ := h.level
  refine ⟨fun γ hγ g => ?_, ⟨U.comap (MulAut.conj x⁻¹).toMonoidHom, ?_, fun k hk hkf g => ?_⟩, ?_⟩
  · simp only [rTrans, mul_assoc]; exact h.left γ hγ (g * x)
  · have hc : Continuous fun k : GA D V => x⁻¹ * k * x := by fun_prop
    exact hU.preimage hc
  · have hk' : x⁻¹ * k * x ∈ U := by simpa [MulAut.conj_apply] using hk
    have hf : x⁻¹ * k * x ∈ GfC V := by
      unfold GfC at hkf ⊢
      rw [MonoidHom.mem_ker] at hkf ⊢
      simp [hkf]
    have e : g * k * x = g * x * (x⁻¹ * k * x) := by group
    simp only [rTrans]
    rw [e, hUφ _ hk' hf]
  · exact h.cont.comp (continuous_mul_const x)

theorem trc_mapDomain {V : HSp D} (ε : GA D V →₀ ℂ) (b : GA D V) (f : GA D V → ℂ) :
    trc (ε.mapDomain (· * b)) f = trc ε (rTrans b f) := by
  unfold trc
  change (ε.mapDomain (· * b)).sum (fun g c => c • rTrans g f) = ε.sum (fun g c => c • rTrans g (rTrans b f))
  rw [Finsupp.sum_mapDomain_index (fun _ => by simp) (fun _ _ _ => by simp [add_smul])]
  refine Finset.sum_congr rfl fun g _ => ?_
  funext z
  simp [rTrans, mul_assoc]

end GlobalTheory.ValFin

namespace GlobalTheory.ValFin

variable {D : D7}

theorem vac_of_all {ψ : AddChar (AF D.host.F) ℂ} (hstd : IsStdChar D ψ (-1)) {S T : HSp D} {LS : Lat S} {LT : Lat T}
    (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) (Q : Pl D → Prop) {f : WO S T → ℂ}
    (hf : Vac ψ S T LS LT (fun _ => True) f) : Vac ψ S T LS LT Q f := by
  have key := (GlobalTheory.T.heisenbergCombination_disjoint_places_commute_vacua D ψ hstd S T Q (fun p => ¬ Q p) (fun p hp hn => hn hp)).2.2.2.2 LS LT f hS hT
  have e : (fun p => Q p ∨ ¬ Q p) = fun _ => True := funext fun p => propext ⟨fun _ => trivial, fun _ => em _⟩
  rw [e] at key
  exact (key.1 hf).1

theorem ctr_indep (c : Comm D) (j σ : ℕ) (h : j + 2 * (σ + 1) + 2 = D.R.m)
    (s₁ s₁' : StepBF c.ψ (c.B j (σ + 1) h) (c.J j (σ + 1) h))
    (s₂ s₂' : StepFB c.ψ (c.J j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)))
    (Ψ₁ : WO (c.V j) (c.V (j + 1)) → ℂ) (Ψ₂ : WO (c.V (j + 1)) (c.V (j + 1 + 1)) → ℂ)
    (h₁ : IsThetaFunO c.ψ _ _ Ψ₁) (h₂ : IsThetaFunO c.ψ _ _ Ψ₂) :
    c.ctr j σ h s₁ s₂ Ψ₁ Ψ₂ = c.ctr j σ h s₁' s₂' Ψ₁ Ψ₂ := by
  unfold Comm.ctr
  rw [(GlobalTheory.T.theta_flatMap_indep_unfoldingStep D c.ψ).1 _ _ _ s₁ s₁' Ψ₁ h₁, (GlobalTheory.T.theta_flatMap_indep_unfoldingStep D c.ψ).2 _ _ _ s₂ s₂' Ψ₂ h₂]

theorem valX : ∀ (D : D7) (c : Comm D) (v : VCom c) (𝒯 : Type) (t : 𝒯 → Tup c) (w : ∀ s, VTup (t s)), c.Is → v.Is →
    (∀ s, (t s).Is) → (∀ s, PlaceLaws v (w s)) → ContrLaw D → FlatLaw D → BiAct D → ValX t := by
  intro D c v 𝒯 t w hc hv ht hL hContr hFlat hBi
  intro j σ h P₁ P₂ a ha a' ha'
  have hj1 : j + 1 < D.R.m := by omega
  have hj2 : j + 1 + 1 < D.R.m := by omega
  have hV₁ : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (fun _ => True) (v.Ψ j P₁ 1 a) :=
    hv.Ψ j hj1 P₁ 1 (one_mem _) a ha
  have hV₂ : Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (fun _ => True) (v.Ψ (j + 1) P₂ a a') :=
    hv.Ψ (j + 1) hj2 P₂ a ha a' ha'
  by_cases hT : Nonempty 𝒯
  swap
  · exact ⟨0, isReal_zero c j, fun s => (hT ⟨s⟩).elim⟩
  obtain ⟨s₀⟩ := hT
  refine ⟨(v.op j).app c.ψ (c.ctr j σ h ((t s₀).sBF j (σ + 1) h) ((t s₀).sFB j σ h) (v.Ψ j P₁ 1 a) (v.Ψ (j + 1) P₂ a a')),
    ((_root_.GlobalTheory.VReal.v_real D c v (t s₀) (w s₀) hc hv (ht s₀) (hL s₀).vac (hL s₀).tl hFlat).1 j σ h _ _ hV₁ hV₂).2, ?_⟩
  intro s ψ hψ y G x
  have hLs := hL s
  have hF := hLs.form
  have hj2m : j + 2 ≤ D.R.m := by omega
  have hφR : ∀ α, (t s).rd j α ψ y ∈ v.RamAd j := fun α => (hF.rd j hj2m ψ hψ α y).1
  have hφX : ∀ α, (t s).rd j α ψ y ∈ (w s).FX j α := fun α => (hF.rd j hj2m ψ hψ α y).2.1
  have hφS : ∀ α, (t s).rd j α ((t s).S j ψ) y = v.Sad j ((t s).rd j α ψ y) := fun α => (hF.rd j hj2m ψ hψ α y).2.2
  have hφA : ∀ α, IsContAut _ ((t s).rd j α ψ y) := fun α => (hv.ram j _ (hφR α)).1
  have hFaut : IsAutFun _ (G.1 x) := by
    obtain ⟨J, χ, hJ⟩ := (ht s).CC (j + 1 + 1) hj2
    exact (GlobalTheory.PairLift.LowAllPf.multT_apply_smooth_cusp c.θ (c.M (j + 1 + 1)) J χ G.1 (hJ G.2) x).1.toIsAutFun
  have hfaut : IsAutFun _ (rTrans (a' * v.b (j + 1 + 1)) (G.1 x)) := isAutFun_rTrans _ hFaut
  have hfY : rTrans (a' * v.b (j + 1 + 1)) (G.1 x) ∈ (w s).FY (j + 1 + 1) := (hF.row (j + 1 + 1) hj2 G x a' ha').1
  obtain ⟨ρ₁, μ₁, hn₁⟩ := GlobalTheory.T.exists_normalizedHaarPair_at_finitePlaces D (c.V (j + 1)) (jacGrp (c.jac j (σ + 1) h).d) (GlobalTheory.jacGrp_isClosed _ _ _ _ _)
    (v.N (j + 1)) (hv.sd (j + 1) hj1) (w s).Q
  obtain ⟨ρ₂, μ₂, hn₂⟩ := GlobalTheory.T.exists_normalizedHaarPair_at_finitePlaces D (c.V (j + 1 + 1))
    (besGrp (c.bes (j + 1 + 1) σ (idx_step h)).d (c.bes (j + 1 + 1) σ (idx_step h)).o)
    (GlobalTheory.BesClosed.besGrp_isClosed _ _ _ _ _ _ _ _) (v.N (j + 1 + 1)) (hv.sd (j + 1 + 1) hj2) (w s).Q
  have hdisj : ∀ p, p ∈ v.gP → ¬ p ∈ (w s).Q := fun p hp hq => Finset.disjoint_left.mp hF.disjG hq hp
  have K₁ := GlobalTheory.T.heisenbergCombination_disjoint_places_commute_vacua D c.ψ hc.std (c.V j) (c.V (j + 1)) (· ∈ v.gP) (· ∈ (w s).Q) hdisj
  have K₂ := GlobalTheory.T.heisenbergCombination_disjoint_places_commute_vacua D c.ψ hc.std (c.V (j + 1)) (c.V (j + 1 + 1)) (· ∈ v.gP) (· ∈ (w s).Q) hdisj
  have hVQ₁ : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ (w s).Q) (comb c.ψ _ _ (v.eG j) (v.Ψ j P₁ 1 a)) :=
    (K₁.2.1 (v.eG j) (hv.atG j).1).2 _ _ _
      (vac_of_all hc.std (hv.sd j (by omega)) (hv.sd (j + 1) hj1) _ hV₁)
  have hVQ₂ : Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (· ∈ (w s).Q) (comb c.ψ _ _ (v.eG (j + 1)) (v.Ψ (j + 1) P₂ a a')) :=
    (K₂.2.1 (v.eG (j + 1)) (hv.atG (j + 1)).1).2 _ _ _
      (vac_of_all hc.std (hv.sd (j + 1) hj1) (hv.sd (j + 1 + 1) hj2) _ hV₂)
  have hQ := hLs.ql j σ h ρ₁ μ₁ ρ₂ μ₂ hn₁ hn₂ _ _ hVQ₁ hVQ₂ (fun α => (t s).rd j α ψ y)
    (fun α => ⟨hφA α, hφX α⟩) _ hfaut hfY
  have hc₁ := K₁.1 (v.eG j) ((w s).eQ j) (hv.atG j).1 (hF.atQ j).1 (v.Ψ j P₁ 1 a)
  have hc₂ := K₂.1 (v.eG (j + 1)) ((w s).eQ (j + 1)) (hv.atG (j + 1)).1 (hF.atQ (j + 1)).1 (v.Ψ (j + 1) P₂ a a')
  rw [← hc₁, ← hc₂] at hQ
  have hcell := _root_.GlobalTheory.DStepCell.cell_collapse D c v (t s) (w s) hc hv (ht s) hF hLs.weil hLs.off hLs.gs hLs.qfin hContr hFlat j σ h
    ρ₁ μ₁ ρ₂ μ₂ hn₁ hn₂ _ _ hV₁ hV₂ (fun α => (t s).rd j α ψ y) hφR G x a' ha' _ rfl _ hQ
  have hmove := GlobalTheory.T.seeSaw_iteratedIntegrand_vacuumForm_base_points D c v (t s) (w s) hc hv (ht s) hF j σ h P₁ P₂ a ha a' ha' (fun α => (t s).rd j α ψ y)
    (G.1 x) _ _ _ _ rfl rfl rfl hcell
  convert hmove using 1
  have hrhs := _root_.GlobalTheory.SeeSawRhs.unfolded_eq_kernel_data D c v (t s) (w s) hc hv (ht s) hF hLs.gv hLs.tl hFlat hBi j σ h _ _ hV₁ hV₂
    (fun α => (t s).rd j α ψ y) hφR
  have hct := ctr_indep c j σ h ((t s).sBF j (σ + 1) h) ((t s₀).sBF j (σ + 1) h) ((t s).sFB j σ h) ((t s₀).sFB j σ h)
    _ _ hV₁.1 hV₂.1
  rw [hct] at hrhs
  have hper : ∀ (k : ℂ) φ' f', (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ (k • φ') f' =
      k * (c.B (j + 1 + 1) σ (idx_step h)).per c.ψ φ' f' := by
    intro k φ' f'
    have := (GlobalTheory.HandHom.hand_hom D c.ψ σ (c.B j (σ + 1) h) (c.J j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h))
      ((t s).sBF j (σ + 1) h) ((t s).sFB j σ h) (c.lnk j σ h) (c.vL j σ h) 0).2.2 k 1 φ' f'
    rwa [one_smul, mul_one] at this
  have htwo : (fun α => (t s).rd j α ((t s).S j ψ) y) = fun α => v.Sad j ((t s).rd j α ψ y) := funext hφS
  have hcomm : v.b (j + 1 + 1) * a' = a' * v.b (j + 1 + 1) :=
    GlobalTheory.FinTranslate.comm_fin_real _ (hv.b (j + 1 + 1)) ha'
  have htrc : ∀ β, trc ((t s).e (j + 1 + 1) β) (rTrans a' (G.1 x)) =
      trc ((w s).ε (j + 1 + 1) β) (rTrans (a' * v.b (j + 1 + 1)) (G.1 x)) := by
    intro β
    rw [(hF.e (j + 1 + 1) β).1, trc_mapDomain]
    congr 1
    funext g
    simp [rTrans, mul_assoc, hcomm]
  rw [hLs.cv.1 j σ h]
  unfold Tup.perF
  rw [htwo]
  simp only [Finset.mul_sum]
  refine Finset.sum_congr rfl fun β _ => ?_
  rw [hrhs β, hper, htrc β]
  ring

end GlobalTheory.ValFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValue =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.seeSaw_finiteIntegrals_doubleStep_value : ∀ (D : D7) (c : Comm D) (v : VCom c) (𝒯 : Type) (t : 𝒯 → Tup c) (w : ∀ s, VTup (t s)), c.Is → v.Is → (∀ s, (t s).Is) → (∀ s, PlaceLaws v (w s)) → ContrLaw D → FlatLaw D → BiAct D → ValX t := by
  first | exact @GlobalTheory.ValFin.valX
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement =====
