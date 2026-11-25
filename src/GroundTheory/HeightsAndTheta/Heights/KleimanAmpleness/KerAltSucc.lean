module

public import Mathlib.Algebra.Module.Submodule.Range
public import Mathlib.LinearAlgebra.Quotient.Defs
import Mathlib.RingTheory.Coalgebra.CoassocSimps

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

def Staircase.bdry {R : Type} [CommRing R] {A : ℕ → Type} [∀ n, AddCommGroup (A n)] [∀ n, Module R (A n)]
    (d : ∀ n, A n →ₗ[R] A (n + 1)) : ∀ n, Submodule R (A n)
  | 0 => ⊥
  | n + 1 => LinearMap.range (d n)

abbrev Staircase.H {R : Type} [CommRing R] {A : ℕ → Type} [∀ n, AddCommGroup (A n)] [∀ n, Module R (A n)]
    (d : ∀ n, A n →ₗ[R] A (n + 1)) (n : ℕ) : Type :=
  LinearMap.ker (d n) ⧸ (Staircase.bdry d n).comap (LinearMap.ker (d n)).subtype

def Staircase.Statement : Prop :=
  ∀ (R : Type) [CommRing R] (D : ℕ → ℕ → Type) [∀ p q, AddCommGroup (D p q)] [∀ p q, Module R (D p q)]
    (v : ∀ p q, D p q →ₗ[R] D (p + 1) q) (h : ∀ p q, D p q →ₗ[R] D p (q + 1))
    (A : ℕ → Type) [∀ p, AddCommGroup (A p)] [∀ p, Module R (A p)] (dA : ∀ p, A p →ₗ[R] A (p + 1))
    (a : ∀ p, A p →ₗ[R] D p 0)
    (C : ℕ → Type) [∀ q, AddCommGroup (C q)] [∀ q, Module R (C q)] (dC : ∀ q, C q →ₗ[R] C (q + 1))
    (c : ∀ q, C q →ₗ[R] D 0 q),
    (∀ p q, (v p (q + 1)).comp (h p q) = (h (p + 1) q).comp (v p q)) →
    (∀ p, (a (p + 1)).comp (dA p) = (v p 0).comp (a p)) →
    (∀ q, (c (q + 1)).comp (dC q) = (h 0 q).comp (c q)) →
    (∀ p, LinearMap.ker (a p) = ⊥) →
    (∀ p, LinearMap.ker (h p 0) = LinearMap.range (a p)) →
    (∀ p q, LinearMap.ker (h p (q + 1)) = LinearMap.range (h p q)) →
    (∀ q, LinearMap.ker (c q) = ⊥) →
    (∀ q, LinearMap.ker (v 0 q) = LinearMap.range (c q)) →
    (∀ p q, LinearMap.ker (v (p + 1) q) = LinearMap.range (v p q)) →
    ∀ n, Nonempty (Staircase.H dA n ≃ₗ[R] Staircase.H dC n)

def Staircase.alt (R : Type) [CommRing R] (m : ℕ) : R →ₗ[R] R :=
  if m % 2 = 1 then LinearMap.id else 0

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
