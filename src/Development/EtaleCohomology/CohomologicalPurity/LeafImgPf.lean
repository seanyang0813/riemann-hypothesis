module

public import Development.EtaleCohomology.CohomologicalPurity.LeafBdCut
import Mathlib.Order.Interval.Finset.Box

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Bd
namespace ImgPf

section Preadditive

universe u₁ v₁ u₂ v₂

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
  [Preadditive C] [Preadditive D] [HasZeroObject C] [HasZeroObject D]

private def chainsNOf (F : PSh ⥤ C) : Spc ⥤ ChainComplex C ℕ :=
  (SimplicialObject.whiskering _ _).obj F ⋙ AlgebraicTopology.alternatingFaceMapComplex C

private def chainsOf (F : PSh ⥤ C) : Spc ⥤ CochainComplex C ℤ :=
  chainsNOf F ⋙ ComplexShape.embeddingDownNat.extendFunctor C

private def chainsXIsoOf (F : PSh ⥤ C) (E : Spc) (p : ℕ) :
    ((chainsOf F).obj E).X (-(p : ℤ)) ≅ F.obj (E.obj (op (SimplexCategory.mk p))) :=
  ((chainsNOf F).obj E).extendXIso ComplexShape.embeddingDownNat (i := p) rfl

private theorem chainsOf_d_eq (F : PSh ⥤ C) (E : Spc) (k : ℕ) :
    ((chainsOf F).obj E).d (-((k + 1 : ℕ) : ℤ)) (-(k : ℤ)) =
      (chainsXIsoOf F E (k + 1)).hom ≫
        (∑ i : Fin (k + 2), ((-1 : ℤ) ^ (i : ℕ)) • F.map (E.δ i)) ≫
        (chainsXIsoOf F E k).inv := by
  refine (HomologicalComplex.extend_d_eq ((chainsNOf F).obj E) ComplexShape.embeddingDownNat
    (i' := -((k + 1 : ℕ) : ℤ)) (j' := -(k : ℤ)) (i := k + 1) (j := k) rfl rfl).trans ?_
  unfold chainsXIsoOf
  congr 2
  exact AlgebraicTopology.AlternatingFaceMapComplex.obj_d_eq _ k

private theorem chainsOf_d_zero (F : PSh ⥤ C) (E : Spc) (p p' : ℤ) (hp : 0 ≤ p)
    (h : p + 1 = p') : ((chainsOf F).obj E).d p p' = 0 := by
  apply (HomologicalComplex.isZero_extend_X _ _ p' ?_).eq_of_tgt
  intro i hi
  change -(i : ℤ) = p' at hi
  omega

private theorem chainsOf_map_f_eq (F : PSh ⥤ C) {E E' : Spc} (f : E ⟶ E') (k : ℕ) :
    ((chainsOf F).map f).f (-(k : ℤ)) =
      (chainsXIsoOf F E k).hom ≫ F.map (f.app _) ≫ (chainsXIsoOf F E' k).inv :=
  HomologicalComplex.extendMap_f ((chainsNOf F).map f) ComplexShape.embeddingDownNat
    (i := k) (i' := -(k : ℤ)) rfl

private def negHom {F : PSh ⥤ C} {G : PSh ⥤ D} {I : CochainComplex C ℤ} {J : CochainComplex D ℤ}
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (E : Spc) (p s : ℤ) :
    (((chainsOf F).obj E).X p ⟶ I.X s) →+ (((chainsOf G).obj E).X p ⟶ J.X s) :=
  if h : -(((-p).toNat : ℕ) : ℤ) = p then
    { toFun := fun φ => (((chainsOf G).obj E).XIsoOfEq h).inv ≫ (chainsXIsoOf G E _).hom ≫
        T0 _ s ((chainsXIsoOf F E _).inv ≫ (((chainsOf F).obj E).XIsoOfEq h).hom ≫ φ)
      map_zero' := by simp
      map_add' := by intros; simp [Preadditive.comp_add] }
  else 0

private theorem negHom_neg {F : PSh ⥤ C} {G : PSh ⥤ D}
    {I : CochainComplex C ℤ} {J : CochainComplex D ℤ}
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (E : Spc) (k : ℕ) (s : ℤ) (φ : ((chainsOf F).obj E).X (-(k : ℤ)) ⟶ I.X s) :
    negHom T0 E (-(k : ℤ)) s φ =
      (chainsXIsoOf G E k).hom ≫ T0 _ s ((chainsXIsoOf F E k).inv ≫ φ) := by
  have key : ∀ (k' : ℕ) (h' : -(k' : ℤ) = -(k : ℤ)),
      (((chainsOf G).obj E).XIsoOfEq h').inv ≫ (chainsXIsoOf G E k').hom ≫
        T0 _ s ((chainsXIsoOf F E k').inv ≫ (((chainsOf F).obj E).XIsoOfEq h').hom ≫ φ) =
        (chainsXIsoOf G E k).hom ≫ T0 _ s ((chainsXIsoOf F E k).inv ≫ φ) := by
    intro k' h'
    obtain rfl : k' = k := Int.ofNat.inj (neg_inj.mp h')
    simp [HomologicalComplex.XIsoOfEq_rfl]
  unfold negHom
  rw [dite_eq_left (by simp)]
  exact key _ _

private theorem negHom_pos {F : PSh ⥤ C} {G : PSh ⥤ D}
    {I : CochainComplex C ℤ} {J : CochainComplex D ℤ}
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (E : Spc) (p s : ℤ) (hp : 0 < p) : negHom T0 E p s = 0 := by
  unfold negHom
  rw [dite_eq_right (by omega)]

private def cochainMap {F : PSh ⥤ C} {G : PSh ⥤ D}
    {I : CochainComplex C ℤ} {J : CochainComplex D ℤ}
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (E : Spc) (n : ℤ) : Cochain ((chainsOf F).obj E) I n →+ Cochain ((chainsOf G).obj E) J n where
  toFun α := Cochain.mk fun p q h => negHom T0 E p q (α.v p q h)
  map_zero' := Cochain.ext _ _ fun p q h => by simp
  map_add' α β := Cochain.ext _ _ fun p q h => by simp [Cochain.add_v]

private theorem cochainMap_v {F : PSh ⥤ C} {G : PSh ⥤ D}
    {I : CochainComplex C ℤ} {J : CochainComplex D ℤ}
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (E : Spc) (n : ℤ) (α : Cochain ((chainsOf F).obj E) I n) (p q : ℤ) (h : p + n = q) :
    (cochainMap T0 E n α).v p q h = negHom T0 E p q (α.v p q h) :=
  Cochain.mk_v (fun p q h => negHom T0 E p q (α.v p q h)) p q h

private theorem leafImg_of_functor (F : PSh ⥤ C) (G : PSh ⥤ D)
    (I : CochainComplex C ℤ) (J : CochainComplex D ℤ)
    (T0 : ∀ (P : PSh) (s : ℤ), (F.obj P ⟶ I.X s) →+ (G.obj P ⟶ J.X s))
    (hd : ∀ (P : PSh) (s t : ℤ) (φ : F.obj P ⟶ I.X s),
      T0 P t (φ ≫ I.d s t) = T0 P s φ ≫ J.d s t)
    (hn : ∀ (P P' : PSh) (f : P ⟶ P') (s : ℤ) (φ : F.obj P' ⟶ I.X s),
      T0 P s (F.map f ≫ φ) = G.map f ≫ T0 P' s φ) :
    ∃ T : ∀ (E : Spc) (n : ℤ),
        Cochain ((chainsOf F).obj E) I n →+ Cochain ((chainsOf G).obj E) J n,
      (∀ (E : Spc) (n : ℤ) (α : Cochain ((chainsOf F).obj E) I n) (p : ℕ) (s : ℤ)
          (h : -(p : ℤ) + n = s),
        (chainsXIsoOf G E p).inv ≫ (T E n α).v (-(p : ℤ)) s h =
          T0 _ s ((chainsXIsoOf F E p).inv ≫ α.v (-(p : ℤ)) s h)) ∧
      (∀ (E : Spc) (n m : ℤ) (α : Cochain ((chainsOf F).obj E) I n),
        T E m (δ n m α) = δ n m (T E n α)) ∧
      ∀ (E E' : Spc) (f : E ⟶ E') (n : ℤ) (α : Cochain ((chainsOf F).obj E') I n),
        T E n ((Cochain.ofHom ((chainsOf F).map f)).comp α (zero_add n)) =
          (Cochain.ofHom ((chainsOf G).map f)).comp (T E' n α) (zero_add n) := by
  refine ⟨fun E n => cochainMap T0 E n, ?_, ?_, ?_⟩
  · intro E n α p s h
    rw [cochainMap_v, negHom_neg, Iso.inv_hom_id_assoc]
  · intro E n m α
    by_cases hnm : n + 1 = m
    · refine Cochain.ext _ _ fun p q hpq => ?_
      have hcomp : ∀ (p s t : ℤ) (φ : ((chainsOf F).obj E).X p ⟶ I.X s),
          negHom T0 E p t (φ ≫ I.d s t) = negHom T0 E p s φ ≫ J.d s t := by
        intro p s t φ
        rcases le_or_gt p 0 with hp | hp
        · obtain ⟨k, rfl⟩ : ∃ k : ℕ, p = -(k : ℤ) := ⟨(-p).toNat, by omega⟩
          rw [negHom_neg, negHom_neg, ← Category.assoc, hd, Category.assoc]
        · rw [negHom_pos T0 E p t hp, negHom_pos T0 E p s hp]; simp
      have hdL : ∀ (p p' s : ℤ) (h : p + 1 = p') (φ : ((chainsOf F).obj E).X p' ⟶ I.X s),
          negHom T0 E p s (((chainsOf F).obj E).d p p' ≫ φ) =
            ((chainsOf G).obj E).d p p' ≫ negHom T0 E p' s φ := by
        intro p p' s h φ
        rcases lt_or_ge p 0 with hp | hp
        · obtain ⟨k, rfl, rfl⟩ : ∃ k : ℕ, p = -((k + 1 : ℕ) : ℤ) ∧ p' = -(k : ℤ) :=
            ⟨(-p - 1).toNat, by omega, by omega⟩
          rw [negHom_neg, negHom_neg, chainsOf_d_eq, chainsOf_d_eq]
          simp only [Category.assoc, Iso.inv_hom_id_assoc, Preadditive.sum_comp,
            Preadditive.zsmul_comp, map_sum, map_zsmul, hn]
        · rw [chainsOf_d_zero F E p p' hp h, negHom_pos T0 E p' s (by omega)]; simp
      rw [cochainMap_v, δ_v n m hnm _ p q hpq (q - 1) (p + 1) rfl rfl,
        δ_v n m hnm _ p q hpq (q - 1) (p + 1) rfl rfl,
        map_add, Units.smul_def, Units.smul_def, map_zsmul, hcomp,
        cochainMap_v, cochainMap_v, hdL p (p + 1) q rfl]
    · rw [δ_shape n m hnm, δ_shape n m hnm, map_zero]
  · intro E E' f n α
    refine Cochain.ext _ _ fun p q hpq => ?_
    simp only [cochainMap_v, Cochain.zero_cochain_comp_v, Cochain.ofHom_v]
    rcases le_or_gt p 0 with hp | hp
    · obtain ⟨k, rfl⟩ : ∃ k : ℕ, p = -(k : ℤ) := ⟨(-p).toNat, by omega⟩
      rw [negHom_neg, negHom_neg, chainsOf_map_f_eq, chainsOf_map_f_eq]
      simp only [Category.assoc, Iso.inv_hom_id_assoc, hn]
    · rw [negHom_pos T0 E p q hp, negHom_pos T0 E' p q hp]; simp

end Preadditive

end ImgPf

open ImgPf in
theorem LeafImg_of (hI : LeafImgHom) : LeafImg := by
  intro S R _ _ I J ρ
  obtain ⟨T0, hgen, hd, hn⟩ := hI S R I J ρ
  obtain ⟨T, hev, hδ, hpb⟩ := leafImg_of_functor (free S) (free R) I J T0 hd hn
  refine ⟨T, ?_, hδ, hpb⟩
  intro E n α p s h U x
  exact (congrArg (fun φ => Sec.map φ (freeGen R _ U x)) (hev E n α p s h)).trans (hgen _ _ _ U x)

end LateralTheory.CohomologicalPurity.Bd
