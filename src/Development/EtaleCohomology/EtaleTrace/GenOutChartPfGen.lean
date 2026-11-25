module

public import Development.EtaleCohomology.EtaleTrace.GenOutChartPf
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleTrace.GenOutChartPfRing, Development.EtaleCohomology.EtaleTrace.GenOutChartPfSect, Development.EtaleCohomology.EtaleTrace.GenOutChartPfGen

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfRing =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.GenOutChartPfRing", "h": "module\n\npublic import Development.EtaleCohomology.EtaleTrace.GenOutChartPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry MvPolynomial
attribute [local instance] MvPolynomial.gradedAlgebra

namespace LateralTheory.EtaleTrace.Cov

theorem homog_div_mem {k : Type} [Field k] {K : Type} [Field K] (κ : k →+* K) {N : ℕ} (w : Fin (N + 1) → K)
    (i : Fin (N + 1)) (R : Subring K) (hκ : ∀ c, κ c ∈ R) (hw : ∀ j, w j / w i ∈ R)
    (m : ℕ) (g : MvPolynomial (Fin (N + 1)) k) (hg : g.IsHomogeneous m) : eval₂ κ w g / w i ^ m ∈ R := by
  rw [eval₂_eq, Finset.sum_div]
  refine Subring.sum_mem _ fun d hd => ?_
  have hdeg : ∑ j, d j = m := by
    rw [← hg (mem_support_iff.mp hd), Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp)]
    simp
  have : (κ (AddMonoidAlgebra.coeff g d) * ∏ j, w j ^ d j) / w i ^ m = κ (AddMonoidAlgebra.coeff g d) * ∏ j, (w j / w i) ^ d j := by
    rw [mul_div_assoc]; congr 1
    simp_rw [div_pow]
    rw [Finset.prod_div_distrib, Finset.prod_pow_eq_pow_sum, hdeg]
  have hsupp : ∏ j ∈ d.support, w j ^ d j = ∏ j, w j ^ d j :=
    Finset.prod_subset (Finset.subset_univ _) (fun j _ hj => by simp [Finsupp.notMem_support_iff.mp hj])
  rw [hsupp, this]
  exact Subring.mul_mem _ (hκ _) (Subring.prod_mem _ fun j _ => Subring.pow_mem _ (hw j) _)

def chartVal {k : Type} [Field k] {K : Type} [Field K] (κ : k →+* K) {N : ℕ} (w : Fin (N + 1) → K) (i : Fin (N + 1))
    (hi : w i ≠ 0) :
    HomogeneousLocalization.Away (homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i) →+* K :=
  (IsLocalization.Away.lift (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k) (g := eval₂Hom κ w)
    (by simpa using hi.isUnit)).comp
    (algebraMap (HomogeneousLocalization.Away (homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i))
      (Localization.Away (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k)))

theorem chartVal_mk {k : Type} [Field k] {K : Type} [Field K] (κ : k →+* K) {N : ℕ} (w : Fin (N + 1) → K)
    (i : Fin (N + 1)) (hi : w i ≠ 0)
    (hx : (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k) ∈ homogeneousSubmodule (Fin (N + 1)) k 1)
    (m : ℕ) (g : MvPolynomial (Fin (N + 1)) k) (hg : g ∈ homogeneousSubmodule (Fin (N + 1)) k (m • 1)) :
    chartVal κ w i hi (HomogeneousLocalization.Away.mk _ hx m g hg) = eval₂ κ w g / w i ^ m := by
  simp only [chartVal, RingHom.comp_apply, HomogeneousLocalization.algebraMap_apply,
    HomogeneousLocalization.Away.val_mk, Localization.mk_eq_mk']
  rw [IsLocalization.Away.lift, IsLocalization.lift_mk'_spec]
  simp only [coe_eval₂Hom, eval₂_pow, eval₂_X]
  rw [mul_div_cancel₀ _ (pow_ne_zero _ hi)]

def SectOfLoc : Prop := ∀ (X : Scheme.{0}) [IsIntegral X] (U : X.Opens) (R : Subring X.functionField),
  (∀ z ∈ R, ∀ y ∈ U, z ∈ loc X y) →
  ∃ φ : R →+* Γ(X, U), ∀ (z : R) (y : X) (hy : y ∈ U),
    algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ U y hy (φ z)) = z

theorem ChartRing_of (h : SectOfLoc) : ChartRing := by
  intro k _ X _ p N w i hi U hU hx
  let ψ := chartVal (kHom p) w i hi
  have hR : ∀ z ∈ ψ.range, ∀ y ∈ U, z ∈ loc X y := by
    rintro _ ⟨a, rfl⟩ y hy
    obtain ⟨m, g, hg, rfl⟩ := HomogeneousLocalization.Away.mk_surjective _ hx a
    rw [chartVal_mk]
    have hg' : g.IsHomogeneous m := by
      simpa using (mem_homogeneousSubmodule _ _).1 hg
    exact homog_div_mem (kHom p) w i (loc X y) (fun c => kHom_mem_loc p y c) (fun j => hU y hy j) m g hg'
  obtain ⟨φ, hφ⟩ := h X U ψ.range hR
  refine ⟨φ.comp ψ.rangeRestrict, fun y hy m g hg => ?_⟩
  rw [RingHom.comp_apply, hφ]
  exact chartVal_mk (kHom p) w i hi hx m g hg

theorem GenOutChart_of_sect (h1 : SectOfLoc) (h2 : ChartGen) : GenOutChart :=
  GenOutChart_of (ChartRing_of h1) h2

end LateralTheory.EtaleTrace.Cov
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfRing =====

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfSect =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.GenOutChartPfSect", "h": "module\n\npublic import Development.EtaleCohomology.EtaleTrace.GenOutChartPfRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry TopologicalSpace

namespace LateralTheory.EtaleTrace.Cov

theorem alg_germ_eq (X : Scheme.{0}) [IsIntegral X] {V : X.Opens} (s : Γ(X, V)) {y w : X} (hy : y ∈ V) (hw : w ∈ V) :
    algebraMap (X.presheaf.stalk w) X.functionField (X.presheaf.germ V w hw s) =
      algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ V y hy s) := by
  have : Nonempty V := ⟨⟨y, hy⟩⟩
  rw [Scheme.algebraMap_germ_eq_germToFunctionField, Scheme.algebraMap_germ_eq_germToFunctionField]

theorem sect_exists (X : Scheme.{0}) [IsIntegral X] (U : X.Opens) (z : X.functionField)
    (hz : ∀ y ∈ U, z ∈ loc X y) : ∃ s : Γ(X, U), ∀ (y : X) (hy : y ∈ U),
      algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ U y hy s) = z := by
  have key : ∀ y : U, ∃ (V : X.Opens) (hV : y.1 ∈ V) (s : Γ(X, V)),
      algebraMap (X.presheaf.stalk y.1) X.functionField (X.presheaf.germ V y.1 hV s) = z := by
    intro y
    obtain ⟨a, ha⟩ := hz y.1 y.2
    obtain ⟨V, hyV, s, hs⟩ := X.presheaf.exists_germ_eq (x := y.1) a
    exact ⟨V, hyV, s, by rw [hs, ha]⟩
  choose V hV s hs using key
  let W : U → X.Opens := fun y => V y ⊓ U
  let sf : ∀ y : U, Γ(X, W y) := fun y => X.presheaf.map (homOfLE inf_le_left : W y ⟶ V y).op (s y)
  have hsf : ∀ (y : U) (w : X) (hw : w ∈ W y),
      algebraMap (X.presheaf.stalk w) X.functionField (X.presheaf.germ (W y) w hw (sf y)) = z := by
    intro y w hw
    simp only [sf, TopCat.Presheaf.germ_res_apply]
    rw [alg_germ_eq X (s y) (hV y) hw.1, hs]
  have hcompat : TopCat.Presheaf.IsCompatible X.presheaf W sf := by
    intro i j
    apply TopCat.Presheaf.section_ext X.sheaf
    intro w hw
    congr 1
    refine @Scheme.germToFunctionField_injective X _ (W i ⊓ W j) ⟨⟨w, hw⟩⟩ _ _ ?_
    rw [← @Scheme.algebraMap_germ_eq_germToFunctionField X _ (W i ⊓ W j) ⟨⟨w, hw⟩⟩ w hw,
      ← @Scheme.algebraMap_germ_eq_germToFunctionField X _ (W i ⊓ W j) ⟨⟨w, hw⟩⟩ w hw]
    simp only [TopCat.Presheaf.germ_res_apply]
    rw [hsf i w hw.1, hsf j w hw.2]
  obtain ⟨t, ht, -⟩ := TopCat.Sheaf.existsUnique_gluing' X.sheaf W U (fun y => homOfLE inf_le_right)
    (fun y hy => Opens.mem_iSup.2 ⟨⟨y, hy⟩, hV _, hy⟩) sf hcompat
  refine ⟨t, fun y hy => ?_⟩
  have h1 := hsf ⟨y, hy⟩ y (show y ∈ W ⟨y, hy⟩ from ⟨hV _, hy⟩)
  rw [← ht ⟨y, hy⟩] at h1
  change algebraMap _ _ (X.presheaf.germ (W ⟨y, hy⟩) y _
    (X.presheaf.map (homOfLE inf_le_right : W ⟨y, hy⟩ ⟶ U).op t)) = z at h1
  erw [TopCat.Presheaf.germ_res_apply] at h1
  exact h1

theorem sect_ext (X : Scheme.{0}) [IsIntegral X] (U : X.Opens) (s t : Γ(X, U))
    (h : ∀ (y : X) (hy : y ∈ U), algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ U y hy s) =
      algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ U y hy t)) : s = t := by
  apply TopCat.Presheaf.section_ext X.sheaf
  intro y hy
  have : s = t := by
    refine @Scheme.germToFunctionField_injective X _ U ⟨⟨y, hy⟩⟩ _ _ ?_
    rw [← @Scheme.algebraMap_germ_eq_germToFunctionField X _ U ⟨⟨y, hy⟩⟩ y hy,
      ← @Scheme.algebraMap_germ_eq_germToFunctionField X _ U ⟨⟨y, hy⟩⟩ y hy]
    exact h y hy
  rw [this]

theorem SectOfLoc_pf : SectOfLoc := by
  intro X _ U R hR
  have hex : ∀ z : R, ∃ s : Γ(X, U), ∀ (y : X) (hy : y ∈ U),
      algebraMap (X.presheaf.stalk y) X.functionField (X.presheaf.germ U y hy s) = z :=
    fun z => sect_exists X U z (hR z z.2)
  choose σ hσ using hex
  refine ⟨{ toFun := σ, map_one' := ?_, map_mul' := ?_, map_zero' := ?_, map_add' := ?_ }, hσ⟩
  · exact sect_ext X U _ _ fun y hy => by simp [hσ]
  · intro a b; exact sect_ext X U _ _ fun y hy => by simp [hσ]
  · exact sect_ext X U _ _ fun y hy => by simp [hσ]
  · intro a b; exact sect_ext X U _ _ fun y hy => by simp [hσ]

theorem GenOutChart_of_gen (h : ChartGen) : GenOutChart := GenOutChart_of_sect SectOfLoc_pf h

end LateralTheory.EtaleTrace.Cov
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfSect =====

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfGen =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.GenOutChartPfGen", "h": "module\n\npublic import Development.EtaleCohomology.EtaleTrace.GenOutChartPf\npublic import Development.EtaleCohomology.EtaleTrace.GenOutChartPfSect\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry MvPolynomial
attribute [local instance] MvPolynomial.gradedAlgebra

namespace LateralTheory.EtaleTrace.Cov

def chartMor {k : Type} [Field k] {X : Scheme.{0}} {N : ℕ} (i : Fin (N + 1)) (U : X.Opens)
    (hx : (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k) ∈ homogeneousSubmodule (Fin (N + 1)) k 1)
    (φ : HomogeneousLocalization.Away (homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i) →+* Γ(X, U)) :
    U.toScheme ⟶ PN k N :=
  U.toScheme.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (U.topIso.inv.hom.comp φ)) ≫
    Proj.awayι _ (MvPolynomial.X i) hx zero_lt_one

def ChartOverK : Prop := ∀ (k : Type) [Field k] {X : Scheme.{0}} [IsIntegral X] (p : X ⟶ S k) (N : ℕ)
  (w : Fin (N + 1) → X.functionField) (i : Fin (N + 1)), w i ≠ 0 → ∀ (U : X.Opens)
  (hx : (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k) ∈ homogeneousSubmodule (Fin (N + 1)) k 1)
  (φ : HomogeneousLocalization.Away (homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i) →+* Γ(X, U)),
  (∀ (y : X) (hy : y ∈ U) (m : ℕ) (g : MvPolynomial (Fin (N + 1)) k)
      (hg : g ∈ homogeneousSubmodule (Fin (N + 1)) k (m • 1)),
      algebraMap (X.presheaf.stalk y) X.functionField
        (X.presheaf.germ U y hy (φ (HomogeneousLocalization.Away.mk _ hx m g hg))) = eval₂ (kHom p) w g / w i ^ m) →
  chartMor i U hx φ ≫ PNto k N = U.ι ≫ p

def ChartGenOn : Prop := ∀ (k : Type) [Field k] {X : Scheme.{0}} [IsIntegral X] (p : X ⟶ S k) (N : ℕ)
  (w : Fin (N + 1) → X.functionField) (i : Fin (N + 1)), w i ≠ 0 → ∀ (U : X.Opens)
  (hx : (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k) ∈ homogeneousSubmodule (Fin (N + 1)) k 1)
  (φ : HomogeneousLocalization.Away (homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i) →+* Γ(X, U)),
  (∀ (y : X) (hy : y ∈ U) (m : ℕ) (g : MvPolynomial (Fin (N + 1)) k)
      (hg : g ∈ homogeneousSubmodule (Fin (N + 1)) k (m • 1)),
      algebraMap (X.presheaf.stalk y) X.functionField
        (X.presheaf.germ U y hy (φ (HomogeneousLocalization.Away.mk _ hx m g hg))) = eval₂ (kHom p) w g / w i ^ m) →
  GenOn p w U (chartMor i U hx φ)

theorem ChartGen_of (h1 : ChartOverK) (h2 : ChartGenOn) : ChartGen := by
  intro k _ X _ p N w i hi U hx φ hφ
  exact ⟨chartMor i U hx φ, h1 k p N w i hi U hx φ hφ, h2 k p N w i hi U hx φ hφ⟩

theorem GenOutChart_of_two (h1 : ChartOverK) (h2 : ChartGenOn) : GenOutChart :=
  GenOutChart_of_gen (ChartGen_of h1 h2)

end LateralTheory.EtaleTrace.Cov
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.GenOutChartPfGen =====
