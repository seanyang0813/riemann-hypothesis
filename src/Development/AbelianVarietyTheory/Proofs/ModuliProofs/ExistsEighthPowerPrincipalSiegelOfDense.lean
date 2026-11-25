module

import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelShapePrimitivityPullbackDescent
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LocallyOfFinitePresentation
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.GoodClass
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocGenOfTrivial
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleIsoLinCombSymmBiadditiveSubstitution
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSecImageNonzeroLocus
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.AdjointEndomorphismsCubeLBOfDenseFibres
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EighthPowerIntegerMatrixPrimitiveAdjoint
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LbIsoCubeGraphOfDenseFibres
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleTrivialIsoDescendField
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGenMovePow
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.SecBaseChangeAnySt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.PiTensorProduct
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianSchemeEighthPowerOfMatrixAction, Development.AbelianVarietyTheory.Proofs.ModuliProofs.CommutatorPairingE8SharpLevelPoints, Development.AbelianVarietyTheory.Proofs.ModuliProofs.DenseE8SharpAfterAdjoiningAllMatrices, Development.AbelianVarietyTheory.Proofs.ModuliProofs.E8SharpFamilyMatrixRelationsDense, Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqOneOfBiadditiveSliceTrivialEighthPower, Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSymmetricBiadditiveBundleEighthPower, Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelOnFactorOfEighthPowerAbelianScheme, Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8Form, Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8FormStatement, Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelAdjointPrimitiveOfDenseEighthPowers, Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilPairingDiagonalBundleOfEighthPowerForm, Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEighthPowerPrincipalSiegelOfDense

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianSchemeEighthPowerOfMatrixAction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianSchemeEighthPowerOfMatrixAction", "h": "module\n\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LocallyOfFinitePresentation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.GoodClass\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.MatrixPower

section General

variable {C : Type*} [Category* C] [CartesianMonoidalCategory C]

@[reducible] def retractGrpObj {G A : C} [GrpObj G] (i : A ⟶ G) (r : G ⟶ A) (hir : i ≫ r = 𝟙 A)
    [he : IsMonHom (r ≫ i)] : GrpObj A :=
  haveI : Mono i := (SplitMono.mk r hir).mono
  have h1 : ∀ {T : C}, ((1 : T ⟶ G) ≫ r) ≫ i = 1 := fun {T} => by
    rw [Category.assoc, MonObj.one_comp]
  have h2 : ∀ {T : C} (a b : T ⟶ A), ((a ≫ i * b ≫ i) ≫ r) ≫ i = a ≫ i * b ≫ i := fun a b => by
    rw [Category.assoc, MonObj.mul_comp]; simp [reassoc_of% hir]
  have h3 : (i⁻¹ ≫ r) ≫ i = i⁻¹ := by
    rw [Category.assoc, GrpObj.inv_comp]; simp [reassoc_of% hir]
  { one := (1 : 𝟙_ C ⟶ G) ≫ r
    mul := (fst A A ≫ i * snd A A ≫ i) ≫ r
    inv := i⁻¹ ≫ r
    one_mul := by
      rw [← cancel_mono i, Category.assoc, h2, MonObj.comp_mul, whiskerRight_fst_assoc,
        whiskerRight_snd_assoc, h1]
      simp [leftUnitor_hom]
    mul_one := by
      rw [← cancel_mono i, Category.assoc, h2, MonObj.comp_mul, whiskerLeft_fst_assoc,
        whiskerLeft_snd_assoc, h1]
      simp [rightUnitor_hom]
    mul_assoc := by
      rw [← cancel_mono i, Category.assoc, h2, Category.assoc, Category.assoc, h2,
        MonObj.comp_mul, whiskerRight_fst_assoc, whiskerRight_snd_assoc, h2,
        MonObj.comp_mul (A ◁ _), whiskerLeft_fst_assoc, whiskerLeft_snd_assoc, h2]
      simp [MonObj.comp_mul, _root_.mul_assoc]
    left_inv := by
      rw [← cancel_mono i, Category.assoc, h2, MonObj.comp_mul, lift_fst_assoc, lift_snd_assoc,
        h3, Category.assoc, h1]
      simp
    right_inv := by
      rw [← cancel_mono i, Category.assoc, h2, MonObj.comp_mul, lift_fst_assoc, lift_snd_assoc,
        h3, Category.assoc, h1]
      simp }

private theorem isMonHom_of_one_comp_of_mul_comp {M N : C} [MonObj M] [MonObj N] (f : M ⟶ N)
    (h1 : (1 : 𝟙_ C ⟶ M) ≫ f = 1)
    (h2 : (fst M M * snd M M) ≫ f = fst M M ≫ f * snd M M ≫ f) : IsMonHom f :=
  { one_hom := by rw [MonObj.one_eq_one M, MonObj.one_eq_one N, h1]
    mul_hom := by
      rw [MonObj.mul_eq_mul M, MonObj.mul_eq_mul N, h2, MonObj.comp_mul, tensorHom_fst,
        tensorHom_snd] }

theorem exists_grpObj_retract {G A : C} [GrpObj G] (i : A ⟶ G) (r : G ⟶ A) (hir : i ≫ r = 𝟙 A)
    [he : IsMonHom (r ≫ i)] : ∃ _ : GrpObj A, IsMonHom i ∧ IsMonHom r := by
  let gA : GrpObj A := retractGrpObj i r hir
  have hm : ∀ {T : C} (a b : T ⟶ A), a * b = (a ≫ i * b ≫ i) ≫ r := by
    intro T a b
    rw [Hom.mul_def]
    change lift a b ≫ (fst A A ≫ i * snd A A ≫ i) ≫ r = _
    rw [← Category.assoc, MonObj.comp_mul, lift_fst_assoc, lift_snd_assoc]
  have ho : ∀ {T : C}, (1 : T ⟶ A) = (1 : T ⟶ G) ≫ r := by
    intro T
    rw [Hom.one_def]
    change toUnit T ≫ (1 : 𝟙_ C ⟶ G) ≫ r = _
    rw [← Category.assoc, MonObj.comp_one]
  refine ⟨gA, ?_, ?_⟩
  · refine isMonHom_of_one_comp_of_mul_comp i ?_ ?_
    · rw [ho, Category.assoc, MonObj.one_comp]
    · rw [hm, Category.assoc, MonObj.mul_comp]
      simp only [Category.assoc, reassoc_of% hir]
  · refine isMonHom_of_one_comp_of_mul_comp r ho.symm ?_
    rw [hm]
    calc (fst G G * snd G G) ≫ r = ((fst G G * snd G G) ≫ (r ≫ i)) ≫ r := by
          simp only [Category.assoc, hir, Category.comp_id]
      _ = _ := by rw [MonObj.mul_comp]; simp only [Category.assoc]

variable [BraidedCategory C]

theorem comp_prod {n : Type*} (s : Finset n) {T X G : C} [GrpObj G] [IsCommMonObj G]
    (f : T ⟶ X) (g : n → (X ⟶ G)) : f ≫ ∏ u ∈ s, g u = ∏ u ∈ s, f ≫ g u := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty, MonObj.comp_one]
  | insert a s ha ih => rw [Finset.prod_insert ha, Finset.prod_insert ha, MonObj.comp_mul, ih]

theorem prod_comp {n : Type*} (s : Finset n) {T G H : C} [GrpObj G] [IsCommMonObj G]
    [GrpObj H] [IsCommMonObj H] (g : n → (T ⟶ G)) (f : G ⟶ H) [IsMonHom f] :
    (∏ u ∈ s, g u) ≫ f = ∏ u ∈ s, g u ≫ f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty, MonObj.one_comp]
  | insert a s ha ih => rw [Finset.prod_insert ha, Finset.prod_insert ha, MonObj.mul_comp, ih]

theorem exists_power [HasEqualizers C] {n : Type*} [Fintype n] [DecidableEq n] (o : n)
    (G : C) [GrpObj G] [IsCommMonObj G] (ρ : Matrix n n ℤ → (G ⟶ G))
    (hρ : ∀ m, IsMonHom (ρ m)) (hmul : ∀ m m', ρ (m * m') = ρ m' ≫ ρ m)
    (hadd : ∀ m m', ρ (m + m') = ρ m * ρ m') (hone : ρ 1 = 𝟙 G) :
    ∃ (A : C) (_ : GrpObj A) (_ : IsCommMonObj A) (_ : Retract A G) (pr : n → (G ⟶ A)),
      (∀ u, IsMonHom (pr u)) ∧
      (∀ (T : C) (y : n → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) ∧
      ∀ m u, ρ m ≫ pr u = ∏ v, pr v ^ m u v := by
  have : ∀ m, IsMonHom (ρ m) := hρ
  have hc : ∀ a b : Matrix n n ℤ, ρ a ≫ ρ b = ρ (b * a) := fun a b => (hmul b a).symm
  have h0 : ρ 0 = 1 := by
    have h := hadd 0 0
    rw [add_zero] at h
    exact mul_eq_left.mp h.symm
  have hneg : ∀ a, ρ (-a) = (ρ a)⁻¹ := fun a =>
    eq_inv_of_mul_eq_one_right (by rw [← hadd, add_neg_cancel, h0])
  have hsum : ∀ (s : Finset n) (f : n → Matrix n n ℤ), ρ (∑ v ∈ s, f v) = ∏ v ∈ s, ρ (f v) := by
    intro s f
    induction s using Finset.induction_on with
    | empty => rw [Finset.sum_empty, Finset.prod_empty, h0]
    | insert a s ha ih => rw [Finset.sum_insert ha, Finset.prod_insert ha, hadd, ih]
  have hzs : ∀ (k : ℤ) (a : Matrix n n ℤ), ρ (k • a) = ρ a ^ k := by
    intro k a
    refine Int.induction_on k ?_ ?_ ?_
    · rw [zero_smul, h0, zpow_zero]
    · intro j ih
      rw [add_smul, one_smul, hadd, ih, zpow_add_one]
    · intro j ih
      rw [sub_smul, one_smul, sub_eq_add_neg, hadd, ih, hneg, zpow_sub_one]
  have hidem : ρ (Matrix.single o o 1) ≫ ρ (Matrix.single o o 1) =
      ρ (Matrix.single o o 1) ≫ 𝟙 G := by
    rw [Category.comp_id, hc, Matrix.single_mul_single_same, _root_.mul_one]
  obtain ⟨A, i, r, hir, hri⟩ : ∃ (A : C) (i : A ⟶ G) (r : G ⟶ A),
      i ≫ r = 𝟙 A ∧ r ≫ i = ρ (Matrix.single o o 1) := by
    refine ⟨equalizer (ρ (Matrix.single o o 1)) (𝟙 G), equalizer.ι _ _, equalizer.lift _ hidem,
      ?_, equalizer.lift_ι _ _⟩
    apply equalizer.hom_ext
    rw [Category.assoc, equalizer.lift_ι, Category.id_comp]
    exact (equalizer.condition _ _).trans (Category.comp_id _)
  have hmono : Mono i := (SplitMono.mk r hir).mono
  have : IsMonHom (r ≫ i) := by rw [hri]; infer_instance
  obtain ⟨gA, hi, hr⟩ := exists_grpObj_retract i r hir
  have hcA : IsCommMonObj A :=
    (isCommMonObj_iff_isMulCommutative _).2 fun X => ⟨⟨fun a b => by
      show a * b = b * a
      rw [← cancel_mono i, MonObj.mul_comp, MonObj.mul_comp, mul_comm]⟩⟩
  refine ⟨A, gA, hcA, ⟨i, r, hir⟩,
    fun u => ρ (Matrix.single o u 1) ≫ r, fun u => inferInstance, ?_, ?_⟩
  · intro T y
    refine ⟨∏ v, y v ≫ i ≫ ρ (Matrix.single v o 1), fun u => ?_, fun x hx => ?_⟩
    · dsimp only
      rw [prod_comp, Finset.prod_eq_single u]
      · have h3 : ρ (Matrix.single u o 1) ≫ ρ (Matrix.single o u 1) ≫ r = r ≫ i ≫ r := by
          rw [← Category.assoc, hc, Matrix.single_mul_single_same, _root_.mul_one, ← hri,
            Category.assoc]
        simp only [Category.assoc]
        rw [h3, reassoc_of% hir, hir, Category.comp_id]
      · intro v _ hv
        have h3 : ρ (Matrix.single v o 1) ≫ ρ (Matrix.single o u 1) ≫ r = 1 := by
          have h5 : Matrix.single o u (1 : ℤ) * Matrix.single v o 1 = 0 := by
            simp [Ne.symm hv]
          rw [← Category.assoc, hc, h5, h0, MonObj.one_comp]
        simp only [Category.assoc]
        rw [h3, MonObj.comp_one, MonObj.comp_one]
      · intro h
        exact absurd (Finset.mem_univ u) h
    · dsimp only at hx
      have h1 : (1 : Matrix n n ℤ) = ∑ v, Matrix.single v v 1 := by
        ext a b
        by_cases hab : a = b
        · subst hab
          simp [Matrix.sum_apply, Matrix.single_apply]
        · rw [Matrix.sum_apply, Finset.sum_eq_zero]
          · exact Matrix.one_apply_ne hab
          · intro v _
            rw [Matrix.single_apply]
            split_ifs with h
            · exact absurd (h.1.symm.trans h.2) hab
            · rfl
      calc x = x ≫ ρ 1 := by rw [hone, Category.comp_id]
        _ = ∏ v, x ≫ ρ (Matrix.single v v 1) := by rw [h1, hsum, comp_prod]
        _ = _ := by
          refine Finset.prod_congr rfl fun v _ => ?_
          rw [← hx v]
          have h4 : ρ (Matrix.single o v 1) ≫ r ≫ i ≫ ρ (Matrix.single v o 1) =
              ρ (Matrix.single v v 1) := by
            rw [reassoc_of% hri, hc, Matrix.single_mul_single_same, hc,
              Matrix.single_mul_single_same]
            simp only [_root_.mul_one]
          simp only [Category.assoc, h4]
  · intro m u
    dsimp only
    have hrow : Matrix.single o u (1 : ℤ) * m = ∑ v, m u v • Matrix.single o v 1 := by
      ext a b
      by_cases ha : a = o
      · subst ha
        simp [Matrix.mul_apply, Matrix.sum_apply, Matrix.single_apply]
      · simp [Matrix.mul_apply, Matrix.sum_apply, Ne.symm ha]
    have := hcA
    rw [← Category.assoc, hc, hrow, hsum, prod_comp]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [hzs, GrpObj.zpow_comp]

end General

theorem abelianScheme_matrix_power : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] (ρ : Matrix (Fin 8) (Fin 8) ℤ → (G ⟶ G)), IsAbelianScheme G → (∀ m, IsMonHom (ρ m)) → (∀ m m', ρ (m * m') = ρ m' ≫ ρ m) → (∀ m m', ρ (m + m') = ρ m * ρ m') → ρ 1 = 𝟙 G → ∃ (A : Over S) (_ : GrpObj A) (pr : Fin 8 → (G ⟶ A)), IsAbelianScheme A ∧ (∀ u, IsMonHom (pr u)) ∧ (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) ∧ ∀ m u, ρ m ≫ pr u = (List.ofFn fun v => pr v ^ m u v).prod := by
  intro S G _ ρ hab hρ hmul hadd hone
  obtain ⟨hcomm, hsmooth, hproper, hgeo⟩ := hab
  obtain ⟨A, gA, hcA, R, pr, hpr, huniv, hact⟩ := exists_power (0 : Fin 8) G ρ hρ hmul hadd hone
  obtain ⟨-, -, -, hsm, -, -, -, -, hpro, -, hgc, -, -⟩ := GlobalTheory.Retract.over_properties R
  refine ⟨A, gA, pr, ⟨hcA, hsm hsmooth, hpro hproper, hgc hgeo⟩, hpr, huniv, fun m u => ?_⟩
  rw [hact, List.prod_ofFn]

end GlobalTheory.MatrixPower
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianSchemeEighthPowerOfMatrixAction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.CommutatorPairingE8SharpLevelPoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.CommutatorPairingE8SharpLevelPoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

noncomputable section
namespace GlobalTheory.SharpWeil

section Abstract
variable {G C : Type} [CommGroup G] [CommGroup C] {k : ℕ}

private theorem rel_one_one {R : G → C → Prop} (hex : ∀ x, x ^ k = 1 → ∃! c, R x c)
    (hmul : ∀ x x' c c', R x c → R x' c' → R (x * x') (c * c')) : R 1 1 := by
  obtain ⟨c, hc, hu⟩ := hex 1 (one_pow k)
  have hcc : c * c = c := hu _ (by simpa using hmul 1 1 c c hc hc)
  have hc1 : c = 1 := by simpa using hcc
  rwa [hc1] at hc

private theorem rel_inv_of_rel {R : G → C → Prop} (hex : ∀ x, x ^ k = 1 → ∃! c, R x c)
    (hmul : ∀ x x' c c', R x c → R x' c' → R (x * x') (c * c')) {x : G} {c : C} (hx : x ^ k = 1)
    (h : R x c) : R x⁻¹ c⁻¹ := by
  obtain ⟨d, hd, -⟩ := hex x⁻¹ (by rw [inv_pow, hx, inv_one])
  have h1 : R 1 (c * d) := by simpa using hmul _ _ _ _ h hd
  obtain ⟨e, -, hu⟩ := hex 1 (one_pow k)
  have hcd : c * d = 1 := (hu _ h1).trans (hu _ (rel_one_one hex hmul)).symm
  rwa [eq_inv_of_mul_eq_one_right hcd] at hd

private theorem rel_pow_of_rel {R : G → C → Prop} (hex : ∀ x, x ^ k = 1 → ∃! c, R x c)
    (hmul : ∀ x x' c c', R x c → R x' c' → R (x * x') (c * c')) {x : G} {c : C} (h : R x c) (n : ℕ) :
    R (x ^ n) (c ^ n) := by
  induction n with
  | zero => simpa using rel_one_one hex hmul
  | succ n ih => rw [pow_succ, pow_succ]; exact hmul _ _ _ _ ih h

private theorem rel_zpow_of_rel {R : G → C → Prop} (hex : ∀ x, x ^ k = 1 → ∃! c, R x c)
    (hmul : ∀ x x' c c', R x c → R x' c' → R (x * x') (c * c')) {x : G} {c : C} (hx : x ^ k = 1)
    (h : R x c) (n : ℤ) : R (x ^ n) (c ^ n) := by
  cases n with
  | ofNat n => simpa using rel_pow_of_rel hex hmul h n
  | negSucc n =>
    rw [zpow_negSucc, zpow_negSucc]
    exact rel_inv_of_rel hex hmul (by rw [← pow_mul, mul_comm, pow_mul, hx, one_pow]) (rel_pow_of_rel hex hmul h (n + 1))

theorem rel_prod {R : G → C → Prop} (hex : ∀ x, x ^ k = 1 → ∃! c, R x c)
    (hmul : ∀ x x' c c', R x c → R x' c' → R (x * x') (c * c')) {I : Type} (s : Finset I) (q : I → G) (c : I → C)
    (hq : ∀ i, q i ^ k = 1) (h : ∀ i, R (q i) (c i)) (a : I → ℤ) :
    R (∏ i ∈ s, q i ^ a i) (∏ i ∈ s, c i ^ a i) := by
  classical
  refine Finset.induction_on s (by simpa using rel_one_one hex hmul) ?_
  intro i s hi ih
  rw [Finset.prod_insert hi, Finset.prod_insert hi]
  exact hmul _ _ _ _ (rel_zpow_of_rel hex hmul (hq i) (h i) (a i)) ih

theorem prod_zpow_pow {I : Type} [Fintype I] (q : I → G) (hq : ∀ i, q i ^ k = 1) (a : I → ℤ) :
    (∏ i, q i ^ a i) ^ k = 1 := by
  rw [← Finset.prod_pow]
  refine Finset.prod_eq_one fun i _ => ?_
  rw [← zpow_natCast, ← zpow_mul, mul_comm (a i), zpow_mul, zpow_natCast, hq i, one_zpow]

theorem zpow_sum' {I : Type} (s : Finset I) (ζ : C) (a : I → ℤ) : ζ ^ (∑ i ∈ s, a i) = ∏ i ∈ s, ζ ^ a i := by
  classical
  refine Finset.induction_on s (by simp) ?_
  intro i s hi ih
  rw [Finset.sum_insert hi, Finset.prod_insert hi, zpow_add, ih]

theorem rel_biprod {R : G → G → C → Prop} (hex : ∀ x y, x ^ k = 1 → y ^ k = 1 → ∃! c, R x y c)
    (hmul : ∀ x x' y c c', R x y c → R x' y c' → R (x * x') y (c * c'))
    (hsymm : ∀ x y c, R x y c → R y x c⁻¹) {I : Type} [Fintype I] (q : I → G) (ζ : C) (ω : I → I → ℤ)
    (hq : ∀ i, q i ^ k = 1) (h : ∀ i j, R (q i) (q j) (ζ ^ ω i j)) (a b : I → ℤ) :
    R (∏ i, q i ^ a i) (∏ i, q i ^ b i) (ζ ^ ∑ i, ∑ j, a i * b j * ω i j) := by
  have hy : (∏ j, q j ^ b j) ^ k = 1 := prod_zpow_pow q hq b
  have hrow : ∀ i, R (q i) (∏ j, q j ^ b j) (ζ ^ ∑ j, b j * ω i j) := by
    intro i
    have H : R (∏ j, q j ^ b j) (q i) (∏ j, ((ζ ^ ω i j)⁻¹) ^ b j) :=
      rel_prod (R := fun x c => R x (q i) c) (fun x hx => hex x (q i) hx (hq i))
        (fun x x' c c' h1 h2 => hmul x x' (q i) c c' h1 h2) Finset.univ q (fun j => (ζ ^ ω i j)⁻¹) hq
        (fun j => hsymm _ _ _ (h i j)) b
    have e : ζ ^ ∑ j, b j * ω i j = (∏ j, ((ζ ^ ω i j)⁻¹) ^ b j)⁻¹ := by
      rw [zpow_sum', ← Finset.prod_inv_distrib]
      refine Finset.prod_congr rfl fun j _ => ?_
      rw [inv_zpow, inv_inv, ← zpow_mul, mul_comm (b j)]
    rw [e]
    exact hsymm _ _ _ H
  have H : R (∏ i, q i ^ a i) (∏ j, q j ^ b j) (∏ i, (ζ ^ ∑ j, b j * ω i j) ^ a i) :=
    rel_prod (R := fun x c => R x (∏ j, q j ^ b j) c) (fun x hx => hex x _ hx hy)
      (fun x x' c c' h1 h2 => hmul x x' _ c c' h1 h2) Finset.univ q (fun i => ζ ^ ∑ j, b j * ω i j) hq hrow a
  have e : ζ ^ ∑ i, ∑ j, a i * b j * ω i j = ∏ i, (ζ ^ ∑ j, b j * ω i j) ^ a i := by
    rw [zpow_sum']
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [← zpow_mul, Finset.sum_mul]
    congr 1
    refine Finset.sum_congr rfl fun j _ => ?_
    ring
  rw [e]
  exact H

end Abstract

theorem eq_sum_basis {n : ℕ} {M : Type} [AddCommGroup M] (bas : (Fin n → ℤ) ≃ₗ[ℤ] M) (X : M) :
    X = ∑ i, bas.symm X i • bas (Pi.single i 1) := by
  apply bas.symm.injective

  rw [map_sum]
  simp only [map_zsmul, LinearEquiv.symm_apply_apply]
  funext j
  simp [Finset.sum_apply, Pi.single_apply]

def omegaLin (h : ℕ) : (Fin h ⊕ Fin h → ℤ) →ₗ[ℤ] (Fin h ⊕ Fin h → ℤ) →ₗ[ℤ] ℤ :=
  LinearMap.mk₂ ℤ omegaStd
    (fun a a' b => by simp only [omegaStd, Pi.add_apply, ← Finset.sum_add_distrib]; congr 1; funext i; ring)
    (fun c a b => by simp only [omegaStd, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]; congr 1; funext i; ring)
    (fun a b b' => by simp only [omegaStd, Pi.add_apply, ← Finset.sum_add_distrib]; congr 1; funext i; ring)
    (fun c a b => by simp only [omegaStd, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]; congr 1; funext i; ring)

theorem form_eq {h g : ℕ} {W : Matrix (Fin 8) (Fin 8) ℤ}
    {bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))} (hb : IsSharpBasis W bas)
    (X Y : Fin 8 → (Fin h ⊕ Fin h → ℤ)) :
    ∑ u, ∑ v, (W + W.transpose) u v * omegaStd (X u) (Y v) =
      ∑ i, ∑ j, bas.symm X i * bas.symm Y j * Out.stdSymp g i j := by
  have hω : ∀ a b : Fin h ⊕ Fin h → ℤ, omegaStd a b = omegaLin h a b := fun a b => by simp [omegaLin]
  have hX : ∀ u, X u = ∑ i, bas.symm X i • bas (Pi.single i 1) u := fun u => by
    conv_lhs => rw [eq_sum_basis bas X]
    simp [Finset.sum_apply]
  have hY : ∀ v, Y v = ∑ j, bas.symm Y j • bas (Pi.single j 1) v := fun v => by
    conv_lhs => rw [eq_sum_basis bas Y]
    simp [Finset.sum_apply]
  have hs : ∀ i j, Out.stdSymp g i j = ∑ u, ∑ v, (W + W.transpose) u v *
      omegaLin h (bas (Pi.single i 1) u) (bas (Pi.single j 1) v) := fun i j => by
    rw [← hb i j]; simp only [hω]

  simp only [hs, hω, hX, hY, map_sum, map_zsmul, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
  Finset.mul_sum]
  refine (Finset.sum_congr rfl fun u _ => Finset.sum_comm).trans ?_
  refine Finset.sum_comm.trans ?_
  refine (Finset.sum_congr rfl fun i _ =>
    (Finset.sum_congr rfl fun u _ => Finset.sum_comm).trans Finset.sum_comm).trans ?_
  refine Finset.sum_comm.trans ?_
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
  ring

theorem pull_unitS {o K : Type} [CommRing o] [CommRing K] {S : Scheme.{0}} (s : S ⟶ Sp o) (p : Sp K ⟶ S)
    (β : o →+* K) (u : oˣ) (z : Kˣ) (hp : p ≫ s = spMap β) (hz : (z : K) = β u) :
    Units.map p.appTop.hom.toMonoidHom (unitS s u) = unitOn z := by
  apply Units.ext
  have hc := congrArg (fun f : Sp K ⟶ Sp o => f.appTop.hom (unitOn u).val) hp
  simp only [unitS, Units.coe_map, MonoidHom.coe_coe, RingHom.toMonoidHom_eq_coe, Scheme.Hom.comp_appTop,
    CommRingCat.hom_comp, RingHom.comp_apply] at hc ⊢
  rw [hc]
  unfold unitOn spMap Sp
  have hn := congrArg (fun φ => φ.hom (u : o)) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom β))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at hn
  simp only [Units.coe_map, hz]
  exact hn.symm

end GlobalTheory.SharpWeil

namespace GlobalTheory


open SharpWeil in
theorem weilIs_sharp_levelPoints : Out.Laws → ∀ (h g : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))) (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (S : Scheme.{0}) [IsLocallyNoetherian S] (s : S ⟶ Sp o) (t : TObj g k J b s) (A : Over S) [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (t.A ⟶ A)) (lev : (Fin h ⊕ Fin h → ℤ) → (𝟙_ (Over S) ⟶ A)), IsSharpBasis W bas → (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ t.A, ∀ u, x ≫ pr u = y u) → (∀ x y, lev (x + y) = lev x * lev y) → (∀ i u, (t.pt i ≫ pr u).left = (lev (bas (Pi.single i 1) u)).left) → ∀ (K : Type) [Field K] (p : Sp K ⟶ S) (β : o →+* K) (z : Kˣ), p ≫ s = spMap β → (z : K) = β b.ζ → ∀ (X Y : Fin 8 → (Fin h ⊕ Fin h → ℤ)) (y y' : Over.mk p ⟶ t.A), (∀ u, y ≫ pr u = toUnit _ ≫ lev (X u)) → (∀ u, y' ≫ pr u = toUnit _ ≫ lev (Y u)) → Out.WeilIs t.A t.L k y y' (unitOn z ^ ∑ u, ∑ v, (W + W.transpose) u v * omegaStd (X u) (Y v)) := by
  intro hL h g W J bas k o _ b S _ s t A _ _ pr lev hb hpr huniv hlev hpt K _ p β z hps hz X Y y y' hy hy'
  have := t.ab.comm
  let e : Over.mk p ⟶ Out.baseOver S := Over.homMk p (by simp)
  let q : Fin (2 * g) → (Over.mk p ⟶ t.A) := fun i => e ≫ t.pt i
  obtain ⟨hex, hmul, -, -⟩ := hL.weil S t.pol k (Over.mk p)
  have hq : ∀ i, q i ^ k = 1 := fun i => by
    simp only [q]
    rw [← MonObj.comp_pow, t.torsion i, MonObj.comp_one]
  have hpair : ∀ i j, Out.WeilIs t.A t.L k (q i) (q j) (unitOn z ^ Out.stdSymp g i j) := fun i j => by
    have H := CommPairing.weilIs_pull hL.globalFns t.ab t.isLB e (t.pairing i j)
    have e1 : Units.map e.left.appTop.hom.toMonoidHom (unitS s b.ζ) = unitOn z := pull_unitS s p β b.ζ z hps hz
    rwa [map_zpow, e1] at H
  have htu : (toUnit (Over.mk p)).left = e.left :=
    congrArg Over.Hom.left (toUnit_unique (toUnit (Over.mk p)) (Over.homMk p (by simp) : Over.mk p ⟶ 𝟙_ (Over S)))
  have hqlev : ∀ i u, q i ≫ pr u = toUnit (Over.mk p) ≫ lev (bas (Pi.single i 1) u) := fun i u => by
    apply Over.OverMorphism.ext
    simp only [q]
    rw [Category.assoc, Over.comp_left, hpt i u, Over.comp_left, htu]
  let levHom : Multiplicative (Fin h ⊕ Fin h → ℤ) →* (𝟙_ (Over S) ⟶ A) :=
    MonoidHom.mk' (fun a => lev a.toAdd) (fun a c => hlev _ _)
  let ψ : (𝟙_ (Over S) ⟶ A) →* (Over.mk p ⟶ A) :=
    MonoidHom.mk' (fun f => toUnit (Over.mk p) ≫ f) (fun f f' => MonObj.comp_mul _ f f')
  have hprod : ∀ (V : Fin 8 → Fin h ⊕ Fin h → ℤ) (w : Over.mk p ⟶ t.A),
      (∀ u, w ≫ pr u = toUnit (Over.mk p) ≫ lev (V u)) → w = ∏ i, q i ^ bas.symm V i := by
    intro V w hw
    obtain ⟨x0, -, hu⟩ := huniv (Over.mk p) (fun u => w ≫ pr u)
    refine (hu w fun u => rfl).trans (hu _ fun u => ?_).symm
    have := hpr u
    let φ : (Over.mk p ⟶ t.A) →* (Over.mk p ⟶ A) :=
      MonoidHom.mk' (fun x => x ≫ pr u) (fun a c => MonObj.mul_comp a c (pr u))
    have hV : V u = ∑ i, bas.symm V i • bas (Pi.single i 1) u := by
      conv_lhs => rw [eq_sum_basis bas V]
      simp [Finset.sum_apply]
    have h1 : (∏ i, q i ^ bas.symm V i) ≫ pr u = ∏ i, (q i ≫ pr u) ^ bas.symm V i := by
      change φ (∏ i, q i ^ bas.symm V i) = ∏ i, (φ (q i)) ^ bas.symm V i
      simp only [map_prod, map_zpow]
    have h2 : toUnit (Over.mk p) ≫ lev (V u) =
        ∏ i, (toUnit (Over.mk p) ≫ lev (bas (Pi.single i 1) u)) ^ bas.symm V i := by
      change ψ (levHom (Multiplicative.ofAdd (V u))) =
        ∏ i, (ψ (levHom (Multiplicative.ofAdd (bas (Pi.single i 1) u)))) ^ bas.symm V i
      rw [hV, ofAdd_sum]
      simp only [ofAdd_zsmul, map_prod, map_zpow]
    rw [h1, hw u, h2]
    exact Finset.prod_congr rfl fun i _ => by rw [hqlev i u]
  rw [form_eq hb X Y, hprod X y hy, hprod Y y' hy']
  exact rel_biprod (R := fun a c d => Out.WeilIs t.A t.L k a c d) (fun a c ha hc => hex a c ha hc)
    (fun a a' c d d' h1 h2 => hmul a a' c d d' h1 h2) (fun a c d H => CommPairing.weilIs_symm t.isLB H)
    q (unitOn z) (Out.stdSymp g) hq hpair (bas.symm X) (bas.symm Y)

end GlobalTheory
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.CommutatorPairingE8SharpLevelPoints =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.DenseE8SharpAfterAdjoiningAllMatrices =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.DenseE8SharpAfterAdjoiningAllMatrices", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

noncomputable section
namespace GlobalTheory.SharpExt

variable {o : Type} [CommRing o] {S S' : Scheme.{0}} {g k : ℕ} {J : Type} {b : TBase o k} {s : S ⟶ Sp o}
  {s' : S' ⟶ Sp o}

theorem isMonHom_prod {G H : Over S} [GrpObj G] [GrpObj H] [IsCommMonObj H] {I : Type} (T : Finset I)
    (f : I → (G ⟶ H)) (hf : ∀ i, IsMonHom (f i)) : IsMonHom (∏ i ∈ T, f i) :=
  Finset.prod_induction f (fun x => IsMonHom x) (fun x y _ _ => GlobalTheory.Serre.isMonHom_mul x y) GlobalTheory.Serre.isMonHom_one
    fun i _ => hf i

def matEnd (e : Fin 8 → Fin 8 → J) (t : TObj g k J b s) (m : Matrix (Fin 8) (Fin 8) ℤ) : t.A ⟶ t.A :=
  letI := t.ab.comm
  ∏ u, ∏ v, t.act (e u v) ^ m u v

theorem isMonHom_matEnd (e : Fin 8 → Fin 8 → J) (t : TObj g k J b s) (m : Matrix (Fin 8) (Fin 8) ℤ) :
    IsMonHom (matEnd e t m) :=
  letI := t.ab.comm
  isMonHom_prod _ _ fun u => isMonHom_prod _ _ fun v =>
    haveI := t.hom (e u v)
    GlobalTheory.Serre.isMonHom_zpow _ _

def ext (e : Fin 8 → Fin 8 → J) (t : TObj g k J b s) : TObj g k (J ⊕ Matrix (Fin 8) (Fin 8) ℤ) b s :=
  { t with
    act := Sum.elim t.act (matEnd e t)
    hom := fun j => match j with
      | .inl j => t.hom j
      | .inr m => isMonHom_matEnd e t m }

theorem tMap_ext (e : Fin 8 → Fin 8 → J) {t : TObj g k J b s} {t' : TObj g k J b s'} {f : S' ⟶ S}
    (H : TMap t' t f) : TMap (ext e t') (ext e t) f := by
  obtain ⟨φ, h, hL, hpt, hact⟩ := H
  refine ⟨φ, h, hL, hpt, ?_⟩
  rintro (j | m)
  · exact hact j
  · letI := t.ab.comm
    letI := t'.ab.comm
    let U : Over.mk (t'.A.hom ≫ f) ⟶ t.A := Over.homMk φ h.1.w
    have key : pushHom h t'.A (matEnd e t' m) = preHom (G := t.A) U (matEnd e t m) := by
      simp only [matEnd, map_prod, map_zpow]
      refine Finset.prod_congr rfl fun u _ => Finset.prod_congr rfl fun v _ => congrArg (· ^ m u v) ?_
      exact Over.OverMorphism.ext (hact _)
    exact congrArg (fun q => q.left) key

theorem isSharp_ext {h : ℕ} {W : Matrix (Fin 8) (Fin 8) ℤ} {a : J → Matrix (Fin 8) (Fin 8) ℤ}
    {bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))} {e : Fin 8 → Fin 8 → J}
    (he : ∀ u v, a (e u v) = Matrix.single u v 1) {t : TObj g k J b s} {c : SiegPre h k (b.ζ : o) s}
    (H : IsSharp W a bas t c) : IsSharp W (Sum.elim a id) bas (ext e t) c := by
  obtain ⟨pr, hmon, huniv, hL, hmat, hpt⟩ := H
  refine ⟨pr, hmon, huniv, hL, ?_, hpt⟩
  have hpr : ∀ u v w, t.act (e u v) ≫ pr w = if w = u then pr v else 1 := by
    intro u v w
    rw [hmat, he, List.prod_ofFn]
    split_ifs with hw
    · subst hw
      rw [Finset.prod_eq_single v] <;> simp +contextual [eq_comm]
    · refine Finset.prod_eq_one fun i _ => ?_
      simp [Ne.symm hw]
  rintro (j | m) w
  · exact hmat j w
  · letI := t.ab.comm
    haveI := hmon w
    let P : (t.A ⟶ t.A) →* (t.A ⟶ c.A) := MonoidHom.mk' (· ≫ pr w) fun x y => MonObj.mul_comp x y (pr w)
    have hP : ∀ x, P x = x ≫ pr w := fun _ => rfl
    have key : P (matEnd e t m) = (List.ofFn fun v => pr v ^ m w v).prod := by
      simp only [matEnd, map_prod, map_zpow]
      simp only [hP, hpr]
      rw [List.prod_ofFn, Finset.prod_eq_single w]
      · simp
      · intro u _ hu
        simp [Ne.symm hu]
      · simp
    exact key

end GlobalTheory.SharpExt

namespace GlobalTheory

open SharpExt

theorem exists_dense_sharp_all_matrices : ∀ (h g : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) (a : J → Matrix (Fin 8) (Fin 8) ℤ) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))) (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (em : o →+* ℂ) (S : Scheme.{0}) (s : S ⟶ Sp o) (t : TObj g k J b s), (∀ u v, ∃ j, a j = Matrix.single u v 1) → Dense (fromSet em (SharpClass (b := b) W a bas em) t) → ∃ t' : TObj g k (J ⊕ Matrix (Fin 8) (Fin 8) ℤ) b s, Dense (fromSet em (SharpClass (b := b) W (Sum.elim a id) bas em) t') ∧ ∀ c : SiegPre h k (b.ζ : o) s, IsSharp W (Sum.elim a id) bas t' c → IsSharp W a bas t c := by
  intro h g W J a bas k o _ b em S s t he hd
  choose e he using he
  refine ⟨SharpExt.ext e t, hd.mono ?_, ?_⟩
  · rintro p ⟨K, _, x, hp, K₀, _, β, i, j, t₀, tx, tc, h₁, h₂, h₃, h₄, h₅, c, hc, hs⟩
    exact ⟨K, _, x, hp, K₀, _, β, i, j, SharpExt.ext e t₀, SharpExt.ext e tx, SharpExt.ext e tc, h₁, h₂,
      tMap_ext e h₃, tMap_ext e h₄, tMap_ext e h₅, c, hc, isSharp_ext he hs⟩
  · rintro c ⟨pr, hmon, huniv, hL, hmat, hpt⟩
    exact ⟨pr, hmon, huniv, hL, fun j u => hmat (.inl j) u, hpt⟩

end GlobalTheory
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.DenseE8SharpAfterAdjoiningAllMatrices =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.E8SharpFamilyMatrixRelationsDense =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.E8SharpFamilyMatrixRelationsDense", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

noncomputable section
namespace GlobalTheory.SharpFamRel

section Group

theorem epi_of_isPullback {K : Type} [Field K] {S' : Scheme.{0}} {f : S' ⟶ Sp K} [Nonempty S'] {X₀ X : Scheme.{0}}
    {p₀ : X₀ ⟶ Sp K} {p : X ⟶ S'} {h : X ⟶ X₀} (H : IsPullback h p p₀ f) : Epi h := by
  have hs : Surjective f := ⟨fun y => by
    obtain ⟨z⟩ := ‹Nonempty S'›
    exact ⟨z, Subsingleton.elim _ _⟩⟩
  have : Flat h := MorphismProperty.of_isPullback H.flip inferInstance
  have : Surjective h := MorphismProperty.of_isPullback H.flip hs
  exact Flat.epi_of_flat_of_surjective h

variable {S S' : Scheme.{0}} {G : Over S} {G' : Over S'} [GrpObj G] [GrpObj G'] {f : S' ⟶ S} {φ : G'.left ⟶ G.left}
  (h : IsGrpPullback G' G f φ)

section Points

variable {T : Over S} {T' : Over S'} (U : Over.mk (T'.hom ≫ f) ⟶ T)

theorem eq_up {x' y' : T' ⟶ G'} {x y : T ⟶ G} (hx : pushPt h.1.w x' = U ≫ x) (hy : pushPt h.1.w y' = U ≫ y)
    (e : x = y) : x' = y' := by
  subst e
  have e' : x'.left ≫ φ = y'.left ≫ φ := congrArg CommaMorphism.left (hx.trans hy.symm)
  exact Over.OverMorphism.ext (h.1.hom_ext e' (by rw [Over.w x', Over.w y']))

theorem eq_down (hU : Epi U.left) {x' y' : T' ⟶ G'} {x y : T ⟶ G} (hx : pushPt h.1.w x' = U ≫ x)
    (hy : pushPt h.1.w y' = U ≫ y) (e : x' = y') : x = y := by
  subst e
  apply Over.OverMorphism.ext
  rw [← cancel_epi U.left]
  simpa using congrArg CommaMorphism.left (hx.symm.trans hy)

theorem push_mul {x' y' : T' ⟶ G'} {x y : T ⟶ G} (hx : pushPt h.1.w x' = U ≫ x) (hy : pushPt h.1.w y' = U ≫ y) :
    pushPt h.1.w (x' * y') = U ≫ (x * y) := by
  have hm := h.2 T' x' y' (pushPt h.1.w x') (pushPt h.1.w y') rfl rfl
  rw [hx, hy, ← MonObj.comp_mul] at hm
  exact Over.OverMorphism.ext hm.symm

theorem push_comp {x' : T' ⟶ G'} {x : T ⟶ G} (hx : pushPt h.1.w x' = U ≫ x) {a' : G' ⟶ G'} {a : G ⟶ G}
    (ha : a'.left ≫ φ = φ ≫ a.left) : pushPt h.1.w (x' ≫ a') = U ≫ x ≫ a := by
  apply Over.OverMorphism.ext
  have hx' : x'.left ≫ φ = U.left ≫ x.left := congrArg CommaMorphism.left hx
  simp only [pushPt, Over.homMk_left, Over.comp_left]
  rw [Category.assoc, ha, ← Category.assoc, hx', Category.assoc]

end Points

def selfMap : Over.mk (G'.hom ≫ f) ⟶ G := Over.homMk φ h.1.w

theorem push_id : pushPt h.1.w (𝟙 G') = selfMap h ≫ 𝟙 G := by
  apply Over.OverMorphism.ext
  simp [pushPt, selfMap]

theorem push_end {a' : G' ⟶ G'} {a : G ⟶ G} (ha : a'.left ≫ φ = φ ≫ a.left) : pushPt h.1.w a' = selfMap h ≫ a := by
  apply Over.OverMorphism.ext
  simpa [pushPt, selfMap] using ha

end Group

def baseMap {S S' : Scheme.{0}} (f : S' ⟶ S) : Over.mk ((Out.baseOver S').hom ≫ f) ⟶ Out.baseOver S :=
  Over.homMk f ((Category.comp_id _).trans (Category.id_comp _).symm)

theorem zpow_finsetSum {G I : Type} [CommGroup G] (x : G) (s : Finset I) (n : I → ℤ) :
    x ^ (∑ i ∈ s, n i) = ∏ i ∈ s, x ^ n i := by
  classical
  refine Finset.induction_on s (by simp) fun i s hi ih => ?_
  rw [Finset.sum_insert hi, Finset.prod_insert hi, zpow_add, ih]

theorem ext_of_dense {S : Scheme.{0}} {T G : Over S} [IsReduced T.left] (hT : IsOpenMap T.hom) [IsSeparated G.hom]
    (f g : T ⟶ G) {D : Set S} (hD : Dense D)
    (H : ∀ p ∈ D, ∃ (Z Y : Scheme.{0}) (ψ : Z ⟶ T.left) (q : Z ⟶ Y) (x : Y ⟶ S), IsPullback ψ q T.hom x ∧
      p ∈ Set.range x ∧ ψ ≫ f.left = ψ ≫ g.left) : f = g := by
  choose Z Y ψ q x hpb hx hψ using H
  let inc : (∐ fun p : D => Z p.1 p.2) ⟶ T.left := Sigma.desc fun p => ψ p.1 p.2
  have hinc : inc ≫ f.left = inc ≫ g.left := by
    refine Sigma.hom_ext _ _ fun p => ?_
    simp only [inc, Sigma.ι_desc_assoc]
    exact hψ p.1 p.2
  have hsub : T.hom.base ⁻¹' D ⊆ Set.range inc.base := by
    intro a ha
    obtain ⟨y, hy⟩ := hx _ ha
    obtain ⟨z, hz₁, -⟩ := Scheme.Pullback.exists_preimage_pullback a y hy.symm
    refine ⟨(Sigma.ι (fun p : D => Z p.1 p.2) ⟨_, ha⟩).base ((hpb _ ha).isoPullback.inv.base z), ?_⟩
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, Sigma.ι_desc]
    show ((hpb _ ha).isoPullback.inv ≫ ψ _ ha) z = a
    rw [IsPullback.isoPullback_inv_fst]
    exact hz₁
  have : IsDominant inc := ⟨((hD.preimage hT).mono hsub)⟩
  exact Over.OverMorphism.ext (ext_of_isDominant_of_isSeparated G.hom (by rw [Over.w f, Over.w g]) inc hinc)

variable {o : Type} [CommRing o] {g k : ℕ} {J : Type} {b : TBase o k}

def NatEnd (F : ∀ {S : Scheme.{0}} {s : S ⟶ Sp o} (t : TObj g k J b s), t.A ⟶ t.A) : Prop :=
  ∀ {S S' : Scheme.{0}} {s : S ⟶ Sp o} {s' : S' ⟶ Sp o} (t' : TObj g k J b s') (t : TObj g k J b s) {f : S' ⟶ S}
    {φ : t'.A.left ⟶ t.A.left} (h : IsGrpPullback t'.A t.A f φ),
    (∀ j, (t'.act j).left ≫ φ = φ ≫ (t.act j).left) → pushPt h.1.w (F t') = selfMap h ≫ F t

def NatPt (F : ∀ {S : Scheme.{0}} {s : S ⟶ Sp o} (t : TObj g k J b s), Out.baseOver S ⟶ t.A) : Prop :=
  ∀ {S S' : Scheme.{0}} {s : S ⟶ Sp o} {s' : S' ⟶ Sp o} (t' : TObj g k J b s') (t : TObj g k J b s) {f : S' ⟶ S}
    {φ : t'.A.left ⟶ t.A.left} (h : IsGrpPullback t'.A t.A f φ),
    (∀ i, (t'.pt i).left ≫ φ = f ≫ (t.pt i).left) →
    (∀ j, (t'.act j).left ≫ φ = φ ≫ (t.act j).left) → pushPt h.1.w (F t') = baseMap f ≫ F t

variable {em : o →+* ℂ} {C : TObj g k J b (spMap em) → Prop} {S : Scheme.{0}} {s : S ⟶ Sp o}

theorem transfer_end [IsReduced S] {F G : ∀ {S : Scheme.{0}} {s : S ⟶ Sp o} (t : TObj g k J b s), t.A ⟶ t.A}
    (hF : NatEnd F) (hG : NatEnd G) (H : ∀ tc, C tc → F tc = G tc) (t : TObj g k J b s)
    (hD : Dense (fromSet em C t)) : F t = G t := by
  have := t.ab.smooth
  have := t.ab.proper
  have : IsReduced t.A.left := GlobalTheory.isReduced_of_smooth_of_isReduced t.A.hom
  refine ext_of_dense t.A.hom.isOpenMap (F t) (G t) hD ?_
  rintro p ⟨K, _, x, hp, K₀, _, β, i, j, t₀, tx, tc, -, -, ⟨φx, hx, -, -, hax⟩, ⟨φ0, h0, -, -, ha0⟩,
    ⟨φc, hc, -, -, hac⟩, hC⟩
  have : Nonempty (Sp ℂ) := inferInstanceAs (Nonempty (PrimeSpectrum ℂ))
  have e0 : F t₀ = G t₀ :=
    eq_down hc (selfMap hc) (epi_of_isPullback hc.1) (hF tc t₀ hc hac) (hG tc t₀ hc hac) (H tc hC)
  have e1 : F tx = G tx := eq_up h0 (selfMap h0) (hF tx t₀ h0 ha0) (hG tx t₀ h0 ha0) e0
  refine ⟨tx.A.left, Sp K, φx, tx.A.hom, x, hx.1, hp, ?_⟩
  have k1 : (F tx).left ≫ φx = φx ≫ (F t).left := congrArg CommaMorphism.left (hF tx t hx hax)
  have k2 : (G tx).left ≫ φx = φx ≫ (G t).left := congrArg CommaMorphism.left (hG tx t hx hax)
  rw [← k1, ← k2, e1]

theorem transfer_pt [IsReduced S]
    {F G : ∀ {S : Scheme.{0}} {s : S ⟶ Sp o} (t : TObj g k J b s), Out.baseOver S ⟶ t.A}
    (hF : NatPt F) (hG : NatPt G) (H : ∀ tc, C tc → F tc = G tc) (t : TObj g k J b s)
    (hD : Dense (fromSet em C t)) : F t = G t := by
  have := t.ab.proper
  have hbase : (Out.baseOver S).hom = 𝟙 S := rfl
  have : IsReduced (Out.baseOver S).left := ‹IsReduced S›
  refine ext_of_dense (by rw [hbase]; exact IsOpenMap.id) (F t) (G t) hD ?_
  rintro p ⟨K, _, x, hp, K₀, _, β, i, j, t₀, tx, tc, -, -, ⟨φx, hx, -, hpx, hax⟩, ⟨φ0, h0, -, hp0, ha0⟩,
    ⟨φc, hc, -, hpc, hac⟩, hC⟩
  have hepi : Epi (baseMap (S' := Sp ℂ) (spMap j)).left := by
    have hs : Surjective (spMap j) := ⟨fun y => by
      obtain ⟨z⟩ : Nonempty (Sp ℂ) := inferInstanceAs (Nonempty (PrimeSpectrum ℂ))
      exact ⟨z, Subsingleton.elim _ _⟩⟩
    exact Flat.epi_of_flat_of_surjective (spMap j)
  have e0 : F t₀ = G t₀ :=
    eq_down hc (baseMap (spMap j)) hepi (hF tc t₀ hc hpc hac) (hG tc t₀ hc hpc hac) (H tc hC)
  have e1 : F tx = G tx := eq_up h0 (baseMap (spMap i)) (hF tx t₀ h0 hp0 ha0) (hG tx t₀ h0 hp0 ha0) e0
  refine ⟨Sp K, Sp K, x, 𝟙 _, x, by rw [hbase]; exact IsPullback.of_id_snd, hp, ?_⟩
  have k1 : (F tx).left ≫ φx = x ≫ (F t).left := congrArg CommaMorphism.left (hF tx t hx hpx hax)
  have k2 : (G tx).left ≫ φx = x ≫ (G t).left := congrArg CommaMorphism.left (hG tx t hx hpx hax)
  rw [← k1, ← k2, e1]

theorem rel_of_isSharp {h : ℕ} {W : Matrix (Fin 8) (Fin 8) ℤ} {a : J → Matrix (Fin 8) (Fin 8) ℤ}
    {bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))} {t : TObj g k J b s}
    {c : SiegPre h k (b.ζ : o) s} (H : IsSharp W a bas t c) :
    (∀ j j' j'', a j'' = a j * a j' → t.act j'' = t.act j' ≫ t.act j) ∧
    (∀ j j' j'', a j'' = a j + a j' → t.act j'' = t.act j * t.act j') ∧ (∀ j, a j = 1 → t.act j = 𝟙 t.A) ∧
    ∀ j i, t.pt i ≫ t.act j =
      (List.ofFn fun i' => t.pt i' ^ bas.symm (fun u => ∑ v, a j u v • bas (Pi.single i 1) v) i').prod := by
  obtain ⟨pr, hpr, huniq, -, hact, hpt⟩ := H
  have ext : ∀ {T : Over S} (x y : T ⟶ t.A), (∀ u, x ≫ pr u = y ≫ pr u) → x = y :=
    fun x y hxy => (huniq _ fun u => y ≫ pr u).unique hxy fun _ => rfl
  have pre : ∀ {T : Over S} (y : T ⟶ t.A) (n : Fin 8 → ℤ), y ≫ ∏ v, pr v ^ n v = ∏ v, (y ≫ pr v) ^ n v := by
    intro T y n
    let e : (t.A ⟶ c.A) →* (T ⟶ c.A) := MonoidHom.mk' (y ≫ ·) (MonObj.comp_mul y)
    exact (map_prod e _ _).trans (Finset.prod_congr rfl fun v _ => map_zpow e _ _)
  have hact' : ∀ j u, t.act j ≫ pr u = ∏ v, pr v ^ a j u v := fun j u => by rw [hact, List.prod_ofFn]
  refine ⟨fun j j' j'' hm => ext _ _ fun u => ?_, fun j j' j'' hm => ext _ _ fun u => ?_,
    fun j hj => ext _ _ fun u => ?_, fun j i => ext _ _ fun u => ?_⟩
  · rw [hact', Category.assoc, hact', pre]
    simp only [hact', ← Finset.prod_zpow, ← zpow_mul]
    rw [hm, Finset.prod_comm]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [Matrix.mul_apply, zpow_finsetSum]
    exact Finset.prod_congr rfl fun w _ => by rw [mul_comm]
  · have := hpr u
    rw [MonObj.mul_comp, hact', hact', hact', hm, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun v _ => by rw [Matrix.add_apply, zpow_add]
  · rw [hact', hj, Category.id_comp, Finset.prod_eq_single u (fun v _ hv => by rw [Matrix.one_apply_ne hv.symm, zpow_zero])
      (fun hn => absurd (Finset.mem_univ u) hn), Matrix.one_apply_eq, zpow_one]
  · have := hpr u
    have hq : ∀ i v, t.pt i ≫ pr v = c.lev (bas (Pi.single i 1) v) := fun i v => Over.OverMorphism.ext (hpt i v)
    let M : Multiplicative (Fin h ⊕ Fin h → ℤ) →* (𝟙_ (Over S) ⟶ c.A) :=
      MonoidHom.mk' (fun w => c.lev w.toAdd) fun x y => c.lev_add _ _
    have levsum : ∀ (ι' : Type) [Fintype ι'] (n : ι' → ℤ) (w : ι' → (Fin h ⊕ Fin h → ℤ)),
        c.lev (∑ x, n x • w x) = ∏ x, c.lev (w x) ^ n x := by
      intro ι' _ n w
      calc c.lev (∑ x, n x • w x) = M (Multiplicative.ofAdd (∑ x, n x • w x)) := rfl
        _ = ∏ x, c.lev (w x) ^ n x := by
          rw [ofAdd_sum, map_prod]
          exact Finset.prod_congr rfl fun x _ => by rw [ofAdd_zsmul, map_zpow]; rfl
    have key : ∀ n : Fin (2 * g) → ℤ, ∑ i', n i' • bas (Pi.single i' 1) = bas n := by
      intro n
      conv_rhs => rw [← Finset.univ_sum_single n]

      rw [map_sum]
      refine Finset.sum_congr rfl fun i' _ => ?_
      rw [← map_zsmul]
      congr 1
      ext m
      rw [Pi.smul_apply, Pi.single_apply, Pi.single_apply]
      split_ifs <;> simp
    have kv := congrFun (key (bas.symm fun u => ∑ v, a j u v • bas (Pi.single i 1) v)) u
    rw [LinearEquiv.apply_symm_apply, Finset.sum_apply] at kv
    simp only [Pi.smul_apply] at kv
    let post : (Out.baseOver S ⟶ t.A) →* (Out.baseOver S ⟶ c.A) :=
      MonoidHom.mk' (· ≫ pr u) fun x y => MonObj.mul_comp x y (pr u)
    rw [Category.assoc, hact', pre]
    rw [show (List.ofFn fun i' => t.pt i' ^ bas.symm (fun u => ∑ v, a j u v • bas (Pi.single i 1) v) i').prod ≫ pr u =
      post (List.ofFn fun i' => t.pt i' ^ bas.symm (fun u => ∑ v, a j u v • bas (Pi.single i 1) v) i').prod from rfl,
      map_list_prod, List.map_ofFn, List.prod_ofFn]
    simp only [Function.comp_apply, map_zpow]
    simp only [post, MonoidHom.mk'_apply, hq]
    rw [← levsum, ← levsum, kv]

end GlobalTheory.SharpFamRel

namespace GlobalTheory
open SharpFamRel

theorem sharp_family_relations : ∀ (h g : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) (a : J → Matrix (Fin 8) (Fin 8) ℤ) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))) (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (em : o →+* ℂ) (S : Scheme.{0}) [IsReduced S] (s : S ⟶ Sp o) (t : TObj g k J b s), Dense (fromSet em (SharpClass (b := b) W a bas em) t) → (∀ j j' j'', a j'' = a j * a j' → t.act j'' = t.act j' ≫ t.act j) ∧ (∀ j j' j'', a j'' = a j + a j' → t.act j'' = t.act j * t.act j') ∧ (∀ j, a j = 1 → t.act j = 𝟙 t.A) ∧ ∀ j i, t.pt i ≫ t.act j = (List.ofFn fun i' => t.pt i' ^ bas.symm (fun u => ∑ v, a j u v • bas (Pi.single i 1) v) i').prod := by
  intro h g W J a bas k o _ b em S _ s t hD
  refine ⟨fun j j' j'' hm => ?_, fun j j' j'' hm => ?_, fun j hj => ?_, fun j i => ?_⟩
  · refine transfer_end (F := fun t => t.act j'') (G := fun t => t.act j' ≫ t.act j) ?_ ?_
      (fun tc hC => by obtain ⟨c, -, hc⟩ := hC; exact (rel_of_isSharp hc).1 j j' j'' hm) t hD
    · intro _ _ _ _ t' t _ _ hp hact
      exact push_end hp (hact j'')
    · intro _ _ _ _ t' t _ _ hp hact
      refine push_end hp ?_
      simp only [Over.comp_left, Category.assoc, hact j]
      rw [← Category.assoc, hact j', Category.assoc]
  · refine transfer_end (F := fun t => t.act j'') (G := fun t => t.act j * t.act j') ?_ ?_
      (fun tc hC => by obtain ⟨c, -, hc⟩ := hC; exact (rel_of_isSharp hc).2.1 j j' j'' hm) t hD
    · intro _ _ _ _ t' t _ _ hp hact
      exact push_end hp (hact j'')
    · intro _ _ _ _ t' t _ _ hp hact
      exact push_mul hp (selfMap hp) (push_end hp (hact j)) (push_end hp (hact j'))
  · refine transfer_end (F := fun t => t.act j) (G := fun t => 𝟙 t.A) ?_ ?_
      (fun tc hC => by obtain ⟨c, -, hc⟩ := hC; exact (rel_of_isSharp hc).2.2.1 j hj) t hD
    · intro _ _ _ _ t' t _ _ hp hact
      exact push_end hp (hact j)
    · intro _ _ _ _ t' t _ _ hp _
      exact push_id hp
  · refine transfer_pt (F := fun t => t.pt i ≫ t.act j)
      (G := fun t => (List.ofFn fun i' => t.pt i' ^ bas.symm (fun u => ∑ v, a j u v • bas (Pi.single i 1) v) i').prod) ?_ ?_
      (fun tc hC => by obtain ⟨c, -, hc⟩ := hC; exact (rel_of_isSharp hc).2.2.2 j i) t hD
    · intro _ _ _ _ t' t f _ hp hpt hact
      exact push_comp hp (baseMap f) (Over.OverMorphism.ext (hpt i)) (hact j)
    · intro _ S' _ _ t' t f _ hp hpt _
      let e : (Out.baseOver S' ⟶ t'.A) →* (Over.mk ((Out.baseOver S').hom ≫ f) ⟶ t.A) :=
        MonoidHom.mk' (pushPt hp.1.w) fun x y => Over.OverMorphism.ext (hp.2 _ x y _ _ rfl rfl).symm
      let e2 : (Out.baseOver _ ⟶ t.A) →* (Over.mk ((Out.baseOver S').hom ≫ f) ⟶ t.A) :=
        MonoidHom.mk' (baseMap f ≫ ·) (MonObj.comp_mul _)
      change e _ = e2 _
      rw [map_list_prod, map_list_prod, List.map_ofFn, List.map_ofFn]
      congr 1
      refine congrArg List.ofFn (funext fun i' => ?_)
      simp only [Function.comp_apply, map_zpow]
      congr 1
      exact Over.OverMorphism.ext (hpt i')

end GlobalTheory
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.E8SharpFamilyMatrixRelationsDense =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqOneOfBiadditiveSliceTrivialEighthPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqOneOfBiadditiveSliceTrivialEighthPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocGenOfTrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.GoodClass\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.FormBundleKer


open GlobalTheory.CechPic in
theorem eq_one_of_slice_trivial : ∀ (W : Matrix (Fin 8) (Fin 8) ℤ) (S : Scheme.{0}) (G A : Over S) [GrpObj G] [IsCommMonObj G] [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (G ⟶ A)) (L : LB G.left) (P : LB (G2 A).left), (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) → L.IsLB → P.IsLB → LBIso P (P.pull (lift (snd A A) (fst A A)).left) → (∀ (T : Over S) (x x' y : T ⟶ A), (∃ t : (LB.LinComb P (K := Fin 3) ![(lift (x * x') y).left, (lift x y).left, (lift x' y).left] ![1, -1, -1]).Gen, t.IsGen) ∧ ∃ t : (LB.LinComb P (K := Fin 3) ![(lift y (x * x')).left, (lift y x).left, (lift y x').left] ![1, -1, -1]).Gen, t.IsGen) → LBIso L (LB.LinComb P (K := Fin 8 × Fin 8) (fun uv => (lift (pr uv.1) (pr uv.2)).left) (fun uv => W uv.1 uv.2)) → Out.KTriv G L → ∀ (T : Over S) (x : T ⟶ A), (∃ t : (P.pull (lift (snd A T ≫ x) (fst A T)).left).Gen, t.IsGen) → x = 1 := by
  intro W S G A _ _ _ _ pr L P hpr huniv hL hP hsym hbi hLP hK T x hx
  let p : ∀ {T' : Over S}, (T' ⟶ A) → (T' ⟶ A) → Pic T'.left := fun a b => pull (lift a b).left (cls P hP)
  have padd : ∀ {T' : Over S} (a a' b : T' ⟶ A), p (a * a') b = p a b + p a' b := fun {T'} a a' b => by
    have e := (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).2 (hbi T' a a' b).1
    rw [cls_linComb hP, Fin.sum_univ_three] at e
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul] at e
    rw [← sub_eq_zero, ← e]
    simp only [p]
    abel
  have psym : ∀ {T' : Over S} (a b : T' ⟶ A), p a b = p b a := fun {T'} a b => by
    have e : cls P hP = pull (lift (snd A A) (fst A A)).left (cls P hP) :=
      (cls_eq_iff hP (pull_isLB hP _)).2 hsym
    have k : (lift b a).left ≫ (lift (snd A A) (fst A A)).left = (lift a b).left := by
      rw [← Over.comp_left, comp_lift, lift_fst, lift_snd]
    show pull (lift a b).left (cls P hP) = pull (lift b a).left (cls P hP)
    rw [← k, pull_comp, ← e]
  have pone : ∀ {T' : Over S} (b : T' ⟶ A), p 1 b = 0 := fun b => by
    have := padd 1 1 b
    rw [_root_.mul_one] at this
    exact left_eq_add.1 this
  have px : ∀ {T' : Over S} (τ : T' ⟶ T) (y : T' ⟶ A), p (τ ≫ x) y = 0 := fun τ y => by
    have e := (cls_eq_zero_iff (pull_isLB hP _)).2 hx
    rw [cls_pull hP] at e
    have k : (lift y τ).left ≫ (lift (snd A T ≫ x) (fst A T)).left = (lift (τ ≫ x) y).left := by
      rw [← Over.comp_left, comp_lift, lift_fst, lift_snd_assoc]
    show pull (lift (τ ≫ x) y).left (cls P hP) = 0
    rw [← k, pull_comp, e, map_zero]
  have hl : ∀ {T' : Over S} (z : T' ⟶ G), pull z.left (cls L hL) =
      ∑ uv : Fin 8 × Fin 8, W uv.1 uv.2 • p (z ≫ pr uv.1) (z ≫ pr uv.2) := fun z => by
    have e := (cls_eq_iff hL (LB.isLB_linComb hP _ _)).2 hLP
    rw [cls_linComb hP] at e

    rw [e, map_sum]
    refine Finset.sum_congr rfl fun uv _ => ?_
    rw [map_zsmul, ← pull_comp, ← Over.comp_left, comp_lift]
  obtain ⟨x', hx', -⟩ := huniv T fun v => if v = 0 then x else 1
  have pz : ∀ u (y : T ⊗ G ⟶ A), p ((fst T G ≫ x') ≫ pr u) y = 0 := fun u y => by
    rw [Category.assoc, hx']
    split_ifs
    · exact px _ _
    · rw [MonObj.comp_one]; exact pone _
  have key : pull (Out.translPt G x').left (cls L hL) = pull (snd T G).left (cls L hL) := by
    have e : Out.translPt G x' = (fst T G ≫ x') * snd T G := rfl
    rw [hl, hl, e]
    refine Finset.sum_congr rfl fun uv _ => ?_
    have := hpr uv.1
    have := hpr uv.2
    rw [MonObj.mul_comp, MonObj.mul_comp, padd, pz, zero_add, psym, padd, pz, zero_add, psym]
  have H : KerPow.HasGen L (K := Fin 2) ![(Out.translPt G x').left, (snd T G).left] ![1, -1] := by
    refine (cls_eq_zero_iff (LB.isLB_linComb hL _ _)).1 ?_
    rw [cls_linComb hL, Fin.sum_univ_two]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, key, one_smul, neg_smul, add_neg_cancel]
  have h1 : x' = 1 := KerPow.eq_one_of_locGen hK x' fun _ => ⟨⊤, trivial, H.pull _ fun _ => rfl⟩
  have h0 := hx' 0
  have := hpr 0
  rw [h1, MonObj.one_comp, if_pos rfl] at h0
  exact h0.symm

end GlobalTheory.FormBundleKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqOneOfBiadditiveSliceTrivialEighthPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSymmetricBiadditiveBundleEighthPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSymmetricBiadditiveBundleEighthPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleIsoLinCombSymmBiadditiveSubstitution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.EighthPower

open GlobalTheory.CechPic Matrix

theorem map_prod_add {G M : Type*} [CommGroup G] [AddCommGroup M] (f : G → M) (hf : ∀ x y, f (x * y) = f x + f y)
    {n : ℕ} (x : Fin n → G) : f (∏ i, x i) = ∑ i, f (x i) := by
  simpa only [zpow_one, one_smul] using GlobalTheory.BilinCalc.map_prod_zpow f hf x fun _ => 1

theorem map_zpow_add {G M : Type*} [CommGroup G] [AddCommGroup M] (f : G → M) (hf : ∀ x y, f (x * y) = f x + f y)
    (x : G) (c : ℤ) : f (x ^ c) = c • f x := by
  simpa only [Fin.prod_univ_one, Fin.sum_univ_one] using
    GlobalTheory.BilinCalc.map_prod_zpow f hf (n := 1) (fun _ => x) fun _ => c

section Points

variable {S : Scheme.{0}} {G A T T' : Over S} [GrpObj G] [IsCommMonObj G] [GrpObj A] [IsCommMonObj A]

theorem comp_prod_zpow (h : T' ⟶ T) {n : ℕ} (x : Fin n → (T ⟶ A)) (c : Fin n → ℤ) :
    h ≫ (∏ i, x i ^ c i) = ∏ i, (h ≫ x i) ^ c i := by
  let F : (T ⟶ A) →* (T' ⟶ A) := MonoidHom.mk' (fun z => h ≫ z) fun a b => MonObj.comp_mul _ _ _
  have e : F (∏ i, x i ^ c i) = ∏ i, F (x i) ^ c i := by simp only [map_prod, map_zpow]
  exact e

theorem prod_comp_hom (f : G ⟶ A) [IsMonHom f] {n : ℕ} (x : Fin n → (T ⟶ G)) :
    (∏ i, x i) ≫ f = ∏ i, x i ≫ f := by
  let F : (T ⟶ G) →* (T ⟶ A) := MonoidHom.mk' (fun z => z ≫ f) fun a b => MonObj.mul_comp _ _ _
  exact map_prod F x _

omit [IsCommMonObj A] in
theorem comp_id_zpow (x : T ⟶ A) (c : ℤ) : x ≫ (𝟙 A ^ c) = x ^ c := by
  let F : (A ⟶ A) →* (T ⟶ A) := MonoidHom.mk' (fun z => x ≫ z) fun a b => MonObj.comp_mul _ _ _
  have e : F (𝟙 A ^ c) = F (𝟙 A) ^ c := map_zpow F _ _
  exact e.trans (congrArg (· ^ c) (Category.comp_id x))

end Points

theorem prod_zpow_eq {H : Type*} [CommGroup H] (x : H) {n : ℕ} (c : Fin n → ℤ) : ∏ i, x ^ c i = x ^ ∑ i, c i := by
  have h := map_prod (zpowersHom H x) (fun i => Multiplicative.ofAdd (c i)) Finset.univ
  simp only [zpowersHom_apply, toAdd_prod, toAdd_ofAdd] at h
  exact h.symm

theorem main : ∀ (W : Matrix (Fin 8) (Fin 8) ℤ) (S : Scheme.{0}) (G A : Over S) [GrpObj G] [IsCommMonObj G] [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (G ⟶ A)) (L : LB G.left) (ρ : Matrix (Fin 8) (Fin 8) ℤ → (G ⟶ G)), IsE8 W → (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) → L.IsLB → (∃ t : LB.Gen (Theta G L), t.IsGen) → (∀ m u, ρ m ≫ pr u = (List.ofFn fun v => pr v ^ m u v).prod) → (∀ m m', m.transpose * (W + W.transpose) = (W + W.transpose) * m' → LBIso (cubeLB G ![fst G G ≫ ρ m, snd G G] L) (cubeLB G ![fst G G, snd G G ≫ ρ m'] L)) → (∀ m, (W + W.transpose) * m = W → LBIso L (cubeLB G ![𝟙 G, ρ m] L)) → ∃ P : LB (G2 A).left, P.IsLB ∧ (∃ t : (P.pull (lift (1 : A ⟶ A) (𝟙 A)).left).Gen, t.IsGen) ∧ (∃ t : (P.pull (lift (𝟙 A) (1 : A ⟶ A)).left).Gen, t.IsGen) ∧ LBIso P (P.pull (lift (snd A A) (fst A A)).left) ∧ (∀ (T : Over S) (x x' y : T ⟶ A), (∃ t : (LB.LinComb P (K := Fin 3) ![(lift (x * x') y).left, (lift x y).left, (lift x' y).left] ![1, -1, -1]).Gen, t.IsGen) ∧ ∃ t : (LB.LinComb P (K := Fin 3) ![(lift y (x * x')).left, (lift y x).left, (lift y x').left] ![1, -1, -1]).Gen, t.IsGen) ∧ LBIso L (LB.LinComb P (K := Fin 8 × Fin 8) (fun uv => (lift (pr uv.1) (pr uv.2)).left) (fun uv => W uv.1 uv.2)) := by
  intro W S G A _ _ _ _ pr L ρ hE hpr huniv hL hΘ hρ hadj hprim
  obtain ⟨B, hB⟩ : ∃ B, B = W + W.transpose := ⟨_, rfl⟩
  have hdet : IsUnit B.det := by rw [hB, hE.2]; exact isUnit_one
  have hBs : B.transpose = B := by rw [hB, Matrix.transpose_add, Matrix.transpose_transpose, add_comm]
  rw [← hB] at hadj hprim
  have hBi : B * B⁻¹ = 1 := Matrix.mul_nonsing_inv B hdet
  obtain ⟨u₀, hu₀⟩ : ∃ u₀ : Fin 8 → ℤ, u₀ = Pi.single 0 1 := ⟨_, rfl⟩
  obtain ⟨u₁, hu₁⟩ : ∃ u₁ : Fin 8 → ℤ, B *ᵥ u₁ = u₀ := ⟨B⁻¹ *ᵥ u₀, by rw [Matrix.mulVec_mulVec, hBi, Matrix.one_mulVec]⟩
  have h00 : u₀ ⬝ᵥ u₀ = 1 := by rw [hu₀]; simp
  have hsymB : ∀ v v' : Fin 8 → ℤ, v ⬝ᵥ B *ᵥ v' = v' ⬝ᵥ B *ᵥ v := fun v v' => by
    rw [Matrix.dotProduct_mulVec, ← Matrix.mulVec_transpose, hBs, dotProduct_comm]
  have ext : ∀ {T : Over S} (x x' : T ⟶ G), (∀ u, x ≫ pr u = x' ≫ pr u) → x = x' := fun {T} x x' h =>
    (huniv T fun u => x' ≫ pr u).unique h fun _ => rfl
  choose ψ hψ using fun v : Fin 8 → ℤ => (huniv A fun u => 𝟙 A ^ v u).exists
  have hψ' : ∀ {T : Over S} (x : T ⟶ A) v u, (x ≫ ψ v) ≫ pr u = x ^ v u := fun x v u => by
    rw [Category.assoc, hψ, comp_id_zpow]
  have ψmul : ∀ {T : Over S} (x y : T ⟶ A) v, (x * y) ≫ ψ v = (x ≫ ψ v) * (y ≫ ψ v) := fun x y v =>
    ext _ _ fun u => by rw [hψ', MonObj.mul_comp, hψ', hψ', _root_.mul_zpow]
  have ψone : ∀ {T : Over S} v, (1 : T ⟶ A) ≫ ψ v = 1 := fun v =>
    ext _ _ fun u => by rw [hψ', MonObj.one_comp, _root_.one_zpow]
  have ψsmul : ∀ {T : Over S} (x : T ⟶ A) (c : ℤ) v, x ≫ ψ (c • v) = (x ^ c) ≫ ψ v := fun x c v =>
    ext _ _ fun u => by rw [hψ', hψ', ← _root_.zpow_mul, Pi.smul_apply, smul_eq_mul]
  have ψρ : ∀ {T : Over S} (x : T ⟶ A) v m, (x ≫ ψ v) ≫ ρ m = x ≫ ψ (m *ᵥ v) := fun x v m =>
    ext _ _ fun u => by
      rw [hψ', Category.assoc, hρ, List.prod_ofFn, comp_prod_zpow]
      simp only [hψ', ← _root_.zpow_mul, prod_zpow_eq]
      congr 1
      exact Finset.sum_congr rfl fun i _ => mul_comm _ _
  have ρdec : ∀ m, ρ m = ∏ v, pr v ≫ ψ (m *ᵥ Pi.single v 1) := fun m =>
    ext _ _ fun u => by
      rw [hρ, List.prod_ofFn, prod_comp_hom]
      refine Finset.prod_congr rfl fun v _ => ?_
      rw [hψ']
      simp
  have iddec : 𝟙 G = ∏ v, pr v ≫ ψ (Pi.single v 1) :=
    ext _ _ fun u => by
      rw [Category.id_comp, prod_comp_hom, Finset.prod_eq_single u (fun b _ hb => by
        rw [hψ', Pi.single_eq_of_ne' hb, zpow_zero]) (by simp), hψ', Pi.single_eq_same, zpow_one]
  have lamL : ∀ {T : Over S} (x y z : T ⟶ G),
      lam (cls L hL) (x * y) z = lam (cls L hL) x z + lam (cls L hL) y z := by
    intro T x y z
    have h₀ := (cls_eq_zero_iff (N := Theta G L) (LB.isLB_linComb hL _ _)).2 hΘ
    have h₁ := (cls_cube_three hL (fst _ _) (snd _ _ ≫ fst _ _) (snd G (G ⊗ G) ≫ snd _ _)
      (LB.isLB_linComb hL _ _)).symm.trans h₀
    have h₂ := congrArg (pull (lift x (lift y z)).left) h₁
    simp only [map_sub, map_zero, pull_lam, MonObj.comp_mul, lift_fst, lift_snd_assoc, lift_snd] at h₂
    rw [sub_sub, sub_eq_zero] at h₂
    exact h₂
  obtain ⟨l, hl⟩ : ∃ l, l = cls L hL := ⟨_, rfl⟩
  rw [← hl] at lamL
  have lamR : ∀ {T : Over S} (x y z : T ⟶ G), lam l z (x * y) = lam l z x + lam l z y := fun x y z => by
    rw [lam_comm, lamL, lam_comm l x, lam_comm l y]
  have adj : ∀ {T : Over S} (x y : T ⟶ G) m m', m.transpose * B = B * m' →
      lam l (x ≫ ρ m) y = lam l x (y ≫ ρ m') := by
    intro T x y m m' hm
    have h := (cls_eq_iff (LB.isLB_linComb hL _ _) (LB.isLB_linComb hL _ _)).2 (hadj m m' hm)
    have h' := congrArg (pull (lift x y).left)
      ((cls_cube_two hL _ _ _).symm.trans (h.trans (cls_cube_two hL _ _ _)))
    simpa only [pull_lam, lift_fst, lift_snd, lift_fst_assoc, lift_snd_assoc, ← hl] using h'
  obtain ⟨p, hp⟩ : ∃ p : ∀ {T : Over S}, (T ⟶ A) → (T ⟶ A) → Pic T.left,
      ∀ {T : Over S} (x y : T ⟶ A), p x y = lam l (x ≫ ψ u₀) (y ≫ ψ u₁) := ⟨_, fun _ _ => rfl⟩
  have pL : ∀ {T : Over S} (x x' y : T ⟶ A), p (x * x') y = p x y + p x' y := fun x x' y => by
    rw [hp, hp, hp, ψmul, lamL]
  have pR : ∀ {T : Over S} (x x' y : T ⟶ A), p y (x * x') = p y x + p y x' := fun x x' y => by
    rw [hp, hp, hp, ψmul, lamR]
  have key : ∀ {T : Over S} (x y : T ⟶ A) v v', lam l (x ≫ ψ v) (y ≫ ψ v') = (v ⬝ᵥ B *ᵥ v') • p x y := by
    intro T x y v v'
    have h := adj (x ≫ ψ u₀) (y ≫ ψ v') (vecMulVec v u₀) (vecMulVec u₁ (B *ᵥ v)) (by
      rw [Matrix.transpose_vecMulVec, Matrix.vecMulVec_mul, Matrix.mul_vecMulVec, hu₁, ← Matrix.mulVec_transpose, hBs])
    have e₁ : vecMulVec v u₀ *ᵥ u₀ = v := by
      rw [Matrix.vecMulVec_mulVec, h00]; simp
    have e₂ : vecMulVec u₁ (B *ᵥ v) *ᵥ v' = (v ⬝ᵥ B *ᵥ v') • u₁ := by
      rw [Matrix.vecMulVec_mulVec, dotProduct_comm, hsymB v' v]; simp
    rw [ψρ, ψρ, e₁, e₂, ψsmul, ← hp] at h
    rw [h]
    exact map_zpow_add (fun z => p x z) (fun a b => pR a b x) y _
  have pS : ∀ {T : Over S} (x y : T ⟶ A), p y x = p x y := fun x y => by
    rw [hp, lam_comm, key, hsymB, hu₁, h00, one_smul]
  have hP : (cubeLB G ![fst A A ≫ ψ u₀, snd A A ≫ ψ u₁] L).IsLB := LB.isLB_linComb hL _ _
  have hc : cls _ hP = p (fst A A) (snd A A) := by rw [cls_cube_two hL, hp, hl]
  have hpull : ∀ {T : Over S} (x y : T ⟶ A), pull (lift x y).left (cls _ hP) = p x y := fun x y => by
    rw [hc, hp, hp, pull_lam, lift_fst_assoc, lift_snd_assoc]
  refine ⟨cubeLB G ![fst A A ≫ ψ u₀, snd A A ≫ ψ u₁] L, hP, ?_, ?_, ?_, fun T x x' y => ⟨?_, ?_⟩, ?_⟩
  · refine (cls_eq_zero_iff (pull_isLB hP _)).1 ?_
    rw [cls_pull hP, hpull, hp, ψone, lam_one_left]
  · refine (cls_eq_zero_iff (pull_isLB hP _)).1 ?_
    rw [cls_pull hP, hpull, hp, ψone, lam_one_right]
  · refine (cls_eq_iff hP (pull_isLB hP _)).1 ?_
    rw [cls_pull hP, hpull, hc, pS]
  · refine (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).1 ?_
    rw [cls_linComb hP, Fin.sum_univ_three]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul, hpull, pL]
    abel
  · refine (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).1 ?_
    rw [cls_linComb hP, Fin.sum_univ_three]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul, hpull, pR]
    abel
  · refine (cls_eq_iff hL (LB.isLB_linComb hP _ _)).1 ?_
    have hw : B * (B⁻¹ * W) = W := by rw [← Matrix.mul_assoc, hBi, Matrix.one_mul]
    have h := ((cls_eq_iff hL (LB.isLB_linComb hL _ _)).2 (hprim _ hw)).trans (cls_cube_two hL _ _ _)
    rw [cls_linComb hP, h, ← hl, Fintype.sum_prod_type, iddec, ρdec,
      map_prod_add (fun z => lam l z _) (fun a b => lamL a b _)]
    refine Finset.sum_congr rfl fun u _ => ?_
    rw [map_prod_add (fun z => lam l _ z) (fun a b => lamR a b _)]
    refine Finset.sum_congr rfl fun v _ => ?_
    rw [key, hpull, Matrix.mulVec_mulVec, hw]
    congr 1
    simp

end GlobalTheory.EighthPower
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSymmetricBiadditiveBundleEighthPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelOnFactorOfEighthPowerAbelianScheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelOnFactorOfEighthPowerAbelianScheme", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.GoodClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.ZM

theorem levelFactor_comp {G H Λ : Type} [CommGroup G] [CommGroup H] [AddCommGroup Λ] {n m : ℕ}
    (bas : (Fin n → ℤ) ≃ₗ[ℤ] (Fin m → Λ)) (P : Fin n → G) (π : Fin m → (G →* H)) (L : Λ → H)
    (hL : ∀ x y, L (x + y) = L x * L y) (hP : ∀ i u, π u (P i) = L (bas (Pi.single i 1) u))
    (c : Fin n → ℤ) (u : Fin m) : π u (∏ i, P i ^ c i) = L (bas c u) := by
  let φ : Λ →+ Additive H := AddMonoidHom.mk' (fun x => Additive.ofMul (L x)) hL
  have hφ : ∀ x, L x = Additive.toMul (φ x) := fun x => rfl
  have hc : bas c u = ∑ i, c i • bas (Pi.single i 1) u := by
    conv_lhs => rw [← Finset.univ_sum_single c]

    rw [map_sum, Finset.sum_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hs : (Pi.single i (c i) : Fin n → ℤ) = c i • (Pi.single i 1 : Fin n → ℤ) := by
      ext j
      by_cases h : j = i
      · subst h; simp
      · simp [h]
    rw [hs, map_zsmul, Pi.smul_apply]

  rw [map_prod, hc, hφ, map_sum, toMul_sum]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [map_zpow, hP, map_zsmul, toMul_zsmul]
  rfl

theorem levelFactor_torsion {G H Λ : Type} [CommGroup G] [CommGroup H] [AddCommGroup Λ] {n m : ℕ} (u : Fin m)
    (bas : (Fin n → ℤ) ≃ₗ[ℤ] (Fin m → Λ)) (P : Fin n → G) (π : Fin m → (G →* H)) (L : Λ → H)
    (hL : ∀ x y, L (x + y) = L x * L y) (hP : ∀ i u, π u (P i) = L (bas (Pi.single i 1) u))
    (k : ℕ) (ht : ∀ i, P i ^ k = 1) (x : Λ) : L x ^ k = 1 := by
  obtain ⟨c, hc⟩ : ∃ c, bas c = Pi.single u x := ⟨bas.symm (Pi.single u x), bas.apply_symm_apply _⟩
  have h1 := levelFactor_comp bas P π L hL hP c u
  rw [hc, Pi.single_eq_same] at h1
  have hk : ∀ i, (P i ^ c i) ^ k = 1 := fun i => by
    rw [← zpow_natCast, ← zpow_mul, mul_comm, zpow_mul, zpow_natCast, ht, one_zpow]
  rw [← h1, ← map_pow, ← Finset.prod_pow, Finset.prod_eq_one (fun i _ => hk i), map_one]

theorem levelFactor_bij {G H Λ : Type} [CommGroup G] [CommGroup H] [AddCommGroup Λ] {n m : ℕ} (u : Fin m)
    (bas : (Fin n → ℤ) ≃ₗ[ℤ] (Fin m → Λ)) (P : Fin n → G) (π : Fin m → (G →* H)) (L : Λ → H)
    (hL : ∀ x y, L (x + y) = L x * L y) (hP : ∀ i u, π u (P i) = L (bas (Pi.single i 1) u))
    (k : ℕ) (hk : 0 < k) (ht : ∀ i, P i ^ k = 1)
    (hπ : ∀ y : Fin m → H, ∃! x : G, ∀ u, π u x = y u)
    (hb : ∀ y : G, y ^ k = 1 → ∃! c : Fin n → ZMod k, (List.ofFn fun i => P i ^ (c i).val).prod = y) :
    (∀ x, L x = 1 ↔ ∃ y, x = k • y) ∧ ∀ y : H, y ^ k = 1 → ∃ x, L x = y := by
  have : NeZero k := ⟨hk.ne'⟩
  have hcomp := levelFactor_comp bas P π L hL hP
  have htor := levelFactor_torsion u bas P π L hL hP k ht
  have L0 : L 0 = 1 := mul_left_cancel (a := L 0) (by rw [← hL, add_zero, _root_.mul_one])
  have hsm : ∀ (j : ℕ) (x : Λ), L (j • x) = L x ^ j := by
    intro j x
    induction j with
    | zero => rw [zero_smul, L0, pow_zero]
    | succ j ih => rw [succ_nsmul, hL, ih, pow_succ]
  have hone : ∀ a : G, (∀ v, π v a = 1) → a = 1 := by
    intro a ha
    obtain ⟨x, -, hx⟩ := hπ (fun _ => 1)
    exact (hx a ha).trans (hx 1 (fun v => map_one _)).symm
  have hred : ∀ w : Fin n → ℤ,
      ∏ i, P i ^ w i = (List.ofFn fun i => P i ^ ((w i : ZMod k).val)).prod := by
    intro w
    rw [List.prod_ofFn]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [zpow_eq_zpow_emod (w i) (n := (k : ℤ)) (by rw [zpow_natCast]; exact ht i),
      ← ZMod.val_intCast, zpow_natCast]
  refine ⟨fun x => ⟨fun hx => ?_, ?_⟩, fun y hy => ?_⟩
  · obtain ⟨w, hw⟩ : ∃ w, bas w = Pi.single u x := ⟨_, bas.apply_symm_apply _⟩
    have hg : ∏ i, P i ^ w i = 1 := hone _ fun v => by
      rw [hcomp, hw]
      by_cases hv : v = u
      · subst hv; rw [Pi.single_eq_same, hx]
      · rw [Pi.single_eq_of_ne hv, L0]
    obtain ⟨c0, -, huniq⟩ := hb 1 (one_pow _)
    have e1 := huniq (fun i => (w i : ZMod k)) ((hred w).symm.trans hg)
    have e2 := huniq 0 (by simp)
    have hdvd : ∀ i, (k : ℤ) ∣ w i := fun i =>
      (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp (congrFun (e1.trans e2.symm) i)
    choose w' hw' using hdvd
    have hww : w = (k : ℤ) • w' := funext fun i => by rw [Pi.smul_apply, smul_eq_mul, hw' i]
    refine ⟨bas w' u, ?_⟩
    calc x = bas w u := by rw [hw, Pi.single_eq_same]
      _ = ((k : ℤ) • bas w') u := by rw [hww, map_zsmul]
      _ = k • bas w' u := by rw [Pi.smul_apply, natCast_zsmul]
  · rintro ⟨y, rfl⟩
    rw [hsm, htor]
  · obtain ⟨a, ha, -⟩ := hπ (Pi.mulSingle u y)
    have hak : a ^ k = 1 := hone _ fun v => by
      rw [map_pow, ha]
      by_cases hv : v = u
      · subst hv; rw [Pi.mulSingle_eq_same, hy]
      · rw [Pi.mulSingle_eq_of_ne hv, one_pow]
    obtain ⟨c, hc, -⟩ := hb a hak
    refine ⟨bas (fun i => ((c i).val : ℤ)) u, ?_⟩
    have hprod : ∏ i, P i ^ ((c i).val : ℤ) = a := by
      rw [← hc, List.prod_ofFn]
      exact Finset.prod_congr rfl fun i _ => zpow_natCast _ _
    rw [← hcomp, hprod, ha, Pi.mulSingle_eq_same]

theorem level_on_factor_of_eighth_power : ∀ (h g : ℕ) (J : Type) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))) (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (S : Scheme.{0}) (s : S ⟶ Sp o) (t : TObj g k J b s) (A : Over S) [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (t.A ⟶ A)) (lev : (Fin h ⊕ Fin h → ℤ) → (𝟙_ (Over S) ⟶ A)), 0 < k → (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ t.A, ∀ u, x ≫ pr u = y u) → (∀ x y, lev (x + y) = lev x * lev y) → (∀ i u, (t.pt i ≫ pr u).left = (lev (bas (Pi.single i 1) u)).left) → (∀ x, lev x ^ k = 1) ∧ ∀ (K : Type) [Field K] [IsAlgClosed K] (p : Sp K ⟶ S), (∀ x, (toUnit (Over.mk p) ≫ lev x = 1 ↔ ∃ y, x = k • y)) ∧ ∀ y : Over.mk p ⟶ A, y ^ k = 1 → ∃ x, toUnit _ ≫ lev x = y := by
  intro h g J bas k o _ b S s t A _ _ pr lev hk hpr huniv hlev hpt
  have hcomp : ∀ i u, t.pt i ≫ pr u = lev (bas (Pi.single i 1) u) := fun i u =>
    Over.OverMorphism.ext (hpt i u)
  have hinj : ∀ (T : Over S) (x y : T ⟶ t.A), (∀ u, x ≫ pr u = y ≫ pr u) → x = y :=
    fun T x y hxy => (huniv T (fun u => y ≫ pr u)).unique hxy (fun u => rfl)
  let cg : ∀ T : Over S, CommGroup (T ⟶ t.A) := fun T =>
    { (inferInstance : Group (T ⟶ t.A)) with
      mul_comm := fun x y => hinj T _ _ fun u => by
        have := hpr u
        rw [MonObj.mul_comp, MonObj.mul_comp, _root_.mul_comm] }
  let π : ∀ T : Over S, Fin 8 → ((T ⟶ t.A) →* (T ⟶ A)) := fun T u =>
    MonoidHom.mk' (fun x => x ≫ pr u) (fun x y => by
      have := hpr u
      exact MonObj.mul_comp x y (pr u))
  refine ⟨?_, fun K _ _ p => ?_⟩
  · letI := cg (Out.baseOver S)
    exact levelFactor_torsion (G := Out.baseOver S ⟶ t.A) (H := Out.baseOver S ⟶ A)
      (0 : Fin 8) bas t.pt (π _) lev hlev hcomp k t.torsion
  let T := Over.mk p
  letI := cg T
  let q : T ⟶ Out.baseOver S := Over.homMk p (by simp [T])
  let ρ : (Out.baseOver S ⟶ t.A) →* (T ⟶ t.A) :=
    MonoidHom.mk' (fun x => q ≫ x) (fun x y => MonObj.comp_mul q x y)
  have hq : toUnit T = q := toUnit_unique _ _
  refine levelFactor_bij (G := T ⟶ t.A) (0 : Fin 8) bas (fun i => q ≫ t.pt i) (π T)
    (fun x => toUnit T ≫ lev x) (fun x y => by rw [hlev, MonObj.comp_mul]) (fun i u => ?_) k hk
    (fun i => by
      have h1 := map_pow ρ (t.pt i) k
      rw [t.torsion, map_one] at h1
      exact h1.symm)
    (fun y => huniv T y) (fun y hy => t.bij K p y hy)
  show (q ≫ t.pt i) ≫ pr u = toUnit T ≫ lev (bas (Pi.single i 1) u)
  rw [Category.assoc, hcomp, hq]

end GlobalTheory.ZM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelOnFactorOfEighthPowerAbelianScheme =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8Form =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8Form", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LocallyOfFinitePresentation\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSecImageNonzeroLocus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.PowerForm

theorem diag_pos {W : Matrix (Fin 8) (Fin 8) ℤ} (h : IsE8 W) (u : Fin 8) : 0 < W u u := by
  have h₁ := h.1.diag_pos (i := u)
  simp only [Matrix.map_apply, Matrix.add_apply, Matrix.transpose_apply, Int.cast_pos] at h₁
  omega

theorem sum_single {G M : Type*} [Group G] [AddCommGroup M] (B : G → G → M)
    (h₁ : ∀ x x' y, B (x * x') y = B x y + B x' y) (h₂ : ∀ x x' y, B y (x * x') = B y x + B y x')
    (W : Matrix (Fin 8) (Fin 8) ℤ) (x : G) :
    ∑ uv : Fin 8 × Fin 8, W uv.1 uv.2 • B (if uv.1 = 0 then x else 1) (if uv.2 = 0 then x else 1) =
      W 0 0 • B x x := by
  have z₁ : ∀ y, B 1 y = 0 := fun y => by simpa using h₁ 1 1 y
  have z₂ : ∀ y, B y 1 = 0 := fun y => by simpa using h₂ 1 1 y
  rw [Finset.sum_eq_single (0, 0) (fun b _ hb => ?_) (by simp)]
  · simp
  · by_cases a₁ : b.1 = 0
    · have a₂ : b.2 ≠ 0 := fun a₂ => hb (Prod.ext a₁ a₂)
      rw [if_neg a₂, z₂, smul_zero]
    · rw [if_neg a₁, z₁, smul_zero]

open GlobalTheory.CechPic in
theorem relAmple_diag : ∀ (W : Matrix (Fin 8) (Fin 8) ℤ) (S : Scheme.{0}) [IsLocallyNoetherian S] (G A : Over S) [GrpObj G] [IsCommMonObj G] [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (G ⟶ A)) (L : LB G.left) (P : LB (G2 A).left), IsE8 W → IsAbelianScheme G → IsAbelianScheme A → (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) → L.IsLB → P.IsLB → (∀ (T : Over S) (x x' y : T ⟶ A), (∃ t : (LB.LinComb P (K := Fin 3) ![(lift (x * x') y).left, (lift x y).left, (lift x' y).left] ![1, -1, -1]).Gen, t.IsGen) ∧ ∃ t : (LB.LinComb P (K := Fin 3) ![(lift y (x * x')).left, (lift y x).left, (lift y x').left] ![1, -1, -1]).Gen, t.IsGen) → LBIso L (LB.LinComb P (K := Fin 8 × Fin 8) (fun uv => (lift (pr uv.1) (pr uv.2)).left) (fun uv => W uv.1 uv.2)) → Out.RelAmple G L → Out.RelAmple A (P.pull (lift (𝟙 A) (𝟙 A)).left) := by
  intro W S _ G A _ _ _ _ pr L P hW hG hA _ hpr hL hP hbi hiso hamp
  obtain ⟨j, hj, -⟩ := hpr A fun v => if v = 0 then 𝟙 A else 1
  have := hG.proper
  have hcl : IsClosedImmersion j.left := GlobalTheory.Retract.isClosedImmersion_section (r := (pr 0).left)
    (by rw [← Over.comp_left, hj, if_pos rfl, Over.id_left]) (Over.w (pr 0))
  have hpos := diag_pos hW 0
  have hn : 0 < (W 0 0).toNat := by omega
  have hD : (P.pull (lift (𝟙 A) (𝟙 A)).left).IsLB := LB.isLB_pull hP _
  have hfin : IsFinite (𝟙 A : A ⟶ A).left := by rw [Over.id_left]; infer_instance
  have c₁ := (relAmple_finite_pow_iso S A G j L 1 one_pos hA hG hL inferInstance).1 hamp
  refine (relAmple_finite_pow_iso S A A (𝟙 A) _ _ hn hA hA hD hfin).2.1.1
    ((relAmple_finite_pow_iso S A A (𝟙 A) _ 1 one_pos hA hA (LB.isLB_pull hL _) hfin).2.2.2 _
      (LB.isLB_linComb hD _ _) ?_ c₁)
  refine (cls_eq_iff (LB.isLB_pull hL _) (LB.isLB_linComb hD _ _)).1 ?_

  rw [cls_linComb hD, Fintype.sum_unique, pull_id, cls_pull hL, (cls_eq_iff hL (LB.isLB_linComb hP _ _)).2 hiso, cls_linComb hP, map_sum,
  cls_pull hP, Int.toNat_of_nonneg hpos.le]
  refine Eq.trans (Finset.sum_congr rfl fun uv _ => ?_)
    (sum_single (G := A ⟶ A) (fun a b => pull (lift a b).left (cls P hP)) (fun a a' b => ?_) (fun a a' b => ?_)
      W (𝟙 A))
  · rw [map_zsmul, ← pull_comp, ← Over.comp_left, comp_lift, hj, hj]
  · have e := (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).2 (hbi A a a' b).1
    rw [cls_linComb hP, Fin.sum_univ_three] at e
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul] at e
    rw [← sub_eq_zero, ← e]
    abel
  · have e := (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).2 (hbi A a a' b).2
    rw [cls_linComb hP, Fin.sum_univ_three] at e
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul] at e
    rw [← sub_eq_zero, ← e]
    abel

end GlobalTheory.PowerForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8Form =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8FormStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8FormStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8Form\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8FormStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelAdjointPrimitiveOfDenseEighthPowers =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelAdjointPrimitiveOfDenseEighthPowers", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.AdjointEndomorphismsCubeLBOfDenseFibres\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EighthPowerIntegerMatrixPrimitiveAdjoint\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LbIsoCubeGraphOfDenseFibres\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleTrivialIsoDescendField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.SharpAdjoint

open GlobalTheory.ShapePull

variable {o : Type} [CommRing o] {g k : ℕ} {J : Type} {b : TBase o k}

theorem isLB_linComb {X Y : Scheme.{0}} {L : LB X} (hL : L.IsLB) {K : Type} [Fintype K] (ψ : K → (Y ⟶ X))
    (ε : K → ℤ) : (LB.LinComb L ψ ε).IsLB := DVR.linComb_isLB _ hL _ _

theorem transfer {K : Type} [Field K] {S₁ S₂ : Scheme.{0}} [Nonempty S₁] {s₀ : Sp K ⟶ Sp o} {s₁ : S₁ ⟶ Sp o}
    {s₂ : S₂ ⟶ Sp o} {f₁ : S₁ ⟶ Sp K} {f₂ : S₂ ⟶ Sp K} {t₀ : TObj g k J b s₀} {t₁ : TObj g k J b s₁}
    {t₂ : TObj g k J b s₂} (H₁ : TMap t₁ t₀ f₁) (H₂ : TMap t₂ t₀ f₂) (w w' : J) :
    (LBIso (cubeLB t₁.A ![fst t₁.A t₁.A ≫ t₁.act w, snd t₁.A t₁.A] t₁.L)
        (cubeLB t₁.A ![fst t₁.A t₁.A, snd t₁.A t₁.A ≫ t₁.act w'] t₁.L) →
      LBIso (cubeLB t₂.A ![fst t₂.A t₂.A ≫ t₂.act w, snd t₂.A t₂.A] t₂.L)
        (cubeLB t₂.A ![fst t₂.A t₂.A, snd t₂.A t₂.A ≫ t₂.act w'] t₂.L)) ∧
    (LBIso t₁.L (cubeLB t₁.A ![𝟙 t₁.A, t₁.act w] t₁.L) → LBIso t₂.L (cubeLB t₂.A ![𝟙 t₂.A, t₂.act w] t₂.L)) := by
  obtain ⟨φ, h, hL, -, hact⟩ := H₁
  obtain ⟨φ', h', hL', -, hact'⟩ := H₂
  let _ := t₀.ab.comm
  let _ := t₁.ab.comm
  let _ := t₂.ab.comm
  have := t₀.ab.smooth
  have := t₀.ab.proper
  have := t₀.ab.geomConnected
  have pr : IsProper (t₀.A ⊗ t₀.A).hom := by
    rw [Over.tensorObj_hom]
    infer_instance
  have i₂ := iso_cubeLB_pull h _ hL (push_comp h _ (push_fst h) (hact w)) (push_snd h)
  have i₃ := iso_cubeLB_pull h _ hL (push_fst h) (push_comp h _ (push_snd h) (hact w'))
  have i₄ := iso_cubeLB_pull h _ hL (push_id h) (push_end h (hact w))
  have j₂ := iso_cubeLB_pull h' _ hL' (push_comp h' _ (push_fst h') (hact' w)) (push_snd h')
  have j₃ := iso_cubeLB_pull h' _ hL' (push_fst h') (push_comp h' _ (push_snd h') (hact' w'))
  have j₄ := iso_cubeLB_pull h' _ hL' (push_id h') (push_end h' (hact' w))
  refine ⟨fun H => ?_, fun H => ?_⟩
  · have d := iso_down (isPullback_sqMap h) (smooth_tensorObj_hom _ _) pr (geometricallyConnected_tensorObj_hom _ _)
      (isLB_linComb t₀.isLB _ _) (isLB_linComb t₀.isLB _ _) (isLB_linComb t₁.isLB _ _) (isLB_linComb t₁.isLB _ _)
      i₂ i₃ H
    exact iso_up (isLB_linComb t₀.isLB _ _) (isLB_linComb t₀.isLB _ _) (isLB_linComb t₂.isLB _ _)
      (isLB_linComb t₂.isLB _ _) j₂ j₃ d
  · have d := iso_down h.1 ‹_› ‹_› ‹_› t₀.isLB (isLB_linComb t₀.isLB _ _) t₁.isLB (isLB_linComb t₁.isLB _ _) hL i₄ H
    exact iso_up t₀.isLB (isLB_linComb t₀.isLB _ _) t₂.isLB (isLB_linComb t₂.isLB _ _) hL' j₄ d

theorem adjoint_primitive_of_dense : Out.GlobalFnsSt → (∀ (S : Scheme.{0}) (P : Out.PolAV S) (M : LB P.A.left), M.IsLB → ∃ t : LB.Gen (Theta P.A M), t.IsGen) → ∀ (h g : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) (a : J → Matrix (Fin 8) (Fin 8) ℤ) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))) (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (em : o →+* ℂ) (S : Scheme.{0}) [IsReduced S] (s : S ⟶ Sp o) (t : TObj g k J b s), Dense (fromSet em (SharpClass (b := b) W a bas em) t) → (∀ j j', (a j).transpose * (W + W.transpose) = (W + W.transpose) * a j' → LBIso (cubeLB t.A ![fst t.A t.A ≫ t.act j, snd t.A t.A] t.L) (cubeLB t.A ![fst t.A t.A, snd t.A t.A ≫ t.act j'] t.L)) ∧ ∀ j, (W + W.transpose) * a j = W → LBIso t.L (cubeLB t.A ![𝟙 t.A, t.act j] t.L) := by
  intro hG cube h g W J a bas k o _ b em S _ s t hd
  let _ := t.ab.comm
  have : Nonempty (Sp ℂ) := inferInstanceAs (Nonempty (PrimeSpectrum ℂ))
  refine ⟨fun j j' hj => _root_.GlobalTheory.adjoint_cubeLB_of_dense_fibres hG S t.A t.L _ _ t.ab t.isLB t.ample (t.hom j) (t.hom j') (hd.mono ?_),
    fun j hj => _root_.GlobalTheory.lbIso_cube_of_dense hG S t.A t.L _ t.ab t.isLB t.ample t.rigid (t.hom j) (hd.mono ?_)⟩
  · rintro p ⟨K, _, x, hp, K₀, _, β, i, i', t₀, tx, tc, -, -, ⟨φ, hφ, hL, -, hact⟩, m₂, m₁, c, -, pr, hm, hu, hl,
      hmat, -⟩
    exact ⟨K, inferInstance, x, tx.A, inferInstance, tx.ab.comm, φ, tx.L, tx.act j, tx.act j', hp, hφ, tx.isLB, hL,
      hact j, hact j', (transfer m₁ m₂ j j').1 ((PowerAdjoint.matrix_primitive_adjoint cube W ℂ o _ h k _ c tc.pol pr
        hm hu hl (a j) (tc.act j) (hmat j)).2 (a j') (tc.act j') (hmat j') hj)⟩
  · rintro p ⟨K, _, x, hp, K₀, _, β, i, i', t₀, tx, tc, -, -, ⟨φ, hφ, hL, -, hact⟩, m₂, m₁, c, -, pr, hm, hu, hl,
      hmat, -⟩
    exact ⟨K, inferInstance, x, tx.A, inferInstance, tx.ab.comm, φ, tx.L, tx.act j, hp, hφ, tx.isLB, hL,
      hact j, (transfer m₁ m₂ j j).2 ((PowerAdjoint.matrix_primitive_adjoint cube W ℂ o _ h k _ c tc.pol pr
        hm hu hl (a j) (tc.act j) (hmat j)).1 hj)⟩

end GlobalTheory.SharpAdjoint
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelAdjointPrimitiveOfDenseEighthPowers =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilPairingDiagonalBundleOfEighthPowerForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilPairingDiagonalBundleOfEighthPowerForm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGenMovePow\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LineBundleIsoLinCombSymmBiadditiveSubstitution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.WeilDown

def qf (W : Matrix (Fin 8) (Fin 8) ℤ) (v : Fin 8 → ℤ) : ℤ := ∑ u, ∑ u', W u u' * (v u * v u')

theorem sum_symm (W : Matrix (Fin 8) (Fin 8) ℤ) (v : Fin 8 → ℤ) :
    ∑ u, ∑ u', (W + W.transpose) u u' * (v u * v u') = 2 * qf W v := by
  simp only [Matrix.add_apply, Matrix.transpose_apply, add_mul, Finset.sum_add_distrib, two_mul, qf]
  congr 1
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring

theorem qf_nonneg {W : Matrix (Fin 8) (Fin 8) ℤ} (hW : IsE8 W) (v : Fin 8 → ℤ) : 0 ≤ qf W v := by
  have h := hW.1.posSemidef.dotProduct_mulVec_nonneg (fun i => (v i : ℝ))
  have e : (((2 * qf W v : ℤ)) : ℝ) = star (fun i => (v i : ℝ)) ⬝ᵥ
      ((W + W.transpose).map (Int.cast : ℤ → ℝ)).mulVec (fun i => (v i : ℝ)) := by
    rw [← sum_symm]
    simp only [dotProduct, Matrix.mulVec, Matrix.map_apply, Pi.star_apply, star_trivial, Finset.mul_sum]
    push_cast
    exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
  rw [← e] at h
  have : (0 : ℤ) ≤ 2 * qf W v := by exact_mod_cast h
  omega

theorem qf_add (W : Matrix (Fin 8) (Fin 8) ℤ) (a b : Fin 8 → ℤ) :
    qf W (a + b) = qf W a + qf W b + b ⬝ᵥ (W + W.transpose).mulVec a := by
  simp only [qf, dotProduct, Matrix.mulVec, Matrix.add_apply, Matrix.transpose_apply, Pi.add_apply, add_mul,
    mul_add, Finset.sum_add_distrib, Finset.mul_sum]
  have e₁ : ∑ u, ∑ u', W u u' * (b u * a u') = ∑ u, ∑ u', b u * (W u u' * a u') :=
    Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
  have e₂ : ∑ u, ∑ u', W u u' * (a u * b u') = ∑ u, ∑ u', b u * (W u' u * a u') := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
  rw [e₁, e₂]
  ring

theorem exists_qf_one {W : Matrix (Fin 8) (Fin 8) ℤ} (hW : IsE8 W) :
    ∃ a b, qf W (a + b) = qf W a + qf W b + 1 := by
  refine ⟨(W + W.transpose).adjugate.mulVec (Pi.single 0 1), Pi.single 0 1, ?_⟩
  rw [qf_add, Matrix.mulVec_mulVec, Matrix.mul_adjugate, hW.2]
  simp

theorem eq_of_zpow_qf {W : Matrix (Fin 8) (Fin 8) ℤ} (hW : IsE8 W) {U : Type*} [CommGroup U] (a b : U)
    (h : ∀ v, a ^ qf W v = b ^ qf W v) : a = b := by
  obtain ⟨v, w, e⟩ := exists_qf_one hW
  have := h (v + w)
  rw [e, zpow_add, zpow_add, zpow_add, zpow_add, h v, h w, zpow_one, zpow_one] at this
  exact mul_left_cancel this

theorem omegaStd_smul {h : ℕ} (m n : ℤ) (x y : Fin h ⊕ Fin h → ℤ) :
    omegaStd (m • x) (n • y) = m * n * omegaStd x y := by
  simp only [omegaStd, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun a _ => by ring

section Pairing

open GlobalTheory.CechPic

variable {S : Scheme.{0}} {A : Over S} {T T' : Over S}

def q (π : Pic (A ⊗ A).left) (a b : T ⟶ A) : Pic T.left := pull (lift a b).left π

theorem qp (π : Pic (A ⊗ A).left) (t : T' ⟶ T) (a b : T ⟶ A) : pull t.left (q π a b) = q π (t ≫ a) (t ≫ b) := by
  rw [q, q, ← pull_comp, ← Over.comp_left, comp_lift]

theorem q_comm {π : Pic (A ⊗ A).left} (e : π = pull (lift (snd A A) (fst A A)).left π) (a b : T ⟶ A) :
    q π a b = q π b a := by
  have k : (lift b a).left ≫ (lift (snd A A) (fst A A)).left = (lift a b).left := by
    rw [← Over.comp_left, comp_lift, lift_fst, lift_snd]
  rw [q, q, ← k, pull_comp, ← e]

variable [GrpObj A]

theorem q_mul {P : LB (A ⊗ A).left} (hP : P.IsLB) (a a' b : T ⟶ A)
    (h : ∃ t : (LB.LinComb P (K := Fin 3) ![(lift (a * a') b).left, (lift a b).left, (lift a' b).left]
      ![1, -1, -1]).Gen, t.IsGen) : q (cls P hP) (a * a') b = q (cls P hP) a b + q (cls P hP) a' b := by
  have e := (cls_eq_zero_iff (LB.isLB_linComb hP _ _)).2 h
  rw [cls_linComb hP, Fin.sum_univ_three] at e
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, one_smul, neg_smul] at e
  rw [← sub_eq_zero, ← e, q, q, q]
  abel

theorem cls_theta {D : LB A.left} (hD : D.IsLB) (k : ℤ) (x : T ⟶ A) (h : (Out.thetaLB A D k x).IsLB) :
    cls _ h = k • pull (snd T A).left (cls D hD) + (-k) • pull ((fst T A ≫ x) * snd T A).left (cls D hD) := by
  refine (cls_linComb hD _ _ h).trans ?_
  rw [Fin.sum_univ_two]
  rfl

variable [IsCommMonObj A]

theorem q_zpow {π : Pic (A ⊗ A).left} (ql : ∀ a a' b : T ⟶ A, q π (a * a') b = q π a b + q π a' b)
    (a b : T ⟶ A) (n : ℤ) : q π (a ^ n) b = n • q π a b := by
  have := BilinCalc.map_prod_zpow (fun z => q π z b) (fun s t => ql s t b) (fun _ : Fin 1 => a) (fun _ => n)
  simpa using this

theorem exists_theta {π : Pic (A ⊗ A).left} {D : LB A.left} (hD : D.IsLB) (cD : cls D hD = q π (𝟙 A) (𝟙 A))
    (ql : ∀ a a' b : T ⊗ A ⟶ A, q π (a * a') b = q π a b + q π a' b) (qs : ∀ a b : T ⊗ A ⟶ A, q π a b = q π b a)
    (k : ℕ) (x : T ⟶ A) (hx : x ^ k = 1) (h0 : q π x x = 0) : ∃ θ : Out.ThetaGrp A D k T, θ.pt = x := by
  have hz : cls (Out.thetaLB A D k x) (LB.isLB_linComb hD _ _) = 0 := by
    have e₁ : q π (fst T A ≫ x) (fst T A ≫ x) = 0 := by
      rw [← qp, h0, map_zero]
    have e₂ : (k : ℤ) • q π (fst T A ≫ x) (snd T A) = 0 := by
      rw [← q_zpow ql, zpow_natCast, ← MonObj.comp_pow, hx, MonObj.comp_one, ← zpow_zero 1, q_zpow ql, zero_smul]
    refine (cls_theta hD _ _ _).trans ?_
    rw [cD, qp, qp, Category.comp_id, Category.comp_id, ql, qs (fst _ _ ≫ _), qs (snd _ _) (_ * _),
      ql, ql, e₁, qs (snd _ _) (fst _ _ ≫ _)]
    simp only [smul_add, neg_smul, e₂, smul_zero]
    abel
  obtain ⟨t, ht⟩ := (cls_eq_zero_iff _).1 hz
  exact ⟨⟨x, t, ht⟩, rfl⟩

end Pairing


open GlobalTheory.CechPic in
theorem weilIs_diag : Out.GlobalFnsSt → ∀ (h k : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (S : Scheme.{0}) (G A : Over S) [GrpObj G] [IsCommMonObj G] [GrpObj A] [IsCommMonObj A] (pr : Fin 8 → (G ⟶ A)) (L : LB G.left) (P : LB (G2 A).left) (K : Type) [Field K] (p : Sp K ⟶ S) (lev : (Fin h ⊕ Fin h → ℤ) → (Over.mk p ⟶ A)) (c : Γ((Over.mk p).left, ⊤)ˣ), IsE8 W → IsAbelianScheme G → IsAbelianScheme A → (∀ u, IsMonHom (pr u)) → (∀ (T : Over S) (y : Fin 8 → (T ⟶ A)), ∃! x : T ⟶ G, ∀ u, x ≫ pr u = y u) → L.IsLB → P.IsLB → LBIso P (P.pull (lift (snd A A) (fst A A)).left) → (∀ (T : Over S) (x x' y : T ⟶ A), (∃ t : (LB.LinComb P (K := Fin 3) ![(lift (x * x') y).left, (lift x y).left, (lift x' y).left] ![1, -1, -1]).Gen, t.IsGen) ∧ ∃ t : (LB.LinComb P (K := Fin 3) ![(lift y (x * x')).left, (lift y x).left, (lift y x').left] ![1, -1, -1]).Gen, t.IsGen) → LBIso L (LB.LinComb P (K := Fin 8 × Fin 8) (fun uv => (lift (pr uv.1) (pr uv.2)).left) (fun uv => W uv.1 uv.2)) → (∀ x y, lev (x + y) = lev x * lev y) → (∀ x, lev x ^ k = 1) → (∀ (X Y : Fin 8 → (Fin h ⊕ Fin h → ℤ)) (y y' : Over.mk p ⟶ G), (∀ u, y ≫ pr u = lev (X u)) → (∀ u, y' ≫ pr u = lev (Y u)) → Out.WeilIs G L k y y' (c ^ ∑ u, ∑ v, (W + W.transpose) u v * omegaStd (X u) (Y v))) → ∀ x y, Out.WeilIs A (P.pull (lift (𝟙 A) (𝟙 A)).left) k (lev x) (lev y) (c ^ (2 * omegaStd x y)) := by
  intro hG h k W S G A _ _ _ _ pr L P K _ p lev c hW hGab hA hpr hprod hL hP hsym hbi hLP hadd htor hweil x y
  have hD := pull_isLB hP (lift (𝟙 A) (𝟙 A)).left
  have ql : ∀ {T : Over S} (a a' b : T ⟶ A), q (cls P hP) (a * a') b = q (cls P hP) a b + q (cls P hP) a' b :=
    fun {T} a a' b => q_mul hP a a' b (hbi T a a' b).1
  have qs : ∀ {T : Over S} (a b : T ⟶ A), q (cls P hP) a b = q (cls P hP) b a :=
    q_comm ((cls_eq_iff hP (pull_isLB hP _)).2 hsym)
  have cD : cls _ hD = q (cls P hP) (𝟙 A) (𝟙 A) := rfl
  have q0 : ∀ a b : Over.mk p ⟶ A, q (cls P hP) a b = 0 := fun a b =>
    (cls_eq_zero_iff (pull_isLB hP (lift a b).left)).2 (DVR.exists_gen_of_local (V := K) P hP _ _)
  have lift_ : ∀ z, ∃ θ : Out.ThetaGrp A (P.pull (lift (𝟙 A) (𝟙 A)).left) k (Over.mk p), θ.pt = lev z := fun z =>
    exists_theta hD cD ql qs k _ (htor z) (q0 _ _)
  have loc : ∀ z (s : (Over.mk p).left), ∃ V : (Over.mk p).left.Opens, s ∈ V ∧
      ∃ θ : Out.ThetaGrp A (P.pull (lift (𝟙 A) (𝟙 A)).left) k (Out.overRes V), θ.pt = Out.overResι V ≫ lev z :=
    fun z s => by
      obtain ⟨θ, e⟩ := lift_ z
      obtain ⟨θ', e'⟩ := CommutatorPairing.exists_pull hD θ (Out.overResι ⊤)
      exact ⟨⊤, trivial, θ', by rw [e', e]⟩
  obtain ⟨c₀, hc₀⟩ := CommutatorPairing.exists_weilIs hG hA hD (loc x) (loc y)
  suffices c₀ = c ^ (2 * omegaStd x y) from this ▸ hc₀
  refine eq_of_zpow_qf hW _ _ fun v => ?_
  have levz : ∀ z (n : ℤ), lev (n • z) = lev z ^ n := fun z n => by
    let F : Multiplicative (Fin h ⊕ Fin h → ℤ) →* (Over.mk p ⟶ A) :=
      MonoidHom.mk' (fun w => lev w.toAdd) fun a b => hadd _ _
    exact map_zpow F (Multiplicative.ofAdd z) n
  obtain ⟨ψ, hψ, -⟩ := hprod A fun u => 𝟙 A ^ v u
  have ext : ∀ {T : Over S} (a b : T ⟶ G), (∀ u, a ≫ pr u = b ≫ pr u) → a = b := fun {T} a b e =>
    (hprod T fun u => b ≫ pr u).unique e fun _ => rfl
  have hc : ∀ {T : Over S} (a : T ⟶ A) u, (a ≫ ψ) ≫ pr u = a ^ v u := fun a u => by
    rw [Category.assoc, hψ, GrpObj.comp_zpow, Category.comp_id]
  have hmon : IsMonHom ψ := by
    constructor
    · refine ext _ _ fun u => ?_
      have e₁ : (η[A] : 𝟙_ _ ⟶ A) = 1 := by rw [Hom.one_def]; simp
      rw [hc, IsMonHom.one_hom, e₁, one_zpow]
    · refine ext _ _ fun u => ?_
      have e₁ : μ[A] = fst A A * snd A A := by rw [Hom.mul_def]; simp
      have e₂ : (ψ ⊗ₘ ψ) ≫ μ[G] = (fst A A ≫ ψ) * (snd A A ≫ ψ) := by rw [Hom.mul_def]; congr 1
      rw [hc, e₁, e₂, MonObj.mul_comp, hc, hc, mul_zpow]
  have hd : ((qf W v).toNat : ℤ) = qf W v := Int.toNat_of_nonneg (qf_nonneg hW v)
  have hn : (lbPow (P.pull (lift (𝟙 A) (𝟙 A)).left) (qf W v).toNat).IsLB := LB.isLB_linComb hD _ _
  have hiso : LBIso (lbPow (P.pull (lift (𝟙 A) (𝟙 A)).left) (qf W v).toNat) (L.pull ψ.left) := by

    rw [← cls_eq_iff hn (pull_isLB hL _), cls_lbPow hD, cD, cls_pull hL,
    (cls_eq_iff hL (LB.isLB_linComb hP _ _)).2 hLP, cls_linComb hP, map_sum, ← natCast_zsmul, hd, qf,
    ← Fintype.sum_prod_type', Finset.sum_smul]
    refine Finset.sum_congr rfl fun uv _ => ?_
    rw [map_zsmul]
    refine Eq.trans ?_ (congrArg _ (qp (cls P hP) ψ (pr uv.1) (pr uv.2))).symm
    rw [hψ, hψ, q_zpow ql, qs _ (_ ^ _), q_zpow ql, smul_smul, smul_smul, _root_.mul_assoc]
  have key := (weilIs_along_hom hG S A G ψ _ L _ k _ (lev x) (lev y) c₀ _ hA hGab hD hL hmon hiso
    (hweil (fun u => v u • x) (fun u => v u • y) _ _ (fun u => by rw [hc, levz]) (fun u => by rw [hc, levz]))).2 hc₀
  rw [← hd, zpow_natCast, ← key, hd, ← zpow_mul]
  congr 1
  have e : ∀ a b : ℤ, a * (b * omegaStd x y) = a * b * omegaStd x y := fun a b => (_root_.mul_assoc _ _ _).symm
  simp only [omegaStd_smul, e, ← Finset.sum_mul]
  rw [sum_symm]
  ring

end GlobalTheory.WeilDown
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilPairingDiagonalBundleOfEighthPowerForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEighthPowerPrincipalSiegelOfDense =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEighthPowerPrincipalSiegelOfDense", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsArBaseAway\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.SecBaseChangeAnySt\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianSchemeEighthPowerOfMatrixAction\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.CommutatorPairingE8SharpLevelPoints\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.DenseE8SharpAfterAdjoiningAllMatrices\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.E8SharpFamilyMatrixRelationsDense\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqOneOfBiadditiveSliceTrivialEighthPower\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSymmetricBiadditiveBundleEighthPower\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.GoodClass\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelOnFactorOfEighthPowerAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.RelAmpleDiagonalBiadditiveOfE8FormStatement\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelAdjointPrimitiveOfDenseEighthPowers\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilPairingDiagonalBundleOfEighthPowerForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
open GlobalTheory.ZM

namespace GlobalTheory.SharpFamily

theorem exists_isSharp_of_dense : Out.Laws → Out.Laws2 → (∀ (S : Scheme.{0}) (P : Out.PolAV S) (M : LB P.A.left), M.IsLB → ∃ t : LB.Gen (Theta P.A M), t.IsGen) → ∀ (h g : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) (a : J → Matrix (Fin 8) (Fin 8) ℤ) (bas : (Fin (2 * g) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ))), IsE8 W → IsSharpBasis W bas → (∀ u v, ∃ j, a j = Matrix.single u v 1) → ∀ (k : ℕ) (o : Type) [CommRing o] (b : TBase o k) (em : o →+* ℂ) (S : Scheme.{0}) [IsLocallyNoetherian S] [IsReduced S] (s : S ⟶ Sp o) (t : TObj g k J b s), Odd k → Dense (fromSet em (SharpClass (b := b) W a bas em) t) → ∃ c : SiegPre h k (b.ζ : o) s, c.Principal ∧ IsSharp W a bas t c := by
  intro laws _ cube h g W J a bas hW hbas hunit k o _ b em S _ _ s t₀ hk hd₀
  obtain ⟨t, hd, back⟩ := _root_.GlobalTheory.exists_dense_sharp_all_matrices h g W J a bas k o b em S s t₀ hunit hd₀
  obtain ⟨rmul, radd, rone, rpt⟩ := _root_.GlobalTheory.sharp_family_relations h g W _ _ bas k o b em S s t hd
  obtain ⟨adj, diag⟩ := _root_.GlobalTheory.SharpAdjoint.adjoint_primitive_of_dense laws.globalFns cube h g W _ _ bas k o b em S s t hd
  letI := t.ab.comm
  let ρ : Matrix (Fin 8) (Fin 8) ℤ → (t.A ⟶ t.A) := fun m => t.act (Sum.inr m)
  obtain ⟨A, _, pr, hA, hpr, hprod, hρ⟩ := _root_.GlobalTheory.MatrixPower.abelianScheme_matrix_power S t.A ρ t.ab (fun m => t.hom _)
    (fun m m' => rmul (Sum.inr m) (Sum.inr m') (Sum.inr _) rfl) (fun m m' => radd (Sum.inr m) (Sum.inr m') (Sum.inr _) rfl)
    (rone (Sum.inr 1) rfl)
  letI := hA.comm
  obtain ⟨P, hP, r₁, r₂, hsym, hbi, hiso⟩ := _root_.GlobalTheory.EighthPower.main W S t.A A pr t.L ρ hW hpr hprod t.isLB
    (cube S t.pol t.L t.isLB) hρ (fun m m' e => adj (Sum.inr m) (Sum.inr m') e) (fun m e => diag (Sum.inr m) e)
  let pt : Fin (2 * g) → (𝟙_ (Over S) ⟶ t.A) := fun i => Over.homMk (t.pt i).left (Over.w (t.pt i))
  let lev : (Fin h ⊕ Fin h → ℤ) → (𝟙_ (Over S) ⟶ A) := fun x =>
    (∏ i, pt i ^ bas.symm (Pi.single 0 x) i) ≫ pr 0
  have hadd : ∀ x y, lev (x + y) = lev x * lev y := fun x y => by
    have := hpr 0
    simp only [lev, Pi.single_add, map_add (f := _), Pi.add_apply, zpow_add, Finset.prod_mul_distrib, MonObj.mul_comp]
  have hpt : ∀ i u, (t.pt i ≫ pr u).left = (lev (bas (Pi.single i 1) u)).left := fun i u => by
    have e₁ : ρ (Matrix.single 0 u 1) ≫ pr 0 = pr u := by
      rw [hρ, List.prod_ofFn, Finset.prod_eq_single u] <;> simp +contextual [eq_comm]
    have e₂ := rpt (Sum.inr (Matrix.single 0 u 1)) i
    have e₃ : (fun u' => ∑ v, (Sum.elim a id (Sum.inr (Matrix.single 0 u 1)) : Matrix (Fin 8) (Fin 8) ℤ) u' v •
        bas (Pi.single i 1) v) = Pi.single 0 (bas (Pi.single i 1) u) := by
      funext u'
      by_cases hu : u' = 0
      · subst hu
        simp [Matrix.single_apply]
      · simp [hu, Ne.symm hu]
    rw [e₃, List.prod_ofFn] at e₂
    rw [← e₁, ← Category.assoc, e₂]
    rfl
  obtain ⟨htor, hgeo⟩ := _root_.GlobalTheory.ZM.level_on_factor_of_eighth_power h g _ bas k o b S s t A pr lev hk.pos hpr hprod hadd hpt
  refine ⟨{ A := A, ab := hA, P := P, isLB := hP, rig₁ := r₁, rig₂ := r₂, symm := hsym, lev := lev, lev_add := hadd,
            lev_tors := htor, geom := fun K _ _ p β z hp hz => ⟨(hgeo K p).1, (hgeo K p).2, fun x y => ?_⟩ },
    ⟨_root_.GlobalTheory.PowerForm.relAmple_diag W S t.A A pr t.L P hW t.ab hA hpr hprod t.isLB hP hbi hiso t.ample,
      _root_.GlobalTheory.FormBundleKer.eq_one_of_slice_trivial W S t.A A pr t.L P hpr hprod t.isLB hP hsym hbi hiso t.ktriv⟩,
    back _ ⟨pr, hpr, hprod, hiso, fun j u => ?_, hpt⟩⟩
  · have e : unitOn (z ^ (2 * omegaStd x y)) = unitOn z ^ (2 * omegaStd x y) := map_zpow (Units.map _) _ _
    rw [e]
    exact _root_.GlobalTheory.WeilDown.weilIs_diag laws.globalFns h k W S t.A A pr t.L P K p (fun x => toUnit _ ≫ lev x) (unitOn z) hW t.ab hA
      hpr hprod t.isLB hP hsym hbi hiso (fun x y => by rw [hadd, MonObj.comp_mul])
      (fun x => by rw [← MonObj.comp_pow, htor, MonObj.comp_one])
      (_root_.GlobalTheory.weilIs_sharp_levelPoints laws h g W _ bas k o b S s t A pr lev hbas hpr hprod hadd hpt K p β z hp hz) x y
  · rw [rmul (Sum.inr (Sum.elim a id j)) (Sum.inr 1) j (_root_.mul_one _).symm, rone (Sum.inr 1) rfl, Category.id_comp]
    exact hρ _ u

end GlobalTheory.SharpFamily
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEighthPowerPrincipalSiegelOfDense =====
