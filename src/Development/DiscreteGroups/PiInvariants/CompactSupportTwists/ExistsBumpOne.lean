module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.PowerBoundFastDecay
import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.SatakeExponents.FibreFactorHolds
import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.KernelL2RowsColumns

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.BcB.E PositivityTheory.Rg.BcB.F PositivityTheory.Rg.BcB.Desc PositivityTheory.Rg.BcB.E1
open scoped Classical

namespace DiscreteGroups.T1.G

attribute [local instance] borelH

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

def aS (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (s : ℝ) : H E n 0 := (splitCentre E n s, 1)


def AvgInt : Prop := ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ), 1 ≤ n → ∀ (D : Dom E n 0)
  (L : H E n 0 → ℂ), (∀ (γ : ratH E n 0) x, L ((γ : H E n 0) * x) = L x) → Continuous L → Integrable L D.ν →
  ∀ w : ℝ → ℂ, Continuous w → HasCompactSupport w → ∫ s : ℝ, w s = 1 →
    Integrable (fun x => w (ldet x) * ∫ s : ℝ, L (x * aS E n s)) D.ν ∧
      ∫ x, L x ∂D.ν = (ldet (aS E n 1) : ℂ) * ∫ x, w (ldet x) * (∫ s : ℝ, L (x * aS E n s)) ∂D.ν

end DiscreteGroups.T1.G

end
