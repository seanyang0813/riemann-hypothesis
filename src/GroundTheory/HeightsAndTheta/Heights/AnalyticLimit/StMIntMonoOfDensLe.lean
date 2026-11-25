module

public import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.IsOpenKappaOpenNeighbourhood
public import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens
public import ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot locDens mInt MIntegrable)

def MIntMonoOfDensLe.Statement : Prop :=
  ∀ {D : ℕ} {X : Type} [TopologicalSpace X] [CompactSpace X] (A : FinHolAtlas D X) (V : Set X)
    (Φ Ψ : Fin D → LocPot X),
    (∀ j, ∀ y ∈ (A.chart j).target, (A.chart j).symm y ∈ V →
      0 ≤ locDens A Φ j y ∧ locDens A Φ j y ≤ locDens A Ψ j y) →
    ∀ g : X → ℝ, (∀ x, 0 ≤ g x) → (∀ x, x ∉ V → g x = 0) → MIntegrable A Ψ g →
      mInt A Φ g ≤ mInt A Ψ g

section Inhabitants

open ReciprocityTheory.AnForm.M (locDensCont locDens_nonneg_of_psh)

end Inhabitants

end GroundTheory.Heights₂.Heights.AnalyticLimit
