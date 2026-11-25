module

import Development.AbelianVarietyTheory.Counterexamples.JetSurvey.LowKAddStrictAnti
public import Formalism.PeriodIntegrals.UpqRep

@[expose] public section

open PI PI.UpqRep Matrix

noncomputable section

namespace PI.WeylForKInhab

theorem diag_mem {N : ℕ} (ε : Fin N → Bool) (θ : Fin N → ℝ) :
    Matrix.diagonal (fun a => Complex.exp ((θ a : ℂ) * Complex.I)) ∈ Kset ε := by
  apply GlobalTheory.DiscreteSeriesTest.torus_mem

end PI.WeylForKInhab
