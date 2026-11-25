module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightOrbitCenter

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open ReciprocityTheory.ChartRestriction.G NumberField

def OrbitLocalSum.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] [Nonempty ι] (n : ι → ℕ)
    (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) (s : MvPolynomial (Coord n) ℤ),
    BlockNonzero x → Geo.IsSectionOn (orbitIdeal x) A.toGeo s →
    ∀ V ∈ Geo.divSupp (orbitIdeal x) s,
      (Module.finrank ℚ (coordField x) : ℝ) *
          ((Geo.multAt (orbitIdeal x ⊔ Ideal.span {s}) V : ℝ) *
            ((Geo.geoNum (ι := blockIdx n) 0 V Fin.elim0 : ℝ) * Real.log (Geo.charOf V))) =
        (Module.finrank ℚ (ratioField x) : ℝ) *
          ∑ᶠ v ∈ {v : FinitePlace (coordField x) | orbitCenter x v = V},
            (finiteTerm A v (coordVec x) - Real.log (v (evalCone (coordVec x) s)))

end GroundTheory.Heights₂.Heights
