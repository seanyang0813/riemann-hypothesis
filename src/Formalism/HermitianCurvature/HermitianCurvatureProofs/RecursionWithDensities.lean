module

public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.Convex.SpecificFunctions.Basic
public import Formalism.HermitianCurvature.StatementK
public import Formalism.HermitianCurvature.StatementTB
public import Mathlib.Analysis.InnerProductSpace.GramMatrix
public import Mathlib.Analysis.Matrix.Order
public import Mathlib.Data.Set.Finite.List
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelCoefficients
public import Formalism.HermitianCurvature.StatementTC
public import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic
import Mathlib.Data.Finset.Functor
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.Statement, Formalism.HermitianCurvature.HermitianCurvatureProofs.RecText, Formalism.HermitianCurvature.HermitianCurvatureProofs.AntidiagMulDiagonal, Formalism.HermitianCurvature.HermitianCurvatureProofs.FinitePointSets, Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockStartPoints, Formalism.HermitianCurvature.HermitianCurvatureProofs.FormDomination, Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveSemidefinitePullback, Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelInequalitySplitBySize, Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities

-- ===== clump member: Formalism.HermitianCurvature.Statement =====
-- clump-header: {"m": "Formalism.HermitianCurvature.Statement", "h": "module\n\npublic import Mathlib.Analysis.Real.Sqrt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt

open Finset Real NumberField

def RecursionSharp : Prop :=
  ∃ C : ℝ, ∀ (r : ℕ) (a ε : ℝ) (e σ : ℕ → ℝ),
    0 ≤ a → a ≤ 1/2 → 0 ≤ ε → ((r : ℝ) + 1) * (ε + a) ≤ 1 →
    (∀ i, 0 ≤ e i) → (∀ i, 0 ≤ σ i) →
    (∀ i, 1 ≤ i → i ≤ r + 1 →
      σ i ≤ (1 + ε) * √(1 + e i) * σ (i - 1) + ∑ t ∈ Icc 2 i, a ^ (t - 1) * σ (i - t)) →
    σ (r + 1) ^ 2 ≤
      (1 + C * ((r : ℝ) + 1) * (ε + a)) * (∏ i ∈ Icc 1 (r + 1), (1 + e i)) * σ 0 ^ 2

def RecursionText : Prop :=
  ∃ C : ℝ, ∀ (r : ℕ) (a ε : ℝ) (e σ : ℕ → ℝ),
    0 ≤ a → a ≤ 1/2 → 0 ≤ ε → ε ≤ a → (r : ℝ) * a ≤ 1 →
    (∀ i, 0 ≤ e i) → (∀ i, 0 ≤ σ i) →
    (∀ i, 1 ≤ i → i ≤ r + 1 →
      σ i ≤ (1 + ε) * √(1 + e i) * σ (i - 1) + ∑ t ∈ Icc 2 i, a ^ (t - 1) * σ (i - t)) →
    σ (r + 1) ^ 2 ≤
      (1 + C * ((r : ℝ) + 1) * a) * (∏ i ∈ Icc 1 (r + 1), (1 + e i)) * σ 0 ^ 2

end Formalism.FourierDecayAlt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.Statement =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecText =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RecText", "h": "module\n\npublic import Formalism.HermitianCurvature.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Complex.Exponential\npublic import Mathlib.Analysis.Convex.SpecificFunctions.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.RecText

open Finset Real

theorem geo (a : ℝ) (ha0 : 0 ≤ a) (ha1 : a ≤ 1/2) :
    ∀ i, 1 ≤ i → ∑ t ∈ Icc 2 i, a ^ (t - 1) ≤ 2 * a - 2 * a ^ i := by
  intro i hi
  induction i, hi using Nat.le_induction with
  | base => simp
  | succ n hn ih =>
    rw [Finset.sum_Icc_succ_top (by omega), Nat.add_sub_cancel]
    have : a ^ (n + 1) = a ^ n * a := pow_succ a n
    have h0 : 0 ≤ a ^ n := pow_nonneg ha0 n
    nlinarith

theorem recT : Formalism.FourierDecayAlt.RecursionText := by
  refine ⟨Real.exp 9, ?_⟩
  intro r a ε e σ ha0 ha1 hε hεa hra he hσ hrec
  set lam := 1 + ε + 2 * a with hlam
  set Q : ℕ → ℝ := fun k => ∏ j ∈ Icc 1 k, √(1 + e j) with hQdef
  have hQsucc : ∀ k, Q (k + 1) = Q k * √(1 + e (k + 1)) := by
    intro k; simp only [hQdef]; rw [Finset.prod_Icc_succ_top (by omega)]
  have hsq1 : ∀ j, 1 ≤ √(1 + e j) := fun j => by
    rw [Real.one_le_sqrt]; linarith [he j]
  have hQ0 : Q 0 = 1 := by simp [hQdef]
  have hQ1 : ∀ k, 1 ≤ Q k := by
    intro k; induction k with
    | zero => rw [hQ0]
    | succ k ih => rw [hQsucc]; nlinarith [hsq1 (k + 1)]
  have hQmono : Monotone Q := by
    apply monotone_nat_of_le_succ; intro k; rw [hQsucc]; nlinarith [hsq1 (k + 1), hQ1 k]
  have hlam1 : 1 ≤ lam := by linarith
  have hs0 := hσ 0
  have main : ∀ i, i ≤ r + 1 → σ i ≤ lam ^ i * Q i * σ 0 := by
    intro i
    induction i using Nat.strong_induction_on with
    | _ i ih =>
      intro hir
      rcases Nat.eq_zero_or_pos i with h0 | hpos
      · subst h0; simp [hQ0]
      · have hrec' := hrec i hpos hir
        obtain ⟨k, rfl⟩ : ∃ k, i = k + 1 := ⟨i - 1, by omega⟩
        have hk : k + 1 - 1 = k := by omega
        rw [hk] at hrec'
        set M := lam ^ k * Q (k + 1) * σ 0 with hM
        have hM0 : 0 ≤ M := by
          have := pow_nonneg (by linarith : (0:ℝ) ≤ lam) k
          have := hQ1 (k + 1)
          positivity
        have hk' := ih k (by omega) (by omega)
        have h1 : (1 + ε) * √(1 + e (k + 1)) * σ k ≤ (1 + ε) * M := by
          rw [hM, hQsucc]
          have : √(1 + e (k + 1)) * σ k ≤ √(1 + e (k + 1)) * (lam ^ k * Q k * σ 0) :=
            mul_le_mul_of_nonneg_left hk' (Real.sqrt_nonneg _)
          nlinarith
        have h2 : ∑ t ∈ Icc 2 (k + 1), a ^ (t - 1) * σ (k + 1 - t) ≤
            ∑ t ∈ Icc 2 (k + 1), a ^ (t - 1) * M := by
          apply Finset.sum_le_sum
          intro t ht
          rw [Finset.mem_Icc] at ht
          apply mul_le_mul_of_nonneg_left _ (pow_nonneg ha0 _)
          have := ih (k + 1 - t) (by omega) (by omega)
          refine this.trans ?_
          rw [hM]
          have e1 : lam ^ (k + 1 - t) ≤ lam ^ k := pow_le_pow_right₀ hlam1 (by omega)
          have e2 : Q (k + 1 - t) ≤ Q (k + 1) := hQmono (by omega)
          have e4 : 0 ≤ Q (k + 1 - t) := by linarith [hQ1 (k + 1 - t)]
          have e5 : 0 ≤ lam ^ k := pow_nonneg (by linarith) _
          have := mul_le_mul e1 e2 e4 e5
          exact mul_le_mul_of_nonneg_right this hs0
        have h3 : ∑ t ∈ Icc 2 (k + 1), a ^ (t - 1) * M ≤ 2 * a * M := by
          rw [← Finset.sum_mul]
          have := geo a ha0 ha1 (k + 1) (by omega)
          have : 0 ≤ a ^ (k + 1) := pow_nonneg ha0 _
          apply mul_le_mul_of_nonneg_right _ hM0
          linarith
        have : lam ^ (k + 1) * Q (k + 1) * σ 0 = lam * M := by rw [hM]; ring
        rw [this]
        calc σ (k + 1) ≤ (1 + ε) * M + 2 * a * M := by linarith
          _ = lam * M := by rw [hlam]; ring
  have hfin := main (r + 1) le_rfl
  have hQsq : Q (r + 1) ^ 2 = ∏ i ∈ Icc 1 (r + 1), (1 + e i) := by
    simp only [hQdef]; rw [← Finset.prod_pow]
    refine Finset.prod_congr rfl fun j _ => ?_
    rw [Real.sq_sqrt]; linarith [he j]
  have hP : 0 ≤ ∏ i ∈ Icc 1 (r + 1), (1 + e i) := by rw [← hQsq]; positivity
  have hsr := hσ (r + 1)
  have step1 : σ (r + 1) ^ 2 ≤ (lam ^ (r + 1)) ^ 2 * (∏ i ∈ Icc 1 (r + 1), (1 + e i)) * σ 0 ^ 2 := by
    rw [← hQsq]
    have := pow_le_pow_left₀ hsr hfin 2
    calc σ (r + 1) ^ 2 ≤ (lam ^ (r + 1) * Q (r + 1) * σ 0) ^ 2 := this
      _ = _ := by ring
  set x := ((r : ℝ) + 1) * a with hxdef
  have hx0 : 0 ≤ x := by positivity
  have step2 : (lam ^ (r + 1)) ^ 2 ≤ Real.exp (6 * x) := by
    rw [← pow_mul]
    have h1 : lam ≤ Real.exp (ε + 2 * a) := by
      have := Real.add_one_le_exp (ε + 2 * a); rw [hlam]; linarith
    have h2 := pow_le_pow_left₀ (by linarith) h1 ((r + 1) * 2)
    refine h2.trans ?_
    rw [← Real.exp_nat_mul]
    apply Real.exp_le_exp.mpr
    push_cast
    nlinarith
  have step3 : Real.exp (6 * x) ≤ 1 + Real.exp 9 * x := by
    have ht0 : 0 ≤ 2 / 3 * x := by positivity
    have hc := convexOn_exp.2 (Set.mem_univ (0:ℝ)) (Set.mem_univ (9:ℝ))
      (by linarith : (0:ℝ) ≤ 1 - 2 / 3 * x) ht0 (by ring)
    simp only [smul_eq_mul, mul_zero, zero_add, Real.exp_zero, mul_one] at hc
    have : 6 * x = 2 / 3 * x * 9 := by ring
    rw [this]
    have : 0 ≤ Real.exp 9 := (Real.exp_pos 9).le
    nlinarith
  have : (lam ^ (r + 1)) ^ 2 ≤ 1 + Real.exp 9 * ((r : ℝ) + 1) * a := by
    have := step2.trans step3; rw [hxdef] at this; linarith
  refine step1.trans ?_
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
  exact mul_le_mul_of_nonneg_right this hP

end Formalism.FourierDecayAlt.P.RecText

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecText =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AntidiagMulDiagonal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.AntidiagMulDiagonal", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementK\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RecText\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.K

open Matrix Finset Real Formalism.FourierDecayAlt.K

variable {K : Type} [Field K] {n : ℕ}

theorem jointTheoremA : JointTheoremA := by
  intro C₀ hC₀
  obtain ⟨C, hC⟩ := _root_.Formalism.FourierDecayAlt.P.RecText.recT
  refine ⟨2 * C₀, C, ?_⟩
  intro Kx Θ f r e σ hKx hf hΘ hr he hσ hrec
  have hΘ1 : 1 ≤ Θ := by linarith
  have hΘpos : 0 < Θ := by linarith
  have ha0 : 0 ≤ C₀ / Θ := div_nonneg (by linarith) hΘpos.le
  have hq : C₀ / Θ ≤ 1 / 2 := by
    rw [div_le_iff₀ hΘpos]
    linarith
  have ha : (C₀ / Θ) ^ f ≤ 1 / 2 := by
    calc (C₀ / Θ) ^ f ≤ (C₀ / Θ) ^ 1 := pow_le_pow_of_le_one ha0 (by linarith) hf
      _ ≤ 1 / 2 := by rw [pow_one]; exact hq
  have hrp : Θ ^ (-(Kx - 5 / 2)) ≤ Θ⁻¹ := by
    rw [← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hΘ1 (by linarith)
  have hε0 : 0 ≤ C₀ * Θ ^ (-(Kx - 5 / 2)) :=
    mul_nonneg (by linarith) (Real.rpow_nonneg hΘpos.le _)
  have hεa : (C₀ * Θ ^ (-(Kx - 5 / 2))) ^ f ≤ (C₀ / Θ) ^ f := by
    apply pow_le_pow_left₀ hε0
    rw [div_eq_mul_inv]
    exact mul_le_mul_of_nonneg_left hrp (by linarith)
  exact hC r ((C₀ / Θ) ^ f) ((C₀ * Θ ^ (-(Kx - 5 / 2))) ^ f) e σ (pow_nonneg ha0 _) ha
    (pow_nonneg hε0 _) hεa hr he hσ hrec

end Formalism.FourierDecayAlt.P.K

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AntidiagMulDiagonal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FinitePointSets =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FinitePointSets", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.GramMatrix\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Finset.Functor\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.Data.Set.Finite.List\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.FinitePointSets

open Formalism.FourierDecayAlt.TB Finset Filter Topology
open scoped ComplexInnerProductSpace ComplexConjugate

theorem finite_pts {E : Type} [Field E] (S : Finset E) (i : ℕ) :
    {p : Pt E | level p = i ∧
      ∀ k (hk : k < p.length), 1 ≤ (p[k]'hk).1 ∧ (p[k]'hk).2 ∈ S}.Finite := by
  classical
  set F : Finset (ℕ × E) := (range (i + 1)) ×ˢ S with hFdef
  refine ((List.finite_length_le F i).image (List.map Subtype.val)).subset ?_
  rintro p ⟨hl, hp⟩
  have hmem : ∀ x ∈ p, 1 ≤ x.1 ∧ x.2 ∈ S := by
    intro x hx
    obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hx
    exact hp k hk
  unfold level at hl
  have hF : ∀ x ∈ p, x ∈ F := by
    intro x hx
    simp only [hFdef, mem_product, mem_range]
    refine ⟨?_, (hmem x hx).2⟩
    have : x.1 ≤ (p.map Prod.fst).sum := List.le_sum_of_mem (List.mem_map_of_mem hx)
    omega
  refine ⟨p.pmap Subtype.mk hF, ?_, ?_⟩
  · have h1 : (p.map Prod.fst).length ≤ (p.map Prod.fst).sum := by
      refine List.length_le_sum_of_one_le _ fun n hn => ?_
      obtain ⟨x, hx, rfl⟩ := List.mem_map.1 hn
      exact (hmem x hx).1
    change (p.pmap Subtype.mk hF).length ≤ i
    simpa [hl] using h1
  · simp [List.map_pmap]

noncomputable def tw {E : Type} [Field E] (S : Finset E) (h0 : (0 : E) ∉ S) : Tower E where
  Sg := fun _ _ => S
  X := fun i => (finite_pts S i).toFinset
  isTower := by
    intro i p
    simp
  zero_not_mem := fun _ _ => h0

theorem form_nonneg {α H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (Y : Finset α) (k : α → α → ℂ) (hk : PSDOn Y k) (V : α → H) :
    0 ≤ (∑ p ∈ Y, ∑ q ∈ Y, k p q * ⟪V q, V p⟫).re := by
  classical
  obtain ⟨B, hB⟩ : ∃ B : Matrix Y Y ℂ, Matrix.gram ℂ (fun p : Y => V p.1) = star B * B := by
    open scoped MatrixOrder Matrix.Norms.L2Operator in
    exact CStarAlgebra.nonneg_iff_eq_star_mul_self.mp
      (Matrix.posSemidef_gram ℂ (fun p : Y => V p.1)).nonneg
  have hG : ∀ p q : Y, ⟪V p.1, V q.1⟫ = ∑ j, conj (B j p) * B j q := by
    intro p q
    have := congrFun (congrFun hB p) q
    simpa [Matrix.gram, Matrix.mul_apply, Matrix.star_eq_conjTranspose,
      Matrix.conjTranspose_apply] using this
  have e1 : ∑ p ∈ Y, ∑ q ∈ Y, k p q * ⟪V q, V p⟫
      = ∑ p : Y, ∑ q : Y, k p.1 q.1 * ⟪V q.1, V p.1⟫ := by
    rw [← Finset.sum_coe_sort Y]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [← Finset.sum_coe_sort Y]
  have e2 : ∑ p : Y, ∑ q : Y, k p.1 q.1 * ⟪V q.1, V p.1⟫
      = ∑ j : Y, star (fun p : Y => conj (B j p)) ⬝ᵥ
          (Matrix.of fun x y : Y => k x y).mulVec (fun p : Y => conj (B j p)) := by
    simp only [dotProduct, Matrix.mulVec, Matrix.of_apply, Pi.star_apply, RCLike.star_def,
      Complex.conj_conj, Finset.mul_sum]
    symm
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun q _ => ?_
    rw [hG q p, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    ring
  rw [e1, e2, Complex.re_sum]
  exact Finset.sum_nonneg fun j _ => Matrix.PosSemidef.re_dotProduct_nonneg hk _

theorem norm_sq_comb {α H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (Y : Finset α) (c : α → ℂ) (V : α → H) :
    ((‖∑ p ∈ Y, c p • V p‖ ^ 2 : ℝ) : ℂ)
      = ∑ p ∈ Y, ∑ q ∈ Y, (c p * conj (c q)) * ⟪V q, V p⟫ := by
  have := inner_self_eq_norm_sq_to_K (𝕜 := ℂ) (∑ p ∈ Y, c p • V p)
  rw [Complex.ofReal_pow]
  refine this.symm.trans ?_
  rw [inner_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [sum_inner]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [inner_smul_left, inner_smul_right]
  ring

theorem rows_le_form {α H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (Y : Finset α) (k : α → α → ℂ) (V : α → H) (c : ℕ → α → ℂ) (R : Finset ℕ)
    (h : PSDOn Y (fun p q => k p q - ∑ ρ ∈ R, c ρ p * starRingEnd ℂ (c ρ q))) :
    ∑ ρ ∈ R, ‖∑ p ∈ Y, c ρ p • V p‖ ^ 2 ≤ (∑ p ∈ Y, ∑ q ∈ Y, k p q * ⟪V q, V p⟫).re := by
  have h0 := form_nonneg Y _ h V
  have e : ∑ p ∈ Y, ∑ q ∈ Y, (k p q - ∑ ρ ∈ R, c ρ p * starRingEnd ℂ (c ρ q)) * ⟪V q, V p⟫
      = ∑ p ∈ Y, ∑ q ∈ Y, k p q * ⟪V q, V p⟫
        - ((∑ ρ ∈ R, ‖∑ p ∈ Y, c ρ p • V p‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_sum]
    simp_rw [norm_sq_comb]
    rw [Finset.sum_comm (s := R), ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [Finset.sum_comm (s := R), ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun q _ => ?_
    rw [sub_mul, Finset.sum_mul]
  rw [e, Complex.sub_re, Complex.ofReal_re] at h0
  linarith

end Formalism.FourierDecayAlt.P.FinitePointSets

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.TB Finset Filter Topology
open scoped ComplexInnerProductSpace ComplexConjugate

theorem limitStep : Formalism.FourierDecayAlt.TB.LimitStep := by
  intro E W _ D jn H _ _ _ Vt c _ _ hE hC hA B hB R
  classical
  obtain ⟨hA1, hA2, hA3⟩ := hA
  have hsum : ∀ ρ, Summable (fun p : Pt E => c ρ p • Vt p) := by
    intro ρ
    refine Summable.of_norm ?_
    simpa [norm_smul] using hA3 ρ
  have hlim : Tendsto (fun F : Finset (Pt E) => ∑ ρ ∈ R, ‖∑ p ∈ F, c ρ p • Vt p‖ ^ 2) atTop
      (𝓝 (∑ ρ ∈ R, ‖∑' p, c ρ p • Vt p‖ ^ 2)) := by
    refine tendsto_finsetSum _ fun ρ _ => ?_
    exact ((hsum ρ).hasSum.norm).pow 2
  refine le_of_tendsto_of_frequently hlim ?_
  rw [Filter.frequently_atTop]
  intro F

  set F0 : Finset (Pt E) := F.filter (fun p => IsPt p (D.r + 1)) with hF0
  set S : Finset E := F0.biUnion fun p => (p.map Prod.snd).toFinset with hS
  have hS0 : (0 : E) ∉ S := by
    intro h
    simp only [hS, mem_biUnion, List.mem_toFinset, List.mem_map] at h
    obtain ⟨p, hp, b, hb, hb0⟩ := h
    obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hb
    exact ((Finset.mem_filter.1 hp).2.2 k hk).2 hb0
  set T : Tower E := FinitePointSets.tw S hS0 with hT
  set Y : Finset (Pt E) := T.X (D.r + 1) with hY
  have hYpt : ∀ p ∈ Y, IsPt p (D.r + 1) := by
    intro p hp
    obtain ⟨h1, h2⟩ := (T.isTower (D.r + 1) p).1 hp
    refine ⟨h1, fun k hk => ⟨(h2 k hk).1, fun h => ?_⟩⟩
    have := (h2 k hk).2
    rw [h] at this
    exact T.zero_not_mem _ _ this
  have hF0Y : ∀ p ∈ F0, p ∈ Y := by
    intro p hp
    have hp' := (Finset.mem_filter.1 hp).2
    refine (T.isTower (D.r + 1) p).2 ⟨hp'.1, fun k hk => ⟨(hp'.2 k hk).1, ?_⟩⟩
    change (p[k]'hk).2 ∈ S
    simp only [hS, mem_biUnion, List.mem_toFinset, List.mem_map]
    exact ⟨p, hp, p[k]'hk, List.getElem_mem hk, rfl⟩
  refine ⟨F ∪ Y, Finset.subset_union_left, ?_⟩
  have e : ∀ ρ, ∑ p ∈ F ∪ Y, c ρ p • Vt p = ∑ p ∈ Y, c ρ p • Vt p := by
    intro ρ
    symm
    refine Finset.sum_subset Finset.subset_union_right fun p hp hnp => ?_
    have hc : c ρ p = 0 := by
      by_contra h
      have hpF : p ∈ F := by
        rcases Finset.mem_union.1 hp with h' | h'
        · exact h'
        · exact absurd h' hnp
      exact hnp (hF0Y p (Finset.mem_filter.2 ⟨hpF, hA1 ρ p h⟩))
    rw [hc, zero_smul]
  simp_rw [e]
  refine (FinitePointSets.rows_le_form Y (D.Kr (D.r + 1)) Vt c R (hA2 Y hYpt R)).trans ?_

  have key : ∀ δ : ℝ, 0 < δ →
      (∑ p ∈ Y, ∑ q ∈ Y, D.Kr (D.r + 1) p q * ⟪Vt q, Vt p⟫).re ≤ B * (jn + δ) := by
    intro δ hδ
    have h1 : ∀ᶠ ε in 𝓝[>] (0 : ℝ), ∀ w ∈ D.Wb D.Ntop,
        (D.gram ε 0 w [] []).re / D.wt w ≤ jn + δ :=
      (Filter.eventually_all_finset _).2 fun w hw =>
        (hE w hw).eventually_le_const (by linarith)
    obtain ⟨ε, h1ε, h2ε, hε⟩ := (h1.and ((hC Y hYpt).and self_mem_nhdsWithin)).exists
    have h3 := hB T ε hε (jn + δ) h1ε
    have e2 : D.Sf ε (D.r + 1) D.emp (T.X (D.r + 1))
        = (∑ p ∈ Y, ∑ q ∈ Y, D.Kr (D.r + 1) p q * ⟪Vt q, Vt p⟫).re := by
      unfold Data.Sf
      congr 1
      refine Finset.sum_congr rfl fun p hp => Finset.sum_congr rfl fun q hq => ?_
      by_cases hK : D.Kr (D.r + 1) p q = 0
      · rw [hK, zero_mul, zero_mul]
      · rw [h2ε p hp q hq hK]
    rwa [e2] at h3
  have ht : Tendsto (fun δ : ℝ => B * (jn + δ)) (𝓝[>] 0) (𝓝 (B * (jn + 0))) :=
    (Continuous.tendsto (by fun_prop) 0).mono_left nhdsWithin_le_nhds
  rw [add_zero] at ht
  exact ge_of_tendsto ht (by filter_upwards [self_mem_nhdsWithin] with δ hδ using key δ hδ)

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FinitePointSets =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockStartPoints =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockStartPoints", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.BlockStartPoints

open Finset Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data
open scoped ComplexOrder
open Classical

noncomputable section

variable {E W : Type} [Field E]

lemma psd_sum_nonneg {α : Type} (Y : Finset α) (k g : α → α → ℂ) (hk : PSDOn Y k)
    (hg : PSDOn Y g) : 0 ≤ (∑ p ∈ Y, ∑ q ∈ Y, k p q * g p q).re := by
  have h := (Matrix.PosSemidef.hadamard hk hg).dotProduct_mulVec_nonneg (fun _ => (1 : ℂ))
  have e : star (fun _ : Y => (1 : ℂ)) ⬝ᵥ (Matrix.mulVec (Matrix.hadamard
      (Matrix.of fun x y : Y => k x y) (Matrix.of fun x y : Y => g x y)) (fun _ => (1 : ℂ))) =
      ∑ p ∈ Y, ∑ q ∈ Y, k p q * g p q := by
    simp only [dotProduct, Matrix.mulVec, Matrix.hadamard_apply, Matrix.of_apply, Pi.star_apply,
      star_one, one_mul, mul_one]
    rw [← Finset.sum_coe_sort Y]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [← Finset.sum_coe_sort Y]
  rw [e] at h
  exact (Complex.le_def.1 h).1

lemma psd_comp {α β : Type} (Y : Finset α) (Z : Finset β) (φ : α → β) (hφ : ∀ a ∈ Y, φ a ∈ Z)
    (k : β → β → ℂ) (hk : PSDOn Z k) : PSDOn Y (fun a b => k (φ a) (φ b)) :=
  Matrix.PosSemidef.submatrix hk (fun a : Y => (⟨φ a, hφ a a.2⟩ : Z))

lemma level_join (h : Pt E) (s : ℕ) (t : E) : level (join h s t) = level h + s := by
  simp [level, join]

lemma blockStart_join (h : Pt E) (s : ℕ) (t : E) (k : ℕ) (hk : k ≤ h.length) :
    blockStart (join h s t) k = blockStart h k := by
  simp [blockStart, join, List.take_append_of_le_length hk]

lemma blockStart_length (h : Pt E) : blockStart h h.length = level h + 1 := by
  simp [blockStart, level]

lemma mem_X_join (T : Tower E) (h : Pt E) (s : ℕ) (t : E) (i : ℕ) :
    join h s t ∈ T.X i ↔
      level h + s = i ∧ h ∈ T.X (level h) ∧ 1 ≤ s ∧ t ∈ T.Sg (level h + 1) s := by
  rw [T.isTower, T.isTower, level_join]
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨h1, ⟨rfl, fun k hk => ?_⟩, ?_⟩
    · have hk' : k < (join h s t).length := by simp [join]; omega
      have h3 := h2 k hk'
      rw [blockStart_join _ _ _ _ hk.le] at h3
      have e : (join h s t)[k]'hk' = h[k]'hk := by simp [join, List.getElem_append_left hk]
      rwa [e] at h3
    · have hk' : h.length < (join h s t).length := by simp [join]
      have h3 := h2 h.length hk'
      rw [blockStart_join _ _ _ _ le_rfl, blockStart_length] at h3
      have e : (join h s t)[h.length]'hk' = (s, t) := by simp [join]
      rwa [e] at h3
  · rintro ⟨h1, ⟨_, h2⟩, h3, h4⟩
    refine ⟨h1, fun k hk => ?_⟩
    have hk' : k < h.length + 1 := by simpa [join] using hk
    rcases Nat.lt_succ_iff_lt_or_eq.1 hk' with hlt | heq
    · rw [blockStart_join _ _ _ _ hlt.le]
      have e : (join h s t)[k]'hk = h[k]'hlt := by simp [join, List.getElem_append_left hlt]
      rw [e]
      exact h2 k hlt
    · subst heq
      rw [blockStart_join _ _ _ _ le_rfl, blockStart_length]
      have e : (join h s t)[h.length]'hk = (s, t) := by simp [join]
      rw [e]
      exact ⟨h3, h4⟩

lemma Xs_eq (T : Tower E) (i s : ℕ) (hs : 1 ≤ s) (hsi : s ≤ i) :
    Xs T i s = pts (T.X (i - s)) s (T.Sg (i - s + 1) s) := by
  ext p
  simp only [Xs, pts, mem_filter, mem_image, mem_product, Prod.exists]
  constructor
  · rintro ⟨hp, hl⟩
    rcases List.eq_nil_or_concat p with rfl | ⟨h, x, rfl⟩
    · simp at hl
    · obtain ⟨s', t⟩ := x
      have hss : s' = s := by simpa using hl
      subst hss
      rw [List.concat_eq_append] at hp
      obtain ⟨h1, h2, h3, h4⟩ := (mem_X_join T h s' t i).1 hp
      have hlev : level h = i - s' := by omega
      refine ⟨h, t, ⟨?_, ?_⟩, by rw [List.concat_eq_append]; rfl⟩
      · rw [← hlev]; exact h2
      · rw [← hlev]; exact h4
  · rintro ⟨h, t, ⟨hh, ht⟩, rfl⟩
    have hlev : level h = i - s := ((T.isTower _ _).1 hh).1
    exact ⟨(mem_X_join T h s t i).2 ⟨by omega, by rw [hlev]; exact hh, hs, by rw [hlev]; exact ht⟩,
      by simp [join]⟩

lemma sum_pts {β : Type} [AddCommMonoid β] (Y : Finset (Pt E)) (s : ℕ) (S : Finset E)
    (F : Pt E → β) : ∑ p ∈ pts Y s S, F p = ∑ t ∈ S, ∑ h ∈ Y, F (join h s t) := by
  unfold pts
  rw [Finset.sum_image, Finset.sum_product_right]
  rintro ⟨h, t⟩ _ ⟨h', t'⟩ _ e
  simp only [join] at e
  have h2 := List.append_inj' e rfl
  simpa using h2

lemma schur_real {τ : Type} (S : Finset τ) (m : τ → τ → ℝ) (ep M : ℝ) (hep : 0 ≤ ep)
    (row : ∀ t ∈ S, ∑ t' ∈ S, m t t' ≤ ep) (col : ∀ t' ∈ S, ∑ t ∈ S, m t t' ≤ ep)
    (a b : τ → ℝ) (ha : ∀ t, 0 ≤ a t) (hb : ∀ t, 0 ≤ b t)
    (hA : ∑ t ∈ S, a t ≤ M) (hB : ∑ t ∈ S, b t ≤ M) :
    ∑ t ∈ S, ∑ t' ∈ S, m t t' * ((a t + b t') / 2) ≤ ep * M := by
  have e : ∑ t ∈ S, ∑ t' ∈ S, m t t' * ((a t + b t') / 2) =
      (∑ t ∈ S, a t * ∑ t' ∈ S, m t t') / 2 + (∑ t' ∈ S, b t' * ∑ t ∈ S, m t t') / 2 := by
    have e2 : ∑ t' ∈ S, b t' * ∑ t ∈ S, m t t' = ∑ t ∈ S, ∑ t' ∈ S, b t' * m t t' := by
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun t' _ => Finset.mul_sum _ _ _
    rw [e2, ← add_div, ← Finset.sum_add_distrib, Finset.sum_div]
    refine Finset.sum_congr rfl fun t _ => ?_
    rw [Finset.mul_sum, ← Finset.sum_add_distrib, Finset.sum_div]
    exact Finset.sum_congr rfl fun t' _ => by ring
  rw [e]
  have h1 : ∑ t ∈ S, a t * ∑ t' ∈ S, m t t' ≤ ep * M := by
    calc ∑ t ∈ S, a t * ∑ t' ∈ S, m t t' ≤ ∑ t ∈ S, a t * ep :=
          Finset.sum_le_sum fun t ht => mul_le_mul_of_nonneg_left (row t ht) (ha t)
      _ = ep * ∑ t ∈ S, a t := by rw [← Finset.sum_mul, mul_comm]
      _ ≤ ep * M := mul_le_mul_of_nonneg_left hA hep
  have h2 : ∑ t' ∈ S, b t' * ∑ t ∈ S, m t t' ≤ ep * M := by
    calc ∑ t' ∈ S, b t' * ∑ t ∈ S, m t t' ≤ ∑ t' ∈ S, b t' * ep :=
          Finset.sum_le_sum fun t ht => mul_le_mul_of_nonneg_left (col t ht) (hb t)
      _ = ep * ∑ t ∈ S, b t := by rw [← Finset.sum_mul, mul_comm]
      _ ≤ ep * M := mul_le_mul_of_nonneg_left hB hep
  linarith

lemma phi_sum {τ J : Type} (S : Finset τ) (Js : Finset J) (m : τ → τ → ℝ) (g : J → τ → τ → ℝ) :
    ∑ t ∈ S, ∑ t' ∈ S, m t t' * ∑ j ∈ Js, g j t t' =
      ∑ j ∈ Js, ∑ t ∈ S, ∑ t' ∈ S, m t t' * g j t t' := by
  simp_rw [Finset.mul_sum]
  calc ∑ t ∈ S, ∑ t' ∈ S, ∑ j ∈ Js, m t t' * g j t t'
      = ∑ t ∈ S, ∑ j ∈ Js, ∑ t' ∈ S, m t t' * g j t t' :=
        Finset.sum_congr rfl fun t _ => Finset.sum_comm
    _ = ∑ j ∈ Js, ∑ t ∈ S, ∑ t' ∈ S, m t t' * g j t t' := Finset.sum_comm

lemma diag_nonneg (D : Data E W) (hG : D.GramPSD) (hK : D.KernelPSD) (hW : D.WordsPos) (ε : ℝ)
    (hε : 0 < ε) (i s : ℕ) (w : W) (Y : Finset (Pt E)) (t : E) :
    0 ≤ (D.Nst ε i s w Y (blk (D.Kr i) s t t) t t).re := by
  unfold Data.Nst
  rw [Complex.div_ofReal_re]
  refine div_nonneg ?_ (hW w).le
  exact psd_sum_nonneg Y _ (fun h h' => D.gram ε i w (join h s t) (join h' s t))
    (psd_comp Y (Y.image fun h => join h s t) (fun h => join h s t)
      (fun a ha => mem_image_of_mem _ ha) _ (hK.1 i _))
    (psd_comp Y (Y.image fun h => join h s t) (fun h => join h s t)
      (fun a ha => mem_image_of_mem _ ha) _ (hG ε hε i w _))

lemma Sf_pts (D : Data E W) (ε : ℝ) (i s : ℕ) (w : W) (Y : Finset (Pt E)) (S : Finset E) :
    D.Sf ε i w (pts Y s S) / D.wt w =
      ∑ t ∈ S, ∑ t' ∈ S, (D.Nst ε i s w Y (blk (D.Kr i) s t t') t t').re := by
  unfold Data.Sf Data.Nst
  rw [sum_pts]
  simp_rw [sum_pts, Complex.div_ofReal_re, Complex.re_sum, blk]
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [Finset.sum_comm, Finset.sum_div]

end

end Formalism.FourierDecayAlt.P.BlockStartPoints

namespace Formalism.FourierDecayAlt.P

open Finset Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data Formalism.FourierDecayAlt.P.BlockStartPoints
open Classical

theorem schurRecursion_true : Formalism.FourierDecayAlt.TB.SchurStep := by
  intro E W _ D ep hG hK hW hA2 hEL hLS T ε hε i s hs hsi hi w hw hcnt M hM
  have hlev : ∀ h ∈ T.X (i - s), level h = i - s := fun h hh => ((T.isTower _ _).1 hh).1
  have hS0 : ∀ t ∈ T.Sg (i - s + 1) s, t ≠ 0 := fun t ht h0 => T.zero_not_mem _ _ (h0 ▸ ht)
  have hep : 0 ≤ ep := by simpa using hLS.1 i (by omega) hi ∅ (by simp)
  have ha : ∀ w' t, 0 ≤ (D.Nst ε i s w' (T.X (i - s)) (blk (D.Kr i) s t t) t t).re :=
    fun w' t => diag_nonneg D hG hK hW ε hε i s w' _ t
  have hM0 : 0 ≤ M :=
    le_trans (Finset.sum_nonneg fun t _ => ha w t) (hM w (by simp [Data.Wb, hw]))
  rw [Xs_eq T i s hs hsi, Sf_pts]
  generalize hY : T.X (i - s) = Y at *
  generalize hS : T.Sg (i - s + 1) s = S at *
  have hDg : ∀ w', D.Dg T ε i s w' =
      ∑ t ∈ S, (D.Nst ε i s w' Y (blk (D.Kr i) s t t) t t).re := by
    intro w'; unfold Data.Dg; rw [hY, hS]
  simp only [hDg] at hM ⊢

  have hz : ∀ t ∈ S, ∀ t' ∈ S, t ≠ t' →
      ((i = D.r + 1 ∧ s = 1) ∨ t⁻¹ - t'⁻¹ ∉ D.Lap (i - s + 1) s) →
      D.Nst ε i s w Y (blk (D.Kr i) s t t') t t' = 0 := by
    intro t ht t' ht' hne hc
    unfold Data.Nst
    rw [Finset.sum_eq_zero, zero_div]
    intro h hh
    refine Finset.sum_eq_zero fun h' hh' => ?_
    have hk0 : D.Kr i (join h s t) (join h' s t') = 0 := by
      by_contra hk
      obtain ⟨h1, h2⟩ := hA2 i s hs hsi hi h h' t t' (hlev h hh) (hlev h' hh') (hS0 t ht)
        (hS0 t' ht') hne hk
      rcases hc with hc | hc
      · exact h1 hc
      · exact hc h2
    simp [blk, hk0]

  have split : ∀ B : E → E → ℝ,
      (∀ t ∈ S, ∀ t' ∈ S, t ≠ t' → (D.Nst ε i s w Y (blk (D.Kr i) s t t') t t').re ≤ B t t') →
      (∀ t, 0 ≤ B t t) →
      ∑ t ∈ S, ∑ t' ∈ S, (D.Nst ε i s w Y (blk (D.Kr i) s t t') t t').re ≤
        ∑ t ∈ S, (D.Nst ε i s w Y (blk (D.Kr i) s t t) t t).re + ∑ t ∈ S, ∑ t' ∈ S, B t t' := by
    intro B hB hB0
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_le_sum fun t ht => ?_
    have e : (D.Nst ε i s w Y (blk (D.Kr i) s t t) t t).re =
        ∑ t' ∈ S, if t' = t then (D.Nst ε i s w Y (blk (D.Kr i) s t' t') t' t').re else 0 := by
      rw [Finset.sum_ite_eq' S t, if_pos ht]
    rw [e, ← Finset.sum_add_distrib]
    refine Finset.sum_le_sum fun t' ht' => ?_
    by_cases htt : t' = t
    · subst htt
      rw [if_pos rfl]
      linarith [hB0 t']
    · rw [if_neg htt, zero_add]
      exact hB t ht t' ht' (Ne.symm htt)
  by_cases htop : i = D.r + 1 ∧ s = 1
  · have h1 := split (fun _ _ => 0)
      (fun t ht t' ht' hne => by rw [hz t ht t' ht' hne (Or.inl htop)]; simp) (fun _ => le_rfl)
    have h2 : 0 ≤ 3 ^ D.f * ep * M := by positivity
    simp only [Finset.sum_const_zero, add_zero] at h1
    linarith
  obtain ⟨θ, hθ, hE⟩ := hEL ε hε i s hs hsi hi htop w hw hcnt
  have hE' := hE Y S (D.Kr i) hlev (hK.1 i _)
  set WW := D.Wb (D.cnt w + D.K) ×ˢ D.Wb (D.cnt w + D.K) with hWW
  set ρ := D.szL (i - s + 1) s with hρ
  set a : W → E → ℝ := fun w' t => (D.Nst ε i s w' Y (blk (D.Kr i) s t t) t t).re with hadef

  let P : E → E → Prop := fun t t' =>
    t ≠ t' ∧ t⁻¹ - t'⁻¹ ∈ D.Lap (i - s + 1) s ∧ 0 ≤ D.maj ρ (t⁻¹ - t'⁻¹)
  let m : E → E → ℝ := fun t t' => if P t t' then D.maj ρ (t⁻¹ - t'⁻¹) else 0
  have hm0 : ∀ t t', 0 ≤ m t t' := by
    intro t t'
    by_cases hP : P t t'
    · simp only [m, if_pos hP]; exact hP.2.2
    · simp only [m, if_neg hP]; exact le_rfl
  have row : ∀ t ∈ S, ∑ t' ∈ S, m t t' ≤ ep := by
    intro t _
    have h1 := hLS.2 i s hs hsi hi htop ((S.filter fun t' => P t t').image fun t' => t⁻¹ - t'⁻¹)
      (by
        intro l hl
        obtain ⟨t', ht', rfl⟩ := Finset.mem_image.1 hl
        have hP := (Finset.mem_filter.1 ht').2
        exact ⟨hP.2.1, sub_ne_zero.2 fun e => hP.1 (inv_injective e)⟩)
    rw [Finset.sum_image (by
      intro x _ y _ e
      exact inv_injective (sub_right_injective e)), Finset.sum_filter] at h1
    exact h1
  have col : ∀ t' ∈ S, ∑ t ∈ S, m t t' ≤ ep := by
    intro t' _
    have h1 := hLS.2 i s hs hsi hi htop ((S.filter fun t => P t t').image fun t => t⁻¹ - t'⁻¹)
      (by
        intro l hl
        obtain ⟨t, ht, rfl⟩ := Finset.mem_image.1 hl
        have hP := (Finset.mem_filter.1 ht).2
        exact ⟨hP.2.1, sub_ne_zero.2 fun e => hP.1 (inv_injective e)⟩)
    rw [Finset.sum_image (by
      intro x _ y _ e
      exact inv_injective (sub_left_injective e)), Finset.sum_filter] at h1
    exact h1
  have hX0 : ∀ π t t', 0 ≤ ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) := by
    intro π t t'
    refine Finset.sum_nonneg fun x _ => mul_nonneg ((hθ π).1 x) ?_
    have := ha x.1 t
    have := ha x.2 t'
    simp only [hadef]
    linarith
  have h1 := split (fun t t' => m t t' * ∑ π, ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2))
    (by
      intro t ht t' ht' hne
      have hG0 : 0 ≤ ∑ π, ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) :=
        Finset.sum_nonneg fun π _ => hX0 π t t'
      by_cases hL : t⁻¹ - t'⁻¹ ∈ D.Lap (i - s + 1) s
      · obtain ⟨π, hπ⟩ := hE' t ht t' ht' (hS0 t ht) (hS0 t' ht')
          (sub_ne_zero.2 fun e => hne (inv_injective e))
        have h2 : (D.Nst ε i s w Y (blk (D.Kr i) s t t') t t').re ≤
            D.maj ρ (t⁻¹ - t'⁻¹) * ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) :=
          le_trans (Complex.re_le_norm _) hπ
        have h3 : ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) ≤
            ∑ π, ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) :=
          Finset.single_le_sum (f := fun π => ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2))
            (fun π _ => hX0 π t t') (Finset.mem_univ π)
        by_cases hmj : 0 ≤ D.maj ρ (t⁻¹ - t'⁻¹)
        · have hP : P t t' := ⟨hne, hL, hmj⟩
          simp only [m, if_pos hP]
          exact le_trans h2 (mul_le_mul_of_nonneg_left h3 hmj)
        · have h4 : D.maj ρ (t⁻¹ - t'⁻¹) * ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) ≤ 0 :=
            mul_nonpos_of_nonpos_of_nonneg (not_le.1 hmj).le (hX0 π t t')
          exact le_trans (le_trans h2 h4) (mul_nonneg (hm0 t t') hG0)
      · rw [hz t ht t' ht' hne (Or.inr hL)]
        exact mul_nonneg (hm0 t t') hG0)
    (fun t => mul_nonneg (hm0 t t) (Finset.sum_nonneg fun π _ => hX0 π t t))
  refine le_trans h1 (add_le_add le_rfl ?_)
  rw [phi_sum]
  have h5 : ∀ π : Fin D.f → Fin 3,
      ∑ t ∈ S, ∑ t' ∈ S, m t t' * ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2) ≤ ep * M := by
    intro π
    rw [phi_sum]
    calc ∑ x ∈ WW, ∑ t ∈ S, ∑ t' ∈ S, m t t' * (θ π x * ((a x.1 t + a x.2 t') / 2))
        = ∑ x ∈ WW, θ π x * ∑ t ∈ S, ∑ t' ∈ S, m t t' * ((a x.1 t + a x.2 t') / 2) := by
          refine Finset.sum_congr rfl fun x _ => ?_
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun t _ => ?_
          rw [Finset.mul_sum]
          exact Finset.sum_congr rfl fun t' _ => by ring
      _ ≤ ∑ x ∈ WW, θ π x * (ep * M) := by
          refine Finset.sum_le_sum fun x hx => mul_le_mul_of_nonneg_left ?_ ((hθ π).1 x)
          have hx' := Finset.mem_product.1 hx
          exact schur_real S m ep M hep row col (a x.1) (a x.2) (ha x.1) (ha x.2)
            (hM x.1 hx'.1) (hM x.2 hx'.2)
      _ = ep * M := by rw [← Finset.sum_mul, (hθ π).2.2, one_mul]
  calc ∑ π : Fin D.f → Fin 3,
        ∑ t ∈ S, ∑ t' ∈ S, m t t' * ∑ x ∈ WW, θ π x * ((a x.1 t + a x.2 t') / 2)
      ≤ ∑ _π : Fin D.f → Fin 3, ep * M := Finset.sum_le_sum fun π _ => h5 π
    _ = 3 ^ D.f * ep * M := by
        rw [Finset.sum_const, Finset.card_univ, Fintype.card_fun, Fintype.card_fin,
          Fintype.card_fin, nsmul_eq_mul]
        push_cast
        ring

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockStartPoints =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FormDomination =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FormDomination", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.FormDomination

open Finset Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data

open scoped ComplexOrder

theorem form_nonneg {α : Type} (Y : Finset α) (k g : α → α → ℂ) (hk : PSDOn Y k)
    (hg : PSDOn Y g) : 0 ≤ (∑ a ∈ Y, ∑ b ∈ Y, k a b * g a b).re := by
  have H := (Matrix.PosSemidef.hadamard hk hg).dotProduct_mulVec_nonneg (fun _ => (1 : ℂ))
  have e : star (fun _ : Y => (1 : ℂ)) ⬝ᵥ
      ((Matrix.hadamard (Matrix.of fun x y : Y => k x y) (Matrix.of fun x y : Y => g x y)).mulVec
        (fun _ => (1 : ℂ))) = ∑ a ∈ Y, ∑ b ∈ Y, k a b * g a b := by
    simp only [dotProduct, Matrix.mulVec, Matrix.hadamard_apply, Matrix.of_apply, Pi.star_apply,
      star_one, one_mul, mul_one]
    rw [← Finset.sum_coe_sort Y]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← Finset.sum_coe_sort Y]
  rw [e] at H
  exact (Complex.le_def.1 H).1

theorem form_dom {α ι : Type} (Y : Finset α) (R : Finset ι) (c : ℝ) (k g : α → α → ℂ)
    (Th : ι → α → α → ℂ)
    (h : PSDOn Y (fun a b => (c : ℂ) * k a b - ∑ t ∈ R, Th t a b)) (hg : PSDOn Y g) :
    ∑ t ∈ R, (∑ a ∈ Y, ∑ b ∈ Y, Th t a b * g a b).re ≤
      c * (∑ a ∈ Y, ∑ b ∈ Y, k a b * g a b).re := by
  have H := form_nonneg Y _ g h hg
  have e : ∑ a ∈ Y, ∑ b ∈ Y, ((c : ℂ) * k a b - ∑ t ∈ R, Th t a b) * g a b =
      (c : ℂ) * ∑ a ∈ Y, ∑ b ∈ Y, k a b * g a b -
        ∑ t ∈ R, ∑ a ∈ Y, ∑ b ∈ Y, Th t a b * g a b := by
    simp only [sub_mul, Finset.sum_sub_distrib, Finset.sum_mul, Finset.mul_sum, mul_assoc]
    congr 1
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_comm]
  rw [e, Complex.sub_re, Complex.re_ofReal_mul] at H
  rw [← Complex.re_sum]
  linarith

theorem prob_le {α : Type} (S : Finset α) (θ g : α → ℝ) (hθ : IsProb S θ) (M : ℝ)
    (hg : ∀ a ∈ S, g a ≤ M) : ∑ a ∈ S, θ a * g a ≤ M := by
  calc ∑ a ∈ S, θ a * g a ≤ ∑ a ∈ S, θ a * M :=
        Finset.sum_le_sum fun a ha => mul_le_mul_of_nonneg_left (hg a ha) (hθ.1 a)
    _ = M := by rw [← Finset.sum_mul, hθ.2.2, one_mul]

theorem prob_nonneg {α : Type} (S : Finset α) (θ g : α → ℝ) (hθ : IsProb S θ)
    (hg : ∀ a ∈ S, 0 ≤ g a) : 0 ≤ ∑ a ∈ S, θ a * g a :=
  Finset.sum_nonneg fun a ha => mul_nonneg (hθ.1 a) (hg a ha)

variable {E W : Type} [Field E] (D : Data E W)

theorem baseGram_nonneg (hG : D.GramPSD) (hW : D.WordsPos) {ε : ℝ} (hε : 0 < ε) (k : ℕ) (w : W)
    (Y : Finset (Pt E)) (κ : Pt E → Pt E → ℂ) (hκ : PSDOn Y κ) : 0 ≤ D.N0 ε k w Y κ :=
  div_nonneg (form_nonneg Y κ _ hκ (hG ε hε k w Y)) (hW w).le

theorem sum_baseGram_le (hG : D.GramPSD) (hW : D.WordsPos) {ε : ℝ} (hε : 0 < ε) (k : ℕ) (w : W)
    (Y : Finset (Pt E)) (R : Finset E) (c : ℝ) (κ : Pt E → Pt E → ℂ)
    (Th : E → Pt E → Pt E → ℂ)
    (h : PSDOn Y (fun a b => (c : ℂ) * κ a b - ∑ t ∈ R, Th t a b)) :
    ∑ t ∈ R, D.N0 ε k w Y (Th t) ≤ c * D.N0 ε k w Y κ := by
  unfold Data.N0
  rw [← Finset.sum_div, ← mul_div_assoc]
  exact div_le_div_of_nonneg_right (form_dom Y R c κ _ Th h (hG ε hε k w Y)) (hW w).le

theorem mean_dom (hG : D.GramPSD) (hW : D.WordsPos) {ε : ℝ} (hε : 0 < ε) (k : ℕ)
    (S : Finset W) (θ : W → ℝ) (hθ : IsProb S θ)
    (Y : Finset (Pt E)) (R : Finset E) (c : ℝ) (hc : 0 ≤ c) (κ : Pt E → Pt E → ℂ)
    (Th : E → Pt E → Pt E → ℂ)
    (h : PSDOn Y (fun a b => (c : ℂ) * κ a b - ∑ t ∈ R, Th t a b)) (M : ℝ)
    (hM : ∀ w' ∈ S, D.N0 ε k w' Y κ ≤ M) :
    ∑ t ∈ R, ∑ w' ∈ S, θ w' * D.N0 ε k w' Y (Th t) ≤ c * M := by
  rw [Finset.sum_comm]
  simp only [← Finset.mul_sum]
  refine prob_le S θ _ hθ _ fun w' hw' => ?_
  exact (sum_baseGram_le D hG hW hε k w' Y R c κ Th h).trans (mul_le_mul_of_nonneg_left (hM w' hw') hc)

end Formalism.FourierDecayAlt.P.FormDomination

namespace Formalism.FourierDecayAlt.P

open Finset Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data Formalism.FourierDecayAlt.P.FormDomination

open Classical

theorem longBlockStep : Formalism.FourierDecayAlt.TB.MultiStep := by
  intro E W _ D C₄ hG hK hW hA hB hC hv T ε hε i s hs hsi hi w hw hcnt hvol R hR M hM
  obtain ⟨θ, hθ, hest⟩ := hB ε hε i s hs hsi hi w hw hcnt hvol
  obtain ⟨⟨he0, he1⟩, -, -, hdom⟩ := hA i s (by omega) hsi hi
  have hY : ∀ h ∈ T.X (i - s), level h = i - s := fun h hh => ((T.isTower _ _).1 hh).1
  have hc : 0 ≤ C₄ ^ (D.f * s) * (∏ s' ∈ Ico 1 s, D.vol (i - s + 1) s') :=
    mul_nonneg (pow_nonneg (by linarith) _) (Finset.prod_nonneg fun s' _ => hv _ _)
  have hd := hdom R hR (T.X (i - s)) hY
  have hd' : PSDOn (T.X (i - s)) (fun a b => (((1 + D.e i : ℝ)) : ℂ) * D.Kr (i - s) a b -
      ∑ t ∈ R, D.Th i s t a b) := by
    push_cast; exact hd
  calc ∑ t₀ ∈ R, ∑ t ∈ (T.Sg (i - s + 1) s).filter (fun t => t - t₀ ∈ D.La (i - s + 1) s),
            (D.Nst ε i s w (T.X (i - s)) (D.Th i s t₀) t t).re
      ≤ ∑ t₀ ∈ R, C₄ ^ (D.f * s) * (∏ s' ∈ Ico 1 s, D.vol (i - s + 1) s') *
          ∑ w' ∈ D.Wb (D.cnt w + (s + 1) * D.K),
            θ w' * D.N0 ε (i - s) w' (T.X (i - s)) (D.Th i s t₀) := by
        refine Finset.sum_le_sum fun t₀ _ => ?_
        refine hest (T.X (i - s)) hY _ (hK.2 i s t₀ _) t₀ _ fun t ht => ?_
        rw [Finset.mem_filter] at ht
        exact ⟨fun h0 => T.zero_not_mem _ _ (h0 ▸ ht.1), ht.2⟩
    _ = C₄ ^ (D.f * s) * (∏ s' ∈ Ico 1 s, D.vol (i - s + 1) s') *
          ∑ t₀ ∈ R, ∑ w' ∈ D.Wb (D.cnt w + (s + 1) * D.K),
            θ w' * D.N0 ε (i - s) w' (T.X (i - s)) (D.Th i s t₀) := by
        rw [Finset.mul_sum]
    _ ≤ C₄ ^ (D.f * s) * (∏ s' ∈ Ico 1 s, D.vol (i - s + 1) s') * ((1 + D.e i) * M) :=
        mul_le_mul_of_nonneg_left
          (mean_dom D hG hW hε (i - s) _ θ hθ _ R (1 + D.e i) (by linarith) _ _ hd' M hM) hc

theorem singleBlockStep : Formalism.FourierDecayAlt.TB.OneStep := by
  intro E W _ D ep hG hK hW hA hWv hP hL T ε hε i hi1 hi w hw hcnt R hR M hM
  obtain ⟨θ, hθ, hest⟩ := hWv ε hε i hi1 hi w hw hcnt
  obtain ⟨⟨he0, he1⟩, -, -, hdom⟩ := hA i 1 le_rfl hi1 hi
  have hii : i - 1 + 1 = i := Nat.sub_add_cancel hi1
  rw [hii] at hdom
  have hY : ∀ h ∈ T.X (i - 1), level h = i - 1 := fun h hh => ((T.isTower _ _).1 hh).1
  have hep : 0 ≤ ep := by simpa using hL.1 i hi1 hi ∅ (by simp)
  have hd := hdom R hR (T.X (i - 1)) hY
  have hd' : PSDOn (T.X (i - 1)) (fun a b => (((1 + D.e i : ℝ)) : ℂ) * D.Kr (i - 1) a b -
      ∑ t ∈ R, D.Th i 1 t a b) := by
    push_cast; exact hd
  have h1e : 0 ≤ 1 + D.e i := by linarith

  set g : Finset (Fin D.f) → E → ℝ := fun A t₀ => ∑ w' ∈ D.Wb (D.cnt w + D.K),
    θ A w' * D.N0 ε (i - 1) w' (T.X (i - 1)) (D.Th i 1 t₀) with hg
  have hg0 : ∀ A t₀, 0 ≤ g A t₀ := fun A t₀ =>
    prob_nonneg _ _ _ (hθ A) fun w' _ => baseGram_nonneg D hG hW hε _ _ _ _ (hK.2 i 1 t₀ _)
  have hstep : ∀ t₀ ∈ R, ∑ t ∈ (T.Sg i 1).filter (fun t => t - t₀ ∈ D.La i 1),
      (D.Nst ε i 1 w (T.X (i - 1)) (D.Th i 1 t₀) t t).re ≤
        D.N0 ε (i - 1) w (T.X (i - 1)) (D.Th i 1 t₀) + ep * ∑ A, g A t₀ := by
    intro t₀ _
    have hpsd := hK.2 i 1 t₀ (T.X (i - 1))
    obtain ⟨h0, hl⟩ := hest (T.X (i - 1)) hY _ hpsd
    have hbound : ∀ L : Finset E, (∀ l ∈ L, l ∈ D.Lad i ∧ l ≠ 0) →
        ∑ l ∈ L, ‖D.Nhat ε i w (T.X (i - 1)) (D.Th i 1 t₀) l‖ ≤ ep * ∑ A, g A t₀ := by
      intro L hLm
      have hG0 : 0 ≤ ∑ A, g A t₀ := Finset.sum_nonneg fun A _ => hg0 A t₀
      have h1 : ∀ l ∈ L, ‖D.Nhat ε i w (T.X (i - 1)) (D.Th i 1 t₀) l‖ ≤
          max (D.maj (D.szD i) l) 0 * ∑ A, g A t₀ := by
        intro l hl'
        obtain ⟨A, hA'⟩ := hl l (hLm l hl').1 (hLm l hl').2
        calc ‖D.Nhat ε i w (T.X (i - 1)) (D.Th i 1 t₀) l‖ ≤ D.maj (D.szD i) l * g A t₀ := hA'
          _ ≤ max (D.maj (D.szD i) l) 0 * g A t₀ :=
              mul_le_mul_of_nonneg_right (le_max_left _ _) (hg0 A t₀)
          _ ≤ max (D.maj (D.szD i) l) 0 * ∑ A, g A t₀ :=
              mul_le_mul_of_nonneg_left
                (Finset.single_le_sum (f := fun A => g A t₀) (fun A _ => hg0 A t₀)
                  (Finset.mem_univ A)) (le_max_right _ _)
      have h2 : ∑ l ∈ L, max (D.maj (D.szD i) l) 0 ≤ ep := by
        have h3 := hL.1 i hi1 hi (L.filter fun l => 0 ≤ D.maj (D.szD i) l)
          (fun l hl' => hLm l (Finset.mem_filter.1 hl').1)
        rw [Finset.sum_filter] at h3
        refine le_trans (le_of_eq (Finset.sum_congr rfl fun l _ => ?_)) h3
        split_ifs with hh
        · exact max_eq_left hh
        · exact max_eq_right (not_le.1 hh).le
      calc ∑ l ∈ L, ‖D.Nhat ε i w (T.X (i - 1)) (D.Th i 1 t₀) l‖
          ≤ ∑ l ∈ L, max (D.maj (D.szD i) l) 0 * ∑ A, g A t₀ := Finset.sum_le_sum h1
        _ = (∑ l ∈ L, max (D.maj (D.szD i) l) 0) * ∑ A, g A t₀ := by rw [Finset.sum_mul]
        _ ≤ ep * ∑ A, g A t₀ := mul_le_mul_of_nonneg_right h2 hG0
    have hp := hP ε hε i hi1 hi w (T.X (i - 1)) hY _ hpsd t₀ _ hbound
      ((T.Sg i 1).filter (fun t => t - t₀ ∈ D.La i 1)) (fun t ht => by
        rw [Finset.mem_filter] at ht
        exact ⟨fun h0 => T.zero_not_mem _ _ (h0 ▸ ht.1), ht.2⟩)
    rw [h0, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (baseGram_nonneg D hG hW hε _ _ _ _ hpsd)] at hp
    exact hp
  have hsumG : ∑ t₀ ∈ R, ∑ A, g A t₀ ≤ 2 ^ D.f * ((1 + D.e i) * M) := by
    rw [Finset.sum_comm]
    calc ∑ A : Finset (Fin D.f), ∑ t₀ ∈ R, g A t₀
        ≤ ∑ _A : Finset (Fin D.f), (1 + D.e i) * M :=
          Finset.sum_le_sum fun A _ =>
            mean_dom D hG hW hε (i - 1) _ (θ A) (hθ A) _ R (1 + D.e i) h1e _ _ hd' M hM
      _ = 2 ^ D.f * ((1 + D.e i) * M) := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_finset, Fintype.card_fin,
            nsmul_eq_mul]
          push_cast; ring
  calc ∑ t₀ ∈ R, ∑ t ∈ (T.Sg i 1).filter (fun t => t - t₀ ∈ D.La i 1),
            (D.Nst ε i 1 w (T.X (i - 1)) (D.Th i 1 t₀) t t).re
      ≤ ∑ t₀ ∈ R, (D.N0 ε (i - 1) w (T.X (i - 1)) (D.Th i 1 t₀) + ep * ∑ A, g A t₀) :=
        Finset.sum_le_sum hstep
    _ = ∑ t₀ ∈ R, D.N0 ε (i - 1) w (T.X (i - 1)) (D.Th i 1 t₀) +
          ep * ∑ t₀ ∈ R, ∑ A, g A t₀ := by
        rw [Finset.sum_add_distrib, Finset.mul_sum]
    _ ≤ (1 + D.e i) * D.N0 ε (i - 1) w (T.X (i - 1)) (D.Kr (i - 1)) +
          ep * (2 ^ D.f * ((1 + D.e i) * M)) :=
        add_le_add (sum_baseGram_le D hG hW hε (i - 1) w _ R (1 + D.e i) _ _ hd')
          (mul_le_mul_of_nonneg_left hsumG hep)
    _ = (1 + D.e i) * (D.N0 ε (i - 1) w (T.X (i - 1)) (D.Kr (i - 1)) + 2 ^ D.f * ep * M) := by
        ring

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FormDomination =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveSemidefinitePullback =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveSemidefinitePullback", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PositiveSemidefinitePullback

open Finset Matrix Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data

open scoped ComplexOrder

noncomputable section

open Classical

theorem sqrt_form_sum_le {n ι : Type} [Fintype n] (M : Matrix n n ℂ) (hM : M.PosSemidef)
    (I : Finset ι) (x : ι → n → ℂ) :
    √(((M *ᵥ (∑ s ∈ I, x s)) ⬝ᵥ star (∑ s ∈ I, x s)).re) ≤
      ∑ s ∈ I, √(((M *ᵥ x s) ⬝ᵥ star (x s)).re) :=
  @norm_sum_le _ _ (M.toSeminormedAddCommGroup hM) I x

def ind {α : Type} (Y A : Finset α) : Y → ℂ := fun p => if (p : α) ∈ A then 1 else 0

theorem sum_mul_ind {α : Type} (Y A : Finset α) (hA : A ⊆ Y) (g : α → ℂ) :
    ∑ q : Y, g q * ind Y A q = ∑ q ∈ A, g q := by
  have h := Finset.sum_coe_sort Y (fun q => g q * (if q ∈ A then (1 : ℂ) else 0))
  simp only [ind]
  rw [h]
  simp only [mul_ite, mul_one, mul_zero, Finset.sum_ite_mem, Finset.inter_eq_right.mpr hA]

theorem star_ind {α : Type} (Y A : Finset α) : star (ind Y A) = ind Y A := by
  funext p
  simp only [Pi.star_apply, ind]
  split_ifs <;> simp

theorem form_ind {α : Type} (Y A : Finset α) (hA : A ⊆ Y) (k : α → α → ℂ) :
    ((Matrix.of fun x y : Y => k x y) *ᵥ ind Y A) ⬝ᵥ star (ind Y A) = ∑ p ∈ A, ∑ q ∈ A, k p q := by
  rw [star_ind]
  simp only [dotProduct, mulVec, of_apply]
  have h1 : ∀ p : Y, ∑ q : Y, k p q * ind Y A q = ∑ q ∈ A, k p q :=
    fun p => sum_mul_ind Y A hA (fun q => k p q)
  simp only [h1]
  exact sum_mul_ind Y A hA (fun p => ∑ q ∈ A, k p q)

theorem psd_mul {α : Type} {Y : Finset α} {k₁ k₂ : α → α → ℂ} (h₁ : PSDOn Y k₁) (h₂ : PSDOn Y k₂) :
    PSDOn Y (fun p q => k₁ p q * k₂ p q) :=
  Matrix.PosSemidef.hadamard h₁ h₂

theorem psd_pull {α β : Type} {Y : Finset α} (g : α → β) {k : β → β → ℂ}
    (h : PSDOn (Y.image g) k) : PSDOn Y (fun p q => k (g p) (g q)) :=
  Matrix.PosSemidef.submatrix h (fun p : Y => (⟨g p, Finset.mem_image_of_mem g p.2⟩ : Y.image g))

theorem psd_sum_nonneg {α : Type} {Y : Finset α} {k : α → α → ℂ} (h : PSDOn Y k) :
    0 ≤ (∑ p ∈ Y, ∑ q ∈ Y, k p q).re := by
  rw [← form_ind Y Y (Finset.Subset.refl Y) k, dotProduct_comm]
  exact Matrix.PosSemidef.re_dotProduct_nonneg h _

variable {E W : Type} [Field E]

theorem last_size (T : Tower E) {i : ℕ} (hi : 1 ≤ i) {p : Pt E} (hp : p ∈ T.X i) :
    ∃ s ∈ Icc 1 i, p.getLast?.map Prod.fst = some s := by
  obtain ⟨hl, hb⟩ := (T.isTower i p).1 hp
  rcases List.eq_nil_or_concat p with rfl | ⟨h, b, rfl⟩
  · simp [level] at hl; omega
  · refine ⟨b.1, ?_, by simp⟩
    have h1 : 1 ≤ b.1 := by simpa using (hb h.length (by simp)).1
    have h2 : level (h.concat b) = level h + b.1 := by simp [level]
    rw [Finset.mem_Icc]
    exact ⟨h1, by omega⟩

theorem sum_ind_Xs (T : Tower E) {i : ℕ} (hi : 1 ≤ i) :
    ∑ s ∈ Icc 1 i, ind (T.X i) (Xs T i s) = ind (T.X i) (T.X i) := by
  funext p
  obtain ⟨s, hs, hps⟩ := last_size T hi p.2
  rw [Finset.sum_apply, Finset.sum_eq_single s]
  · have hm : (p : Pt E) ∈ Xs T i s := by
      simp only [Xs, Finset.mem_filter]
      exact ⟨p.2, hps⟩
    simp [ind, hm]
  · intro s' _ hne
    have : (p : Pt E) ∉ Xs T i s' := by
      simp only [Xs, Finset.mem_filter, not_and]
      intro _ h
      rw [hps] at h
      exact hne (Option.some.inj h).symm
    simp [ind, this]
  · intro h; exact absurd hs h

theorem Nst_re (D : Data E W) (ε : ℝ) (i s : ℕ) (w : W) (Y : Finset (Pt E))
    (κ : Pt E → Pt E → ℂ) (t t' : E) :
    (D.Nst ε i s w Y κ t t').re =
      (∑ h ∈ Y, ∑ h' ∈ Y, κ h h' * D.gram ε i w (join h s t) (join h' s t')).re / D.wt w := by
  simp only [Data.Nst, Complex.div_ofReal_re]

theorem Nst_nonneg (D : Data E W) (hG : D.GramPSD) (hW : D.WordsPos) {ε : ℝ} (hε : 0 < ε)
    (i s : ℕ) (w : W) (Y : Finset (Pt E)) {κ : Pt E → Pt E → ℂ} (hκ : PSDOn Y κ) (t : E) :
    0 ≤ (D.Nst ε i s w Y κ t t).re := by
  rw [Nst_re]
  refine div_nonneg ?_ (hW w).le
  exact psd_sum_nonneg (psd_mul hκ (psd_pull (fun h => join h s t) (hG ε hε i w _)))

theorem Nst_mono (D : Data E W) (hG : D.GramPSD) (hW : D.WordsPos) {ε : ℝ} (hε : 0 < ε)
    (i s : ℕ) (w : W) (Y : Finset (Pt E)) {κ₁ κ₂ : Pt E → Pt E → ℂ}
    (hκ : PSDOn Y (fun h h' => κ₂ h h' - κ₁ h h')) (t : E) :
    (D.Nst ε i s w Y κ₁ t t).re ≤ (D.Nst ε i s w Y κ₂ t t).re := by
  have h := Nst_nonneg D hG hW hε i s w Y hκ t
  have e : D.Nst ε i s w Y (fun h h' => κ₂ h h' - κ₁ h h') t t =
      D.Nst ε i s w Y κ₂ t t - D.Nst ε i s w Y κ₁ t t := by
    simp only [Data.Nst, sub_mul, Finset.sum_sub_distrib, sub_div]
  rw [e, Complex.sub_re] at h
  linarith

end

end Formalism.FourierDecayAlt.P.PositiveSemidefinitePullback

namespace Formalism.FourierDecayAlt.P

open Finset Matrix Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data Formalism.FourierDecayAlt.P.PositiveSemidefinitePullback

open Classical in
theorem splitByLastSize : Formalism.FourierDecayAlt.TB.SplitBySize := by
  intro E W _ D hG hK T ε hε i hi w
  have hM : PSDOn (T.X i) (fun p q => D.Kr i p q * D.gram ε i w p q) :=
    psd_mul (hK.1 i _) (hG ε hε i w _)
  have h := sqrt_form_sum_le _ hM (Icc 1 i) (fun s => ind (T.X i) (Xs T i s))
  have h2 : ∀ s, Xs T i s ⊆ T.X i := fun s => Finset.filter_subset _ _
  rw [sum_ind_Xs T hi, form_ind (T.X i) (T.X i) (Finset.Subset.refl _)
    (fun p q => D.Kr i p q * D.gram ε i w p q)] at h
  simp only [fun s => form_ind (T.X i) (Xs T i s) (h2 s)
    (fun p q => D.Kr i p q * D.gram ε i w p q)] at h
  exact h

open Classical in
theorem diagStep : Formalism.FourierDecayAlt.TB.DiagStep := by
  intro E W _ D hG hK hW hA T ε hε i s hs hsi hir w R hR
  obtain ⟨_, hdom, hper, _⟩ := hA i s hs hsi hir
  have hY : ∀ h ∈ T.X (i - s), level h = i - s := fun h hh => ((T.isTower _ h).1 hh).1
  have hnn : ∀ t₀ t : E, 0 ≤ (D.Nst ε i s w (T.X (i - s)) (D.Th i s t₀) t t).re :=
    fun t₀ t => Nst_nonneg D hG hW hε i s w _ (hK.2 i s t₀ _) t
  simp only [Finset.sum_filter]
  rw [Finset.sum_comm]
  unfold Data.Dg
  refine Finset.sum_le_sum fun t ht => ?_
  have ht0 : t ≠ 0 := fun h => T.zero_not_mem _ _ (h ▸ ht)
  obtain ⟨t₀, ht₀, hmem⟩ := hR t ht
  have h1 := Nst_mono D hG hW hε i s w (T.X (i - s)) (hdom t ht0 _ hY) t
  rw [hper t t₀ hmem] at h1
  refine h1.trans ?_
  have h2 := Finset.single_le_sum (f := fun t₀ => if t - t₀ ∈ D.La (i - s + 1) s then
      (D.Nst ε i s w (T.X (i - s)) (D.Th i s t₀) t t).re else 0)
    (fun x _ => by
      split_ifs
      · exact hnn x t
      · exact le_refl 0) ht₀
  simpa only [if_pos hmem] using h2

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveSemidefinitePullback =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelInequalitySplitBySize =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelInequalitySplitBySize", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockStartPoints\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FormDomination\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelCoefficients\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveSemidefinitePullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem one_level_inequality_split_by_size : Formalism.FourierDecayAlt.TB.OneLevel :=
  _root_.Formalism.FourierDecayAlt.P.OneLevelCoefficients.oneLevel_of_steps splitByLastSize schurRecursion_true diagStep
    singleBlockStep longBlockStep

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelInequalitySplitBySize =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AntidiagMulDiagonal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FinitePointSets\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelCoefficients\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneLevelInequalitySplitBySize\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.RecursionWithDensities.A1

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.TA Finset
open scoped ComplexConjugate InnerProductSpace
open Classical

section gen
variable {α : Type}

lemma psd_congr {P : Finset α} {k k' : α → α → ℂ} (h : ∀ x ∈ P, ∀ y ∈ P, k x y = k' x y)
    (hk : PSDOn P k) : PSDOn P k' := by
  unfold TA.PSDOn at hk ⊢
  refine ⟨fun x hx y hy => ?_, fun a => ?_⟩
  · rw [← h x hx y hy, ← h y hy x hx]
    exact hk.1 x hx y hy
  · have e : ∑ x ∈ P, ∑ y ∈ P, conj (a x) * k' x y * a y =
        ∑ x ∈ P, ∑ y ∈ P, conj (a x) * k x y * a y :=
      Finset.sum_congr rfl fun x hx => Finset.sum_congr rfl fun y hy => by rw [h x hx y hy]
    rw [e]
    exact hk.2 a

lemma psd_zero (P : Finset α) : PSDOn P (fun _ _ => (0 : ℂ)) := by
  unfold TA.PSDOn
  exact ⟨fun _ _ _ _ => by simp, fun a => by simp⟩

lemma psd_add {P : Finset α} {k k' : α → α → ℂ} (hk : PSDOn P k) (hk' : PSDOn P k') :
    PSDOn P (fun x y => k x y + k' x y) := by
  unfold TA.PSDOn at hk hk' ⊢
  refine ⟨fun x hx y hy => ?_, fun a => ?_⟩
  · simp only [hk.1 x hx y hy, hk'.1 x hx y hy, map_add (f := _)]
  · have e : ∑ x ∈ P, ∑ y ∈ P, conj (a x) * (k x y + k' x y) * a y =
        (∑ x ∈ P, ∑ y ∈ P, conj (a x) * k x y * a y) +
          ∑ x ∈ P, ∑ y ∈ P, conj (a x) * k' x y * a y := by
      rw [← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun x _ => ?_
      rw [← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun y _ => ?_
      ring
    rw [e, Complex.add_re]
    exact add_nonneg (hk.2 a) (hk'.2 a)

variable {E : Type} [AddCommGroup E]

lemma mk_eq_iff (L : AddSubgroup E) (x y : E) : ((x : E ⧸ L) = (y : E ⧸ L)) ↔ x - y ∈ L := by
  exact QuotientAddGroup.eq_iff_sub_mem

noncomputable def G (L : AddSubgroup E) (S : Finset E) (Th : E → α → α → ℂ) (c : E ⧸ L) : α → α → ℂ :=
  if hc : ∃ t₁ ∈ S, (t₁ : E ⧸ L) = c then Th hc.choose else fun _ _ => 0

end gen

end Formalism.FourierDecayAlt.P.RecursionWithDensities.A1

namespace Formalism.FourierDecayAlt.P.RecursionWithDensities.A2

end Formalism.FourierDecayAlt.P.RecursionWithDensities.A2

namespace Formalism.FourierDecayAlt.P.RecursionWithDensities.B1

open Finset Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.TB.Data Formalism.FourierDecayAlt.TC
open scoped ComplexOrder
open Classical

theorem psd_congr {α : Type} {Y : Finset α} {k k' : α → α → ℂ}
    (h : ∀ x ∈ Y, ∀ y ∈ Y, k x y = k' x y) (hk : PSDOn Y k) : PSDOn Y k' := by
  unfold TB.PSDOn at hk ⊢
  have e : (Matrix.of fun x y : Y => k' x y) = Matrix.of fun x y : Y => k x y := by
    ext x y
    simp only [Matrix.of_apply]
    exact (h x x.2 y y.2).symm
  rw [e]
  exact hk

theorem psd_zero {α : Type} (Y : Finset α) : PSDOn Y (fun _ _ => (0 : ℂ)) := by
  unfold TB.PSDOn
  have e : (Matrix.of fun x y : Y => (0 : ℂ)) = 0 := by
    ext x y
    simp
  rw [e]
  exact Matrix.PosSemidef.zero

theorem psd_add {α : Type} {Y : Finset α} {k k' : α → α → ℂ} (h : PSDOn Y k) (h' : PSDOn Y k') :
    PSDOn Y (fun x y => k x y + k' x y) := by
  unfold TB.PSDOn at h h' ⊢
  have e : (Matrix.of fun x y : Y => k x y + k' x y) =
      (Matrix.of fun x y : Y => k x y) + Matrix.of fun x y : Y => k' x y := by
    ext x y
    simp
  rw [e]
  exact h.add h'

private theorem sum_attach_ite_eq {α : Type} (X : Finset α) (a : α) (F : α → ℂ) :
    (∑ j ∈ X.attach, if (j : α) = a then F j else 0) = if a ∈ X then F a else 0 := by
  rw [Finset.sum_attach (s := X) (f := fun j => if j = a then F j else 0)]
  first
  | exact Finset.sum_ite_eq' X a F

theorem psd_restrict {α : Type} {X : Finset α} (Y : Finset α) {k : α → α → ℂ} (hk : PSDOn X k) :
    PSDOn Y (fun x y => if x ∈ X ∧ y ∈ X then k x y else 0) := by
  unfold TB.PSDOn at hk ⊢
  have hB := hk.conjTranspose_mul_mul_same
    (Matrix.of fun (x : X) (y : Y) => if (x : α) = (y : α) then (1 : ℂ) else 0)
  convert hB using 1
  ext y y'
  simp [Matrix.mul_apply, Matrix.conjTranspose_apply, apply_ite (star : ℂ → ℂ)]
  rw [sum_attach_ite_eq X (y' : α) (fun a => ∑ j ∈ X.attach, if (j : α) = (y : α) then k j a else 0),
    sum_attach_ite_eq X (y : α) (fun a => k a y')]
  by_cases hy : (y : α) ∈ X <;> by_cases hy' : (y' : α) ∈ X <;> simp [hy, hy']

theorem psd_smul {α : Type} {Y : Finset α} {k : α → α → ℂ} (c : ℝ) (hc : 0 ≤ c) (h : PSDOn Y k) :
    PSDOn Y (fun x y => (c : ℂ) * k x y) := by
  unfold TB.PSDOn at h ⊢
  have e : (Matrix.of fun x y : Y => (c : ℂ) * k x y) = (c : ℂ) • Matrix.of fun x y : Y => k x y := by
    ext x y
    simp
  rw [e]
  exact h.smul (Complex.zero_le_real.mpr hc)

variable {E W : Type} [Field E]

theorem domMinOfText : DomMinOfText := by
  intro E W _ D T Th hT i s hs hsi hi
  obtain ⟨_, h2, h3, h4⟩ := hT i s hs hsi hi
  refine ⟨fun t ht => h2 t ?_, fun t _ t' _ hl => h3 t t' hl, fun S _ hS => h4 S hS⟩
  rintro rfl
  exact T.zero_not_mem _ _ ht

theorem majorantPSD : MajorantPSD := by
  intro E W _ D T Th hK hD i s hs hsi hi t ht
  have h1 := (hD i s hs hsi hi).1 t ht
  have h2 : TB.PSDOn (T.X (i - s)) (TB.blk (D.Kr i) s t t) := by
    have hY := hK i ((T.X (i - s)).image fun h => join h s t)
    unfold TB.PSDOn at hY ⊢
    have := hY.submatrix (fun h : T.X (i - s) =>
      (⟨join h.1 s t, Finset.mem_image_of_mem _ h.2⟩ : ((T.X (i - s)).image fun h => join h s t)))
    convert this using 1
    ext x y
    rfl
  refine psd_congr ?_ (psd_add h1 h2)
  intro x _ y _
  exact sub_add_cancel _ _

theorem psd_restrict' {α : Type} {X : Finset α} (Y : Finset α) {k k' : α → α → ℂ} (hk : PSDOn X k)
    (h1 : ∀ x y, x ∈ X ∧ y ∈ X → k' x y = k x y) (h0 : ∀ x y, ¬ (x ∈ X ∧ y ∈ X) → k' x y = 0) :
    PSDOn Y k' := by
  refine psd_congr (fun x _ y _ => ?_) (psd_restrict Y hk)
  show (if x ∈ X ∧ y ∈ X then k x y else 0) = k' x y
  by_cases h : x ∈ X ∧ y ∈ X
  · rw [if_pos h, h1 x y h]
  · rw [if_neg h, h0 x y h]

theorem mk_eq_iff (L : AddSubgroup E) (a b : E) : ((a : E ⧸ L) = (b : E ⧸ L)) ↔ a - b ∈ L := by
  exact QuotientAddGroup.eq_iff_sub_mem

def good (L : AddSubgroup E) (S : Finset E) (c : E ⧸ L) : Prop := ∃ t₁ ∈ S, (t₁ : E ⧸ L) = c

noncomputable def sel (L : AddSubgroup E) (S : Finset E) (c : E ⧸ L) : E :=
  if h : good L S c then h.choose else 0

theorem sel_mem {L : AddSubgroup E} {S : Finset E} {c : E ⧸ L} (h : good L S c) : sel L S c ∈ S := by
  unfold sel
  rw [dif_pos h]
  exact h.choose_spec.1

theorem sel_mk {L : AddSubgroup E} {S : Finset E} {c : E ⧸ L} (h : good L S c) :
    ((sel L S c : E) : E ⧸ L) = c := by
  unfold sel
  rw [dif_pos h]
  exact h.choose_spec.2

noncomputable def KrR (D : Data E W) (T : Tower E) : ℕ → Pt E → Pt E → ℂ :=
  fun i p q => if p ∈ T.X i ∧ q ∈ T.X i then D.Kr i p q else 0

noncomputable def ThR (D : Data E W) (T : Tower E) (Th : ℕ → ℕ → E → Pt E → Pt E → ℂ) :
    ℕ → ℕ → E → Pt E → Pt E → ℂ :=
  fun i s t h h' =>
    if (1 ≤ s ∧ s ≤ i ∧ i ≤ D.r + 1) ∧
        good (D.La (i - s + 1) s) (T.Sg (i - s + 1) s) (t : E ⧸ D.La (i - s + 1) s) then
      (if h ∈ T.X (i - s) ∧ h' ∈ T.X (i - s) then
        Th i s (sel (D.La (i - s + 1) s) (T.Sg (i - s + 1) s) (t : E ⧸ D.La (i - s + 1) s)) h h'
      else 0)
    else 0

noncomputable def Dp (D : Data E W) (T : Tower E) (Th : ℕ → ℕ → E → Pt E → Pt E → ℂ) : Data E W :=
  { D with
    Kr := KrR D T
    K0 := by simp [KrR, Formalism.FourierDecayAlt.P.OneLevelCoefficients.X0, D.K0]
    Th := ThR D T Th }

theorem join_mem (T : Tower E) {i s : ℕ} (hs : 1 ≤ s) (hsi : s ≤ i) {t : E}
    (ht : t ∈ T.Sg (i - s + 1) s) (h : Pt E) : join h s t ∈ T.X i ↔ h ∈ T.X (i - s) := by
  have E1 : ∀ k (hk' : k < h.length) (hk2 : k < (join h s t).length),
      (join h s t)[k]'hk2 = h[k]'hk' := by
    intro k hk' hk2
    first
    | simp [join, List.getElem_append_left hk']
  have E2 : ∀ k, k ≤ h.length → blockStart (join h s t) k = blockStart h k := by
    intro k hk'
    simp [blockStart, join, List.take_append_of_le_length hk']
  rw [T.isTower i, T.isTower (i - s)]
  constructor
  · rintro ⟨hl, hk⟩
    have hl' : level h + s = i := by simpa [level, join] using hl
    refine ⟨by omega, fun k hk' => ?_⟩
    have hk2 : k < (join h s t).length := by simp [join]; omega
    have := hk k hk2
    rw [E1 k hk' hk2, E2 k hk'.le] at this
    exact this
  · rintro ⟨hl, hk⟩
    refine ⟨?_, fun k hk2 => ?_⟩
    · simp [level, join] at hl ⊢
      omega
    · by_cases hk' : k < h.length
      · rw [E1 k hk' hk2, E2 k hk'.le]
        exact hk k hk'
      · have hkl : k = h.length := by simp [join] at hk2; omega
        subst hkl
        have e1 : (join h s t)[h.length]'hk2 = (s, t) := by simp [join]
        have e2 : blockStart (join h s t) h.length = level h + 1 := by
          simp [blockStart, join, level, List.take_append_of_le_length (le_refl h.length)]
        rw [e1, e2, hl]
        exact ⟨hs, ht⟩

theorem join_not_mem (T : Tower E) {i s : ℕ} {t : E}
    (ht : t ∉ T.Sg (i - s + 1) s) (h : Pt E) : join h s t ∉ T.X i := by
  intro hm
  rw [T.isTower i] at hm
  obtain ⟨hl, hk⟩ := hm
  have hl' : level h + s = i := by simpa [level, join] using hl
  have hk2 : h.length < (join h s t).length := by simp [join]
  have := (hk h.length hk2).2
  have e1 : (join h s t)[h.length]'hk2 = (s, t) := by simp [join]
  have e2 : blockStart (join h s t) h.length = level h + 1 := by
    simp [blockStart, join, level, List.take_append_of_le_length (le_refl h.length)]
  rw [e1, e2] at this
  have e3 : level h = i - s := by omega
  rw [e3] at this
  exact ht this

theorem ThR_psd (D : Data E W) (T : Tower E) (Th : ℕ → ℕ → E → Pt E → Pt E → ℂ) (hK : KrPSD D)
    (hD : DomMin D T Th) (i s : ℕ) (t : E) (Y : Finset (Pt E)) : PSDOn Y (ThR D T Th i s t) := by
  unfold ThR
  by_cases hc : (1 ≤ s ∧ s ≤ i ∧ i ≤ D.r + 1) ∧
      good (D.La (i - s + 1) s) (T.Sg (i - s + 1) s) (t : E ⧸ D.La (i - s + 1) s)
  · obtain ⟨⟨hs, hsi, hi⟩, hg⟩ := id hc
    refine psd_congr (fun x _ y _ => ?_)
      (psd_restrict Y (majorantPSD E W D T Th hK hD i s hs hsi hi _ (sel_mem hg)))
    simp only [if_pos hc]
    first
    | (split_ifs <;> rfl)
  · refine psd_congr (fun x _ y _ => ?_) (psd_zero Y)
    simp only [if_neg hc]

theorem thetaDomination_dp_of_krPSD_of_domMin (D : Data E W) (T : Tower E) (Th : ℕ → ℕ → E → Pt E → Pt E → ℂ) (hK : KrPSD D)
    (hE : EBounds D) (hD : DomMin D T Th) : (Dp D T Th).ThetaDomination := by
  intro i s hs hsi hi
  obtain ⟨h1, h2, h3⟩ := hD i s hs hsi hi
  have hr : 1 ≤ s ∧ s ≤ i ∧ i ≤ D.r + 1 := ⟨hs, hsi, hi⟩
  refine ⟨hE i (by omega) hi, ?_, ?_, ?_⟩
  · intro t _ Y _
    show PSDOn Y (fun h h' => ThR D T Th i s t h h' - blk (KrR D T i) s t t h h')
    by_cases ht : t ∈ T.Sg (i - s + 1) s
    · have hg : good (D.La (i - s + 1) s) (T.Sg (i - s + 1) s) (t : E ⧸ D.La (i - s + 1) s) :=
        ⟨t, ht, rfl⟩
      refine psd_restrict' Y (h1 t ht) (fun x y hxy => ?_) (fun x y hxy => ?_)
      · simp only [ThR, if_pos (And.intro hr hg), blk, KrR, join_mem T hs hsi ht, if_pos hxy]
        rw [h2 _ (sel_mem hg) t ht ((mk_eq_iff _ _ _).1 (sel_mk hg)) x hxy.1 y hxy.2]
      · simp only [ThR, blk, KrR, join_mem T hs hsi ht, if_neg hxy, ite_self, sub_zero]
    · refine psd_congr (fun x _ y _ => ?_) (ThR_psd D T Th hK hD i s t Y)
      simp only [blk, KrR, join_not_mem T ht, false_and, if_false, sub_zero]
  · intro t t' htt
    show ThR D T Th i s t = ThR D T Th i s t'
    have e : (t : E ⧸ D.La (i - s + 1) s) = t' := (mk_eq_iff _ _ _).2 htt
    funext h h'
    simp only [ThR, e]
  · intro S hS Y _
    show PSDOn Y (fun h h' => (1 + (D.e i : ℂ)) * KrR D T (i - s) h h' - ∑ t ∈ S, ThR D T Th i s t h h')
    set L := D.La (i - s + 1) s with hL
    set G := T.Sg (i - s + 1) s with hG
    set S' : Finset E := (S.filter (fun t : E => good L G (t : E ⧸ L))).image
      (fun t : E => sel L G (t : E ⧸ L)) with hS'
    have hsub : S' ⊆ G := by
      intro x hx
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.1 hx
      exact sel_mem (Finset.mem_filter.1 ht).2
    have hinc : ∀ t ∈ S', ∀ t' ∈ S', t - t' ∈ L → t = t' := by
      intro a ha b hb hab
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.1 ha
      obtain ⟨t', ht', rfl⟩ := Finset.mem_image.1 hb
      have e := (mk_eq_iff L _ _).2 hab
      rw [sel_mk (Finset.mem_filter.1 ht).2, sel_mk (Finset.mem_filter.1 ht').2] at e
      rw [e]
    have hinj : Set.InjOn (fun t : E => sel L G (t : E ⧸ L))
        (S.filter (fun t : E => good L G (t : E ⧸ L)) : Finset E) := by
      intro a ha b hb hab
      have ha' := Finset.mem_filter.1 (Finset.mem_coe.1 ha)
      have hb' := Finset.mem_filter.1 (Finset.mem_coe.1 hb)
      have e : (a : E ⧸ L) = b := by
        rw [← sel_mk ha'.2, ← sel_mk hb'.2]; exact congrArg _ hab
      exact hS a ha'.1 b hb'.1 ((mk_eq_iff L _ _).1 e)
    refine psd_restrict' Y (h3 S' hsub hinc) (fun x y hxy => ?_) (fun x y hxy => ?_)
    · have hsum : ∑ t ∈ S, ThR D T Th i s t x y = ∑ t₁ ∈ S', Th i s t₁ x y := by
        rw [hS', Finset.sum_image (f := fun t₁ => Th i s t₁ x y) hinj, Finset.sum_filter]
        refine Finset.sum_congr rfl fun t _ => ?_
        by_cases hg : good L G (t : E ⧸ L)
        · simp only [ThR, if_pos hg, if_pos hxy]
          exact if_pos (And.intro hr hg)
        · have : ¬ ((1 ≤ s ∧ s ≤ i ∧ i ≤ D.r + 1) ∧ good L G (t : E ⧸ L)) := fun h => hg h.2
          simp only [ThR, if_neg hg]
          exact if_neg this
      rw [hsum]
      simp only [KrR, if_pos hxy]
    · have : ∀ t ∈ S, ThR D T Th i s t x y = 0 := by
        intro t _
        simp only [ThR, if_neg hxy, ite_self]
      rw [Finset.sum_eq_zero this]
      simp only [if_neg hxy, KrR, mul_zero, sub_zero]

theorem Dp_Q (D : Data E W) (T : Tower E) (Th : ℕ → ℕ → E → Pt E → Pt E → ℂ) (ε : ℝ) (k : ℕ)
    (w : W) : (Dp D T Th).Q T ε k w = D.Q T ε k w := by
  unfold TB.Data.Q TB.Data.Sf
  have e : (∑ p ∈ T.X k, ∑ q ∈ T.X k, (Dp D T Th).Kr k p q * (Dp D T Th).gram ε k w p q) =
      ∑ p ∈ T.X k, ∑ q ∈ T.X k, D.Kr k p q * D.gram ε k w p q := by
    refine Finset.sum_congr rfl fun p hp => Finset.sum_congr rfl fun q hq => ?_
    show KrR D T k p q * _ = _
    unfold KrR
    rw [if_pos ⟨hp, hq⟩]
    try rfl
  rw [e]
  try rfl

theorem oneLevelAfterOfOld : OneLevelAfterOfOld := by
  intro hOL E W _ D ep C₄ hG hK hW hA2 hE hWv hP hLi hB hLa hep hC hv hv1 T hTh ε hε σ i hi1 hi hσ
    w hw
  obtain ⟨Th, hD⟩ := hTh
  have hA2' : (Dp D T Th).KernelSupport := by
    intro i s hs hsi hi h h' t t' hl hl' ht ht' htt hne
    refine hA2 i s hs hsi hi h h' t t' hl hl' ht ht' htt ?_
    intro h0
    apply hne
    show KrR D T i (join h s t) (join h' s t') = 0
    simp only [KrR, h0, ite_self]
  have hKP : (Dp D T Th).KernelPSD :=
    ⟨fun i Y => psd_restrict' Y (hK i (T.X i))
      (fun x y hxy => by show KrR D T i x y = _; simp only [KrR, if_pos hxy])
      (fun x y hxy => by show KrR D T i x y = _; simp only [KrR, if_neg hxy]), fun i s t Y => ThR_psd D T Th hK hD i s t Y⟩
  have h := hOL E W (Dp D T Th) ep C₄ hG hKP hW hA2' (thetaDomination_dp_of_krPSD_of_domMin D T Th hK hE hD) hWv hP hLi hB hLa
    hep hC hv hv1 T ε hε σ i hi1 hi
    (fun k hk => ⟨(hσ k hk).1, fun w hw => by rw [Dp_Q]; exact (hσ k hk).2 w hw⟩) w hw
  rw [Dp_Q] at h
  exact h

theorem oneLevelAfter : OneLevelAfter := oneLevelAfterOfOld one_level_inequality_split_by_size

end Formalism.FourierDecayAlt.P.RecursionWithDensities.B1

namespace Formalism.FourierDecayAlt.P.RecursionWithDensities.B2

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.TB Formalism.FourierDecayAlt.P.OneLevelCoefficients Finset
open scoped ComplexOrder

variable {E W : Type} [Field E]

theorem theoremAAfterOfSteps : TC.TheoremAAfterOfSteps := by
  intro hOL hLS hJ C₁ C₄ h1 h4
  set C₀ : ℝ := max (3 * C₁) (2 * C₄) with hC₀
  have hC01 : 1 ≤ C₀ := le_trans (by linarith) (le_max_left _ _)
  have hC03 : 3 * C₁ ≤ C₀ := le_max_left _ _
  have hC04 : 2 * C₄ ≤ C₀ := le_max_right _ _
  obtain ⟨C'J, CJ, hJ⟩ := hJ C₀ hC01
  refine ⟨max C₀ CJ, max (max C'J (3 * C₁)) 1, ?_⟩
  intro E W _ D Θ jn H _ _ _ Vt c hK hf hΘ0 hC' hsm hS hG hKer hW hA2 hEB hDom hE72 hP hE73 hE74 hLat
    hE hCut hA4 R
  set C : ℝ := max C₀ CJ with hC
  have hCC0 : C₀ ≤ C := le_max_left _ _
  have hCCJ : CJ ≤ C := le_max_right _ _
  have hΘ1 : 1 ≤ Θ := le_trans (le_max_right _ _) hC'
  have hΘ3 : 3 * C₁ ≤ Θ := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hC'
  have hΘJ : C'J ≤ Θ := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hC'
  set y : ℝ := Θ ^ (-((D.K : ℝ) - 5 / 2)) with hy
  have hy0 : 0 ≤ y := Real.rpow_nonneg hΘ0.le _
  have hK4 : (4 : ℝ) ≤ (D.K : ℝ) := by exact_mod_cast hK
  have hy1 : y ≤ Θ⁻¹ := by
    rw [← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hΘ1 (by linarith)
  set ep : ℝ := (C₁ * y) ^ D.f with hep
  have hep0 : 0 ≤ ep := by positivity
  have ha : 3 ^ D.f * ep = (3 * C₁ * y) ^ D.f := by rw [hep, ← mul_pow, mul_assoc]
  have h3y : 3 * C₁ * y ≤ 1 := by
    calc 3 * C₁ * y ≤ Θ * Θ⁻¹ := mul_le_mul hΘ3 hy1 hy0 hΘ0.le
      _ = 1 := mul_inv_cancel₀ hΘ0.ne'
  have ha1 : 3 ^ D.f * ep ≤ 1 := by
    rw [ha]; exact pow_le_one₀ (by positivity) h3y
  have ha0 : 0 ≤ 3 ^ D.f * ep := by positivity
  have haC : 3 ^ D.f * ep ≤ (C₀ * y) ^ D.f := by
    rw [ha]; exact pow_le_pow_left₀ (by positivity) (mul_le_mul_of_nonneg_right hC03 hy0) _
  have hb : 2 ^ D.f * ep ≤ 3 ^ D.f * ep :=
    mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (by norm_num) (by norm_num) _) hep0
  have he : ∀ i, 1 ≤ i → i ≤ D.r + 1 → 0 ≤ D.e i ∧ D.e i ≤ 1 := hEB
  set e' : ℕ → ℝ := fun i => if 1 ≤ i ∧ i ≤ D.r + 1 then D.e i else 0 with he'
  have he'0 : ∀ i, 0 ≤ e' i := by
    intro i; simp only [he']; split_ifs with h
    · exact (he i h.1 h.2).1
    · exact le_rfl
  have hprod : ∏ i ∈ Icc 1 (D.r + 1), (1 + e' i) = ∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i) := by
    apply Finset.prod_congr rfl
    intro i hi; rw [Finset.mem_Icc] at hi
    simp only [he', if_pos hi]
  have hprod0 : 0 ≤ ∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i) := by
    apply Finset.prod_nonneg
    intro i hi; rw [Finset.mem_Icc] at hi
    have := (he i hi.1 hi.2).1; linarith
  have hx0 : 0 ≤ (C₀ / Θ) ^ D.f := by positivity
  have hxy : (C₀ / Θ) ^ D.f ≤ (C / Θ) ^ D.f :=
    pow_le_pow_left₀ (by positivity) (div_le_div_of_nonneg_right hCC0 hΘ0.le) _
  have hr0 : (0 : ℝ) ≤ (D.r : ℝ) + 1 := by positivity
  have hBJ : 1 + CJ * ((D.r : ℝ) + 1) * (C₀ / Θ) ^ D.f ≤ 1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f := by
    have s1 : CJ * ((D.r : ℝ) + 1) * (C₀ / Θ) ^ D.f ≤ C * ((D.r : ℝ) + 1) * (C₀ / Θ) ^ D.f :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hCCJ hr0) hx0
    have s2 : C * ((D.r : ℝ) + 1) * (C₀ / Θ) ^ D.f ≤ C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f :=
      mul_le_mul_of_nonneg_left hxy (by positivity)
    linarith
  have hB0 : 0 ≤ 1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f := by positivity
  have hK0 : (_root_.Formalism.FourierDecayAlt.J.withTh D (fun _ _ _ _ _ => 0)).KernelPSD :=
    ⟨hKer, fun _ _ _ Y => by
      show Matrix.PosSemidef (0 : Matrix Y Y ℂ)
      exact Matrix.PosSemidef.zero⟩
  suffices key : ∀ (T : Tower E) (ε : ℝ), 0 < ε → ∀ σ₀ : ℝ,
      (∀ w ∈ D.Wb D.Ntop, (D.gram ε 0 w [] []).re / D.wt w ≤ σ₀) →
      D.Sf ε (D.r + 1) D.emp (T.X (D.r + 1)) ≤
        ((1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f) * (∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i))) * σ₀ from
    hLS E W (_root_.Formalism.FourierDecayAlt.J.withTh D (fun _ _ _ _ _ => 0)) jn H Vt c hG hK0 hE hCut hA4 _ key R
  intro T ε hε σ₀ hσ₀
  have hempN : D.emp ∈ D.Wb D.Ntop := by
    simp [Data.Wb, D.emp_mem, D.cnt_emp]
  have hσ₀0 : 0 ≤ σ₀ := by
    refine le_trans ?_ (hσ₀ D.emp hempN)
    rw [D.wt_emp, div_one]; exact gram_diag D hG ε hε 0 D.emp []
  set S : ℕ → NNReal := fun k => (D.Wb (D.budget k)).sup (fun w => (D.Q T ε k w).toNNReal) with hSd
  set σ : ℕ → ℝ := fun k => √(S k : ℝ) with hσ
  have hσ0 : ∀ k, 0 ≤ σ k := fun k => Real.sqrt_nonneg _
  have hσsq : ∀ k, σ k ^ 2 = (S k : ℝ) := fun k => Real.sq_sqrt (NNReal.coe_nonneg _)
  have hσQ : ∀ k, ∀ w ∈ D.Wb (D.budget k), D.Q T ε k w ≤ σ k ^ 2 := by
    intro k w hw
    rw [hσsq]
    refine le_trans (Real.le_coe_toNNReal _) ?_
    exact_mod_cast Finset.le_sup (f := fun w => (D.Q T ε k w).toNNReal) hw
  have hSle : ∀ k (X : ℝ), 0 ≤ X → (∀ w ∈ D.Wb (D.budget k), D.Q T ε k w ≤ X) → (S k : ℝ) ≤ X := by
    intro k X hX h
    have : S k ≤ X.toNNReal := Finset.sup_le fun w hw => Real.toNNReal_le_toNNReal (h w hw)
    calc (S k : ℝ) ≤ (X.toNNReal : ℝ) := by exact_mod_cast this
      _ = X := Real.coe_toNNReal _ hX
  have hσle : ∀ k (X : ℝ), 0 ≤ X → (∀ w ∈ D.Wb (D.budget k), √(D.Q T ε k w) ≤ X) → σ k ≤ X := by
    intro k X hX h
    apply Real.sqrt_le_iff.mpr
    exact ⟨hX, hSle k _ (sq_nonneg X) fun w hw => (Real.sqrt_le_iff.mp (h w hw)).2⟩
  have hb0 : D.budget 0 = D.Ntop := by simp [Data.budget, Data.Ntop]
  have hσ00 : σ 0 ^ 2 ≤ σ₀ := by
    rw [hσsq]
    apply hSle 0 σ₀ hσ₀0
    intro w hw
    rw [Q0]; rw [hb0] at hw; exact hσ₀ w hw
  have hrec : ∀ i, 1 ≤ i → i ≤ D.r + 1 →
      σ i ≤ (1 + (C₀ * Θ ^ (-((D.K : ℝ) - 5 / 2))) ^ D.f) * √(1 + e' i) * σ (i - 1) +
        ∑ t ∈ Icc 2 i, ((C₀ / Θ) ^ D.f) ^ (t - 1) * σ (i - t) := by
    intro i hi1 hi
    have hei : e' i = D.e i := by simp only [he', if_pos (And.intro hi1 hi)]
    rw [hei]
    apply hσle i
    · apply add_nonneg
      · exact mul_nonneg (mul_nonneg (by positivity) (Real.sqrt_nonneg _)) (hσ0 _)
      · exact Finset.sum_nonneg fun t _ => mul_nonneg (by positivity) (hσ0 _)
    intro w hw
    refine le_trans (hOL E W D ep C₄ hG hKer hW hA2 hEB hE72 hP hE73 hE74 hLat hep0 h4 hS.1
      (size_le_one D Θ hΘ1 hS) T (hDom T) ε hε σ i hi1 hi (fun k _ => ⟨hσ0 k, hσQ k⟩) w hw) ?_
    apply add_le_add
    · apply mul_le_mul_of_nonneg_right _ (hσ0 _)
      apply mul_le_mul_of_nonneg_right _ (Real.sqrt_nonneg _)
      apply Real.sqrt_le_iff.mpr
      refine ⟨by positivity, ?_⟩
      nlinarith
    · apply Finset.sum_le_sum
      intro s hs; rw [Finset.mem_Icc] at hs
      apply mul_le_mul_of_nonneg_right _ (hσ0 _)
      exact coef D Θ C₄ C₀ _ _ hΘ1 h4 hC04 hf hS ha0 ha1 (he i hi1 hi).1 (he i hi1 hi).2 i s hs.1 hs.2 hi
  have hfin := hJ (D.K : ℝ) Θ D.f D.r e' σ hK4 hf hΘJ
    (small D.r D.f C C₀ Θ hΘ0 (by linarith) hCC0 hsm) he'0 hσ0 hrec
  rw [hprod] at hfin
  have hempB : D.emp ∈ D.Wb (D.budget (D.r + 1)) := by
    simp [Data.Wb, D.emp_mem, D.cnt_emp]
  have hQ := hσQ (D.r + 1) D.emp hempB
  have hQS : D.Q T ε (D.r + 1) D.emp = D.Sf ε (D.r + 1) D.emp (T.X (D.r + 1)) := by
    simp [Data.Q, D.wt_emp]
  rw [hQS] at hQ
  have hs0 : 0 ≤ σ 0 ^ 2 := sq_nonneg _
  calc D.Sf ε (D.r + 1) D.emp (T.X (D.r + 1)) ≤ σ (D.r + 1) ^ 2 := hQ
    _ ≤ (1 + CJ * ((D.r : ℝ) + 1) * (C₀ / Θ) ^ D.f) * (∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i)) * σ 0 ^ 2 := hfin
    _ ≤ (1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f) * (∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i)) * σ 0 ^ 2 :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hBJ hprod0) hs0
    _ ≤ (1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f) * (∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i)) * σ₀ :=
        mul_le_mul_of_nonneg_left hσ00 (mul_nonneg hB0 hprod0)

end Formalism.FourierDecayAlt.P.RecursionWithDensities.B2

namespace Formalism.FourierDecayAlt.P.RecursionWithDensities.J1

open Finset Formalism.FourierDecayAlt Formalism.FourierDecayAlt.TC
open scoped ComplexOrder ComplexConjugate

theorem t_ProductOfEMax : ProductOfEMax := by
  intro r e sd h0 h1
  rw [Finset.prod_Icc_succ_top (by omega : 1 ≤ r + 1),
    Finset.prod_eq_one (fun i hi => by rw [h0 i hi, add_zero]), one_mul, h1]

theorem t_DensLeTwo : DensLeTwo := by
  intro f n h
  have hpos : (0 : ℝ) < 2 ^ n := by positivity
  have h' : (18 : ℝ) * f ≤ 2 ^ n := by exact_mod_cast h
  have hy : 0 < ((2 : ℝ) ^ n)⁻¹ := inv_pos.mpr hpos
  have hy1 : ((2 : ℝ) ^ n)⁻¹ * 2 ^ n = 1 := inv_mul_cancel₀ (ne_of_gt hpos)
  have hm := mul_le_mul_of_nonneg_left h' hy.le
  have hl := Real.log_two_gt_d9
  have h3 : Real.exp (12 * (f : ℝ) * ((2 : ℝ) ^ n)⁻¹) ≤ Real.exp (Real.log 2) :=
    Real.exp_le_exp.mpr (by linarith)
  rwa [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at h3

theorem t_DensSize : DensSize := by
  intro k r f h
  have hm : f + 5 ≤ k - 2 * r - 2 := by omega
  have hf : f < 2 ^ f := Nat.lt_two_pow_self
  calc 18 * f ≤ 32 * 2 ^ f := by omega
    _ = 2 ^ (f + 5) := by ring
    _ ≤ 2 ^ (k - 2 * r - 2) := Nat.pow_le_pow_right (by norm_num) hm

theorem t_SumBoundMax : SumBoundMax := by
  intro α Y k m sd hk h
  have h2 := B1.psd_smul (max sd 1 - sd) (by linarith [le_max_left sd 1]) hk
  refine B1.psd_congr (fun x _ y _ => ?_) (B1.psd_add h h2)
  push_cast
  ring

theorem t_RecursionWithDens : RecursionWithDens := by
  intro hA C₁ C₄ h1 h4
  obtain ⟨C, C', hC⟩ := hA C₁ C₄ h1 h4
  refine ⟨C, C', ?_⟩
  intro E W _ D Θ jn H _ _ _ Vt c sd hR hC' hr h0 hmax R
  unfold RecHypAfter at hR
  obtain ⟨hK, hf, hΘ, hS, hG, hKr, hWd, hA2, hEb, hDA, hEW, hP, hEL, hEB, hLS, hEE, hCut, hA4⟩ := hR
  have hp := t_ProductOfEMax D.r D.e sd h0 hmax
  have hb := hC E W D Θ jn H Vt c hK hf hΘ hC' hr hS hG hKr hWd hA2 hEb hDA hEW hP hEL hEB hLS hEE
    hCut hA4 R
  rwa [hp] at hb

end Formalism.FourierDecayAlt.P.RecursionWithDensities.J1

namespace Formalism.FourierDecayAlt.P

open RecursionWithDensities

theorem theorem_a_after : Formalism.FourierDecayAlt.TC.TheoremAAfter := RecursionWithDensities.B2.theoremAAfterOfSteps RecursionWithDensities.B1.oneLevelAfter limitStep _root_.Formalism.FourierDecayAlt.P.K.jointTheoremA

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities =====
