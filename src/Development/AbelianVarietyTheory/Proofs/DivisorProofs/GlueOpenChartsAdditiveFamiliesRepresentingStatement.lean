module

public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedPicardClassZeroOfLocallyZeroStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersion
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetract
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackGeneratorOfTrivialOnOpen
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleGlueOfOpenCoverCocycle
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpen
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleOnOpenPullCompIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLineBundlePullOfIsLineBundleOnOpenStatement
public import Mathlib.AlgebraicGeometry.OpenImmersion
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Restrict
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Mathlib.AlgebraicGeometry.Sites.BigZariski
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.InverseBundleGeneratorPointOfChartUnitsSections
public import Mathlib.AlgebraicGeometry.Cover.Open
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftIsOpenImmersionRange
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPreimageSectionsBijectiveAbelianSchemeSndStatement
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import Mathlib.AlgebraicGeometry.Gluing
import Mathlib.CategoryTheory.Monoidal.Mon
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsUniqueMapToThetaFamilyOpenPart

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeomPointThrough, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivePicClassOfLocallyAdditive, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetractStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpenStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedLineBundleIsoCocycleIdentity, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueRigidifiedLineBundleClasses, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullLiftOneEqZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullUnitEqZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartsRepresentedFunctorOpenCover, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSheafOfOpenImmersionLocalGlue, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniversalOfZariskiSheafOpenCharts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallOfSeparatedPresheafOpenCharts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOfZariskiSheafOpenChartsLarge, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOver, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresenting, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeomPointThrough =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeomPointThrough", "h": "module\n\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeomPointThrough =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivePicClassOfLocallyAdditive =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivePicClassOfLocallyAdditive", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedPicardClassZeroOfLocallyZeroStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftIsOpenImmersionRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

variable {S : Scheme.{0}}

theorem pull_pull_over {X Y Z : Over S} (u : Z ⟶ Y) (v : Y ⟶ X) (c : Pic X.left) :
    CechPic.pull u.left (CechPic.pull v.left c) = CechPic.pull (u ≫ v).left c := by
  rw [Over.comp_left, pull_comp]

def addDefect (A T : Over S) [GrpObj A] (c : Pic (A ⊗ T).left) : Pic (A ⊗ (A ⊗ T)).left :=
  CechPic.pull (lift (fst A (A ⊗ T) * (snd A (A ⊗ T) ≫ fst A T)) (snd A (A ⊗ T) ≫ snd A T)).left c -
    CechPic.pull (lift (fst A (A ⊗ T)) (snd A (A ⊗ T) ≫ snd A T)).left c -
    CechPic.pull (lift (snd A (A ⊗ T) ≫ fst A T) (snd A (A ⊗ T) ≫ snd A T)).left c

theorem pull_addDefect (A T : Over S) [GrpObj A] (c : Pic (A ⊗ T).left) {Z : Over S} (u : Z ⟶ A ⊗ (A ⊗ T)) :
    CechPic.pull u.left (addDefect A T c) =
      CechPic.pull (lift ((u ≫ fst _ _) * (u ≫ snd _ _ ≫ fst _ _)) (u ≫ snd _ _ ≫ snd _ _)).left c -
      CechPic.pull (lift (u ≫ fst _ _) (u ≫ snd _ _ ≫ snd _ _)).left c -
      CechPic.pull (lift (u ≫ snd _ _ ≫ fst _ _) (u ≫ snd _ _ ≫ snd _ _)).left c := by
  simp only [addDefect, map_sub, pull_pull_over, comp_lift, MonObj.comp_mul]

theorem addCls_of_locally : ∀ (S : Scheme.{0}) (A T : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ c : Pic (A ⊗ T).left, GlobalTheory.CechPic.pull (lift (1 : T ⟶ A) (𝟙 T)).left c = 0 →
    (∀ p : T.left, ∃ (Z : Over S) (z : Z ⟶ T), IsOpenImmersion z.left ∧ p ∈ Set.range z.left ∧
      AddCls A (GlobalTheory.CechPic.pull (A ◁ z).left c)) → AddCls A c := by
  intro S A T _ hA c h0 hloc
  have hd : addDefect A T c = 0 := by
    refine _root_.GlobalTheory.PicGlue.eq_zero_of_rigid_of_locally_zero S A (A ⊗ T) hA _ ?_ fun p ↦ ?_
    · rw [pull_addDefect]
      have h1 : lift (1 : A ⊗ T ⟶ A) (snd A T) = snd A T ≫ lift (1 : T ⟶ A) (𝟙 T) := by
        rw [comp_lift, MonObj.comp_one, Category.comp_id]
      simp only [lift_fst, lift_snd_assoc, Category.id_comp, _root_.one_mul]
      rw [h1, ← pull_pull_over, h0, map_zero, sub_zero, sub_self]
    · obtain ⟨Z, z, hz, hp, hadd⟩ := hloc ((snd A T).left p)
      obtain ⟨ho, hr⟩ := GlobalTheory.whiskerLeft_isOpenImmersion_range S A T Z z hz
      refine ⟨A ⊗ Z, A ◁ z, ho, (hr p).2 hp, ?_⟩
      have h2 := hadd (A ⊗ (A ⊗ Z)) (fst _ _) (snd _ _ ≫ fst _ _) (snd _ _ ≫ snd _ _)
      simp only [pull_pull_over, lift_whiskerLeft, Category.assoc] at h2
      rw [pull_addDefect]
      simp only [whiskerLeft_fst, whiskerLeft_snd_assoc, whiskerLeft_snd]
      rw [h2]
      abel
  intro Z a a' t
  have h3 := pull_addDefect A T c (lift a (lift a' t))
  rw [hd, map_zero] at h3
  simp only [lift_fst, lift_snd_assoc, lift_snd] at h3
  rw [sub_sub] at h3
  exact sub_eq_zero.1 h3.symm

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivePicClassOfLocallyAdditive =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.exists_cech_lineBundle_ambient_of_openImmersion : ∀ (X X' : Scheme.{0}) (f : X' ⟶ X) [IsOpenImmersion f] (L : LB X'), L.IsLB → ∃ L' : LB X, IsOn f.opensRange L' ∧ LBIso (L'.pull f) L := by
  first | exact @GlobalTheory.PicGlue.exists_isOn_of_openImmersion
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetractStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetractStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetract\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetractStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpenStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpenStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpenStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedLineBundleIsoCocycleIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedLineBundleIsoCocycleIdentity", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.PicGlue

theorem cocycle_defect_eq {G : Type} [CommGroup G] {A B C A' B' C' G₁ G₂ G₃ : G} (h₁ : A * G₂ = G₁ * A')
    (h₂ : B * G₃ = G₂ * B') (h₃ : C * G₃ = G₁ * C') : A * B * C⁻¹ = A' * B' * C'⁻¹ := by
  have e₁ : A' = G₁⁻¹ * (A * G₂) := by rw [h₁, inv_mul_cancel_left]
  have e₂ : B' = G₂⁻¹ * (B * G₃) := by rw [h₂, inv_mul_cancel_left]
  have e₃ : C' = G₁⁻¹ * (C * G₃) := by rw [h₃, inv_mul_cancel_left]
  subst e₁ e₂ e₃
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv]
  abel

theorem cocycle_defect_one {G : Type} [CommGroup G] {A B C R₁ R₂ R₃ : G} (h₁ : A * R₂ = R₁) (h₂ : B * R₃ = R₂)
    (h₃ : C * R₃ = R₁) : A * B * C⁻¹ = 1 := by
  rw [mul_inv_eq_one]
  apply mul_right_cancel (b := R₃)
  rw [_root_.mul_assoc, h₂, h₁, h₃]

theorem norm_cocycle : ∀ (X Y : Scheme.{0}) (p : X ⟶ Y) (e : Y ⟶ X), e ≫ p = 𝟙 Y → FnBij p → ∀ (V : Y.Opens) (W₁ W₂ W₃ W₁₂ W₂₃ W₁₃ : X.Opens) (L₁ L₂ L₃ : LB X) (w₁₂ : Cmp W₁₂ L₁ L₂) (w₂₃ : Cmp W₂₃ L₂ L₃) (w₁₃ : Cmp W₁₃ L₁ L₃) (r₁ : RigD e L₁) (r₂ : RigD e L₂) (r₃ : RigD e L₃), IsOn W₁ L₁ → IsOn W₂ L₂ → IsOn W₃ L₃ → p ⁻¹ᵁ V ≤ W₁ ⊓ W₂ ⊓ W₃ → p ⁻¹ᵁ V ≤ W₁₂ ⊓ W₂₃ ⊓ W₁₃ → IsoOn W₁₂ L₁ L₂ w₁₂ → IsoOn W₂₃ L₂ L₃ w₂₃ → IsoOn W₁₃ L₁ L₃ w₁₃ → Norm e W₁₂ L₁ L₂ w₁₂ r₁ r₂ → Norm e W₂₃ L₂ L₃ w₂₃ r₂ r₃ → Norm e W₁₃ L₁ L₃ w₁₃ r₁ r₃ → ∀ (x : X) (a : L₁.ι) (b : L₂.ι) (c : L₃.ι), p x ∈ V → x ∈ L₁.U a → x ∈ L₂.U b → x ∈ L₃.U c → gm (𝟙 X) x _ (w₁₂ a b) * gm (𝟙 X) x _ (w₂₃ b c) = gm (𝟙 X) x _ (w₁₃ a c) := by
  intro X Y p e hep hp V W₁ W₂ W₃ W₁₂ W₂₃ W₁₃ L₁ L₂ L₃ w₁₂ w₂₃ w₁₃ r₁ r₂ r₃ h₁ h₂ h₃ hVW hVW' i₁₂ i₂₃ i₁₃
    n₁₂ n₂₃ n₁₃ x a b c hx ha hb hc
  let O : L₁.ι × L₂.ι × L₃.ι → X.Opens := fun j ↦ p ⁻¹ᵁ V ⊓ (L₁.U j.1 ⊓ L₂.U j.2.1 ⊓ L₃.U j.2.2)
  have mO : ∀ (j : L₁.ι × L₂.ι × L₃.ι) (z : X),
      z ∈ O j ↔ p z ∈ V ∧ z ∈ L₁.U j.1 ∧ z ∈ L₂.U j.2.1 ∧ z ∈ L₃.U j.2.2 := by
    intro j z
    simp only [O, TopologicalSpace.Opens.mem_inf, and_assoc]
    rfl
  have mW : ∀ z : X, p z ∈ V → (z ∈ W₁ ∧ z ∈ W₂ ∧ z ∈ W₃) ∧ z ∈ W₁₂ ∧ z ∈ W₂₃ ∧ z ∈ W₁₃ := by
    intro z hz
    have e₁ := hVW (show z ∈ p ⁻¹ᵁ V from hz)
    have e₂ := hVW' (show z ∈ p ⁻¹ᵁ V from hz)
    simp only [TopologicalSpace.Opens.mem_inf] at e₁ e₂
    exact ⟨⟨e₁.1.1, e₁.1.2, e₁.2⟩, e₂.1.1, e₂.1.2, e₂.2⟩
  have l₁₂ : ∀ j, O j ≤ W₁₂ ⊓ (L₁.U j.1 ⊓ L₂.U j.2.1) := fun j z hz ↦ by
    rw [mO] at hz
    simp only [TopologicalSpace.Opens.mem_inf]
    exact ⟨(mW z hz.1).2.1, hz.2.1, hz.2.2.1⟩
  have l₂₃ : ∀ j, O j ≤ W₂₃ ⊓ (L₂.U j.2.1 ⊓ L₃.U j.2.2) := fun j z hz ↦ by
    rw [mO] at hz
    simp only [TopologicalSpace.Opens.mem_inf]
    exact ⟨(mW z hz.1).2.2.1, hz.2.2.1, hz.2.2.2⟩
  have l₁₃ : ∀ j, O j ≤ W₁₃ ⊓ (L₁.U j.1 ⊓ L₃.U j.2.2) := fun j z hz ↦ by
    rw [mO] at hz
    simp only [TopologicalSpace.Opens.mem_inf]
    exact ⟨(mW z hz.1).2.2.2, hz.2.1, hz.2.2.2⟩
  let u : ∀ j, Γ(X, O j)ˣ := fun j ↦
    res (l₁₂ j) (w₁₂ j.1 j.2.1) * res (l₂₃ j) (w₂₃ j.2.1 j.2.2) * (res (l₁₃ j) (w₁₃ j.1 j.2.2))⁻¹
  have hu : ∀ {Z : Scheme.{0}} (f : Z ⟶ X) (z : Z) (j : L₁.ι × L₂.ι × L₃.ι), f z ∈ O j →
      gm f z (O j) (u j) = gm f z _ (w₁₂ j.1 j.2.1) * gm f z _ (w₂₃ j.2.1 j.2.2) * (gm f z _ (w₁₃ j.1 j.2.2))⁻¹ := by
    intro Z f z j hz
    simp only [u, map_mul, map_inv]
    rw [gm_res f z (l₁₂ j) hz, gm_res f z (l₂₃ j) hz, gm_res f z (l₁₃ j) hz]
  have compat : ∀ i j, ∀ z ∈ O i ⊓ O j, gm (𝟙 X) z (O i) (u i) = gm (𝟙 X) z (O j) (u j) := by
    intro i j z hz
    rw [TopologicalSpace.Opens.mem_inf] at hz
    have hzi := hz.1
    have hzj := hz.2
    rw [hu (𝟙 X) z i hzi, hu (𝟙 X) z j hzj]
    rw [mO] at hzi hzj
    have hW := mW z hzi.1
    exact cocycle_defect_eq (i₁₂ z hW.2.1 i.1 j.1 i.2.1 j.2.1 hzi.2.1 hzj.2.1 hzi.2.2.1 hzj.2.2.1)
      (i₂₃ z hW.2.2.1 i.2.1 j.2.1 i.2.2 j.2.2 hzi.2.2.1 hzj.2.2.1 hzi.2.2.2 hzj.2.2.2)
      (i₁₃ z hW.2.2.2 i.1 j.1 i.2.2 j.2.2 hzi.2.1 hzj.2.1 hzi.2.2.2 hzj.2.2.2)
  have chart : ∀ z : X, p z ∈ V → ∃ j, z ∈ O j := by
    intro z hz
    have hW := mW z hz
    obtain ⟨a', ha'⟩ := h₁.cov z hW.1.1
    obtain ⟨b', hb'⟩ := h₂.cov z hW.1.2.1
    obtain ⟨c', hc'⟩ := h₃.cov z hW.1.2.2
    exact ⟨(a', b', c'), (mO _ z).2 ⟨hz, ha', hb', hc'⟩⟩
  have hcov : p ⁻¹ᵁ V ≤ iSup O := fun z hz ↦ by
    obtain ⟨j, hj⟩ := chart z hz
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨j, hj⟩
  obtain ⟨ρ, hρ⟩ := glue_unit (p ⁻¹ᵁ V) O (fun j ↦ inf_le_left) hcov u compat

  let φ := RingEquiv.ofBijective (p.app V).hom (hp V)
  let v : Γ(Y, V)ˣ := Units.map φ.symm.toMonoidHom ρ
  have hv : pullU p V v = ρ := by
    apply Units.ext
    exact φ.apply_symm_apply ρ.val

  have hepy : ∀ y : Y, p (e y) = y := fun y ↦ by
    change (e ≫ p) y = y
    rw [hep]
    rfl
  have hρe : ∀ y : Y, y ∈ V → gm e y (p ⁻¹ᵁ V) ρ = 1 := by
    intro y hy
    have hy' : p (e y) ∈ V := by rw [hepy]; exact hy
    obtain ⟨j, hj⟩ := chart (e y) hy'
    rw [← gm_res e y (inf_le_left : O j ≤ p ⁻¹ᵁ V) hj, hρ j, hu e y j hj]
    rw [mO] at hj
    have hW := mW (e y) hj.1
    exact cocycle_defect_one (n₁₂ y j.1 j.2.1 hW.2.1 hj.2.1 hj.2.2.1) (n₂₃ y j.2.1 j.2.2 hW.2.2.1 hj.2.2.1 hj.2.2.2)
      (n₁₃ y j.1 j.2.2 hW.2.2.2 hj.2.1 hj.2.2.2)
  have hv1 : v = 1 := by
    apply unit_ext
    intro y hy
    rw [map_one]
    have hy' : p (e y) ∈ V := by rw [hepy]; exact hy
    have h := gm_pull e p y V hy' v
    rw [hep, hv] at h
    rw [← h]
    exact hρe y hy
  have hρ1 : ρ = 1 := by rw [← hv, hv1, map_one]

  have hxO : x ∈ O (a, b, c) := (mO _ x).2 ⟨hx, ha, hb, hc⟩
  have h := hu (𝟙 X) x (a, b, c) hxO
  rw [← hρ, hρ1, map_one, map_one] at h
  exact (mul_inv_eq_one.1 h.symm)

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedLineBundleIsoCocycleIdentity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueRigidifiedLineBundleClasses =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueRigidifiedLineBundleClasses", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechLineBundleAmbientOfOpenImmersionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLineBundleIsoOnOpenOfRestrictionIsoStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoNormalisedAlongSectionRetractStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackGeneratorOfTrivialOnOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLineBundlePullOfIsLineBundleOnOpenStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleGlueOfOpenCoverCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoPullOfIsLineBundleIsoOnOpenStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleOnOpenPullCompIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedLineBundleIsoCocycleIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

theorem exists_glue_rigidified (X Y : Scheme.{0}) (p : X ⟶ Y) (e : Y ⟶ X) (hep : e ≫ p = 𝟙 Y) (hp : FnBij p)
    (Ix : Type) (X' : Ix → Scheme.{0}) (f : ∀ i, X' i ⟶ X) (V : Ix → Y.Opens) (c : ∀ i, Pic (X' i))
    (hf : ∀ i, IsOpenImmersion (f i)) (hr : ∀ i x, x ∈ Set.range (f i) ↔ p x ∈ V i) (hV : ∀ y, ∃ i, y ∈ V i)
    (hrig : ∀ (i : Ix) (T : Scheme.{0}) (t : T ⟶ X' i) (s : T ⟶ Y), t ≫ f i = s ≫ e → GlobalTheory.CechPic.pull t (c i) = 0)
    (hov : ∀ (i k : Ix) (T : Scheme.{0}) (a : T ⟶ X' i) (b : T ⟶ X' k), a ≫ f i = b ≫ f k →
      GlobalTheory.CechPic.pull a (c i) = GlobalTheory.CechPic.pull b (c k)) :
    ∃ c₀ : Pic X, GlobalTheory.CechPic.pull e c₀ = 0 ∧ ∀ i, GlobalTheory.CechPic.pull (f i) c₀ = c i := by
  have hpe : ∀ y : Y, p (e y) = y := fun y ↦ by
    rw [← Scheme.Hom.comp_apply, hep]; rfl
  have hrange : ∀ i, (f i).opensRange = p ⁻¹ᵁ V i := fun i ↦ by
    ext x; exact hr i x
  choose M hM hMc using fun i ↦ cls_surj (c i)
  choose L hL hLM using fun i ↦ GlobalTheory.T.exists_cech_lineBundle_ambient_of_openImmersion X (X' i) (f i) (M i) (hM i)
  have hL' : ∀ i, IsOn (p ⁻¹ᵁ V i) (L i) := fun i ↦ hrange i ▸ hL i
  have hfm : ∀ i (z : X' i), f i z ∈ p ⁻¹ᵁ V i := fun i z ↦ (hr i _).1 ⟨z, rfl⟩
  have hfl : ∀ i, ((L i).pull (f i)).IsLB := fun i ↦ GlobalTheory.T.isLineBundle_pull_of_isLineBundleOnOpen X _ _ (L i) (f i) (hL' i) (hfm i)
  have hcl : ∀ i, cls _ (hfl i) = c i := fun i ↦ ((cls_eq_iff (hfl i) (hM i)).2 (hLM i)).trans (hMc i)
  have lifts : ∀ i (T : Scheme.{0}) (g : T ⟶ X), (∀ z, g z ∈ p ⁻¹ᵁ V i) → ∃ t : T ⟶ X' i, t ≫ f i = g :=
    fun i T g hg ↦ ⟨IsOpenImmersion.lift (f i) g (by rintro _ ⟨z, rfl⟩; exact (hr i _).2 (hg z)),
      IsOpenImmersion.lift_fac _ _ _⟩
  have hpl : ∀ i (T : Scheme.{0}) (t : T ⟶ X' i) (g : T ⟶ X), t ≫ f i = g →
      ∃ h : ((L i).pull g).IsLB, cls _ h = GlobalTheory.CechPic.pull t (c i) := by
    rintro i T t _ rfl
    have h : ((L i).pull (t ≫ f i)).IsLB := GlobalTheory.T.isLineBundle_pull_of_isLineBundleOnOpen X _ _ (L i) _ (hL' i) fun z ↦ by
      rw [Scheme.Hom.comp_apply]; exact hfm i _
    refine ⟨h, ?_⟩
    rw [← hcl i, ← cls_pull (hfl i) t (pull_isLB (hfl i) t)]
    exact ((cls_eq_iff _ _).2 (_root_.GlobalTheory.PicGlue.isOn_pull_comp X _ _ _ (L i) (f i) t (hL' i) (hfm i))).symm
  have hR : ∀ i, ∃ r : RigD e (L i), RigOn e (L i) r := fun i ↦ by
    refine _root_.GlobalTheory.PicGlue.rigOn_of_triv_open X Y e (V i) (L i) (fun a y hy ↦ ?_) ?_
    · have : p (e y) ∈ V i := (hL' i).le a hy
      rwa [hpe] at this
    · obtain ⟨t, ht⟩ := lifts i _ ((V i).ι ≫ e) fun z ↦ by
        rw [Scheme.Hom.comp_apply]
        change p (e _) ∈ V i
        rw [hpe]
        exact z.2
      obtain ⟨h, hc⟩ := hpl i _ t _ ht
      exact (cls_eq_zero_iff h).1 (hc.trans (hrig i _ t _ ht))
  choose r hr' using hR
  have hw : ∀ i k, ∃ w : Cmp (p ⁻¹ᵁ (V i ⊓ V k)) (L i) (L k), IsoOn (p ⁻¹ᵁ (V i ⊓ V k)) (L i) (L k) w ∧
      Norm e (p ⁻¹ᵁ (V i ⊓ V k)) (L i) (L k) w (r i) (r k) := fun i k ↦ by
    obtain ⟨a, ha⟩ := lifts i _ (p ⁻¹ᵁ (V i ⊓ V k)).ι fun z ↦ z.2.1
    obtain ⟨b, hb⟩ := lifts k _ (p ⁻¹ᵁ (V i ⊓ V k)).ι fun z ↦ z.2.2
    obtain ⟨h1, e1⟩ := hpl i _ a _ ha
    obtain ⟨h2, e2⟩ := hpl k _ b _ hb
    obtain ⟨w, hw⟩ := _root_.GlobalTheory.PicGlue.isoOn_of_lbIso X (p ⁻¹ᵁ (V i ⊓ V k)) (L i) (L k)
      ((cls_eq_iff h1 h2).1 (e1.trans ((hov i k _ a b (ha.trans hb.symm)).trans e2.symm)))
    exact _root_.GlobalTheory.PicGlue.exists_norm X Y p e hep (V i ⊓ V k) _ _ (L i) (L k) w (r i) (r k) (hL' i) (hL' k)
      (fun _ h ↦ h.1) (fun _ h ↦ h.2) hw (hr' i) (hr' k)
  choose w hwi hwn using hw
  obtain ⟨N, hN, hv⟩ := _root_.GlobalTheory.PicGlue.lb_glue X Ix (fun i ↦ p ⁻¹ᵁ V i) L w (fun x ↦ hV (p x)) hL' hwi
    fun i j k x a b d ha hb hd ↦ _root_.GlobalTheory.PicGlue.norm_cocycle X Y p e hep hp (V i ⊓ V j ⊓ V k) _ _ _ _ _ _ (L i) (L j) (L k)
      (w i j) (w j k) (w i k) (r i) (r j) (r k) (hL' i) (hL' j) (hL' k) (fun _ h ↦ h)
      (fun _ h ↦ ⟨⟨h.1, h.1.2, h.2⟩, h.1.1, h.2⟩) (hwi i j) (hwi j k) (hwi i k) (hwn i j) (hwn j k) (hwn i k)
      x a b d ⟨⟨(hL' i).le a ha, (hL' j).le b hb⟩, (hL' k).le d hd⟩ ha hb hd
  have hNc : ∀ i, GlobalTheory.CechPic.pull (f i) (cls N hN) = c i := fun i ↦ by
    obtain ⟨v, hv⟩ := hv i
    rw [← hcl i, ← cls_pull hN (f i) (pull_isLB hN _)]
    exact (cls_eq_iff _ _).2 (_root_.GlobalTheory.PicGlue.lbIso_pull_of_isoOn X _ _ N (L i) v (f i) hv (hfm i))
  refine ⟨cls N hN - GlobalTheory.CechPic.pull p (GlobalTheory.CechPic.pull e (cls N hN)), ?_, fun i ↦ ?_⟩
  · rw [map_sub, ← pull_comp e p, hep, pull_id, sub_self]
  · obtain ⟨t, ht⟩ := lifts i _ ((f i ≫ p) ≫ e) fun z ↦ by
      rw [Scheme.Hom.comp_apply]
      change p (e _) ∈ V i
      rw [hpe, Scheme.Hom.comp_apply]
      exact hfm i z
    rw [map_sub, hNc, ← pull_comp (f i) p, ← pull_comp (f i ≫ p) e, ← ht, pull_comp, hNc,
      hrig i _ t _ ht, sub_zero]

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueRigidifiedLineBundleClasses =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullLiftOneEqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullLiftOneEqZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivePicClassOfLocallyAdditive\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueRigidifiedLineBundleClasses\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPreimageSectionsBijectiveAbelianSchemeSndStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftIsOpenImmersionRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

variable {S : Scheme.{0}} {A : Over S} [GrpObj A]

theorem AddCls.pull_lift_one_eq_zero {T : Over S} {c : Pic (A ⊗ T).left} (h : AddCls A c) {Y : Over S} (t : Y ⟶ T) :
    CechPic.pull (lift (1 : Y ⟶ A) t).left c = 0 := by
  have h1 := h Y 1 1 t
  rw [_root_.mul_one] at h1
  exact left_eq_add.1 h1

theorem AddCls.pull_eq_zero_of_unit {T Z : Over S} (z : Z ⟶ T) {c : Pic (A ⊗ Z).left} (h : AddCls A c)
    {T' : Scheme.{0}} (t : T' ⟶ (A ⊗ Z).left) (s : T' ⟶ T.left)
    (hts : t ≫ (A ◁ z).left = s ≫ (lift (1 : T ⟶ A) (𝟙 T)).left) : CechPic.pull t c = 0 := by
  let Y : Over S := Over.mk (t ≫ (A ⊗ Z).hom)
  let t' : Y ⟶ A ⊗ Z := Over.homMk t rfl
  have hs : s ≫ T.hom = t ≫ (A ⊗ Z).hom := by
    rw [← Over.w (A ◁ z), ← Category.assoc, hts, Category.assoc, Over.w]
  let s' : Y ⟶ T := Over.homMk s hs
  have h1 : t' ≫ A ◁ z = s' ≫ lift (1 : T ⟶ A) (𝟙 T) := Over.OverMorphism.ext hts
  have h2 : t' ≫ fst A Z = 1 := by
    have h3 := congrArg (· ≫ fst A T) h1
    simpa only [Category.assoc, whiskerLeft_fst, lift_fst, MonObj.comp_one] using h3
  have h4 : t' = lift (1 : Y ⟶ A) (t' ≫ snd A Z) := by
    rw [← h2, lift_comp_fst_snd]
  have h5 := h.pull_lift_one_eq_zero (t' ≫ snd A Z)
  rw [← h4] at h5
  exact h5

theorem pull_eq_of_compat {T Z Z' : Over S} (z : Z ⟶ T) (z' : Z' ⟶ T) (y : (addF A).obj (op Z))
    (y' : (addF A).obj (op Z'))
    (h : ∀ (Y : Over S) (a : Y ⟶ Z) (b : Y ⟶ Z'), a ≫ z = b ≫ z' → (addF A).map a.op y = (addF A).map b.op y')
    {T' : Scheme.{0}} (a : T' ⟶ (A ⊗ Z).left) (b : T' ⟶ (A ⊗ Z').left)
    (hab : a ≫ (A ◁ z).left = b ≫ (A ◁ z').left) : CechPic.pull a y.1 = CechPic.pull b y'.1 := by
  let Y : Over S := Over.mk (a ≫ (A ⊗ Z).hom)
  let a' : Y ⟶ A ⊗ Z := Over.homMk a rfl
  have hb : b ≫ (A ⊗ Z').hom = a ≫ (A ⊗ Z).hom := by
    rw [← Over.w (A ◁ z), ← Over.w (A ◁ z'), ← Category.assoc, ← hab, Category.assoc]
  let b' : Y ⟶ A ⊗ Z' := Over.homMk b hb
  have h1 : a' ≫ A ◁ z = b' ≫ A ◁ z' := Over.OverMorphism.ext hab
  have h2 : a' ≫ fst A Z = b' ≫ fst A Z' := by
    have h3 := congrArg (· ≫ fst A T) h1
    simpa only [Category.assoc, whiskerLeft_fst] using h3
  have h3 : (a' ≫ snd A Z) ≫ z = (b' ≫ snd A Z') ≫ z' := by
    have h3 := congrArg (· ≫ snd A T) h1
    simpa only [Category.assoc, whiskerLeft_snd] using h3
  have h4 := congrArg Subtype.val (h Y _ _ h3)
  rw [addF_map_val, addF_map_val] at h4
  have ha' : a' = lift (a' ≫ fst A Z) (𝟙 Y) ≫ A ◁ (a' ≫ snd A Z) := by
    rw [lift_whiskerLeft, Category.id_comp, lift_comp_fst_snd]
  have hb' : b' = lift (a' ≫ fst A Z) (𝟙 Y) ≫ A ◁ (b' ≫ snd A Z') := by
    rw [lift_whiskerLeft, Category.id_comp, h2, lift_comp_fst_snd]
  have h5 := congrArg (CechPic.pull (lift (a' ≫ fst A Z) (𝟙 Y)).left) h4
  rw [← pull_comp, ← pull_comp, ← Over.comp_left, ← Over.comp_left, ← ha', ← hb'] at h5
  exact h5

theorem addF_glue : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → (∀ (T : Over S) (J : Type) (Z : J → Over S) (z : ∀ i, Z i ⟶ T) (y : ∀ i, (addF A).obj (op (Z i))), (∀ i, IsOpenImmersion (z i).left) → (∀ p : T.left, ∃ i, p ∈ Set.range (z i).left) → (∀ (i k : J) (Y : Over S) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k → (addF A).map a.op (y i) = (addF A).map b.op (y k)) → ∃ y₀ : (addF A).obj (op T), ∀ i, (addF A).map (z i).op y₀ = y i) := by
  intro S A _ hA T J Z z y hz hcov hc
  have he : (lift (1 : T ⟶ A) (𝟙 T)).left ≫ (snd A T).left = 𝟙 T.left := by
    rw [← Over.comp_left, lift_snd, Over.id_left]
  obtain ⟨c₀, h0, hc₀⟩ := _root_.GlobalTheory.PicGlue.exists_glue_rigidified (A ⊗ T).left T.left (snd A T).left (lift (1 : T ⟶ A) (𝟙 T)).left he
    (_root_.GlobalTheory.PicGlue.fnBij_snd S A T hA) J (fun i ↦ (A ⊗ Z i).left) (fun i ↦ (A ◁ z i).left)
    (fun i ↦ haveI := hz i; (z i).left.opensRange) (fun i ↦ (y i).1)
    (fun i ↦ (GlobalTheory.whiskerLeft_isOpenImmersion_range S A T (Z i) (z i) (hz i)).1)
    (fun i x ↦ (GlobalTheory.whiskerLeft_isOpenImmersion_range S A T (Z i) (z i) (hz i)).2 x)
    (fun p ↦ hcov p)
    (fun i T' t s hts ↦ AddCls.pull_eq_zero_of_unit (z i) (y i).2 t s hts)
    (fun i k T' a b hab ↦ pull_eq_of_compat (z i) (z k) (y i) (y k) (hc i k) a b hab)
  refine ⟨⟨c₀, _root_.GlobalTheory.PicGlue.addCls_of_locally S A T hA c₀ h0 fun p ↦ ?_⟩, fun i ↦ Subtype.ext (hc₀ i)⟩
  obtain ⟨i, hi⟩ := hcov p
  refine ⟨Z i, z i, hz i, hi, ?_⟩
  rw [hc₀ i]
  exact (y i).2

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullLiftOneEqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullUnitEqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullUnitEqZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedPicardClassZeroOfLocallyZeroStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

theorem AddCls.pull_unit_eq_zero {S : Scheme.{0}} {A T Z : Over S} [GrpObj A] {c : Pic (A ⊗ T).left}
    (h : AddCls A c) (t : Z ⟶ T) : CechPic.pull (lift (1 : Z ⟶ A) t).left c = 0 := by
  have h1 := h Z 1 1 t
  rw [_root_.mul_one] at h1
  exact left_eq_add.1 h1

theorem addF_separated : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → (∀ (T : Over S) (y y' : (addF A).obj (op T)), (∀ p : T.left, ∃ (Z : Over S) (z : Z ⟶ T), IsOpenImmersion z.left ∧ p ∈ Set.range z.left ∧ (addF A).map z.op y = (addF A).map z.op y') → y = y') := by
  intro S A _ hA T y y' h
  refine Subtype.ext (sub_eq_zero.1 (_root_.GlobalTheory.PicGlue.eq_zero_of_rigid_of_locally_zero S A T hA (y.1 - y'.1) ?_ fun p ↦ ?_))
  · rw [map_sub, y.2.pull_unit_eq_zero, y'.2.pull_unit_eq_zero, sub_zero]
  · obtain ⟨Z, z, hz, hp, e⟩ := h p
    refine ⟨Z, z, hz, hp, ?_⟩
    rw [map_sub, sub_eq_zero]
    exact congrArg Subtype.val e

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullUnitEqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartsRepresentedFunctorOpenCover =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartsRepresentedFunctorOpenCover", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.OpenImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Restrict\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem charts_represented_open_cover : ∀ (F : Scheme.{0}ᵒᵖ ⥤ Type 1) (Ix : Type) (U : Ix → Scheme.{0}) (x : ∀ i, F.obj (op (U i))), (∀ (i : Ix) (Y : Scheme.{0}) (u u' : Y ⟶ U i), F.map u.op (x i) = F.map u'.op (x i) → u = u') → (∀ (i : Ix) (T : Scheme.{0}) (y : F.obj (op T)), ∃ W : T.Opens, ∀ (Y : Scheme.{0}) (a : Y ⟶ T), (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a q ∈ W) → (∀ (T : Scheme.{0}) (y : F.obj (op T)) (p : T), ∃ (i : Ix) (Y : Scheme.{0}) (a : Y ⟶ T) (u : Y ⟶ U i), p ∈ Set.range a ∧ F.map a.op y = F.map u.op (x i)) → ∀ (B : Scheme.{0}) (x₀ : F.obj (op B)), (∀ (T : Scheme.{0}) (y : F.obj (op T)), ∃! g : T ⟶ B, F.map g.op x₀ = y) → ∃ j : ∀ i, U i ⟶ B, (∀ i, IsOpenImmersion (j i)) ∧ (∀ p : B, ∃ i, p ∈ Set.range (j i)) ∧ ∀ i, F.map (j i).op x₀ = x i := by
  intro F Ix U x hinj hW hcov B x₀ hrep
  have uniq : ∀ (T : Scheme.{0}) (g g' : T ⟶ B), F.map g.op x₀ = F.map g'.op x₀ → g = g' :=
    fun T g g' h => (hrep T (F.map g'.op x₀)).unique h rfl
  choose j hj using fun i => (hrep (U i) (x i)).exists
  refine ⟨j, fun i => ?_, fun p => ?_, hj⟩
  · obtain ⟨W, hWi⟩ := hW i B x₀

    have hjW : Set.range (j i) ⊆ Set.range W.ι := by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨q, rfl⟩
      exact ((hWi (U i) (j i)).1 ⟨𝟙 _, by rw [hj i]; simp⟩) q
    obtain ⟨u, hu⟩ := (hWi W.toScheme W.ι).2 (fun q => by
      have : W.ι q ∈ Set.range W.ι := ⟨q, rfl⟩
      rwa [Scheme.Opens.range_ι] at this)
    set l := IsOpenImmersion.lift W.ι (j i) hjW with hldef
    have hl : l ≫ W.ι = j i := IsOpenImmersion.lift_fac _ _ _
    have huj : u ≫ j i = W.ι := by
      apply uniq
      rw [op_comp, Functor.map_comp_apply, hj i, hu]
    have hlu : l ≫ u = 𝟙 _ := by
      apply hinj i
      rw [op_comp, Functor.map_comp_apply, ← hu, ← Functor.map_comp_apply, ← op_comp, hl, hj i]
      simp
    have hul : u ≫ l = 𝟙 _ := by
      rw [← cancel_mono W.ι, Category.assoc, hl, huj, Category.id_comp]
    haveI : IsIso l := ⟨⟨u, hlu, hul⟩⟩
    rw [← hl]
    infer_instance
  · obtain ⟨i, Y, a, u, ⟨q, rfl⟩, ha⟩ := hcov B x₀ p
    refine ⟨i, u q, ?_⟩
    have : a = u ≫ j i := by
      apply uniq
      rw [ha, op_comp, Functor.map_comp_apply, hj i]
    rw [this]
    rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartsRepresentedFunctorOpenCover =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSheafOfOpenImmersionLocalGlue =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSheafOfOpenImmersionLocalGlue", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Sites.BigZariski\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem isSheaf_of_local_glue : ∀ (F : Scheme.{0}ᵒᵖ ⥤ Type), (∀ (T : Scheme.{0}) (y y' : F.obj (op T)), (∀ p : T, ∃ (Z : Scheme.{0}) (z : Z ⟶ T), IsOpenImmersion z ∧ p ∈ Set.range z ∧ F.map z.op y = F.map z.op y') → y = y') → (∀ (T : Scheme.{0}) (J : Type) (Z : J → Scheme.{0}) (z : ∀ i, Z i ⟶ T) (y : ∀ i, F.obj (op (Z i))), (∀ i, IsOpenImmersion (z i)) → (∀ p : T, ∃ i, p ∈ Set.range (z i)) → (∀ (i k : J) (Y : Scheme.{0}) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k → F.map a.op (y i) = F.map b.op (y k)) → ∃ y₀ : F.obj (op T), ∀ i, F.map (z i).op y₀ = y i) → Presieve.IsSheaf Scheme.zariskiTopology F := by
  intro F hext hglue
  rw [Precoverage.isSheaf_toGrothendieck_iff_of_isStableUnderBaseChange]
  rintro Y P hP
  obtain ⟨(𝒰 : Scheme.OpenCover Y), rfl⟩ := Scheme.exists_cover_of_mem_pretopology hP
  rw [Presieve.isSheafFor_arrows_iff]
  intro x hx
  choose jj q hq using 𝒰.exists_eq
  refine existsUnique_of_exists_of_unique ?_ ?_
  · obtain ⟨y₀, hy₀⟩ := hglue Y Y (fun p => 𝒰.X (jj p)) (fun p => 𝒰.f (jj p)) (fun p => x (jj p))
      (fun p => inferInstance) (fun p => ⟨p, q p, hq p⟩)
      (fun i k Z a b h => hx (jj i) (jj k) Z a b h)
    refine ⟨y₀, fun i => hext _ _ _ fun r => ?_⟩
    obtain ⟨w, hw, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := 𝒰.f i)
      (g := 𝒰.f (jj (𝒰.f i r))) r (q (𝒰.f i r)) (hq _).symm
    refine ⟨_, pullback.fst (𝒰.f i) (𝒰.f (jj (𝒰.f i r))), inferInstance, ⟨w, hw⟩, ?_⟩
    rw [← Functor.map_comp_apply, ← op_comp, pullback.condition, op_comp,
      Functor.map_comp_apply, hy₀]
    exact (hx _ _ _ _ _ pullback.condition).symm
  · intro y y' h h'
    refine hext Y y y' fun p => ?_
    exact ⟨𝒰.X (jj p), 𝒰.f (jj p), inferInstance, ⟨q p, hq p⟩, (h _).trans (h' _).symm⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSheafOfOpenImmersionLocalGlue =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniversalOfZariskiSheafOpenCharts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniversalOfZariskiSheafOpenCharts", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.OpenImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.InverseBundleGeneratorPointOfChartUnitsSections\npublic import Mathlib.AlgebraicGeometry.Sites.BigZariski\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSheafOfOpenImmersionLocalGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exists_universal_of_charts : ∀ (F : Scheme.{0}ᵒᵖ ⥤ Type), (∀ (T : Scheme.{0}) (y y' : F.obj (op T)), (∀ p : T, ∃ (Z : Scheme.{0}) (z : Z ⟶ T), IsOpenImmersion z ∧ p ∈ Set.range z ∧ F.map z.op y = F.map z.op y') → y = y') → (∀ (T : Scheme.{0}) (J : Type) (Z : J → Scheme.{0}) (z : ∀ i, Z i ⟶ T) (y : ∀ i, F.obj (op (Z i))), (∀ i, IsOpenImmersion (z i)) → (∀ p : T, ∃ i, p ∈ Set.range (z i)) → (∀ (i k : J) (Y : Scheme.{0}) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k → F.map a.op (y i) = F.map b.op (y k)) → ∃ y₀ : F.obj (op T), ∀ i, F.map (z i).op y₀ = y i) → ∀ (Ix : Type) (U : Ix → Scheme.{0}) (x : ∀ i, F.obj (op (U i))), (∀ (i : Ix) (Y : Scheme.{0}) (u u' : Y ⟶ U i), F.map u.op (x i) = F.map u'.op (x i) → u = u') → (∀ (i : Ix) (T : Scheme.{0}) (y : F.obj (op T)), ∃ W : T.Opens, ∀ (Y : Scheme.{0}) (a : Y ⟶ T), (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a q ∈ W) → (∀ (T : Scheme.{0}) (y : F.obj (op T)) (p : T), ∃ (i : Ix) (Y : Scheme.{0}) (a : Y ⟶ T) (u : Y ⟶ U i), p ∈ Set.range a ∧ F.map a.op y = F.map u.op (x i)) → ∃ (B : Scheme.{0}) (x₀ : F.obj (op B)), (∀ (T : Scheme.{0}) (y : F.obj (op T)), ∃! g : T ⟶ B, F.map g.op x₀ = y) := by
  intro F hsep hglue Ix U x inj hW cov
  have hF : Presieve.IsSheaf Scheme.zariskiTopology F := _root_.GlobalTheory.isSheaf_of_local_glue F hsep hglue
  let W : ∀ (_ : Ix) (Z : Scheme.{0}), F.obj (op Z) → Z.Opens :=
    fun i Z y => Classical.choose (hW i Z y)
  have hWs : ∀ i (Z : Scheme.{0}) (y : F.obj (op Z)) (Y : Scheme.{0}) (a : Y ⟶ Z),
      (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a q ∈ W i Z y :=
    fun i Z y => Classical.choose_spec (hW i Z y)
  have hrep : F.IsRepresentable := by
    refine GeneratorFunctor.isRepresentable_of_charts F hF U x W ?_ ?_ ?_
    · intro j Z y Z' a
      rw [Set.range_subset_iff]
      refine ((hWs j Z y Z' a).symm.trans ?_)
      exact ⟨fun ⟨u, hu⟩ => ⟨u, hu.symm⟩, fun ⟨u, hu⟩ => ⟨u, hu.symm⟩⟩
    · intro j Z g g' h
      exact inj j Z g g' h
    · intro Z y z
      obtain ⟨i, Y, a, u, ⟨q, rfl⟩, h⟩ := cov Z y z
      exact ⟨i, (hWs i Z y Y a).1 ⟨u, h⟩ q⟩
  refine ⟨F.reprX, F.reprx, fun T y => ?_⟩
  refine ⟨F.representableBy.homEquiv.symm y, ?_, ?_⟩
  · have := F.representableBy.homEquiv_eq (F.representableBy.homEquiv.symm y)
    rw [Equiv.apply_symm_apply] at this
    exact this.symm
  · intro g hg
    apply F.representableBy.homEquiv.injective
    rw [Equiv.apply_symm_apply, F.representableBy.homEquiv_eq, ← hg]
    rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniversalOfZariskiSheafOpenCharts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallOfSeparatedPresheafOpenCharts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallOfSeparatedPresheafOpenCharts", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.OpenImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Restrict\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

theorem small_of_separated_of_open_charts : ∀ (F : Scheme.{0}ᵒᵖ ⥤ Type 1), (∀ (T : Scheme.{0}) (y y' : F.obj (op T)), (∀ p : T, ∃ (Z : Scheme.{0}) (z : Z ⟶ T), IsOpenImmersion z ∧ p ∈ Set.range z ∧ F.map z.op y = F.map z.op y') → y = y') → ∀ (Ix : Type) (U : Ix → Scheme.{0}) (x : ∀ i, F.obj (op (U i))), (∀ (i : Ix) (T : Scheme.{0}) (y : F.obj (op T)), ∃ W : T.Opens, ∀ (Y : Scheme.{0}) (a : Y ⟶ T), (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a q ∈ W) → (∀ (T : Scheme.{0}) (y : F.obj (op T)) (p : T), ∃ (i : Ix) (Y : Scheme.{0}) (a : Y ⟶ T) (u : Y ⟶ U i), p ∈ Set.range a ∧ F.map a.op y = F.map u.op (x i)) → ∀ T : Scheme.{0}ᵒᵖ, Small.{0} (F.obj T) := by
  intro F hsep Ix U x hchart hcov T
  let S : F.obj T → Set (Σ (i : Ix) (V : T.unop.Opens), (V.toScheme ⟶ U i)) :=
    fun y => {q | F.map q.2.1.ι.op y = F.map q.2.2.op (x q.1)}
  refine small_of_injective (f := S) ?_
  intro y y' h
  apply hsep T.unop y y'
  intro p
  obtain ⟨i, Y, a, u, hp, ha⟩ := hcov T.unop y p
  obtain ⟨W, hW⟩ := hchart i T.unop y
  have hpW : p ∈ W := by
    obtain ⟨q, rfl⟩ := hp
    exact (hW Y a).1 ⟨u, ha⟩ q
  obtain ⟨u', hu'⟩ := (hW W.toScheme W.ι).2 (fun q => by
    have hq : W.ι q ∈ Set.range W.ι := Set.mem_range_self q
    rwa [W.range_ι] at hq)
  have hmem : (⟨i, W, u'⟩ : Σ (i : Ix) (V : T.unop.Opens), (V.toScheme ⟶ U i)) ∈ S y := hu'
  rw [h] at hmem
  refine ⟨W.toScheme, W.ι, inferInstance, ?_, ?_⟩
  · rw [W.range_ι]; exact hpW
  · exact hu'.trans hmem.symm

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallOfSeparatedPresheafOpenCharts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOfZariskiSheafOpenChartsLarge =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOfZariskiSheafOpenChartsLarge", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.OpenImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartsRepresentedFunctorOpenCover\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniversalOfZariskiSheafOpenCharts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallOfSeparatedPresheafOpenCharts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

theorem exists_represent_of_charts_large : ∀ (F : Scheme.{0}ᵒᵖ ⥤ Type 1), (∀ (T : Scheme.{0}) (y y' : F.obj (op T)), (∀ p : T, ∃ (Z : Scheme.{0}) (z : Z ⟶ T), IsOpenImmersion z ∧ p ∈ Set.range z ∧ F.map z.op y = F.map z.op y') → y = y') → (∀ (T : Scheme.{0}) (J : Type) (Z : J → Scheme.{0}) (z : ∀ i, Z i ⟶ T) (y : ∀ i, F.obj (op (Z i))), (∀ i, IsOpenImmersion (z i)) → (∀ p : T, ∃ i, p ∈ Set.range (z i)) → (∀ (i k : J) (Y : Scheme.{0}) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k → F.map a.op (y i) = F.map b.op (y k)) → ∃ y₀ : F.obj (op T), ∀ i, F.map (z i).op y₀ = y i) → ∀ (Ix : Type) (U : Ix → Scheme.{0}) (x : ∀ i, F.obj (op (U i))), (∀ (i : Ix) (Y : Scheme.{0}) (u u' : Y ⟶ U i), F.map u.op (x i) = F.map u'.op (x i) → u = u') → (∀ (i : Ix) (T : Scheme.{0}) (y : F.obj (op T)), ∃ W : T.Opens, ∀ (Y : Scheme.{0}) (a : Y ⟶ T), (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a q ∈ W) → (∀ (T : Scheme.{0}) (y : F.obj (op T)) (p : T), ∃ (i : Ix) (Y : Scheme.{0}) (a : Y ⟶ T) (u : Y ⟶ U i), p ∈ Set.range a ∧ F.map a.op y = F.map u.op (x i)) → ∃ (B : Scheme.{0}) (x₀ : F.obj (op B)), (∀ (T : Scheme.{0}) (y : F.obj (op T)), ∃! g : T ⟶ B, F.map g.op x₀ = y) ∧ ∃ j : ∀ i, U i ⟶ B, (∀ i, IsOpenImmersion (j i)) ∧ (∀ p : B, ∃ i, p ∈ Set.range (j i)) ∧ ∀ i, F.map (j i).op x₀ = x i := by
  intro F hsep hglue Ix U x hinj hopen hcov
  haveI hs : FunctorToTypes.Small.{0} F := _root_.GlobalTheory.PicGlue.small_of_separated_of_open_charts F hsep Ix U x hopen hcov
  let G : Scheme.{0}ᵒᵖ ⥤ Type := FunctorToTypes.shrink.{0} F
  let e : ∀ T : Scheme.{0}, F.obj (op T) ≃ G.obj (op T) := fun T => equivShrink.{0} (F.obj (op T))
  have he : ∀ {Y T : Scheme.{0}} (a : Y ⟶ T) (y : G.obj (op T)),
      G.map a.op y = e Y (F.map a.op ((e T).symm y)) := fun a y => rfl
  have he' : ∀ {Y T : Scheme.{0}} (a : Y ⟶ T) (y : F.obj (op T)),
      G.map a.op (e T y) = e Y (F.map a.op y) := fun a y => by
    rw [he, Equiv.symm_apply_apply]
  have key := _root_.GlobalTheory.exists_universal_of_charts G ?_ ?_ Ix U (fun i => e _ (x i)) ?_ ?_ ?_
  · obtain ⟨B, x₀, hx⟩ := key
    obtain ⟨x₁, rfl⟩ := (e B).surjective x₀
    have hx' : ∀ (T : Scheme.{0}) (y : F.obj (op T)), ∃! g : T ⟶ B, F.map g.op x₁ = y := by
      intro T y
      have h := hx T (e T y)
      simpa only [he', Equiv.apply_eq_iff_eq] using h
    exact ⟨B, x₁, hx', _root_.GlobalTheory.charts_represented_open_cover F Ix U x hinj hopen hcov B x₁ hx'⟩
  · intro T y y' h
    obtain ⟨y, rfl⟩ := (e T).surjective y
    obtain ⟨y', rfl⟩ := (e T).surjective y'
    simp only [he', Equiv.apply_eq_iff_eq] at h
    rw [hsep T y y' h]
  · intro T J Z z y hz hc h
    obtain ⟨y₀, hy₀⟩ := hglue T J Z z (fun i => (e _).symm (y i)) hz hc (fun i k Y a b hab => by
      have h1 := h i k Y a b hab
      rw [he, he] at h1
      exact (e Y).injective h1)
    refine ⟨e T y₀, fun i => ?_⟩
    rw [he', hy₀, Equiv.apply_symm_apply]
  · intro i Y u u' h
    rw [he', he'] at h
    exact hinj i Y u u' ((e Y).injective h)
  · intro i T y
    obtain ⟨y, rfl⟩ := (e T).surjective y
    simp only [he', Equiv.apply_eq_iff_eq]
    exact hopen i T y
  · intro T y p
    obtain ⟨y, rfl⟩ := (e T).surjective y
    simp only [he', Equiv.apply_eq_iff_eq]
    exact hcov T y p

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOfZariskiSheafOpenChartsLarge =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOver =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOver", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Cover.Open\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.AlgebraicGeometry.OpenImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOfZariskiSheafOpenChartsLarge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Gluing\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Mon\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry Opposite

namespace GlobalTheory.RepOver

noncomputable def coverOf {T : Scheme.{0}} {J : Type} (Z : J → Scheme.{0}) (z : ∀ i, Z i ⟶ T)
    (hz : ∀ i, IsOpenImmersion (z i)) (hc : ∀ p : T, ∃ i, p ∈ Set.range (z i)) : T.OpenCover :=
  Scheme.Cover.mkOfCovers J Z z (fun p => hc p) hz

theorem hom_eq_of_local {T S : Scheme.{0}} (t t' : T ⟶ S)
    (h : ∀ p : T, ∃ (Z : Scheme.{0}) (z : Z ⟶ T), IsOpenImmersion z ∧ p ∈ Set.range z ∧
      z ≫ t = z ≫ t') : t = t' := by
  choose Z z hz hp he using h
  exact Scheme.Cover.hom_ext (coverOf Z z hz (fun p => ⟨p, hp p⟩)) t t' he

theorem exists_glue {T S : Scheme.{0}} {J : Type} (Z : J → Scheme.{0}) (z : ∀ i, Z i ⟶ T)
    (hz : ∀ i, IsOpenImmersion (z i)) (hc : ∀ p : T, ∃ i, p ∈ Set.range (z i))
    (t : ∀ i, Z i ⟶ S)
    (ht : ∀ (i k : J) (Y : Scheme.{0}) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k →
      a ≫ t i = b ≫ t k) : ∃ t₀ : T ⟶ S, ∀ i, z i ≫ t₀ = t i :=
  ⟨Scheme.Cover.glueMorphisms (coverOf Z z hz hc) t
      (fun i k => ht i k _ _ _ pullback.condition),
    fun i => Scheme.Cover.ι_glueMorphisms (coverOf Z z hz hc) t _ i⟩

variable {S : Scheme.{0}} (F : (Over S)ᵒᵖ ⥤ Type 1)

theorem map_map {X Y Z : Over S} (a : X ⟶ Y) (b : Y ⟶ Z) (c : X ⟶ Z) (h : a.left ≫ b.left = c.left)
    (d : F.obj (op Z)) : F.map a.op (F.map b.op d) = F.map c.op d := by
  have : c = a ≫ b := Over.OverMorphism.ext (by simpa using h.symm)
  subst this
  simp

theorem sig_eq {Y : Scheme.{0}} (r r' : Y ⟶ S) (h : r = r') (e : F.obj (op (Over.mk r)))
    (e' : F.obj (op (Over.mk r'))) (c : Over.mk r ⟶ Over.mk r') (hc : c.left = 𝟙 Y)
    (he : F.map c.op e' = e) :
    (⟨r, e⟩ : Σ t : Y ⟶ S, F.obj (op (Over.mk t))) = ⟨r', e'⟩ := by
  subst h
  have : c = 𝟙 _ := Over.OverMorphism.ext hc
  subst this
  subst he
  simp

noncomputable def tot : Scheme.{0}ᵒᵖ ⥤ Type 1 where
  obj X := Σ t : X.unop ⟶ S, F.obj (op (Over.mk t))
  map {X Y} f := TypeCat.ofHom fun y =>
    ⟨f.unop ≫ y.1, F.map (Over.homMk f.unop rfl : Over.mk (f.unop ≫ y.1) ⟶ Over.mk y.1).op y.2⟩
  map_id X := by
    refine ConcreteCategory.hom_ext _ _ fun y => ?_
    exact sig_eq F _ _ (Category.id_comp _) _ _ _ rfl rfl
  map_comp f g := by
    refine ConcreteCategory.hom_ext _ _ fun y => ?_
    refine sig_eq F _ _ (Category.assoc _ _ _) _ _ (Over.homMk (𝟙 _) (by simp)) rfl ?_
    refine (map_map F _ _ (Over.homMk g.unop (Category.assoc _ _ _).symm) (by simp) _).trans ?_
    exact map_map F _ _ _ (by simp) _

def el {V : Over S} (v : F.obj (op V)) : (tot F).obj (op V.left) := ⟨V.hom, v⟩

theorem el_inj {V : Over S} {v v' : F.obj (op V)} (h : el F v = el F v') : v = v' :=
  eq_of_heq (Sigma.mk.inj h).2

theorem map_el {Y V : Over S} (a : Y ⟶ V) (v : F.obj (op V)) :
    (tot F).map a.left.op (el F v) = el F (F.map a.op v) :=
  sig_eq F (a.left ≫ V.hom) Y.hom (Over.w a) _ _ (Over.homMk (𝟙 _) (by simp)) rfl
    (map_map F _ _ _ (by simp) _)

theorem w_of_map_el {Y V : Over S} {a : Y.left ⟶ V.left} {v : F.obj (op V)} {y : F.obj (op Y)}
    (h : (tot F).map a.op (el F v) = el F y) : a ≫ V.hom = Y.hom :=
  congrArg Sigma.fst h

theorem w_of_map_eq {Y : Scheme.{0}} {V V' : Over S} {a : Y ⟶ V.left} {b : Y ⟶ V'.left}
    {v : F.obj (op V)} {v' : F.obj (op V')}
    (h : (tot F).map a.op (el F v) = (tot F).map b.op (el F v')) : a ≫ V.hom = b ≫ V'.hom :=
  congrArg Sigma.fst h

theorem map_eq_iff {Y V V' : Over S} (a : Y ⟶ V) (b : Y ⟶ V')
    (v : F.obj (op V)) (v' : F.obj (op V')) :
    (tot F).map a.left.op (el F v) = (tot F).map b.left.op (el F v') ↔
      F.map a.op v = F.map b.op v' := by
  rw [map_el, map_el]
  exact ⟨el_inj F, fun h => by rw [h]⟩

end GlobalTheory.RepOver


open GlobalTheory.RepOver in
theorem GlobalTheory.RepOver.representable_over : ∀ (S : Scheme.{0}) (F : (Over S)ᵒᵖ ⥤ Type 1), (∀ (T : Over S) (y y' : F.obj (op T)), (∀ p : T.left, ∃ (Z : Over S) (z : Z ⟶ T), IsOpenImmersion z.left ∧ p ∈ Set.range z.left ∧ F.map z.op y = F.map z.op y') → y = y') → (∀ (T : Over S) (J : Type) (Z : J → Over S) (z : ∀ i, Z i ⟶ T) (y : ∀ i, F.obj (op (Z i))), (∀ i, IsOpenImmersion (z i).left) → (∀ p : T.left, ∃ i, p ∈ Set.range (z i).left) → (∀ (i k : J) (Y : Over S) (a : Y ⟶ Z i) (b : Y ⟶ Z k), a ≫ z i = b ≫ z k → F.map a.op (y i) = F.map b.op (y k)) → ∃ y₀ : F.obj (op T), ∀ i, F.map (z i).op y₀ = y i) → ∀ (Ix : Type) (U : Ix → Over S) (x : ∀ i, F.obj (op (U i))), (∀ (i : Ix) (Y : Over S) (u u' : Y ⟶ U i), F.map u.op (x i) = F.map u'.op (x i) → u = u') → (∀ (i : Ix) (T : Over S) (y : F.obj (op T)), ∃ W : T.left.Opens, ∀ (Y : Over S) (a : Y ⟶ T), (∃ u : Y ⟶ U i, F.map a.op y = F.map u.op (x i)) ↔ ∀ q, a.left q ∈ W) → (∀ (T : Over S) (y : F.obj (op T)) (p : T.left), ∃ (i : Ix) (Y : Over S) (a : Y ⟶ T) (u : Y ⟶ U i), p ∈ Set.range a.left ∧ F.map a.op y = F.map u.op (x i)) → ∃ (B : Over S) (x₀ : F.obj (op B)), (∀ (T : Over S) (y : F.obj (op T)), ∃! g : T ⟶ B, F.map g.op x₀ = y) ∧ ∃ j : ∀ i, U i ⟶ B, (∀ i, IsOpenImmersion (j i).left) ∧ (∀ p : B.left, ∃ i, p ∈ Set.range (j i).left) ∧ ∀ i, F.map (j i).op x₀ = x i := by
  intro S F hsep hglue Ix U x hmono hopen hcov
  refine Exists.elim (_root_.GlobalTheory.PicGlue.exists_represent_of_charts_large (tot F) ?_ ?_ Ix (fun i => (U i).left)
    (fun i => el F (x i)) ?_ ?_ ?_) ?_
  rotate_right
  · rintro B ⟨⟨tB, dB⟩, huniv, j, hj, hc, hx⟩
    refine ⟨Over.mk tB, dB, fun T y => ?_, fun i => Over.homMk (j i)
      (w_of_map_el F (V := Over.mk tB) (hx i)), hj, hc, fun i => ?_⟩
    · obtain ⟨g, hg, hu⟩ := huniv T.left (el F y)
      refine ⟨Over.homMk g (w_of_map_el F (V := Over.mk tB) hg), ?_, fun g' hg' => ?_⟩
      · exact el_inj F ((map_el F _ dB).symm.trans hg)
      · exact Over.OverMorphism.ext (hu g'.left ((map_el F g' dB).trans (congrArg (el F) hg')))
    · exact el_inj F ((map_el F _ dB).symm.trans (hx i))
  · rintro T ⟨t, d⟩ ⟨t', d'⟩ h
    obtain rfl : t = t' := hom_eq_of_local t t' fun p => by
      obtain ⟨Z, z, hz, hp, he⟩ := h p
      exact ⟨Z, z, hz, hp, congrArg Sigma.fst he⟩
    obtain rfl : d = d' := hsep (Over.mk t) d d' fun p => by
      obtain ⟨Z, z, hz, hp, he⟩ := h p
      exact ⟨Over.mk (z ≫ t), Over.homMk z rfl, hz, hp, (map_eq_iff F _ _ d d').1 he⟩
    rfl
  · intro T J Z z y hz hc hy
    obtain ⟨t, ht⟩ := exists_glue Z z hz hc (fun i => (y i).1)
      (fun i k Y a b hab => congrArg Sigma.fst (hy i k Y a b hab))
    obtain ⟨d, hd⟩ := hglue (Over.mk t) J (fun i => Over.mk (y i).1)
      (fun i => Over.homMk (z i) (ht i)) (fun i => (y i).2) hz hc
      (fun i k Y a b hab => (map_eq_iff F a b _ _).1
        (hy i k Y.left a.left b.left (congrArg (fun c => c.left) hab)))
    exact ⟨⟨t, d⟩, fun i => (map_el F (Y := Over.mk (y i).1) (V := Over.mk t)
      (Over.homMk (z i) (ht i)) d).trans (congrArg (el F) (hd i))⟩
  · intro i Y u u' h
    have := hmono i (Over.mk (u ≫ (U i).hom)) (Over.homMk u rfl)
      (Over.homMk u' (w_of_map_eq F h).symm) ((map_eq_iff F _ _ _ _).1 h)
    exact congrArg (fun c => c.left) this
  · rintro i T ⟨t, d⟩
    obtain ⟨W, hW⟩ := hopen i (Over.mk t) d
    refine ⟨W, fun Y a => Iff.trans ?_ (hW (Over.mk (a ≫ t)) (Over.homMk a rfl))⟩
    constructor
    · rintro ⟨u, hu⟩
      exact ⟨Over.homMk u (w_of_map_eq F (V := Over.mk t) hu).symm, (map_eq_iff F _ _ _ _).1 hu⟩
    · rintro ⟨u, hu⟩
      exact ⟨u.left, (map_eq_iff F _ _ _ _).2 hu⟩
  · rintro T ⟨t, d⟩ p
    obtain ⟨i, Y, a, u, hp, h⟩ := hcov (Over.mk t) d p
    exact ⟨i, Y.left, a.left, u.left, hp, (map_eq_iff F _ _ _ _).2 h⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOver =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresenting =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresenting", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.WhiskerLeftEqLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeomPointThrough\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullLiftOneEqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullUnitEqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentableOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsUniqueMapToThetaFamilyOpenPart\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.PicGlue Opposite
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PicGlue

theorem same_id_map {S : Scheme.{0}} {A T U : Over S} [GrpObj A] {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left}
    (hN : Fam A N) (hM : Fam A M) (u : T ⟶ U) :
    Same A N M (𝟙 T) u ↔ (addF A).map u.op (famCls hM) = famCls hN := by
  rw [same_iff_map hN hM, op_id, CategoryTheory.Functor.map_id]
  exact eq_comm

theorem glue : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ (Ix : Type) (U : Ix → Over S) (M : ∀ i, LB (A ⊗ U i).left), (∀ i, IsChart A (M i)) → (∀ (K : Type) [Field K] [IsAlgClosed K] (s : Sp K ⟶ S) (N : LB (A ⊗ Over.mk s).left), Fam A N → ∃ (i : Ix) (u : Over.mk s ⟶ U i), Same A N (M i) (𝟙 _) u) → ∃ (B : Over S) (P : LB (A ⊗ B).left) (j : ∀ i, U i ⟶ B), Rep A (toUnit B) P ∧ (∀ i, IsOpenImmersion (j i).left) ∧ (∀ p : B.left, ∃ i, p ∈ Set.range (j i).left) ∧ ∀ i, Same A (M i) P (𝟙 _) (j i) := by
  intro S A _ hA Ix U M hM hcov
  obtain ⟨B, x, hu, j, ho, hc, hj⟩ := GlobalTheory.RepOver.representable_over S (addF A) (GlobalTheory.PicGlue.addF_separated S A hA) (GlobalTheory.PicGlue.addF_glue S A hA) Ix U
    (fun i ↦ famCls (hM i).fam)
    (fun i Y u u' h ↦ (hM i).inj Y u u' ((same_iff_map (hM i).fam (hM i).fam u u').2 h))
    (fun i T y ↦ by
      obtain ⟨N, hN, rfl⟩ := famCls_surj y
      obtain ⟨W, hW⟩ := (hM i).chart T N hN
      exact ⟨W, fun Y a ↦ (exists_congr fun u ↦ (same_iff_map hN (hM i).fam a u).symm).trans (hW Y a)⟩)
    (fun T y p ↦ by
      obtain ⟨K, _, _, s, hs⟩ := _root_.GlobalTheory.ZM.UnivProp.exists_geomPt T.left p
      let a : Over.mk (s ≫ T.hom) ⟶ T := Over.homMk s rfl
      obtain ⟨N, hN, e⟩ := famCls_surj ((addF A).map a.op y)
      obtain ⟨i, u, h⟩ := hcov K (s ≫ T.hom) N hN
      exact ⟨i, _, a, u, hs, e.symm.trans ((same_id_map hN (hM i).fam u).1 h).symm⟩)
  obtain ⟨P, hP, rfl⟩ := famCls_surj x
  refine ⟨B, P, j, ⟨hP, fun T t N hN ↦ ?_⟩, ho, hc, fun i ↦ (same_id_map (hM i).fam hP _).2 (hj i)⟩
  obtain ⟨g, hg, hg'⟩ := hu T (famCls hN)
  have k : ∀ g : T ⟶ B, LBIso N (ev P (fst A T) (snd A T ≫ g)) ↔ (addF A).map g.op (famCls hP) = famCls hN :=
    fun g ↦ (same_id_iff hN.isLB hP.isLB g).symm.trans (same_id_map hN hP g)
  exact ⟨g, ⟨toUnit_unique _ _, (k g).2 hg⟩, fun g' h ↦ hg' g' ((k g').1 h.2)⟩

end GlobalTheory.PicGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresenting =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresenting\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement =====
