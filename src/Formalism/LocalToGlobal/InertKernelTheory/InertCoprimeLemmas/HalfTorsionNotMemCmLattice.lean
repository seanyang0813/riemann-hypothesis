module

public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.Algebra.Polynomial.SpecificDegree
public import Formalism.PeriodIntegrals.ClassNumImQ
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticInvariants.QuadPolyIrreducible
public import Formalism.LocalToGlobal.InertKernelTheory.StatementCurve
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadDiffOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadraticDifferenceForm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ClassNumberIntegrality.HalfIntegral, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDedekindZeta.LocOdd, Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HalfTorsionNotMemCmLattice

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadDiffOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadDiffOf", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.QD

open NumberField

def Arith : Prop :=
  ∀ (d : ℕ) (x y : ℚ), Squarefree d → d % 4 = 3 → (∃ u : ℤ, 2 * x = u) →
    (∃ N : ℤ, x ^ 2 + d * y ^ 2 = N) → ∃ a v : ℤ, x = a + v / 2 ∧ y = v / 2

def IntCoeffs : Prop :=
  ∀ (K : Type) [Field K] [NumberField K] (d : ℕ) (θ : K) (x y : ℚ), Squarefree d → d % 4 = 3 →
    θ ^ 2 = -(d : K) → IsIntegral ℤ ((x : K) + (y : K) * θ) →
    (∃ u : ℤ, 2 * x = u) ∧ (∃ N : ℤ, x ^ 2 + d * y ^ 2 = N)

def Form : Prop :=
  ∀ (K : Type) [Field K] [NumberField K] (d : ℕ) (θ : K), θ ^ 2 = -(d : K) →
    Algebra.adjoin ℚ {θ} = ⊤ → ∀ z : K, ∃ x y : ℚ, z = x + y * θ

end PI.QD

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadDiffOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadraticDifferenceForm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadraticDifferenceForm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadDiffOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\npublic import Mathlib.Algebra.Polynomial.SpecificDegree\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.QD

open NumberField Polynomial

theorem quadraticDifferenceArith : Arith := by
  unfold Arith
  intro d x y hsq hd4 ⟨u, hu⟩ ⟨N, hN⟩
  obtain ⟨M, hM⟩ : ∃ M : ℤ, (d : ℚ) * (2 * y) ^ 2 = M := ⟨4 * N - u ^ 2, by
    push_cast
    linear_combination 4 * hN - (2 * x + (u : ℚ)) * hu⟩
  obtain ⟨w, hw⟩ : ∃ w : ℚ, w = 2 * y := ⟨_, rfl⟩
  rw [← hw] at hM
  have h2 : w * w.den = w.num := Rat.mul_den_eq_num w
  have h3 : ((d * w.num ^ 2 : ℤ) : ℚ) = ((M * (w.den : ℤ) ^ 2 : ℤ) : ℚ) := by
    push_cast
    rw [← h2]
    linear_combination (w.den : ℚ) ^ 2 * hM
  have key : (d : ℤ) * w.num ^ 2 = M * (w.den : ℤ) ^ 2 := by exact_mod_cast h3
  have hcop : IsCoprime ((w.den : ℤ) ^ 2) (w.num ^ 2) :=
    (Int.isCoprime_iff_gcd_eq_one.mpr (show Int.gcd w.num (w.den : ℤ) = 1 from w.reduced)).symm.pow
  have hdvd : (w.den : ℤ) ^ 2 ∣ (d : ℤ) := by
    apply hcop.dvd_of_dvd_mul_right
    exact ⟨M, by rw [key]; ring⟩
  have hdvd' : w.den * w.den ∣ d := by
    rw [← pow_two]
    exact_mod_cast hdvd
  have hden : w.den = 1 := Nat.isUnit_iff.mp (hsq _ hdvd')
  rw [hden, Nat.cast_one, mul_one] at h2
  obtain ⟨v, hv⟩ : ∃ v : ℤ, v = w.num := ⟨_, rfl⟩
  rw [← hv] at h2 key
  rw [hden] at key
  have hE : u ^ 2 + (d : ℤ) * v ^ 2 = 4 * N := by
    have h4 : ((u ^ 2 + (d : ℤ) * v ^ 2 : ℤ) : ℚ) = ((4 * N : ℤ) : ℚ) := by
      push_cast
      rw [← h2, hw]
      linear_combination 4 * hN - (2 * x + (u : ℚ)) * hu
    exact_mod_cast h4
  obtain ⟨t, ht⟩ : ∃ t : ℤ, (d : ℤ) = 4 * t + 3 := ⟨((d / 4 : ℕ) : ℤ), by omega⟩
  rw [ht] at hE
  have hpar : ∃ a : ℤ, u - v = 2 * a := by
    rcases Int.even_or_odd' u with ⟨k, hk | hk⟩ <;> rcases Int.even_or_odd' v with ⟨m, hm | hm⟩ <;>
      subst hk <;> subst hm
    · exact ⟨k - m, by ring⟩
    · exfalso
      ring_nf at hE
      omega
    · exfalso
      ring_nf at hE
      omega
    · exact ⟨k - m, by ring⟩
  obtain ⟨a, ha⟩ := hpar
  refine ⟨a, v, ?_, ?_⟩
  · have ha' : ((u - v : ℤ) : ℚ) = ((2 * a : ℤ) : ℚ) := by rw [ha]
    push_cast at ha'
    linear_combination hu / 2 + ha' / 2
  · rw [← h2, hw]
    ring

theorem quadratic_difference_form : Form := by
  intro K _ _ d θ hθ htop z
  have hz : z ∈ Algebra.adjoin ℚ {θ} := by rw [htop]; trivial
  induction hz using Algebra.adjoin_induction with
  | mem w hw =>
    rw [Set.mem_singleton_iff] at hw
    exact ⟨0, 1, by rw [hw]; simp⟩
  | algebraMap r => exact ⟨r, 0, by simp⟩
  | add w1 w2 _ _ h1 h2 =>
    obtain ⟨x1, y1, e1⟩ := h1
    obtain ⟨x2, y2, e2⟩ := h2
    exact ⟨x1 + x2, y1 + y2, by rw [e1, e2]; push_cast; ring⟩
  | mul w1 w2 _ _ h1 h2 =>
    obtain ⟨x1, y1, e1⟩ := h1
    obtain ⟨x2, y2, e2⟩ := h2
    refine ⟨x1 * x2 - d * y1 * y2, x1 * y2 + x2 * y1, ?_⟩
    rw [e1, e2]; push_cast
    linear_combination (y1 * y2 : K) * hθ

theorem quadratic_intCoeffs : IntCoeffs := by
  unfold IntCoeffs
  intro K _ _ d θ x y hsq hd4 hθ hint
  have hd : (0 : ℚ) < d := by
    have : 0 < d := by omega
    exact_mod_cast this
  by_cases hy : y = 0
  · subst hy
    have h1 : IsIntegral ℤ (algebraMap ℚ K x) := by
      rw [eq_ratCast]
      simpa using hint
    obtain ⟨n, hn⟩ := IsIntegrallyClosed.isIntegral_iff.mp ((isIntegral_algebraMap_iff ).mp h1)
    rw [eq_intCast] at hn
    subst hn
    exact ⟨⟨2 * n, by push_cast; ring⟩, ⟨n ^ 2, by push_cast; ring⟩⟩
  obtain ⟨p, hp⟩ : ∃ p : Polynomial ℚ, p = X ^ 2 - C (2 * x) * X + C (x ^ 2 + d * y ^ 2) := ⟨_, rfl⟩
  have hmonic : p.Monic := by
    rw [hp]
    monicity!
  have hdeg : p.natDegree = 2 := by
    rw [hp]
    compute_degree!
  have haeval : aeval ((x : K) + (y : K) * θ) p = 0 := by
    rw [hp]
    simp only [map_add (f := _), map_sub, map_mul, aeval_X, aeval_C, map_pow, eq_ratCast]
    push_cast
    linear_combination ((y : K)) ^ 2 * hθ
  have hirr : Irreducible p := by
    rw [hmonic.irreducible_iff_roots_eq_zero_of_degree_le_three (by omega) (by omega)]
    refine Multiset.eq_zero_of_forall_notMem fun r hr => ?_
    rw [mem_roots hmonic.ne_zero, IsRoot, hp] at hr
    simp only [eval_add, eval_sub, eval_mul, eval_pow, eval_X, eval_C] at hr
    have hy2 : 0 < y ^ 2 := by positivity
    nlinarith [sq_nonneg (r - x), mul_pos hd hy2]
  have hmin : p = minpoly ℚ ((x : K) + (y : K) * θ) := minpoly.eq_of_irreducible_of_monic hirr haeval hmonic
  have hg := minpoly.isIntegrallyClosed_eq_field_fractions' ℚ hint
  have hc : ∀ i, p.coeff i = ((minpoly ℤ ((x : K) + (y : K) * θ)).coeff i : ℚ) := by
    intro i
    rw [hmin, hg, Polynomial.coeff_map, eq_intCast]
  have h1 : p.coeff 1 = -(2 * x) := by
    rw [hp]
    simp
    rw [← C_pow, ← C_pow, coeff_C, coeff_C]
    simp
  have h0 : p.coeff 0 = x ^ 2 + d * y ^ 2 := by
    rw [hp]
    simp
    rw [← C_pow, ← C_pow, coeff_C, coeff_C]
    simp
  refine ⟨⟨-(minpoly ℤ ((x : K) + (y : K) * θ)).coeff 1, ?_⟩, ⟨(minpoly ℤ ((x : K) + (y : K) * θ)).coeff 0, ?_⟩⟩
  · push_cast
    rw [← hc, h1]
    ring
  · rw [← hc, h0]

end PI.QD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadraticDifferenceForm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ClassNumberIntegrality.HalfIntegral =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ClassNumberIntegrality.HalfIntegral", "h": "module\n\npublic import Formalism.PeriodIntegrals.ClassNumImQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDifference.QuadraticDifferenceForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ClassNumImQInt

open NumberField Polynomial

theorem adjoin_top {K : Type} [Field K] [NumberField K] (b : K)
    (h : IntermediateField.adjoin ℚ {b} = ⊤) : Algebra.adjoin ℚ {b} = ⊤ := by
  rw [← IntermediateField.adjoin_simple_toSubalgebra_of_isAlgebraic
    (Algebra.IsAlgebraic.isAlgebraic b), h]
  exact IntermediateField.top_toSubalgebra

theorem half_integral {K : Type} [Field K] [NumberField K] (d : ℕ) (b : K) (hd : d % 4 = 3)
    (hb : b ^ 2 = -(d : K)) : IsIntegral ℤ ((1 + b) / 2) := by
  obtain ⟨k, hk⟩ : ∃ k : ℕ, d + 1 = 4 * k := ⟨(d + 1) / 4, by omega⟩
  have hk' : (d : K) + 1 = 4 * (k : K) := by exact_mod_cast hk
  refine ⟨X ^ 2 - X + C (k : ℤ), by monicity!, ?_⟩
  simp only [eval₂_add, eval₂_sub, eval₂_pow, eval₂_X, eval₂_natCast, map_natCast]
  linear_combination (1 / 4 : K) * hb - (1 / 4 : K) * hk'

theorem intBasis : PI.ClassNumImQ.IntBasis := by
  intro d K _ _ b ⟨hp, hd, _, hb, htop⟩
  have hsq : Squarefree d := hp.prime.squarefree
  have htop' := adjoin_top b htop
  refine ⟨half_integral d b hd hb, ?_⟩
  intro z
  obtain ⟨x, y, hxy⟩ := PI.QD.quadratic_difference_form K d b hb htop' (z : K)
  have hint : IsIntegral ℤ ((x : K) + (y : K) * b) := by rw [← hxy]; exact z.isIntegral_coe
  obtain ⟨h2x, hN⟩ := PI.QD.quadratic_intCoeffs K d b x y hsq hd hb hint
  obtain ⟨a, v, hx, hy⟩ := PI.QD.quadraticDifferenceArith d x y hsq hd h2x hN
  refine ⟨a, v, ?_⟩
  rw [hxy, hx, hy]
  push_cast
  ring

end PI.UnitaryGroupMassFormula.ClassNumImQInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ClassNumberIntegrality.HalfIntegral =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDedekindZeta.LocOdd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDedekindZeta.LocOdd", "h": "module\n\npublic import Formalism.PeriodIntegrals.ClassNumImQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ClassNumberIntegrality.HalfIntegral\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticInvariants.QuadPolyIrreducible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

namespace PI.ClassNumImQ.ZetaNonvanishing₂.Loc

variable {d : ℕ} {K : Type} [Field K] [NumberField K] {b : K}

noncomputable def om (hq : QuadData d K b) : 𝓞 K :=
  ⟨(1 + b) / 2, (_root_.PI.UnitaryGroupMassFormula.ClassNumImQInt.intBasis d K b hq).1⟩

theorem om_coe (hq : QuadData d K b) : ((om hq : 𝓞 K) : K) = (1 + b) / 2 := rfl

theorem basis (hq : QuadData d K b) (x : 𝓞 K) : ∃ m n : ℤ, x = m + n * om hq := by
  obtain ⟨m, n, h⟩ := (_root_.PI.UnitaryGroupMassFormula.ClassNumImQInt.intBasis d K b hq).2 x
  refine ⟨m, n, RingOfIntegers.ext ?_⟩
  rw [h]
  push_cast [om_coe]
  rfl

theorem coeff_unique (hq : QuadData d K b) {m n m' n' : ℤ}
    (h : (m : 𝓞 K) + n * om hq = m' + n' * om hq) : m = m' ∧ n = n' := by
  have hK : (m : K) + n * ((1 + b) / 2) = m' + n' * ((1 + b) / 2) := by
    have h' := congrArg (fun x : 𝓞 K => (x : K)) h
    push_cast [om_coe] at h'
    exact h'
  by_cases hn : n = n'
  · subst hn
    refine ⟨?_, rfl⟩
    exact_mod_cast add_right_cancel hK
  · exfalso
    have hne : ((n : K) - n') ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast hn)
    apply PI.UnitaryGroupMassFormula.ClassNumImQInv.b_ne_rat hq ((2 * (m' - m) + n' - n) / (n - n'))
    push_cast
    rw [div_eq_iff hne]
    linear_combination (-2 : K) * hK

end PI.ClassNumImQ.ZetaNonvanishing₂.Loc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDedekindZeta.LocOdd =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HalfTorsionNotMemCmLattice =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HalfTorsionNotMemCmLattice", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementCurve\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticDedekindZeta.LocOdd\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.KerInert.CurveGen

open PI.ClassNumImQ.ZetaNonvanishing₂.Loc (om om_coe basis coeff_unique)

variable {d : ℕ} {K : Type} [Field K] [NumberField K] {b : K}

theorem om_sq (hq : PI.ClassNumImQ.QuadData d K b) (m : ℤ) (hm : (d : ℤ) + 1 = 4 * m) :
    om hq * om hq = om hq - (m : 𝓞 K) := by
  have hb : b ^ 2 = -(d : K) := hq.2.2.2.1
  have hmK : (d : K) + 1 = 4 * (m : K) := by
    have h := congrArg (Int.cast : ℤ → K) hm
    push_cast at h
    exact h
  have ho' : algebraMap (𝓞 K) K (om hq) = (1 + b) / 2 := om_coe hq
  apply RingOfIntegers.ext
  have hc : ∀ y : 𝓞 K, (y : K) = algebraMap (𝓞 K) K y := fun _ => rfl
  rw [hc, hc, map_mul, map_sub, map_intCast, ho']
  linear_combination (1 / 4 : K) * hb - (1 / 4 : K) * hmK

theorem li (hq : PI.ClassNumImQ.QuadData d K b) : LinearIndependent ℤ ![(1 : 𝓞 K), om hq] := by
  rw [LinearIndependent.pair_iff]
  intro s t hst
  have h : ((s : ℤ) : 𝓞 K) + ((t : ℤ) : 𝓞 K) * om hq = ((0 : ℤ) : 𝓞 K) + ((0 : ℤ) : 𝓞 K) * om hq := by
    simp only [zsmul_eq_mul, mul_one] at hst
    simpa using hst
  exact coeff_unique hq h

theorem sp (hq : PI.ClassNumImQ.QuadData d K b) :
    ⊤ ≤ Submodule.span ℤ (Set.range ![(1 : 𝓞 K), om hq]) := by
  intro x _
  obtain ⟨m, n, rfl⟩ := basis hq x
  have h1 : (1 : 𝓞 K) ∈ Submodule.span ℤ (Set.range ![(1 : 𝓞 K), om hq]) := Submodule.subset_span ⟨0, rfl⟩
  have h2 : om hq ∈ Submodule.span ℤ (Set.range ![(1 : 𝓞 K), om hq]) := Submodule.subset_span ⟨1, rfl⟩
  have := add_mem (Submodule.smul_mem _ m h1) (Submodule.smul_mem _ n h2)
  simpa [zsmul_eq_mul] using this

def bw (hq : PI.ClassNumImQ.QuadData d K b) : Module.Basis (Fin 2) ℤ (𝓞 K) := Module.Basis.mk (li hq) (sp hq)

theorem bw_repr (hq : PI.ClassNumImQ.QuadData d K b) (u v : ℤ) :
    (bw hq).repr ((u : 𝓞 K) + (v : 𝓞 K) * om hq) 0 = u ∧ (bw hq).repr ((u : 𝓞 K) + (v : 𝓞 K) * om hq) 1 = v := by
  have hx : ((u : 𝓞 K) + (v : 𝓞 K) * om hq) = u • (bw hq) 0 + v • (bw hq) 1 := by
    simp [bw, Module.Basis.mk_apply, zsmul_eq_mul]
  rw [hx, map_add (f := _), map_zsmul, map_zsmul, Module.Basis.repr_self, Module.Basis.repr_self]
  simp

theorem hnf (hq : PI.ClassNumImQ.QuadData d K b) (m : ℤ) (hm : (d : ℤ) + 1 = 4 * m) (cc : Ideal (𝓞 K)) (hcc : cc ≠ ⊥) :
    ∃ (g a : ℕ) (k : ℤ), 0 < g ∧ 0 < a ∧ (a : ℤ) ∣ k * k + k + m ∧
      (∀ x : 𝓞 K, x ∈ cc ↔ ∃ u v : ℤ, x = (g : 𝓞 K) * ((u : 𝓞 K) * a + (v : 𝓞 K) * ((k : 𝓞 K) + om hq))) ∧
      Ideal.absNorm cc = g ^ 2 * a := by
  classical
  have hω : om hq * om hq = om hq - (m : 𝓞 K) := om_sq hq m hm
  have hN0 : Ideal.absNorm cc ≠ 0 := by
    rw [Ne, Ideal.absNorm_eq_zero_iff]
    exact hcc
  have hNmem : ((Ideal.absNorm cc : ℕ) : 𝓞 K) ∈ cc := Ideal.absNorm_mem cc
  have hP1 : ∃ n : ℕ, 0 < n ∧ ∃ r : ℤ, ((r : 𝓞 K) + (n : 𝓞 K) * om hq) ∈ cc :=
    ⟨Ideal.absNorm cc, Nat.pos_of_ne_zero hN0, 0, by simpa using cc.mul_mem_right (om hq) hNmem⟩
  obtain ⟨g, ⟨hg, r₀, hx₀⟩, hgmin⟩ : ∃ g : ℕ, (0 < g ∧ ∃ r : ℤ, ((r : 𝓞 K) + (g : 𝓞 K) * om hq) ∈ cc) ∧
      ∀ n < g, ¬ (0 < n ∧ ∃ r : ℤ, ((r : 𝓞 K) + (n : 𝓞 K) * om hq) ∈ cc) :=
    ⟨Nat.find hP1, Nat.find_spec hP1, fun n hn => Nat.find_min hP1 hn⟩
  have claim1 : ∀ r s : ℤ, ((r : 𝓞 K) + (s : 𝓞 K) * om hq) ∈ cc → (g : ℤ) ∣ s := by
    intro r s hx
    have hgz : (0 : ℤ) < g := by exact_mod_cast hg
    have ht0 : 0 ≤ s % g := Int.emod_nonneg _ hgz.ne'
    have ht1 : s % g < g := Int.emod_lt_of_pos _ hgz
    have hs' : s = s % (g : ℤ) + (g : ℤ) * (s / (g : ℤ)) := by
      exact (EuclideanDomain.mod_add_div s (g : ℤ)).symm
    have hsK : ((s : ℤ) : 𝓞 K) = ((s % g : ℤ) : 𝓞 K) + ((g : ℤ) : 𝓞 K) * ((s / g : ℤ) : 𝓞 K) := by
      exact_mod_cast congrArg (Int.cast : ℤ → 𝓞 K) hs'
    have hmem : ((r - s / g * r₀ : ℤ) : 𝓞 K) + ((s % g : ℤ) : 𝓞 K) * om hq ∈ cc := by
      have h := cc.sub_mem hx (cc.mul_mem_left ((s / g : ℤ) : 𝓞 K) hx₀)
      convert h using 1
      push_cast at hsK ⊢
      linear_combination (-(om hq)) * hsK
    by_contra hndvd
    have ht_pos : 0 < s % g := by
      rcases ht0.lt_or_eq with h | h
      · exact h
      · exact absurd (Int.dvd_of_emod_eq_zero h.symm) hndvd
    have e : (((s % g).toNat : ℕ) : 𝓞 K) = ((s % g : ℤ) : 𝓞 K) := by
      rw [← Int.cast_natCast, Int.toNat_of_nonneg ht0]
    exact hgmin (s % g).toNat (by omega) ⟨by omega, r - s / g * r₀, by rw [e]; exact hmem⟩
  have hP2 : ∃ n : ℕ, 0 < n ∧ (n : 𝓞 K) ∈ cc := ⟨_, Nat.pos_of_ne_zero hN0, hNmem⟩
  obtain ⟨A, ⟨hA, hAmem⟩, hAmin⟩ : ∃ A : ℕ, (0 < A ∧ (A : 𝓞 K) ∈ cc) ∧ ∀ n < A, ¬ (0 < n ∧ (n : 𝓞 K) ∈ cc) :=
    ⟨Nat.find hP2, Nat.find_spec hP2, fun n hn => Nat.find_min hP2 hn⟩
  have claim2 : ∀ r : ℤ, ((r : ℤ) : 𝓞 K) ∈ cc → (A : ℤ) ∣ r := by
    intro r hr
    have hAz : (0 : ℤ) < A := by exact_mod_cast hA
    have ht0 : 0 ≤ r % A := Int.emod_nonneg _ hAz.ne'
    have ht1 : r % A < A := Int.emod_lt_of_pos _ hAz
    have hr' : r = r % (A : ℤ) + (A : ℤ) * (r / (A : ℤ)) := by
      exact (EuclideanDomain.mod_add_div r (A : ℤ)).symm
    have hrK : ((r : ℤ) : 𝓞 K) = ((r % A : ℤ) : 𝓞 K) + ((A : ℤ) : 𝓞 K) * ((r / A : ℤ) : 𝓞 K) := by
      exact_mod_cast congrArg (Int.cast : ℤ → 𝓞 K) hr'
    have hmem : ((r % A : ℤ) : 𝓞 K) ∈ cc := by
      have h := cc.sub_mem hr (cc.mul_mem_left ((r / A : ℤ) : 𝓞 K) hAmem)
      convert h using 1
      push_cast at hrK ⊢
      linear_combination (-1 : 𝓞 K) * hrK
    by_contra hndvd
    have ht_pos : 0 < r % A := by
      rcases ht0.lt_or_eq with h | h
      · exact h
      · exact absurd (Int.dvd_of_emod_eq_zero h.symm) hndvd
    have e : (((r % A).toNat : ℕ) : 𝓞 K) = ((r % A : ℤ) : 𝓞 K) := by
      rw [← Int.cast_natCast, Int.toNat_of_nonneg ht0]
    exact hAmin (r % A).toNat (by omega) ⟨by omega, by rw [e]; exact hmem⟩
  have hgA : (g : ℤ) ∣ (A : ℤ) := claim1 0 A (by simpa using cc.mul_mem_right (om hq) hAmem)
  have hgr : (g : ℤ) ∣ r₀ := by
    have h := cc.mul_mem_left (om hq) hx₀
    have h2 : ((-(g * m) : ℤ) : 𝓞 K) + ((r₀ + g : ℤ) : 𝓞 K) * om hq ∈ cc := by
      convert h using 1
      push_cast
      linear_combination (-(g : 𝓞 K)) * hω
    have h3 := claim1 _ _ h2
    have h4 : (g : ℤ) ∣ (r₀ + g) - g := dvd_sub h3 (dvd_refl _)
    simpa using h4
  have hgA' : g ∣ A := by exact_mod_cast hgA
  obtain ⟨a, rfl⟩ := hgA'
  have ha : 0 < a := Nat.pos_of_ne_zero (by rintro rfl; simp at hA)
  obtain ⟨k, rfl⟩ := hgr
  have hmemiff : ∀ x : 𝓞 K, x ∈ cc ↔
      ∃ u v : ℤ, x = (g : 𝓞 K) * ((u : 𝓞 K) * a + (v : 𝓞 K) * ((k : 𝓞 K) + om hq)) := by
    intro x
    constructor
    · intro hx
      obtain ⟨r, s, rfl⟩ := basis hq x
      obtain ⟨v, rfl⟩ := claim1 r s hx
      have hr : ((r - v * (g * k) : ℤ) : 𝓞 K) ∈ cc := by
        have h := cc.sub_mem hx (cc.mul_mem_left ((v : ℤ) : 𝓞 K) hx₀)
        convert h using 1
        push_cast
        ring
      obtain ⟨u, hu⟩ := claim2 _ hr
      refine ⟨u, v, ?_⟩
      have hr2 : r = (g : ℤ) * a * u + v * (g * k) := by
        push_cast at hu
        linear_combination hu
      rw [hr2]
      push_cast
      ring
    · rintro ⟨u, v, rfl⟩
      have h := cc.add_mem (cc.mul_mem_left ((u : ℤ) : 𝓞 K) hAmem) (cc.mul_mem_left ((v : ℤ) : 𝓞 K) hx₀)
      convert h using 1
      push_cast
      ring
  have hdiv : (a : ℤ) ∣ k * k + k + m := by
    have h := cc.mul_mem_left (om hq) hx₀
    obtain ⟨u, v, huv⟩ := (hmemiff _).1 h
    have e1 : ((g * (-m) : ℤ) : 𝓞 K) + ((g * (k + 1) : ℤ) : 𝓞 K) * om hq =
        ((g * (u * a + v * k) : ℤ) : 𝓞 K) + ((g * v : ℤ) : 𝓞 K) * om hq := by
      push_cast at huv ⊢
      linear_combination huv - (g : 𝓞 K) * hω
    obtain ⟨e2, e3⟩ := coeff_unique hq e1
    have hg0 : (g : ℤ) ≠ 0 := by exact_mod_cast hg.ne'
    have e4 : -m = u * a + v * k := mul_left_cancel₀ hg0 e2
    have e5 : k + 1 = v := mul_left_cancel₀ hg0 e3
    subst e5
    exact ⟨-u, by linear_combination (-1 : ℤ) * e4⟩
  set w : Fin 2 → cc := ![⟨((g * a : ℕ) : 𝓞 K), hAmem⟩, ⟨((g * k : ℤ) : 𝓞 K) + (g : 𝓞 K) * om hq, hx₀⟩] with hw
  have hli : LinearIndependent ℤ w := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    have h := congrArg Subtype.val hst
    simp [zsmul_eq_mul] at h
    have e : ((s * (g * a) + t * (g * k) : ℤ) : 𝓞 K) + ((t * g : ℤ) : 𝓞 K) * om hq =
        ((0 : ℤ) : 𝓞 K) + ((0 : ℤ) : 𝓞 K) * om hq := by
      push_cast at h ⊢
      linear_combination h
    obtain ⟨e1, e2⟩ := coeff_unique hq e
    have hg0 : (g : ℤ) ≠ 0 := by exact_mod_cast hg.ne'
    have ha0 : (a : ℤ) ≠ 0 := by exact_mod_cast ha.ne'
    have ht : t = 0 := by
      rcases mul_eq_zero.mp e2 with h5 | h5
      · exact h5
      · exact absurd h5 hg0
    subst ht
    refine ⟨?_, rfl⟩
    have h6 : s * (g * a) = 0 := by simpa using e1
    rcases mul_eq_zero.mp h6 with h7 | h7
    · exact h7
    · exact absurd h7 (mul_ne_zero hg0 ha0)
  have hsp : ⊤ ≤ Submodule.span ℤ (Set.range w) := by
    rintro ⟨y, hy⟩ -
    obtain ⟨u, v, rfl⟩ := (hmemiff y).1 hy
    have h1 : w 0 ∈ Submodule.span ℤ (Set.range w) := Submodule.subset_span (Set.mem_range_self 0)
    have h2 : w 1 ∈ Submodule.span ℤ (Set.range w) := Submodule.subset_span (Set.mem_range_self 1)
    have h3 := Submodule.add_mem _ (Submodule.smul_mem _ u h1) (Submodule.smul_mem _ v h2)
    convert h3 using 1
    apply Subtype.ext
    simp [hw, zsmul_eq_mul]
    ring
  have hbI0 : ((Module.Basis.mk hli hsp 0 : cc) : 𝓞 K) = ((g * a : ℤ) : 𝓞 K) + ((0 : ℤ) : 𝓞 K) * om hq := by
    simp [hw]
  have hbI1 : ((Module.Basis.mk hli hsp 1 : cc) : 𝓞 K) = ((g * k : ℤ) : 𝓞 K) + ((g : ℤ) : 𝓞 K) * om hq := by
    simp [hw]
  have hdet := Ideal.natAbs_det_basis_change (bw hq) cc (Module.Basis.mk hli hsp)
  have hdet2 : (bw hq).det (Subtype.val ∘ Module.Basis.mk hli hsp) = ((g * a : ℤ)) * g := by
    rw [Module.Basis.det_apply, Matrix.det_fin_two]
    simp only [Module.Basis.toMatrix_apply, Function.comp_apply]
    rw [hbI0, hbI1, (bw_repr hq _ _).1, (bw_repr hq _ _).2, (bw_repr hq _ _).1, (bw_repr hq _ _).2]
    ring
  have hnorm : Ideal.absNorm cc = g ^ 2 * a := by
    rw [← hdet, hdet2]
    rw [show ((g * a : ℤ)) * g = ((g ^ 2 * a : ℕ) : ℤ) by push_cast; ring]
    exact Int.natAbs_natCast _
  exact ⟨g, a, k, hg, ha, hdiv, hmemiff, hnorm⟩

private theorem cmL_omega1_eq (a₁ : ℕ) (b₁ : ℤ) (d₁ : ℕ) (ha₁ : 0 < a₁) (hd₁ : 0 < d₁) (l₁ : ℂ) (hl₁ : l₁ ≠ 0) :
    (Formalism.L2.Th1.H.cmL a₁ b₁ d₁ ha₁ hd₁ l₁ hl₁).ω₁ = l₁ * a₁ := rfl

private theorem cmL_omega2_eq (a₁ : ℕ) (b₁ : ℤ) (d₁ : ℕ) (ha₁ : 0 < a₁) (hd₁ : 0 < d₁) (l₁ : ℂ) (hl₁ : l₁ ≠ 0) :
    (Formalism.L2.Th1.H.cmL a₁ b₁ d₁ ha₁ hd₁ l₁ hl₁).ω₂ = l₁ * Formalism.L2.Th1.F.cmTheta b₁ d₁ := rfl

theorem lat_eq (hq : PI.ClassNumImQ.QuadData d K b) (φ : K →+* ℂ) (hφ : φ b = Complex.I * (Real.sqrt d : ℂ))
    (hd : 0 < d) (cc : Ideal (𝓞 K)) (g a : ℕ) (k : ℤ) (ha : 0 < a)
    (hmem : ∀ x : 𝓞 K, x ∈ cc ↔ ∃ u v : ℤ, x = (g : 𝓞 K) * ((u : 𝓞 K) * a + (v : 𝓞 K) * ((k : 𝓞 K) + om hq)))
    (δ : ℂ) (hl : (g : ℂ) * δ ≠ 0) :
    AddSubgroup.closure {w | ∃ c ∈ cc, w = δ * φ (c : K)} =
      (Formalism.L2.Th1.H.cmL a (2 * k + 1) d ha hd ((g : ℂ) * δ) hl).lattice.toAddSubgroup := by
  have ho' : algebraMap (𝓞 K) K (om hq) = (1 + b) / 2 := om_coe hq
  have hψ : ∀ y : 𝓞 K, φ (y : K) = (φ.comp (algebraMap (𝓞 K) K)) y := fun _ => rfl
  have hω : (φ.comp (algebraMap (𝓞 K) K)) (om hq) = (1 + Complex.I * (Real.sqrt d : ℂ)) / 2 := by
    rw [RingHom.comp_apply, ho', map_div₀, map_add (f := _), map_one, hφ, map_ofNat]
  have key : ∀ u v : ℤ, δ * φ ((((g : 𝓞 K) * ((u : 𝓞 K) * a + (v : 𝓞 K) * ((k : 𝓞 K) + om hq))) : 𝓞 K) : K) =
      (u : ℂ) * ((g : ℂ) * δ * a) + (v : ℂ) * ((g : ℂ) * δ * Formalism.L2.Th1.F.cmTheta (2 * k + 1) d) := by
    intro u v
    rw [hψ]
    simp only [map_mul, map_add (f := _), map_intCast, map_natCast, hω, Formalism.L2.Th1.F.cmTheta]
    push_cast
    ring
  apply le_antisymm
  · rw [AddSubgroup.closure_le]
    rintro w ⟨c, hc, rfl⟩
    obtain ⟨u, v, rfl⟩ := (hmem c).1 hc
    rw [key u v]
    show _ ∈ (Formalism.L2.Th1.H.cmL a (2 * k + 1) d ha hd ((g : ℂ) * δ) hl).lattice
    rw [PeriodPair.mem_lattice]
    exact ⟨u, v, by rw [cmL_omega1_eq, cmL_omega2_eq]⟩
  · intro x hx
    obtain ⟨u, v, rfl⟩ := PeriodPair.mem_lattice.mp hx
    rw [cmL_omega1_eq, cmL_omega2_eq, ← key u v]
    exact AddSubgroup.subset_closure ⟨_, (hmem _).2 ⟨u, v, rfl⟩, rfl⟩

theorem form_eq (m k : ℤ) (a : ℕ) (hm : (d : ℤ) + 1 = 4 * m) (hdiv : (a : ℤ) ∣ k * k + k + m) :
    ∃ c₀ : ℤ, 4 * (a : ℤ) * c₀ = (2 * k + 1) ^ 2 + d := by
  obtain ⟨c, hc⟩ := hdiv
  exact ⟨c, by linear_combination (-4 : ℤ) * hc - hm⟩

end Formalism.L2.KerInert.CurveGen

namespace Formalism.L2.KerInert

open Formalism.MainNotions Formalism.FrobeniusOrbits
open Formalism.L2.Th1.H (cmL CmOK)

section Host

variable {R : Ranks}

theorem adjGen_top' {E : Type*} [Field E] [Algebra ℚ E] (x : E) :
    IntermediateField.adjoin ℚ {IntermediateField.AdjoinSimple.gen ℚ x} = ⊤ := by
  rw [eq_top_iff]
  rintro y -
  obtain ⟨r, s, hrs⟩ := (IntermediateField.mem_adjoin_simple_iff ℚ (y : E)).mp y.2
  rw [IntermediateField.mem_adjoin_simple_iff]
  refine ⟨r, s, ?_⟩
  apply Subtype.ext
  have h1 : ∀ p : Polynomial ℚ, ((Polynomial.aeval (IntermediateField.AdjoinSimple.gen ℚ x) p :
      IntermediateField.adjoin ℚ ({x} : Set E)) : E) = Polynomial.aeval x p :=
    fun p => by
      simp [Polynomial.aeval_def, Polynomial.eval₂_eq_sum_range]
  rw [hrs, ← h1 r, ← h1 s]
  rfl

theorem quadK (H : Host R) :
    PI.ClassNumImQ.QuadData H.d ↥H.K (IntermediateField.AdjoinSimple.gen ℚ (H.sqd)) := by
  obtain ⟨-, hdp, -, hd16, -⟩ := H.hyp
  refine ⟨hdp, by omega, by omega, ?_, adjGen_top' H.sqd⟩
  exact Subtype.ext H.sqd_sq

theorem tie_host (H : Host R) (cc : Ideal (𝓞 H.K)) (δ : ℂ) (hcc : cc ≠ ⊥) (hodd : Odd (Ideal.absNorm cc)) (hδ : δ ≠ 0) :
    ∃ (a₀ g : ℕ) (b₀ c₀ : ℤ) (ha : 0 < a₀) (hd : 0 < H.d) (hl : (g : ℂ) * δ ≠ 0),
      CmOK a₀ b₀ c₀ H.d ∧ Ideal.absNorm cc = g ^ 2 * a₀ ∧ cc ≤ Ideal.span {(g : 𝓞 H.K)} ∧
      AddSubgroup.closure {w | ∃ c ∈ cc, w = δ * H.φ₀ (((c : H.K) : H.E))} =
        (cmL a₀ b₀ H.d ha hd ((g : ℂ) * δ) hl).lattice.toAddSubgroup := by
  obtain ⟨-, hdp, -, hd16, -⟩ := H.hyp
  have hq := quadK H
  obtain ⟨m, hm⟩ : ∃ m : ℤ, (H.d : ℤ) + 1 = 4 * m := ⟨((H.d : ℤ) + 1) / 4, by omega⟩
  obtain ⟨g, a, k, hg, ha, hdiv, hmem, hnorm⟩ := CurveGen.hnf hq m hm cc hcc
  obtain ⟨c₀, hc₀⟩ := CurveGen.form_eq m k a hm hdiv
  have hd : 0 < H.d := hdp.pos
  have hl : (g : ℂ) * δ ≠ 0 := mul_ne_zero (by exact_mod_cast hg.ne') hδ
  have hφ : (H.φ₀.comp (algebraMap H.K H.E)) (IntermediateField.AdjoinSimple.gen ℚ H.sqd) =
      Complex.I * (Real.sqrt H.d : ℂ) := by
    exact Formalism.L2.Ker.phi_b H
  have hodd' : Odd (g ^ 2 * a) := hnorm ▸ hodd
  have hcm : CmOK a (2 * k + 1) c₀ H.d := by
    unfold Formalism.L2.Th1.H.CmOK
    exact ⟨hc₀, (Nat.odd_mul.mp hodd').2, by omega, hdp⟩
  refine ⟨a, g, 2 * k + 1, c₀, ha, hd, hl, hcm, hnorm, ?_, ?_⟩
  · intro x hx
    obtain ⟨u, v, rfl⟩ := (hmem x).1 hx
    exact Ideal.mem_span_singleton.mpr ⟨_, rfl⟩
  · exact CurveGen.lat_eq hq (H.φ₀.comp (algebraMap H.K H.E)) hφ hd cc g a k ha hmem δ hl

end Host

theorem curve_lattice_compatible : CurveTie := by
  intro D cc δ hcc hodd hδ
  exact tie_host D.host cc δ hcc hodd hδ

end Formalism.L2.KerInert

namespace Formalism.L2.KerInert

open Formalism.MainNotions Formalism.FrobeniusOrbits
open Formalism.L2.Th1.H (cmL CmOK)

theorem delta_ne_of_base {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Formalism.L2.Ker.Base D cc δ) : δ ≠ 0 := by
  intro hδ
  subst hδ
  obtain ⟨h1, h2, -⟩ : _ ∧ _ ∧ _ := B.t0
  have hle : TaylorLogMetric.lamOf D cc 0 ≤ ⊥ := by
    show AddSubgroup.closure _ ≤ ⊥
    rw [AddSubgroup.closure_le]
    rintro w ⟨c, -, rfl⟩
    simp
  have h0 : 2 * (B.ω₀ / 2) = 0 := AddSubgroup.mem_bot.mp (hle h1)
  have h00 : B.ω₀ / 2 = 0 := (mul_eq_zero.mp h0).resolve_left two_ne_zero
  apply h2
  rw [h00, mul_zero]
  exact AddSubgroup.zero_mem _

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HalfTorsionNotMemCmLattice =====
