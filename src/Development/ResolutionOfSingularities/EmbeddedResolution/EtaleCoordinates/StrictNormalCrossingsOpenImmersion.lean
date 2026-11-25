module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionOfSingularities
public import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
public import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeCoproduct
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u v

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def closedPreimage {X X' : Scheme.{u}} (f : X' ⟶ X) (S : TopologicalSpace.Closeds X) :
    TopologicalSpace.Closeds X' :=
  ⟨f.base ⁻¹' (S : Set X), S.isClosed.preimage f.continuous⟩

theorem closedPreimage_coe {X X' : Scheme.{u}} (f : X' ⟶ X) (S : TopologicalSpace.Closeds X) :
    (closedPreimage f S : Set X') = f.base ⁻¹' (S : Set X) := rfl

theorem reducedInverseImage_eq_vanishingIdeal_closedPreimage {X X' : Scheme.{u}} (f : X' ⟶ X)
    (S : TopologicalSpace.Closeds X) :
    reducedInverseImage f S = Scheme.IdealSheafData.vanishingIdeal (closedPreimage f S) := rfl

private theorem isRegularParameterSystem_of_ringEquiv {R S : Type u} [CommRing R] [CommRing S]
    [IsLocalRing R] [IsLocalRing S] (e : R ≃+* S) (n : ℕ) (v : Fin n → R) (w : Fin n → S)
    (hvw : ∀ i, e (v i) = w i) (hv : IsRegularParameterSystem R n v) :
    IsRegularParameterSystem S n w := by
  have h1 := hv.1
  have h2 := hv.2
  refine ⟨?_, ?_⟩
  · have hw : w = fun i => (e : R →+* S) (v i) := funext fun i => (hvw i).symm
    rw [hw, show (Set.range fun i => (e : R →+* S) (v i)) = (e : R →+* S) '' Set.range v from
      Set.range_comp _ _, ← Ideal.map_span, h1]
    exact IsLocalRing.map_ringEquiv_maximalIdeal e
  · rw [h2]
    exact ringKrullDim_eq_of_ringEquiv e

private theorem isIso_appLE_image {X Y : Scheme.{u}} (h : X ⟶ Y) [IsOpenImmersion h] (U : X.Opens)
    (e : U ≤ (TopologicalSpace.Opens.map h.base).obj (h ''ᵁ U)) :
    IsIso (h.appLE (h ''ᵁ U) U e) := by
  rw [show h.appLE (h ''ᵁ U) U e = (h.appIso U).hom from (Scheme.Hom.appIso_hom' h U).symm]
  infer_instance

private theorem comap_ideal_radical_eq_of_isOpenImmersion {X' Y' : Scheme.{u}} (h : X' ⟶ Y') [IsOpenImmersion h]
    (I : Y'.IdealSheafData) (hI : I.radical = I) (V : X'.affineOpens) :
    ((I.comap h).ideal V).radical = (I.comap h).ideal V := by
  have hU : IsAffineOpen (h ''ᵁ V.1) := V.2.image_of_isOpenImmersion h
  have he : V.1 ≤ (TopologicalSpace.Opens.map h.base).obj (h ''ᵁ V.1) :=
    le_of_eq (Scheme.Hom.preimage_image_eq h V.1).symm
  have : IsIso (h.appLE (h ''ᵁ V.1) V.1 he) := isIso_appLE_image h V.1 he
  have hb := ConcreteCategory.bijective_of_isIso (h.appLE (h ''ᵁ V.1) V.1 he)
  rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE I h ⟨h ''ᵁ V.1, hU⟩ V he,
    ← Ideal.map_radical_of_surjective hb.2
      ((RingHom.injective_iff_ker_eq_bot _).mp hb.1 ▸ bot_le),
    ← Scheme.IdealSheafData.radical_ideal, hI]

theorem comap_vanishingIdeal_of_isOpenImmersion {X' Y' : Scheme.{u}} (h : X' ⟶ Y')
    [IsOpenImmersion h] (Z : TopologicalSpace.Closeds Y') :
    (Scheme.IdealSheafData.vanishingIdeal Z).comap h
      = Scheme.IdealSheafData.vanishingIdeal (closedPreimage h Z) := by
  have hZrad : (Scheme.IdealSheafData.vanishingIdeal Z).radical
      = Scheme.IdealSheafData.vanishingIdeal Z := by
    rw [← Scheme.IdealSheafData.vanishingIdeal_support]
    rfl
  have hrad : ((Scheme.IdealSheafData.vanishingIdeal Z).comap h).radical
      = (Scheme.IdealSheafData.vanishingIdeal Z).comap h := by
    refine Scheme.IdealSheafData.ext (funext fun V => ?_)
    rw [Scheme.IdealSheafData.radical_ideal]
    exact comap_ideal_radical_eq_of_isOpenImmersion h _ hZrad V
  have hsupp : ((Scheme.IdealSheafData.vanishingIdeal Z).comap h).support
      = closedPreimage h Z := by
    refine SetLike.ext fun x => ?_
    simp only [Scheme.IdealSheafData.mem_support_comap]
    exact Iff.rfl
  calc (Scheme.IdealSheafData.vanishingIdeal Z).comap h
      = ((Scheme.IdealSheafData.vanishingIdeal Z).comap h).radical := hrad.symm
    _ = Scheme.IdealSheafData.vanishingIdeal
          ((Scheme.IdealSheafData.vanishingIdeal Z).comap h).support := by
        rw [Scheme.IdealSheafData.vanishingIdeal_support]
    _ = Scheme.IdealSheafData.vanishingIdeal (closedPreimage h Z) := by rw [hsupp]

theorem comap_vanishingIdeal_of_isOpenImmersion_of_coe_eq {X' Y' : Scheme.{u}} (h : X' ⟶ Y')
    [IsOpenImmersion h] (Z : TopologicalSpace.Closeds Y') (Z' : TopologicalSpace.Closeds X')
    (hZ' : (Z' : Set X') = h.base ⁻¹' (Z : Set Y')) :
    (Scheme.IdealSheafData.vanishingIdeal Z).comap h
      = Scheme.IdealSheafData.vanishingIdeal Z' := by
  have h1 : closedPreimage h Z = Z' := SetLike.ext' (by rw [closedPreimage_coe, hZ'])
  rw [comap_vanishingIdeal_of_isOpenImmersion, h1]

theorem isStrictNormalCrossingsAt_base_of_comap {X' Y' : Scheme.{u}} (h : X' ⟶ Y') [IsOpenImmersion h]
    (E : Y'.IdealSheafData) (hE : IsStrictNormalCrossingsDivisor (E.comap h)) (x : X') :
    IsRegularLocalRing (Y'.presheaf.stalk (h.base x)) ∧
      ∃ (U : Y'.affineOpens) (hy : h.base x ∈ U.1) (n : ℕ) (f : Fin n → Γ(Y', U.1))
        (J : Finset (Fin n)),
        IsRegularParameterSystem (Y'.presheaf.stalk (h.base x)) n
            (fun i => Y'.presheaf.germ U.1 (h.base x) hy (f i)) ∧
          E.ideal U = Ideal.span {∏ i ∈ J, f i} := by
  obtain ⟨hreg, U', hx, n, g, J, hparams, hideal⟩ := hE x
  have : IsRegularLocalRing (X'.presheaf.stalk x) := hreg
  have hU : IsAffineOpen (h ''ᵁ U'.1) := U'.2.image_of_isOpenImmersion h
  have he : U'.1 ≤ (TopologicalSpace.Opens.map h.base).obj (h ''ᵁ U'.1) :=
    le_of_eq (Scheme.Hom.preimage_image_eq h U'.1).symm
  have hy : h.base x ∈ h ''ᵁ U'.1 := ⟨x, hx, rfl⟩
  have : IsIso (h.appLE (h ''ᵁ U'.1) U'.1 he) := isIso_appLE_image h U'.1 he
  have : IsIso (h.stalkMap x) := inferInstance
  let ε : Γ(Y', h ''ᵁ U'.1) ≃+* Γ(X', U'.1) :=
    (asIso (h.appLE (h ''ᵁ U'.1) U'.1 he)).commRingCatIsoToRingEquiv
  let τ : Y'.presheaf.stalk (h.base x) ≃+* X'.presheaf.stalk x :=
    (asIso (h.stalkMap x)).commRingCatIsoToRingEquiv
  have hgerm : ∀ i, τ (Y'.presheaf.germ (h ''ᵁ U'.1) (h.base x) hy (ε.symm (g i)))
      = X'.presheaf.germ U'.1 x hx (g i) := fun i =>
    ((Scheme.Hom.germ_stalkMap_apply h (h ''ᵁ U'.1) x hy (ε.symm (g i))).trans
      (TopCat.Presheaf.germ_res_apply X'.presheaf (homOfLE he) x hx _).symm).trans
      (congrArg (X'.presheaf.germ U'.1 x hx) (ε.apply_symm_apply (g i)))
  refine ⟨IsRegularLocalRing.of_ringEquiv τ.symm, ⟨h ''ᵁ U'.1, hU⟩, hy, n,
    fun i => ε.symm (g i), J, ?_, ?_⟩
  · refine isRegularParameterSystem_of_ringEquiv τ.symm n
      (fun i => X'.presheaf.germ U'.1 x hx (g i))
      (fun i => Y'.presheaf.germ (h ''ᵁ U'.1) (h.base x) hy (ε.symm (g i))) ?_ hparams
    intro i
    rw [← hgerm i, τ.symm_apply_apply]
  · have hmap := Scheme.IdealSheafData.comap_ideal_eq_map_appLE E h ⟨h ''ᵁ U'.1, hU⟩ U' he
    rw [hideal] at hmap
    have hcomp :
        (ε.symm : Γ(X', U'.1) →+* Γ(Y', h ''ᵁ U'.1)).comp
          (ε : Γ(Y', h ''ᵁ U'.1) →+* Γ(X', U'.1)) = RingHom.id _ :=
      RingHom.ext ε.symm_apply_apply
    have h2 := congrArg (Ideal.map (ε.symm : Γ(X', U'.1) →+* Γ(Y', h ''ᵁ U'.1))) hmap.symm
    change Ideal.map _ (Ideal.map (ε : Γ(Y', h ''ᵁ U'.1) →+* Γ(X', U'.1)) _) = _ at h2
    rwa [Ideal.map_map, hcomp, Ideal.map_id, Ideal.map_span, Set.image_singleton, map_prod] at h2

theorem reducedInverseImage_comp {A B Z : Scheme.{u}} (g : A ⟶ B) (f : B ⟶ Z)
    (W : TopologicalSpace.Closeds Z) :
    reducedInverseImage (g ≫ f) W
      = Scheme.IdealSheafData.vanishingIdeal (closedPreimage g (closedPreimage f W)) := by
  have h : closedPreimage (g ≫ f) W = closedPreimage g (closedPreimage f W) := by
    apply SetLike.ext'
    show (g ≫ f).base ⁻¹' (W : Set Z) = g.base ⁻¹' (f.base ⁻¹' (W : Set Z))
    ext p
    simp
  rw [reducedInverseImage_eq_vanishingIdeal_closedPreimage, h]

theorem comap_reducedInverseImage_of_isOpenImmersion {A B Z : Scheme.{u}} (h : A ⟶ B)
    [IsOpenImmersion h] (f : B ⟶ Z) (W : TopologicalSpace.Closeds Z) :
    (reducedInverseImage f W).comap h = reducedInverseImage (h ≫ f) W := by
  rw [reducedInverseImage_eq_vanishingIdeal_closedPreimage, comap_vanishingIdeal_of_isOpenImmersion,
    reducedInverseImage_comp]

theorem reducedInverseImage_eq_radical {T Y : Scheme.{u}} (f : T ⟶ Y)
    (W : TopologicalSpace.Closeds Y) (J : T.IdealSheafData)
    (hJ : (J.support : Set T) = f.base ⁻¹' (W : Set Y)) :
    reducedInverseImage f W = J.radical := by
  have h : J.support = closedPreimage f W := SetLike.ext' hJ
  rw [reducedInverseImage_eq_vanishingIdeal_closedPreimage, ← h,
    Scheme.IdealSheafData.vanishingIdeal_support]

theorem IsStrictNormalCrossingsDivisor.of_isOpenImmersion_jointly_surjective {X : Scheme.{u}} (D : X.IdealSheafData) {ι : Type v}
    (Y : ι → Scheme.{u}) (p : ∀ i, Y i ⟶ X) (hp : ∀ i, IsOpenImmersion (p i))
    (hsurj : ∀ x : X, ∃ (i : ι) (y : Y i), (p i).base y = x)
    (hD : ∀ i, IsStrictNormalCrossingsDivisor (D.comap (p i))) : IsStrictNormalCrossingsDivisor D := by
  intro x
  obtain ⟨i, y, hy⟩ := hsurj x
  subst hy
  have := hp i
  exact isStrictNormalCrossingsAt_base_of_comap (p i) D (hD i) y

theorem IsStrictNormalCrossingsDivisor.reducedInverseImage_coprod {A B Z : Scheme.{u}} (g : (A ⨿ B) ⟶ Z)
    (W : TopologicalSpace.Closeds Z)
    (hA : IsStrictNormalCrossingsDivisor (reducedInverseImage ((coprod.inl : A ⟶ A ⨿ B) ≫ g) W))
    (hB : IsStrictNormalCrossingsDivisor (reducedInverseImage ((coprod.inr : B ⟶ A ⨿ B) ≫ g) W)) :
    IsStrictNormalCrossingsDivisor (reducedInverseImage g W) := by
  intro z
  by_cases hz : z ∈ Set.range ⇑(coprod.inl : A ⟶ A ⨿ B).base
  · obtain ⟨a, rfl⟩ := hz
    have h1 : (reducedInverseImage g W).comap (coprod.inl : A ⟶ A ⨿ B)
        = reducedInverseImage ((coprod.inl : A ⟶ A ⨿ B) ≫ g) W :=
      comap_reducedInverseImage_of_isOpenImmersion _ g W
    refine isStrictNormalCrossingsAt_base_of_comap (coprod.inl : A ⟶ A ⨿ B) (reducedInverseImage g W) ?_ a
    rw [h1]
    exact hA
  · have hz' : z ∈ Set.range ⇑(coprod.inr : B ⟶ A ⨿ B).base := by
      rw [Blowup.range_coprod_inr_eq_compl]
      exact hz
    obtain ⟨b, rfl⟩ := hz'
    have h1 : (reducedInverseImage g W).comap (coprod.inr : B ⟶ A ⨿ B)
        = reducedInverseImage ((coprod.inr : B ⟶ A ⨿ B) ≫ g) W :=
      comap_reducedInverseImage_of_isOpenImmersion _ g W
    refine isStrictNormalCrossingsAt_base_of_comap (coprod.inr : B ⟶ A ⨿ B) (reducedInverseImage g W) ?_ b
    rw [h1]
    exact hB

end FunctorialResolution.EmbeddedResolution
