module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.HenselCount
import Mathlib.Tactic.Linter.Style
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.HenselCountHolds

@[expose] public section

noncomputable section

namespace PI.VolStabSW
open PI.VolStabS (HenselCount)

open MeasureTheory Topology

section Hensel

variable {V X : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [MeasurableSpace V] [BorelSpace V] [AddCommGroup X] [TopologicalSpace X]
  [IsTopologicalAddGroup X] [MeasurableSpace X] [BorelSpace X]

def hlev (Λ0 : AddSubgroup V) (H : AddSubgroup X) (G : V → X) (y : V) (h : X) : Set V :=
  {Z | Z ∈ Λ0 ∧ G (y + Z) - h ∈ H}

theorem hensel_main (μ : Measure V) (ν : Measure X) [μ.IsAddHaarMeasure] [ν.IsAddHaarMeasure]
    (Λ : ℕ → AddSubgroup V) (H : ℕ → AddSubgroup X) (hΛo : ∀ n, IsOpen (Λ n : Set V))
    (hΛa : Antitone Λ) (hHo : ∀ n, IsOpen (H n : Set X)) (hHc : ∀ n, IsCompact (H n : Set X))
    (D : V →+ X) (hD : ∀ n, (Λ n).map D = H n) (G : V → X) (y : V)
    (hG : ∀ n, ∀ Z ∈ Λ 0, ∀ W ∈ Λ n, G (y + Z + W) - G (y + Z) - D W ∈ H (n + 1))
    (h : X) (hh : h - G y ∈ H 0) (n : ℕ) :
    μ (hlev (Λ 0) (H n) G y h) * ν (H 0) = μ (Λ 0) * ν (H n) :=
  PI.VolStabS.hensel_main μ ν Λ H hΛo hΛa hHo hHc D hD G y hG h hh n

end Hensel

theorem henselCount_holds : HenselCount :=
  PI.VolStabS.henselCount_holds

end PI.VolStabSW
