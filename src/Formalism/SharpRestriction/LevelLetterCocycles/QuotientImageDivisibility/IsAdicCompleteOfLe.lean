module

import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.IsAdicCompleteOfIdealPowLe
public import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
public import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules
public import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LMemMaxOL
import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Pv.LocalLengthBound.OLC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

theorem complete_max {l : ℕ} [Fact l.Prime] (LL : FinExt l) :
    IsAdicComplete (IsLocalRing.maximalIdeal ↥(OL LL)) ↥(OL LL) := by
  apply Formalism.MainNotions.N.Ln17.isAdicComplete_integers_local

end Formalism.MainNotions.N.Pv.LocalLengthBound.OLC

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

theorem expCrit_D' (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (CR CA CB CK : ℝ) (hA : Formalism.MainNotions.RamifiedCoefficientChains.admitted D HW F Cm CR CA CB CK)
    (hL : Formalism.MainNotions.UnusedSlot80.LevCoeff D HW F)
    (hB : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
      [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], Formalism.MainNotions.RamifiedCoefficientChains.Sh.BasTool ((HW l).W K 1 LL hg)) :
    Formalism.MainNotions.WachCoordinates.AtCaseA fun l _ K LL h => Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpCrit ((HW l).W K 1 LL h.2.2) :=
  expCrit_D D HW F Cm CR CA CB CK hA hL hB fun l _ LL _ => by
    convert OLC.complete_max LL

end Formalism.MainNotions.N.Pv.LocalLengthBound
