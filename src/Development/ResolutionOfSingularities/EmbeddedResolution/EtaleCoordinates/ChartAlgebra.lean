module

public import Mathlib.AlgebraicGeometry.AffineSpace
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import Mathlib.Combinatorics.Quiver.ReflQuiver
import Mathlib.Tactic.Linter.Style

@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace

universe u

namespace FunctorialResolution.EmbeddedResolution

variable {X Y : Scheme.{u}} {W : X.Opens} {V : Y.Opens} {n : Type u}

noncomputable def chartCoeffHom (g : V.toScheme ⟶ AffineSpace n W.toScheme) :
    Γ(X, W) →+* Γ(Y, V) :=
  (W.topIso.inv ≫ (g ≫ (AffineSpace n W.toScheme ↘ W.toScheme)).appTop ≫ V.topIso.hom).hom

noncomputable def chartVar (g : V.toScheme ⟶ AffineSpace n W.toScheme) (j : n) : Γ(Y, V) :=
  V.topIso.hom.hom (g.appTop.hom (AffineSpace.coord (S := W.toScheme) j))

noncomputable def chartEvalHom (_hW : IsAffineOpen W) (g : V.toScheme ⟶ AffineSpace n W.toScheme) :
    MvPolynomial n Γ(X, W) →+* Γ(Y, V) :=
  MvPolynomial.eval₂Hom (chartCoeffHom g) (chartVar g)

private theorem resLE_appTop_eq {X' Y' : Scheme.{u}} (h : Y' ⟶ X') (W' : X'.Opens)
    (V' : Y'.Opens) (e : V' ≤ h ⁻¹ᵁ W') :
    (h.resLE W' V' e).appTop = W'.topIso.hom ≫ h.appLE W' V' e ≫ V'.topIso.inv := by
  simp

private theorem resLE_appTop_conj_topIso_eq_appLE {X' Y' : Scheme.{u}} (h : Y' ⟶ X') (W' : X'.Opens) (V' : Y'.Opens)
    (e : V' ≤ h ⁻¹ᵁ W') :
    W'.topIso.inv ≫ (h.resLE W' V' e).appTop ≫ V'.topIso.hom = h.appLE W' V' e := by
  rw [resLE_appTop_eq]
  simp only [Category.assoc, Iso.inv_hom_id_assoc, Iso.inv_hom_id, Category.comp_id]

theorem chartEvalHom_comp_C (hW : IsAffineOpen W) (h : Y ⟶ X) (e : V ≤ h ⁻¹ᵁ W)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme)
    (hg : g ≫ (AffineSpace n W.toScheme ↘ W.toScheme) = h.resLE W V e) :
    (chartEvalHom hW g).comp (MvPolynomial.C : Γ(X, W) →+* MvPolynomial n Γ(X, W)) =
      (h.appLE W V e).hom := by
  have key : chartCoeffHom g = (h.appLE W V e).hom := by
    simp only [chartCoeffHom, hg, resLE_appTop_conj_topIso_eq_appLE]
  refine RingHom.ext fun a => ?_
  have h1 : chartEvalHom hW g (MvPolynomial.C a) = chartCoeffHom g a := by simp [chartEvalHom]
  rw [RingHom.comp_apply, h1, key]

theorem chartEvalHom_C (hW : IsAffineOpen W) (h : Y ⟶ X) (e : V ≤ h ⁻¹ᵁ W)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme)
    (hg : g ≫ (AffineSpace n W.toScheme ↘ W.toScheme) = h.resLE W V e) (a : Γ(X, W)) :
    chartEvalHom hW g (MvPolynomial.C a) = (h.appLE W V e).hom a :=
  RingHom.congr_fun (chartEvalHom_comp_C hW h e g hg) a

@[reducible]
noncomputable def chartAlgebra (hW : IsAffineOpen W)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme) :
    Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) :=
  (chartEvalHom hW g).toAlgebra

theorem chartAlgebra_isScalarTower (hW : IsAffineOpen W) (h : Y ⟶ X) (e : V ≤ h ⁻¹ᵁ W)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme)
    (hg : g ≫ (AffineSpace n W.toScheme ↘ W.toScheme) = h.resLE W V e) :
    (letI : Algebra Γ(X, W) Γ(Y, V) := (h.appLE W V e).hom.toAlgebra
     letI : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
     IsScalarTower Γ(X, W) (MvPolynomial n Γ(X, W)) Γ(Y, V)) := by
  let : Algebra Γ(X, W) Γ(Y, V) := (h.appLE W V e).hom.toAlgebra
  let : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
  refine IsScalarTower.of_algebraMap_eq fun a => ?_
  show (h.appLE W V e).hom a = chartEvalHom hW g (algebraMap Γ(X, W) (MvPolynomial n Γ(X, W)) a)
  rw [MvPolynomial.algebraMap_eq, chartEvalHom_C hW h e g hg]

private theorem comp_appTop_apply {A B C : Scheme.{u}} (f : A ⟶ B) (k : B ⟶ C) (z : Γ(C, ⊤)) :
    (f ≫ k).appTop.hom z = f.appTop.hom (k.appTop.hom z) :=
  congrArg (fun m : Γ(C, ⊤) ⟶ Γ(A, ⊤) => CommRingCat.Hom.hom m z) (Scheme.Hom.comp_appTop f k)

private theorem specMap_appTop_apply {R S : CommRingCat.{u}} (u : R ⟶ S) (a : R) :
    (Spec.map u).appTop.hom ((Scheme.ΓSpecIso R).inv.hom a) =
      (Scheme.ΓSpecIso S).inv.hom (u.hom a) :=
  (congrArg (fun m : R ⟶ Γ(Spec S, ⊤) => CommRingCat.Hom.hom m a)
    (Scheme.ΓSpecIso_inv_naturality u)).symm

private theorem isoSpec_hom_appTop_apply (Z : Scheme.{u}) [IsAffine Z] (a : Γ(Z, ⊤)) :
    Z.isoSpec.hom.appTop.hom ((Scheme.ΓSpecIso Γ(Z, ⊤)).inv.hom a) = a := by
  rw [Scheme.isoSpec_hom, Scheme.toSpecΓ_appTop]
  exact congrArg (fun m : Γ(Z, ⊤) ⟶ Γ(Z, ⊤) => CommRingCat.Hom.hom m a)
    (Scheme.ΓSpecIso Γ(Z, ⊤)).inv_hom_id

private noncomputable def affineOpenIsoSpec {X' : Scheme.{u}} {W' : X'.Opens} (hW : IsAffineOpen W') :
    W'.toScheme ≅ Spec Γ(X', W') := IsAffineOpen.isoSpec hW

private theorem affineOpenIsoSpec_hom_appTop_apply {X' : Scheme.{u}} {W' : X'.Opens}
    (hW : IsAffineOpen W') (a : Γ(X', W')) :
    (affineOpenIsoSpec hW).hom.appTop.hom ((Scheme.ΓSpecIso Γ(X', W')).inv.hom a) =
      W'.topIso.inv.hom a := by
  have : IsAffine W'.toScheme := hW
  show (W'.toScheme.isoSpec.hom ≫ Spec.map W'.topIso.symm.hom).appTop.hom
      ((Scheme.ΓSpecIso Γ(X', W')).inv.hom a) = W'.topIso.inv.hom a
  rw [comp_appTop_apply, specMap_appTop_apply, isoSpec_hom_appTop_apply]
  rfl

private noncomputable def affineSpaceOpenIsoSpecMvPolynomial {X' : Scheme.{u}} {W' : X'.Opens} (hW : IsAffineOpen W')
    (m : Type u) :
    AffineSpace m W'.toScheme ≅ Spec (CommRingCat.of (MvPolynomial m Γ(X', W'))) :=
  (AffineSpace.functor.obj (Opposite.op m)).mapIso (affineOpenIsoSpec hW) ≪≫
    AffineSpace.SpecIso m Γ(X', W')

private theorem affineSpaceOpenIsoSpecMvPolynomial_hom_appTop_X {X' : Scheme.{u}} {W' : X'.Opens} (hW : IsAffineOpen W')
    (m : Type u) (j : m) :
    (affineSpaceOpenIsoSpecMvPolynomial hW m).hom.appTop.hom
        ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
          (MvPolynomial.X j)) =
      AffineSpace.coord W'.toScheme j := by
  have key : (AffineSpace.SpecIso m Γ(X', W')).hom.appTop.hom
      ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
        (MvPolynomial.X j)) = AffineSpace.coord (Spec Γ(X', W')) j := by
    rw [← AffineSpace.SpecIso_inv_appTop_coord, ← comp_appTop_apply, Iso.hom_inv_id]
    simp
  show ((AffineSpace.map m (affineOpenIsoSpec hW).hom) ≫
      (AffineSpace.SpecIso m Γ(X', W')).hom).appTop.hom
      ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
        (MvPolynomial.X j)) = AffineSpace.coord W'.toScheme j
  rw [comp_appTop_apply, key, AffineSpace.map_appTop_coord]

private theorem affineSpaceOpenIsoSpecMvPolynomial_hom_appTop_C {X' : Scheme.{u}} {W' : X'.Opens} (hW : IsAffineOpen W')
    (m : Type u) (a : Γ(X', W')) :
    (affineSpaceOpenIsoSpecMvPolynomial hW m).hom.appTop.hom
        ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
          (MvPolynomial.C a)) =
      (AffineSpace m W'.toScheme ↘ W'.toScheme).appTop.hom (W'.topIso.inv.hom a) := by
  have h1 : (Spec.map (CommRingCat.ofHom
        (MvPolynomial.C : Γ(X', W') →+* MvPolynomial m Γ(X', W')))).appTop.hom
        ((Scheme.ΓSpecIso Γ(X', W')).inv.hom a) =
      (Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
        (MvPolynomial.C a) :=
    specMap_appTop_apply _ a
  have key : (AffineSpace.SpecIso m Γ(X', W')).hom.appTop.hom
      ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
        (MvPolynomial.C a)) =
      (AffineSpace m (Spec Γ(X', W')) ↘ Spec Γ(X', W')).appTop.hom
        ((Scheme.ΓSpecIso Γ(X', W')).inv.hom a) := by
    rw [← h1, ← comp_appTop_apply, ← AffineSpace.SpecIso_inv_over, ← Category.assoc,
      Iso.hom_inv_id, Category.id_comp]
  show ((AffineSpace.map m (affineOpenIsoSpec hW).hom) ≫
      (AffineSpace.SpecIso m Γ(X', W')).hom).appTop.hom
      ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial m Γ(X', W')))).inv.hom
        (MvPolynomial.C a)) =
      (AffineSpace m W'.toScheme ↘ W'.toScheme).appTop.hom (W'.topIso.inv.hom a)
  rw [comp_appTop_apply, key, ← comp_appTop_apply, AffineSpace.map_over, comp_appTop_apply,
    affineOpenIsoSpec_hom_appTop_apply]

theorem chartAlgebra_etale (hW : IsAffineOpen W) (hV : IsAffineOpen V)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme) [Etale g] :
    (letI : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
     Algebra.Etale (MvPolynomial n Γ(X, W)) Γ(Y, V)) := by
  let : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
  have : IsAffine V.toScheme := hV
  have : IsAffine W.toScheme := hW
  have hEt : Etale (g ≫ (affineSpaceOpenIsoSpecMvPolynomial hW n).hom) := inferInstance
  have hr : RingHom.Etale (g ≫ (affineSpaceOpenIsoSpecMvPolynomial hW n).hom).appTop.hom :=
    (HasRingHomProperty.iff_of_isAffine (P := @Etale)).mp hEt
  let eR := (Scheme.ΓSpecIso
    (CommRingCat.of (MvPolynomial n Γ(X, W)))).symm.commRingCatIsoToRingEquiv
  let eS := V.topIso.commRingCatIsoToRingEquiv
  have h2 := RingHom.Etale.respectsIso.1 _ eS (RingHom.Etale.respectsIso.2 _ eR hr)
  suffices heq : eS.toRingHom.comp
      ((g ≫ (affineSpaceOpenIsoSpecMvPolynomial hW n).hom).appTop.hom.comp eR.toRingHom) =
      chartEvalHom hW g by
    change RingHom.Etale (chartEvalHom hW g)
    rwa [← heq]
  refine MvPolynomial.ringHom_ext (fun a => ?_) (fun j => ?_)
  · have hC : chartEvalHom hW g (MvPolynomial.C a) = chartCoeffHom g a := by simp [chartEvalHom]
    show V.topIso.hom.hom ((g ≫ (affineSpaceOpenIsoSpecMvPolynomial hW n).hom).appTop.hom
        ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial n Γ(X, W)))).inv.hom
          (MvPolynomial.C a))) = chartEvalHom hW g (MvPolynomial.C a)
    rw [comp_appTop_apply, affineSpaceOpenIsoSpecMvPolynomial_hom_appTop_C, ← comp_appTop_apply, hC]
    rfl
  · show V.topIso.hom.hom ((g ≫ (affineSpaceOpenIsoSpecMvPolynomial hW n).hom).appTop.hom
        ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial n Γ(X, W)))).inv.hom
          (MvPolynomial.X j))) = chartEvalHom hW g (MvPolynomial.X j)
    rw [comp_appTop_apply, affineSpaceOpenIsoSpecMvPolynomial_hom_appTop_X]
    simp [chartEvalHom, chartVar]

theorem chartAlgebra_formallyEtale (hW : IsAffineOpen W) (hV : IsAffineOpen V)
    (g : V.toScheme ⟶ AffineSpace n W.toScheme) [Etale g] :
    (letI : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
     Algebra.FormallyEtale (MvPolynomial n Γ(X, W)) Γ(Y, V)) := by
  let : Algebra (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra hW g
  have : Algebra.Etale (MvPolynomial n Γ(X, W)) Γ(Y, V) := chartAlgebra_etale hW hV g
  infer_instance

end FunctorialResolution.EmbeddedResolution
