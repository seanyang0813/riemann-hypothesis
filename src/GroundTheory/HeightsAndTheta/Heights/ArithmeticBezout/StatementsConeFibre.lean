module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory

noncomputable section

variable {m n : ℕ}

def coneSet (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ)) : Set (EuclideanSpace ℂ (Fin n)) :=
  {y | ∀ q ∈ J, eval (h.pointOf y) q = 0}

def linProj (π : Fin m → Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)) : EuclideanSpace ℂ (Fin m) :=
  WithLp.toLp 2 fun i => ∑ j, π i j * y j

def fibreCount (h : HermNorm n) (J : Ideal (MvPolynomial (Fin n) ℂ)) (π : Fin m → Fin n → ℂ)
    (w : EuclideanSpace ℂ (Fin m)) : ℕ∞ :=
  {y | y ∈ coneSet h J ∧ linProj π y = w}.encard

def ConeFibreDegree.Statement : Prop :=
  ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
    (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ),
    IsProjPrime W → IsChowForm W (e + 1) f → Heights.IsMultiHomog δ f →
      ∀ᵐ π : Fin (e + 1) → Fin n → ℂ, ∀ᵐ w : EuclideanSpace ℂ (Fin (e + 1)),
        fibreCount h W π w = δ

end

end GroundTheory.Heights₂.Heights
