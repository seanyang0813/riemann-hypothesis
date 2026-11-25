module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightOrbitChart

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G

def OrbitChartTerm.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (n : ι → ℕ)
    (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) (s : MvPolynomial (Coord n) ℤ),
    Geo.IsSectionOn (orbitIdeal x) A.toGeo s → ∀ c : (k : ι) → Fin (n k + 1),
      (∀ k, x k (c k) ≠ 0) →
        chartEval x c s ≠ 0 ∧ ∀ v : FinitePlace (coordField x),
          (∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ orbitCenter x v) →
            finiteTerm A v (coordVec x) - Real.log (v (evalCone (coordVec x) s)) =
              -Real.log (v (IntermediateField.inclusion (ratioField_le_coordField x)
                (chartEval x c s)))

end GroundTheory.Heights₂.Heights
