module

import Lemmata.GeneralBFactAltForm.Imports
public import Formalism.SharpRestriction.GrowthBounds.ObjPol

@[expose] public section

namespace Bl.general_b_fact_left_version

open Formalism.MainNotions.G in
theorem goal1
    {O : Type} [inst : CommRing O] [inst_1 : IsDomain O] {V : Type}
    [inst_2 : AddCommGroup V] [inst_3 : Module (KK O) V] [inst_4 : Module O V]
    [inst_5 : IsScalarTower O (KK O) V] (M : Submodule O V) :
    MQ (K := KK O) M = ⊤ → ∀ x : V, ∃ a : O, a ≠ 0 ∧ a • x ∈ M := by
  intro hM x
  have hx : x ∈ Submodule.span (KK O) (M : Set V) := by
    change x ∈ MQ (K := KK O) M
    rw [hM]
    exact Submodule.mem_top
  exact Bl.general_b_fact_alt_form.goal1 M hx

end Bl.general_b_fact_left_version
