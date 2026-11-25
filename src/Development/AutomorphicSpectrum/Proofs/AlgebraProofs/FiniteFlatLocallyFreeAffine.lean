module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleDiagonalDescendedBundleGaloisCover
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSecImageNonzeroLocus
public import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.Tactic.Linter.HaveILetI
import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion

@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd

open GlobalTheory.FiniteAmple

theorem exists_finFree_away_of_finitePresentation {A B : Type} [CommRing A] [CommRing B] {φ : A →+* B}
    (hf : φ.Finite) (hfl : φ.Flat) (hfp : φ.FinitePresentation) (p : PrimeSpectrum A) :
    ∃ r ∉ p.asIdeal, ∀ {A' B' : Type} [CommRing A'] [CommRing B'] {α : A →+* A'} {β : B →+* B'}
      {φ' : A' →+* B'},
      IsPushout (CommRingCat.ofHom φ) (CommRingCat.ofHom α) (CommRingCat.ofHom β)
        (CommRingCat.ofHom φ') →
      IsUnit (α r) → FinFree φ' := by
  apply GlobalTheory.FiniteAmpleFP.exists_finFree_away_fp <;> assumption

theorem finiteFreeHom_comp_isIso {A B C : CommRingCat.{0}} (f : A ⟶ B) (e : B ⟶ C) [IsIso e]
    (h : FinFree f.hom) : FiniteFreeHom (f ≫ e).hom := by
  obtain ⟨hfin, hfree⟩ := h
  letI : Algebra A B := f.hom.toAlgebra
  letI : Algebra A C := (f ≫ e).hom.toAlgebra
  haveI : Module.Finite A B := hfin
  haveI : Module.Free A B := hfree
  let eR : B ≃+* C := (asIso e).commRingCatIsoToRingEquiv
  let eA : B ≃ₐ[A] C := AlgEquiv.ofRingEquiv (f := eR) (fun a => rfl)
  exact ⟨Module.Free.of_equiv eA.toLinearEquiv, Module.Finite.equiv eA.toLinearEquiv⟩

theorem exists_affine_finiteFreeHom {Y S : Scheme.{0}} (g : Y ⟶ S) [IsFinite g] [Flat g]
    [LocallyOfFinitePresentation g] (s : S) :
    ∃ W : S.Opens, s ∈ W ∧ IsAffineOpen W ∧ FiniteFreeHom (g ∣_ W).appTop.hom := by
  obtain ⟨V, hV, hsV, -⟩ := exists_isAffineOpen_mem_and_subset (show s ∈ (⊤ : S.Opens) from trivial)
  have hfin : (g.app V).hom.Finite := IsFinite.finite_app g V hV
  have hfl : (g.app V).hom.Flat := by
    rw [Scheme.Hom.app_eq_appLE]
    exact HasRingHomProperty.appLE @Flat g ‹_› ⟨V, hV⟩ ⟨_, hV.preimage g⟩ _
  have hfp : (g.app V).hom.FinitePresentation := by
    rw [Scheme.Hom.app_eq_appLE]
    exact HasRingHomProperty.appLE @LocallyOfFinitePresentation g ‹_› ⟨V, hV⟩
      ⟨_, hV.preimage g⟩ _
  obtain ⟨r, hr, F⟩ := exists_finFree_away_of_finitePresentation hfin hfl hfp
    (PrimeSpectrum.comap (S.presheaf.germ V s hsV).hom (IsLocalRing.closedPoint _))
  have hsW : s ∈ S.basicOpen r := by
    rw [Scheme.mem_basicOpen _ _ _ hsV]
    by_contra hnu
    apply hr
    rw [PrimeSpectrum.comap_asIdeal, Ideal.mem_comap]
    exact (IsLocalRing.mem_maximalIdeal _).mpr hnu
  have hWV : S.basicOpen r ≤ V := S.basicOpen_le r
  have hW : IsAffineOpen (S.basicOpen r) := hV.basicOpen r
  have hpush := GlobalTheory.FiniteAmple.isPushout_app g hV hW hWV
  have hu : IsUnit ((S.presheaf.map (homOfLE hWV).op).hom r) := by
    haveI := hV.isLocalization_basicOpen r
    exact IsLocalization.Away.algebraMap_isUnit r
  have key : FinFree (g.app (S.basicOpen r)).hom :=
    F (α := (S.presheaf.map (homOfLE hWV).op).hom) (φ' := (g.app (S.basicOpen r)).hom) hpush hu
  refine ⟨S.basicOpen r, hsW, hW, ?_⟩
  have key' : FinFree (g.app ((Scheme.Hom.opensFunctor (S.basicOpen r).ι).obj ⊤)).hom := by
    rw [Scheme.Opens.ι_image_top]
    exact key
  have aux : ∀ {A B C : CommRingCat.{0}} (f : A ⟶ B) (p : B = C), FinFree f.hom →
      FiniteFreeHom (f ≫ eqToHom p).hom := by
    intro A B C f p hf
    subst p
    rw [eqToHom_refl]
    exact finiteFreeHom_comp_isIso f (𝟙 _) hf
  rw [morphismRestrict_appTop, eqToHom_op, eqToHom_map]
  exact aux _ _ key'

end GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd
