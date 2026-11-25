module

public import Mathlib.Analysis.CStarAlgebra.Module.Constructions

@[expose] public section

open scoped InnerProductSpace
open Finset

noncomputable section

namespace GlobalTheory.CompanionTheory.AlgRepEndIrreducible

def KRel {A : Type*} [Ring A] {n : ℕ} (ε : Fin n → Bool) (D : Fin n → Fin n → A) : Prop :=
  ∀ a b c d : Fin n, ε a = ε b → ε c = ε d → D a b * D c d - D c d * D a b =
    (if b = c then D a d else 0) - (if d = a then D c b else 0)

def KAdj {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] {n : ℕ} (ε : Fin n → Bool)
    (D : Fin n → Fin n → Module.End ℂ V) : Prop :=
  ∀ a b : Fin n, ε a = ε b → ∀ x y : V, ⟪D a b x, y⟫_ℂ = ⟪x, D b a y⟫_ℂ

def KMap {W X : Type*} [AddCommGroup W] [Module ℂ W] [AddCommGroup X] [Module ℂ X] {n : ℕ}
    (ε : Fin n → Bool) (D : Fin n → Fin n → Module.End ℂ W) (E : Fin n → Fin n → Module.End ℂ X)
    (ω : W →ₗ[ℂ] X) : Prop :=
  ∀ a b, ε a = ε b → ∀ w, ω (D a b w) = E a b (ω w)

end GlobalTheory.CompanionTheory.AlgRepEndIrreducible

end
