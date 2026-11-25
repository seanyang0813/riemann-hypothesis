module

public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Objects

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential)

def ListMonoRaise.Statement : Prop :=
  ∀ {D : ℕ} {X : Type} [TopologicalSpace X] (A : FinHolAtlas D X) (Yo : Set X) (th Om : LocPot X)
    (u : X → ℝ), IsOpen Yo → IsPotential A th → IsPotential A Om → A.SmoothOn Yo u →
    LeviLe A Set.univ 1 th 1 Om → FormNonneg A Yo (potForm th u) → FormNonneg A Yo (potForm Om u)

section Inhabitants


end Inhabitants

end GroundTheory.Heights₂.Heights.AnalyticLimit
