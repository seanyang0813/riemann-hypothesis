module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MeasureTheory Filter MvPolynomial

noncomputable section

universe u v

def torusTorsion (n m : ℕ) : Set (Fin n → AddCircle (1 : ℝ)) :=
  {x | m • x = 0}

def TorsionEquidistribution.Statement : Prop :=
  ∀ (n : ℕ) (hn : 0 < n) (Z : Set (Fin n → AddCircle (1 : ℝ))) (c : ℝ),
    IsClosed Z → volume Z = 0 → (∃ k : ℤ, c = k / 2) →
    ∀ᶠ m : ℕ in atTop,
      (torusTorsion n m \ Z).ncard ≤
        3 * {x ∈ torusTorsion n m \ Z | (1 / 4 : ℝ) ≤ ‖x ⟨0, hn⟩ + (c : AddCircle (1 : ℝ))‖}.ncard

def SupOfOrthonormalSum.Statement : Prop :=
  ∀ (V : Type u) [AddCommGroup V] [Module ℂ V] (ι : Type v) [Fintype ι] (b : ι → V)
    (p : Seminorm ℂ V), (∀ i, p (b i) ≤ 1) →
    ∀ c : ι → ℂ, p (∑ i, c i • b i) ≤ √(Fintype.card ι : ℝ) * √(∑ i, ‖c i‖ ^ 2)

def SlopeParameterChoice.level (g : ℕ) (h : ℝ) : ℕ :=
  3 * ⌈2 + (g : ℝ) ^ 2 + h⌉₊

def SlopeParameterChoice.third (g : ℕ) (h : ℝ) : ℝ :=
  (SlopeParameterChoice.level g h : ℝ) ^ 2 / 3

def SlopeParameterChoice.Statement : Prop :=
  ∀ C₀ C₂ : ℝ, 0 ≤ C₀ → 0 ≤ C₂ → ∃ C₄ : ℝ, ∀ (g : ℕ) (h μ s : ℝ), 1 ≤ g → 0 ≤ h →
    -(h / 2 + C₀ * g) - C₂ * g * Real.log (2 + g + h) ≤ μ →
    s ≤ 1 / 2 * Real.log (3 * Real.exp 1 * SlopeParameterChoice.third g h ^ 2) +
      2 / SlopeParameterChoice.third g h *
        (g * Real.log (SlopeParameterChoice.level g h) - μ) →
    s ≤ C₄ * Real.log (2 + g + h)

section Inhabitants

end Inhabitants

end

end GroundTheory.Heights₂.Heights
