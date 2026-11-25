module

public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DiscreteSeriesUpqUniqueOfClassification
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.EigenspaceCyclicDensity.LowKTypeMultiplicityOneUnconditional
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.IsDerivedOnOfIsKMod

@[expose] public section

namespace GlobalTheory.CompanionTheory.Front

theorem discreteSeriesUpqUnique : GlobalTheory.Published.DiscreteSeriesUpqUnique :=
  fun n ε lam hlam H H' _ _ _ _ σ σ' hσ hσ' =>
    GlobalTheory.CompanionTheory.DSUniq.ds_unique
      _root_.CompanionTheory.D.LK.hMultAlg _root_.CompanionTheory.D.LK.hKModExists
      _root_.CompanionTheory.D.LK.hOrthCyc n ε lam H H' σ σ' hlam hσ hσ'

end GlobalTheory.CompanionTheory.Front
