module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Statements

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial

noncomputable section

def ProjDegreeChow.Statement : Prop :=
  ∀ (n e δ : ℕ) (W : Ideal (MvPolynomial (Fin n) ℂ)) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ)
    (A : Matrix (Fin (e + 1)) (Fin n) ℂ),
    IsProjPrime W → IsChowForm W (e + 1) f → Heights.IsMultiHomog δ f →
      ComplexSets.IsFiniteProjection W A → ComplexSets.projDegree W A = δ

end

end GroundTheory.Heights₂.Heights
