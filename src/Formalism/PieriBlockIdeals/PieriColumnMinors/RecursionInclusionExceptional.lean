module

public import Formalism.RankGapBounds.CloudMinFalse
public import Mathlib.Data.Nat.Prime.Factorial
public import Formalism.PieriBlockIdeals.ExponentBoundCounterexample
public import Mathlib.Data.Nat.Choose.Cast
public import Mathlib.Data.Nat.Choose.Factorization
public import Formalism.PieriBlockIdeals.StatementE
public import Formalism.PieriBlockIdeals.PieriColumnMinors.ParameterBounds
public import Formalism.PieriBlockIdeals.PieriColumnMinors.ProdInitialMinorsMemDetSpan
public import Formalism.PieriBlockIdeals.PieriColumnMinors.WeightBounds
import Mathlib.Algebra.Order.Star.Real
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LCassemLemmas
import Formalism.PieriBlockIdeals.StatementLA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PieriBlockIdeals.PieriColumnMinors.MaxValEqZeroOfLt, Formalism.PieriBlockIdeals.PieriColumnMinors.SL2BinomialLattices, Formalism.PieriBlockIdeals.PieriColumnMinors.RecursionInclusionExceptional

-- ===== clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.MaxValEqZeroOfLt =====
-- clump-header: {"m": "Formalism.PieriBlockIdeals.PieriColumnMinors.MaxValEqZeroOfLt", "h": "module\n\npublic import Formalism.RankGapBounds.CloudMinFalse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.Data.Nat.Prime.Factorial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

namespace Formalism.CohomologicalDescent

theorem max_val_eq_zero_of_lt (l n : ℕ) (h : n < l) : Formalism.RankGapBounds.JumpSetsAlt.maxVal l n = 0 := by
  unfold Formalism.RankGapBounds.JumpSetsAlt.maxVal
  apply le_antisymm _ (Nat.zero_le _)
  apply Finset.sup_le
  intro i hi
  have hi' : i ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
  by_cases hp : l.Prime
  · apply le_of_eq
    apply Nat.factorization_eq_zero_of_not_dvd
    intro hd
    have hdf : l ∣ n.factorial := hd.trans ⟨i.factorial * (n - i).factorial, by
      rw [← Nat.choose_mul_factorial_mul_factorial hi']; ring⟩
    have := (Nat.Prime.dvd_factorial hp).mp hdf
    omega
  · exact (Nat.factorization_eq_zero_of_not_prime _ hp).le

end Formalism.CohomologicalDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.MaxValEqZeroOfLt =====

-- ===== clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.SL2BinomialLattices =====
-- clump-header: {"m": "Formalism.PieriBlockIdeals.PieriColumnMinors.SL2BinomialLattices", "h": "module\n\npublic import Formalism.PieriBlockIdeals.ExponentBoundCounterexample\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.MaxValEqZeroOfLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LCassemLemmas\nimport Formalism.PieriBlockIdeals.StatementLA\npublic import Mathlib.Data.Nat.Choose.Cast\npublic import Mathlib.Data.Nat.Choose.Factorization\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial CategoryTheory TensorProduct

noncomputable section

namespace Formalism.CohomologicalDescent.SL2BinomialLattices

open Formalism.GradedWeylDivisibility Formalism.RankGapBounds.JumpSetsAlt Formalism.CohomologicalDescent.LA

universe u v u' v'

theorem maxVal_le_log_alt (l n : ℕ) : Formalism.RankGapBounds.JumpSetsAlt.maxVal l n ≤ Nat.log l n :=
  Finset.sup_le fun _ _ => Nat.factorization_choose_le_log

theorem log_le_log_bound : LgLog := by
  intro l y
  by_cases h0 : Nat.log l y = 0
  · rw [h0]
    simpa using Real.log_natCast_nonneg y
  · obtain ⟨hl, hy⟩ : 1 < l ∧ l ≤ y := by
      by_contra hcon
      apply h0
      rw [Nat.log_eq_zero_iff]
      omega
    have h1 : l ^ Nat.log l y ≤ y := Nat.pow_log_le_self l (by omega)
    have h2 : ((l : ℝ)) ^ Nat.log l y ≤ (y : ℝ) := by exact_mod_cast h1
    have h3 : (0 : ℝ) < (l : ℝ) ^ Nat.log l y := by positivity
    have h4 := Real.log_le_log h3 h2
    rwa [Real.log_pow] at h4

theorem sum_maxVal_le_card_mul_log {N : ℕ} (U : Fin N → ℤ) (l M : ℕ) (hl : 0 < l) (s : Finset (Fin N × Fin N))
    (h : ∀ p ∈ s, U p.1 - U p.2 ≤ (M : ℤ)) :
    ∑ p ∈ s, Formalism.RankGapBounds.JumpSetsAlt.maxVal l (U p.1 - U p.2 - 1).toNat ≤ s.card * Nat.log l M ∧
      (M ≤ l → ∑ p ∈ s, Formalism.RankGapBounds.JumpSetsAlt.maxVal l (U p.1 - U p.2 - 1).toNat = 0) := by
  constructor
  · rw [← smul_eq_mul]
    apply Finset.sum_le_card_nsmul
    intro p hp
    have := h p hp
    exact (maxVal_le_log_alt l _).trans (Nat.log_mono_right (by omega))
  · intro hM
    apply Finset.sum_eq_zero
    intro p hp
    apply Formalism.CohomologicalDescent.max_val_eq_zero_of_lt
    have := h p hp
    omega

theorem card_posPairs (N : ℕ) : (posPairs N).card = N.choose 2 := by
  have h1 : (posPairs N).card = ∑ b : Fin N, (Finset.Iio b).card := by
    unfold posPairs
    rw [Finset.card_filter, Fintype.sum_prod_type, Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro b _
    rw [← Finset.card_filter]
    congr 1
    ext a
    simp
  rw [h1]
  simp only [Fin.card_Iio]
  rw [Fin.sum_univ_eq_sum_range (fun i => i) N, Finset.sum_range_id, Nat.choose_two_right]

theorem nat_le_mul_log_real (ex c l y : ℕ) (h : ex ≤ c * Nat.log l y) :
    (ex : ℝ) * Real.log l ≤ (c : ℝ) * Real.log y := by
  have h1 : (ex : ℝ) ≤ (c : ℝ) * (Nat.log l y : ℝ) := by exact_mod_cast h
  have h2 : 0 ≤ Real.log l := Real.log_natCast_nonneg l
  calc (ex : ℝ) * Real.log l ≤ (c : ℝ) * (Nat.log l y : ℝ) * Real.log l :=
        mul_le_mul_of_nonneg_right h1 h2
    _ = (c : ℝ) * ((Nat.log l y : ℝ) * Real.log l) := by ring
    _ ≤ (c : ℝ) * Real.log y := mul_le_mul_of_nonneg_left (log_le_log_bound l y) (Nat.cast_nonneg c)

theorem sum_posPairs_split {N : ℕ} (k : ℕ) (g : Fin N × Fin N → ℕ) :
    ∑ p ∈ posPairs N, g p = ∑ p ∈ (posPairs N).filter (fun p => p.2.val < k), g p +
      ∑ p ∈ (posPairs N).filter (fun p => k ≤ p.1.val), g p +
      ∑ p ∈ (posPairs N).filter (fun p => p.1.val < k ∧ k ≤ p.2.val), g p := by
  have hlt : ∀ p ∈ posPairs N, p.1.val < p.2.val := fun p hp => (Finset.mem_filter.1 hp).2
  have hR : (posPairs N).filter (fun p => ¬ p.2.val < k ∧ k ≤ p.1.val) =
      (posPairs N).filter (fun p => k ≤ p.1.val) :=
    Finset.filter_congr fun p hp => by have := hlt p hp; omega
  have hC : (posPairs N).filter (fun p => ¬ p.2.val < k ∧ ¬ k ≤ p.1.val) =
      (posPairs N).filter (fun p => p.1.val < k ∧ k ≤ p.2.val) :=
    Finset.filter_congr fun p hp => by have := hlt p hp; omega
  rw [← Finset.sum_filter_add_sum_filter_not (posPairs N) (fun p => p.2.val < k),
    ← Finset.sum_filter_add_sum_filter_not ((posPairs N).filter (fun p => ¬ p.2.val < k))
      (fun p => k ≤ p.1.val), Finset.filter_filter, Finset.filter_filter, hR, hC, add_assoc]

theorem raising_split_three : ESplit3 := by
  intro N k l U
  exact sum_posPairs_split k _

def embedFinFirst {N k : ℕ} (hk : k ≤ N) : Fin k ↪ Fin N := ⟨Fin.castLE hk, Fin.castLE_injective hk⟩

def embedFinLast (N k : ℕ) : Fin (N - k) ↪ Fin N :=
  ⟨fun a => ⟨k + a.val, by have := a.isLt; omega⟩, fun a b h => by
    have := congrArg Fin.val h
    simp only at this
    exact Fin.ext (by omega)⟩

theorem posPairs_filter_lt {N k : ℕ} (hk : k ≤ N) :
    (posPairs N).filter (fun p => p.2.val < k) =
      (posPairs k).map ((embedFinFirst hk).prodMap (embedFinFirst hk)) := by
  ext ⟨a, b⟩
  simp only [posPairs, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_map]
  constructor
  · rintro ⟨hab, hb⟩
    have hab' : a.val < b.val := hab
    exact ⟨(⟨a.val, by omega⟩, ⟨b.val, hb⟩), hab, rfl⟩
  · rintro ⟨⟨a', b'⟩, hab, h2⟩
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj h2
    exact ⟨hab, b'.isLt⟩

theorem posPairs_filter_ge {N k : ℕ} (hk : k ≤ N) :
    (posPairs N).filter (fun p => k ≤ p.1.val) =
      (posPairs (N - k)).map ((embedFinLast N k).prodMap (embedFinLast N k)) := by
  ext ⟨a, b⟩
  simp only [posPairs, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_map]
  constructor
  · rintro ⟨hab, ha⟩
    have hab' : a.val < b.val := hab
    have ha2 := a.isLt
    have hb2 := b.isLt
    refine ⟨(⟨a.val - k, by omega⟩, ⟨b.val - k, by omega⟩), ?_, ?_⟩
    · show a.val - k < b.val - k
      omega
    · apply Prod.ext
      · apply Fin.ext
        show k + (a.val - k) = a.val
        omega
      · apply Fin.ext
        show k + (b.val - k) = b.val
        omega
  · rintro ⟨⟨a', b'⟩, hab, h2⟩
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj h2
    have hab' : a'.val < b'.val := hab
    refine ⟨?_, ?_⟩
    · show k + a'.val < k + b'.val
      omega
    · show k ≤ k + a'.val
      omega

theorem posPairs_filter_cross {N k : ℕ} (hk : k ≤ N) :
    (posPairs N).filter (fun p => p.1.val < k ∧ k ≤ p.2.val) =
      ((Finset.univ : Finset (Fin k)).map (embedFinFirst hk)) ×ˢ
        ((Finset.univ : Finset (Fin (N - k))).map (embedFinLast N k)) := by
  ext ⟨a, b⟩
  simp only [posPairs, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_map,
    Finset.mem_product]
  constructor
  · rintro ⟨-, ha, hb⟩
    have hb2 := b.isLt
    refine ⟨⟨⟨a.val, ha⟩, rfl⟩, ⟨⟨b.val - k, by omega⟩, ?_⟩⟩
    apply Fin.ext
    show k + (b.val - k) = b.val
    omega
  · rintro ⟨⟨a', rfl⟩, ⟨b', rfl⟩⟩
    have := a'.isLt
    refine ⟨?_, ?_, ?_⟩
    · show a'.val < k + b'.val
      omega
    · exact a'.isLt
    · show k ≤ k + b'.val
      omega

theorem choose_split_alt : ChooseSplit := by
  intro N k hk
  have h1 : ((posPairs N).filter (fun p => p.2.val < k)).card = k.choose 2 := by
    rw [posPairs_filter_lt hk, Finset.card_map, card_posPairs]
  have h2 : ((posPairs N).filter (fun p => k ≤ p.1.val)).card = (N - k).choose 2 := by
    rw [posPairs_filter_ge hk, Finset.card_map, card_posPairs]
  have h3 : ((posPairs N).filter (fun p => p.1.val < k ∧ k ≤ p.2.val)).card = k * (N - k) := by
    rw [posPairs_filter_cross hk, Finset.card_product, Finset.card_map, Finset.card_map,
      Finset.card_univ, Finset.card_univ, Fintype.card_fin, Fintype.card_fin]
  refine ⟨?_, h1, h2, h3⟩
  have h4 := sum_posPairs_split (N := N) k (fun _ => 1)
  simp only [Finset.sum_const, smul_eq_mul, mul_one] at h4
  rw [card_posPairs, h1, h2, h3] at h4
  exact h4.symm

theorem three_bounds : ThreeBounds := by
  intro l N k h S eta xm lo U hl sh
  obtain ⟨-, c1, c2, c3⟩ := choose_split_alt N k sh.k_le
  have hlt : ∀ p ∈ posPairs N, p.1.val < p.2.val := fun p hp => (Finset.mem_filter.1 hp).2
  have b1 := sum_maxVal_le_card_mul_log U l S hl.pos ((posPairs N).filter (fun p => p.2.val < k)) (by
    intro p hp
    rw [Finset.mem_filter] at hp
    have h0 := hlt p hp.1
    have h1 := sh.cloudIn p.1 (by omega)
    have h2 := sh.cloudIn p.2 hp.2
    omega)
  have b2 := sum_maxVal_le_card_mul_log U l eta hl.pos ((posPairs N).filter (fun p => k ≤ p.1.val)) (by
    intro p hp
    rw [Finset.mem_filter] at hp
    have h0 := hlt p hp.1
    have h1 := sh.restIn p.1 hp.2
    have h2 := sh.restIn p.2 (by omega)
    omega)
  have b3 := sum_maxVal_le_card_mul_log U l h hl.pos
    ((posPairs N).filter (fun p => p.1.val < k ∧ k ≤ p.2.val)) (by
    intro p _
    have h1 := sh.inRange p.1
    have h2 := sh.inRange p.2
    omega)
  rw [c1] at b1
  rw [c2] at b2
  rw [c3] at b3
  exact ⟨b1.1, b1.2, b2.1, b2.2, b3.1, Nat.mul_le_mul_left _ (Nat.log_mono_right (by omega))⟩

theorem real_log_mono_of_le (a : ℕ) (b : ℝ) (hab : (a : ℝ) ≤ b) (hb : 0 ≤ Real.log b) :
    Real.log a ≤ Real.log b := by
  by_cases h0 : a = 0
  · rw [h0]
    simpa using hb
  · exact Real.log_le_log (by exact_mod_cast Nat.pos_of_ne_zero h0) hab

theorem choose_two_le_sq (N : ℕ) : (N.choose 2 : ℝ) ≤ (N : ℝ) ^ 2 := by
  rw [Nat.cast_choose_two]
  have : (0 : ℝ) ≤ N := Nat.cast_nonneg N
  nlinarith

theorem size_large : SizeLarge := by
  intro l N k h S eta ex m t xm lo U hl sh hex heta hmt
  obtain ⟨b1, -, -, b2, b3, -⟩ := three_bounds l N k h S eta xm lo U hl sh
  have h0 := raising_split_three N k l U
  rw [b2 heta] at h0
  constructor
  · have e1 := nat_le_mul_log_real _ _ _ _ b1
    have e3 := nat_le_mul_log_real _ _ _ _ b3
    have hex' : (ex : ℝ) ≤ (eCl U k l : ℝ) + (eCross U k l : ℝ) := by
      have : ex ≤ eCl U k l + eCross U k l := by omega
      exact_mod_cast this
    have hl0 : 0 ≤ Real.log l := Real.log_natCast_nonneg l
    push_cast at e3
    nlinarith [mul_le_mul_of_nonneg_right hex' hl0]
  · have hk0 : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    have hh0 : (0 : ℝ) ≤ h := Nat.cast_nonneg h
    have hS0 : (0 : ℝ) ≤ S := Nat.cast_nonneg S
    have l1 : 0 ≤ Real.log (3 * (h : ℝ)) := by
      have := Real.log_natCast_nonneg (3 * h)
      push_cast at this
      exact this
    have l2 : 0 ≤ Real.log ((S : ℝ) + k) := by
      have := Real.log_natCast_nonneg (S + k)
      push_cast at this
      exact this
    have a1 : Real.log h ≤ Real.log (3 * (h : ℝ)) := real_log_mono_of_le h _ (by linarith) l1
    have a2 : Real.log S ≤ Real.log ((S : ℝ) + k) := real_log_mono_of_le S _ (by linarith) l2
    have a3 : ((N - k : ℕ) : ℝ) ≤ (m : ℝ) + t := by exact_mod_cast hmt
    have a4 : (k : ℝ) * ((N - k : ℕ) : ℝ) ≤ (k : ℝ) * ((m : ℝ) + t) :=
      mul_le_mul_of_nonneg_left a3 hk0
    have a5 := mul_le_mul a4 a1 (Real.log_natCast_nonneg h) (by positivity)
    have a6 := mul_le_mul (choose_two_le_sq k) a2 (Real.log_natCast_nonneg S) (by positivity)
    linarith

end Formalism.CohomologicalDescent.SL2BinomialLattices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.SL2BinomialLattices =====

-- ===== clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.RecursionInclusionExceptional =====
-- clump-header: {"m": "Formalism.PieriBlockIdeals.PieriColumnMinors.RecursionInclusionExceptional", "h": "module\n\npublic import Formalism.PieriBlockIdeals.StatementE\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.ParameterBounds\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.ProdInitialMinorsMemDetSpan\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.SL2BinomialLattices\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.WeightBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct MvPolynomial
open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder

namespace Formalism.CohomologicalDescent.E

open Formalism.UG Formalism.RankGapBounds.FormsTensorLocalization Formalism.GradedWeylDivisibility Formalism.CohomologicalDescent.LD Formalism.CohomologicalDescent.UnitNormBounds Formalism.CohomologicalDescent.DepthNonnegative Formalism.CohomologicalDescent.LogSmallConstantBounds Formalism.CohomologicalDescent.ShortWeightBounds

def ThinAE : Prop :=
  ExIntervalLt → ExCut → ∀ P : Par, P.Hyp → P.Large → ∀ (ι : Type) (W : Wts ι), W.Ok P → ∀ J : ℕ → ℕ,
    (W.sizeData₂ P J).ThinA P

def ThickAE : Prop :=
  ExIntervalLt → ExCut → ∀ P : Par, P.Hyp → P.Large → ∀ (ι : Type) (W : Wts ι), W.Ok P → ∀ J : ℕ → ℕ,
    (W.sizeData₂ P J).ThickA P

def CloudAE : Prop :=
  ExIntervalLt → ExCut → ∀ P : Par, P.Hyp → P.Large → ∀ (ι : Type) (W : Wts ι), W.Ok P → ∀ J : ℕ → ℕ,
    (W.sizeData₂ P J).CloudA P

def BeyondHE : Prop :=
  ExIntervalLt → ExCut → ∀ P : Par, P.Hyp → P.Large → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (W : Wts ι),
    W.Ok P → ∀ l : ℕ, l.Prime → P.lJ < (l : ℝ) → P.h < (l : ℝ) →
    (∀ τ, W.ex P τ l = 0) ∧ W.JA P l = 0 ∧ W.JW P l = 0

def InputsRec7E : Prop :=
  ExIntervalLt → ExCut → ∀ P : Par, P.Hyp → P.Large →
    ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (W : Wts ι), W.Ok P → Fintype.card ι = P.f →
    W.Sp.card ≤ 5 → (W.sizeData₂ P (W.Jrec7 P)).Inputs P

def RecSum7E : Prop :=
  ExIntervalLt → ExCut → PrimeCountingBound → ∀ P : Par, P.Hyp → P.Large →
    ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (W : Wts ι), W.Ok P → Fintype.card ι = P.f →
    W.Sp.card ≤ 5 → ∀ Q : Finset ℕ, (∀ l ∈ Q, l.Prime) →
      ∑ l ∈ Q, (W.Jrec7 P l : ℝ) * Real.log (l : ℝ) ≤
        totalBound P W.T2.card (30 * (P.m : ℝ) * P.b * P.L ^ 2)

theorem res_anti_shift {N a : ℕ} {lam : ℕ → ℕ} (h : Antitone (res N lam)) :
    Antitone (res (N - a) (fun i => lam (a + i))) := by
  intro i j hij
  have hi : a + i.val < N := by have := i.isLt; omega
  have hj : a + j.val < N := by have := j.isLt; omega
  have hle : (⟨a + i.val, hi⟩ : Fin N) ≤ ⟨a + j.val, hj⟩ := by
    rw [Fin.mk_le_mk]
    have := Fin.le_iff_val_le_val.mp hij
    omega
  exact h hle

theorem exZ_rank_le_one {N : ℕ} (hN : N ≤ 1) (ν : Fin N → ℕ) (l : ℕ) (hl : l.Prime) :
    LA.exZ N N le_rfl ν l = 0 := by
  have hanti : Antitone ν := by
    intro i j _
    have hi := i.isLt
    have hj := j.isLt
    have : i = j := Fin.ext (by omega)
    rw [this]
  have h := LA.lattice_z_rank_le_two N N le_rfl (by omega) ν hanti l hl
  have he : Formalism.RankGapBounds.JumpSetsAlt.eExp (LA.lamU N N ν) l = 0 := by
    unfold Formalism.RankGapBounds.JumpSetsAlt.eExp
    apply Finset.sum_eq_zero
    intro p hp
    simp only [Formalism.RankGapBounds.JumpSetsAlt.posPairs, Finset.mem_filter, Finset.mem_univ, true_and] at hp
    have h1 := p.1.isLt
    have h2 := p.2.isLt
    have h3 : p.1.val < p.2.val := hp
    omega
  rw [he] at h
  exact Nat.le_zero.mp (Nat.sInf_le h)

theorem exZ_le_of_exCut (hC : ExCut) (l : ℕ) (hl : l.Prime) (w : ℕ) :
    ∀ (N : ℕ) (lam : ℕ → ℕ), Antitone (res N lam) → ∀ lo : ℤ,
      (∀ a < N, lo ≤ UN N lam a ∧ UN N lam a ≤ lo + (w : ℤ)) →
      LA.exZ N N le_rfl (res N lam) l ≤ N.choose 2 * Nat.log l w := by
  intro N
  induction N with
  | zero =>
    intro lam _ lo _
    rw [exZ_rank_le_one (by norm_num) (res 0 lam) l hl]
    exact Nat.zero_le _
  | succ n ih =>
    intro lam hA lo hb

    have hcut : LA.exZ (n + 1) (n + 1) le_rfl (res (n + 1) lam) l ≤
        LA.exZ 1 1 le_rfl (res 1 lam) l +
          LA.exZ n n le_rfl (res n (fun i => lam (1 + i))) l + 1 * n * Nat.log l w :=
      hC (n + 1) lam hA l hl lo w hb 1 (by omega)
    have h1 : LA.exZ 1 1 le_rfl (res 1 lam) l = 0 := exZ_rank_le_one le_rfl _ l hl
    have hA' : Antitone (res n (fun i => lam (1 + i))) := res_anti_shift (a := 1) hA
    have hb' : ∀ a < n, lo ≤ UN n (fun i => lam (1 + i)) a ∧
        UN n (fun i => lam (1 + i)) a ≤ lo + (w : ℤ) := by
      intro a ha
      have hba := hb (1 + a) (by omega)
      have e : UN n (fun i => lam (1 + i)) a = UN (n + 1) lam (1 + a) := by
        simp only [UN]
        push_cast
        ring
      rw [e]
      exact hba
    have hrest := ih (fun i => lam (1 + i)) hA' lo hb'
    have hch : (n + 1).choose 2 = n.choose 2 + n := by
      have h2 := Nat.choose_succ_succ n 1
      rw [Nat.choose_one_right] at h2
      exact h2.trans (Nat.add_comm _ _)
    rw [h1] at hcut
    rw [hch, Nat.add_mul]
    have hstep : 0 + LA.exZ n n le_rfl (res n (fun i => lam (1 + i))) l + 1 * n * Nat.log l w ≤
        n.choose 2 * Nat.log l w + n * Nat.log l w := by
      rw [zero_add, one_mul]
      exact Nat.add_le_add_right hrest _
    exact le_trans hcut hstep

theorem exIntervalLt_of_exCut : ExCut → ExIntervalLt := by
  intro hC N lam hA l hl lo w hb
  have h := exZ_le_of_exCut hC l hl w N lam hA lo hb
  refine ⟨h, fun hw => ?_⟩
  have h0 : Nat.log l w = 0 := Nat.log_of_lt hw
  rw [h0, mul_zero] at h
  exact Nat.le_zero.mp h

theorem thin_exceptional : ThinAE := by
  intro hI _ P hH hL ι W hW J τ _ l hl
  have hN := rank_pos_of_hyp P hH
  have h := hI P.Nr (W.lam τ) (restriction_lambda_antitone hW τ) l hl (W.U P τ (P.Nr - 1))
    (W.width P τ).toNat (fun a ha => weight_in_width_range hW τ a ha)
  have hc : (((W.width P τ).toNat : ℕ) : ℝ) = (W.width P τ : ℝ) := by
    have : (((W.width P τ).toNat : ℕ) : ℤ) = W.width P τ := Int.toNat_of_nonneg (width_nonneg hW hN τ)
    exact_mod_cast this
  constructor
  · intro hlt
    apply h.2
    have h1 : (((W.width P τ).toNat : ℕ) : ℝ) < (l : ℝ) := by rw [hc]; exact hlt
    exact_mod_cast h1
  · intro hle
    have h2 : (2 : ℝ) ≤ (l : ℝ) := by exact_mod_cast hl.two_le
    have hle' : (l : ℝ) ≤ (W.width P τ : ℝ) := hle
    exact exponent_mul_log_le_choose_mul_log P.Nr l _ _ _ h.1 hc.le (by linarith)

theorem one_le_k_of_hyp (P : Par) (hH : P.Hyp) : 1 ≤ P.k := hH.m_pos.trans hH.m_le

theorem thick_exceptional : ThickAE := by
  intro hI hC P hH hL ι W hW J τ hτ l hl
  obtain ⟨sh, hS0, hE0⟩ := shape_a_real_holds P hH hL ι W hW τ hτ
  have hh := one_le_h P hH
  have hh0 := floor_height_le_height P hH
  have h := hI P.Nr (W.lam τ) (restriction_lambda_antitone hW τ) l hl 0 (h0 P)
    (fun a ha => by
      have h1 := sh.inRange ⟨a, ha⟩
      rw [zero_add]
      exact h1)
  refine ⟨?_, ?_, ?_⟩
  · intro hlt
    apply h.2
    have h1 : (h0 P : ℝ) < (l : ℝ) := lt_of_le_of_lt hh0 hlt
    exact_mod_cast h1
  · exact exponent_mul_log_le_choose_mul_log P.Nr l _ _ _ h.1 hh0 hh
  · intro hle
    have heta : (W.U P τ (kc P) - W.U P τ (P.Nr - 1)).toNat < l := by
      have ht1 : (1 : ℝ) ≤ (P.t : ℝ) := by
        have := hH.t_ge
        exact_mod_cast (show 1 ≤ P.t by omega)
      have h1 : (((W.U P τ (kc P) - W.U P τ (P.Nr - 1)).toNat : ℕ) : ℝ) < (l : ℝ) := by
        linarith
      exact_mod_cast h1
    have hjq := (rest_near_holds P hH ι W hW τ).2.2.2.1
    have hrows := hW.what₂ τ
    have hNk : P.Nr - kc P ≤ P.m + P.t := by omega
    have hs := SL2BinomialLattices.size_large l P.Nr (kc P) (h0 P) _ _ 0 P.m P.t _ _ _ hl sh (Nat.zero_le _) heta.le hNk
    have hkN : kc P ≤ P.Nr := sh.k_le
    have hcut := hC P.Nr (W.lam τ) (restriction_lambda_antitone hW τ) l hl 0 (h0 P)
      (fun a ha => by
        have h1 := sh.inRange ⟨a, ha⟩
        rw [zero_add]
        exact h1) (kc P) hkN
    have hcl := (hI (kc P) (W.lam τ) (restriction_lambda_antitone_kc hW τ) l hl
      (W.xm τ - ((P.Nr : ℤ) - (kc P : ℤ))) (W.xp τ - W.xm τ).toNat (fun a ha => by
        have h1 := hW.cloud τ a ha
        have h2 := (hW.window τ).2.1
        unfold Wts.U UN at h1
        unfold UN
        omega)).1
    have hrest := (hI (P.Nr - kc P) (fun i => W.lam τ (kc P + i)) (res_anti_shift (restriction_lambda_antitone hW τ)) l hl
      (W.U P τ (P.Nr - 1)) (W.U P τ (kc P) - W.U P τ (P.Nr - 1)).toNat (fun a ha => by
        have h1 := sh.restIn ⟨kc P + a, by omega⟩ (by simp)
        simp only at h1
        unfold Wts.U UN at h1 ⊢
        push_cast at h1 ⊢
        omega)).2 heta
    have hexN : W.ex P τ l ≤ (kc P).choose 2 * Nat.log l (W.xp τ - W.xm τ).toNat +
        kc P * (P.Nr - kc P) * Nat.log l (h0 P) := by
      have e0 : W.ex P τ l = LA.exZ P.Nr P.Nr le_rfl (res P.Nr (W.lam τ)) l := rfl
      rw [e0]
      rw [hrest, add_zero] at hcut
      exact hcut.trans (Nat.add_le_add_right hcl _)
    have hexR : (W.ex P τ l : ℝ) ≤ ((kc P).choose 2 : ℝ) * (Nat.log l (W.xp τ - W.xm τ).toNat : ℝ) +
        (kc P : ℝ) * ((P.Nr - kc P : ℕ) : ℝ) * (Nat.log l (h0 P) : ℝ) := by
      exact_mod_cast hexN
    have hlg0 : (0 : ℝ) ≤ Real.log (l : ℝ) := Real.log_natCast_nonneg l
    have g1 := SL2BinomialLattices.log_le_log_bound l (W.xp τ - W.xm τ).toNat
    have g2 := SL2BinomialLattices.log_le_log_bound l (h0 P)
    have hmain : (W.ex P τ l : ℝ) * Real.log l ≤
        (kc P : ℝ) * ((P.Nr - kc P : ℕ) : ℝ) * Real.log (h0 P : ℕ) +
          ((kc P).choose 2 : ℝ) * Real.log ((W.xp τ - W.xm τ).toNat : ℕ) := by
      calc (W.ex P τ l : ℝ) * Real.log l
          ≤ (((kc P).choose 2 : ℝ) * (Nat.log l (W.xp τ - W.xm τ).toNat : ℝ) +
              (kc P : ℝ) * ((P.Nr - kc P : ℕ) : ℝ) * (Nat.log l (h0 P) : ℝ)) * Real.log l :=
            mul_le_mul_of_nonneg_right hexR hlg0
        _ = ((kc P).choose 2 : ℝ) * ((Nat.log l (W.xp τ - W.xm τ).toNat : ℝ) * Real.log l) +
              (kc P : ℝ) * ((P.Nr - kc P : ℕ) : ℝ) * ((Nat.log l (h0 P) : ℝ) * Real.log l) := by ring
        _ ≤ ((kc P).choose 2 : ℝ) * Real.log ((W.xp τ - W.xm τ).toNat : ℕ) +
              (kc P : ℝ) * ((P.Nr - kc P : ℕ) : ℝ) * Real.log (h0 P : ℕ) :=
            add_le_add (mul_le_mul_of_nonneg_left g1 (Nat.cast_nonneg _))
              (mul_le_mul_of_nonneg_left g2 (by positivity))
        _ = _ := by ring
    refine (hmain.trans hs.2).trans ?_
    have hk := _root_.Formalism.CohomologicalDescent.ShortWeightBounds.kc_cast_le_k P
    have hk0 : (0 : ℝ) ≤ (kc P : ℝ) := Nat.cast_nonneg _
    have h01 : (1 : ℝ) ≤ (h0 P : ℝ) := by exact_mod_cast one_le_floor_height P hH
    have hl1 : 0 ≤ Real.log (3 * (h0 P : ℝ)) := Real.log_nonneg (by linarith)
    have hl2 : Real.log (3 * (h0 P : ℝ)) ≤ Real.log (3 * P.h) :=
      Real.log_le_log (by linarith) (by linarith)
    have hmt : (0 : ℝ) ≤ (P.m : ℝ) + (P.t : ℝ) := by positivity
    have t1 : (kc P : ℝ) * ((P.m : ℝ) + (P.t : ℝ)) * Real.log (3 * (h0 P : ℝ)) ≤
        (P.k : ℝ) * ((P.m : ℝ) + (P.t : ℝ)) * Real.log (3 * P.h) :=
      mul_le_mul (mul_le_mul_of_nonneg_right hk hmt) hl2 hl1
        (mul_nonneg (Nat.cast_nonneg _) hmt)
    have hk1 : (1 : ℝ) ≤ (P.k : ℝ) := by exact_mod_cast one_le_k_of_hyp P hH
    have hSk : 0 ≤ Real.log (P.S + (P.k : ℝ)) := Real.log_nonneg (by linarith [hH.S_nonneg])
    have t2 : (kc P : ℝ) ^ 2 * Real.log ((((W.xp τ - W.xm τ).toNat : ℕ) : ℝ) + (kc P : ℝ)) ≤
        (P.k : ℝ) ^ 2 * Real.log (P.S + (P.k : ℝ)) := by
      rcases Nat.eq_zero_or_pos (kc P) with h0 | h0
      · rw [h0]
        simp only [Nat.cast_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow, zero_mul]
        positivity
      · have hc1 : (1 : ℝ) ≤ (kc P : ℝ) := by exact_mod_cast h0
        have hs0 : (0 : ℝ) ≤ (((W.xp τ - W.xm τ).toNat : ℕ) : ℝ) := Nat.cast_nonneg _
        exact mul_le_mul (pow_le_pow_left₀ hk0 hk 2)
          (Real.log_le_log (by linarith) (by linarith)) (Real.log_nonneg (by linarith)) (by positivity)
    linarith

theorem cloud_exceptional : CloudAE := by
  intro hI _ P hH hL ι W hW J τ hτ l hl hlt
  have hkN := kc_le_rank hW τ
  have h := hI (kc P) (W.lam τ) (restriction_lambda_antitone_kc hW τ) l hl
    (W.xm τ - ((P.Nr : ℤ) - (kc P : ℤ))) (W.xp τ - W.xm τ).toNat (fun a ha => by
      have h1 := hW.cloud τ a ha
      have h2 := (hW.window τ).2.1
      unfold Wts.U UN at h1
      unfold UN
      omega)
  apply h.2
  have hw := hW.window τ
  have h3 : (((W.xp τ - W.xm τ).toNat : ℕ) : ℝ) = (W.xp τ : ℝ) - (W.xm τ : ℝ) := by
    have : (((W.xp τ - W.xm τ).toNat : ℕ) : ℤ) = W.xp τ - W.xm τ :=
      Int.toNat_of_nonneg (sub_nonneg.mpr hw.2.1)
    exact_mod_cast this
  have h4 : (((W.xp τ - W.xm τ).toNat : ℕ) : ℝ) < (l : ℝ) := by
    rw [h3]
    have : (0 : ℝ) ≤ (P.k : ℝ) := Nat.cast_nonneg _
    linarith [hw.1, hw.2.2]
  exact_mod_cast h4

theorem beyond_height_exceptional : BeyondHE := by
  intro hI hC P hH hL ι _ _ W hW l hl hlJ hlh
  have hex : ∀ τ, W.ex P τ l = 0 := by
    intro τ
    by_cases hτ : τ ∈ W.T2
    · exact (thick_exceptional hI hC P hH hL ι W hW (fun _ => 0) τ hτ l hl).1 hlh
    · apply (thin_exceptional hI hC P hH hL ι W hW (fun _ => 0) τ hτ l hl).1
      show (W.width P τ : ℝ) < (l : ℝ)
      have he := paramsTop_holds P hH hL
      have hf := (paramsThin_holds P hH hL).2
      have ht := hL.top_le
      have hb := hH.b'_pos
      have hx : 0 < P.x := by linarith [hH.x_ge]
      have hpos : 0 ≤ P.b' * (1 / P.x + 1 / P.x ^ 2) := by positivity
      rcases hW.other τ hτ with h | h
      · linarith [h.2]
      · nlinarith [h.2]
  refine ⟨hex, ?_, ?_⟩
  · unfold Wts.JA
    exact Finset.sum_eq_zero fun τ _ => hex τ
  · unfold Wts.JW
    apply Finset.sum_eq_zero
    intro τ _
    unfold cTau
    split_ifs
    · simp [hex τ]
    · exact hex τ

theorem recursion_inputs_exceptional : InputsRec7E := by
  intro hI hC P hH hL ι _ _ W hW hcard hSp
  refine ⟨hcard, hSp, ?_, sizeData_boundW_of_le_seventh_recursion W P hH hL hW _ (fun _ _ => le_rfl),
    thin_exceptional hI hC P hH hL ι W hW _, thick_exceptional hI hC P hH hL ι W hW _,
    cloud_exceptional hI hC P hH hL ι W hW _, shape_t_real_holds P hH hL ι W hW _,
    widths_real_holds P ι W hW _⟩
  intro l _ hc
  exact (seventh_recursion_eq_a_of_small_prime W P l hc).le

theorem recursion_sum_exceptional : RecSum7E := by
  intro hI hC hRS P hH hL ι _ _ W hW hcard hSp Q hQ
  exact totalElementary_holds hRS P hH hL ι (W.sizeData₂ P (W.Jrec7 P))
    (recursion_inputs_exceptional hI hC P hH hL ι W hW hcard hSp) (places_real_holds P hH hL ι W hW _).2 Q hQ

end Formalism.CohomologicalDescent.E
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PieriBlockIdeals.PieriColumnMinors.RecursionInclusionExceptional =====
