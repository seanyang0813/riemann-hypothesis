module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.IsDiscriminantTwelfthRootOfIdealLattice
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory NumberField

def H1 (Λ : AddSubgroup ℂ) (z w : ℂ) : ℂ := z * (starRingEnd ℂ) w / (TaylorLogMetric.area Λ : ℂ)

def al1 (d : ℕ) (Λ : AddSubgroup ℂ) (x : ℂ) : ℂ := (-1 : ℂ) ^ (round (Real.sqrt d / 2 * (H1 Λ x x).re))

def U1 (Λ : AddSubgroup ℂ) (x : ℂ) (G : ℂ → ℂ) : ℂ → ℂ :=
  fun z => G (z + x) * Complex.exp (-(Real.pi : ℂ) * H1 Λ z x - (Real.pi : ℂ) * H1 Λ x x / 2)

def IsTheta0 (d : ℕ) (Λ : AddSubgroup ℂ) (G : ℂ → ℂ) : Prop :=
  Differentiable ℂ G ∧ (∀ x ∈ Λ, ∀ z, al1 d Λ x * U1 Λ x G z = G z) ∧ G 0 = 1

def normSq1 (Λ : AddSubgroup ℂ) (G : ℂ → ℂ) : ℝ :=
  let Fd : Set ℂ := Classical.epsilon (fun Fd => MeasureTheory.IsAddFundamentalDomain Λ Fd MeasureTheory.volume)
  ⨍ z in Fd, ‖G z‖ ^ 2 * Real.exp (-Real.pi * (H1 Λ z z).re)

end Formalism.L2.GlobalTheoryTheory

end
