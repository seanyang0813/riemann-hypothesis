module

public import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKur
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKurOmega
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValA
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValB
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Interface
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Norm1728EqOneOfFiveLe, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.G2EqZeroOfHasCMByThree, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.NormWeierstrassCoeffSmallJ, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedModel, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedStatus

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Norm1728EqOneOfFiveLe =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Norm1728EqOneOfFiveLe", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKur\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKurOmega\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValA\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem valDiv2_even_of_pows {l t : ℝ} (hl : 1 < l) {a b : ℤ} {n : ℕ} (hn : ¬ 2 ∣ n)
    (h4 : t ^ 4 = l ^ b) (h1 : t ^ (2 * n) * l ^ a = 1) : ∃ m : ℤ, b = 2 * m := by
  have hl0 : l ≠ 0 := by positivity
  have e1 : l ^ (b * n + 2 * a) = 1 := by
    rw [zpow_add₀ hl0, zpow_mul, ← h4, zpow_natCast, mul_comm 2 a, zpow_mul]
    have h5 : (t ^ 4) ^ n = (t ^ (2 * n)) ^ 2 := by ring
    have h6 : (l ^ a) ^ (2 : ℤ) = (l ^ a) ^ 2 := by norm_cast
    rw [h5, h6, ← mul_pow, h1, one_pow]
  have e2 : b * n + 2 * a = 0 := (zpow_eq_one_iff_right₀ (by positivity) hl.ne').1 e1
  obtain ⟨k, hk⟩ : Odd n := Nat.not_even_iff_odd.1 (fun h => hn (even_iff_two_dvd.1 h))
  subst hk
  push_cast at e2
  exact ⟨-a - b * k, by linarith⟩

theorem norm_1728_eq_one_of_five_le (l : ℕ) [Fact l.Prime] (h5 : 5 ≤ l) : ‖(1728 : ℂ_[l])‖ = 1 := by
  have hl : l.Prime := Fact.out
  have h : ¬ l ∣ 1728 := by
    intro h
    have h12 : l ∣ 12 := hl.dvd_of_dvd_pow (show l ∣ 12 ^ 3 by norm_num; exact h)
    have := Nat.le_of_dvd (by norm_num) h12
    interval_cases l <;> first | omega | exact absurd hl (by norm_num)
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem valDiv2_norm_27 (l : ℕ) [Fact l.Prime] (h5 : 5 ≤ l) : ‖(27 : ℂ_[l])‖ = 1 := by
  have hl : l.Prime := Fact.out
  have h : ¬ l ∣ 27 := by
    intro h
    have h12 : l ∣ 3 := hl.dvd_of_dvd_pow (show l ∣ 3 ^ 3 by norm_num; exact h)
    have := Nat.le_of_dvd (by norm_num) h12
    omega
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem valDiv2 (d : ℕ) (L : PeriodPair) (hsq : Squarefree d) (hd4 : d % 4 = 3) (hCM : HasCMBy d L) (l : ℕ)
    [Fact l.Prime] (h5 : 5 ≤ l) (hld : ¬ l ∣ d) (ι : ℂ ≃+* ℂ_[l]) (hJ : ι (jInv L) ∈ MaximalUnramifiedExtension l)
    (hJ1 : ‖ι (jInv L)‖ ≤ 1) (h0 : ι (jInv L) ≠ 1728) :
    ∃ m : ℤ, ‖ι (jInv L) - 1728‖ = (l : ℝ) ^ (2 * m) := by
  have hl : l.Prime := Fact.out
  have hl1 : (1 : ℝ) < l := by exact_mod_cast hl.one_lt
  have n1728 := norm_1728_eq_one_of_five_le l h5
  have n27 := valDiv2_norm_27 l h5
  obtain ⟨J, hJdef⟩ : ∃ J, J = ι (jInv L) := ⟨_, rfl⟩
  rw [← hJdef] at hJ hJ1 h0 ⊢
  have hw0 : J - 1728 ≠ 0 := sub_ne_zero.2 h0
  have m1728 : (1728 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
    have := natCast_mem (MaximalUnramifiedExtension l) 1728
    exact_mod_cast this
  have m27 : (27 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
    have := natCast_mem (MaximalUnramifiedExtension l) 27
    exact_mod_cast this
  have hwK : J - 1728 ∈ MaximalUnramifiedExtension l := sub_mem hJ m1728
  obtain ⟨b, hb⟩ := kur_val l hwK hw0
  have hwle : ‖J - 1728‖ ≤ 1 := by
    rw [sub_eq_add_neg]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hJ1 (by rw [norm_neg, n1728]))
  rcases hwle.eq_or_lt with h1 | hlt
  · exact ⟨0, by simpa using h1⟩
  have nJ : ‖J‖ = 1 := by
    have h : J = (J - 1728) + 1728 := by ring
    rw [h, IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (by rw [n1728]; exact hlt.ne), n1728,
      max_eq_right hlt.le]
  have hJ0 : J ≠ 0 := by
    intro h
    rw [h, norm_zero] at nJ
    exact zero_ne_one nJ
  have hj0 : jInv L ≠ 0 := fun h => hJ0 (by rw [hJdef, h, map_zero])
  have hj1 : jInv L ≠ 1728 := fun h => h0 (by rw [hJdef, h, map_ofNat])
  have h2 : L.g₂ ≠ 0 := fun h => hj0 ((jInv_eq_zero_iff L).2 h)
  have h3 : L.g₃ ≠ 0 := fun h => hj1 ((jInv_eq_iff L).2 h)
  obtain ⟨L0, hCM0, -, hg2, hg3⟩ := exists_cm_lattice_equal_invariants d L hCM h2 h3
  obtain ⟨c, hc⟩ : ∃ c : ℂ_[l], c = 27 * J / (J - 1728) := ⟨_, rfl⟩
  have ig2 : ι L0.g₂ = c := by
    rw [hg2, hc, hJdef, map_div₀, map_mul, map_sub, map_ofNat, map_ofNat]
  have ig3 : ι L0.g₃ = c := by
    rw [hg3, hc, hJdef, map_div₀, map_mul, map_sub, map_ofNat, map_ofNat]
  have mc : c ∈ MaximalUnramifiedExtension l := by
    rw [hc]
    exact div_mem (mul_mem m27 hJ) hwK
  obtain ⟨x, hx⟩ : ∃ x : ℝ, x = ‖J - 1728‖ := ⟨_, rfl⟩
  rw [← hx] at hb hlt ⊢
  have hx0 : 0 < x := by rw [hx]; exact norm_pos_iff.2 hw0
  have nc : ‖c‖ = x⁻¹ := by
    rw [hc, norm_div, norm_mul, n27, nJ, ← hx]
    simp
  have iD : ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2) = c ^ 2 * (27 * 1728 / (J - 1728)) := by
    rw [map_sub, map_mul, map_pow, map_pow, ig2, ig3, map_ofNat, hc]
    field_simp
    ring
  have nD : ‖ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2)‖ = (x⁻¹) ^ 3 := by
    rw [iD, norm_mul, norm_pow, nc, norm_div, norm_mul, n27, n1728, ← hx]
    ring
  have hD0 : ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2) ≠ 0 := norm_ne_zero_iff.1 (by rw [nD]; positivity)
  obtain ⟨μ, hμ'⟩ := IsAlgClosed.exists_pow_nat_eq (ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2))⁻¹
    (n := 12) (by norm_num)
  have hμ : μ ^ 12 * ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2) = 1 := by
    rw [hμ']
    exact inv_mul_cancel₀ hD0
  obtain ⟨t, ht⟩ : ∃ t : ℝ, t = ‖μ‖ := ⟨_, rfl⟩
  have ht0 : 0 ≤ t := by rw [ht]; exact norm_nonneg _
  have ht12 : (t ^ 4) ^ 3 = x ^ 3 := by
    have h := congrArg norm hμ
    rw [norm_mul, norm_pow, nD, norm_one, ← ht] at h
    field_simp at h
    rw [← h]
    ring
  have ht4 : t ^ 4 = x := (pow_left_inj₀ (by positivity) hx0.le (by norm_num)).1 ht12
  have ht1 : t < 1 := by
    by_contra h
    have : 1 ≤ t ^ 4 := one_le_pow₀ (not_lt.1 h)
    linarith
  have n4 : ‖μ ^ 4 * ι L0.g₂‖ = 1 := by
    rw [ig2, norm_mul, norm_pow, nc, ← ht, ht4]
    exact mul_inv_cancel₀ hx0.ne'
  have n6 : ‖μ ^ 6 * ι L0.g₃‖ = t ^ 2 := by
    rw [ig3, norm_mul, norm_pow, nc, ← ht]
    have : t ^ 6 = x * t ^ 2 := by rw [← ht4]; ring
    rw [this]
    field_simp
  have n6lt : ‖μ ^ 6 * ι L0.g₃‖ < 1 := by
    rw [n6]
    exact pow_lt_one₀ ht0 ht1 (by norm_num)
  obtain ⟨N, T, hlN, h2N, h2T, hT, hk⟩ := kerProd d L0 hsq hd4 hCM0 l hl h5 hld 2 (Or.inl rfl)
  have hP : ι (∏ z ∈ T, L0.weierstrassP z) ∈ MaximalUnramifiedExtension l := by
    have := hk ((MaximalUnramifiedExtension l).comap (ι : ℂ →+* ℂ_[l])) (by rw [Subfield.mem_comap]; simpa [ig2] using mc)
      (by rw [Subfield.mem_comap]; simpa [ig3] using mc)
      (by rw [Subfield.mem_comap]; exact omega_mem_kur d hsq hd4 l hld ι)
    rw [Subfield.mem_comap] at this
    exact this
  have hU := unit_prod L0 l ι h5 μ hμ n4.le n6lt.le 2 N (Or.inr ⟨rfl, n6lt⟩) hlN h2N T hT
  have hP0 : ι (∏ z ∈ T, L0.weierstrassP z) ≠ 0 := by
    intro h
    rw [h, norm_zero, mul_zero] at hU
    exact zero_ne_one hU
  obtain ⟨a, ha⟩ := kur_val l hP hP0
  rw [ha, ← ht] at hU
  obtain ⟨m, hm⟩ := valDiv2_even_of_pows hl1 h2T (ht4.trans hb) hU
  exact ⟨m, by rw [hb, hm]⟩

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Norm1728EqOneOfFiveLe =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.G2EqZeroOfHasCMByThree =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.G2EqZeroOfHasCMByThree", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem omegaK_three_sq : omegaK 3 ^ 2 = omegaK 3 - 1 := by
  have h : (((Real.sqrt (3 : ℕ) : ℝ) : ℂ)) ^ 2 = 3 := by
    rw [← Complex.ofReal_pow, Real.sq_sqrt (by positivity)]
    simp
  unfold omegaK
  linear_combination (Complex.I ^ 2 / 4) * h + (3 / 4 : ℂ) * Complex.I_sq

def mulOmegaEquiv (L : PeriodPair) (hCM : HasCMBy 3 L) : L.lattice ≃ L.lattice where
  toFun l := ⟨omegaK 3 * l, hCM l l.2⟩
  invFun l := ⟨(l : ℂ) - omegaK 3 * l, L.lattice.sub_mem l.2 (hCM l l.2)⟩
  left_inv l := by
    apply Subtype.ext
    show omegaK 3 * (l : ℂ) - omegaK 3 * (omegaK 3 * l) = l
    linear_combination (-(l : ℂ)) * omegaK_three_sq
  right_inv l := by
    apply Subtype.ext
    show omegaK 3 * ((l : ℂ) - omegaK 3 * l) = l
    linear_combination (-(l : ℂ)) * omegaK_three_sq

theorem g2_eq_zero_of_hasCMBy_three (L : PeriodPair) (hCM : HasCMBy 3 L) : L.g₂ = 0 := by
  have hsq := omegaK_three_sq
  have h4 : omegaK 3 ^ 4 = -omegaK 3 := by
    linear_combination (omegaK 3 ^ 2 + omegaK 3) * hsq
  have h0 : omegaK 3 ≠ 0 := by
    intro h
    rw [h] at hsq
    norm_num at hsq
  have h1 : omegaK 3 ≠ -1 := by
    intro h
    rw [h] at hsq
    norm_num at hsq
  have key : L.G 4 = (omegaK 3 ^ 4)⁻¹ * L.G 4 := by
    conv_lhs => rw [PeriodPair.G, ← (mulOmegaEquiv L hCM).tsum_eq]
    rw [PeriodPair.G, ← tsum_mul_left]
    refine tsum_congr fun l => ?_
    show ((omegaK 3 * (l : ℂ)) ^ 4)⁻¹ = _
    rw [mul_pow, mul_inv]
  have hG : L.G 4 = 0 := by
    have h40 : omegaK 3 ^ 4 ≠ 0 := pow_ne_zero _ h0
    have h2 : omegaK 3 ^ 4 * L.G 4 = L.G 4 := by
      conv_lhs => rw [key]
      rw [mul_inv_cancel_left₀ h40]
    rw [h4] at h2
    have h3 : (omegaK 3 + 1) * L.G 4 = 0 := by linear_combination -h2
    rcases mul_eq_zero.mp h3 with h | h
    · exact absurd (by linear_combination h) h1
    · exact h
  rw [PeriodPair.g₂, hG, mul_zero]

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.G2EqZeroOfHasCMByThree =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.NormWeierstrassCoeffSmallJ =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.NormWeierstrassCoeffSmallJ", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.G2EqZeroOfHasCMByThree\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKur\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKurOmega\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValA\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedValB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem three_dvd_of_norm_relations (l x : ℝ) (hl : 1 < l) (hx : 0 < x) (n a : ℤ) (t : ℕ)
    (h1 : x ^ 12 * (l ^ n) ^ 2 = 1) (h2 : x ^ (2 * t) * l ^ a = 1) (ht : ¬ 3 ∣ t) :
    ∃ m : ℤ, n = 3 * m := by
  have hl0 : 0 < l := by linarith
  have e1 : x ^ (12 * t) * l ^ (2 * n * t) = 1 := by
    have : (x ^ 12 * (l ^ n) ^ 2) ^ t = 1 := by rw [h1, one_pow]
    rw [mul_pow, ← pow_mul] at this
    rw [← this]
    congr 1
    rw [← zpow_natCast (l ^ n) 2, ← zpow_mul, ← zpow_natCast _ t, ← zpow_mul]
    congr 1
    push_cast
    ring
  have e2 : x ^ (12 * t) * l ^ (6 * a) = 1 := by
    have : (x ^ (2 * t) * l ^ a) ^ 6 = 1 := by rw [h2, one_pow]
    rw [mul_pow, ← pow_mul] at this
    rw [← this]
    congr 1
    · congr 1
      ring
    · rw [← zpow_natCast (l ^ a) 6, ← zpow_mul]
      congr 1
      push_cast
      ring
  have hx0 : x ^ (12 * t) ≠ 0 := (pow_pos hx _).ne'
  have e3 : l ^ (2 * n * t) = l ^ (6 * a) := mul_left_cancel₀ hx0 (e1.trans e2.symm)
  have e4 : 2 * n * t = 6 * a := zpow_right_injective₀ hl0 hl.ne' e3
  have e5 : (3 : ℤ) ∣ n * t := ⟨a, by linarith⟩
  have hp : Prime (3 : ℤ) := Int.prime_three
  rcases hp.dvd_or_dvd e5 with h | h
  · exact h
  · exact absurd (by exact_mod_cast h) ht

section Norms

variable (l : ℕ) [Fact l.Prime]

theorem norm_twentySeven_eq_one_of_five_le (h5 : 5 ≤ l) : ‖(27 : ℂ_[l])‖ = 1 := by
  have h : ¬ l ∣ 27 := by
    intro h
    have h3 : l ∣ 3 := (Fact.out : l.Prime).dvd_of_dvd_pow (show l ∣ 3 ^ 3 by simpa using h)
    have := Nat.le_of_dvd (by norm_num) h3
    omega
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem norm_1728_eq_one_of_five_le' (h5 : 5 ≤ l) : ‖(1728 : ℂ_[l])‖ = 1 := by
  have h : ¬ l ∣ 1728 := by
    intro h
    have h' : l ∣ 2 ^ 6 * 3 ^ 3 := by simpa using h
    rcases (Fact.out : l.Prime).dvd_mul.1 h' with h2 | h3
    · have := Nat.le_of_dvd (by norm_num) ((Fact.out : l.Prime).dvd_of_dvd_pow h2)
      omega
    · have := Nat.le_of_dvd (by norm_num) ((Fact.out : l.Prime).dvd_of_dvd_pow h3)
      omega
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem norm_sub_1728_eq_one_of_norm_lt_one (h5 : 5 ≤ l) {J : ℂ_[l]} (hJ : ‖J‖ < 1) : ‖J - 1728‖ = 1 := by
  have h := norm_1728_eq_one_of_five_le' l h5
  have hne : ‖J‖ ≠ ‖-(1728 : ℂ_[l])‖ := by rw [norm_neg, h]; exact hJ.ne
  rw [sub_eq_add_neg, IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm hne, norm_neg, h]
  exact max_eq_right hJ.le

theorem norm_weierstrass_coeff_small_j (h5 : 5 ≤ l) {J : ℂ_[l]} (hJ : ‖J‖ < 1) :
    ‖27 * J / (J - 1728)‖ = ‖J‖ ∧
      ‖(27 * J / (J - 1728)) ^ 3 - 27 * (27 * J / (J - 1728)) ^ 2‖ = ‖J‖ ^ 2 := by
  have h1 := norm_sub_1728_eq_one_of_norm_lt_one l h5 hJ
  have h27 := norm_twentySeven_eq_one_of_five_le l h5
  have h1728 := norm_1728_eq_one_of_five_le' l h5
  have hne : J - 1728 ≠ 0 := by
    intro h
    rw [h, norm_zero] at h1
    exact zero_ne_one h1
  have hc : ‖27 * J / (J - 1728)‖ = ‖J‖ := by
    rw [norm_div, norm_mul, h1, h27, one_mul, div_one]
  refine ⟨hc, ?_⟩
  have e : (27 * J / (J - 1728)) ^ 3 - 27 * (27 * J / (J - 1728)) ^ 2
      = (27 * J / (J - 1728)) ^ 2 * (27 * 1728 / (J - 1728)) := by
    field_simp
    ring
  rw [e, norm_mul, norm_pow, hc, norm_div, norm_mul, h1, h27, h1728]
  norm_num

end Norms

theorem valDiv3 (d : ℕ) (L : PeriodPair) (hsq : Squarefree d) (hd4 : d % 4 = 3) (hCM : HasCMBy d L) (l : ℕ)
    [Fact l.Prime] (h5 : 5 ≤ l) (hld : ¬ l ∣ d) (ι : ℂ ≃+* ℂ_[l]) (hJ : ι (jInv L) ∈ MaximalUnramifiedExtension l)
    (hJ1 : ‖ι (jInv L)‖ ≤ 1) (h0 : ι (jInv L) ≠ 0) :
    ∃ m : ℤ, ‖ι (jInv L)‖ = (l : ℝ) ^ (3 * m) := by
  rcases hJ1.eq_or_lt with hJ1 | hJ1
  · exact ⟨0, by simpa using hJ1⟩
  have hj0 : jInv L ≠ 0 := fun h => h0 (by rw [h, map_zero])
  have hg2 : L.g₂ ≠ 0 := fun h => hj0 ((jInv_eq_zero_iff L).2 h)
  have hd3 : d ≠ 3 := by
    rintro rfl
    exact hg2 (g2_eq_zero_of_hasCMBy_three L hCM)
  have hsub := norm_sub_1728_eq_one_of_norm_lt_one l h5 hJ1
  have i27 : ι 27 = 27 := map_ofNat ι 27
  have i1728 : ι 1728 = 1728 := map_ofNat ι 1728
  have hg3 : L.g₃ ≠ 0 := by
    intro h
    have h' := (jInv_eq_iff L).2 h
    rw [h', i1728, sub_self, norm_zero] at hsub
    exact zero_ne_one hsub
  obtain ⟨L0, hCM0, hj, hc2, hc3⟩ := exists_cm_lattice_equal_invariants d L hCM hg2 hg3
  set J : ℂ_[l] := ι (jInv L) with hJdef
  have hι2 : ι L0.g₂ = 27 * J / (J - 1728) := by
    rw [hc2]; simp [hJdef, i27, i1728]
  have hι3 : ι L0.g₃ = 27 * J / (J - 1728) := by
    rw [hc3]; simp [hJdef, i27, i1728]
  obtain ⟨hnc, hnD⟩ := norm_weierstrass_coeff_small_j l h5 hJ1
  set c : ℂ_[l] := 27 * J / (J - 1728) with hcdef
  have hιD : ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2) = c ^ 3 - 27 * c ^ 2 := by
    simp [hι2, hι3, i27]
  have hJpos : 0 < ‖J‖ := norm_pos_iff.2 h0
  have hD0 : c ^ 3 - 27 * c ^ 2 ≠ 0 := by
    intro h
    rw [h, norm_zero] at hnD
    exact (pow_pos hJpos 2).ne hnD
  obtain ⟨μ, hμ⟩ := IsAlgClosed.exists_pow_nat_eq (c ^ 3 - 27 * c ^ 2)⁻¹ (n := 12) (by norm_num)
  have hμ1 : μ ^ 12 * ι (L0.g₂ ^ 3 - 27 * L0.g₃ ^ 2) = 1 := by
    rw [hιD, hμ, inv_mul_cancel₀ hD0]
  have hμn : ‖μ‖ ^ 12 * ‖J‖ ^ 2 = 1 := by
    have := congrArg norm hμ1
    rwa [hιD, norm_mul, norm_pow, hnD, norm_one] at this
  have hμpos : 0 < ‖μ‖ := by
    rcases (norm_nonneg μ).eq_or_lt with h | h
    · rw [← h] at hμn
      norm_num at hμn
    · exact h
  have hn4 : ‖μ ^ 4 * ι L0.g₂‖ < 1 := by
    have e : ‖μ ^ 4 * ι L0.g₂‖ ^ 3 = ‖J‖ := by
      rw [hι2, norm_mul, norm_pow, hnc]
      calc (‖μ‖ ^ 4 * ‖J‖) ^ 3 = (‖μ‖ ^ 12 * ‖J‖ ^ 2) * ‖J‖ := by ring
        _ = ‖J‖ := by rw [hμn, one_mul]
    by_contra hcon
    have : 1 ≤ ‖μ ^ 4 * ι L0.g₂‖ ^ 3 := one_le_pow₀ (not_lt.1 hcon)
    rw [e] at this
    exact absurd hJ1 (not_lt.2 this)
  have hn6 : ‖μ ^ 6 * ι L0.g₃‖ = 1 := by
    have e : ‖μ ^ 6 * ι L0.g₃‖ ^ 2 = 1 := by
      rw [hι3, norm_mul, norm_pow, hnc]
      calc (‖μ‖ ^ 6 * ‖J‖) ^ 2 = ‖μ‖ ^ 12 * ‖J‖ ^ 2 := by ring
        _ = 1 := hμn
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by norm_num)).1 e
  obtain ⟨N, T, hlN, h3N, h3T, hT, hk⟩ :=
    kerProd d L0 hsq hd4 hCM0 l Fact.out h5 hld 3 (Or.inr ⟨rfl, hd3⟩)
  have hunit := unit_prod L0 l ι h5 μ hμ1 hn4.le hn6.le 3 N (Or.inl ⟨rfl, hn4⟩) hlN h3N T hT
  have hcK : c ∈ MaximalUnramifiedExtension l := by
    have h27 : (27 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
      exact_mod_cast natCast_mem (MaximalUnramifiedExtension l) 27
    have h1728 : (1728 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
      exact_mod_cast natCast_mem (MaximalUnramifiedExtension l) 1728
    exact div_mem (mul_mem h27 hJ) (sub_mem hJ h1728)
  have hP : ι (∏ z ∈ T, L0.weierstrassP z) ∈ MaximalUnramifiedExtension l := by
    have := hk ((MaximalUnramifiedExtension l).comap (ι : ℂ →+* ℂ_[l]))
      (by rw [Subfield.mem_comap]; simpa [hι2] using hcK)
      (by rw [Subfield.mem_comap]; simpa [hι3] using hcK)
      (by rw [Subfield.mem_comap]; exact omega_mem_kur d hsq hd4 l hld ι)
    simpa [Subfield.mem_comap] using this
  have hP0 : ι (∏ z ∈ T, L0.weierstrassP z) ≠ 0 := by
    intro h
    rw [h, norm_zero, mul_zero] at hunit
    exact zero_ne_one hunit
  obtain ⟨a, ha⟩ := kur_val l hP hP0
  obtain ⟨n, hn⟩ := kur_val l hJ h0
  have hl1 : (1 : ℝ) < l := by
    have : 1 < l := by omega
    exact_mod_cast this
  rw [ha] at hunit
  rw [hn] at hμn
  obtain ⟨m, hm⟩ := three_dvd_of_norm_relations l ‖μ‖ hl1 hμpos n a T.card hμn hunit h3T
  exact ⟨m, by rw [hn, hm]⟩

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.NormWeierstrassCoeffSmallJ =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedModel =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedModel", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKur\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

section SlopeTestRemainingChoices

variable (l : ℕ) [Fact l.Prime]

theorem norm_twentySeven_padicComplex_eq_one (h5 : 5 ≤ l) : ‖(27 : ℂ_[l])‖ = 1 := by
  have hp : l.Prime := Fact.out
  have h : ¬ l ∣ 27 := by
    intro h
    have h3 : l ∣ 3 := hp.dvd_of_dvd_pow (show l ∣ 3 ^ 3 by simpa using h)
    have := Nat.le_of_dvd (by norm_num) h3
    omega
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem norm_1728_eq_one (h5 : 5 ≤ l) : ‖(1728 : ℂ_[l])‖ = 1 := by
  have hp : l.Prime := Fact.out
  have h : ¬ l ∣ 1728 := by
    intro h
    have h' : l ∣ 2 ^ 6 * 3 ^ 3 := by simpa using h
    rcases (hp.dvd_mul).1 h' with h2 | h3
    · have := Nat.le_of_dvd (by norm_num) (hp.dvd_of_dvd_pow h2)
      omega
    · have := Nat.le_of_dvd (by norm_num) (hp.dvd_of_dvd_pow h3)
      omega
  simpa using _root_.ReciprocityTheory.ChartRestriction.L1.norm_natCast_Cl_of_not_dvd l h

theorem twentySeven_mem_Kur : (27 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
  exact_mod_cast natCast_mem (MaximalUnramifiedExtension l) 27

theorem ofNat_1728_mem_Kur : (1728 : ℂ_[l]) ∈ MaximalUnramifiedExtension l := by
  exact_mod_cast natCast_mem (MaximalUnramifiedExtension l) 1728

theorem model_generic (h5 : 5 ≤ l) (a b J : ℂ_[l]) (ha : a ≠ 0) (hb : b ≠ 0)
    (hD : a ^ 3 - 27 * b ^ 2 ≠ 0) (hJe : J = 1728 * a ^ 3 / (a ^ 3 - 27 * b ^ 2))
    (hJ : J ∈ MaximalUnramifiedExtension l) (hJ1 : ‖J‖ ≤ 1) (m n : ℤ) (hm : ‖J‖ = (l : ℝ) ^ (3 * m))
    (hn : ‖J - 1728‖ = (l : ℝ) ^ (2 * n)) :
    ∃ g2 g3 : ℂ_[l], g2 ∈ MaximalUnramifiedExtension l ∧ g3 ∈ MaximalUnramifiedExtension l ∧ ‖g2‖ ≤ 1 ∧ ‖g3‖ ≤ 1 ∧ ‖g2 ^ 3 - 27 * g3 ^ 2‖ = 1 ∧
      ∃ lam : ℂ_[l], lam ≠ 0 ∧ g2 = lam ^ 4 * a ∧ g3 = lam ^ 6 * b := by
  have hp : l.Prime := Fact.out
  have hx : (0 : ℝ) < (l : ℝ) := by exact_mod_cast hp.pos
  have hl0 : (l : ℂ_[l]) ≠ 0 := Nat.cast_ne_zero.2 hp.ne_zero
  have hJs : J - 1728 = 1728 * 27 * b ^ 2 / (a ^ 3 - 27 * b ^ 2) := by
    rw [hJe]; field_simp; ring
  have hJs0 : J - 1728 ≠ 0 := by
    rw [hJs]
    exact div_ne_zero
      (mul_ne_zero (mul_ne_zero (by norm_num) (by norm_num)) (pow_ne_zero _ hb)) hD
  set c : ℂ_[l] := 27 * J / (J - 1728) with hc
  have hcab : c = a ^ 3 / b ^ 2 := by
    rw [hc, hJs, hJe]; field_simp
  have hc27 : c - 27 = 27 * 1728 / (J - 1728) := by
    rw [hc]; field_simp; ring
  set t : ℂ_[l] := (l : ℂ_[l]) ^ (m - n) with ht
  have ht0 : t ≠ 0 := zpow_ne_zero _ hl0
  set X : ℝ := (l : ℝ) ^ m with hX
  set Y : ℝ := (l : ℝ) ^ n with hY
  have hX0 : 0 < X := zpow_pos hx _
  have hY0 : 0 < Y := zpow_pos hx _
  have hm' : ‖J‖ = X ^ 3 := by
    rw [hm, mul_comm, zpow_mul]; norm_cast
  have hn' : ‖J - 1728‖ = Y ^ 2 := by
    rw [hn, mul_comm, zpow_mul]; norm_cast
  have htn : ‖t‖ = Y / X := by
    rw [ht, norm_zpow, _root_.ReciprocityTheory.ChartRestriction.L1.norm_l_Cl, inv_zpow', neg_sub, zpow_sub₀ hx.ne']
  have hcn : ‖c‖ = X ^ 3 / Y ^ 2 := by
    rw [hc, norm_div, norm_mul, norm_twentySeven_padicComplex_eq_one l h5, hm', hn', one_mul]
  have hc27n : ‖c - 27‖ = 1 / Y ^ 2 := by
    rw [hc27, norm_div, norm_mul, norm_twentySeven_padicComplex_eq_one l h5, norm_1728_eq_one l h5, hn', one_mul]
  have hdisc : (t ^ 2 * c) ^ 3 - 27 * (t ^ 3 * c) ^ 2 = t ^ 6 * c ^ 2 * (c - 27) := by ring
  have hdn : ‖(t ^ 2 * c) ^ 3 - 27 * (t ^ 3 * c) ^ 2‖ = 1 := by
    rw [hdisc, norm_mul, norm_mul, norm_pow, norm_pow, htn, hcn, hc27n]
    field_simp
  have hg2 : ‖t ^ 2 * c‖ ≤ 1 := by
    have h : ‖t ^ 2 * c‖ ^ 3 = ‖J‖ := by
      rw [norm_mul, norm_pow, htn, hcn, hm']
      field_simp
    rw [← pow_le_one_iff_of_nonneg (norm_nonneg _) (three_ne_zero)]
    rw [h]; exact hJ1
  have hg3 : ‖t ^ 3 * c‖ ≤ 1 := by
    have h : ‖t ^ 3 * c‖ ^ 2 = ‖J - 1728‖ := by
      rw [norm_mul, norm_pow, htn, hcn, hn']
      field_simp
    rw [← pow_le_one_iff_of_nonneg (norm_nonneg _) (two_ne_zero)]
    rw [h]
    rw [sub_eq_add_neg]
    refine (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hJ1 ?_)
    rw [norm_neg]; exact (norm_1728_eq_one l h5).le
  have htK : t ∈ MaximalUnramifiedExtension l := zpow_mem (natCast_mem (MaximalUnramifiedExtension l) l) _
  have hcK : c ∈ MaximalUnramifiedExtension l :=
    div_mem (mul_mem (twentySeven_mem_Kur l) hJ) (sub_mem hJ (ofNat_1728_mem_Kur l))
  obtain ⟨lam, hlam⟩ := IsAlgClosed.exists_pow_nat_eq (t * a / b) (show 0 < 2 by norm_num)
  have hlam0 : lam ≠ 0 := by
    intro h
    rw [h] at hlam
    have : t * a / b ≠ 0 := div_ne_zero (mul_ne_zero ht0 ha) hb
    exact this (by rw [← hlam]; simp)
  refine ⟨t ^ 2 * c, t ^ 3 * c, mul_mem (pow_mem htK _) hcK, mul_mem (pow_mem htK _) hcK,
    hg2, hg3, hdn, lam, hlam0, ?_, ?_⟩
  · have : lam ^ 4 = (lam ^ 2) ^ 2 := by ring
    rw [this, hlam, hcab]; field_simp
  · have : lam ^ 6 = (lam ^ 2) ^ 3 := by ring
    rw [this, hlam, hcab]; field_simp

end SlopeTestRemainingChoices

theorem model_of_valDiv (L : PeriodPair) (l : ℕ) [Fact l.Prime] (h5 : 5 ≤ l) (ι : ℂ ≃+* ℂ_[l])
    (hJ : ι (jInv L) ∈ MaximalUnramifiedExtension l) (hJ1 : ‖ι (jInv L)‖ ≤ 1)
    (h3 : ι (jInv L) ≠ 0 → ∃ m : ℤ, ‖ι (jInv L)‖ = (l : ℝ) ^ (3 * m))
    (h2 : ι (jInv L) ≠ 1728 → ∃ m : ℤ, ‖ι (jInv L) - 1728‖ = (l : ℝ) ^ (2 * m)) :
    ∃ g2 g3, IsGoodModel l L ι g2 g3 := by
  have hD0 : L.g₂ ^ 3 - 27 * L.g₃ ^ 2 ≠ 0 := discNeZero L
  have hD : (ι L.g₂) ^ 3 - 27 * (ι L.g₃) ^ 2 ≠ 0 := by
    intro h
    apply hD0
    apply ι.injective
    have e27 : ι 27 = 27 := map_ofNat ι 27
    simpa [e27] using h
  have hJe : ι (jInv L) = 1728 * (ι L.g₂) ^ 3 / ((ι L.g₂) ^ 3 - 27 * (ι L.g₃) ^ 2) := by
    have e27 : ι 27 = 27 := map_ofNat ι 27
    have e1728 : ι 1728 = 1728 := map_ofNat ι 1728
    simp [jInv, e27, e1728]
  by_cases ha : ι L.g₂ = 0
  · have hb : ι L.g₃ ≠ 0 := by
      intro hb
      apply hD
      rw [ha, hb]; ring
    obtain ⟨lam, hlam⟩ := IsAlgClosed.exists_pow_nat_eq (ι L.g₃)⁻¹ (show 0 < 6 by norm_num)
    have hlam0 : lam ≠ 0 := by
      intro h
      rw [h] at hlam
      exact inv_ne_zero hb (by rw [← hlam]; simp)
    refine ⟨0, 1, zero_mem _, one_mem _, by simp, by simp, ?_, lam, hlam0, by rw [ha]; simp, ?_⟩
    · have : (0 : ℂ_[l]) ^ 3 - 27 * 1 ^ 2 = -27 := by ring
      rw [this, norm_neg, norm_twentySeven_padicComplex_eq_one l h5]
    · rw [hlam, inv_mul_cancel₀ hb]
  by_cases hb : ι L.g₃ = 0
  · obtain ⟨lam, hlam⟩ := IsAlgClosed.exists_pow_nat_eq (ι L.g₂)⁻¹ (show 0 < 4 by norm_num)
    have hlam0 : lam ≠ 0 := by
      intro h
      rw [h] at hlam
      exact inv_ne_zero ha (by rw [← hlam]; simp)
    refine ⟨1, 0, one_mem _, zero_mem _, by simp, by simp, ?_, lam, hlam0, ?_, by rw [hb]; simp⟩
    · have : (1 : ℂ_[l]) ^ 3 - 27 * 0 ^ 2 = 1 := by ring
      rw [this, norm_one]
    · rw [hlam, inv_mul_cancel₀ ha]
  have hJ0 : ι (jInv L) ≠ 0 := by
    rw [hJe]
    exact div_ne_zero (mul_ne_zero (by norm_num) (pow_ne_zero _ ha)) hD
  have hJ1728 : ι (jInv L) ≠ 1728 := by
    rw [hJe]
    intro h
    rw [div_eq_iff hD] at h
    have h' : (1728 : ℂ_[l]) * (27 * (ι L.g₃) ^ 2) = 0 := by linear_combination h
    exact mul_ne_zero (by norm_num) (mul_ne_zero (by norm_num) (pow_ne_zero _ hb)) h'
  obtain ⟨m, hm⟩ := h3 hJ0
  obtain ⟨n, hn⟩ := h2 hJ1728
  exact model_generic l h5 _ _ _ ha hb hD hJe hJ hJ1 m n hm hn

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedModel =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedStatus =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedStatus", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Interface\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.Norm1728EqOneOfFiveLe\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.NormWeierstrassCoeffSmallJ\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedModel\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem goodReduction_of_integral_unramified (hI : JInt) (hU : JUnram) : CM2 := by
  intro d L hsq hd4 hCM l _ h5 hld ι
  have hJ := hU d L hsq hd4 hCM l h5 hld ι
  have hJ1 := hI d L hsq hd4 hCM l ι
  exact model_of_valDiv L l h5 ι hJ hJ1 (valDiv3 d L hsq hd4 hCM l h5 hld ι hJ hJ1)
    (valDiv2 d L hsq hd4 hCM l h5 hld ι hJ hJ1)

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedStatus =====
