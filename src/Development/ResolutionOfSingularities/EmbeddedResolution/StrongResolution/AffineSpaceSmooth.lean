module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineResolutionRule
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

theorem affineSpaceIsSmooth : AffineSpaceIsSmooth.{u} := by
  intro k _ n
  have hC : AlgebraicGeometry.Smooth
      (Spec.map (CommRingCat.ofHom
        (MvPolynomial.C : k →+* MvPolynomial (ULift.{u} (Fin n)) k))) :=
    (AlgebraicGeometry.HasRingHomProperty.Spec_iff (P := @AlgebraicGeometry.Smooth)).mpr
      (RingHom.smooth_algebraMap.mpr ⟨inferInstance, inferInstance⟩)
  rw [← Iso.hom_inv_id_assoc (AffineSpace.SpecIso (ULift.{u} (Fin n)) (CommRingCat.of k))
    (affineSpaceIndexedByToSpec k (ULift.{u} (Fin n))), AffineSpace.SpecIso_inv_over]
  infer_instance

theorem nilIsStrictNormalCrossingsOnAffineSpace : NilIsStrictNormalCrossingsOnAffineSpace.{u} := by
  intro k _ n
  refine ⟨by simp, fun x => ⟨⊤, trivial, n,
    ⟨(⊤ : (affineSpaceIndexedBy k (ULift.{u} (Fin n))).Opens).ι, rfl, ?_⟩,
    fun _ => none, by simp, by simp, by simp⟩⟩
  infer_instance

end FunctorialResolution.EmbeddedResolution
