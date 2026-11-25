module

public import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralBumpProfOnePos
public import Mathlib.Analysis.Calculus.DiffContOnCl
public import Mathlib.Analysis.Complex.CauchyIntegral
public import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.HoloContDiffStatement
public import Mathlib.Analysis.Convolution
public import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Algebra.Order.Star.Real
import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.RegBall
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralMollProfBall, ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MollifyEqConvolution

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralMollProfBall =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralMollProfBall", "h": "module\n\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralBumpProfOnePos\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.DiffContOnCl\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.C

open MeasureTheory Metric Set Filter Topology Complex
open scoped ENNReal

theorem moll_eq_zero_of_lt {n : ℕ} {t : ℝ} (ht : 0 < t) {z : V n} (hz : t / 2 < ‖z‖) :
    moll n t z = 0 := by
  have h1 : 1 - 4 * (‖z‖ / t) ^ 2 ≤ 0 := by
    have h2 : 1 / 2 < ‖z‖ / t := by
      rw [lt_div_iff₀ ht]; linarith
    nlinarith
  simp only [moll, mollProf, bumpProf, Real.smoothTransition.zero_of_nonpos h1, mul_zero]

private theorem integral_comp_smul_of_norm_eq_one {n : ℕ} (c : ℂ) (hc : ‖c‖ = 1) (f : V n → ℂ) :
    ∫ z, f (c • z) = ∫ z, f z := by
  have hc0 : c ≠ 0 := by
    intro h0
    rw [h0, norm_zero] at hc
    exact zero_ne_one hc
  let e : V n ≃ₗᵢ[ℝ] V n :=
    { toLinearEquiv := (LinearEquiv.smulOfNeZero ℂ (V n) c hc0).restrictScalars ℝ
      norm_map' := fun z => by
        show ‖c • z‖ = ‖z‖
        rw [norm_smul, hc, one_mul] }
  show ∫ z, f (e z) = ∫ z, f z
  exact e.measurePreserving.integral_comp e.toHomeomorph.measurableEmbedding f

private theorem integrable_moll (n : ℕ) {t : ℝ} (ht : 0 < t) : Integrable (moll n t) :=
  (moll_contDiff n t).continuous.integrable_of_hasCompactSupport (moll_hasCompactSupport n ht)

private theorem integral_moll_mul_eq_of_differentiableOn_ball {n : ℕ} {a : ℝ} (ha : 0 < a) {h : V n → ℂ} {x : V n}
    (hh : DifferentiableOn ℂ h (ball x a)) :
    ∫ w, (moll n a (x - w) : ℂ) * h w = h x := by
  have hA : ∫ w, (moll n a (x - w) : ℂ) * h w = ∫ z, (moll n a z : ℂ) * h (x + z) := by
    have e1 := integral_add_left_eq_self (μ := volume) (fun w => (moll n a (x - w) : ℂ) * h w) x
    simpa only [moll, sub_add_eq_sub_sub, sub_self, zero_sub, norm_neg] using e1.symm
  rw [hA]
  have hB : ∀ θ : ℝ, ∫ z, (moll n a z : ℂ) * h (x + circleMap 0 1 θ • z)
      = ∫ z, (moll n a z : ℂ) * h (x + z) := by
    intro θ
    have hc : ‖circleMap 0 1 θ‖ = 1 := by simp
    have e2 := integral_comp_smul_of_norm_eq_one (circleMap 0 1 θ) hc (fun z => (moll n a z : ℂ) * h (x + z))
    simpa only [moll, norm_smul, hc, one_mul] using e2
  obtain ⟨C, hC⟩ := (isCompact_closedBall x (a / 2)).exists_bound_of_continuousOn
    (hh.continuousOn.mono (closedBall_subset_ball (by linarith)))
  have hcont : Continuous (fun p : ℝ × V n => (moll n a p.2 : ℂ) * h (x + circleMap 0 1 p.1 • p.2)) := by
    rw [continuous_iff_continuousAt]
    rintro ⟨θ0, z0⟩
    by_cases hz0 : ‖z0‖ < a
    · have hmc : Continuous fun p : ℝ × V n => (moll n a p.2 : ℂ) :=
        Complex.continuous_ofReal.comp ((moll_contDiff n a).continuous.comp continuous_snd)
      have hg : Continuous fun p : ℝ × V n => x + circleMap 0 1 p.1 • p.2 :=
        continuous_const.add (((continuous_circleMap 0 1).comp continuous_fst).smul continuous_snd)
      have hmem : x + circleMap 0 1 θ0 • z0 ∈ ball x a := by
        rw [mem_ball, dist_eq_norm, add_sub_cancel_left, norm_smul, norm_circleMap_zero, abs_one,
          one_mul]
        exact hz0
      have hhc : ContinuousAt h (x + circleMap 0 1 θ0 • z0) :=
        (hh.differentiableAt (isOpen_ball.mem_nhds hmem)).continuousAt
      exact hmc.continuousAt.mul (hhc.comp_of_eq hg.continuousAt rfl)
    · push_neg at hz0
      have hopen : IsOpen {p : ℝ × V n | a / 2 < ‖p.2‖} :=
        isOpen_lt continuous_const (continuous_norm.comp continuous_snd)
      have hmem : (θ0, z0) ∈ {p : ℝ × V n | a / 2 < ‖p.2‖} := by
        show a / 2 < ‖z0‖
        linarith
      have hev : (fun p : ℝ × V n => (moll n a p.2 : ℂ) * h (x + circleMap 0 1 p.1 • p.2))
          =ᶠ[𝓝 (θ0, z0)] fun _ => 0 := by
        filter_upwards [hopen.mem_nhds hmem] with p hp
        rw [_root_.ReciprocityTheory.L2DbarEstimates.C.moll_eq_zero_of_lt ha hp]
        simp
      exact (continuousAt_congr hev).mpr continuousAt_const
  have hInt : Integrable
      (Function.uncurry fun (θ : ℝ) (z : V n) => (moll n a z : ℂ) * h (x + circleMap 0 1 θ • z))
      ((volume.restrict (Set.Ioc 0 (2 * Real.pi))).prod volume) := by
    have hg1 : Integrable (fun _ : ℝ => C) (volume.restrict (Set.Ioc 0 (2 * Real.pi))) :=
      integrable_const C
    have hbd : Integrable (fun p : ℝ × V n => C * |moll n a p.2|)
        ((volume.restrict (Set.Ioc 0 (2 * Real.pi))).prod volume) := by
      first
      | exact MeasureTheory.Integrable.mul_prod hg1 (integrable_moll n ha).abs
    refine Integrable.mono' hbd
      hcont.aestronglyMeasurable (Filter.Eventually.of_forall fun p => ?_)
    show ‖(moll n a p.2 : ℂ) * h (x + circleMap 0 1 p.1 • p.2)‖ ≤ C * |moll n a p.2|
    by_cases hp : ‖p.2‖ ≤ a / 2
    · rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, mul_comm]
      apply mul_le_mul_of_nonneg_right _ (abs_nonneg _)
      apply hC
      rw [mem_closedBall, dist_eq_norm, add_sub_cancel_left, norm_smul, norm_circleMap_zero,
        abs_one, one_mul]
      exact hp
    · push_neg at hp
      rw [_root_.ReciprocityTheory.L2DbarEstimates.C.moll_eq_zero_of_lt ha hp]
      simp
  have hswap := integral_integral_swap hInt
  try beta_reduce at hswap
  have hz : ∀ z : V n, ∫ θ in Set.Ioc 0 (2 * Real.pi), (moll n a z : ℂ) * h (x + circleMap 0 1 θ • z)
      = (moll n a z : ℂ) * (2 * Real.pi * h x) := by
    intro z
    rw [integral_const_mul]
    by_cases hz : ‖z‖ ≤ a / 2
    · rw [← intervalIntegral.integral_of_le Real.two_pi_pos.le, ReciprocityTheory.L2DbarEstimates.C.integral_circleMap_smul_eq_two_pi_mul hh (by linarith)]
    · push_neg at hz
      rw [_root_.ReciprocityTheory.L2DbarEstimates.C.moll_eq_zero_of_lt ha hz]
      simp
  rw [← intervalIntegral.integral_of_le Real.two_pi_pos.le,
    show (fun θ : ℝ => ∫ z, (moll n a z : ℂ) * h (x + circleMap 0 1 θ • z))
      = fun _ => ∫ z, (moll n a z : ℂ) * h (x + z) from funext hB,
    intervalIntegral.integral_const,
    show (fun z : V n => ∫ θ in Set.Ioc 0 (2 * Real.pi), (moll n a z : ℂ) * h (x + circleMap 0 1 θ • z))
      = fun z => (moll n a z : ℂ) * (2 * Real.pi * h x) from funext hz,
    integral_mul_const, integral_complex_ofReal, moll_integral n ha, sub_zero,
    Complex.real_smul] at hswap
  have h2pi : (2 * Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.two_pi_pos.ne'
  apply mul_left_cancel₀ h2pi
  push_cast at hswap ⊢
  linear_combination hswap

theorem holo_eq_mollify {n : ℕ} {f : V n → ℂ} {x : V n} {t : ℝ} (ht : 0 < t)
    (hf : DifferentiableOn ℂ f (closedBall x t)) : mollify n t f x = f x := by
  exact integral_moll_mul_eq_of_differentiableOn_ball ht (hf.mono ball_subset_closedBall)

end ReciprocityTheory.L2DbarEstimates.C
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralMollProfBall =====

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MollifyEqConvolution =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MollifyEqConvolution", "h": "module\n\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.HoloContDiffStatement\npublic import Mathlib.Analysis.Convolution\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralBumpProfOnePos\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Convolution\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.IntegralMollProfBall\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.C

open MeasureTheory Metric Set Filter Topology Complex
open scoped ENNReal ContDiff Convolution

theorem mollify_eq_convolution (n : ℕ) (t : ℝ) (u : V n → ℂ) :
    mollify n t u = (moll n t) ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] u := by
  funext x
  rw [convolution_eq_swap]
  simp only [mollify, ContinuousLinearMap.lsmul_apply, Complex.real_smul]

theorem holoSmooth : HoloSmoothStatement := by
  intro n Ω f hΩ hf x₀ hx₀
  refine ContDiffAt.contDiffWithinAt ?_
  obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hΩ x₀ hx₀
  set r := ε / 4 with hr
  have hr0 : 0 < r := by positivity
  have hsub : closedBall x₀ (3 * r) ⊆ Ω :=
    (Metric.closedBall_subset_ball (by linarith)).trans hball
  set g := (closedBall x₀ (3 * r)).indicator f with hg
  have hgi : Integrable g := by
    rw [hg, integrable_indicator_iff measurableSet_closedBall]
    exact (hf.continuousOn.mono hsub).integrableOn_compact (isCompact_closedBall x₀ (3 * r))
  have hconv : ContDiff ℝ ∞ (mollify n r g) := by
    rw [mollify_eq_convolution]
    exact (moll_hasCompactSupport n hr0).contDiff_convolution_left
      (ContinuousLinearMap.lsmul ℝ ℝ) (moll_contDiff n r) hgi.locallyIntegrable
  have heq : f =ᶠ[𝓝 x₀] mollify n r g := by
    filter_upwards [Metric.ball_mem_nhds x₀ hr0] with x hx
    rw [Metric.mem_ball] at hx
    have hx' : closedBall x r ⊆ Ω := by
      refine (Metric.closedBall_subset_closedBall' ?_).trans hsub
      linarith
    rw [← holo_eq_mollify hr0 (hf.mono hx')]
    simp only [mollify]
    congr 1
    funext y
    by_cases hy : y ∈ closedBall x₀ (3 * r)
    · simp [hg, Set.indicator_of_mem hy]
    · have h1 : r / 2 < ‖x - y‖ := by
        rw [Metric.mem_closedBall, not_le] at hy
        have h2 := dist_triangle y x x₀
        have h3 : dist y x = ‖x - y‖ := by rw [dist_comm, dist_eq_norm]
        linarith
      simp [hg, moll_eq_zero_of_lt hr0 h1]
  exact hconv.contDiffAt.congr_of_eventuallyEq heq

theorem holo_contDiffOn {n : ℕ} {Ω : Set (EuclideanSpace ℂ (Fin n))}
    {f : EuclideanSpace ℂ (Fin n) → ℂ} (hΩ : IsOpen Ω) (hf : DifferentiableOn ℂ f Ω) :
    ContDiffOn ℝ ∞ f Ω := by
  exact holoSmooth n Ω f hΩ hf

end ReciprocityTheory.L2DbarEstimates.C
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MollifyEqConvolution =====
