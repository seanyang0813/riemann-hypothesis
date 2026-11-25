module

import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBergmanDensChartSum
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergmanDensIntegrable
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.LintegralImageEqLintegralNormSqDetMul
public import Mathlib.Topology.OpenPartialHomeomorph.Composition
public import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MeasureTheory Set Filter Topology ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.A
open scoped ENNReal ContDiff ComplexConjugate Matrix

noncomputable section

theorem BergmanDensIntegrable.proof : BergmanDensIntegrable.Statement := by
  intro D X _ _ _ _ _ A L W dV
  have := dV.isProb
  exact integrableOn_univ.1
    ((GroundTheory.Heights₂.Heights.HilbertSamuel.BergmanDensChartSum.bergmanDens_continuous W dV).continuousOn.integrableOn_compact
      isCompact_univ)

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
