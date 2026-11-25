module

public import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Statements
public import Mathlib.Analysis.Complex.ExponentialBounds
public import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PTorsionEquidistribution

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSlopeParameterChoice, GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSupOfOrthonormalSum, GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Assembly

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSlopeParameterChoice =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSlopeParameterChoice", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

noncomputable section

theorem SlopeParameterChoice.proof : SlopeParameterChoice.Statement := by
  intro C₀ C₂ hC₀ hC₂
  refine ⟨9 + C₀ + C₂, ?_⟩
  intro g h μ s hg hh hμ hs
  set K : ℝ := (⌈2 + (g : ℝ) ^ 2 + h⌉₊ : ℝ) with hKdef
  set G : ℝ := (g : ℝ) with hGdef
  set X : ℝ := 2 + G + h with hXdef
  set L : ℝ := Real.log X with hLdef
  have hG1 : (1 : ℝ) ≤ G := by rw [hGdef]; exact_mod_cast hg
  have hKlow : 2 + G ^ 2 + h ≤ K := Nat.le_ceil _
  have hKup : K < 2 + G ^ 2 + h + 1 := Nat.ceil_lt_add_one (by positivity)
  have hGG : G ≤ G ^ 2 := by nlinarith
  have hK3 : (3 : ℝ) ≤ K := by nlinarith
  have hGK : G ≤ K := by nlinarith
  have hhK : h ≤ K := by nlinarith
  have hX3 : (3 : ℝ) ≤ X := by rw [hXdef]; linarith
  have hXpos : (0 : ℝ) < X := by linarith
  have hKX : K ≤ X ^ 2 := by rw [hXdef]; nlinarith
  have hlev : (SlopeParameterChoice.level g h : ℝ) = 3 * K := by
    simp only [SlopeParameterChoice.level, hKdef]; push_cast; ring
  have hthird : SlopeParameterChoice.third g h = 3 * K ^ 2 := by
    simp only [SlopeParameterChoice.third, hlev]; ring
  rw [hthird, hlev] at hs

  have hL1 : (1 : ℝ) ≤ L := by
    have he : Real.exp 1 ≤ X := by
      have := Real.exp_one_lt_d9; linarith
    have := Real.log_le_log (Real.exp_pos 1) he
    rwa [Real.log_exp] at this

  have hLK : L ≤ K := by
    have : L ≤ X - 1 := Real.log_le_sub_one_of_pos hXpos
    linarith

  have hfirst : 1 / 2 * Real.log (3 * Real.exp 1 * (3 * K ^ 2) ^ 2) ≤ 6 * L := by
    have he3 : Real.exp 1 ≤ 3 := by have := Real.exp_one_lt_d9; linarith
    have hKpos : (0 : ℝ) < K := by linarith
    have hpos : (0 : ℝ) < 3 * Real.exp 1 * (3 * K ^ 2) ^ 2 := by positivity
    have hK4 : K ^ 4 ≤ X ^ 8 := by
      calc K ^ 4 ≤ (X ^ 2) ^ 4 := pow_le_pow_left₀ hKpos.le hKX 4
        _ = X ^ 8 := by ring
    have hX4 : (81 : ℝ) ≤ X ^ 4 := by
      calc (81 : ℝ) = 3 ^ 4 := by norm_num
        _ ≤ X ^ 4 := pow_le_pow_left₀ (by norm_num) hX3 4
    have hle : 3 * Real.exp 1 * (3 * K ^ 2) ^ 2 ≤ X ^ 12 := by
      have h1 : 3 * Real.exp 1 * (3 * K ^ 2) ^ 2 ≤ 81 * K ^ 4 := by
        have : 3 * Real.exp 1 * (3 * K ^ 2) ^ 2 = 27 * Real.exp 1 * K ^ 4 := by ring
        rw [this]
        have : (0 : ℝ) ≤ K ^ 4 := by positivity
        nlinarith
      have h2 : 81 * K ^ 4 ≤ X ^ 4 * X ^ 8 :=
        mul_le_mul hX4 hK4 (by positivity) (by positivity)
      calc _ ≤ 81 * K ^ 4 := h1
        _ ≤ X ^ 4 * X ^ 8 := h2
        _ = X ^ 12 := by ring
    have := Real.log_le_log hpos hle
    rw [Real.log_pow] at this
    push_cast at this
    linarith

  have hsecond : 2 / (3 * K ^ 2) * (G * Real.log (3 * K) - μ) ≤ (3 + C₀ + C₂) * L := by
    have hKpos : (0 : ℝ) < K := by linarith
    have hlogm : Real.log (3 * K) ≤ 3 * K := by
      have := Real.log_le_sub_one_of_pos (by positivity : (0 : ℝ) < 3 * K); linarith
    have hKK : K ≤ K ^ 2 := by nlinarith
    have hY : G * Real.log (3 * K) - μ ≤ (7 / 2 + C₀ + C₂) * K ^ 2 := by
      have a1 : G * Real.log (3 * K) ≤ K * (3 * K) :=
        mul_le_mul hGK hlogm (Real.log_nonneg (by linarith)) hKpos.le
      have a3 : C₀ * G ≤ C₀ * K ^ 2 := mul_le_mul_of_nonneg_left (by linarith) hC₀
      have hGL : G * L ≤ K * K := mul_le_mul hGK hLK (by linarith) hKpos.le
      have a4 := mul_le_mul_of_nonneg_left hGL hC₂
      have a5 : C₂ * G * L = C₂ * (G * L) := by ring
      have a6 : K * (3 * K) = 3 * K ^ 2 := by ring
      have a7 : C₂ * (K * K) = C₂ * K ^ 2 := by ring
      have a8 : (7 / 2 + C₀ + C₂) * K ^ 2 = 3 * K ^ 2 + K ^ 2 / 2 + C₀ * K ^ 2 + C₂ * K ^ 2 := by ring
      rw [a8]
      linarith
    have hpos : (0 : ℝ) < 2 / (3 * K ^ 2) := by positivity
    calc 2 / (3 * K ^ 2) * (G * Real.log (3 * K) - μ)
        ≤ 2 / (3 * K ^ 2) * ((7 / 2 + C₀ + C₂) * K ^ 2) :=
          mul_le_mul_of_nonneg_left hY hpos.le
      _ = 2 / 3 * (7 / 2 + C₀ + C₂) := by field_simp
      _ ≤ 3 + C₀ + C₂ := by linarith
      _ ≤ (3 + C₀ + C₂) * L := le_mul_of_one_le_right (by linarith) hL1
  calc s ≤ _ := hs
    _ ≤ 6 * L + (3 + C₀ + C₂) * L := add_le_add hfirst hsecond
    _ = (9 + C₀ + C₂) * L := by ring

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSlopeParameterChoice =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSupOfOrthonormalSum =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSupOfOrthonormalSum", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Finset

theorem SupOfOrthonormalSum.proof : SupOfOrthonormalSum.Statement := by
  intro V _ _ ι _ b p hb c

  have h1 : p (∑ i, c i • b i) ≤ ∑ i, ‖c i‖ := by
    refine (Finset.le_sum_of_subadditive p (map_zero p).le (map_add_le_add p) _ _).trans (Finset.sum_le_sum fun i _ => ?_)
    rw [map_smul_eq_mul]
    calc ‖c i‖ * p (b i) ≤ ‖c i‖ * 1 := mul_le_mul_of_nonneg_left (hb i) (norm_nonneg _)
      _ = ‖c i‖ := mul_one _

  have h2 : (∑ i, ‖c i‖) ^ 2 ≤ (Fintype.card ι : ℝ) * ∑ i, ‖c i‖ ^ 2 := by
    have hcs := Finset.sum_mul_sq_le_sq_mul_sq (univ : Finset ι) (fun _ => (1 : ℝ))
      (fun i => ‖c i‖)
    simpa [Finset.card_univ] using hcs
  have h3 : ∑ i, ‖c i‖ ≤ √(Fintype.card ι : ℝ) * √(∑ i, ‖c i‖ ^ 2) := by
    rw [← Real.sqrt_mul (Nat.cast_nonneg _)]
    exact Real.le_sqrt_of_sq_le h2
  exact h1.trans h3

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSupOfOrthonormalSum =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Assembly =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Assembly", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSlopeParameterChoice\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PSupOfOrthonormalSum\npublic import GroundTheory.HeightsAndTheta.Heights.FactorialBounds.PTorsionEquidistribution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

universe u v

alias TorsionEquidistribution.full := _root_.GroundTheory.Heights₂.Heights.TorsionEquidistribution.proof

theorem SupOfOrthonormalSum.full : SupOfOrthonormalSum.Statement.{u, v} :=
  SupOfOrthonormalSum.proof

alias SlopeParameterChoice.full := _root_.GroundTheory.Heights₂.Heights.SlopeParameterChoice.proof

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FactorialBounds.Assembly =====
