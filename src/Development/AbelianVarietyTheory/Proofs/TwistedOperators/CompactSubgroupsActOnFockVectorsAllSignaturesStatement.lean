module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CompactSubgroupsActOnFockVectorsAllSignatures

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory NumberField Matrix

theorem _root_.GlobalTheory.T.compact_subgroups_act_on_fock_vectors_all_signatures : ∀ D : D7, GlobalTheory.ChainFr.CompactFockAll D := by
  first | exact @GlobalTheory.CompactFockAction.compactFockAll
