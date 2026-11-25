module

public import Development.EtaleCohomology.CohomologicalPurity.LeafExcFormalPf
import Mathlib.CategoryTheory.Limits.Types.Pushouts
import Mathlib.Tactic.Linter.Style
public import Development.EtaleCohomology.CohomologicalPurity.LeafIndExcPf

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity

section Gen
variable {C : Type*} [Category C] [Abelian C]

theorem cokPO_iso {A B Q : C} (f : A ⟶ B) (l r : B ⟶ Q) (h : IsPushout f f l r) :
    IsIso (cokernel.map f r f l h.w.symm) := by
  refine ⟨⟨cokernel.desc r (h.desc (cokernel.π f) 0 (by simp)) (by simp), ?_, ?_⟩⟩
  · ext; simp
  · ext
    simp only [cokernel.π_desc_assoc, Category.comp_id]
    refine h.hom_ext ?_ ?_
    · simp
    · simp

theorem cokPO_transfer {A' B' Q' A B Q : C} (f' : A' ⟶ B') (l' r' : B' ⟶ Q') (h' : IsPushout f' f' l' r')
    (f : A ⟶ B) (l r : B ⟶ Q) (h : IsPushout f f l r) (a : A' ⟶ A) (b : B' ⟶ B) (m : Q' ⟶ Q)
    (w : f' ≫ b = a ≫ f) (wl : l' ≫ m = b ≫ l) (wr : r' ≫ m = b ≫ r)
    (hi : IsIso (cokernel.map f' f a b w.symm)) : IsIso (cokernel.map r' r b m wr.symm) := by
  have := cokPO_iso f' l' r' h'
  have := cokPO_iso f l r h
  have e : cokernel.map f' r' f' l' h'.w.symm ≫ cokernel.map r' r b m wr.symm =
      cokernel.map f' f a b w.symm ≫ cokernel.map f r f l h.w.symm := by
    ext
    simp [Category.assoc]
    simpa only [Category.assoc] using congrArg (fun k => k ≫ cokernel.π r) wl
  have : cokernel.map r' r b m wr.symm = inv (cokernel.map f' r' f' l' h'.w.symm) ≫
      (cokernel.map f' f a b w.symm ≫ cokernel.map f r f l h.w.symm) := by rw [← e]; simp
  rw [this]; infer_instance

theorem cokIso_comp {A B A' B' : C} (f : A ⟶ B) (f' : A' ⟶ B') (a : A ⟶ A') (b : B ⟶ B') (w : f ≫ b = a ≫ f')
    [IsIso a] [IsIso b] : IsIso (cokernel.map f f' a b w.symm) :=
  ⟨⟨cokernel.map f' f (inv a) (inv b) (by apply Eq.symm; rw [IsIso.eq_inv_comp, ← Category.assoc, ← w]; simp),
    by ext; simp, by ext; simp⟩⟩

end Gen

section Spec
variable (R : Type) [CommRing R]

theorem extKey (p : ℕ) {K L : ChainComplex (Shv R) ℕ} (φ : K ⟶ L) :
    (HomologicalComplex.eval _ _ (-(p:ℤ))).map ((ComplexShape.embeddingDownNat.extendFunctor (Shv R)).map φ) =
      (K.extendXIso _ (ComplexShape.embeddingDownNat_f p)).hom ≫ φ.f p ≫ (L.extendXIso _
          (ComplexShape.embeddingDownNat_f p)).inv :=
  HomologicalComplex.extendMap_f φ _ (ComplexShape.embeddingDownNat_f p)

def chIso (p : ℕ) : chains R ⋙ HomologicalComplex.eval _ _ (-(p : ℤ)) ≅
    (evaluation SimplexCategoryᵒᵖ PSh).obj (op (SimplexCategory.mk p)) ⋙ free R :=
  NatIso.ofComponents (fun K => ((chainsN R).obj K).extendXIso ComplexShape.embeddingDownNat (ComplexShape.embeddingDownNat_f p)) (by
    intro K L g
    change (HomologicalComplex.eval _ _ _).map ((ComplexShape.embeddingDownNat.extendFunctor (Shv R)).map
      ((chainsN R).map g)) ≫ _ = _ ≫ (free R).map (g.app _)
    rw [extKey]
    erw [Category.assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id]
    rfl)

instance : PreservesColimitsOfShape WalkingSpan (free R) := by
  have h1 : PreservesColimitsOfShape WalkingSpan (uliftFunctor.{1, 0}) := inferInstance
  have h2' := (ModuleCat.adj (ULift.{1, 0} R)).leftAdjoint_preservesColimits
  have h2 : PreservesColimitsOfShape WalkingSpan (ModuleCat.free (ULift.{1, 0} R)) := inferInstance
  have h3 : PreservesColimitsOfShape WalkingSpan (uliftFunctor.{1, 0} ⋙ ModuleCat.free (ULift.{1, 0} R)) := inferInstance
  have : PreservesColimitsOfShape WalkingSpan (freeP R) := by
    unfold freeP; infer_instance
  unfold free; infer_instance

end Spec

section Gen2

theorem cokF {C D : Type*} [Category C] [Abelian C] [Category D] [Abelian D] (F : C ⥤ D)
    [F.PreservesZeroMorphisms] [PreservesColimitsOfShape WalkingParallelPair F] {A B A' B' : C}
    (f : A ⟶ B) (f' : A' ⟶ B') (a : A ⟶ A') (b : B ⟶ B') (w : f ≫ b = a ≫ f')
    (hi : IsIso (cokernel.map (F.map f) (F.map f') (F.map a) (F.map b) (by rw [← F.map_comp, ← w, F.map_comp]))) :
    IsIso (F.map (cokernel.map f f' a b w.symm)) := by
  have e : F.map (cokernel.map f f' a b w.symm) = inv (cokernelComparison f F) ≫
      (cokernel.map (F.map f) (F.map f') (F.map a) (F.map b) (by rw [← F.map_comp, ← w, F.map_comp]) ≫
        cokernelComparison f' F) := by
    rw [IsIso.eq_inv_comp]; ext; simp [← Functor.map_comp]
  rw [e]; infer_instance

theorem cokNat {C E : Type*} [Category C] [Abelian C] [Category E] (Φ Ψ : E ⥤ C) (α : Φ ≅ Ψ)
    {X' Y' X Y : E} (g' : X' ⟶ Y') (g : X ⟶ Y) (a : X' ⟶ X) (b : Y' ⟶ Y) (w : g' ≫ b = a ≫ g)
    (hi : IsIso (cokernel.map (Ψ.map g') (Ψ.map g) (Ψ.map a) (Ψ.map b) (by simp only [← Functor.map_comp, w]))) :
    IsIso (cokernel.map (Φ.map g') (Φ.map g) (Φ.map a) (Φ.map b) (by simp only [← Functor.map_comp, w])) := by
  have h1 := cokIso_comp (Φ.map g') (Ψ.map g') (α.hom.app X') (α.hom.app Y') (α.hom.naturality g')
  have h2 := cokIso_comp (Φ.map g) (Ψ.map g) (α.hom.app X) (α.hom.app Y) (α.hom.naturality g)
  have e : cokernel.map (Φ.map g') (Φ.map g) (Φ.map a) (Φ.map b) (by simp only [← Functor.map_comp, w]) =
      (cokernel.map (Φ.map g') (Ψ.map g') (α.hom.app X') (α.hom.app Y') (α.hom.naturality g').symm ≫
        cokernel.map (Ψ.map g') (Ψ.map g) (Ψ.map a) (Ψ.map b) (by simp only [← Functor.map_comp, w])) ≫
      inv (cokernel.map (Φ.map g) (Ψ.map g) (α.hom.app X) (α.hom.app Y) (α.hom.naturality g).symm) := by
    rw [IsIso.eq_comp_inv]; ext; simp [Category.assoc, ← Functor.map_comp]
  rw [e]; infer_instance

end Gen2

section Main
variable (R : Type) [CommRing R]

theorem hPO (P : Arrow Spc) (p : SimplexCategoryᵒᵖ) :
    IsPushout ((free R).map (P.hom.app p)) ((free R).map (P.hom.app p)) ((free R).map ((dbl.inl P).app p))
      ((free R).map ((dbl.inr P).app p)) :=
  ((evaluation _ _).obj p ⋙ free R).map_isPushout (IsPushout.of_hasPushout P.hom P.hom)

theorem chains_zero {j : ℤ} (hj : ¬ ∃ p : ℕ, j = -(p : ℤ)) (X : Spc) : IsZero (((chains R).obj X).X j) :=
  ((chainsN R).obj X).isZero_extend_X ComplexShape.embeddingDownNat j (fun i hi => hj ⟨i, hi.symm⟩)

theorem cok_zero {A B : Cx R} (g : A ⟶ B) (j : ℤ) (hB : IsZero (B.X j)) : IsZero ((cokernel g).X j) :=
  (IsZero.of_epi (cokernel.π (g.f j)) hB).of_iso (PreservesCokernel.iso (HomologicalComplex.eval _ _ j) g)

end Main

theorem LeafExcDeg_of : LeafExcDeg := by
  intro q P' P φ h
  have key : ∀ j, IsIso ((cokC q φ).f j) := by
    intro j
    by_cases hj : ∃ p : ℕ, j = -(p : ℤ)
    · obtain ⟨p, rfl⟩ := hj
      show IsIso ((HomologicalComplex.eval _ _ _).map (cokC q φ))
      refine cokF (HomologicalComplex.eval _ _ (-(p : ℤ))) _ _ _ _ (chainsInrSq q φ) ?_
      refine cokNat (chains (ZMod q) ⋙ HomologicalComplex.eval _ _ (-(p : ℤ))) _ (chIso (ZMod q) p)
        (dbl.inr P') (dbl.inr P) φ.right (dbl.map φ) (dbl.inr_map φ) ?_
      exact cokPO_transfer _ _ _ (hPO (ZMod q) P' _) _ _ _ (hPO (ZMod q) P _) _ _ _ (freeSq _ φ _)
        (by
          show (free (ZMod q)).map (NatTrans.app (dbl.inl P') (op (SimplexCategory.mk p))) ≫
            (free (ZMod q)).map (NatTrans.app (dbl.map φ) (op (SimplexCategory.mk p))) = _
          rw [← Functor.map_comp, ← NatTrans.comp_app, dbl.inl_map', NatTrans.comp_app, Functor.map_comp])
        (by
          show (free (ZMod q)).map (NatTrans.app (dbl.inr P') (op (SimplexCategory.mk p))) ≫
            (free (ZMod q)).map (NatTrans.app (dbl.map φ) (op (SimplexCategory.mk p))) = _
          rw [← Functor.map_comp, ← NatTrans.comp_app, dbl.inr_map, NatTrans.comp_app, Functor.map_comp]) (h _)
    · exact isIso_of_source_target_iso_zero _ (cok_zero _ _ j (chains_zero _ hj _)).isoZero
        (cok_zero _ _ j (chains_zero _ hj _)).isoZero
  exact HomologicalComplex.Hom.isIso_of_components _

end LateralTheory.CohomologicalPurity
