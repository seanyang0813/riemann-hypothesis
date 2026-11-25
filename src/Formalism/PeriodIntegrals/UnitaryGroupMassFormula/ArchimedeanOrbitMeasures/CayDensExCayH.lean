module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.CayDensExCayS
public import Mathlib.MeasureTheory.Measure.WithDensity
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BaseLatticeIsUnimodular

@[expose] public section

noncomputable section

namespace HcInf

open HcS.BasicNotions Matrix MeasureTheory Filter Topology
open scoped ENNReal NNReal

section Defs

variable (P Q : ℕ)

def D0 : Set (lieU P Q) :=
  {X | IsUnit ((1 + 1) - ((X : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)).det}

def rhoH (X : lieU P Q) : ℝ≥0∞ :=
  ENNReal.ofReal (‖((1 + 1) - ((X : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)).det‖⁻¹ ^
    (2 * (P + Q)))


open Classical in
def cayF (X : lieU P Q) : UpqT P Q :=
  if h : ∃ g : UpqT P Q, UpqT.mat g *
      ((1 + 1) - ((X : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)) =
        (1 + 1) + ((X : lieU P Q) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)
  then Classical.choose h else 1

def betaH (lam : Measure (lieU P Q)) : Measure (UpqT P Q) :=
  ((lam.restrict (D0 P Q)).withDensity (rhoH P Q)).map (cayF P Q)

end Defs

def HuaInv : Prop :=
  ∀ (P Q : ℕ) (lam : Measure (lieU P Q)), lam.IsAddHaarMeasure →
  ∀ (h : UpqT P Q) (S : Set (UpqT P Q)), MeasurableSet S → S ⊆ cayS (D0 P Q) →
    (fun g => h * g) '' S ⊆ cayS (D0 P Q) → betaH P Q lam ((fun g => h * g) '' S) = betaH P Q lam S

def LocalHaarUnique : Prop :=
  ∀ (G : Type) [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
    [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G]
    (m : Measure G), m.IsHaarMeasure → ∀ (β : Measure G) (W : Set G), IsOpen W → (1 : G) ∈ W →
    (∀ (h : G) (S : Set G), MeasurableSet S → S ⊆ W → (fun g => h * g) '' S ⊆ W →
      β ((fun g => h * g) '' S) = β S) →
    (∀ K, IsCompact K → K ⊆ W → β K ≠ ⊤) → β W ≠ 0 →
    ∃ t : ℝ≥0∞, t ≠ 0 ∧ t ≠ ⊤ ∧ ∃ W' ∈ 𝓝 (1 : G), W' ⊆ W ∧ β.restrict W' = t • m.restrict W'

end HcInf
