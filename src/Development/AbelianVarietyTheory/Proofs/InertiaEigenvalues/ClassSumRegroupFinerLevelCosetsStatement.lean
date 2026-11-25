module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumSmallerLevel
public import Formalism.LocalToGlobal.IndefiniteReal.Bridge
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosets, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosets =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosets", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumSmallerLevel\npublic import Formalism.LocalToGlobal.IndefiniteReal.Bridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField GlobalTheory.ExportSeries
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


noncomputable section

namespace GlobalTheory.ClassRefineBridge

open GlobalTheory.ClassRefine
open scoped Classical

variable {G Γ : Type} [Group G] [Group Γ] (ι : Γ →* G)

theorem injective_of_isReps {J : Subgroup G} {I : Type} {y : I → G} (hy : Bridge.IsReps ι J y) :
    Function.Injective y := by
  intro i j hij
  have h1 : ∃ (γ : Γ) (k : J), y i = ι γ * y i * k := ⟨1, 1, by simp⟩
  have h2 : ∃ (γ : Γ) (k : J), y i = ι γ * y j * k := ⟨1, 1, by simp [hij]⟩
  exact (hy (y i)).unique h1 h2

theorem image_reps {J : Subgroup G} {I : Type} [Fintype I] {y : I → G} (hy : Bridge.IsReps ι J y) :
    ∀ g : G, ∃! t, t ∈ Finset.univ.image y ∧ ∃ (γ : ι.range) (κ : G), κ ∈ J ∧ g = (γ : G) * t * κ := by
  intro g
  obtain ⟨i, ⟨γ, k, e⟩, hu⟩ := hy g
  refine ⟨y i, ⟨Finset.mem_image_of_mem _ (Finset.mem_univ _), ⟨ι γ, γ, rfl⟩, k, k.2, e⟩, ?_⟩
  rintro t ⟨ht, ⟨_, δ, rfl⟩, κ, hκ, e'⟩
  obtain ⟨j, -, rfl⟩ := Finset.mem_image.1 ht
  rw [hu j ⟨δ, ⟨κ, hκ⟩, e'⟩]

theorem card_stab_eq (hι : Function.Injective ι) (J : Subgroup G) (t : G) :
    Nat.card (Bridge.stab ι J t) = Nat.card (stabQ ι.range J t) := by
  refine Nat.card_congr (Equiv.ofBijective (fun γ => ⟨⟨ι γ, γ, rfl⟩, ?_⟩) ⟨?_, ?_⟩)
  · rw [mem_stabQ]; exact (Bridge.mem_stab ι).1 γ.2
  · intro a b h
    apply Subtype.ext
    apply hι
    have := congrArg (fun x : stabQ ι.range J t => ((x : ι.range) : G)) h
    simpa using this
  · rintro ⟨⟨_, γ, rfl⟩, hq⟩
    refine ⟨⟨γ, (Bridge.mem_stab ι).2 (mem_stabQ.1 hq)⟩, rfl⟩

theorem sum_image_eq {I : Type} [Fintype I] {y : I → G} (hy : Function.Injective y) (f : G → ℂ) :
    ∑ i, f (y i) = ∑ t ∈ Finset.univ.image y, f t := by
  rw [Finset.sum_image (fun a _ b _ h => hy h)]

theorem sum_isReps_refine : ∀ {G Γ : Type} [Group G] [Group Γ] (ι : Γ →* G), Function.Injective ι → ∀ {J J₀ : Subgroup G}, J₀ ≤ J →
    ∀ {F : Finset G}, (∀ u ∈ F, u ∈ J) → (∀ κ ∈ J, ∃! u, u ∈ F ∧ u⁻¹ * κ ∈ J₀) →
    ∀ {I₀ : Type} [Fintype I₀] (y₀ : I₀ → G), Bridge.IsReps ι J₀ y₀ → ∀ {I : Type} [Fintype I] (y : I → G), Bridge.IsReps ι J y →
    ∀ (Φ : G → ℂ), (∀ γ g, Φ (ι γ * g) = Φ g) → (∀ k ∈ J₀, ∀ g, Φ (g * k) = Φ g) →
    ∑ i, ((Nat.card (Bridge.stab ι J₀ (y₀ i)) : ℂ))⁻¹ * Φ (y₀ i) =
      ∑ i, ((Nat.card (Bridge.stab ι J (y i)) : ℂ))⁻¹ * ∑ u ∈ F, Φ (y i * u) := by
  intro G Γ _ _ ι hι J J₀ hJ F hF hFu I₀ _ y₀ hy₀ I _ y hy Φ hl hr
  have key := sum_classReps_refine (Q := ι.range) hJ (image_reps ι hy) (image_reps ι hy₀) Φ
    (by rintro ⟨_, γ, rfl⟩ g; exact hl γ g) hr hF hFu
  simp only [card_stab_eq ι hι]
  rw [sum_image_eq (injective_of_isReps ι hy₀) (fun t => ((Nat.card (stabQ ι.range J₀ t) : ℂ))⁻¹ * Φ t),
    sum_image_eq (injective_of_isReps ι hy) (fun t => ((Nat.card (stabQ ι.range J t) : ℂ))⁻¹ * ∑ u ∈ F, Φ (t * u))]
  exact key

end GlobalTheory.ClassRefineBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosets =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.Bridge\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField GlobalTheory.ExportSeries
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar



end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement =====
