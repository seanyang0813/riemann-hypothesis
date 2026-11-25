module

public import Mathlib.RingTheory.Etale.Basic
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothRegular

@[expose] public section

universe u

namespace FunctorialResolution.EmbeddedResolution

@[reducible] def CoordPolynomialRing (k : Type u) [Field k] (m : ℕ) : Type u :=
  MvPolynomial (ULift.{u} (Fin m)) k

noncomputable def etaleChartCoord (k : Type u) [Field k] (m : ℕ) (S : Type u) [CommRing S]
    [Algebra (CoordPolynomialRing k m) S] (j : Fin m) : S :=
  algebraMap (CoordPolynomialRing k m) S (MvPolynomial.X (ULift.up.{u} j))

theorem etaleChartCoord_def (k : Type u) [Field k] (m : ℕ) (S : Type u) [CommRing S]
    [Algebra (CoordPolynomialRing k m) S] (j : Fin m) :
    etaleChartCoord k m S j =
      algebraMap (CoordPolynomialRing k m) S (MvPolynomial.X (ULift.up.{u} j)) :=
  rfl

open AlgebraicGeometry in
theorem isRegularLocalRing_of_isLocalization_etale (k : Type u) [Field k] (m : ℕ) (S : Type u)
    [CommRing S] [Algebra (CoordPolynomialRing k m) S] [Algebra.Etale (CoordPolynomialRing k m) S]
    (q : Ideal S) [q.IsPrime] (A : Type u) [CommRing A] [Algebra S A]
    [IsLocalization q.primeCompl A] :
    IsRegularLocalRing A := by
  let P := CoordPolynomialRing k m
  let f := (algebraMap P S).comp (algebraMap k P)
  have hf : f.Smooth := (RingHom.smooth_algebraMap.mpr (inferInstance : Algebra.Smooth k P)).comp
    (RingHom.smooth_algebraMap.mpr (inferInstance : Algebra.Smooth P S))
  let p := Spec.map (CommRingCat.ofHom f)
  have : Smooth p := HasRingHomProperty.Spec_iff.mpr hf
  let x : PrimeSpectrum S := ⟨q, inferInstance⟩
  have : IsRegularLocalRing ((Spec.structureSheaf S).presheaf.stalk x) :=
    isRegularLocalRing_stalk_of_smooth p x
  have : IsLocalization.AtPrime ((Spec.structureSheaf S).presheaf.stalk x) q :=
    StructureSheaf.IsLocalization.to_stalk S x
  exact IsRegularLocalRing.of_ringEquiv
    (IsLocalization.algEquiv q.primeCompl ((Spec.structureSheaf S).presheaf.stalk x) A).toRingEquiv

theorem isRegularLocalRing_localization_atPrime_etale (k : Type u) [Field k] (m : ℕ) (S : Type u)
    [CommRing S] [Algebra (CoordPolynomialRing k m) S] [Algebra.Etale (CoordPolynomialRing k m) S]
    (q : Ideal S) [q.IsPrime] :
    IsRegularLocalRing (Localization.AtPrime q) :=
  isRegularLocalRing_of_isLocalization_etale k m S q (Localization.AtPrime q)

end FunctorialResolution.EmbeddedResolution
