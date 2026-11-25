module

public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.RowsTie
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.RowsCnt
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.RowsNDF

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeLemma₂

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.HermitianLatticeCounting Formalism.MainNotions.BridgeLemma

section Fam

variable {eps : ℝ} (Fm : FamP eps) (C1 : ℝ) (X : ∀ x, Fm.x1 < x → ∀ i : Fm.Ix x, TermTie (Fm.D x i))
  (Y : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x) (u u' : (Fm.D x i).what₂.Word),
    LoopTie (Fm.D x i) (Fm.L x i) (X x hx i) u u' C1)

def FamilyGramHypotheses : Prop :=
  ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x) (u u' : (Fm.D x i).what₂.Word),
    wordPairNormRelation (X x hx i) u u' ∧ @LatticeDeterminantFactorization (Fm.D x i) (X x hx i) u u' ∧
      wordPairEntriesInLattice (X x hx i) u u' ∧ wordPairTermInjective (X x hx i) (Y x hx i u u')

theorem family_gram_facts_of_hypotheses (h : FamilyGramHypotheses Fm C1 X Y) : rows_TiesF Fm C1 X Y := fun x hx i u u' =>
  ⟨rows_TermPtsTie_of _ (_root_.Formalism.MainNotions.S.rdE_pos _) (h x hx i u u').1, (h x hx i u u').2.1, (h x hx i u u').2.2.1⟩

end Fam

end Formalism.MainNotions.BridgeLemma₂

end
