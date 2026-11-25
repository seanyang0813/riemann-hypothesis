module

public import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowup
public import Mathlib.AlgebraicGeometry.Morphisms.Proper
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProperties
public import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupUniversal
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence
public import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupCartier
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper
import Mathlib.AlgebraicGeometry.Modules.Sheaf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupProper, Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProper

-- ===== clump member: Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupProper =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupProper", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowup\npublic import Mathlib.AlgebraicGeometry.Morphisms.Proper\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.Blowup

universe u

variable {R : Type u} [CommRing R]

private theorem algebraMap_degreeZero_apply (I : Ideal R) (x : ↥(reesGrading I 0)) :
    algebraMap ↥(reesGrading I 0) ↥(reesAlgebra I) x = (x : ↥(reesAlgebra I)) := rfl

private theorem algebraMap_reesAlgebra_eq_algebraMap_degreeZero (I : Ideal R) (r : R) :
    algebraMap R ↥(reesAlgebra I) r =
      algebraMap ↥(reesGrading I 0) ↥(reesAlgebra I) (reesDegreeZeroEquiv I r) := by
  apply Subtype.ext
  rw [algebraMap_degreeZero_apply, reesDegreeZeroEquiv_coe_coe]
  rfl

private noncomputable def adjoinOverDegreeZero (I : Ideal R) (s : Set ↥(reesAlgebra I)) :
    Subalgebra R ↥(reesAlgebra I) where
  toSubsemiring := (Algebra.adjoin ↥(reesGrading I 0) s).toSubsemiring
  algebraMap_mem' := fun r => by
    rw [algebraMap_reesAlgebra_eq_algebraMap_degreeZero]
    exact Subalgebra.algebraMap_mem (Algebra.adjoin ↥(reesGrading I 0) s) _

private theorem mem_adjoin_degreeZero_of_mem_restrictScalars (I : Ideal R) (s : Set ↥(reesAlgebra I))
    (x : ↥(reesAlgebra I)) (hx : x ∈ adjoinOverDegreeZero I s) :
    x ∈ Algebra.adjoin ↥(reesGrading I 0) s := hx

private theorem mem_restrictScalars_of_mem_adjoin_degreeZero (I : Ideal R) (s : Set ↥(reesAlgebra I))
    (x : ↥(reesAlgebra I)) (hx : x ∈ Algebra.adjoin ↥(reesGrading I 0) s) :
    x ∈ adjoinOverDegreeZero I s := hx

private theorem adjoin_le_adjoin_degreeZero (I : Ideal R) (s : Set ↥(reesAlgebra I)) :
    Algebra.adjoin R s ≤ adjoinOverDegreeZero I s := by
  refine Algebra.adjoin_le ?_
  intro y hy
  rw [SetLike.mem_coe]
  exact mem_restrictScalars_of_mem_adjoin_degreeZero I s y (Algebra.subset_adjoin hy)

private theorem adjoin_degreeZero_eq_top_of_adjoin_eq_top (I : Ideal R) (s : Set ↥(reesAlgebra I))
    (hs : Algebra.adjoin R s = ⊤) : Algebra.adjoin ↥(reesGrading I 0) s = ⊤ := by
  rw [eq_top_iff]
  intro x _
  have hx : x ∈ Algebra.adjoin R s := by
    rw [hs]
    exact Algebra.mem_top
  exact mem_adjoin_degreeZero_of_mem_restrictScalars I s x (adjoin_le_adjoin_degreeZero I s hx)

theorem finiteType_reesAlgebra_degreeZero (I : Ideal R) [IsNoetherianRing R] :
    Algebra.FiniteType ↥(reesGrading I 0) ↥(reesAlgebra I) := by
  obtain ⟨s, hs⟩ := (inferInstance : Algebra.FiniteType R ↥(reesAlgebra I)).out
  exact ⟨⟨s, adjoin_degreeZero_eq_top_of_adjoin_eq_top I (↑s : Set ↥(reesAlgebra I)) hs⟩⟩

private theorem isProper_comp_of_isIso {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z)
    (hf : AlgebraicGeometry.IsProper f) (hg : IsIso g) :
    AlgebraicGeometry.IsProper (f ≫ g) := by
  have := hf
  have := hg
  infer_instance

theorem isProper_affineBlowup_toSpec (I : Ideal R) [IsNoetherianRing R] :
    AlgebraicGeometry.IsProper (AffineBlowup.toSpec I) := by
  have hft : Algebra.FiniteType ↥(reesGrading I 0) ↥(reesAlgebra I) :=
    finiteType_reesAlgebra_degreeZero I
  have h1 : AlgebraicGeometry.IsProper (AlgebraicGeometry.Proj.toSpecZero (reesGrading I)) :=
    inferInstance
  rw [AffineBlowup.toSpec_eq_toSpecZero_comp]
  exact isProper_comp_of_isIso _ _ h1 (isIso_SpecMap_iff.mpr (reesDegreeZeroEquiv I).bijective)

end FunctorialResolution.Blowup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupProper =====

-- ===== clump member: Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProper =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProper", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProperties\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupProper\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupUniversal\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowup\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupCartier\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry CategoryTheory.Limits

namespace FunctorialResolution.Blowup

private theorem ofIdealTop_ideal_top_eq_self {X : Scheme.{u}} [IsAffine X] (I : X.IdealSheafData) :
    AlgebraicGeometry.Scheme.IdealSheafData.ofIdealTop
      (I.ideal ⟨⊤, isAffineOpen_top X⟩) = I :=
  Scheme.IdealSheafData.ext_of_isAffine (by simp)

private theorem map_inv_map_hom_eq_self {A B : CommRingCat.{u}} (e : A ≅ B) (K : Ideal ↑A) :
    Ideal.map (CommRingCat.Hom.hom e.inv) (Ideal.map (CommRingCat.Hom.hom e.hom) K) = K := by
  rw [Ideal.map_map, ← CommRingCat.hom_comp, e.hom_inv_id, CommRingCat.hom_id, Ideal.map_id]

private theorem exists_isBlowupAlongIdealSheaf_isProper_spec_of_isNoetherianRing (A : Type u) [CommRing A]
    [IsNoetherianRing A] (I : (Spec (CommRingCat.of A)).IdealSheafData) :
    ∃ (Y : Scheme.{u}) (π : Y ⟶ Spec (CommRingCat.of A)),
      IsBlowupAlongIdealSheaf π I ∧ AlgebraicGeometry.IsProper π := by
  obtain ⟨J, hJ⟩ : ∃ J : Ideal A, FunctorialResolution.Blowup.specIdealSheaf J = I := by
    refine ⟨Ideal.map (CommRingCat.Hom.hom (Scheme.ΓSpecIso (CommRingCat.of A)).hom)
      (I.ideal ⟨⊤, isAffineOpen_top (Spec (CommRingCat.of A))⟩), ?_⟩
    rw [FunctorialResolution.Blowup.specIdealSheaf_eq_ofIdealTop, map_inv_map_hom_eq_self (Scheme.ΓSpecIso (CommRingCat.of A))]
    exact ofIdealTop_ideal_top_eq_self I
  refine ⟨FunctorialResolution.Blowup.affineBlowup J, FunctorialResolution.Blowup.AffineBlowup.toSpec J, ?_,
    FunctorialResolution.Blowup.isProper_affineBlowup_toSpec J⟩
  rw [← hJ]
  exact FunctorialResolution.Blowup.isBlowupAlongIdealSheaf_affineBlowup_toSpec J

theorem exists_isBlowupAlongIdealSheaf_isProper_spec (R : CommRingCat.{u}) [IsNoetherianRing ↑R]
    (I : (Spec R).IdealSheafData) :
    ∃ (Y : Scheme.{u}) (π : Y ⟶ Spec R), IsBlowupAlongIdealSheaf π I ∧ AlgebraicGeometry.IsProper π :=
  exists_isBlowupAlongIdealSheaf_isProper_spec_of_isNoetherianRing (↑R) I

theorem isProper_of_isBlowupAlongIdealSheaf_of_isAffine {Y B : Scheme.{u}} [IsAffine Y]
    [IsNoetherianRing Γ(Y, ⊤)] (J : Y.IdealSheafData) {p : B ⟶ Y} (h : IsBlowupAlongIdealSheaf p J) :
    AlgebraicGeometry.IsProper p := by
  obtain ⟨Y', π, hπ, hproper⟩ :=
    exists_isBlowupAlongIdealSheaf_isProper_spec Γ(Y, ⊤) (J.comap Y.isoSpec.inv)
  have hq : IsBlowupAlongIdealSheaf (p ≫ Y.isoSpec.hom) (J.comap Y.isoSpec.inv) := h.comp_iso_hom Y.isoSpec
  obtain ⟨b, hb⟩ := hπ.exists_lift (p ≫ Y.isoSpec.hom) hq.1
  obtain ⟨a, ha⟩ := hq.exists_lift π hπ.1
  have hab : a ≫ b = 𝟙 Y' := by
    refine hπ.hom_ext hπ.1 ?_ ?_
    · rw [Category.assoc, hb, ha]
    · rw [Category.id_comp]
  have hba : b ≫ a = 𝟙 B := by
    refine hq.hom_ext hq.1 ?_ ?_
    · rw [Category.assoc, ha, hb]
    · rw [Category.id_comp]
  have : IsIso b := ⟨a, hba, hab⟩
  have : AlgebraicGeometry.IsProper π := hproper
  have hp : b ≫ π ≫ Y.isoSpec.inv = p := by
    rw [← Category.assoc, hb, Category.assoc, Iso.hom_inv_id, Category.comp_id]
  rw [← hp]
  infer_instance

private theorem isProper_morphismRestrict_of_isProper_pullbackSnd {X X' : Scheme.{u}} (f : X' ⟶ X)
    (U : X.Opens) (h : AlgebraicGeometry.IsProper (pullback.snd f U.ι)) :
    AlgebraicGeometry.IsProper (AlgebraicGeometry.morphismRestrict f U) := by
  have key : (AlgebraicGeometry.pullbackRestrictIsoRestrict f U).hom ≫
      AlgebraicGeometry.morphismRestrict f U = pullback.snd f U.ι := by
    simp [AlgebraicGeometry.morphismRestrict]
  have h2 : AlgebraicGeometry.IsProper
      ((AlgebraicGeometry.pullbackRestrictIsoRestrict f U).hom ≫
        AlgebraicGeometry.morphismRestrict f U) := by
    rw [key]; exact h
  exact (MorphismProperty.cancel_left_of_respectsIso (P := @AlgebraicGeometry.IsProper)
    (AlgebraicGeometry.pullbackRestrictIsoRestrict f U).hom
    (AlgebraicGeometry.morphismRestrict f U)).mp h2

private theorem isNoetherianRing_sections_top_of_affineOpen {X : Scheme.{u}}
    [AlgebraicGeometry.IsLocallyNoetherian X] (U : X.affineOpens) :
    IsNoetherianRing Γ((U : X.Opens).toScheme, ⊤) := by
  have : IsNoetherianRing Γ(X, (U : X.Opens)) :=
    AlgebraicGeometry.IsLocallyNoetherian.component_noetherian U
  exact isNoetherianRing_of_ringEquiv _
    (CategoryTheory.Iso.commRingCatIsoToRingEquiv ((U : X.Opens).topIso)).symm

theorem blowupIsProper : BlowupIsProper.{u} := by
  intro X X' hX π Z hZ
  have := hX
  refine IsZariskiLocalAtTarget.of_iSup_eq_top (P := @AlgebraicGeometry.IsProper)
    (fun U : X.affineOpens => (U : X.Opens)) (AlgebraicGeometry.iSup_affineOpens_eq_top X) ?_
  intro U
  have : AlgebraicGeometry.IsAffine (U : X.Opens).toScheme := U.2
  have : IsNoetherianRing Γ((U : X.Opens).toScheme, ⊤) := isNoetherianRing_sections_top_of_affineOpen U
  exact isProper_morphismRestrict_of_isProper_pullbackSnd π (U : X.Opens)
    (isProper_of_isBlowupAlongIdealSheaf_of_isAffine (Z.comap (U : X.Opens).ι)
      (hZ.pullback_snd_of_isOpenImmersion (U : X.Opens).ι))

theorem isProper_of_isBlowupAlongIdealSheaf {X X' : Scheme.{u}}
    [AlgebraicGeometry.IsLocallyNoetherian X] {π : X' ⟶ X} {I : X.IdealSheafData}
    (h : IsBlowupAlongIdealSheaf π I) : AlgebraicGeometry.IsProper π :=
  blowupIsProper X X' π I h

end FunctorialResolution.Blowup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProper =====
