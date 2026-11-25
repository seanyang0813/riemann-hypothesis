module

public import Mathlib.AlgebraicGeometry.IdealSheaf.Subscheme
public import Mathlib.Combinatorics.Quiver.ReflQuiver
import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Mathlib.AlgebraicGeometry.Morphisms.Affine

@[expose] public section

open CategoryTheory

namespace FunctorialResolution.EmbeddedResolution

theorem isReduced_subscheme_ker {W X : AlgebraicGeometry.Scheme}
    (f : W ⟶ X) [AlgebraicGeometry.IsReduced W] [AlgebraicGeometry.QuasiCompact f] :
    AlgebraicGeometry.IsReduced (AlgebraicGeometry.Scheme.Hom.ker f).subscheme := by
  have : ∀ y : (AlgebraicGeometry.Scheme.Hom.ker f).subscheme,
      _root_.IsReduced ↥((AlgebraicGeometry.Scheme.Hom.ker f).subscheme.presheaf.stalk y) := by
    intro y
    obtain ⟨U, hU, hyU⟩ : ∃ U : X.Opens, AlgebraicGeometry.IsAffineOpen U ∧
        f.imageι.base y ∈ U :=
      ⟨(X.affineCover.f (X.affineCover.idx _)).opensRange,
        AlgebraicGeometry.isAffineOpen_opensRange _, X.affineCover.covers _⟩
    let V := (TopologicalSpace.Opens.map f.imageι.base).obj U
    have hVaff : AlgebraicGeometry.IsAffineOpen V := hU.preimage f.imageι
    have hred : _root_.IsReduced ↥(f.image.presheaf.obj (Opposite.op V)) :=
      isReduced_of_injective (f.toImage.app V).hom
        (by simpa using AlgebraicGeometry.Scheme.Hom.toImage_app_injective f ⟨U, hU⟩)
    let x : V := ⟨y, hyU⟩
    let : Algebra ↥(f.image.presheaf.obj (Opposite.op V)) ↥(f.image.presheaf.stalk x.1) :=
      TopCat.Presheaf.algebra_section_stalk _ x
    have : IsLocalization (hVaff.primeIdealOf x).asIdeal.primeCompl
        ↥(f.image.presheaf.stalk x.1) := hVaff.isLocalization_stalk x
    exact isReduced_localizationPreserves (hVaff.primeIdealOf x).asIdeal.primeCompl
      ↥(f.image.presheaf.stalk x.1) hred
  exact AlgebraicGeometry.isReduced_of_isReduced_stalk _

end FunctorialResolution.EmbeddedResolution
