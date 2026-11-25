module

public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StRankDeficientFibreInfinite
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

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets

noncomputable section

namespace RankDeficientFibreInfinite

theorem proof : RankDeficientFibreInfinite.Statement :=
  fun _ _ _ _ hU hUne hf hinj => HolomorphicFibreInfinite.exists_infinite_fibre hU hUne hf hinj

end RankDeficientFibreInfinite

end

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets
