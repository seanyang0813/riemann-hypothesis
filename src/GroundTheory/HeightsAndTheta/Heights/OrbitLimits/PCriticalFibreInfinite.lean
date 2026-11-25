module

public import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.StCriticalFibreInfinite
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PHolomorphicFibreInfinite
import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImplicitCurve
import Mathlib.Analysis.Calculus.ImplicitContDiff
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

noncomputable section

theorem CriticalFibreInfinite.proof : CriticalFibreInfinite.Statement :=
  fun _ _ _ _ hU hUne hf hninj =>
    IndefiniteRowSideFullHecke.ComplexSets.HolomorphicFibreInfinite.exists_infinite_fibre hU hUne hf hninj

end

end GroundTheory.Heights₂.Heights
