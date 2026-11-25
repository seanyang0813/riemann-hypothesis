module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsTameFinitePlaceHermitianAll

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil ValuativeRel IsLocalRing

theorem _root_.GlobalTheory.T.isTameFinitePlaceHermitian_all : ∀ (D : D7) (v : Pl D), Tame D v := by
  first | exact @GlobalTheory.FinPl.TamePlaces.tame
