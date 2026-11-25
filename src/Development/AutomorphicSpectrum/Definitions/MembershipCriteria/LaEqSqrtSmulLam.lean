module

public import Mathlib.Algebra.Algebra.Basic
public import Mathlib.Algebra.Module.LinearMap.Star
public import Mathlib.Analysis.Complex.Norm
public import Mathlib.GroupTheory.Index
public import Mathlib.LinearAlgebra.BilinearMap
public import Mathlib.LinearAlgebra.Span.Defs

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.FinHeis

structure Sys (X M : Type) [AddCommGroup X] [AddCommGroup M] [Module ℂ M] where

  c : X → X → ℂ

  rho : X → M →ₗ[ℂ] M

  B : M →ₗ⋆[ℂ] M →ₗ[ℂ] ℂ
  c_add_left : ∀ x x' y, c (x + x') y = c x y * c x' y
  c_add_right : ∀ x y y', c x (y + y') = c x y * c x y'
  c_self : ∀ x, c x x = 1
  c_norm : ∀ x y, ‖c x y‖ = 1
  rho_zero : ∀ v, rho 0 v = v
  rho_rho : ∀ x y v, rho x (rho y v) = c x y • rho (x + y) v
  B_conj : ∀ u v, (starRingEnd ℂ) (B u v) = B v u
  B_pos : ∀ v, v ≠ 0 → 0 < (B v v).re
  B_rho : ∀ x u v, B (rho x u) (rho x v) = B u v

variable {X M : Type} [AddCommGroup X] [AddCommGroup M] [Module ℂ M] (S : Sys X M)

def SelfDual (Γ : AddSubgroup X) : Prop := ∀ x, x ∈ Γ ↔ ∀ γ ∈ Γ, S.c γ x ^ 2 = 1

def IsSemi (al : X → ℂ) (Γ : AddSubgroup X) : Prop :=
  (∀ x ∈ Γ, al x = 1 ∨ al x = -1) ∧ ∀ x ∈ Γ, ∀ y ∈ Γ, al (x + y) = al x * al y * S.c x y

def Law (al : X → ℂ) (Γ : AddSubgroup X) (φ : M) : Prop := ∀ γ ∈ Γ, S.rho γ φ = (al γ)⁻¹ • φ

def Cyclic (φ : M) : Prop := Submodule.span ℂ (Set.range fun x => S.rho x φ) = ⊤

def UnitVac (al : X → ℂ) (Γ : AddSubgroup X) (φ : M) : Prop := Law S al Γ φ ∧ S.B φ φ = 1

def la (al : X → ℂ) (Γ' Γ : AddSubgroup X) (φ : M) : M :=
  ∑ᶠ q : Γ' ⧸ Γ.addSubgroupOf Γ', al ((Quotient.out q : Γ') : X) • S.rho ((Quotient.out q : Γ') : X) φ

def abelian₂ (al : X → ℂ) (Γ' Γ : AddSubgroup X) (φ : M) : M :=
  ((Real.sqrt (Γ.relIndex Γ' : ℝ) : ℝ) : ℂ)⁻¹ • la S al Γ' Γ φ

def ip : M →ₗ[ℂ] M →ₗ⋆[ℂ] ℂ := S.B.flip

@[simp] theorem ip_apply (u v : M) : ip S u v = S.B v u := rfl

namespace Sys

theorem c_mul_c_swap (x y : X) : S.c x y * S.c y x = 1 := by
  have h := S.c_self (x + y)
  rw [S.c_add_left, S.c_add_right, S.c_add_right, S.c_self, S.c_self] at h
  simpa using h

end Sys

variable {S}

namespace Inh

end Inh

end GlobalTheory.CompanionTheory.FinHeis
