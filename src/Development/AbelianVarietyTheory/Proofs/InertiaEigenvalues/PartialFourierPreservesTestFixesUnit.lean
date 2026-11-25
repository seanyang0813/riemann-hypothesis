module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch
public import Mathlib.Analysis.Normed.Ring.Ultra
public import Mathlib.Analysis.Normed.Group.Ultra
public import Mathlib.Analysis.Normed.Module.FiniteDimension
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLocallyConstantPartialFourierGLBlock
public import Mathlib.Analysis.Normed.Field.ProperSpace
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Integral.Bochner.Set
public import Mathlib.MeasureTheory.Integral.Pi
public import Mathlib.FieldTheory.Galois.Basic
public import Mathlib.RingTheory.Trace.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNhdsZeroTranslationInvariantOfLocallyConst
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasCompactSupportPartialFourierGLBlock
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.UniformSpace.Matrix
import Mathlib.Topology.UniformSpace.Uniformizable
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PsiKMulNLEqOneOnIntegralLattice

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralTraceUnitUnramifiedQuadratic, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsTestUnitIndicatorHermitianBlock, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierGLBlockUnitIndicator, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockHasCompactSupport, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockIsLocallyConstant, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockUnitIndicator, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitIndicatorGLBlockIsLocallyConstantCompactSupp, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedQuadraticTraceEqAddStar, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierPreservesTestFixesUnit

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralTraceUnitUnramifiedQuadratic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralTraceUnitUnramifiedQuadratic", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Ring.Ultra\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Group.Ultra\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory.TraceUnit

section Ultra
variable {K : Type} [NormedField K] [IsUltrametricDist K]

theorem norm_sub_le_max_of_ultra (x y : K) : ‖x - y‖ ≤ max ‖x‖ ‖y‖ := by
  simpa [sub_eq_add_neg, norm_neg] using IsUltrametricDist.norm_add_le_max x (-y)

theorem norm_sq_sub_sq_le {x y : K} (hx : ‖x‖ ≤ 1) (hy : ‖y‖ ≤ 1) :
    ‖x ^ 2 - y ^ 2‖ ≤ ‖x - y‖ := by
  have h1 : x ^ 2 - y ^ 2 = (x - y) * (x + y) := by ring
  rw [h1, norm_mul]
  have h2 : ‖x + y‖ ≤ 1 := (IsUltrametricDist.norm_add_le_max x y).trans (max_le hx hy)
  calc ‖x - y‖ * ‖x + y‖ ≤ ‖x - y‖ * 1 := mul_le_mul_of_nonneg_left h2 (norm_nonneg _)
    _ = ‖x - y‖ := mul_one _

theorem norm_pow_two_pow_sub_le {x y : K} (hx : ‖x‖ ≤ 1) (hy : ‖y‖ ≤ 1) (k : ℕ) :
    ‖x ^ 2 ^ k - y ^ 2 ^ k‖ ≤ ‖x - y‖ := by
  induction k with
  | zero => simp
  | succ k ih =>
    have e : ∀ z : K, z ^ 2 ^ (k + 1) = (z ^ 2 ^ k) ^ 2 := fun z => by rw [pow_succ, pow_mul]
    rw [e, e]
    exact (norm_sq_sub_sq_le (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hx)
      (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hy)).trans ih

theorem norm_sub_lt_one_of_sq {x y : K} (h2 : ‖(2 : K)‖ < 1) (hx : ‖x‖ ≤ 1) (hy : ‖y‖ ≤ 1)
    (h : ‖x ^ 2 - y ^ 2‖ < 1) : ‖x - y‖ < 1 := by
  by_contra hc
  push_neg at hc
  have hle : ‖x - y‖ ≤ 1 := (norm_sub_le_max_of_ultra x y).trans (max_le hx hy)
  have heq : ‖x - y‖ = 1 := le_antisymm hle hc
  have e : x ^ 2 - y ^ 2 = (x - y) ^ 2 + 2 * y * (x - y) := by ring
  have hA : ‖(x - y) ^ 2‖ = 1 := by rw [norm_pow, heq, one_pow]
  have hB : ‖2 * y * (x - y)‖ < 1 := by
    rw [norm_mul, norm_mul, heq, mul_one]
    calc ‖(2 : K)‖ * ‖y‖ ≤ ‖(2 : K)‖ * 1 := mul_le_mul_of_nonneg_left hy (norm_nonneg _)
      _ < 1 := by rw [mul_one]; exact h2
  have h3 : ‖(x - y) ^ 2 + 2 * y * (x - y)‖ = 1 := by
    rw [IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (by rw [hA]; exact hB.ne'), hA]
    exact max_eq_left hB.le
  rw [e, h3] at h
  exact lt_irrefl _ h

theorem norm_sub_lt_one_of_pow {x y : K} (h2 : ‖(2 : K)‖ < 1) (hx : ‖x‖ ≤ 1) (hy : ‖y‖ ≤ 1) (k : ℕ)
    (h : ‖x ^ 2 ^ k - y ^ 2 ^ k‖ < 1) : ‖x - y‖ < 1 := by
  induction k generalizing x y with
  | zero => simpa using h
  | succ k ih =>
    have e : ∀ z : K, z ^ 2 ^ (k + 1) = (z ^ 2) ^ 2 ^ k := fun z => by rw [pow_succ', pow_mul]
    rw [e, e] at h
    have hx2 : ‖x ^ 2‖ ≤ 1 := by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hx
    have hy2 : ‖y ^ 2‖ ≤ 1 := by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hy
    exact norm_sub_lt_one_of_sq h2 hx hy (ih hx2 hy2 h)

theorem exists_pow_close [ProperSpace K] {w : K} (hw : ‖w‖ ≤ 1) :
    ∃ i j : ℕ, i < j ∧ ‖w ^ 2 ^ i - w ^ 2 ^ j‖ < 1 := by
  have hmem : ∀ n : ℕ, w ^ 2 ^ n ∈ Metric.closedBall (0 : K) 1 := fun n => by
    rw [mem_closedBall_zero_iff, norm_pow]; exact pow_le_one₀ (norm_nonneg _) hw
  obtain ⟨a, -, φ, hφ, hlim⟩ := (isCompact_closedBall (0 : K) 1).tendsto_subseq hmem
  obtain ⟨N, hN⟩ := (Metric.tendsto_atTop.1 hlim) (1 / 2) (by norm_num)
  refine ⟨φ N, φ (N + 1), hφ (Nat.lt_succ_self N), ?_⟩
  have h1 : dist (w ^ 2 ^ φ N) a < 1 / 2 := hN N le_rfl
  have h2 : dist (w ^ 2 ^ φ (N + 1)) a < 1 / 2 := hN (N + 1) (Nat.le_succ N)
  rw [← dist_eq_norm]
  calc dist (w ^ 2 ^ φ N) (w ^ 2 ^ φ (N + 1)) ≤ dist (w ^ 2 ^ φ N) a + dist a (w ^ 2 ^ φ (N + 1)) :=
        dist_triangle _ _ _
    _ < 1 / 2 + 1 / 2 := add_lt_add h1 (by rw [dist_comm]; exact h2)
    _ = 1 := by norm_num

end Ultra

theorem exists_trace_unit : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E]
    [NormedAlgebra F E] [StarRing E] [Unram F E],
    (∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y) →
      ∃ u : E, ‖u‖ ≤ 1 ∧ ‖Algebra.trace F E u‖ = 1 := by
  intro F E _ _ _ _ hU htr
  haveI : IsUltrametricDist F := hU.ultraF
  haveI : IsUltrametricDist E := hU.ultraE
  haveI : LocallyCompactSpace F := hU.lcF
  haveI : LocallyCompactSpace E := hU.lcE
  haveI : CharZero F := hU.charZero
  haveI : ProperSpace F := ProperSpace.of_locallyCompactSpace F
  haveI : ProperSpace E := ProperSpace.of_locallyCompactSpace E
  have h20 : (2 : E) ≠ 0 := by
    rw [← map_ofNat (algebraMap F E) 2]
    exact (map_ne_zero _).2 two_ne_zero
  have h2le : ‖(2 : E)‖ ≤ 1 := by
    have := IsUltrametricDist.norm_natCast_le_one E 2
    simpa using this
  rcases h2le.lt_or_eq with h2 | h2
  swap
  ·
    refine ⟨2⁻¹, by rw [norm_inv, h2, inv_one], ?_⟩
    have hs : star (2⁻¹ : E) = 2⁻¹ := by
      have : (2⁻¹ : E) = algebraMap F E 2⁻¹ := by rw [map_inv₀, map_ofNat]
      rw [this, hU.star_fix]
    rw [← norm_algebraMap' E, htr, hs, ← two_mul, mul_inv_cancel₀ h20, norm_one]

  obtain ⟨y, hy⟩ := hU.star_ne
  have hyF : ∀ a : F, y - algebraMap F E a ≠ 0 := fun a h => hy (by rw [sub_eq_zero.1 h, hU.star_fix])
  have hcont : Continuous fun a : F => ‖y - algebraMap F E a‖ := by fun_prop
  obtain ⟨x, -, hx⟩ := (isCompact_closedBall (0 : F) ‖y‖).exists_isMinOn
    (Metric.nonempty_closedBall.2 (norm_nonneg _)) hcont.continuousOn
  have hmin : ∀ a : F, ‖y - algebraMap F E x‖ ≤ ‖y - algebraMap F E a‖ := by
    intro a
    have h0 : ‖y - algebraMap F E x‖ ≤ ‖y‖ := by
      have := isMinOn_iff.1 hx 0 (Metric.mem_closedBall_self (norm_nonneg y))
      simpa using this
    by_cases ha : ‖a‖ ≤ ‖y‖
    · exact isMinOn_iff.1 hx a (mem_closedBall_zero_iff.2 ha)
    · push_neg at ha
      have hm : ‖a‖ ≤ max ‖y‖ ‖y - algebraMap F E a‖ := by
        have := norm_sub_le_max_of_ultra y (y - algebraMap F E a)
        rwa [sub_sub_cancel, norm_algebraMap'] at this
      rcases le_max_iff.1 hm with h | h <;> linarith
  obtain ⟨t, ht⟩ := hU.unram (y - algebraMap F E x)
  have hd : 0 < ‖y - algebraMap F E x‖ := norm_pos_iff.2 (hyF x)
  have htE : algebraMap F E t ≠ 0 := by
    intro h0
    rw [← norm_algebraMap' E t, h0, norm_zero] at ht
    linarith
  set u := (y - algebraMap F E x) * (algebraMap F E t)⁻¹ with hu
  have hu1 : ‖u‖ = 1 := by
    rw [hu, norm_mul, norm_inv, norm_algebraMap', ← ht, mul_inv_cancel₀ hd.ne']
  have hfar : ∀ a : F, 1 ≤ ‖u - algebraMap F E a‖ := by
    intro a
    have e : u - algebraMap F E a = (y - algebraMap F E (x + t * a)) * (algebraMap F E t)⁻¹ := by
      rw [hu, map_add (f := _), map_mul]
      field_simp
      ring
    rw [e, norm_mul, norm_inv, norm_algebraMap', ← ht, le_mul_inv_iff₀ hd, one_mul]
    exact hmin _
  refine ⟨u, hu1.le, ?_⟩
  have hle : ‖Algebra.trace F E u‖ ≤ 1 := by
    rw [← norm_algebraMap' E, htr]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hu1.le (by rw [hU.norm_star]; exact hu1.le))
  refine le_antisymm hle (not_lt.1 fun hs => ?_)

  set n := u * star u with hn
  have hnn : star n = n := by rw [hn, star_mul, star_star, mul_comm]
  set v : F := -(Algebra.trace F E n / 2) with hvd
  have hv : algebraMap F E v = -n := by
    rw [hvd, map_neg, map_div₀, htr, hnn, map_ofNat]
    field_simp
    ring
  have hvn : ‖algebraMap F E v‖ ≤ 1 := by
    rw [hv, norm_neg, hn, norm_mul, hU.norm_star, hu1, one_mul]
  have hq : ‖u ^ 2 - algebraMap F E v‖ < 1 := by
    have e : u ^ 2 - algebraMap F E v = algebraMap F E (Algebra.trace F E u) * u := by
      rw [hv, htr, hn]; ring
    rw [e, norm_mul, norm_algebraMap', hu1, mul_one]
    exact hs
  obtain ⟨i, j, hij, hc⟩ := exists_pow_close hu1.le
  obtain ⟨m, rfl⟩ : ∃ m, j = i + (m + 1) := ⟨j - i - 1, by omega⟩
  have e1 : u ^ 2 ^ (i + (m + 1)) = (u ^ 2 ^ (m + 1)) ^ 2 ^ i := by
    rw [← pow_mul, ← pow_add, Nat.add_comm (m + 1) i]
  rw [e1] at hc
  have hpow1 : ‖u ^ 2 ^ (m + 1)‖ ≤ 1 := by rw [norm_pow, hu1, one_pow]
  have hA : ‖u - u ^ 2 ^ (m + 1)‖ < 1 := norm_sub_lt_one_of_pow h2 hu1.le hpow1 i hc
  have e2 : u ^ 2 ^ (m + 1) = (u ^ 2) ^ 2 ^ m := by rw [pow_succ', pow_mul]
  have hB : ‖(u ^ 2) ^ 2 ^ m - (algebraMap F E v) ^ 2 ^ m‖ < 1 :=
    (norm_pow_two_pow_sub_le (by rw [norm_pow, hu1, one_pow]) hvn m).trans_lt hq
  have hC : ‖u - algebraMap F E (v ^ 2 ^ m)‖ < 1 := by
    rw [map_pow]
    have e3 : u - (algebraMap F E v) ^ 2 ^ m =
        (u - u ^ 2 ^ (m + 1)) + ((u ^ 2) ^ 2 ^ m - (algebraMap F E v) ^ 2 ^ m) := by
      rw [e2]; ring
    rw [e3]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt hA hB)
  linarith [hfar (v ^ 2 ^ m)]

end GlobalTheory.TraceUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralTraceUnitUnramifiedQuadratic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsTestUnitIndicatorHermitianBlock =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsTestUnitIndicatorHermitianBlock", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Field.ProperSpace\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory.JR

theorem isTest_indicator_one_of_clopen_compact {X : Type} [TopologicalSpace X] {S : Set X} (hS : IsClopen S)
    (hK : IsCompact S) : IsTest (Set.indicator S (1 : X → ℂ)) := by
  refine ⟨?_, ?_⟩
  · rw [IsLocallyConstant.iff_eventually_eq]
    intro x
    by_cases hx : x ∈ S
    · filter_upwards [hS.isOpen.mem_nhds hx] with y hy
      simp [hx, hy]
    · filter_upwards [hS.isClosed.isOpen_compl.mem_nhds hx] with y hy
      rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem hx]
  · exact HasCompactSupport.intro' hK hS.isClosed fun x hx => Set.indicator_of_notMem hx _

theorem isTest_unitU (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [StarRing E]
    [IsUltrametricDist F] [LocallyCompactSpace F] [IsUltrametricDist E] [LocallyCompactSpace E] (r : ℕ)
    (hstar : ∀ y : E, ‖star y‖ = ‖y‖) : IsTest (unitU r F E) := by
  haveI : ProperSpace F := ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace F
  haveI : ProperSpace E := ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace E
  haveI : ContinuousStar E := ⟨(AddMonoidHomClass.isometry_of_norm (starAddEquiv (R := E)) hstar).continuous⟩
  have hF : {x : F | ‖x‖ ≤ 1} = Metric.closedBall 0 1 := by ext x; simp
  have hE : {x : E | ‖x‖ ≤ 1} = Metric.closedBall 0 1 := by ext x; simp
  have cF : IsClopen {x : F | ‖x‖ ≤ 1} := hF ▸ IsUltrametricDist.isClopen_closedBall _ one_ne_zero
  have cE : IsClopen {x : E | ‖x‖ ≤ 1} := hE ▸ IsUltrametricDist.isClopen_closedBall _ one_ne_zero
  have kF : IsCompact {x : F | ‖x‖ ≤ 1} := hF ▸ isCompact_closedBall _ _
  have kE : IsCompact {x : E | ‖x‖ ≤ 1} := hE ▸ isCompact_closedBall _ _
  have cV : IsClopen {v : Fin r → E | ∀ i, ‖v i‖ ≤ 1} := by
    rw [Set.ofPred_forall]
    exact isClopen_iInter_of_finite fun i => cE.preimage (continuous_apply i)
  have kV : IsCompact {v : Fin r → E | ∀ i, ‖v i‖ ≤ 1} := isCompact_pi_infinite fun _ => kE
  have cM : IsClopen {A : Matrix (Fin r) (Fin r) E | ∀ i j, ‖A i j‖ ≤ 1} := by
    rw [Set.ofPred_forall]
    exact isClopen_iInter_of_finite fun i => cV.preimage (continuous_apply i)
  have kM : IsCompact {A : Matrix (Fin r) (Fin r) E | ∀ i j, ‖A i j‖ ≤ 1} :=
    isCompact_pi_infinite (s := fun _ : Fin r => {v : Fin r → E | ∀ i, ‖v i‖ ≤ 1}) fun _ => kV
  have hcl : IsClosed ((selfAdjoint (Matrix (Fin r) (Fin r) E)) : Set (Matrix (Fin r) (Fin r) E)) :=
    isClosed_eq continuous_star continuous_id
  have cA : IsClopen {A : selfAdjoint (Matrix (Fin r) (Fin r) E) | ∀ i j, ‖A.1 i j‖ ≤ 1} :=
    cM.preimage continuous_subtype_val
  have kA : IsCompact {A : selfAdjoint (Matrix (Fin r) (Fin r) E) | ∀ i j, ‖A.1 i j‖ ≤ 1} :=
    hcl.isClosedEmbedding_subtypeVal.isCompact_preimage kM
  exact isTest_indicator_one_of_clopen_compact (cA.prod (cV.prod cF)) (kA.prod (kV.prod kF))

end GlobalTheory.JR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsTestUnitIndicatorHermitianBlock =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierGLBlockUnitIndicator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierGLBlockUnitIndicator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Group.Ultra\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Integral.Bochner.Set\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

noncomputable section

namespace GlobalTheory.JR.FourGUnit

variable {F : Type} [NontriviallyNormedField F]

theorem integral_ball_char {r : ℕ} [MeasurableSpace F] [BorelSpace F] [IsUltrametricDist F] [ProperSpace F]
    (μ : Measure F) [μ.IsAddHaarMeasure] (hvol : μ (Metric.closedBall 0 1) = 1) (ψ : AddChar F ℂ)
    (hψ : IsStdChar ψ) (v : Fin r → F) :
    ∫ x, {x : Fin r → F | ∀ i, ‖x i‖ ≤ 1}.indicator (fun x => ψ (x ⬝ᵥ v)) x ∂(Measure.pi fun _ => μ) =
      {x : Fin r → F | ∀ i, ‖x i‖ ≤ 1}.indicator 1 v := by
  set S : Set (Fin r → F) := {x | ∀ i, ‖x i‖ ≤ 1} with hSdef
  have hS : S = Set.univ.pi fun _ => Metric.closedBall (0 : F) 1 := by
    ext x; simp [S, Metric.mem_closedBall]
  have hSm : MeasurableSet S := hS ▸ MeasurableSet.univ_pi (fun _ => measurableSet_closedBall)
  by_cases hv : v ∈ S
  · rw [Set.indicator_of_mem hv, integral_indicator hSm,
      setIntegral_congr_fun hSm (g := fun _ => (1 : ℂ)) (fun x hx => ?_), setIntegral_const]
    · rw [Measure.real, hS, Measure.pi_pi]
      simp [hvol]
    · apply hψ.1
      rw [dotProduct]
      apply IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg zero_le_one
      intro i _
      rw [norm_mul]
      exact mul_le_one₀ (hx i) (norm_nonneg _) (hv i)
  · rw [Set.indicator_of_notMem hv]
    obtain ⟨i, hi⟩ : ∃ i, 1 < ‖v i‖ := by
      simp only [S, Set.mem_setOf_eq, not_forall, not_le] at hv; exact hv
    obtain ⟨x₀, hx₀, hx₀'⟩ := hψ.2
    have hvi : v i ≠ 0 := by
      intro h; rw [h, norm_zero] at hi; linarith
    set z₀ : Fin r → F := Pi.single i (x₀ * (v i)⁻¹) with hz₀def
    have hz₀ : z₀ ∈ S := by
      intro j
      by_cases hj : j = i
      · subst hj
        rw [hz₀def, Pi.single_eq_same]
        apply hx₀'
        rw [norm_inv]
        exact inv_lt_one_of_one_lt₀ hi
      · rw [hz₀def, Pi.single_eq_of_ne hj, norm_zero]; exact zero_le_one
    have hχ : ψ (z₀ ⬝ᵥ v) ≠ 1 := by
      rw [hz₀def, single_dotProduct, mul_assoc, inv_mul_cancel₀ hvi, mul_one]
      exact hx₀
    have hadd : ∀ a b : Fin r → F, a ∈ S → b ∈ S → a + b ∈ S := fun a b ha hb i =>
      (IsUltrametricDist.norm_add_le_max _ _).trans (max_le (ha i) (hb i))
    have key : ∀ z, S.indicator (fun x => ψ (x ⬝ᵥ v)) (z + z₀) =
        S.indicator (fun x => ψ (x ⬝ᵥ v)) z * ψ (z₀ ⬝ᵥ v) := by
      intro z
      by_cases hz : z ∈ S
      · rw [Set.indicator_of_mem (hadd _ _ hz hz₀), Set.indicator_of_mem hz, add_dotProduct,
          AddChar.map_add_eq_mul]
      · have hneg : -z₀ ∈ S := fun j => by rw [Pi.neg_apply, norm_neg]; exact hz₀ j
        have : z + z₀ ∉ S := fun h => hz (by simpa using hadd _ _ h hneg)
        rw [Set.indicator_of_notMem this, Set.indicator_of_notMem hz, zero_mul]
    have h := integral_add_right_eq_self (μ := Measure.pi fun _ : Fin r => μ)
      (fun z => S.indicator (fun x => ψ (x ⬝ᵥ v)) z) z₀
    simp only [key, integral_mul_const] at h
    have h2 : (∫ z, S.indicator (fun x => ψ (x ⬝ᵥ v)) z ∂(Measure.pi fun _ => μ)) * (ψ (z₀ ⬝ᵥ v) - 1) = 0 := by
      rw [mul_sub, mul_one, h, sub_self]
    rcases mul_eq_zero.mp h2 with h1 | h1
    · exact h1
    · exact absurd (sub_eq_zero.mp h1) hχ

end GlobalTheory.JR.FourGUnit

namespace GlobalTheory.JR


open FourGUnit in
theorem fourG_unitG : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E]
    [StarRing E] [Unram F E] (r : ℕ) (M : Meas r F E) (ψ : AddChar F ℂ), IsStdChar ψ →
    fourG M ψ (unitG r F) = unitG r F := by
  intro F E _ _ _ _ U r M ψ hψ
  letI := M.mF
  haveI := M.bF
  haveI := U.ultraF
  haveI := U.lcF
  haveI : ProperSpace F := ProperSpace.of_locallyCompactSpace F
  haveI := M.haarF
  funext Y
  obtain ⟨A, b, c, l⟩ := Y
  unfold fourG
  set S : Set (Fin r → F) := {x | ∀ i, ‖x i‖ ≤ 1} with hSdef
  set T : Set (Gl r F) := {Y | (∀ i j, ‖Y.1 i j‖ ≤ 1) ∧ (∀ i, ‖Y.2.1 i‖ ≤ 1) ∧ (∀ i, ‖Y.2.2.1 i‖ ≤ 1) ∧
    ‖Y.2.2.2‖ ≤ 1} with hTdef
  have hT : unitG r F = T.indicator 1 := rfl
  by_cases hP : (∀ i j, ‖A i j‖ ≤ 1) ∧ ‖l‖ ≤ 1
  · have hint : ∀ b' c' : Fin r → F, unitG r F (A, b', c', l) * ψ (c' ⬝ᵥ b + c ⬝ᵥ b') =
        S.indicator (fun x => ψ (x ⬝ᵥ c)) b' * S.indicator (fun x => ψ (x ⬝ᵥ b)) c' := by
      intro b' c'
      by_cases hb' : b' ∈ S
      · by_cases hc' : c' ∈ S
        · rw [hT, Set.indicator_of_mem (show (A, b', c', l) ∈ T from ⟨hP.1, hb', hc', hP.2⟩),
            Set.indicator_of_mem hb', Set.indicator_of_mem hc', Pi.one_apply, one_mul,
            AddChar.map_add_eq_mul, dotProduct_comm c b', mul_comm]
        · rw [hT, Set.indicator_of_notMem (show (A, b', c', l) ∉ T from fun h => hc' h.2.2.1),
            Set.indicator_of_notMem hc', zero_mul, mul_zero]
      · rw [hT, Set.indicator_of_notMem (show (A, b', c', l) ∉ T from fun h => hb' h.2.1),
          Set.indicator_of_notMem hb', zero_mul, zero_mul]
    have hball : ∀ v : Fin r → F, ∫ x, S.indicator (fun x => ψ (x ⬝ᵥ v)) x ∂(Measure.pi fun _ => M.μF) =
        S.indicator 1 v := integral_ball_char M.μF M.volF ψ hψ
    simp_rw [hint, integral_const_mul, hball, integral_mul_const, hball]
    by_cases hb : b ∈ S
    · by_cases hc : c ∈ S
      · rw [hT, Set.indicator_of_mem (show (A, b, c, l) ∈ T from ⟨hP.1, hb, hc, hP.2⟩),
          Set.indicator_of_mem hb, Set.indicator_of_mem hc]
        simp
      · rw [hT, Set.indicator_of_notMem (show (A, b, c, l) ∉ T from fun h => hc h.2.2.1),
          Set.indicator_of_notMem hc, zero_mul]
    · rw [hT, Set.indicator_of_notMem (show (A, b, c, l) ∉ T from fun h => hb h.2.1),
        Set.indicator_of_notMem hb, mul_zero]
  · have h0 : ∀ b' c' : Fin r → F, unitG r F (A, b', c', l) * ψ (c' ⬝ᵥ b + c ⬝ᵥ b') = 0 := by
      intro b' c'
      rw [hT, Set.indicator_of_notMem (show (A, b', c', l) ∉ T from fun h => hP ⟨h.1, h.2.2.2⟩),
        zero_mul]
    simp_rw [h0, integral_zero]
    rw [hT, Set.indicator_of_notMem (show (A, b, c, l) ∉ T from fun h => hP ⟨h.1, h.2.2.2⟩)]

end GlobalTheory.JR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierGLBlockUnitIndicator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockHasCompactSupport =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockHasCompactSupport", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Matrix\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\npublic import Mathlib.MeasureTheory.Group.Integral\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory

theorem fourU_hasCompactSupport : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E] [StarRing E] [Unram F E] (r : ℕ) (M : Meas r F E) (ψ : AddChar F ℂ), IsStdChar ψ → (∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y) → ∀ f : Hn r F E → ℂ, IsTest f → (∃ U ∈ 𝓝 (0 : Hn r F E), ∀ X : Hn r F E, ∀ u ∈ U, f (X + u) = f X) → HasCompactSupport (fourU M ψ f) := by
  intro F E _ _ _ _ hUn r M ψ hψ htr f hf hloc
  obtain ⟨U, hU, hfU⟩ := hloc
  haveI : CharZero F := hUn.charZero
  haveI : LocallyCompactSpace E := hUn.lcE
  haveI : ProperSpace E := ProperSpace.of_locallyCompactSpace E
  letI := M.mE
  haveI := M.bE
  haveI := M.haarE
  obtain ⟨x₀, hx₀, -⟩ := hψ.2
  set a : E := algebraMap F E (x₀ / 2) with ha
  have htra : Algebra.trace F E a = x₀ := by
    apply (algebraMap F E).injective
    rw [htr a, ha, hUn.star_fix, ← map_add (f := _), add_halves]

  have hcont : Continuous (fun t : Fin r → E => ((0 : selfAdjoint (Matrix (Fin r) (Fin r) E)), t, (0 : F))) := by
    fun_prop
  have hpre : (fun t : Fin r → E => ((0 : selfAdjoint (Matrix (Fin r) (Fin r) E)), t, (0 : F))) ⁻¹' U ∈ 𝓝 (0 : Fin r → E) :=
    hcont.tendsto 0 hU
  obtain ⟨δ, hδ, hball⟩ := Metric.mem_nhds_iff.1 hpre

  have hzero : ∀ X : Hn r F E, ∀ i, ‖a‖ / δ < ‖X.2.1 i‖ → fourU M ψ f X = 0 := by
    intro X i hi
    have hbi : X.2.1 i ≠ 0 := by
      intro h; rw [h, norm_zero] at hi; exact absurd hi (not_lt.2 (by positivity))
    set t : Fin r → E := Pi.single i (star (a / X.2.1 i)) with ht
    have htn : ‖t‖ < δ := by
      rw [ht, Pi.norm_single, hUn.norm_star, norm_div]
      rw [div_lt_iff₀ (norm_pos_iff.2 hbi)]
      rw [div_lt_iff₀ hδ] at hi
      linarith
    have htU : ((0 : selfAdjoint (Matrix (Fin r) (Fin r) E)), t, (0 : F)) ∈ U :=
      hball (mem_ball_zero_iff.2 htn)
    have hst : star t ⬝ᵥ X.2.1 = a := by
      rw [ht, ← Pi.single_star, single_dotProduct, star_star, div_mul_cancel₀ _ hbi]
    have hshift : ∀ c, f (X.1, t + c, X.2.2) = f (X.1, c, X.2.2) := by
      intro c
      have := hfU (X.1, c, X.2.2) _ htU
      rw [← this]
      congr 1
      ext <;> simp [add_comm]
    have hchar : ∀ c : Fin r → E, ψ (Algebra.trace F E (star (t + c) ⬝ᵥ X.2.1)) =
        ψ x₀ * ψ (Algebra.trace F E (star c ⬝ᵥ X.2.1)) := by
      intro c
      rw [star_add, add_dotProduct, map_add (f := _), AddChar.map_add_eq_mul, hst, htra]
    have key : fourU M ψ f X = ψ x₀ * fourU M ψ f X := by
      simp only [fourU]
      calc ∫ c, f (X.1, c, X.2.2) * ψ (Algebra.trace F E (star c ⬝ᵥ X.2.1)) ∂(Measure.pi fun _ : Fin r => M.μE)
          = ∫ c, f (X.1, t + c, X.2.2) * ψ (Algebra.trace F E (star (t + c) ⬝ᵥ X.2.1)) ∂(Measure.pi fun _ : Fin r => M.μE) :=
            (integral_add_left_eq_self (fun c => f (X.1, c, X.2.2) * ψ (Algebra.trace F E (star c ⬝ᵥ X.2.1))) t).symm
        _ = ∫ c, ψ x₀ * (f (X.1, c, X.2.2) * ψ (Algebra.trace F E (star c ⬝ᵥ X.2.1))) ∂(Measure.pi fun _ : Fin r => M.μE) := by
            congr 1; funext c; rw [hshift, hchar]; ring
        _ = _ := integral_const_mul _ _
    have h1 : (1 - ψ x₀) * fourU M ψ f X = 0 := by rw [sub_mul, one_mul, ← key, sub_self]
    rcases mul_eq_zero.1 h1 with h | h
    · exact absurd (sub_eq_zero.1 h).symm hx₀
    · exact h

  have hzero2 : ∀ X : Hn r F E, (∀ c, f (X.1, c, X.2.2) = 0) → fourU M ψ f X = 0 := by
    intro X h
    simp [fourU, h]
  have hK : IsCompact ((Prod.fst '' tsupport f) ×ˢ (Metric.closedBall (0 : Fin r → E) (‖a‖ / δ) ×ˢ
      ((fun Y : Hn r F E => Y.2.2) '' tsupport f))) :=
    (hf.2.image continuous_fst).prod ((isCompact_closedBall _ _).prod (hf.2.image (by fun_prop)))
  refine HasCompactSupport.intro hK fun X hX => ?_
  by_contra hne
  apply hX
  refine ⟨?_, ?_, ?_⟩
  · by_contra h1
    exact hne (hzero2 X fun c => image_eq_zero_of_notMem_tsupport fun hc => h1 ⟨_, hc, rfl⟩)
  · rw [mem_closedBall_zero_iff]
    by_contra h2
    have hR : 0 ≤ ‖a‖ / δ := by positivity
    rw [pi_norm_le_iff_of_nonneg hR] at h2
    push_neg at h2
    obtain ⟨i, hi⟩ := h2
    exact hne (hzero X i hi)
  · by_contra h3
    exact hne (hzero2 X fun c => image_eq_zero_of_notMem_tsupport fun hc => h3 ⟨_, hc, rfl⟩)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockHasCompactSupport =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockIsLocallyConstant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockIsLocallyConstant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Group.Ultra\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory

theorem fourU_isLocallyConstant : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E]
    [NormedAlgebra F E] [StarRing E] [Unram F E] (r : ℕ) (M : Meas r F E) (ψ : AddChar F ℂ), IsStdChar ψ →
    (∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y) → ∀ f : Hn r F E → ℂ, IsTest f →
    (∃ U ∈ 𝓝 (0 : Hn r F E), ∀ X : Hn r F E, ∀ u ∈ U, f (X + u) = f X) → IsLocallyConstant (fourU M ψ f) := by
  intro F E _ _ _ _ hU r M ψ hψ htr f hf ⟨U, hU0, hUf⟩
  haveI : IsUltrametricDist E := Unram.ultraE (F := F)

  have htr1 : ∀ d : E, ‖d‖ ≤ 1 → ψ (Algebra.trace F E d) = 1 := by
    intro d hd
    apply hψ.1
    have h1 : ‖algebraMap F E (Algebra.trace F E d)‖ ≤ 1 := by
      rw [htr]
      refine (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hd ?_)
      rw [Unram.norm_star (F := F)]; exact hd
    rwa [norm_algebraMap'] at h1

  obtain ⟨R, hR⟩ := (Metric.isBounded_iff_subset_closedBall (0 : Fin r → E)).1
    ((hf.2.isCompact.image (continuous_fst.comp continuous_snd)).isBounded)
  set R' : ℝ := max R 1 with hR'
  have hR'pos : 0 < R' := lt_of_lt_of_le one_pos (le_max_right _ _)
  rw [IsLocallyConstant.iff_eventually_eq]
  intro X₀
  have hcont : Continuous fun X : Hn r F E => ((X.1 - X₀.1, (0 : Fin r → E), X.2.2 - X₀.2.2) : Hn r F E) :=
    (continuous_fst.sub continuous_const).prodMk (continuous_const.prodMk
      ((continuous_snd.comp continuous_snd).sub continuous_const))
  have hV1 : ∀ᶠ X in 𝓝 X₀, ((X.1 - X₀.1, (0 : Fin r → E), X.2.2 - X₀.2.2) : Hn r F E) ∈ U := by
    have : ((X₀.1 - X₀.1, (0 : Fin r → E), X₀.2.2 - X₀.2.2) : Hn r F E) = 0 := by
      ext <;> simp
    exact hcont.continuousAt.preimage_mem_nhds (by rw [this]; exact hU0)
  have hV2 : ∀ᶠ X in 𝓝 X₀, X.2.1 ∈ Metric.closedBall X₀.2.1 (1 / R') :=
    (continuous_fst.comp continuous_snd).continuousAt.preimage_mem_nhds
      (Metric.closedBall_mem_nhds _ (by positivity))
  filter_upwards [hV1, hV2] with X hX1 hX2
  unfold fourU
  congr 1
  funext c
  have hfe : f (X.1, c, X.2.2) = f (X₀.1, c, X₀.2.2) := by
    have := hUf (X₀.1, c, X₀.2.2) _ hX1
    rw [← this]; congr 1; ext <;> simp
  rw [hfe]
  by_cases h0 : f (X₀.1, c, X₀.2.2) = 0
  · rw [h0, zero_mul, zero_mul]
  congr 1
  have hc : ‖c‖ ≤ R := by
    have hmem : c ∈ (fun X : Hn r F E => X.2.1) '' tsupport f :=
      ⟨(X₀.1, c, X₀.2.2), subset_tsupport _ h0, rfl⟩
    simpa using hR hmem
  have hs : ‖star c ⬝ᵥ (X.2.1 - X₀.2.1)‖ ≤ 1 := by
    have hd : ‖X.2.1 - X₀.2.1‖ ≤ 1 / R' := by rw [← dist_eq_norm]; exact hX2
    unfold dotProduct
    refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg zero_le_one fun i _ => ?_
    rw [norm_mul, Pi.star_apply, Unram.norm_star (F := F)]
    have h1 : ‖c i‖ ≤ R' := (norm_le_pi_norm c i).trans (hc.trans (le_max_left _ _))
    have h2 : ‖(X.2.1 - X₀.2.1) i‖ ≤ 1 / R' := (norm_le_pi_norm _ i).trans hd
    calc ‖c i‖ * ‖(X.2.1 - X₀.2.1) i‖ ≤ R' * (1 / R') :=
          mul_le_mul h1 h2 (norm_nonneg _) hR'pos.le
      _ = 1 := by field_simp
  have hsplit : star c ⬝ᵥ X.2.1 = star c ⬝ᵥ X₀.2.1 + star c ⬝ᵥ (X.2.1 - X₀.2.1) := by
    rw [dotProduct_sub]; ring
  rw [hsplit, map_add (f := _), AddChar.map_add_eq_mul, htr1 _ hs, mul_one]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockIsLocallyConstant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockUnitIndicator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockUnitIndicator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Normed.Group.Ultra\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Integral.Bochner.Set\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

noncomputable section
namespace GlobalTheory.JR.FourUnit

theorem integral_indicator_char_eq_zero {G : Type} [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G]
    [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [μ.IsAddHaarMeasure] (S : Set G) (φ : G → ℂ)
    (hφ : ∀ a b, φ (a + b) = φ a * φ b) (t : G) (hS : ∀ z, t + z ∈ S ↔ z ∈ S) (ht : φ t ≠ 1) :
    ∫ z, S.indicator φ z ∂μ = 0 := by
  have key : ∀ z, S.indicator φ (t + z) = φ t * S.indicator φ z := by
    intro z
    by_cases hz : z ∈ S
    · rw [Set.indicator_of_mem ((hS z).2 hz), Set.indicator_of_mem hz, hφ]
    · rw [Set.indicator_of_notMem (fun h => hz ((hS z).1 h)), Set.indicator_of_notMem hz, mul_zero]
  have h := integral_add_left_eq_self (μ := μ) (S.indicator φ) t
  simp_rw [key, integral_const_mul] at h
  have h2 : (φ t - 1) * ∫ z, S.indicator φ z ∂μ = 0 := by rw [sub_mul, h, one_mul, sub_self]
  rcases mul_eq_zero.1 h2 with h3 | h3
  · exact absurd (sub_eq_zero.1 h3) ht
  · exact h3

theorem addChar_sum {A : Type} [AddCommMonoid A] (ψ : AddChar A ℂ) {ι : Type} (s : Finset ι) (f : ι → A) :
    ψ (∑ i ∈ s, f i) = ∏ i ∈ s, ψ (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.prod_insert ha, AddChar.map_add_eq_mul, ih]

variable {F E : Type} [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E] [StarRing E]

theorem norm_trace_le (hU : Unram F E) (htr : ∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y) (w : E) :
    ‖Algebra.trace F E w‖ ≤ ‖w‖ := by
  haveI := hU.ultraE
  rw [← norm_algebraMap' E, htr]
  exact (IsUltrametricDist.norm_add_le_max _ _).trans (by rw [hU.norm_star]; simp)

theorem integral_ball_char (hU : Unram F E) [MeasurableSpace E] [BorelSpace E] (μ : Measure E) [μ.IsAddHaarMeasure]
    (hvol : μ (Metric.closedBall 0 1) = 1) (ψ : AddChar F ℂ) (hψ : IsStdChar ψ)
    (htr : ∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y)
    (hu : ∃ u : E, ‖u‖ ≤ 1 ∧ ‖Algebra.trace F E u‖ = 1) (y : E) :
    ∫ z, (Metric.closedBall (0 : E) 1).indicator (fun z => ψ (Algebra.trace F E (star z * y))) z ∂μ =
      if ‖y‖ ≤ 1 then 1 else 0 := by
  haveI := hU.ultraE
  haveI := hU.ultraF
  split_ifs with hy
  · rw [Set.indicator_congr (g := fun _ => (1 : ℂ)) (fun z hz => ?_)]
    · rw [integral_indicator measurableSet_closedBall, setIntegral_const]
      simp [Measure.real, hvol]
    · apply hψ.1
      refine (norm_trace_le hU htr _).trans ?_
      rw [norm_mul, hU.norm_star]
      exact mul_le_one₀ (mem_closedBall_zero_iff.1 hz) (norm_nonneg _) hy
  · push_neg at hy
    obtain ⟨x₀, hx₀, hx₀'⟩ := hψ.2
    obtain ⟨yF, hyF⟩ := hU.unram y
    obtain ⟨u, hu1, hu2⟩ := hu
    have hy0 : y ≠ 0 := by rintro rfl; simp at hy; linarith
    have hyF0 : yF ≠ 0 := by rintro rfl; rw [hyF] at hy; simp at hy; linarith
    have hx₀y : ‖x₀‖ ≤ ‖y‖ := by
      have h1 : ‖yF⁻¹‖ < 1 := by rw [norm_inv, ← hyF]; exact inv_lt_one_of_one_lt₀ hy
      have h2 := hx₀' _ h1
      rw [norm_mul, norm_inv, ← hyF] at h2
      have hpos : 0 < ‖y‖ := by linarith
      rwa [mul_inv_le_iff₀ hpos, one_mul] at h2
    have htu : Algebra.trace F E u ≠ 0 := by intro h; rw [h, norm_zero] at hu2; exact zero_ne_one hu2
    set w : E := (x₀ / Algebra.trace F E u) • u with hw
    have hTw : Algebra.trace F E w = x₀ := by
      rw [hw, LinearMap.map_smul, smul_eq_mul, div_mul_cancel₀ _ htu]
    have hnw : ‖w‖ ≤ ‖y‖ := by
      rw [hw, norm_smul, norm_div, hu2, div_one]
      exact (mul_le_of_le_one_right (norm_nonneg _) hu1).trans hx₀y
    have hpos : 0 < ‖y‖ := by linarith
    refine integral_indicator_char_eq_zero μ _ _ (fun a b => ?_) (star (w * y⁻¹)) (fun z => ?_) ?_
    · rw [star_add, add_mul, map_add (f := _), AddChar.map_add_eq_mul]
    · have ht : ‖star (w * y⁻¹)‖ ≤ 1 := by
        rw [hU.norm_star, norm_mul, norm_inv, mul_inv_le_iff₀ hpos, one_mul]; exact hnw
      simp only [mem_closedBall_zero_iff]
      constructor
      · intro h
        have := IsUltrametricDist.norm_add_le_max (star (w * y⁻¹) + z) (-(star (w * y⁻¹)))
        rw [norm_neg, show star (w * y⁻¹) + z + -star (w * y⁻¹) = z by abel] at this
        exact this.trans (max_le h ht)
      · intro h
        exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le ht h)
    · simp only [star_star]
      rw [mul_assoc, inv_mul_cancel₀ hy0, mul_one, hTw]
      exact hx₀

theorem fourU_unitU : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E]
    [StarRing E] [Unram F E] (r : ℕ) (M : Meas r F E) (ψ : AddChar F ℂ), IsStdChar ψ →
    (∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y) →
    (∃ u : E, ‖u‖ ≤ 1 ∧ ‖Algebra.trace F E u‖ = 1) → fourU M ψ (unitU r F E) = unitU r F E := by
  intro F E _ _ _ _ hU r M ψ hψ htr hu
  letI := M.mE
  haveI := M.bE
  haveI := M.haarE
  haveI := hU.lcE
  haveI : ProperSpace E := ProperSpace.of_locallyCompactSpace E
  funext X
  simp only [fourU]
  by_cases h0 : (∀ i j, ‖X.1.1 i j‖ ≤ 1) ∧ ‖X.2.2‖ ≤ 1
  · have hint : ∀ c : Fin r → E, unitU r F E (X.1, c, X.2.2) * ψ (Algebra.trace F E (star c ⬝ᵥ X.2.1)) =
        ∏ i, (Metric.closedBall (0 : E) 1).indicator
          (fun z => ψ (Algebra.trace F E (star z * X.2.1 i))) (c i) := by
      intro c
      by_cases hc : ∀ i, ‖c i‖ ≤ 1
      · have e1 : unitU r F E (X.1, c, X.2.2) = 1 := by
          simp only [unitU]; rw [Set.indicator_of_mem (by exact ⟨h0.1, hc, h0.2⟩)]; rfl
        rw [e1, one_mul]

        simp only [dotProduct, Pi.star_apply, map_sum, addChar_sum]
        refine Finset.prod_congr rfl fun i _ => ?_
        rw [Set.indicator_of_mem (mem_closedBall_zero_iff.2 (hc i))]
      · push_neg at hc
        obtain ⟨i, hi⟩ := hc
        have e1 : unitU r F E (X.1, c, X.2.2) = 0 := by
          simp only [unitU]
          apply Set.indicator_of_notMem
          intro h
          exact (not_le.2 hi) (h.2.1 i)
        rw [e1, zero_mul]
        refine (Finset.prod_eq_zero (Finset.mem_univ i) ?_).symm
        exact Set.indicator_of_notMem (fun h => (not_le.2 hi) (mem_closedBall_zero_iff.1 h)) _
    simp_rw [hint]
    rw [integral_fintype_prod_eq_prod]
    simp_rw [integral_ball_char hU M.μE M.volE ψ hψ htr hu]
    rw [Finset.prod_boole]
    simp only [unitU, Set.indicator_apply, Set.mem_setOf_eq, Finset.mem_univ, true_implies, Pi.one_apply]
    simp [h0.1, h0.2]
  · have e : ∀ c : Fin r → E, unitU r F E (X.1, c, X.2.2) = 0 := fun c => by
      simp only [unitU]
      apply Set.indicator_of_notMem
      intro h
      exact h0 ⟨h.1, h.2.2⟩
    simp_rw [e, zero_mul, integral_zero]

end GlobalTheory.JR.FourUnit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockUnitIndicator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitIndicatorGLBlockIsLocallyConstantCompactSupp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitIndicatorGLBlockIsLocallyConstantCompactSupp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory.JR.UnitTest

theorem isLocallyConstant_indicator_one {Z : Type} [TopologicalSpace Z] {W : Set Z} (hW : IsClopen W) :
    IsLocallyConstant (W.indicator (1 : Z → ℂ)) := by
  rw [IsLocallyConstant.iff_eventually_eq]
  intro x
  by_cases hx : x ∈ W
  · filter_upwards [hW.isOpen.mem_nhds hx] with y hy
    simp [Set.indicator_of_mem hy, Set.indicator_of_mem hx]
  · filter_upwards [hW.isClosed.isOpen_compl.mem_nhds hx] with y hy
    simp [Set.indicator_of_notMem hy, Set.indicator_of_notMem hx]

theorem unitG_isTest (F : Type) [NontriviallyNormedField F] [IsUltrametricDist F] [LocallyCompactSpace F]
    (r : ℕ) : IsTest (unitG r F) := by
  haveI : ProperSpace F := ProperSpace.of_locallyCompactSpace F
  set B : Set F := Metric.closedBall 0 1 with hB
  have hBo : IsOpen B := IsUltrametricDist.isOpen_closedBall _ one_ne_zero
  have hBc : IsClosed B := Metric.isClosed_closedBall
  have hBk : IsCompact B := isCompact_closedBall 0 1
  set A : Set (Matrix (Fin r) (Fin r) F) := Set.univ.pi fun _ => Set.univ.pi fun _ => B with hA
  set V : Set (Fin r → F) := Set.univ.pi fun _ => B with hV
  have hVo : IsOpen V := isOpen_set_pi Set.finite_univ fun _ _ => hBo
  have hVc : IsClosed V := isClosed_set_pi fun _ _ => hBc
  have hVk : IsCompact V := isCompact_univ_pi fun _ => hBk
  have hAo : IsOpen A := isOpen_set_pi Set.finite_univ fun _ _ => hVo
  have hAc : IsClosed A := isClosed_set_pi fun _ _ => hVc
  have hAk : IsCompact A := isCompact_univ_pi (X := fun _ : Fin r => Fin r → F) fun _ => hVk
  set S : Set (Gl r F) := A ×ˢ (V ×ˢ (V ×ˢ B)) with hS
  have hSeq : {Y : Gl r F | (∀ i j, ‖Y.1 i j‖ ≤ 1) ∧ (∀ i, ‖Y.2.1 i‖ ≤ 1) ∧ (∀ i, ‖Y.2.2.1 i‖ ≤ 1) ∧ ‖Y.2.2.2‖ ≤ 1}
      = S := by
    ext Y
    rw [Set.mem_setOf_eq, hS, hA, hV, hB]
    constructor
    · rintro ⟨h1, h2, h3, h4⟩
      refine ⟨fun i _ j _ => ?_, fun i _ => ?_, fun i _ => ?_, ?_⟩
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h1 i j
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h2 i
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h3 i
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h4
    · rintro ⟨h1, h2, h3, h4⟩
      refine ⟨fun i j => ?_, fun i => ?_, fun i => ?_, ?_⟩
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h1 i trivial j trivial
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h2 i trivial
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h3 i trivial
      · simpa only [Metric.mem_closedBall, dist_zero_right] using h4
  have hSo : IsOpen S := hAo.prod (hVo.prod (hVo.prod hBo))
  have hSc : IsClosed S := hAc.prod (hVc.prod (hVc.prod hBc))
  have hSk : IsCompact S := hAk.prod (hVk.prod (hVk.prod hBk))
  unfold unitG
  rw [hSeq]
  exact ⟨isLocallyConstant_indicator_one ⟨hSc, hSo⟩,
    HasCompactSupport.intro' hSk hSc fun x hx => Set.indicator_of_notMem hx _⟩

end GlobalTheory.JR.UnitTest
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitIndicatorGLBlockIsLocallyConstantCompactSupp =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedQuadraticTraceEqAddStar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedQuadraticTraceEqAddStar", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PsiKMulNLEqOneOnIntegralLattice\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Galois.Basic\npublic import Mathlib.RingTheory.Trace.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory

theorem trace_eq_add_star : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E]
    [StarRing E] [Unram F E], ∀ y : E, algebraMap F E (Algebra.trace F E y) = y + star y := by
  apply GlobalTheory.JR.NormInt.traceE

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedQuadraticTraceEqAddStar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierPreservesTestFixesUnit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierPreservesTestFixesUnit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FourierMatch\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralTraceUnitUnramifiedQuadratic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNhdsZeroTranslationInvariantOfLocallyConst\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasCompactSupportPartialFourierGLBlock\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLocallyConstantPartialFourierGLBlock\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsTestUnitIndicatorHermitianBlock\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierGLBlockUnitIndicator\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockHasCompactSupport\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockIsLocallyConstant\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierHermitianBlockUnitIndicator\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitIndicatorGLBlockIsLocallyConstantCompactSupp\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedQuadraticTraceEqAddStar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.JR Matrix MeasureTheory Filter Topology

namespace GlobalTheory

theorem fourier_test_unit : ∀ (F E : Type) [NontriviallyNormedField F] [NontriviallyNormedField E] [NormedAlgebra F E] [StarRing E] [Unram F E] (r : ℕ) (M : Meas r F E) (ψ : AddChar F ℂ), IsStdChar ψ → (∀ f', IsTest f' → IsTest (fourG M ψ f')) ∧ (∀ f, IsTest f → IsTest (fourU M ψ f)) ∧ IsTest (unitG r F) ∧ IsTest (unitU r F E) ∧ fourG M ψ (unitG r F) = unitG r F ∧ fourU M ψ (unitU r F E) = unitU r F E := by
  intro F E _ _ _ _ hU r M ψ hψ
  haveI := hU.ultraF; haveI := hU.ultraE; haveI := hU.lcF; haveI := hU.lcE
  have htr := _root_.GlobalTheory.trace_eq_add_star F E
  refine ⟨fun f' hf => ⟨_root_.GlobalTheory.JR.fourG_isLocallyConstant_of_invariant F E r M ψ hψ f' hf (_root_.GlobalTheory.isTest_nhds_inv _ f' hf), _root_.GlobalTheory.JR.fourG_hasCompactSupport F E r M ψ hψ f' hf (_root_.GlobalTheory.isTest_nhds_inv _ f' hf)⟩,
    fun f hf => ⟨_root_.GlobalTheory.fourU_isLocallyConstant F E r M ψ hψ htr f hf (_root_.GlobalTheory.isTest_nhds_inv _ f hf), _root_.GlobalTheory.fourU_hasCompactSupport F E r M ψ hψ htr f hf (_root_.GlobalTheory.isTest_nhds_inv _ f hf)⟩,
    _root_.GlobalTheory.JR.UnitTest.unitG_isTest F r, _root_.GlobalTheory.JR.isTest_unitU F E r hU.norm_star, _root_.GlobalTheory.JR.fourG_unitG F E r M ψ hψ, _root_.GlobalTheory.JR.FourUnit.fourU_unitU F E r M ψ hψ htr (_root_.GlobalTheory.TraceUnit.exists_trace_unit F E htr)⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PartialFourierPreservesTestFixesUnit =====
