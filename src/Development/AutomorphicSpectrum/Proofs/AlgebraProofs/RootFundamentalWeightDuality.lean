module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.HFundinv, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality

-- ===== clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.HFundinv =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HomogeneousNonvanishing.HFundinv", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

namespace PositivityTheory.UnitarySelfGeneration

private theorem sum_shift_mul_neg_indicator_eq_ite (N : ℕ) (m n : Fin N) :
    ∑ k : Fin N, (((if (k:ℕ) + 1 = (m:ℕ) then (1:ℤ) else 0) - if k = m then 1 else 0) * (if n ≤ k then -1 else 0))
      = if n = m then 1 else 0 := by
  have e1 : ∀ k : Fin N, (((if (k:ℕ) + 1 = (m:ℕ) then (1:ℤ) else 0) - if k = m then 1 else 0) * (if n ≤ k then -1 else 0))
      = (if k = m then (if n ≤ k then (1:ℤ) else 0) else 0) - (if (k:ℕ) + 1 = m then (if n ≤ k then (1:ℤ) else 0) else 0) := by
    intro k
    by_cases h1 : (k:ℕ) + 1 = m
    · have : k ≠ m := by intro h; subst h; omega
      split_ifs <;> simp_all
    · split_ifs <;> simp_all
  simp only [e1, Finset.sum_sub_distrib, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rcases m with ⟨m, hm⟩
  rcases n with ⟨n, hn⟩
  cases m with
  | zero =>
    have : ∀ k : Fin N, ¬ ((k:ℕ) + 1 = 0) := fun k => by omega
    simp only [this, if_false, Finset.sum_const_zero, sub_zero, Fin.le_def, Fin.mk.injEq]
    split_ifs <;> omega
  | succ m =>
    rw [Finset.sum_eq_single ⟨m, by omega⟩]
    · simp only [Fin.le_def, Fin.mk.injEq]
      split_ifs <;> omega
    · intro b _ hb
      have hb' : (b:ℕ) ≠ m := fun h => hb (Fin.ext h)
      have : ¬ ((b:ℕ) + 1 = ((⟨m + 1, hm⟩ : Fin N) : ℕ)) := by simp only; omega
      rw [if_neg this]
    · simp

theorem h_fundinv : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (r r' : Ψ × Fin N), (∑ a, rootOnFund r a * fundOnRoot a r' = if r = r' then 1 else 0) ∧ (∀ π : Ψ ≃ Ψ, rootOnFund (π r.1, r.2) (π r'.1, r'.2) = rootOnFund r r' ∧ fundOnRoot (π r.1, r.2) (π r'.1, r'.2) = fundOnRoot r r') := by
  intro Ψ _ _ N r r'
  refine ⟨?_, fun π => ?_⟩
  · obtain ⟨p, m⟩ := r
    obtain ⟨q, n⟩ := r'
    rw [Fintype.sum_prod_type]
    simp only [rootOnFund, fundOnRoot]
    rw [Finset.sum_eq_single p (fun b _ hb => by simp [hb]) (by simp)]
    by_cases hq : q = p
    · subst hq
      simp only [if_true, true_and, Prod.mk.injEq]
      rw [sum_shift_mul_neg_indicator_eq_ite N m n]
      by_cases h : n = m
      · simp [h]
      · simp [h, Ne.symm h]
    · have : ¬ (p = q) := fun h => hq h.symm
      simp [hq, this]
  · simp [rootOnFund, fundOnRoot, π.injective.eq_iff]

end PositivityTheory.UnitarySelfGeneration
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.HFundinv =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.RootOnFund\npublic import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.HFundinv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial AlgebraicGeometry CategoryTheory NumberField Filter Topology ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (IsPullHerm imageZ blockFnField)

namespace GlobalTheory.CompanionTheory.Ar.Cmp

alias rootOnFund_mul_fundOnRoot_inverse := _root_.PositivityTheory.UnitarySelfGeneration.h_fundinv

end GlobalTheory.CompanionTheory.Ar.Cmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.RootFundamentalWeightDuality =====
