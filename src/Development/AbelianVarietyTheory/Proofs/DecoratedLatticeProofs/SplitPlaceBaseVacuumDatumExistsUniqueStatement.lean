module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceBaseVacuumDatumExistsUnique

@[expose] public section

open Formalism.BasicNotions

theorem _root_.GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique : ∀ D : D7, GlobalTheory.FinPl.OverBasic D := by
  first | exact @GlobalTheory.FinPl.overBasic
