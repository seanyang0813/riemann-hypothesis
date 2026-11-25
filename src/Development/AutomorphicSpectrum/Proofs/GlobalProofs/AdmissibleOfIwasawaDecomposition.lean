module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsSmoothVec
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionOfSmoothVector
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DefsRep
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.CommutatorAdjointHolds
public import Development.AutomorphicSpectrum.PublishedTheorems.Jets₂.IsPermissibleOfCentre
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DifferentiableAtOrbit
public import Formalism.PeriodIntegrals.UpqRep
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.FrobeniusBoundOfMulNearOne
public import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
public import Formalism.RealPlaceAnalysis.FinalF
public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.ExistsAvg
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.FinOfPI
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GoodPI
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.SmallPI
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.Transfer
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.Garding
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.WordBoundOfDelta
import Mathlib.Tactic.Linter.Style
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.SubquotientNontrivial
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DefClassNum
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingAvg
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingBump
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeviModulusOneLinearReductiveExpMulExp
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdmissibleOfIwasawaDecomposition

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsSmoothVec\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionOfSmoothVector\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DefsRep\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.CommutatorAdjointHolds\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.SubquotientNontrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.LinRed GlobalTheory.FlagMeas GlobalTheory.RealInd GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.HCA
open scoped InnerProductSpace ContDiff NNReal ENNReal
open Topology Filter

namespace GlobalTheory.CompanionTheory.Hypotheses₂.HCA.AnalyticWords

local notation "Jε" => ReciprocityTheory.ChartRestriction.DS.Jm

variable {n : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

end GlobalTheory.CompanionTheory.Hypotheses₂.HCA.AnalyticWords

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsSmoothVec\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DifferentiableAtOrbit\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionOfSmoothVector\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Jets₂.IsPermissibleOfCentre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DefClassNum\nimport Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.LinRed GlobalTheory.FlagMeas GlobalTheory.RealInd GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.HCA
open scoped InnerProductSpace ContDiff

namespace GlobalTheory.CompanionTheory.Hypotheses₂.HCA.OneParam

variable {n : ℕ} {G : Set (Matrix (Fin n) (Fin n) ℂ)} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  {π : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}

theorem iterate_smooth (hG : IsLinRed G) (hrep : Formalism.QuantumDeterminants.IsCRepOn G π) {v : H} (hs : IsSmoothVec G π v)
    {X : Matrix (Fin n) (Fin n) ℂ} (hX : X ∈ HCSS.lieOf G) (m : ℕ) :
    IsSmoothVec G π ((dRep π X)^[m] v) := by
  induction m with
  | zero => simpa using hs
  | succ m ih =>
    rw [Function.iterate_succ_apply']
    exact (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep ih hX).2

end GlobalTheory.CompanionTheory.Hypotheses₂.HCA.OneParam

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdmissibleOfIwasawaDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdmissibleOfIwasawaDecomposition", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsSmoothVec\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionOfSmoothVector\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DefsRep\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.CommutatorAdjointHolds\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Jets₂.IsPermissibleOfCentre\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DifferentiableAtOrbit\npublic import Formalism.PeriodIntegrals.UpqRep\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.FrobeniusBoundOfMulNearOne\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut\npublic import Formalism.RealPlaceAnalysis.FinalF\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.ExistsAvg\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.FinOfPI\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GoodPI\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.SmallPI\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.Transfer\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.Garding\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.SubquotientNontrivial\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DefClassNum\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingAvg\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingBump\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeviModulusOneLinearReductiveExpMulExp\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.WordBoundOfDelta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.LinRed GlobalTheory.FlagMeas GlobalTheory.RealInd
open scoped InnerProductSpace ContDiff

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdmissibleOfIwasawaDecomposition =====
