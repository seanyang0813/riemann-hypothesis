module

public import Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RingKrullDimQuotientEqOfMemMinimalPrimes
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsNeZeroIsStandardSmoothOfRelativeDimension
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsDomainAndIsIntegrallyClosedAtPrimeOfSmoothOfCo
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E4.CurveCut.CoverPf

open LateralTheory.E.E4

theorem inf_affine {Ω : Type} [Field Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω) (hc : IsCurve c)
    {U V : C.Opens} (hU : IsAffineOpen U) (hV : IsAffineOpen V) : IsAffineOpen (U ⊓ V) := by
  obtain ⟨_, hP, _⟩ := hc
  have : IsSeparated c := inferInstance
  have : IsSeparated (terminal.from C) := by
    rw [show terminal.from C = c ≫ terminal.from _ from Subsingleton.elim _ _]
    infer_instance
  exact hU.inf hV

theorem inf_nonempty {Ω : Type} [Field Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω) (hc : IsCurve c)
    {U V : C.Opens} (hU : (U : Set C).Nonempty) (hV : (V : Set C).Nonempty) : ((U ⊓ V : C.Opens) : Set C).Nonempty := by
  obtain ⟨hI, _, _⟩ := hc
  have := hI
  simpa using nonempty_preirreducible_inter U.isOpen V.isOpen hU hV

def LeafDedRing : Prop := ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω), IsCurve c →
  ∀ W : C.Opens, IsAffineOpen W → (W : Set C).Nonempty → IsDedekindDomain Γ(C, W)

def LeafDim1 : Prop := ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω), IsCurve c →
  ∀ W : C.Opens, IsAffineOpen W → (W : Set C).Nonempty → Ring.DimensionLEOne Γ(C, W)

def LeafNormal : Prop := ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω), IsCurve c →
  ∀ W : C.Opens, IsAffineOpen W → (W : Set C).Nonempty → IsIntegrallyClosed Γ(C, W)

theorem leafNormal : LeafNormal := by
  intro Ω _ _ C c hc W hW hWn
  obtain ⟨hI, _, hS⟩ := hc
  have : Nonempty W := hWn.to_subtype
  have hSm : Smooth c := SmoothOfRelativeDimension.smooth 1 c
  let φ : Ω →+* Γ(C, W) := (c.appLE ⊤ W le_top).hom.comp (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom
  letI : Algebra Ω Γ(C, W) := φ.toAlgebra
  have hφ : φ.Smooth := by
    have h1 : (c.appLE ⊤ W le_top).hom.Smooth :=
      HasRingHomProperty.appLE @Smooth c hSm ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ (by simp)
    exact RingHom.Smooth.comp (RingHom.Smooth.of_bijective
      (Scheme.ΓSpecIso (CommRingCat.of Ω)).commRingCatIsoToRingEquiv.symm.bijective) h1
  have : Algebra.Smooth Ω Γ(C, W) := hφ
  exact GlobalTheory.isIntegrallyClosed_of_smooth Ω Γ(C, W)

theorem krullDim_eq_one {Ω : Type} [Field Ω] {C : Scheme.{0}} (c : C ⟶ Sp Ω) (hc : IsCurve c)
    (W : C.Opens) (hW : IsAffineOpen W) (hWn : (W : Set C).Nonempty) :
    ringKrullDim Γ(C, W) = ((1 : ℕ) : WithBot ℕ∞) := by
  have hI0 : IsIntegral C := hc.1
  have : Nonempty W := hWn.to_subtype
  have : IsDomain Γ(C, W) := inferInstance
  obtain ⟨hI, _, hS⟩ := hc
  have : Nonempty W := hWn.to_subtype
  have hL : LocallyOfFiniteType c := inferInstance
  let e : Ω ≃+* Γ(Sp Ω, ⊤) := (Scheme.ΓSpecIso (CommRingCat.of Ω)).commRingCatIsoToRingEquiv.symm
  let ψ := (c.appLE ⊤ W le_top).hom
  let φ : Ω →+* Γ(C, W) := ψ.comp (e : Ω →+* Γ(Sp Ω, ⊤))
  letI : Algebra Ω Γ(C, W) := φ.toAlgebra
  have hφ : φ.FiniteType := by
    have h1 : ψ.FiniteType :=
      HasRingHomProperty.appLE @LocallyOfFiniteType c hL ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ (by simp)
    exact h1.comp (RingHom.FiniteType.of_surjective _ e.surjective)
  have : Algebra.FiniteType Ω Γ(C, W) := hφ
  have hloc : RingHom.Locally (RingHom.IsStandardSmoothOfRelativeDimension 1) ψ :=
    HasRingHomProperty.appLE (@SmoothOfRelativeDimension 1) c hS ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ (by simp)
  obtain ⟨s, hs, hst⟩ := hloc
  obtain ⟨t, ht, ht0⟩ : ∃ t ∈ s, t ≠ 0 := by
    by_contra h
    push Not at h
    have hle : Ideal.span s ≤ ⊥ := Ideal.span_le.mpr (fun x hx => by simp [h x hx])
    rw [hs] at hle
    exact one_ne_zero (Ideal.mem_bot.mp (hle (Submodule.mem_top : (1 : Γ(C, W)) ∈ ⊤)))
  have h1 : ((algebraMap Γ(C, W) (Localization.Away t)).comp φ).IsStandardSmoothOfRelativeDimension 1 :=
    (hst t ht).comp (RingHom.IsStandardSmoothOfRelativeDimension.equiv e)
  have hs0 : Submonoid.powers t ≤ nonZeroDivisors Γ(C, W) := powers_le_nonZeroDivisors_of_noZeroDivisors ht0
  have : IsDomain (Localization.Away t) := IsLocalization.isDomain_localization hs0
  have hEq : algebraMap Ω (Localization.Away t) = (algebraMap Γ(C, W) (Localization.Away t)).comp φ :=
    IsScalarTower.algebraMap_eq _ _ _
  rw [← hEq] at h1
  have : Algebra.IsStandardSmoothOfRelativeDimension 1 Ω (Localization.Away t) :=
    (RingHom.isStandardSmoothOfRelativeDimension_algebraMap (n := 1)).mp h1
  obtain ⟨g, hg⟩ := Algebra.IsStandardSmoothOfRelativeDimension.exists_etale_mvPolynomial 1 Ω (Localization.Away t)
  have h2 := GlobalTheory.AffinePoints.trdeg_eq_of_etale g hg
  have : FaithfulSMul Γ(C, W) (Localization.Away t) :=
    (faithfulSMul_iff_algebraMap_injective _ _).mpr (IsLocalization.injective _ hs0)
  have : Algebra.IsAlgebraic Γ(C, W) (Localization.Away t) := IsLocalization.isAlgebraic _ (Submonoid.powers t)
  rw [GlobalTheory.trdeg_eq_of_isAlgebraic_top Ω Γ(C, W) (Localization.Away t)] at h2
  exact GlobalTheory.ringKrullDim_eq_of_trdeg_eq Ω Γ(C, W) h2

theorem leafDim1 : LeafDim1 := by
  intro Ω _ _ C c hc W hW hWn
  have h3 := krullDim_eq_one c hc W hW hWn
  have hI0 : IsIntegral C := hc.1
  have : Nonempty W := hWn.to_subtype
  have : IsDomain Γ(C, W) := inferInstance
  have hK : Ring.KrullDimLE 1 Γ(C, W) := Ring.krullDimLE_iff.mpr (by rw [h3])
  exact ⟨fun {P} hne hP => hP.isMaximal_of_ne_bot hne⟩

theorem LeafDedRing_of (hd : LeafDim1) (hn : LeafNormal) : LeafDedRing := by
  intro Ω _ _ C c hc W hW hWn
  have h1 := hd Ω c hc W hW hWn
  have h2 := hn Ω c hc W hW hWn
  obtain ⟨hI, _, hS⟩ := hc
  have : Nonempty W := hWn.to_subtype
  have hL : LocallyOfFiniteType c := inferInstance
  let φ : Ω →+* Γ(C, W) := (c.appLE ⊤ W le_top).hom.comp (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom
  letI : Algebra Ω Γ(C, W) := φ.toAlgebra
  have hφ : φ.FiniteType := by
    have h1 : (c.appLE ⊤ W le_top).hom.FiniteType :=
      HasRingHomProperty.appLE @LocallyOfFiniteType c hL ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ (by simp)
    exact h1.comp (RingHom.FiniteType.of_surjective _ (Scheme.ΓSpecIso (CommRingCat.of Ω)).commRingCatIsoToRingEquiv.symm.surjective)
  have : Algebra.FiniteType Ω Γ(C, W) := hφ
  have : IsNoetherianRing Γ(C, W) := Algebra.FiniteType.isNoetherianRing Ω _
  exact { }

end LateralTheory.E.E4.CurveCut.CoverPf
