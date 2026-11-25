module

public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.Topology.Separation.CompletelyRegular
public import ReciprocityTheory.L2DbarEstimates.JacobianInterpolationStatement
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import ReciprocityTheory.L2DbarEstimates.IsLocalHomeomorph
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.HoloSmooth
public import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ContDiff
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.MeasureTheory.Function.Jacobian
public import Mathlib.MeasureTheory.Measure.Haar.Unique
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FamilyLeCoords

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeA, ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeB, ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeLoc

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeA =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeA", "h": "module\n\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.Topology.Separation.CompletelyRegular\npublic import ReciprocityTheory.L2DbarEstimates.JacobianInterpolationStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.MeasureTheory.Integral.IntegrableOn\nimport ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FamilyLeCoords\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.Y

open MeasureTheory Filter Topology WeightedAtlas Metric
open scoped ContDiff ENNReal

noncomputable section

def apraW (d : ℕ) (ε τ : ℝ) (t : ℝ) : ℝ≥0∞ :=
  if t < ε then ENNReal.ofReal ((max (t ^ 2) τ) ^ (-(d : ℝ))) else 0

lemma apraW_meas (d : ℕ) (ε τ : ℝ) : Measurable (apraW d ε τ) := by
  unfold apraW
  refine Measurable.ite measurableSet_Iio ?_ measurable_const
  exact ENNReal.measurable_ofReal.comp
    (((measurable_id.pow_const 2).max measurable_const).pow_const _)

lemma apraW_anti (d : ℕ) (ε : ℝ) {τ τ' : ℝ} (hτ : 0 < τ) (h : τ ≤ τ') (t : ℝ) :
    apraW d ε τ' t ≤ apraW d ε τ t := by
  unfold apraW
  split_ifs
  · exact ENNReal.ofReal_le_ofReal (Real.rpow_le_rpow_of_nonpos (lt_max_of_lt_right hτ)
      (max_le_max le_rfl h) (neg_nonpos.mpr (Nat.cast_nonneg d)))
  · exact le_rfl

lemma apra_slice (d k : ℕ) (hMVd : MVStatement d) (ε τ : ℝ) (u : V d × V k → ℂ)
    (hu : DifferentiableOn ℂ u (ball (0 : V d) ε ×ˢ ball (0 : V k) ε)) (ζ : V k)
    (hζ : ζ ∈ ball (0 : V k) ε) :
    ENNReal.ofReal (‖u (0, ζ)‖ ^ 2) * ∫⁻ x : V d, apraW d ε τ ‖x‖ ≤
      ∫⁻ x in ball (0 : V d) ε,
        ENNReal.ofReal (‖u (x, ζ)‖ ^ 2 * (max (‖x‖ ^ 2) τ) ^ (-(d : ℝ))) := by
  have hdiff : DifferentiableOn ℂ (fun x : V d => u (x, ζ)) (ball 0 ε) :=
    hu.comp (differentiableOn_id.prodMk (differentiableOn_const ζ)) (fun x hx => ⟨hx, hζ⟩)
  have h := hMVd ε (fun x => u (x, ζ)) (apraW d ε τ) hdiff (apraW_meas d ε τ)
    (fun t ht => by simp [apraW, not_lt.mpr ht])
  refine h.trans (le_of_eq ?_)
  rw [← lintegral_indicator measurableSet_ball]
  refine lintegral_congr fun x => ?_
  by_cases hx : ‖x‖ < ε
  · have hx' : x ∈ ball (0 : V d) ε := mem_ball_zero_iff.mpr hx
    simp only [apraW, if_pos hx, Set.indicator_of_mem hx']
    rw [ENNReal.ofReal_mul (by positivity)]
  · have hx' : x ∉ ball (0 : V d) ε := fun h => hx (mem_ball_zero_iff.mp h)
    simp [apraW, hx]

lemma apra_base (k : ℕ) (hMVk : MVStatement k) (ε : ℝ) (g : V k → ℂ)
    (hg : DifferentiableOn ℂ g (ball 0 ε)) :
    ENNReal.ofReal (‖g 0‖ ^ 2) * volume (ball (0 : V k) ε) ≤
      ∫⁻ ζ in ball (0 : V k) ε, ENNReal.ofReal (‖g ζ‖ ^ 2) := by
  have h := hMVk ε g (fun t => if t < ε then 1 else 0) hg
    (Measurable.ite measurableSet_Iio measurable_const measurable_const)
    (fun t ht => by simp [not_lt.mpr ht])
  have e1 : ∫⁻ y : V k, (fun t : ℝ => if t < ε then (1 : ℝ≥0∞) else 0) ‖y‖ =
      volume (ball (0 : V k) ε) := by
    rw [← lintegral_indicator_one measurableSet_ball]
    refine lintegral_congr fun y => ?_
    by_cases hy : ‖y‖ < ε <;> simp [hy, Set.indicator]
  have e2 : ∫⁻ y : V k, ENNReal.ofReal (‖g y‖ ^ 2) *
      (fun t : ℝ => if t < ε then (1 : ℝ≥0∞) else 0) ‖y‖ =
      ∫⁻ ζ in ball (0 : V k) ε, ENNReal.ofReal (‖g ζ‖ ^ 2) := by
    rw [← lintegral_indicator measurableSet_ball]
    refine lintegral_congr fun y => ?_
    by_cases hy : ‖y‖ < ε <;> simp [hy, Set.indicator]
  rw [e1, e2] at h
  exact h

lemma apra_blow (d : ℕ) (hd : 1 ≤ d) (hMVI : MVIntStatement d) (ε : ℝ) (hε : 0 < ε) :
    ⨆ n : ℕ, ∫⁻ x : V d, apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖ = ⊤ := by
  have : Nontrivial (V d) := by
    have : Nonempty (Fin d) := ⟨⟨0, hd⟩⟩
    infer_instance
  set f : ℕ → V d → ℝ≥0∞ := fun n x => apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖ with hf
  have hmeas : ∀ n, Measurable (f n) := fun n => (apraW_meas _ _ _).comp measurable_norm
  have hmono : Monotone f := by
    intro m n hmn x
    have h1 : (1 : ℝ) / ((n : ℝ) + 1) ≤ 1 / ((m : ℝ) + 1) := by
      have hmn' : (m : ℝ) ≤ n := Nat.cast_le.mpr hmn
      exact one_div_le_one_div_of_le (by positivity) (by linarith)
    have h2 : (0 : ℝ) < 1 / ((n : ℝ) + 1) := by positivity
    show apraW d ε (1 / ((m : ℝ) + 1)) ‖x‖ ≤ apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖
    exact apraW_anti d ε h2 h1 _
  rw [← lintegral_iSup hmeas hmono]
  set g : V d → ℝ≥0∞ := fun x => ENNReal.ofReal ‖x‖ ^ (-2 * (d : ℝ)) with hg
  have hpt : ∀ x : V d, x ≠ 0 → (ball (0 : V d) ε).indicator g x ≤ ⨆ n, f n x := by
    intro x hx0
    by_cases hx : ‖x‖ < ε
    · rw [Set.indicator_of_mem (mem_ball_zero_iff.mpr hx)]
      have hpos : 0 < ‖x‖ := norm_pos_iff.mpr hx0
      obtain ⟨n, hn⟩ := exists_nat_one_div_lt (pow_pos hpos 2)
      refine le_trans ?_ (le_iSup _ n)
      simp only [hf, hg, apraW, if_pos hx]
      rw [max_eq_left hn.le, ENNReal.ofReal_rpow_of_pos hpos, ← Real.rpow_natCast,
        ← Real.rpow_mul hpos.le]
      apply le_of_eq
      congr 2
      push_cast
      ring
    · rw [Set.indicator_of_notMem (fun h => hx (mem_ball_zero_iff.mp h))]
      exact bot_le
  have hae : ∀ᵐ x ∂(volume : Measure (V d)), (ball (0 : V d) ε).indicator g x ≤ ⨆ n, f n x := by
    have h0 : ∀ᵐ x ∂(volume : Measure (V d)), x ∉ ({0} : Set (V d)) :=
      measure_eq_zero_iff_ae_notMem.1 (measure_singleton 0)
    filter_upwards [h0] with x hx using hpt x (by simpa using hx)
  have hT : ∫⁻ y in ball (0 : V d) 1, g y = ⊤ :=
    not_lt_top_iff.mp (fun h => lt_irrefl _ ((hMVI hd d).1 h))
  have hdn : -2 * (d : ℝ) ≤ 0 := by
    have : (0 : ℝ) ≤ d := Nat.cast_nonneg d
    linarith
  have hpt2 : ∀ y : V d, g y ≤ (ball (0 : V d) ε).indicator g y + ENNReal.ofReal ε ^ (-2 * (d : ℝ)) := by
    intro y
    by_cases hy : y ∈ ball (0 : V d) ε
    · rw [Set.indicator_of_mem hy]
      exact le_self_add
    · rw [Set.indicator_of_notMem hy, zero_add]
      have : ε ≤ ‖y‖ := by simpa [mem_ball_zero_iff] using hy
      simp only [hg]
      rw [ENNReal.ofReal_rpow_of_pos (hε.trans_le this), ENNReal.ofReal_rpow_of_pos hε]
      exact ENNReal.ofReal_le_ofReal (Real.rpow_le_rpow_of_nonpos hε this hdn)
  have hc : ENNReal.ofReal ε ^ (-2 * (d : ℝ)) * volume (ball (0 : V d) 1) ≠ ⊤ :=
    ENNReal.mul_ne_top (by simp [ENNReal.rpow_eq_top_iff, hε]) measure_ball_lt_top.ne
  have hle : ∫⁻ y in ball (0 : V d) 1, g y ≤ (∫⁻ y, (ball (0 : V d) ε).indicator g y) +
      ENNReal.ofReal ε ^ (-2 * (d : ℝ)) * volume (ball (0 : V d) 1) := by
    calc ∫⁻ y in ball (0 : V d) 1, g y
        ≤ ∫⁻ y in ball (0 : V d) 1, ((ball (0 : V d) ε).indicator g y +
            ENNReal.ofReal ε ^ (-2 * (d : ℝ))) := lintegral_mono fun y => hpt2 y
      _ = (∫⁻ y in ball (0 : V d) 1, (ball (0 : V d) ε).indicator g y) +
            ENNReal.ofReal ε ^ (-2 * (d : ℝ)) * volume (ball (0 : V d) 1) := by
          rw [lintegral_add_right _ measurable_const, setLIntegral_const]
      _ ≤ _ := add_le_add (setLIntegral_le_lintegral _ _) le_rfl
  have hind : ∫⁻ y, (ball (0 : V d) ε).indicator g y = ⊤ := by
    by_contra hne
    exact (ENNReal.add_ne_top.2 ⟨hne, hc⟩) (eq_top_iff.2 (hT ▸ hle))
  exact eq_top_iff.2 (hind ▸ lintegral_mono_ae hae)

theorem ap_prod_blowup (d k : ℕ) (hd : 1 ≤ d) (hMVd : MVStatement d) (hMVk : MVStatement k)
    (hMVI : MVIntStatement d) (ε : ℝ) (hε : 0 < ε) (M : ℝ) :
    ∃ τ0 : ℝ, 0 < τ0 ∧ ∀ τ : ℝ, 0 < τ → τ ≤ τ0 → ∀ u : V d × V k → ℂ,
      DifferentiableOn ℂ u (Metric.ball (0 : V d) ε ×ˢ Metric.ball (0 : V k) ε) →
      ENNReal.ofReal (M * ‖u 0‖ ^ 2) ≤
        ∫⁻ z in Metric.ball (0 : V d) ε ×ˢ Metric.ball (0 : V k) ε,
          ENNReal.ofReal (‖u z‖ ^ 2 * (max (‖z.1‖ ^ 2) τ) ^ (-(d : ℝ))) := by
  have hvol : volume (ball (0 : V k) ε) ≠ 0 := (measure_ball_pos volume (0 : V k) hε).ne'
  have hsup : ⨆ n : ℕ, volume (ball (0 : V k) ε) *
      ∫⁻ x : V d, apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖ = ⊤ := by
    rw [← ENNReal.mul_iSup, apra_blow d hd hMVI ε hε, ENNReal.mul_top hvol]
  have hlt : ENNReal.ofReal M < ⨆ n : ℕ, volume (ball (0 : V k) ε) *
      ∫⁻ x : V d, apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖ := by
    rw [hsup]
    exact ENNReal.ofReal_lt_top
  obtain ⟨n, hn⟩ := lt_iSup_iff.1 hlt
  refine ⟨1 / ((n : ℝ) + 1), by positivity, fun τ hτ hτ0 u hu => ?_⟩
  have hIτ : ∫⁻ x : V d, apraW d ε (1 / ((n : ℝ) + 1)) ‖x‖ ≤ ∫⁻ x : V d, apraW d ε τ ‖x‖ :=
    lintegral_mono fun x => apraW_anti d ε hτ hτ0 _
  have hslice : ∀ ζ ∈ ball (0 : V k) ε,
      ENNReal.ofReal (‖u (0, ζ)‖ ^ 2) * ∫⁻ x : V d, apraW d ε τ ‖x‖ ≤
        ∫⁻ x in ball (0 : V d) ε,
          ENNReal.ofReal (‖u (x, ζ)‖ ^ 2 * (max (‖x‖ ^ 2) τ) ^ (-(d : ℝ))) :=
    fun ζ hζ => apra_slice d k hMVd ε τ u hu ζ hζ
  have hbase := apra_base k hMVk ε (fun ζ => u (0, ζ))
    (hu.comp ((differentiableOn_const (0 : V d)).prodMk differentiableOn_id)
      (fun ζ hζ => ⟨mem_ball_self hε, hζ⟩))
  have hmeasF : AEMeasurable
      (fun z : V d × V k => ENNReal.ofReal (‖u z‖ ^ 2 * (max (‖z.1‖ ^ 2) τ) ^ (-(d : ℝ))))
      ((volume.restrict (ball (0 : V d) ε)).prod (volume.restrict (ball (0 : V k) ε))) := by
    rw [Measure.prod_restrict, ← Measure.volume_eq_prod]
    have hu' : AEMeasurable u (volume.restrict (ball (0 : V d) ε ×ˢ ball (0 : V k) ε)) := by
      letI : IsBoundedSMul ℂ (V d × V k) := NormedSpace.toIsBoundedSMul
      letI : ContinuousSMul ℂ (V d × V k) := IsBoundedSMul.continuousSMul
      exact hu.continuousOn.aemeasurable (measurableSet_ball.prod measurableSet_ball)
    exact ((hu'.norm.pow_const 2).mul (((measurable_fst.norm.pow_const 2).max
      measurable_const).pow_const _).aemeasurable).ennreal_ofReal
  have hfub : ∫⁻ z in ball (0 : V d) ε ×ˢ ball (0 : V k) ε,
      ENNReal.ofReal (‖u z‖ ^ 2 * (max (‖z.1‖ ^ 2) τ) ^ (-(d : ℝ))) =
      ∫⁻ ζ in ball (0 : V k) ε, ∫⁻ x in ball (0 : V d) ε,
        ENNReal.ofReal (‖u (x, ζ)‖ ^ 2 * (max (‖x‖ ^ 2) τ) ^ (-(d : ℝ))) := by
    rw [Measure.volume_eq_prod, ← Measure.prod_restrict, lintegral_prod_symm _ hmeasF]
  rw [hfub]
  calc ENNReal.ofReal (M * ‖u 0‖ ^ 2)
      = ENNReal.ofReal (‖u (0, 0)‖ ^ 2) * ENNReal.ofReal M := by
        rw [ENNReal.ofReal_mul' (by positivity), mul_comm]
        rfl
    _ ≤ ENNReal.ofReal (‖u (0, 0)‖ ^ 2) *
          (volume (ball (0 : V k) ε) * ∫⁻ x : V d, apraW d ε τ ‖x‖) :=
        mul_le_mul' le_rfl (hn.le.trans (mul_le_mul' le_rfl hIτ))
    _ = (ENNReal.ofReal (‖u (0, 0)‖ ^ 2) * volume (ball (0 : V k) ε)) *
          ∫⁻ x : V d, apraW d ε τ ‖x‖ := (mul_assoc _ _ _).symm
    _ ≤ (∫⁻ ζ in ball (0 : V k) ε, ENNReal.ofReal (‖u (0, ζ)‖ ^ 2)) *
          ∫⁻ x : V d, apraW d ε τ ‖x‖ := mul_le_mul' hbase le_rfl
    _ ≤ ∫⁻ ζ in ball (0 : V k) ε, ENNReal.ofReal (‖u (0, ζ)‖ ^ 2) *
          ∫⁻ x : V d, apraW d ε τ ‖x‖ := lintegral_mul_const_le _ _
    _ ≤ _ := setLIntegral_mono' measurableSet_ball hslice

end

end ReciprocityTheory.L2DbarEstimates.Y
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeA =====

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeB =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeB", "h": "module\n\npublic import ReciprocityTheory.L2DbarEstimates.IsLocalHomeomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.HoloSmooth\nimport ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FamilyLeCoords\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.Y

open MeasureTheory Filter Topology WeightedAtlas
open scoped ContDiff ENNReal

noncomputable section

set_option synthInstance.maxHeartbeats 100000 in
theorem aprb_complement {n d : ℕ} (Lm : V n →L[ℂ] V d) (hs : Function.Surjective Lm) :
    ∃ A : V n ≃L[ℂ] V d × V (n - d), ∀ v, (A v).1 = Lm v := by
  classical
  let K := LinearMap.ker (Lm : V n →ₗ[ℂ] V d)
  obtain ⟨C, hC⟩ := Submodule.exists_isCompl K
  let P : V n →ₗ[ℂ] K := Submodule.linearProjOfIsCompl K C hC
  have hrank : Module.finrank ℂ (V d) + Module.finrank ℂ K = Module.finrank ℂ (V n) := by
    have h1 := LinearMap.finrank_range_add_finrank_ker (Lm : V n →ₗ[ℂ] V d)
    rwa [LinearMap.range_eq_top.mpr hs, finrank_top] at h1
  simp only [finrank_euclideanSpace, Fintype.card_fin] at hrank
  have hK : Module.finrank ℂ K = n - d := by omega
  let eK : K ≃ₗ[ℂ] V (n - d) := LinearEquiv.ofFinrankEq K (V (n - d)) (by rw [hK]; simp)
  let T : V n →ₗ[ℂ] V d × V (n - d) := LinearMap.prod (Lm : V n →ₗ[ℂ] V d) (eK.toLinearMap ∘ₗ P)
  have hT : Function.Injective T := by
    refine LinearMap.ker_eq_bot.mp (LinearMap.ker_eq_bot'.mpr fun v hv => ?_)
    have h1 : Lm v = 0 := by simpa [T] using congrArg Prod.fst hv
    have h2 : P v = 0 := by simpa [T] using congrArg Prod.snd hv
    have hvK : v ∈ K := by simpa [K] using h1
    have h3 := Submodule.linearProjOfIsCompl_apply_left hC ⟨v, hvK⟩
    have h4 : (⟨v, hvK⟩ : K) = 0 := h3.symm.trans h2
    simpa using congrArg Subtype.val h4
  have hdim : Module.finrank ℂ (V n) = Module.finrank ℂ (V d × V (n - d)) := by
    simp only [Module.finrank_prod, finrank_euclideanSpace, Fintype.card_fin]
    omega
  refine ⟨(LinearMap.linearEquivOfInjective T hT hdim).toContinuousLinearEquiv, fun v => ?_⟩
  rfl

theorem aprb_contDiffOn {n d : ℕ} {U : Set (V n)} (hU : IsOpen U) {p : V n → V d}
    (hp : DifferentiableOn ℂ p U) (k : ℕ) : ContDiffOn ℂ k p U := by
  rw [contDiffOn_euclidean]
  intro i
  have h1 : DifferentiableOn ℂ (fun x => p x i) U :=
    (EuclideanSpace.proj i : V d →L[ℂ] ℂ).differentiable.comp_differentiableOn hp
  exact (contDiffOn_of_differentiableOn n _ U hU h1).of_le (by exact_mod_cast le_top)

end

end ReciprocityTheory.L2DbarEstimates.Y
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeB =====

-- ===== clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeLoc =====
-- clump-header: {"m": "ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeLoc", "h": "module\n\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.Topology.Separation.CompletelyRegular\npublic import ReciprocityTheory.L2DbarEstimates.JacobianInterpolationStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ContDiff\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeA\npublic import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeB\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.ContDiff.RCLike\npublic import Mathlib.MeasureTheory.Function.Jacobian\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\nimport ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FamilyLeCoords\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.Y

open MeasureTheory Filter Topology WeightedAtlas
open scoped ContDiff ENNReal

noncomputable section

private lemma exists_const_lintegral_comp_continuousLinearEquiv {n a b : ℕ} (A : V n ≃L[ℂ] V a × V b) :
    ∃ K : NNReal, 0 < K ∧ ∀ (B : Set (V a × V b)) (h : V n → ℝ≥0∞),
      ∫⁻ z in B, h (A.symm z) = (K : ℝ≥0∞) * ∫⁻ x in (A : V n → V a × V b) ⁻¹' B, h x := by
  haveI hvolF : (volume : Measure (V a × V b)).IsAddHaarMeasure := by
    rw [Measure.volume_eq_prod]
    haveI : (volume : Measure (V a)).IsAddHaarMeasure := inferInstance
    haveI : (volume : Measure (V b)).IsAddHaarMeasure := inferInstance
    haveI : SigmaFinite (volume : Measure (V a)) := inferInstance
    haveI : SigmaFinite (volume : Measure (V b)) := inferInstance
    first
      | infer_instance
  set ν : Measure (V n) := Measure.map (A.symm : V a × V b → V n) volume with hν
  haveI : ν.IsAddHaarMeasure := by
    rw [hν]
    first
      | infer_instance
  refine ⟨Measure.addHaarScalarFactor ν volume,
    Measure.addHaarScalarFactor_pos_of_isAddHaarMeasure ν volume, ?_⟩
  intro B h
  have hmp : MeasurePreserving (A.symm : V a × V b → V n) volume ν :=
    ⟨A.symm.continuous.measurable, rfl⟩
  have hemb : MeasurableEmbedding (A.symm : V a × V b → V n) :=
    A.symm.toHomeomorph.measurableEmbedding
  have hpre : (A.symm : V a × V b → V n) ⁻¹' ((A : V n → V a × V b) ⁻¹' B) = B := by
    ext z; simp
  have key := hmp.setLIntegral_comp_preimage_emb hemb h ((A : V n → V a × V b) ⁻¹' B)
  rw [hpre] at key
  rw [key]
  conv_lhs => rw [Measure.isAddLeftInvariant_eq_smul ν volume]
  rw [Measure.restrict_smul, lintegral_smul_measure]
  first
    | rfl



theorem ap_local_blowup (n d : ℕ) (hd : 1 ≤ d) (hMVd : ∀ k, MVStatement k)
    (hMVI : MVIntStatement d) (U : Set (V n)) (hU : IsOpen U) (p : V n → V d)
    (hp : DifferentiableOn ℂ p U) (v0 : V n) (hv0 : v0 ∈ U) (hp0 : p v0 = 0)
    (hsurj : Function.Surjective (fderiv ℂ p v0)) :
    ∃ δ : ℝ, 0 < δ ∧ Metric.closedBall v0 δ ⊆ U ∧ ∀ M : ℝ, ∃ τ0 : ℝ, 0 < τ0 ∧
      ∀ τ : ℝ, 0 < τ → τ ≤ τ0 → ∀ u : V n → ℂ, DifferentiableOn ℂ u (Metric.ball v0 δ) →
        ENNReal.ofReal (M * ‖u v0‖ ^ 2) ≤
          ∫⁻ v in Metric.ball v0 δ, ENNReal.ofReal (‖u v‖ ^ 2 * (max (‖p v‖ ^ 2) τ) ^ (-(d : ℝ))) := by
  classical
  obtain ⟨A, hA⟩ := aprb_complement (fderiv ℂ p v0) hsurj
  obtain ⟨K, hK, hKeq⟩ := exists_const_lintegral_comp_continuousLinearEquiv A
  set Lsnd : V n →L[ℂ] V (n - d) :=
    (ContinuousLinearMap.snd ℂ (V d) (V (n - d))).comp (A : V n →L[ℂ] V d × V (n - d)) with hLsnd
  set Ψ : V n → V n := fun v => A.symm (p v, Lsnd v - Lsnd v0) with hΨdef
  have hΨ0 : Ψ v0 = 0 := by simp [Ψ, hp0]
  have hpC : ContDiffOn ℂ 1 p U := by simpa using aprb_contDiffOn hU hp 1
  have hΨdiff : ∀ v ∈ U, DifferentiableAt ℂ Ψ v := by
    intro v hv
    have h1 : DifferentiableAt ℂ p v := hp.differentiableAt (hU.mem_nhds hv)
    have h2 : DifferentiableAt ℂ (fun w => (p w, Lsnd w - Lsnd v0)) v := by
      first
        | exact h1.prodMk (Lsnd.differentiableAt.sub_const _)
    exact (A.symm : V d × V (n - d) →L[ℂ] V n).differentiableAt.comp v h2
  have hΨc : ContDiffAt ℂ 1 Ψ v0 := by
    have h1 : ContDiffAt ℂ 1 p v0 := hpC.contDiffAt (hU.mem_nhds hv0)
    have h2 : ContDiffAt ℂ 1 (fun w => (p w, Lsnd w - Lsnd v0)) v0 := by
      first
        | exact h1.prodMk (Lsnd.contDiff.contDiffAt.sub contDiffAt_const)
    exact (A.symm : V d × V (n - d) →L[ℂ] V n).contDiff.contDiffAt.comp v0 h2
  have hΨd : HasFDerivAt Ψ
      ((ContinuousLinearEquiv.refl ℂ (V n) : V n ≃L[ℂ] V n) : V n →L[ℂ] V n) v0 := by
    have h1 : HasFDerivAt p (fderiv ℂ p v0) v0 :=
      (hp.differentiableAt (hU.mem_nhds hv0)).hasFDerivAt
    have h2 : HasFDerivAt (fun w => (p w, Lsnd w - Lsnd v0))
        ((fderiv ℂ p v0).prod Lsnd) v0 := by
      first
        | exact h1.prodMk (Lsnd.hasFDerivAt.sub_const (Lsnd v0))
    have h3 := (A.symm : V d × V (n - d) →L[ℂ] V n).hasFDerivAt.comp v0 h2
    refine h3.congr_fderiv ?_
    ext1 h
    have hh : ((fderiv ℂ p v0) h, Lsnd h) = A h := Prod.ext (hA h).symm rfl
    simp [hh]
  have hs := hΨc.hasStrictFDerivAt' hΨd (by simp)
  set G : V n → V n := hs.localInverse Ψ (ContinuousLinearEquiv.refl ℂ (V n)) v0 with hGdef
  have hGc : ContDiffAt ℂ 1 G (Ψ v0) := hΨc.to_localInverse hΨd (by simp)
  have hC : ContDiffAt ℝ 1 Ψ v0 := hΨc.restrict_scalars ℝ
  have hcontD : ContinuousAt (fderiv ℝ Ψ) v0 :=
    (hC.fderiv_right (m := 0) (by rw [zero_add])).continuousAt
  have habs : ContinuousAt (fun v => |(fderiv ℝ Ψ v).det|) v0 :=
    continuous_abs.continuousAt.comp
      (ContinuousLinearMap.continuous_det.continuousAt.comp hcontD)
  have hev1 : ∀ᶠ v in 𝓝 v0, G (Ψ v) = v ∧
      |(fderiv ℝ Ψ v).det| < |(fderiv ℝ Ψ v0).det| + 1 :=
    hs.eventually_left_inverse.and (habs.eventually (Iio_mem_nhds (lt_add_one _)))
  set C : ℝ := |(fderiv ℝ Ψ v0).det| + 1 with hCdef
  have hCpos : 0 < C := by rw [hCdef]; positivity
  obtain ⟨δ1, hδ1, hδ1b⟩ := Metric.eventually_nhds_iff_ball.1 hev1
  obtain ⟨δ2, hδ2, hδ2b⟩ := Metric.isOpen_iff.1 hU v0 hv0
  set δ : ℝ := min δ1 δ2 / 2 with hδdef
  have hδpos : 0 < δ := half_pos (lt_min hδ1 hδ2)
  have hδlt : δ < min δ1 δ2 := half_lt_self (lt_min hδ1 hδ2)
  have hballU : Metric.ball v0 δ ⊆ U := fun v hv =>
    hδ2b (Metric.ball_subset_ball ((hδlt.le).trans (min_le_right _ _)) hv)
  have hballP : ∀ v ∈ Metric.ball v0 δ, G (Ψ v) = v ∧ |(fderiv ℝ Ψ v).det| < C :=
    fun v hv => hδ1b v (Metric.ball_subset_ball ((hδlt.le).trans (min_le_left _ _)) hv)
  refine ⟨δ, hδpos, ?_, ?_⟩
  · exact (Metric.closedBall_subset_ball hδlt).trans
      (fun v hv => hδ2b (Metric.ball_subset_ball (min_le_right _ _) hv))
  have hevB : ∀ᶠ x in 𝓝 (Ψ v0), G x ∈ Metric.ball v0 δ :=
    hs.localInverse_tendsto (Metric.ball_mem_nhds v0 hδpos)
  have hevD : ∀ᶠ x in 𝓝 (Ψ v0), DifferentiableAt ℂ G x :=
    (hGc.eventually (by simp)).mono fun x hx => hx.differentiableAt (by simp)
  have hev2 : ∀ᶠ x in 𝓝 (Ψ v0), Ψ (G x) = x ∧ G x ∈ Metric.ball v0 δ ∧
      DifferentiableAt ℂ G x :=
    Filter.Eventually.and hs.eventually_right_inverse (Filter.Eventually.and hevB hevD)
  rw [hΨ0] at hev2
  obtain ⟨r, hr, hrb⟩ := Metric.eventually_nhds_iff_ball.1 hev2
  set As : V d × V (n - d) →L[ℂ] V n := (A.symm : V d × V (n - d) →L[ℂ] V n) with hAs
  set ε : ℝ := r / (‖As‖ + 1) with hεdef
  have hAs1 : 0 < ‖As‖ + 1 := by positivity
  have hε : 0 < ε := div_pos hr hAs1
  set Box : Set (V d × V (n - d)) :=
    Metric.ball (0 : V d) ε ×ˢ Metric.ball (0 : V (n - d)) ε with hBoxdef
  have hBox : ∀ z ∈ Box, A.symm z ∈ Metric.ball (0 : V n) r := by
    intro z hz
    have hz1 : ‖z.1‖ < ε := by simpa using hz.1
    have hz2 : ‖z.2‖ < ε := by simpa using hz.2
    have hzn : ‖z‖ < ε := by rw [Prod.norm_def]; exact max_lt hz1 hz2
    rw [Metric.mem_ball, dist_zero_right]
    have h1 : ‖A.symm z‖ ≤ ‖As‖ * ‖z‖ := As.le_opNorm z
    have h2 : ‖As‖ * ‖z‖ ≤ ‖As‖ * ε := mul_le_mul_of_nonneg_left hzn.le (norm_nonneg _)
    have h3 : ‖As‖ * ε < (‖As‖ + 1) * ε := by nlinarith
    have h4 : (‖As‖ + 1) * ε = r := by rw [hεdef]; field_simp
    linarith
  intro M
  obtain ⟨τ0, hτ0, hblow⟩ := ap_prod_blowup d (n - d) hd (hMVd d) (hMVd (n - d)) hMVI ε hε
    (M * ((K : ℝ) * C))
  refine ⟨τ0, hτ0, fun τ hτ hττ0 u hu => ?_⟩
  have hBm : MeasurableSet Box := measurableSet_ball.prod measurableSet_ball
  have hu' : DifferentiableOn ℂ (fun z => u (G (A.symm z))) Box := by
    intro z hz
    obtain ⟨_, hGb, hGd⟩ := hrb _ (hBox z hz)
    have hu1 : DifferentiableAt ℂ u (G (A.symm z)) :=
      hu.differentiableAt (Metric.isOpen_ball.mem_nhds hGb)
    exact ((hu1.comp _ hGd).comp z As.differentiableAt).differentiableWithinAt
  have hb := hblow τ hτ hττ0 _ hu'
  beta_reduce at hb
  rw [← hBoxdef] at hb
  have hG0 : G 0 = v0 := by
    rw [← hΨ0]
    exact hs.localInverse_apply_image
  have hu0 : u (G (A.symm 0)) = u v0 := by rw [map_zero, hG0]
  set g : V n → ℝ≥0∞ := fun v =>
    ENNReal.ofReal (‖u v‖ ^ 2 * (max (‖p v‖ ^ 2) τ) ^ (-(d : ℝ))) with hgdef
  have hpz : ∀ z ∈ Box, p (G (A.symm z)) = z.1 := by
    intro z hz
    have hR := (hrb _ (hBox z hz)).1
    have := congrArg (fun w => (A w).1) hR
    simpa [Ψ] using this
  have hI1 : ∫⁻ z in Box, ENNReal.ofReal (‖u (G (A.symm z))‖ ^ 2 *
        (max (‖z.1‖ ^ 2) τ) ^ (-(d : ℝ))) = ∫⁻ z in Box, g (G (A.symm z)) := by
    refine lintegral_congr_ae ?_
    filter_upwards [ae_restrict_mem hBm] with z hz
    simp only [g]
    rw [hpz z hz]
  have hI2 : ∫⁻ z in Box, g (G (A.symm z)) =
      (K : ℝ≥0∞) * ∫⁻ x in (A : V n → V d × V (n - d)) ⁻¹' Box, g (G x) :=
    hKeq Box (fun x => g (G x))
  set T : Set (V n) := (A : V n → V d × V (n - d)) ⁻¹' Box with hTdef
  set s : Set (V n) := Metric.ball v0 δ ∩ Ψ ⁻¹' T with hsdef
  have hTopen : IsOpen T := (Metric.isOpen_ball.prod Metric.isOpen_ball).preimage A.continuous
  have hΨcont : ContinuousOn Ψ (Metric.ball v0 δ) := fun v hv =>
    (hΨdiff v (hballU hv)).continuousAt.continuousWithinAt
  have hsm : MeasurableSet s :=
    (hΨcont.isOpen_inter_preimage Metric.isOpen_ball hTopen).measurableSet
  have himg : Ψ '' s = T := by
    ext x
    constructor
    · rintro ⟨v, ⟨_, hv⟩, rfl⟩
      exact hv
    · intro hx
      have hxr : x ∈ Metric.ball (0 : V n) r := by
        have := hBox (A x) hx
        simpa using this
      obtain ⟨hR, hB, _⟩ := hrb x hxr
      refine ⟨G x, ⟨hB, ?_⟩, hR⟩
      rw [Set.mem_preimage, hR]
      exact hx
  have hinj : Set.InjOn Ψ s := by
    intro v hv w hw hvw
    rw [← (hballP v hv.1).1, ← (hballP w hw.1).1, hvw]
  have hderiv : ∀ v ∈ s, HasFDerivWithinAt Ψ (fderiv ℝ Ψ v) s v := fun v hv =>
    ((hΨdiff v (hballU hv.1)).restrictScalars ℝ).hasFDerivAt.hasFDerivWithinAt
  have hcv := lintegral_image_eq_lintegral_abs_det_fderiv_mul volume hsm hderiv hinj
    (fun x => g (G x))
  rw [himg] at hcv
  have hbd : ∫⁻ v in s, ENNReal.ofReal |(fderiv ℝ Ψ v).det| * g (G (Ψ v))
      ≤ ENNReal.ofReal C * ∫⁻ v in Metric.ball v0 δ, g v := by
    calc ∫⁻ v in s, ENNReal.ofReal |(fderiv ℝ Ψ v).det| * g (G (Ψ v))
        ≤ ∫⁻ v in s, ENNReal.ofReal C * g v := by
          refine lintegral_mono_ae ?_
          filter_upwards [ae_restrict_mem hsm] with v hv
          obtain ⟨hL, hD⟩ := hballP v hv.1
          rw [hL]
          exact mul_le_mul_of_nonneg_right (ENNReal.ofReal_le_ofReal hD.le) (by simp)
      _ = ENNReal.ofReal C * ∫⁻ v in s, g v := lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
      _ ≤ ENNReal.ofReal C * ∫⁻ v in Metric.ball v0 δ, g v :=
          mul_le_mul_of_nonneg_left (lintegral_mono_set Set.inter_subset_left) (by simp)
  have hmain : ENNReal.ofReal (M * ((K : ℝ) * C) * ‖u v0‖ ^ 2)
      ≤ (K : ℝ≥0∞) * (ENNReal.ofReal C * ∫⁻ v in Metric.ball v0 δ, g v) := by
    have h := hb
    rw [hu0, hI1, hI2, hcv] at h
    exact h.trans (mul_le_mul_of_nonneg_left hbd (by simp))
  have hKC : (0 : ℝ) ≤ (K : ℝ) * C := mul_nonneg K.coe_nonneg hCpos.le
  rw [show M * ((K : ℝ) * C) * ‖u v0‖ ^ 2 = ((K : ℝ) * C) * (M * ‖u v0‖ ^ 2) by ring,
    ENNReal.ofReal_mul hKC, ENNReal.ofReal_mul K.coe_nonneg, ENNReal.ofReal_coe_nnreal,
    ← mul_assoc] at hmain
  have h0 : (K : ℝ≥0∞) * ENNReal.ofReal C ≠ 0 :=
    mul_ne_zero (by exact_mod_cast hK.ne') (by simpa using hCpos)
  have htop : (K : ℝ≥0∞) * ENNReal.ofReal C ≠ ⊤ :=
    ENNReal.mul_ne_top ENNReal.coe_ne_top ENNReal.ofReal_ne_top
  first
    | exact (ENNReal.mul_le_mul_iff_right h0 htop).1 hmain

end

end ReciprocityTheory.L2DbarEstimates.Y
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeLoc =====
