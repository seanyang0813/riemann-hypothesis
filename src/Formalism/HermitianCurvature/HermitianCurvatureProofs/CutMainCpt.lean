module

public import Formalism.HermitianCurvature.StatementD
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential
public import Formalism.HermitianCurvature.StatementTBB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralBoundOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialExhaustion
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSettingBis
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTop
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormsJointContinuity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VecVNonloc
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OnePointBasisFundamentalDomainVolume
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopVec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormCvecSq
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutBP
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEX_UwTop
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLimE
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGCongr
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGInt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGSlice
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCptDefs
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCptManual
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGerm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermMean
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLimTop
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermConstant
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimZeroNPf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGDegLift
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.StandardPairingOfHeads
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OmLongContinuousOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThetaCompactSupport
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BaseCutoffIsTruncation
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CcCoefMMono
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BudgetTopConvergence
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadContinuityAtZeroOfStandard
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormPosCompactSupport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormSumLeOfForm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGWaveMain
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SizeStandardCompact
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LatticeSumOfCompactCoefficientPositivity

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLow, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowFibre, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGermW, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopA, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopC, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopD, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopFields, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMain, Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuityAllLevels, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMainCpt

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementD\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLow =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLow", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTBB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLow =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowFibre =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowFibre", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLow\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralBoundOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialExhaustion\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.StandardPairingOfHeads\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt MeasureTheory
open scoped ComplexConjugate

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowFibre =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGermW =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGermW", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTBB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSettingBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.GLG

open Formalism.FourierDecayAlt

noncomputable section

end

end Formalism.FourierDecayAlt.P.CutBP.GLG
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGermW =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopA =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopA", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormsJointContinuity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OmLongContinuousOn\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ThetaCompactSupport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VecVNonloc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.GT

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP.GT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopA =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopC =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopC", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTBB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSettingBis\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OnePointBasisFundamentalDomainVolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.GT

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP.GT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopC =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopD =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopD", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopVec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormCvecSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.GT

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

end

end Formalism.FourierDecayAlt.P.CutBP.GT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopD =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopFields =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopFields", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopVec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormCvecSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.GT

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

section place

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {I : Type} [Fintype I]
  {p : KB.Pl P Wp Wq} {nn : ℝ → ℝ} {F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)} {w : List C.Letter} {c : I → ℝ}
  {Fi : I → B.Mat P.k P.r → (Wq →L[ℂ] Wp)} {L : I → (Wq →L[ℂ] Wp) →L[ℂ] HS Wp Wq}

end place


section place

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {I : Type} [Fintype I]
  {p : KB.Pl P Wp Wq} {nn : ℝ → ℝ} {F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)} {w : List C.Letter} {c : I → ℝ}
  {Fi : I → B.Mat P.k P.r → (Wq →L[ℂ] Wp)} {L : I → (Wq →L[ℂ] Wp) →L[ℂ] HS Wp Wq}

end place

end

end Formalism.FourierDecayAlt.P.CutBP.GT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopFields =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMain =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMain", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutBP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants

noncomputable section

section place

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem amaps_id (p : KB.Pl P Wp Wq) (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b : ℝ) :
    Amaps p f (fun _ => ContinuousLinearMap.id ℂ Wq) (fun _ => ContinuousLinearMap.id ℂ Wq)
      (fun _ => ContinuousLinearMap.id ℂ Wq) (fun _ => ContinuousLinearMap.id ℂ Wq) b 0 := by
  refine ⟨fun γ _ _ => by simp, fun γ _ _ => by simp, fun γ _ _ v => ?_, fun γ _ _ => ?_, fun γ _ _ => ?_⟩
  · simp only [mul_zero, pow_zero, one_mul, ContinuousLinearMap.adjoint_id, ContinuousLinearMap.id_apply]
    nlinarith [sq_nonneg ‖v‖]
  · rw [pow_zero]
    exact pow_le_one₀ (norm_nonneg _) ContinuousLinearMap.norm_id_le
  · rw [pow_zero]
    exact pow_le_one₀ (norm_nonneg _) ContinuousLinearMap.norm_id_le

end place


end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMain =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuityAllLevels =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuityAllLevels", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BaseCutoffIsTruncation\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CcCoefMMono\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEX_UwTop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLimE\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormsJointContinuity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGCongr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal

noncomputable section

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuityAllLevels =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMainCpt =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMainCpt", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCptDefs\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopVec\nimport Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BaseCutoffIsTruncation\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BudgetTopConvergence\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSettingBis\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCptManual\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowFibre\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGerm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermLowGermW\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermMean\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopD\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermTopFields\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLimTop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermConstant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuityAllLevels\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadContinuityAtZeroOfStandard\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralBoundOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimZeroNPf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormPosCompactSupport\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormSumLeOfForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGDegLift\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGWaveMain\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialExhaustion\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SizeStandardCompact\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermContinuity\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.LatticeSumOfCompactCoefficientPositivity\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.TBBx3
open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal
noncomputable section
variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem _root_.Formalism.FourierDecayAlt.P.TBBx3.head_continuity_at_zero_of_standardCpt (hPS : KB.PStdCpt) (hTP : P5.ThmPActualCpt) (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ)
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (N : ℕ) (Cb : ℝ)
    (hCb : KB.InDDplus2 P p.l0 p.T.base Cb p.Θ) (hF : KB.CptCoef p.T.base F) : TBB.HeadContinuityAtZero p nn F Y N := by
  intro j hj h hh w hw hN
  obtain ⟨φ, hφc, hφi, hφ, -⟩ := hPS hTP Wp Wq P p F j hj w h h hh hh Cb hCb hF hw.1
  set A := C.nAux P.k P.r 0 (fun _ _ => 1) 1 h with hAdef
  refine ⟨fun c => ((A / TBB.normC nn w : ℝ) : ℂ) * φ c, continuous_const.mul hφc, hφi.const_mul _, ?_⟩
  intro c hc
  simp only
  rw [hφ c hc]
  have hA : 0 ≤ A := Formalism.FourierDecayAlt.P.PBD.lpt_value_nonneg_of_pos_of_size_le P.k P.r 0 (fun _ _ => 1) (fun _ _ => one_pos) h 1 le_rfl
    (by rw [hh.2]; omega)
  have hn : TBB.nPt P.k P.r (TBB.TTp p) (h ++ [(1, c)]) =
      A * C.nAux P.k P.r (D.ptGG (TBB.TTp p) (h ++ [(1, c)])) (fun _ _ => 1) (1 + j) [(1, c)] := by
    unfold TBB.nPt
    rw [Formalism.FourierDecayAlt.P.PBD.weight_product_append, hh.2, hAdef,
      Formalism.FourierDecayAlt.P.PBD.weight_product_indep_of_real_parameter P.k P.r _ 0 (fun _ _ => 1) h 1 le_rfl (by rw [hh.2]; omega)]
  unfold TBB.NP
  rw [hn]
  by_cases hjr : j = P.r
  · subst hjr
    by_cases hc2 : Complex.normSq c ≤ Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z'
    · have h0 : p.RR F (P.r + 1) w (h ++ [(1, c)]) (h ++ [(1, c)]) = 0 :=
        Formalism.FourierDecayAlt.P.PBD.rrTop_zero P p.l0 p.T p.ν' p.m₀ p.Θ p.TP (M.sgn P p.l0) F w h _ c hh.2 hc2
      rw [h0]
      simp
    · push Not at hc2
      have hT : Tz P.k P.r p.T.base.z = P.T := p.hP.2.2.2.1
      have hT' : Tz P.k P.r p.T.base.z' = P.T' := p.hP.2.2.2.2.1
      have hlast : D.ptGG (TBB.TTp p) (h ++ [(1, c)]) = Complex.normSq c - TBB.TTp p := by
        simp [D.ptGG, D.ptLast]
      have hTT : TBB.TTp p = P.T * P.T' := by
        unfold TBB.TTp
        rw [hT, hT']
      have hfac : C.nAux P.k P.r (D.ptGG (TBB.TTp p) (h ++ [(1, c)])) (fun _ _ => 1) (1 + P.r) [(1, c)] =
          KB.levW P (P.r + 1) c := by
        rw [hlast, hTT]
        rw [hT, hT'] at hc2
        simp only [C.nAux, KB.levW, B2.zWeight, if_pos hc2.le]
        rw [if_pos ⟨by omega, trivial⟩]
        simp
      have hlev : 0 ≤ KB.levW P (P.r + 1) c := by
        rw [← hfac, hlast]
        simp only [C.nAux]
        rw [if_pos ⟨by omega, trivial⟩]
        have : 0 ≤ Complex.normSq c - TBB.TTp p := by
          unfold TBB.TTp; linarith
        simpa using pow_nonneg this _
      rw [hfac, Real.mul_self_sqrt (mul_nonneg hA hlev)]
      push_cast
      ring
  · have hfac : C.nAux P.k P.r (D.ptGG (TBB.TTp p) (h ++ [(1, c)])) (fun _ _ => 1) (1 + j) [(1, c)] =
        KB.levW P (j + 1) c := by
      simp only [C.nAux, KB.levW]
      rw [if_neg (by omega), if_neg (by omega)]
      have e : 1 + j + 1 - 1 = j + 1 := by omega
      rw [e]
      simp only [one_mul, mul_one, Nat.cast_one]
      congr 1
      ring
    have hlev : 0 ≤ KB.levW P (j + 1) c := by
      simp only [KB.levW]
      rw [if_neg (by omega)]
      exact zpow_nonneg (norm_nonneg _) _
    rw [hfac, Real.mul_self_sqrt (mul_nonneg hA hlev)]
    push_cast
    ring

end
end Formalism.FourierDecayAlt.P.TBBx3

namespace Formalism.FourierDecayAlt.P
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

theorem _root_.Formalism.FourierDecayAlt.P.head_continuity_at_zero_of_compact_coefficientsCpt (hPS : KB.PStdCpt) (hTP : P5.ThmPActualCpt) {Wp Wq : Type} [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq] {P : M.Par} (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp))
    (Y : Finset ℝ) (N : ℕ) (Cb : ℝ) (hCb : KB.InDDplus2 P p.l0 p.T.base Cb p.Θ) (hF : KB.CptCoef p.T.base F) :
    Formalism.FourierDecayAlt.TBB.HeadContinuityAtZero p nn F Y N := by
  exact TBBx3.head_continuity_at_zero_of_standardCpt hPS hTP p nn F Y N Cb hCb hF

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology
noncomputable section

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.limPos_of_limEvTCpt (hA : P5.ThmPActualCpt) (Cb : ℝ) : ∃ Cc : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (χ : ℝ → ℝ)
    (A : ℝ) (N : ℕ) (Y : Finset ℝ),
    KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → C6.IsCut0 χ → B.CkOn ⊤ (B.GV P.k P.r) F → (∀ m : ℕ, B.InCC A m F) →
    Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤ A →
    LimEvT p χ F Y N → LimPos p F Y N := by
  obtain ⟨Cc, hCc⟩ := Formalism.FourierDecayAlt.P.limit_of_module_forms Cb
  refine ⟨Cc, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p F χ A N Y hDD hχ hF hFA hth hEv w hw hN
  have hcut : ∀ ε : ℝ, 0 < ε → 0 ≤ (p.RR (D.cutF p.T.base χ F ε) 0 w [] []).re := by
    intro ε hε
    obtain ⟨hcpt, hlim⟩ := hCc Wp Wq P p F χ ε A N (cutN P.k P.r) hDD hχ hε hF hFA hth (fun _ _ => rfl)
    have hT := (Complex.continuous_re.tendsto _).comp (hlim 0 w hw.1 hN [] [])
    exact ge_of_tendsto hT (Eventually.of_forall fun n => truncated_limit_positivity_holdsCpt hA p (hcpt n) Y N w hw hN)
  exact ge_of_tendsto (hEv w hw hN) (eventually_nhdsWithin_of_forall fun ε hε => hcut ε hε)

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology
noncomputable section

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.limE_of_limEvTCpt (hA : P5.ThmPActualCpt) (Cb : ℝ) : ∃ Cc : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (χ nn : ℝ → ℝ)
    (A : ℝ) (N : ℕ) (Y : Finset ℝ),
    KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → C6.IsCut0 χ → (∀ y, 0 ≤ nn y) → B.CkOn ⊤ (B.GV P.k P.r) F →
    (∀ m : ℕ, B.InCC A m F) →
    Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤ A →
    LimEvT p χ F Y N → LimBd p nn F Y N → LimE p nn χ F Y N := by
  obtain ⟨Cc, hC⟩ := limPos_of_limEvTCpt hA Cb
  refine ⟨Cc, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p F χ nn A N Y h1 h2 h3 h4 h5 h6 hEv hBd
  exact limE_of_partsT p nn χ F Y N h3 hEv (hC Wp Wq P p F χ A N Y h1 h2 h4 h5 h6 hEv) hBd

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.TBBx5
open Formalism.FourierDecayAlt

theorem _root_.Formalism.FourierDecayAlt.P.TBBx5.integral_four_of_parts_holdsCpt : IntegralFourFromComponentsCpt := by
  intro hA hSS hDL hFP Wp Wq _ _ _ _ _ _ P p nn F Y Λ K N hF hnn hgrid
  exact integral_four_at_place_of_partsCpt hA hSS hDL p nn F Y Λ K N (formNonneg_ofCpt hA hFP p) hF hnn hgrid

end Formalism.FourierDecayAlt.P.TBBx5

namespace Formalism.FourierDecayAlt.P
open Formalism.FourierDecayAlt

theorem _root_.Formalism.FourierDecayAlt.P.integral_four_at_placeCpt (hA : P5.ThmPActualCpt) (hSS : KB.SizeStdCpt) (hDL : KB.DegLift) (hFP : PBL.FormPosCpt)
    {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par} (p : KB.Pl P Wp Wq)
    (nn : ℝ → ℝ) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (Λ : ℝ) (K N : ℕ)
    (hF : KB.CptCoef p.T.base F) (hnn : ∀ y, 0 < nn y) (hgrid : TBBx5.LiftGrid p nn Y Λ K N) :
    Formalism.FourierDecayAlt.TBB.KernelArgumentHypothesisScalar p nn F Y Λ K N := TBBx5.integral_four_of_parts_holdsCpt hA hSS hDL hFP Wp Wq P p nn F Y Λ K N hF hnn hgrid

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.TBBx5
open Formalism.FourierDecayAlt

theorem _root_.Formalism.FourierDecayAlt.P.TBBx5.integral_three_of_parts_holdsCpt : CurvatureIntegralOfPartsCpt := by
  intro hA hPS hVI hSS hDW hFP Wp Wq _ _ _ _ _ _ P p nn F Y Λ K N Cb hCb hF hnn hgrid
  exact integral_three_at_place_of_partsCpt hA hPS hVI hSS hDW p nn F Y Λ K N Cb hCb (formNonneg_ofCpt hA hFP p) hF hnn hgrid

end Formalism.FourierDecayAlt.P.TBBx5

namespace Formalism.FourierDecayAlt.P
open Formalism.FourierDecayAlt

theorem _root_.Formalism.FourierDecayAlt.P.integral_three_at_placeCpt (hA : P5.ThmPActualCpt) (hPS : KB.PStdCpt) (hVI : KB.VIsoCpt) (hSS : KB.SizeStdCpt)
    (hDW : KB.DegWave) (hFP : PBL.FormPosCpt) {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par}
    (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (Λ : ℝ) (K N : ℕ)
    (Cb : ℝ) (hCb : KB.InDDplus2 P p.l0 p.T.base Cb p.Θ) (hF : KB.CptCoef p.T.base F) (hnn : ∀ y, 0 < nn y)
    (hgrid : TBBx5.WaveGrid p nn Y Λ K N) : Formalism.FourierDecayAlt.TBB.KernelFourierIntegralBound p nn F Y Λ K N := TBBx5.integral_three_of_parts_holdsCpt hA hPS hVI hSS hDW hFP Wp Wq P p nn F Y Λ K N Cb hCb hF hnn hgrid

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal
noncomputable section
section place
variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.corS_of_cptCpt (hA : P5.ThmPActualCpt) (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ) (G : B.Mat P.k P.r → (Wq →L[ℂ] Wp))
    (Y : Finset ℝ) (Λ : ℝ) (K N : ℕ) (Cb C₂ : ℝ)
    (hLS : ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (nn : ℝ → ℝ) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (Λ : ℝ) (K N : ℕ), 3 ≤ K → 1 ≤ Λ →
      TBB.PosAt p nn F Y N → TBB.HeadContinuityAtZero p nn F Y N → TBB.KernelFourierIntegralBound p nn F Y Λ K N → TBB.KernelArgumentHypothesisScalar p nn F Y Λ K N →
      TBB.BlockGrowthBound p nn F Y K N → TBB.LemmaS p nn F Y Λ K N C₂)
    (hC₂ : 0 ≤ C₂) (hK : 3 ≤ K) (hKN : (P.r + 1) * K ≤ N) (hΛ : 1 ≤ Λ) (hnn : ∀ y, 0 < nn y)
    (hCb : KB.InDDplus2 P p.l0 p.T.base Cb p.Θ) (hG : KB.CptCoef p.T.base G)
    (hWG : TBBx5.WaveGrid p nn Y Λ K N) (hLG : TBBx5.LiftGrid p nn Y Λ K N) (hI5 : TBB.BlockGrowthBound p nn G Y K N) :
    TBB.CorS p nn G Y Λ K N C₂ := by
  have hPS : KB.PStdCpt := Formalism.FourierDecayAlt.P.standard_pairing_of_headsCpt Formalism.FourierDecayAlt.P.radial_head Formalism.FourierDecayAlt.P.head_top
  have hPos : TBB.PosAt p nn G Y N := posAt_of_cptCpt hA p nn G Y N (fun y => (hnn y).le) hG
  have hI2 := Formalism.FourierDecayAlt.P.head_continuity_at_zero_of_compact_coefficientsCpt hPS hA p nn G Y N Cb hCb hG
  have hI3 := Formalism.FourierDecayAlt.P.integral_three_at_placeCpt hA hPS Formalism.FourierDecayAlt.P.vector_isomorphism_compact_support Formalism.FourierDecayAlt.P.size_standard_compact
    Formalism.FourierDecayAlt.P.degree_of_plane_wave (Formalism.FourierDecayAlt.P.module_form_pos_compact_support : PBL.FormPosCpt) p nn G Y Λ K N Cb hCb hG hnn hWG
  have hI4 := Formalism.FourierDecayAlt.P.integral_four_at_placeCpt hA Formalism.FourierDecayAlt.P.size_standard_compact Formalism.FourierDecayAlt.P.degree_of_lift_pairing
    (Formalism.FourierDecayAlt.P.module_form_pos_compact_support : PBL.FormPosCpt) p nn G Y Λ K N hG hnn hLG
  exact Formalism.FourierDecayAlt.P.corSOfLemmaS_statement Wp Wq P p nn G Y Λ K N C₂ hKN hC₂ hPos
    (hLS Wp Wq P p nn G Y Λ K N hK hΛ hPos hI2 hI3 hI4 hI5)

end place
end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal
noncomputable section

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.ptBound_dec_allCpt (hA : P5.ThmPActualCpt) : ∃ C₂ : ℝ, 0 < C₂ ∧
    ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Λ κ₀ : ℝ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ) (Cb : ℝ),
      1 ≤ Λ → 0 < κ₀ → 3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) F →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, TBB.BlockGrowthBound p nn (apx (D.cutF p.T.base χ F ε) n) Y K N) →
      (∀ ε : ℝ, 0 < ε → LimTopN p nn (D.cutF p.T.base χ F ε)) →
      (∀ ε : ℝ, 0 < ε → LimZeroN p nn (D.cutF p.T.base χ F ε) Y N) →
      LimE p nn χ F Y N → LemB p F κ₀ → TBB.PtBound p F (κ₀ * (C₂ * Λ ^ 2) ^ (P.r + 1)) := by
  obtain ⟨C₂, hC₂, hLS⟩ :=
    Formalism.FourierDecayAlt.Final.tbb_lemmaSOfSteps Formalism.FourierDecayAlt.Final.tbb_stepOne Formalism.FourierDecayAlt.Final.tbb_stepUp
  refine ⟨C₂, hC₂, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p F Λ κ₀ χ nn Y K N Cb hΛ hκ hK hKN hχ hnn hCb hF hWG hLG hI5 hT hZ hE hB
  refine Formalism.FourierDecayAlt.Final.tbb_ptBoundOfCorS Wp Wq P p nn χ F Y Λ K N C₂ κ₀ hC₂.le hκ hnn
    ⟨1, one_pos, fun ε hε _ => ?_⟩ (TBBx3.vecCutAt_of_one p χ F hχ.2.2)
    (TBBx3.limZeroAt_of_limits p nn χ F Y N κ₀ hE hB)
  refine corS_of_apx p nn _ Y Λ K N C₂ (fun n => ?_) (hT ε hε) (hZ ε hε)
  exact corS_of_cptCpt hA p nn _ Y Λ K N Cb C₂ hLS hC₂.le hK hKN hΛ hnn hCb
    (cptCoef_apx P p.T.base hχ hF hε n) hWG hLG (hI5 ε hε n)

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal
noncomputable section

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.thmBpAt_of_leaves_decCpt (hA : P5.ThmPActualCpt) (C₃ CΛ C₀ Cκ : ℝ) (hC₃ : 0 ≤ C₃) (hCΛ : 0 ≤ CΛ)
    (hC₀ : 1 / 2 ≤ C₀) :
    ∃ C₄ : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Ap Am : B.Mat P.k P.r → (Wq →L[ℂ] Wq))
      (ApPt AmPt : C.LPt → (Wq →L[ℂ] Wq)) (b Λ κ₀ : ℝ) (n₀ p₀ : ℕ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ)
      (Cb : ℝ),
      3 ≤ b → 1 ≤ Λ → Λ ≤ b ^ (CΛ * ((2 * P.r + 2 : ℕ) : ℝ)) → 0 < κ₀ →
      κ₀ ≤ b ^ (Cκ * ((2 * P.r + 2 : ℕ) : ℝ) ^ 2) → 1 ≤ TBB.Tq p →
      n₀ ≤ 30 * (P.r + 1) ^ 2 + 6 → (p₀ : ℝ) ≤ C₀ * (3 * ((P.r : ℝ) + 1)) + 1 →
      3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) f →
      B.CkOn ⊤ (B.GV P.k P.r) Ap → B.CkOn ⊤ (B.GV P.k P.r) Am →
      Amaps p f Ap Am ApPt AmPt b n₀ → BigCellDerivativeExpansion p f b C₃ (2 * p₀ + n₀) →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ,
        TBB.BlockGrowthBound p nn (apx (D.cutF p.T.base χ (TBBx4.fpm p f Ap p₀) ε) n) Y K N) →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ,
        TBB.BlockGrowthBound p nn (apx (D.cutF p.T.base χ (TBBx4.fpm p f Am p₀) ε) n) Y K N) →
      (∀ ε : ℝ, 0 < ε → LimTopN p nn (D.cutF p.T.base χ (TBBx4.fpm p f Ap p₀) ε)) →
      (∀ ε : ℝ, 0 < ε → LimTopN p nn (D.cutF p.T.base χ (TBBx4.fpm p f Am p₀) ε)) →
      (∀ ε : ℝ, 0 < ε → LimZeroN p nn (D.cutF p.T.base χ (TBBx4.fpm p f Ap p₀) ε) Y N) →
      (∀ ε : ℝ, 0 < ε → LimZeroN p nn (D.cutF p.T.base χ (TBBx4.fpm p f Am p₀) ε) Y N) →
      LimE p nn χ (TBBx4.fpm p f Ap p₀) Y N → LimE p nn χ (TBBx4.fpm p f Am p₀) Y N →
      LemB p (TBBx4.fpm p f Ap p₀) κ₀ → LemB p (TBBx4.fpm p f Am p₀) κ₀ →
      TBB.ThmBpAt p f b C₄ n₀ p₀ := by
  obtain ⟨C₂, hC₂, hPB⟩ := ptBound_dec_allCpt hA
  obtain ⟨C₄, hC₄⟩ := Formalism.FourierDecayAlt.Final.tbb_thmBpOfParts C₃ CΛ C₀ C₂ Cκ hC₃ hCΛ hC₀ hC₂
  refine ⟨C₄, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f Ap Am ApPt AmPt b Λ κ₀ n₀ p₀ χ nn Y K N Cb hb hΛ hΛb hκ hκb hTq hn₀
    hp₀ hK hKN hχ hnn hCb hf hAp hAm hAm' hExp hWG hLG hI5p hI5m hTp hTm hZp hZm hEp hEm hBp hBm
  obtain ⟨h1, h2, h3, h4, h5⟩ := hAm'
  exact hC₄ Wp Wq P p f (TBBx4.fpm p f Ap p₀) (TBBx4.fpm p f Am p₀) b Λ κ₀ n₀ p₀ hb hΛ hΛb hκ hκb
    hTq hn₀ hp₀ (TBBx4.normAt_fpm p f Ap Am ApPt AmPt b n₀ p₀ h1 h2 h3 h4 h5)
    (hPB Wp Wq P p _ Λ κ₀ χ nn Y K N Cb hΛ hκ hK hKN hχ hnn hCb (ckOn_fpm p p₀ hf hAp) hWG hLG
      hI5p hTp hZp hEp hBp)
    (hPB Wp Wq P p _ Λ κ₀ χ nn Y K N Cb hΛ hκ hK hKN hχ hnn hCb (ckOn_fpm p p₀ hf hAm) hWG hLG
      hI5m hTm hZm hEm hBm)
    (TBBx4.regularity_at_place_of_expansion p f b C₃ (2 * p₀ + n₀) (by linarith) hExp)

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants
noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace in
theorem _root_.Formalism.FourierDecayAlt.P.CutBP.thmBpAt_mainCpt (hA : P5.ThmPActualCpt) (Cb C₃ CΛ C₀ Cκ : ℝ) (hC₃ : 0 ≤ C₃) (hCΛ : 0 ≤ CΛ) (hC₀ : 1 / 2 ≤ C₀) :
    ∃ C₄ c₃ Cc : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b Λ κ₀ A₀ : ℝ) (p₀ : ℕ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ),
      3 ≤ b → 1 ≤ Λ → Λ ≤ b ^ (CΛ * ((2 * P.r + 2 : ℕ) : ℝ)) → 0 < κ₀ →
      κ₀ ≤ b ^ (Cκ * ((2 * P.r + 2 : ℕ) : ℝ) ^ 2) → 1 ≤ TBB.Tq p →
      (p₀ : ℝ) ≤ C₀ * (3 * ((P.r : ℝ) + 1)) + 1 →
      3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) f → (∀ m : ℕ, B.InCC A₀ m f) →
      c₃ * ((P.r : ℝ) + 1) ^ 2 * ((P.r : ℝ) * ((2 * P.r + P.k + 1 : ℕ) : ℝ) + 1) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      BigCellDerivativeExpansion p f b C₃ (2 * p₀ + 0) →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, TBB.BlockGrowthBound p nn
        (apx (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) n) Y K N) →
      LimE p nn χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N →
      LemB p (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) κ₀ →
      TBB.ThmBpAt p f b C₄ 0 p₀ := by
  obtain ⟨C₄, hC₄⟩ := thmBpAt_of_leaves_decCpt hA C₃ CΛ C₀ Cκ hC₃ hCΛ hC₀
  obtain ⟨c₃, hc₃⟩ := limTopN_cut_of_inCC
  obtain ⟨Cc, hCc⟩ := limZeroN_of_formLimit Cb
  refine ⟨C₄, c₃, Cc, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f b Λ κ₀ A₀ p₀ χ nn Y K N hb hΛ hΛb hκ hκb hT hp₀ hK hKN hχ hnn hCb hf hfA hth1 hth2
    hexp hWG hLG hI5 hE hB
  have hid : B.CkOn ⊤ (B.GV P.k P.r) (fun _ : B.Mat P.k P.r => ContinuousLinearMap.id ℂ Wq) := fun g₀ _ =>
    ⟨Set.univ, fun _ => ContinuousLinearMap.id ℂ Wq, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩
  have hFd := inCC_fpm_id p p₀ hfA
  have hFck := ckOn_fpm p p₀ hf hid
  have hTN : ∀ ε : ℝ, 0 < ε → LimTopN p nn
      (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) :=
    hc₃ Wp Wq P p nn χ _ _ hth1 hχ hFd hFck
  have hZN : ∀ ε : ℝ, 0 < ε → LimZeroN p nn
      (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) Y N :=
    fun ε hε => hCc Wp Wq P p _ χ ε _ N nn Y hCb hχ hε hFck hFd hth2
  exact hC₄ Wp Wq P p f _ _ _ _ b Λ κ₀ 0 p₀ χ nn Y K N Cb hb hΛ hΛb hκ hκb hT (Nat.zero_le _) hp₀ hK hKN hχ hnn
    hCb hf hid hid (amaps_id p f b) hexp hWG hLG hI5 hI5 hTN hTN hZN hZN hE hE hB hB

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants
noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace in
theorem _root_.Formalism.FourierDecayAlt.P.CutBP.thmBpAt_main1Cpt (hA : P5.ThmPActualCpt) (Cb C₃ CΛ C₀ : ℝ) (hC₃ : 0 ≤ C₃) (hCΛ : 0 ≤ CΛ) (hC₀ : 1 / 2 ≤ C₀) :
    ∃ C₄ c₃ Cc : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b Λ A₀ : ℝ) (p₀ : ℕ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ),
      3 ≤ b → 1 ≤ Λ → Λ ≤ b ^ (CΛ * ((2 * P.r + 2 : ℕ) : ℝ)) → 1 ≤ TBB.Tq p →
      (p₀ : ℝ) ≤ C₀ * (3 * ((P.r : ℝ) + 1)) + 1 →
      3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) f → (∀ m : ℕ, B.InCC A₀ m f) →
      c₃ * ((P.r : ℝ) + 1) ^ 2 * ((P.r : ℝ) * ((2 * P.r + P.k + 1 : ℕ) : ℝ) + 1) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      BigCellDerivativeExpansion p f b C₃ (2 * p₀ + 0) →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, TBB.BlockGrowthBound p nn
        (apx (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) n) Y K N) →
      LimE p nn χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N →
      TBB.ThmBpAt p f b C₄ 0 p₀ := by
  obtain ⟨C₄, c₃, Cc, h⟩ := thmBpAt_mainCpt hA Cb C₃ CΛ C₀ 0 hC₃ hCΛ hC₀
  refine ⟨C₄, c₃, Cc, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f b Λ A₀ p₀ χ nn Y K N h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 hE
  exact h Wp Wq P p f b Λ 1 A₀ p₀ χ nn Y K N h1 h2 h3 one_pos (by simp) h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 hE (lemB_one p _)

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology
noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace in
theorem _root_.Formalism.FourierDecayAlt.P.CutBP.thmBpAt_main2Cpt (hA : P5.ThmPActualCpt) (Cb C₃ CΛ C₀ : ℝ) (hC₃ : 0 ≤ C₃) (hCΛ : 0 ≤ CΛ) (hC₀ : 1 / 2 ≤ C₀) :
    ∃ C₄ c₃ Cc Cc' : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b Λ A₀ : ℝ) (p₀ : ℕ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ),
      3 ≤ b → 1 ≤ Λ → Λ ≤ b ^ (CΛ * ((2 * P.r + 2 : ℕ) : ℝ)) → 1 ≤ TBB.Tq p →
      (p₀ : ℝ) ≤ C₀ * (3 * ((P.r : ℝ) + 1)) + 1 →
      3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) f → (∀ m : ℕ, B.InCC A₀ m f) →
      c₃ * ((P.r : ℝ) + 1) ^ 2 * ((P.r : ℝ) * ((2 * P.r + P.k + 1 : ℕ) : ℝ) + 1) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc' * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      BigCellDerivativeExpansion p f b C₃ (2 * p₀ + 0) →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, TBB.BlockGrowthBound p nn
        (apx (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) n) Y K N) →
      LimEvT p χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N →
      LimBd p nn (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N →
      TBB.ThmBpAt p f b C₄ 0 p₀ := by
  obtain ⟨C₄, c₃, Cc, h⟩ := thmBpAt_main1Cpt hA Cb C₃ CΛ C₀ hC₃ hCΛ hC₀
  obtain ⟨Cc', hL⟩ := limE_of_limEvTCpt hA Cb
  refine ⟨C₄, c₃, Cc, Cc', ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f b Λ A₀ p₀ χ nn Y K N h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15
    h16 h17 h18 h19 hEv hBd
  have hid : B.CkOn ⊤ (B.GV P.k P.r) (fun _ : B.Mat P.k P.r => ContinuousLinearMap.id ℂ Wq) :=
    fun _ _ => ⟨Set.univ, fun _ => ContinuousLinearMap.id ℂ Wq, isOpen_univ, Set.mem_univ _,
      contDiffOn_const, fun _ _ _ => rfl⟩
  exact h Wp Wq P p f b Λ A₀ p₀ χ nn Y K N h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h16 h17 h18 h19
    (hL Wp Wq P p (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) χ nn
      (A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ)) N Y h10 h8 (fun y => (h9 y).le) (ckOn_fpm p p₀ h11 hid)
      (inCC_fpm_id p p₀ h12) h15 hEv hBd)

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP.GT
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace
noncomputable section
open Classical

end
end Formalism.FourierDecayAlt.P.CutBP.GT

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
noncomputable section

theorem _root_.Formalism.FourierDecayAlt.P.CutBP.limEvT_fpm_of_NFCpt (hA : P5.ThmPActualCpt) (h1 : NFTopFormAllCpt) (h2 : NFTopPtwAll) (h3 : NFTopDomAll) (h4 : NFTopIdAll) (Cb : ℝ) :
    ∃ Cc : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (A₀ : ℝ) (p₀ : ℕ) (χ : ℝ → ℝ) (Y : Finset ℝ) (N : ℕ),
      NFHyp Cb Cc p f A₀ p₀ χ N →
      LimEvT p χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N := by
  obtain ⟨C1, k1⟩ := h1 hA Cb
  obtain ⟨C2, k2⟩ := h2 Cb
  obtain ⟨C3, k3⟩ := h3 Cb
  obtain ⟨C4, k4⟩ := h4 Cb
  refine ⟨max (max C1 C2) (max C3 C4), ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f A₀ p₀ χ Y N hH
  have mono : ∀ C, C ≤ max (max C1 C2) (max C3 C4) → NFHyp Cb C p f A₀ p₀ χ N := by
    intro C hC
    unfold NFHyp at hH ⊢
    obtain ⟨a1, a2, a3, a4, a5, a6⟩ := hH
    refine ⟨a1, a2, a3, a4, le_trans ?_ a5, a6⟩
    gcongr
  exact limEvT_of_NF p χ _ Y N (k1 Wp Wq P p f A₀ p₀ χ Y N (mono C1 (by simp))) (k2 Wp Wq P p f A₀ p₀ χ Y N (mono C2 (by simp)))
    (k3 Wp Wq P p f A₀ p₀ χ Y N (mono C3 (by simp))) (k4 Wp Wq P p f A₀ p₀ χ Y N (mono C4 (by simp)))

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace in
theorem _root_.Formalism.FourierDecayAlt.P.CutBP.thmBpAt_main4Cpt (hA : P5.ThmPActualCpt) (h1 : NFTopFormAllCpt) (h2 : NFTopPtwAll) (h3 : NFTopDomAll)
    (h4 : NFTopIdAll) (Cb C₃ CΛ C₀ : ℝ) (hC₃ : 0 ≤ C₃) (hCΛ : 0 ≤ CΛ) (hC₀ : 1 / 2 ≤ C₀) :
    ∃ C₄ c₃ Cc Cc' Cc'' : ℝ, ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
      [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
      (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b Λ A₀ : ℝ) (p₀ : ℕ) (χ nn : ℝ → ℝ) (Y : Finset ℝ) (K N : ℕ),
      3 ≤ b → 1 ≤ Λ → Λ ≤ b ^ (CΛ * ((2 * P.r + 2 : ℕ) : ℝ)) → 1 ≤ TBB.Tq p →
      (p₀ : ℝ) ≤ C₀ * (3 * ((P.r : ℝ) + 1)) + 1 →
      3 ≤ K → (P.r + 1) * K ≤ N → C6.IsCut0 χ → (∀ y, 0 < nn y) →
      KB.InDDplus2 P p.l0 p.T.base Cb p.Θ → B.CkOn ⊤ (B.GV P.k P.r) f → (∀ m : ℕ, B.InCC A₀ m f) →
      c₃ * ((P.r : ℝ) + 1) ^ 2 * ((P.r : ℝ) * ((2 * P.r + P.k + 1 : ℕ) : ℝ) + 1) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc' * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      Cc'' * ((P.r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 + (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤
        A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ) →
      N ≤ 2 * p₀ →
      BigCellDerivativeExpansion p f b C₃ (2 * p₀ + 0) →
      TBBx5.WaveGrid p nn Y Λ K N → TBBx5.LiftGrid p nn Y Λ K N →
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, TBB.BlockGrowthBound p nn
        (apx (D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε) n) Y K N) →
      LimBd p nn (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) Y N →
      TBB.ThmBpAt p f b C₄ 0 p₀ := by
  obtain ⟨C₄, c₃, Cc, Cc', h⟩ := thmBpAt_main2Cpt hA Cb C₃ CΛ C₀ hC₃ hCΛ hC₀
  obtain ⟨Cn, hn⟩ := limEvT_fpm_of_NFCpt hA h1 h2 h3 h4 Cb
  refine ⟨C₄, c₃, Cc, Cc', Cn, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f b Λ A₀ p₀ χ nn Y K N hb hΛ hΛb hT hp₀ hK hKN hχ hnn hCb hf hfA hth1 hth2 hth3
    hth4 hN2 hexp hWG hLG hI5 hBd
  exact h Wp Wq P p f b Λ A₀ p₀ χ nn Y K N hb hΛ hΛb hT hp₀ hK hKN hχ hnn hCb hf hfA hth1 hth2 hth3 hexp hWG hLG
    hI5 (hn Wp Wq P p f A₀ p₀ χ Y N ⟨hχ, hCb, hf, hfA, hth4, hN2⟩) hBd

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace
noncomputable section
open Classical

open GLG in

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace
noncomputable section
open Classical

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
noncomputable section

end
end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP.GT
open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace
noncomputable section
open Classical

end
end Formalism.FourierDecayAlt.P.CutBP.GT

namespace Formalism.FourierDecayAlt.P.CutBP
open Formalism.FourierDecayAlt

open Formalism.QuantumDeterminants MeasureTheory in
theorem block_growth_bound_of_compact_coefCpt (hA : P5.ThmPActualCpt) {Wp Wq : Type}
    [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]
    [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par}
    (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ) (G : B.Mat P.k P.r → (Wq →L[ℂ] Wp))
    (Y : Finset ℝ) (K N : ℕ) (Cb : ℝ) (hCb : KB.InDDplus2 P p.l0 p.T.base Cb p.Θ)
    (hG : KB.CptCoef p.T.base G) (hnn : ∀ y, 0 < nn y) : TBB.BlockGrowthBound p nn G Y K N :=
  GlobalTheory.LatticeGerm.latticeSum_of_cptCoef hA _ _ _ p nn G Y K N Cb hCb hG hnn

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutMainCpt =====
