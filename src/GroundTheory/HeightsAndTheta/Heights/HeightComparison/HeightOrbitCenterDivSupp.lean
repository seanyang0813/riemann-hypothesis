module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightOrbitCenter

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open ReciprocityTheory.ChartRestriction.G NumberField MvPolynomial

def OrbitCenterDivSupp.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (n : ι → ℕ) (x : Cone n (AlgebraicClosure ℚ))
    (s : MvPolynomial (Coord n) ℤ) (a : ι → ℕ),
    BlockNonzero x → Geo.IsMultiHomog (ι := blockIdx n) s a → s ∉ orbitIdeal x →
    ∀ v : FinitePlace (coordField x), s ∈ orbitCenter x v →
      orbitCenter x v ∈ Geo.divSupp (orbitIdeal x) s

end GroundTheory.Heights₂.Heights
