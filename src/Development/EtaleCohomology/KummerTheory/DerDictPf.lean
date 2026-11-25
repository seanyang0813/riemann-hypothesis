module

public import Development.EtaleCohomology.KummerTheory.BockCut
public import Development.EtaleCohomology.TateTwists.EtaleSheafInjectiveResolutionPropertiesOfMathlib
public import Mathlib.Algebra.Homology.DerivedCategory.KInjective

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.KummerTheory.DerDictPf

open LateralTheory.EtaleFoundations

def hc {C : Type*} [Category C] [Preadditive C] {X Y X' Y' : C} (i : X ≅ X') (j : Y ≅ Y') :
    (X ⟶ Y) ≃+ (X' ⟶ Y') :=
  { i.homCongr j with map_add' := fun f g => by simp [Iso.homCongr_apply] }

section
variable (R : Type) [CommRing R] [HasDerivedCategory (Shv R)]

def isoL (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) (F : Shv R) : DerivedCategory.Q.obj (res R F) ≅ (DerivedCategory.singleFunctor (Shv R) 0).obj F :=
  letI : IsIso (DerivedCategory.Q.map (resAug F)) :=
    (DerivedCategory.isIso_Q_map_iff_quasiIso (φ := resAug F)).2 (hres R F).2.2.2.1
  (asIso (DerivedCategory.Q.map (resAug F))).symm

private lemma iso_nat_of_inv {C : Type*} [Category C] {X₁ X₂ Y₁ Y₂ : C}
    (e₁ : X₁ ≅ Y₁) (e₂ : X₂ ≅ Y₂) (f : X₁ ⟶ X₂) (g : Y₁ ⟶ Y₂)
    (h : e₁.inv ≫ f = g ≫ e₂.inv) : f ≫ e₂.hom = e₁.hom ≫ g := by
  rw [← cancel_epi e₁.inv, Iso.inv_hom_id_assoc, ← cancel_mono e₂.inv, Category.assoc,
    Category.assoc, Iso.hom_inv_id, Category.comp_id, h]

lemma isoL_nat (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) {F G : Shv R} (φ : F ⟶ G) :
    DerivedCategory.Q.map (resMap R φ) ≫ (isoL R hres G).hom =
      (isoL R hres F).hom ≫ (DerivedCategory.singleFunctor (Shv R) 0).map φ :=
  iso_nat_of_inv (isoL R hres F) (isoL R hres G) _ _ <|
    (DerivedCategory.Q.map_comp _ _).symm.trans <|
      (congrArg DerivedCategory.Q.map ((hres R F).2.2.2.2.2.2.2 G φ).1).trans
        (DerivedCategory.Q.map_comp _ _)

def jIso (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) (F : Shv R) (n : ℤ) :
    DerivedCategory.Qh.obj ((HomotopyCategory.quotient (Shv R) _).obj ((res R F)⟦n⟧)) ≅
      ((DerivedCategory.singleFunctor (Shv R) 0).obj F)⟦n⟧ :=
  (DerivedCategory.quotientCompQhIso (Shv R)).app _ ≪≫ (DerivedCategory.Q.commShiftIso n).app (res R F) ≪≫
    (CategoryTheory.shiftFunctor _ n).mapIso (isoL R hres F)

lemma jIso_nat (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) {F G : Shv R} (φ : F ⟶ G) (n : ℤ) :
    DerivedCategory.Qh.map ((HomotopyCategory.quotient (Shv R) _).map ((resMap R φ)⟦n⟧')) ≫ (jIso R hres G n).hom =
      (jIso R hres F n).hom ≫ ((DerivedCategory.singleFunctor (Shv R) 0).map φ)⟦n⟧' := by
  have h1 := (DerivedCategory.quotientCompQhIso (Shv R)).hom.naturality ((resMap R φ)⟦n⟧')
  have h2 := (DerivedCategory.Q.commShiftIso n).hom.naturality (resMap R φ)
  have h3 := congrArg (fun f => f⟦n⟧') (isoL_nat R hres φ)
  simp only [Functor.map_comp] at h3
  simp only [jIso, Iso.trans_hom, Iso.app_hom, Functor.mapIso_hom]
  simp only [Functor.comp_map] at h1 h2
  rw [← Category.assoc, h1, Category.assoc, ← Category.assoc (DerivedCategory.Q.map _), h2, Category.assoc, h3,
    Category.assoc]
  simp only [Category.assoc]

def dict (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) (K : Cx R) (F : Shv R) (n : ℤ) :
    HK R K F n ≃+ (DerivedCategory.Q.obj K ⟶ ((DerivedCategory.singleFunctor (Shv R) 0).obj F)⟦n⟧) :=
  letI := (hres R F).1
  (CohomologyClass.homAddEquiv).trans <|
    (AddEquiv.ofBijective (DerivedCategory.Qh.mapAddHom)
      (CochainComplex.IsKInjective.Qh_map_bijective _ ((res R F)⟦n⟧))).trans <|
    hc ((DerivedCategory.quotientCompQhIso (Shv R)).app K) (jIso R hres F n)

lemma dict_mk (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) (K : Cx R) (F : Shv R) (n : ℤ) (c : Cocycle K (res R F) n) :
    dict R hres K F n (CohomologyClass.mk c) =
      (DerivedCategory.quotientCompQhIso (Shv R)).inv.app K ≫
        DerivedCategory.Qh.map ((HomotopyCategory.quotient (Shv R) _).map (Cocycle.equivHomShift.symm c)) ≫
          (jIso R hres F n).hom := rfl

end

theorem DerDict_of (hres : LateralTheory.EtaleFoundations.EtaleInjectiveResolutionBasicProperties) : LateralTheory.KummerTheory.BockCut.DerDict := by
  intro R _ K
  let := HasDerivedCategory.standard (Shv R)
  refine ⟨dict R hres K, ?_⟩
  intro F G φ n x
  obtain ⟨c, rfl⟩ := x.mk_surjective
  have hp : HK.post R K φ n (CohomologyClass.mk c) = CohomologyClass.mk (c.postcomp (resMap R φ)) := rfl
  rw [hp, dict_mk, dict_mk, Cocycle.equivHomShift_symm_postcomp, Functor.map_comp, Functor.map_comp]
  simp only [Category.assoc]
  exact congrArg (fun t => (DerivedCategory.quotientCompQhIso (Shv R)).inv.app K ≫
    DerivedCategory.Qh.map ((HomotopyCategory.quotient (Shv R) _).map (Cocycle.equivHomShift.symm c)) ≫ t)
    (jIso_nat R hres φ n)

end LateralTheory.KummerTheory.DerDictPf
