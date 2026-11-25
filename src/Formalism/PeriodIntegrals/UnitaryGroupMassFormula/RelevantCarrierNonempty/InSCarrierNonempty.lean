module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.FourParts

@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.InSRelevantW

open Formalism.BasicNotions Formalism.MainNotions.S

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem coefX_single_add {T : E} (G : FlagG S r T) (i : Fin r) (c : E) {w : S.V}
    (hw : w ∈ G.Xa i.val) : G.coefX (c • G.e i + w) i = c := by
  classical
  have hw' := hw
  unfold FlagG.Xa at hw'
  obtain ⟨l, hl, hlw⟩ := (Finsupp.mem_span_image_iff_linearCombination E).mp hw'
  have hmem : c • G.e i + w ∈ Submodule.span E (Set.range G.e) :=
    Submodule.add_mem _ (Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩))
      (Submodule.span_mono (Set.image_subset_range _ _) hw')
  unfold FlagG.coefX
  rw [dite_eq_left hmem]
  have hrepr : G.e_indep.repr ⟨c • G.e i + w, hmem⟩ = Finsupp.single i c + l := by
    apply G.e_indep.repr_eq
    rw [map_add (f := _), Finsupp.linearCombination_single, hlw]
  rw [hrepr, Finsupp.add_apply, Finsupp.single_eq_same]
  have hli : l i = 0 := by
    by_contra hne
    have h1 := (Finsupp.mem_supported _ _).mp hl (Finsupp.mem_support_iff.mpr hne)
    exact lt_irrefl (i.1) h1
  rw [hli, add_zero]

end Gen

end PI.UnitaryGroupMassFormula.InSRelevantW
