module

public import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.IsOpenKappaOpenNeighbourhood
public import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens
public import ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot locDens MIntegrable)

def MIntegrableOfDensLe.Statement : Prop :=
  ∀ {D : ℕ} {X : Type} [TopologicalSpace X] (A : FinHolAtlas D X) (V : Set X) (Φ Ψ : Fin D → LocPot X),
    IsOpen V → (∀ j, ContinuousOn (locDens A Φ j) ((A.chart j).target ∩ (A.chart j).symm ⁻¹' V)) →
    (∀ j, ContinuousOn (locDens A Ψ j) ((A.chart j).target ∩ (A.chart j).symm ⁻¹' V)) →
    (∀ j, ∀ y ∈ (A.chart j).target, (A.chart j).symm y ∈ V →
      0 ≤ locDens A Φ j y ∧ locDens A Φ j y ≤ locDens A Ψ j y) →
    ∀ g : X → ℝ, (∀ x, x ∉ V → g x = 0) → MIntegrable A Ψ g → MIntegrable A Φ g

section Inhabitants

open ReciprocityTheory.AnForm.M (locDensCont locDens_nonneg_of_psh)

end Inhabitants

end GroundTheory.Heights₂.Heights.AnalyticLimit
