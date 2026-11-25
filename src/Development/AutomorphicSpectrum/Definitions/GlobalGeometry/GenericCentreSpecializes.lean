module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsGenericFlag
public import Mathlib.RingTheory.AlgebraicIndependent.Basic
public import Mathlib.RingTheory.Valuation.ValuationSubring
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ProjectiveLinePlaceTrivialOnConstants
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ZarhinBundleKernelFirstCoordEquations
import Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat

open AlgebraicGeometry CategoryTheory GlobalTheory.CompanionTheory.Ar

section General

variable {X : Scheme.{0}} {Ω : Type} [Field Ω]

structure FibreCurve (ξ : Spec (CommRingCat.of Ω) ⟶ X) (ϖ : Ω) where

  k : Type

  κ : Type
  [fk : Field k]
  [fκ : Field κ]
  [alg : Algebra k κ]
  fg : (⊤ : IntermediateField k κ).FG
  trdeg : Algebra.trdeg k κ = 1

  C : Crv.ACurve κ
  w_pos : ∀ i, 0 < C.w i
  triv : ∀ i (a : k), a ≠ 0 → C.v i (algebraMap k κ a) = 1
  all : ∀ W : ValuationSubring κ, W ≠ ⊤ → (∀ a : k, algebraMap k κ a ∈ W) → ∃! i, (C.v i).valuationSubring = W

  η : Spec (CommRingCat.of κ) ⟶ X
  η_spec : genPt ξ ⤳ centre η
  η_zero : ValAt ξ η ϖ 0

  z : ∀ i, Spec (CommRingCat.of (C.v i).valuationSubring) ⟶ X
  z_gen : ∀ i, Spec.map (CommRingCat.ofHom (C.v i).valuationSubring.subtype) ≫ z i = η

attribute [instance] FibreCurve.fk FibreCurve.fκ FibreCurve.alg

def FibreCurve.HasDeg {ξ : Spec (CommRingCat.of Ω) ⟶ X} {ϖ : Ω} (Γ : FibreCurve ξ ϖ) (L : Lat ξ Ω) (d : ℤ) : Prop :=
  ∃ (e : Ω) (f : Γ.C.I → Ω) (r : Γ.C.I → Γ.κ), L.IsGenAt ⟨centre Γ.η, Γ.η_spec⟩ e ∧
    (∀ i, ∃ h : genPt ξ ⤳ centre (Γ.z i), L.IsGenAt ⟨centre (Γ.z i), h⟩ (f i)) ∧
    (∀ i, r i ≠ 0 ∧ ValAt ξ Γ.η (e / f i) (r i)) ∧ {i | Γ.C.v i (r i) ≠ 1}.Finite ∧
    ∑ᶠ i, (Γ.C.w i : ℤ) * (-WithZero.log (Γ.C.v i (r i))) = d

def NumTrivMod {ξ : Spec (CommRingCat.of Ω) ⟶ X} (L : Lat ξ Ω) (ϖ : Ω) : Prop :=
  ∀ Γ : FibreCurve ξ ϖ, Γ.HasDeg L 0

namespace FibreCurve

open ProjectiveLinePlaces

variable {ξ : Spec (CommRingCat.of Ω) ⟶ X} {ϖ : Ω} (Γ : FibreCurve ξ ϖ) {L L' M : Lat ξ Ω} {d d' : ℤ}

theorem generic_centre_specializes (i : Γ.C.I) : centre Γ.η ⤳ centre (Γ.z i) := by
  have := centre_specializes (Γ.z i) (Γ.C.v i).valuationSubring.subtype
  rwa [Γ.z_gen i] at this

theorem z_spec (i : Γ.C.I) : genPt ξ ⤳ centre (Γ.z i) := Γ.η_spec.trans (Γ.generic_centre_specializes i)

theorem exists_val_of_unitAt (i : Γ.C.I) {a : Ω} (ha : unitAt ξ ⟨centre (Γ.z i), Γ.z_spec i⟩ a) :
    ∃ t : Γ.κ, ValAt ξ Γ.η a t ∧ Γ.C.v i t = 1 := by
  obtain ⟨t, ht⟩ := valAt_of_unit _ ha
  refine ⟨_, valAt_restrict _ (Γ.z_gen i) Γ.η_spec ht, ?_⟩
  have a1 : Γ.C.v i ((Γ.C.v i).valuationSubring.subtype t) ≤ 1 := t.1.2
  have a2 : Γ.C.v i ((Γ.C.v i).valuationSubring.subtype ↑t⁻¹) ≤ 1 := (t⁻¹).1.2
  have a3 : Γ.C.v i ((Γ.C.v i).valuationSubring.subtype t) *
      Γ.C.v i ((Γ.C.v i).valuationSubring.subtype ↑t⁻¹) = 1 := by
    rw [← map_mul, ← map_mul, Units.mul_inv, map_one, map_one]
  refine le_antisymm a1 ?_
  calc (1 : WithZero (Multiplicative ℤ)) = _ := a3.symm
    _ ≤ _ * 1 := by gcongr
    _ = _ := mul_one _

variable {Γ}

variable (Γ)

theorem hasDeg_zero_of_gen {e : Ω} (he : L.IsGenAt ⟨centre Γ.η, Γ.η_spec⟩ e)
    (hf : ∀ i, L.IsGenAt ⟨centre (Γ.z i), Γ.z_spec i⟩ e) : Γ.HasDeg L 0 :=
  ⟨e, fun _ => e, fun _ => 1, he, fun i => ⟨_, hf i⟩,
    fun _ => ⟨one_ne_zero, Γ.η_spec, 1, by rw [map_one, div_self he.1], map_one _⟩, by simp, by simp⟩

end FibreCurve

theorem numTrivMod_of_gen {ξ : Spec (CommRingCat.of Ω) ⟶ X} {L : Lat ξ Ω} {e : Ω} (he : ∀ p, L.IsGenAt p e)
    (ϖ : Ω) : NumTrivMod L ϖ := fun Γ => Γ.hasDeg_zero_of_gen (he _) fun _ => he _

end General

namespace FibLine

open ProjectiveLinePlaces Crv.Inhab

section Proj

open MvPolynomial HomogeneousLocalization ProjCoord

attribute [local instance] MvPolynomial.gradedAlgebra

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

end Proj

attribute [local instance] MvPolynomial.gradedAlgebra

end FibLine

end GlobalTheory.CompanionTheory.Ar.Flat
