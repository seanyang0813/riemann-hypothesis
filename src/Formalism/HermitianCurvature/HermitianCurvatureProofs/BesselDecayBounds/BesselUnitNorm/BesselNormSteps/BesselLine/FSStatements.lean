module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.PartAIff
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselLine

@[expose] public section

open MeasureTheory Matrix Finset
open scoped InnerProductSpace

noncomputable section

namespace PI.WBL.FSW

open Formalism.QuantumDeterminants Formalism.MainNotions.S Formalism.MainNotions.S.ThB Formalism.BasicNotions PI.BesselLine PI.WBL

section Generic

variable {k r : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
  {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp]

def sM (p : Mt k r × Mt k r) : Mx k r := Matrix.of p.1 * Matrix.of p.2

def Aop (z : Fin (2 * r + k + 1) → ℂ) (c : ℂ) (π : Mx k r → (Wp →L[ℂ] Wp)) (μW μN : Measure (Mt k r))
    (σ : Mx k r → (H →L[ℂ] H)) (w v : H) (y : Mx k r) : Wp →L[ℂ] Wp :=
  be z c π μW μN σ (σ y w) v

def SchurOn (μG : Measure (Mt k r)) (σ : Mx k r → (H →L[ℂ] H)) : Prop :=
  ∃ d : ℝ, 0 < d ∧ ∀ v w v' w' : H,
    Integrable (fun x : Mt k r => ⟪w, σ (Matrix.of x) v⟫_ℂ * star ⟪w', σ (Matrix.of x) v'⟫_ℂ) μG ∧
    ∫ x, ⟪w, σ (Matrix.of x) v⟫_ℂ * star ⟪w', σ (Matrix.of x) v'⟫_ℂ ∂μG = ⟪v', v⟫_ℂ * ⟪w, w'⟫_ℂ / (d : ℂ)

end Generic

section Assembly

variable {k r : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
  {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp]

end Assembly

end PI.WBL.FSW
