module

public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory
  IsDedekindDomain NumberField
open scoped TensorProduct

namespace Formalism.IndefR.Eqv

variable {D : D7}

theorem infMat_eq (θ : InfFam D) (V : HSp D) (τ : D.what₂.Tau) (g : GA D V) (i j : Fin V.rank) :
    infMat D.sp.cm.sig V.gram (θ τ) g i j = θ τ (infPart D (mt V g i j)) := rfl

theorem mt_mul (V : HSp D) (g h : GA D V) : mt V (g * h) = mt V g * mt V h := by
  simp only [Formalism.L2.Theta.mt, map_mul, Units.val_mul]

theorem mt_one (V : HSp D) : mt V 1 = 1 := by
  simp only [Formalism.L2.Theta.mt, map_one, Units.val_one]

end Formalism.IndefR.Eqv

end
