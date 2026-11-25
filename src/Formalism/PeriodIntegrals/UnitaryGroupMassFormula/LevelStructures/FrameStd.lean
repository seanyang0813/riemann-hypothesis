module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.HostStarConj
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelStructures.GlobLevelSOf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace MassDataLevelSSteps.FrameW

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.TypedSets Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub

theorem sig_apply {D : D7} (X : HidaSetting D) (a : X.B.I.E) : X.B.I.cm.sig a = star a := rfl

theorem hE_crdOf {D : D7} (X : HidaSetting D) (x y : (VS D).V) :
    hE X.B.I.cm.sig X.B.I.J (crdOf X.B.I X.ιE X.bas x) (crdOf X.B.I X.ιE X.bas y) =
      X.ιE.symm ((VS D).hT x y) := by
  apply Formalism.L2.SG.Pf.NcVal.OmVSt.OmW.hE_crdOf

theorem frameOf_isStd {D : D7} (X : HidaSetting D) (u : D.what₂.Word) :
    (frameOf X u).IsStd X.B.I.cm.sig X.B.I.J (((D.mem u).A.T : ℕ) : X.B.I.F) := by
  refine ⟨fun a b => (hE_crdOf X (X.eX a) (X.eX b)).trans ?_,
    fun a b => (hE_crdOf X (X.fY a) (X.fY b)).trans ?_,
    fun a b => (hE_crdOf X (X.eX a) (X.fY b)).trans ?_,
    fun a => (hE_crdOf X (X.eX a) (X.zu u)).trans ?_,
    fun a => (hE_crdOf X (X.fY a) (X.zu u)).trans ?_,
    (hE_crdOf X (X.zu u) (X.zu u)).trans ?_, ?_⟩
  · rw [X.ee, map_zero]
  · rw [X.ff, map_zero]
  · rw [X.ef]
    split_ifs <;> simp
  · rw [(X.zu_orth u a).1, map_zero]
  · rw [(X.zu_orth u a).2, map_zero]
  · rw [X.zu_norm]
    simp
  · simp only [ne_eq, Nat.cast_eq_zero]
    exact (D.mem u).A.T_prime.ne_zero

end MassDataLevelSSteps.FrameW

namespace MassDataLevelSSteps

theorem frameStd_holds : FrameStd := by
  intro D X w
  exact ⟨_, FrameW.frameOf_isStd X w⟩

end MassDataLevelSSteps
