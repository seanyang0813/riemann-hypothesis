module

import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.CellConvergence
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.OnePlaceKF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableUnipotentNormRpowNeg
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.CellDataExists
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudesRelevantCellMonomialRep
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CellDataSupport
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.Admissible
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsUnipotentHaarMeasureRatio
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SymmetricMeasureL2NormEqResolutionL2
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarUniquenessConjugation
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector
import Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantEstimate
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceLastLevel
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FrameInd
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.AddLeMulPowOfSqLeOfLeMul
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.CoreInst
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.FvecCastSucc
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.HermitianXiOrthogonal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.IsoRightInv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.MXMulVecMid
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.NsqMulVecLe
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.SecondOrderNormBound
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.UnipotentFixesFrameVector
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.UnitriangularInverseBoundOf
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open BranchingSupport GlobalTheory.CellAmp Formalism.BasicNotions Formalism.MainNotions.S Formalism.QuantumDeterminants Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

noncomputable section

namespace GlobalTheory.CellMaj







open Formalism.FourierDecayAlt in
theorem meas_inv (k r : ℕ) :
    Measurable (fun x : Mt k r => (Matrix.of.symm ((Matrix.of x : B.Mat k r)⁻¹) : Mt k r)) := by
  refine measurable_pi_iff.mpr fun i => measurable_pi_iff.mpr fun j => ?_
  have hdet : Continuous fun x : Mt k r => (Matrix.of x : B.Mat k r).det :=
    (continuous_id (X := B.Mat k r)).matrix_det
  have hadj : Continuous fun x : Mt k r => (Matrix.of x : B.Mat k r).adjugate i j :=
    ((continuous_id (X := B.Mat k r)).matrix_adjugate).matrix_elem i j
  have e : (fun x : Mt k r => (Matrix.of.symm ((Matrix.of x : B.Mat k r)⁻¹) : Mt k r) i j) =
      fun x => ((Matrix.of x : B.Mat k r).det)⁻¹ * (Matrix.of x : B.Mat k r).adjugate i j := by
    funext x
    show ((Matrix.of x : B.Mat k r)⁻¹) i j = _
    rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
  rw [e]
  exact hdet.measurable.inv.mul hadj.measurable


open Formalism.FourierDecayAlt in
theorem meas_pairMaj {k r : ℕ} (γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (b : ℝ) :
    Measurable (pairMaj (k := k) (r := r) γ b) := by
  have hc : Continuous fun q : (Mt k r × Mt k r) × (Mt k r × Mt k r) =>
      (Matrix.of.symm ((Matrix.of q.1.1 : B.Mat k r) * Matrix.of q.1.2 * γ * Matrix.of q.2.2 * Matrix.of q.2.1) : Mt k r) := by
    have a1 : Continuous fun q : (Mt k r × Mt k r) × (Mt k r × Mt k r) => (Matrix.of q.1.1 : B.Mat k r) := continuous_fst.fst
    have a2 : Continuous fun q : (Mt k r × Mt k r) × (Mt k r × Mt k r) => (Matrix.of q.1.2 : B.Mat k r) := continuous_fst.snd
    have a3 : Continuous fun q : (Mt k r × Mt k r) × (Mt k r × Mt k r) => (Matrix.of q.2.1 : B.Mat k r) := continuous_snd.fst
    have a4 : Continuous fun q : (Mt k r × Mt k r) × (Mt k r × Mt k r) => (Matrix.of q.2.2 : B.Mat k r) := continuous_snd.snd
    exact (((a1.matrix_mul a2).matrix_mul continuous_const).matrix_mul a4).matrix_mul a3
  have hm : Measurable fun p : PairSp k r =>
      (((Matrix.of.symm ((Matrix.of p.1.1 : B.Mat k r)⁻¹) : Mt k r), (Matrix.of.symm ((Matrix.of p.1.2 : B.Mat k r)⁻¹) : Mt k r)),
        (p.2.1, p.2.2)) :=
    (((meas_inv k r).comp measurable_fst.fst).prodMk ((meas_inv k r).comp measurable_fst.snd)).prodMk
      (measurable_snd.fst.prodMk measurable_snd.snd)
  have h := hc.measurable.comp hm
  exact ((P.HaarUniquenessConjugation.gN_meas k r).comp h).pow_const _



open Formalism.FourierDecayAlt in
theorem cellConv : CellConv := by
  apply _root_.Formalism.MainNotions.S.Pv.AmpDDPf.CC.cell_convergence <;> assumption

end GlobalTheory.CellMaj

end
