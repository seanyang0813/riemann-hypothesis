module

public import GroundTheory.HeightsAndTheta.Heights.Regularisation.Statements
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.ContinuousTmaxShift

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Regular

open Metric Filter Topology
open ReciprocityTheory.AnForm.A (Mollifier tmax regMax le_tmax tmax_le regMax_ge regMax_le)

noncomputable section

namespace LogLogRegularisation

variable {D : ℕ} {X : Type*} [TopologicalSpace X] {A : ReciprocityTheory.AnForm.M.FinHolAtlas D X}


open Classical in
theorem le_glue (P : PotentialCharts A) (a : Fin P.N → X → ℝ) {ε : ℝ} (hε : 0 ≤ ε) {x : X}
    {j : Fin P.N} (hx : x ∈ P.mid j) : a j x ≤ P.glue a ε x := by
  unfold PotentialCharts.glue
  exact le_add_of_le_of_nonneg
    ((le_tmax (fun i : {i // x ∈ P.mid i} => a i x) ⟨j, hx⟩).trans (regMax_ge ε _)) (by linarith)


open Classical in
theorem glue_le (P : PotentialCharts A) (a : Fin P.N → X → ℝ) {ε c : ℝ} (hε : 0 ≤ ε) {x : X}
    (h : ∀ j, x ∈ P.mid j → a j x ≤ c) : P.glue a ε x ≤ c + ε := by
  unfold PotentialCharts.glue
  have h1 := regMax_le hε (fun i : {i // x ∈ P.mid i} => a i x)
  have h2 : tmax (fun i : {i // x ∈ P.mid i} => a i x) ≤ c := tmax_le fun i => h i.1 i.2
  linarith

end LogLogRegularisation

end

end GroundTheory.Heights₂.Heights.Regular
