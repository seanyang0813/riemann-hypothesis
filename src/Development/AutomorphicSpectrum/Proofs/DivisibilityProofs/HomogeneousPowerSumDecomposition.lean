module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.StatementsCoinv
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvAboveTop
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvAboveTopGeneral
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvIdealComponent
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvIdealRepresentation
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvMonomialReduction
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvPolynomialReduction
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStaircaseComponent
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStaircaseDegree
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStepReduction
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PHomogeneousComponentMul
public import Mathlib.RingTheory.MvPolynomial.Homogeneous

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.DecompositionPowerSumsTopDegree, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.DecompositionPowerSumsTopDegree =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.DecompositionPowerSumsTopDegree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.StatementsCoinv\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvAboveTop\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvAboveTopGeneral\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvIdealComponent\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvIdealRepresentation\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvMonomialReduction\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvPolynomialReduction\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStaircaseComponent\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStaircaseDegree\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PCoinvStepReduction\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PHomogeneousComponentMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top


open GroundTheory.Heights₂.Heights.RestTerms in
theorem RootFieldNumerics.coinv_above_top : CoinvAboveTopGeneral.Statement :=
  CoinvAboveTopGeneral.proof (CoinvAboveTop.proof
    (CoinvPolynomialReduction.proof (CoinvMonomialReduction.proof CoinvStepReduction.proof))
    (CoinvIdealComponent.proof CoinvIdealRepresentation.proof HomogeneousComponentMul.proof)
    (CoinvStaircaseComponent.proof CoinvStaircaseDegree.proof))

theorem RootFieldNumerics.decomposition_power_sums_top_degree : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (F : RP Ψ N), 2 ≤ N → F.IsHomogeneous (dimFl Ψ N + 1) → ∃ Q : Ψ → ℕ → RP Ψ N, (∀ τ k, 1 ≤ k → k ≤ N → (Q τ k).IsHomogeneous (dimFl Ψ N + 1 - k)) ∧ F = ∑ τ, ∑ k ∈ Finset.Icc 1 N, pk τ k * Q τ k := by
  intro Ψ _ _ N F _ hF
  have hlt : Fintype.card Ψ * (Fintype.card (Fin N) * (Fintype.card (Fin N) - 1) / 2) < dimFl Ψ N + 1 := by
    simp [dimFl]
  obtain ⟨Q, hQ, hFQ⟩ := RootFieldNumerics.coinv_above_top ℝ Ψ (Fin N) (dimFl Ψ N + 1) F hF hlt
  refine ⟨fun τ k => Q k τ, fun τ k _ _ => hQ k τ, ?_⟩
  rw [hFQ, Fintype.card_fin, Finset.sum_comm]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.DecompositionPowerSumsTopDegree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.WeilBound.CoreStatements.FlagImmersions.DecompositionPowerSumsTopDegree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem form_top_succ_eq_sum_pk : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (F : RP Ψ N), 2 ≤ N → F.IsHomogeneous (dimFl Ψ N + 1) → ∃ Q : Ψ → ℕ → RP Ψ N, (∀ τ k, 1 ≤ k → k ≤ N → (Q τ k).IsHomogeneous (dimFl Ψ N + 1 - k)) ∧ F = ∑ τ, ∑ k ∈ Finset.Icc 1 N, pk τ k * Q τ k :=
  @RootFieldNumerics.decomposition_power_sums_top_degree

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition =====
