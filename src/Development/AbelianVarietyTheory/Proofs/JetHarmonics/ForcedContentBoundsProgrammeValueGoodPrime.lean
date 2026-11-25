module

public import Formalism.IncomingBounds.IncomingBound
public import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Data.ZMod.Basic
public import Development.AbelianVarietyTheory.Definitions.Jets.DepthNumbersThresholdEq
public import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.CyclicSolvable
public import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LevelsUsedBalancedValueOrbitSums
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.OrbitLabellings.FnumEqRhoMulSumOfDemandRatioLe, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ForcedContentBoundsProgrammeValueGoodPrime

-- ===== clump member: Development.AutomorphicArithmetic.OrbitLabellings.FnumEqRhoMulSumOfDemandRatioLe =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.OrbitLabellings.FnumEqRhoMulSumOfDemandRatioLe", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LevelsUsedBalancedValueOrbitSums\npublic import Formalism.IncomingBounds.IncomingBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Sigma\npublic import Mathlib.Algebra.BigOperators.Ring.Finset\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Data.ZMod.Basic\n\n"}
section -- clump:auto
@[expose] public section

open scoped BigOperators
open Formalism.IncomingBounds

theorem UpperTheory.fnum_eq_rho_mul_sum_of_demand_ratio_le :
    ∀ (l d : ℕ) [NeZero d], 3 ≤ l → 2 ≤ d → ∀ D : ZMod d → ℝ, 0 ≤ D →
    (∀ s s' : ZMod d, D s' ≤ (l : ℝ) * D s) → Fnum l d D = rho l * (∑ s : ZMod d, D s) := by
  intro l d _ hl hd D _ hr
  exact GlobalTheory.LevelsOrbits.fnum_eq_of_demand_ratio_le l d (by omega) hd D hr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.OrbitLabellings.FnumEqRhoMulSumOfDemandRatioLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ForcedContentBoundsProgrammeValueGoodPrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ForcedContentBoundsProgrammeValueGoodPrime", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.DepthNumbersThresholdEq\npublic import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.CyclicSolvable\npublic import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LevelsUsedBalancedValueOrbitSums\npublic import Development.AutomorphicArithmetic.OrbitLabellings.FnumEqRhoMulSumOfDemandRatioLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.FormalSeriesBounds Formalism.IncomingBounds Formalism.UnitaryBoundIntegral Formalism.L2.DIV Formalism.L2.Pj Formalism.BasicNotions GlobalTheory.GoodDepth NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.ContentValue

lemma lpF_nonneg (l d : ℕ) [NeZero d] (D : ZMod d → ℝ) (hl : 2 ≤ l) (hD : ∀ a, 0 ≤ D a) : 0 ≤ lpF l d D := by
  have hl' : (2 : ℝ) ≤ l := by exact_mod_cast hl
  have hS : 0 ≤ ∑ a, D a := Finset.sum_nonneg fun a _ => hD a
  have hq : (0 : ℝ) < (l : ℝ) ^ 2 - 1 := by nlinarith
  have hg : 0 ≤ (l : ℝ) / ((l : ℝ) ^ 2 - 1) * ∑ a, D a := by positivity
  unfold lpF
  rw [sub_nonneg]
  refine Real.sSup_le ?_ hg
  rintro t ⟨x, h0, h1, h2, rfl⟩
  have := (GlobalTheory.FlowProgramme.duality l d D hl x ⟨h0, fun a i h => ?_, h2⟩).1
  · have ht : 0 ≤ ∑ s, ∑ i ∈ Finset.range d, x s i :=
      Finset.sum_nonneg fun s _ => Finset.sum_nonneg fun i _ => h0 s i
    rw [div_mul_eq_mul_div, le_div_iff₀ hq]
    nlinarith [mul_le_mul_of_nonneg_left this (show (0 : ℝ) ≤ l - 1 by linarith)]
  · by_contra hc
    refine h (h1 a i ?_)
    by_cases ho : Odd i
    · exact Or.inr (not_lt.1 fun hh => hc ⟨ho, hh⟩)
    · exact Or.inl ho

lemma two_le_ordP (N : NumDatum) (l : ℕ) (hc : Inert N l) (hn : ¬ PhiC N l) : 2 ≤ N.ordP l := by
  unfold NumDatum.ordP
  split
  · have := addOrderOf_pos (2 • N.hP l)
    omega
  · rename_i hs
    have h0 : N.hP l ≠ 0 := fun h => hn ⟨Or.resolve_right hc hs, h⟩
    have h1 : addOrderOf (N.hP l) ≠ 1 := fun h => h0 (AddMonoid.addOrderOf_eq_one_iff.1 h)
    have := addOrderOf_pos (N.hP l)
    omega

lemma rho_bound (k w l : ℝ) (hk : 1 ≤ k) (hw : 0 ≤ w) (hl : 2 ≤ l) :
    (k - 1) * w / (l ^ 2 - 1) ≤ 2 * (k * w / l ^ 2) := by
  have h4 : 4 ≤ l ^ 2 := by nlinarith
  rw [← mul_div_assoc, div_le_div_iff₀ (by linarith) (by linarith)]
  have h1 : 0 ≤ k * w := by positivity
  nlinarith [mul_nonneg h1 (show 0 ≤ l ^ 2 - 2 by linarith), mul_nonneg hw (show 0 ≤ l ^ 2 by linarith)]

theorem main : ∀ (N : NumDatum) (j l : ℕ), l.Prime → l ∉ N.H.small → l ≠ N.q → l ≠ N.d → l ≠ N.g 0 → l ≠ N.g 1 → (∀ z, 0 ≤ N.w j z) → (∀ z z', N.w j z' ≤ N.sc.X'' N.R.n * N.w j z) →
  0 ≤ N.FjP j l ∧ (Inert N l ∨ N.cls l = PrimeClass.splitK) ∧ ParOK (parOf N j l) ∧
  (PhiC N l → ((N.R.k : ℝ) - 1) * (∑ z, N.w j z) / ((l : ℝ) ^ 2 - 1) ≤ N.FjP j l + if N.sc.X'' N.R.n < (l : ℝ) then 2 * (N.R.k * (∑ z, N.w j z) / (l : ℝ) ^ 2) else 0) ∧
  (Inert N l → ¬ PhiC N l → ∀ Z : Finset (RPl N.R), RF.IsReps (parOf N j l) Z →
    (∑ z ∈ Z, Fnum l (N.ordP l) fun s => ((N.R.k : ℝ) - 1) * N.w j (N.pos l z s.val)) ≤ N.FjP j l + if N.sc.X'' N.R.n < (l : ℝ) then 2 * (N.R.k * (∑ z, N.w j z) / (l : ℝ) ^ 2) else 0) := by
  classical
  intro N j l hp h2 hq hd hg0 hg1 hw hr
  have hl : 2 ≤ l := hp.two_le
  have hl' : (2 : ℝ) ≤ l := by exact_mod_cast hl
  have hk : (1 : ℝ) ≤ N.R.k := by
    have := N.R.m_add_three_le_k
    exact_mod_cast (by omega : 1 ≤ N.R.k)
  have hq2 : (0 : ℝ) < (l : ℝ) ^ 2 - 1 := by nlinarith
  have hS : 0 ≤ ∑ z, N.w j z := Finset.sum_nonneg fun z _ => hw z
  have hcls : Inert N l ∨ N.cls l = PrimeClass.splitK := by
    unfold Inert NumDatum.cls primeClass
    rw [if_neg h2, if_neg hq, if_neg hd]
    split_ifs <;> simp
  have hnd : N.cls l ≠ PrimeClass.ramD := by
    rcases hcls with (h | h) | h <;> rw [h] <;> simp
  have hF : N.FjP j l = if Inert N l ∧ (l : ℝ) ≤ N.sc.X'' N.R.n then N.FInert j l else 0 := by
    unfold NumDatum.FjP
    rw [if_neg (by tauto), if_neg hnd]
    by_cases h : Inert N l ∧ (l : ℝ) ≤ N.sc.X'' N.R.n
    · rw [if_pos h]; exact if_pos h
    · rw [if_neg h]; exact if_neg h
  have hD : ∀ z, 0 ≤ ((N.R.k : ℝ) - 1) * N.w j z := fun z => mul_nonneg (by linarith) (hw z)
  have hI : 0 ≤ N.FInert j l := by
    unfold NumDatum.FInert
    split_ifs
    · exact Finset.sum_nonneg fun z _ => div_nonneg (hD z) hq2.le
    · exact div_nonneg (Finset.sum_nonneg fun z _ => lpF_nonneg _ _ _ hl fun a => hD _) (Nat.cast_nonneg _)
  have hb := rho_bound N.R.k _ l hk hS hl'
  refine ⟨?_, hcls, ?_, ?_, ?_⟩
  · rw [hF]
    split_ifs
    · exact hI
    · exact le_rfl
  · have h3 := N.R.m_add_three_le_k
    have h4 := N.R.two_le_m
    refine ⟨?_, ?_, h3, ?_, ?_⟩
    · show Fintype.card (RPl N.R) = N.R.f
      have := Formalism.HC.Frame.card_A N.R.toFrame
      simpa [Ranks.f, Ranks.n] using this
    · show 1 ≤ N.R.m
      omega
    · show N.R.r = N.R.k - 1 + N.R.m
      unfold Ranks.r
      omega
    · show 0 ≤ N.Sc + N.eta
      unfold NumDatum.Sc NumDatum.eta
      positivity
  · intro hc
    have hi : Inert N l := Or.inl hc.1
    by_cases hX : (l : ℝ) ≤ N.sc.X'' N.R.n
    · rw [hF, if_pos ⟨hi, hX⟩, if_neg (not_lt.2 hX), add_zero]
      unfold NumDatum.FInert
      rw [if_pos (show N.cls l = PrimeClass.inertClass ∧ N.hP l = 0 from hc), ← Finset.sum_div, ← Finset.mul_sum]
    · rw [hF, if_neg (fun h => hX h.2), if_pos (not_le.1 hX), zero_add]
      exact hb
  · intro hi hc Z hZ
    have hZ' : Formalism.L2.FormalSeriesBounds.IsReps N l Z := hZ
    by_cases hX : (l : ℝ) ≤ N.sc.X'' N.R.n
    · rw [hF, if_pos ⟨hi, hX⟩, if_neg (not_lt.2 hX), add_zero]
      exact (GlobalTheory.LevelsOrbits.fInertReps N j l Z hZ' hi hc).1.ge
    · rw [hF, if_neg (fun h => hX h.2), if_pos (not_le.1 hX), zero_add]
      refine le_trans (le_of_eq ?_) hb
      have ho2 := two_le_ordP N l hi hc
      have hl3 : 3 ≤ l := by
        have := ne_two_of_not_small h2
        omega
      have hbal : ∀ z z', N.w j z' ≤ l * N.w j z := fun z z' =>
        (hr z z').trans (mul_le_mul_of_nonneg_right (not_le.1 hX).le (hw z))
      rw [GlobalTheory.LevelsOrbits.sum_reps N l Z hZ' (N.w j), Finset.mul_sum, Finset.sum_div]
      refine Finset.sum_congr rfl fun z _ => ?_
      rw [UpperTheory.fnum_eq_rho_mul_sum_of_demand_ratio_le l (N.ordP l) hl3 ho2 _ (fun a => hD _) (fun a a' => ?_), ← Finset.mul_sum]
      · unfold Formalism.IncomingBounds.rho
        ring
      · have := mul_le_mul_of_nonneg_left (hbal (N.pos l z a.val) (N.pos l z a'.val))
          (show (0 : ℝ) ≤ N.R.k - 1 by linarith)
        linarith

end GlobalTheory.ContentValue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ForcedContentBoundsProgrammeValueGoodPrime =====
