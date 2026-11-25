module

public import Development.EtaleCohomology.EtaleSheaves.LeafGhostCut
public import Development.EtaleCohomology.EtaleSheaves.LeafConsPf
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafConsPfA, Development.EtaleCohomology.EtaleSheaves.LeafConsPfB, Development.EtaleCohomology.EtaleSheaves.LeafConsPfC

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfA =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafConsPfA", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafGhostCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.LeafConsPfA
open LateralTheory.E.E4 LateralTheory.E.LeafGhostCut

theorem HK_pull_mk (R : Type) [CommRing R] {K L : Cx R} (f : K ⟶ L) (F : Shv R) (n : ℤ) (z : Cocycle L (res R F) n) :
    HK.pull R f F n (CohomologyClass.mk z) = CohomologyClass.mk (zcomp (Cocycle.ofHom f) z (zero_add n)) := rfl

theorem HK_pull_comp (R : Type) [CommRing R] {K L M : Cx R} (f : K ⟶ L) (g : L ⟶ M) (F : Shv R) (n : ℤ)
    (y : HK R M F n) : HK.pull R (f ≫ g) F n y = HK.pull R f F n (HK.pull R g F n y) := by
  obtain ⟨z, rfl⟩ := CohomologyClass.mk_surjective y
  rw [HK_pull_mk, HK_pull_mk, HK_pull_mk]
  congr 1
  apply Cocycle.ext
  simp [zcomp, Cochain.ofHom_comp, Cochain.comp_assoc_of_first_is_zero_cochain]

theorem HK_pull_id (R : Type) [CommRing R] {K : Cx R} (F : Shv R) (n : ℤ)
    (y : HK R K F n) : HK.pull R (𝟙 K) F n y = y := by
  obtain ⟨z, rfl⟩ := CohomologyClass.mk_surjective y
  rw [HK_pull_mk]
  congr 1
  apply Cocycle.ext
  simp [zcomp]

theorem map_congr {C : Type*} [Category C] [Preadditive C] [HasBinaryBiproducts C] {K₁ L₁ K₂ L₂ : CochainComplex C ℤ}
    (φ₁ : K₁ ⟶ L₁) (φ₂ : K₂ ⟶ L₂) {a a' : K₁ ⟶ K₂} {b b' : L₁ ⟶ L₂} (ha : a = a') (hb : b = b')
    (c : φ₁ ≫ b = a ≫ φ₂) (c' : φ₁ ≫ b' = a' ≫ φ₂) :
    mappingCone.map φ₁ φ₂ a b c = mappingCone.map φ₁ φ₂ a' b' c' := by
  subst ha hb; rfl

theorem rmap_congr (R : Type) [CommRing R] {U E U' E' : Spc} (f : U ⟶ E) (f' : U' ⟶ E') {u u2 : U' ⟶ U} {e e2 : E' ⟶ E}
    (hu : u = u2) (he : e = e2) (c : f' ≫ e = u ≫ f) (c2 : f' ≫ e2 = u2 ≫ f) :
    rmap R f f' u e c = rmap R f f' u2 e2 c2 := by
  subst hu he; rfl

theorem rmap_comp (R : Type) [CommRing R] {U E U' E' U'' E'' : Spc} (f : U ⟶ E) (f' : U' ⟶ E') (f'' : U'' ⟶ E'')
    (u : U' ⟶ U) (e : E' ⟶ E) (u' : U'' ⟶ U') (e' : E'' ⟶ E') (c : f' ≫ e = u ≫ f) (c' : f'' ≫ e' = u' ≫ f')
    (c'' : f'' ≫ (e' ≫ e) = (u' ≫ u) ≫ f) :
    rmap R f f'' (u' ≫ u) (e' ≫ e) c'' = rmap R f' f'' u' e' c' ≫ rmap R f f' u e c := by
  unfold rmap
  exact (map_congr _ _ ((chains R).map_comp _ _) ((chains R).map_comp _ _) _ _).trans
    (mappingCone.map_comp _ _ _ _ _ _ _ _ _)

theorem rmap_id (R : Type) [CommRing R] {U E : Spc} (f : U ⟶ E) (c : f ≫ 𝟙 E = 𝟙 U ≫ f) :
    rmap R f f (𝟙 U) (𝟙 E) c = 𝟙 _ := by
  unfold rmap
  exact (map_congr _ _ ((chains R).map_id _) ((chains R).map_id _) _ _).trans (mappingCone.map_id _)

theorem rpl_comp (q : ℕ) (i : ℤ) {U E U' E' U'' E'' : Scheme.{0}} (f : U ⟶ E) (f' : U' ⟶ E') (f'' : U'' ⟶ E'')
    (u : U' ⟶ U) (e : E' ⟶ E) (u' : U'' ⟶ U') (e' : E'' ⟶ E') (c : f' ≫ e = u ≫ f) (c' : f'' ≫ e' = u' ≫ f')
    (c'' : f'' ≫ (e' ≫ e) = (u' ≫ u) ≫ f) (n : ℤ) (y) :
    rpl q i f f'' (u' ≫ u) (e' ≫ e) c'' n y = rpl q i f' f'' u' e' c' n (rpl q i f f' u e c n y) := by
  simp only [rpl, rpull]
  rw [← HK_pull_comp, ← rmap_comp _ _ _ _ _ _ _ _ _ _ (by simp only [← Functor.map_comp, c'', Category.assoc])]
  congr 1

theorem rpl_id (q : ℕ) (i : ℤ) {U E : Scheme.{0}} (f : U ⟶ E) (c : f ≫ 𝟙 E = 𝟙 U ≫ f) (n : ℤ) (y) :
    rpl q i f f (𝟙 U) (𝟙 E) c n y = y := by
  simp only [rpl, rpull]
  rw [rmap_congr _ _ _ (sch.map_id _) (sch.map_id _) _ (by simp), rmap_id, HK_pull_id]

theorem rpl_bij (q : ℕ) (i : ℤ) {U E U' E' : Scheme.{0}} (f : U ⟶ E) (f' : U' ⟶ E') (u : U' ⟶ U) (e : E' ⟶ E)
    (c : f' ≫ e = u ≫ f) [IsIso u] [IsIso e] (n : ℤ) : Function.Bijective (rpl q i f f' u e c n) := by
  have c2 : f ≫ inv e = inv u ≫ f' := by
    rw [IsIso.eq_inv_comp, ← Category.assoc, ← c, Category.assoc, IsIso.hom_inv_id, Category.comp_id]
  refine Function.bijective_iff_has_inverse.2 ⟨rpl q i f' f (inv u) (inv e) c2 n, fun y => ?_, fun y => ?_⟩
  · rw [← rpl_comp q i f f' f u e (inv u) (inv e) c c2 (by simp), ]
    simp only [IsIso.inv_hom_id]
    exact rpl_id q i f _ n y
  · rw [← rpl_comp q i f' f f' (inv u) (inv e) u e c2 c (by simp)]
    simp only [IsIso.hom_inv_id]
    exact rpl_id q i f' _ n y

end LateralTheory.E.LeafConsPfA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfA =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfB =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafConsPfB", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConsPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConsPfA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafConsPfB
open LateralTheory.E.E4 LateralTheory.E.LeafGhostCut LateralTheory.E.EtaleTopologySheaves LateralTheory.E.LeafConsPfA

theorem rpl_congr (q : ℕ) (i : ℤ) {U E U' E' : Scheme.{0}} (f : U ⟶ E) (f' : U' ⟶ E') {u u2 : U' ⟶ U} {e e2 : E' ⟶ E}
    (hu : u = u2) (he : e = e2) (c : f' ≫ e = u ≫ f) (c2 : f' ≫ e2 = u2 ≫ f) (n : ℤ) (y) :
    rpl q i f f' u e c n y = rpl q i f f' u2 e2 c2 n y := by
  subst hu he; rfl

instance (B : Scheme.{0}) : IsIso (top B).hom := by show IsIso (Iso.refl B).hom; infer_instance

abbrev uT {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) :
    pullback (pullback.snd p (top B).hom ≫ (top B).hom) ι ⟶ pullback p ι :=
  pullback.map _ ι p ι (pullback.fst p (top B).hom) (𝟙 W) (𝟙 B) (by rw [Category.comp_id, pullback.condition]) (by simp)

theorem uT_comm {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) :
    prU p ι (top B) ≫ pullback.fst p (top B).hom = uT p ι ≫ pullback.fst p ι := (pullback.lift_fst _ _ _).symm

instance {Y B : Scheme.{0}} (p : Y ⟶ B) : IsIso (pullback.fst p (top B).hom) := by infer_instance
instance {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) : IsIso (uT p ι) := by infer_instance

theorem rpl_comp' (q : ℕ) (i : ℤ) {U E U' E' U'' E'' : Scheme.{0}} (f : U ⟶ E) (f' : U' ⟶ E') (f'' : U'' ⟶ E'')
    (u : U' ⟶ U) (e : E' ⟶ E) (u' : U'' ⟶ U') (e' : E'' ⟶ E') (c : f' ≫ e = u ≫ f) (c' : f'' ≫ e' = u' ≫ f')
    (n : ℤ) (y) :
    rpl q i f' f'' u' e' c' n (rpl q i f f' u e c n y) =
      rpl q i f f'' (u' ≫ u) (e' ≫ e) (by rw [← Category.assoc, c', Category.assoc, c, Category.assoc]) n y :=
  (rpl_comp q i f f' f'' u e u' e' c c' _ n y).symm

abbrev TT (q : ℕ) (i : ℤ) {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (n : ℤ) :=
  rpl q i (pullback.fst p ι) (prU p ι (top B)) (uT p ι) (pullback.fst p (top B).hom) (uT_comm p ι) n

abbrev TL (q : ℕ) (i : ℤ) {B W : Scheme.{0}} (ι : W ⟶ B) (n : ℤ) :=
  rpl q i ι (prB ι (top B)) (pullback.snd (top B).hom ι) (top B).hom pullback.condition n


theorem L1 {B Y0 Y1 Y2 : Scheme.{0}} (p : Y0 ⟶ B) (g1 : Y1 ⟶ Y0) (g2 : Y2 ⟶ Y1) :
    pullback.fst (g2 ≫ g1 ≫ p) (top B).hom ≫ g2 ≫ g1 =
      mY (g1 ≫ p) g2 (top B) ≫ mY p g1 (top B) ≫ pullback.fst p (top B).hom := by
  simp only [mY, pullback.map, Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc]


theorem L3 {B W Y : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) :
    uT p ι ≫ pullback.snd p ι = toBW p ι (top B) ≫ pullback.snd (top B).hom ι := by
  simp only [uT, toBW, pullback.map]
  erw [pullback.lift_snd, pullback.lift_snd]


theorem L2 {B W Y0 Y1 Y2 : Scheme.{0}} (ι : W ⟶ B) (p : Y0 ⟶ B) (g1 : Y1 ⟶ Y0) (g2 : Y2 ⟶ Y1) :
    uT (g2 ≫ g1 ≫ p) ι ≫ pullback.map (g2 ≫ g1 ≫ p) ι p ι (g2 ≫ g1) (𝟙 W) (𝟙 B) (by simp) (by simp) =
      mW (g1 ≫ p) g2 ι (top B) ≫ mW p g1 ι (top B) ≫ uT p ι := by
  apply pullback.hom_ext
  · have := L1 p g1 g2
    simp only [mY] at this
    simp only [uT, mW, mY, Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, pullback.map]
  · simp only [uT, mW, mY, Category.assoc, pullback.lift_snd, pullback.lift_snd_assoc, pullback.map]
    simp

theorem LeafGlob_pf : LateralTheory.E.LeafConsPf.LeafGlob := by
  intro q _ i B W Y0 Y1 Y2 ι _ p g1 g2 K0 K1 K2 L f g ℓ l0 l1 l2 lL r0 r1 r2 rL mf mg mℓ
  refine ⟨fun n y => l0 (top B) n (TT q i p ι n y), fun n y => l2 (top B) n (TT q i (g2 ≫ g1 ≫ p) ι n y),
    fun n c => lL (top B) n (TL q i ι n c), ?_, ?_, ?_, ?_⟩
  · intro n
    exact (r2.1 _ n).1.comp (rpl_bij _ _ _ _ _ _ _ _).1
  · intro n
    exact (rL.1 _ n).2.comp (rpl_bij _ _ _ _ _ _ _ _).2
  · intro n y
    have h1 := mf (top B) n (TT q i p ι n y)
    have h2 := mg (top B) n (rpl q i (prU p ι (top B)) (prU (g1 ≫ p) ι (top B)) (mW p g1 ι (top B)) (mY p g1 (top B))
      (pullback.lift_fst _ _ _).symm n (TT q i p ι n y))
    show l2 (top B) n _ = l0 (top B) n (TT q i p ι n y) ≫ (shiftFunctor _ n).map (f ≫ g)
    rw [Functor.map_comp]
    refine Eq.trans ?_ (Category.assoc _ _ _)
    rw [← h1, ← h2]
    refine congrArg (l2 (top B) n) ?_
    rw [rpl_comp', rpl_comp', rpl_comp']
    apply rpl_congr
    · simpa only [Category.assoc] using L2 ι p g1 g2
    · simpa only [Category.assoc] using L1 p g1 g2
  · intro n c
    have h := mℓ (top B) n (TL q i ι n c)
    refine Eq.trans ?_ h
    refine congrArg (l2 (top B) n) ?_
    rw [rpl_comp', rpl_comp']
    apply rpl_congr
    · simpa only [Category.assoc] using L3 (g2 ≫ g1 ≫ p) ι
    · simp only [toBY]; exact pullback.condition

end LateralTheory.E.LeafConsPfB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfB =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfC =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafConsPfC", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConsPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConsPfB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.LeafConsPfC

theorem LeafCons_of (hL : LateralTheory.E.LeafConsPf.LeafLoc) : LateralTheory.E.EtaleTopologySheaves.LeafCons :=
  LateralTheory.E.LeafConsPf.LeafCons_of hL LateralTheory.E.LeafConsPfB.LeafGlob_pf

end LateralTheory.E.LeafConsPfC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafConsPfC =====
