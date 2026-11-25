module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapsSatisfyFlatLawsFinitePlaces

@[expose] public section

open Formalism.BasicNotions

theorem _root_.GlobalTheory.T.flatMapsSatisfyFlatLaws_finitePlaces : ∀ D : D7, GlobalTheory.FinPl.FlatLaws D := by
  first | exact @GlobalTheory.FinPl.flatLaws_all
