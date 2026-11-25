module

public import Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing.SecondBlockUnimodularLocusInclusionMono
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing, Development.EtaleCohomology.EtaleSheaves.LeafMapWPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing.SecondBlockUnimodularLocusInclusionMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.D2 LateralTheory.E.LeafGeomPf

namespace LateralTheory.E.HalfDegreeVanishing

theorem um_hom_val {N : ℕ} {A : Type} [CommRing A] {v w v' w' : Um N A} (hv : v = v') (hw : w = w') (p : v' ⟶ w') :
    (eqToHom hv ≫ p ≫ eqToHom hw.symm).1 = p.1 := by
  subst hv hw; simp

theorem um_functor_ext {N n : ℕ} {A : Type} [CommRing A] (F G : Fin (n + 1) ⥤ Um N A)
    (ho : ∀ i, (F.obj i).1 = (G.obj i).1) (hm : ∀ {i j : Fin (n + 1)} (f : i ⟶ j), (F.map f).1 = (G.map f).1) : F = G := by
  refine CategoryTheory.Functor.ext (fun i => Subtype.ext (ho i)) (fun i j f => ?_)
  apply Subtype.ext
  exact (hm f).trans (um_hom_val (Subtype.ext (ho i)) (Subtype.ext (ho j)) (G.map f)).symm

variable {E : Spc} {a b : ℕ} (V : E ⟶ ofCat (glCat a)) (W : E ⟶ ofCat (glCat b))

theorem arrow_eq {n : ℕ} {X : Scheme.{0}} (x : Sx (PB (bsumOf V W)) n X) {i j : Fin (n + 1)} (f : i ⟶ j) :
    (show GL (Fin b) (Scheme.Γ.obj (op X)) from (pw W (pe V W x)).map f).val.mulVec (wb (a := a) ((pv V W x).obj i).1) =
      (((pv V W x).map f).1.2 : Scheme.Γ.obj (op X)) • wb (a := a) ((pv V W x).obj j).1 := by
  have e := ((pv V W x).map f).2
  rw [cond] at e
  have e2 := congrArg (wb (a := a)) e
  rw [wb_mulVec] at e2
  exact e2

def gfun {n : ℕ} {X : Scheme.{0}} (x : Sx (PB (bsumOf V W)) n X) (hx : AllSec V W x) :
    Fin (n + 1) ⥤ Um b (Scheme.Γ.obj (op X)) where
  obj i := ⟨wb (a := a) ((pv V W x).obj i).1, hx i⟩
  map {i j} f := ⟨((pw W (pe V W x)).map f, ((pv V W x).map f).1.2), arrow_eq V W x f⟩
  map_id i := Subtype.ext (Prod.ext ((pw W (pe V W x)).map_id i) (congrArg (fun p => p.1.2) ((pv V W x).map_id i)))
  map_comp f g := Subtype.ext (Prod.ext ((pw W (pe V W x)).map_comp f g) (congrArg (fun p => p.1.2) ((pv V W x).map_comp f g)))

theorem pe_res {n : ℕ} {X Y : Scheme.{0}} (k : Y ⟶ X) (x : Sx (PB (bsumOf V W)) n X) :
    pe V W (((PB (bsumOf V W)).obj (op (SimplexCategory.mk n))).map k.op x) = (E.obj (op (SimplexCategory.mk n))).map k.op (pe V W x) :=
  NatTrans.naturality_apply
    ((pullback.fst (bsumOf V W) (PGL.pr (a + b))).app (op (SimplexCategory.mk n))) k.op x

theorem pw_res {n : ℕ} {X Y : Scheme.{0}} (k : Y ⟶ X) (e : Sx E n X) {i j : Fin (n + 1)} (f : i ⟶ j) :
    (show GL (Fin b) (Scheme.Γ.obj (op Y)) from (pw W ((E.obj (op (SimplexCategory.mk n))).map k.op e)).map f) =
      Matrix.GeneralLinearGroup.map (Scheme.Γ.map k.op).hom (show GL (Fin b) (Scheme.Γ.obj (op X)) from (pw W e).map f) :=
  eq_of_heq (Functor.hcongr_hom (NatTrans.naturality_apply (W.app (op (SimplexCategory.mk n))) k.op e) f)

end LateralTheory.E.HalfDegreeVanishing
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafMapWPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafMapWPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.HalfDegreeVanishing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.D2 LateralTheory.E.LeafGeomPf LateralTheory.E.HalfDegreeVanishing

namespace LateralTheory.E.LeafMapWPf

variable {E : Spc} {a b : ℕ} (V : E ⟶ ofCat (glCat a)) (W : E ⟶ ofCat (glCat b))

theorem pvm_res {n : ℕ} {X Y : Scheme.{0}} (k : Y ⟶ X) (x : Sx (PB (bsumOf V W)) n X) {i j : Fin (n + 1)} (f : i ⟶ j) :
    (((pv V W (((PB (bsumOf V W)).obj (op (SimplexCategory.mk n))).map k.op x)).map f).1.2 : Scheme.Γ.obj (op Y)) =
      Scheme.Γ.map k.op (((pv V W x).map f).1.2 : Scheme.Γ.obj (op X)) := by
  let N := op (SimplexCategory.mk n)
  let projection : (PB (bsumOf V W)).obj N ⟶ (PGL (a + b)).obj N :=
    (pullback.snd (bsumOf V W) (PGL.pr (a + b))).app N
  have h := types_congr_hom (projection.naturality k.op) x
  have h2 := congrArg (fun p => (p.1.2 : Scheme.Γ.obj (op Y))) (Functor.congr_hom h f)
  refine h2.trans ?_
  have h3 := congrArg (fun p => (p.2 : Scheme.Γ.obj (op Y)))
    (um_hom_val (Functor.congr_obj h i) (Functor.congr_obj h j)
      ((((PGL (a + b)).obj N).map k.op (pv V W x)).map f))
  exact h3.trans rfl

theorem pvm_simp {n m : ℕ} {X : Scheme.{0}} (θ : SimplexCategory.mk m ⟶ SimplexCategory.mk n) (x : Sx (PB (bsumOf V W)) n X)
    {i j : Fin (m + 1)} (f : i ⟶ j) :
    (((pv V W ((((PB (bsumOf V W)).map θ.op).app (op X)) x)).map f).1.2 : Scheme.Γ.obj (op X)) =
      (((((PGL (a + b)).map θ.op).app (op X)) (pv V W x) : Fin (m + 1) ⥤ Um (a + b) (Scheme.Γ.obj (op X))).map f).1.2 := by
  have h := types_congr_hom
    (NatTrans.congr_app ((pullback.snd (bsumOf V W) (PGL.pr (a + b))).naturality θ.op) (op X)) x
  have h2 := congrArg (fun p => (p.1.2 : Scheme.Γ.obj (op X))) (Functor.congr_hom h f)
  refine h2.trans ?_
  have h3 := congrArg (fun p => (p.2 : Scheme.Γ.obj (op X))) (um_hom_val (Functor.congr_obj h i) (Functor.congr_obj h j) (((ConcreteCategory.hom
      (((pullback.snd (bsumOf V W) (PGL.pr (a + b))).app (op (SimplexCategory.mk n))).app (op X) ≫
        (((PGL (a + b)).map θ.op).app (op X)))) x).map f))
  exact h3.trans rfl

theorem pe_simp {n m : ℕ} {X : Scheme.{0}} (θ : SimplexCategory.mk m ⟶ SimplexCategory.mk n) (x : Sx (PB (bsumOf V W)) n X) :
    pe V W ((((PB (bsumOf V W)).map θ.op).app (op X)) x) = ((E.map θ.op).app (op X)) (pe V W x) :=
  types_congr_hom
    (NatTrans.congr_app ((pullback.fst (bsumOf V W) (PGL.pr (a + b))).naturality θ.op) (op X)) x

theorem pw_simp {n m : ℕ} {X : Scheme.{0}} (θ : SimplexCategory.mk m ⟶ SimplexCategory.mk n) (e : Sx E n X)
    {i j : Fin (m + 1)} (f : i ⟶ j) :
    (show GL (Fin b) (Scheme.Γ.obj (op X)) from (pw W (((E.map θ.op).app (op X)) e)).map f) =
      (show GL (Fin b) (Scheme.Γ.obj (op X)) from
        ((((ofCat (glCat b)).map θ.op).app (op X)) (pw W e) : Fin (m + 1) ⥤ SingleObj (GL (Fin b) (Scheme.Γ.obj (op X)))).map f) :=
  eq_of_heq (Functor.hcongr_hom (types_congr_hom (NatTrans.congr_app (W.naturality θ.op) (op X)) e) f)

def gX (n : SimplexCategoryᵒᵖ) (X : Scheme.{0}ᵒᵖ) (x : ((U2 V W).obj n).obj X) : ((PGL b).obj n).obj X :=
  show Fin (n.unop.len + 1) ⥤ Um b (Scheme.Γ.obj (op X.unop)) from gfun V W x.1 x.2

theorem gX_nat_X (n : SimplexCategoryᵒᵖ) {X Y : Scheme.{0}ᵒᵖ} (k : X ⟶ Y) (x : ((U2 V W).obj n).obj X) :
    gX V W n Y (((U2 V W).obj n).map k x) = ((PGL b).obj n).map k (gX V W n X x) := by
  apply um_functor_ext
  · intro i
    show wb (a := a) ((pv V W (((PB (bsumOf V W)).obj (op (SimplexCategory.mk n.unop.len))).map k.unop.op x.1)).obj i).1 = _
    rw [pv_res]; rfl
  · intro i j f
    apply Prod.ext
    · show (show GL (Fin b) _ from (pw W (pe V W (((PB (bsumOf V W)).obj (op (SimplexCategory.mk n.unop.len))).map k.unop.op x.1))).map f) = _
      rw [pe_res, pw_res]; rfl
    · apply Units.ext
      exact pvm_res V W k.unop x.1 f

theorem gX_nat_n {n m : SimplexCategoryᵒᵖ} (θ : n ⟶ m) (X : Scheme.{0}ᵒᵖ) (x : ((U2 V W).obj n).obj X) :
    gX V W m X ((((U2 V W).map θ).app X) x) = (((PGL b).map θ).app X) (gX V W n X x) := by
  apply um_functor_ext
  · intro i
    show wb (a := a) ((pv V W ((((PB (bsumOf V W)).map θ.unop.op).app (op X.unop)) x.1)).obj i).1 = _
    rw [pv_simp]; rfl
  · intro i j f
    apply Prod.ext
    · show (show GL (Fin b) _ from (pw W (pe V W ((((PB (bsumOf V W)).map θ.unop.op).app (op X.unop)) x.1))).map f) = _
      rw [pe_simp, pw_simp]; rfl
    · apply Units.ext
      exact (pvm_simp V W θ.unop x.1 f).trans rfl

def gmap : U2 V W ⟶ PGL b where
  app n :=
    { app := fun X => TypeCat.ofHom (gX V W n X)
      naturality := fun X Y k => by
        ext x
        exact gX_nat_X V W n k x }
  naturality n m θ := by
    ext X x
    exact gX_nat_n V W θ X x

theorem gmap_pr : gmap V W ≫ PGL.pr b = f2 V W ≫ PB.pr _ ≫ W := by
  ext n X x
  refine CategoryTheory.Functor.ext (fun _ => rfl) (fun i j f => ?_)
  erw [Category.id_comp, Category.comp_id]
  rfl

theorem gmap_line : gmap V W ≫ PGL.line b = f2 V W ≫ pullback.snd (bsumOf V W) (PGL.pr (a + b)) ≫ PGL.line (a + b) := by
  ext n X x
  refine CategoryTheory.Functor.ext (fun _ => rfl) (fun i j f => ?_)
  erw [Category.id_comp, Category.comp_id]
  rfl

theorem LeafMapW_of : LateralTheory.E.HalfDegreeVanishing.LeafMapW := fun V W => ⟨gmap V W, gmap_pr V W, gmap_line V W⟩

end LateralTheory.E.LeafMapWPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafMapWPf =====
