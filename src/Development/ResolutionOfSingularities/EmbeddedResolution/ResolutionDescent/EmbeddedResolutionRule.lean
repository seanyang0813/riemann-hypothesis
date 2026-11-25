module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineResolutionRule
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.DisjointUnionOfOpens

@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

structure EmbeddingDatum (k : Type u) [Field k] [CharZero k] (Y : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) where
  ambient : Scheme.{u}
  ambientStruct : ambient ⟶ Spec (CommRingCat.of k)
  emb : Y ⟶ ambient
  isAffine_ambient : AlgebraicGeometry.IsAffine ambient
  smooth_ambientStruct : AlgebraicGeometry.Smooth ambientStruct
  locallyOfFiniteType_ambientStruct : AlgebraicGeometry.LocallyOfFiniteType ambientStruct
  quasiCompact_ambientStruct : AlgebraicGeometry.QuasiCompact ambientStruct
  isClosedImmersion_emb : AlgebraicGeometry.IsClosedImmersion emb
  nonzeroOnComponents_ker : NonzeroOnComponents emb.ker
  comp_eq : emb ≫ ambientStruct = p
  sncEmpty : InStrictNormalCrossingPosition ambientStruct ([] : List ambient.IdealSheafData)

namespace EmbeddingDatum

variable {k : Type u} [Field k] [CharZero k] {Y : Scheme.{u}}
  {p : Y ⟶ Spec (CommRingCat.of k)}

instance instIsAffineAmbient (D : EmbeddingDatum k Y p) :
    AlgebraicGeometry.IsAffine D.ambient := D.isAffine_ambient

instance instSmoothAmbientStruct (D : EmbeddingDatum k Y p) :
    AlgebraicGeometry.Smooth D.ambientStruct := D.smooth_ambientStruct

instance instLocallyOfFiniteTypeAmbientStruct (D : EmbeddingDatum k Y p) :
    AlgebraicGeometry.LocallyOfFiniteType D.ambientStruct :=
  D.locallyOfFiniteType_ambientStruct

instance instQuasiCompactAmbientStruct (D : EmbeddingDatum k Y p) :
    AlgebraicGeometry.QuasiCompact D.ambientStruct := D.quasiCompact_ambientStruct

instance instIsClosedImmersionEmb (D : EmbeddingDatum k Y p) :
    AlgebraicGeometry.IsClosedImmersion D.emb := D.isClosedImmersion_emb

end EmbeddingDatum

def embeddingDatumOfClosedImmersion {k : Type u} [Field k] [CharZero k] {Y : Scheme.{u}}
    {p : Y ⟶ Spec (CommRingCat.of k)} (A : Scheme.{u}) [AlgebraicGeometry.IsAffine A]
    (q : A ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth q]
    [AlgebraicGeometry.LocallyOfFiniteType q] [AlgebraicGeometry.QuasiCompact q]
    (e : Y ⟶ A) [AlgebraicGeometry.IsClosedImmersion e]
    (hker : NonzeroOnComponents e.ker) (hcomp : e ≫ q = p)
    (hsnc : InStrictNormalCrossingPosition q ([] : List A.IdealSheafData)) :
    EmbeddingDatum k Y p where
  ambient := A
  ambientStruct := q
  emb := e
  isAffine_ambient := inferInstance
  smooth_ambientStruct := inferInstance
  locallyOfFiniteType_ambientStruct := inferInstance
  quasiCompact_ambientStruct := inferInstance
  isClosedImmersion_emb := inferInstance
  nonzeroOnComponents_ker := hker
  comp_eq := hcomp
  sncEmpty := hsnc

namespace EmbeddingDatum

variable {k : Type u} [Field k] [CharZero k] {Y : Scheme.{u}}
  {p : Y ⟶ Spec (CommRingCat.of k)}

end EmbeddingDatum

abbrev EmbeddedResolutionRule : Type (u + 1) :=
  ∀ (k : Type u) [Field k] [CharZero k] (Y : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    [AlgebraicGeometry.QuasiCompact p] [AlgebraicGeometry.IsReduced Y]
    [AlgebraicGeometry.IsAffine Y], EmbeddingDatum k Y p → SequenceOfBlowups Y

abbrev EmbeddingChoice : Type (u + 1) :=
  ∀ (k : Type u) [Field k] [CharZero k] (Y : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    [AlgebraicGeometry.QuasiCompact p] [AlgebraicGeometry.IsReduced Y]
    [AlgebraicGeometry.IsAffine Y], EmbeddingDatum k Y p

def EmbeddedResolutionRule.toAffineResolutionRule (R : EmbeddedResolutionRule.{u}) (S : EmbeddingChoice.{u}) :
    AffineResolutionRule.{u} :=
  fun k _ _ Y p _ _ _ _ => R k Y p (S k Y p)

@[simp]
theorem EmbeddedResolutionRule.toAffineResolutionRule_apply (R : EmbeddedResolutionRule.{u}) (S : EmbeddingChoice.{u})
    (k : Type u) [Field k] [CharZero k] (Y : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    [AlgebraicGeometry.QuasiCompact p] [AlgebraicGeometry.IsReduced Y]
    [AlgebraicGeometry.IsAffine Y] :
    R.toAffineResolutionRule S k Y p = R k Y p (S k Y p) := rfl

def EmbeddedResolutionRule.HasProperCenters (R : EmbeddedResolutionRule.{u}) : Prop :=
  ∀ (k : Type u) [Field k] [CharZero k] (Y : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    [AlgebraicGeometry.QuasiCompact p] [AlgebraicGeometry.IsReduced Y]
    [AlgebraicGeometry.IsAffine Y] (D : EmbeddingDatum k Y p) (i : ℕ),
    i < (R k Y p D).length → (R k Y p D).center i ≠ ⊤

def EmbeddedResolutionRule.IsCompatibleWithSmoothAmbientMaps (R : EmbeddedResolutionRule.{u}) : Prop :=
  ∀ (k : Type u) [Field k] [CharZero k] (Y Y' : Scheme.{u})
    (p : Y ⟶ Spec (CommRingCat.of k)) (p' : Y' ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] [AlgebraicGeometry.QuasiCompact p]
    [AlgebraicGeometry.IsReduced Y] [AlgebraicGeometry.IsAffine Y]
    [AlgebraicGeometry.LocallyOfFiniteType p'] [AlgebraicGeometry.QuasiCompact p']
    [AlgebraicGeometry.IsReduced Y'] [AlgebraicGeometry.IsAffine Y']
    (D : EmbeddingDatum k Y p) (D' : EmbeddingDatum k Y' p')
    (φ : D'.ambient ⟶ D.ambient) [AlgebraicGeometry.Smooth φ] (ψ : Y' ⟶ Y),
    φ ≫ D.ambientStruct = D'.ambientStruct →
    IsPullback D'.emb ψ φ D.emb →
    IsPullbackBlowupSequence ψ (R k Y' p' D') (R k Y p D)

end FunctorialResolution.EmbeddedResolution

end
