module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.RootCoefWeightedSumSplit, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootCoefWeightedSumSplit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.RootCoefWeightedSumSplit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem root_coef_add {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N) (lam mu : Wt Ψ N) (s s' : ℝ)
    (j : Option (Ψ × Fin N)) : M.coef (lam + mu) (s + s') j = M.coef lam s j + M.coef mu s' j := by
  cases j with
  | none => simp only [RootModel.coef]; ring
  | some r => simp only [RootModel.coef, Pi.add_apply]; ring

theorem root_coef_smul {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N) (lam : Wt Ψ N) (a s : ℝ)
    (j : Option (Ψ × Fin N)) : M.coef (a • lam) (a * s) j = a * M.coef lam s j := by
  cases j with
  | none => simp only [RootModel.coef, mul_div_assoc]
  | some r => simp only [RootModel.coef, Pi.smul_apply, smul_eq_mul]; ring

theorem root_coef_split {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N) (lam : Wt Ψ N) (s : ℝ)
    (j : Option (Ψ × Fin N)) : M.coef lam s j = M.coef lam 0 j + s * M.coef 0 1 j := by
  cases j with
  | none => simp only [RootModel.coef]; ring
  | some r => simp only [RootModel.coef, Pi.zero_apply]; ring

theorem root_coef_weighted_sum_split {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N) (lam : Wt Ψ N) (s : ℝ)
    (g : Option (Ψ × Fin N) → ℝ) :
    ∑ j, M.coef lam s j * g j = ∑ j, M.coef lam 0 j * g j + s * ∑ j, M.coef 0 1 j * g j := by
  rw [Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [root_coef_split M lam s j]
  ring

end RootFieldNumerics

theorem RootFieldNumerics.curveDeg_linear_and_nef : ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (lam mu : Wt Ψ N) (s s' a : ℝ), (∀ W, M.curveDeg (lam + mu) (s + s') W = M.curveDeg lam s W + M.curveDeg mu s' W) ∧ (∀ W, M.curveDeg (a • lam) (a * s) W = a * M.curveDeg lam s W) ∧ (∀ p, 0 ≤ s → M.NefAt p lam 0 → M.NefAt p 0 1 → M.NefAt p lam s) ∧ (0 ≤ s → M.NefGen lam 0 → M.NefGen 0 1 → M.NefGen lam s) := by
  intro Ψ _ N M lam mu s s' a
  refine ⟨fun W => ?_, fun W => ?_, fun p hs h1 h2 W hW => ?_, fun hs h1 h2 W hW hP => ?_⟩
  · simp only [RootModel.curveDeg]
    rw [← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun j _ => by rw [RootFieldNumerics.root_coef_add]; ring
  · simp only [RootModel.curveDeg]
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun j _ => by rw [RootFieldNumerics.root_coef_smul]; ring
  · have e : M.curveDeg lam s W = M.curveDeg lam 0 W + s * M.curveDeg 0 1 W :=
      RootFieldNumerics.root_coef_weighted_sum_split M lam s _
    rw [e]
    exact add_nonneg (h1 W hW) (mul_nonneg hs (h2 W hW))
  · have e : ∑ j, M.coef lam s j * geomDeg W (M.line 1 j) 1
        = ∑ j, M.coef lam 0 j * geomDeg W (M.line 1 j) 1
          + s * ∑ j, M.coef 0 1 j * geomDeg W (M.line 1 j) 1 :=
      RootFieldNumerics.root_coef_weighted_sum_split M lam s _
    rw [e]
    exact add_nonneg (h1 W hW hP) (mul_nonneg hs (h2 W hW hP))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.RootCoefWeightedSumSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RootCoefWeightedSumSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem curveDeg_linear_nef : ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (lam mu : Wt Ψ N) (s s' a : ℝ), (∀ W, M.curveDeg (lam + mu) (s + s') W = M.curveDeg lam s W + M.curveDeg mu s' W) ∧ (∀ W, M.curveDeg (a • lam) (a * s) W = a * M.curveDeg lam s W) ∧ (∀ p, 0 ≤ s → M.NefAt p lam 0 → M.NefAt p 0 1 → M.NefAt p lam s) ∧ (0 ≤ s → M.NefGen lam 0 → M.NefGen 0 1 → M.NefGen lam s) :=
  @RootFieldNumerics.curveDeg_linear_and_nef

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone =====
