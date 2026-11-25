module

public import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import Development.AbelianVarietyTheory.Counterexamples.JetSurvey.ExistsPullbackPrescribed
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsNormalizedBoth
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC
public import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubTrivDeltaAndEvenUnique
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SurjectiveCubeBaseChange
public import Development.AbelianVarietyTheory.BlockTheory.CMModuli.AlgebraLevelSetting
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsPullbackSectionNonzeroLocus
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelTrivialRigidTranslateLineBundle
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleRigidTranslateLineBundleRationalPoint
public import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionTranslateRefinementStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordBundlePullbackGrpPullbackStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationCompleteLocalEvenOnTorusStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdempotentFactorUniformisedGroupsBaseChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataOfIdempotentFactorUniformisatio
public import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegUniqueAndComp
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SixthLawsAndUnifUniq
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsIsoPairOfEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinExtCompIsPullDeg
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TqOfGtCoord
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SiegelFamilyProperExtension
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SiegelStructurePullback
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBTransport
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsSplitExtDatumOfSplitTorusExtension
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolOfSecondQuotient
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMemCommonChart
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsCPMapCompCancel
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TraceFormTwistIsoOfPullback
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkBaseChange
import Mathlib.RingTheory.RegularLocalRing.Defs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleOfTranslate, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorLineBundlePullbackSpecLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateCubicalSymmetricLineBundleTwoTors, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivTranslateOrderTwo, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedCubicalBundleClosedFibreUniformisation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedUniformisationBundleEvenClosedFibreTor, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalSymmetricBundleTranslateOrderTw, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrincipalPolarisationGenericFibreTwoTorsio, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedD, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedDStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtensionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformizationBaseChangeCompleteDvr, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescent, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescentStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleOfTranslate =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleOfTranslate", "h": "module\n\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import Development.AbelianVarietyTheory.Counterexamples.JetSurvey.ExistsPullbackPrescribed\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsNormalizedBoth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBTransport\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.LamTransl
variable {S : Scheme.{0}} (G : Over S) [GrpObj G] [IsCommMonObj G]

theorem foldr_eq {T : Over S} {n : ℕ} (x : Fin n → (T ⟶ G)) (l : List (Fin n)) :
    l.foldr (fun k acc => padd G (x k) acc) (pzero G T) = (l.map x).prod := by
  induction l with
  | nil => simp [pzero, Hom.one_def]
  | cons k l ih => rw [List.foldr_cons, ih, List.map_cons, List.prod_cons, padd, Hom.mul_def]

def split3 (I : Finset (Fin 3)) : Finset (Fin 2) ⊕ Finset (Fin 2) :=
  if (2 : Fin 3) ∈ I then Sum.inl (Finset.univ.filter fun i : Fin 2 => Fin.castSucc i ∈ I)
  else Sum.inr (Finset.univ.filter fun i : Fin 2 => Fin.castSucc i ∈ I)

theorem split3_bij : Function.Bijective split3 := by decide

def splitEquiv : thK ≃ ULift.{0} (Finset (Fin 2)) ⊕ ULift.{0} (Finset (Fin 2)) :=
  Equiv.ulift.trans ((Equiv.ofBijective _ split3_bij).trans (Equiv.sumCongr Equiv.ulift.symm Equiv.ulift.symm))

theorem mem8 : ∀ I : Finset (Fin 3),
    I ∈ ({∅, {0}, {1}, {2}, {0,1}, {0,2}, {1,2}, {0,1,2}} : Finset (Finset (Fin 3))) := by decide

variable (a : 𝟙_ (Over S) ⟶ G)

def tr : G ⟶ G := (toUnit G ≫ a) * 𝟙 G

def pt3 : G2 G ⟶ G3 G := lift (fst G G) (lift (snd G G) (toUnit (G2 G) ≫ a))
def φA : ULift.{0} (Finset (Fin 2)) → ((G2 G).left ⟶ G.left) := fun I => (psum G (x2 G) I.down ≫ tr G a).left
def φB : ULift.{0} (Finset (Fin 2)) → ((G2 G).left ⟶ G.left) := fun I => (psum G (x2 G) I.down).left
def ε2 : ULift.{0} (Finset (Fin 2)) → ℤ := fun I => (-1) ^ (2 - I.down.card)

theorem splitEquiv_apply (I : Finset (Fin 3)) : splitEquiv ⟨I⟩ = Sum.map ULift.up ULift.up (split3 I) := by
  rfl

theorem split_eq (k : thK) : Sum.elim (φA G a) (φB G) (splitEquiv k) = (pt3 G a).left ≫ thφ G (x3 G) k ∧
    Sum.elim ε2 (fun k => -ε2 k) (splitEquiv k) = thε k := by
  rcases k with ⟨I⟩
  rw [splitEquiv_apply]
  have h := mem8 I
  simp only [Finset.mem_insert, Finset.mem_singleton] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals
    simp (config := {decide := true}) only [split3, if_true, if_false, Finset.mem_insert, Finset.mem_singleton,
      Sum.map_inl, Sum.map_inr, Sum.elim_inl, Sum.elim_inr]
  all_goals
    refine ⟨?_, trivial⟩
    simp only [φA, φB, thφ]
    rw [← Over.comp_left]
    congr 1
    rw [psum, foldr_eq, psum, foldr_eq]
    simp [List.finRange_succ, x2, x3, pt3, tr, MonObj.comp_mul]
  all_goals ac_rfl

theorem sameSum : LB.SameSum (fun k => (pt3 G a).left ≫ thφ G (x3 G) k) thε (Sum.elim (φA G a) (φB G))
    (Sum.elim ε2 fun k => -ε2 k) := by
  classical
  intro ψ
  rw [← Equiv.sum_comp splitEquiv]
  exact Finset.sum_congr rfl fun k _ => by rw [(split_eq G a k).1, (split_eq G a k).2]

end GlobalTheory.Mum.LamTransl

namespace GlobalTheory.Mum


open LamTransl in
theorem lam_transl_iso : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] [IsCommMonObj G] (L : RigLB G), CubicalStr G L →
    ∀ (a : 𝟙_ (Over S) ⟶ G) (N : LB G.left), N.IsLB → LBIso N (L.L.pull ((toUnit G ≫ a) * 𝟙 G).left) →
      LBIso (abelian₂ G N) (abelian₂ G L.L) := by
  intro S G _ _ L c a N hN hNL
  have hT : (L.L.pull (tr G a).left).IsLB := pull_isLB L.isLB _
  have hA : (LB.LinComb L.L (φA G a) ε2).IsLB := DVR.linComb_isLB _ L.isLB _ _
  have hLam := GlobalTheory.SabBaseChange.cube_isLB (x2 G) L.isLB
  have h1 : LBIso (abelian₂ G N) (abelian₂ G (L.L.pull (tr G a).left)) := GlobalTheory.SabBaseChange.lbIso_cube (x2 G) hNL
  have h2 : LBIso (abelian₂ G (L.L.pull (tr G a).left)) (LB.LinComb L.L (φA G a) ε2) :=
    LBIso.chartPull (chartPullLinComb L.L (tr G a).left _ (φA G a) ε2 (𝟙 _) fun k => (Category.id_comp _).symm)
      (chartPullSame L.L (φA G a) (φA G a) ε2 (𝟙 _) fun k => (Category.id_comp _).symm)
      (GlobalTheory.PolBaseChange.lbIso_refl hA)
  have h3 : LBIso (abelian₂ G L.L) (LB.LinComb L.L (φA G a) ε2) := by
    refine (GlobalTheory.TripleCompare.lbIso_iff_gen (L := L.L) (φB G) ε2 (φA G a) ε2).2 ?_
    obtain ⟨t', ht', -⟩ := DVR.gen_transport L.isLB (sameSum G a)
      _ (DVR.pullGen_isGen L.L _ _ c.t c.isGen (pt3 G a).left)
    exact ⟨t', ht'⟩
  exact LBIso.trans (GlobalTheory.SabBaseChange.cube_isLB _ hN) (GlobalTheory.SabBaseChange.cube_isLB _ hT) hLam h1
    (LBIso.trans (GlobalTheory.SabBaseChange.cube_isLB _ hT) hA hLam h2 (LBIso.symm h3))

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleOfTranslate =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorLineBundlePullbackSpecLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorLineBundlePullbackSpecLocalRing", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.LocalPullGen

theorem main : ∀ (R : Type) [CommRing R] [IsLocalRing R] (X : Scheme.{0}) (L : LB X), L.IsLB →
    ∀ p : (𝟙_ (Over (Sp R))).left ⟶ X, ∃ ρ : LB.Gen (L.pull p), ρ.IsGen := by
  intro R _ _ X L hL p
  exact ReciprocityTheory.ChartRestriction.G.DVR.exists_gen_of_local (V := R) L hL (K := PUnit) (fun _ => p) (fun _ => 1)

end GlobalTheory.LocalPullGen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorLineBundlePullbackSpecLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateCubicalSymmetricLineBundleTwoTors =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateCubicalSymmetricLineBundleTwoTors", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.TranslCP

open GlobalTheory.CubTransport GlobalTheory.UU

section Gen
variable {X Y : Scheme.{0}} {L : LB X}

theorem exists_transl_gen (hL : L.IsLB) (τ : X ⟶ X) {K : Type} [Fintype K] {φ' φ : K → (Y ⟶ X)} {ε : K → ℤ}
    (hc : ∀ k, φ' k ≫ τ = φ k) (t : LB.Gen (LB.LinComb L φ ε)) (ht : t.IsGen) :
    ∃ t' : LB.Gen (LB.LinComb (L.pull τ) φ' ε), t'.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J J'), Good L z J → Good (L.pull τ) z J' →
        val t r z J = (∏ k, gw (pullIso L τ) (r ≫ φ' k) z (J ((r ≫ φ' k) ≫ τ)) (J' (r ≫ φ' k)) ^ ε k) *
          val t' r z J' := by
  have hc' : ∀ k, φ' k ≫ τ = 𝟙 Y ≫ φ k := fun k => (hc k).trans (Category.id_comp _).symm
  obtain ⟨a, ha, H⟩ := exists_pmaps ((isGen_iff _).1 (pullIso_isGen hL τ)) hL (pull_isLB hL τ) (𝟙 Y) hc' t ht
  refine ⟨a, ha, fun Z r z J J' hJ hJ' => ?_⟩
  have e := val_pmaps hc' H r hJ hJ'
  rwa [Category.comp_id] at e

theorem gw_pullIso_self (hL : L.IsLB) (τ : X ⟶ X) (f : Y ⟶ X) (y : Y) {j : L.ι} (hj : τ (f y) ∈ L.U j) :
    gw (pullIso L τ) f y j (fun _ => j) = 1 :=
  gm_self (pull_isLB hL τ) f y (mem_pull.2 hj)

theorem gw_pullIso_good (hL : L.IsLB) (τ : X ⟶ X) {Z : Scheme.{0}} {z : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L z J)
    (f : Z ⟶ X) : gw (pullIso L τ) f z (J (f ≫ τ)) (fun _ => J (f ≫ τ)) = 1 :=
  gw_pullIso_self hL τ f z (hJ (f ≫ τ))

theorem good_pull {Z : Scheme.{0}} (τ : X ⟶ X) {z : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L z J) :
    Good (L.pull τ) z (fun r _ => J (r ≫ τ)) := fun r => mem_pull.2 (hJ (r ≫ τ))

end Gen

section Grp
variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G]

theorem comp_transl (a : 𝟙_ (Over S) ⟶ G) {T : Over S} (x : T ⟶ G) :
    x.left ≫ ((toUnit G ≫ a) * 𝟙 G).left = ((toUnit T ≫ a) * x).left := by
  rw [← Over.comp_left, MonObj.comp_mul, ← Category.assoc, toUnit_unique (x ≫ toUnit G) (toUnit T), Category.comp_id]

theorem toUnit_comp_inv (a : 𝟙_ (Over S) ⟶ G) (ha : a ^ 2 = 1) (T : Over S) : (toUnit T ≫ a)⁻¹ = toUnit T ≫ a := by
  have : a⁻¹ = a := inv_eq_of_mul_eq_one_left (by rw [← pow_two, ha])
  rw [← GrpObj.comp_inv, this]

theorem eSec_eq_one_left : eSec G = (1 : 𝟙_ (Over S) ⟶ G).left := by
  rw [Hom.one_def, toUnit_unique (toUnit _) (𝟙 _), Category.id_comp]; rfl

theorem toUnit_left' (T : Over S) (a : 𝟙_ (Over S) ⟶ G) : (toUnit T ≫ a).left = T.hom ≫ a.left := by
  rw [Over.comp_left, Rosenlicht.toUnit_left]

end Grp

section Main
variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G]

theorem transl_comp_inv (a : 𝟙_ (Over S) ⟶ G) (ha : a ^ 2 = 1) :
    ((toUnit G ≫ a) * 𝟙 G).left ≫ (ι[G]).left = (ι[G]).left ≫ ((toUnit G ≫ a) * 𝟙 G).left := by
  have i1 : ι[G] = (𝟙 G)⁻¹ := by rw [Hom.inv_def, Category.id_comp]
  have e : ((toUnit G ≫ a) * 𝟙 G) ≫ ι[G] = ι[G] ≫ ((toUnit G ≫ a) * 𝟙 G) := by
    rw [← Hom.inv_def, MonObj.comp_mul, ← Category.assoc, toUnit_unique (ι[G] ≫ toUnit G) (toUnit G),
      Category.comp_id, mul_inv, toUnit_comp_inv a ha, i1]
  rw [← Over.comp_left, ← Over.comp_left, e]

theorem exists_symL (P : CP G) (a : 𝟙_ (Over S) ⟶ G) (ha : a ^ 2 = 1) :
    ∃ t : LB.Gen (LB.LinComb P.L.L (K := Fin 2) (fun k => ![(ι[G]).left, 𝟙 G.left] k ≫ ((toUnit G ≫ a) * 𝟙 G).left) ![1, -1]),
      t.IsGen ∧ ∀ (T : Over S) (x : T ⟶ G) (z : T.left) (J), Good P.L.L z J →
        val t x.left z J = val P.sym ((toUnit T ≫ a) * x).left z J * (val P.sym (toUnit T ≫ a).left z J)⁻¹ := by
  have hm := DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.pullGen_isGen _ _ _ _ P.sym_gen ((toUnit G ≫ a) * 𝟙 G).left)
    (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ P.sym_gen (G.hom ≫ a.left)))
  have hi : (G.hom ≫ a.left) ≫ (ι[G]).left = G.hom ≫ a.left := by
    have : a ≫ ι[G] = a := by rw [← Hom.inv_def]; exact inv_eq_of_mul_eq_one_left (by rw [← pow_two, ha])
    rw [Category.assoc, ← Over.comp_left, this]
  obtain ⟨t, ht, hv⟩ := exists_gen P.L.isLB (φ' := fun k => ![(ι[G]).left, 𝟙 G.left] k ≫ ((toUnit G ≫ a) * 𝟙 G).left)
    (ε' := ![1, -1]) (fun U _ h => by
      rw [Fintype.prod_sum_type]
      simp only [Fin.prod_univ_two, Sum.elim_inl, Sum.elim_inr, Matrix.cons_val_zero, Matrix.cons_val_one,
        hi, Category.comp_id, Category.id_comp, transl_comp_inv a ha]
      simp only [zpow_one, zpow_neg, inv_inv, mul_inv_cancel, inv_mul_cancel, _root_.mul_one]) _ hm
  refine ⟨t, ht, fun T x z J hJ => ?_⟩
  rw [hv _ _ z J hJ, val_mul hJ, val_inv, val_pull hJ, val_pull hJ, comp_transl, ← Category.assoc, Over.w x,
    toUnit_left']
end Main

section Cube
variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G]

theorem lift_tripleCoordinates_eq_id : lift (x3 G 0) (lift (x3 G 1) (x3 G 2)) = 𝟙 (G3 G) := by
  ext <;> simp [x3]

theorem exists_cubL (P : CP G) (a : 𝟙_ (Over S) ⟶ G) :
    ∃ t : LB.Gen (LB.LinComb P.L.L (fun I => thφ G (x3 G) I ≫ ((toUnit G ≫ a) * 𝟙 G).left) thε), t.IsGen ∧
      ∀ (T : Over S) (x y u : T ⟶ G) (z : T.left) (J), Good P.L.L z J →
        val t (lift x (lift y u)).left z J =
          cubV P.c z J x y ((toUnit T ≫ a) * u) * (cubV P.c z J x y (toUnit T ≫ a))⁻¹ := by
  have hm := DVR.mulGen_isGen _ _ _ _ _ _ _
    (DVR.pullGen_isGen P.L.L (thφ G (x3 G)) thε P.c.t P.c.isGen
      (lift (x3 G 0) (lift (x3 G 1) ((toUnit (G3 G) ≫ a) * x3 G 2))).left)
    (DVR.invGen_isGen _ _ _ _
      (DVR.pullGen_isGen P.L.L (thφ G (x3 G)) thε P.c.t P.c.isGen (lift (x3 G 0) (lift (x3 G 1) (toUnit (G3 G) ≫ a))).left))
  obtain ⟨t, ht, hv⟩ := exists_gen P.L.isLB (φ' := fun I => thφ G (x3 G) I ≫ ((toUnit G ≫ a) * 𝟙 G).left) (ε' := thε) (fun U _ h => by
      refine (Fintype.prod_sum_type _).trans ?_
      simp only [Sum.elim_inl, Sum.elim_inr, zpow_neg, Finset.prod_inv_distrib]
      refine (congrArg₂ (· * ·) (prod_cub _ _ _ h) (congrArg (·⁻¹) (prod_cub _ _ _ h))).trans ?_
      have e := prod_cub (x3 G 0) (x3 G 1) (x3 G 2) (fun q => h (q ≫ ((toUnit G ≫ a) * 𝟙 G).left))
      simp only [lift_tripleCoordinates_eq_id, Over.id_left, Category.id_comp, comp_transl] at e
      refine Eq.trans ?_ e.symm
      have c₁ : x3 G 0 * x3 G 1 * ((toUnit (G3 G) ≫ a) * x3 G 2) =
          (toUnit (G3 G) ≫ a) * (x3 G 0 * x3 G 1 * x3 G 2) := by ac_rfl
      have c₂ : x3 G 0 * ((toUnit (G3 G) ≫ a) * x3 G 2) = (toUnit (G3 G) ≫ a) * (x3 G 0 * x3 G 2) := by ac_rfl
      have c₃ : x3 G 1 * ((toUnit (G3 G) ≫ a) * x3 G 2) = (toUnit (G3 G) ≫ a) * (x3 G 1 * x3 G 2) := by ac_rfl
      have c₄ : x3 G 0 * x3 G 1 * (toUnit (G3 G) ≫ a) = (toUnit (G3 G) ≫ a) * (x3 G 0 * x3 G 1) := by ac_rfl
      have c₅ : x3 G 0 * (toUnit (G3 G) ≫ a) = (toUnit (G3 G) ≫ a) * x3 G 0 := mul_comm _ _
      have c₆ : x3 G 1 * (toUnit (G3 G) ≫ a) = (toUnit (G3 G) ≫ a) * x3 G 1 := mul_comm _ _
      rw [c₁, c₂, c₃, c₄, c₅, c₆, _root_.mul_one]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv]
      abel) _ hm
  refine ⟨t, ht, fun T x y u z J hJ => ?_⟩
  have r₀ : lift x (lift y u) ≫ x3 G 0 = x := by simp [x3]
  have r₁ : lift x (lift y u) ≫ x3 G 1 = y := by simp [x3]
  have r₂ : lift x (lift y u) ≫ x3 G 2 = u := by simp [x3]
  have r₃ : lift x (lift y u) ≫ (toUnit (G3 G) ≫ a) = toUnit T ≫ a := by
    rw [← Category.assoc, toUnit_unique (lift x (lift y u) ≫ toUnit (G3 G)) (toUnit T)]
  refine (hv _ _ z J hJ).trans ((val_mul hJ _ _ _).trans ?_)
  refine (congrArg₂ (· * ·) (val_cub P.c _ hJ _ _ _) ((val_inv _ _).trans (congrArg (·⁻¹) (val_cub P.c _ hJ _ _ _)))).trans ?_
  rw [r₀, r₁, MonObj.comp_mul, r₂, r₃]
end Cube

section Alg
variable {A U : Type} [CommGroup A] [CommGroup U]

theorem isCub_transl {C : A → A → A → U} (hC : IsCub C) (α : A) :
    IsCub (fun x y u => C x y (α * u) * (C x y α)⁻¹) := by
  constructor
  case face =>
    intro x y
    simp only [hC.face, mul_inv_cancel]
  case s01 =>
    intro x y u
    rw [hC.s01 x y, hC.s01 x y]
  case s12 =>
    intro x y u
    have t : ∀ p q, C x p q = C p q x := fun p q => (hC.s01 x p q).trans (hC.s12 p x q)
    have e := hC.coc u α y x
    rw [← t, ← t, ← t, ← t, hC.s12 x (u * α) y, mul_comm u α, hC.s12 x α y] at e
    apply Additive.ofMul.injective
    have e' := congrArg Additive.ofMul e
    simp only [ofMul_mul, ofMul_inv] at e' ⊢
    linear_combination (norm := abel) e'
  case coc =>
    intro x x' x'' y
    have e₁ := hC.coc x x' x'' (α * y)
    have e₂ := hC.coc x x' x'' α
    apply Additive.ofMul.injective
    have e₁' := congrArg Additive.ofMul e₁
    have e₂' := congrArg Additive.ofMul e₂
    simp only [ofMul_mul, ofMul_inv] at e₁' e₂' ⊢
    linear_combination (norm := abel) e₁' - e₂'

theorem sym_cub_transl (C : A → A → A → U) (σ : A → U) (α : A) (hα : α⁻¹ = α)
    (h : ∀ x y u, C x⁻¹ y⁻¹ u⁻¹ * σ (x * y) * σ (x * u) * σ (y * u) =
      C x y u * σ (x * y * u) * σ x * σ y * σ u) (x y u : A) :
    C x⁻¹ y⁻¹ (α * u⁻¹) * (C x⁻¹ y⁻¹ α)⁻¹ * (σ (α * (x * y)) * (σ α)⁻¹) * (σ (α * (x * u)) * (σ α)⁻¹) *
        (σ (α * (y * u)) * (σ α)⁻¹) =
      C x y (α * u) * (C x y α)⁻¹ * (σ (α * (x * y * u)) * (σ α)⁻¹) * (σ (α * x) * (σ α)⁻¹) *
        (σ (α * y) * (σ α)⁻¹) * (σ (α * u) * (σ α)⁻¹) := by
  have e₁ := h x y (α * u)
  have e₂ := h x y α
  have c₁ : x * (α * u) = α * (x * u) := by ac_rfl
  have c₂ : y * (α * u) = α * (y * u) := by ac_rfl
  have c₃ : x * y * (α * u) = α * (x * y * u) := by ac_rfl
  have c₄ : x * y * α = α * (x * y) := mul_comm _ _
  have c₅ : x * α = α * x := mul_comm _ _
  have c₆ : y * α = α * y := mul_comm _ _
  rw [mul_inv, hα, c₁, c₂, c₃] at e₁
  rw [hα, c₄, c₅, c₆] at e₂
  apply Additive.ofMul.injective
  have e₁' := congrArg Additive.ofMul e₁
  have e₂' := congrArg Additive.ofMul e₂
  simp only [ofMul_mul, ofMul_inv] at e₁' e₂' ⊢
  linear_combination (norm := abel) e₁' - e₂'

end Alg

theorem exists_transl : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] [IsCommMonObj G] (P : GlobalTheory.UU.CP G) (a : 𝟙_ (Over S) ⟶ G),
    a ^ 2 = 1 → ∀ ρ : LB.Gen (P.L.L.pull a.left), ρ.IsGen →
    ∃ P' : GlobalTheory.UU.CP G, P'.L.L = P.L.L.pull ((toUnit G ≫ a) * 𝟙 G).left ∧
      (∀ (T : Over S) (x : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → P.L.L.ι)
        (J' : (T.left ⟶ G.left) → P'.L.L.ι), Good P.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        val P'.sym x.left z J' =
          val P.sym ((toUnit T ≫ a) * x).left z J * (val P.sym (toUnit T ≫ a).left z J)⁻¹) ∧
      (∀ (T : Over S) (x y u : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → P.L.L.ι)
        (J' : (T.left ⟶ G.left) → P'.L.L.ι), Good P.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        cubV P'.c z J' x y u = cubV P.c z J x y ((toUnit T ≫ a) * u) * (cubV P.c z J x y (toUnit T ≫ a))⁻¹) := by
  intro S G _ _ P a ha ρ hρ
  have hL := P.L.isLB
  have hL' := pull_isLB hL ((toUnit G ≫ a) * 𝟙 G).left
  have hα : ∀ T : Over S, (toUnit T ≫ a)⁻¹ = toUnit T ≫ a := toUnit_comp_inv a ha

  have hc : ∀ _ : PUnit, eSec G ≫ ((toUnit G ≫ a) * 𝟙 G).left = a.left := fun _ => by
    rw [eSec_eq_one_left, comp_transl, _root_.mul_one, toUnit_unique (toUnit _) (𝟙 _), Category.id_comp]
  obtain ⟨rig, hrig, -⟩ := exists_transl_gen hL ((toUnit G ≫ a) * 𝟙 G).left (φ' := fun _ : PUnit => eSec G) (φ := fun _ => a.left)
    (ε := fun _ => 1) hc ρ hρ
  let L' : RigLB G := ⟨P.L.L.pull ((toUnit G ≫ a) * 𝟙 G).left, rig, hL', hrig⟩

  obtain ⟨s, hs, vs⟩ := exists_symL P a ha
  obtain ⟨s', hs', Vs⟩ := exists_transl_gen hL ((toUnit G ≫ a) * 𝟙 G).left (φ' := ![(ι[G]).left, 𝟙 G.left]) (fun _ => rfl) s hs
  obtain ⟨k, hk, vk⟩ := exists_cubL P a
  obtain ⟨k', hk', Vk⟩ := exists_transl_gen hL ((toUnit G ≫ a) * 𝟙 G).left (φ' := thφ G (x3 G)) (fun _ => rfl) k hk
  have cubRel : ∀ (T : Over S) (z : T.left) (J) (J'), Good P.L.L z J → Good L'.L z J' → ∀ x y u : T ⟶ G,
      cubV P.c z J x y ((toUnit T ≫ a) * u) * (cubV P.c z J x y (toUnit T ≫ a))⁻¹ =
        (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) (x * y * u) *
        ((fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) (x * y))⁻¹ *
        ((fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) (x * u))⁻¹ *
        ((fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) (y * u))⁻¹ *
        (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) x *
        (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) y *
        (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) u *
        ((fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) 1)⁻¹ *
        CubTransport.thV (L := L') k' z J' x y u := fun T z J J' hJ hJ' x y u =>
    (vk T x y u z J hJ).symm.trans ((Vk _ _ z J J' hJ hJ').trans
      (congrArg₂ (· * ·) (prod_cub x y u (fun q => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) q z (J (q ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' q))) rfl))
  have symRel : ∀ (T : Over S) (z : T.left) (J) (J'), Good P.L.L z J → Good L'.L z J' → ∀ x : T ⟶ G,
      val P.sym ((toUnit T ≫ a) * x).left z J * (val P.sym (toUnit T ≫ a).left z J)⁻¹ =
        (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) x⁻¹ *
        ((fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left)) x)⁻¹ *
        val s' x.left z J' := fun T z J J' hJ hJ' x =>
    (vs T x z J hJ).symm.trans ((Vs _ _ z J J' hJ hJ').trans
      (congrArg₂ (· * ·) (prod_sym x (fun q => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) q z (J (q ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' q))) rfl))
  let c' : CubicalStr G L' := cubicalOfVal k' hk' fun T z J' hJ' => by
    obtain ⟨J, hJ⟩ := exists_good_pt hL z
    exact isCub_of_twist (isCub_transl (isCub_cubV P.c hJ) (toUnit T ≫ a)) (MonoidHom.id (T ⟶ G))
      (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left))
      (θ' := CubTransport.thV (L := L') k' z J') (cubRel T z J J' hJ hJ')
  refine ⟨⟨L', c', s', hs', corr_of_val hL' fun y J' hJ' => ?_, fun T x y u z J' hJ' => ?_⟩, rfl,
    fun T x z J J' hJ hJ' => ?_, fun T x y u z J J' hJ hJ' => ?_⟩
  · obtain ⟨J, hJ⟩ := exists_good_pt hL y
    refine (val_pull hJ' _ _ _).trans (Eq.trans ?_ (val_one _).symm)
    have e := symRel (𝟙_ (Over S)) y J J' hJ hJ' 1
    simp only [_root_.mul_one, mul_inv_cancel, inv_one, _root_.one_mul] at e
    rw [Category.id_comp, eSec_eq_one_left]
    exact e.symm
  · obtain ⟨J, hJ⟩ := exists_good_pt hL z
    exact sym_cub_alg (MonoidHom.id (T ⟶ G))
      (fun p : T ⟶ G => gw (pullIso P.L.L ((toUnit G ≫ a) * 𝟙 G).left) p.left z (J (p.left ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (J' p.left))
      (θ := fun x y u => cubV P.c z J x y ((toUnit T ≫ a) * u) * (cubV P.c z J x y (toUnit T ≫ a))⁻¹)
      (θ' := cubV c' z J') (σ := fun p => val P.sym ((toUnit T ≫ a) * p).left z J * (val P.sym (toUnit T ≫ a).left z J)⁻¹)
      (σ' := fun p => val s' p.left z J') (cubRel T z J J' hJ hJ') (symRel T z J J' hJ hJ')
      (sym_cub_transl (cubV P.c z J) (fun p => val P.sym p.left z J) _ (hα T) (fun x y u => P.sym_cub T x y u z J hJ) x y u)
  · have eJ : J' = fun r _ => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left) := funext fun r => eq_of_heq (hJ' r)
    subst eJ
    have e := symRel T z J _ hJ (good_pull ((toUnit G ≫ a) * 𝟙 G).left hJ) x
    simp only [gw_pullIso_good hL _ hJ, inv_one, _root_.one_mul] at e
    exact e.symm
  · have eJ : J' = fun r _ => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left) := funext fun r => eq_of_heq (hJ' r)
    subst eJ
    have e := cubRel T z J _ hJ (good_pull ((toUnit G ≫ a) * 𝟙 G).left hJ) x y u
    simp only [gw_pullIso_good hL _ hJ, inv_one, _root_.one_mul, _root_.mul_one] at e
    exact e.symm

end GlobalTheory.TranslCP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateCubicalSymmetricLineBundleTwoTors =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivTranslateOrderTwo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivTranslateOrderTwo", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubTrivDeltaAndEvenUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.TranslateEvenTriv
open GlobalTheory.UU

theorem exists_gen_pull {X X' Y : Scheme.{0}} {L : LB X} (hL : L.IsLB) {F : X' ⟶ X} {L' : LB X'} (e : L' = L.pull F)
    {K : Type} [Fintype K] (φ : K → (Y ⟶ X')) (ε : K → ℤ) (t : LB.Gen (LB.LinComb L (fun k => φ k ≫ F) ε))
    (ht : t.IsGen) : ∃ a : LB.Gen (LB.LinComb L' φ ε), a.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J : (Z ⟶ X) → L.ι) (J' : (Z ⟶ X') → L'.ι), Good L z J →
        (∀ q, HEq (J' q) (fun _ : PUnit.{1} => J (q ≫ F))) → val a r z J' = val t r z J := by
  subst e
  have h := pull_isLB hL F
  have hc : ∀ k, φ k ≫ F = 𝟙 Y ≫ (fun k => φ k ≫ F) k := fun k => (Category.id_comp _).symm
  obtain ⟨a, ha, Ha⟩ := CubTransport.exists_pmaps ((isGen_iff _).1 (pullIso_isGen hL F)) hL h (𝟙 Y) hc t ht
  refine ⟨a, ha, fun Z r z J J' hJ hJ' => ?_⟩
  obtain rfl : J' = fun q _ => J (q ≫ F) := funext fun q => eq_of_heq (hJ' q)
  have hg : Good (L.pull F) z (fun q _ => J (q ≫ F)) := fun q => mem_pull.2 (hJ (q ≫ F))
  have := CubTransport.val_pmaps hc Ha r hJ hg
  rw [Category.comp_id, Finset.prod_eq_one, _root_.one_mul] at this
  · exact this.symm
  · intro k _
    have : gw (pullIso L F) (r ≫ φ k) z (J ((r ≫ φ k) ≫ F)) (fun _ => J ((r ≫ φ k) ≫ F)) = 1 :=
      gm_self h (r ≫ φ k) z (hg (r ≫ φ k))
    rw [this, one_zpow]

theorem exists_good_of_pull {X Z : Scheme.{0}} {L L' : LB X} {F : X ⟶ X} (hF : F ≫ F = 𝟙 X) (e : L' = L.pull F)
    {z : Z} {J' : (Z ⟶ X) → L'.ι} (hJ' : Good L' z J') :
    ∃ J : (Z ⟶ X) → L.ι, Good L z J ∧ ∀ q, HEq (J' q) (fun _ : PUnit.{1} => J (q ≫ F)) := by
  subst e
  refine ⟨fun q => J' (q ≫ F) PUnit.unit, fun q => ?_, fun q => heq_of_eq ?_⟩
  · have : ((q ≫ F) ≫ F) z ∈ L.U (J' (q ≫ F) PUnit.unit) := (mem_pull (F := F)).1 (hJ' (q ≫ F))
    rwa [Category.assoc, hF, Category.comp_id] at this
  · show J' q = J' ((q ≫ F) ≫ F)
    rw [Category.assoc, hF, Category.comp_id]

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G]


omit [IsCommMonObj G] in
theorem comp_translate (a : 𝟙_ (Over S) ⟶ G) {T : Over S} (g : T ⟶ G) :
    g ≫ ((toUnit G ≫ a) * 𝟙 G) = (toUnit T ≫ a) * g := by
  rw [MonObj.comp_mul, comp_toUnit_assoc, Category.comp_id]

variable {X : Type} [AddCommGroup X] (Q : TQ G X)


omit [IsCommMonObj G] in
theorem mul_torus_comp {T : Over S} (g : T ⟶ G) (x : T ⟶ splitTorus S X) : (g * (x ≫ Q.i)) ≫ Q.q = g ≫ Q.q := by
  have := Q.q_hom
  have e : Q.i ≫ Q.q = 1 := Q.isKernel.w
  rw [MonObj.mul_comp, Category.assoc, e, MonObj.comp_one, _root_.mul_one]

theorem exists_gen_torus {P₁ : CP G} (D : Q.Desc P₁) (a : 𝟙_ (Over S) ⟶ G) :
    ∃ s : LB.Gen (LB.LinComb P₁.L.L (K := Fin 2) (fun k => ![Q.i.left, (1 : splitTorus S X ⟶ G).left] k ≫
      ((toUnit G ≫ a) * 𝟙 G).left) ![1, -1]), s.IsGen ∧
      ∀ (T : Over S) (x : T ⟶ splitTorus S X) (z : T.left) (N) (J), Good D.M.L.L z N → Good P₁.L.L z J →
        ∀ W : (T ⟶ G) → (T.left.presheaf.stalk z)ˣ,
          (∀ g, W g = gw D.w g.left z (N (g.left ≫ Q.q.left)) (J g.left)) →
          val s x.left z J = W (toUnit T ≫ a) * (W ((toUnit T ≫ a) * (x ≫ Q.i)))⁻¹ := by
  obtain ⟨t, ht, v⟩ := exists_gen D.M.L.isLB (φ := (PEmpty.elim : PEmpty → ((splitTorus S X).left ⟶ Q.B.left)))
    (ε := PEmpty.elim) (K' := Fin 2) (φ' := fun _ => ((toUnit (splitTorus S X) ≫ a) ≫ Q.q).left)
    (ε' := ![1, -1]) (fun U _ h => by simp [Fin.prod_univ_two]) (LB.oneGen D.M.L.L)
    (fun i j => (map_one _).trans ((congrArg₂ (· * ·) (Fintype.prod_empty _) (map_one _)).trans (_root_.mul_one _)).symm)
  have hc : ∀ k : Fin 2, (![Q.i.left, (1 : splitTorus S X ⟶ G).left] k ≫ ((toUnit G ≫ a) * 𝟙 G).left) ≫ Q.q.left =
      𝟙 _ ≫ ((toUnit (splitTorus S X) ≫ a) ≫ Q.q).left := fun k => by
    rw [Category.id_comp]
    fin_cases k
    · refine congrArg (fun q => q.left) (show (Q.i ≫ ((toUnit G ≫ a) * 𝟙 G)) ≫ Q.q = _ from ?_)
      have := mul_torus_comp Q (toUnit (splitTorus S X) ≫ a) (𝟙 _)
      rw [Category.id_comp] at this
      rw [comp_translate, this]
    · refine congrArg (fun q => q.left) (show ((1 : splitTorus S X ⟶ G) ≫ ((toUnit G ≫ a) * 𝟙 G)) ≫ Q.q = _ from ?_)
      rw [comp_translate, _root_.mul_one]
  obtain ⟨s, hs, Hs⟩ := CubTransport.exists_pmaps ((isGen_iff _).1 D.map.gen) D.M.L.isLB P₁.L.isLB (𝟙 _) hc t ht
  refine ⟨s, hs, fun T x z N J hN hJ W hW => ?_⟩
  have e := CubTransport.val_pmaps hc Hs x.left hN hJ
  rw [v _ _ z N hN, val_one] at e
  have hτ : ∀ g : T ⟶ G, g.left ≫ ((toUnit G ≫ a) * 𝟙 G).left = ((toUnit T ≫ a) * g).left := fun g =>
    congrArg (fun q => q.left) (comp_translate a g)
  have e₂ := CubTrivTorus.prod_cubTriv Q.i x (fun q => gw D.w (q ≫ ((toUnit G ≫ a) * 𝟙 G).left) z
    (N ((q ≫ ((toUnit G ≫ a) * 𝟙 G).left) ≫ Q.q.left)) (J (q ≫ ((toUnit G ≫ a) * 𝟙 G).left)))
  rw [hτ, hτ, _root_.mul_one, ← hW, ← hW] at e₂
  simp only [← Category.assoc x.left] at e
  have e₃ := e.trans (congrArg₂ (· * ·) e₂ rfl)
  apply Additive.ofMul.injective
  have e₄ := congrArg Additive.ofMul e₃
  simp only [ofMul_mul, ofMul_inv, ofMul_one] at e₄ ⊢
  linear_combination (norm := abel) -e₄

theorem exists_even_cubTriv : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] [IsCommMonObj G] (X : Type) [AddCommGroup X]
    (Q : GlobalTheory.UU.TQ G X) (P₁ : GlobalTheory.UU.CP G), Nonempty (Q.Desc P₁) → ∀ a : 𝟙_ (Over S) ⟶ G, a ^ 2 = 1 →
    ∀ P : GlobalTheory.UU.CP G, P.L.L = P₁.L.L.pull ((toUnit G ≫ a) * 𝟙 G).left →
    (∀ (T : Over S) (x : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → P₁.L.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        val P.sym x.left z J' =
          val P₁.sym ((toUnit T ≫ a) * x).left z J * (val P₁.sym (toUnit T ≫ a).left z J)⁻¹) →
    (∀ (T : Over S) (x y u : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → P₁.L.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        cubV P.c z J' x y u = cubV P₁.c z J x y ((toUnit T ≫ a) * u) * (cubV P₁.c z J x y (toUnit T ≫ a))⁻¹) →
    ∃ σ : GlobalTheory.UU.CubTriv P.c Q.i, σ.Even := by
  rintro S G _ _ X _ Q P₁ ⟨D⟩ a ha P hP hsym hcub
  have := Q.i_hom
  have hinv : ∀ T : Over S, (toUnit T ≫ a)⁻¹ = toUnit T ≫ a := fun T => by
    rw [inv_eq_iff_mul_eq_one, ← MonObj.comp_mul, ← pow_two, ha, MonObj.comp_one]
  have hF : ((toUnit G ≫ a) * 𝟙 G).left ≫ ((toUnit G ≫ a) * 𝟙 G).left = 𝟙 G.left := by
    refine congrArg (fun q => q.left) (show ((toUnit G ≫ a) * 𝟙 G) ≫ ((toUnit G ≫ a) * 𝟙 G) = 𝟙 G from ?_)
    rw [comp_translate, ← _root_.mul_assoc, (inv_eq_iff_mul_eq_one.1 (hinv G)), _root_.one_mul]
  obtain ⟨s, hs, vs⟩ := exists_gen_torus Q D a
  obtain ⟨σ, hσ, vσ⟩ := exists_gen_pull P₁.L.isLB hP _ _ s hs
  have hq : ∀ {T : Over S} (g : T ⟶ G) (x : T ⟶ splitTorus S X), (g * (x ≫ Q.i)).left ≫ Q.q.left = g.left ≫ Q.q.left :=
    fun g x => congrArg (fun q => q.left) (mul_torus_comp Q g x)
  refine ⟨⟨σ, hσ, fun T x y u z J' hJ' => ?_⟩, fun T x z J' hJ' => ?_⟩
  all_goals
    obtain ⟨J, hJ, hJJ⟩ := exists_good_of_pull hF hP hJ'
    obtain ⟨N, hN⟩ := exists_good_pt D.M.L.isLB z
    obtain ⟨W, hW⟩ : ∃ W : (T ⟶ G) → (T.left.presheaf.stalk z)ˣ,
      ∀ g, W g = gw D.w g.left z (N (g.left ≫ Q.q.left)) (J g.left) := ⟨_, fun _ => rfl⟩
    have v : ∀ t : T ⟶ splitTorus S X, val σ t.left z J' = W (toUnit T ≫ a) * (W ((toUnit T ≫ a) * (t ≫ Q.i)))⁻¹ :=
      fun t => (vσ _ t.left z J J' hJ hJJ).trans (vs T t z N J hN hJ W hW)
    obtain ⟨-, a₂, a₃⟩ := D.map.vals T z J N hJ hN W hW
  · have b₁ := a₃ (x ≫ Q.i) (y ≫ Q.i) ((toUnit T ≫ a) * (u ≫ Q.i))
    have b₂ := a₃ (x ≫ Q.i) (y ≫ Q.i) (toUnit T ≫ a)
    have e : toBase (f := 𝟙 S) (g := Q.q.left) (by simp) ((toUnit T ≫ a) * (u ≫ Q.i)) =
        toBase (f := 𝟙 S) (g := Q.q.left) (by simp) (toUnit T ≫ a) := Over.OverMorphism.ext (hq _ u)
    rw [e] at b₁
    rw [hcub T _ _ _ z J J' hJ hJJ]
    simp only [v, MonObj.mul_comp]
    generalize x ≫ Q.i = x' at *
    generalize y ≫ Q.i = y' at *
    generalize u ≫ Q.i = u' at *
    generalize toUnit T ≫ a = A at *
    rw [mul_left_comm x' A, mul_left_comm y' A, mul_left_comm (x' * y') A] at b₁
    rw [mul_comm x' A, mul_comm y' A, mul_comm (x' * y') A] at b₂
    apply Additive.ofMul.injective
    have c₁ := congrArg Additive.ofMul b₁
    have c₂ := congrArg Additive.ofMul b₂
    simp only [ofMul_mul, ofMul_inv] at c₁ c₂ ⊢
    linear_combination (norm := abel) c₁ - c₂
  · have b₁ := a₂ ((toUnit T ≫ a) * (x ≫ Q.i))
    have b₂ := a₂ (toUnit T ≫ a)
    rw [hq, mul_inv, hinv] at b₁
    rw [hinv] at b₂
    show val σ _ z J' = _ * val σ _ z J'
    rw [hsym T _ z J J' hJ hJJ, v, v, GrpObj.inv_comp]
    apply Additive.ofMul.injective
    have c₁ := congrArg Additive.ofMul b₁
    have c₂ := congrArg Additive.ofMul b₂
    simp only [ofMul_mul, ofMul_inv] at c₁ c₂ ⊢
    linear_combination (norm := abel) c₁ - c₂

end GlobalTheory.TranslateEvenTriv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivTranslateOrderTwo =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedCubicalBundleClosedFibreUniformisation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedCubicalBundleClosedFibreUniformisation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SurjectiveCubeBaseChange\npublic import Development.AbelianVarietyTheory.BlockTheory.CMModuli.AlgebraLevelSetting\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.TranslateLevel
open GlobalTheory.UU

section Iso
variable {X X' : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X} {τ : X ⟶ X} {τ' : X' ⟶ X'}

theorem exists_translate (h : τ' ≫ F = F ≫ τ) (w₁ : LB.Iso L' (L.pull F)) (hw₁ : w₁.IsGen) :
    ∃ w : LB.Iso (L'.pull τ') ((L.pull τ).pull F), w.IsGen ∧
      ∀ (Y : Scheme.{0}) (r : Y ⟶ X') (y : Y) (j : L.ι) (k : L'.ι), τ (F (r y)) ∈ L.U j → τ' (r y) ∈ L'.U k →
        gw w r y (fun _ => j) (fun _ => k) = gw w₁ (r ≫ τ') y j k := by
  have e : ∀ x : X', F (τ' x) = τ (F x) := fun x => congrArg (fun g => g x) h
  have le : ∀ (j : L.ι) (k : L'.ι), ((L.pull τ).pull F).U (fun _ _ => j) ⊓ (L'.pull τ').U (fun _ => k) ≤
      τ' ⁻¹ᵁ ((L.pull F).U (fun _ => j) ⊓ L'.U k) := fun j k x hx =>
    ⟨mem_pull.2 (by rw [e]; exact mem_pull.1 (mem_pull.1 hx.1)), mem_pull.1 hx.2⟩
  let w : LB.Iso (L'.pull τ') ((L.pull τ).pull F) :=
    ⟨fun p => res (le (p.1 PUnit.unit PUnit.unit) (p.2 PUnit.unit))
      (pullU τ' _ (w₁.s (fun _ => p.1 PUnit.unit PUnit.unit, p.2 PUnit.unit)))⟩
  have key : ∀ (Y : Scheme.{0}) (r : Y ⟶ X') (y : Y) (j : L.ι) (k : L'.ι), τ (F (r y)) ∈ L.U j → τ' (r y) ∈ L'.U k →
      gw w r y (fun _ => j) (fun _ => k) = gw w₁ (r ≫ τ') y j k := fun Y r y j k hj hk => by
    have hm : r y ∈ ((L.pull τ).pull F).U (fun _ _ => j) ⊓ (L'.pull τ').U (fun _ => k) :=
      ⟨mem_pull.2 (mem_pull.2 hj), mem_pull.2 hk⟩
    exact (gm_res r y (le j k) hm _).trans (gm_pull r τ' y _ (@le j k (r y) hm) _)
  refine ⟨w, (isGen_iff w).2 fun Y r y j j' k k' hj hj' hk hk' => ?_, key⟩
  have a := (isGen_iff w₁).1 hw₁ Y (r ≫ τ') y (j PUnit.unit) (j' PUnit.unit) (k PUnit.unit) (k' PUnit.unit)
    (by show F (τ' (r y)) ∈ _; rw [e]; exact mem_pull.1 hj) (by show F (τ' (r y)) ∈ _; rw [e]; exact mem_pull.1 hj')
    ((mem_pull (F := τ')).1 hk) ((mem_pull (F := τ')).1 hk')
  rw [Category.assoc, h, ← Category.assoc] at a
  refine (key Y r y _ _ (mem_pull.1 hj) (mem_pull.1 hk)).trans (a.trans ?_)
  exact congrArg₂ (· * ·) (congrArg₂ (· * ·) (gm_pull_g L τ (r ≫ F) y j j' hj hj').symm
    (congrArg (·⁻¹) (gm_pull_g L' τ' r y k k' hk hk').symm))
    (key Y r y _ _ (mem_pull.1 hj') (mem_pull.1 hk')).symm

end Iso

variable {S S' : Scheme.{0}} {G : Over S} {G' : Over S'} [GrpObj G] [IsCommMonObj G] [GrpObj G'] [IsCommMonObj G']


omit [IsCommMonObj G] in
theorem left_translate (a : 𝟙_ (Over S) ⟶ G) {T : Over S} (x : T ⟶ G) :
    x.left ≫ ((toUnit G ≫ a) * 𝟙 G).left = ((toUnit T ≫ a) * x).left := by
  rw [← Over.comp_left, MonObj.comp_mul, Category.comp_id, ← Category.assoc, comp_toUnit]



theorem exists_translate_pull {f : S' ⟶ S} {F : G'.left ⟶ G.left} {hw : F ≫ G.hom = G'.hom ≫ f}
    (Q P : CP G) (P₁ : CP G') (a : 𝟙_ (Over S) ⟶ G) (a' : 𝟙_ (Over S') ⟶ G') (ha : a'.left ≫ F = f ≫ a.left)
    (h2 : a' ^ 2 = 1) (hP : P.L.L = Q.L.L.pull ((toUnit G ≫ a) * 𝟙 G).left)
    (hs : ∀ (T : Over S) (x : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → Q.L.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good Q.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        val P.sym x.left z J' =
          val Q.sym ((toUnit T ≫ a) * x).left z J * (val Q.sym (toUnit T ≫ a).left z J)⁻¹)
    (hc : ∀ (T : Over S) (x y u : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → Q.L.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good Q.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        cubV P.c z J' x y u = cubV Q.c z J x y ((toUnit T ≫ a) * u) * (cubV Q.c z J x y (toUnit T ≫ a))⁻¹)
    {w₁ : LB.Iso P₁.L.L (Q.L.L.pull F)} (h₁ : IsCPMap P₁ Q f F hw w₁) :
    ∃ P₀ : CP G', (∃ w, IsCPMap P₀ P f F hw w) ∧ P₀.L.L = P₁.L.L.pull ((toUnit G' ≫ a') * 𝟙 G').left ∧
      (∀ (T : Over S') (x : T ⟶ G') (z : T.left) (J : (T.left ⟶ G'.left) → P₁.L.L.ι)
        (J' : (T.left ⟶ G'.left) → P₀.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left))) →
        val P₀.sym x.left z J' =
          val P₁.sym ((toUnit T ≫ a') * x).left z J * (val P₁.sym (toUnit T ≫ a').left z J)⁻¹) ∧
      (∀ (T : Over S') (x y u : T ⟶ G') (z : T.left) (J : (T.left ⟶ G'.left) → P₁.L.L.ι)
        (J' : (T.left ⟶ G'.left) → P₀.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left))) →
        cubV P₀.c z J' x y u = cubV P₁.c z J x y ((toUnit T ≫ a') * u) * (cubV P₁.c z J x y (toUnit T ≫ a'))⁻¹) := by
  obtain ⟨⟨L, rg, hL, hrg⟩, c, sy, g₁, g₂, g₃⟩ := P
  dsimp only at hP hs hc
  subst hP
  have hβ : ∀ T : Over S', toBase hw (toUnit T ≫ a') = toUnit (Over.mk (T.hom ≫ f)) ≫ a := fun T =>
    Over.OverMorphism.ext (by
      show ((toUnit T).left ≫ a'.left) ≫ F = (toUnit (Over.mk (T.hom ≫ f))).left ≫ a.left
      rw [Rosenlicht.toUnit_left, Rosenlicht.toUnit_left, Category.assoc, ha, ← Category.assoc]; rfl)
  have hpt : ∀ {T : Over S'} (x : T ⟶ G'), (x.left ≫ F) ≫ ((toUnit G ≫ a) * 𝟙 G).left =
      ((toUnit T ≫ a') * x).left ≫ F := fun {T} x => by
    refine (left_translate a (toBase hw x)).trans ?_
    rw [← hβ, ← h₁.mul]; rfl
  have hτ : ((toUnit G' ≫ a') * 𝟙 G').left ≫ F = F ≫ ((toUnit G ≫ a) * 𝟙 G).left :=
    (hpt (𝟙 G')).symm.trans (congrArg (· ≫ _) (Category.id_comp F))
  obtain ⟨w, hg, hv⟩ := exists_translate hτ w₁ h₁.gen
  obtain ⟨rig, hr, c₀, s₀, k₁, k₂, k₃, H⟩ := exists_isCPMap (hw := hw) ⟨⟨_, rg, hL, hrg⟩, c, sy, g₁, g₂, g₃⟩ h₁.mul _
    (pull_isLB P₁.L.isLB _) w hg
  have main : ∀ (T : Over S') (z : T.left) (J : (T.left ⟶ G'.left) → P₁.L.L.ι), Good P₁.L.L z J →
      (∀ x : T ⟶ G', val s₀ x.left z (fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left)) =
          val P₁.sym ((toUnit T ≫ a') * x).left z J * (val P₁.sym (toUnit T ≫ a').left z J)⁻¹) ∧
      ∀ x y u : T ⟶ G', cubV c₀ z (fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left)) x y u =
        cubV P₁.c z J x y ((toUnit T ≫ a') * u) * (cubV P₁.c z J x y (toUnit T ≫ a'))⁻¹ := by
    intro T z J hJ
    obtain ⟨I, hI⟩ := exists_good_pt Q.L.isLB z
    obtain ⟨W, hW⟩ : ∃ W : (T ⟶ G') → (T.left.presheaf.stalk z)ˣ,
      ∀ x, W x = gw w₁ x.left z (I (x.left ≫ F)) (J x.left) := ⟨_, fun _ => rfl⟩
    obtain ⟨-, a₂, a₃⟩ := h₁.vals T z J I hJ hI W hW
    obtain ⟨b, hb⟩ : ∃ b, b = toUnit T ≫ a' := ⟨_, rfl⟩
    have hbb : b⁻¹ = b := by
      refine inv_eq_of_mul_eq_one_right ?_
      rw [← sq, hb, ← MonObj.comp_pow, h2, MonObj.comp_one]
    obtain ⟨-, b₂, b₃⟩ := H.vals T z (fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left))
      (fun r _ => I (r ≫ ((toUnit G ≫ a) * 𝟙 G).left)) (fun r => mem_pull.2 (hJ (r ≫ _)))
      (fun r => mem_pull.2 (hI (r ≫ _))) (fun x => W (b * x)) (fun x => by
        refine Eq.trans ?_ (hv _ x.left z _ _ (hI ((x.left ≫ F) ≫ _)) (hJ (x.left ≫ _))).symm
        rw [hW, hpt, left_translate, hb])
    rw [← hb]
    refine ⟨fun x => ?_, fun x y u => ?_⟩
    · have e₀ := hs (Over.mk (T.hom ≫ f)) (toBase hw x) z I _ hI (fun _ => HEq.rfl)
      rw [← hβ, ← h₁.mul, ← hb] at e₀
      have e₁ : val Q.sym ((b * x).left ≫ F) z I * (val Q.sym (b.left ≫ F) z I)⁻¹ * W (b * x) =
          W (b * x⁻¹) * val s₀ x.left z (fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left)) :=
        (congrArg (· * W (b * x)) e₀).symm.trans (b₂ x)
      have e₂ := a₂ (b * x)
      have e₃ := a₂ b
      rw [mul_inv, hbb] at e₂
      rw [hbb] at e₃
      apply Additive.ofMul.injective
      have f₁ := congrArg Additive.ofMul e₁
      have f₂ := congrArg Additive.ofMul e₂
      have f₃ := congrArg Additive.ofMul e₃
      simp only [ofMul_mul, ofMul_inv] at f₁ f₂ f₃ ⊢
      linear_combination (norm := abel) f₂ - f₁ - f₃
    · have e₀ := hc (Over.mk (T.hom ≫ f)) (toBase hw x) (toBase hw y) (toBase hw u) z I _ hI (fun _ => HEq.rfl)
      rw [← hβ, ← h₁.mul, ← hb] at e₀
      obtain ⟨C, hC⟩ : ∃ C : (T ⟶ G') → (T.left.presheaf.stalk z)ˣ, ∀ v, C v =
        cubV Q.c (T := Over.mk (T.hom ≫ f)) z I (toBase hw x) (toBase hw y) (toBase hw v) := ⟨_, fun _ => rfl⟩
      have e₁ : C (b * u) * (C b)⁻¹ * W (b * (x * y)) * W (b * (x * u)) * W (b * (y * u)) * W (b * 1) =
          W (b * (x * y * u)) * W (b * x) * W (b * y) * W (b * u) *
            cubV c₀ z (fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left)) x y u := by
        rw [hC, hC]
        exact (congrArg (· * W (b * (x * y)) * W (b * (x * u)) * W (b * (y * u)) * W (b * 1)) e₀).symm.trans (b₃ x y u)
      have e₂ : ∀ v, C v * W (x * y) * W (x * v) * W (y * v) * W 1 =
          W (x * y * v) * W x * W y * W v * cubV P₁.c z J x y v := fun v => by rw [hC]; exact a₃ x y v
      have e₃ := e₂ (b * u)
      have e₄ := e₂ b
      rw [mul_left_comm x b, mul_left_comm y b, mul_left_comm (x * y) b] at e₃
      rw [mul_comm x b, mul_comm y b, mul_comm (x * y) b] at e₄
      rw [_root_.mul_one] at e₁
      apply Additive.ofMul.injective
      have f₁ := congrArg Additive.ofMul e₁
      have f₂ := congrArg Additive.ofMul e₃
      have f₃ := congrArg Additive.ofMul e₄
      simp only [ofMul_mul, ofMul_inv] at f₁ f₂ f₃ ⊢
      linear_combination (norm := abel) f₂ - f₁ - f₃
  refine ⟨⟨⟨_, rig, _, hr⟩, c₀, s₀, k₁, k₂, k₃⟩, ⟨w, H⟩, rfl, fun T x z J J' hJ h => ?_, fun T x y u z J J' hJ h => ?_⟩
  · obtain rfl : J' = fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left) := funext fun r => eq_of_heq (h r)
    exact (main T z J hJ).1 x
  · obtain rfl : J' = fun r _ => J (r ≫ ((toUnit G' ≫ a') * 𝟙 G').left) := funext fun r => eq_of_heq (h r)
    exact (main T z J hJ).2 x y u

theorem exists_section_pullback (f : S' ⟶ S) (a : 𝟙_ (Over S) ⟶ G) (h2 : a ^ 2 = 1) :
    ∃ a' : 𝟙_ (Over S') ⟶ (Over.pullback f).obj G, a'.left ≫ pullback.fst G.hom f = f ≫ a.left ∧ a' ^ 2 = 1 := by
  have h0 : (f ≫ a.left) ≫ G.hom = 𝟙 S' ≫ f := by
    rw [Category.assoc, Over.w a]; simp
  let a' : 𝟙_ (Over S') ⟶ (Over.pullback f).obj G :=
    Over.homMk (pullback.lift (f ≫ a.left) (𝟙 S') h0) (pullback.lift_snd _ _ _)
  have ha : a'.left ≫ pullback.fst G.hom f = f ≫ a.left := pullback.lift_fst _ _ _
  refine ⟨a', ha, ?_⟩
  let β := toBaseHom (toBase_mul_pullback G f) (𝟙_ (Over S'))
  have e : β a' = toUnit _ ≫ a := Over.OverMorphism.ext (by
    refine ha.trans ?_
    rw [Over.comp_left, Rosenlicht.toUnit_left]
    exact congrArg (· ≫ a.left) (Category.id_comp f).symm)
  have e' : β (a' ^ 2) = β 1 := by rw [map_pow, map_one, e, ← MonObj.comp_pow, h2, MonObj.comp_one]
  exact Over.OverMorphism.ext (pullback.hom_ext (congrArg (fun q => q.left) e')
    ((Over.w (a' ^ 2)).trans (Over.w (1 : 𝟙_ (Over S') ⟶ (Over.pullback f).obj G)).symm))

theorem exists_level_translate : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : Unif (maximalIdeal R) D A G) (a : 𝟙_ (Over (Sp R)) ⟶ G), a ^ 2 = 1 →
    ∀ P : GlobalTheory.UU.CP G, P.L.L = U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left →
      (∀ (T : Over (Sp R)) (x : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → U.LG.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good U.LG.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        val P.sym x.left z J' =
          val U.symG ((toUnit T ≫ a) * x).left z J * (val U.symG (toUnit T ≫ a).left z J)⁻¹) →
      (∀ (T : Over (Sp R)) (x y u : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → U.LG.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good U.LG.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        cubV P.c z J' x y u = cubV U.cubG z J x y ((toUnit T ≫ a) * u) * (cubV U.cubG z J x y (toUnit T ≫ a))⁻¹) →
    ∀ P₁ : GlobalTheory.UU.CP (thickObj R (maximalIdeal R) 0 G),
      GlobalTheory.UU.IsLevelCP (maximalIdeal R) 0 P₁ (GlobalTheory.ValueForm.modelCP U.toUnifPre GlobalTheory.firstFiveLaws.1.globalFns) →
    ∃ (a₀ : 𝟙_ (Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (0 + 1))))) ⟶ thickObj R (maximalIdeal R) 0 G)
      (P₀ : GlobalTheory.UU.CP (thickObj R (maximalIdeal R) 0 G)),
      a₀.left ≫ pullback.fst G.hom (thick R (maximalIdeal R) 0) = thick R (maximalIdeal R) 0 ≫ a.left ∧ a₀ ^ 2 = 1 ∧
      GlobalTheory.UU.IsLevelCP (maximalIdeal R) 0 P₀ P ∧
      P₀.L.L = P₁.L.L.pull ((toUnit (thickObj R (maximalIdeal R) 0 G) ≫ a₀) * 𝟙 (thickObj R (maximalIdeal R) 0 G)).left ∧
      (∀ (T : Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (0 + 1))))) (x : T ⟶ thickObj R (maximalIdeal R) 0 G) (z : T.left)
        (J : (T.left ⟶ (thickObj R (maximalIdeal R) 0 G).left) → P₁.L.L.ι)
        (J' : (T.left ⟶ (thickObj R (maximalIdeal R) 0 G).left) → P₀.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit (thickObj R (maximalIdeal R) 0 G) ≫ a₀) * 𝟙 (thickObj R (maximalIdeal R) 0 G)).left))) →
        val P₀.sym x.left z J' =
          val P₁.sym ((toUnit T ≫ a₀) * x).left z J * (val P₁.sym (toUnit T ≫ a₀).left z J)⁻¹) ∧
      (∀ (T : Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (0 + 1))))) (x y u : T ⟶ thickObj R (maximalIdeal R) 0 G) (z : T.left)
        (J : (T.left ⟶ (thickObj R (maximalIdeal R) 0 G).left) → P₁.L.L.ι)
        (J' : (T.left ⟶ (thickObj R (maximalIdeal R) 0 G).left) → P₀.L.L.ι), Good P₁.L.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit (thickObj R (maximalIdeal R) 0 G) ≫ a₀) * 𝟙 (thickObj R (maximalIdeal R) 0 G)).left))) →
        cubV P₀.c z J' x y u = cubV P₁.c z J x y ((toUnit T ≫ a₀) * u) * (cubV P₁.c z J x y (toUnit T ≫ a₀))⁻¹) := by
  intro R _ _ _ D A G _ _ U a h2 P hP hs hc P₁ h₁
  obtain ⟨w₁, h₁⟩ := h₁
  obtain ⟨a₀, ha, h₀⟩ := exists_section_pullback (thick R (maximalIdeal R) 0) a h2
  obtain ⟨P₀, k⟩ := exists_translate_pull _ P P₁ a a₀ ha h₀ hP hs hc h₁
  exact ⟨a₀, P₀, ha, h₀, k⟩

end GlobalTheory.Mum.TranslateLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedCubicalBundleClosedFibreUniformisation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedUniformisationBundleEvenClosedFibreTor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedUniformisationBundleEvenClosedFibreTor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsSplitExtDatumOfSplitTorusExtension\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolOfSecondQuotient\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalTrivTranslateOrderTwo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedCubicalBundleClosedFibreUniformisationStatement\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMemCommonChart\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsCPMapCompCancel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.TransEven
open GlobalTheory.UU



theorem evenOn_translate : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ a : 𝟙_ (Over (Sp R)) ⟶ G, a ^ 2 = 1 →
    ∀ P : GlobalTheory.UU.CP G, P.L.L = U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left →
      (∀ (T : Over (Sp R)) (x : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → U.LG.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good U.LG.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        val P.sym x.left z J' =
          val U.symG ((toUnit T ≫ a) * x).left z J * (val U.symG (toUnit T ≫ a).left z J)⁻¹) →
      (∀ (T : Over (Sp R)) (x y u : T ⟶ G) (z : T.left) (J : (T.left ⟶ G.left) → U.LG.L.ι)
        (J' : (T.left ⟶ G.left) → P.L.L.ι), Good U.LG.L z J →
        (∀ r, HEq (J' r) (fun _ : PUnit.{1} => J (r ≫ ((toUnit G ≫ a) * 𝟙 G).left))) →
        cubV P.c z J' x y u = cubV U.cubG z J x y ((toUnit T ≫ a) * u) * (cubV U.cubG z J x y (toUnit T ≫ a))⁻¹) →
      EvenOn P := by
  intro R _ _ _ hR D A G _ _ hS U a ha P hP hsym hcub
  have hG := GlobalTheory.firstFiveLaws.1.globalFns
  obtain ⟨wA, hwA⟩ := U.ext
  let U' := GlobalTheory.ValueForm.toPreU U.toUnifPre hG hS wA hwA
  set g := U.gt 0 with hg
  have := g.q_hom
  have := g.i_hom
  have := g.q_flat
  have := g.q_surj
  have := g.q_affine
  have hB : IsAbelianScheme (thickObj R (maximalIdeal R) 0 D.toPre.P.A) :=
    GlobalTheory.isAbelianScheme_pullback_obj _ _ D.toPre.P.isAb
  have := hB.comm
  obtain ⟨O, h₁, h₂, h₃, hd⟩ := GlobalTheory.exists_gtDatum_of_splitTorus_extension _ D.toPre.X (thickObj R (maximalIdeal R) 0 G)
    (thickObj R (maximalIdeal R) 0 D.toPre.P.A) hB g.q g.i g.q_hom g.i_hom g.q_flat g.q_surj inferInstance g.isKernel
  obtain ⟨d, hdq, hdi⟩ := hd hB
  let Q : TQ (thickObj R (maximalIdeal R) 0 G) D.toPre.X :=
    { B := thickObj R (maximalIdeal R) 0 D.toPre.P.A
      isAb := hB
      q := g.q
      i := g.i
      q_hom := g.q_hom
      i_hom := g.i_hom
      q_flat := g.q_flat
      q_surj := g.q_surj
      q_affine := g.q_affine
      isKernel := g.isKernel
      loc := by
        have l := (TQ.ofGtDatum d).loc
        rw [show (TQ.ofGtDatum d).q = g.q from hdq, show (TQ.ofGtDatum d).i = g.i from hdi] at l
        exact l }
  obtain ⟨P₀, hlev⟩ := exists_isLevelCP (maximalIdeal R) 0 U'.P
  have hlev' := hlev
  obtain ⟨w₀, h₀⟩ := hlev
  obtain ⟨rig, hr, c, σ, h₁, h₂, h₃, H⟩ := exists_isCPMap U'.P (toBase_mul_pullback G (thick R (maximalIdeal R) 0)) _
    (pull_isLB U'.P.L.isLB _) _ (pullIso_isGen U'.P.L.isLB (pullback.fst G.hom (thick R (maximalIdeal R) 0)))
  obtain ⟨w₁, k₁⟩ := GlobalTheory.ClosedPol.cpMap_congr (Category.id_comp _).symm (Category.id_comp _).symm h₀
    (by rw [Category.id_comp, Category.id_comp]; exact pullback.condition)
  obtain ⟨w₂, k₂, -⟩ := (isCPMap_comp_cancel _ _ _ _ _ _ _ _ _ _ P₀ _ _ _ (𝟙 _) (by simp) _ H).2
    (toBase_mul_of_isMonHom (𝟙 _) _) w₁ k₁
  have H' := GlobalTheory.ClosedPol.isCPMap_w hG U' 0 H
  obtain ⟨w₃, -, k₃⟩ := H'.exists_comp k₂ (by rw [Category.id_comp, Category.id_comp]; exact Over.w (U'.gt 0).pG)
  obtain ⟨M, wM, hM⟩ := exists_isLevelCP (maximalIdeal R) 0 (CP.ofDegPre hG D.toPre)
  obtain ⟨w₄, k₄⟩ := GlobalTheory.ClosedPol.cpMap_congr rfl (Category.id_comp _) k₃
    (by rw [Category.assoc, pullback.condition, Category.id_comp]; simpa using Over.w (U'.gt 0).pG)
  obtain ⟨w₅, k₅, -⟩ := (isCPMap_comp_cancel _ _ _ _ _ _ _ _ _ M P₀ _ _ _ g.q.left
    ((Over.w g.q).trans (Category.comp_id _).symm) _ hM).2
    (toBase_mul_of_isMonHom g.q _) w₄ k₄
  have De : Q.Desc P₀ := ⟨M, w₅, k₅⟩
  obtain ⟨a₀, P', -, ha₀, hl', hL', hs', hc'⟩ := GlobalTheory.Mum.TranslateLevel.exists_level_translate R D A G U a ha P hP hsym hcub P₀ hlev'
  obtain ⟨σ', hσ'⟩ := _root_.GlobalTheory.TranslateEvenTriv.exists_even_cubTriv _ _ D.toPre.X Q P₀ ⟨De⟩ a₀ ha₀ P' hL' hs' hc'
  exact ⟨D.toPre.X, inferInstance, inferInstance, inferInstance, Q, P', hl', σ', hσ'⟩

end GlobalTheory.Mum.TransEven
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedUniformisationBundleEvenClosedFibreTor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalSymmetricBundleTranslateOrderTw =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalSymmetricBundleTranslateOrderTw", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorLineBundlePullbackSpecLocalRing\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateCubicalSymmetricLineBundleTwoTors\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslatedUniformisationBundleEvenClosedFibreTor\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SurjectiveCubeBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumTwistCP

theorem exists_cp_transl : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ a : 𝟙_ (Over (Sp R)) ⟶ G, a ^ 2 = 1 → ∃ P : GlobalTheory.UU.CP G, LBIso P.L.L (U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left) ∧ EvenOn P := by
  intro R _ _ _ hR D A G _ _ hG U a ha
  obtain ⟨hL, -, -, -, -⟩ := GlobalTheory.firstFiveLaws
  let M := GlobalTheory.ValueForm.modelCP U.toUnifPre hL.globalFns
  obtain ⟨ρ, hρ⟩ := _root_.GlobalTheory.LocalPullGen.main R G.left M.L.L M.L.isLB a.left
  obtain ⟨P, hPL, h2, h3⟩ := _root_.GlobalTheory.TranslCP.exists_transl (Sp R) G M a ha ρ hρ
  refine ⟨P, ?_, _root_.GlobalTheory.Mum.TransEven.evenOn_translate R hR D A G hG U a ha P hPL h2 h3⟩
  rw [hPL]
  exact GlobalTheory.PolBaseChange.lbIso_refl (pull_isLB U.LG.isLB _)

end GlobalTheory.MumTwistCP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalSymmetricBundleTranslateOrderTw =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrincipalPolarisationGenericFibreTwoTorsio =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrincipalPolarisationGenericFibreTwoTorsio", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsPullbackSectionNonzeroLocus\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelTrivialRigidTranslateLineBundle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleRigidTranslateLineBundleRationalPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.TwistAV

open GlobalTheory.CechPic (cls pull)

section

variable {R : Type} [CommRing R] [IsDomain R] {G : Over (Sp R)} [GrpObj G]

def genSec (a : 𝟙_ (Over (Sp R)) ⟶ G) : 𝟙_ (Over (Sp (FractionRing R))) ⟶ (Over.pullback (jK R)).obj G :=
  Over.homMk (pullback.lift (jK R ≫ a.left) (𝟙 _) (by
    rw [Category.assoc, Over.w a]; simp)) (pullback.lift_snd _ _ _)

theorem genSec_fst (a : 𝟙_ (Over (Sp R)) ⟶ G) :
    (genSec a).left ≫ pullback.fst G.hom (jK R) = jK R ≫ a.left :=
  pullback.lift_fst _ _ _

theorem const_fst (a : 𝟙_ (Over (Sp R)) ⟶ G) :
    (toUnit ((Over.pullback (jK R)).obj G) ≫ genSec a).left ≫ pullback.fst G.hom (jK R) =
      pullback.fst G.hom (jK R) ≫ G.hom ≫ a.left := by
  rw [Over.comp_left, Category.assoc, genSec_fst, ← Category.assoc (pullback.fst G.hom (jK R)), pullback.condition]
  rfl

theorem hom_ext_gen {T : Over (Sp (FractionRing R))} {x y : T ⟶ (Over.pullback (jK R)).obj G}
    (h : x.left ≫ pullback.fst G.hom (jK R) = y.left ≫ pullback.fst G.hom (jK R)) : x = y :=
  Over.OverMorphism.ext ((isGrpPullback_pullback G (jK R)).1.hom_ext h (by
    show x.left ≫ ((Over.pullback (jK R)).obj G).hom = y.left ≫ ((Over.pullback (jK R)).obj G).hom
    rw [Over.w, Over.w]))

theorem genSec_sq (a : 𝟙_ (Over (Sp R)) ⟶ G) (ha : a ^ 2 = 1) : genSec a * genSec a = 1 := by
  have hp := (isGrpPullback_pullback G (jK R)).2
  let T : Over (Sp (FractionRing R)) := 𝟙_ _
  let x₀ : Over.mk (T.hom ≫ jK R) ⟶ G := toUnit _ ≫ a
  have hx : x₀.left = (genSec a).left ≫ pullback.fst G.hom (jK R) := by
    rw [genSec_fst]; rfl
  have e := hp T (genSec a) (genSec a) x₀ x₀ hx hx
  have haa : x₀ * x₀ = toUnit _ ≫ η[G] := by
    rw [← MonObj.comp_mul, ← sq, ha, Hom.one_def, ← Category.assoc, comp_toUnit]
  set c := genSec a * genSec a with hc
  let y₀ : Over.mk (T.hom ≫ jK R) ⟶ G := toUnit _ ≫ η[G]
  have hy : y₀.left = c.left ≫ pullback.fst G.hom (jK R) := by rw [show y₀ = x₀ * x₀ from haa.symm, e]
  have e₂ := hp T c c y₀ y₀ hy hy
  have hyy : y₀ * y₀ = y₀ := by
    rw [show y₀ = 1 from Hom.one_def.symm, _root_.one_mul]
  have hcc : c * c = c := hom_ext_gen (by rw [← e₂, hyy, hy])
  exact mul_eq_left.1 hcc

theorem transl_fst [IsCommMonObj G] (a : 𝟙_ (Over (Sp R)) ⟶ G) :
    (GlobalTheory.PolTranslate.transl (genSec a)).left ≫ pullback.fst G.hom (jK R) =
      pullback.fst G.hom (jK R) ≫ ((toUnit G ≫ a) * 𝟙 G).left := by
  have hp := (isGrpPullback_pullback G (jK R)).2
  let GK := (Over.pullback (jK R)).obj G
  let p : Over.mk (GK.hom ≫ jK R) ⟶ G := Over.homMk (pullback.fst G.hom (jK R)) pullback.condition
  have e := hp GK (𝟙 GK) (toUnit GK ≫ genSec a) p (p ≫ toUnit G ≫ a) (by simp [p])
    (by rw [const_fst]; rfl)
  have e' : p * (p ≫ toUnit G ≫ a) = p ≫ ((toUnit G ≫ a) * 𝟙 G) := by
    rw [MonObj.comp_mul, Category.comp_id, _root_.mul_comm]
  rw [e', Over.comp_left] at e
  exact e.symm

end

theorem exists_translate_pol : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ a : 𝟙_ (Over (Sp R)) ⟶ G, a ^ 2 = 1 → ∀ P : GlobalTheory.UU.CP G, LBIso P.L.L (U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left) → ∃ (A₂ : PolAV (Sp (FractionRing R))) (gen₂ : (Over.pullback (jK R)).obj G ≅ A₂.A), IsMonHom gen₂.hom ∧ LBIso (A₂.L.pull gen₂.hom.left) (P.L.L.pull (pullback.fst G.hom (jK R))) := by
  intro R _ _ _ _ D A G _ _ _ U a ha P hP
  haveI := U.gen_hom
  haveI := A.isAb.comm
  haveI : IsProper A.A.hom := A.isAb.proper
  let b := genSec a
  let a' : 𝟙_ (Over (Sp (FractionRing R))) ⟶ A.A := b ≫ U.gen.hom
  have ha' : a' * a' = 1 := by
    show (b ≫ U.gen.hom) * (b ≫ U.gen.hom) = 1
    rw [← MonObj.mul_comp, genSec_sq a ha, Hom.one_def, Category.assoc, IsMonHom.one_hom, ← Hom.one_def]
  let A₂ : PolAV (Sp (FractionRing R)) :=
    { A := A.A
      isAb := A.isAb
      g := A.g
      smoothDim := A.smoothDim
      L := GlobalTheory.RigidTranslate.rigTransl A.L a'
      isLB := LB.isLB_linComb A.isLB _ _
      rigid := GlobalTheory.RigidTranslate.rigidified_rigTransl A.isLB
      sym := GlobalTheory.RigidTranslate.sym_rigTransl ha' A.isLB A.sym
      ample := GlobalTheory.RigidTranslate.relAmple_rigTransl_of_section a' A.isLB A.ample
      ktriv := GlobalTheory.RigidTranslate.kTriv_rigTransl_any _ _ _ A.isLB a' A.ktriv }
  refine ⟨A₂, U.gen, U.gen_hom, ?_⟩
  let f := pullback.fst G.hom (jK R)
  let τ := ((toUnit G ≫ a) * 𝟙 G).left
  have hLG := U.LG.isLB
  have hext : pull U.gen.hom.left (cls A.L A.isLB) = pull f (cls U.LG.L hLG) :=
    (GlobalTheory.CechPic.cls_eq_iff (pull_isLB A.isLB _) (pull_isLB hLG _)).2 U.ext
  have hP' : cls P.L.L P.L.isLB = pull τ (cls U.LG.L hLG) :=
    (GlobalTheory.CechPic.cls_eq_iff P.L.isLB (pull_isLB hLG _)).2 hP
  have hrig : pull (eSec G) (cls P.L.L P.L.isLB) = 0 :=
    (GlobalTheory.CechPic.cls_eq_zero_iff (pull_isLB P.L.isLB _)).2 ⟨P.L.rig, P.L.rigGen⟩
  have ea : a.left = eSec G ≫ τ := by
    show a.left = (η[G] ≫ ((toUnit G ≫ a) * 𝟙 G)).left
    have h1 : (η[G] : 𝟙_ (Over (Sp R)) ⟶ G) = 1 := by rw [Hom.one_def, toUnit_unit, Category.id_comp]
    rw [MonObj.comp_mul, ← Category.assoc, toUnit_unique (η[G] ≫ toUnit G) (𝟙 _), Category.id_comp, Category.comp_id,
      h1, _root_.mul_one]
  have hgt : U.gen.hom.left ≫ (GlobalTheory.PolTranslate.transl a').left =
      (GlobalTheory.PolTranslate.transl b).left ≫ U.gen.hom.left := by
    rw [← Over.comp_left, ← Over.comp_left, GlobalTheory.PolTranslate.comp_transl, GlobalTheory.PolTranslate.transl, MonObj.mul_comp,
      Category.id_comp]
    rfl
  have hgc : U.gen.hom.left ≫ (toUnit A.A ≫ a').left = (toUnit _ ≫ b).left ≫ U.gen.hom.left := by
    rw [GlobalTheory.RigidTranslate.comp_const, ← Over.comp_left]
    rfl
  have h₁ := pull_isLB (LB.isLB_linComb A.isLB (K := Fin 2)
    ![(GlobalTheory.PolTranslate.transl a').left, (toUnit A.A ≫ a').left] ![1, -1]) U.gen.hom.left
  refine (GlobalTheory.CechPic.cls_eq_iff h₁ (pull_isLB P.L.isLB _)).1 ?_
  rw [GlobalTheory.CechPic.cls_pull _ _ h₁, GlobalTheory.CechPic.cls_linComb A.isLB, GlobalTheory.CechPic.cls_pull P.L.isLB]
  · rw [Fin.sum_univ_two]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, one_smul, neg_smul, ← sub_eq_add_neg, map_sub]
    rw [← GlobalTheory.CechPic.pull_comp, ← GlobalTheory.CechPic.pull_comp, hgt, hgc, GlobalTheory.CechPic.pull_comp, GlobalTheory.CechPic.pull_comp, hext,
      ← GlobalTheory.CechPic.pull_comp, ← GlobalTheory.CechPic.pull_comp, transl_fst a, const_fst a, GlobalTheory.CechPic.pull_comp,
      GlobalTheory.CechPic.pull_comp f, GlobalTheory.CechPic.pull_comp, ea, GlobalTheory.CechPic.pull_comp, ← hP', hrig, map_zero, map_zero, sub_zero]
  · exact LB.isLB_linComb A.isLB _ _

end GlobalTheory.TwistAV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrincipalPolarisationGenericFibreTwoTorsio =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedD =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedD", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEvenCubicalSymmetricBundleTranslateOrderTw\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionTranslateRefinementStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrincipalPolarisationGenericFibreTwoTorsio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumTwist

theorem exists_twist : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D₀ D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, SamePol D₀.toPre D.toPre → ∃ (a : 𝟙_ (Over (Sp R)) ⟶ G) (P : GlobalTheory.UU.CP G) (A₂ : PolAV (Sp (FractionRing R))) (gen₂ : (Over.pullback (jK R)).obj G ≅ A₂.A), a ^ 2 = 1 ∧ LBIso P.L.L (U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left) ∧ EvenOn P ∧ IsMonHom gen₂.hom ∧ LBIso (A₂.L.pull gen₂.hom.left) (P.L.L.pull (pullback.fst G.hom (jK R))) ∧ ∀ (D₂ : DegData R (maximalIdeal R)) (U₂ : Unif (maximalIdeal R) D₂ A₂ G), U₂.LG = P.L → ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R') (D₁ : DegData R' (maximalIdeal R')), FinExt ρ ∧ IsLocalHom ρ ∧ Nonempty (IsPullDeg ρ D₀.toPre D₁.toPre) ∧ ∀ D' : DegData R' (maximalIdeal R'), Nonempty (IsPullDeg ρ D₂.toPre D'.toPre) → Nonempty (IsPullDeg (RingHom.id R') D₁.toPre D'.toPre) := by
  intro R _ _ _ hR D₀ D A G _ _ hG U hS
  obtain ⟨a, ha, hcmp⟩ := _root_.GlobalTheory.TwistSec.exists_sec_compare R hR D₀ D A G hG U hS
  obtain ⟨P, hP, hE⟩ := _root_.GlobalTheory.MumTwistCP.exists_cp_transl R hR D A G hG U a ha
  obtain ⟨A₂, gen₂, hm, hl⟩ := _root_.GlobalTheory.TwistAV.exists_translate_pol R hR D A G hG U a ha P hP
  refine ⟨a, P, A₂, gen₂, ha, hP, hE, hm, hl, fun D₂ U₂ hU => ?_⟩
  exact hcmp A₂ D₂ U₂ (by rw [hU]; exact hP)

end GlobalTheory.MumTwist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedD =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedDStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedDStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.exists_orderTwo_section_evenTranslate_samePolarisedData : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D₀ D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, SamePol D₀.toPre D.toPre → ∃ (a : 𝟙_ (Over (Sp R)) ⟶ G) (P : GlobalTheory.UU.CP G) (A₂ : PolAV (Sp (FractionRing R))) (gen₂ : (Over.pullback (jK R)).obj G ≅ A₂.A), a ^ 2 = 1 ∧ LBIso P.L.L (U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left) ∧ EvenOn P ∧ IsMonHom gen₂.hom ∧ LBIso (A₂.L.pull gen₂.hom.left) (P.L.L.pull (pullback.fst G.hom (jK R))) ∧ ∀ (D₂ : DegData R (maximalIdeal R)) (U₂ : Unif (maximalIdeal R) D₂ A₂ G), U₂.LG = P.L → ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R') (D₁ : DegData R' (maximalIdeal R')), FinExt ρ ∧ IsLocalHom ρ ∧ Nonempty (IsPullDeg ρ D₀.toPre D₁.toPre) ∧ ∀ D' : DegData R' (maximalIdeal R'), Nonempty (IsPullDeg ρ D₂.toPre D'.toPre) → Nonempty (IsPullDeg (RingHom.id R') D₁.toPre D'.toPre) := by
  first | exact @GlobalTheory.MumTwist.exists_twist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedDStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleOfTranslate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordBundlePullbackGrpPullbackStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOrderTwoSectionEvenTranslateSamePolarisedDStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationCompleteLocalEvenOnTorusStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem samePol_unif_finExt : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D₀ : DegData R (maximalIdeal R)), ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, SamePol D₀.toPre D.toPre → ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R') (D₁ : DegData R' (maximalIdeal R')) (G₁ : Over (Sp R')) (_ : GrpObj G₁) (_ : IsCommMonObj G₁) (β : G₁.left ⟶ G.left) (β₂ : (G2 G₁).left ⟶ (G2 G).left) (A₁ : PolAV (Sp (FractionRing R'))) (U₁ : Unif (maximalIdeal R') D₁ A₁ G₁), FinExt ρ ∧ Nonempty (IsPullDeg ρ D₀.toPre D₁.toPre) ∧ IsGrpPullback G₁ G (spMap ρ) β ∧ Geo.Tor.IsSquare β β₂ ∧ LBIso (abelian₂ G₁ U₁.LG.L) ((abelian₂ G U.LG.L).pull β₂) := by
  intro R _ _ _ hR D₀ D A G _ _ hG U hS
  have := hR.2
  obtain ⟨a, P, A₂, gen₂, -, hPa, hEv, hgen, hgenL, hcmp⟩ := GlobalTheory.T.exists_orderTwo_section_evenTranslate_samePolarisedData R hR D₀ D A G hG U hS
  obtain ⟨D₂, U₂, hLG, -⟩ := GlobalTheory.T.exists_uniformisation_completeLocal_evenOnTorus R hR G P hG hEv A₂ gen₂ hgen hgenL
  obtain ⟨R', _, _, _, ρ, D₁, hfin, hloc, ⟨hD₀⟩, hmove⟩ := hcmp D₂ U₂ hLG
  obtain ⟨hL, -, -, h4, h5⟩ := GlobalTheory.firstFiveLaws
  obtain ⟨D', hD', A', U', hP⟩ := GlobalTheory.UT.EndBaseChange.exists_pull hL.polBaseChange h4.unifBaseChange h5.psiOnExists
    hR.1 hfin.1 ρ hfin.2.1 (map_maximalIdeal_le ρ) hG U₂
  obtain ⟨hiso⟩ := hmove D' ⟨hD'⟩
  have hG₁ : IsSemiAbelian ((Over.pullback (specOf ρ)).obj G) := IsSemiAbelian.pullback _ G hG
  obtain ⟨U₁, hU₁, -⟩ := (_root_.GlobalTheory.Mum.UnifMove.unif_move R' (maximalIdeal R') hfin.1 D₁ D' ⟨hiso⟩ A' _ hG₁).1 U'
  have hb : (Iso.refl ((Over.pullback (specOf ρ)).obj G)).hom.left ≫ pullback.fst G.hom (specOf ρ) =
      pullback.fst G.hom (specOf ρ) := Category.id_comp _
  have hpb : IsGrpPullback ((Over.pullback (specOf ρ)).obj G) G (spMap ρ)
      ((Iso.refl ((Over.pullback (specOf ρ)).obj G)).hom.left ≫ pullback.fst G.hom (specOf ρ)) := by
    refine (isGrpPullback_pullback G (spMap ρ)).congr ?_ hb.symm
    rfl
  obtain ⟨β₂, hsq, hlam⟩ := GlobalTheory.T.exists_mumfordBundle_pullback_grpPullback (Sp R) (Sp R') (spMap ρ) G _ _ hpb
  have hLU : (abelian₂ G U.LG.L).IsLB := DVR.linComb_isLB _ U.LG.isLB _ _
  have h2 : LBIso (abelian₂ G U₂.LG.L) (abelian₂ G U.LG.L) := by
    rw [hLG]
    exact _root_.GlobalTheory.Mum.lam_transl_iso (Sp R) G U.LG U.cubG a P.L.L P.L.isLB hPa
  have h3 : LBIso (abelian₂ G U₂.LG.L) ((abelian₂ G U.LG.L).pull (𝟙 _)) :=
    LBIso.trans (DVR.linComb_isLB _ U₂.LG.isLB _ _) hLU (pull_isLB hLU _) h2
      ⟨GlobalTheory.PolDeg.Wit.idPull _, GlobalTheory.PolDeg.Wit.idPull_isGen hLU⟩
  have h4' := hlam U₂.LG.L U'.LG.L _ (abelian₂ G U.LG.L) (𝟙 _) U₂.LG.isLB U'.LG.isLB hLU
    ⟨hP.lg.choose, hP.lg.choose_spec.1⟩ h3
  rw [Category.comp_id] at h4'
  refine ⟨R', inferInstance, inferInstance, inferInstance, ρ, D₁, _, inferInstance, inferInstance, _, β₂, A', U₁, hfin,
    ⟨hD₀⟩, hpb, hsq, ?_⟩
  rw [hU₁]
  exact h4'

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtensionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtensionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.samePolarisedData_uniformise_finite_extension : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D₀ : DegData R (maximalIdeal R)), ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, SamePol D₀.toPre D.toPre → ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : IsLocalRing R') (ρ : R →+* R') (D₁ : DegData R' (maximalIdeal R')) (G₁ : Over (Sp R')) (_ : GrpObj G₁) (_ : IsCommMonObj G₁) (β : G₁.left ⟶ G.left) (β₂ : (G2 G₁).left ⟶ (G2 G).left) (A₁ : PolAV (Sp (FractionRing R'))) (U₁ : Unif (maximalIdeal R') D₁ A₁ G₁), FinExt ρ ∧ Nonempty (IsPullDeg ρ D₀.toPre D₁.toPre) ∧ IsGrpPullback G₁ G (spMap ρ) β ∧ Geo.Tor.IsSquare β β₂ ∧ LBIso (abelian₂ G₁ U₁.LG.L) ((abelian₂ G U.LG.L).pull β₂) := by
  first | exact @GlobalTheory.Mum.samePol_unif_finExt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtensionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdempotentFactorUniformisedGroupsBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataOfIdempotentFactorUniformisatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.FactorIdent

theorem squareGroup_hom_ext_projections {S : Scheme.{0}} (H : Over S) {X : Scheme.{0}} (a b : X ⟶ (G2 H).left)
    (h1 : a ≫ (fst H H).left = b ≫ (fst H H).left) (h2 : a ≫ (snd H H).left = b ≫ (snd H H).left) : a = b :=
  pullback.hom_ext h1 h2

theorem samePol_pull : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) (F : Factor D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R))) (G' : Over (Sp R)) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R) D' A' G') (oA : A'.OAct F.O) (oG : RingAct G' F.O), U'.toUnifPre.OLinear F.O F.o oA oG → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (inc : G ⟶ G') (pr : G' ⟶ G), IsMonHom inc → IsMonHom pr → inc ≫ pr = 𝟙 G → pr ≫ inc = oG.act F.e → ∀ (R₉ : Type) [CommRing R₉] [IsDomain R₉] [IsLocalRing R₉] (ρ₉ : R →+* R₉) (G₉ : Over (Sp R₉)) [GrpObj G₉] [IsCommMonObj G₉] (β₉ : G₉.left ⟶ G.left) (β₉₂ : (G2 G₉).left ⟶ (G2 G).left) (P₉ : GlobalTheory.UU.CP G₉), FinExt ρ₉ → IsGrpPullback G₉ G (spMap ρ₉) β₉ → Geo.Tor.IsSquare β₉ β₉₂ → IsSemiAbelian G₉ → LBIso (abelian₂ G₉ P₉.L.L) ((abelian₂ G' U'.LG.L).pull (β₉₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) → ∀ (A₉ : PolAV (Sp (FractionRing R₉))) (D₉' : DegData R₉ (maximalIdeal R₉)) (U₉ : Unif (maximalIdeal R₉) D₉' A₉ G₉), U₉.LG = P₉.L → ∃ D₉ : DegData R₉ (maximalIdeal R₉), Nonempty (IsPullDeg ρ₉ D.toPre D₉.toPre) ∧ SamePol D₉.toPre D₉'.toPre := by
  intro R _ _ _ hB D D' F A' G' _ _ hG' U' oA oG hlin G _ _ hG inc pr hinc hpr hip hpi R₉ _ _ _ ρ₉ G₉ _ _ β₉ β₉₂ P₉
    hfin hpb₉ hsq₉ hsa₉ hlam₉ A₉ D₉' U₉ hLG
  obtain ⟨hadm, hinj, hfinite⟩ := hfin
  haveI : CharZero R := hB.2
  have hloc : IsLocalHom ρ₉ := RingHom.IsIntegral.isLocalHom (RingHom.IsIntegral.of_finite hfinite) hinj
  have hB₉ : Base R₉ := ⟨hadm, charZero_of_injective_ringHom hinj⟩
  obtain ⟨D₁, D₁', F₁, A₁', G₁', _, _, U₁', oA₁, oG₁, G₁, _, _, β, β₂, inc₁, pr₁, hpd, hsa₁', hlin₁, hsa₁, hinc₁, hpr₁,
      hip₁, hpi₁, hpb₁, hsq₁, hlb₁⟩ :=
    _root_.GlobalTheory.FactorPull.factor_baseChange R hB.1 D D' F A' G' hG' U' oA oG hlin G hG inc pr hinc hpr hip hpi R₉ ρ₉ hadm hinj hloc
  obtain ⟨e, he, hβ⟩ := grpPullback_iso hpb₉ hpb₁
  have hei : IsMonHom e.inv := inferInstance
  let m : G2 G₉ ⟶ G2 G₁ := lift (fst G₉ G₉ ≫ e.hom) (snd G₉ G₉ ≫ e.hom)
  have hm : β₉₂ = m.left ≫ β₂ := by
    apply squareGroup_hom_ext_projections G
    · rw [hsq₉.1, Category.assoc, hsq₁.1, ← Category.assoc, ← Over.comp_left, lift_fst, Over.comp_left, Category.assoc, hβ]
    · rw [hsq₉.2, Category.assoc, hsq₁.2, ← Category.assoc, ← Over.comp_left, lift_snd, Over.comp_left, Category.assoc, hβ]
  have hℓ : (lift (fst G₉ G₉ ≫ e.hom ≫ inc₁) (snd G₉ G₉ ≫ (e.hom ≫ inc₁) ≫ oG₁.act F₁.f) : G2 G₉ ⟶ G2 G₁').left =
      m.left ≫ (lift (fst G₁ G₁ ≫ inc₁) (snd G₁ G₁ ≫ inc₁ ≫ oG₁.act F₁.f) : G2 G₁ ⟶ G2 G₁').left := by
    rw [← Over.comp_left]
    congr 1
    simp [m]
  have hL' : (abelian₂ G' U'.LG.L).IsLB := LB.isLB_linComb U'.LG.isLB _ _
  have hL₁ : (abelian₂ G₁' U₁'.LG.L).IsLB := LB.isLB_linComb U₁'.LG.isLB _ _
  have h1 : LBIso (abelian₂ G₉ U₉.LG.L) ((abelian₂ G' U'.LG.L).pull
      (β₉₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) := by
    rw [hLG]; exact hlam₉
  have h2 := GlobalTheory.GenSpread.lbIso_pull_pull hL'
    (a := (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left) β₉₂ rfl
  have h3 := GlobalTheory.GenSpread.lbIso_pull_comp m.left hℓ hm hlb₁
  have hLam : LBIso (abelian₂ G₉ U₉.LG.L) ((abelian₂ G₁' U₁'.LG.L).pull
      (lift (fst G₉ G₉ ≫ e.hom ≫ inc₁) (snd G₉ G₉ ≫ (e.hom ≫ inc₁) ≫ oG₁.act F₁.f) : G2 G₉ ⟶ G2 G₁').left) :=
    LBIso.trans (LB.isLB_linComb U₉.LG.isLB _ _) (pull_isLB (pull_isLB hL' _) _) (pull_isLB hL₁ _)
      (LBIso.trans (LB.isLB_linComb U₉.LG.isLB _ _) (pull_isLB hL' _) (pull_isLB (pull_isLB hL' _) _) h1 h2)
      (LBIso.symm h3)
  have hsame : SamePol D₁.toPre D₉'.toPre :=
    _root_.GlobalTheory.Mum.FactorPol.samePol_of_unif_factor R₉ hB₉ D₁ D₁' F₁ A₁' G₁' hsa₁' U₁' oA₁ oG₁ hlin₁ G₉ hsa₉ (e.hom ≫ inc₁) (pr₁ ≫ e.inv)
      inferInstance inferInstance
      (by rw [Category.assoc, ← Category.assoc inc₁, hip₁, Category.id_comp, Iso.hom_inv_id])
      (by rw [Category.assoc, ← Category.assoc e.inv, Iso.inv_hom_id, Category.id_comp, hpi₁]) D₉' A₉ U₉ hLam
  exact ⟨D₁, hpd, hsame⟩

end GlobalTheory.Mum.FactorIdent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.uniformisation_pulledBackFactor_samePolarisation : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) (F : Factor D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R))) (G' : Over (Sp R)) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R) D' A' G') (oA : A'.OAct F.O) (oG : RingAct G' F.O), U'.toUnifPre.OLinear F.O F.o oA oG → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (inc : G ⟶ G') (pr : G' ⟶ G), IsMonHom inc → IsMonHom pr → inc ≫ pr = 𝟙 G → pr ≫ inc = oG.act F.e → ∀ (R₉ : Type) [CommRing R₉] [IsDomain R₉] [IsLocalRing R₉] (ρ₉ : R →+* R₉) (G₉ : Over (Sp R₉)) [GrpObj G₉] [IsCommMonObj G₉] (β₉ : G₉.left ⟶ G.left) (β₉₂ : (G2 G₉).left ⟶ (G2 G).left) (P₉ : GlobalTheory.UU.CP G₉), FinExt ρ₉ → IsGrpPullback G₉ G (spMap ρ₉) β₉ → Geo.Tor.IsSquare β₉ β₉₂ → IsSemiAbelian G₉ → LBIso (abelian₂ G₉ P₉.L.L) ((abelian₂ G' U'.LG.L).pull (β₉₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) → ∀ (A₉ : PolAV (Sp (FractionRing R₉))) (D₉' : DegData R₉ (maximalIdeal R₉)) (U₉ : Unif (maximalIdeal R₉) D₉' A₉ G₉), U₉.LG = P₉.L → ∃ D₉ : DegData R₉ (maximalIdeal R₉), Nonempty (IsPullDeg ρ₉ D.toPre D₉.toPre) ∧ SamePol D₉.toPre D₉'.toPre := by
  first | exact @GlobalTheory.Mum.FactorIdent.samePol_pull
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformizationBaseChangeCompleteDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformizationBaseChangeCompleteDvr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegUniqueAndComp\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TraceFormTwistIsoOfPullback\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SixthLawsAndUnifUniq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsIsoPairOfEq\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum


open GlobalTheory.ArcPull GlobalTheory.PullLinear in
theorem isPullDeg_of_trait_unif : ∀ (R₀ : Type) [CommRing R₀] [IsDomain R₀] [IsLocalRing R₀], AdmBase R₀ (maximalIdeal R₀) → ∀ (D₀ : DegData R₀ (maximalIdeal R₀)) (A₀ : PolAV (Sp (FractionRing R₀))) (G₀ : Over (Sp R₀)) [GrpObj G₀] [IsCommMonObj G₀], IsSemiAbelian G₀ → ∀ (U₀ : Unif (maximalIdeal R₀) D₀ A₀ G₀) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W], GlobalTheory.LN.CDvr W → ∀ (φ : R₀ →+* W), Function.Injective φ → IsLocalHom φ → ∀ (GW : Over (Sp W)) [GrpObj GW] [IsCommMonObj GW] (β : GW.left ⟶ G₀.left) (DW : DegData W (maximalIdeal W)) (AW : PolAV (Sp (FractionRing W))) (UW : Unif (maximalIdeal W) DW AW GW), IsGrpPullback GW G₀ (spMap φ) β → LBIso UW.LG.L (U₀.LG.L.pull β) → Nonempty (IsPullDeg φ D₀.toPre DW.toPre) := by
  intro R₀ _ _ _ hR D₀ A₀ G₀ _ _ hG U₀ W _ _ _ hW φ hφ hloc GW _ _ β DW AW UW hβ hLβ
  obtain ⟨hL1, -, -, h4, h5⟩ := GlobalTheory.firstFiveLaws
  have := hW.1
  have hW' : AdmBase W (maximalIdeal W) := ⟨inferInstance, inferInstance, inferInstance, hW.2.1⟩
  obtain ⟨bc, mbc, hbc⟩ := grpPullback_iso hβ (isGrpPullback_pullback G₀ (spMap φ))
  have hbc' : bc.hom.left ≫ pullback.fst G₀.hom (specOf φ) = β := hbc
  have hGW : IsSemiAbelian GW := by
    have := mbc
    exact GlobalTheory.isSemiAbelian_of_grpIso bc (IsSemiAbelian.pullback (spMap φ) G₀ hG)

  have sq : spMap (GlobalTheory.ArcPull.fracMap hφ) ≫ jK R₀ = jK W ≫ spMap φ :=
    (GlobalTheory.ArcPull.fracMap_sq hφ).symm.trans (Category.id_comp _)
  obtain ⟨A', gA, pA, dA, mA, tA⟩ := hL1.polBaseChange _ _ (spMap (GlobalTheory.ArcPull.fracMap hφ)) A₀
  have gpA : IsGrpPullback A'.A A₀.A (spMap (GlobalTheory.ArcPull.fracMap hφ)) gA := ⟨pA, fun T x y x₀ y₀ hx hy => by
    have e₁ : x₀ = Out.toBase pA.w x := Over.OverMorphism.ext hx
    have e₂ : y₀ = Out.toBase pA.w y := Over.OverMorphism.ext hy
    rw [e₁, e₂, ← mA]; rfl⟩
  have gpG := GlobalTheory.ThetaBaseChange.grp_generic U₀.toUnifPre
  have gp' : IsGrpPullback ((Over.pullback (jK W)).obj GW) G₀ (spMap (GlobalTheory.ArcPull.fracMap hφ) ≫ jK R₀)
      (pullback.fst GW.hom (jK W) ≫ β) :=
    ((isGrpPullback_pullback GW (jK W)).comp hβ).congr sq.symm rfl
  obtain ⟨eA, mE, heA⟩ := grpPullback_iso gp' (gpA.comp gpG)
  have hgi : U₀.gen.inv.left ≫ U₀.gen.hom.left = 𝟙 _ := by
    rw [← Over.comp_left, Iso.inv_hom_id, Over.id_left]
  have wA : LBIso (A'.L.pull eA.hom.left) (U₀.LG.L.pull (pullback.fst GW.hom (jK W) ≫
      bc.hom.left ≫ pullback.fst G₀.hom (specOf φ))) := by
    refine LBIso.trans (pull_isLB A'.isLB _) (pull_isLB (pull_isLB A₀.isLB gA) eA.hom.left)
      (pull_isLB U₀.LG.isLB _)
      ((LBIso.symm tA).chartPull (ReciprocityTheory.ChartRestriction.G.Geo.Tor.chartPullPull A'.L _ _ rfl) (ReciprocityTheory.ChartRestriction.G.Geo.Tor.chartPullPull (A₀.L.pull gA) _ _ rfl)) ?_
    refine LBIso.chartPull (h := eA.hom.left ≫ gA ≫ U₀.gen.inv.left)
      (chartPullLinComb A₀.L gA (fun _ => eA.hom.left) (fun _ => U₀.gen.hom.left) _ _ fun _ => ?_)
      (chartPullSame U₀.LG.L _ (fun _ => pullback.fst G₀.hom (jK R₀)) _ _ fun _ => ?_) U₀.ext
    · rw [Category.assoc, Category.assoc, hgi, Category.comp_id]
    · rw [hbc', ← heA]; simp only [Category.assoc]

  have he : eSec GW ≫ bc.hom.left ≫ pullback.fst G₀.hom (specOf φ) = specOf φ ≫ eSec G₀ := by
    rw [hbc']; exact (cubeMapOf hβ).e_comm
  obtain ⟨wL, hwL, hm⟩ := GlobalTheory.Unif.RigidifyIso.exists_rigidified_iso _ _ (specOf φ) G₀ GW
    (bc.hom.left ≫ pullback.fst G₀.hom (specOf φ)) he U₀.LG UW.LG (by rw [hbc']; exact hLβ)

  obtain ⟨Wo, hWo, hψ⟩ := h5.psiOnExists R₀ _ hR D₀
  have hgen : (specOf φ).base (genericPoint (Spec (CommRingCat.of W))) ∈ Wo := by
    have : (specOf φ).base (genericPoint (Spec (CommRingCat.of W))) = genericPoint (Spec (CommRingCat.of R₀)) := by
      rw [genericPoint_eq_bot_of_affine, genericPoint_eq_bot_of_affine]
      exact PrimeSpectrum.ext (Ideal.comap_bot_of_injective φ hφ)
    rw [this]; exact hWo

  obtain ⟨D₁, hD₁, U₁, hLG, -, -⟩ := h4.unifBaseChange R₀ W _ _ hR hW' φ (map_maximalIdeal_le φ) D₀ A₀ G₀ hG U₀
    Wo hψ hgen GW bc mbc A' dA eA mE wA UW.LG wL he hwL hm
  obtain ⟨-, w₀, -, g₀, -, m₀, -⟩ := exists_iso_pair_of_eq hLG
  obtain ⟨hDid, -⟩ := GlobalTheory.sixthLaws_and_unifUniq.2 W _ hW' D₁ DW A' AW GW hGW U₁ UW w₀ g₀ m₀
  have h := GlobalTheory.Mum.isPullDeg_unique_and_comp.2 R₀ W W φ (RingHom.id W) hφ Function.injective_id D₀.toPre D₁.toPre
    DW.toPre ⟨hD₁⟩ ⟨hDid⟩
  rwa [RingHom.id_comp] at h

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformizationBaseChangeCompleteDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescent", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationCompleteLocalEvenOnTorusStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinExtCompIsPullDeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SamePolarisedDataUniformiseFiniteExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TqOfGtCoord\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPulledBackFactorSamePolarisationStatement\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissiblePadicIntMaximalIdeal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformizationBaseChangeCompleteDvr\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SiegelFamilyProperExtension\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SiegelStructurePullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.TraitTwist

theorem exists_bundle_data_at_traits : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) (F : Factor D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R))) (G' : Over (Sp R)) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R) D' A' G') (oA : A'.OAct F.O) (oG : RingAct G' F.O), U'.toUnifPre.OLinear F.O F.o oA oG → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (inc : G ⟶ G') (pr : G' ⟶ G), IsMonHom inc → IsMonHom pr → inc ≫ pr = 𝟙 G → pr ≫ inc = oG.act F.e → ∀ (R₉ : Type) [CommRing R₉] [IsDomain R₉] [IsLocalRing R₉] (ρ₉ : R →+* R₉) (G₉ : Over (Sp R₉)) [GrpObj G₉] [IsCommMonObj G₉] (β₉ : G₉.left ⟶ G.left) (β₉₂ : (G2 G₉).left ⟶ (G2 G).left) (P₉ : GlobalTheory.UU.CP G₉) (A₉ : PolAV (Sp (FractionRing R₉))) (gen₉ : (Over.pullback (jK R₉)).obj G₉ ≅ A₉.A), FinExt ρ₉ → IsGrpPullback G₉ G (spMap ρ₉) β₉ → Geo.Tor.IsSquare β₉ β₉₂ → IsSemiAbelian G₉ → LBIso (abelian₂ G₉ P₉.L.L) ((abelian₂ G' U'.LG.L).pull (β₉₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) → EvenOn P₉ → IsMonHom gen₉.hom → LBIso (A₉.L.pull gen₉.hom.left) (P₉.L.L.pull (pullback.fst G₉.hom (jK R₉))) → ∃ (R₀ : Type) (_ : CommRing R₀) (_ : IsDomain R₀) (_ : IsLocalRing R₀) (ρ₀ : R →+* R₀) (D₀ : DegData R₀ (maximalIdeal R₀)) (G₀ : Over (Sp R₀)) (_ : GrpObj G₀) (_ : IsCommMonObj G₀) (β₀ : G₀.left ⟶ G.left) (β₀₂ : (G2 G₀).left ⟶ (G2 G).left) (P : GlobalTheory.UU.CP G₀) (A₀ : PolAV (Sp (FractionRing R₀))) (gen₀ : (Over.pullback (jK R₀)).obj G₀ ≅ A₀.A), FinExt ρ₀ ∧ Nonempty (IsPullDeg ρ₀ D.toPre D₀.toPre) ∧ IsGrpPullback G₀ G (spMap ρ₀) β₀ ∧ Geo.Tor.IsSquare β₀ β₀₂ ∧ IsSemiAbelian G₀ ∧ LBIso (abelian₂ G₀ P.L.L) ((abelian₂ G' U'.LG.L).pull (β₀₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) ∧ EvenOn P ∧ IsMonHom gen₀.hom ∧ LBIso (A₀.L.pull gen₀.hom.left) (P.L.L.pull (pullback.fst G₀.hom (jK R₀))) ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W], GlobalTheory.LN.CDvr W → ∀ (φ : R₀ →+* W), Function.Injective φ → IsLocalHom φ → ∀ (GW : Over (Sp W)) [GrpObj GW] [IsCommMonObj GW] (β : GW.left ⟶ G₀.left) (DW : DegData W (maximalIdeal W)) (AW : PolAV (Sp (FractionRing W))) (UW : Unif (maximalIdeal W) DW AW GW), IsGrpPullback GW G₀ (spMap φ) β → LBIso UW.LG.L (P.L.L.pull β) → Nonempty (IsPullDeg φ D₀.toPre DW.toPre) := by
  intro R _ _ _ hR D D' F A' G' _ _ hG' U' oA oG hlin G _ _ hG inc pr hinc hpr hip hpi R₉ _ _ _ ρ₉ G₉ _ _ β₉ β₉₂ P₉ A₉ gen₉ hfin₉ hpb₉ hsq₉ hG₉ hlam₉ hev₉ hgen₉ hgl₉
  have hR₉ : Base R₉ := ⟨hfin₉.1, by
    haveI := hR.2
    exact charZero_of_injective_ringHom hfin₉.2.1⟩
  obtain ⟨D₉', U₉, hL₉, -⟩ := GlobalTheory.T.exists_uniformisation_completeLocal_evenOnTorus R₉ hR₉ G₉ P₉ hG₉ hev₉ A₉ gen₉ hgen₉ hgl₉
  obtain ⟨D₉, hD₉, hsame⟩ := GlobalTheory.T.uniformisation_pulledBackFactor_samePolarisation R hR D D' F A' G' hG' U' oA oG hlin G hG inc pr hinc hpr hip hpi R₉ ρ₉ G₉ β₉ β₉₂ P₉ hfin₉ hpb₉ hsq₉ hG₉ hlam₉ A₉ D₉' U₉ hL₉
  obtain ⟨R₀, _, _, _, ρ, D₀, G₀, _, _, β, β₂, A₀, U₀, hfin, hD₀, hpb, hsq, hlam⟩ :=
    GlobalTheory.T.samePolarisedData_uniformise_finite_extension R₉ hR₉ D₉ D₉' A₉ G₉ hG₉ U₉ hsame
  have hG₀ : IsSemiAbelian G₀ := GlobalTheory.SiegLoc.TraitOrd.isSemiAbelian_of_isGrpPullback hpb hG₉
  obtain ⟨P, hPL, hPE⟩ := GlobalTheory.Mum.unif_evenOn R₀ hfin.1 D₀ A₀ G₀ hG₀ U₀
  obtain ⟨hfin', hD'⟩ := GlobalTheory.Mum.FinExtComp.finExt_comp_isPullDeg R R₉ R₀ ρ₉ ρ D.toPre D₉.toPre D₀.toPre hfin₉ hfin hD₉ hD₀
  have hsp : spMap (ρ.comp ρ₉) = spMap ρ ≫ spMap ρ₉ := by
    simp only [spMap]
    rw [← Spec.map_comp]
    rfl
  refine ⟨R₀, inferInstance, inferInstance, inferInstance, ρ.comp ρ₉, D₀, G₀, inferInstance, inferInstance, β ≫ β₉, β₂ ≫ β₉₂, P, A₀, U₀.gen,
    hfin', hD', ?_, GlobalTheory.ZM.SiegPull.isSquare_comp hsq hsq₉, hG₀, ?_, hPE, U₀.gen_hom, ?_, ?_⟩
  · rw [hsp]; exact IsGrpPullback.comp hpb hpb₉
  · rw [hPL]
    rw [← hL₉] at hlam₉
    have i₁ : (abelian₂ G₀ U₀.LG.L).IsLB := LB.isLB_linComb U₀.LG.isLB _ _
    have i₂ : ((abelian₂ G₉ U₉.LG.L).pull β₂).IsLB := pull_isLB (LB.isLB_linComb U₉.LG.isLB _ _) _
    have i₃ : ((abelian₂ G' U'.LG.L).pull ((β₂ ≫ β₉₂) ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)).IsLB :=
      pull_isLB (LB.isLB_linComb U'.LG.isLB _ _) _
    exact LBIso.trans i₁ i₂ i₃ hlam (GlobalTheory.GenSpread.lbIso_pull_of_lbIso hlam₉ β₂ (Category.assoc _ _ _))
  · rw [hPL]; exact U₀.ext
  · intro W _ _ _ hW φ hφ hloc GW _ _ βW DW AW UW hpbW hLW
    rw [hPL] at hLW
    exact _root_.GlobalTheory.Mum.isPullDeg_of_trait_unif R₀ hfin.1 D₀ A₀ G₀ hG₀ U₀ W hW φ hφ hloc GW βW DW AW UW hpbW hLW

end GlobalTheory.Mum.TraitTwist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescentStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescentStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.semiabelian_uniformization_linear_action_descent : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) (F : Factor D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R))) (G' : Over (Sp R)) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R) D' A' G') (oA : A'.OAct F.O) (oG : RingAct G' F.O), U'.toUnifPre.OLinear F.O F.o oA oG → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (inc : G ⟶ G') (pr : G' ⟶ G), IsMonHom inc → IsMonHom pr → inc ≫ pr = 𝟙 G → pr ≫ inc = oG.act F.e → ∀ (R₉ : Type) [CommRing R₉] [IsDomain R₉] [IsLocalRing R₉] (ρ₉ : R →+* R₉) (G₉ : Over (Sp R₉)) [GrpObj G₉] [IsCommMonObj G₉] (β₉ : G₉.left ⟶ G.left) (β₉₂ : (G2 G₉).left ⟶ (G2 G).left) (P₉ : GlobalTheory.UU.CP G₉) (A₉ : PolAV (Sp (FractionRing R₉))) (gen₉ : (Over.pullback (jK R₉)).obj G₉ ≅ A₉.A), FinExt ρ₉ → IsGrpPullback G₉ G (spMap ρ₉) β₉ → Geo.Tor.IsSquare β₉ β₉₂ → IsSemiAbelian G₉ → LBIso (abelian₂ G₉ P₉.L.L) ((abelian₂ G' U'.LG.L).pull (β₉₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) → EvenOn P₉ → IsMonHom gen₉.hom → LBIso (A₉.L.pull gen₉.hom.left) (P₉.L.L.pull (pullback.fst G₉.hom (jK R₉))) → ∃ (R₀ : Type) (_ : CommRing R₀) (_ : IsDomain R₀) (_ : IsLocalRing R₀) (ρ₀ : R →+* R₀) (D₀ : DegData R₀ (maximalIdeal R₀)) (G₀ : Over (Sp R₀)) (_ : GrpObj G₀) (_ : IsCommMonObj G₀) (β₀ : G₀.left ⟶ G.left) (β₀₂ : (G2 G₀).left ⟶ (G2 G).left) (P : GlobalTheory.UU.CP G₀) (A₀ : PolAV (Sp (FractionRing R₀))) (gen₀ : (Over.pullback (jK R₀)).obj G₀ ≅ A₀.A), FinExt ρ₀ ∧ Nonempty (IsPullDeg ρ₀ D.toPre D₀.toPre) ∧ IsGrpPullback G₀ G (spMap ρ₀) β₀ ∧ Geo.Tor.IsSquare β₀ β₀₂ ∧ IsSemiAbelian G₀ ∧ LBIso (abelian₂ G₀ P.L.L) ((abelian₂ G' U'.LG.L).pull (β₀₂ ≫ (lift (fst G G ≫ inc) (snd G G ≫ inc ≫ oG.act F.f) : G2 G ⟶ G2 G').left)) ∧ EvenOn P ∧ IsMonHom gen₀.hom ∧ LBIso (A₀.L.pull gen₀.hom.left) (P.L.L.pull (pullback.fst G₀.hom (jK R₀))) ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W], GlobalTheory.LN.CDvr W → ∀ (φ : R₀ →+* W), Function.Injective φ → IsLocalHom φ → ∀ (GW : Over (Sp W)) [GrpObj GW] [IsCommMonObj GW] (β : GW.left ⟶ G₀.left) (DW : DegData W (maximalIdeal W)) (AW : PolAV (Sp (FractionRing W))) (UW : Unif (maximalIdeal W) DW AW GW), IsGrpPullback GW G₀ (spMap φ) β → LBIso UW.LG.L (P.L.L.pull β) → Nonempty (IsPullDeg φ D₀.toPre DW.toPre) := by
  first | exact @GlobalTheory.Mum.TraitTwist.exists_bundle_data_at_traits
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiabelianUniformizationLinearActionDescentStatement =====
