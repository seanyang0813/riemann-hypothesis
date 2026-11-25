module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IndEtOfForallFinset
public import Development.EtaleCohomology.EtaleSheaves.DescIntPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWide, Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts, Development.EtaleCohomology.EtaleSheaves.CechSqPf

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWide =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWide", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IndEtOfForallFinset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex Simplicial TensorProduct GlobalTheory.EtC

def LateralTheory.EtaleFoundations.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts : Prop :=
  ∀ (T : Type 1) [Category.{0} T] [HasFiniteWidePushouts T] (Ψ : T ⥤ PShᵒᵖ),
    (∀ n : ℕ, PreservesColimitsOfShape (WidePushoutShape (Fin (n + 1))) Ψ) → ∀ (U V : T) (g : U ⟶ V),
    ∃ e : ((Arrow.mk g).cechConerve ⋙ Ψ).leftOp ≅ (Arrow.mk (Ψ.map g).unop).cechNerve,
      lev Ψ (coAug g) = e.hom ≫ (Arrow.mk (Ψ.map g).unop).augmentedCechNerve.hom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWide =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWide\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite Simplicial GlobalTheory.EtC

namespace LateralTheory.EtaleFoundations.ConerveIsomorphism

variable {T : Type 1} [Category.{0} T] [HasFiniteWidePushouts T] (Ψ : T ⥤ PShᵒᵖ)
  {U V : T} (g : U ⟶ V)

noncomputable def phi (n : ℕ) :
    (Ψ.obj (widePushout U (fun _ : Fin (n+1) => V) (fun _ => g))).unop ⟶
      widePullback (Ψ.obj U).unop (fun _ : Fin (n+1) => (Ψ.obj V).unop) (fun _ => (Ψ.map g).unop) :=
  WidePullback.lift (Ψ.map (WidePushout.head _)).unop (fun j => (Ψ.map (WidePushout.ι _ j)).unop)
    (fun j => by
      have h := WidePushout.arrow_ι (fun _ : Fin (n+1) => g) j
      rw [← unop_comp, ← Ψ.map_comp, h])

lemma phi_π (n : ℕ) (j : Fin (n+1)) :
    phi Ψ g n ≫ WidePullback.π _ j = (Ψ.map (WidePushout.ι _ j)).unop := by
  unfold phi; erw [WidePullback.lift_π]

lemma phi_base (n : ℕ) :
    phi Ψ g n ≫ WidePullback.base _ = (Ψ.map (WidePushout.head _)).unop := by
  unfold phi; erw [WidePullback.lift_base]

lemma aux (n : ℕ) (j : Fin (n+1)) :
    Ψ.map g ≫ (WidePullback.π (fun _ : Fin (n+1) => (Ψ.map g).unop) j).op =
      (WidePullback.base (fun _ : Fin (n+1) => (Ψ.map g).unop)).op := by
  rw [← WidePullback.π_arrow (fun _ : Fin (n+1) => (Ψ.map g).unop) j]
  rfl

noncomputable def cocone (n : ℕ) : Cocone (WidePushoutShape.wideSpan U (fun _ : Fin (n+1) => V) (fun _ => g) ⋙ Ψ) where
  pt := op (widePullback (Ψ.obj U).unop (fun _ : Fin (n+1) => (Ψ.obj V).unop) (fun _ => (Ψ.map g).unop))
  ι :=
    { app := fun j => match j with
        | none => (WidePullback.base _).op
        | some j => (WidePullback.π _ j).op
      naturality := by
        rintro X Y (_ | j)
        · rw [WidePushoutShape.hom_id, CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id,
            Category.id_comp, Category.comp_id]
        · exact (aux Ψ g n j).trans (Category.comp_id _).symm }

lemma natural (a b : ℕ) (σ : Fin (a+1) → Fin (b+1)) :
    (Ψ.map (WidePushout.desc (WidePushout.head (fun _ : Fin (b+1) => g))
      (fun i => WidePushout.ι (fun _ : Fin (b+1) => g) (σ i))
      (fun i => WidePushout.arrow_ι (fun _ : Fin (b+1) => g) (σ i)))).unop ≫ phi Ψ g a =
    phi Ψ g b ≫ WidePullback.lift (WidePullback.base (fun _ : Fin (b+1) => (Ψ.map g).unop))
      (fun i => WidePullback.π (fun _ : Fin (b+1) => (Ψ.map g).unop) (σ i))
      (fun i => WidePullback.π_arrow (fun _ : Fin (b+1) => (Ψ.map g).unop) (σ i)) := by
  apply WidePullback.hom_ext
  · intro j
    rw [Category.assoc, Category.assoc, phi_π, WidePullback.lift_π, phi_π, ← unop_comp, ← Ψ.map_comp,
      WidePushout.ι_desc]
  · rw [Category.assoc, Category.assoc, phi_base, WidePullback.lift_base, phi_base, ← unop_comp,
      ← Ψ.map_comp, WidePushout.head_desc]

variable (hΨ : ∀ n : ℕ, PreservesColimitsOfShape (WidePushoutShape (Fin (n + 1))) Ψ)

noncomputable def hc (n : ℕ) :
    IsColimit (Ψ.mapCocone (colimit.cocone (WidePushoutShape.wideSpan U (fun _ : Fin (n+1) => V) (fun _ => g)))) :=
  haveI := hΨ n
  isColimitOfPreserves Ψ (colimit.isColimit _)

noncomputable def psi (n : ℕ) :
    widePullback (Ψ.obj U).unop (fun _ : Fin (n+1) => (Ψ.obj V).unop) (fun _ => (Ψ.map g).unop) ⟶
      (Ψ.obj (widePushout U (fun _ : Fin (n+1) => V) (fun _ => g))).unop :=
  ((hc Ψ g hΨ n).desc (cocone Ψ g n)).unop

lemma desc_phi (n : ℕ) : (hc Ψ g hΨ n).desc (cocone Ψ g n) ≫ (phi Ψ g n).op = 𝟙 _ := by
  apply (hc Ψ g hΨ n).hom_ext
  rintro (_ | j)
  · rw [Category.comp_id]
    exact (Category.assoc _ _ _).symm.trans ((congrArg (fun x => x ≫ (phi Ψ g n).op)
      ((hc Ψ g hΨ n).fac (cocone Ψ g n) none)).trans (Quiver.Hom.unop_inj (phi_base Ψ g n)))
  · rw [Category.comp_id]
    exact (Category.assoc _ _ _).symm.trans ((congrArg (fun x => x ≫ (phi Ψ g n).op)
      ((hc Ψ g hΨ n).fac (cocone Ψ g n) (some j))).trans (Quiver.Hom.unop_inj (phi_π Ψ g n j)))

noncomputable def levelIso (n : ℕ) :
    (Ψ.obj (widePushout U (fun _ : Fin (n+1) => V) (fun _ => g))).unop ≅
      widePullback (Ψ.obj U).unop (fun _ : Fin (n+1) => (Ψ.obj V).unop) (fun _ => (Ψ.map g).unop) where
  hom := phi Ψ g n
  inv := psi Ψ g hΨ n
  hom_inv_id := congrArg Quiver.Hom.unop (desc_phi Ψ g hΨ n)
  inv_hom_id := by
    apply WidePullback.hom_ext
    · intro j
      rw [Category.assoc, phi_π, Category.id_comp]
      exact congrArg Quiver.Hom.unop ((hc Ψ g hΨ n).fac (cocone Ψ g n) (some j))
    · rw [Category.assoc, phi_base, Category.id_comp]
      exact congrArg Quiver.Hom.unop ((hc Ψ g hΨ n).fac (cocone Ψ g n) none)

end LateralTheory.EtaleFoundations.ConerveIsomorphism

open LateralTheory.EtaleFoundations.ConerveIsomorphism in
theorem LateralTheory.EtaleFoundations.etale_cech_conerve_image_iso_cech_nerve_of_preserves_wide_pushouts : LateralTheory.EtaleFoundations.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts := by
  intro T _ _ Ψ hΨ U V g
  refine ⟨NatIso.ofComponents (fun n => levelIso Ψ g hΨ n.unop.len) ?_, ?_⟩
  · intro m n h
    exact natural Ψ g _ _ h.unop.toOrderHom
  · ext n : 1
    exact (phi_base Ψ g (unop n).len).symm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.CechSqPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.CechSqPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.DescIntPf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IndEtOfForallFinset\npublic import Development.EtaleCohomology.TateTwists.EtaleCechConerveImageIsoCechNerveOfPreservesWidePushouts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E3Cut LateralTheory.E.StalkCut LateralTheory.E.DescIntPf

namespace LateralTheory.E.CechSqPf

abbrev Ψ : CommRingCat.{0} ⥤ PShᵒᵖ := (Scheme.Spec ⋙ yoneda).rightOp

instance (n : ℕ) : PreservesColimitsOfShape (WidePushoutShape (Fin (n + 1))) Ψ :=
  preservesColimitsOfShape_rightOp _ _

abbrev Sg {C D : CommRingCat.{0}} (g : C ⟶ D) : Spc := ((Arrow.mk g).cechConerve ⋙ Ψ).leftOp

abbrev ag {C D : CommRingCat.{0}} (g : C ⟶ D) : Sg g ⟶ sch.obj (Spec C) := lev Ψ (coAug g)

def sqHom {C D Y' : CommRingCat.{0}} (g : C ⟶ D) (φ' : C ⟶ Y') : Arrow.mk g ⟶ Arrow.mk (pushout.inr g φ') :=
  Arrow.homMk (u := φ') (v := pushout.inl g φ') pushout.condition.symm

theorem eqv_comp (R : Type) [CommRing R] (F : Shv R) {E E' E'' : Spc} (f : E ⟶ E') (g : E' ⟶ E'')
    (hf : Eqv R f F) (hg : Eqv R g F) : Eqv R (f ≫ g) F := fun n => by
  have : (pull R (f ≫ g) F n : H R E'' F n → H R E F n) = (pull R f F n) ∘ (pull R g F n) := by
    funext x; exact pull_comp R f g F n x
  rw [this]; exact (hf n).comp (hg n)

def IntegralSurjectiveRingCechAugmentationEtaleEqv : Prop := B4 → ∀ (q : ℕ) (i : ℤ) {C D : CommRingCat.{0}} (g : C ⟶ D), g.hom.IsIntegral → SpS g →
  IsUnit (q : C) → Eqv _ (cechAug (Spec.map g)) (tw q i)

def BaseChange : Prop := ∀ {C D Y' : CommRingCat.{0}} (g : C ⟶ D) (φ' : C ⟶ Y'), g.hom.IsIntegral → SpS g →
  (pushout.inr g φ').hom.IsIntegral ∧ SpS (pushout.inr g φ')

def LevelPush : Prop := ∀ {A Y C D Y' : CommRingCat.{0}} (φ : A ⟶ Y) (c : A ⟶ C) (w : Y ⟶ Y') (φ' : C ⟶ Y')
  (g : C ⟶ D), IsPushout φ c w φ' → ∀ n : SimplexCategory,
  IsPushout φ (c ≫ (coAug g).app n) (w ≫ (coAug (pushout.inr g φ')).app n) ((Arrow.mapCechConerve (sqHom g φ')).app n)

def LevelP : Prop := ∀ {A : CommRingCat.{0}} (P : ∀ C : CommRingCat.{0}, (A ⟶ C) → Prop), PushClosed P →
  ∀ {C D : CommRingCat.{0}} (c : A ⟶ C) (g : C ⟶ D), P C c → P D (c ≫ g) → ∀ n : SimplexCategory,
  P _ (c ≫ (coAug g).app n)

def Level0 : Prop := ∀ (q : ℕ) (i : ℤ) {A Y C D Y' : CommRingCat.{0}} (φ : A ⟶ Y) (c : A ⟶ C) (w : Y ⟶ Y')
  (φ' : C ⟶ Y') (g : C ⟶ D), IsPushout φ c w φ' →
  ∃ (Z : CommRingCat.{0}) (wz : Y ⟶ Z) (ψ : D ⟶ Z), IsPushout φ (c ≫ g) wz ψ ∧
    ∀ m, RelZ q i m ψ → RelZ q i m ((Arrow.mapCechConerve (sqHom g φ')).app (SimplexCategory.mk 0))

theorem ag_eqv (q : ℕ) (i : ℤ) {C D : CommRingCat.{0}} (g : C ⟶ D)
    (h : Eqv _ (cechAug (Spec.map g)) (tw q i)) : Eqv _ (ag g) (tw q i) := by
  obtain ⟨e, he⟩ := LateralTheory.EtaleFoundations.etale_cech_conerve_image_iso_cech_nerve_of_preserves_wide_pushouts CommRingCat.{0} Ψ (fun n => inferInstance) C D g
  have h1 : (ag g) = e.hom ≫ cechAug (Spec.map g) := he
  rw [h1]
  exact eqv_comp _ _ _ _ (eqv_of_iso _ _ e) h

abbrev uMap {C D Y' : CommRingCat.{0}} (g : C ⟶ D) (φ' : C ⟶ Y') : Sg (pushout.inr g φ') ⟶ Sg g :=
  NatTrans.leftOp (Functor.whiskerRight (Arrow.mapCechConerve (sqHom g φ')) Ψ)

theorem u_sq {C D Y' : CommRingCat.{0}} (g : C ⟶ D) (φ' : C ⟶ Y') :
    uMap g φ' ≫ ag g = ag (pushout.inr g φ') ≫ sch.map (Spec.map φ') := by
  refine NatTrans.ext (funext fun n => ?_)
  have key : (coAug g).app n.unop ≫ (Arrow.mapCechConerve (sqHom g φ')).app n.unop =
      φ' ≫ (coAug (pushout.inr g φ')).app n.unop := by
    simp [coAug, sqHom]
    apply WidePushout.head_desc
  change (Ψ.map ((Arrow.mapCechConerve (sqHom g φ')).app n.unop)).unop ≫ (Ψ.map ((coAug g).app n.unop)).unop =
    (Ψ.map ((coAug (pushout.inr g φ')).app n.unop)).unop ≫ (Ψ.map φ').unop
  rw [← unop_comp, ← unop_comp, ← Ψ.map_comp, ← Ψ.map_comp, key]

theorem CechSq_of (h1 : IntegralSurjectiveRingCechAugmentationEtaleEqv) (h2 : BaseChange) (h3 : LevelPush) (h4 : LevelP) (h5 : Level0) : CechSq := by
  intro hH q _ i A Y φ hq P hP C D c g hCc hDc hgi hgs Y' w φ' hpo
  have hB4 : B4 := hH.2.2.2.2.2.2.2.2.1
  obtain ⟨hgi', hgs'⟩ := h2 g φ' hgi hgs
  have hqC : IsUnit (q : C) := by simpa using hq.map c.hom
  have hqY : IsUnit (q : Y') := by simpa using hqC.map φ'.hom
  refine ⟨_, _, uMap g φ', ag (pushout.inr g φ'), ag g, u_sq g φ', ag_eqv q i g (h1 hB4 q i g hgi hgs hqC),
    ag_eqv q i _ (h1 hB4 q i _ hgi' hgs' hqY), fun p => ?_, ?_⟩
  · exact ⟨_, c ≫ (coAug g).app (SimplexCategory.mk p), _, w ≫ (coAug (pushout.inr g φ')).app (SimplexCategory.mk p),
      _, h4 P hP c g hCc hDc _, h3 φ c w φ' g hpo _, fun m hm => hm⟩
  · obtain ⟨Z, wz, ψ, hpo0, hrel⟩ := h5 q i φ c w φ' g hpo
    exact ⟨Z, wz, ψ, hpo0, fun m hm => hrel m hm⟩

end LateralTheory.E.CechSqPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.CechSqPf =====
