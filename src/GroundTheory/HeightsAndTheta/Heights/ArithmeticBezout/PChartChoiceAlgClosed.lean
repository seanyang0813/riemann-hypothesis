module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsChartChoiceAlgClosed
import GroundTheory.HeightsAndTheta.Heights.ChowForms.PChartChoice
public import GroundTheory.HeightsAndTheta.Heights.ChowForms.Statements
public import Mathlib.Combinatorics.Nullstellensatz

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

noncomputable section

theorem ChartChoiceAlgClosed.proof (h₁ : IncIdealPrime.Statement) (h₂ : ChowFormMultiHomog.Statement) :
    ChartChoiceAlgClosed.Statement :=
  fun _ _ _ _ _ I f q hI hf hq => ChartChoice.exists_not_dvd h₁ h₂ I f q hI hf hq

end

end GroundTheory.Heights₂.Heights
