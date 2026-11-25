module

public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColNumDef
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CoarseDegreeAlternative
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.FirstCoefficientFacts
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.PolyUpperBoundDelta
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsS
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CardEqChainSum
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.TCoreDef
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXCnt
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSeg
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IdentityLiftWeightedHomog
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.YcondFactor
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.HomGMonomial
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LatticeCountingFormula
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnCongruence
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.WedgeSplitTan
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXRen
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColDef
public import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsDef
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.ThresholdLowerBounds
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Std.Tactic.BVDecide.Normalize.BitVec
import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.DividedPowerZeroOfGlActionZero
import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition
import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Lemma44IdentityOfRawTail
import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.KGShift

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXNum, Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXPH, Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSum, Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IoDChain, Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.MonomialSumEqProd, Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColTop

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXNum =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXNum", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColNumDef\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CoarseDegreeAlternative\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.FirstCoefficientFacts\nimport Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds\nimport Formalism.SharpRestriction.GrowthBounds.BinomialRatio.ThresholdLowerBounds\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.PolyUpperBoundDelta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

open Formalism.MainNotions.G

theorem column_first_coefficient_bound {a b' E0 Q Qj k N Y c N1 eps A0 : ℝ} (ha : 0 < a) (hQj0 : 0 < Qj) (hQ : Qj ≤ Q)
    (hN5 : E0 / a + Q / a ≤ eps) (hA0 : (a - E0) / Qj - 1 < A0) (hkb : k * b' ≤ a)
    (hHc : 1 * k ^ 3 * N * Q ^ 4 * c * Y ≤ b') (hN2 : 2 ≤ N) (hY1 : 1 ≤ Y) (heps2 : eps ≤ 1 / 2)
    (hepsk : 1 / k ≤ eps) (hk5 : 5 ≤ k) (hQ1 : 1 ≤ Q) (sq_level_le_degree : 2 * N1 + 3 ≤ k) (hN1 : 1 ≤ N1) (hc0 : 0 ≤ c) :
    0 < A0 ∧ 12 * c + 13 * k * N1 ^ 2 * Q * c ≤ 4 * (eps * A0) := by
  have hk0 : 0 < k := by linarith
  have hQ0 : 0 < Q := by linarith
  have e1 : E0 + Q ≤ eps * a := by
    rw [← add_div, div_le_iff₀ ha] at hN5; exact hN5
  have h5 : a * (1 - eps) < A0 * Qj := by
    have e2 : (a - E0) / Qj - 1 = (a - E0 - Qj) / Qj := by field_simp
    rw [e2, div_lt_iff₀ hQj0] at hA0
    linarith
  have h7 : a * (1 / 2) ≤ a * (1 - eps) := mul_le_mul_of_nonneg_left (by linarith) ha.le
  have hpos : 0 < A0 * Qj := by linarith
  have hA0p : 0 < A0 := (mul_pos_iff_of_pos_right hQj0).1 hpos
  have h6 : A0 * Qj ≤ A0 * Q := mul_le_mul_of_nonneg_left hQ hA0p.le
  have hb2 : 2 * (k ^ 3 * Q ^ 4 * c) ≤ b' := by
    have a5 : 0 ≤ k ^ 3 * Q ^ 4 * c := by positivity
    have a2 : 2 * (k ^ 3 * Q ^ 4 * c) ≤ N * (k ^ 3 * Q ^ 4 * c) := mul_le_mul_of_nonneg_right hN2 a5
    have a6 : 0 ≤ N * (k ^ 3 * Q ^ 4 * c) := by positivity
    have a3 : N * (k ^ 3 * Q ^ 4 * c) * 1 ≤ N * (k ^ 3 * Q ^ 4 * c) * Y := mul_le_mul_of_nonneg_left hY1 a6
    have a4 : 1 * k ^ 3 * N * Q ^ 4 * c * Y = N * (k ^ 3 * Q ^ 4 * c) * Y := by ring
    linarith
  have h8 : k * (2 * (k ^ 3 * Q ^ 4 * c)) ≤ k * b' := mul_le_mul_of_nonneg_left hb2 hk0.le
  have h9 : (k ^ 4 * Q ^ 3 * c) * Q < A0 * Q := by
    have e : (k ^ 4 * Q ^ 3 * c) * Q = k * (2 * (k ^ 3 * Q ^ 4 * c)) * (1 / 2) := by ring
    rw [e]
    linarith
  have h10 : k ^ 4 * Q ^ 3 * c < A0 := lt_of_mul_lt_mul_right h9 hQ0.le
  have h11 : 1 / k * A0 ≤ eps * A0 := mul_le_mul_of_nonneg_right hepsk hA0p.le
  have h12 : 1 / k * (k ^ 4 * Q ^ 3 * c) ≤ 1 / k * A0 := mul_le_mul_of_nonneg_left h10.le (by positivity)
  have h13 : 1 / k * (k ^ 4 * Q ^ 3 * c) = k ^ 3 * Q ^ 3 * c := by field_simp
  have hQ3 : Q ≤ Q ^ 3 := by
    calc Q = Q ^ 1 := (pow_one _).symm
      _ ≤ Q ^ 3 := pow_le_pow_right₀ hQ1 (by norm_num)
  have hkc : 0 ≤ k ^ 3 * c := by positivity
  have h14 : k ^ 3 * c * Q ≤ k ^ 3 * c * Q ^ 3 := mul_le_mul_of_nonneg_left hQ3 hkc
  have h15 : k ^ 3 * c * 1 ≤ k ^ 3 * c * Q := mul_le_mul_of_nonneg_left hQ1 hkc
  have hk3 : (125 : ℝ) ≤ k ^ 3 := by
    calc (125 : ℝ) = 5 ^ 3 := by norm_num
      _ ≤ k ^ 3 := pow_le_pow_left₀ (by norm_num) hk5 3
  have h16 : 125 * c ≤ k ^ 3 * c := mul_le_mul_of_nonneg_right hk3 hc0
  have hN12 : N1 ^ 2 ≤ (k / 2) ^ 2 := pow_le_pow_left₀ (by linarith) (by linarith) 2
  have hkQc : 0 ≤ k * Q * c := by positivity
  have h17 : N1 ^ 2 * (k * Q * c) ≤ (k / 2) ^ 2 * (k * Q * c) := mul_le_mul_of_nonneg_right hN12 hkQc
  have e3 : 13 * k * N1 ^ 2 * Q * c = 13 * (N1 ^ 2 * (k * Q * c)) := by ring
  have e4 : (k / 2) ^ 2 * (k * Q * c) = (k ^ 3 * c * Q) / 4 := by ring
  have e5 : k ^ 3 * Q ^ 3 * c = k ^ 3 * c * Q ^ 3 := by ring
  refine ⟨hA0p, ?_⟩
  rw [e3]
  linarith

theorem column_margin_bound {mm n c ka N1 k Q : ℝ} (hmm : mm ≤ 12 * c) (hn0 : 0 ≤ n) (hN1 : 1 ≤ N1) (hka0 : 0 ≤ ka)
    (hka : ka = 13 * k * N1 * Q) :
    (mm + n * ka) + N1 * ((c - n) * ka) ≤ 12 * c + 13 * k * N1 ^ 2 * Q * c := by
  have h1 : n * ka * 1 ≤ n * ka * N1 := mul_le_mul_of_nonneg_left hN1 (mul_nonneg hn0 hka0)
  have e : 13 * k * N1 ^ 2 * Q * c = N1 * c * ka := by rw [hka]; ring
  rw [e]
  nlinarith

theorem column_lower_ratio {b' gl gi Al Ai Pl Pi p k Q be : ℝ} (hb : 0 < b') (hPi : 0 < Pi) (hk0 : 0 ≤ k)
    (hAl0 : 0 ≤ Al) (hl : Al * Pl ≤ gl) (hgl : gl ≤ b' * (1 + be)) (hP : p * Pi ≤ Pl)
    (hi : gi - k * Pi < Ai * Pi) (hgi : b' * (1 - be) ≤ gi) (hbe : be ≤ 1 / 12) (hPQ : Pi ≤ Q)
    (hkQ : 2 * (k * Q) ≤ b') : Al * p ≤ 3 * Ai := by
  have h1 : Al * (p * Pi) ≤ Al * Pl := mul_le_mul_of_nonneg_left hP hAl0
  have h2 : b' * (1 + be) ≤ b' * (13 / 12) := mul_le_mul_of_nonneg_left (by linarith) hb.le
  have h3 : b' * (11 / 12) ≤ b' * (1 - be) := mul_le_mul_of_nonneg_left (by linarith) hb.le
  have h4 : k * Pi ≤ k * Q := mul_le_mul_of_nonneg_left hPQ hk0
  have h5 : b' * (5 / 12) < Ai * Pi := by linarith
  have h6 : Al * p * Pi ≤ 3 * Ai * Pi := by
    have e : Al * p * Pi = Al * (p * Pi) := by ring
    have e' : 3 * Ai * Pi = 3 * (Ai * Pi) := by ring
    rw [e, e']
    linarith
  exact le_of_mul_le_mul_right h6 hPi

theorem column_first_goal {S mu NE eps A0 B : ℝ} (hS : S ≤ 2 * (eps * A0) + NE) (hmu : mu + NE ≤ B) (hB : B ≤ 4 * (eps * A0))
    (heps : eps ≤ 1 / 240) (hA0 : 0 ≤ A0) : S + mu ≤ A0 := by
  have h1 : eps * A0 ≤ 1 / 240 * A0 := mul_le_mul_of_nonneg_right heps hA0
  linarith

theorem column_second_goal {W S mu NE eps de A0 Ai B T N1 p : ℝ} (hW : W ≤ Ai + N1 * T) (hT : T * p = 3 * Ai)
    (hp0 : 0 < p) (hN1p : 3 * N1 ≤ eps * p) (hAi0 : 0 ≤ Ai)
    (hS : S ≤ 2 * (eps * A0) + NE) (hmu : mu + NE ≤ B) (hB : B ≤ 4 * (eps * A0)) (heps0 : 0 ≤ eps)
    (h40 : 40 * eps ≤ de) (hde6 : de < 1 / 6) (hA0 : 0 ≤ A0) (hdich : Ai * (1 + de) < A0) : W + S + mu ≤ A0 := by
  have hde0 : 0 ≤ de := by linarith
  have h1 : N1 * T ≤ eps * Ai := by
    have a1 : N1 * T * p ≤ eps * Ai * p := by
      have e : N1 * T * p = 3 * N1 * Ai := by
        calc N1 * T * p = N1 * (T * p) := by ring
          _ = 3 * N1 * Ai := by rw [hT]; ring
      have a2 : 3 * N1 * Ai ≤ eps * p * Ai := mul_le_mul_of_nonneg_right hN1p hAi0
      rw [e]
      linarith
    exact le_of_mul_le_mul_right a1 hp0
  have h2 : Ai * (1 + de) * (1 + eps) ≤ A0 * (1 + eps) := mul_le_mul_of_nonneg_right hdich.le (by linarith)
  have h3 : 0 ≤ eps * A0 := mul_nonneg heps0 hA0
  have h4 : eps * A0 * de ≤ eps * A0 * (1 / 6) := mul_le_mul_of_nonneg_left hde6.le h3
  have h5 : 40 * eps * A0 ≤ de * A0 := mul_le_mul_of_nonneg_right h40 hA0
  have h6 : (Ai * (1 + eps) + 6 * (eps * A0)) * (1 + de) ≤ A0 * (1 + de) := by
    have e : (Ai * (1 + eps) + 6 * (eps * A0)) * (1 + de) =
        Ai * (1 + de) * (1 + eps) + 6 * (eps * A0) + 6 * (eps * A0 * de) := by ring
    rw [e]
    linarith
  have h7 : Ai * (1 + eps) + 6 * (eps * A0) ≤ A0 := le_of_mul_le_mul_right h6 (by linarith)
  linarith

theorem column_partial_sum_S {s : ℕ} (σ : ℕ) (sg : Fin s → ℝ) {B N1 : ℝ} (hB : 0 ≤ B) (hs : (s : ℝ) ≤ N1)
    (h : ∀ l : Fin s, (l : ℕ) < σ → sg l ≤ B) :
    (∑ l : Fin s, (if (l : ℕ) < σ then sg l else 0)) ≤ N1 * B := by
  calc (∑ l : Fin s, (if (l : ℕ) < σ then sg l else 0)) ≤ ∑ _l : Fin s, B := by
        apply Finset.sum_le_sum
        intro l _
        split_ifs with hl
        · exact h l hl
        · exact hB
    _ = (s : ℝ) * B := by simp
    _ ≤ N1 * B := mul_le_mul_of_nonneg_right hs hB

theorem column_partial_sum_W {s : ℕ} (i : Fin s) (w : Fin s → ℝ) {Ai T N1 : ℝ} (hT : 0 ≤ T) (hs : (s : ℝ) ≤ N1)
    (hi : w i ≤ Ai) (hl : ∀ l : Fin s, (l : ℕ) < (i : ℕ) → w l ≤ T) :
    (∑ l : Fin s, (if (l : ℕ) ≤ (i : ℕ) then w l else 0)) ≤ Ai + N1 * T := by
  calc (∑ l : Fin s, (if (l : ℕ) ≤ (i : ℕ) then w l else 0))
      ≤ ∑ l : Fin s, ((if l = i then Ai else 0) + T) := by
        apply Finset.sum_le_sum
        intro l _
        by_cases h1 : l = i
        · subst h1
          simp only [le_refl, if_true]
          linarith
        · rw [if_neg h1]
          split_ifs with h2
          · have : (l : ℕ) < (i : ℕ) := lt_of_le_of_ne h2 (fun h => h1 (Fin.ext h))
            linarith [hl l this]
          · linarith
    _ = Ai + (s : ℝ) * T := by
        rw [Finset.sum_add_distrib]
        simp
    _ ≤ Ai + N1 * T := by
        have := mul_le_mul_of_nonneg_right hs hT
        linarith

theorem three_level_le_eps_prime {C0 Cde CE1 CE2 : ℝ} {X : Loc} (St : Std C0 Cde CE1 CE2 1 X) :
    3 * (X.N1 : ℝ) ≤ eps X C0 * X.p := by
  have hk5 := St.k5
  have hk0 : 0 < X.k := by linarith
  have hN1r := St.one_le_level_alt
  have heps0 := St.eps0
  have a1 : (X.N1 : ℝ) ≤ eps X C0 * X.k := by
    have e : eps X C0 * X.k = X.N1 * X.La C0 := by
      unfold eps
      field_simp
    rw [e]
    have := mul_le_mul_of_nonneg_left St.La1 (by linarith : (0 : ℝ) ≤ (X.N1 : ℝ))
    linarith
  have a2 : X.k ^ 2 ≤ (X.p : ℝ) := by
    have h3 := St.pk
    have h4 := St.Y1
    have h7 : X.k ^ 2 * 1 ≤ X.k ^ 2 * X.Y ^ 2 := mul_le_mul_of_nonneg_left (by nlinarith) (by positivity)
    linarith
  have a3 : eps X C0 * X.k ^ 2 ≤ eps X C0 * X.p := mul_le_mul_of_nonneg_left a2 heps0
  have a4 : (X.N1 : ℝ) * X.k ≤ eps X C0 * X.k * X.k := mul_le_mul_of_nonneg_right a1 hk0.le
  have a5 : (X.N1 : ℝ) * 5 ≤ (X.N1 : ℝ) * X.k := mul_le_mul_of_nonneg_left hk5 (by linarith)
  have e2 : eps X C0 * X.k * X.k = eps X C0 * X.k ^ 2 := by ring
  linarith

theorem m1num_of_std {C0 Cde CE1 CE2 : ℝ} {X : Loc} (St : Std C0 Cde CE1 CE2 1 X) (mm : ℝ)
    (hmm : mm = 0 ∨ mm = 12 * (X.c : ℝ)) (n : ℕ) (hnc : n ≤ X.c)
    (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m)
    (hb : BLk C0 Cde CE1 CE2 X (((X.c - n : ℕ) : ℝ) * ka1 X) j b) :
    (∑ l : Fin (segS X.TT j), (if (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma then (b.sg l : ℤ) else 0)) ≤
        ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) - (mm + (n : ℝ) * ka1 X)⌋ ∧
    ∀ i : Fin (segS X.TT j), (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma →
      (∑ l : Fin (segS X.TT j), (if (l : ℕ) ≤ (i : ℕ) then (b.w l : ℤ) else 0)) +
        (∑ l : Fin (segS X.TT j), (if (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma then (b.sg l : ℤ) else 0)) ≤
        ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) - (mm + (n : ℝ) * ka1 X)⌋ := by
  obtain ⟨hdig, -, hS, -, -⟩ := hb
  have hk5 := St.k5
  have hk0 : 0 < X.k := by linarith
  have hp0 : (0 : ℝ) < X.p := by linarith [St.p1]
  have hN1r := St.one_le_level_alt
  have hQ1 := St.Q1
  have heps0 := St.eps0
  have h40 := St.forty_epsilon_le_delta
  have hde6 := St.de6
  have heps240 : eps X C0 ≤ 1 / 240 := by linarith
  have hc0 : (0 : ℝ) ≤ (X.c : ℝ) := Nat.cast_nonneg _
  have hQj0 : (0 : ℝ) < ((X.p ^ segG X.TT j : ℕ) : ℝ) := by
    push_cast
    exact pow_pos hp0 _
  have hQjQ : ((X.p ^ segG X.TT j : ℕ) : ℝ) ≤ X.Q := by
    push_cast
    exact pow_le_pow_right₀ (by exact_mod_cast (show 1 ≤ X.p by have := St.p5; omega)) (St.segB j).1
  have hA0lt : ((X.a : ℝ) - X.E0 C0 CE1 CE2) / ((X.p ^ segG X.TT j : ℕ) : ℝ) - 1 <
      (((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) := Int.sub_one_lt_floor _
  obtain ⟨hA0p, hB⟩ := column_first_coefficient_bound (eps := eps X C0) St.apos hQj0 hQjQ St.N5 hA0lt St.kb St.Hc St.N2 St.Y1 (by linarith) St.eps_ge hk5 hQ1
    St.N1k hN1r hc0
  have hka0 : 0 ≤ ka1 X := by
    unfold ka1
    positivity
  have hmm' : mm ≤ 12 * (X.c : ℝ) := by
    rcases hmm with h | h
    · rw [h]; positivity
    · exact h.le
  have hcast : (((X.c - n : ℕ) : ℕ) : ℝ) = (X.c : ℝ) - (n : ℝ) := Nat.cast_sub hnc
  have hmu := column_margin_bound (c := (X.c : ℝ)) (k := X.k) (Q := X.Q) hmm' (Nat.cast_nonneg n) hN1r hka0 rfl
  have hE0 : 0 ≤ ((X.c : ℝ) - (n : ℝ)) * ka1 X := by
    rw [← hcast]
    positivity
  have hs : ((segS X.TT j : ℕ) : ℝ) ≤ (X.N1 : ℝ) := by exact_mod_cast (St.segB j).2
  have hLa0 : 0 ≤ X.La C0 := by linarith [St.La1]
  generalize hA0def : (((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) = A0 at *
  have hBd0 : 0 ≤ 2 * X.La C0 * A0 / X.k + ((X.c : ℝ) - (n : ℝ)) * ka1 X := by
    have : 0 ≤ 2 * X.La C0 * A0 / X.k := by positivity
    linarith
  have hsumS : (∑ l : Fin (segS X.TT j), (if (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma then (b.sg l : ℝ) else 0)) ≤
      2 * (eps X C0 * A0) + (X.N1 : ℝ) * (((X.c : ℝ) - (n : ℝ)) * ka1 X) := by
    have h1 := column_partial_sum_S (X.seg C0 CE1 CE2 j).sigma (fun l => (b.sg l : ℝ)) hBd0 hs
      (fun l hl => by
        have := (hS l hl).2.2.2
        rw [hcast] at this
        exact this)
    have e : (X.N1 : ℝ) * (2 * X.La C0 * A0 / X.k + ((X.c : ℝ) - (n : ℝ)) * ka1 X) =
        2 * (eps X C0 * A0) + (X.N1 : ℝ) * (((X.c : ℝ) - (n : ℝ)) * ka1 X) := by
      unfold eps
      ring
    rw [e] at h1
    exact h1
  constructor
  · rw [Int.le_floor]
    push_cast
    have := column_first_goal hsumS hmu hB heps240 hA0p.le
    linarith
  · intro i hi
    rw [Int.le_floor]
    push_cast
    obtain ⟨hP0, -, -, hQ, hPQ⟩ := St.levels j i
    have hcbi := coarse_bounds (X.bT (segPos X.TT j i)) (X.p ^ (segG X.TT j - (segDists X.TT j).get i)) (b.rz i)
      (fun c => (hdig.1 i c).1) (hdig.2.1 i).1 (hdig.2.1 i).2
    have hAPi : (X.bT (segPos X.TT j i) : ℝ) - X.k * ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) <
        (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) * ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) :=
      hcbi.2
    have hbTi : X.b' * (1 - _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) ≤ (X.bT (segPos X.TT j i) : ℝ) := (St.winB _ (pos_mem X.TT j i).1).1
    have hbe12 : _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0 ≤ 1 / 12 := by linarith [St.be18]
    have hdich : (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) * (1 + X.de C0 Cde) < A0 := by
      rw [← hA0def]
      exact (coarse_degree_alternative le_rfl St j b hdig i).1 hi
    have hAi0 : (0 : ℝ) ≤ (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) := Nat.cast_nonneg _
    have hlow : ∀ l : Fin (segS X.TT j), (l : ℕ) < (i : ℕ) →
        (b.w l : ℝ) ≤ 3 * (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) / X.p := by
      intro l hl
      have hcbl := coarse_bounds (X.bT (segPos X.TT j l)) (X.p ^ (segG X.TT j - (segDists X.TT j).get l)) (b.rz l)
        (fun c => (hdig.1 l c).1) (hdig.2.1 l).1 (hdig.2.1 l).2
      have hAPl : (coarseA X.p (X.seg C0 CE1 CE2 j) b l : ℝ) *
          ((X.p ^ (segG X.TT j - (segDists X.TT j).get l) : ℕ) : ℝ) ≤ (X.bT (segPos X.TT j l) : ℝ) := hcbl.1
      have hbTl : (X.bT (segPos X.TT j l) : ℝ) ≤ X.b' * (1 + _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) := (St.winB _ (pos_mem X.TT j l).1).2
      have hd1 : (segDists X.TT j).get l < (segDists X.TT j).get i := dist_strictMono X.TT j (Fin.lt_def.mpr hl)
      have hd2 : (segDists X.TT j).get i < segG X.TT j := (dist_pos_lt X.TT j i).2
      have hPP : (X.p : ℝ) * ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) ≤
          ((X.p ^ (segG X.TT j - (segDists X.TT j).get l) : ℕ) : ℝ) := by
        have hn : X.p * X.p ^ (segG X.TT j - (segDists X.TT j).get i) ≤
            X.p ^ (segG X.TT j - (segDists X.TT j).get l) := by
          rw [← pow_succ']
          exact Nat.pow_le_pow_right (by have := St.p5; omega) (by omega)
        exact_mod_cast hn
      have h3 := column_lower_ratio St.bpos hP0 hk0.le (Nat.cast_nonneg _) hAPl hbTl hPP hAPi hbTi hbe12 (hPQ.trans hQ)
        (St.two_rank_mul_Q_le le_rfl)
      have hw : (b.w l : ℝ) ≤ (coarseA X.p (X.seg C0 CE1 CE2 j) b l : ℝ) := by
        exact_mod_cast (hS l (lt_trans hl hi)).2.1
      rw [le_div_iff₀ hp0]
      have := mul_le_mul_of_nonneg_right hw hp0.le
      linarith
    have hwi : (b.w i : ℝ) ≤ (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) := by
      exact_mod_cast (hS i hi).2.1
    have hsumW := column_partial_sum_W i (fun l => (b.w l : ℝ)) (by positivity) hs hwi hlow
    have hN1p := three_level_le_eps_prime St
    have hT : 3 * (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) / X.p * X.p =
        3 * (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) := div_mul_cancel₀ _ hp0.ne'
    have := column_second_goal hsumW hT hp0 hN1p hAi0 hsumS hmu hB heps0 h40 hde6 hA0p.le hdich
    linarith

theorem column_numerics_holds : ColumnNumericsBeyond :=
  TransportedAlt.mono (fun _ _ _ _ _ _ _ _ _ _ h X hD hH hc mm hmm n _ hnc j b hb =>
    m1num_of_std (h X hD hH hc) mm hmm n hnc j b hb) threshold_standard_one

end Formalism.MainNotions.ColumnSystems.Pf.GenusGluing
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXNum =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXPH =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXPH", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsS\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CardEqChainSum\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.TCoreDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXCnt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

open Formalism.MainNotions.G MvPolynomial Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.ColumnSystems.Pf.Col

theorem floor_cap {s r : ℕ} (p : ℕ) (S : SegData s) (b : SegBlock s r) (mu : ℝ) (L0 : ℕ)
    (hL : ∀ l : Fin s, (l : ℕ) < S.sigma → (l : ℕ) < L0)
    (hw : ∀ l : Fin s, (l : ℕ) < S.sigma → b.w l ≤ coarseA p S b l)
    (ho : ∀ l : Fin s, S.sigma ≤ (l : ℕ) → b.o l ≤ coarseA p S b l) :
    ⌊((cap p S b L0 : ℤ) : ℝ) - mu⌋ =
      ⌊((S.A0 p : ℤ) : ℝ) - mu⌋ - (∑ l : Fin s, (if (l : ℕ) < S.sigma then (b.sg l : ℤ) else 0)) +
        ∑ l : Fin s, (if 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 then
          ((coarseA p S b l - (if (l : ℕ) < S.sigma then b.w l else b.o l) : ℕ) : ℤ) else 0) := by
  have hD : (∑ i : Fin s, if (i : ℕ) < L0 then ((coarseA p S b i : ℤ) - (oEff S b i : ℤ)) else 0) =
      (∑ l : Fin s, (if 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 then
          ((coarseA p S b l - (if (l : ℕ) < S.sigma then b.w l else b.o l) : ℕ) : ℤ) else 0)) -
      ∑ l : Fin s, (if (l : ℕ) < S.sigma then (b.sg l : ℤ) else 0) := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun l _ => ?_
    unfold oEff
    by_cases h1 : (l : ℕ) < S.sigma
    · have h2 := hL l h1
      have h3 : 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 := by omega
      simp only [if_pos h1, if_pos h2, if_pos h3]
      rw [Nat.cast_sub (hw l h1)]
      push_cast; ring
    · by_cases h2 : (l : ℕ) < L0
      · have h3 : 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 := by omega
        simp only [if_neg h1, if_pos h2, if_pos h3]
        rw [Nat.cast_sub (ho l (not_lt.1 h1))]
        ring
      · have h3 : ¬ 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 := by omega
        simp only [if_neg h1, if_neg h2, if_neg h3]
        ring
  unfold cap
  rw [hD]
  generalize (∑ l : Fin s, (if 2 * (l : ℕ) + 2 ≤ 2 * L0 + 1 then
          ((coarseA p S b l - (if (l : ℕ) < S.sigma then b.w l else b.o l) : ℕ) : ℤ) else 0)) = P
  generalize (∑ l : Fin s, (if (l : ℕ) < S.sigma then (b.sg l : ℤ) else 0)) = Q
  have e : (((S.A0 p + (P - Q) : ℤ)) : ℝ) - mu = (((S.A0 p : ℤ) : ℝ) - mu) + ((P - Q : ℤ) : ℝ) := by
    push_cast; ring
  rw [e, Int.floor_add_intCast]; ring

theorem first_row_le {n N : ℕ} [NeZero n] {Lt : Letters (Fin N)} {B : Fin N → ℕ} (P : PPath n N Lt B)
    (t : Fin (N + 1)) :
    P.mu t 0 ≤ ∑ a : Fin N, if a.val < t.val ∧ Lt.vec a = true then (B a : ℤ) else 0 := by
  induction t using Fin.induction with
  | zero => rw [P.zero]; simp
  | succ i ih =>
    have hs := P.step i
    have hsplit : (∑ a : Fin N, if a.val < i.succ.val ∧ Lt.vec a = true then (B a : ℤ) else 0) =
        (∑ a : Fin N, if a.val < i.castSucc.val ∧ Lt.vec a = true then (B a : ℤ) else 0) +
          (if Lt.vec i = true then (B i : ℤ) else 0) := by
      have e : (if Lt.vec i = true then (B i : ℤ) else 0) =
          ∑ a : Fin N, if a = i then (if Lt.vec a = true then (B a : ℤ) else 0) else 0 := by
        rw [Finset.sum_ite_eq' Finset.univ i]; simp
      rw [e, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun a _ => ?_
      by_cases ha : a = i
      · subst ha
        simp
      · have hne : a.val ≠ i.val := fun h => ha (Fin.ext h)
        have hiff : a.val < i.succ.val ↔ a.val < i.castSucc.val := by
          simp only [Fin.val_succ, Fin.val_castSucc]; omega
        rw [if_neg ha, add_zero]
        simp only [hiff]
    rw [hsplit]
    by_cases hv : Lt.vec i = true
    · rw [if_pos hv] at hs
      rw [if_pos hv]
      obtain ⟨h1, -, h3⟩ := hs
      have h4 : P.mu i.succ 0 - P.mu i.castSucc 0 ≤ ∑ a, (P.mu i.succ a - P.mu i.castSucc a) :=
        Finset.single_le_sum (f := fun a => P.mu i.succ a - P.mu i.castSucc a)
          (fun a _ => sub_nonneg.2 (h1 a)) (Finset.mem_univ 0)
      rw [h3] at h4
      linarith
    · rw [if_neg hv] at hs
      rw [if_neg hv, add_zero]
      exact (hs.1 0).trans ih

theorem deg_even_le {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r)
    (lv : Fin (blockData p S aTop aPlus m b).T.t → ℕ) (jp : ℕ) (l : Fin s) (hl : (l : ℕ) < S.sigma) :
    ((blockData p S aTop aPlus m b).lettersAt lv jp).deg ⟨2 * l.val, by have := l.2; omega⟩ ≤ b.w l := by
  refine (Nat.sub_le _ _).trans ((Nat.sub_le _ _).trans ?_)
  show (segChain p S aTop b).deg ⟨2 * l.val, by have := l.2; omega⟩ ≤ b.w l
  have hne : ((⟨2 * l.val, by have := l.2; omega⟩ : Fin (2 * s + 1)) : ℕ) ≠ 2 * s := by
    have := l.2
    show 2 * l.val ≠ 2 * s
    omega
  have ht : topOf ⟨2 * l.val, by have := l.2; omega⟩ hne = l := Fin.ext (by show 2 * l.val / 2 = l.val; omega)
  unfold segChain
  simp only
  rw [dif_neg hne, if_pos (by omega), ht, if_pos hl]

theorem sum_deg_le {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r)
    (lv : Fin (blockData p S aTop aPlus m b).T.t → ℕ) (jp : ℕ) (l : Fin s) (hl : (l : ℕ) < S.sigma) :
    (∑ a : Fin (2 * s + 1), if a.val < 2 * l.val + 1 ∧
        ((blockData p S aTop aPlus m b).lettersAt lv jp).vec a = true then
        (((blockData p S aTop aPlus m b).lettersAt lv jp).deg a : ℤ) else 0) ≤
      ∑ l' : Fin s, (if (l' : ℕ) ≤ (l : ℕ) then (b.w l' : ℤ) else 0) := by
  have hvec : ∀ a, ((blockData p S aTop aPlus m b).lettersAt lv jp).vec a = decide ((a : ℕ) % 2 = 0) := fun _ => rfl
  rw [sum_fin_odd]
  have hlast : ¬ (2 * s < 2 * l.val + 1 ∧
      ((blockData p S aTop aPlus m b).lettersAt lv jp).vec ⟨2 * s, by omega⟩ = true) := by
    have := l.2
    intro h; omega
  rw [if_neg hlast, add_zero]
  refine Finset.sum_le_sum fun l' _ => ?_
  have hodd : ¬ (2 * l'.val + 1 < 2 * l.val + 1 ∧
      ((blockData p S aTop aPlus m b).lettersAt lv jp).vec ⟨2 * l'.val + 1, by have := l'.2; omega⟩ = true) := by
    rintro ⟨-, h⟩
    rw [hvec] at h
    simp only [decide_eq_true_eq] at h
    omega
  rw [if_neg hodd, add_zero]
  by_cases h : (l' : ℕ) ≤ (l : ℕ)
  · rw [if_pos h]
    split_ifs
    · exact_mod_cast deg_even_le p S aTop aPlus m b lv jp l' (by omega)
    · positivity
  · rw [if_neg h, if_neg (by rintro ⟨h1, -⟩; simp only at h1; omega)]

theorem bd_J_last {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r) :
    (blockData p S aTop aPlus m b).T.J (Fin.last S.t) = 2 * s + 1 :=
  dif_neg (lt_irrefl _)

theorem bd_thr_last {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r) :
    (blockData p S aTop aPlus m b).T.thr (Fin.last S.t) = ((⌊((cap p S b s : ℤ) : ℝ) - m⌋ : ℤ) : WithTop ℤ) := by
  show WithTop.map _ (segmentCapacities p S b (Fin.last S.t)) = _
  unfold segmentCapacities
  rw [dif_neg (show ¬ ((Fin.last S.t : Fin (S.t + 1)) : ℕ) < S.t from lt_irrefl _)]
  rfl

theorem bd_J_lt {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r)
    (q : ℕ) (h : q < S.t) :
    (blockData p S aTop aPlus m b).T.J (⟨q, Nat.lt_succ_of_lt h⟩ : Fin (S.t + 1)) = 2 * (S.sigma + q) + 1 :=
  dif_pos h

theorem bd_thr_lt {s r : ℕ} (p : ℕ) (S : SegData s) (aTop : Fin s → ℕ) (aPlus : ℕ) (m : ℝ) (b : SegBlock s r)
    (q : ℕ) (h : q < S.t) :
    (blockData p S aTop aPlus m b).T.thr (⟨q, Nat.lt_succ_of_lt h⟩ : Fin (S.t + 1)) =
      ((⌊((cap p S b (S.sigma + q) : ℤ) : ℝ) - m⌋ : ℤ) : WithTop ℤ) := by
  show WithTop.map _ (segmentCapacities p S b ⟨q, Nat.lt_succ_of_lt h⟩) = _
  unfold segmentCapacities
  rw [dif_pos h]
  rfl

theorem ph_seg {C0 Cde CE1 CE2 mu E : ℝ} {X : Loc} [NeZero X.m] {β : GlobalTheory X} (L : LvDat C0 CE1 CE2 mu X β)
    (j : Fin (numSeg X.TT)) (y : Tx X.m (L.LL j))
    (hy : y ∈ sAll (L.LL j) (BDk C0 CE1 CE2 mu X β j).T.J (BDk C0 CE1 CE2 mu X β j).T.thr)
    (hB : BLk C0 Cde CE1 CE2 X E j (β j))
    (hnum1 : (∑ l : Fin (segS X.TT j), (if (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma then ((β j).sg l : ℤ) else 0)) ≤
      ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) - mu⌋)
    (hnum2 : ∀ i : Fin (segS X.TT j), (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma →
      (∑ l : Fin (segS X.TT j), (if (l : ℕ) ≤ (i : ℕ) then ((β j).w l : ℤ) else 0)) +
        (∑ l : Fin (segS X.TT j), (if (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma then ((β j).sg l : ℤ) else 0)) ≤
        ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) - mu⌋)
    (hm : 2 * segS X.TT j + 1 < X.m) :
    Col.PH (L.LL j).vec (L.LL j).deg y.1.1.mu (nuS C0 CE1 CE2 mu X β j) := by
  have hvec : ∀ a, (L.LL j).vec a = decide ((a : ℕ) % 2 = 0) := fun _ => rfl
  have hw : ∀ l : Fin (segS X.TT j), (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma →
      (β j).w l ≤ coarseA X.p (X.seg C0 CE1 CE2 j) (β j) l := fun l h => (hB.2.2.1 l h).2.1
  have ho : ∀ l : Fin (segS X.TT j), (X.seg C0 CE1 CE2 j).sigma ≤ (l : ℕ) →
      (β j).o l ≤ coarseA X.p (X.seg C0 CE1 CE2 j) (β j) l := fun l h => (hB.2.1 l h).1
  have ha0 : 0 ≤ a0Z C0 CE1 CE2 mu X β j := sub_nonneg.2 hnum1
  have hnu : ∀ T, T ≠ 0 → nuS C0 CE1 CE2 mu X β j T = a0Z C0 CE1 CE2 mu X β j +
      ∑ l : Fin (segS X.TT j), (if 2 * (l : ℕ) + 2 ≤ T then (zxS C0 CE1 CE2 X β j l : ℤ) else 0) := by
    intro T h
    unfold nuS
    rw [if_neg h]
  have hge : ∀ T, T ≠ 0 → a0Z C0 CE1 CE2 mu X β j ≤ nuS C0 CE1 CE2 mu X β j T := by
    intro T h
    rw [hnu T h]
    refine le_add_of_nonneg_right (Finset.sum_nonneg fun l _ => ?_)
    split_ifs
    · positivity
    · exact le_rfl
  have hfl : ∀ L0 : ℕ, (∀ l : Fin (segS X.TT j), (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma → (l : ℕ) < L0) →
      ⌊((cap X.p (X.seg C0 CE1 CE2 j) (β j) L0 : ℤ) : ℝ) - mu⌋ = nuS C0 CE1 CE2 mu X β j (2 * L0 + 1) := by
    intro L0 hL
    rw [floor_cap X.p _ (β j) mu L0 hL hw ho, hnu _ (by omega)]
    rfl
  have h0 : nuS C0 CE1 CE2 mu X β j 0 = 0 := by
    unfold nuS
    rw [if_pos rfl]
  refine ⟨y.1.1.zero, y.1.1.dom, y.1.1.step, h0, ?_, ?_, ?_, hm⟩
  · intro t
    by_cases ht : t = 0
    · subst ht
      rw [h0]
      exact ha0.trans (hge _ (by omega))
    · rw [hnu t ht, hnu (t + 1) (by omega)]
      refine add_le_add_right (Finset.sum_le_sum fun l _ => ?_) _
      by_cases h : 2 * (l : ℕ) + 2 ≤ t
      · rw [if_pos h, if_pos (by omega)]
      · rw [if_neg h]
        split_ifs
        · positivity
        · exact le_rfl
  · intro i hi
    rw [hvec] at hi
    simp only [decide_eq_false_iff_not] at hi
    rw [hnu _ (by omega), hnu _ (by omega)]
    congr 1
    refine Finset.sum_congr rfl fun l _ => ?_
    exact if_congr (by omega) rfl rfl
  · intro i hi b
    rw [hvec] at hi
    simp only [decide_eq_true_eq] at hi
    refine (y.1.1.dom i.succ (Fin.zero_le b)).trans ?_
    have hi2 := i.2
    by_cases h1 : i.val = 2 * segS X.TT j
    · have hk := hy (Fin.last (X.seg C0 CE1 CE2 j).t)
      change ((y.1.1.mu (finPos _ ((BDk C0 CE1 CE2 mu X β j).T.J (Fin.last (X.seg C0 CE1 CE2 j).t))) 0 : ℤ) : WithTop ℤ) ≤
        (BDk C0 CE1 CE2 mu X β j).T.thr (Fin.last (X.seg C0 CE1 CE2 j).t) at hk
      rw [bd_J_last, bd_thr_last, WithTop.coe_le_coe, hfl _ (fun l _ => l.2)] at hk
      have e : finPos (2 * segS X.TT j + 1) (2 * segS X.TT j + 1) = i.succ :=
        Fin.ext (by simp only [finPos, Fin.val_succ]; omega)
      rw [e] at hk
      rw [h1]
      exact hk
    · obtain ⟨l, hl⟩ : ∃ l, i.val = 2 * l := ⟨i.val / 2, by omega⟩
      have hls : l < segS X.TT j := by omega
      by_cases h2 : l < (X.seg C0 CE1 CE2 j).sigma
      · have hf := first_row_le y.1.1 i.succ
        have e : (i.succ : Fin (2 * segS X.TT j + 1 + 1)).val = 2 * (⟨l, hls⟩ : Fin (segS X.TT j)).val + 1 := by
          simp only [Fin.val_succ]; omega
        rw [e] at hf
        have hs := sum_deg_le X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) (segAPlus X.TT X.aT j) mu (β j)
          (L.lv j) (L.jp j) ⟨l, hls⟩ h2
        have hn := hnum2 ⟨l, hls⟩ h2
        have hg := hge (i.val + 1) (by omega)
        have ha : (∑ l' : Fin (segS X.TT j), (if (l' : ℕ) ≤ ((⟨l, hls⟩ : Fin (segS X.TT j)) : ℕ) then ((β j).w l' : ℤ) else 0)) ≤
            a0Z C0 CE1 CE2 mu X β j := by
          unfold a0Z
          linarith
        exact hf.trans (hs.trans (ha.trans hg))
      · have hq : l - (X.seg C0 CE1 CE2 j).sigma < (X.seg C0 CE1 CE2 j).t := by
          unfold SegData.t; omega
        have hk := hy (⟨l - (X.seg C0 CE1 CE2 j).sigma, Nat.lt_succ_of_lt hq⟩ : Fin ((X.seg C0 CE1 CE2 j).t + 1))
        change ((y.1.1.mu (finPos _ ((BDk C0 CE1 CE2 mu X β j).T.J
          (⟨l - (X.seg C0 CE1 CE2 j).sigma, Nat.lt_succ_of_lt hq⟩ : Fin ((X.seg C0 CE1 CE2 j).t + 1)))) 0 : ℤ) : WithTop ℤ) ≤
          (BDk C0 CE1 CE2 mu X β j).T.thr
            (⟨l - (X.seg C0 CE1 CE2 j).sigma, Nat.lt_succ_of_lt hq⟩ : Fin ((X.seg C0 CE1 CE2 j).t + 1)) at hk
        rw [bd_J_lt _ _ _ _ _ _ _ hq, bd_thr_lt _ _ _ _ _ _ _ hq, WithTop.coe_le_coe] at hk
        have el : (X.seg C0 CE1 CE2 j).sigma + (l - (X.seg C0 CE1 CE2 j).sigma) = l := by omega
        rw [el, hfl l (fun l' h' => by omega)] at hk
        have e : finPos (2 * segS X.TT j + 1) (2 * l + 1) = i.succ :=
          Fin.ext (by simp only [finPos, Fin.val_succ]; omega)
        rw [e] at hk
        rw [hl]
        exact hk

end Formalism.MainNotions.ColumnSystems.Pf.GenusGluing
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXPH =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSum =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSum", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsS\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CardEqChainSum\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.TCoreDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXCnt\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.DividedPowerZeroOfGlActionZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

open Formalism.MainNotions.G MvPolynomial Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.ColumnSystems.Pf.Col

section General

variable {N K : ℕ}

theorem mem_colRange_iff (ka : Fin (N + 1) → Fin K → ℤ) (c : ℤ) :
    c ∈ colRange ka ↔ -(∑ i, ∑ m, |ka i m|) ≤ c ∧ c ≤ ∑ i, ∑ m, |ka i m| := by
  unfold colRange
  exact Finset.mem_Icc

theorem mem_colRange_of (ka : Fin (N + 1) → Fin K → ℤ) (i i' : Fin (N + 1)) (a : Fin K) (c : ℤ)
    (h1 : ka i a < c) (h2 : c ≤ ka i' a) : c ∈ colRange ka := by
  rw [mem_colRange_iff]
  have e1 := abs_le.1 (_root_.Formalism.MainNotions.LemmaBAlt.abs_entry_le_total ka i a)
  have e2 := abs_le.1 (_root_.Formalism.MainNotions.LemmaBAlt.abs_entry_le_total ka i' a)
  constructor <;> omega

variable {vecc : Fin N → Bool} {B : Fin N → ℕ} {ka : Fin (N + 1) → Fin K → ℤ} {nu : ℕ → ℤ}

theorem change_count (h : PH vecc B ka nu) (S : Finset ℤ) (hS : colRange ka ⊆ S) (i : Fin N) :
    (S.filter fun c => colH (ka i.castSucc) c ≠ colH (ka i.succ) c).card = B i := by
  have hs := h.kastep i
  by_cases hv : vecc i = true
  · rw [if_pos hv] at hs
    exact strip_count _ _ _ hs S fun a c h1 h2 => hS (mem_colRange_of ka _ _ a c h1 h2)
  · rw [if_neg hv] at hs
    rw [← strip_count _ _ _ hs S fun a c h1 h2 => hS (mem_colRange_of ka _ _ a c h1 h2)]
    congr 1
    exact Finset.filter_congr fun c _ => ne_comm

theorem oc_sum (h : PH vecc B ka nu) (S : Finset ℤ) (hS : colRange ka ⊆ S) (om : Fin (N + 1) → ℕ) :
    ∑ c ∈ S, oc om (muP nu ka) c = ∑ i : Fin N, om i.succ * (if vecc i then B i else 0) := by
  rw [Finset.sum_congr rfl fun c _ => h.oc_eq om c, Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  by_cases hv : vecc i = true
  · rw [if_pos hv, ← change_count h S hS i, Finset.card_filter, Finset.mul_sum]
    refine Finset.sum_congr rfl fun c _ => ?_
    have := (h.stepV i hv c).1
    by_cases hlt : colH (ka i.castSucc) c < colH (ka i.succ) c
    · rw [if_pos hlt, if_pos (by omega), mul_one]
    · rw [if_neg hlt, if_neg (by omega), mul_zero]
  · rw [if_neg hv, mul_zero]
    refine Finset.sum_eq_zero fun c _ => ?_
    have := (h.stepC i (by simpa using hv) c).1
    rw [if_neg (by omega)]

theorem pl_sum {σ : Type*} (nu : ℕ → ℤ) (h0 : 0 ≤ nu 0) (hm : ∀ t, nu t ≤ nu (t + 1)) (n : ℕ) (S : Finset ℤ)
    (hS : Finset.Icc 1 (nu n) ⊆ S) (v : Fin n → σ) (P : Fin n → ℕ) :
    ∑ c ∈ S, ∑ t : Fin n, (if nu t.val < c ∧ c ≤ nu (t.val + 1) then Finsupp.single (v t) (P t) else 0) =
      ∑ t : Fin n, Finsupp.single (v t) (P t * (nu (t.val + 1) - nu t.val).toNat) := by
  classical
  have mono : Monotone nu := monotone_nat_of_le_succ hm
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [← Finset.sum_filter, Finset.sum_const]
  have e : S.filter (fun c => nu t.val < c ∧ c ≤ nu (t.val + 1)) = Finset.Ioc (nu t.val) (nu (t.val + 1)) := by
    ext c
    simp only [Finset.mem_filter, Finset.mem_Ioc]
    refine ⟨fun x => x.2, fun x => ⟨hS (Finset.mem_Icc.2 ⟨?_, ?_⟩), x⟩⟩
    · have := mono (Nat.zero_le t.val)
      omega
    · exact le_trans x.2 (mono t.2)
  rw [e, Int.card_Ioc, Finsupp.smul_single, smul_eq_mul, mul_comm]

theorem colH_above (ka : Fin (N + 1) → Fin K → ℤ) (c : ℤ) (hc : ∑ i, ∑ m, |ka i m| < c) (i : Fin (N + 1)) :
    colH (ka i) c = 0 := by
  unfold colH
  rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
  intro m _ hle
  have := (abs_le.1 (_root_.Formalism.MainNotions.LemmaBAlt.abs_entry_le_total ka i m)).2
  omega

theorem Kcol_above (R : Type) [CommRing R] (ka : Fin (N + 1) → Fin K → ℤ) (c : ℤ) (hc : ∑ i, ∑ m, |ka i m| < c)
    (t : ℕ) : Kcol R ka c t = extOne := by
  induction t with
  | zero => rfl
  | succ t ih =>
    rw [Kcol]
    split_ifs with h
    · rw [colH_above ka c hc, colH_above ka c hc, ih]
      unfold colStep
      rw [if_neg (lt_irrefl _), if_neg (lt_irrefl _)]
    · exact ih

theorem Psi_eq_prod (R : Type) [CommRing R] (ka : Fin (N + 1) → Fin K → ℤ) (I : ℤ → Finset (Fin K))
    (hI : ∀ c, c ∉ colRange ka → I c = ∅) (M : ℤ) :
    ∏ c ∈ colRange ka ∪ Finset.Icc 1 M, Kcol R ka c N (I c) = Psi R ka I := by
  unfold Psi
  symm
  refine Finset.prod_subset Finset.subset_union_left fun c hc hn => ?_
  rw [hI c hn]
  have h1 : 1 ≤ c := by
    rcases Finset.mem_union.1 hc with h | h
    · exact absurd h hn
    · exact (Finset.mem_Icc.1 h).1
  have h2 : ∑ i, ∑ m, |ka i m| < c := by
    rw [mem_colRange_iff] at hn
    have h3 : (0 : ℤ) ≤ ∑ i, ∑ m, |ka i m| := Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun m _ => abs_nonneg _
    by_contra h4
    exact hn ⟨by omega, by omega⟩
  rw [Kcol_above R ka c h2]
  simp [extOne]

end General

section Seg

variable (C0 CE1 CE2 mu : ℝ) (X : Loc) (β : GlobalTheory X) (j : Fin (numSeg X.TT))

theorem PS_even (l : Fin (segS X.TT j)) :
    PS X j (⟨2 * l.val, by have := l.2; omega⟩ : Fin (2 * segS X.TT j + 1)).succ = (X.seg C0 CE1 CE2 j).P X.p l := by
  unfold PS
  rw [posS_succ_lt X j _ (by have := l.2; simp only; omega)]
  show _ = X.p ^ (segG X.TT j - (segDists X.TT j).get l)
  have e2 : (⟨(2 * l.val) / 2, by have := l.2; omega⟩ : Fin (segS X.TT j)) = l := by
    apply Fin.ext; simp
  simp only [e2]
  congr 1
  unfold zS
  omega

theorem PS_last : PS X j (⟨2 * segS X.TT j, by omega⟩ : Fin (2 * segS X.TT j + 1)).succ = 1 := by
  unfold PS
  rw [posS_succ_ge X j _ (by simp)]
  unfold zS
  simp

theorem nuS_zero : nuS C0 CE1 CE2 mu X β j 0 = 0 := by
  unfold nuS
  rw [if_pos rfl]

theorem nuS_one : nuS C0 CE1 CE2 mu X β j (0 + 1) = a0Z C0 CE1 CE2 mu X β j := by
  unfold nuS
  rw [if_neg (by omega), Finset.sum_eq_zero fun l _ => if_neg (by omega), add_zero]

theorem nuS_step (l : Fin (segS X.TT j)) :
    nuS C0 CE1 CE2 mu X β j (2 * l.val + 1 + 1) = nuS C0 CE1 CE2 mu X β j (2 * l.val + 1) + zxS C0 CE1 CE2 X β j l := by
  unfold nuS
  rw [if_neg (by omega), if_neg (by omega), add_assoc (a0Z C0 CE1 CE2 mu X β j)]
  congr 1
  have e : ∀ l' : Fin (segS X.TT j), (if 2 * (l' : ℕ) + 2 ≤ 2 * l.val + 1 + 1 then (zxS C0 CE1 CE2 X β j l' : ℤ) else 0) =
      (if 2 * (l' : ℕ) + 2 ≤ 2 * l.val + 1 then (zxS C0 CE1 CE2 X β j l' : ℤ) else 0) +
        (if l' = l then (zxS C0 CE1 CE2 X β j l' : ℤ) else 0) := by
    intro l'
    by_cases e : l' = l
    · subst e
      rw [if_pos (by omega), if_neg (by omega), if_pos rfl, zero_add]
    · have : l'.val ≠ l.val := fun x => e (Fin.ext x)
      rw [if_neg e, add_zero]
      exact if_congr (by omega) rfl rfl
  rw [Finset.sum_congr rfl fun l' _ => e l', Finset.sum_add_distrib, Finset.sum_ite_eq', if_pos (Finset.mem_univ _)]

theorem nuS_cov (l : ℕ) :
    nuS C0 CE1 CE2 mu X β j (2 * l + 1 + 1 + 1) = nuS C0 CE1 CE2 mu X β j (2 * l + 1 + 1) := by
  unfold nuS
  rw [if_neg (by omega), if_neg (by omega)]
  congr 1
  exact Finset.sum_congr rfl fun l' _ => if_congr (by omega) rfl rfl

theorem nuS_last :
    nuS C0 CE1 CE2 mu X β j (2 * segS X.TT j + 1 + 1) = nuS C0 CE1 CE2 mu X β j (2 * segS X.TT j + 1) := by
  unfold nuS
  rw [if_neg (by omega), if_neg (by omega)]
  congr 1
  exact Finset.sum_congr rfl fun l' _ => if_congr (by have := l'.2; omega) rfl rfl

end Seg

variable {C0 CE1 CE2 mu : ℝ} {X : Loc} [NeZero X.m] {β : GlobalTheory X} (L : LvDat C0 CE1 CE2 mu X β)
  (j : Fin (numSeg X.TT)) (y : Tx X.m (L.LL j))

theorem plSum_seg (h : Col.PH (L.LL j).vec (L.LL j).deg y.1.1.mu (nuS C0 CE1 CE2 mu X β j)) :
    ∑ c ∈ colsS C0 CE1 CE2 mu X β j y.1.1.mu, plS C0 CE1 CE2 mu X β j c =
      Finsupp.single ((topStart X j, true), 0) ((X.seg C0 CE1 CE2 j).Qj X.p * (a0Z C0 CE1 CE2 mu X β j).toNat) +
      ∑ i : Fin (segS X.TT j), Finsupp.single ((topOdd X j i, true), 0)
        ((X.seg C0 CE1 CE2 j).P X.p i * zxS C0 CE1 CE2 X β j i) := by
  have hsub : Finset.Icc 1 (nuS C0 CE1 CE2 mu X β j (2 * segS X.TT j + 1 + 1)) ⊆
      colsS C0 CE1 CE2 mu X β j y.1.1.mu := by
    unfold colsS
    exact Finset.subset_union_right
  have e0 := pl_sum (nuS C0 CE1 CE2 mu X β j) (h.nonneg 0) h.numono (2 * segS X.TT j + 1 + 1) _ hsub
    (fun t => phiS X j (t, Fin.castAdd X.m 0)) (PS X j)
  refine Eq.trans e0 ?_
  rw [Fin.sum_univ_succ]
  have t0 : (Finsupp.single (phiS X j ((0 : Fin (2 * segS X.TT j + 1 + 1)), Fin.castAdd X.m 0))
      (PS X j 0 * (nuS C0 CE1 CE2 mu X β j (0 + 1) - nuS C0 CE1 CE2 mu X β j 0).toNat) : MonH X) =
      Finsupp.single ((topStart X j, true), 0)
        ((X.seg C0 CE1 CE2 j).Qj X.p * (a0Z C0 CE1 CE2 mu X β j).toNat) := by
    rw [phiS_zero, nuS_one, nuS_zero, sub_zero]
    congr 2
    exact lev_zero X j C0 CE1 CE2
  have tE : ∀ l : Fin (segS X.TT j),
      (Finsupp.single (phiS X j ((⟨2 * l.val, by have := l.2; omega⟩ : Fin (2 * segS X.TT j + 1)).succ, Fin.castAdd X.m 0))
        (PS X j (⟨2 * l.val, by have := l.2; omega⟩ : Fin (2 * segS X.TT j + 1)).succ *
          (nuS C0 CE1 CE2 mu X β j (2 * l.val + 1 + 1) - nuS C0 CE1 CE2 mu X β j (2 * l.val + 1)).toNat) : MonH X) =
      Finsupp.single ((topOdd X j l, true), 0) ((X.seg C0 CE1 CE2 j).P X.p l * zxS C0 CE1 CE2 X β j l) := by
    intro l
    have e1 : phiS X j ((⟨2 * l.val, by have := l.2; omega⟩ : Fin (2 * segS X.TT j + 1)).succ, Fin.castAdd X.m 0) =
        ((topOdd X j l, true), 0) := phiS_odd X j l
    rw [e1, PS_even C0 CE1 CE2, nuS_step, add_sub_cancel_left, Int.toNat_natCast]
  rw [sum_fin_odd]
  refine congrArg₂ (· + ·) t0 ?_
  have tL : (Finsupp.single (phiS X j ((⟨2 * segS X.TT j, by omega⟩ : Fin (2 * segS X.TT j + 1)).succ, Fin.castAdd X.m 0))
        (PS X j (⟨2 * segS X.TT j, by omega⟩ : Fin (2 * segS X.TT j + 1)).succ *
          (nuS C0 CE1 CE2 mu X β j (2 * segS X.TT j + 1 + 1) - nuS C0 CE1 CE2 mu X β j (2 * segS X.TT j + 1)).toNat) :
        MonH X) = 0 := by
    rw [nuS_last, sub_self, Int.toNat_zero, mul_zero, Finsupp.single_zero]
  refine Eq.trans (congrArg₂ (· + ·) (Finset.sum_congr rfl fun l _ => ?_) tL) (add_zero _)
  refine Eq.trans (congrArg₂ (· + ·) (tE l) ?_) (add_zero _)
  show (Finsupp.single _ (_ * (nuS C0 CE1 CE2 mu X β j (2 * l.val + 1 + 1 + 1) -
    nuS C0 CE1 CE2 mu X β j (2 * l.val + 1 + 1)).toNat) : MonH X) = 0
  rw [nuS_cov, sub_self, Int.toNat_zero, mul_zero, Finsupp.single_zero]

theorem oSum_seg (h : Col.PH (L.LL j).vec (L.LL j).deg y.1.1.mu (nuS C0 CE1 CE2 mu X β j)) :
    ∑ c ∈ colsS C0 CE1 CE2 mu X β j y.1.1.mu, oCS C0 CE1 CE2 mu X β j y.1.1.mu c =
      (∑ i : Fin (segS X.TT j), (X.seg C0 CE1 CE2 j).P X.p i *
        (L.LL j).deg ⟨2 * (i : ℕ), by have := i.2; omega⟩) + (L.LL j).deg ⟨2 * segS X.TT j, by omega⟩ := by
  have hsub : colRange y.1.1.mu ⊆ colsS C0 CE1 CE2 mu X β j y.1.1.mu := by
    unfold colsS
    exact Finset.subset_union_left
  refine Eq.trans (oc_sum h _ hsub (PS X j)) ?_
  rw [sum_fin_odd]
  have v3 : (L.LL j).vec ⟨2 * segS X.TT j, by omega⟩ = true := by
    show decide ((2 * segS X.TT j) % 2 = 0) = true
    simp
  rw [if_pos v3, PS_last, one_mul]
  congr 1
  refine Finset.sum_congr rfl fun l _ => ?_
  have v1 : (L.LL j).vec ⟨2 * l.val, by have := l.2; omega⟩ = true := by
    show decide ((2 * l.val) % 2 = 0) = true
    simp
  have v2 : (L.LL j).vec ⟨2 * l.val + 1, by have := l.2; omega⟩ = false := by
    show decide ((2 * l.val + 1) % 2 = 0) = false
    simp
  rw [if_pos v1, if_neg (by rw [v2]; simp), mul_zero, add_zero, PS_even C0 CE1 CE2]

theorem dKsum_seg (h : Col.PH (L.LL j).vec (L.LL j).deg y.1.1.mu (nuS C0 CE1 CE2 mu X β j))
    (i : Fin (2 * segS X.TT j + 1)) :
    ∑ c ∈ colsS C0 CE1 CE2 mu X β j y.1.1.mu, dKS X j y.1.1.mu c i = (L.LL j).deg i := by
  have hsub : colRange y.1.1.mu ⊆ colsS C0 CE1 CE2 mu X β j y.1.1.mu := by
    unfold colsS
    exact Finset.subset_union_left
  refine Eq.trans ?_ (change_count h _ hsub i)
  rw [Finset.card_filter]
  refine Finset.sum_congr rfl fun c _ => ?_
  unfold dKS
  by_cases e : colH (y.1.1.mu i.castSucc) c = colH (y.1.1.mu i.succ) c
  · rw [if_pos e, if_neg (not_not.2 e)]
  · rw [if_neg e, if_pos e]

theorem Kprod_seg (R : Type) [CommRing R] :
    ∏ c ∈ colsS C0 CE1 CE2 mu X β j y.1.1.mu, Kcol R y.1.1.mu c (2 * segS X.TT j + 1) (y.1.2 c) =
      psiR R (L.LL j) y := by
  unfold colsS psiR
  exact Psi_eq_prod R y.1.1.mu y.1.2 y.2.1 _

end Formalism.MainNotions.ColumnSystems.Pf.GenusGluing
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSum =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IoDChain =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IoDChain", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsS\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IdentityLiftWeightedHomog\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.TCoreDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.YcondFactor\nimport Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSeg\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.HomGMonomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.DividedPowerZeroOfGlActionZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf.ColF

open Formalism.MainNotions.G MvPolynomial Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.LemmaBAlt.B2 Formalism.MainNotions.ColumnSystems.Pf.Col Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

section

variable {C0 CE1 CE2 mu : ℝ} {X : Loc} [NeZero X.m] {O : Type} [CommRing O] [IsDomain O]
  {β : GlobalTheory X} (j : Fin (numSeg X.TT)) (ka : Fin (2 * segS X.TT j + 1 + 1) → Fin X.m → ℤ)

theorem ioD_X (v : BVar (2 * segS X.TT j + 1) X.m (BDk C0 CE1 CE2 mu X β j).T.t) :
    ioD O C0 CE1 CE2 mu X β j (MvPolynomial.X v) =
      (MvPolynomial.X (symVar C0 CE1 CE2 X j v) : RHH O X) ^ symLev X.p C0 CE1 CE2 X j v := by
  unfold ioD ioA
  exact aeval_X _ _

theorem ioD_chain (a : Fin (2 * segS X.TT j + 1)) (b : Fin X.m) :
    ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (MvPolynomial.X (a, b))) =
      monomial (Finsupp.single (phiS X j (a.succ, Fin.natAdd 1 b)) (PS X j a.succ)) 1 := by
  rw [phiS_succ X j C0 CE1 CE2 a b,
    show PS X j a.succ = symLev X.p C0 CE1 CE2 X j (Sum.inl (a.castSucc, b)) from lev_succ X j C0 CE1 CE2 a b,
    ← X_pow_eq_monomial, rename_X]
  exact ioD_X j _

private theorem ringHom_Kcol_eq_KG {R P : Type} [CommRing R] [CommRing P] {N n : ℕ}
    (f : MvPolynomial (Fin N × Fin n) R →+* P) (ka : Fin (N + 1) → Fin n → ℤ) (c : ℤ) :
    ∀ t, t ≤ N → ∀ J, f (Kcol R ka c t J) = KG c (hsOf ka c) (fun a b => f (xOf R N n a b)) t J := by
  intro t
  induction t with
  | zero =>
    intro _ J
    show f (extOne J) = extOne J
    exact extOne_map f J
  | succ t ih =>
    intro ht J
    have htN : t < N := ht
    rw [Joints.Kcol_succ R ka c t htN]
    show _ = colStep c (hsOf ka c t) (hsOf ka c (t + 1)) (fun b => f (xOf R N n t b))
      (KG c (hsOf ka c) (fun a b => f (xOf R N n a b)) t) J
    rw [colStep_map]
    have h1 : hsOf ka c t = colH (ka (⟨t, htN⟩ : Fin N).castSucc) c := by
      unfold hsOf
      congr 2
      apply Fin.ext
      show min t N = t
      omega
    have h2 : hsOf ka c (t + 1) = colH (ka (⟨t, htN⟩ : Fin N).succ) c := by
      unfold hsOf
      congr 2
      apply Fin.ext
      show min (t + 1) N = t + 1
      omega
    rw [h1, h2]
    congr 1
    · funext b
      simp [xOf, letVec, htN]
    · funext J'
      exact (ih (le_of_lt htN) J')

theorem tan_eq_KG (c : ℤ) (J : Finset (Fin X.m)) :
    ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J)) =
      KG c (hsOf ka c) (fun a b => ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _)
        (xOf (KK O) (2 * segS X.TT j + 1) X.m a b))) (2 * segS X.TT j + 1) J := by
  exact ringHom_Kcol_eq_KG ((ioD O C0 CE1 CE2 mu X β j).toRingHom.comp (rename (chainEmb _ X.m _)).toRingHom)
    ka c _ le_rfl J

private theorem homG_monomial_mul_of_homG {σ R : Type} [CommRing R] (φ : (σ →₀ ℕ) →+ ℕ) (M : σ →₀ ℕ) (d : ℕ)
    (Q : MvPolynomial σ R) (hQ : HomG φ d Q) : HomG φ (φ M + d) (monomial M 1 * Q) := by
  classical
  intro m hm
  obtain ⟨a, ha, b, hb, rfl⟩ := Finset.mem_add.mp (MvPolynomial.support_mul _ _ hm)
  rw [map_add (f := _), Finset.mem_singleton.mp (MvPolynomial.support_monomial_subset ha), hQ b hb]

theorem sg_hom (φ : MonH X →+ ℕ) (wt : Fin (2 * segS X.TT j + 1) → ℕ)
    (hwt : ∀ a b, φ (Finsupp.single (phiS X j (a.succ, Fin.natAdd 1 b)) 1) = wt a) (c : ℤ) (J : Finset (Fin X.m)) :
    HomW φ (φ (plS C0 CE1 CE2 mu X β j c) + ∑ a : Fin (2 * segS X.TT j + 1),
        if colH (ka a.castSucc) c = colH (ka a.succ) c then 0 else PS X j a.succ * wt a)
      ((monomial (plS C0 CE1 CE2 mu X β j c) 1 : RHH O X) *
        ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J))) := by
  have hx : ∀ (a : ℕ) (b : Fin X.m), HomG φ
      (if h : a < 2 * segS X.TT j + 1 then PS X j (⟨a, h⟩ : Fin _).succ * wt ⟨a, h⟩ else 0)
      (ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (xOf (KK O) (2 * segS X.TT j + 1) X.m a b))) := by
    intro a b
    by_cases h : a < 2 * segS X.TT j + 1
    · rw [dite_eq_left h]
      have e : xOf (KK O) (2 * segS X.TT j + 1) X.m a b = MvPolynomial.X (⟨a, h⟩, b) := by
        simp [xOf, h]
      rw [e, ioD_chain]
      have hm := homG_monomial φ
        (Finsupp.single (phiS X j ((⟨a, h⟩ : Fin _).succ, Fin.natAdd 1 b)) (PS X j (⟨a, h⟩ : Fin _).succ)) (1 : KK O)
      rwa [phi_single, hwt] at hm
    · have e : xOf (KK O) (2 * segS X.TT j + 1) X.m a b = 0 := by
        simp [xOf, h]
      rw [e, map_zero, map_zero]
      intro m hm
      simp at hm
  have hK := KG_hom φ c (hsOf ka c) _ _ hx (2 * segS X.TT j + 1) J
  have hK' : HomG φ (∑ a ∈ Finset.range (2 * segS X.TT j + 1), if hsOf ka c a = hsOf ka c (a + 1) then 0 else
        (if h : a < 2 * segS X.TT j + 1 then PS X j (⟨a, h⟩ : Fin _).succ * wt ⟨a, h⟩ else 0))
      (ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J))) := by
    rw [tan_eq_KG]
    exact hK
  have hS : (∑ a ∈ Finset.range (2 * segS X.TT j + 1), if hsOf ka c a = hsOf ka c (a + 1) then 0 else
        (if h : a < 2 * segS X.TT j + 1 then PS X j (⟨a, h⟩ : Fin _).succ * wt ⟨a, h⟩ else 0)) =
      ∑ a : Fin (2 * segS X.TT j + 1),
        if colH (ka a.castSucc) c = colH (ka a.succ) c then 0 else PS X j a.succ * wt a := by
    rw [Finset.sum_range]
    refine Finset.sum_congr rfl fun a _ => ?_
    have ha := a.isLt
    rw [dite_eq_left a.isLt]
    have e1 : hsOf ka c a = colH (ka a.castSucc) c := by
      unfold hsOf
      congr 2
      apply Fin.ext
      show min (a : ℕ) _ = a
      omega
    have e2 : hsOf ka c (a + 1) = colH (ka a.succ) c := by
      unfold hsOf
      congr 2
      apply Fin.ext
      show min ((a : ℕ) + 1) _ = a + 1
      omega
    simp only [e1, e2, Fin.eta]
  rw [hS] at hK'
  exact homG_monomial_mul_of_homG φ _ _ _ hK'

end

section

variable {C0 CE1 CE2 mu : ℝ} {X : Loc} [NeZero X.m] {O : Type} [CommRing O] [IsDomain O]
  {β : GlobalTheory X} (j : Fin (numSeg X.TT)) (ka : Fin (2 * segS X.TT j + 1 + 1) → Fin X.m → ℤ)
  {vecc : Fin (2 * segS X.TT j + 1) → Bool} {B : Fin (2 * segS X.TT j + 1) → ℕ}

theorem nd_single (v : VarH X) : ndHom X (Finsupp.single v 1) = wN X v := by
  show degUS (hhLetters X.TT) 1 (Finsupp.single v 1) = wN X v
  rw [degUS, Finsupp.support_single_ne_zero _ one_ne_zero, Finset.sum_singleton, Finsupp.single_eq_same]
  simp [wN, hhLetters]

private theorem colH_eq_zero_of_forall_lt {n : ℕ} {u : Fin n → ℤ} (c : ℤ) (hu : ∀ b, u b < c) : colH u c = 0 := by
  unfold colH
  rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
  intro b _
  exact not_le.mpr (hu b)

private theorem PH_ka_le_nu {N K : ℕ} {vecc : Fin N → Bool} {B : Fin N → ℕ} {ka : Fin (N + 1) → Fin K → ℤ}
    {nu : ℕ → ℤ} (h : PH vecc B ka nu) : ∀ (i : Fin (N + 1)) (b : Fin K), ka i b ≤ nu i := by
  intro i
  induction i using Fin.induction with
  | zero =>
    intro b
    rw [h.ka0]
    simp [h.nu0]
  | succ a ih =>
    intro b
    have hm := h.numono a
    have hs := h.kastep a
    rw [Fin.val_succ]
    by_cases hv : vecc a = true
    · exact h.C a hv b
    · rw [if_neg hv] at hs
      have h1 := hs.1 b
      have h2 := ih b
      rw [Fin.coe_castSucc] at h2
      omega

private theorem colH_muP_zero_castSucc_and_succ_of_PH {N K : ℕ} {vecc : Fin N → Bool} {B : Fin N → ℕ} {ka : Fin (N + 1) → Fin K → ℤ}
    {nu : ℕ → ℤ} (h : PH vecc B ka nu) (c : ℤ) :
    colH (muP nu ka (0 : Fin (N + 1)).castSucc) c = (if c ≤ nu 0 then 1 else 0) + (if c ≤ 0 then K else 0) ∧
    colH (muP nu ka (0 : Fin (N + 1)).succ) c = (if c ≤ nu 1 then 1 else 0) + (if c ≤ 0 then K else 0) := by
  constructor
  · rw [Fin.castSucc_zero]
    exact H0 nu ka c
  · rw [HS, h.ka0, colH_zero]
    simp

private theorem colH_muP_succ_castSucc_and_succ_succ {N K : ℕ} {ka : Fin (N + 1) → Fin K → ℤ} {nu : ℕ → ℤ} (c : ℤ) (a : Fin N) :
    colH (muP nu ka a.succ.castSucc) c = (if c ≤ nu (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c ∧
    colH (muP nu ka a.succ.succ) c = (if c ≤ nu (↑a + 1 + 1) then 1 else 0) + colH (ka a.succ) c := by
  constructor
  · rw [← Fin.succ_castSucc, HS]
    simp
  · rw [HS]
    simp

private theorem colH_ka_eq_zero_of_PH_of_nu_lt {N K : ℕ} {vecc : Fin N → Bool} {B : Fin N → ℕ} {ka : Fin (N + 1) → Fin K → ℤ}
    {nu : ℕ → ℤ} (h : PH vecc B ka nu) (c : ℤ) (a : Fin N) (hc : nu (↑a + 1) < c) :
    (vecc a = true → colH (ka a.castSucc) c = 0 ∧ colH (ka a.succ) c = 0) ∧
    (vecc a = false → colH (ka a.castSucc) c = 0) := by
  have hI := PH_ka_le_nu h
  have hm := h.numono ↑a
  constructor
  · intro hv
    have hs := h.kastep a
    rw [if_pos hv] at hs
    constructor
    · apply colH_eq_zero_of_forall_lt c
      intro b
      have h1 := hs.1 b
      have h2 := h.C a hv b
      omega
    · apply colH_eq_zero_of_forall_lt c
      intro b
      have h2 := h.C a hv b
      omega
  · intro _
    apply colH_eq_zero_of_forall_lt c
    intro b
    have h1 := hI a.castSucc b
    rw [Fin.coe_castSucc] at h1
    omega

private theorem colH_ka_le_by_vecc_of_PH {N K : ℕ} {vecc : Fin N → Bool} {B : Fin N → ℕ} {ka : Fin (N + 1) → Fin K → ℤ}
    {nu : ℕ → ℤ} (h : PH vecc B ka nu) (c : ℤ) (a : Fin N) :
    (vecc a = true → colH (ka a.castSucc) c ≤ colH (ka a.succ) c) ∧
    (vecc a = false → colH (ka a.succ) c ≤ colH (ka a.castSucc) c ∧ nu (↑a + 1 + 1) = nu (↑a + 1)) := by
  have hs := h.kastep a
  constructor
  · intro hv
    rw [if_pos hv] at hs
    exact _root_.Formalism.MainNotions.LemmaBAlt.column_height_mono hs.1 c
  · intro hv
    rw [if_neg (by simp [hv])] at hs
    exact ⟨_root_.Formalism.MainNotions.LemmaBAlt.column_height_mono hs.1 c, h.nucov a hv⟩

private theorem wN_phiS_castAdd_zero_eq_ite_lamS (X : Loc) (j : Fin (numSeg X.TT)) (t : Fin (2 * segS X.TT j + 1 + 1)) :
    wN X (Formalism.MainNotions.ColumnSystems.Pf.phiS X j (t, Fin.castAdd X.m 0)) = if (lamS X j t).2 = false then 1 else 0 := by
  simp [wN, Formalism.MainNotions.ColumnSystems.Pf.phiS]

private theorem wN_phiS_succ_natAdd_eq_ite_lamS (X : Loc) (j : Fin (numSeg X.TT)) (a : Fin (2 * segS X.TT j + 1)) (b : Fin X.m) :
    wN X (Formalism.MainNotions.ColumnSystems.Pf.phiS X j (a.succ, Fin.natAdd 1 b)) = if (lamS X j a.succ).2 = true then 1 else 0 := by
  simp [wN, Formalism.MainNotions.ColumnSystems.Pf.phiS]

theorem colHomC (h : PH vecc B ka (nuS C0 CE1 CE2 mu X β j)) (hvec : ∀ a, vecc a = (lamS X j a.succ).2) (c : ℤ)
    (J : Finset (Fin X.m)) :
    HomW (ndHom X) (oCS C0 CE1 CE2 mu X β j ka c)
      ((monomial (plS C0 CE1 CE2 mu X β j c) 1 : RHH O X) *
        ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J))) := by
  have hg := sg_hom (C0 := C0) (CE1 := CE1) (CE2 := CE2) (mu := mu) (β := β) (O := O) j ka (ndHom X)
    (fun a => if vecc a = true then 1 else 0)
    (fun a b => by rw [nd_single, wN_phiS_succ_natAdd_eq_ite_lamS, ← hvec a]) c J
  have hD : ndHom X (plS C0 CE1 CE2 mu X β j c) + ∑ a : Fin (2 * segS X.TT j + 1),
      (if colH (ka a.castSucc) c = colH (ka a.succ) c then 0 else PS X j a.succ * (if vecc a = true then 1 else 0)) =
      oCS C0 CE1 CE2 mu X β j ka c := by
    rw [phi_plS]
    simp only [nd_single, wN_phiS_castAdd_zero_eq_ite_lamS]
    unfold oCS oc
    rw [Fin.sum_univ_succ (n := 2 * segS X.TT j + 1), Fin.sum_univ_succ (n := 2 * segS X.TT j + 1),
      add_assoc, ← Finset.sum_add_distrib]
    congr 1
    · have hc := colH_muP_zero_castSucc_and_succ_of_PH h c
      have hm : nuS C0 CE1 CE2 mu X β j 0 ≤ nuS C0 CE1 CE2 mu X β j 1 := h.numono 0
      have h0 := h.nu0
      have hiff : IsCostly (muP (nuS C0 CE1 CE2 mu X β j) ka) c 0 ↔
          ((if c ≤ nuS C0 CE1 CE2 mu X β j 0 then 1 else 0) + (if c ≤ 0 then X.m else 0) <
            (if c ≤ nuS C0 CE1 CE2 mu X β j 1 then 1 else 0) + (if c ≤ 0 then X.m else 0) ∧
            1 ≤ (if c ≤ nuS C0 CE1 CE2 mu X β j 0 then 1 else 0) + (if c ≤ 0 then X.m else 0) ∨
          (if c ≤ nuS C0 CE1 CE2 mu X β j 1 then 1 else 0) + (if c ≤ 0 then X.m else 0) <
            (if c ≤ nuS C0 CE1 CE2 mu X β j 0 then 1 else 0) + (if c ≤ 0 then X.m else 0) ∧
            (if c ≤ nuS C0 CE1 CE2 mu X β j 0 then 1 else 0) + (if c ≤ 0 then X.m else 0) ≤ 1) := by
        unfold IsCostly
        rw [hc.1, hc.2]
      simp only [hiff, lamS_zero, Bool.true_eq_false, ↓reduceIte, mul_zero, ite_self, Fin.val_zero, zero_add]
      split_ifs <;> omega
    · refine Finset.sum_congr rfl fun a _ => ?_
      have hc := colH_muP_succ_castSucc_and_succ_succ (nu := nuS C0 CE1 CE2 mu X β j) (ka := ka) c a
      have hm := h.numono (↑a + 1)
      have h6 := colH_ka_eq_zero_of_PH_of_nu_lt h c a
      have h7 := colH_ka_le_by_vecc_of_PH h c a
      have hiff : IsCostly (muP (nuS C0 CE1 CE2 mu X β j) ka) c a.succ ↔
          ((if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c <
            (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1 + 1) then 1 else 0) + colH (ka a.succ) c ∧
            1 ≤ (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c ∨
          (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1 + 1) then 1 else 0) + colH (ka a.succ) c <
            (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c ∧
            (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c ≤ 1) := by
        unfold IsCostly
        rw [hc.1, hc.2]
      simp only [hiff, ← hvec a, Fin.val_succ]
      by_cases hv : vecc a = true
      · have hAB := h7.1 hv
        simp only [hv, Bool.true_eq_false, ↓reduceIte, mul_zero, mul_one, ite_self]
        by_cases hcn : nuS C0 CE1 CE2 mu X β j (↑a + 1) < c
        · obtain ⟨z1, z2⟩ := (h6 hcn).1 hv
          split_ifs <;> omega
        · split_ifs <;> omega
      · have hv' : vecc a = false := by simpa using hv
        obtain ⟨hBA, hnu⟩ := h7.2 hv'
        simp only [hv', Bool.false_eq_true, ↓reduceIte, mul_zero, mul_one]
        by_cases hcn : nuS C0 CE1 CE2 mu X β j (↑a + 1) < c
        · have z1 := (h6 hcn).2 hv'
          split_ifs <;> omega
        · split_ifs <;> omega
  rw [hD] at hg
  exact hg

theorem colPolC (h : PH vecc B ka (nuS C0 CE1 CE2 mu X β j)) (c : ℤ) (J : Finset (Fin X.m)) :
    (monomial (plS C0 CE1 CE2 mu X β j c) 1 : RHH O X) *
        ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J)) ∈
      Pol (KK O) (ι := X.TT × Bool) (X.m + 1) (dgCS C0 CE1 CE2 mu X β j ka c) := by
  unfold Pol
  rw [MvPolynomial.mem_restrictSupport_iff]
  intro m hm
  simp only [Set.mem_setOf_eq]
  intro l
  have hg := sg_hom (C0 := C0) (CE1 := CE1) (CE2 := CE2) (mu := mu) (β := β) (O := O) j ka
    { toFun := fun m => multideg m l, map_zero' := by simp [multideg],
      map_add' := fun a b => multideg_add a b l }
    (fun a => if lamS X j a.succ = l then 1 else 0)
    (fun a b => by
      simp only [AddMonoidHom.coe_mk, ZeroHom.coe_mk]
      rw [Formalism.MainNotions.ColumnSystems.Pf.phiS, md_single]) c J m hm
  simp only [AddMonoidHom.coe_mk, ZeroHom.coe_mk] at hg
  rw [hg, md_plS]
  unfold dgCS
  rw [Fin.sum_univ_succ (n := 2 * segS X.TT j + 1), Fin.sum_univ_succ (n := 2 * segS X.TT j + 1),
    add_assoc, ← Finset.sum_add_distrib]
  congr 1
  · have hc := colH_muP_zero_castSucc_and_succ_of_PH h c
    have hm : nuS C0 CE1 CE2 mu X β j 0 ≤ nuS C0 CE1 CE2 mu X β j 1 := h.numono 0
    have hiff : IsUsed (muP (nuS C0 CE1 CE2 mu X β j) ka) c 0 ↔
        (if c ≤ nuS C0 CE1 CE2 mu X β j 0 then 1 else 0) + (if c ≤ 0 then X.m else 0) ≠
          (if c ≤ nuS C0 CE1 CE2 mu X β j 1 then 1 else 0) + (if c ≤ 0 then X.m else 0) := by
      unfold IsUsed
      rw [hc.1, hc.2]
    simp only [dgS, hiff, PS, Fin.val_zero, zero_add]
    split_ifs <;> omega
  · refine Finset.sum_congr rfl fun a _ => ?_
    have ha := a.isLt
    have hc := colH_muP_succ_castSucc_and_succ_succ (nu := nuS C0 CE1 CE2 mu X β j) (ka := ka) c a
    have hm := h.numono (↑a + 1)
    have h6 := colH_ka_eq_zero_of_PH_of_nu_lt h c a
    have h7 := colH_ka_le_by_vecc_of_PH h c a
    have hiff : IsUsed (muP (nuS C0 CE1 CE2 mu X β j) ka) c a.succ ↔
        (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1) then 1 else 0) + colH (ka a.castSucc) c ≠
          (if c ≤ nuS C0 CE1 CE2 mu X β j (↑a + 1 + 1) then 1 else 0) + colH (ka a.succ) c := by
      unfold IsUsed
      rw [hc.1, hc.2]
    simp only [dgS, hiff, PS, Fin.val_succ]
    by_cases hv : vecc a = true
    · have hAB := h7.1 hv
      by_cases hcn : nuS C0 CE1 CE2 mu X β j (↑a + 1) < c
      · obtain ⟨z1, z2⟩ := (h6 hcn).1 hv
        split_ifs <;> omega
      · split_ifs <;> omega
    · have hv' : vecc a = false := by simpa using hv
      obtain ⟨hBA, hnu⟩ := h7.2 hv'
      by_cases hcn : nuS C0 CE1 CE2 mu X β j (↑a + 1) < c
      · have z1 := (h6 hcn).2 hv'
        split_ifs <;> omega
      · split_ifs <;> omega

end

end Formalism.MainNotions.ColumnSystems.Pf.ColF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IoDChain =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.MonomialSumEqProd =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.MonomialSumEqProd", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsS\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.TCoreDef\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Lemma44IdentityOfRawTail\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LatticeCountingFormula\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnCongruence\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.WedgeSplitTan\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXRen\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSeg\nimport Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.KGShift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.LemmaBAlt.B2 Formalism.MainNotions.ColumnSystems.Pf.Col Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

section

variable {C0 CE1 CE2 mu : ℝ} {X : Loc} [NeZero X.m] [Fact X.p.Prime] {O : Type} [CommRing O] [IsDomain O]
  [IsDiscreteValuationRing O] [Algebra (WF X.p X.n') O] {β : GlobalTheory X} (j : Fin (numSeg X.TT))
  (ka : Fin (2 * segS X.TT j + 1 + 1) → Fin X.m → ℤ) (I'' : ℤ → Finset (Fin X.m))

theorem monomial_sum_eq_prod {ι : Type} (s : Finset ι) (a : ι → MonH X) :
    (monomial (∑ i ∈ s, a i) (1 : KK O) : RHH O X) = ∏ i ∈ s, (monomial (a i) (1 : KK O) : RHH O X) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih =>
    rw [Finset.sum_insert hi, Finset.prod_insert hi, ← ih, monomial_mul, one_mul]

def colPsiS (X : Loc) [Fact X.p.Prime] (O : Type) [CommRing O] [IsDomain O] [Algebra (WF X.p X.n') O] (j : Fin (numSeg X.TT)) :
    MvPolynomial (Fin (2 * segS X.TT j + 1 + 1) × Fin (1 + X.m)) O →+* RHH O X :=
  (rename (phiS X j)).toRingHom.comp (powSubst X.p (LLseg X j) (zS X j)).toRingHom

theorem colPsiS_X (t : Fin (2 * segS X.TT j + 1 + 1)) (v : Fin (1 + X.m)) :
    colPsiS X O j (MvPolynomial.X (t, v)) = (MvPolynomial.X (phiS X j (t, v)) : RHH O X) ^ PS X j t := by
  show rename (phiS X j) (powSubst X.p (LLseg X j) (zS X j) (MvPolynomial.X (t, v))) = _
  unfold powSubst
  rw [aeval_X, map_pow, rename_X]
  rfl

theorem col_ioD_X (v : BVar (2 * segS X.TT j + 1) X.m (BDk C0 CE1 CE2 mu X β j).T.t) :
    ioD O C0 CE1 CE2 mu X β j (MvPolynomial.X v) =
      (MvPolynomial.X (symVar C0 CE1 CE2 X j v) : RHH O X) ^ symLev X.p C0 CE1 CE2 X j v := by
  unfold ioD ioA
  exact aeval_X _ _

theorem col_tan_eq (c : ℤ) (J : Finset (Fin X.m)) :
    ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) J)) =
      KG c (hsOf ka c) (fun a b => colPsiS X O j (xOf O (2 * segS X.TT j + 1 + 1) (1 + X.m) (a + 1) (Fin.natAdd 1 b)))
        (2 * segS X.TT j + 1) J := by
  rw [Kcol_eq_KG (KK O) ka c (2 * segS X.TT j + 1) le_rfl]
  have e1 := map_KG ((ioD O C0 CE1 CE2 mu X β j).toRingHom.comp
      (rename (chainEmb (2 * segS X.TT j + 1) X.m (BDk C0 CE1 CE2 mu X β j).T.t)).toRingHom) c
    (hsOf ka c) (xOf (KK O) (2 * segS X.TT j + 1) X.m) (2 * segS X.TT j + 1) J
  have e1' : ioD O C0 CE1 CE2 mu X β j (rename (chainEmb (2 * segS X.TT j + 1) X.m (BDk C0 CE1 CE2 mu X β j).T.t)
      (KG c (hsOf ka c) (xOf (KK O) (2 * segS X.TT j + 1) X.m) (2 * segS X.TT j + 1) J)) = _ := e1
  rw [e1']
  refine congrFun (KG_congr c (2 * segS X.TT j + 1) (fun _ _ => rfl) (fun a ha => ?_)) J
  funext b
  have ha' : a + 1 < 2 * segS X.TT j + 1 + 1 := by omega
  show ioD O C0 CE1 CE2 mu X β j (rename (chainEmb (2 * segS X.TT j + 1) X.m (BDk C0 CE1 CE2 mu X β j).T.t)
      (xOf (KK O) (2 * segS X.TT j + 1) X.m a b)) = _
  unfold xOf
  rw [dite_eq_left ha, dite_eq_left ha', rename_X, col_ioD_X]
  have e2 : (⟨a + 1, ha'⟩ : Fin (2 * segS X.TT j + 1 + 1)) = (⟨a, ha⟩ : Fin (2 * segS X.TT j + 1)).succ := rfl
  rw [e2, colPsiS_X, phiS_succ X j C0 CE1 CE2 ⟨a, ha⟩ b]
  unfold PS
  rw [lev_succ X j C0 CE1 CE2 ⟨a, ha⟩ b]
  rfl

variable {vecc : Fin (2 * segS X.TT j + 1) → Bool} {B : Fin (2 * segS X.TT j + 1) → ℕ}

theorem col_sym_eq (h : PH vecc B ka (nuS C0 CE1 CE2 mu X β j)) (c : ℤ) :
    rename (phiS X j) (powSubst X.p (LLseg X j) (zS X j)
        (plTanCol O (muP (nuS C0 CE1 CE2 mu X β j) ka) c (Jc (nuS C0 CE1 CE2 mu X β j) (2 * segS X.TT j + 1) c (I'' c)))) =
      monomial (plS C0 CE1 CE2 mu X β j c) 1 *
        ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) (I'' c))) := by
  have e := symbol_eq h O (colPsiS X O j) c (I'' c)
  have e' : rename (phiS X j) (powSubst X.p (LLseg X j) (zS X j)
        (plTanCol O (muP (nuS C0 CE1 CE2 mu X β j) ka) c (Jc (nuS C0 CE1 CE2 mu X β j) (2 * segS X.TT j + 1) c (I'' c)))) = _ := e
  rw [e', col_tan_eq]
  congr 1
  unfold plS
  rw [monomial_sum_eq_prod, Finset.prod_range]
  refine Finset.prod_congr rfl fun t _ => ?_
  by_cases hc : nuS C0 CE1 CE2 mu X β j t.val < c ∧ c ≤ nuS C0 CE1 CE2 mu X β j (t.val + 1)
  · rw [if_pos hc, if_pos hc]
    unfold xOf
    rw [dite_eq_left t.isLt, colPsiS_X, X_pow_eq_monomial]
  · rw [if_neg hc, if_neg hc]
    rfl

theorem col_powSubst_int {N k : ℕ} (LL : LiftLetters (Fin N)) (z : ℤ) (F : MvPolynomial (Fin N × Fin k) O) :
    InA (powSubst X.p (O := O) LL z F) := by
  rw [← mem_intSub]
  unfold powSubst
  induction F using MvPolynomial.induction_on with
  | C a => rw [aeval_C]; exact Subalgebra.algebraMap_mem _ a
  | add p q hp hq => rw [map_add (f := _)]; exact Subalgebra.add_mem _ hp hq
  | mul_X p v hp => rw [map_mul, aeval_X]; exact Subalgebra.mul_mem _ hp (Subalgebra.pow_mem _ (X_mem_goodSub v rfl) _)

theorem colFac (S : UniformizedDVR X.p O) (hS : S.SqP) (hn : 1 ≤ X.n') (h2 : 2 ≤ numSeg X.TT)
    (h : PH vecc B ka (nuS C0 CE1 CE2 mu X β j)) (hvec : ∀ a, (lamS X j a.succ).2 = vecc a) (c : ℤ) :
    IsFac S.w (fCS C0 CE1 CE2 mu X β j ka O I'' c) (oCS C0 CE1 CE2 mu X β j ka c)
      (monomial (plS C0 CE1 CE2 mu X β j c) 1 *
        ioD O C0 CE1 CE2 mu X β j (rename (chainEmb _ X.m _) (Kcol (KK O) ka c (2 * segS X.TT j + 1) (I'' c)))) := by
  have hOK : ColOK (LLseg X j) (muP (nuS C0 CE1 CE2 mu X β j) ka) c := h.colOK (LLseg X j) rfl hvec c
  have hposc := h.posc (LLseg X j) hvec (fun i i' hlt hv => posS_lt X j i i' hlt hv) c
  have hg1 : IsGLW (1 : Matrix (Fin (1 + X.m)) (Fin (1 + X.m)) (WF X.p X.n')) := isGLW_one' _
  rw [← col_sym_eq j ka I'' h c]
  refine ⟨?_, fun g hg => ?_, ?_, ?_⟩
  · exact inA_rename _ _ (column_kernel_components_integral X.p X.n' (LLseg X j) 1 hg1 (zS X j) _ c _)
  · exact (inWjRg_rename S.w 1 (LLseg X j) (hhLetters X.TT) (lamS X j) (lamS_injective X j h2) (fun _ => rfl)
      (pos_congr X j) (Nat.add_comm 1 X.m) g _ _).2
      (lifted_column_order X.p X.n' (frobCong X.p X.n' hn) S hS (LLseg X j) 1 _ hg1 (isGLW_submatrix_cast _ g hg) (zS X j) _ c hOK
        (posS_mono X j) (position_le_segment_end X j) hposc _)
  · have hc := lifted_column_congruence X.p X.n' S (LLseg X j) 1 hg1 (zS X j) (muP (nuS C0 CE1 CE2 mu X β j) ka) c (posS_mono X j)
      (position_le_segment_end X j) hposc (SgVanish_of (LLseg X j) _ c hOK) (fun J => plTanCol_eq_SgW O (LLseg X j) _ c hOK h.dom J)
      (Jc (nuS C0 CE1 CE2 mu X β j) (2 * segS X.TT j + 1) c (I'' c))
    have hr := inWj_rename (phiS X j) S.w _ _ hc
    have e1 : lift1 X O S.w (fCS C0 CE1 CE2 mu X β j ka O I'' c) =
        rename (phiS X j) (liftSubst X.p X.n' O S.w 1 (LLseg X j) 1
          (KKc X.p X.n' (O := O) (LLseg X j) 1 (zS X j) (muP (nuS C0 CE1 CE2 mu X β j) ka) c
            (Jc (nuS C0 CE1 CE2 mu X β j) (2 * segS X.TT j + 1) c (I'' c)))) := by
      have := liftSubst_rename S.w 1 (LLseg X j) (hhLetters X.TT) (lamS X j) (fun _ => rfl) (pos_congr X j)
        (Nat.add_comm 1 X.m) (1 : Matrix (Fin (X.m + 1)) (Fin (X.m + 1)) (WF X.p X.n')) (KKc X.p X.n' (O := O) (LLseg X j) 1 (zS X j) (muP (nuS C0 CE1 CE2 mu X β j) ka) c
            (Jc (nuS C0 CE1 CE2 mu X β j) (2 * segS X.TT j + 1) c (I'' c)))
      rw [one_submatrix_cast] at this
      exact this
    rw [e1, ← C_mul_eq_smul, map_pow]
    rw [map_sub, map_mul, rename_C] at hr
    exact hr
  · exact inA_rename _ _ (col_powSubst_int _ _ _)

end

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.MonomialSumEqProd =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColTop =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColTop", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColNumDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColsDef\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXNum\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXPH\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSeg\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColXSum\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.HomGMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.IoDChain\npublic import Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.MonomialSumEqProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.ColumnSystems.Pf.Col Formalism.MainNotions.ColumnSystems.Pf.ColF Formalism.MainNotions.ColumnSystems.Pf.GenusGluing

theorem col_lamS_vec {C0 CE1 CE2 mu : ℝ} {X : Loc} [NeZero X.m] {β : GlobalTheory X} (L : LvDat C0 CE1 CE2 mu X β)
    (j : Fin (numSeg X.TT)) (a : Fin (2 * segS X.TT j + 1)) : (lamS X j a.succ).2 = (L.LL j).vec a := by
  show _ = decide ((a : ℕ) % 2 = 0)
  by_cases h : (a : ℕ) < 2 * segS X.TT j
  · rw [lamS_succ_lt X j a h]
  · rw [lamS_succ_ge X j a h]
    have : (a : ℕ) = 2 * segS X.TT j := by have := a.2; omega
    simp [this]

theorem column_kappa_nonneg (X : Loc) : 0 ≤ ka1 X := by
  unfold ka1 Loc.k Loc.Q
  positivity

theorem colsAt_of {C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ} (hNum : ColumnNumericsAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc) :
    ColsAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc := by
  intro X _ _ O _ _ _ _ S hS hD hH hC mm hmm n hn1 hnc β hβ L j y hy
  obtain ⟨hnum1, hnum2⟩ := hNum X hD hH hC mm hmm n hn1 hnc j (β j) (hβ j)
  have h2 : 2 ≤ numSeg X.TT := hH.1.2.2.2.1
  have hG : segG X.TT j ≤ X.G' := (hH.1.2.2.2.2.1 j).1
  have hs : segS X.TT j ≤ X.N1 := (hH.1.2.2.2.2.1 j).2
  have hN : 2 * X.N1 + 2 ≤ X.m := hH.1.2.2.2.2.2.2.1
  have hm : 2 * segS X.TT j + 1 < X.m := by omega
  have hn' : 1 ≤ X.n' := by have := hD.2.2.1; omega
  have hp : 0 < X.p := hD.1.pos
  have h := ph_seg L j y hy (hβ j) hnum1 hnum2 hm
  have hvec := col_lamS_vec L j
  have hmu : 0 ≤ mm + (n : ℝ) * ka1 X := by
    have h1 : 0 ≤ mm := by
      rcases hmm with h | h
      · rw [h]
      · rw [h]; positivity
    have h3 := column_kappa_nonneg X
    positivity
  exact ⟨{
    ι := ↥(colsS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu)
    fin := inferInstance
    Kc := fun c => Kcol (KK O) y.1.1.mu c.1 (2 * segS X.TT j + 1) (y.1.2 c.1)
    dK := fun c => dKS X j y.1.1.mu c.1
    pl := fun c => plS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j c.1
    fC := fun c => fCS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu O y.1.2 c.1
    oC := fun c => oCS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu c.1
    dgC := fun c => dgCS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu c.1
    a0 := (a0Z C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j).toNat
    KInt := fun c => colKInt y.1.1.mu c.1 _
    KPol := fun c => colKPol j y.1.1.mu c.1 _
    digit_le_one := fun c i => by unfold dKS; split_ifs <;> omega
    dKsum := fun i => by
      rw [Finset.sum_coe_sort (colsS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu) (fun c => dKS X j y.1.1.mu c i)]
      exact dKsum_seg L j y h i
    Kprod := by
      rw [Finset.prod_coe_sort (colsS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu)
        (fun c => Kcol (KK O) y.1.1.mu c (2 * segS X.TT j + 1) (y.1.2 c))]
      exact Kprod_seg L j y (KK O)
    facC := fun c => colFac j y.1.1.mu y.1.2 S hS hn' h2 h hvec c.1
    homC := fun c => colHomC j y.1.1.mu h (fun a => (hvec a).symm) c.1 _
    fPol := fun c => colFPol j y.1.1.mu h2 y.1.2 c.1
    polC := fun c => colPolC j y.1.1.mu h c.1 _
    plQ := fun c l => colPlQ j hp h2 hG c.1 l
    dgCQ := fun c l => colDgQ j y.1.1.mu hp h2 hG c.1 l
    dgCY := fun c j' => colDgY j y.1.1.mu c.1 j'
    a0le := by
      have h0 : 0 ≤ a0Z C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j := sub_nonneg.2 hnum1
      rw [Int.toNat_of_nonneg h0]
      unfold a0Z
      rw [sub_add_cancel]
      have h1 : ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ) - (mm + (n : ℝ) * ka1 X)⌋ ≤
          ⌊(((X.seg C0 CE1 CE2 j).A0 X.p : ℤ) : ℝ)⌋ := Int.floor_le_floor (by linarith)
      rwa [Int.floor_intCast] at h1
    plSum := by
      rw [Finset.sum_coe_sort (colsS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu)
        (fun c => plS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j c)]
      exact plSum_seg L j y h
    oSum := by
      rw [Finset.sum_coe_sort (colsS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu)
        (fun c => oCS C0 CE1 CE2 (mm + (n : ℝ) * ka1 X) X β j y.1.1.mu c)]
      exact oSum_seg L j y h }⟩

theorem restCols : RestCols :=
  TransportedAlt.mono (fun _ _ _ _ _ _ _ _ _ _ h => colsAt_of h) column_numerics_holds

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.StandardPolynomials.ColTop =====
