module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Module.Pi
public import Mathlib.Algebra.Module.Submodule.Defs
public import Mathlib.Data.Finset.Defs
public import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
public import Mathlib.Algebra.BigOperators.Pi
public import Mathlib.Algebra.Module.Submodule.Basic
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnramifiedSubfieldLeCyclotomicExt
public import Mathlib.Data.Nat.Choose.Dvd
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
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Topology.Sheaves.Init
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Presheaf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SingleMemOfSupportSubset, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SingleMemOfSupportSubset =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SingleMemOfSupportSubset", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Module.Pi\npublic import Mathlib.Algebra.Module.Submodule.Defs\npublic import Mathlib.Data.Finset.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise\npublic import Mathlib.Algebra.BigOperators.Pi\npublic import Mathlib.Algebra.Module.Submodule.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations

namespace GlobalTheory.Per

theorem single_mem_of_support_subset {LL D : Type} [Field LL] [AddCommGroup D] [Module LL D]
    (u : LL) (Λ : Submodule LL (ℤ → D)) (hu : u ≠ 0) (hr : ∀ k : ℤ, k ≠ 0 → u ^ k ≠ 1)
    (hγ : ∀ x ∈ Λ, (fun k => u ^ k • x k) ∈ Λ) (S : Finset ℤ) :
    ∀ x ∈ Λ, (∀ k, k ∉ S → x k = 0) → ∀ k, Pi.single k (x k) ∈ Λ := by
  induction S using Finset.induction_on with
  | empty =>
    intro x _ hx k
    rw [hx k (by simp), Pi.single_zero]
    exact Λ.zero_mem
  | insert a S' ha ih =>
    intro x hxΛ hx

    have hne : ∀ k, k ≠ a → u ^ k - u ^ a ≠ 0 := by
      intro k hk h
      apply hr (k - a) (sub_ne_zero.mpr hk)
      rw [zpow_sub₀ hu, sub_eq_zero.mp h, div_self (zpow_ne_zero a hu)]
    have hyΛ : (fun k => u ^ k • x k) - u ^ a • x ∈ Λ := Λ.sub_mem (hγ x hxΛ) (Λ.smul_mem _ hxΛ)
    have hyv : ∀ k, ((fun k => u ^ k • x k) - u ^ a • x) k = (u ^ k - u ^ a) • x k := by
      intro k
      simp [sub_smul]
    have hy : ∀ k, k ∉ S' → ((fun k => u ^ k • x k) - u ^ a • x) k = 0 := by
      intro k hk
      rw [hyv]
      by_cases hka : k = a
      · rw [hka, sub_self, zero_smul]
      · rw [hx k (by simp [hka, hk]), smul_zero]
    have hoff : ∀ k, k ≠ a → Pi.single k (x k) ∈ Λ := by
      intro k hk
      have h1 := ih _ hyΛ hy k
      rw [hyv] at h1
      have e : Pi.single k (x k) =
          (u ^ k - u ^ a)⁻¹ • (Pi.single k ((u ^ k - u ^ a) • x k) : ℤ → D) := by
        rw [Pi.single_smul, smul_smul, inv_mul_cancel₀ (hne k hk), one_smul]
      rw [e]
      exact Λ.smul_mem _ h1
    intro k
    by_cases hka : k = a
    · rw [hka]
      have hsum : (∑ j ∈ S', Pi.single j (x j)) ∈ Λ :=
        Λ.sum_mem (fun j hj => hoff j (by rintro rfl; exact ha hj))
      have e : Pi.single a (x a) = x - ∑ j ∈ S', Pi.single j (x j) := by
        funext j
        rw [Pi.sub_apply, Finset.sum_apply, Finset.sum_pi_single]
        by_cases hjS : j ∈ S'
        · have hja : j ≠ a := by rintro rfl; exact ha hjS
          simp [hjS, hja]
        · by_cases hja : j = a
          · rw [hja]
            simp [ha]
          · simp [hjS, hja, hx j (by simp [hja, hjS])]
      rw [e]
      exact Λ.sub_mem hxΛ hsum
    · exact hoff k hka

end GlobalTheory.Per
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SingleMemOfSupportSubset =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnramifiedSubfieldLeCyclotomicExt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SingleMemOfSupportSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\npublic import Mathlib.Data.Nat.Choose.Dvd\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.GradedLat

section Val

variable {L : Type} [Field L] (v : AddValuation L (WithTop ℚ))

theorem val_nat_nonneg (n : ℕ) : 0 ≤ v (n : L) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Nat.cast_succ]
    exact v.map_le_add ih (by simp)

theorem val_int_nonneg (n : ℤ) : 0 ≤ v (n : L) := by
  obtain ⟨m, rfl | rfl⟩ := n.eq_nat_or_neg
  · simpa using val_nat_nonneg v m
  · simpa using val_nat_nonneg v m

theorem val_mul_ge {a b : L} {r t : WithTop ℚ} (ha : r ≤ v a) (hb : t ≤ v b) : r + t ≤ v (a * b) := by
  rw [v.map_mul]; exact add_le_add ha hb

theorem val_mul_ge_left {a b : L} {r : WithTop ℚ} (ha : r ≤ v a) (hb : 0 ≤ v b) : r ≤ v (a * b) := by
  simpa using val_mul_ge v ha hb

theorem val_mul_ge_right {a b : L} {r : WithTop ℚ} (ha : 0 ≤ v a) (hb : r ≤ v b) : r ≤ v (a * b) := by
  simpa using val_mul_ge v ha hb

theorem expand (y : L) (hy : 0 ≤ v y) (n : ℕ) :
    ∃ z : L, 0 ≤ v z ∧ (1 + y) ^ n - 1 = y * ((n : L) + (n.choose 2 : ℕ) * y + y * y * z) := by
  induction n with
  | zero => exact ⟨0, by simp, by simp⟩
  | succ n ih =>
    obtain ⟨z, hz0, hz⟩ := ih
    refine ⟨z + (n.choose 2 : ℕ) + y * z,
      v.map_le_add (v.map_le_add hz0 (val_nat_nonneg v _)) (val_mul_ge_left v hy hz0), ?_⟩
    have h : (1 + y) ^ n = 1 + y * ((n : L) + (n.choose 2 : ℕ) * y + y * y * z) := by
      rw [← hz]; ring
    have hc : (n + 1).choose 2 = n + n.choose 2 := by
      rw [Nat.choose_succ_succ' n 1, Nat.choose_one_right]
    rw [pow_succ, h, hc]
    push_cast
    ring

theorem pow_ne_one {l : ℕ} (hl : l.Prime) (hv : v (l : L) = 1) {s : ℕ} (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s)
    {u : L} (hu : v (u - 1) = (s : WithTop ℚ)) {n : ℕ} (hn : 0 < n) : u ^ n ≠ 1 := by
  intro hun
  have hfin : IsOfFinOrder u := isOfFinOrder_iff_pow_eq_one.2 ⟨n, hn, hun⟩
  have hu1 : u ≠ 1 := by
    rintro rfl
    rw [sub_self, v.map_zero] at hu
    exact WithTop.natCast_ne_top s hu.symm
  have ho : orderOf u ≠ 1 := fun h => hu1 (orderOf_eq_one_iff.1 h)
  obtain ⟨p, hp, m, hm⟩ := Nat.exists_prime_and_dvd ho
  have hpos : 0 < orderOf u := hfin.orderOf_pos
  have hm0 : 0 < m := Nat.pos_of_ne_zero (by rintro rfl; simp [hm] at hpos)
  have hx1 : u ^ m ≠ 1 := pow_ne_one_of_lt_orderOf hm0.ne' (by
    rw [hm]; exact lt_mul_of_one_lt_left hm0 hp.one_lt)
  have hxp : (u ^ m) ^ p = 1 := by rw [← pow_mul, mul_comm, ← hm, pow_orderOf_eq_one]
  have s1 : (1 : WithTop ℚ) ≤ (s : WithTop ℚ) := by exact_mod_cast hs
  have s0 : (0 : WithTop ℚ) ≤ (s : WithTop ℚ) := le_trans zero_le_one s1
  have hy : (s : WithTop ℚ) ≤ v (u ^ m - 1) := by
    obtain ⟨z, hz0, hz⟩ := expand v (u - 1) (hu ▸ s0) m
    rw [add_sub_cancel] at hz
    rw [hz]
    have h0 : 0 ≤ v (u - 1) := hu ▸ s0
    exact val_mul_ge_left v hu.ge (v.map_le_add (v.map_le_add (val_nat_nonneg v _)
      (val_mul_ge_left v (val_nat_nonneg v _) h0)) (val_mul_ge_left v (val_mul_ge_left v h0 h0) hz0))
  set y := u ^ m - 1 with hydef
  have hy0 : y ≠ 0 := sub_ne_zero.2 hx1
  obtain ⟨z, hz0, hz⟩ := expand v y (s0.trans hy) p
  have : 1 + y = u ^ m := by rw [hydef]; ring
  rw [this, hxp, sub_self] at hz
  have hz' : (p : L) = -((p.choose 2 : ℕ) * y + y * y * z) := by
    have := (mul_eq_zero.1 hz.symm).resolve_left hy0
    linear_combination this
  have y1 : (1 : WithTop ℚ) ≤ v y := s1.trans hy
  have hB : (1 + 1 : WithTop ℚ) ≤ v (y * y * z) := val_mul_ge_left v (val_mul_ge v y1 y1) hz0
  have lt12 : (1 : WithTop ℚ) < 1 + 1 := by
    exact_mod_cast (by norm_num : (1 : ℚ) < 1 + 1)
  by_cases hpl : p = l
  · subst hpl
    have hA : (1 + 1 : WithTop ℚ) ≤ v (((p.choose 2 : ℕ) : L) * y) := by
      by_cases h : p = 2
      · have : (1 + 1 : WithTop ℚ) ≤ (s : WithTop ℚ) := by exact_mod_cast h2 h
        exact val_mul_ge_right v (val_nat_nonneg v _) (this.trans hy)
      · obtain ⟨c, hc⟩ := hp.dvd_choose_self (k := 2) (by norm_num)
          (lt_of_le_of_ne hp.two_le (Ne.symm h))
        rw [hc, Nat.cast_mul]
        exact val_mul_ge v (val_mul_ge_left v hv.ge (val_nat_nonneg v _)) y1
    have := v.map_le_add hA hB
    rw [← v.map_neg, ← hz', hv] at this
    exact absurd this (not_le.2 lt12)
  · have hA : (1 : WithTop ℚ) ≤ v (((p.choose 2 : ℕ) : L) * y) :=
      val_mul_ge_right v (val_nat_nonneg v _) y1
    have hP := v.map_le_add hA (lt12.le.trans hB)
    rw [← v.map_neg, ← hz'] at hP
    have hcop : IsCoprime (p : ℤ) (l : ℤ) :=
      Nat.isCoprime_iff_coprime.2 ((Nat.coprime_primes hp hl).2 hpl)
    obtain ⟨a, b, hab⟩ := hcop
    have hab' : (a : L) * p + (b : L) * l = 1 := by exact_mod_cast congrArg (Int.cast : ℤ → L) hab
    have := v.map_le_add (val_mul_ge_right v (val_int_nonneg v a) hP)
      (val_mul_ge_right v (val_int_nonneg v b) hv.ge)
    rw [hab', v.map_one] at this
    exact absurd this (not_le.2 zero_lt_one)

theorem ne_zero_of_val {s : ℕ} (hs : 1 ≤ s) {u : L} (hu : v (u - 1) = (s : WithTop ℚ)) : u ≠ 0 := by
  rintro rfl
  rw [zero_sub, v.map_neg, v.map_one] at hu
  have : (0 : ℕ) = s := by exact_mod_cast hu
  omega

theorem zpow_ne_one {l : ℕ} (hl : l.Prime) (hv : v (l : L) = 1) {s : ℕ} (hs : 1 ≤ s) (h2 : l = 2 → 2 ≤ s)
    {u : L} (hu : v (u - 1) = (s : WithTop ℚ)) (k : ℤ) (hk : k ≠ 0) : u ^ k ≠ 1 := by
  obtain ⟨m, rfl | rfl⟩ := k.eq_nat_or_neg
  · rw [zpow_natCast]; exact pow_ne_one v hl hv hs h2 hu (by omega)
  · rw [zpow_neg, zpow_natCast, Ne, inv_eq_one]; exact pow_ne_one v hl hv hs h2 hu (by omega)

end Val

section Series

variable {L M : Type} [Field L] [AddCommGroup M] [Module L M]

theorem graded_of_full (u : L) (D : Submodule L M) (Λ : Submodule L (ℤ → M)) (hu : u ≠ 0)
    (hr : ∀ k : ℤ, k ≠ 0 → u ^ k ≠ 1) (hF : Full D Λ)
    (hc : ∀ f ∈ Λ, (∀ k, f k ∈ D) ∧ ∃ m : ℤ, ∀ k < m, f k = 0)
    (hγ : ∀ x ∈ Λ, (fun k => u ^ k • x k) ∈ Λ) : Graded Λ := by
  classical
  obtain ⟨m, hm⟩ := hF
  have hval : ∀ (x : ℤ → M) (a : ℤ) k, (∑ i ∈ Finset.Ico a m, (Pi.single i (x i) : ℤ → M)) k
      = if k ∈ Finset.Ico a m then x k else 0 := by
    intro x a k
    simp only [Finset.sum_apply, Pi.single_apply]
    rw [Finset.sum_ite_eq]
  have tail : ∀ (x : ℤ → M) (a : ℤ), (∀ k, x k ∈ D) → (∀ k < a, x k = 0) →
      x - ∑ i ∈ Finset.Ico a m, (Pi.single i (x i) : ℤ → M) ∈ Λ := by
    intro x a hD hx
    apply hm
    · intro k
      rw [Pi.sub_apply, hval]
      split_ifs
      · simp
      · simpa using hD k
    · intro k hk
      rw [Pi.sub_apply, hval]
      by_cases h : k < a
      · simp [hx k h]
      · have : k ∈ Finset.Ico a m := Finset.mem_Ico.mpr ⟨not_lt.mp h, hk⟩
        simp [this]
  intro x
  constructor
  · intro hx
    obtain ⟨hD, a, ha⟩ := hc x hx
    refine ⟨⟨a, ha⟩, fun k => ?_⟩
    have h1 : ∑ i ∈ Finset.Ico a m, (Pi.single i (x i) : ℤ → M) ∈ Λ := by
      have := Λ.sub_mem hx (tail x a hD ha)
      simpa using this
    have h2 := GlobalTheory.Per.single_mem_of_support_subset u Λ hu hr hγ (Finset.Ico a m) _ h1
      (fun k hk => by rw [hval, if_neg hk]) k
    by_cases hk : k ∈ Finset.Ico a (m : ℤ)
    · rwa [hval, if_pos hk] at h2
    · by_cases hk' : k < a
      · rw [ha k hk']; simp
      · apply hm
        · intro j
          by_cases hjk : j = k
          · subst hjk; simpa using hD j
          · simp [Pi.single_eq_of_ne hjk]
        · intro i hi
          have : i ≠ k := by
            rintro rfl
            exact hk (Finset.mem_Ico.mpr ⟨not_lt.mp hk', hi⟩)
          simp [this]
  · rintro ⟨⟨a, ha⟩, h2⟩
    have hD : ∀ k, x k ∈ D := fun k => by simpa using (hc _ (h2 k)).1 k
    have := Λ.add_mem (tail x a hD ha) (Λ.sum_mem (t := Finset.Ico a m) fun i _ => h2 i)
    simpa using this

theorem latSpan_stable {ι : Type} (u : L) (hu : u ≠ 0) (e : ι → ℤ → M)
    (hs : ∀ x, ∃ m : ℤ, ∀ k < m, e x k = 0) (he : ∀ x, ∃ y, ∀ k, e y k = u ^ k • e x k) :
    ∀ f ∈ latSpan (LL := L) e, (fun k => u ^ k • f k) ∈ latSpan (LL := L) e := by
  intro f hf
  induction hf using Submodule.span_induction with
  | mem f hf =>
    obtain ⟨p, x, rfl⟩ := hf
    obtain ⟨y, hy⟩ := he x
    obtain ⟨m, hm⟩ := hs x
    refine Submodule.subset_span ⟨PowerSeries.rescale u p, y, ?_⟩
    funext k
    unfold conv
    rw [smul_finsum' _ (Model.conv_finite p hm k)]
    refine finsum_congr fun j => ?_
    rw [hy, PowerSeries.coeff_rescale, smul_smul, smul_smul]
    congr 1
    rw [zpow_sub₀ hu, zpow_natCast]
    field_simp
  | zero =>
    convert (latSpan (LL := L) e).zero_mem using 1
    funext k; simp
  | add f g _ _ hf hg =>
    have := (latSpan (LL := L) e).add_mem hf hg
    convert this using 1
    funext k; simp
  | smul c f _ hf =>
    have := (latSpan (LL := L) e).smul_mem c hf
    convert this using 1
    funext k; simp [smul_comm c]

end Series



theorem ex_gam {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {H : LocHW l P}
    {F : LocFon l P AI H} (C : LocCmpT l P AI H F) {K : FinExt l} {s : ℕ} {LL : FinExt l}
    (h : Good K s LL) (T : Lt K LL) (hT : IsCrys (P.PD K) T.ρ) (i : Let K) (ζ : ↥LL.1)
    (hζ : ζ ^ (l ^ s) = 1) (x : ↥((H.W K s LL h).N T)) (k : ℤ) :
    ex C h T i ζ ⟨_, (H.W K s LL h).N_Γ T (H.W K s LL h).gam x x.2⟩ k =
      (algebraMap ↥(OL LL) ↥LL.1 ((H.W K s LL h).χΓ (H.W K s LL h).gam : ↥(OL LL))) ^ k •
        ex C h T i ζ x k := by
  have hg := (H.W K s LL h).gam_gen
  rw [H.W_s] at hg
  obtain ⟨j, hj, hord⟩ := (Nat.dvd_prime_pow (Fact.out : l.Prime)).1 (orderOf_dvd_of_pow_eq_one hζ)
  have hjs : (j : WithTop ℚ) ≤ (s : WithTop ℚ) := by exact_mod_cast hj
  exact (C.C K s LL h).tie.levB_Γ T hT (H.W K s LL h).gam i ζ ζ j 1
    (by rw [P.PD_p, ← hord]; exact IsPrimitiveRoot.orderOf ζ)
    (by rw [Nat.cast_one]; exact hjs.trans hg.ge) (pow_one ζ).symm x
    ((H.W K s LL h).N_Γ T (H.W K s LL h).gam x x.2) k



theorem graded_Lat {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {H : LocHW l P}
    {F : LocFon l P AI H} (C : LocCmpT l P AI H F) {K : FinExt l} {s : ℕ} {LL : FinExt l}
    (h : Good K s LL) (T : Lt K LL) (hT : IsCrys (P.PD K) T.ρ) (i : Let K) (ζ : ↥LL.1)
    (hζ : ζ ^ (l ^ s) = 1) (hF : Full (Di H h T i) (Lat C h T i ζ)) : Graded (Lat C h T i ζ) := by
  have hg := (H.W K s LL h).gam_gen
  have hv := (H.W K s LL h).v_l
  have h1 := (H.W K s LL h).s_pos
  have h2 := (H.W K s LL h).s_two
  rw [P.PD_p] at hv h2
  have hu := ne_zero_of_val _ h1 hg
  exact graded_of_full _ _ _ hu (zpow_ne_one _ Fact.out hv h1 h2 hg) hF
    (Model.Lat_coeff C h T i ζ)
    (latSpan_stable _ hu _ (fun x => (C.C K s LL h).tie.levB_supp T i ζ x)
      (fun x => ⟨_, ex_gam C h T hT i ζ hζ x⟩))

theorem graded_of_level_le : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (HW : HWOf loc) (F : FonOf loc locA HW) (Cm : CmpOf loc locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; let C := Cm l; ∀ T : Lt K LL, IsCrys ((loc l).PD K) T.ρ → ∀ (i : Let K) (ζ : ↥LL.1), ζ ^ (l ^ s) = 1 → Full (Di (HW l) h T i) (Lat C h T i ζ) → Graded (Lat C h T i ζ) := by
  intro loc locA HW F Cm l _ K s LL h W E C T hT i ζ hζ hF
  exact graded_Lat C h T hT i ζ hζ hF

end GlobalTheory.NL.GradedLat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe =====
