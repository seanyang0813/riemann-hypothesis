module

public import Formalism.LocalRingCardinality.DataGatTies
public import Formalism.LocalRingCardinality.DataParams₂

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.Inhab

open Formalism.MainNotions.G Formalism.BasicNotions Formalism.FrobeniusOrbits

section InstSec

variable (D : D7) (L : SizeData₂ D)


end InstSec

def GatHasPlaces (D : D7) : Prop :=
  ∀ u (w : D.what₂.places.Pl) (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)), 0 < (D.gat u w hg).P.nV

theorem gatHasPlaces_of_ties {D : D7} (hT : GatTies D) : GatHasPlaces D := by
  intro u w hg
  obtain ⟨v, _⟩ := (hT.gat_pos u w hg).symm (D.eTau.symm 1)
  exact lt_of_le_of_lt (Nat.zero_le _) v.isLt

end Formalism.MainNotions.G.Inhab

end
