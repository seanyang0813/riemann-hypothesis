module

public import Formalism.SharpRestriction.CuspSpanNormBounds.CongruenceAtSplitFrobeniusHolds

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.VanishingOnXAndXPlusGluing

export Formalism.MainNotions.S.UnitaryVolumeMass (DefiniteComplementRank Lem1 Lem2 LatticeSpanEquality ThmA HyperplaneEquality ThmB)

open Formalism.BasicNotions Formalism.MainNotions.S.Lat NumberField Module

abbrev LatS (D : D7) : Type := Submodule (𝓞 D.host.E) (hS D).V

abbrev FlS (D : D7) (T : ℕ) : Type := LFlag (hS D) D.R.rS ((T : ℕ) : D.host.E)

def Conclusion1 (D : D7) : Prop :=
  S.UnitaryVolumeMass.stLem1 D

def Conclusion2 (D : D7) : Prop :=
  S.UnitaryVolumeMass.stLem2 D

def PointsLemma (D : D7) : Prop :=
  S.UnitaryVolumeMass.stThmA D

def Conclusion4 (D : D7) : Prop :=
  S.UnitaryVolumeMass.stThmB D

def GlobalIntegralModelCondition (D : D7) : Prop :=
  S.UnitaryVolumeMass.DefiniteComplementAllWords D

def HyperplaneRank (D : D7) : Prop :=
  S.UnitaryVolumeMass.HyperplaneRankAllWords D

def DefiniteRankOne (D : D7) : Prop :=
  S.UnitaryVolumeMass.DefiniteRankOneAllWords D

end Formalism.MainNotions.VanishingOnXAndXPlusGluing

end
