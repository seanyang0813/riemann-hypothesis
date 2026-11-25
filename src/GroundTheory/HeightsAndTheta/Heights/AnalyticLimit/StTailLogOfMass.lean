module

public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Objects
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PLCurveA

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential mInt MIntegrable locDens)

noncomputable section

def shellConst (D : ℕ) : ℝ := ∑' k : ℕ, ((k : ℝ) + 2) ^ (D + 1) / 2 ^ k

def TailLogOfMass.Statement : Prop :=
  ∀ {X : Type} [TopologicalSpace X] [CompactSpace X] [T2Space X] (D : ℕ) (A : FinHolAtlas D X)
    (Yo : Set X) (r : X → ℝ) (th : LocPot X) (u : Fin D → X → ℝ), IsOpen Yo → ContinuousOn r Yo →
    (∀ x ∈ Yo, Real.exp 1 ≤ r x) → IsPotential A th → (∀ i, A.SmoothOn Yo (u i)) →
    (∀ i, FormNonneg A Yo (potForm th (u i))) → ∀ CE : ℝ,
    TailMassBound A Yo r (fun i => potForm th (u i)) CE →
    TailLogBound A Yo r (fun i => potForm th (u i)) (shellConst D * CE)

section Inhabitants

open ReciprocityTheory.AnForm (levi)
open ReciprocityTheory.AnForm.M.PLC (locDens_congr_phi mInt_congr_phi)

end Inhabitants

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
