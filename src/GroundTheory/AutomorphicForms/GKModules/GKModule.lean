module

public import GroundTheory.AutomorphicForms.GKModules.SmoothVectors
public import Mathlib.RepresentationTheory.Irreducible
public import Mathlib.Analysis.Normed.Module.HahnBanach
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Finiteness.Lattice
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar

@[expose] public section

namespace GroundTheory.Automorphic

open NormedSpace Set Filter Topology
open scoped Manifold ContDiff

set_option linter.unusedSectionVars false

attribute [local instance 100] LieRing.ofAssociativeRing

section KHom

variable {K : Type*} [Monoid K]
variable {W : Type*} [AddCommGroup W] [Module ℂ W] {V : Type*} [AddCommGroup V] [Module ℂ V]

def kHom (τ : Representation ℂ K W) (σ : Representation ℂ K V) : Submodule ℂ (W →ₗ[ℂ] V) where
  carrier := {T | ∀ k : K, T ∘ₗ τ k = σ k ∘ₗ T}
  zero_mem' k := by simp
  add_mem' {S T} hS hT k := by
    simp only [mem_setOf_eq] at *
    rw [LinearMap.add_comp, LinearMap.comp_add, hS k, hT k]
  smul_mem' c T hT k := by
    simp only [mem_setOf_eq] at *
    rw [LinearMap.smul_comp, LinearMap.comp_smul, hT k]

end KHom

def Representation.HasContinuousCoeff {K : Type*} [Monoid K] [TopologicalSpace K]
    {W : Type*} [AddCommGroup W] [Module ℂ W] (τ : Representation ℂ K W) : Prop :=
  ∀ (φ : Module.Dual ℂ W) (w : W), Continuous fun k => φ (τ k w)

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸}

namespace IsExpLieAlgebra

variable (h : IsExpLieAlgebra G 𝔤)

structure GKModule (K : Subgroup G) (V : Type*) [AddCommGroup V] [Module ℂ V] where

  ρ : h.lieSubalgebra →ₗ⁅ℝ⁆ Module.End ℂ V

  σ : Representation ℂ K V

  locallyFinite : ∀ v : V, FiniteDimensional ℂ (Submodule.span ℂ (range fun k : K => σ k v))

  hasContinuousCoeff : Representation.HasContinuousCoeff σ

  hasDerivAt_coeff : ∀ (X : 𝔤) (hX : ∀ t : ℝ, h.expG (t • X) ∈ K) (φ : Module.Dual ℂ V) (v : V),
    HasDerivAt (fun t : ℝ => φ (σ ⟨h.expG (t • X), hX t⟩ v)) (φ (ρ (h.toLie X) v)) 0

  map_ρ : ∀ (k : K) (X : 𝔤) (v : V), σ k (ρ (h.toLie X) v) = ρ (h.toLie (h.Ad k X)) (σ k v)

def GKModule.IsAdmissible {K : Subgroup G} {V : Type*} [AddCommGroup V] [Module ℂ V]
    (M : h.GKModule K V) : Prop :=
  ∀ (W : Type) [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] (τ : Representation ℂ K W),
    τ.IsIrreducible → Representation.HasContinuousCoeff τ → FiniteDimensional ℂ (kHom τ M.σ)

end IsExpLieAlgebra

namespace BanachRep

variable {K' : Type*} [Group K'] [TopologicalSpace K']
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

noncomputable def toRepresentation (π : BanachRep K' E) : Representation ℂ K' E where
  toFun k := (π k : E →ₗ[ℂ] E)
  map_one' := by ext v; simp
  map_mul' k k' := by ext v; simp

noncomputable def restrict (π : BanachRep K' E) (K : Subgroup K') : BanachRep K E where
  toHom := π.toHom.comp K.subtype
  continuous_orbit' v := (π.continuous_orbit v).comp continuous_subtype_val

variable (π : BanachRep K' E) (K : Subgroup K')

def kSpan (v : E) : Submodule ℂ E := Submodule.span ℂ (range fun k : K => π k v)

def IsKFinite (v : E) : Prop := FiniteDimensional ℂ (π.kSpan K v)

end BanachRep

namespace IsExpLieAlgebra

variable (h : IsExpLieAlgebra G 𝔤)
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (π : BanachRep G E) (K : Subgroup G)

end IsExpLieAlgebra

end GroundTheory.Automorphic
