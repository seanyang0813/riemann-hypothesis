module

public import Mathlib.Analysis.Complex.Norm
public import Development.AbelianVarietyTheory.Definitions.Foundations.PetIPSmulRight
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Shift
public import Mathlib.Analysis.Calculus.Deriv.ZPow
public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.NumberTheory.ModularForms.EisensteinSeries.Summable
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.Newform
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SecondDifferenceInvPowBound, Development.AbelianVarietyTheory.Proofs.FoundationProofs.SummableRegularizedEisensteinLatticeTerm

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SecondDifferenceInvPowBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.SecondDifferenceInvPowBound", "h": "module\n\npublic import Mathlib.Analysis.Complex.Norm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.PetIPSmulRight\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.Newform\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Shift\npublic import Mathlib.Analysis.Calculus.Deriv.ZPow\npublic import Mathlib.Analysis.Calculus.MeanValue\nimport Mathlib.NumberTheory.ModularForms.CongruenceSubgroups\n\n"}
section -- clump:auto
@[expose] public section

open UpperHalfPlane Complex MeasureTheory CongruenceSubgroup GlobalTheory.EisM UpperTheory.V.Af Filter Topology
open scoped MatrixGroups Real ComplexConjugate Manifold ModularForm

namespace GlobalTheory.EisM.SecondDiff

lemma half_le_norm {z w : ℂ} (hw : ‖w - z‖ ≤ ‖z‖ / 2) : ‖z‖ / 2 ≤ ‖w‖ := by
  have h := norm_sub_norm_le z w
  rw [norm_sub_rev] at h
  linarith

lemma ne_zero_of_near {z w : ℂ} (hz : z ≠ 0) (hw : ‖w - z‖ ≤ ‖z‖ / 2) : w ≠ 0 := by
  have hz' : 0 < ‖z‖ := norm_pos_iff.mpr hz
  have h := half_le_norm hw
  intro h0
  rw [h0, norm_zero] at h
  linarith

lemma zpow_neg_lip (n : ℕ) {z u v : ℂ} (hz : z ≠ 0)
    (hu : ‖u - z‖ ≤ ‖z‖ / 2) (hv : ‖v - z‖ ≤ ‖z‖ / 2) :
    ‖u ^ (-(n:ℤ)) - v ^ (-(n:ℤ))‖ ≤ n * (2 / ‖z‖) ^ (n + 1) * ‖u - v‖ := by
  have hz' : 0 < ‖z‖ := norm_pos_iff.mpr hz
  have hmem : ∀ w ∈ Metric.closedBall z (‖z‖ / 2), ‖w - z‖ ≤ ‖z‖ / 2 := by
    intro w hw; simpa [Metric.mem_closedBall, dist_eq_norm] using hw
  have hd : ∀ w ∈ Metric.closedBall z (‖z‖ / 2), HasDerivAt (fun x : ℂ => x ^ (-(n:ℤ)))
      (((-(n:ℤ) : ℤ) : ℂ) * w ^ (-(n:ℤ) - 1)) w :=
    fun w hw => hasDerivAt_zpow _ w (Or.inl (ne_zero_of_near hz (hmem w hw)))
  have key := Convex.norm_image_sub_le_of_norm_deriv_le (f := fun x : ℂ => x ^ (-(n:ℤ)))
    (s := Metric.closedBall z (‖z‖ / 2)) (x := v) (y := u) (C := n * (2 / ‖z‖) ^ (n + 1))
    (fun w hw => (hd w hw).differentiableAt)
    (fun w hw => by
      rw [(hd w hw).deriv]
      have hw' : ‖z‖ / 2 ≤ ‖w‖ := half_le_norm (hmem w hw)
      have hwpos : 0 < ‖w‖ := by linarith
      rw [norm_mul, norm_zpow]
      have e1 : ‖(((-(n:ℤ)) : ℤ) : ℂ)‖ = n := by simp
      have e2 : -(n:ℤ) - 1 = -((n + 1 : ℕ) : ℤ) := by push_cast; ring
      rw [e1, e2, zpow_neg, zpow_natCast, ← inv_div, inv_pow]
      gcongr)
    (convex_closedBall z _)
    (by simpa [Metric.mem_closedBall, dist_eq_norm] using hv)
    (by simpa [Metric.mem_closedBall, dist_eq_norm] using hu)
  simpa using key

theorem second_diff_inv_pow : ∀ j : ℕ, ∃ C : ℝ, ∀ z a b : ℂ, z ≠ 0 → 4 * ‖a‖ ≤ ‖z‖ → 4 * ‖b‖ ≤ ‖z‖ →
    ‖(z ^ j)⁻¹ - ((z + a) ^ j)⁻¹ - ((z + b) ^ j)⁻¹ + ((z + a + b) ^ j)⁻¹‖
      ≤ C * ‖a‖ * ‖b‖ / ‖z‖ ^ (j + 2) := by
  intro j
  refine ⟨j * (j + 1) * 2 ^ (j + 2), ?_⟩
  intro z a b hz ha hb
  have hz' : 0 < ‖z‖ := norm_pos_iff.mpr hz
  set g : ℂ → ℂ := fun w => w ^ (-(j:ℤ)) - (w + a) ^ (-(j:ℤ)) with hg
  have hmem : ∀ w ∈ Metric.closedBall z (‖z‖ / 4), ‖w - z‖ ≤ ‖z‖ / 2 ∧ ‖w + a - z‖ ≤ ‖z‖ / 2 := by
    intro w hw
    have h : ‖w - z‖ ≤ ‖z‖ / 4 := by simpa [Metric.mem_closedBall, dist_eq_norm] using hw
    refine ⟨by linarith, ?_⟩
    calc ‖w + a - z‖ = ‖(w - z) + a‖ := by ring_nf
      _ ≤ ‖w - z‖ + ‖a‖ := norm_add_le _ _
      _ ≤ ‖z‖ / 2 := by linarith
  have hd : ∀ w ∈ Metric.closedBall z (‖z‖ / 4), HasDerivAt g
      ((((-(j:ℤ)) : ℤ) : ℂ) * (w ^ (-(j:ℤ) - 1) - (w + a) ^ (-(j:ℤ) - 1))) w := by
    intro w hw
    obtain ⟨h1, h2⟩ := hmem w hw
    have d1 := hasDerivAt_zpow (-(j:ℤ)) w (Or.inl (ne_zero_of_near hz h1))
    have d2 := (hasDerivAt_zpow (-(j:ℤ)) (w + a) (Or.inl (ne_zero_of_near hz h2))).comp_add_const w a
    rw [mul_sub]
    exact d1.sub d2
  have key := Convex.norm_image_sub_le_of_norm_deriv_le (f := g)
    (s := Metric.closedBall z (‖z‖ / 4)) (x := z) (y := z + b)
    (C := j * ((j + 1 : ℕ) * (2 / ‖z‖) ^ ((j + 1 : ℕ) + 1) * ‖a‖))
    (fun w hw => (hd w hw).differentiableAt)
    (fun w hw => by
      rw [(hd w hw).deriv, norm_mul]
      obtain ⟨h1, h2⟩ := hmem w hw
      have e1 : ‖(((-(j:ℤ)) : ℤ) : ℂ)‖ = j := by simp
      have e2 : -(j:ℤ) - 1 = -((j + 1 : ℕ) : ℤ) := by push_cast; ring
      rw [e1, e2]
      have L := zpow_neg_lip (j + 1) hz h1 h2
      have e3 : ‖w - (w + a)‖ = ‖a‖ := by rw [sub_add_cancel_left, norm_neg]
      rw [e3] at L
      gcongr)
    (convex_closedBall z _)
    (by simp [Metric.mem_closedBall, dist_eq_norm]; positivity)
    (by simpa [Metric.mem_closedBall, dist_eq_norm] using (by linarith : ‖b‖ ≤ ‖z‖ / 4))
  have eq : (z ^ j)⁻¹ - ((z + a) ^ j)⁻¹ - ((z + b) ^ j)⁻¹ + ((z + a + b) ^ j)⁻¹ = -(g (z + b) - g z) := by
    simp only [hg, zpow_neg, zpow_natCast]
    rw [show z + b + a = z + a + b by ring]
    ring
  rw [eq, norm_neg]
  refine key.trans (le_of_eq ?_)
  rw [add_sub_cancel_left, div_pow]
  push_cast
  field_simp

end GlobalTheory.EisM.SecondDiff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SecondDifferenceInvPowBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SummableRegularizedEisensteinLatticeTerm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.SummableRegularizedEisensteinLatticeTerm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.PetIPSmulRight\npublic import Mathlib.Analysis.Complex.Norm\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SecondDifferenceInvPowBound\npublic import Mathlib.NumberTheory.ModularForms.EisensteinSeries.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.Newform\n\n"}
section -- clump:auto
@[expose] public section

open UpperHalfPlane Complex MeasureTheory CongruenceSubgroup GlobalTheory.EisM UpperTheory.V.Af Filter Topology
open scoped MatrixGroups Real ComplexConjugate Manifold ModularForm

namespace GlobalTheory.LatSumZ

theorem difdif (L : ℕ) (hL : 0 < L) (v : ℤ × ℤ) (F : ℤ × ℤ → ℂ) (x : ℤ × ℤ) :
    dif L v (dif L v F) x = ((L : ℂ) ^ 2)⁻¹ * ∑ r' ∈ Finset.range L, ∑ r ∈ Finset.range L,
      (F x - F (x + (r : ℤ) • v) - F (x + (r' : ℤ) • v) + F (x + (r' : ℤ) • v + (r : ℤ) • v)) := by
  have hL' : (L : ℂ) ≠ 0 := by exact_mod_cast hL.ne'
  set S := ∑ r ∈ Finset.range L, F (x + (r : ℤ) • v)
  set T := ∑ r' ∈ Finset.range L, ∑ r ∈ Finset.range L, F (x + (r' : ℤ) • v + (r : ℤ) • v)
  have e : ∑ r' ∈ Finset.range L, ∑ r ∈ Finset.range L,
      (F x - F (x + (r : ℤ) • v) - F (x + (r' : ℤ) • v) + F (x + (r' : ℤ) • v + (r : ℤ) • v))
      = (L : ℂ) * L * F x - L * S - L * S + T := by
    simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_range, nsmul_eq_mul, S, T]
    rw [← Finset.mul_sum]; ring
  have e2 : ∑ r' ∈ Finset.range L, (F (x + (r' : ℤ) • v) - (L : ℂ)⁻¹ * ∑ r ∈ Finset.range L, F (x + (r' : ℤ) • v + (r : ℤ) • v))
      = S - (L : ℂ)⁻¹ * T := by
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  rw [e]
  simp only [dif]
  rw [e2]
  field_simp
  ring

theorem trm_zero (j : ℕ) (y : ℂ) : trm j 0 y = (y ^ j)⁻¹ := by
  simp [trm]

theorem lin_shift (τ : ℍ) (x v : ℤ × ℤ) (r : ℕ) :
    (((x + (r : ℤ) • v).1 : ℤ) : ℂ) * (τ : ℂ) + (((x + (r : ℤ) • v).2 : ℤ) : ℂ)
      = ((x.1 : ℂ) * τ + x.2) + (r : ℂ) * ((v.1 : ℂ) * τ + v.2) := by
  simp only [Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  push_cast; ring

theorem difdif_bound (j L : ℕ) (v : ℤ × ℤ) (τ : ℍ) (hj : 1 ≤ j) (hL : 0 < L) (C : ℝ)
    (hC : ∀ z a b : ℂ, z ≠ 0 → 4 * ‖a‖ ≤ ‖z‖ → 4 * ‖b‖ ≤ ‖z‖ →
      ‖(z ^ j)⁻¹ - ((z + a) ^ j)⁻¹ - ((z + b) ^ j)⁻¹ + ((z + a + b) ^ j)⁻¹‖ ≤ C * ‖a‖ * ‖b‖ / ‖z‖ ^ (j + 2))
    (x : ℤ × ℤ)
    (h1 : 1 ≤ ‖(x.1 : ℂ) * τ + x.2‖) (h4 : 4 * (L * ‖(v.1 : ℂ) * τ + v.2‖) ≤ ‖(x.1 : ℂ) * τ + x.2‖) :
    ‖dif L v (dif L v (fun y : ℤ × ℤ => trm j 0 ((y.1 : ℂ) * τ + y.2))) x‖
      ≤ max C 0 * (L * ‖(v.1 : ℂ) * τ + v.2‖) ^ 2 / ‖(x.1 : ℂ) * τ + x.2‖ ^ 3 := by
  set z : ℂ := (x.1 : ℂ) * τ + x.2 with hz
  set w : ℂ := (v.1 : ℂ) * τ + v.2 with hw
  set B : ℝ := max C 0 * (L * ‖w‖) ^ 2 / ‖z‖ ^ 3 with hB
  have hz0 : z ≠ 0 := by
    intro h; rw [h, norm_zero] at h1; linarith
  have hzpos : 0 < ‖z‖ := norm_pos_iff.mpr hz0
  have hLpos : (0 : ℝ) < L := by exact_mod_cast hL
  have hterm : ∀ r' ∈ Finset.range L, ∀ r ∈ Finset.range L,
      ‖trm j 0 z - trm j 0 (z + (r : ℂ) * w) - trm j 0 (z + (r' : ℂ) * w)
        + trm j 0 (z + (r' : ℂ) * w + (r : ℂ) * w)‖ ≤ B := by
    intro r' hr' r hr
    have hr'L : (r' : ℝ) ≤ L := by exact_mod_cast (Finset.mem_range.mp hr').le
    have hrL : (r : ℝ) ≤ L := by exact_mod_cast (Finset.mem_range.mp hr).le
    have na : ‖(r' : ℂ) * w‖ ≤ L * ‖w‖ := by
      rw [norm_mul, Complex.norm_natCast]; exact mul_le_mul_of_nonneg_right hr'L (norm_nonneg _)
    have nb : ‖(r : ℂ) * w‖ ≤ L * ‖w‖ := by
      rw [norm_mul, Complex.norm_natCast]; exact mul_le_mul_of_nonneg_right hrL (norm_nonneg _)
    have key := hC z ((r' : ℂ) * w) ((r : ℂ) * w) hz0 (by linarith) (by linarith)
    simp only [trm_zero]
    have eq : (z ^ j)⁻¹ - ((z + (r : ℂ) * w) ^ j)⁻¹ - ((z + (r' : ℂ) * w) ^ j)⁻¹
        + ((z + (r' : ℂ) * w + (r : ℂ) * w) ^ j)⁻¹
        = (z ^ j)⁻¹ - ((z + (r' : ℂ) * w) ^ j)⁻¹ - ((z + (r : ℂ) * w) ^ j)⁻¹
        + ((z + (r' : ℂ) * w + (r : ℂ) * w) ^ j)⁻¹ := by ring
    rw [eq]
    refine key.trans ?_
    have hpow : ‖z‖ ^ 3 ≤ ‖z‖ ^ (j + 2) := pow_le_pow_right₀ h1 (by omega)
    have hp3 : 0 < ‖z‖ ^ 3 := by positivity
    have hM : 0 ≤ max C 0 := le_max_right _ _
    calc C * ‖(r' : ℂ) * w‖ * ‖(r : ℂ) * w‖ / ‖z‖ ^ (j + 2)
        ≤ max C 0 * ‖(r' : ℂ) * w‖ * ‖(r : ℂ) * w‖ / ‖z‖ ^ (j + 2) := by
          gcongr; exact le_max_left _ _
      _ ≤ max C 0 * (L * ‖w‖) * (L * ‖w‖) / ‖z‖ ^ (j + 2) := by gcongr
      _ ≤ max C 0 * (L * ‖w‖) * (L * ‖w‖) / ‖z‖ ^ 3 := by
          apply div_le_div_of_nonneg_left (by positivity) hp3 hpow
      _ = B := by rw [hB]; ring
  rw [difdif L hL v _ x]
  simp only [lin_shift τ]
  rw [← hz, ← hw]
  calc ‖((L : ℂ) ^ 2)⁻¹ * ∑ r' ∈ Finset.range L, ∑ r ∈ Finset.range L,
        (trm j 0 z - trm j 0 (z + (r : ℂ) * w) - trm j 0 (z + (r' : ℂ) * w)
          + trm j 0 (z + (r' : ℂ) * w + (r : ℂ) * w))‖
      ≤ ((L : ℝ) ^ 2)⁻¹ * ∑ r' ∈ Finset.range L, ∑ r ∈ Finset.range L, B := by
        rw [norm_mul, norm_inv, norm_pow, Complex.norm_natCast]
        gcongr
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun r' hr' => ?_)
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun r hr => hterm r' hr' r hr)
    _ = B := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        field_simp

theorem latsum_summable : ∀ (j L : ℕ) (v : ℤ × ℤ) (τ : ℍ), 1 ≤ j → 0 < L →
    Summable fun x => ‖dif L v (dif L v (fun y : ℤ × ℤ => trm j 0 ((y.1 : ℂ) * τ + y.2))) x‖ := by
  intro j L v τ hj hL
  obtain ⟨C, hC⟩ := _root_.GlobalTheory.EisM.SecondDiff.second_diff_inv_pow j
  set w : ℂ := (v.1 : ℂ) * τ + v.2 with hw
  set R : ℝ := max (4 * (L * ‖w‖)) 1 with hR
  have hrτ : 0 < EisensteinSeries.r τ := EisensteinSeries.r_pos τ
  set M : ℝ := R / EisensteinSeries.r τ + 1 with hM
  set K : ℝ := max C 0 * (L * ‖w‖) ^ 2 with hK
  have hK0 : 0 ≤ K := by positivity
  rw [← (finTwoArrowEquiv ℤ).summable_iff]
  have hs : Summable fun y : Fin 2 → ℤ => K * (EisensteinSeries.r τ ^ 3)⁻¹ * ‖y‖ ^ (-(3 : ℝ)) :=
    (EisensteinSeries.summable_one_div_norm_rpow (by norm_num : (2 : ℝ) < 3)).mul_left _
  refine Summable.of_norm_bounded_eventually hs ?_
  have hev : ∀ᶠ y : Fin 2 → ℤ in cofinite, M ≤ ‖y‖ := by
    rw [← cocompact_eq_cofinite]
    exact tendsto_norm_cocompact_atTop.eventually_ge_atTop M
  filter_upwards [hev] with y hy
  have hR1 : 1 ≤ R := le_max_right _ _
  have hMpos : 0 < M := by positivity
  have hy0 : y ≠ 0 := by
    intro h; rw [h, norm_zero] at hy; linarith
  have hlow := EisensteinSeries.r_mul_max_le τ hy0
  have hRle : R ≤ EisensteinSeries.r τ * ‖y‖ := by
    have : EisensteinSeries.r τ * M ≤ EisensteinSeries.r τ * ‖y‖ := mul_le_mul_of_nonneg_left hy hrτ.le
    have h2 : EisensteinSeries.r τ * M = R + EisensteinSeries.r τ := by
      rw [hM]; field_simp
    linarith
  have hxe : (((finTwoArrowEquiv ℤ y).1 : ℤ) : ℂ) * (τ : ℂ) + (((finTwoArrowEquiv ℤ y).2 : ℤ) : ℂ)
      = (y 0 : ℂ) * τ + y 1 := by simp
  have hzR : R ≤ ‖((finTwoArrowEquiv ℤ y).1 : ℂ) * τ + ((finTwoArrowEquiv ℤ y).2 : ℂ)‖ := by
    rw [hxe]; linarith
  have h1 : 1 ≤ ‖((finTwoArrowEquiv ℤ y).1 : ℂ) * τ + ((finTwoArrowEquiv ℤ y).2 : ℂ)‖ :=
    le_trans (le_max_right _ _) hzR
  have h4 : 4 * (L * ‖w‖) ≤ ‖((finTwoArrowEquiv ℤ y).1 : ℂ) * τ + ((finTwoArrowEquiv ℤ y).2 : ℂ)‖ :=
    le_trans (le_max_left _ _) hzR
  have hb := difdif_bound j L v τ hj hL C hC (finTwoArrowEquiv ℤ y) h1 h4
  rw [Function.comp_apply, norm_norm]
  refine hb.trans ?_
  rw [hxe] at h1 ⊢
  have hypos : 0 < ‖y‖ := norm_pos_iff.mpr hy0
  have hprod : 0 < EisensteinSeries.r τ * ‖y‖ := mul_pos hrτ hypos
  have hrp : ‖y‖ ^ (-(3 : ℝ)) = (‖y‖ ^ 3)⁻¹ := by
    rw [Real.rpow_neg (norm_nonneg _), show (3 : ℝ) = ((3 : ℕ) : ℝ) by norm_num, Real.rpow_natCast]
  rw [hrp, ← hw]
  calc max C 0 * (L * ‖w‖) ^ 2 / ‖(y 0 : ℂ) * τ + y 1‖ ^ 3
      ≤ K / (EisensteinSeries.r τ * ‖y‖) ^ 3 := by
        rw [hK]
        apply div_le_div_of_nonneg_left (by positivity) (by positivity)
        exact pow_le_pow_left₀ hprod.le hlow 3
    _ = K * (EisensteinSeries.r τ ^ 3)⁻¹ * (‖y‖ ^ 3)⁻¹ := by
        rw [mul_pow]; field_simp

end GlobalTheory.LatSumZ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SummableRegularizedEisensteinLatticeTerm =====
