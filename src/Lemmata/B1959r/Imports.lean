module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.ShapeFromFacts
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.GlobalTheory

@[expose] public section

namespace Bl.general_b_fact_upper_bis_form

theorem goal1 {n : Nat} (f : Fin n → Rat) :
  (∀ (i i' : Fin n), i < i' → 0 < f i' → 0 < f i) →
  ∀ (i : Fin n), 0 < f i ↔ i.val < PI.FJM.nP f  := by
  apply PI.WFJM.Shape.pos_iff

end Bl.general_b_fact_upper_bis_form
