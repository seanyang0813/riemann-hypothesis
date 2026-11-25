module

public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsFinTyp
public import Formalism.LocalToGlobal.GaloisLevelStructure.Checks

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain ReciprocityTheory.Aut Formalism.AUTREP Formalism.BasicNotions

namespace Formalism.L2.Col

section Gen

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

def finTypSetoid (Occ : Set (NG.FinTyp L n)) : Setoid Occ where
  r π π' := π.1.Iso π'.1
  iseqv := ⟨fun _π => NG.IsoRep.refl _, fun {π _} h => NG.IsoRep.symm π.1.stable h, fun h h' => NG.IsoRep.trans h h'⟩

abbrev FinTypCls (Occ : Set (NG.FinTyp L n)) : Type := Quotient (finTypSetoid Occ)

def finTypRep (Occ : Set (NG.FinTyp L n)) (c : FinTypCls Occ) : NG.FinTyp L n := (Quotient.out c).1

theorem finTypRep_mem (Occ : Set (NG.FinTyp L n)) (c : FinTypCls Occ) : finTypRep Occ c ∈ Occ := (Quotient.out c).2

theorem finTypRep_inj {Occ : Set (NG.FinTyp L n)} {c c' : FinTypCls Occ}
    (h : (finTypRep Occ c).Iso (finTypRep Occ c')) : c = c' := by
  rw [← Quotient.out_eq c, ← Quotient.out_eq c']
  exact Quotient.sound h

theorem finTypRep_mk_iso {Occ : Set (NG.FinTyp L n)} (π : Occ) :
    (finTypRep Occ (Quotient.mk (finTypSetoid Occ) π)).Iso π.1 :=
  Quotient.mk_out (s := finTypSetoid Occ) π

end Gen

end Formalism.L2.Col
