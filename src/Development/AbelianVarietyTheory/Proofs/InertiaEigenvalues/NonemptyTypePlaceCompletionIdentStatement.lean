module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NonemptyTypePlaceCompletionIdent

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.TypeRec GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.SerSys

theorem _root_.GlobalTheory.T.nonempty_typePlaceCompletionIdent : ∀ D : D7, Nonempty (Ident D) := by
  first | exact @GlobalTheory.TypeIdent.nonempty_ident
