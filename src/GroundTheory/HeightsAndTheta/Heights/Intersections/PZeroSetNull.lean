module

public import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsAntisym
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeA
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsDiagR, GroundTheory.HeightsAndTheta.Heights.Intersections.PZeroSetNull

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsDiagR =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsDiagR", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsAntisym\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Inter

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4

noncomputable section

section Statements

def ZeroSetNull.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) (e : ℕ) (s : MRing ι)
    (a : K → ℕ) (φ : Fin e → ((Σ k, ι k) → ℂ) → ℝ) (g₁ g₂ : ((Σ k, ι k) → ℂ) → ℝ),
    IsArithVar P (e + 1) → IsMultiHomog s a → s ∉ P →
    (∀ z ∈ mcPts P, eval z (map (Int.castRingHom ℂ) s) ≠ 0 → g₁ z = g₂ z) →
    ptsIntegral P φ g₁ = ptsIntegral P φ g₂

end Statements

section Inhabit

end Inhabit

end

end GroundTheory.Heights₂.Heights.Inter
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsDiagR =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.PZeroSetNull =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.Intersections.PZeroSetNull", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsDiagR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeA\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Inter

open MvPolynomial MeasureTheory ReciprocityTheory.ChartRestriction.G.Geo

theorem mem_mcPts_span_singleton {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {P : Ideal (MRing ι)} {s : MRing ι} {z : (Σ k, ι k) → ℂ} (hz : z ∈ mcPts P)
    (hs : eval z (map (Int.castRingHom ℂ) s) = 0) : z ∈ mcPts (Ideal.span {s}) := by
  refine ⟨hz.1, fun f hf => ?_⟩
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hf
  rw [map_mul, map_mul, hs, mul_zero]

theorem ZeroSetNull.proof : ZeroSetNull.Statement := by
  intro K _ ι _ P e s a φ g₁ g₂ hP hs hsP hg
  classical
  unfold ptsIntegral
  by_cases hΨ : ∃ Ψ : (((k : K) → ι k) → ℂ) →ₗ[ℂ] (Fin (e + 1) → ℂ), IsGoodProj P Ψ
  · rw [dite_eq_left hΨ, dite_eq_left hΨ]
    set Ψ := hΨ.choose with hΨdef
    have hJ : IsMultiHomogIdeal (Ideal.span {s}) :=
      ⟨{s}, fun f hf => ⟨a, (Set.mem_singleton_iff.mp hf) ▸ hs⟩, rfl⟩
    have hJP : ¬ Ideal.span {s} ≤ P := fun h => hsP (h (Ideal.subset_span rfl))
    have hnull := projB_null Ψ hP hΨ.choose_spec hJ hJP
    unfold ptsIntegralAt
    refine integral_congr_ae ?_
    rw [Filter.EventuallyEq, ae_iff]
    refine measure_mono_null (fun y hy => ?_) hnull
    by_contra hyB
    apply hy
    refine finsum_mem_congr rfl fun w _ => ?_
    unfold sheetDensity
    by_cases hγ : ∃ γ, IsSheet P Ψ y w γ
    · rw [dite_eq_left hγ, dite_eq_left hγ]
      obtain ⟨-, hev⟩ := hγ.choose_spec
      obtain ⟨-, hmem, hproj⟩ := hev.self_of_nhds
      have hs0 : eval (hγ.choose y) (map (Int.castRingHom ℂ) s) ≠ 0 := fun h0 =>
        hyB ⟨hγ.choose y, hmem, mem_mcPts_span_singleton hmem h0, hproj⟩
      rw [hg _ hmem hs0]
    · rw [dite_eq_right hγ, dite_eq_right hγ]
  · rw [dite_eq_right hΨ, dite_eq_right hΨ]

end GroundTheory.Heights₂.Heights.Inter
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.PZeroSetNull =====
