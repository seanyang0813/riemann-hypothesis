module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.TypeConditions.WeightsConjBis
public import Development.AutomorphicArithmetic.Foundations.LocalLanglands.IsRecTOfIsRec

@[expose] public section

def UpperTheory.One.M.recT : UpperTheory.GalStar.RecNotion := fun h rc => UpperTheory.Zero.LLC.IsRecT h rc

def UpperTheory.One.M.Row : Prop := UpperTheory.GalStar.Row0b fun h rc => UpperTheory.Zero.LLC.IsRecT h rc
