module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionMonomialLines
public import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionMultilinearExpansion

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.RootModelArithmeticIntersection, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootModelArithmeticIntersection =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.RootModelArithmeticIntersection", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionMonomialLines\npublic import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionMultilinearExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

namespace Ii

theorem lin_prod_expand {J : Type} [Fintype J] [DecidableEq J] (d : ℕ) (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ)
    (c : J → ℝ) :
    Φ ((∑ j, C (c j) * X j) ^ d) =
      ∑ w : Fin d → J, (∏ k, c (w k)) * Φ (monomial (∑ k, Finsupp.single (w k) 1) 1) := by

  rw [← Fin.prod_const, Fintype.prod_sum, map_sum]
  refine Finset.sum_congr rfl fun w _ => ?_
  have hm : ∏ k, C (c (w k)) * X (w k) = C (∏ k, c (w k)) * monomial (∑ k, Finsupp.single (w k) 1) (1 : ℝ) := by
    rw [Finset.prod_mul_distrib, map_prod, monomial_sum_one]
    rfl
  rw [hm, C_mul', map_smul, smul_eq_mul]

theorem prod_weight {α : Type} [DecidableEq α] {d : ℕ} (w : Fin d → Option α) (x : ℝ) :
    ∏ k, (if w k = none then x else 1) = x ^ (∑ k, Finsupp.single (w k) 1 : Option α →₀ ℕ) none := by
  rw [Finsupp.finsetSum_apply, ← Finset.prod_pow_eq_pow_sum]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [Finsupp.single_apply]
  split_ifs <;> simp

end Ii

open Ii in
theorem root_model_arithmetic_intersection : ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (t : ℝ) (lam : Wt Ψ N) (s : ℝ) (q : ℕ) (n : Option (Ψ × Fin N) → ℤ), (∀ j, (n j : ℝ) = q * M.coef lam s j) → II M.K M.ι M.P (dimFl Ψ N + 1) (fun _ => combLine (M.line t) n) = M.δ * (q : ℝ) ^ (dimFl Ψ N + 1) * M.arFun II t (linA lam s ^ (dimFl Ψ N + 1)) := by
  intro II hII Ψ _ N M t lam s q n hn
  classical
  have hsm : ∀ j, IsSmoothHerm (M.line t j) := by
    intro j
    cases j with
    | none => exact M.A_smooth
    | some r => exact M.x_smooth t r
  rw [RootFieldNumerics.intersection_multilinear_expansion II hII M.K M.ι M.P (dimFl Ψ N + 1) _ (M.line t) (fun _ => n) M.arith hsm]
  let cc : Option (Ψ × Fin N) → ℝ := fun j => Option.elim j s (fun r => -lam r.1 r.2)
  have hlin : linA lam s = ∑ j, C (cc j) * X j := by
    rw [Fintype.sum_option]

    simp [cc, linA, toA, linRoot, map_sum, map_neg, rename_X, Finset.sum_neg_distrib, add_comm]
  rw [hlin, lin_prod_expand, Finset.mul_sum]
  refine Finset.sum_congr rfl fun w _ => ?_
  obtain ⟨hdeg, σ, _, hII2⟩ := RootFieldNumerics.intersection_monomial_lines II hII.1 M.K M.ι M.P (dimFl Ψ N + 1) _ (M.line t) w M.arith hsm
  have hmono : M.arFun II t (monomial (∑ k, Finsupp.single (w k) 1) 1) =
      II M.K M.ι M.P (dimFl Ψ N + 1) (fun k => M.line t (w k)) /
        (M.δ * (M.kA : ℝ) ^ (∑ k, Finsupp.single (w k) 1 : Option (Ψ × Fin N) →₀ ℕ) none) := by
    have hb : (monomial (∑ k, Finsupp.single (w k) 1) (1 : ℝ) : RPA Ψ N) =
        basisMonomials (Option (Ψ × Fin N)) ℝ (∑ k, Finsupp.single (w k) 1) := by
      rw [coe_basisMonomials]
    rw [RootModel.arFun, hb, Module.Basis.constr_basis, RootModel.arMono, if_pos hdeg, hII2]
  have hc : ∏ k, cc (w k) = (∏ k, M.coef lam s (w k)) *
      (M.kA : ℝ) ^ (∑ k, Finsupp.single (w k) 1 : Option (Ψ × Fin N) →₀ ℕ) none := by
    rw [← prod_weight w (M.kA : ℝ), ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun k _ => ?_
    have hk : (M.kA : ℝ) ≠ 0 := by exact_mod_cast M.kA_pos.ne'
    cases w k with
    | none =>
      simp [cc, RootModel.coef]
      field_simp
    | some r => simp [cc, RootModel.coef]
  have hnp : ∏ k, (n (w k) : ℝ) = (q : ℝ) ^ (dimFl Ψ N + 1) * ∏ k, M.coef lam s (w k) := by
    simp_rw [hn]
    rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  have hδ : (M.δ : ℝ) ≠ 0 := by exact_mod_cast M.δ_pos.ne'
  have hk : (M.kA : ℝ) ≠ 0 := by exact_mod_cast M.kA_pos.ne'
  rw [hmono, hc, hnp]
  field_simp

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootModelArithmeticIntersection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RootModelArithmeticIntersection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

alias top_comb_eq_arFun := _root_.RootFieldNumerics.root_model_arithmetic_intersection

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula =====
