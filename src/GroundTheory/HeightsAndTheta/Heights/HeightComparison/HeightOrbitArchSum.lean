module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightObjects

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open ReciprocityTheory.ChartRestriction.G NumberField

def OrbitArchSum.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] [Nonempty ι] (n : ι → ℕ)
    (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) (s : MvPolynomial (Coord n) ℤ),
    BlockNonzero x → Geo.IsSectionOn (orbitIdeal x) A.toGeo s →
    Geo.arInt (orbitIdeal x) s A.toGeo (Fin.elim0 : Fin 0 → Geo.HermLine (blockIdx n)) =
      (Geo.degC (ι := blockIdx n) (orbitIdeal x) : ℝ) / Module.finrank ℚ (coordField x) *
        ∑ σ : coordField x →+* ℂ,
          Real.log (‖evalCone (fun k i ↦ σ (coordVec x k i)) s‖ /
            A.metric (fun k i ↦ σ (coordVec x k i)))

end GroundTheory.Heights₂.Heights
