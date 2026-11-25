module

public import Mathlib.Analysis.CStarAlgebra.Matrix
public import Mathlib.Analysis.Normed.Algebra.Exponential
public import Mathlib.Analysis.Matrix.Hermitian
public import Mathlib.Analysis.SpecialFunctions.Exponential
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OneMemNbh
public import Mathlib.Analysis.Calculus.SmoothSeries
public import Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchDefs
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FormalDegreeLeOfNeighbourhoodVolume
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RealInputOfBranching
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.VolumeOfBallBound
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.CovolumeBounds.L2OpNormConjTransposeExpMulSignMulExpSubLe, Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryNearIdentityEqExpLogBound, Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchVol

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.CovolumeBounds.L2OpNormConjTransposeExpMulSignMulExpSubLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.CovolumeBounds.L2OpNormConjTransposeExpMulSignMulExpSubLe", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Matrix\npublic import Mathlib.Analysis.Normed.Algebra.Exponential\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Module.Constructions\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Hermitian\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.Exponential\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped Matrix.Norms.L2Operator ComplexOrder

namespace GlobalTheory

section LogDet

variable {n : Type*} [Fintype n] [DecidableEq n]

end LogDet

section Exp

open NormedSpace

theorem norm_exp_sub_one_sub_le {A : Type*} [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A]
    (x : A) : ‖exp x - 1 - x‖ ≤ Real.exp ‖x‖ - 1 - ‖x‖ := by
  have h1 := (hasSum_nat_add_iff' 2).2 (exp_series_hasSum_exp' (𝕂 := ℂ) x)
  have h2 := (hasSum_nat_add_iff' 2).2 (exp_series_hasSum_exp' (𝕂 := ℝ) ‖x‖)
  simp only [Finset.sum_range_succ, Finset.range_zero, Finset.sum_empty, Nat.factorial_zero,
    Nat.factorial_one, Nat.cast_one, inv_one, pow_zero, pow_one, one_smul, zero_add,
    ← sub_sub] at h1 h2
  rw [← Real.exp_eq_exp_ℝ] at h2
  refine h1.norm_le_of_bounded h2 fun k => ?_
  rw [norm_smul, norm_inv, Complex.norm_natCast, smul_eq_mul]
  gcongr
  exact norm_pow_le' x (by omega)

variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]

end Exp

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.CovolumeBounds.L2OpNormConjTransposeExpMulSignMulExpSubLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryNearIdentityEqExpLogBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryNearIdentityEqExpLogBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OneMemNbh\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.L2OpNormConjTransposeExpMulSignMulExpSubLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Calculus.SmoothSeries\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.MatLog

open NormedSpace

def lc (k : ℕ) : ℂ := (-1) ^ k / (k + 1)

theorem norm_lc_le (k : ℕ) : ‖lc k‖ ≤ 1 := by
  have h : ‖((k : ℂ) + 1)‖ = (k : ℝ) + 1 := by
    rw [show ((k : ℂ) + 1) = ((k + 1 : ℕ) : ℂ) by push_cast; ring, Complex.norm_natCast]; push_cast; ring
  rw [lc, norm_div, norm_pow, norm_neg, norm_one, one_pow, h]
  rw [div_le_one (by positivity)]; linarith [(Nat.cast_nonneg k : (0:ℝ) ≤ k)]

theorem lc_mul (k : ℕ) : lc k * ((k : ℂ) + 1) = (-1) ^ k := by
  have : ((k : ℂ) + 1) ≠ 0 := by
    rw [show ((k : ℂ) + 1) = ((k + 1 : ℕ) : ℂ) by push_cast; ring]; exact_mod_cast Nat.succ_ne_zero k
  rw [lc, div_mul_cancel₀ _ this]

section Gen

variable {A : Type*} [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A]

def logS (y : A) : A := ∑' k : ℕ, lc k • y ^ (k + 1)

theorem norm_term_le (y : A) (k : ℕ) : ‖lc k • y ^ (k + 1)‖ ≤ ‖y‖ * ‖y‖ ^ k := by
  rw [norm_smul, ← pow_succ']
  calc ‖lc k‖ * ‖y ^ (k + 1)‖ ≤ 1 * ‖y‖ ^ (k + 1) :=
        mul_le_mul (norm_lc_le k) (norm_pow_le' y (Nat.succ_pos k)) (norm_nonneg _) zero_le_one
    _ = ‖y‖ ^ (k + 1) := one_mul _

theorem summable_logS {y : A} (hy : ‖y‖ < 1) : Summable fun k : ℕ => lc k • y ^ (k + 1) :=
  Summable.of_norm_bounded ((summable_geometric_of_lt_one (norm_nonneg y) hy).mul_left ‖y‖) (norm_term_le y)

theorem norm_logS_le {y : A} (hy : ‖y‖ < 1) : ‖logS y‖ ≤ ‖y‖ * (1 - ‖y‖)⁻¹ :=
  tsum_of_norm_bounded ((hasSum_geometric_of_lt_one (norm_nonneg y) hy).mul_left ‖y‖) (norm_term_le y)

theorem norm_logS_le' {y : A} (hy : ‖y‖ ≤ 1 / 4) : ‖logS y‖ ≤ 4 / 3 * ‖y‖ := by
  have h0 := norm_nonneg y
  refine (norm_logS_le (by linarith)).trans ?_
  have h1 : (1 - ‖y‖)⁻¹ ≤ 4 / 3 := by
    rw [inv_le_comm₀ (by linarith) (by norm_num)]; linarith
  nlinarith

end Gen

end GlobalTheory.MatLog

namespace GlobalTheory.MatLog

open NormedSpace

section Comm

variable {A : Type*} [NormedCommRing A] [NormedAlgebra ℂ A] [CompleteSpace A]

theorem exp_add_comm (x y : A) : exp (x + y) = exp x * exp y :=
  exp_add_of_commute_of_mem_ball (𝕂 := ℂ) (Commute.all x y) ((expSeries_radius_eq_top ℂ A).symm ▸ edist_lt_top _ _)
    ((expSeries_radius_eq_top ℂ A).symm ▸ edist_lt_top _ _)

theorem exp_logS_comm (y : A) (hy : ‖y‖ ≤ 1 / 4) : exp (logS y) = 1 + y := by
  have hy0 := norm_nonneg y
  set s : Set ℂ := Metric.ball 0 2 with hs
  let g : ℕ → ℂ → A := fun k t => (lc k * t ^ (k + 1)) • y ^ (k + 1)
  let g' : ℕ → ℂ → A := fun k t => ((-t) ^ k) • y ^ (k + 1)
  have hg : ∀ k t, t ∈ s → HasDerivAt (g k) (g' k t) t := by
    intro k t _
    refine (((hasDerivAt_pow (k + 1) t).const_mul (lc k)).smul_const (y ^ (k + 1))).congr_deriv ?_
    simp only [g', Nat.add_sub_cancel]
    congr 1
    push_cast
    rw [← mul_assoc, lc_mul, ← neg_pow]
  have hu : Summable fun k : ℕ => (1 / 2 : ℝ) ^ k := summable_geometric_of_lt_one (by norm_num) (by norm_num)
  have hg' : ∀ k t, t ∈ s → ‖g' k t‖ ≤ (1 / 2 : ℝ) ^ k := by
    intro k t ht
    have ht' : ‖t‖ ≤ 2 := by
      have := Metric.mem_ball.1 ht; rw [dist_zero_right] at this; linarith
    calc ‖g' k t‖ = ‖t‖ ^ k * ‖y ^ (k + 1)‖ := by simp [g', norm_smul, norm_neg, norm_pow]
      _ ≤ 2 ^ k * (1 / 4) ^ (k + 1) := by
          gcongr
          exact (norm_pow_le' y (Nat.succ_pos k)).trans (pow_le_pow_left₀ hy0 hy _)
      _ = (1 / 2) ^ k * (1 / 4) := by rw [pow_succ, ← mul_assoc, ← mul_pow]; norm_num
      _ ≤ (1 / 2) ^ k := by
          have : (0 : ℝ) ≤ (1 / 2) ^ k := by positivity
          linarith
  have h0s : (0 : ℂ) ∈ s := Metric.mem_ball_self (by norm_num)
  have hg0 : Summable fun k => g k 0 := by
    have : (fun k => g k 0) = fun _ => 0 := by funext k; simp [g]
    rw [this]; exact summable_zero
  have hl : ∀ t ∈ s, HasDerivAt (fun z => ∑' k, g k z) (∑' k, g' k t) t := fun t ht =>
    hasDerivAt_tsum_of_isPreconnected hu Metric.isOpen_ball (convex_ball _ _).isPreconnected hg hg' h0s hg0 ht
  have hmul : ∀ t ∈ s, (∑' k, g' k t) * (1 + t • y) = y := by
    intro t ht
    have ht' : ‖t‖ < 2 := by have := Metric.mem_ball.1 ht; rwa [dist_zero_right] at this
    have hx : ‖-(t • y)‖ < 1 := by
      rw [norm_neg, norm_smul]; nlinarith
    have hsum : (∑' k, g' k t) = (∑' k : ℕ, (-(t • y)) ^ k) * y := by
      rw [← (summable_geometric_of_norm_lt_one hx).tsum_mul_right]
      congr 1; funext k
      simp only [g', ← neg_smul, smul_pow, smul_mul_assoc, pow_succ]
    rw [hsum, mul_right_comm, show (1 : A) + t • y = 1 - -(t • y) by abel, geom_series_mul_neg _ hx]
    simp
  let G : ℂ → A := fun t => exp (-(∑' k, g k t)) * (1 + t • y)
  have hG : ∀ t ∈ s, HasDerivAt G 0 t := by
    intro t ht
    have h1 : HasDerivAt (fun z => exp (-(∑' k, g k z)))
        (exp (-(∑' k, g k t)) * (-(∑' k, g' k t))) t := by
      have := (hasFDerivAt_exp (𝕂 := ℂ) (x := -(∑' k, g k t))).comp_hasDerivAt t (hl t ht).neg
      refine this.congr_deriv ?_
      simp
    have h2 : HasDerivAt (fun z : ℂ => (1 : A) + z • y) ((1 : ℂ) • y) t :=
      ((hasDerivAt_id t).smul_const y).const_add 1
    have h3 := (h1.mul h2).congr_deriv (show _ = (0 : A) by
      rw [one_smul, mul_assoc, neg_mul, hmul t ht]; ring)
    exact h3
  have hconst := Metric.isOpen_ball.is_const_of_deriv_eq_zero (𝕜 := ℂ) (f := G)
    (convex_ball _ _).isPreconnected (fun t ht => (hG t ht).differentiableAt.differentiableWithinAt)
    (fun t ht => (hG t ht).deriv) (show (1 : ℂ) ∈ s from by rw [hs, Metric.mem_ball, dist_zero_right]; norm_num) h0s
  have e1 : (∑' k, g k 1) = logS y := by simp [g, logS]
  have e0 : (∑' k, g k 0) = 0 := by simp [g]
  simp only [G, e1, e0, neg_zero, NormedSpace.exp_zero, zero_smul, add_zero, one_mul, one_smul] at hconst
  calc exp (logS y) = exp (logS y) * (exp (-logS y) * (1 + y)) := by rw [hconst, mul_one]
    _ = 1 + y := by rw [← mul_assoc, ← exp_add_comm, add_neg_cancel, NormedSpace.exp_zero, one_mul]

end Comm

end GlobalTheory.MatLog

namespace GlobalTheory.MatLog

open NormedSpace

theorem eq_zero_of_exp_eq_one {A : Type*} [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A] {z : A}
    (hz : ‖z‖ ≤ 2 / 3) (he : exp z = 1) : z = 0 := by
  have h1 := GlobalTheory.norm_exp_sub_one_sub_le z
  rw [he, sub_self, zero_sub, norm_neg] at h1
  have h0 := norm_nonneg z
  have h2 := Real.abs_exp_sub_one_sub_id_le (x := ‖z‖) (by rw [abs_of_nonneg h0]; linarith)
  have h3 := le_abs_self (Real.exp ‖z‖ - 1 - ‖z‖)
  have : ‖z‖ = 0 := by nlinarith
  exact norm_eq_zero.1 this

theorem logS_inv {A : Type*} [NormedCommRing A] [NormedAlgebra ℂ A] [CompleteSpace A] (y w : A) (hy : ‖y‖ ≤ 1 / 4)
    (hw' : ‖w - 1‖ ≤ 1 / 4) (hw : w * (1 + y) = 1) : logS (w - 1) = -logS y := by
  have e3 : exp (logS y + logS (w - 1)) = 1 := by
    rw [exp_add_comm, exp_logS_comm y hy, exp_logS_comm _ hw', add_sub_cancel, mul_comm, hw]
  have hz : ‖logS y + logS (w - 1)‖ ≤ 2 / 3 := by
    have a1 := norm_logS_le' hy
    have a2 := norm_logS_le' hw'
    linarith [norm_add_le (logS y) (logS (w - 1))]
  rw [eq_neg_iff_add_eq_zero, add_comm]; exact eq_zero_of_exp_eq_one hz e3

end GlobalTheory.MatLog

namespace GlobalTheory.MatLog

open NormedSpace

theorem map_logS {A B : Type*} [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A] [NormedRing B] [NormedAlgebra ℂ B]
    [CompleteSpace B] (φ : A →ₐ[ℂ] B) (hφ : Continuous φ) {y : A} (hy : ‖y‖ < 1) : φ (logS y) = logS (φ y) := by
  rw [logS, logS, ← ((summable_logS hy).hasSum.map φ hφ).tsum_eq]
  congr 1; funext k
  simp [map_smul, map_pow]

theorem star_lc (k : ℕ) : star (lc k) = lc k := by
  simp [lc]

end GlobalTheory.MatLog

noncomputable section

open MeasureTheory Matrix Finset Formalism.MainNotions.S Formalism.REAL Formalism.QuantumDeterminants GlobalTheory.Ell
open scoped InnerProductSpace
open GlobalTheory.SepReal

namespace GlobalTheory.SepReal.LogNearPf

open NormedSpace GlobalTheory.MatLog

theorem hsn_J_conj {m : ℕ} (ε : Fin m → Bool) (A : Mat m) : hsn (Jm ε * Aᴴ * Jm ε) = hsn A := by
  have hd : ∀ a, ‖(if ε a = true then (1 : ℂ) else -1)‖ = 1 := fun a => by split_ifs <;> simp
  unfold hsn; congr 1
  simp only [Formalism.REAL.Jm, Matrix.diagonal_mul, Matrix.mul_diagonal, Matrix.conjTranspose_apply, norm_mul, hd, one_mul,
    mul_one, norm_star]
  exact Finset.sum_comm

theorem J_pow {m : ℕ} (ε : Fin m → Bool) (C : Mat m) (n : ℕ) : (Jm ε * C * Jm ε) ^ n = Jm ε * C ^ n * Jm ε := by
  have hJJ : Jm ε * Jm ε = 1 := Formalism.REAL.Jm_mul_self ε
  induction n with
  | zero => simp [hJJ]
  | succ n ih =>
    rw [pow_succ, ih, pow_succ]
    calc Jm ε * C ^ n * Jm ε * (Jm ε * C * Jm ε) = Jm ε * C ^ n * (Jm ε * Jm ε) * C * Jm ε := by noncomm_ring
      _ = _ := by rw [hJJ, mul_one, mul_assoc (Jm ε) (C ^ n) C]

section Frob

open scoped Matrix.Norms.Frobenius

theorem hsn_eq_norm {m : ℕ} (A : Mat m) : hsn A = ‖A‖ := by
  rw [hsn, Matrix.frobenius_norm_def, Real.sqrt_eq_rpow]
  simp_rw [Real.rpow_two]

theorem logS_J_conj {m : ℕ} (ε : Fin m → Bool) {Y : Mat m} (hY : ‖Y‖ < 1) :
    Jm ε * (logS Y)ᴴ * Jm ε = logS (Jm ε * Yᴴ * Jm ε) := by
  let φ : Mat m →+ Mat m :=
    { toFun := fun A => Jm ε * Aᴴ * Jm ε
      map_zero' := by simp
      map_add' := fun A B => by simp [Matrix.conjTranspose_add, Matrix.mul_add, Matrix.add_mul] }
  have hφ : Continuous φ := AddMonoidHomClass.continuous_of_bound φ 1 fun A => by
    show ‖Jm ε * Aᴴ * Jm ε‖ ≤ 1 * ‖A‖
    rw [← hsn_eq_norm, ← hsn_eq_norm, hsn_J_conj, one_mul]
  have h := ((summable_logS hY).hasSum.map φ hφ).tsum_eq
  rw [logS, logS]
  refine h.symm.trans ?_
  congr 1; funext k
  show Jm ε * (lc k • Y ^ (k + 1))ᴴ * Jm ε = lc k • (Jm ε * Yᴴ * Jm ε) ^ (k + 1)
  rw [Matrix.conjTranspose_smul, star_lc, Matrix.conjTranspose_pow, J_pow, Matrix.mul_smul, Matrix.smul_mul]

end Frob

end GlobalTheory.SepReal.LogNearPf

namespace GlobalTheory.SepReal

open NormedSpace GlobalTheory.MatLog GlobalTheory.SepReal.LogNearPf

section Main

open scoped Matrix.Norms.Frobenius

theorem logNear_holds : LogNear := by
  intro m ε δ hδ g hg hgd
  have hJJ : Jm ε * Jm ε = 1 := Formalism.REAL.Jm_mul_self ε
  have hgu : gᴴ * Jm ε * g = Jm ε := hg
  have hleft : Jm ε * gᴴ * Jm ε * g = 1 := by
    calc Jm ε * gᴴ * Jm ε * g = Jm ε * (gᴴ * Jm ε * g) := by noncomm_ring
      _ = 1 := by rw [hgu, hJJ]
  have hginv : g⁻¹ = Jm ε * gᴴ * Jm ε := Matrix.inv_eq_left_inv hleft
  set Y : Mat m := g - 1 with hYdef
  have hgY : g = 1 + Y := by rw [hYdef]; abel
  have hYn : ‖Y‖ ≤ δ := by rw [← hsn_eq_norm]; exact hgd
  have hY4 : ‖Y‖ ≤ 1 / 4 := hYn.trans hδ
  let S : Subalgebra ℂ (Mat m) := Algebra.elemental ℂ Y
  letI : NormedCommRing S := { SubringClass.toNormedRing S with mul_comm := mul_comm' }
  letI : NormedAlgebra ℂ S := inferInstance
  haveI : CompleteSpace S := inferInstance
  let y : S := ⟨Y, Algebra.elemental.self_mem ℂ Y⟩
  have hy : ‖y‖ = ‖Y‖ := rfl
  have hy1 : ‖-y‖ < 1 := (norm_neg y).trans_lt (hy.trans_lt (by linarith))
  let u : Sˣ := Units.oneSub (-y) hy1
  let w : S := ↑u⁻¹
  have hu : (u : S) = 1 + y := by simp [u, Units.oneSub]
  have hw : w * (1 + y) = 1 := by rw [← hu]; exact u.inv_mul
  have hwg : (w : Mat m) * g = 1 := by
    have := congrArg Subtype.val hw
    rw [hgY]; simpa using this
  have hwv : (w : Mat m) = g⁻¹ := (Matrix.inv_eq_left_inv hwg).symm
  let y' : S := w - 1
  have hy'v : (y' : Mat m) = Jm ε * Yᴴ * Jm ε := by
    show (w : Mat m) - 1 = _
    rw [hwv, hginv, hYdef, Matrix.conjTranspose_sub, Matrix.conjTranspose_one, Matrix.mul_sub, Matrix.sub_mul, mul_one, hJJ]
  have hy' : ‖y'‖ = ‖Y‖ := by
    show ‖(y' : Mat m)‖ = ‖Y‖
    rw [hy'v, ← hsn_eq_norm, ← hsn_eq_norm, hsn_J_conj]
  have hy4 : ‖y‖ ≤ 1 / 4 := by rw [hy]; exact hY4
  have hy'4 : ‖y'‖ ≤ 1 / 4 := by rw [hy']; exact hY4
  have e1 := exp_logS_comm y hy4
  have hneg : logS y' = -logS y := logS_inv y w hy4 hy'4 hw
  have hval : Continuous S.val := continuous_subtype_val
  have m1 : S.val (logS y) = logS Y := map_logS S.val hval (by linarith)
  have m2 : S.val (logS y') = logS (Jm ε * Yᴴ * Jm ε) := by
    rw [map_logS S.val hval (by linarith)]; exact congrArg logS hy'v
  refine ⟨logS Y, ?_, ?_, ?_⟩
  · show (logS Y)ᴴ * Jm ε + Jm ε * logS Y = 0
    have hc : Jm ε * (logS Y)ᴴ * Jm ε = -logS Y := by
      rw [logS_J_conj ε (by linarith), ← m2, hneg, map_neg, m1]
    calc (logS Y)ᴴ * Jm ε + Jm ε * logS Y = Jm ε * (Jm ε * (logS Y)ᴴ * Jm ε) + Jm ε * logS Y := by
          rw [← mul_assoc, ← mul_assoc, hJJ, one_mul]
      _ = 0 := by rw [hc, mul_neg, neg_add_cancel]
  · rw [hsn_eq_norm, ← m1]
    have := norm_logS_le' hy4
    show ‖logS y‖ ≤ 2 * δ
    rw [hy] at this; linarith [norm_nonneg Y]
  · have := map_exp_of_mem_ball (𝕂 := ℂ) S.val hval (logS y) ((expSeries_radius_eq_top ℂ S).symm ▸ edist_lt_top _ _)
    rw [m1] at this
    have h2 : S.val (1 + y) = 1 + Y := by rw [map_add (f := _), map_one]; rfl
    rw [hgY, ← h2]
    exact this.symm.trans (congrArg S.val e1)

end Main

end GlobalTheory.SepReal
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryNearIdentityEqExpLogBound =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchVol =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchVol", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchDefs\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OneMemNbh\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FormalDegreeLeOfNeighbourhoodVolume\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RealInputOfBranching\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryNearIdentityEqExpLogBound\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.VolumeOfBallBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Finset Formalism.MainNotions.S Formalism.REAL Formalism.QuantumDeterminants GlobalTheory.Ell GlobalTheory.SepReal UpperTheory.Lit.Branch
open scoped InnerProductSpace

private theorem hsn_le_of_near {n : ℕ} (g : Matrix (Fin n) (Fin n) ℂ) (hg : GlobalTheory.SepReal.hsn (g - 1) ≤ 1 / 4) :
    GlobalTheory.SepReal.hsn g ≤ (n : ℝ) + 1 := by
  have hS : Real.sqrt (∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2) ≤ 1 / 4 := hg
  have hS0 : 0 ≤ ∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2 := by positivity
  have hS2 : ∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2 ≤ 1 / 16 := by
    have h := Real.sq_sqrt hS0
    have h0 := Real.sqrt_nonneg (∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2)
    linarith [pow_le_pow_left₀ h0 hS 2]
  have hent : ∀ a b, ‖g a b‖ ^ 2 ≤ 2 * ‖(g - 1) a b‖ ^ 2 + 2 * (if a = b then (1 : ℝ) else 0) := by
    intro a b
    have hsplit : g a b = (g - 1) a b + (1 : Matrix (Fin n) (Fin n) ℂ) a b := by simp
    have hone : ‖(1 : Matrix (Fin n) (Fin n) ℂ) a b‖ ^ 2 = if a = b then (1 : ℝ) else 0 := by
      by_cases h : a = b <;> simp [Matrix.one_apply, h]
    have htri := norm_add_le ((g - 1) a b) ((1 : Matrix (Fin n) (Fin n) ℂ) a b)
    rw [← hsplit] at htri
    have hp := norm_nonneg (g a b)
    have hq := norm_nonneg ((g - 1) a b)
    have hr := norm_nonneg ((1 : Matrix (Fin n) (Fin n) ℂ) a b)
    rw [← hone]
    linarith [sq_nonneg (‖(g - 1) a b‖ - ‖(1 : Matrix (Fin n) (Fin n) ℂ) a b‖), mul_le_mul htri htri hp (add_nonneg hq hr)]
  have hsum : ∑ a, ∑ b, ‖g a b‖ ^ 2 ≤ 2 * (∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2) + 2 * n := by
    calc ∑ a, ∑ b, ‖g a b‖ ^ 2
        ≤ ∑ a, ∑ b, (2 * ‖(g - 1) a b‖ ^ 2 + 2 * (if a = b then (1 : ℝ) else 0)) := by
          gcongr with a _ b _
          exact hent a b
      _ = 2 * (∑ a, ∑ b, ‖(g - 1) a b‖ ^ 2) + 2 * n := by
          simp [Finset.sum_add_distrib, Finset.mul_sum]
          ring
  show Real.sqrt (∑ a, ∑ b, ‖g a b‖ ^ 2) ≤ (n : ℝ) + 1
  rw [Real.sqrt_le_iff]
  constructor
  · positivity
  · have h0 : (0 : ℝ) ≤ n := n.cast_nonneg
    linarith [sq_nonneg (n : ℝ)]

private theorem vol_arith (n : ℕ) (B : ℝ) (hn : 3 ≤ n) (hB : 1 ≤ B) :
    (1 + 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2))) ^ (2 * n ^ 2) * 4 ≤ big 11 n B := by
  have hn' : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hm1 : 1 ≤ ((n : ℝ) + 1) ^ 2 := one_le_pow₀ (by linarith)
  have hB1 : 1 ≤ B ^ 2 := one_le_pow₀ hB
  have hp1 : 1 ≤ ((n : ℝ) + 1) ^ 2 * B ^ 2 := one_le_mul_of_one_le_of_one_le hm1 hB1
  have hmP : ((n : ℝ) + 1) ^ 2 ≤ ((n : ℝ) + 1) ^ 2 * B ^ 2 := le_mul_of_one_le_right (by positivity) hB1
  have hqp : (n : ℝ) ^ 2 * B ^ 2 ≤ ((n : ℝ) + 1) ^ 2 * B ^ 2 := by
    have hB2 : 0 ≤ B ^ 2 := by positivity
    have : (n : ℝ) ^ 2 ≤ ((n : ℝ) + 1) ^ 2 := pow_le_pow_left₀ (by linarith) (by linarith) 2
    exact mul_le_mul_of_nonneg_right this hB2
  have hq0 : 0 ≤ (n : ℝ) ^ 2 * B ^ 2 := by positivity
  have e1 : 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2))
      = 512 * ((n : ℝ) + 1) ^ 2 * ((n : ℝ) ^ 2 * B ^ 2) := by
    rw [one_div, div_inv_eq_mul]
    ring
  have e2 : (8 * ((n : ℝ) + 1) * B) ^ 4 = 4096 * (((n : ℝ) + 1) ^ 2 * B ^ 2) ^ 2 := by ring
  have hX0 : 0 ≤ 1 + 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2)) := by
    rw [e1]
    positivity
  have hX : 1 + 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2)) ≤ (8 * ((n : ℝ) + 1) * B) ^ 4 := by
    rw [e1, e2]
    have := mul_le_mul hmP hqp hq0 (by linarith)
    linarith [one_le_pow₀ (n := 2) hp1]
  have hL4 : (4 : ℝ) ≤ 8 * ((n : ℝ) + 1) * B := by linarith [hX0, one_le_mul_of_one_le_of_one_le (show (1 : ℝ) ≤ n + 1 by linarith) hB]
  have hL0 : 0 < 8 * ((n : ℝ) + 1) * B := by linarith
  have hstep : (1 + 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2))) ^ (2 * n ^ 2) * 4
      ≤ (8 * ((n : ℝ) + 1) * B) ^ (8 * n ^ 2 + 1) := by
    calc (1 + 2 * ((n : ℝ) + 1) ^ 2 / (1 / (4 * (8 * (n : ℝ) * B) ^ 2))) ^ (2 * n ^ 2) * 4
        ≤ ((8 * ((n : ℝ) + 1) * B) ^ 4) ^ (2 * n ^ 2) * (8 * ((n : ℝ) + 1) * B) := by
          gcongr
      _ = (8 * ((n : ℝ) + 1) * B) ^ (8 * n ^ 2 + 1) := by
          rw [← pow_mul, pow_succ]
          ring_nf
  have hexp : (8 * ((n : ℝ) + 1) * B) ^ (8 * n ^ 2 + 1)
      = Real.exp (((8 * n ^ 2 + 1 : ℕ) : ℝ) * Real.log (8 * ((n : ℝ) + 1) * B)) := by
    rw [Real.exp_nat_mul, Real.exp_log hL0]
  have hN : ((8 * n ^ 2 + 1 : ℕ) : ℝ) ≤ 11 * ((n : ℝ) + 1) ^ 4 := by
    push_cast
    linarith [sq_nonneg (n : ℝ), pow_nonneg (show (0 : ℝ) ≤ n by linarith) 3, pow_nonneg (show (0 : ℝ) ≤ n by linarith) 4]
  have hlog : 0 ≤ Real.log (8 * ((n : ℝ) + 1) * B) := Real.log_nonneg (by linarith)
  unfold big
  calc _ ≤ _ := hstep
    _ = _ := hexp
    _ ≤ _ := by
      apply Real.exp_le_exp.mpr
      have := mul_le_mul_of_nonneg_right hN hlog
      push_cast at this ⊢
      linarith

theorem UpperTheory.Lit.Branch.volDeg :
    VolDeg := by
  have hVol : VolBall := _root_.GlobalTheory.SepReal.volBall
  have hDegU : DegUpper := _root_.GlobalTheory.SepReal.degUpper_of _root_.GlobalTheory.SepReal.logNear_holds _root_.GlobalTheory.SepReal.lieBound
  refine ⟨11, by norm_num, ?_⟩
  intro n e ε lam ε' mu B hP H H' _ _ _ _ π σ hπ hσ d hd
  have hn := hP.three_le
  have hn' : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hB1 : 1 ≤ B := RealAsm.one_le_B hP
  have hgap' : GapAtLeast ε' mu (1000 * (n : ℝ) ^ 3) :=
    RealAsm.gap_mono (by
      have : (0 : ℝ) ≤ n := n.cast_nonneg
      linarith [hn', pow_nonneg this 3, pow_le_pow_left₀ this (by linarith : (n : ℝ) ≤ n + 1) 3]) hP.gap'
  have hdu := hDegU n ε' mu B hn hP.hmu hgap' hP.bound.2 H' σ hσ d hd
  obtain ⟨-, htop, hvb⟩ := hVol n ε' (1 / (4 * (8 * (n : ℝ) * B) ^ 2)) ((n : ℝ) + 1) (by positivity) (by positivity)
  have hsub : nbh ε' (1 / 4) ⊆ {g | GlobalTheory.SepReal.hsn (umat g) ≤ (n : ℝ) + 1} := fun g hg => hsn_le_of_near _ hg
  have h1 := (measure_mono hsub).trans hvb
  have h2 := ENNReal.toReal_mono (ENNReal.mul_ne_top ENNReal.ofReal_ne_top htop.ne) h1
  rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal (by positivity)] at h2
  have hd0 : 0 < d := hd.1
  refine h2.trans ((mul_le_mul_of_nonneg_left hdu (by positivity)).trans ?_)
  rw [← mul_div_assoc]
  exact div_le_div_of_nonneg_right (vol_arith n B hn hB1) hd0.le
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.RealBands.BranchVol =====
