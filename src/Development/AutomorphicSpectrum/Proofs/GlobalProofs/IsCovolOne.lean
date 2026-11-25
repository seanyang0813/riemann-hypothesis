module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector
open scoped TensorProduct ENNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

def IsCovolOne (db : Measure (AF F)) : Prop :=
  db.IsAddHaarMeasure ∧ ∃ D : Set (AF F),
    IsAddFundamentalDomain (algebraMap F (AF F)).toAddMonoidHom.range D db ∧ db D = 1

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV
