module

public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EqZeroOfInnerSmooth
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange

@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.MainNotions.S Formalism.REAL Formalism.L2.Theta GlobalTheory.SmVec
open scoped InnerProductSpace

namespace GlobalTheory.CompanionTheory.UnitaryFramesMetricPeriods

variable {n r : ℕ}

def nsq (y : Fin n → ℂ) : ℝ := ∑ a, ‖y a‖ ^ 2

def ball (ε : Fin n → Bool) (ρ : ℝ) : Set (UJ ε) := {u | hs (umat u - 1) ≤ ρ ^ 2}

structure IsFrame (ε : Fin n → Bool) (ε' : Fin r → Bool) (ι : UJ ε' →* UJ ε) (z : Fin n → ℂ)
    (F : Matrix (Fin n) (Fin r) ℂ) : Prop where
  codim : r + 1 = n
  gram : Fᴴ * Jm ε * F = Jm ε'
  perp : (Fᴴ * Jm ε) *ᵥ z = 0
  one : star z ⬝ᵥ (Jm ε *ᵥ z) = 1
  act : ∀ h, umat (ι h) * F = F * umat h
  fix : ∀ h, umat (ι h) *ᵥ z = z

def IsStdStab (ε : Fin n → Bool) (ε' : Fin r → Bool) (ι : UJ ε' →* UJ ε) (z : Fin n → ℂ) : Prop :=
  ∃ F, IsFrame ε ε' ι z F ∧ Fᴴ * F = 1 ∧ Fᴴ *ᵥ z = 0 ∧ nsq z = 1

def IsNormEmb {ε : Fin n → Bool} {ε' : Fin r → Bool} (ι : UJ ε' →* UJ ε) : Prop :=
  Continuous ι ∧ ∀ h, hs (umat (ι h) - 1) = hs (umat h - 1)

section Groups

variable {Γ : Type} [Group Γ] [TopologicalSpace Γ] {A B : Type} [NormedAddCommGroup A] [InnerProductSpace ℂ A]
  [NormedAddCommGroup B] [InnerProductSpace ℂ B]

structure IsU (ρ : Γ → (A →L[ℂ] A)) : Prop where
  one : ρ 1 = 1
  mul : ∀ a b, ρ (a * b) = ρ a * ρ b
  norm : ∀ g x, ‖ρ g x‖ = ‖x‖
  cont : ∀ x, Continuous fun g => ρ g x

def IsMap (σ : Γ → (A →L[ℂ] A)) (ρ : Γ → (B →L[ℂ] B)) (j : A →L[ℂ] B) : Prop := ∀ g x, j (σ g x) = ρ g (j x)

def IsIsoMap (σ : Γ → (A →L[ℂ] A)) (ρ : Γ → (B →L[ℂ] B)) (j : A →L[ℂ] B) : Prop := IsMap σ ρ j ∧ ∀ x, ‖j x‖ = ‖x‖

def IsFd [MeasurableSpace Γ] (ν : Measure Γ) (σ : Γ → (A →L[ℂ] A)) (d : ℝ) : Prop :=
  0 < d ∧ ∀ v w v' w' : A, Integrable (fun g => ⟪w, σ g v⟫_ℂ * star ⟪w', σ g v'⟫_ℂ) ν ∧
    ∫ g, ⟪w, σ g v⟫_ℂ * star ⟪w', σ g v'⟫_ℂ ∂ν = ⟪v', v⟫_ℂ * ⟪w, w'⟫_ℂ / (d : ℂ)

end Groups

section Reps

variable {A B : Type} [NormedAddCommGroup A] [InnerProductSpace ℂ A] [NormedAddCommGroup B] [InnerProductSpace ℂ B]

def onU (ε : Fin n → Bool) (π : Matrix (Fin n) (Fin n) ℂ → (A →L[ℂ] A)) : UJ ε → (A →L[ℂ] A) := fun g => π (umat g)

def res {ε : Fin n → Bool} {ε' : Fin r → Bool} (ι : UJ ε' →* UJ ε) (π : Matrix (Fin n) (Fin n) ℂ → (A →L[ℂ] A)) :
    UJ ε' → (A →L[ℂ] A) := fun h => π (umat (ι h))

end Reps

end GlobalTheory.CompanionTheory.UnitaryFramesMetricPeriods

end
