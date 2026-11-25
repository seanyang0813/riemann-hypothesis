module

public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealAssignment
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.CoordinateIdealOrderOne
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateSubstitution
import Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution.OpenImmersionRestriction

private theorem support_vanishingIdeal_eq_self {X : Scheme.{u}} (Z : Closeds ↥X) :
    (Scheme.IdealSheafData.vanishingIdeal Z).support = Z := rfl

private theorem radical_vanishingIdeal_eq_self {X : Scheme.{u}} (Z : Closeds ↥X) :
    (Scheme.IdealSheafData.vanishingIdeal Z).radical
      = Scheme.IdealSheafData.vanishingIdeal Z := by
  rw [← Scheme.IdealSheafData.vanishingIdeal_support]
  exact Scheme.IdealSheafData.gc.u_l_u_eq_u Z

private theorem radical_comap_eq_of_isOpenImmersion {X Y : Scheme.{u}} (f : X ⟶ Y)
    [AlgebraicGeometry.IsOpenImmersion f] (I : Y.IdealSheafData) (hI : I.radical = I) :
    (I.comap f).radical = I.comap f := by
  refine le_antisymm (Scheme.IdealSheafData.le_def.2 ?_) (Scheme.IdealSheafData.le_radical _)
  intro V
  have hV : IsAffineOpen (f ''ᵁ (V : X.Opens)) := V.2.image_of_isOpenImmersion f
  have e : (V : X.Opens) ≤ f ⁻¹ᵁ (f ''ᵁ (V : X.Opens)) := fun x hx => ⟨x, hx, rfl⟩
  have hmap := Scheme.IdealSheafData.comap_ideal_eq_map_appLE I f
    ⟨f ''ᵁ (V : X.Opens), hV⟩ V e
  have hiso : f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e
      = (f.appIso (V : X.Opens)).hom := (Scheme.Hom.appIso_hom' f (V : X.Opens)).symm
  have hsurj : Function.Surjective
      (f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e).hom := by
    rw [hiso]
    exact (f.appIso (V : X.Opens)).commRingCatIsoToRingEquiv.surjective
  have hker : RingHom.ker (f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e).hom
      ≤ I.ideal ⟨f ''ᵁ (V : X.Opens), hV⟩ := by
    rw [hiso, (RingHom.injective_iff_ker_eq_bot (f.appIso (V : X.Opens)).hom.hom).mp
      (f.appIso (V : X.Opens)).commRingCatIsoToRingEquiv.injective]
    exact bot_le
  have hIrad : (I.ideal ⟨f ''ᵁ (V : X.Opens), hV⟩).radical
      = I.ideal ⟨f ''ᵁ (V : X.Opens), hV⟩ := by
    rw [← Scheme.IdealSheafData.radical_ideal, hI]
  have hrw : ((I.comap f).ideal V).radical = (I.comap f).ideal V := by
    rw [hmap, ← Ideal.map_radical_of_surjective hsurj hker, hIrad]
  exact le_of_eq ((Scheme.IdealSheafData.radical_ideal (I.comap f) V).trans hrw)

private theorem radical_ker_eq_of_isReduced {A B : Scheme.{u}} (g : A ⟶ B)
    [AlgebraicGeometry.IsAffineHom g] [AlgebraicGeometry.IsReduced A] :
    (Scheme.Hom.ker g).radical = Scheme.Hom.ker g := by
  refine le_antisymm (Scheme.IdealSheafData.le_def.2 ?_) (Scheme.IdealSheafData.le_radical _)
  intro V
  have key : ∀ y : Γ(B, (V : B.Opens)), y ∈ (Scheme.Hom.ker g).ideal V ↔
      (Scheme.Hom.app g (V : B.Opens)).hom y = 0 := by
    intro y
    rw [← Scheme.IdealSheafData.map_bot, Scheme.IdealSheafData.ideal_map_of_isAffineHom]
    simp [Scheme.IdealSheafData.ideal_bot, Ideal.mem_comap, Pi.bot_apply, Submodule.mem_bot]
  rw [Scheme.IdealSheafData.radical_ideal]
  intro y hy
  obtain ⟨n, hn⟩ := hy
  refine (key y).2 ?_
  have : _root_.IsReduced Γ(A, g ⁻¹ᵁ (V : B.Opens)) := inferInstance
  refine IsNilpotent.eq_zero ⟨n, ?_⟩
  rw [← map_pow]
  exact (key _).1 hn

private theorem isIso_pullback_snd_of_le {X : Scheme.{u}} (H J : X.IdealSheafData)
    (h : H ≤ J) : IsIso (Limits.pullback.snd H.subschemeι J.subschemeι) := by
  have hker : Scheme.Hom.ker H.subschemeι ≤ Scheme.Hom.ker J.subschemeι := by
    rw [Scheme.IdealSheafData.ker_subschemeι, Scheme.IdealSheafData.ker_subschemeι]
    exact h
  have hβfac : AlgebraicGeometry.IsClosedImmersion.lift H.subschemeι J.subschemeι hker
      ≫ H.subschemeι = J.subschemeι :=
    AlgebraicGeometry.IsClosedImmersion.lift_fac _ _ hker
  have hcond : AlgebraicGeometry.IsClosedImmersion.lift H.subschemeι J.subschemeι hker
      ≫ H.subschemeι = 𝟙 J.subscheme ≫ J.subschemeι := by
    rw [hβfac, Category.id_comp]
  refine ⟨Limits.pullback.lift _ _ hcond, ?_, Limits.pullback.lift_snd _ _ hcond⟩
  apply Limits.pullback.hom_ext
  · rw [Category.assoc, Limits.pullback.lift_fst, Category.id_comp]
    have hmono : Mono H.subschemeι := inferInstance
    apply hmono.right_cancellation
    rw [Category.assoc, hβfac, Limits.pullback.condition]
  · rw [Category.assoc, Limits.pullback.lift_snd, Category.comp_id, Category.id_comp]

private theorem comap_vanishingIdeal_subschemeι {X : Scheme.{u}} (H : X.IdealSheafData)
    (Z : Closeds ↥X) (hZH : (Z : Set ↥X) ⊆ (H.support : Set ↥X))
    (S : Closeds ↥(H.subscheme))
    (hS : (S : Set ↥(H.subscheme)) = H.subschemeι.base ⁻¹' (Z : Set ↥X)) :
    (Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι =
      Scheme.IdealSheafData.vanishingIdeal S := by
  have hred : AlgebraicGeometry.IsReduced
      (Scheme.IdealSheafData.vanishingIdeal Z).subscheme :=
    Scheme.IdealSheafData.isReduced_subscheme_vanishingIdeal X Z
  have hHJ : H ≤ Scheme.IdealSheafData.vanishingIdeal Z :=
    Scheme.IdealSheafData.le_support_iff_le_vanishingIdeal.mp hZH
  have : IsIso (Limits.pullback.snd H.subschemeι
      (Scheme.IdealSheafData.vanishingIdeal Z).subschemeι) :=
    isIso_pullback_snd_of_le H _ hHJ
  have : AlgebraicGeometry.IsOpenImmersion (Limits.pullback.snd H.subschemeι
      (Scheme.IdealSheafData.vanishingIdeal Z).subschemeι) := inferInstance
  have : AlgebraicGeometry.IsReduced (Limits.pullback H.subschemeι
      (Scheme.IdealSheafData.vanishingIdeal Z).subschemeι) :=
    AlgebraicGeometry.isReduced_of_isOpenImmersion (Limits.pullback.snd H.subschemeι
      (Scheme.IdealSheafData.vanishingIdeal Z).subschemeι)
  have hrad : ((Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι).radical
      = (Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι :=
    radical_ker_eq_of_isReduced (Limits.pullback.fst H.subschemeι
      (Scheme.IdealSheafData.vanishingIdeal Z).subschemeι)
  have hsupp : ((Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι).support = S := by
    apply SetLike.coe_injective
    rw [Scheme.IdealSheafData.support_comap]
    show ⇑H.subschemeι ⁻¹'
      ((Scheme.IdealSheafData.vanishingIdeal Z).support : Set ↥X) = (S : Set ↥(H.subscheme))
    rw [support_vanishingIdeal_eq_self, hS]
  calc (Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι
      = ((Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι).radical := hrad.symm
    _ = Scheme.IdealSheafData.vanishingIdeal
          (((Scheme.IdealSheafData.vanishingIdeal Z).comap H.subschemeι).support) :=
        Scheme.IdealSheafData.vanishingIdeal_support.symm
    _ = Scheme.IdealSheafData.vanishingIdeal S := by rw [hsupp]

private theorem support_comap_opens_vanishingIdeal {W : Scheme.{u}} (U : W.Opens) (T : Closeds ↥W) :
    ((((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).support) : Set ↥(U.toScheme))
      = U.ι.base ⁻¹' (T : Set ↥W) := by
  rw [Scheme.IdealSheafData.support_comap]
  show ⇑U.ι ⁻¹' ((Scheme.IdealSheafData.vanishingIdeal T).support : Set ↥W)
    = ⇑U.ι ⁻¹' (T : Set ↥W)
  rw [support_vanishingIdeal_eq_self]

private theorem comap_opens_vanishingIdeal_eq_vanishingIdeal_support {W : Scheme.{u}} (U : W.Opens)
    (T : Closeds ↥W) :
    (Scheme.IdealSheafData.vanishingIdeal T).comap U.ι
      = Scheme.IdealSheafData.vanishingIdeal
          (((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).support) := by
  rw [Scheme.IdealSheafData.vanishingIdeal_support]
  exact (radical_comap_eq_of_isOpenImmersion U.ι _ (radical_vanishingIdeal_eq_self T)).symm

private theorem le_comap_vanishingIdeal_of_preimage_subset {W : Scheme.{u}} (U : W.Opens)
    (H : (U.toScheme).IdealSheafData) (T : Closeds ↥W)
    (hTsubH : (U.ι.base ⁻¹' (T : Set ↥W)) ⊆ (H.support : Set ↥(U.toScheme))) :
    H ≤ (Scheme.IdealSheafData.vanishingIdeal T).comap U.ι := by
  rw [comap_opens_vanishingIdeal_eq_vanishingIdeal_support U T]
  refine Scheme.IdealSheafData.le_support_iff_le_vanishingIdeal.mp ?_
  change (((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).support : Set ↥(U.toScheme))
    ⊆ (H.support : Set ↥(U.toScheme))
  rw [support_comap_opens_vanishingIdeal]
  exact hTsubH

private theorem comap_subschemeι_comap_vanishingIdeal {W : Scheme.{u}} (U : W.Opens)
    (H : (U.toScheme).IdealSheafData)
    (T : Closeds ↥W) (S : Closeds ↥(H.subscheme))
    (hS : (S : Set ↥(H.subscheme)) = (H.subschemeι ≫ U.ι).base ⁻¹' (T : Set ↥W))
    (hTsubH : (U.ι.base ⁻¹' (T : Set ↥W)) ⊆ (H.support : Set ↥(U.toScheme))) :
    ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).comap H.subschemeι =
      Scheme.IdealSheafData.vanishingIdeal S := by
  rw [comap_opens_vanishingIdeal_eq_vanishingIdeal_support U T]
  refine comap_vanishingIdeal_subschemeι H _ ?_ S ?_
  · rw [support_comap_opens_vanishingIdeal]
    exact hTsubH
  · rw [hS, support_comap_opens_vanishingIdeal, ← Set.preimage_comp]
    rfl

private theorem smooth_comap_subschemeι_comp_of_smooth_pullback_snd {X Y S : Scheme.{u}} (f : X ⟶ Y)
    (I : Y.IdealSheafData) (g : Y ⟶ S)
    (hsm : AlgebraicGeometry.Smooth (I.subschemeι ≫ g))
    (hsnd : AlgebraicGeometry.Smooth (Limits.pullback.snd f I.subschemeι)) :
    AlgebraicGeometry.Smooth ((I.comap f).subschemeι ≫ f ≫ g) := by
  have key : (I.comap f).subschemeι ≫ f ≫ g
      = (I.comapIso f).hom ≫ (Limits.pullback.snd f I.subschemeι ≫ I.subschemeι ≫ g) := by
    calc (I.comap f).subschemeι ≫ f ≫ g
        = ((I.comapIso f).hom ≫ Limits.pullback.fst f I.subschemeι) ≫ f ≫ g := by
          rw [Scheme.IdealSheafData.comapIso_hom_fst]
      _ = (I.comapIso f).hom ≫ ((Limits.pullback.fst f I.subschemeι ≫ f) ≫ g) := by simp
      _ = (I.comapIso f).hom ≫ ((Limits.pullback.snd f I.subschemeι ≫ I.subschemeι) ≫ g) := by
            rw [Limits.pullback.condition]
      _ = (I.comapIso f).hom ≫ (Limits.pullback.snd f I.subschemeι ≫ I.subschemeι ≫ g) := by simp
  rw [key]
  have := hsm
  have := hsnd
  infer_instance

theorem comap_vanishingIdeal_of_isOpenImmersion {X Y : Scheme.{u}} (f : X ⟶ Y)
    [AlgebraicGeometry.IsOpenImmersion f] (T : Closeds ↥Y) (S : Closeds ↥X)
    (hS : (S : Set ↥X) = f.base ⁻¹' (T : Set ↥Y)) :
    (Scheme.IdealSheafData.vanishingIdeal T).comap f =
      Scheme.IdealSheafData.vanishingIdeal S := by
  have hrad := radical_comap_eq_of_isOpenImmersion f
    (Scheme.IdealSheafData.vanishingIdeal T) (radical_vanishingIdeal_eq_self T)
  have hsupp : ((Scheme.IdealSheafData.vanishingIdeal T).comap f).support = S := by
    apply SetLike.coe_injective
    rw [Scheme.IdealSheafData.support_comap]
    show ⇑f ⁻¹' ((Scheme.IdealSheafData.vanishingIdeal T).support : Set ↥Y) = (S : Set ↥X)
    rw [support_vanishingIdeal_eq_self, hS]
  calc (Scheme.IdealSheafData.vanishingIdeal T).comap f
      = ((Scheme.IdealSheafData.vanishingIdeal T).comap f).radical := hrad.symm
    _ = Scheme.IdealSheafData.vanishingIdeal
          (((Scheme.IdealSheafData.vanishingIdeal T).comap f).support) :=
        Scheme.IdealSheafData.vanishingIdeal_support.symm
    _ = Scheme.IdealSheafData.vanishingIdeal S := by rw [hsupp]

theorem agreeNearVanishingComapSubscheme : AgreeNearVanishingComapSubscheme.{u} := by
  intro W N U H T S x hS hTsubH hN
  simp only [vanishingIdealAssignment_apply] at hN ⊢
  obtain ⟨V, hxV, hVeq⟩ := (agreeNear_iff _ _ _).1 hN
  have hrange : Set.range ⇑(((H.subschemeι ≫ U.ι) ⁻¹ᵁ V).ι ≫ H.subschemeι ≫ U.ι)
      ⊆ Set.range ⇑V.ι := by
    rw [Scheme.Opens.range_ι]
    rintro z ⟨y, rfl⟩
    have hy : ((H.subschemeι ≫ U.ι) ⁻¹ᵁ V).ι y
        ∈ (((H.subschemeι ≫ U.ι) ⁻¹ᵁ V : (H.subscheme).Opens) : Set ↥(H.subscheme)) := by
      rw [← Scheme.Opens.range_ι ((H.subschemeι ≫ U.ι) ⁻¹ᵁ V)]
      exact ⟨y, rfl⟩
    exact hy
  obtain ⟨g, hg⟩ : ∃ g : ((H.subschemeι ≫ U.ι) ⁻¹ᵁ V).toScheme ⟶ V.toScheme,
      g ≫ V.ι = ((H.subschemeι ≫ U.ι) ⁻¹ᵁ V).ι ≫ H.subschemeι ≫ U.ι :=
    ⟨AlgebraicGeometry.IsOpenImmersion.lift V.ι _ hrange,
      AlgebraicGeometry.IsOpenImmersion.lift_fac _ _ hrange⟩
  refine (agreeNear_iff _ _ _).2 ⟨(H.subschemeι ≫ U.ι) ⁻¹ᵁ V, hxV, ?_⟩
  have e : ∀ I : W.IdealSheafData,
      ((I.comap U.ι).comap H.subschemeι).comap ((H.subschemeι ≫ U.ι) ⁻¹ᵁ V).ι
        = (I.comap V.ι).comap g := by
    intro I
    rw [← Scheme.IdealSheafData.comap_comp, ← Scheme.IdealSheafData.comap_comp, Category.assoc,
      ← hg, ← Scheme.IdealSheafData.comap_comp]
  rw [e N, hVeq, ← e, comap_subschemeι_comap_vanishingIdeal U H T S hS hTsubH]

theorem smooth_subschemeι_comp_of_eq {X S : Scheme.{u}} (f : X ⟶ S) {K K' : X.IdealSheafData}
    (h : K = K') (hsm : AlgebraicGeometry.Smooth (K'.subschemeι ≫ f)) :
    AlgebraicGeometry.Smooth (K.subschemeι ≫ f) := by
  subst h
  exact hsm

theorem smooth_comap_subschemeι_of_isOpenImmersion {X Y S : Scheme.{u}} (f : X ⟶ Y)
    [AlgebraicGeometry.IsOpenImmersion f] (I : Y.IdealSheafData) (g : Y ⟶ S)
    (hsm : AlgebraicGeometry.Smooth (I.subschemeι ≫ g)) :
    AlgebraicGeometry.Smooth ((I.comap f).subschemeι ≫ f ≫ g) := by
  have : AlgebraicGeometry.Smooth (Limits.pullback.snd f I.subschemeι) := inferInstance
  exact smooth_comap_subschemeι_comp_of_smooth_pullback_snd f I g hsm inferInstance

theorem smooth_vanishingIdeal_comap_subschemeι {k : Type u} [Field k] {W : Scheme.{u}}
    (p : W ⟶ Spec (CommRingCat.of k)) (U : W.Opens) (H : (U.toScheme).IdealSheafData)
    (_hH : FunctorialResolution.EmbeddedResolution.IsSmoothDivisor (U.ι ≫ p) H)
    (T : Closeds ↥W) (S : Closeds ↥(H.subscheme))
    (hS : (S : Set ↥(H.subscheme)) = (H.subschemeι ≫ U.ι).base ⁻¹' (T : Set ↥W))
    (hTsubH : (U.ι.base ⁻¹' (T : Set ↥W)) ⊆ (H.support : Set ↥(U.toScheme)))
    (hT : AlgebraicGeometry.Smooth ((Scheme.IdealSheafData.vanishingIdeal T).subschemeι ≫ p)) :
    AlgebraicGeometry.Smooth
      ((Scheme.IdealSheafData.vanishingIdeal S).subschemeι ≫ H.subschemeι ≫ U.ι ≫ p) := by
  have hcomap := comap_subschemeι_comap_vanishingIdeal U H T S hS hTsubH
  refine smooth_subschemeι_comp_of_eq (H.subschemeι ≫ U.ι ≫ p) hcomap.symm ?_
  have hJ : AlgebraicGeometry.Smooth
      (((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).subschemeι ≫ U.ι ≫ p) :=
    smooth_comap_subschemeι_of_isOpenImmersion U.ι
      (Scheme.IdealSheafData.vanishingIdeal T) p hT
  have : IsIso (Limits.pullback.snd H.subschemeι
      ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).subschemeι) :=
    isIso_pullback_snd_of_le H _ (le_comap_vanishingIdeal_of_preimage_subset U H T hTsubH)
  have hsnd : AlgebraicGeometry.Smooth (Limits.pullback.snd H.subschemeι
      ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι).subschemeι) := inferInstance
  exact smooth_comap_subschemeι_comp_of_smooth_pullback_snd H.subschemeι
    ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι) (U.ι ≫ p) hJ hsnd

theorem orderAt_vanishingIdeal_eq_one {k : Type u} [Field k] [CharZero k] {W : Scheme.{u}}
    (p : W ⟶ Spec (CommRingCat.of k)) (hp : AlgebraicGeometry.Smooth p) (T : Closeds ↥W)
    (_hirr : IsIrreducible (T : Set ↥W))
    (hsm : AlgebraicGeometry.Smooth ((Scheme.IdealSheafData.vanishingIdeal T).subschemeι ≫ p))
    (hcomp : ∀ C ∈ irreducibleComponents ↥W, ¬ C ⊆ (T : Set ↥W))
    (x : ↥W) (hx : x ∈ (T : Set ↥W)) :
    FunctorialResolution.EmbeddedResolution.orderAt (Scheme.IdealSheafData.vanishingIdeal T) x = 1 := by
  have hp' : AlgebraicGeometry.Smooth p := hp
  have hsm' : AlgebraicGeometry.Smooth
      ((Scheme.IdealSheafData.vanishingIdeal T).subschemeι ≫ p) := hsm
  have hZs : (Scheme.IdealSheafData.vanishingIdeal T).support = T :=
    support_vanishingIdeal_eq_self T
  have hxZ : x ∈ (Scheme.IdealSheafData.vanishingIdeal T).support := by
    rw [hZs]; exact hx
  obtain ⟨U, m, c, S, hxU, hU, hD⟩ :=
    FunctorialResolution.EmbeddedResolution.exists_chart_restrictIdeal_eq_coordIdeal p
      (Scheme.IdealSheafData.vanishingIdeal T) x hxZ
  rcases S.eq_empty_or_nonempty with hSe | ⟨j, hj⟩
  · exfalso
    have key : ∀ y : ↥(U.toScheme),
        FunctorialResolution.EmbeddedResolution.orderAt (Scheme.IdealSheafData.vanishingIdeal T) (U.ι.base y) = ⊤ := by
      intro y
      have h1 : FunctorialResolution.EmbeddedResolution.restrictIdeal (Scheme.IdealSheafData.vanishingIdeal T) U
          = c.coordIdeal (∅ : Finset (Fin m)) := by rw [hD, hSe]
      have h2 : (Scheme.IdealSheafData.vanishingIdeal T).comap U.ι
          = (⊥ : (FunctorialResolution.EmbeddedResolution.affineSpaceFin k m).IdealSheafData).comap c.map := by
        rw [← FunctorialResolution.EmbeddedResolution.restrictIdeal_eq_comap_ι, h1, FunctorialResolution.EmbeddedResolution.EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal,
          FunctorialResolution.EmbeddedResolution.coordSubspaceIdeal_empty]
      have h3 : FunctorialResolution.EmbeddedResolution.stalkIdeal ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι) y
          = FunctorialResolution.EmbeddedResolution.stalkIdeal (⊥ : (U.toScheme).IdealSheafData) y := by
        rw [h2, FunctorialResolution.EmbeddedResolution.stalkIdeal_comap, FunctorialResolution.EmbeddedResolution.stalkIdeal_bot, Ideal.map_bot,
          FunctorialResolution.EmbeddedResolution.stalkIdeal_bot]
      have h4 : FunctorialResolution.EmbeddedResolution.orderAt ((Scheme.IdealSheafData.vanishingIdeal T).comap U.ι) y = ⊤ := by
        rw [FunctorialResolution.EmbeddedResolution.orderAt_eq_of_stalkIdeal_eq h3, FunctorialResolution.EmbeddedResolution.orderAt_bot]
      exact (FunctorialResolution.EmbeddedResolution.orderAt_comap_of_isOpenImmersion U.ι
        (Scheme.IdealSheafData.vanishingIdeal T) y).symm.trans h4
    have hUsubT : (U : Set ↥W) ⊆ (T : Set ↥W) := by
      intro z hz
      have hrange : Set.range U.ι.base = (U : Set ↥W) := by simp
      obtain ⟨y, rfl⟩ : z ∈ Set.range U.ι.base := by rw [hrange]; exact hz
      have h6 : (1 : ℕ∞) ≤ FunctorialResolution.EmbeddedResolution.orderAt (Scheme.IdealSheafData.vanishingIdeal T)
          (U.ι.base y) := by
        rw [key y]; exact le_top
      have h7 := (FunctorialResolution.EmbeddedResolution.one_le_orderAt_iff_mem_support _ _).1 h6
      rw [hZs] at h7
      exact h7
    refine hcomp (irreducibleComponent x) (irreducibleComponent_mem_irreducibleComponents x) ?_
    intro z hzC
    by_contra hzT
    obtain ⟨w, hwC, hwU, hwT⟩ := (irreducibleComponent_mem_irreducibleComponents x).1.2
      (U : Set ↥W) ((T : Set ↥W)ᶜ) U.isOpen T.2.isOpen_compl
      ⟨x, mem_irreducibleComponent, hxU⟩ ⟨z, hzC, hzT⟩
    exact hwT (hUsubT hwU)
  · exact FunctorialResolution.EmbeddedResolution.orderAt_eq_one_of_restrictIdeal_eq_coordIdeal p hU c S j hj
      (Scheme.IdealSheafData.vanishingIdeal T) hD x hxU hxZ

end FunctorialResolution.EmbeddedResolution.OpenImmersionRestriction

end
