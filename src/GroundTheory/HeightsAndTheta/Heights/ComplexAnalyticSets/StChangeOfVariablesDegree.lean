module

public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis

@[expose] public section

set_option maxSynthPendingDepth 1

open scoped ContDiff

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets

def ChangeOfVariablesDegree.Statement : Prop :=
  ∀ (n : ℕ) (φ : (Fin n → ℝ) → Fin n → ℝ), ContDiff ℝ ∞ φ →
    HasCompactSupport (fun x => φ x - x) →
      ∀ f : (Fin n → ℝ) → ℝ, ContDiff ℝ ∞ f → HasCompactSupport f →
        ∫ x, f (φ x) * (fderiv ℝ φ x).det = ∫ x, f x

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets
