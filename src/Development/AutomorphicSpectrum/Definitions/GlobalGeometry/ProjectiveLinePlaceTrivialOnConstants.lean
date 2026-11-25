module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsGenericFlag
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.InjectiveOfIsCptGen
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ZarhinBundleKernelFirstCoordEquations
import Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ProjectiveLinePlaces

open AlgebraicGeometry CategoryTheory GlobalTheory.CompanionTheory.Ar

section General

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
  {R S : Type} [CommRing R] [IsLocalRing R] [CommRing S] [IsLocalRing S]

theorem centre_specializes (z : Spec (CommRingCat.of R) ⟶ X) (φ : R →+* S) :
    centre (Spec.map (CommRingCat.ofHom φ) ≫ z) ⤳ centre z :=
  (IsLocalRing.specializes_closedPoint (R := R) _).map z.continuous

theorem stalk_square {x y : X} (hs : y ⤳ x) {A B : CommRingCat.{0}} (g : X.presheaf.stalk x ⟶ A)
    (g' : X.presheaf.stalk y ⟶ B) (φ : A ⟶ B)
    (h : Spec.map g' ≫ X.fromSpecStalk y = Spec.map φ ≫ Spec.map g ≫ X.fromSpecStalk x) :
    X.presheaf.stalkSpecializes hs ≫ g' = g ≫ φ := by
  apply Spec.map_injective
  rw [← cancel_mono (X.fromSpecStalk x), Spec.map_comp, Spec.map_comp, Category.assoc, Category.assoc,
    Scheme.SpecMap_stalkSpecializes_fromSpecStalk, h]

theorem genMap_specializes {x y : X} (hs : y ⤳ x) (h0 : genPt ξ ⤳ y) (h1 : genPt ξ ⤳ x)
    (s : X.presheaf.stalk x) :
    genMap ξ ⟨y, h0⟩ ((X.presheaf.stalkSpecializes hs).hom s) = genMap ξ ⟨x, h1⟩ s := by
  have h := X.presheaf.stalkSpecializes_comp h0 hs
  have h2 : X.presheaf.stalkSpecializes hs ≫ (X.presheaf.stalkSpecializes h0 ≫ Scheme.stalkClosedPointTo ξ) =
      X.presheaf.stalkSpecializes h1 ≫ Scheme.stalkClosedPointTo ξ :=
    (Category.assoc _ _ _).symm.trans (congrArg (· ≫ Scheme.stalkClosedPointTo ξ) h)
  exact congrArg (fun g => g.hom s) h2

theorem valAt_restrict {z : Spec (CommRingCat.of R) ⟶ X} (φ : R →+* S) {y : Spec (CommRingCat.of S) ⟶ X}
    (hy : Spec.map (CommRingCat.ofHom φ) ≫ z = y) (h0 : genPt ξ ⤳ centre y) {a : Ω} {r : R}
    (h : ValAt ξ z a r) : ValAt ξ y a (φ r) := by
  obtain ⟨hz, s, rfl, rfl⟩ := h
  have hs : centre y ⤳ centre z := hy ▸ centre_specializes z φ
  refine ⟨h0, (X.presheaf.stalkSpecializes hs).hom s, genMap_specializes hs h0 hz s, ?_⟩
  have key := stalk_square hs (Scheme.stalkClosedPointTo z) (Scheme.stalkClosedPointTo y)
    (CommRingCat.ofHom φ) ((Scheme.Spec_stalkClosedPointTo_fromSpecStalk y).trans (hy.symm.trans
      (congrArg (Spec.map (CommRingCat.ofHom φ) ≫ ·) (Scheme.Spec_stalkClosedPointTo_fromSpecStalk z)).symm))
  exact congrArg (fun g => g.hom s) key

theorem valAt_of_unit {z : Spec (CommRingCat.of R) ⟶ X} (h : genPt ξ ⤳ centre z) {a : Ω}
    (ha : unitAt ξ ⟨centre z, h⟩ a) : ∃ r : Rˣ, ValAt ξ z a r := by
  obtain ⟨s, hs, rfl⟩ := (CptModel.unitAt_iff ξ _ a).1 ha
  obtain ⟨r, hr⟩ := hs.map (Scheme.stalkClosedPointTo z).hom
  exact ⟨r, h, s, rfl, hr.symm⟩

theorem unitAt_div {L : Lat ξ Ω} {p : Cpt ξ} {s t : Ω} (hs : L.IsGenAt p s) (ht : L.IsGenAt p t) :
    unitAt ξ p (s / t) := by
  have key : ∀ s t : Ω, L.IsGenAt p s → L.IsGenAt p t → s / t ∈ regAt ξ p := by
    intro s t hs ht
    have : s ∈ Submodule.span (regAt ξ p) {t} := ht.2 ▸ hs.2 ▸ Submodule.mem_span_singleton_self s
    obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 this
    rw [show c • t = (c : Ω) * t from rfl, mul_div_cancel_right₀ _ ht.1]
    exact c.2
  exact ⟨div_ne_zero hs.1 ht.1, key s t hs ht, by rw [inv_div]; exact key t s ht hs⟩

end General

section Line

open IsDedekindDomain Polynomial Crv.Inhab
open scoped Classical

variable (k : Type) [Field k]

end Line

section Proj

open MvPolynomial HomogeneousLocalization ProjCoord

attribute [local instance] MvPolynomial.gradedAlgebra

variable {o κ Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem valAt_pow {Y : Scheme.{0}} {ξ : Spec (CommRingCat.of Ω) ⟶ Y} {R : Type} [CommRing R] [IsLocalRing R]
    {z : Spec (CommRingCat.of R) ⟶ Y} {a : Ω} {r : R} (h : ValAt ξ z a r) (n : ℕ) : ValAt ξ z (a ^ n) (r ^ n) := by
  obtain ⟨hz, t, rfl, rfl⟩ := h
  exact ⟨hz, t ^ n, map_pow _ _ _, map_pow _ _ _⟩

end Proj

end GlobalTheory.CompanionTheory.Ar.Flat.ProjectiveLinePlaces
