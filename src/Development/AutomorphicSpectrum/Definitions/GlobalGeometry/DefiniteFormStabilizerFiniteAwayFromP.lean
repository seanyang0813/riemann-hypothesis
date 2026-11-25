module

public import Mathlib.NumberTheory.NumberField.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.TheoremA

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open scoped ComplexConjugate

namespace GlobalTheory.CompanionTheory.Ar.Rec

section Tuple

open ReciprocityTheory.ChartRestriction.G.T0 (TVar OmS sImg)

variable (K : Type) [Field K] [NumberField K] {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V]
  {Ω : Type} [Field Ω] [Algebra K Ω]

abbrev Gens (V : Type) : Type := Σ n : ℕ, Fin (n + 1) → V

def IsGen (W : Submodule (𝓞 K) V) (ev : V → Ω) (g : Gens V) : Prop :=
  Submodule.span (𝓞 K) (Set.range g.2) = W ∧ ev (g.2 0) ≠ 0

def xs (ev : V → Ω) (g : Gens V) (k : Fin g.1) : Ω := ev (g.2 k.succ) / ev (g.2 0)



end Tuple

end GlobalTheory.CompanionTheory.Ar.Rec
