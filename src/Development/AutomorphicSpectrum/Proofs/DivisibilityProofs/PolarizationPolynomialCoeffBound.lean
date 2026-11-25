module

public import Mathlib.Algebra.Order.Antidiag.Finsupp
public import Mathlib.Basic.Real.Basic
public import Mathlib.Data.Nat.Choose.Multinomial
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.PolarizationCoefficientsBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.PolarizationCoefficientsBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.PolarizationCoefficientsBound", "h": "module\n\npublic import Mathlib.Algebra.Order.Antidiag.Finsupp\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem pa_neg_lin_pow {J : Type} [Fintype J] [DecidableEq J] (d : ℕ) (c : J → ℝ) :
    ((-∑ x, C (c x) * X x : MvPolynomial J ℝ)) ^ d =
      ∑ m ∈ Finset.finsuppAntidiag (Finset.univ : Finset J) d,
        ((-1) ^ d * (m.multinomial : ℝ) * m.prod (fun r e => c r ^ e)) • monomial m (1 : ℝ) := by
  rw [neg_pow, Finset.sum_pow_eq_sum_piAntidiag, Finset.mul_sum]
  refine Finset.sum_nbij' (fun g => Finsupp.equivFunOnFinite.symm g) (fun m => ⇑m) ?_ ?_ ?_ ?_ ?_
  · intro g hg
    simp only [Finset.mem_piAntidiag] at hg
    simp only [Finset.mem_finsuppAntidiag]
    refine ⟨?_, Finset.subset_univ _⟩
    simpa using hg.1
  · intro m hm
    simp only [Finset.mem_finsuppAntidiag] at hm
    simp only [Finset.mem_piAntidiag]
    exact ⟨hm.1, fun i _ => Finset.mem_univ i⟩
  · intro g _
    simp
  · intro m _
    simp
  · intro g _
    set m : J →₀ ℕ := Finsupp.equivFunOnFinite.symm g with hm
    have hg : g = ⇑m := by simp [hm]
    rw [hg, Finsupp.multinomial_of_support_subset (Finset.subset_univ _),
      Finsupp.prod_fintype _ _ (by simp), monomial_eq, Finsupp.prod_fintype _ _ (by simp)]
    simp only [mul_pow, Finset.prod_mul_distrib, smul_eq_C_mul, map_mul, map_prod, map_pow, map_natCast,
      map_neg, map_one]
    ring

theorem polarization_coefficients_bound : ∀ (J : Type) [Fintype J] [DecidableEq J] (d : ℕ) (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ), ∃ Pl : MvPolynomial J ℝ, Pl.IsHomogeneous d ∧ (∀ c : J → ℝ, eval c Pl = Φ ((-∑ x, C (c x) * X x) ^ d)) ∧ (∀ m : J →₀ ℕ, m.degree = d → AddMonoidAlgebra.coeff Pl m = (-1) ^ d * (m.multinomial : ℝ) * Φ (monomial m 1)) ∧ ∀ m : J →₀ ℕ, m.degree = d → |Φ (monomial m 1)| ≤ |Pl.coeff m| := by
  intro J _ _ d Φ
  set S := Finset.finsuppAntidiag (Finset.univ : Finset J) d with hSdef
  have hS : ∀ m : J →₀ ℕ, m ∈ S ↔ m.degree = d := by
    intro m
    simp [hSdef, Finset.mem_finsuppAntidiag, Finsupp.degree_eq_sum]
  set a : (J →₀ ℕ) → ℝ := fun m => (-1) ^ d * (m.multinomial : ℝ) * Φ (monomial m 1) with ha
  set Pl : MvPolynomial J ℝ := ∑ m ∈ S, monomial m (a m) with hPl
  have hcoeff : ∀ m : J →₀ ℕ, m.degree = d → AddMonoidAlgebra.coeff Pl m = a m := by
    intro m hm
    rw [hPl, coeff_sum, Finset.sum_eq_single m]
    · simp
    · intro b _ hb
      rw [coeff_monomial, ite_eq_right hb]
    · intro hm'
      exact absurd ((hS m).2 hm) hm'
  refine ⟨Pl, ?_, ?_, hcoeff, ?_⟩
  · apply IsHomogeneous.sum
    intro m hm
    exact isHomogeneous_monomial _ ((hS m).1 hm)
  · intro c

    rw [pa_neg_lin_pow, hPl, map_sum (eval c), map_sum Φ]
    refine Finset.sum_congr hSdef fun m _ => ?_
    rw [eval_monomial, map_smul, smul_eq_mul, ha]
    ring
  · intro m hm
    rw [hcoeff m hm, ha]
    have hpos : (1 : ℝ) ≤ (m.multinomial : ℝ) := by
      have : 0 < m.multinomial := by
        rw [Finsupp.multinomial_eq]
        exact Nat.multinomial_pos _ _
      exact_mod_cast this
    rw [abs_mul, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul, Nat.abs_cast]
    nlinarith [abs_nonneg (Φ (monomial m 1))]

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.PolarizationCoefficientsBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound", "h": "module\n\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.WeilBound.CoreStatements.FlagImmersions.PolarizationCoefficientsBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem polarisation_functional : ∀ (J : Type) [Fintype J] [DecidableEq J] (d : ℕ) (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ), ∃ Pl : MvPolynomial J ℝ, Pl.IsHomogeneous d ∧ (∀ c : J → ℝ, eval c Pl = Φ ((-∑ x, C (c x) * X x) ^ d)) ∧ (∀ m : J →₀ ℕ, m.degree = d → AddMonoidAlgebra.coeff Pl m = (-1) ^ d * (m.multinomial : ℝ) * Φ (monomial m 1)) ∧ ∀ m : J →₀ ℕ, m.degree = d → |Φ (monomial m 1)| ≤ |Pl.coeff m| :=
  @RootFieldNumerics.polarization_coefficients_bound

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound =====
