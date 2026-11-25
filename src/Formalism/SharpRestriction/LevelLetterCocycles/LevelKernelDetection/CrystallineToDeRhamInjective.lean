module

public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.RingTheory.Valuation.Basic
public import Mathlib.Algebra.Ring.GeomSum
public import Mathlib.Data.Nat.Prime.Basic
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CvZeroTerm
public import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.VSumPowNonneg, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.VSumPowNonneg =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.VSumPowNonneg", "h": "module\n\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.RingTheory.Valuation.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\npublic import Mathlib.Algebra.Ring.GeomSum\npublic import Mathlib.Data.Nat.Prime.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf.ValuationPow

open Finset

variable {LL : Type} [Field LL] (v : AddValuation LL (WithTop ℚ))

theorem v_nat_nonneg (k : ℕ) : (0 : WithTop ℚ) ≤ v (k : LL) := by
  induction k with
  | zero => simp
  | succ n ih =>
    push_cast
    exact le_trans (le_min ih (by simp)) (AddValuation.map_add v (n : LL) 1)

theorem v_int_nonneg (a : ℤ) : (0 : WithTop ℚ) ≤ v (a : LL) := by
  cases a with
  | ofNat n => simpa using v_nat_nonneg v n
  | negSucc n =>
    first
    | (rw [Int.cast_negSucc, AddValuation.map_neg]; exact v_nat_nonneg v (n + 1))

private theorem withTop_rat_add_pos_of_nonneg_of_pos {a b : WithTop ℚ} (ha : 0 ≤ a) (hb : 0 < b) : 0 < a + b :=
  lt_of_lt_of_le hb (le_add_of_nonneg_left ha)

theorem v_nat_eq_zero (p : ℕ) (hp : p.Prime) (hvp : 0 < v (p : LL)) (m : ℕ) (hm : ¬ p ∣ m) :
    v (m : LL) = 0 := by
  have hcop : Nat.Coprime p m := (Nat.Prime.coprime_iff_not_dvd hp).mpr hm
  obtain ⟨a, b, hab⟩ : ∃ a b : ℤ, a * (p : ℤ) + b * (m : ℤ) = 1 := by
    first
    | exact Nat.isCoprime_iff_coprime.mpr hcop
  have h1 : (a : LL) * (p : LL) + (b : LL) * (m : LL) = 1 := by
    first
    | exact_mod_cast congrArg (Int.cast : ℤ → LL) hab
  refine le_antisymm ?_ (v_nat_nonneg v m)
  by_contra hlt
  push_neg at hlt
  have hA : 0 < v ((a : LL) * (p : LL)) := by
    rw [AddValuation.map_mul]; exact withTop_rat_add_pos_of_nonneg_of_pos (v_int_nonneg v a) hvp
  have hB : 0 < v ((b : LL) * (m : LL)) := by
    rw [AddValuation.map_mul]; exact withTop_rat_add_pos_of_nonneg_of_pos (v_int_nonneg v b) hlt
  have h2 := AddValuation.map_add v ((a : LL) * (p : LL)) ((b : LL) * (m : LL))
  rw [h1, AddValuation.map_one] at h2
  exact absurd (lt_of_lt_of_le (lt_min hA hB) h2) (lt_irrefl 0)

theorem v_nonneg_of (w : LL) (hw : 0 < v (w - 1)) : (0 : WithTop ℚ) ≤ v w := by
  have h := AddValuation.map_add v (w - 1) 1
  rw [sub_add_cancel, AddValuation.map_one] at h
  exact le_trans (le_min hw.le le_rfl) h

private theorem val_pow_nonneg_of_nonneg (w : LL) (hw : (0 : WithTop ℚ) ≤ v w) (j : ℕ) :
    (0 : WithTop ℚ) ≤ v (w ^ j) := by
  induction j with
  | zero => simp
  | succ n ih => rw [pow_succ, AddValuation.map_mul]; exact add_nonneg ih hw

theorem v_sum_pow_nonneg (w : LL) (hw : (0 : WithTop ℚ) ≤ v w) (i : ℕ) :
    (0 : WithTop ℚ) ≤ v (∑ j ∈ range i, w ^ j) := by
  induction i with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ]
    exact le_trans (le_min ih (val_pow_nonneg_of_nonneg v w hw n)) (AddValuation.map_add v _ _)

private theorem pow_sub_one_eq_sub_one_mul_geom_sum (w : LL) (n : ℕ) :
    w ^ n - 1 = (w - 1) * ∑ j ∈ Finset.range n, w ^ j := by
  first
  | exact (mul_geom_sum w n).symm

theorem v_pow_sub_one_ge (w : LL) (hw : (0 : WithTop ℚ) ≤ v w) (i : ℕ) :
    v (w - 1) ≤ v (w ^ i - 1) := by
  rw [pow_sub_one_eq_sub_one_mul_geom_sum w i, AddValuation.map_mul]
  exact le_add_of_nonneg_right (v_sum_pow_nonneg v w hw i)

private theorem geom_sum_sub_card_eq_sum_pow_sub_one (w : LL) (n : ℕ) :
    (∑ j ∈ Finset.range n, w ^ j) - (n : LL) = ∑ j ∈ Finset.range n, (w ^ j - 1) := by
  first
  | (rw [Finset.sum_sub_distrib]; simp)

private theorem le_val_sum_range_of_forall_lt (g : WithTop ℚ) (f : ℕ → LL) (n : ℕ) (h : ∀ j, j < n → g ≤ v (f j)) :
    g ≤ v (∑ j ∈ Finset.range n, f j) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ]
    exact le_trans (le_min (ih (fun j hj => h j (by omega))) (h n (by omega)))
      (AddValuation.map_add v _ _)

private theorem val_eq_of_val_lt_val_sub (x y : LL) (h : v y < v (x - y)) : v x = v y := by
  have h1 : v y ≤ v x := by
    have h3 := AddValuation.map_add v (x - y) y
    rw [sub_add_cancel] at h3
    exact le_trans (le_min h.le le_rfl) h3
  have h2 := AddValuation.map_add v x (-(x - y))
  rw [AddValuation.map_neg, show x + -(x - y) = y by ring] at h2
  rcases min_le_iff.mp h2 with h4 | h4
  · exact le_antisymm h4 h1
  · exact absurd h4 (not_le.mpr h)

private theorem val_sub_one_le_val_geom_sum_sub_card (w : LL) (hw : (0 : WithTop ℚ) ≤ v w) (n : ℕ) :
    v (w - 1) ≤ v ((∑ j ∈ Finset.range n, w ^ j) - (n : LL)) := by
  rw [geom_sum_sub_card_eq_sum_pow_sub_one]
  exact le_val_sum_range_of_forall_lt v (v (w - 1)) (fun j => w ^ j - 1) n
    (fun j _ => v_pow_sub_one_ge v w hw j)

theorem v_pow_coprime (p : ℕ) (hp : p.Prime) (hvp : 0 < v (p : LL)) (w : LL) (hw : 0 < v (w - 1))
    (m : ℕ) (hm : ¬ p ∣ m) : v (w ^ m - 1) = v (w - 1) := by
  have hw0 : (0 : WithTop ℚ) ≤ v w := v_nonneg_of v w hw
  have hm0 : v (m : LL) = 0 := v_nat_eq_zero v p hp hvp m hm
  have hlt : v (m : LL) < v ((∑ j ∈ Finset.range m, w ^ j) - (m : LL)) := by
    rw [hm0]; exact lt_of_lt_of_le hw (val_sub_one_le_val_geom_sum_sub_card v w hw0 m)
  have hS : v (∑ j ∈ Finset.range m, w ^ j) = 0 := (val_eq_of_val_lt_val_sub v _ _ hlt).trans hm0
  rw [pow_sub_one_eq_sub_one_mul_geom_sum w m, AddValuation.map_mul, hS, add_zero]

private theorem withTop_rat_zero_lt_one : (0 : WithTop ℚ) < 1 := by
  first
  | exact WithTop.coe_lt_coe.mpr zero_lt_one

private theorem withTop_rat_one_lt_one_add_one : (1 : WithTop ℚ) < 1 + 1 := by
  first
  | exact WithTop.coe_lt_coe.mpr (by norm_num : (1 : ℚ) < 1 + 1)

private theorem exists_eq_two_mul_add_one_of_prime_ne_two (p : ℕ) (hp : p.Prime) (hodd : p ≠ 2) : ∃ k, p = 2 * k + 1 := by
  rcases hp.eq_two_or_odd with h | h
  · exact absurd h hodd
  · exact ⟨p / 2, by omega⟩

private theorem sum_range_two_mul_add_one_eq (k : ℕ) : ∑ i ∈ Finset.range (2 * k + 1), i = (2 * k + 1) * k := by
  induction k with
  | zero => simp
  | succ n ih =>
    rw [show 2 * (n + 1) + 1 = 2 * n + 1 + 1 + 1 by ring, Finset.sum_range_succ,
      Finset.sum_range_succ, ih]
    ring

private theorem geom_sum_sub_card_eq_sub_one_mul (w : LL) (n : ℕ) :
    (∑ j ∈ Finset.range n, w ^ j) - (n : LL) =
      (w - 1) * ((∑ j ∈ Finset.range n, (j : LL)) +
        ∑ j ∈ Finset.range n, ((∑ i ∈ Finset.range j, w ^ i) - (j : LL))) := by
  rw [geom_sum_sub_card_eq_sum_pow_sub_one, ← Finset.sum_add_distrib, Finset.mul_sum]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  rw [pow_sub_one_eq_sub_one_mul_geom_sum w j]
  ring

theorem v_pow_prime (p : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hvp : v (p : LL) = 1) (w : LL)
    (hw : 1 ≤ v (w - 1)) : v (w ^ p - 1) = v (w - 1) + 1 := by
  obtain ⟨k, hpk⟩ : ∃ k, p = 2 * k + 1 := exists_eq_two_mul_add_one_of_prime_ne_two p hp hodd
  have hw1 : 0 < v (w - 1) := lt_of_lt_of_le withTop_rat_zero_lt_one hw
  have hw0 : (0 : WithTop ℚ) ≤ v w := v_nonneg_of v w hw1
  have hN : ∑ j ∈ Finset.range p, j = p * k := by rw [hpk]; exact sum_range_two_mul_add_one_eq k
  have hA : (∑ j ∈ Finset.range p, (j : LL)) = (p : LL) * (k : LL) := by
    first
    | (have h := congrArg (Nat.cast : ℕ → LL) hN; push_cast at h; exact h)
  have hvA : 1 ≤ v (∑ j ∈ Finset.range p, (j : LL)) := by
    rw [hA, AddValuation.map_mul, hvp]
    exact le_add_of_nonneg_right (v_nat_nonneg v k)
  have hvE : v (w - 1) ≤
      v (∑ j ∈ Finset.range p, ((∑ i ∈ Finset.range j, w ^ i) - (j : LL))) :=
    le_val_sum_range_of_forall_lt v (v (w - 1)) (fun j => (∑ i ∈ Finset.range j, w ^ i) - (j : LL)) p
      (fun j _ => val_sub_one_le_val_geom_sum_sub_card v w hw0 j)
  have hvAE : 1 ≤ v ((∑ j ∈ Finset.range p, (j : LL)) +
      ∑ j ∈ Finset.range p, ((∑ i ∈ Finset.range j, w ^ i) - (j : LL))) :=
    le_trans (le_min hvA (le_trans hw hvE)) (AddValuation.map_add v _ _)
  have hlt : v (p : LL) < v ((∑ j ∈ Finset.range p, w ^ j) - (p : LL)) := by
    rw [geom_sum_sub_card_eq_sub_one_mul w p, AddValuation.map_mul, hvp]
    exact lt_of_lt_of_le withTop_rat_one_lt_one_add_one (add_le_add hw hvAE)
  have hS : v (∑ j ∈ Finset.range p, w ^ j) = 1 := (val_eq_of_val_lt_val_sub v _ _ hlt).trans hvp
  rw [pow_sub_one_eq_sub_one_mul_geom_sum w p, AddValuation.map_mul, hS]

theorem v_pow_prime_pow (p : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hvp : v (p : LL) = 1) (w : LL) (c : ℚ)
    (hc : 1 ≤ c) (hw : v (w - 1) = (c : WithTop ℚ)) (a : ℕ) :
    v (w ^ (p ^ a) - 1) = ((c + a : ℚ) : WithTop ℚ) := by
  induction a with
  | zero => simp [hw]
  | succ n ih =>
    have hpow : w ^ (p ^ (n + 1)) = (w ^ (p ^ n)) ^ p := by
      first
      | rw [pow_succ, pow_mul]
    have h1 : 1 ≤ v (w ^ (p ^ n) - 1) := by
      rw [ih]
      first
      | (rw [← WithTop.coe_one, WithTop.coe_le_coe]
         have h0 : (0 : ℚ) ≤ n := Nat.cast_nonneg n
         linarith)
    rw [hpow, v_pow_prime v p hp hodd hvp (w ^ (p ^ n)) h1, ih]
    have e' : (c + ((n + 1 : ℕ) : ℚ)) = (c + n) + 1 := by push_cast; ring
    rw [e']
    first
    | rfl

private theorem exists_eq_prime_pow_mul_not_dvd' (p : ℕ) (hp : p.Prime) (k : ℕ) (hk : 0 < k) :
    ∃ a m : ℕ, ¬ p ∣ m ∧ k = p ^ a * m := by
  induction k using Nat.strong_induction_on with
  | _ k ih =>
    by_cases hdvd : p ∣ k
    · obtain ⟨j, hj⟩ := hdvd
      have hjpos : 0 < j := by
        rcases Nat.eq_zero_or_pos j with h0 | h0
        · rw [h0, mul_zero] at hj; omega
        · exact h0
      have hjlt : j < k := by
        have h2 := hp.two_le
        rw [hj]; nlinarith
      obtain ⟨a, m, hm, hjm⟩ := ih j hjlt hjpos
      exact ⟨a + 1, m, hm, by rw [hj, hjm]; ring⟩
    · exact ⟨0, k, hdvd, by simp⟩

theorem pow_ne_one (p : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hvp : v (p : LL) = 1) (u : LL)
    (hu : v (u - 1) = 1) (k : ℕ) (hk : 0 < k) : u ^ k ≠ 1 := by
  obtain ⟨a, m, hm, hkm⟩ := exists_eq_prime_pow_mul_not_dvd' p hp k hk
  have hvp' : 0 < v (p : LL) := by rw [hvp]; exact withTop_rat_zero_lt_one
  have hu' : v (u - 1) = ((1 : ℚ) : WithTop ℚ) := by
    first
    | exact hu.trans WithTop.coe_one.symm
  have h1 : v (u ^ (p ^ a) - 1) = ((1 + a : ℚ) : WithTop ℚ) :=
    v_pow_prime_pow v p hp hodd hvp u 1 le_rfl hu' a
  have h2 : 0 < v (u ^ (p ^ a) - 1) := by
    rw [h1]
    first
    | (rw [← WithTop.coe_zero, WithTop.coe_lt_coe]; positivity)
  have h3 : v ((u ^ (p ^ a)) ^ m - 1) = v (u ^ (p ^ a) - 1) :=
    v_pow_coprime v p hp hvp' (u ^ (p ^ a)) h2 m hm
  intro heq
  have h4 : v (u ^ k - 1) = ((1 + a : ℚ) : WithTop ℚ) := by
    rw [hkm, pow_mul, h3, h1]
  rw [heq, sub_self, AddValuation.map_zero] at h4
  exact WithTop.top_ne_coe h4

theorem zpow_ne_one (p : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hvp : v (p : LL) = 1) (u : LL)
    (hu : v (u - 1) = 1) (k : ℤ) (hk : k ≠ 0) : u ^ k ≠ 1 := by
  have hn : 0 < k.natAbs := Int.natAbs_pos.mpr hk
  rcases Int.natAbs_eq k with h | h
  · rw [h, zpow_natCast]
    exact pow_ne_one v p hp hodd hvp u hu _ hn
  · rw [h, zpow_neg, zpow_natCast]
    intro h'
    exact pow_ne_one v p hp hodd hvp u hu _ hn (inv_eq_one.mp h')

end Formalism.MainNotions.N.Ln03.Pf.ValuationPow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.VSumPowNonneg =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CvZeroTerm\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.VSumPowNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03
open Formalism.MainNotions.N.Ln03.Pf.ConvolutionAlt

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W}

theorem crystalline_to_deRham_injective (T : LocLat G Qp LL O) : Function.Injective (ιV PD (LL := LL) (V := T.V)) := by
  have h : ∀ y, ιV PD (LL := LL) (V := T.V) y =
      ((PD.ι.toLinearMap.restrictScalars Qp).lTensor T.V) y := fun y => by
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul x b => simp [ιV]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  have hi : Function.Injective (PD.ι.toLinearMap.restrictScalars Qp) := PD.ι_inj
  intro a b hab
  rw [h, h] at hab
  exact Module.Flat.lTensor_preserves_injective_linearMap _ hi hab

theorem levelExpansion_smul
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (a : LetA O n) (x : ↥(W.N T)) (k : ℤ) :
    Lb.levB T i ζ (a • x) k = cv (W.lev i ζ a) (Lb.levB T i ζ x) k := by
  obtain ⟨m, hm⟩ := Lb.supp T i ζ x
  apply crystalline_to_deRham_injective (PD := PD) (LL := LL) T
  rw [← levN_eq, W.levN_smul, cv_map _ _ _ m hm]
  unfold cv
  congr 1
  funext j
  rw [levN_eq]

theorem level_pi_constantCoeff_zero (i : ZMod n) :
    PowerSeries.constantCoeff (W.lev i 1 (letπ : LetA O n)) = 0 := by
  obtain ⟨E, hE0, -, hE⟩ := W.lev_π i 1 ⟨0, by simp⟩
  have h := congrArg PowerSeries.constantCoeff hE
  simp only [map_add (f := _), map_mul, hE0, mul_one, map_one] at h
  linear_combination h

theorem levelExpansion_neg_eq_zero
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (T : LocLat G Qp LL O)
    (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T) (i : ZMod n) (x : ↥(W.N T)) (k : ℤ) (hk : k < 0) :
    Lb.levB T i 1 x k = 0 := by
  have hX : PowerSeries.constantCoeff (W.lev i 1 W.X) = 0 := by
    have : W.X = (letπ : LetA O n) := by
      show (W.φA ^ (W.s - 1)) _ = _
      rw [hs1, Nat.sub_self, pow_zero]
      rfl
    rw [this]
    exact level_pi_constantCoeff_zero (W := W) i
  apply crystalline_to_deRham_injective (PD := PD) (LL := LL) T
  rw [← levN_eq, map_zero]
  exact ((hP4.1 i 1 ⟨0, by simp⟩ hX).1 x k).2 hk

theorem level_pi0_X_pow_dvd
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
    (i : ZMod n) : (PowerSeries.X : PowerSeries LL) ^ (PD.p - 1) ∣ W.lev i 1 W.π₀ := by
  obtain ⟨w, hw⟩ := hp9.2.2.1
  rw [hw, map_mul, map_pow]
  refine Dvd.dvd.mul_left (pow_dvd_pow_of_dvd ?_ _) _
  rw [PowerSeries.X_dvd_iff]
  exact level_pi_constantCoeff_zero (W := W) i

theorem levelExpansion_gamma
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (i : ZMod n) (x : ↥(W.N T))
    (hx : W.γD T W.gam (x : W.DD T) ∈ W.N T) (k : ℤ) :
    Lb.levB T i 1 ⟨W.γD T W.gam (x : W.DD T), hx⟩ k =
      (algebraMap O LL (W.χΓ W.gam : O)) ^ k • Lb.levB T i 1 x k := by
  refine levB_Γ T hT W.gam i 1 1 0 1 (by simp) ?_ (by simp) x hx k
  rw [Nat.cast_one, W.gam_gen]
  simp

theorem expansion_at_one
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (hs1 : W.s = 1) (hp2 : PD.p ≠ 2) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (T : LocLat G Qp LL O)
    (hT : IsCrys PD T.ρ) (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
    (i : ZMod n) (x y : ↥(W.N T)) (M : ℕ) (hx : W.γD T W.gam (x : W.DD T) ∈ W.N T)
    (hxy : W.γD T W.gam (x : W.DD T) - (x : W.DD T) = W.π₀ ^ M • (y : W.DD T))
    (k : ℤ) (hk0 : 0 < k) (hk : k < (((PD.p - 1) * M : ℕ) : ℤ)) : Lb.levB T i 1 x k = 0 := by
  have hsub : (⟨W.γD T W.gam (x : W.DD T), hx⟩ : ↥(W.N T)) - x = W.π₀ ^ M • y := Subtype.ext (by
    rw [Submodule.coe_sub, Submodule.coe_smul]
    exact hxy)
  have hz : Lb.levB T i 1 (W.π₀ ^ M • y) k = 0 := by
    rw [levelExpansion_smul levN_eq]
    refine cv_vanish _ _ (fun k hk => levelExpansion_neg_eq_zero levN_eq hs1 T hP4 i y k hk) ((PD.p - 1) * M) ?_ k hk
    rw [map_pow, pow_mul]
    exact pow_dvd_pow_of_dvd (level_pi0_X_pow_dvd hp9 i) M
  have he : Lb.levB T i 1 ⟨W.γD T W.gam (x : W.DD T), hx⟩ k - Lb.levB T i 1 x k = 0 := by
    rw [← Pi.sub_apply, ← map_sub, hsub]
    exact hz
  rw [levelExpansion_gamma levB_Γ T hT i x hx k] at he
  have he' : ((algebraMap O LL (W.χΓ W.gam : O)) ^ k - 1) • Lb.levB T i 1 x k = 0 := by
    rw [sub_smul, one_smul]
    exact he
  have hu : (algebraMap O LL (W.χΓ W.gam : O)) ^ k ≠ 1 := by
    refine ValuationPow.zpow_ne_one v PD.p PD.hp hp2 W.v_l _ ?_ k hk0.ne'
    rw [W.gam_gen, hs1]
    simp
  exact (smul_eq_zero.1 he').resolve_left (sub_ne_zero.2 hu)

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective =====
