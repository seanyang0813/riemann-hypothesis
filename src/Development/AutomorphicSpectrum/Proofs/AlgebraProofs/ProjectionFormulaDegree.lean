module

public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Statements
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PContractRelDimLe
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PDivPushForward
public import GroundTheory.HeightsAndTheta.Heights.SemipositiveHeights.NumericalSegre

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.FieldNumbers

open GroundTheory.Heights₂.Heights.FieldNumbers GroundTheory.Heights₂.Heights.NumbersDVR

theorem projectionFormulaDegree :
    GroundTheory.Heights₂.Heights.FieldNumbers.ProjectionFormulaDegree.Statement.{0} :=
  ProjectionFormulaDegree.of_divPushForward
    (DivPushForward.proof ContractRelDimLe.proof DivPushForwardLocalZero)

end GlobalTheory.CompanionTheory.FieldNumbers
