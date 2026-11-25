module

public import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.HoloWeakStatement
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
public import Mathlib.Topology.Separation.CompletelyRegular
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.Circle, ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MeasurableEmbeddingRotAbout

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.Circle =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.Circle", "h": "module\n\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.HoloWeakStatement\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic\npublic import Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.FDeriv.Mul\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.C

open MeasureTheory Metric Set Filter Topology Complex
open scoped ENNReal

theorem measurePreserving_smul_unit {n : ℕ} (a : ℂ) (ha : ‖a‖ = 1) :
    MeasurePreserving (fun z : V n => a • z) volume volume := by
  have ha0 : a ≠ 0 := by
    intro h
    simp [h] at ha
  let L : V n ≃ₗᵢ[ℝ] V n :=
    { toLinearEquiv := (LinearEquiv.smulOfNeZero ℂ (V n) a ha0).restrictScalars ℝ
      norm_map' := fun z => by simp [norm_smul, ha] }
  have hL : (fun z : V n => a • z) = L := by
    funext z
    rfl
  rw [hL]
  exact L.measurePreserving

theorem circle_mean {n : ℕ} {c w : V n} {R : ℝ} {u : V n → ℂ}
    (hu : DifferentiableOn ℂ u (ball c R)) (hw : ‖w‖ < R) :
    ∫ θ in (0 : ℝ)..2 * Real.pi, u (c + Complex.exp ((θ : ℂ) * I) • w) =
      ((2 * Real.pi : ℝ) : ℂ) * u c := by
  by_cases hw0 : w = 0
  · subst hw0
    simp
  have hwpos : 0 < ‖w‖ := norm_pos_iff.mpr hw0
  have hρ1 : 1 < R / ‖w‖ := by
    rw [lt_div_iff₀ hwpos]
    linarith
  have hg : DifferentiableOn ℂ (fun ζ : ℂ => u (c + ζ • w)) (Metric.ball 0 (R / ‖w‖)) := by
    intro ζ hζ
    have hmem : c + ζ • w ∈ ball c R := by
      rw [Metric.mem_ball, dist_zero_right, lt_div_iff₀ hwpos] at hζ
      rw [Metric.mem_ball, dist_eq_norm, add_sub_cancel_left, norm_smul]
      exact hζ
    have h1 : DifferentiableAt ℂ u (c + ζ • w) := hu.differentiableAt (isOpen_ball.mem_nhds hmem)
    have h2 : DifferentiableAt ℂ (fun ζ : ℂ => c + ζ • w) ζ :=
      (differentiableAt_id.smul_const w).const_add c
    exact (h1.comp ζ h2).differentiableWithinAt
  have hcl : DifferentiableOn ℂ (fun ζ : ℂ => u (c + ζ • w)) (Metric.closedBall 0 1) :=
    hg.mono (Metric.closedBall_subset_ball hρ1)
  have key := hcl.circleIntegral_sub_inv_smul (w := 0) (by simp)
  simp only [circleIntegral, deriv_circleMap, sub_zero, smul_eq_mul, zero_smul, add_zero] at key
  have hcm : ∀ θ : ℝ, circleMap 0 1 θ = Complex.exp ((θ : ℂ) * I) := by
    intro θ
    simp [circleMap]
  have h3 : ∀ θ : ℝ, circleMap 0 1 θ * I * ((circleMap 0 1 θ)⁻¹ * u (c + circleMap 0 1 θ • w)) =
      I * u (c + Complex.exp ((θ : ℂ) * I) • w) := by
    intro θ
    have hne : circleMap 0 1 θ ≠ 0 := circleMap_ne_center one_ne_zero
    rw [hcm θ] at hne ⊢
    calc Complex.exp ((θ : ℂ) * I) * I * ((Complex.exp ((θ : ℂ) * I))⁻¹ * u (c + Complex.exp ((θ : ℂ) * I) • w))
        = I * u (c + Complex.exp ((θ : ℂ) * I) • w) * (Complex.exp ((θ : ℂ) * I) * (Complex.exp ((θ : ℂ) * I))⁻¹) := by ring
      _ = I * u (c + Complex.exp ((θ : ℂ) * I) • w) := by rw [mul_inv_cancel₀ hne, mul_one]
  simp only [h3, intervalIntegral.integral_const_mul] at key
  apply mul_left_cancel₀ Complex.I_ne_zero
  rw [key]
  push_cast
  ring

theorem circle_mean_sq {n : ℕ} {c w : V n} {R : ℝ} {u : V n → ℂ}
    (hu : DifferentiableOn ℂ u (ball c R)) (hw : ‖w‖ < R) :
    ‖u c‖ₑ ^ 2 * ENNReal.ofReal (2 * Real.pi) ≤
      ∫⁻ θ in Ioc (0 : ℝ) (2 * Real.pi), ‖u (c + Complex.exp ((θ : ℂ) * I) • w)‖ₑ ^ 2 := by
  have hmem : ∀ θ : ℝ, c + Complex.exp ((θ : ℂ) * I) • w ∈ ball c R := by
    intro θ
    rw [Metric.mem_ball, dist_eq_norm, add_sub_cancel_left, norm_smul,
      Complex.norm_exp_ofReal_mul_I, one_mul]
    exact hw
  set F : ℝ → ℂ := fun θ => u (c + Complex.exp ((θ : ℂ) * I) • w) with hF
  have hcont : Continuous F := by
    refine continuous_iff_continuousAt.2 fun θ => ?_
    have h1 := (hu.differentiableAt (isOpen_ball.mem_nhds (hmem θ))).continuousAt
    have h2 : Continuous fun θ : ℝ => c + Complex.exp ((θ : ℂ) * I) • w := by fun_prop
    show ContinuousAt (u ∘ fun θ : ℝ => c + Complex.exp ((θ : ℂ) * I) • w) θ
    exact ContinuousAt.comp (f := fun θ : ℝ => c + Complex.exp ((θ : ℂ) * I) • w) (x := θ) h1
      h2.continuousAt
  have hpi : (0 : ℝ) ≤ 2 * Real.pi := by positivity
  have hI : ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), F θ = ((2 * Real.pi : ℝ) : ℂ) * u c := by
    rw [← intervalIntegral.integral_of_le hpi]
    exact circle_mean hu hw
  have hint : IntegrableOn F (Ioc (0 : ℝ) (2 * Real.pi)) :=
    (hcont.integrableOn_Icc).mono_set Ioc_subset_Icc_self
  have hint2 : IntegrableOn (fun θ => ‖F θ‖ ^ 2) (Ioc (0 : ℝ) (2 * Real.pi)) :=
    ((hcont.norm.pow 2).integrableOn_Icc).mono_set Ioc_subset_Icc_self
  have hcr : Continuous fun θ => (F θ * (starRingEnd ℂ) (u c)).re :=
    Complex.continuous_re.comp (hcont.mul continuous_const)
  have hint3 : IntegrableOn (fun θ => (F θ * (starRingEnd ℂ) (u c)).re) (Ioc (0 : ℝ) (2 * Real.pi)) :=
    (hcr.integrableOn_Icc).mono_set Ioc_subset_Icc_self
  have hpt : ∀ θ, 2 * (F θ * (starRingEnd ℂ) (u c)).re - ‖u c‖ ^ 2 ≤ ‖F θ‖ ^ 2 := by
    intro θ
    have h := Complex.normSq_nonneg (F θ - u c)
    rw [Complex.normSq_sub] at h
    rw [← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq]
    linarith
  have hre : ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), (F θ * (starRingEnd ℂ) (u c)).re =
      2 * Real.pi * ‖u c‖ ^ 2 := by
    have h1 : ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), (F θ * (starRingEnd ℂ) (u c)).re =
        (∫ θ in Ioc (0 : ℝ) (2 * Real.pi), F θ * (starRingEnd ℂ) (u c)).re :=
      integral_re (hint.mul_const _)
    rw [h1, integral_mul_const, hI, mul_assoc, Complex.mul_conj, Complex.normSq_eq_norm_sq]
    simp
    rw [← Complex.ofReal_pow, Complex.ofReal_re]
  have hreal : ‖u c‖ ^ 2 * (2 * Real.pi) ≤ ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), ‖F θ‖ ^ 2 := by
    have h : ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), (2 * (F θ * (starRingEnd ℂ) (u c)).re - ‖u c‖ ^ 2) ≤
        ∫ θ in Ioc (0 : ℝ) (2 * Real.pi), ‖F θ‖ ^ 2 :=
      integral_mono ((hint3.const_mul 2).sub (integrable_const (‖u c‖ ^ 2))) hint2 hpt
    rw [integral_sub (hint3.const_mul 2) (integrable_const _), integral_const_mul, hre,
      integral_const] at h
    simp only [smul_eq_mul] at h
    have hv : (volume.restrict (Ioc (0 : ℝ) (2 * Real.pi))).real univ = 2 * Real.pi := by
      simp [Measure.real, Real.volume_Ioc, Real.pi_pos.le]
    rw [hv] at h
    linarith
  have hen : ∀ θ, ‖F θ‖ₑ ^ 2 = ENNReal.ofReal (‖F θ‖ ^ 2) := fun θ => by
    rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm_eq_enorm]
  show ‖u c‖ₑ ^ 2 * ENNReal.ofReal (2 * Real.pi) ≤
    ∫⁻ θ in Ioc (0 : ℝ) (2 * Real.pi), ‖F θ‖ₑ ^ 2
  simp_rw [hen]
  rw [← ofReal_integral_eq_lintegral_ofReal hint2 (ae_of_all _ fun θ => by positivity),
    ← ofReal_norm_eq_enorm, ← ENNReal.ofReal_pow (norm_nonneg _),
    ← ENNReal.ofReal_mul (by positivity)]
  exact ENNReal.ofReal_le_ofReal hreal

end ReciprocityTheory.L2DbarEstimates.C
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.Circle =====

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MeasurableEmbeddingRotAbout =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MeasurableEmbeddingRotAbout", "h": "module\n\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.Topology.Separation.CompletelyRegular\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.HoloWeakStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.Circle\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.C

open MeasureTheory Metric Set Filter Topology Complex
open scoped ENNReal

noncomputable def rotAbout {n : ℕ} (c : V n) (a : ℂ) (z : V n) : V n := c + a • (z - c)

theorem rotAbout_sub {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) (z : V n) :
    ‖rotAbout c a z - c‖ = ‖z - c‖ := by
  simp [rotAbout, norm_smul, ha]

theorem rotAbout_mem_ball_iff {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) (R : ℝ) (z : V n) :
    rotAbout c a z ∈ ball c R ↔ z ∈ ball c R := by
  rw [mem_ball, mem_ball, dist_eq_norm, dist_eq_norm, rotAbout_sub c ha]

theorem measurePreserving_rotAbout {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) :
    MeasurePreserving (rotAbout c a) volume volume :=
  (measurePreserving_add_left volume c).comp
    ((measurePreserving_smul_unit a ha).comp (measurePreserving_sub_right volume c))

theorem measurableEmbedding_rotAbout {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) :
    MeasurableEmbedding (rotAbout c a) := by
  have ha0 : a ≠ 0 := by rintro rfl; simp at ha
  let h : V n ≃ₜ V n :=
    { toFun := rotAbout c a
      invFun := fun z => c + a⁻¹ • (z - c)
      left_inv := fun z => by simp [rotAbout, smul_smul, inv_mul_cancel₀ ha0]
      right_inv := fun z => by simp [rotAbout, smul_smul, mul_inv_cancel₀ ha0]
      continuous_toFun := by unfold rotAbout; fun_prop
      continuous_invFun := by fun_prop }
  exact h.measurableEmbedding

theorem indicator_rotAbout {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) (R : ℝ) {β : Type*}
    [Zero β] (g : V n → β) (z : V n) :
    (ball c R).indicator (fun z => g (rotAbout c a z)) z =
      (ball c R).indicator g (rotAbout c a z) := by
  by_cases hz : z ∈ ball c R
  · rw [indicator_of_mem hz, indicator_of_mem ((rotAbout_mem_ball_iff c ha R z).2 hz)]
  · rw [indicator_of_notMem hz,
      indicator_of_notMem (fun h => hz ((rotAbout_mem_ball_iff c ha R z).1 h))]

theorem setLIntegral_rotAbout {n : ℕ} (c : V n) {a : ℂ} (ha : ‖a‖ = 1) (R : ℝ)
    (g : V n → ℝ≥0∞) :
    ∫⁻ z in ball c R, g (rotAbout c a z) = ∫⁻ z in ball c R, g z := by
  rw [← lintegral_indicator measurableSet_ball, ← lintegral_indicator measurableSet_ball,
    lintegral_congr fun z => indicator_rotAbout c ha R g z]
  exact (measurePreserving_rotAbout c ha).lintegral_comp_emb (measurableEmbedding_rotAbout c ha) _

theorem continuous_rotAbout_exp {n : ℕ} (c : V n) :
    Continuous (fun p : ℝ × V n => rotAbout c (Complex.exp ((p.1 : ℂ) * I)) p.2) := by
  unfold rotAbout; fun_prop

theorem continuousOn_comp_rotAbout {n : ℕ} {c : V n} {R : ℝ} {u : V n → ℂ}
    (hu : DifferentiableOn ℂ u (ball c R)) (s : Set ℝ) :
    ContinuousOn (fun p : ℝ × V n => u (rotAbout c (Complex.exp ((p.1 : ℂ) * I)) p.2))
      (s ×ˢ ball c R) := by
  refine hu.continuousOn.comp (continuous_rotAbout_exp c).continuousOn ?_
  rintro ⟨θ, z⟩ ⟨_, hz⟩
  exact (rotAbout_mem_ball_iff c (Complex.norm_exp_ofReal_mul_I θ) R z).2 hz

theorem mv : MVStatement := by
  intro n c R u r hu hr
  have hT1 := Complex.norm_exp_ofReal_mul_I
  have hrot : ∀ θ : ℝ, ∫⁻ z in ball c R,
      ‖u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z)‖ₑ ^ 2 * r ‖z - c‖ =
        ∫⁻ z in ball c R, ‖u z‖ₑ ^ 2 * r ‖z - c‖ := by
    intro θ
    have h := setLIntegral_rotAbout c (hT1 θ) R (fun z => ‖u z‖ₑ ^ 2 * r ‖z - c‖)
    simp only [rotAbout_sub c (hT1 θ)] at h
    exact h
  have hmeas : AEMeasurable (Function.uncurry fun (θ : ℝ) (z : V n) =>
      ‖u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z)‖ₑ ^ 2 * r ‖z - c‖)
      ((volume.restrict (Ioc 0 (2 * Real.pi))).prod (volume.restrict (ball c R))) := by
    rw [Measure.prod_restrict]
    have h1 := ((continuousOn_comp_rotAbout hu (Ioc 0 (2 * Real.pi))).aemeasurable
      (μ := volume.prod volume) (measurableSet_Ioc.prod measurableSet_ball)).enorm.pow_const 2
    have h2 : Measurable fun p : ℝ × V n => r ‖p.2 - c‖ :=
      hr.comp ((measurable_snd.sub_const c).norm)
    exact h1.mul h2.aemeasurable
  have hvol : volume (Ioc (0 : ℝ) (2 * Real.pi)) = ENNReal.ofReal (2 * Real.pi) := by
    rw [Real.volume_Ioc, sub_zero]
  have key : (∫⁻ z in ball c R, ‖u z‖ₑ ^ 2 * r ‖z - c‖) * ENNReal.ofReal (2 * Real.pi) =
      ∫⁻ z in ball c R, ∫⁻ θ in Ioc 0 (2 * Real.pi),
        ‖u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z)‖ₑ ^ 2 * r ‖z - c‖ := by
    rw [← hvol, ← setLIntegral_const, ← lintegral_lintegral_swap hmeas]
    exact lintegral_congr fun θ => (hrot θ).symm
  have hmr : Measurable fun z : V n => r ‖z - c‖ := hr.comp (measurable_id.sub_const c).norm
  have low : ‖u c‖ₑ ^ 2 * ENNReal.ofReal (2 * Real.pi) * ∫⁻ z in ball c R, r ‖z - c‖ ≤
      ∫⁻ z in ball c R, ∫⁻ θ in Ioc 0 (2 * Real.pi),
        ‖u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z)‖ₑ ^ 2 * r ‖z - c‖ := by
    rw [← lintegral_const_mul _ hmr]
    refine setLIntegral_mono' measurableSet_ball fun z hz => ?_
    have hw : ‖z - c‖ < R := by rw [mem_ball, dist_eq_norm] at hz; exact hz
    have hcz : Continuous fun θ : ℝ => u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z) :=
      hu.continuousOn.comp_continuous (by unfold rotAbout; fun_prop)
        (fun θ => (rotAbout_mem_ball_iff c (hT1 θ) R z).2 hz)
    have hm : Measurable fun θ : ℝ =>
        ‖u (rotAbout c (Complex.exp ((θ : ℂ) * I)) z)‖ₑ ^ 2 :=
      hcz.measurable.enorm.pow_const 2
    rw [lintegral_mul_const _ hm]
    gcongr
    exact circle_mean_sq hu hw
  have h0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := (ENNReal.ofReal_pos.2 Real.two_pi_pos).ne'
  refine (ENNReal.mul_le_mul_iff_left h0 ENNReal.ofReal_ne_top).1 ?_
  calc ‖u c‖ₑ ^ 2 * (∫⁻ z in ball c R, r ‖z - c‖) * ENNReal.ofReal (2 * Real.pi)
      = ‖u c‖ₑ ^ 2 * ENNReal.ofReal (2 * Real.pi) * ∫⁻ z in ball c R, r ‖z - c‖ := by ring
    _ ≤ _ := low
    _ = _ := key.symm

end ReciprocityTheory.L2DbarEstimates.C
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MeasurableEmbeddingRotAbout =====
