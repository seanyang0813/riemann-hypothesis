module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.UnifModGrowthOfIsUnifModerate
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CuspidalModerateGrowthRapidDecay

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta MeasureTheory NumberField Matrix GlobalTheory.CuspGeo
open scoped TensorProduct Topology

theorem _root_.GlobalTheory.T.cuspidal_moderateGrowth_rapidDecay : GlobalTheory.Published.CuspDecayBound := by
  first | exact @GlobalTheory.CuspGeo.cuspDecayBound
