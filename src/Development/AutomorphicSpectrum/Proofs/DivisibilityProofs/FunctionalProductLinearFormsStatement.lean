module

public import Mathlib.Basic.Real.Basic
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn
public import Development.WeilBound.CoreStatements.FlagImmersions.MapProdLinear
import Development.WeilBound.CoreStatements.FlagImmersions.RootModelPointsIntegral

@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

theorem _root_.GlobalTheory.T.functional_product_linear_forms : ∀ (J : Type) [Fintype J] [DecidableEq J] (d : ℕ) (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ) (c : Fin d → J → ℝ), Φ (∏ k, ∑ j, C (c k j) * X j) = ∑ w : Fin d → J, (∏ k, c k (w k)) * Φ (monomial (∑ k, Finsupp.single (w k) 1) 1) :=
  @_root_.RootFieldNumerics.GeoComb.map_prod_lin
