module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.PerDeriv
public import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.ScalarStabilizers.Trzero

@[expose] public section

open UpperTheory.V.Sd.Eis

theorem UpperTheory.eisenstein_central_lie_action :
    UpperTheory.V.Sd.Eis.CentLie :=
  fun F _ _ _ _ _ ω hω φ hφ v => UpperTheory.V.Sd.Hm.trzero F ω hω φ hφ.cent v
