module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightOrbitChart

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G

def OrbitChartResidue.Statement : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] [Nonempty ι] (n : ι → ℕ)
    (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) (s : MvPolynomial (Coord n) ℤ),
    BlockNonzero x → Geo.IsSectionOn (orbitIdeal x) A.toGeo s →
    ∀ V ∈ Geo.divSupp (orbitIdeal x) s, ∀ c : (k : ι) → Fin (n k + 1),
      (∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ V) →
        (Geo.geoNum (ι := blockIdx n) 0 V Fin.elim0 : ℝ) * Real.log (Geo.charOf V) =
          Real.log (Nat.card (chartRing x c ⧸ chartPoint x c V))

end GroundTheory.Heights₂.Heights
