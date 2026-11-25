module

public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Assembly
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsConeTangentAverage
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFiniteFibreDim
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeJacMeasurable
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeKrullDimLe
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeTangentDim
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PKernelProjMeasurable
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussInvariant
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentJacCompress
public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PConormalGenerationGeneric
public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PFrameJacobianGeneric
public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PJacobianRankGeneric
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PAreaMultiplicityWeight
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeAreaFormula
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeGraphCover
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeSmoothLocalGraph
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PGraphAreaFibre
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PGraphAreaIntegral
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PHolomorphicImplicitGraph
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PPolyLocalGenerators
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentJacComp
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AeFibrePointsCardEqDegree
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.MeasureTheory.Constructions.Polish.Basic
public import Mathlib.MeasureTheory.Integral.Lebesgue.Add
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MeasurableFibreCountOver
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeLogBound
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianMatrixMeasurePosFinite
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFsLogIntegrable
import Mathlib.Tactic.Linter.HaveILetI
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeTangentAverage
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFibreAverage
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsSigmaCompactConeInter
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PChowDegreePos
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsDoubleComplexVanish
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConeBallLogGapIntegral, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConeBallLogGapIntegral, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionBallIndicator, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionConeCoarea, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibreavg, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HausdorffConeBallMeasure, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaOpenCone, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RandomSetSumExpectation, Development.WeilBound.CoreStatements.CommonZeroEvaluation.CroftonFormulaFibreSum, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaFibreSum, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FubiniStudyLogLeLogNorm, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LogGapMeasurableScaleStable, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConeBallLogGapIntegral =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConeBallLogGapIntegral", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Assembly\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFsLogIntegrable\nimport GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace ModelDimension.ConeBallLogGap

theorem logGap_eq_ofReal_of_ne {n : ℕ} (h : HermNorm n) (u : Fin n → ℂ)
    {y : EuclideanSpace ℂ (Fin n)} (hy : y ≠ 0) (hs : ∑ j, u j * h.pointOf y j ≠ 0) :
    logGap h u y = ENNReal.ofReal (Real.log (h.norm u) - fsLog h u (h.pointOf y)) ∧
      0 ≤ Real.log (h.norm u) - fsLog h u (h.pointOf y) := by
  refine ⟨by simp [logGap, hy, hs], ?_⟩
  have hy' : 0 < ‖y‖ := norm_pos_iff.mpr hy
  rw [ConeFsLog.fsLog_pointOf, sub_nonneg]
  exact Real.log_le_log (div_pos (norm_pos_iff.mpr hs) hy')
    ((div_le_iff₀ hy').mpr (ConeFsLog.norm_sum_mul_pointOf_le h u y))

theorem coneBall_logGap_integral (n e : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
    (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u : Fin n → ℂ)
    (hW : IsProjPrime W) (hf : IsChowForm W (e + 1) f) (hu : linForm u ∉ W) :
    ∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) < ⊤ ∧
      (∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))).toReal =
        Real.log (h.norm u) * ((Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) (coneBall h W)).toReal -
          ∫ y in coneBall h W, fsLog h u (h.pointOf y) ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) := by
  have hfin := ConeBallFinite.full n e h W f hW hf
  have hint := ConeFsLogIntegrable.full n e h W f u hW hf hu
  have hnull := ConeHyperplaneNull.full n e h W f u hW hf hu
  set ν : Measure (EuclideanSpace ℂ (Fin n)) := Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) with hν
  have h0 : ν {0} = 0 := by
    haveI := Measure.nullSingletonClass_hausdorff (X := EuclideanSpace ℂ (Fin n))
      (d := ((2 * (e + 1) : ℕ) : ℝ)) (by positivity)
    exact measure_singleton 0
  haveI : IsFiniteMeasure (ν.restrict (coneBall h W)) := ⟨by simpa using hfin⟩
  have hp : Continuous (fun y : EuclideanSpace ℂ (Fin n) => h.pointOf y) := by
    unfold HermNorm.pointOf; fun_prop
  have hc : Continuous (fun y : EuclideanSpace ℂ (Fin n) => ∑ j, u j * h.pointOf y j) :=
    continuous_finsetSum _ fun j _ => continuous_const.mul ((continuous_apply j).comp hp)
  have hZm : MeasurableSet {y : EuclideanSpace ℂ (Fin n) | ∑ j, u j * h.pointOf y j = 0} :=
    (isClosed_eq hc continuous_const).measurableSet
  have hZ : (ν.restrict (coneBall h W)) {y | ∑ j, u j * h.pointOf y j = 0} = 0 := by
    rw [Measure.restrict_apply hZm, Set.inter_comm]
    exact hnull
  have h0' : ∀ᵐ y ∂(ν.restrict (coneBall h W)), y ∈ ({0} : Set (EuclideanSpace ℂ (Fin n)))ᶜ :=
    ae_mono Measure.restrict_le_self (compl_mem_ae_iff.mpr h0)
  have hgood : ∀ᵐ y ∂(ν.restrict (coneBall h W)),
      logGap h u y = ENNReal.ofReal (Real.log (h.norm u) - fsLog h u (h.pointOf y)) ∧
        0 ≤ Real.log (h.norm u) - fsLog h u (h.pointOf y) := by
    filter_upwards [compl_mem_ae_iff.mpr hZ, h0'] with y hy1 hy2
    exact logGap_eq_ofReal_of_ne h u hy2 hy1
  have hFint : Integrable (fun y => Real.log (h.norm u) - fsLog h u (h.pointOf y))
      (ν.restrict (coneBall h W)) := (integrable_const _).sub hint
  have hlin : ∫⁻ y in coneBall h W, logGap h u y ∂ν =
      ENNReal.ofReal (∫ y in coneBall h W, (Real.log (h.norm u) - fsLog h u (h.pointOf y)) ∂ν) := by
    rw [ofReal_integral_eq_lintegral_ofReal hFint (hgood.mono fun y hy => hy.2)]
    exact lintegral_congr_ae (hgood.mono fun y hy => hy.1)
  have hI : ∫ y in coneBall h W, (Real.log (h.norm u) - fsLog h u (h.pointOf y)) ∂ν =
      Real.log (h.norm u) * (ν (coneBall h W)).toReal -
        ∫ y in coneBall h W, fsLog h u (h.pointOf y) ∂ν := by
    rw [integral_sub (integrable_const _) hint, setIntegral_const, measureReal_def, smul_eq_mul,
      mul_comm]
  refine ⟨by rw [hlin]; exact ENNReal.ofReal_lt_top, ?_⟩
  rw [hlin, ENNReal.toReal_ofReal (integral_nonneg_of_ae (hgood.mono fun y hy => hy.2)), hI]

end ModelDimension.ConeBallLogGap

theorem ModelDimension.integral_coneBall_log_gap_eq : ∀ (n e : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u : Fin n → ℂ),
  IsProjPrime W → IsChowForm W (e + 1) f → linForm u ∉ W →
    ∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) < ⊤ ∧
      (∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))).toReal =
        Real.log (h.norm u) * ((Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) (coneBall h W)).toReal -
          ∫ y in coneBall h W, fsLog h u (h.pointOf y) ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) :=
  fun n e h W f u hW hf hu => ModelDimension.ConeBallLogGap.coneBall_logGap_integral n e h W f u hW hf hu
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConeBallLogGapIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConeBallLogGapIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConeBallLogGapIntegral", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.ConeBallLogGapIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.cone_ball_log_gap_integral : ∀ (n e : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u : Fin n → ℂ),
  IsProjPrime W → IsChowForm W (e + 1) f → linForm u ∉ W →
    ∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) < ⊤ ∧
      (∫⁻ y in coneBall h W, logGap h u y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))).toReal =
        Real.log (h.norm u) * ((Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) (coneBall h W)).toReal -
          ∫ y in coneBall h W, fsLog h u (h.pointOf y) ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) := by
  first | exact @ModelDimension.integral_coneBall_log_gap_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConeBallLogGapIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionBallIndicator =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionBallIndicator", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsConeTangentAverage\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFiniteFibreDim\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeJacMeasurable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeKrullDimLe\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeTangentAverage\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeTangentDim\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PKernelProjMeasurable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussInvariant\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentJacCompress\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PConormalGenerationGeneric\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PFrameJacobianGeneric\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PJacobianRankGeneric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix

open scoped ENNReal

noncomputable section

theorem coneTangentAverage_inter (n m : ℕ) (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ))
    (hJ : IsProjPrime J) (hm : 0 < m) (hmn : m ≤ n)
    (hfib : ∀ᵐ π : Fin m → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin m), fibreCount h J π w ≠ ⊤)
    (A : Set (EuclideanSpace ℂ (Fin n))) (hA : MeasurableSet A) :
    ∫⁻ π : Fin m → Fin n → ℂ, matGauss π *
        ∫⁻ y in coneSet h J ∩ A,
          (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
            ENNReal.ofReal (coneJac h J π y) ∂(Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) =
      ∫⁻ y in coneSet h J ∩ A, tangentGaussProfile n m ‖y‖
        ∂(Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) := by
  have hMass : ConeLocalMass.Statement := ConeLocalMass.of_open ConeFiniteFibreDim.proof
  have hMeas : ConeJacMeasurable.Statement :=
    ConeJacMeasurable.proof TangentJacCompress.proof KernelProjMeasurable.proof
  have hDim : ConeTangentDim.Statement :=
    ConeTangentDim.proof (ConeKrullDimLe.proof ConeFiniteFibreDim.proof) NullSmaller.full
      (FrameJacobianGeneric.proof JacobianRankGeneric.proof ConormalGenerationGeneric.proof)
  have hInv : TangentGaussInvariant.Statement := TangentGaussInvariant.proof
  have hres : (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) :
      Measure (EuclideanSpace ℂ (Fin n))).restrict (coneSet h J ∩ A) =
      ((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) :
        Measure (EuclideanSpace ℂ (Fin n))).restrict (coneSet h J)).restrict A := by
    rw [Measure.restrict_restrict hA, Set.inter_comm]
  rw [hres]
  have hS : SFinite ((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) :
      Measure (EuclideanSpace ℂ (Fin n))).restrict (coneSet h J)) :=
    sFinite_restrict_of_ball _ _ (hMass n m h J hJ hm hmn hfib)
  have hG : Measurable fun π : Fin m → Fin n → ℂ => matGauss π := by
    unfold matGauss
    exact (by fun_prop : Continuous fun π : Fin m → Fin n → ℂ =>
      Real.exp (-∑ i, ∑ j, ‖π i j‖ ^ 2)).measurable.ennreal_ofReal
  have hP : Continuous fun p : (Fin m → Fin n → ℂ) × EuclideanSpace ℂ (Fin n) =>
      linProj p.1 p.2 := by
    unfold linProj
    fun_prop
  have hF : AEMeasurable
      (Function.uncurry fun (π : Fin m → Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)) =>
        matGauss π * ((Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
          ENNReal.ofReal (coneJac h J π y)))
      ((volume : Measure (Fin m → Fin n → ℂ)).prod
        ((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)).restrict (coneSet h J))) :=
    (hG.comp measurable_fst).aemeasurable.mul
      (((measurable_one.indicator Metric.isOpen_ball.measurableSet).comp
        hP.measurable).aemeasurable.mul (hMeas n m h J hJ hm hmn hfib).ennreal_ofReal)
  have hFA : AEMeasurable
      (Function.uncurry fun (π : Fin m → Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)) =>
        matGauss π * ((Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
          ENNReal.ofReal (coneJac h J π y)))
      ((volume : Measure (Fin m → Fin n → ℂ)).prod
        (((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)).restrict (coneSet h J)).restrict A)) := by
    have hpr := Measure.prod_restrict (μ := (volume : Measure (Fin m → Fin n → ℂ)))
      (ν := (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) :
        Measure (EuclideanSpace ℂ (Fin n))).restrict (coneSet h J)) Set.univ A
    rw [Measure.restrict_univ] at hpr
    rw [hpr]
    exact hF.restrict
  rw [show (fun π : Fin m → Fin n → ℂ => matGauss π *
      ∫⁻ y in A, (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
        ENNReal.ofReal (coneJac h J π y)
          ∂((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)).restrict (coneSet h J))) =
      fun π => ∫⁻ y in A, matGauss π *
        ((Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
          ENNReal.ofReal (coneJac h J π y))
          ∂((Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)).restrict (coneSet h J)) from
    funext fun π => (lintegral_const_mul' _ _ ENNReal.ofReal_ne_top).symm,
    lintegral_lintegral_swap hFA]
  refine lintegral_congr_ae (ae_restrict_of_ae ?_)
  filter_upwards [hDim n m h J hJ hm hmn hfib,
    ae_restrict_mem (isClosed_coneSet h J).measurableSet] with y hy hyC
  simp only [← mul_assoc]
  exact hInv n m hm hmn _ hy y (mem_coneTangent_self h hJ hyC)

end

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionBallIndicator =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionConeCoarea =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionConeCoarea", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PAreaMultiplicityWeight\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeAreaFormula\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFiniteFibreDim\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeGraphCover\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeKrullDimLe\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeSmoothLocalGraph\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeTangentDim\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PGraphAreaFibre\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PGraphAreaIntegral\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PHolomorphicImplicitGraph\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PPolyLocalGenerators\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentJacComp\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PConormalGenerationGeneric\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PFrameJacobianGeneric\npublic import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PJacobianRankGeneric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem coneArea_inter : ∀ (n m : ℕ) (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ)), IsProjPrime J → 0 < m → m ≤ n →
  (∀ᵐ π : Fin m → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin m), fibreCount h J π w ≠ ⊤) →
  ∀ (π : Fin m → Fin n → ℂ) (A : Set (EuclideanSpace ℂ (Fin n))), MeasurableSet A →
  ∀ g : EuclideanSpace ℂ (Fin m) → ℝ≥0∞, Measurable g →
    volume (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
        ∫⁻ y in coneSet h J ∩ A, g (linProj π y) * ENNReal.ofReal (coneJac h J π y) ∂(Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) =
      (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
        ∫⁻ w : EuclideanSpace ℂ (Fin m), cntOver (coneSet h J ∩ A) π w * g w := by
  intro n m h J hJ hm hmn hfin π A hA g hg
  have hCover : ConeGraphCover.Statement := ConeGraphCover.proof ConeFiniteFibreDim.proof
    (ConeTangentDim.proof (ConeKrullDimLe.proof ConeFiniteFibreDim.proof) NullSmaller.full
      (FrameJacobianGeneric.proof JacobianRankGeneric.proof ConormalGenerationGeneric.proof))
    (ConeSmoothLocalGraph.proof PolyLocalGenerators.proof HolomorphicImplicitGraph.proof)
  have hArea : GraphAreaFibre.Statement :=
    GraphAreaFibre.proof (GraphAreaIntegral.proof GraphAreaHolomorphic.full) TangentJacComp.proof
      AreaMultiplicityWeight.proof
  obtain ⟨e, Ω, Φ, hpc, hnull⟩ := hCover n m h J hJ hm hmn hfin
  let S : ℕ → Set (EuclideanSpace ℂ (Fin n)) := fun i => graphPt (e i) (Φ i) '' Ω i
  let D₀ := disjointed S
  let D : ℕ → Set (EuclideanSpace ℂ (Fin n)) := fun i => D₀ i ∩ A
  have hSm : ∀ i, MeasurableSet (S i) := fun i =>
    (hpc i).1.measurableSet.image_of_continuousOn_injOn
      (continuousOn_graphPt _ (hpc i).2.1.continuousOn) (graphPt_injective_of_graphBase _ _).injOn
  have hD₀m : ∀ i, MeasurableSet (D₀ i) := MeasurableSet.disjointed hSm
  have hDm : ∀ i, MeasurableSet (D i) := fun i => (hD₀m i).inter hA
  have hD₀S : ∀ i, D₀ i ⊆ S i := disjointed_subset S
  have hDS : ∀ i, D i ⊆ S i := fun i => Set.inter_subset_left.trans (hD₀S i)
  have hDd : Pairwise (Function.onFun Disjoint D) := fun i j hij =>
    (disjoint_disjointed S hij).mono Set.inter_subset_left Set.inter_subset_left
  have hU₀ : ⋃ i, D₀ i = ⋃ i, S i := iUnion_disjointed
  have hUC₀ : ⋃ i, S i ⊆ coneSet h J := Set.iUnion_subset fun i => (hpc i).2.2.1
  have hUC : ⋃ i, D i ⊆ coneSet h J ∩ A := Set.iUnion_subset fun i y hy =>
    ⟨hUC₀ (hU₀ ▸ Set.mem_iUnion.2 ⟨i, hy.1⟩), hy.2⟩
  have hN : Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) ((coneSet h J ∩ A) \ ⋃ i, D i) = 0 := by
    refine measure_mono_null ?_ hnull
    rintro y ⟨⟨hyC, hyA⟩, hyD⟩
    refine ⟨hyC, fun hyS => hyD ?_⟩
    rw [← hU₀] at hyS
    obtain ⟨i, hi⟩ := Set.mem_iUnion.1 hyS
    exact Set.mem_iUnion.2 ⟨i, hi, hyA⟩
  have hCae : (coneSet h J ∩ A : Set (EuclideanSpace ℂ (Fin n))) =ᵐ[Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)] ⋃ i, D i :=
    ae_eq_set.2 ⟨hN, by rw [Set.sdiff_eq_empty.2 hUC]; exact measure_empty⟩
  have hpiece := fun i => hArea m (n - m) n (e i) (Ω i) (Φ i) (hpc i).1 (hpc i).2.1 (D i) (hDS i)
    (hDm i) (coneTangent h J) (fun x hx _ => (hpc i).2.2.2 x hx) π
  have hcount : ∀ᵐ w ∂(volume : Measure (EuclideanSpace ℂ (Fin m))),
      cntOver (coneSet h J ∩ A) π w * g w =
        ∑' i, (({y | y ∈ D i ∧ linProj π y = w}.encard : ℕ∞) : ℝ≥0∞) * g w := by
    filter_upwards [measure_eq_zero_iff_ae_notMem.1 (volume_linProj_image_null π hN)] with w hw
    rw [ENNReal.tsum_mul_right, cntOver, ptsOver, ← encard_iUnion_disjoint_nat]
    · congr 3
      ext y
      simp only [Set.mem_ofPred_eq, Set.mem_iUnion]
      constructor
      · rintro ⟨hy, rfl⟩
        by_contra hne
        exact hw ⟨y, ⟨hy, fun hyD => hne (by
          obtain ⟨i, hi⟩ := Set.mem_iUnion.1 hyD
          exact ⟨i, hi, rfl⟩)⟩, rfl⟩
      · rintro ⟨i, hi, hw'⟩
        exact ⟨hUC (Set.mem_iUnion.2 ⟨i, hi⟩), hw'⟩
    · intro i j hij
      exact (hDd hij).mono (fun y hy => hy.1) (fun y hy => hy.1)
  calc volume (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
        ∫⁻ y in coneSet h J ∩ A, g (linProj π y) * ENNReal.ofReal (coneJac h J π y)
          ∂(Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ))
      = ∑' i, volume (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
          ∫⁻ y in D i, g (linProj π y) * ENNReal.ofReal (coneJac h J π y)
            ∂(Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) := by
        rw [Measure.restrict_congr_set hCae, lintegral_iUnion hDm hDd, ENNReal.tsum_mul_left]
    _ = ∑' i, Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
          ∫⁻ w, (({y | y ∈ D i ∧ linProj π y = w}.encard : ℕ∞) : ℝ≥0∞) * g w :=
        tsum_congr fun i => (hpiece i).2 g hg
    _ = Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ) (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) *
          ∫⁻ w, cntOver (coneSet h J ∩ A) π w * g w := by
        rw [ENNReal.tsum_mul_left, ← lintegral_tsum
          (f := fun i w => (({y | y ∈ D i ∧ linProj π y = w}.encard : ℕ∞) : ℝ≥0∞) * g w)
          fun i => (hpiece i).1.mul hg.aemeasurable, lintegral_congr_ae hcount]

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionConeCoarea =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibreavg =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibreavg", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsConeTangentAverage\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionBallIndicator\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianProjectionConeCoarea\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFibreAverage\nimport GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

theorem PositivityTheory.Xgn.t_xgz_chow_mahler_fibreavg : ∀ n m : ℕ, 0 < m → m ≤ n → ∃ K : ℝ≥0∞, 0 < K ∧ K < ⊤ ∧
  ∀ (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ)), IsProjPrime J → (∀ᵐ π : Fin m → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin m), fibreCount h J π w ≠ ⊤) →
  ∀ A : Set (EuclideanSpace ℂ (Fin n)), MeasurableSet A → (∀ y ∈ A, ∀ t : ℝ, 0 < t → t • y ∈ A) →
    (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h J ∩ A} < ⊤ →
    ∫⁻ π : Fin m → Fin n → ℂ, matGauss π * ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1), cntOver (coneSet h J ∩ A) π w =
      K * (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h J ∩ A} := by
  intro n m hm hmn
  obtain ⟨hkm, -, -, hM0, hMtop⟩ := TangentGaussMoment.full n m hm hmn
  set μ := Measure.hausdorffMeasure (X := EuclideanSpace ℂ (Fin n)) ((2 * m : ℕ) : ℝ) with hμ
  set k := tangentGaussProfile n m with hk
  set M := ∫⁻ r in Set.Ioi (0 : ℝ), k r * ENNReal.ofReal (2 * m * r ^ (2 * m - 1)) with hM
  have hd : ((2 * m : ℕ) : ℝ) = (Module.finrank ℝ (EuclideanSpace ℂ (Fin m)) : ℝ) := by
    rw [finrank_real_of_complex, finrank_euclideanSpace_fin]
  obtain ⟨H, hHdef⟩ : ∃ H, Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)
      (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) = H := ⟨_, rfl⟩
  obtain ⟨V, hVdef⟩ : ∃ V, volume (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1) = V := ⟨_, rfl⟩
  have hH0 : H ≠ 0 := by
    rw [← hHdef, hd]
    exact (Metric.measure_ball_pos _ _ one_pos).ne'
  have hHtop : H ≠ ⊤ := by
    rw [← hHdef, hd]
    exact measure_ball_lt_top.ne
  have hV0 : V ≠ 0 := hVdef ▸ (Metric.measure_ball_pos _ _ one_pos).ne'
  have hVtop : V ≠ ⊤ := hVdef ▸ measure_ball_lt_top.ne
  have hc0 : H⁻¹ * V ≠ 0 := mul_ne_zero (ENNReal.inv_ne_zero.2 hHtop) hV0
  have hctop : H⁻¹ * V ≠ ⊤ := ENNReal.mul_ne_top (ENNReal.inv_ne_top.2 hH0) hVtop
  refine ⟨H⁻¹ * V * M, ENNReal.mul_pos hc0 hM0.ne', ENNReal.mul_lt_top hctop.lt_top hMtop, ?_⟩
  intro h J hJ hfib A hA hAs hfin
  have hin : ∀ π : Fin m → Fin n → ℂ,
      ∫⁻ w in Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1, cntOver (coneSet h J ∩ A) π w =
        H⁻¹ * V * ∫⁻ y in coneSet h J ∩ A,
          (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 (linProj π y) *
            ENNReal.ofReal (coneJac h J π y) ∂μ := by
    intro π
    have harea := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.coneArea_inter n m h J hJ hm hmn hfib π A hA
      ((Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1)
      (measurable_one.indicator Metric.isOpen_ball.measurableSet)
    have hind : ∫⁻ w, cntOver (coneSet h J ∩ A) π w *
        (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1).indicator 1 w =
        ∫⁻ w in Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1, cntOver (coneSet h J ∩ A) π w := by
      rw [← lintegral_indicator Metric.isOpen_ball.measurableSet]
      congr 1
      funext w
      by_cases hw : w ∈ Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1
      · rw [Set.indicator_of_mem hw, Set.indicator_of_mem hw, Pi.one_apply, mul_one]
      · rw [Set.indicator_of_notMem hw, Set.indicator_of_notMem hw, mul_zero]
    rw [hind, hVdef, hHdef] at harea
    rw [mul_assoc, harea, ← mul_assoc, ENNReal.inv_mul_cancel hH0 hHtop, one_mul]
  have hlhs : ∫⁻ π : Fin m → Fin n → ℂ, matGauss π *
      ∫⁻ w in Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1, cntOver (coneSet h J ∩ A) π w =
      H⁻¹ * V * ∫⁻ y in coneSet h J ∩ A, k ‖y‖ ∂μ := by
    rw [← _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.coneTangentAverage_inter n m h J hJ hm hmn hfib A hA, ← lintegral_const_mul' _ _ hctop]
    refine lintegral_congr fun π => ?_
    rw [hin π]
    ring
  rw [hlhs, ConeRadialIntegral.full n m hm (coneSet h J ∩ A)
    (fun y hy t ht => ⟨real_smul_mem_coneSet h hJ hy.1 t, hAs y hy.2 t ht⟩) hfin k hkm]
  ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibreavg =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HausdorffConeBallMeasure =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HausdorffConeBallMeasure", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibreavg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.hausdorff_cone_ball_measure : ∀ n m : ℕ, 0 < m → m ≤ n → ∃ K : ℝ≥0∞, 0 < K ∧ K < ⊤ ∧
  ∀ (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ)), IsProjPrime J → (∀ᵐ π : Fin m → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin m), fibreCount h J π w ≠ ⊤) →
  ∀ A : Set (EuclideanSpace ℂ (Fin n)), MeasurableSet A → (∀ y ∈ A, ∀ t : ℝ, 0 < t → t • y ∈ A) →
    (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h J ∩ A} < ⊤ →
    ∫⁻ π : Fin m → Fin n → ℂ, matGauss π * ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin m)) 1), cntOver (coneSet h J ∩ A) π w =
      K * (Measure.hausdorffMeasure ((2 * m : ℕ) : ℝ)) {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h J ∩ A} := by
  first | exact @PositivityTheory.Xgn.t_xgz_chow_mahler_fibreavg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HausdorffConeBallMeasure =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaOpenCone =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaOpenCone", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AeFibrePointsCardEqDegree\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HausdorffConeBallMeasure\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Assembly\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsSigmaCompactConeInter\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PChowDegreePos\nimport GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem setCrofton : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ), IsProjPrime W → IsChowForm W (e + 1) f → GroundTheory.Heights₂.Heights.IsMultiHomog δ f →
  ∀ A : Set (EuclideanSpace ℂ (Fin n)), IsOpen A → IsScaleStable A →
    planeMass n e * ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        cntOver (coneSet h W ∩ A) π (firstCoordVec (e + 1)) =
      gaussM (e + 1) n Set.univ *
        (Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ A} := by
  intro n e δ h W f hW hf hδ A hA hAs
  have hle : e + 1 ≤ n := chowGroups_le hW hf hδ
  have hδpos : 1 ≤ δ := ChowDegreePos.proof n (e + 1) δ W f (Nat.succ_pos e) hW hf hδ
  have hfib := ConeFibreDegree.full n e δ h W f hW hf hδ
  have hfin : ∀ᵐ π : Fin (e + 1) → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin (e + 1)),
      fibreCount h W π w ≠ ⊤ := by
    filter_upwards [hfib] with π hπ
    filter_upwards [hπ] with w hw
    rw [hw]
    exact ENat.natCast_ne_top δ
  obtain ⟨K, hK0, hKtop, hK⟩ := _root_.GlobalTheory.CompanionTheory.Relay.hausdorff_cone_ball_measure n (e + 1) (Nat.succ_pos e) hle
  have hball : Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) (coneBall h W) < ⊤ :=
    ConeBallFinite.full n e h W f hW hf
  have hmass : ∀ B : Set (EuclideanSpace ℂ (Fin n)),
      Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)
        {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ B} < ⊤ := fun B =>
    lt_of_le_of_lt (measure_mono (show _ ⊆ coneBall h W from fun y hy => And.intro hy.1 hy.2.1)) hball

  have key : ∀ B : Set (EuclideanSpace ℂ (Fin n)), IsOpen B → IsScaleStable B →
      volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) *
        ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
          cntOver (coneSet h W ∩ B) π (firstCoordVec (e + 1)) =
      K * (Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))
        {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ B} := by
    intro B hB hBs
    have h1 := hK h W hW hfin B hB.measurableSet
      (fun y hy t ht => by
        have := hBs y hy (t : ℂ) (by exact_mod_cast ht.ne')
        simpa using this) (hmass B)
    have h2 := _root_.GlobalTheory.CompanionTheory.Relay.ball_average_fibre_count n e (coneSet h W ∩ B)
      ((isScaleStable_coneSet h hW).inter hBs) (isSigmaCompact_cone_inter h W hB) id measurable_id
    simp only [id] at h2
    rw [← h2, h1]
  have hΓ : gaussM (e + 1) n Set.univ = ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π := by
    rw [gaussM, withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ]
  have hcnt : ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
      cntOver (coneSet h W ∩ Set.univ) π (firstCoordVec (e + 1)) =
      gaussM (e + 1) n Set.univ * (δ : ℝ≥0∞) := by
    rw [hΓ, ← lintegral_mul_const' _ _ (ENNReal.natCast_ne_top δ)]
    refine lintegral_congr_ae ?_
    filter_upwards [_root_.GlobalTheory.CompanionTheory.Relay.ae_fibre_points_card_eq_degree n e δ h W f hW hf hδ] with π hπ
    have : cntOver (coneSet h W ∩ Set.univ) π (firstCoordVec (e + 1)) = (δ : ℝ≥0∞) := by
      rw [Set.inter_univ, cntOver]
      have : (ptsOver (coneSet h W) π (firstCoordVec (e + 1))).encard = δ := hπ
      rw [this]
      simp
    rw [this]
  have hcb : {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ Set.univ} = coneBall h W := by
    ext y
    simp [coneBall, coneSet]
  have hmf : Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) (coneBall h W) =
      (δ : ℝ≥0∞) * planeMass n e :=
    ConeMassOfFibre.full n (e + 1) δ h W hW hfib
  have hV0 : volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) ≠ 0 :=
    (Metric.measure_ball_pos _ _ one_pos).ne'
  have hVtop : volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) ≠ ⊤ :=
    measure_ball_lt_top.ne
  have hδ0 : (δ : ℝ≥0∞) ≠ 0 := by exact_mod_cast (by omega : δ ≠ 0)
  have hδtop : (δ : ℝ≥0∞) ≠ ⊤ := ENNReal.natCast_ne_top δ

  have hVΓ : volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) * gaussM (e + 1) n Set.univ =
      K * planeMass n e := by
    have h0 := key Set.univ isOpen_univ (fun _ _ _ _ => Set.mem_univ _)
    rw [hcnt, hcb, hmf] at h0
    refine (ENNReal.mul_left_inj hδ0 hδtop).1 ?_
    rw [mul_assoc, h0]
    ring
  have hA1 := key A hA hAs
  refine (ENNReal.mul_right_inj hV0 hVtop).1 ?_
  calc volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) * (planeMass n e * ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        cntOver (coneSet h W ∩ A) π (firstCoordVec (e + 1)))
      = planeMass n e * (volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) * ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        cntOver (coneSet h W ∩ A) π (firstCoordVec (e + 1))) := by ring
    _ = planeMass n e * (K * (Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))
        {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ A}) := by rw [hA1]
    _ = (K * planeMass n e) * (Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))
        {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ A} := by ring
    _ = _ := by rw [← hVΓ]; ring

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaOpenCone =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RandomSetSumExpectation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RandomSetSumExpectation", "h": "module\n\npublic import Mathlib.MeasureTheory.Integral.Lebesgue.Basic\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\nimport GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsDoubleComplexVanish\npublic import Mathlib.MeasureTheory.Constructions.Polish.Basic\npublic import Mathlib.MeasureTheory.Integral.Lebesgue.Add\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton.LayerCake

noncomputable def lay (x : ℝ≥0∞) : ℝ≥0∞ :=
  ∑' l : ℕ, if ((l : ℝ≥0∞) + 1) < x then (1 : ℝ≥0∞) else 0

theorem lay_le (x : ℝ≥0∞) : lay x ≤ x := by
  have key : ∀ N : ℕ,
      ∑ l ∈ Finset.range N, (if ((l : ℝ≥0∞) + 1) < x then (1 : ℝ≥0∞) else 0) ≤ x ∧
      ∑ l ∈ Finset.range N, (if ((l : ℝ≥0∞) + 1) < x then (1 : ℝ≥0∞) else 0) ≤ N := by
    intro N
    induction N with
    | zero => simp
    | succ n ih =>
      rw [Finset.sum_range_succ]
      by_cases h : ((n : ℝ≥0∞) + 1) < x
      · simp only [h, if_true]
        have h1 := add_le_add_left ih.2 (1 : ℝ≥0∞)
        exact ⟨h1.trans h.le, by push_cast; exact h1⟩
      · simp only [h, if_false, add_zero]
        exact ⟨ih.1, ih.2.trans (by exact_mod_cast Nat.le_succ n)⟩
  rw [lay, ENNReal.tsum_eq_iSup_nat]
  exact iSup_le fun N => (key N).1

theorem nat_le_lay {x : ℝ≥0∞} {N : ℕ} (h : (N : ℝ≥0∞) < x) : (N : ℝ≥0∞) ≤ lay x := by
  have h1 : ∑ l ∈ Finset.range N, (if ((l : ℝ≥0∞) + 1) < x then (1 : ℝ≥0∞) else 0) = N := by
    rw [Finset.sum_congr rfl (g := fun _ => (1 : ℝ≥0∞))]
    · simp
    · intro l hl
      have hl' : l + 1 ≤ N := Finset.mem_range.1 hl
      have : ((l : ℝ≥0∞) + 1) ≤ N := by exact_mod_cast hl'
      simp [this.trans_lt h]
  rw [← h1]
  exact ENNReal.sum_le_tsum _

theorem le_lay_add_one (x : ℝ≥0∞) : x ≤ lay x + 1 := by
  by_cases top : x = ∞
  · subst top
    have : lay ∞ = ∞ := by
      by_contra hne
      obtain ⟨n, hn⟩ := ENNReal.exists_nat_gt hne
      exact absurd (nat_le_lay (N := n) (ENNReal.natCast_lt_top n)) (not_le.2 hn)
    simp [this]
  · lift x to NNReal using top
    have hx : x ≤ (⌈x⌉₊ : NNReal) := Nat.le_ceil x
    have hx' : (x : ℝ≥0∞) ≤ (⌈x⌉₊ : ℝ≥0∞) := by exact_mod_cast hx
    rcases hm : ⌈x⌉₊ with _ | n
    · rw [hm] at hx'
      exact hx'.trans (by simp)
    · have hn : (n : NNReal) < x := Nat.lt_ceil.1 (by omega)
      have hn' : (n : ℝ≥0∞) < x := by exact_mod_cast hn
      rw [hm] at hx'
      refine hx'.trans ?_
      push_cast
      exact add_le_add_left (nat_le_lay hn') 1

theorem two_lt_two {a b : ℝ≥0∞} (h : a < b) : 2 * a < 2 * b :=
  (ENNReal.mul_lt_mul_iff_right two_ne_zero ENNReal.ofNat_ne_top).2 h

theorem two_mul_lay_le (x : ℝ≥0∞) : 2 * lay x ≤ lay (2 * x) := by
  have e : lay (2 * x) =
      (∑' l : ℕ, if (((2 * l : ℕ) : ℝ≥0∞) + 1) < 2 * x then (1 : ℝ≥0∞) else 0) +
      ∑' l : ℕ, if (((2 * l + 1 : ℕ) : ℝ≥0∞) + 1) < 2 * x then (1 : ℝ≥0∞) else 0 := by
    rw [lay]
    exact (tsum_even_add_odd ENNReal.summable ENNReal.summable).symm
  rw [two_mul, e, lay]
  refine add_le_add (ENNReal.tsum_le_tsum fun l => ?_) (ENNReal.tsum_le_tsum fun l => ?_)
  · by_cases h : ((l : ℝ≥0∞) + 1) < x
    · have h2 := two_lt_two h
      have h3 : (((2 * l : ℕ) : ℝ≥0∞) + 1) < 2 * x := by
        refine lt_of_le_of_lt ?_ h2
        push_cast
        rw [mul_add]
        gcongr
        norm_num
      rw [if_pos h, if_pos h3]
    · simp [h]
  · by_cases h : ((l : ℝ≥0∞) + 1) < x
    · have h2 := two_lt_two h
      have h3 : (((2 * l + 1 : ℕ) : ℝ≥0∞) + 1) < 2 * x := by
        refine lt_of_le_of_lt (le_of_eq ?_) h2
        push_cast
        ring
      rw [if_pos h, if_pos h3]
    · simp [h]

noncomputable def dy (k : ℕ) (x : ℝ≥0∞) : ℝ≥0∞ := (2 ^ k : ℝ≥0∞)⁻¹ * lay (2 ^ k * x)

theorem two_pow_ne_zero' (k : ℕ) : (2 ^ k : ℝ≥0∞) ≠ 0 := by simp
theorem two_pow_ne_top' (k : ℕ) : (2 ^ k : ℝ≥0∞) ≠ ∞ := by simp

theorem dy_le_succ (k : ℕ) (x : ℝ≥0∞) : dy k x ≤ dy (k + 1) x := by
  have e : (2 ^ k : ℝ≥0∞)⁻¹ = (2 ^ (k + 1) : ℝ≥0∞)⁻¹ * 2 := by
    rw [pow_succ, ENNReal.mul_inv (Or.inl (two_pow_ne_zero' k)) (Or.inl (two_pow_ne_top' k)),
      mul_assoc, ENNReal.inv_mul_cancel two_ne_zero ENNReal.ofNat_ne_top, mul_one]
  have e2 : (2 ^ (k + 1) : ℝ≥0∞) * x = 2 * (2 ^ k * x) := by rw [pow_succ]; ring
  rw [dy, dy, e, e2, mul_assoc]
  gcongr
  exact two_mul_lay_le _

theorem dy_mono (x : ℝ≥0∞) : Monotone fun k => dy k x :=
  monotone_nat_of_le_succ fun k => dy_le_succ k x

theorem inv_mul_cancel_two_pow (k : ℕ) (x : ℝ≥0∞) : (2 ^ k : ℝ≥0∞)⁻¹ * (2 ^ k * x) = x := by
  rw [← mul_assoc, ENNReal.inv_mul_cancel (two_pow_ne_zero' k) (two_pow_ne_top' k), one_mul]

theorem iSup_dy (x : ℝ≥0∞) : ⨆ k, dy k x = x := by
  refine le_antisymm (iSup_le fun k => ?_) ?_
  · calc dy k x ≤ (2 ^ k : ℝ≥0∞)⁻¹ * (2 ^ k * x) := by
          rw [dy]; gcongr; exact lay_le _
      _ = x := inv_mul_cancel_two_pow k x
  · have hb : ∀ k : ℕ, x ≤ (⨆ j, dy j x) + (2 : ℝ≥0∞)⁻¹ ^ k := by
      intro k
      calc x = (2 ^ k : ℝ≥0∞)⁻¹ * (2 ^ k * x) := (inv_mul_cancel_two_pow k x).symm
        _ ≤ (2 ^ k : ℝ≥0∞)⁻¹ * (lay (2 ^ k * x) + 1) := by
            gcongr; exact le_lay_add_one _
        _ = dy k x + (2 : ℝ≥0∞)⁻¹ ^ k := by rw [mul_add, mul_one, ENNReal.inv_pow, dy, ENNReal.inv_pow]
        _ ≤ _ := by gcongr; exact le_iSup (fun j => dy j x) k
    have ht : Filter.Tendsto (fun k : ℕ => (⨆ j, dy j x) + (2 : ℝ≥0∞)⁻¹ ^ k) Filter.atTop
        (nhds ((⨆ j, dy j x) + 0)) :=
      tendsto_const_nhds.add (ENNReal.tendsto_pow_atTop_nhds_zero_of_lt_one
        (ENNReal.inv_lt_one.2 (by norm_num)))
    rw [add_zero] at ht
    exact ge_of_tendsto' ht hb

theorem lt_pow_mul_iff (k : ℕ) (b x : ℝ≥0∞) :
    b < 2 ^ k * x ↔ (2 ^ k : ℝ≥0∞)⁻¹ * b < x := by
  constructor
  · intro h
    have := (ENNReal.mul_lt_mul_iff_right (ENNReal.inv_ne_zero.2 (two_pow_ne_top' k))
      (ENNReal.inv_ne_top.2 (two_pow_ne_zero' k))).2 h
    rwa [inv_mul_cancel_two_pow] at this
  · intro h
    have := (ENNReal.mul_lt_mul_iff_right (two_pow_ne_zero' k) (two_pow_ne_top' k)).2 h
    rwa [← mul_assoc, ENNReal.mul_inv_cancel (two_pow_ne_zero' k) (two_pow_ne_top' k),
      one_mul] at this

theorem dy_eq_tsum (k : ℕ) (x : ℝ≥0∞) :
    dy k x = ∑' l : ℕ, (2 ^ k : ℝ≥0∞)⁻¹ *
      (if (2 ^ k : ℝ≥0∞)⁻¹ * ((l : ℝ≥0∞) + 1) < x then (1 : ℝ≥0∞) else 0) := by
  rw [dy, lay, ENNReal.tsum_mul_left]
  simp only [lt_pow_mul_iff]

theorem tsum_ite_lt {Y : Type} (S : Set Y) (φ : Y → ℝ≥0∞) (s : ℝ≥0∞) :
    ∑' y : S, (if s < φ y then (1 : ℝ≥0∞) else 0) =
      (((S ∩ {y | s < φ y}).encard : ℕ∞) : ℝ≥0∞) := by
  rw [← ENNReal.tsum_set_one, tsum_subtype S (fun y => if s < φ y then (1 : ℝ≥0∞) else 0),
    tsum_subtype (S ∩ {y | s < φ y}) (fun _ => (1 : ℝ≥0∞))]
  refine tsum_congr fun y => ?_
  by_cases h1 : y ∈ S <;> by_cases h2 : s < φ y <;> simp [Set.indicator, h1, h2]

theorem tsum_iSup_of_mono {ι : Type} (f : ℕ → ι → ℝ≥0∞) (hf : ∀ i, Monotone fun k => f k i) :
    ∑' i, ⨆ k, f k i = ⨆ k, ∑' i, f k i := by
  simp_rw [ENNReal.tsum_eq_iSup_sum]
  rw [iSup_comm]
  refine iSup_congr fun s => ?_
  exact ENNReal.finsetSum_iSup_of_monotone hf

theorem measurable_lintegral_tsum_of_level_counts
    {Ω Y : Type} [MeasurableSpace Ω] [MeasurableSpace Y] (P : Measure Ω) (ν : Measure Y)
    (L : Ω → Set Y) (φ : Y → ℝ≥0∞) (c : ℝ≥0∞) (hφ : Measurable φ)
    (hN : ∀ s : ℝ≥0∞, Measurable fun ω => (((L ω ∩ {y | s < φ y}).encard : ℕ∞) : ℝ≥0∞))
    (hI : ∀ s : ℝ≥0∞, ∫⁻ ω, (((L ω ∩ {y | s < φ y}).encard : ℕ∞) : ℝ≥0∞) ∂P = c * ν {y | s < φ y}) :
    Measurable (fun ω => ∑' y : L ω, φ y) ∧ ∫⁻ ω, ∑' y : L ω, φ y ∂P = c * ∫⁻ y, φ y ∂ν := by

  have hG : ∀ k ω, ∑' y : L ω, dy k (φ y) = ∑' l : ℕ, (2 ^ k : ℝ≥0∞)⁻¹ *
      (((L ω ∩ {y | (2 ^ k : ℝ≥0∞)⁻¹ * ((l : ℝ≥0∞) + 1) < φ y}).encard : ℕ∞) : ℝ≥0∞) := by
    intro k ω
    simp_rw [dy_eq_tsum]
    rw [ENNReal.tsum_comm]
    refine tsum_congr fun l => ?_
    rw [ENNReal.tsum_mul_left, tsum_ite_lt]
  have hGm : ∀ k, Measurable fun ω => ∑' y : L ω, dy k (φ y) := by
    intro k
    simp_rw [hG]
    exact Measurable.tsum fun l => (hN _).const_mul _
  have hGi : ∀ k, ∫⁻ ω, ∑' y : L ω, dy k (φ y) ∂P = c * ∫⁻ y, dy k (φ y) ∂ν := by
    intro k
    have hlev : ∀ s : ℝ≥0∞, Measurable fun y => if s < φ y then (1 : ℝ≥0∞) else 0 := fun s =>
      Measurable.ite (measurableSet_lt measurable_const hφ) measurable_const measurable_const
    have hone : ∀ s : ℝ≥0∞, ∫⁻ y, (if s < φ y then (1 : ℝ≥0∞) else 0) ∂ν = ν {y | s < φ y} := by
      intro s
      rw [← lintegral_indicator_one (measurableSet_lt measurable_const hφ)]
      refine lintegral_congr fun y => ?_
      by_cases h : s < φ y <;> simp [Set.indicator, h]
    simp_rw [hG, dy_eq_tsum]
    rw [lintegral_tsum fun l => ((hN _).const_mul _).aemeasurable,
      lintegral_tsum fun l => ((hlev _).const_mul _).aemeasurable, ← ENNReal.tsum_mul_left]
    refine tsum_congr fun l => ?_
    rw [lintegral_const_mul _ (hN _), hI, lintegral_const_mul _ (hlev _), hone, mul_left_comm]
  have hmono : ∀ ω (y : L ω), Monotone fun k => dy k (φ y) := fun _ y => dy_mono _
  have hS : (fun ω => ∑' y : L ω, φ y) = fun ω => ⨆ k, ∑' y : L ω, dy k (φ y) := by
    funext ω
    rw [← tsum_iSup_of_mono (fun k (y : L ω) => dy k (φ y)) (hmono ω)]
    exact tsum_congr fun y => (iSup_dy _).symm
  have hGmono : Monotone fun k ω => ∑' y : L ω, dy k (φ y) := by
    intro j k hjk ω
    exact ENNReal.tsum_le_tsum fun y => dy_mono _ hjk
  have hdm : ∀ k, Measurable fun y => dy k (φ y) := by
    intro k
    simp_rw [dy_eq_tsum]
    exact Measurable.tsum fun l => (Measurable.ite
      (measurableSet_lt measurable_const hφ) measurable_const measurable_const).const_mul _
  refine ⟨?_, ?_⟩
  · rw [hS]
    exact Measurable.iSup hGm
  · rw [hS, lintegral_iSup hGm hGmono]
    simp_rw [hGi]
    rw [← ENNReal.mul_iSup, ← lintegral_iSup hdm (fun j k hjk y => dy_mono _ hjk)]
    simp_rw [iSup_dy]

end GlobalTheory.CompanionTheory.Ar.Short.Crofton.LayerCake
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RandomSetSumExpectation =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.CroftonFormulaFibreSum =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.CroftonFormulaFibreSum", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MeasurableFibreCountOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace ModelDimension.FnCrofton

theorem measurable_matrix_gaussian (m n : ℕ) :
    Measurable (matGauss : (Fin m → Fin n → ℂ) → ℝ≥0∞) := by
  unfold matGauss
  fun_prop

theorem measurable_cntOver_first {n e : ℕ} {S : Set (EuclideanSpace ℂ (Fin n))} (hS : IsSigmaCompact S) :
    Measurable fun π : Fin (e + 1) → Fin n → ℂ => cntOver S π (firstCoordVec (e + 1)) := by
  have H := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.measurable_cntOver n (e + 1) S hS
  have H2 := H.comp (measurable_id.prodMk (measurable_const (a := firstCoordVec (e + 1))))
  exact H2

theorem encard_fibrePts_inter {n e : ℕ} (S A : Set (EuclideanSpace ℂ (Fin n))) (π : Fin (e + 1) → Fin n → ℂ) :
    (((fibrePts S π ∩ A).encard : ℕ∞) : ℝ≥0∞) = cntOver (S ∩ A) π (firstCoordVec (e + 1)) := by
  unfold cntOver
  congr 2
  ext y
  simp only [fibrePts, ptsOver, Set.mem_inter_iff, Set.mem_setOf_eq]
  tauto

end ModelDimension.FnCrofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.CroftonFormulaFibreSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaFibreSum =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaFibreSum", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaOpenCone\npublic import Mathlib.MeasureTheory.Integral.Lebesgue.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RandomSetSumExpectation\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.CroftonFormulaFibreSum\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsSigmaCompactConeInter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.crofton_formula_fibre_sum : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ), IsProjPrime W → IsChowForm W (e + 1) f → GroundTheory.Heights₂.Heights.IsMultiHomog δ f →
  ∀ φ : EuclideanSpace ℂ (Fin n) → ℝ≥0∞, Measurable φ →
    (∀ s : ℝ≥0∞, IsOpen {y | s < φ y} ∧ IsScaleStable {y | s < φ y}) →
    Measurable (fun π : Fin (e + 1) → Fin n → ℂ => ∑' y : fibrePts (coneSet h W) π, φ y) ∧
      planeMass n e * ∫⁻ π, ∑' y : fibrePts (coneSet h W) π, φ y ∂(gaussM (e + 1) n) =
        gaussM (e + 1) n Set.univ * ∫⁻ y in coneBall h W, φ y ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) := by
  intro n e δ h W f hW hf hδ φ hφ hlev
  have hcnt : ∀ s : ℝ≥0∞, Measurable fun π : Fin (e + 1) → Fin n → ℂ =>
      cntOver (coneSet h W ∩ {y | s < φ y}) π (firstCoordVec (e + 1)) := fun s =>
    ModelDimension.FnCrofton.measurable_cntOver_first (isSigmaCompact_cone_inter h W (hlev s).1)
  obtain ⟨hm, hi⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.LayerCake.measurable_lintegral_tsum_of_level_counts (planeMass n e • gaussM (e + 1) n)
    ((Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)).restrict (coneBall h W))
    (fun π => fibrePts (coneSet h W) π) φ (gaussM (e + 1) n Set.univ) hφ
    (fun s => by
      simp only [ModelDimension.FnCrofton.encard_fibrePts_inter]
      exact hcnt s)
    (fun s => by
      have hA := (hlev s).1
      have T := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.setCrofton n e δ h W f hW hf hδ {y | s < φ y} hA (hlev s).2
      simp only [ModelDimension.FnCrofton.encard_fibrePts_inter]
      rw [lintegral_smul_measure, smul_eq_mul, Measure.restrict_apply hA.measurableSet, gaussM,
        lintegral_withDensity_eq_lintegral_mul _ (ModelDimension.FnCrofton.measurable_matrix_gaussian _ _) (hcnt s)]
      have hset : {y | s < φ y} ∩ coneBall h W =
          {y : EuclideanSpace ℂ (Fin n) | ‖y‖ < 1 ∧ y ∈ coneSet h W ∩ {y | s < φ y}} := by
        ext y
        constructor
        · rintro ⟨h1, h2, h3⟩
          exact ⟨h2, h3, h1⟩
        · rintro ⟨h1, h2, h3⟩
          exact ⟨h3, h1, h2⟩
      rw [hset]
      simpa only [Pi.mul_apply, gaussM] using T)
  refine ⟨hm, ?_⟩
  rw [lintegral_smul_measure, smul_eq_mul] at hi
  exact hi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaFibreSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FubiniStudyLogLeLogNorm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FubiniStudyLogLeLogNorm", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeLogBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem fsLog_pointOf_le_log_norm : ∀ (n : ℕ) (h : HermNorm n) (u : Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)), y ≠ 0 →
  ∑ j, u j * h.pointOf y j ≠ 0 → fsLog h u (h.pointOf y) ≤ Real.log (h.norm u) :=
  fun _ h _ _ _ hne => fsLog_le h hne

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FubiniStudyLogLeLogNorm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LogGapMeasurableScaleStable =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LogGapMeasurableScaleStable", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFsLogIntegrable\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

noncomputable section

variable {n : ℕ}

theorem continuous_pairing_pointOf (h : HermNorm n) (u : Fin n → ℂ) :
    Continuous fun y : EuclideanSpace ℂ (Fin n) => ∑ j, u j * h.pointOf y j := by
  have hp : Continuous (fun y : EuclideanSpace ℂ (Fin n) => h.pointOf y) := by
    unfold HermNorm.pointOf; fun_prop
  exact continuous_finsetSum _ fun j _ => continuous_const.mul ((continuous_apply j).comp hp)

theorem pairing_pointOf_smul (h : HermNorm n) (u : Fin n → ℂ) (t : ℂ)
    (y : EuclideanSpace ℂ (Fin n)) :
    ∑ j, u j * h.pointOf (t • y) j = t * ∑ j, u j * h.pointOf y j := by
  have hpt : h.pointOf (t • y) = t • h.pointOf y := by
    simp only [HermNorm.pointOf]
    rw [← Matrix.mulVec_smul]
    congr 1
  rw [hpt, Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => by simp only [Pi.smul_apply, smul_eq_mul]; ring

theorem hermNorm_pos (h : HermNorm n) {u : Fin n → ℂ} (hu : u ≠ 0) : 0 < h.norm u := by
  have hne : h.mat *ᵥ u ≠ 0 := by
    intro h0
    apply hu
    have h1 := congrArg (fun v => h.mat⁻¹ *ᵥ v) h0
    simpa [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ h.isUnit_det] using h1
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hne
  rw [HermNorm.norm]
  refine Real.sqrt_pos.mpr (Finset.sum_pos' (fun _ _ => by positivity)
    ⟨i, Finset.mem_univ _, ?_⟩)
  have : 0 < ‖(h.mat *ᵥ u) i‖ := norm_pos_iff.mpr hi
  positivity

theorem lt_logGap_iff (h : HermNorm n) {u : Fin n → ℂ} (hu : u ≠ 0) {s : ℝ≥0∞} (hs : s ≠ ⊤)
    (y : EuclideanSpace ℂ (Fin n)) :
    s < logGap h u y ↔
      ‖∑ j, u j * h.pointOf y j‖ < Real.exp (-s.toReal) * h.norm u * ‖y‖ := by
  have hN := hermNorm_pos h hu
  unfold logGap
  by_cases hy : y = 0
  · subst hy
    simp [HermNorm.pointOf]
  have hy' : 0 < ‖y‖ := norm_pos_iff.mpr hy
  have hc : 0 < Real.exp (-s.toReal) * h.norm u * ‖y‖ := by positivity
  by_cases hp : ∑ j, u j * h.pointOf y j = 0
  · simp [hy, hp, hs.lt_top, hc]
  · have hpn : 0 < ‖∑ j, u j * h.pointOf y j‖ := norm_pos_iff.mpr hp
    rw [if_neg hy, if_neg hp, ENNReal.lt_ofReal_iff_toReal_lt hs, fsLog, _root_.GroundTheory.Heights₂.Heights.ConeFsLog.dualNorm_pointOf,
      Real.log_div hpn.ne' hy'.ne', ← Real.log_lt_log_iff hpn hc,
      Real.log_mul (by positivity) hy'.ne', Real.log_mul (Real.exp_pos _).ne' hN.ne', Real.log_exp]
    constructor <;> intro hh <;> linarith

theorem lt_logGap_zero_iff (h : HermNorm n) {s : ℝ≥0∞} (hs : s ≠ ⊤)
    (y : EuclideanSpace ℂ (Fin n)) : s < logGap h 0 y ↔ y ≠ 0 := by
  unfold logGap
  by_cases hy : y = 0
  · simp [hy]
  · simp [hy, hs.lt_top]

theorem logGap_levelSet_top (h : HermNorm n) (u : Fin n → ℂ) :
    {y | (⊤ : ℝ≥0∞) < logGap h u y} = ∅ := by
  ext y
  simp

theorem logGap_levelSet (h : HermNorm n) (u : Fin n → ℂ) (s : ℝ≥0∞) :
    IsOpen {y | s < logGap h u y} ∧ IsScaleStable {y | s < logGap h u y} := by
  by_cases hs : s = ⊤
  · subst hs
    rw [logGap_levelSet_top]
    exact ⟨isOpen_empty, fun y hy => hy.elim⟩
  by_cases hu : u = 0
  · subst hu
    have hset : {y | s < logGap h 0 y} = {y : EuclideanSpace ℂ (Fin n) | y ≠ 0} :=
      Set.ext fun y => lt_logGap_zero_iff h hs y
    rw [hset]
    exact ⟨isOpen_ne, fun y hy t ht => smul_ne_zero ht hy⟩
  have hset : {y | s < logGap h u y} = {y : EuclideanSpace ℂ (Fin n) |
      ‖∑ j, u j * h.pointOf y j‖ < Real.exp (-s.toReal) * h.norm u * ‖y‖} :=
    Set.ext fun y => lt_logGap_iff h hu hs y
  rw [hset]
  refine ⟨isOpen_lt (continuous_pairing_pointOf h u).norm (continuous_const.mul continuous_norm),
    fun y hy t ht => ?_⟩
  have ht' : 0 < ‖t‖ := norm_pos_iff.mpr ht
  have hy' : ‖∑ j, u j * h.pointOf y j‖ < Real.exp (-s.toReal) * h.norm u * ‖y‖ := hy
  show ‖∑ j, u j * h.pointOf (t • y) j‖ < Real.exp (-s.toReal) * h.norm u * ‖t • y‖
  rw [pairing_pointOf_smul, norm_mul, norm_smul]
  calc ‖t‖ * ‖∑ j, u j * h.pointOf y j‖
      < ‖t‖ * (Real.exp (-s.toReal) * h.norm u * ‖y‖) := mul_lt_mul_of_pos_left hy' ht'
    _ = Real.exp (-s.toReal) * h.norm u * (‖t‖ * ‖y‖) := by ring

theorem logGap_basic : ∀ (n : ℕ) (h : HermNorm n) (u : Fin n → ℂ),
    Measurable (logGap h u) ∧
      ∀ s : ℝ≥0∞, IsOpen {y | s < logGap h u y} ∧ IsScaleStable {y | s < logGap h u y} := by
  intro n h u
  exact ⟨measurable_of_Ioi fun s => (logGap_levelSet h u s).1.measurableSet,
    logGap_levelSet h u⟩

end

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LogGapMeasurableScaleStable =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AeFibrePointsCardEqDegree\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConeBallLogGapIntegral\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CroftonFormulaFibreSum\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FubiniStudyLogLeLogNorm\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianMatrixMeasurePosFinite\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LogGapMeasurableScaleStable\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsSigmaCompactConeInter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

private theorem tsum_fibre_pts_eq_sum {n e : ℕ} (S : Set (EuclideanSpace ℂ (Fin n)))
    (π : Fin (e + 1) → Fin n → ℂ) (hfin : (fibrePts S π).Finite)
    (g : EuclideanSpace ℂ (Fin n) → ℝ≥0∞) :
    ∑' y : fibrePts S π, g y = ∑ y ∈ hfin.toFinset, g y := by
  haveI : Fintype (fibrePts S π) := hfin.fintype
  rw [tsum_fintype]
  exact (Finset.sum_subtype hfin.toFinset (fun y => hfin.mem_toFinset) g).symm

private theorem ne_zero_of_mem_fibre_pts {n e : ℕ} (S : Set (EuclideanSpace ℂ (Fin n)))
    (π : Fin (e + 1) → Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)) (hy : y ∈ fibrePts S π) :
    y ≠ 0 := by
  rintro rfl
  obtain ⟨-, h0⟩ := hy
  have h2 := congrArg (fun v : EuclideanSpace ℂ (Fin (e + 1)) => v.ofLp 0) h0
  simp [linProj, firstCoordVec] at h2

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem fubini_study_sum_crofton {n e δ : ℕ} (h : HermNorm n) (u : Fin n → ℂ)
    (S : Set (EuclideanSpace ℂ (Fin n))) (π : Fin (e + 1) → Fin n → ℂ)
    (hc : (fibrePts S π).encard = δ)
    (hs : ∑' y : fibrePts S π, logGap h u y < ⊤) :
    (∑' y : fibrePts S π, logGap h u y).toReal = δ * Real.log (h.norm u) - fsSum h u S π := by
  have hfin : (fibrePts S π).Finite := Set.finite_of_encard_eq_coe hc
  have hcard : hfin.toFinset.card = δ := by
    have h1 := hfin.encard_eq_coe_toFinset_card
    rw [hc] at h1
    exact_mod_cast h1.symm
  have hne0 := ne_zero_of_mem_fibre_pts S π
  have hsum : ∀ y ∈ fibrePts S π, ∑ j, u j * h.pointOf y j ≠ 0 := by
    intro y hy h0
    have htop : logGap h u y = ⊤ := by simp [logGap, hne0 y hy, h0]
    have hle : logGap h u y ≤ ∑' z : fibrePts S π, logGap h u z :=
      ENNReal.le_tsum (f := fun z : fibrePts S π => logGap h u z) ⟨y, hy⟩
    rw [htop] at hle
    exact absurd hs (not_lt.2 hle)
  have hval : ∀ y ∈ fibrePts S π,
      logGap h u y = ENNReal.ofReal (Real.log (h.norm u) - fsLog h u (h.pointOf y)) := by
    intro y hy
    simp [logGap, hne0 y hy, hsum y hy]
  have hnn : ∀ y ∈ fibrePts S π, 0 ≤ Real.log (h.norm u) - fsLog h u (h.pointOf y) := fun y hy =>
    sub_nonneg.2 (_root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.fsLog_pointOf_le_log_norm n h u y (hne0 y hy) (hsum y hy))
  rw [tsum_fibre_pts_eq_sum S π hfin, ENNReal.toReal_sum (fun y hy => by
      rw [hval y (hfin.mem_toFinset.1 hy)]
      exact ENNReal.ofReal_ne_top)]
  rw [Finset.sum_congr rfl (fun y hy => by
      rw [hval y (hfin.mem_toFinset.1 hy), ENNReal.toReal_ofReal (hnn y (hfin.mem_toFinset.1 hy))])]
  rw [Finset.sum_sub_distrib, Finset.sum_const, hcard, nsmul_eq_mul, fsSum,
    finsum_mem_eq_finite_toFinset_sum _ hfin]

end GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem GlobalTheory.CompanionTheory.Ar.Short.Crofton.fsSum_crofton : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u : Fin n → ℂ),
  IsProjPrime W → IsChowForm W (e + 1) f → GroundTheory.Heights₂.Heights.IsMultiHomog δ f → linForm u ∉ W →
    Integrable (fsSum h u (coneSet h W)) (gaussM (e + 1) n) ∧
      ∫ π, fsSum h u (coneSet h W) π ∂(gaussM (e + 1) n) =
        (gaussM (e + 1) n Set.univ).toReal * coneIntegral h W e (fsLog h u) := by
  intro n e δ h W f u hW hf hδ hu
  obtain ⟨hLGm, hLGo⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.logGap_basic n h u
  obtain ⟨hGm, hGeq⟩ := _root_.GlobalTheory.CompanionTheory.Relay.crofton_formula_fibre_sum n e δ h W f hW hf hδ (logGap h u) hLGm hLGo
  obtain ⟨hL, hLr⟩ := _root_.GlobalTheory.CompanionTheory.Relay.cone_ball_log_gap_integral n e h W f u hW hf hu
  obtain ⟨hμ0, hμt⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.gaussM_univ_pos_lt_top (e + 1) n
  obtain ⟨hpm0, hpmt⟩ : 0 < planeMass n e ∧ planeMass n e < ⊤ :=
    GroundTheory.Heights₂.Heights.coordBall_mass (chowGroups_le hW hf hδ)
  have hac : gaussM (e + 1) n ≪ (volume : Measure (Fin (e + 1) → Fin n → ℂ)) :=
    withDensity_absolutelyContinuous _ _
  have hcnt : ∀ᵐ π ∂(gaussM (e + 1) n), (fibrePts (coneSet h W) π).encard = δ :=
    hac.ae_le (_root_.GlobalTheory.CompanionTheory.Relay.ae_fibre_points_card_eq_degree n e δ h W f hW hf hδ)
  have hd : (0 : ℝ) < ((2 * (e + 1) : ℕ) : ℝ) := by positivity
  haveI := MeasureTheory.Measure.nullSingletonClass_hausdorff (EuclideanSpace ℂ (Fin n)) hd
  have hφm : Measurable (({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞))) :=
    measurable_const.indicator (measurableSet_singleton 0).compl
  have hφo : ∀ s : ℝ≥0∞,
      IsOpen {y | s < ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y} ∧
      IsScaleStable {y | s < ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y} := by
    intro s
    by_cases hs1 : s < 1
    · have hset : {y | s < ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y} =
          {0}ᶜ := by
        ext y
        by_cases hy : y = 0
        · simp [Set.indicator_apply, hy]
        · simp [Set.indicator_apply, hy, hs1]
      rw [hset]
      exact ⟨isOpen_compl_singleton, fun y hy t ht => by simpa [ht] using hy⟩
    · have hset : {y | s < ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y} =
          ∅ := by
        ext y
        by_cases hy : y = 0
        · simp [Set.indicator_apply, hy]
        · simp [Set.indicator_apply, hy, hs1]
      rw [hset]
      exact ⟨isOpen_empty, fun y hy => hy.elim⟩
  obtain ⟨-, hCeq⟩ := _root_.GlobalTheory.CompanionTheory.Relay.crofton_formula_fibre_sum n e δ h W f hW hf hδ _ hφm hφo
  have hae1 : ∀ᵐ π ∂(gaussM (e + 1) n), ∑' y : fibrePts (coneSet h W) π,
      ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y = δ := by
    filter_upwards [hcnt] with π hπ
    have hfin : (fibrePts (coneSet h W) π).Finite := Set.finite_of_encard_eq_coe hπ
    have hcard : hfin.toFinset.card = δ := by
      have h1 := hfin.encard_eq_coe_toFinset_card
      rw [hπ] at h1
      exact_mod_cast h1.symm
    have h1 : ∀ y ∈ hfin.toFinset,
        ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y = 1 := fun y hy =>
      Set.indicator_of_mem (ne_zero_of_mem_fibre_pts _ π y (hfin.mem_toFinset.1 hy)) _
    rw [tsum_fibre_pts_eq_sum _ π hfin, Finset.sum_congr rfl h1, Finset.sum_const, hcard, nsmul_eq_mul, mul_one]
  have hball : ∫⁻ y in coneBall h W, ({0}ᶜ : Set (EuclideanSpace ℂ (Fin n))).indicator (fun _ => (1 : ℝ≥0∞)) y
      ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ)) =
      Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) (coneBall h W) := by
    rw [lintegral_indicator_const (measurableSet_singleton 0).compl, one_mul,
      Measure.restrict_apply (measurableSet_singleton 0).compl, Set.inter_comm, ← Set.sdiff_eq,
      measure_sdiff_null (measure_singleton 0)]
  rw [lintegral_congr_ae hae1, lintegral_const, hball] at hCeq
  have hHc : Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) (coneBall h W) = δ * planeMass n e := by
    have h2 : gaussM (e + 1) n Set.univ * (δ * planeMass n e) =
        gaussM (e + 1) n Set.univ * Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ) (coneBall h W) := by
      rw [← hCeq]
      ring
    exact ((ENNReal.mul_right_inj hμ0.ne' hμt.ne).1 h2).symm
  have hGfin : ∫⁻ π, ∑' y : fibrePts (coneSet h W) π, logGap h u y ∂(gaussM (e + 1) n) ≠ ⊤ := by
    intro htop
    rw [htop, ENNReal.mul_top hpm0.ne'] at hGeq
    exact ENNReal.mul_ne_top hμt.ne hL.ne hGeq.symm
  have hGae := ae_lt_top hGm hGfin
  have hfs : ∀ᵐ π ∂(gaussM (e + 1) n), fsSum h u (coneSet h W) π =
      δ * Real.log (h.norm u) - (∑' y : fibrePts (coneSet h W) π, logGap h u y).toReal := by
    filter_upwards [hcnt, hGae] with π h1 h2
    rw [fubini_study_sum_crofton h u _ π h1 h2]
    ring
  haveI : IsFiniteMeasure (gaussM (e + 1) n) := ⟨hμt⟩
  have hGint := integrable_toReal_of_lintegral_ne_top hGm.aemeasurable hGfin
  have hint : Integrable (fun π => (δ : ℝ) * Real.log (h.norm u) -
      (∑' y : fibrePts (coneSet h W) π, logGap h u y).toReal) (gaussM (e + 1) n) :=
    (integrable_const _).sub hGint
  refine ⟨hint.congr (hfs.mono fun π hπ => hπ.symm), ?_⟩
  rw [integral_congr_ae hfs, integral_sub (integrable_const _) hGint, integral_const,
    integral_toReal hGm.aemeasurable hGae, measureReal_def, smul_eq_mul]
  have hX := congrArg ENNReal.toReal hGeq
  rw [ENNReal.toReal_mul, ENNReal.toReal_mul, hLr, hHc, ENNReal.toReal_mul, ENNReal.toReal_natCast] at hX
  have hpmr : 0 < (planeMass n e).toReal := ENNReal.toReal_pos hpm0.ne' hpmt.ne
  have hci : coneIntegral h W e (fsLog h u) = (∫ y in coneBall h W, fsLog h u (h.pointOf y)
      ∂(Measure.hausdorffMeasure ((2 * (e + 1) : ℕ) : ℝ))) / (planeMass n e).toReal := rfl
  rw [hci]
  have alg : ∀ a p X lg d I : ℝ, p ≠ 0 → p * X = a * (lg * (d * p) - I) →
      a * (d * lg) - X = a * (I / p) := by
    intro a p X lg d I hp hX'
    have hX'' : X = a * (lg * (d * p) - I) / p := by
      rw [eq_div_iff hp, mul_comm]
      exact hX'
    rw [hX'']
    field_simp
    ring
  exact alg _ _ _ _ _ _ hpmr.ne' hX
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone =====
