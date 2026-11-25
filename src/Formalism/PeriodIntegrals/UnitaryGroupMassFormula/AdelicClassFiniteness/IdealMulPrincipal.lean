module

public import Mathlib.NumberTheory.NumberField.Basic

@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField
open scoped nonZeroDivisors

def IdealBoundAll : Prop :=
  ∀ (E : Type) [Field E] [NumberField E], ∃ B : ℕ, ∀ I : Ideal (𝓞 E), I ≠ ⊥ → ∃ c ∈ I, c ≠ 0 ∧ ∃ e : ℕ,
    1 ≤ e ∧ e ≤ B ∧ ∀ g ∈ I, ∃ q : 𝓞 E, (e : 𝓞 E) * g = c * q

end PIW.AdelClassFin
