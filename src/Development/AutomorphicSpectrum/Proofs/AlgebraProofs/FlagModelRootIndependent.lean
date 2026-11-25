module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InhabitAlt
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InhabitBis
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagModelValueIndependent
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinFlagModelRootIndep

@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.RootIndep

theorem main : GroundTheory.Heights₂.Heights.NumbersDVR.FlagModelRootIndependence.Statement :=
  GroundTheory.Heights₂.Heights.NumbersDVR.FlagModelRootIndependence.proof _root_.GlobalTheory.CompanionTheory.CommAlg.FlagModelValue.main

end GlobalTheory.CompanionTheory.Ar.RootIndep
