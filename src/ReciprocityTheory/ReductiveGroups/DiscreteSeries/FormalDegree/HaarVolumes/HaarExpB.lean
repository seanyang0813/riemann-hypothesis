module

public import Mathlib.Analysis.Normed.Module.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.MeasureTheory.Group.Measure
public import Mathlib.MeasureTheory.Covering.Besicovitch
public import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar
public import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv
public import Mathlib.Analysis.Normed.Algebra.Exponential
public import Mathlib.Analysis.Calculus.FDeriv.Comp
public import Mathlib.Analysis.Calculus.FDeriv.Linear
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.MeasureTheory.Measure.RegularityCompacts
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.UniformSpace.Uniformizable
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Separation.CompletelyRegular
import Mathlib.Topology.Sheaves.Presheaf

public import Formalism.LocalRingCardinality.SpanPowerMembership.ExistsDensity

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.HExp

open MeasureTheory Filter Topology Metric NormedSpace Set Formalism.BasicNotions.Examples₂.CD
open scoped ENNReal NNReal

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸]

theorem Chart.exists_density_unif {V : Submodule ℝ 𝔸} {G : Type*} [Group G] [TopologicalSpace G]
    (C : Chart V G) [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V]
    [MeasurableSpace G] [BorelSpace G] [IsTopologicalGroup G]
    (μ : Measure G) [μ.IsHaarMeasure] (lam : Measure V) [lam.IsAddHaarMeasure] :
    ∃ c : ℝ≥0∞, c ≠ 0 ∧ c ≠ ⊤ ∧
      (∀ D : ℝ≥0, c < D → ∃ δ > 0, ∀ s : Set V, MeasurableSet s → s ⊆ ball (0 : V) δ →
        μ (C.img s) ≤ D * lam s) ∧
      (∀ D : ℝ≥0, (D : ℝ≥0∞) < c → ∃ δ > 0, ∀ s : Set V, MeasurableSet s → s ⊆ ball (0 : V) δ →
        D * lam s ≤ μ (C.img s)) := by
  obtain ⟨ρ, hρ, hR⟩ := C.exists_rho
  have := C.nu_finite hR μ
  obtain ⟨c, hc0, hct, hup, hdown⟩ := exists_density lam (C.nu ρ μ)
    (fun ε h0 h1 => C.nu_qinv hR μ hρ ε h0 h1) (fun r hr => C.nu_pos hR μ hρ r hr)
  have key : ∀ s : Set V, MeasurableSet s → s ⊆ ball (0 : V) ρ → C.nu ρ μ s = μ (C.img s) := by
    intro s hs hsρ
    rw [C.nu_apply hR μ hs, Set.inter_eq_self_of_subset_left hsρ, Chart.img_eq]
  refine ⟨c, hc0, hct, fun D hD => ?_, fun D hD => ?_⟩
  · obtain ⟨δ, hδ, h⟩ := hup D hD
    refine ⟨min δ ρ, lt_min hδ hρ, fun s hsm hs => ?_⟩
    rw [← key s hsm (hs.trans (ball_subset_ball (min_le_right _ _)))]
    exact h s (hs.trans (ball_subset_ball (min_le_left _ _)))
  · obtain ⟨δ, hδ, h⟩ := hdown D hD
    refine ⟨min δ ρ, lt_min hδ hρ, fun s hsm hs => ?_⟩
    rw [← key s hsm (hs.trans (ball_subset_ball (min_le_right _ _)))]
    exact h s (hs.trans (ball_subset_ball (min_le_left _ _)))

theorem Chart.exists_density_unif' {V : Submodule ℝ 𝔸} {G : Type*} [Group G] [TopologicalSpace G]
    (C : Chart V G) (_hfd : FiniteDimensional ℝ V) (mV : MeasurableSpace V) (_hbV : BorelSpace V)
    (mG : MeasurableSpace G) (_hbG : BorelSpace G) (_hG : IsTopologicalGroup G)
    (μ : Measure G) (_hμ : μ.IsHaarMeasure) (lam : Measure V) (_hlam : lam.IsAddHaarMeasure) :
    ∃ c : ℝ≥0∞, c ≠ 0 ∧ c ≠ ⊤ ∧
      (∀ D : ℝ≥0, c < D → ∃ δ > 0, ∀ s : Set V, MeasurableSet s → s ⊆ ball (0 : V) δ →
        μ (C.img s) ≤ D * lam s) ∧
      (∀ D : ℝ≥0, (D : ℝ≥0∞) < c → ∃ δ > 0, ∀ s : Set V, MeasurableSet s → s ⊆ ball (0 : V) δ →
        D * lam s ≤ μ (C.img s)) :=
  Chart.exists_density_unif C μ lam

end ReciprocityTheory.ChartRestriction.DS.HExp
