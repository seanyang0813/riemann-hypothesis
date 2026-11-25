module

public import Mathlib.RingTheory.Ideal.Span

@[expose] public section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.CentreOver

def LocPrincipal {A : Type} [CommRing A] (I p : Ideal A) : Prop :=
  ∃ t f : A, t ∉ p ∧ f ∈ I ∧ f ≠ 0 ∧ ∀ g ∈ I, ∃ n : ℕ, t ^ n * g ∈ Ideal.span {f}

end GlobalTheory.CompanionTheory.Hypotheses₂.CentreOver
