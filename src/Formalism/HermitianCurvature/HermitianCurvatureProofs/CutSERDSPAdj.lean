module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv
public import Formalism.HermitianCurvature.StatementNF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntMulOfCpt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntUv
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsFderivChiBound
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PairAtTAdjCpt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairAtStarMul
public import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts
public import Formalism.HermitianCurvature.CompositeFormulaLevelZero
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableOfContinuousOnZero
public import Mathlib.Analysis.Calculus.FDeriv.Pi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSCoordAdj
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSIpInt
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemTsupportPsiL, Formalism.HermitianCurvature.HermitianCurvatureProofs.NormCDZPsiCLe, Formalism.HermitianCurvature.HermitianCurvatureProofs.HsRealSmulRight, Formalism.HermitianCurvature.HermitianCurvatureProofs.CsliceContDiffAt, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPAdj

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemTsupportPsiL =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemTsupportPsiL", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.Log.Deriv\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

section LogBump

def bumpR : ContDiffBump (0 : ℝ) := ⟨1, 2, one_pos, one_lt_two⟩

def psiL (n : ℕ) (c : ℂ) : ℝ := if c = 0 then 0 else bumpR (Real.log ‖c‖ / ((n : ℝ) + 1))

theorem psiL_le_one (n : ℕ) (c : ℂ) : |psiL n c| ≤ 1 := by
  unfold psiL
  split_ifs
  · simp
  · rw [abs_of_nonneg bumpR.nonneg]
    exact bumpR.le_one

theorem psiL_eq_near (n : ℕ) (c : ℂ) (hc : c ≠ 0) :
    psiL n =ᶠ[𝓝 c] fun w => bumpR (Real.log ‖w‖ / ((n : ℝ) + 1)) := by
  filter_upwards [isOpen_ne.mem_nhds hc] with w hw
  simp [psiL, hw]

theorem psiL_zero_of (n : ℕ) (w : ℂ) (hw : 2 * ((n : ℝ) + 1) ≤ |Real.log ‖w‖|) : psiL n w = 0 := by
  unfold psiL
  split_ifs with h
  · rfl
  · apply bumpR.zero_of_le_dist
    have hpos : (0:ℝ) < (n:ℝ) + 1 := by positivity
    rw [Real.dist_eq, sub_zero, abs_div, abs_of_pos hpos, le_div_iff₀ hpos]
    exact hw

theorem psiL_one_near (n : ℕ) (c : ℂ) (hc : c ≠ 0) (h : |Real.log ‖c‖| < (n : ℝ) + 1) :
    psiL n =ᶠ[𝓝 c] fun _ => 1 := by
  have hcont : ContinuousAt (fun w : ℂ => |Real.log ‖w‖|) c :=
    ((Real.continuousAt_log (norm_ne_zero_iff.2 hc)).comp continuous_norm.continuousAt).abs
  have h1 : ∀ᶠ w in 𝓝 c, |Real.log ‖w‖| < (n:ℝ) + 1 := hcont.eventually_lt continuousAt_const h
  filter_upwards [isOpen_ne.mem_nhds hc, h1] with w hw hw1
  simp only [psiL, if_neg hw]
  apply bumpR.one_of_mem_closedBall
  have hpos : (0:ℝ) < (n:ℝ) + 1 := by positivity
  rw [Metric.mem_closedBall, Real.dist_eq, sub_zero, abs_div, abs_of_pos hpos, div_le_iff₀ hpos]
  show |Real.log ‖w‖| ≤ 1 * ((n:ℝ) + 1)
  linarith

theorem psiL_zero_near0 (n : ℕ) : psiL n =ᶠ[𝓝 0] fun _ => 0 := by
  have hε : (0:ℝ) < Real.exp (-(2 * ((n:ℝ) + 1))) := Real.exp_pos _
  filter_upwards [Metric.ball_mem_nhds (0:ℂ) hε] with w hw
  by_cases h0 : w = 0
  · simp [psiL, h0]
  · apply psiL_zero_of
    rw [Metric.mem_ball, dist_zero_right] at hw
    have hlog : Real.log ‖w‖ < -(2 * ((n:ℝ) + 1)) := by
      rw [Real.log_lt_iff_lt_exp (norm_pos_iff.2 h0)]
      exact hw
    rw [abs_of_neg (by linarith)]
    linarith

theorem psiL_contDiffAt (n : ℕ) (c : ℂ) : ContDiffAt ℝ ∞ (psiL n) c := by
  by_cases hc : c = 0
  · subst hc
    exact (contDiffAt_const (c := (0:ℝ))).congr_of_eventuallyEq (psiL_zero_near0 n)
  · refine ContDiffAt.congr_of_eventuallyEq ?_ (psiL_eq_near n c hc)
    have h1 : ContDiffAt ℝ ∞ (fun w : ℂ => ‖w‖) c := contDiffAt_norm ℝ hc
    have h2 : ContDiffAt ℝ ∞ (fun w : ℂ => Real.log ‖w‖) c :=
      (Real.contDiffAt_log.2 (norm_ne_zero_iff.2 hc)).comp c h1
    have h3 : ContDiffAt ℝ ∞ (fun w : ℂ => Real.log ‖w‖ / ((n:ℝ) + 1)) c := h2.div_const _
    exact bumpR.contDiff.contDiffAt.comp c h3

theorem psiL_contDiff (n : ℕ) : ContDiff ℝ ∞ (psiL n) := contDiff_iff_contDiffAt.2 (psiL_contDiffAt n)

theorem tsupport_psiL (n : ℕ) : tsupport (psiL n) ⊆
    {c : ℂ | Real.exp (-(2 * ((n : ℝ) + 1))) ≤ ‖c‖ ∧ ‖c‖ ≤ Real.exp (2 * ((n : ℝ) + 1))} := by
  refine closure_minimal (fun c hc => ?_)
    ((isClosed_le continuous_const continuous_norm).inter (isClosed_le continuous_norm continuous_const))
  have hc' : psiL n c ≠ 0 := hc
  have h0 : c ≠ 0 := by
    rintro rfl
    exact hc' (by simp [psiL])
  have hlog : |Real.log ‖c‖| < 2 * ((n:ℝ) + 1) := by
    by_contra hle
    push_neg at hle
    exact hc' (psiL_zero_of n c hle)
  have hpos := norm_pos_iff.2 h0
  rw [abs_lt] at hlog
  constructor
  · rw [← Real.exp_log hpos]
    exact Real.exp_le_exp.2 (by linarith [hlog.1])
  · rw [← Real.exp_log hpos]
    exact Real.exp_le_exp.2 (by linarith [hlog.2])

theorem psiL_hasCompactSupport (n : ℕ) : HasCompactSupport (psiL n) := by
  refine (isCompact_closedBall (0:ℂ) (Real.exp (2 * ((n:ℝ) + 1)))).of_isClosed_subset (isClosed_tsupport _) ?_
  intro c hc
  rw [Metric.mem_closedBall, dist_zero_right]
  exact (tsupport_psiL n hc).2

theorem zero_notMem_tsupport_psiL (n : ℕ) : (0 : ℂ) ∉ tsupport (psiL n) := by
  intro h
  have h1 := (tsupport_psiL n h).1
  rw [norm_zero] at h1
  exact absurd h1 (not_le.2 (Real.exp_pos _))

theorem exists_deriv_bump_bound : ∃ C : ℝ, ∀ t, ‖deriv bumpR t‖ ≤ C := by
  have hc : Continuous (deriv bumpR) := (bumpR.contDiff (n := 1)).continuous_deriv le_rfl
  exact hc.bounded_above_of_compact_support bumpR.hasCompactSupport.deriv

theorem norm_mul_fderiv_psiL_le {C : ℝ} (hC : ∀ t, ‖deriv bumpR t‖ ≤ C) (n : ℕ) (c : ℂ) (hc : c ≠ 0) :
    ‖c‖ * ‖fderiv ℝ (psiL n) c‖ ≤ C := by
  have hpos : 0 < ‖c‖ := norm_pos_iff.2 hc
  have hn1 : (0:ℝ) < (n:ℝ) + 1 := by positivity
  have hnd : DifferentiableAt ℝ (fun w : ℂ => ‖w‖) c := (contDiffAt_norm ℝ hc (n := 1)).differentiableAt one_ne_zero
  have hN : ‖fderiv ℝ (fun w : ℂ => ‖w‖) c‖ ≤ 1 := by
    simpa using norm_fderiv_le_of_lipschitz ℝ (x₀ := c) lipschitzWith_one_norm
  have hl : HasFDerivAt (fun w : ℂ => Real.log ‖w‖) ((‖c‖)⁻¹ • fderiv ℝ (fun w : ℂ => ‖w‖) c) c :=
    (Real.hasDerivAt_log hpos.ne').comp_hasFDerivAt c hnd.hasFDerivAt
  have hφ : HasFDerivAt (fun w : ℂ => Real.log ‖w‖ / ((n:ℝ) + 1))
      ((((n:ℝ) + 1)⁻¹) • ((‖c‖)⁻¹ • fderiv ℝ (fun w : ℂ => ‖w‖) c)) c := by
    have h2 := hl.mul_const (((n:ℝ) + 1)⁻¹)
    simpa only [div_eq_mul_inv] using h2
  have hb : HasDerivAt (⇑bumpR) (deriv bumpR (Real.log ‖c‖ / ((n:ℝ) + 1))) (Real.log ‖c‖ / ((n:ℝ) + 1)) :=
    ((bumpR.contDiff (n := 1)).differentiable one_ne_zero _).hasDerivAt
  have hcomp := hb.comp_hasFDerivAt c hφ
  have hf : fderiv ℝ (psiL n) c = deriv bumpR (Real.log ‖c‖ / ((n:ℝ) + 1)) •
      ((((n:ℝ) + 1)⁻¹) • ((‖c‖)⁻¹ • fderiv ℝ (fun w : ℂ => ‖w‖) c)) :=
    (psiL_eq_near n c hc).fderiv_eq.trans hcomp.fderiv
  have e1 : ‖(((n:ℝ) + 1)⁻¹)‖ = ((n:ℝ) + 1)⁻¹ := by rw [Real.norm_eq_abs, abs_of_pos (inv_pos.2 hn1)]
  have e2 : ‖(‖c‖)⁻¹‖ = (‖c‖)⁻¹ := by rw [Real.norm_eq_abs, abs_of_pos (inv_pos.2 hpos)]
  rw [hf, norm_smul, norm_smul, norm_smul, e1, e2]
  have hinv : ((n:ℝ) + 1)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (by linarith [(n.cast_nonneg : (0:ℝ) ≤ n)])
  have key : ∀ (t a b N : ℝ), 0 < t → a ≤ C → 0 ≤ a → 0 ≤ b → b ≤ 1 → 0 ≤ N → N ≤ 1 →
      t * (a * (b * (t⁻¹ * N))) ≤ C := by
    intro t a b N ht ha ha0 hb0 hb1 hN0 hN1
    rw [show t * (a * (b * (t⁻¹ * N))) = a * (b * N) * (t * t⁻¹) by ring, mul_inv_cancel₀ ht.ne', mul_one]
    calc a * (b * N) ≤ C * (1 * 1) :=
          mul_le_mul ha (mul_le_mul hb1 hN1 hN0 zero_le_one) (mul_nonneg hb0 hN0) (le_trans ha0 ha)
      _ = C := by ring
  exact key _ _ _ _ hpos (hC _) (norm_nonneg _) (inv_nonneg.2 hn1.le) hinv (norm_nonneg _) hN

end LogBump

end Formalism.FourierDecayAlt.P5.HerB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemTsupportPsiL =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormCDZPsiCLe =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NormCDZPsiCLe", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemTsupportPsiL\npublic import Formalism.HermitianCurvature.StatementNF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntMulOfCpt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

section Lim

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

theorem tendsto_int_uv_ae (I J : α → ℂ) (hI : Integrable I μ) (hJ : Integrable J μ) (u v : ℕ → α → ℂ) (M : ℝ)
    (hum : ∀ n, AEStronglyMeasurable (u n) μ) (hvm : ∀ n, AEStronglyMeasurable (v n) μ)
    (hu : ∀ n x, ‖u n x‖ ≤ 1) (hv : ∀ n x, ‖v n x‖ ≤ M) (hl : ∀ᵐ x ∂μ, ∀ᶠ n in atTop, u n x = 1 ∧ v n x = 0) :
    Tendsto (fun n => ∫ x, (u n x * I x + v n x * J x) ∂μ) atTop (𝓝 (∫ x, I x ∂μ)) := by
  refine tendsto_integral_of_dominated_convergence (fun x => ‖I x‖ + M * ‖J x‖)
    (fun n => ((hum n).mul hI.1).add ((hvm n).mul hJ.1)) (hI.norm.add (hJ.norm.const_mul M))
    (fun n => Filter.Eventually.of_forall fun x => ?_) ?_
  · calc ‖u n x * I x + v n x * J x‖ ≤ ‖u n x * I x‖ + ‖v n x * J x‖ := norm_add_le _ _
      _ ≤ 1 * ‖I x‖ + M * ‖J x‖ := by
        rw [norm_mul, norm_mul]
        exact add_le_add (mul_le_mul_of_nonneg_right (hu n x) (norm_nonneg _))
          (mul_le_mul_of_nonneg_right (hv n x) (norm_nonneg _))
      _ = ‖I x‖ + M * ‖J x‖ := by ring
  · filter_upwards [hl] with x hx
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [hx] with n hn
    rw [hn.1, hn.2]
    ring

end Lim

section Main

def psiC (n : ℕ) (c : ℂ) : ℂ := ((psiL n c : ℝ) : ℂ)

theorem psiC_contDiff (n : ℕ) : ContDiff ℝ ∞ (psiC n) := Complex.ofRealCLM.contDiff.comp (psiL_contDiff n)

theorem fderiv_psiC (n : ℕ) (c : ℂ) : fderiv ℝ (psiC n) c = Complex.ofRealCLM.comp (fderiv ℝ (psiL n) c) := by
  have hd : DifferentiableAt ℝ (psiL n) c := (psiL_contDiffAt n c).differentiableAt (by simp)
  exact (Complex.ofRealCLM.hasFDerivAt.comp c hd.hasFDerivAt).fderiv

theorem norm_c_dZ_psiC_le {C : ℝ} (hC : ∀ t, ‖deriv bumpR t‖ ≤ C) (n : ℕ) (c : ℂ) :
    ‖c * NF.dZ (psiC n) c‖ ≤ C := by
  by_cases hc : c = 0
  · subst hc
    simp only [zero_mul, norm_zero]
    exact (norm_nonneg _).trans (hC 0)
  · rw [dZ_eq, fderiv_psiC, norm_mul]
    simp only [ContinuousLinearMap.comp_apply, Complex.ofRealCLM_apply]
    have hD := norm_mul_fderiv_psiL_le hC n c hc
    have ha : ‖((fderiv ℝ (psiL n) c 1 : ℝ) : ℂ)‖ ≤ ‖fderiv ℝ (psiL n) c‖ := by
      rw [Complex.norm_real]
      simpa using (fderiv ℝ (psiL n) c).le_opNorm 1
    have hb : ‖((fderiv ℝ (psiL n) c Complex.I : ℝ) : ℂ)‖ ≤ ‖fderiv ℝ (psiL n) c‖ := by
      rw [Complex.norm_real]
      simpa using (fderiv ℝ (psiL n) c).le_opNorm Complex.I
    have hz : ‖(1 / 2 : ℂ) * (((fderiv ℝ (psiL n) c 1 : ℝ) : ℂ) -
        Complex.I * ((fderiv ℝ (psiL n) c Complex.I : ℝ) : ℂ))‖ ≤ ‖fderiv ℝ (psiL n) c‖ := by
      rw [norm_mul]
      have h3 : ‖((fderiv ℝ (psiL n) c 1 : ℝ) : ℂ) - Complex.I * ((fderiv ℝ (psiL n) c Complex.I : ℝ) : ℂ)‖ ≤
          2 * ‖fderiv ℝ (psiL n) c‖ := by
        calc _ ≤ ‖((fderiv ℝ (psiL n) c 1 : ℝ) : ℂ)‖ + ‖Complex.I * ((fderiv ℝ (psiL n) c Complex.I : ℝ) : ℂ)‖ :=
              norm_sub_le _ _
          _ ≤ ‖fderiv ℝ (psiL n) c‖ + ‖fderiv ℝ (psiL n) c‖ := by
              rw [norm_mul, Complex.norm_I, one_mul]
              exact add_le_add ha hb
          _ = 2 * ‖fderiv ℝ (psiL n) c‖ := by ring
      have h2 : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by simp
      rw [h2]
      linarith
    calc ‖c‖ * _ ≤ ‖c‖ * ‖fderiv ℝ (psiL n) c‖ := mul_le_mul_of_nonneg_left hz (norm_nonneg c)
      _ ≤ C := hD

theorem psiC_eventually (c : ℂ) (hc : c ≠ 0) :
    ∀ᶠ n : ℕ in atTop, psiC n c = 1 ∧ c * NF.dZ (psiC n) c = 0 := by
  obtain ⟨N, hN⟩ := exists_nat_gt |Real.log ‖c‖|
  filter_upwards [Filter.eventually_ge_atTop N] with n hn
  have hlt : |Real.log ‖c‖| < (n : ℝ) + 1 := by
    have : (N : ℝ) ≤ n := by exact_mod_cast hn
    linarith
  have hev := psiL_one_near n c hc hlt
  refine ⟨?_, ?_⟩
  · simp [psiC, hev.eq_of_nhds]
  · rw [dZ_eq, fderiv_psiC, hev.fderiv_eq]
    simp

end Main

end Formalism.FourierDecayAlt.P5.HerB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormCDZPsiCLe =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HsRealSmulRight =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HsRealSmulRight", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntUv\npublic import Formalism.HermitianCurvature.StatementNF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsFderivChiBound\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormCDZPsiCLe\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PairAtTAdjCpt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairAtStarMul\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

open Formalism.FourierDecayAlt.P5.HerA

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

def dZv (A : ℂ → (Wq →L[ℂ] Wp)) (c : ℂ) : Wq →L[ℂ] Wp :=
  (1 / 2 : ℂ) • (fderiv ℝ A c 1 - Complex.I • fderiv ℝ A c Complex.I)

def dZbv (A : ℂ → (Wq →L[ℂ] Wp)) (c : ℂ) : Wq →L[ℂ] Wp :=
  (1 / 2 : ℂ) • (fderiv ℝ A c 1 + Complex.I • fderiv ℝ A c Complex.I)

theorem hs_real_smul_right (r : ℝ) (A C : Wq →L[ℂ] Wp) : B.hsInner A (r • C) = r * B.hsInner A C := by
  rw [show r • C = (r : ℂ) • C from rfl, hs_smul_right, Complex.conj_ofReal]

theorem hs_real_smul_left (r : ℝ) (A C : Wq →L[ℂ] Wp) : B.hsInner (r • A) C = r * B.hsInner A C := by
  rw [show r • A = (r : ℂ) • A from rfl, hs_smul_left]

def hsR (A : Wq →L[ℂ] Wp) : (Wq →L[ℂ] Wp) →L[ℝ] ℂ :=
  LinearMap.toContinuousLinearMap
    { toFun := fun C => B.hsInner A C
      map_add' := fun C C' => hs_add_right A C C'
      map_smul' := fun r C => by simp only [RingHom.id_apply, hs_real_smul_right, Complex.real_smul] }

def hsB : (Wq →L[ℂ] Wp) →L[ℝ] (Wq →L[ℂ] Wp) →L[ℝ] ℂ :=
  LinearMap.toContinuousLinearMap
    { toFun := fun A => hsR A
      map_add' := fun A A' => by ext C; simp [hsR, hs_add_left]
      map_smul' := fun r A => by ext C; simp [hsR, hs_real_smul_left, Complex.real_smul] }

theorem hsB_apply (A C : Wq →L[ℂ] Wp) : hsB A C = B.hsInner A C := rfl

theorem hs_sub_left (A A' C : Wq →L[ℂ] Wp) : B.hsInner (A - A') C = B.hsInner A C - B.hsInner A' C := by
  simp only [hsInner_eq_sum, ContinuousLinearMap.sub_apply, inner_sub_right, Finset.sum_sub_distrib]

theorem int_hs_of_cpt {a b : ℂ → (Wq →L[ℂ] Wp)} (ha : Continuous a) (hac : HasCompactSupport a)
    (hU : tsupport a ⊆ {c | c ≠ 0}) (hb : ContinuousOn b {c | c ≠ 0}) :
    Integrable (fun x => B.hsInner (a x) (b x)) := by
  have hUo : IsOpen {c : ℂ | c ≠ 0} := isOpen_ne
  have hcont2 : Continuous (fun P : (Wq →L[ℂ] Wp) × (Wq →L[ℂ] Wp) => B.hsInner P.1 P.2) :=
    Formalism.FourierDecayAlt.P.B6.hsInner_continuous
  have hc : Continuous (fun x => B.hsInner (a x) (b x)) := by
    refine continuous_iff_continuousAt.mpr fun x => ?_
    by_cases hx : x ∈ tsupport a
    · exact hcont2.continuousAt.comp (ha.continuousAt.prodMk (hb.continuousAt (hUo.mem_nhds (hU hx))))
    · have h0 : a =ᶠ[𝓝 x] 0 := notMem_tsupport_iff_eventuallyEq.mp hx
      have h1 : (fun x => B.hsInner (a x) (b x)) =ᶠ[𝓝 x] fun _ => 0 :=
        h0.mono fun y hy => by simp only [hy, Pi.zero_apply]; exact hsInner_zero_left _
      exact (continuousAt_const.congr h1.symm)
  have hs : HasCompactSupport (fun x => B.hsInner (a x) (b x)) := by
    refine hac.mono' fun x hx => subset_tsupport _ ?_
    intro h0
    apply hx
    simp only [h0]
    exact hsInner_zero_left _
  exact hc.integrable_of_hasCompactSupport hs

theorem int_dZv_hs (A G : ℂ → (Wq →L[ℂ] Wp))
    (hA : ∀ x ∈ tsupport G, DifferentiableAt ℝ A x) (hG : ∀ x ∈ tsupport A, DifferentiableAt ℝ G x)
    (h1 : Integrable (fun x => B.hsInner (fderiv ℝ A x 1) (G x)))
    (h2 : Integrable (fun x => B.hsInner (A x) (fderiv ℝ G x 1)))
    (h3 : Integrable (fun x => B.hsInner (fderiv ℝ A x Complex.I) (G x)))
    (h4 : Integrable (fun x => B.hsInner (A x) (fderiv ℝ G x Complex.I)))
    (h5 : Integrable (fun x => B.hsInner (A x) (G x))) :
    ∫ x, B.hsInner (dZv A x) (G x) = -∫ x, B.hsInner (A x) (dZbv G x) := by
  have e1 := integral_bilinear_fderiv_right_eq_neg_left_of_integrable (B := hsB) (v := (1 : ℂ))
    (μ := volume) h1 h2 h5 hA hG
  have e2 := integral_bilinear_fderiv_right_eq_neg_left_of_integrable (B := hsB) (v := Complex.I)
    (μ := volume) h3 h4 h5 hA hG
  simp only [hsB_apply] at e1 e2
  have l1 : ∫ x, B.hsInner (dZv A x) (G x) = (1 / 2 : ℂ) * ((∫ x, B.hsInner (fderiv ℝ A x 1) (G x)) -
      Complex.I * ∫ x, B.hsInner (fderiv ℝ A x Complex.I) (G x)) := by
    rw [← integral_const_mul, ← integral_sub h1 (h3.const_mul _), ← integral_const_mul]
    congr 1; funext x; unfold dZv
    rw [hs_smul_left, hs_sub_left, hs_smul_left]
  have l2 : ∫ x, B.hsInner (A x) (dZbv G x) = (1 / 2 : ℂ) * ((∫ x, B.hsInner (A x) (fderiv ℝ G x 1)) -
      Complex.I * ∫ x, B.hsInner (A x) (fderiv ℝ G x Complex.I)) := by
    rw [← integral_const_mul, ← integral_sub h2 (h4.const_mul _), ← integral_const_mul]
    congr 1; funext x; unfold dZbv
    rw [hs_smul_right, hs_add_right, hs_smul_right]
    simp only [map_div₀, map_one, map_ofNat, Complex.conj_I]
    ring
  rw [l1, l2, e1, e2]
  ring

theorem dZbv_inv_smul {Bf : ℂ → (Wq →L[ℂ] Wp)} {c : ℂ} (hc : c ≠ 0) (h : DifferentiableAt ℝ Bf c) :
    dZbv (fun w => (w⁻¹ : ℂ) • Bf w) c = c⁻¹ • dZbv Bf c := by
  have hinv := (hasDerivAt_inv hc).hasFDerivAt.restrictScalars ℝ
  have hs : HasFDerivAt (fun w => (w⁻¹ : ℂ) • Bf w) _ c := hinv.smul h.hasFDerivAt
  unfold dZbv
  rw [hs.fderiv]
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, ContinuousLinearMap.smulRight_apply,
    ContinuousLinearMap.coe_restrictScalars', ContinuousLinearMap.toSpanSingleton_apply]
  set a : ℂ := -(c ^ 2)⁻¹ with ha
  have hI : (1 : ℂ) • a + Complex.I * (Complex.I • a) = 0 := by
    simp only [smul_eq_mul, one_mul]; rw [← mul_assoc, Complex.I_mul_I]; ring
  have h2 : ((1 : ℂ) • a) • Bf c + Complex.I • ((Complex.I • a) • Bf c) = 0 := by
    rw [smul_smul Complex.I, ← add_smul, hI, zero_smul]
  calc (1 / 2 : ℂ) • (c⁻¹ • fderiv ℝ Bf c 1 + ((1 : ℂ) • a) • Bf c +
        Complex.I • (c⁻¹ • fderiv ℝ Bf c Complex.I + (Complex.I • a) • Bf c))
      = (1 / 2 : ℂ) • (c⁻¹ • fderiv ℝ Bf c 1 + Complex.I • (c⁻¹ • fderiv ℝ Bf c Complex.I)) +
          (1 / 2 : ℂ) • (((1 : ℂ) • a) • Bf c + Complex.I • ((Complex.I • a) • Bf c)) := by module
    _ = c⁻¹ • ((1 / 2 : ℂ) • (fderiv ℝ Bf c 1 + Complex.I • fderiv ℝ Bf c Complex.I)) := by
        rw [h2, smul_zero, add_zero]; module

theorem pLogAdjHS_cpt (A Bf : ℂ → (Wq →L[ℂ] Wp)) (hA : ContDiff ℝ 1 A) (hAc : HasCompactSupport A)
    (hA0 : (0 : ℂ) ∉ tsupport A) (hB : ContDiffOn ℝ 1 Bf {c | c ≠ 0}) :
    ∫ c, B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ) =
      -∫ c, B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ) := by
  set U : Set ℂ := {c | c ≠ 0} with hUdef
  have hUo : IsOpen U := isOpen_ne
  have hAU : tsupport A ⊆ U := fun x hx h => hA0 (h ▸ hx)
  set G : ℂ → (Wq →L[ℂ] Wp) := fun w => (w⁻¹ : ℂ) • Bf w with hGdef
  have hinv : ContDiffOn ℝ 1 (fun w : ℂ => w⁻¹) U := fun x hx => (contDiffAt_inv ℝ hx).contDiffWithinAt
  have hGc : ContDiffOn ℝ 1 G U := hinv.smul hB
  have hGd : ∀ x ∈ U, DifferentiableAt ℝ G x := fun x hx =>
    (hGc.differentiableOn one_ne_zero x hx).differentiableAt (hUo.mem_nhds hx)
  have hBd : ∀ x ∈ U, DifferentiableAt ℝ Bf x := fun x hx =>
    (hB.differentiableOn one_ne_zero x hx).differentiableAt (hUo.mem_nhds hx)
  have hGf : ContinuousOn (fderiv ℝ G) U := hGc.continuousOn_fderiv_of_isOpen hUo le_rfl
  have hAd : Differentiable ℝ A := hA.differentiable one_ne_zero
  have hAf : Continuous (fderiv ℝ A) := hA.continuous_fderiv one_ne_zero
  have hDA : ∀ v : ℂ, Continuous (fun x => fderiv ℝ A x v) ∧ HasCompactSupport (fun x => fderiv ℝ A x v) ∧
      tsupport (fun x => fderiv ℝ A x v) ⊆ U := by
    intro v
    have h0 : (fun L : ℂ →L[ℝ] (Wq →L[ℂ] Wp) => L v) 0 = 0 := rfl
    refine ⟨hAf.clm_apply continuous_const,
      HasCompactSupport.comp_left (g := fun L : ℂ →L[ℝ] (Wq →L[ℂ] Wp) => L v) (hAc.fderiv (𝕜 := ℝ)) h0, ?_⟩
    exact ((tsupport_comp_subset (g := fun L : ℂ →L[ℝ] (Wq →L[ℂ] Wp) => L v) h0 (fderiv ℝ A)).trans
      (tsupport_fderiv_subset ℝ (f := A))).trans hAU
  have hGv : ∀ v : ℂ, ContinuousOn (fun x => fderiv ℝ G x v) U := fun v => hGf.clm_apply continuousOn_const
  have e := int_dZv_hs A G (fun x _ => hAd x) (fun x hx => hGd x (hAU hx))
    (int_hs_of_cpt (hDA 1).1 (hDA 1).2.1 (hDA 1).2.2 hGc.continuousOn)
    (int_hs_of_cpt hA.continuous hAc hAU (hGv 1))
    (int_hs_of_cpt (hDA Complex.I).1 (hDA Complex.I).2.1 (hDA Complex.I).2.2 hGc.continuousOn)
    (int_hs_of_cpt hA.continuous hAc hAU (hGv Complex.I))
    (int_hs_of_cpt hA.continuous hAc hAU hGc.continuousOn)
  have hL : (fun c => B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) =
      fun c => B.hsInner (dZv A c) (G c) := by
    funext c
    by_cases hc : c = 0
    · subst hc
      show B.hsInner ((0 : ℂ) • dZv A 0) (Bf 0) / _ = B.hsInner (dZv A 0) ((0 : ℂ)⁻¹ • Bf 0)
      rw [hs_smul_left, inv_zero, hs_smul_right, map_zero]
      simp
    · have hcc : conj c ≠ 0 := (map_ne_zero _).mpr hc
      have hn : ((‖c‖ ^ 2 : ℝ) : ℂ) = c * conj c := by rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]
      rw [hn, hGdef]
      simp only [hs_smul_left, hs_smul_right, map_inv₀]
      field_simp
  have hR : (fun c => B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) =
      fun c => B.hsInner (A c) (dZbv G c) := by
    funext c
    by_cases hc : c = 0
    · subst hc
      have : A 0 = 0 := image_eq_zero_of_notMem_tsupport hA0
      simp [this, hsInner_zero_left]
    · have hcc : conj c ≠ 0 := (map_ne_zero _).mpr hc
      have hn : ((‖c‖ ^ 2 : ℝ) : ℂ) = c * conj c := by rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]
      rw [hn, hGdef, dZbv_inv_smul hc (hBd c hc)]
      simp only [hs_smul_right, map_inv₀, Complex.conj_conj]
      field_simp
  rw [hL, hR]
  exact e

theorem dZv_smul {φ : ℂ → ℂ} {A : ℂ → (Wq →L[ℂ] Wp)} {c : ℂ} (hφ : DifferentiableAt ℝ φ c)
    (hA : DifferentiableAt ℝ A c) : dZv (fun w => φ w • A w) c = NF.dZ φ c • A c + φ c • dZv A c := by
  have h : HasFDerivAt (fun w => φ w • A w) _ c := hφ.hasFDerivAt.smul hA.hasFDerivAt
  unfold dZv NF.dZ
  rw [h.fderiv]
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, ContinuousLinearMap.smulRight_apply]
  module

theorem pLogAdjHS (A Bf : ℂ → (Wq →L[ℂ] Wp)) (hA : ContDiffOn ℝ 1 A {c | c ≠ 0})
    (hB : ContDiffOn ℝ 1 Bf {c | c ≠ 0})
    (h0 : Integrable (fun c => B.hsInner (A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)))
    (h1 : Integrable (fun c => B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)))
    (h2 : Integrable (fun c => B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ))) :
    ∫ c, B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ) =
      -∫ c, B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ) := by
  obtain ⟨C, hC⟩ := exists_deriv_bump_bound
  have hUo : IsOpen {c : ℂ | c ≠ 0} := isOpen_ne
  have hAd : ∀ c ≠ 0, DifferentiableAt ℝ A c := fun c hc =>
    (hA.differentiableOn one_ne_zero c hc).differentiableAt (hUo.mem_nhds hc)
  set F : ℕ → ℂ → (Wq →L[ℂ] Wp) := fun n c => psiC n c • A c with hF
  have hFc : ∀ n, ContDiff ℝ 1 (F n) := by
    intro n
    refine contDiff_iff_contDiffAt.mpr fun c => ?_
    by_cases hc : c = 0
    · subst hc
      refine ContDiffAt.congr_of_eventuallyEq (contDiffAt_const (c := (0 : Wq →L[ℂ] Wp))) ?_
      filter_upwards [psiL_zero_near0 n] with w hw
      simp [hF, psiC, hw]
    · exact ((psiC_contDiff n).contDiffAt.of_le (by simp)).smul (hA.contDiffAt (hUo.mem_nhds hc))
  have hψs : ∀ n, tsupport (psiC n) ⊆ tsupport (psiL n) := fun n =>
    tsupport_comp_subset (g := fun x : ℝ => (x : ℂ)) Complex.ofReal_zero (psiL n)
  have hFs : ∀ n, HasCompactSupport (F n) := fun n =>
    (((psiL_hasCompactSupport n).comp_left (g := fun x : ℝ => (x : ℂ)) Complex.ofReal_zero).smul_right)
  have hF0 : ∀ n, (0 : ℂ) ∉ tsupport (F n) := fun n h =>
    zero_notMem_tsupport_psiL n (hψs n ((tsupport_smul_subset_left _ _) h))
  have key := fun n => pLogAdjHS_cpt (F n) Bf (hFc n) (hFs n) (hF0 n) hB
  have hLe : ∀ n, (fun c => B.hsInner (c • dZv (F n) c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) = fun c =>
      psiC n c * (B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) +
        (c * NF.dZ (psiC n) c) * (B.hsInner (A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) := by
    intro n; funext c
    by_cases hc : c = 0
    · subst hc; simp
    · have hd := dZv_smul (φ := psiC n) (A := A) (((psiC_contDiff n).differentiable (by simp)) c) (hAd c hc)
      rw [show dZv (F n) c = dZv (fun w => psiC n w • A w) c from rfl, hd]
      simp only [smul_add, hs_add_left, hs_smul_left]
      ring
  have hRe : ∀ n, (fun c => B.hsInner (F n c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) = fun c =>
      psiC n c * (B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) +
        (0 : ℂ) * (B.hsInner (A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) := by
    intro n; funext c; simp only [hF, hs_smul_left]; ring
  have hψm : ∀ n, AEStronglyMeasurable (psiC n) volume := fun n =>
    (psiC_contDiff n).continuous.aestronglyMeasurable
  have hvm : ∀ n, AEStronglyMeasurable (fun c : ℂ => c * NF.dZ (psiC n) c) volume := fun n =>
    (continuous_id.mul (dZ_contDiff (psiC_contDiff n)).continuous).aestronglyMeasurable
  have hae : ∀ᵐ c ∂(volume : Measure ℂ), c ≠ 0 := Measure.ae_ne volume 0
  have hL := tendsto_int_uv_ae _ _ h1 h0 (fun n => psiC n) (fun n c => c * NF.dZ (psiC n) c) C hψm hvm
    (fun n c => by simpa [psiC] using psiL_le_one n c) (fun n c => norm_c_dZ_psiC_le hC n c)
    (hae.mono fun c hc => psiC_eventually c hc)
  have hR := tendsto_int_uv_ae _ _ h2 h0 (fun n => psiC n) (fun _ _ => (0 : ℂ)) C hψm
    (fun _ => aestronglyMeasurable_const)
    (fun n c => by simpa [psiC] using psiL_le_one n c)
    (fun _ _ => by simpa using (norm_nonneg _).trans (hC 0))
    (hae.mono fun c hc => (psiC_eventually c hc).mono fun n hn => ⟨hn.1, rfl⟩)
  have hL' : Tendsto (fun n => ∫ c, B.hsInner (c • dZv (F n) c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) atTop
      (𝓝 (∫ c, B.hsInner (c • dZv A c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ))) := by
    simp only [hLe]; exact hL
  have hR' : Tendsto (fun n => ∫ c, B.hsInner (c • dZv (F n) c) (Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ)) atTop
      (𝓝 (-∫ c, B.hsInner (A c) (conj c • dZbv Bf c) / ((‖c‖ ^ 2 : ℝ) : ℂ))) := by
    simp only [key, hRe]; exact hR.neg
  exact tendsto_nhds_unique hL' hR'

end Formalism.FourierDecayAlt.P5.HerB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HsRealSmulRight =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CsliceContDiffAt =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CsliceContDiffAt", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HsRealSmulRight\npublic import Formalism.HermitianCurvature.CompositeFormulaLevelZero\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableOfContinuousOnZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.FDeriv.Pi\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem update_mem_OmX {c : Fin r → ℂ} (hc : c ∈ OmX r) (l : Fin r) {t : ℂ} (ht : t ≠ 0) :
    Function.update c l t ∈ OmX r := by
  intro j
  by_cases hj : j = l
  · subst hj; simpa using ht
  · rw [Function.update_of_ne hj]; exact hc j

theorem cslice_contDiffAt (Φ : RadSp k r z z' π π') (g : Mx k r) {x : Fin r → ℂ} (hx : x ∈ OmX r) :
    ContDiffAt ℝ ∞ (fun c' => (Φ : Fn k r (Wq →L[ℂ] Wp)) c' g) x := by
  by_cases hg : g ∈ Glev k r (Fin.last r) ∧ 0 < GGl k r z z' g
  · obtain ⟨-, hs, -⟩ := Φ.2
    obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := hs (x, g) ⟨hx, hg.1, hg.2⟩
    have hcont : Continuous (fun c' : Fin r → ℂ => (c', g)) := continuous_id.prodMk continuous_const
    have hV : IsOpen ((fun c' : Fin r → ℂ => (c', g)) ⁻¹' U) := hU.preimage hcont
    have hFx : ContDiffAt ℝ ∞ (fun c' : Fin r → ℂ => F (c', g)) x :=
      (hF.contDiffAt (hU.mem_nhds hxU)).comp x (contDiff_id.prodMk contDiff_const).contDiffAt
    refine hFx.congr_of_eventuallyEq ?_
    filter_upwards [hV.mem_nhds hxU] with c' hc'
    exact hΦ (c', g) hc' hg.1
  · have h0 : (fun c' => (Φ : Fn k r (Wq →L[ℂ] Wp)) c' g) = fun _ => 0 := by
      funext c'
      exact radSp_zero_off Φ (x := (c', g)) (fun h => hg ⟨h.2.1, h.2.2⟩)
    rw [h0]; exact contDiffAt_const

theorem dZv_update {f : (Fin r → ℂ) → (Wq →L[ℂ] Wp)} (c : Fin r → ℂ) (l : Fin r) (t : ℂ)
    (hf : DifferentiableAt ℝ f (Function.update c l t)) :
    dZv (fun s => f (Function.update c l s)) t = wirt l f (Function.update c l t) ∧
      dZbv (fun s => f (Function.update c l s)) t = wirtBar l f (Function.update c l t) := by
  have hu := hasFDerivAt_update (𝕜 := ℝ) c (i := l) t
  have h := hf.hasFDerivAt.comp t hu
  have hd : ∀ v : ℂ, fderiv ℝ (fun s => f (Function.update c l s)) t v =
      fderiv ℝ f (Function.update c l t) (Pi.single l v) := by
    intro v
    rw [show (fun s => f (Function.update c l s)) = f ∘ Function.update c l from rfl, h.fderiv]
    simp only [ContinuousLinearMap.comp_apply]
    congr 1
    funext j
    by_cases hj : j = l
    · subst hj; simp
    · simp [hj]
  constructor
  · unfold dZv wirt; rw [hd, hd]
  · unfold dZbv wirtBar; rw [hd, hd]

theorem site_p_adj_g (X : ActualOps k r z z' π π') (Φ Ψ : RadSp k r z z' π π') (l : Fin r) (c : Fin r → ℂ)
    (hc : c ∈ OmX r) (g : Mx k r)
    (h0 : Integrable (fun t : ℂ => B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ)))
    (h1 : Integrable (fun t : ℂ => B.hsInner ((X.op l 0 Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ)))
    (h2 : Integrable (fun t : ℂ => B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((X.op l 3 Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ))) :
    ∫ t : ℂ, B.hsInner ((X.op l 0 Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ) =
    -∫ t : ℂ, B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((X.op l 3 Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ) := by
  set fΦ : (Fin r → ℂ) → (Wq →L[ℂ] Wp) := fun c' => (Φ : Fn k r (Wq →L[ℂ] Wp)) c' g with hfΦ
  set fΨ : (Fin r → ℂ) → (Wq →L[ℂ] Wp) := fun c' => (Ψ : Fn k r (Wq →L[ℂ] Wp)) c' g with hfΨ
  set A : ℂ → (Wq →L[ℂ] Wp) := fun t => fΦ (Function.update c l t) with hA
  set Bf : ℂ → (Wq →L[ℂ] Wp) := fun t => fΨ (Function.update c l t) with hB
  have hupd : ContDiff ℝ ∞ (fun t : ℂ => Function.update c l t) :=
    contDiff_pi.mpr fun j => by
      by_cases hj : j = l
      · subst hj; simp only [Function.update_self]; exact contDiff_id
      · simpa [Function.update_of_ne hj] using contDiff_const
  have hAc : ContDiffOn ℝ 1 A {t | t ≠ 0} := fun t ht =>
    (((cslice_contDiffAt Φ g (update_mem_OmX hc l ht)).comp t hupd.contDiffAt).of_le (by simp)).contDiffWithinAt
  have hBc : ContDiffOn ℝ 1 Bf {t | t ≠ 0} := fun t ht =>
    (((cslice_contDiffAt Ψ g (update_mem_OmX hc l ht)).comp t hupd.contDiffAt).of_le (by simp)).contDiffWithinAt
  have hpΦ : ∀ t : ℂ, t ≠ 0 → (X.op l 0 Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g = t • dZv A t := by
    intro t ht
    have hd := dZv_update (f := fΦ) c l t
      ((cslice_contDiffAt Φ g (update_mem_OmX hc l ht)).differentiableAt (by simp))
    rw [X.op_apply, hd.1]
    show pOp l fΦ (Function.update c l t) = _
    unfold pOp
    rw [if_pos (update_mem_OmX hc l ht), Function.update_self]
  have hpΨ : ∀ t : ℂ, t ≠ 0 → (X.op l 3 Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g =
      conj t • dZbv Bf t := by
    intro t ht
    have hd := dZv_update (f := fΨ) c l t
      ((cslice_contDiffAt Ψ g (update_mem_OmX hc l ht)).differentiableAt (by simp))
    rw [X.op_apply, hd.2]
    show pbOp l fΨ (Function.update c l t) = _
    unfold pbOp
    rw [if_pos (update_mem_OmX hc l ht), Function.update_self]
    rfl
  have e1 : (fun t : ℂ => B.hsInner ((X.op l 0 Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ)) =
      fun t => B.hsInner (t • dZv A t) (Bf t) / ((‖t‖ ^ 2 : ℝ) : ℂ) := by
    funext t
    by_cases ht : t = 0
    · subst ht; simp
    · rw [hpΦ t ht]
  have e2 : (fun t : ℂ => B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g)
      ((X.op l 3 Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l t) g) / ((‖t‖ ^ 2 : ℝ) : ℂ)) =
      fun t => B.hsInner (A t) (conj t • dZbv Bf t) / ((‖t‖ ^ 2 : ℝ) : ℂ) := by
    funext t
    by_cases ht : t = 0
    · subst ht; simp
    · rw [hpΨ t ht]
  have h1' := e1 ▸ h1
  have h2' := e2 ▸ h2
  rw [e1, e2]
  exact pLogAdjHS A Bf hAc hBc h0 h1' h2'

theorem site_p_adj (X : ActualOps k r z z' π π') (μ : Measure (Mt k r)) [SFinite μ] (Φ Ψ : RadSp k r z z' π π')
    (l : Fin r) (c : Fin r → ℂ) (hc : c ∈ OmX r)
    (h0 : Integrable (fun q : ℂ × Mt k r => B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l q.1)
      (Matrix.of q.2)) ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l q.1) (Matrix.of q.2)) /
        ((‖q.1‖ ^ 2 : ℝ) : ℂ)) (volume.prod μ))
    (h1 : Integrable (fun q : ℂ × Mt k r => B.hsInner ((X.op l 0 Φ : Fn k r (Wq →L[ℂ] Wp))
      (Function.update c l q.1) (Matrix.of q.2)) ((Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l q.1)
        (Matrix.of q.2)) / ((‖q.1‖ ^ 2 : ℝ) : ℂ)) (volume.prod μ))
    (h2 : Integrable (fun q : ℂ × Mt k r => B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l q.1)
      (Matrix.of q.2)) ((X.op l 3 Ψ : Fn k r (Wq →L[ℂ] Wp)) (Function.update c l q.1) (Matrix.of q.2)) /
        ((‖q.1‖ ^ 2 : ℝ) : ℂ)) (volume.prod μ)) :
    ∫ t : ℂ, pairAt μ (X.op l 0 Φ) Ψ (Function.update c l t) / ((‖t‖ ^ 2 : ℝ) : ℂ) =
      -∫ t : ℂ, pairAt μ Φ (X.op l 3 Ψ) (Function.update c l t) / ((‖t‖ ^ 2 : ℝ) : ℂ) := by
  unfold pairAt
  simp only [← integral_div]
  rw [integral_integral_swap h1]
  conv_rhs => rw [integral_integral_swap h2]
  rw [← integral_neg]
  refine integral_congr_ae ?_
  filter_upwards [h0.prod_left_ae, h1.prod_left_ae, h2.prod_left_ae] with x hx0 hx1 hx2
  exact site_p_adj_g X Φ Ψ l c hc (Matrix.of x) hx0 hx1 hx2

end Formalism.FourierDecayAlt.P5.HerB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CsliceContDiffAt =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPAdj =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPAdj", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSCoordAdj\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSIpInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CsliceContDiffAt\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableOfContinuousOnZero\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section Split

def paWt (n : ℕ) (c : Fin n → ℂ) : ℝ := ∏ j, (‖c j‖ ^ 2)⁻¹

def paTh {β : Type*} {n : ℕ} (l : Fin (n + 1)) (p : (Fin n → ℂ) × (ℂ × β)) : (Fin (n + 1) → ℂ) × β :=
  (Fin.insertNth l p.2.1 p.1, p.2.2)

theorem paWt_ne_zero {n : ℕ} {c : Fin n → ℂ} (hc : ∀ i, c i ≠ 0) : paWt n c ≠ 0 := by
  unfold paWt
  rw [Finset.prod_ne_zero_iff]
  intro j _
  exact inv_ne_zero (pow_ne_zero _ (norm_ne_zero_iff.mpr (hc j)))

theorem pa_split {β : Type*} [MeasurableSpace β] (μ : Measure β) [SFinite μ] {n : ℕ} (l : Fin (n + 1))
    (f : (Fin (n + 1) → ℂ) × β → ℂ) :
    (Integrable f ((dxc (n + 1)).prod μ) ↔ Integrable (fun p : (Fin n → ℂ) × (ℂ × β) =>
      ((paWt n p.1 : ℝ) : ℂ) * (f (paTh l p) / ((‖p.2.1‖ ^ 2 : ℝ) : ℂ))) (volume.prod (volume.prod μ))) ∧
    ∫ q, f q ∂((dxc (n + 1)).prod μ) = ∫ p : (Fin n → ℂ) × (ℂ × β),
      ((paWt n p.1 : ℝ) : ℂ) * (f (paTh l p) / ((‖p.2.1‖ ^ 2 : ℝ) : ℂ)) ∂(volume.prod (volume.prod μ)) := by
  set ρ : (Fin (n + 1) → ℂ) → NNReal := fun c => (∏ j, (‖c j‖ ^ 2)⁻¹ : ℝ).toNNReal with hρdef
  have hρ : Measurable ρ := Measurable.real_toNNReal (by fun_prop)
  have hd : dxc (n + 1) = (volume : Measure (Fin (n + 1) → ℂ)).withDensity (fun c => (ρ c : ENNReal)) := rfl
  have hprod : (dxc (n + 1)).prod μ =
      ((volume : Measure (Fin (n + 1) → ℂ)).prod μ).withDensity (fun q => (ρ q.1 : ENNReal)) := by
    rw [hd, prod_withDensity_left hρ.coe_nnreal_ennreal]
  have hρ1 : Measurable (fun q : (Fin (n + 1) → ℂ) × β => ρ q.1) := hρ.comp measurable_fst
  let E : (Fin n → ℂ) × (ℂ × β) ≃ᵐ (Fin (n + 1) → ℂ) × β :=
    MeasurableEquiv.prodAssoc.symm.trans
      ((MeasurableEquiv.prodComm.trans (MeasurableEquiv.piFinSuccAbove (fun _ : Fin (n + 1) => ℂ) l).symm).prodCongr
        (MeasurableEquiv.refl β))
  have hEv : ∀ p, E p = paTh l p := by
    rintro ⟨c, t, x⟩
    rfl
  have hpi := (measurePreserving_piFinSuccAbove (fun _ : Fin (n + 1) => (volume : Measure ℂ)) l).symm
  have hE : MeasurePreserving E ((volume : Measure (Fin n → ℂ)).prod ((volume : Measure ℂ).prod μ))
      ((volume : Measure (Fin (n + 1) → ℂ)).prod μ) :=
    ((hpi.comp Measure.measurePreserving_swap).prod (MeasurePreserving.id μ)).comp
      (measurePreserving_prodAssoc _ _ _).symm
  have hval : ∀ p : (Fin n → ℂ) × (ℂ × β), ρ (E p).1 • f (E p) =
      ((paWt n p.1 : ℝ) : ℂ) * (f (paTh l p) / ((‖p.2.1‖ ^ 2 : ℝ) : ℂ)) := by
    intro p
    rw [hEv]
    have hw : ((ρ (paTh l p).1 : NNReal) : ℝ) = (‖p.2.1‖ ^ 2)⁻¹ * paWt n p.1 := by
      rw [hρdef]
      simp only
      rw [Real.coe_toNNReal _ (Finset.prod_nonneg fun j _ => inv_nonneg.mpr (sq_nonneg _)),
        Fin.prod_univ_succAbove _ l]
      simp [paTh, paWt, Fin.insertNth_apply_same, Fin.insertNth_apply_succAbove]
    rw [NNReal.smul_def, hw, Complex.real_smul]
    push_cast
    ring
  have hfun : (fun p : (Fin n → ℂ) × (ℂ × β) =>
      ((paWt n p.1 : ℝ) : ℂ) * (f (paTh l p) / ((‖p.2.1‖ ^ 2 : ℝ) : ℂ))) =
      (fun q : (Fin (n + 1) → ℂ) × β => ρ q.1 • f q) ∘ E := by
    funext p; exact (hval p).symm
  constructor
  · rw [hprod, integrable_withDensity_iff_integrable_smul hρ1, hfun,
      hE.integrable_comp_emb E.measurableEmbedding]
  · rw [hprod, integral_withDensity_eq_integral_smul hρ1, hfun]
    exact (hE.integral_comp' (fun q : (Fin (n + 1) → ℂ) × β => ρ q.1 • f q)).symm

end Split

section Core

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] [FiniteDimensional ℂ Wp]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

def paHs (U V : RadSp k r z z' π π') (q : (Fin r → ℂ) × Mt k r) : ℂ :=
  B.hsInner ((U : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2)) ((V : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2))

theorem ipF_eq_paHs (U V : RadSp k r z z' π π') : ipF U V = paHs V U := rfl

theorem paHs_conj (U V : RadSp k r z z' π π') (q : (Fin r → ℂ) × Mt k r) :
    paHs U V q = conj (ipF U V q) := by
  rw [ipF_eq_paHs]; unfold paHs; rw [Formalism.FourierDecayAlt.P5.HerA.hsInner_swap]

theorem pa_core (X : ActualOps k r z z' π π') (μ : Measure (Mt k r)) [SFinite μ] (Φ Ψ : RadSp k r z z' π π')
    (l : Fin r) (i0 : Integrable (paHs Φ Ψ) ((dxc r).prod μ)) (i1 : Integrable (paHs (X.op l 0 Φ) Ψ) ((dxc r).prod μ))
    (i2 : Integrable (paHs Φ (X.op l 3 Ψ)) ((dxc r).prod μ)) :
    ∫ q, paHs (X.op l 0 Φ) Ψ q ∂((dxc r).prod μ) = -∫ q, paHs Φ (X.op l 3 Ψ) q ∂((dxc r).prod μ) := by
  cases r with
  | zero => exact l.elim0
  | succ n =>
    have I0 := (pa_split μ l (paHs Φ Ψ)).1.mp i0
    have I1 := (pa_split μ l (paHs (X.op l 0 Φ) Ψ)).1.mp i1
    have I2 := (pa_split μ l (paHs Φ (X.op l 3 Ψ))).1.mp i2
    rw [(pa_split μ l _).2, (pa_split μ l _).2, integral_prod _ I1, integral_prod _ I2, ← integral_neg]
    refine integral_congr_ae ?_
    filter_upwards [I0.prod_right_ae, I1.prod_right_ae, I2.prod_right_ae] with c h0 h1 h2
    simp only [integral_const_mul]
    rw [← mul_neg]
    congr 1
    by_cases hc : ∀ j, c j ≠ 0
    · set c0 : Fin (n + 1) → ℂ := Fin.insertNth l 1 c with hc0def
      have hc0 : c0 ∈ OmX (n + 1) := by
        intro j
        refine Fin.succAboveCases l ?_ (fun i => ?_) j
        · simp [c0]
        · simp [c0, Fin.insertNth_apply_succAbove, hc i]
      have key : ∀ U V : RadSp k (n + 1) z z' π π', (fun q : ℂ × Mt k (n + 1) =>
          paHs U V (paTh l (c, q)) / ((‖q.1‖ ^ 2 : ℝ) : ℂ)) = fun q =>
          B.hsInner ((U : Fn k (n + 1) (Wq →L[ℂ] Wp)) (Function.update c0 l q.1) (Matrix.of q.2))
            ((V : Fn k (n + 1) (Wq →L[ℂ] Wp)) (Function.update c0 l q.1) (Matrix.of q.2)) / ((‖q.1‖ ^ 2 : ℝ) : ℂ) := by
        intro U V; funext q
        simp [paHs, paTh, c0, Fin.update_insertNth]
      have hw : IsUnit ((paWt n c : ℝ) : ℂ) := isUnit_iff_ne_zero.mpr (Complex.ofReal_ne_zero.mpr (paWt_ne_zero hc))
      have g0 := (integrable_const_mul_iff hw _).mp h0
      have g1 := (integrable_const_mul_iff hw _).mp h1
      have g2 := (integrable_const_mul_iff hw _).mp h2
      rw [key] at g0 g1 g2
      have hs := Formalism.FourierDecayAlt.P5.HerB.site_p_adj X μ Φ Ψ l c0 hc0 g0 g1 g2
      unfold pairAt at hs
      simp only [← integral_div] at hs
      rw [key, key, integral_prod _ g1, integral_prod _ g2]
      exact hs
    · push Not at hc
      obtain ⟨j, hj⟩ := hc
      have hz : ∀ U V : RadSp k (n + 1) z z' π π', (fun q : ℂ × Mt k (n + 1) =>
          paHs U V (paTh l (c, q)) / ((‖q.1‖ ^ 2 : ℝ) : ℂ)) = fun _ => 0 := by
        intro U V; funext q
        have hn : ((paTh l (c, q)).1, Matrix.of (paTh l (c, q)).2) ∉ DomR k (n + 1) z z' := by
          intro h
          apply h.1 (l.succAbove j)
          simp [paTh, Fin.insertNth_apply_succAbove, hj]
        simp only [paHs]
        rw [radSp_zero_off U hn, Formalism.FourierDecayAlt.P5.HerA.hsInner_zero_left, zero_div]
      rw [hz, hz, integral_zero, neg_zero]

end Core

section Adj

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] [FiniteDimensional ℂ Wp]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem rTest_op (X : ActualOps k r z z' π π') (l : Fin r) (i : Fin 6) {Ψ : RadSp k r z z' π π'} (h : RTest Ψ) :
    RTest (X.op l i Ψ) := by
  obtain ⟨K, hK, hKD, h0⟩ := h
  refine ⟨K, hK, hKD, fun x hx => ?_⟩
  have hopen : IsOpen {c : Fin r → ℂ | (c, x.2) ∉ K} :=
    hK.isClosed.isOpen_compl.preimage (continuous_id.prodMk continuous_const)
  have hev : (fun c' => (Ψ : Fn k r (Wq →L[ℂ] Wp)) c' x.2) =ᶠ[𝓝 x.1] fun _ => 0 := by
    filter_upwards [hopen.mem_nhds (show (x.1, x.2) ∉ K from hx)] with c' hc'
    exact h0 (c', x.2) hc'
  have hfd : fderiv ℝ (fun c' => (Ψ : Fn k r (Wq →L[ℂ] Wp)) c' x.2) x.1 = 0 := by
    rw [hev.fderiv_eq]; exact fderiv_const_apply _
  have hf0 : (Ψ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = 0 := h0 x hx
  rw [X.op_apply]
  show opL l i (fun c' => (Ψ : Fn k r (Wq →L[ℂ] Wp)) c' x.2) x.1 = 0
  fin_cases i <;> simp [opL, pOp, pbOp, cOp, ciOp, cbOp, cbiOp, Formalism.QuantumDeterminants.wirt, Formalism.QuantumDeterminants.wirtBar, hfd, hf0]

theorem rTest_neg {Ψ : RadSp k r z z' π π'} (h : RTest Ψ) : RTest (-Ψ) := by
  simpa using rTest_smul (-1 : ℂ) h

theorem ipF_neg_left (U V : RadSp k r z z' π π') : ipF (-U) V = -ipF U V := by
  funext q
  simp only [ipF, Submodule.coe_neg, Pi.neg_apply]
  rw [show -(U : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2) = (-1 : ℂ) • (U : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2)
    by simp, rds_hsVec_smul, inner_smul_left]
  simp

theorem ipF_neg_right (U V : RadSp k r z z' π π') : ipF U (-V) = -ipF U V := by
  funext q
  simp only [ipF, Submodule.coe_neg, Pi.neg_apply]
  rw [show -(V : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2) = (-1 : ℂ) • (V : Fn k r (Wq →L[ℂ] Wp)) q.1 (Matrix.of q.2)
    by simp, rds_hsVec_smul, inner_smul_right]
  simp

theorem paHs_integrable {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (U V : RadSp k r z z' π π') (hV : RTest V) : Integrable (paHs U V) ((dxc r).prod μ) := by
  have h := (ipF_integrable hμ U V hV)
  have e : paHs U V = fun q => (Complex.conjLIE : ℂ ≃ₗᵢ[ℝ] ℂ) (ipF U V q) := by
    funext q; rw [paHs_conj]; rfl
  rw [e]
  exact (LinearIsometryEquiv.integrable_comp_iff _).mpr h

theorem pa_left (X : ActualOps k r z z' π π') {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (l : Fin r) (Φ Ψ : RadSp k r z z' π π') (hΨ : RTest Ψ) :
    radIp μ (X.op l 0 Φ) Ψ = -radIp μ Φ (X.op l 3 Ψ) := by
  have := Formalism.FourierDecayAlt.P.B5.haar_sigmaFinite hμ
  have hΨ3 := rTest_op X l 3 hΨ
  rw [radIp_eq_prod hμ _ _ hΨ, radIp_eq_prod hμ _ _ hΨ3]
  have hc := pa_core X μ Φ Ψ l (paHs_integrable hμ _ _ hΨ) (paHs_integrable hμ _ _ hΨ)
    (paHs_integrable hμ _ _ hΨ3)
  simp only [paHs_conj, integral_conj] at hc
  have hc' := congrArg conj hc
  simp only [Complex.conj_conj, map_neg] at hc'
  exact hc'

theorem pa_right (X : ActualOps k r z z' π π') {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (l : Fin r) (Φ Ψ : RadSp k r z z' π π') (hΨ : RTest Ψ) :
    radIp μ Φ (X.op l 0 Ψ) = -radIp μ (X.op l 3 Φ) Ψ := by
  have := Formalism.FourierDecayAlt.P.B5.haar_sigmaFinite hμ
  have hΨ0 := rTest_op X l 0 hΨ
  rw [radIp_eq_prod hμ _ _ hΨ0, radIp_eq_prod hμ _ _ hΨ]
  simp only [ipF_eq_paHs]
  exact pa_core X μ Ψ Φ l (ipF_integrable hμ Φ Ψ hΨ) (ipF_integrable hμ Φ _ hΨ0) (ipF_integrable hμ _ Ψ hΨ)

theorem radIp_neg_left {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (U V : RadSp k r z z' π π') (hV : RTest V) : radIp μ (-U) V = -radIp μ U V := by
  rw [radIp_eq_prod hμ _ _ hV, radIp_eq_prod hμ _ _ hV, ipF_neg_left, ← integral_neg]
  rfl

theorem radIp_neg_right {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (U V : RadSp k r z z' π π') (hV : RTest V) : radIp μ U (-V) = -radIp μ U V := by
  rw [radIp_eq_prod hμ _ _ (rTest_neg hV), radIp_eq_prod hμ _ _ hV, ipF_neg_right, ← integral_neg]
  rfl

theorem rAdj_p (X : ActualOps k r z z' π π') {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (l : Fin r) : RAdj μ (mkP (X.op l 0) (-X.op l 3)) := by
  refine ⟨fun Ψ h => rTest_op X l 0 h, fun Ψ h => ?_, fun Φ Ψ h => ?_, fun Φ Ψ h => ?_⟩
  · show RTest ((-X.op l 3) Ψ)
    rw [LinearMap.neg_apply]; exact rTest_neg (rTest_op X l 3 h)
  · show radIp μ (X.op l 0 Φ) Ψ = radIp μ Φ ((-X.op l 3) Ψ)
    rw [LinearMap.neg_apply, radIp_neg_right hμ _ _ (rTest_op X l 3 h)]
    exact pa_left X hμ l Φ Ψ h
  · show radIp μ ((-X.op l 3) Φ) Ψ = radIp μ Φ (X.op l 0 Ψ)
    rw [LinearMap.neg_apply, radIp_neg_left hμ _ _ h, pa_right X hμ l Φ Ψ h]

theorem rAdj_pb (X : ActualOps k r z z' π π') {μ : Measure (Mt k r)} (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (l : Fin r) : RAdj μ (mkP (X.op l 3) (-X.op l 0)) := by
  refine ⟨fun Ψ h => rTest_op X l 3 h, fun Ψ h => ?_, fun Φ Ψ h => ?_, fun Φ Ψ h => ?_⟩
  · show RTest ((-X.op l 0) Ψ)
    rw [LinearMap.neg_apply]; exact rTest_neg (rTest_op X l 0 h)
  · show radIp μ (X.op l 3 Φ) Ψ = radIp μ Φ ((-X.op l 0) Ψ)
    rw [LinearMap.neg_apply, radIp_neg_right hμ _ _ (rTest_op X l 0 h), pa_right X hμ l Φ Ψ h, neg_neg]
  · show radIp μ ((-X.op l 0) Φ) Ψ = radIp μ Φ (X.op l 3 Ψ)
    rw [LinearMap.neg_apply, radIp_neg_left hμ _ _ h, pa_left X hμ l Φ Ψ h, neg_neg]

end Adj

theorem spectral_pairing_adjoint : RDSPAdj := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 D hD _ _ _ _ _ _ _ l
  obtain ⟨hp, hpb, -⟩ := hD.2.2.1
  rw [hp l, hpb l]
  exact ⟨rAdj_p X hD.2.1 l, rAdj_pb X hD.2.1 l⟩

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPAdj =====
