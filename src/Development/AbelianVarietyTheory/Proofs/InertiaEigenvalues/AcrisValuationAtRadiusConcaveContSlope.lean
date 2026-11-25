module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisGaussNormEventuallyMonomial
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisLocallyMonomial
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisRadiusPosDefinite
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MonomialLtOfBoundedIntervalEnds
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Lemma

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOnGaussNormAcrisRadiusIco, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationAtRadiusConcaveContSlope

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOnGaussNormAcrisRadiusIco =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOnGaussNormAcrisRadiusIco", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisGaussNormEventuallyMonomial\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisLocallyMonomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PMon.Gauss
open scoped Formalism.Per
open Filter Topology

noncomputable section

namespace GlobalTheory.PMon.Gauss

theorem gC_zero_of_lt_one (l : ℕ) [Fact l.Prime] {ρ : ℝ} (h0 : 0 ≤ ρ) (h1 : ρ < 1) :
    gC l ρ (0 : Formalism.Per.Acris l) = 0 := by
  unfold gC
  split_ifs with h
  · have hN := Classical.choose_spec h
    set N := Classical.choose h
    have hm := hN.2.2.2.1 ((l : Formalism.Per.Acris l)) 0
    have hl : N (l : Formalism.Per.Acris l) = ρ := by
      have := hN.2.2.2.2 (l : Formalism.Per.Ainf l)
      rw [map_natCast] at this
      rw [this]
      exact GlobalTheory.GaussSlope.gauss_l l h0
    rw [mul_zero, hl] at hm
    have : (1 - ρ) * N 0 = 0 := by linarith
    rcases mul_eq_zero.1 this with h' | h'
    · linarith
    · exact h'
  · rfl

theorem continuousOn_gC (l : ℕ) [Fact l.Prime] (x : Formalism.Per.Acris l) :
    ContinuousOn (fun ρ => gC l ρ x) (Set.Ico (l : ℝ)⁻¹ 1) := by
  have hl0 : (0 : ℝ) < (l : ℝ)⁻¹ := by
    have : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
    positivity
  by_cases hx : x = 0
  · subst hx
    refine (continuousOn_const (c := (0 : ℝ))).congr fun ρ hρ => ?_
    exact gC_zero_of_lt_one l (hl0.le.trans hρ.1) hρ.2
  intro ρ₀ hρ₀
  have hpos : 0 < ρ₀ := hl0.trans_le hρ₀.1
  obtain ⟨⟨c, k, ρ₂, -, h02, -, hR⟩, hL⟩ := _root_.GlobalTheory.PMon.Gauss.gC_monomial_near l x hx ρ₀ hρ₀.1 hρ₀.2
  have hS : Set.Ico (l : ℝ)⁻¹ 1 = (Set.Ico (l : ℝ)⁻¹ 1 ∩ Set.Iic ρ₀) ∪ (Set.Ico (l : ℝ)⁻¹ 1 ∩ Set.Ici ρ₀) := by
    ext y
    simp only [Set.mem_union, Set.mem_inter_iff, Set.mem_Iic, Set.mem_Ici]
    constructor
    · intro hy
      rcases le_total y ρ₀ with h | h
      · exact Or.inl ⟨hy, h⟩
      · exact Or.inr ⟨hy, h⟩
    · rintro (h | h) <;> exact h.1
  rw [ContinuousWithinAt, hS, ← ContinuousWithinAt, continuousWithinAt_union]
  constructor
  · rcases eq_or_lt_of_le hρ₀.1 with heq | hlt
    · refine (continuousWithinAt_singleton (f := fun ρ => gC l ρ x) (x := ρ₀)).mono ?_
      rintro y ⟨hy1, hy2⟩
      exact le_antisymm hy2 (heq ▸ hy1.1)
    · obtain ⟨c', k', ρ₁, -, -, h10, hL'⟩ := hL hlt
      have hg : ContinuousWithinAt (fun ρ : ℝ => c' * ρ ^ k') (Set.Iic ρ₀) ρ₀ :=
        (continuousAt_const.mul (continuousAt_zpow₀ ρ₀ k' (Or.inl hpos.ne'))).continuousWithinAt
      have hg' : ContinuousWithinAt (fun ρ => gC l ρ x) (Set.Icc ρ₁ ρ₀) ρ₀ :=
        (hg.mono Set.Icc_subset_Iic_self).congr (fun y hy => hL' y hy) (hL' ρ₀ ⟨h10.le, le_rfl⟩)
      exact (hg'.mono_of_mem_nhdsWithin (Icc_mem_nhdsLE h10)).mono Set.inter_subset_right
  · have hg : ContinuousWithinAt (fun ρ : ℝ => c * ρ ^ k) (Set.Ici ρ₀) ρ₀ :=
      (continuousAt_const.mul (continuousAt_zpow₀ ρ₀ k (Or.inl hpos.ne'))).continuousWithinAt
    have hg' : ContinuousWithinAt (fun ρ => gC l ρ x) (Set.Icc ρ₀ ρ₂) ρ₀ :=
      (hg.mono Set.Icc_subset_Ici_self).congr (fun y hy => hR y hy) (hR ρ₀ ⟨le_rfl, h02.le⟩)
    exact (hg'.mono_of_mem_nhdsWithin (Icc_mem_nhdsGE h02)).mono Set.inter_subset_right

theorem continuousOn_gC_target :
    ∀ (l : ℕ) [Fact l.Prime] (x : Formalism.Per.Acris l), ContinuousOn (fun ρ => gC l ρ x) (Set.Ico (l : ℝ)⁻¹ 1) :=
  fun l _ x => continuousOn_gC l x

end GlobalTheory.PMon.Gauss

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOnGaussNormAcrisRadiusIco =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationAtRadiusConcaveContSlope =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationAtRadiusConcaveContSlope", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOnGaussNormAcrisRadiusIco\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisLocallyMonomial\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisRadiusPosDefinite\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MonomialLtOfBoundedIntervalEnds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Formalism.Per

namespace GlobalTheory.PMon.Gauss

variable {l : ℕ} [Fact l.Prime]

lemma one_lt_natCast_of_prime : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt

lemma prime_rpow_neg_mem_Ico_inv_one {r : ℝ} (h0 : 0 < r) (h1 : r ≤ 1) :
    (l : ℝ)⁻¹ ≤ (l : ℝ) ^ (-r) ∧ (l : ℝ) ^ (-r) < 1 := by
  have hL := one_lt_natCast_of_prime (l := l)
  constructor
  · rw [← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hL.le (by linarith)
  · exact Real.rpow_lt_one_of_one_lt_of_neg hL (by linarith)

lemma logb_gaussNormAcrisRadius_convex {x : Formalism.Per.Acris l} (hx : x ≠ 0) {r₁ r₂ t : ℝ} (h1 : 0 < r₂) (h12 : r₂ ≤ r₁)
    (h2 : r₁ ≤ 1) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    Real.logb l (gC l ((l : ℝ) ^ (-(t * r₁ + (1 - t) * r₂))) x) ≤
      t * Real.logb l (gC l ((l : ℝ) ^ (-r₁)) x) + (1 - t) * Real.logb l (gC l ((l : ℝ) ^ (-r₂)) x) := by
  have hL := one_lt_natCast_of_prime (l := l)
  have hL0 : (0 : ℝ) < l := by linarith
  obtain ⟨a1, b1⟩ := prime_rpow_neg_mem_Ico_inv_one (l := l) (by linarith : 0 < r₁) h2
  obtain ⟨a2, b2⟩ := prime_rpow_neg_mem_Ico_inv_one (l := l) h1 (by linarith)
  have hm0 : 0 < t * r₁ + (1 - t) * r₂ := by nlinarith
  have hm1 : t * r₁ + (1 - t) * r₂ ≤ 1 := by nlinarith
  obtain ⟨a0, b0⟩ := prime_rpow_neg_mem_Ico_inv_one (l := l) hm0 hm1
  have hle : (l : ℝ) ^ (-r₁) ≤ (l : ℝ) ^ (-r₂) := Real.rpow_le_rpow_of_exponent_le hL.le (by linarith)
  have key := _root_.GlobalTheory.PMon.Gauss.gC_logConvex l x _ _ t a1 hle b2 ht0 ht1
  have heq : ((l : ℝ) ^ (-r₁)) ^ t * ((l : ℝ) ^ (-r₂)) ^ (1 - t) = (l : ℝ) ^ (-(t * r₁ + (1 - t) * r₂)) := by
    rw [← Real.rpow_mul hL0.le, ← Real.rpow_mul hL0.le, ← Real.rpow_add hL0]
    congr 1; ring
  rw [heq] at key
  have p1 := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx _ a1 b1
  have p2 := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx _ a2 b2
  have p0 := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx _ a0 b0
  calc Real.logb l (gC l ((l : ℝ) ^ (-(t * r₁ + (1 - t) * r₂))) x)
      ≤ Real.logb l (gC l ((l : ℝ) ^ (-r₁)) x ^ t * gC l ((l : ℝ) ^ (-r₂)) x ^ (1 - t)) :=
        Real.logb_le_logb_of_le hL p0 key
    _ = t * Real.logb l (gC l ((l : ℝ) ^ (-r₁)) x) + (1 - t) * Real.logb l (gC l ((l : ℝ) ^ (-r₂)) x) := by
        rw [Real.logb_mul (Real.rpow_pos_of_pos p1 _).ne' (Real.rpow_pos_of_pos p2 _).ne',
          Real.logb_rpow_eq_mul_logb_of_pos p1, Real.logb_rpow_eq_mul_logb_of_pos p2]

theorem vr_concaveOn_Ioc {x : Formalism.Per.Acris l} (hx : x ≠ 0) :
    ConcaveOn ℝ (Set.Ioc 0 1) (fun r => vr l r x) := by
  refine ⟨convex_Ioc 0 1, ?_⟩
  intro r₁ hr₁ r₂ hr₂ a b ha hb hab
  simp only [vr, smul_eq_mul]
  have hb' : b = 1 - a := by linarith
  subst hb'
  rcases le_total r₂ r₁ with h | h
  · have := logb_gaussNormAcrisRadius_convex hx hr₂.1 h hr₁.2 ha (by linarith)
    linarith
  · have := logb_gaussNormAcrisRadius_convex hx hr₁.1 h hr₂.2 (t := 1 - a) (by linarith) (by linarith)
    have e : (1 - a) * r₂ + (1 - (1 - a)) * r₁ = a * r₁ + (1 - a) * r₂ := by ring
    rw [e] at this
    linarith

theorem vr_continuousOn_Ioc {x : Formalism.Per.Acris l} (hx : x ≠ 0) :
    ContinuousOn (fun r => vr l r x) (Set.Ioc 0 1) := by
  have hL := one_lt_natCast_of_prime (l := l)
  have hL0 : (0 : ℝ) < l := by linarith
  have hmaps : Set.MapsTo (fun r : ℝ => (l : ℝ) ^ (-r)) (Set.Ioc 0 1) (Set.Ico (l : ℝ)⁻¹ 1) :=
    fun r hr => prime_rpow_neg_mem_Ico_inv_one hr.1 hr.2
  have hc1 : Continuous (fun r : ℝ => (l : ℝ) ^ (-r)) :=
    Continuous.rpow continuous_const continuous_neg (fun _ => Or.inl hL0.ne')
  have hc2 : ContinuousOn (fun r : ℝ => gC l ((l : ℝ) ^ (-r)) x) (Set.Ioc 0 1) :=
    (_root_.GlobalTheory.PMon.Gauss.continuousOn_gC_target l x).comp hc1.continuousOn hmaps
  have hpos : ∀ r ∈ Set.Ioc (0 : ℝ) 1, gC l ((l : ℝ) ^ (-r)) x ≠ 0 := fun r hr =>
    (_root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx _ (prime_rpow_neg_mem_Ico_inv_one hr.1 hr.2).1 (prime_rpow_neg_mem_Ico_inv_one hr.1 hr.2).2).ne'
  simp only [vr, Real.logb]
  exact ((hc2.log hpos).div_const _).neg

theorem vr_right_affine {x : Formalism.Per.Acris l} (hx : x ≠ 0) :
    ∀ r ∈ Set.Ioo (0 : ℝ) 1, ∃ (k : ℤ) (δ : ℝ), 0 < δ ∧ r + δ ≤ 1 ∧
      ∀ t ∈ Set.Icc r (r + δ), vr l t x = vr l r x + k * (t - r) := by
  intro r hr
  have hL := one_lt_natCast_of_prime (l := l)
  have hL0 : (0 : ℝ) < l := by linarith
  obtain ⟨a, b⟩ := prime_rpow_neg_mem_Ico_inv_one (l := l) hr.1 hr.2.le
  have hlt : (l : ℝ)⁻¹ < (l : ℝ) ^ (-r) := by
    rw [← Real.rpow_neg_one]; exact Real.rpow_lt_rpow_of_exponent_lt hL (by linarith [hr.2])
  obtain ⟨c, k, ρ₁, hc, hρ₁, hρ₁r, hmon⟩ := (_root_.GlobalTheory.PMon.Gauss.gC_monomial_near l x hx _ a b).2 hlt
  have hρ₁0 : 0 < ρ₁ := lt_of_lt_of_le (inv_pos.mpr hL0) hρ₁
  have hsr : r < -Real.logb l ρ₁ := by
    have := Real.logb_lt_logb hL hρ₁0 hρ₁r
    rw [Real.logb_rpow hL0 hL.ne'] at this
    linarith
  have hρs : ρ₁ = (l : ℝ) ^ (-(-Real.logb l ρ₁)) := by
    rw [neg_neg, Real.rpow_logb hL0 hL.ne' hρ₁0]
  have hlogl : Real.log l ≠ 0 := (Real.log_pos hL).ne'
  have formula : ∀ t, r ≤ t → t ≤ -Real.logb l ρ₁ → vr l t x = -Real.logb l c + k * t := by
    intro t ht1 ht2
    have hmem : (l : ℝ) ^ (-t) ∈ Set.Icc ρ₁ ((l : ℝ) ^ (-r)) := by
      constructor
      · rw [hρs]; exact Real.rpow_le_rpow_of_exponent_le hL.le (by linarith)
      · exact Real.rpow_le_rpow_of_exponent_le hL.le (by linarith)
    simp only [vr]
    rw [hmon _ hmem]
    simp only [Real.logb]
    rw [Real.log_mul hc.ne' (zpow_ne_zero _ (Real.rpow_pos_of_pos hL0 _).ne'), Real.log_zpow,
      Real.log_rpow hL0]
    field_simp
    ring
  refine ⟨k, min (-Real.logb l ρ₁ - r) (1 - r), lt_min (by linarith) (by linarith [hr.2]),
    by linarith [min_le_right (-Real.logb l ρ₁ - r) (1 - r)], ?_⟩
  intro t ht
  have hs1 : r + min (-Real.logb l ρ₁ - r) (1 - r) ≤ -Real.logb l ρ₁ := by
    linarith [min_le_left (-Real.logb l ρ₁ - r) (1 - r)]
  rw [formula t ht.1 (ht.2.trans hs1), formula r le_rfl hsr.le]
  ring

theorem vr_concave_cont_rightSlope : ∀ (l : ℕ) [Fact l.Prime] (x : Formalism.Per.Acris l), x ≠ 0 →
    ConcaveOn ℝ (Set.Ioc 0 1) (fun r => vr l r x) ∧ ContinuousOn (fun r => vr l r x) (Set.Ioc 0 1) ∧
      ∀ r ∈ Set.Ioo (0 : ℝ) 1, ∃ (k : ℤ) (δ : ℝ), 0 < δ ∧ r + δ ≤ 1 ∧
        ∀ t ∈ Set.Icc r (r + δ), vr l t x = vr l r x + k * (t - r) :=
  fun _ _ _ hx => ⟨vr_concaveOn_Ioc hx, vr_continuousOn_Ioc hx, vr_right_affine hx⟩

end GlobalTheory.PMon.Gauss

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationAtRadiusConcaveContSlope =====
