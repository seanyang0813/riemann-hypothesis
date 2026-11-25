module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClassifiedOnOpenOfSpecialisesToClassifiedStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegOUnif
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationRingActionAdjointCubeBundle
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericPointsSubsetAbLocus
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TqOfGtCoord
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsNormalisedPolarisation
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.RosatiAdjIffLamEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenOfIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleIsoUniformisedGroupGenericFibre
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianPartHomUniformisedGroups
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAlgClosedFieldTorsionMapsCommuteHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorPeriodsProjectionPeriodPoints
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomTorsionCompatiblePeriodsLattices
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomCharacterMapConstant
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomInducedMapsUnique
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordLambdaBilinearIntegralCombinations
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTangentOfIsLieImage
public import Development.AbelianVarietyTheory.Definitions.Uniformization.SeriesFrame
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRingActionDegenerationLinearUniformisation
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiFunctionEqThetaOfPrimitiveLineBundle
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistBaseChangeAndValuationStatements
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationCompleteLocalEvenOnTorus
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationDeterminedByDegenerationDataNormal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSemiAbelianUniformisationCompleteNormalBaseStatement
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.IsSymmetricOfSymmetryGenerator
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationDataNsmulRescaleKeepsLawsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GensOfPsiUnitOn
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SurjectiveCubeOfGeneric
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPrimitiveNormalisation
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCubicalBundleOfSymmetricSemiAbelian
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsNormalisedGen
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGlueRigidifiedLineBundlesCover
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelShapePrimitivityPullbackDescent
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformizationLawsAndExpansionStatements
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdIso
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCoordinatesCompareNormalisedGenerators
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FunctorialOfUnif
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PrimitiveCocycle
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFiniteCubeInduction
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationDegenerationDataUnique
import Mathlib.Tactic.Polynomial.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AdmissibleBasePowerSeries
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsAdicColimitOfFactor
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianPartIsoIsMonHomAndRigidified
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsHomOfPullbackId
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaOfTranslDiff
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationTripleLinearTorsionIso
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsCoprimeTwoSubRtTwoAddRt
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRootOfIsAlgClosed

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCpEvenOn, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVGeneric, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoMumfordAdjointPrimitiveOfTwist, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackOfCoprodJoin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorValEqOneOfGenericSpecDomain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPullbackAlongIdLiesOverDataIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomExtOfInducedMaps, Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUBalanced, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormData, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormDataStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNorm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNormStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinatesStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCpEvenOn =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCpEvenOn", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SurjectiveCubeOfGeneric\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericPointsSubsetAbLocus\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TqOfGtCoord\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegOUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationRingActionAdjointCubeBundle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPrimitiveNormalisation\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCubicalBundleOfSymmetricSemiAbelian\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsNormalisedGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.PrimCube

open GlobalTheory.PrimNorm GlobalTheory.MulPull

theorem evenOn_of_prim : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (P : GlobalTheory.UU.CP G) (a : G ⟶ G), IsMonHom a → LBIso P.L.L (cubeLB G ![𝟙 G, a] P.L.L) → EvenOn P := by
  intro R _ _ _ hR D A G _ _ hS U P a ha hw
  have hp : IsProper (pullback.snd G.hom (jK R)) := by
    have := A.isAb.proper
    have e : pullback.snd G.hom (jK R) = U.gen.hom.left ≫ A.A.hom := (Over.w U.gen.hom).symm
    have : IsIso U.gen.hom.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.hom))
    exact e ▸ MorphismProperty.comp_mem @IsProper U.gen.hom.left A.A.hom inferInstance A.isAb.proper
  have hB : IsAbelianScheme (thickObj R (maximalIdeal R) 0 D.toPre.P.A) :=
    GlobalTheory.isAbelianScheme_pullback_obj _ _ D.toPre.P.isAb
  let Q₀ := GlobalTheory.Mum.tqOfGtCoord (U.gt 0) hB
  obtain ⟨P₀, v, hv⟩ := GlobalTheory.UU.exists_isLevelCP (maximalIdeal R) 0 P
  have hm : (maximalIdeal R ^ (0 + 1)).IsMaximal := by
    rw [zero_add, pow_one]; infer_instance
  letI : Field (R ⧸ maximalIdeal R ^ (0 + 1)) := Ideal.Quotient.field _
  have hS0 := IsSemiAbelian.pullback (thick R (maximalIdeal R) 0) G hS
  have := hS0.smooth
  have := hS0.geomConnected
  have := Q₀.i_hom
  letI := D.toPre.addX
  haveI := D.toPre.freeX
  haveI := D.toPre.finX
  obtain ⟨s⟩ := GlobalTheory.BiextTriv.main (R ⧸ maximalIdeal R ^ (0 + 1)) D.toPre.X (thickObj R (maximalIdeal R) 0 G) P₀.L P₀.c Q₀.i
    Q₀.i_hom
  obtain ⟨σ, hσ⟩ := GlobalTheory.EvenTriv.exists_even_of_surjective (GlobalTheory.EvenTriv.surjective_cube_of_generic G hS hp) P a hw P₀
    (IsPullback.of_hasPullback G.hom (thick R (maximalIdeal R) 0)) hv Q₀.i s
  exact ⟨D.toPre.X, D.toPre.addX, D.toPre.freeX, D.toPre.finX, Q₀, P₀, ⟨v, hv⟩, σ, hσ⟩

theorem exists_cp_evenOn : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ w : O, w + star w = 1 → TraceFormTwistIso D.toPre o w → ∃ P : GlobalTheory.UU.CP G, LBIso P.L.L (cubeLB G ![𝟙 G, oG.act w] U.LG.L) ∧ EvenOn P := by
  intro R _ _ _ hR D A G _ _ hS U O _ _ _ o oA oG hlin w hw _
  obtain ⟨hno, -, hic, -⟩ := hR.1
  have ha := oG.hom w
  have hb := oG.hom (star w)
  have hL : Laws := GlobalTheory.firstFiveLaws.1
  have hgh := U.gen_hom
  have hp : IsProper (pullback.snd G.hom (jK R)) := by
    have := A.isAb.proper
    have e : pullback.snd G.hom (jK R) = U.gen.hom.left ≫ A.A.hom := (Over.w U.gen.hom).symm
    have : IsIso U.gen.hom.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.hom))
    exact e ▸ MorphismProperty.comp_mem @IsProper U.gen.hom.left A.A.hom inferInstance A.isAb.proper
  have hM := U.LG.isLB
  have hT : ∃ t : LB.Gen (Theta G U.LG.L), t.IsGen := ⟨U.cubG.t, U.cubG.isGen⟩
  have hadd : oG.act w * oG.act (star w) = 𝟙 G := by
    have e := oG.map_add w (star w)
    rw [hw, oG.map_one] at e
    exact (e.trans rfl).symm
  have hadj := _root_.GlobalTheory.Mum.UnifAdjoint.lbIso_cubeLB_star R hR.1 D A G hS U O o oA oG hlin w
  have hc := fun T : Over (Sp R) => diff₃_ptCls (T := T) hM hT
  have hq : ∀ T : Over (Sp R), (fun x : T ⟶ G => normCls U.LG.L (oG.act w) x.left) =
      fun x => diff₂ (ptCls U.LG.L T) x (postHom (oG.act w) T x) := fun T => funext fun x => normCls_left _ x
  have hs : ∀ (T : Over (Sp R)) (y : T ⟶ G), postHom (oG.act w) T y * postHom (oG.act (star w)) T y = y :=
    fun T y => (MonObj.comp_mul y _ _).symm.trans (by rw [hadd, Category.comp_id])
  have hadj' : ∀ (T : Over (Sp R)) (x y : T ⟶ G), diff₂ (ptCls U.LG.L T) (postHom (oG.act w) T x) y =
      diff₂ (ptCls U.LG.L T) x (postHom (oG.act (star w)) T y) := fun T x y => diff₂_ptCls_adj hM hadj x y
  have iso : ∀ (T : Over (Sp R)) (x y : T ⟶ G),
      LBIso (cubeLB G ![x, y] (cubeLB G ![𝟙 G, oG.act w] U.LG.L)) (cubeLB G ![x, y] U.LG.L) := fun T x y => by
    refine lbIso_nested hM _ _ _ _ _ _ ((prod_square_id x y (normCls U.LG.L (oG.act w))).trans
      (Eq.trans ?_ (prod_square_id x y (cls U.LG.L)).symm))
    rw [hq]
    exact diff₂_quadratic (hc T) _ _ (hs _) (hadj' _) x y
  have symN : HasGen (cubeLB G ![𝟙 G, oG.act w] U.LG.L) (K := Fin 2) ![(GrpObj.inv (X := G)).left, 𝟙 _] ![1, -1] := by
    refine hasGen_nested hM _ _ _ _ ?_
    rw [Fin.prod_univ_two]
    show normCls U.LG.L (oG.act w) (GrpObj.inv (X := G)).left ^ (1 : ℤ) *
      normCls U.LG.L (oG.act w) (𝟙 G : G ⟶ G).left ^ (-1 : ℤ) = 1
    have e : GrpObj.inv (X := G) = (𝟙 G)⁻¹ := by simp [Hom.inv_def]
    have e' : (𝟙 G)⁻¹ ≫ oG.act w = (𝟙 G ≫ oG.act w)⁻¹ := map_inv (postHom (oG.act w) G) _
    rw [normCls_left, normCls_left, e, e', diff₂_inv_inv (hc G), zpow_neg, mul_inv_cancel]
  have hN := GlobalTheory.LamCalc.cubeLB_isLB hM ![𝟙 G, oG.act w]
  obtain ⟨L', c', hL'⟩ := GlobalTheory.RigCube.exists_rigLB_cubicalStr R G hS hp _ hN
  have hsym : L'.IsSymmetric := isSymmetric_of_hasGen L' (hL' ▸ symN)
  obtain ⟨P, hP, -⟩ := GlobalTheory.UU.exists_cp_of_isSymmetric hL R A G hS U.gen hgh L' c' hsym
  have hPN : P.L.L = cubeLB G ![𝟙 G, oG.act w] U.LG.L := by rw [hP, hL']
  refine ⟨P, hPN ▸ GlobalTheory.PolBaseChange.lbIso_refl P.L.isLB, evenOn_of_prim R hR D A G hS U P (oG.act w) ha ?_⟩
  rw [hPN]
  exact (iso G (𝟙 G) (oG.act w)).symm

end GlobalTheory.Mum.PrimCube
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCpEvenOn =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVGeneric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVGeneric", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsNormalisedPolarisation\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.RosatiAdjIffLamEq\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGlueRigidifiedLineBundlesCover\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelShapePrimitivityPullbackDescent\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformizationLawsAndExpansionStatements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.GenPol

theorem exists_polAV_generic : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ w : O, w + star w = 1 → TraceFormTwistIso D.toPre o w → ∀ P : GlobalTheory.UU.CP G, LBIso P.L.L (cubeLB G ![𝟙 G, oG.act w] U.LG.L) → ∃ (A' : PolAV (Sp (FractionRing R))) (gen' : (Over.pullback (jK R)).obj G ≅ A'.A), IsMonHom gen'.hom ∧ LBIso (A'.L.pull gen'.hom.left) (P.L.L.pull (pullback.fst G.hom (jK R))) := by
  intro R _ _ _ hB D A G _ _ hG U O _ _ _ o oA oG hlin w hw hpsi P hP
  have laws : Out.Laws := GlobalTheory.lawsAndExpansions.1.1
  have : IsCommMonObj A.A := A.isAb.comm
  have hwA : IsMonHom (oA.act w) := oA.hom w
  have hwA' : IsMonHom (oA.act (star w)) := oA.hom (star w)
  have hs : oA.act w * oA.act (star w) = 𝟙 A.A := by
    rw [Hom.mul_def]
    change padd A.A (oA.act w) (oA.act (star w)) = 𝟙 A.A
    rw [← oA.map_add, hw, oA.map_one]
  have ha := (GlobalTheory.RosLam.rosatiAdj_iff_lamEq laws.globalFns _ A _ _ hwA hwA').1 (oA.rosati w)
  obtain ⟨L', h1, h2, h3, h4, h5, h6, h7⟩ :=
    GlobalTheory.CM.exists_normalised_polarisation laws (FractionRing R) A _ _ hwA hwA' hs ha
  let A' : PolAV (Sp (FractionRing R)) :=
    { A := A.A, isAb := A.isAb, g := A.g, smoothDim := A.smoothDim, L := L', isLB := h1, rigid := h2, sym := h3,
      ample := h4, ktriv := h5 }
  refine ⟨A', U.gen, U.gen_hom, ?_⟩
  haveI := U.gen_hom
  have hLG := U.LG.isLB
  have hAL := A.isLB
  let φ := pullback.fst G.hom (jK R)
  let GK := (Over.pullback (jK R)).obj G
  let wGK := (Over.pullback (jK R)).map (oG.act w)
  have lbc : ∀ {S : Scheme.{0}} {B : Over S} [GrpObj B] [IsCommMonObj B] {T : Over S} {n : ℕ} (x : Fin n → (T ⟶ B))
      {L : LB B.left}, L.IsLB → (cubeLB B x L).IsLB := fun x L hL => DVR.linComb_isLB _ hL _ _
  have s1 : LBIso L' (cubeLB A.A ![𝟙 A.A, oA.act w] A.L) := by
    have e := GlobalTheory.LamCalc.lbIso_of_lamEq h6 (𝟙 A.A) (oA.act w)
    simp only [Category.comp_id] at e
    exact LBIso.trans h1 (lbc _ h1) (lbc _ hAL) h7 e
  have s2 := GlobalTheory.RigidBundleGlue.LBIso.pull s1 U.gen.hom.left
  have hext : LBIso (U.LG.L.pull φ) (A.L.pull U.gen.hom.left) := by
    obtain ⟨v, hv⟩ := U.ext
    exact LBIso.symm ⟨v, hv⟩
  have hgp := isGrpPullback_of_iso U.gen
  have s3 := GlobalTheory.ShapePull.iso_cubeLB_pull hgp (pushPt hgp.1.w (𝟙 GK)) hext
    (a' := 𝟙 GK) (b' := wGK) (a := 𝟙 A.A) (b := oA.act w) (Category.comp_id _).symm (by
      refine Over.OverMorphism.ext ?_
      have e := congrArg (fun q => q.left) (hlin.ext w)
      simp only [Over.comp_left] at e
      simp only [pushPt, Over.homMk_left, Over.comp_left, Over.id_left, Category.id_comp]
      exact e)
  have hpb := isGrpPullback_pullback G (jK R)
  have s4 := GlobalTheory.ShapePull.iso_cubeLB_pull hpb (pushPt hpb.1.w (𝟙 GK)) (GlobalTheory.PolBaseChange.lbIso_refl (pull_isLB hLG φ))
    (a' := 𝟙 GK) (b' := wGK) (a := 𝟙 G) (b := oG.act w) (Category.comp_id _).symm (by
      refine Over.OverMorphism.ext ?_
      show wGK.left ≫ φ = (𝟙 GK.left ≫ φ) ≫ (oG.act w).left
      rw [Category.id_comp]
      simp only [wGK, φ, Over.pullback_map_left, pullback.lift_fst])
  have s5 := GlobalTheory.RigidBundleGlue.LBIso.pull hP φ
  have e3 : (pushPt hgp.1.w (𝟙 GK)).left = U.gen.hom.left := by simp [pushPt]
  have e4 : (pushPt hpb.1.w (𝟙 GK)).left = φ := Category.id_comp _
  rw [e3] at s3
  rw [e4] at s4
  have i1 := pull_isLB h1 U.gen.hom.left
  have i2 := pull_isLB (lbc ![𝟙 A.A, oA.act w] hAL) U.gen.hom.left
  have i3 := lbc ![𝟙 GK, wGK] (pull_isLB hLG φ)
  have i4 := pull_isLB (lbc ![𝟙 G, oG.act w] hLG) φ
  have i5 := pull_isLB P.L.isLB φ
  exact LBIso.trans i1 i2 i5 s2 (LBIso.trans i2 i3 i5 s3.symm (LBIso.trans i3 i4 i5 s4 s5.symm))

end GlobalTheory.Mum.GenPol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVGeneric =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoMumfordAdjointPrimitiveOfTwist =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoMumfordAdjointPrimitiveOfTwist", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationRingActionAdjointCubeBundle\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPrimitiveNormalisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdIso\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenOfIso\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.Mum.NormLam

theorem lbIso_cubeLB' {S : Scheme.{0}} {G T : Over S} [GrpObj G] [IsCommMonObj G] {n : ℕ} (x : Fin n → (T ⟶ G))
    {L M : LB G.left} (h : LBIso L M) : LBIso (cubeLB G x L) (cubeLB G x M) := by
  obtain ⟨w, hw⟩ := h
  exact ⟨_, DVR.linCombIso_isGen w hw _ _⟩

theorem cubeLB_isLB' {S : Scheme.{0}} {G T : Over S} [GrpObj G] [IsCommMonObj G] {n : ℕ} (x : Fin n → (T ⟶ G))
    {L : LB G.left} (h : L.IsLB) : (cubeLB G x L).IsLB := DVR.linComb_isLB _ h _ _

theorem lbIso_lam_adj_prim : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ w : O, w + star w = 1 → ∀ P : GlobalTheory.UU.CP G, LBIso P.L.L (cubeLB G ![𝟙 G, oG.act w] U.LG.L) → LBIso (abelian₂ G P.L.L) (abelian₂ G U.LG.L) ∧ (∀ a, LBIso (cubeLB G ![fst G G ≫ oG.act a, snd G G] P.L.L) (cubeLB G ![fst G G, snd G G ≫ oG.act (star a)] P.L.L)) ∧ LBIso P.L.L (cubeLB G ![𝟙 G, oG.act w] P.L.L) := by
  intro R _ _ _ hR D A G _ _ hS U O _ _ _ o oA oG hlin w hw P hP
  have hwh := oG.hom w
  have hwh' := oG.hom (star w)
  have hM := U.LG.isLB
  have hT : ∃ t : LB.Gen (Theta G U.LG.L), t.IsGen := ⟨U.cubG.t, U.cubG.isGen⟩
  have hadd : oG.act w * oG.act (star w) = 𝟙 G := by
    have e := oG.map_add w (star w)
    rw [hw, oG.map_one] at e
    exact (e.trans rfl).symm
  have hadj := fun a => GlobalTheory.Mum.UnifAdjoint.lbIso_cubeLB_star R hR.1 D A G hS U O o oA oG hlin a
  have hc := fun T : Over (Sp R) => GlobalTheory.PrimNorm.diff₃_ptCls (T := T) hM hT
  have hq : ∀ T : Over (Sp R), (fun x : T ⟶ G => GlobalTheory.PrimNorm.normCls U.LG.L (oG.act w) x.left) =
      fun x => GlobalTheory.PrimNorm.diff₂ (GlobalTheory.PrimNorm.ptCls U.LG.L T) x (GlobalTheory.PrimNorm.postHom (oG.act w) T x) :=
    fun T => funext fun x => GlobalTheory.PrimNorm.normCls_left _ x
  have hs : ∀ (T : Over (Sp R)) (y : T ⟶ G),
      GlobalTheory.PrimNorm.postHom (oG.act w) T y * GlobalTheory.PrimNorm.postHom (oG.act (star w)) T y = y :=
    fun T y => (MonObj.comp_mul y _ _).symm.trans (by rw [hadd, Category.comp_id])
  have hadj' : ∀ (T : Over (Sp R)) (x y : T ⟶ G),
      GlobalTheory.PrimNorm.diff₂ (GlobalTheory.PrimNorm.ptCls U.LG.L T) (GlobalTheory.PrimNorm.postHom (oG.act w) T x) y =
      GlobalTheory.PrimNorm.diff₂ (GlobalTheory.PrimNorm.ptCls U.LG.L T) x (GlobalTheory.PrimNorm.postHom (oG.act (star w)) T y) :=
    fun T x y => GlobalTheory.PrimNorm.diff₂_ptCls_adj hM (hadj w) x y
  have iso : ∀ (T : Over (Sp R)) (x y : T ⟶ G),
      LBIso (cubeLB G ![x, y] (cubeLB G ![𝟙 G, oG.act w] U.LG.L)) (cubeLB G ![x, y] U.LG.L) := fun T x y => by
    refine GlobalTheory.PrimNorm.lbIso_nested hM _ _ _ _ _ _
      ((GlobalTheory.PrimNorm.prod_square_id x y (GlobalTheory.PrimNorm.normCls U.LG.L (oG.act w))).trans
      (Eq.trans ?_ (GlobalTheory.PrimNorm.prod_square_id x y (GlobalTheory.PrimNorm.cls U.LG.L)).symm))
    rw [hq]
    exact GlobalTheory.PrimNorm.diff₂_quadratic (hc T) _ _ (hs _) (hadj' _) x y
  have hN := cubeLB_isLB' ![𝟙 G, oG.act w] hM
  have hPL := P.L.isLB
  have cP : ∀ {T : Over (Sp R)} (x : Fin 2 → (T ⟶ G)), (cubeLB G x P.L.L).IsLB := fun x => cubeLB_isLB' x hPL
  have cN : ∀ {T : Over (Sp R)} (x : Fin 2 → (T ⟶ G)), (cubeLB G x (cubeLB G ![𝟙 G, oG.act w] U.LG.L)).IsLB :=
    fun x => cubeLB_isLB' x hN
  have cL : ∀ {T : Over (Sp R)} (x : Fin 2 → (T ⟶ G)), (cubeLB G x U.LG.L).IsLB := fun x => cubeLB_isLB' x hM

  have isoP : ∀ (T : Over (Sp R)) (x y : T ⟶ G), LBIso (cubeLB G ![x, y] P.L.L) (cubeLB G ![x, y] U.LG.L) :=
    fun T x y => LBIso.trans (cP _) (cN _) (cL _) (lbIso_cubeLB' _ hP) (iso T x y)
  refine ⟨isoP _ (fst G G) (snd G G), fun a => ?_, ?_⟩
  · exact LBIso.trans (cP _) (cL _) (cP _) (isoP _ _ _)
      (LBIso.trans (cL _) (cL _) (cP _) (hadj a) (isoP _ _ _).symm)
  · exact LBIso.trans hPL hN (cP _) hP (LBIso.trans hN (cN _) (cP _) (iso G (𝟙 G) (oG.act w)).symm
      (lbIso_cubeLB' _ hP).symm)

end GlobalTheory.Mum.NormLam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoMumfordAdjointPrimitiveOfTwist =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubeBundleIsoUniformisedGroupGenericFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianPartHomUniformisedGroups\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAlgClosedFieldTorsionMapsCommuteHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorPeriodsProjectionPeriodPoints\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomTorsionCompatiblePeriodsLattices\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCoordinatesCompareNormalisedGenerators\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomCharacterMapConstant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomInducedMapsUnique\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FunctorialOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.Mum.SameLam

section Comp

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ D₃ : DegData R I}
  {A₁ A₂ A₃ : PolAV (Sp (FractionRing R))} {G₁ G₂ G₃ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂]
  [IsCommMonObj G₂] [GrpObj G₃] [IsCommMonObj G₃] {U₁ : UnifPre I D₁ A₁ G₁} {U₂ : UnifPre I D₂ A₂ G₂}
  {U₃ : UnifPre I D₃ A₃ G₃} {a : G₁ ⟶ G₂} {a' : G₂ ⟶ G₃}

theorem over_comp {b : D₁.toPre.P.A ⟶ D₂.toPre.P.A} {b' : D₂.toPre.P.A ⟶ D₃.toPre.P.A} (h : Over₀ U₁ U₂ a b)
    (h' : Over₀ U₂ U₃ a' b') : Over₀ U₁ U₃ (a ≫ a') (b ≫ b') := fun e => by
  rw [Functor.map_comp, Functor.map_comp, Category.assoc, h' e, ← Category.assoc, h e, Category.assoc]

theorem over_id : Over₀ U₁ U₁ (𝟙 _) (𝟙 _) := fun e => by
  rw [CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id, Category.id_comp, Category.comp_id]

theorem onTorus_comp {h : D₂.toPre.X → D₁.toPre.X} {h' : D₃.toPre.X → D₂.toPre.X} (H : OnTorus U₁ U₂ a h)
    (H' : OnTorus U₂ U₃ a' h') : OnTorus U₁ U₃ (a ≫ a') (h ∘ h') := fun e => by
  obtain ⟨t, ht, et⟩ := H e
  obtain ⟨t', ht', et'⟩ := H' e
  refine ⟨t ≫ t', fun χ => unit_ext fun z _ => ?_, by
    rw [Functor.map_comp, ← Category.assoc, et, Category.assoc, et', Category.assoc]⟩
  have e₁ := congrArg (gm (𝟙 _) z ⊤) (ht (h' χ))
  have e₂ := congrArg (gm (𝟙 _ ≫ t.left) z ⊤) (ht' χ)
  refine Eq.trans ?_ e₁
  refine ((gm_res (𝟙 _) z (V := ⊤) _ trivial _).trans (gm_pull (𝟙 _) (t ≫ t').left z ⊤ trivial _)).trans
    (Eq.trans ?_ ((gm_res (𝟙 _) z (V := ⊤) _ trivial _).trans (gm_pull (𝟙 _) t.left z ⊤ trivial _)).symm)
  refine Eq.trans ?_ e₂
  refine Eq.trans ?_ ((gm_res _ z (V := ⊤) _ trivial _).trans (gm_pull (𝟙 _ ≫ t.left) t'.left z ⊤ trivial _)).symm
  rw [Over.comp_left, Category.assoc]

theorem onTorus_id : OnTorus U₁ U₁ (𝟙 _) id := fun e =>
  ⟨𝟙 _, fun χ => unit_ext fun z _ => ((gm_res (𝟙 _) z (V := ⊤) _ trivial _).trans
    (gm_pull (𝟙 _) (𝟙 _) z ⊤ trivial _)).trans (by rw [Category.comp_id]; rfl), by
    rw [CategoryTheory.Functor.map_id, Category.id_comp, Category.comp_id]⟩

end Comp



theorem iso_of_lbIso_lam : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ (D' : DegData R (maximalIdeal R)) (A' : PolAV (Sp (FractionRing R))) (U' : Unif (maximalIdeal R) D' A' G), ∀ [Module O D'.toPre.X] (o' : D'.toPre.OAct O) (oA' : A'.OAct O), U'.toUnifPre.OLinear O o' oA' oG → LBIso (abelian₂ G U'.LG.L) (abelian₂ G U.LG.L) → ∃ (Φ : D'.toPre.P.A ≅ D.toPre.P.A) (xe : D'.toPre.X ≃+ D.toPre.X), IsMonHom Φ.hom ∧ Over₀ U'.toUnifPre U.toUnifPre (𝟙 G) Φ.hom ∧ OnTorus U'.toUnifPre U.toUnifPre (𝟙 G) xe.symm ∧ (∀ a, o'.onB.act a ≫ Φ.hom = Φ.hom ≫ o.onB.act a) ∧ (∀ (a : O) x, xe (a • x) = a • xe x) ∧ (∀ x, D'.toPre.c x ≫ Φ.hom = D.toPre.c (xe x)) ∧ ∃ wΛ : (letI := D.toPre.P.isAb.comm; letI := D'.toPre.P.isAb.comm; LB.Iso (abelian₂ D'.toPre.P.A D'.toPre.P.L) ((abelian₂ D.toPre.P.A D.toPre.P.L).pull (lift (fst D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) (snd D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) : G2 D'.toPre.P.A ⟶ G2 D.toPre.P.A).left)), wΛ.IsGen ∧ ∀ a b z J J', Good D.toPre.P.L z J → Good D'.toPre.P.L z J' → val (D'.toPre.tau a b) (𝟙 _) z J' = GlobalTheory.PolDeg.lamVal wΛ (lift (toUnit (TK R) ≫ D'.toPre.c a) (toUnit (TK R) ≫ D'.toPre.c b)).left z J J' * val (D.toPre.tau (xe a) (xe b)) (𝟙 _) z J := by
  intro R _ _ _ hR D A G _ _ hG U O _ _ _ o oA oG lin D' A' U' _ o' oA' lin' H
  have := hR.2
  have hA := hR.1
  have := U.gen_hom
  have := U'.gen_hom
  obtain ⟨prB, hprB, qpr⟩ := GlobalTheory.Mum.Two.exists_abelian_hom R _ hA D D' A A' G G U.toUnifPre U'.toUnifPre (𝟙 G)
    inferInstance
  obtain ⟨incB, hincB, qinc⟩ := GlobalTheory.Mum.Two.exists_abelian_hom R _ hA D' D A' A G G U'.toUnifPre U.toUnifPre (𝟙 G)
    inferInstance
  obtain ⟨h, th⟩ := GlobalTheory.Mum.Two.unifPre_hom_character_const R _ hA D D' A A' G G U.toUnifPre U'.toUnifPre (𝟙 G)
    inferInstance
  obtain ⟨k, tk⟩ := GlobalTheory.Mum.Two.unifPre_hom_character_const R _ hA D' D A' A G G U'.toUnifPre U.toUnifPre (𝟙 G)
    inferInstance
  have un := GlobalTheory.Mum.Two.over₀_onTorus_unique R _ hA D D A A G G U.toUnifPre U.toUnifPre (𝟙 G)
  have un' := GlobalTheory.Mum.Two.over₀_onTorus_unique R _ hA D' D' A' A' G G U'.toUnifPre U'.toUnifPre (𝟙 G)
  have ipB : incB ≫ prB = 𝟙 _ := un'.1 _ _ (by have := over_comp qinc qpr; rwa [Category.comp_id] at this) over_id
  have piB : prB ≫ incB = 𝟙 _ := un.1 _ _ (by have := over_comp qpr qinc; rwa [Category.comp_id] at this) over_id
  have kh : ∀ χ, k (h χ) = χ := congrFun (un'.2 _ _ (by have := onTorus_comp tk th; rwa [Category.comp_id] at this)
    onTorus_id)
  have hk : ∀ χ, h (k χ) = χ := congrFun (un.2 _ _ (by have := onTorus_comp th tk; rwa [Category.comp_id] at this)
    onTorus_id)
  have hinj : Function.Injective h := Function.LeftInverse.injective kh
  let xe : D'.toPre.X ≃+ D.toPre.X :=
    { toFun := h, invFun := k, left_inv := kh, right_inv := hk, map_add' := h.map_add }

  have ql : ∀ x, Over₀ U.toUnifPre U.toUnifPre (oG.act x) (o.onB.act x) := fun x e => lin.q_lin e x
  have ql' : ∀ x, Over₀ U'.toUnifPre U'.toUnifPre (oG.act x) (o'.onB.act x) := fun x e => lin'.q_lin e x
  have il : ∀ x, OnTorus U.toUnifPre U.toUnifPre (oG.act x) (fun χ => star x • χ) := fun x e => lin.i_lin e x
  have il' : ∀ x, OnTorus U'.toUnifPre U'.toUnifPre (oG.act x) (fun χ => star x • χ) := fun x e => lin'.i_lin e x
  have linB : ∀ a, o'.onB.act a ≫ incB = incB ≫ o.onB.act a := fun a =>
    (GlobalTheory.Mum.Two.over₀_onTorus_unique R _ hA D' D A' A G G U'.toUnifPre U.toUnifPre (oG.act a)).1 _ _
      (by have := over_comp (ql' a) qinc; rwa [Category.comp_id] at this)
      (by have := over_comp qinc (ql a); rwa [Category.id_comp] at this)
  have linS : ∀ (b : O) χ, star b • h χ = h (star b • χ) := fun b => congrFun
    ((GlobalTheory.Mum.Two.over₀_onTorus_unique R _ hA D D' A A' G G U.toUnifPre U'.toUnifPre (oG.act b)).2 _ _
      (by have := onTorus_comp (il b) th; rwa [Category.comp_id] at this)
      (by have := onTorus_comp th (il' b); rwa [Category.id_comp] at this))
  have linX : ∀ (a : O) x, h (a • x) = a • h x := fun a x => by
    have := linS (star a) x
    rw [star_star] at this
    exact this.symm

  have L : Lin U.toUnifPre U'.toUnifPre (𝟙 G) prB h := ⟨inferInstance, hprB, qpr, th⟩
  have C := GlobalTheory.Mum.Two.coord_of_lin R _ hA D D' A A' G G U.toUnifPre U'.toUnifPre (𝟙 G) prB h L
  obtain ⟨c, hc, gc⟩ : ∃ c : A.A ⟶ A'.A, IsMonHom c ∧ Gen₀ U.toUnifPre U'.toUnifPre (𝟙 G) c :=
    ⟨U.gen.inv ≫ (Over.pullback (jK R)).map (𝟙 G) ≫ U'.gen.hom, inferInstance, by simp [Gen₀]⟩
  obtain ⟨E, eG, -⟩ := (GlobalTheory.UT.functorial_of_unif R _ hA D A G hG U).1 (𝟙 G) (𝟙 A.A) inferInstance inferInstance
    (by simp)
  have eh : ∀ y, E.h y = y := fun y =>
    congrFun (un.2 _ _ (eG ▸ (lin_of_endU E).1.2.2.2) onTorus_id) y
  have adj : LBIso (cubeLB G ![fst G G ≫ E.aG, snd G G] U.LG.L) (cubeLB G ![fst G G, snd G G ≫ E.aG] U.LG.L) := by
    rw [eG]
    simp only [Category.comp_id]
    exact GlobalTheory.PolBaseChange.lbIso_refl (LB.isLB_linComb U.LG.isLB _ _)
  have H₂ := GlobalTheory.Mum.Two.lbIso_cubeLB_generic R _ D D' A A' G G U.toUnifPre U'.toUnifPre (𝟙 G) (𝟙 G) E.aG (𝟙 G) c c
    E.aA (𝟙 _) gc gc E.ext (by simp [Gen₀]) (by rw [eG]; simp only [Category.comp_id]; exact H)
  obtain ⟨Ω, _, _, _, K⟩ := GlobalTheory.Mum.Two.exists_key R _ hA D D' A A' G G hG hG U U' (𝟙 G) c prB h hc gc L C hinj
  obtain ⟨φ, hφ, hhφ⟩ := GlobalTheory.Mum.Two.periods_of_key R _ hA D D' A A' G G hG hG U U' (𝟙 G) c prB h hc gc L C E E
    adj H₂ Ω K
  have H' : LBIso (abelian₂ G U'.LG.L) ((abelian₂ G U.LG.L).pull (lift (fst G G ≫ 𝟙 G) (snd G G ≫ 𝟙 G) : G2 G ⟶ G2 G).left) := by
    simp only [Category.comp_id, lift_fst_snd, Over.id_left]
    exact LBIso.chartPull (chartPullId _) (ReciprocityTheory.ChartRestriction.G.Geo.Tor.chartPullPull _ (𝟙 _) (𝟙 _) rfl) H
  have H₃ := _root_.GlobalTheory.HomMum.lbIso_descends R hA D' D A' A G G hG hG U' U (𝟙 G) (𝟙 G) incB incB inferInstance inferInstance hincB hincB
    qinc qinc H'
  have key := GlobalTheory.Mum.Two.Fac.periods_of_factor R D'.toPre D.toPre D.tau_bimult O o 1 1 incB prB h φ hincB hprB
    (by rw [piB, o.onB.map_one]) (fun χ => (C χ).imp fun _ => And.left)
    (by rw [o.onB.map_one, Category.comp_id]; exact H₃) Ω hφ
    (fun y => by rw [hhφ, eh, star_one, one_smul, one_smul, one_smul])
  rw [o.onB.map_one, Category.comp_id] at key
  obtain ⟨cφ, w, hw, ht⟩ := key
  have φh : ∀ x, φ (h x) = x := fun x => hinj ((hhφ (h x)).trans (eh _))
  refine ⟨⟨incB, prB, ipB, piB⟩, xe, hincB, qinc, tk, linB, linX, fun x => ?_, w, hw, fun a b z J J' hJ hJ' => ?_⟩
  · show D'.toPre.c x ≫ incB = D.toPre.c (h x)
    have := cφ (h x)
    rw [φh] at this
    rw [this, Category.assoc, piB, Category.comp_id]
  · have := ht (h a) (h b) z J J' hJ hJ'
    rw [φh, φh, one_smul, one_smul, one_smul] at this
    exact this

end GlobalTheory.Mum.SameLam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackOfCoprodJoin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackOfCoprodJoin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenOfIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.JoinPull

section Helpers

variable {X X₁ Z : Scheme.{0}} {N : LB X} {M : LB X₁} {e : X₁ ⟶ X} {π : N.ι → M.ι}

theorem part_g_of_eq (h : IsPart N M e π) (ψ : Z ⟶ X₁) (χ : Z ⟶ X) (hχ : χ = ψ ≫ e) (z : Z) (i j : N.ι)
    (hi : ψ z ∈ M.U (π i)) (hj : ψ z ∈ M.U (π j)) :
    gm χ z (N.U i ⊓ N.U j) (N.g i j) = gm ψ z (M.U (π i) ⊓ M.U (π j)) (M.g (π i) (π j)) := by
  subst hχ; exact h.g _ ψ z i j hi hj

theorem part_g_eq_one (h : IsPart N M e π) (hM : M.IsLB) (ψ : Z ⟶ X₁) (χ : Z ⟶ X) (hχ : χ = ψ ≫ e) (z : Z)
    (i j : N.ι) (e₀ : π i = π j) (hi : ψ z ∈ M.U (π i)) : gm χ z (N.U i ⊓ N.U j) (N.g i j) = 1 := by
  rw [part_g_of_eq h ψ χ hχ z i j hi (e₀ ▸ hi)]
  have : ∀ b, π i = b → gm ψ z (M.U (π i) ⊓ M.U b) (M.g (π i) b) = 1 := by
    rintro _ rfl; exact gm_self hM _ z hi
  exact this _ e₀

end Helpers

theorem exists_iso_of_joinGen : ∀ {X₁ X₂ : Scheme.{0}} (M : LB X₁) (M' : LB X₂), M.IsLB → M'.IsLB → Nonempty X₁ → Nonempty X₂ → ∀ (F : X₂ ⟶ X₁) (t : LB.Gen (LB.LinComb (join M' M) (Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl)) (Sum.elim (fun _ => (1 : ℤ)) (fun _ => (-1 : ℤ))))), t.IsGen → ∃ w : LB.Iso M' (M.pull F), w.IsGen ∧ ∀ (Z : Scheme.{0}) (f : Z ⟶ X₂) (z : Z) (J : (Z ⟶ X₂ ⨿ X₁) → (join M' M).ι), Good (join M' M) z J → gw w f z (rr J (f ≫ F)) (rl J f) = val t f z J := by
  intro X₁ X₂ M M' hM hM' h₁ h₂ F t ht
  obtain ⟨i₀⟩ := @nonempty_idx _ _ hM h₁
  obtain ⟨k₀⟩ := @nonempty_idx _ _ hM' h₂
  have hl := isPart_inl M' M
  have hr := isPart_inr M' M
  have le : ∀ a : (PUnit.{1} → M.ι) × M'.ι, (LB.div (M.pull F) M').U a ≤
      LB.wchart (join M' M) (Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl))
        (Sum.elim (fun _ => (k₀, a.1 PUnit.unit)) (fun _ => (a.2, i₀))) := fun a y hy =>
    Set.mem_iInter.2 fun k => by
      rcases k with u | u
      · exact (hr.mem (k₀, a.1 PUnit.unit) (F y)).2 (mem_pull.1 hy.1)
      · exact (hl.mem (a.2, i₀) y).2 hy.2
  let c : ChartPull (LB.div (M.pull F) M')
      (LB.LinComb (join M' M) (Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl))
        (Sum.elim (fun _ => (1 : ℤ)) (fun _ => (-1 : ℤ)))) (𝟙 X₂) :=
    { idx := fun a => Sum.elim (fun _ => (k₀, a.1 PUnit.unit)) (fun _ => (a.2, i₀))
      le := le
      g := fun y a b ha hb => by
        refine (gm_div M' (M.pull F) (𝟙 X₂) y a b ⟨ha, hb⟩).trans ?_
        refine Eq.trans ?_ (gm_linComb (join M' M) _ _ (𝟙 X₂) y _ _ (le a ha) (le b hb)).symm
        rw [Fintype.prod_sum_type, Fintype.prod_unique, Fintype.prod_unique]
        exact congrArg₂ (· * ·)
          ((gm_pull_g M F (𝟙 X₂) y a.1 b.1 ha.1 hb.1).trans ((part_g_of_eq hr (𝟙 X₂ ≫ F) _
            (Category.assoc _ _ _).symm y (k₀, a.1 PUnit.unit) (k₀, b.1 PUnit.unit) (mem_pull.1 ha.1)
            (mem_pull.1 hb.1)).symm.trans (zpow_one _).symm))
          ((congrArg (·⁻¹) (part_g_of_eq hl (𝟙 X₂) _ rfl y (a.2, i₀) (b.2, i₀) ha.2 hb.2).symm).trans
            (zpow_neg_one _).symm) }
  refine ⟨cGen c t, cGen_isGen c ht, fun Z f z J hJ => ?_⟩
  have m : f z ∈ (LB.div (M.pull F) M').U (fun _ => rr J (f ≫ F), rl J f) :=
    ⟨mem_pull.2 (hr.good hJ (f ≫ F)), hl.good hJ f⟩
  have n := hJ.mem (Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl)) f
  refine (gm_res f z _ m _).trans ((gen_trans ht f z (le _ m) n).trans ?_)
  have e₁ : trF (Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl))
      (Sum.elim (fun _ => (1 : ℤ)) (fun _ => (-1 : ℤ))) f z
      (Sum.elim (fun _ => (k₀, rr J (f ≫ F))) (fun _ => (rl J f, i₀)))
      (fun k => J (f ≫ Sum.elim (fun _ : PUnit => F ≫ coprod.inr) (fun _ : PUnit => coprod.inl) k)) = 1 := by
    rw [trF, Fintype.prod_sum_type, Fintype.prod_unique, Fintype.prod_unique]
    exact (congrArg₂ (· * ·)
      ((congrArg (· ^ _) (part_g_eq_one hr hM (f ≫ F) _ (Category.assoc _ _ _).symm z
        (k₀, rr J (f ≫ F)) (J (f ≫ F ≫ coprod.inr))
        (congrArg (fun q => (J q).2) (Category.assoc _ _ _)) (hr.good hJ (f ≫ F)))).trans (one_zpow _))
      ((congrArg (· ^ _) (part_g_eq_one hl hM' f _ rfl z (rl J f, i₀) (J (f ≫ coprod.inl)) rfl
        (hl.good hJ f))).trans (one_zpow _))).trans (mul_one 1)
  exact (congrArg (· * _) e₁).trans (one_mul _)

end GlobalTheory.JoinPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackOfCoprodJoin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorValEqOneOfGenericSpecDomain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorValEqOneOfGenericSpecDomain", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenOfIso\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

namespace GlobalTheory.Mum.GenOne

theorem unit_eq_one_of_generic (R : Type) [CommRing R] [IsDomain R] (V : (Spec (CommRingCat.of R)).Opens) (hV : V = ⊤)
    (a : Γ(Spec (CommRingCat.of R), V)ˣ) (h : ∀ z, gm (jK R) z V a = 1) : a = 1 := by
  subst hV
  have h1 : pullU (jK R) ⊤ a = 1 := by
    refine unit_ext fun x _ => ?_
    rw [map_one, gm_pull (𝟙 _) (jK R) x ⊤ trivial, Category.id_comp]
    exact h x
  have h2 : (jK R).appTop.hom (a : Γ(Spec (CommRingCat.of R), ⊤)) = 1 := congrArg Units.val h1
  have h3 := congrArg (fun f => f.hom (a : Γ(Spec (CommRingCat.of R), ⊤)))
    (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom (algebraMap R (FractionRing R))))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h3
  rw [h2, map_one] at h3
  have h4 : (Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom (a : Γ(Spec (CommRingCat.of R), ⊤)) = 1 :=
    IsFractionRing.injective R (FractionRing R) (by rw [map_one]; exact h3.symm)
  apply Units.ext
  apply (Scheme.ΓSpecIso (CommRingCat.of R)).commRingCatIsoToRingEquiv.injective
  rw [Units.val_one, map_one]
  exact h4

theorem val_eq_one_of_generic : ∀ (R : Type) [CommRing R] [IsDomain R] {X : Scheme.{0}} (L : LB X), L.IsLB → ∀ {K : Type} [Fintype K] (φ : K → (Spec (CommRingCat.of R) ⟶ X)) (ε : K → ℤ), FormEq φ ε (PEmpty.elim : PEmpty → (Spec (CommRingCat.of R) ⟶ X)) (PEmpty.elim : PEmpty → ℤ) → ∀ t : LB.Gen (LB.LinComb L φ ε), t.IsGen → (∀ (z : (TK R).left) (J : ((TK R).left ⟶ X) → L.ι), Good L z J → val t (jK R) z J = 1) → ∀ (Z : Scheme.{0}) (r : Z ⟶ Spec (CommRingCat.of R)) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → val t r z J = 1 := by
  intro R _ _ X L hL K _ φ ε hF t ht hgen Z r z J hJ
  obtain ⟨t', -, hv⟩ := exists_gen hL hF t ht
  have htop : ∀ j : PEmpty → L.ι,
      L.wchart (PEmpty.elim : PEmpty → (Spec (CommRingCat.of R) ⟶ X)) j = ⊤ := by
    intro j
    simp [LB.wchart]
  have key : ∀ j, t'.s j = 1 := by
    intro j
    refine unit_eq_one_of_generic R _ (htop j) _ fun y => ?_
    choose J' hJ' using fun ψ : (TK R).left ⟶ X => exists_chart hL (ψ y)
    have h1 := (hv _ (jK R) y J' hJ').trans (hgen y J' hJ')
    have e : j = fun k => J' (jK R ≫ (PEmpty.elim : PEmpty → (Spec (CommRingCat.of R) ⟶ X)) k) :=
      funext fun k => k.elim
    subst e
    exact h1
  rw [← hv Z r z J hJ]
  exact (congrArg (gm r z _) (key _)).trans (map_one _)

end GlobalTheory.Mum.GenOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorValEqOneOfGenericSpecDomain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PrimitiveCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackOfCoprodJoin\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorValEqOneOfGenericSpecDomain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordLambdaBilinearIntegralCombinations\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFiniteCubeInduction\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationDegenerationDataUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AdmissibleBasePowerSeries\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenOfIso\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.PrimPull

theorem lamF {S : Scheme.{0}} {B T : Over S} [GrpObj B] [IsCommMonObj B] {X Y : Scheme.{0}} (x y : T ⟶ B)
    (f₁ : T.left ⟶ Y) (f₂ : Y ⟶ (G2 B).left) (hf : f₁ ≫ f₂ = (lift x y).left) (e : B.left ⟶ X)
    {U : Type} [CommGroup U] (h : (T.left ⟶ X) → U) :
    ∏ I : ULift.{0} (Finset (Fin 2)), h (f₁ ≫ f₂ ≫ (psum B (x2 B) I.down).left ≫ e) ^ ((-1 : ℤ) ^ (2 - I.down.card)) =
      h ((x * y).left ≫ e) * (h (x.left ≫ e))⁻¹ * (h (y.left ≫ e))⁻¹ * h ((1 : T ⟶ B).left ≫ e) := by
  refine Eq.trans (Finset.prod_congr rfl fun I _ => ?_) (GlobalTheory.PrimCocycle.prod_lam x y (fun q => h (q ≫ e)))
  rw [← Category.assoc f₁, hf]
  simp only [Category.assoc]

theorem lamFneg {S : Scheme.{0}} {B T : Over S} [GrpObj B] [IsCommMonObj B] {X : Scheme.{0}} (x y : T ⟶ B)
    (e : B.left ⟶ X) {U : Type} [CommGroup U] (h : (T.left ⟶ X) → U) :
    ∏ I : ULift.{0} (Finset (Fin 2)), h ((lift x y).left ≫ (psum B (x2 B) I.down).left ≫ e) ^ (-((-1 : ℤ) ^ (2 - I.down.card))) =
      (h ((x * y).left ≫ e) * (h (x.left ≫ e))⁻¹ * (h (y.left ≫ e))⁻¹ * h ((1 : T ⟶ B).left ≫ e))⁻¹ :=
  (GlobalTheory.MumBil.prodNeg (fun I : ULift.{0} (Finset (Fin 2)) => h ((lift x y).left ≫ (psum B (x2 B) I.down).left ≫ e))
    (fun I => (-1 : ℤ) ^ (2 - I.down.card))).trans
    (congrArg (·⁻¹) (lamF x y (lift x y).left (𝟙 _) (Category.comp_id _) e h |>.symm.trans (Finset.prod_congr rfl fun I _ => by rw [Category.id_comp])).symm)

theorem isPullDeg_of_primitive : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D D' : DegData R (maximalIdeal R)) (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] [Module O D'.toPre.X] (o : D.toPre.OAct O) (o' : D'.toPre.OAct O) (w : O), TraceFormTwistIso D.toPre o w → TraceFormTwistIso D'.toPre o' w → ∀ (Φ : D'.toPre.P.A ≅ D.toPre.P.A) (xe : D'.toPre.X ≃+ D.toPre.X), IsMonHom Φ.hom → ((∀ a, o'.onB.act a ≫ Φ.hom = Φ.hom ≫ o.onB.act a) ∧ (∀ (a : O) x, xe (a • x) = a • xe x) ∧ (∀ x, D'.toPre.c x ≫ Φ.hom = D.toPre.c (xe x))) → (∃ wΛ : (letI := D.toPre.P.isAb.comm; letI := D'.toPre.P.isAb.comm; LB.Iso (abelian₂ D'.toPre.P.A D'.toPre.P.L) ((abelian₂ D.toPre.P.A D.toPre.P.L).pull (lift (fst D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) (snd D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) : G2 D'.toPre.P.A ⟶ G2 D.toPre.P.A).left)), wΛ.IsGen ∧ ∀ a b z J J', Good D.toPre.P.L z J → Good D'.toPre.P.L z J' → val (D'.toPre.tau a b) (𝟙 _) z J' = GlobalTheory.PolDeg.lamVal wΛ (lift (toUnit (TK R) ≫ D'.toPre.c a) (toUnit (TK R) ≫ D'.toPre.c b)).left z J J' * val (D.toPre.tau (xe a) (xe b)) (𝟙 _) z J) → ∃ hD : IsPullDeg (RingHom.id R) D.toPre D'.toPre, hD.xe = xe ∧ hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R)) = Φ.hom.left := by
  intro R _ _ _ hR D D' O _ _ _ _ o o' w hw hw' Φ xe hΦ hlin hwΛ
  obtain ⟨hact, hxe, hc⟩ := hlin
  obtain ⟨wΛ, gΛ, vΛ⟩ := hwΛ
  obtain ⟨u, hu, hu0, hup⟩ := hw
  obtain ⟨u', hu', hu0', hup'⟩ := hw'
  have hM := D.toPre.P.isLB
  have hM' := D'.toPre.P.isLB
  have P₁ := isPart_inl D'.toPre.P.L D.toPre.P.L
  have P₂ := isPart_inr D'.toPre.P.L D.toPre.P.L
  have hN := join_isLB hM' hM
  obtain ⟨t₁, ht₁, vt₁⟩ := exists_gen_of_iso P₂ P₁ wΛ gΛ
  have g₁ := DVR.pullGen_isGen _ _ _ t₁ ht₁ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left
  have g₂ := P₁.gen_isGen hu'
  have g₃ := P₂.gen_isGen (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ u hu Φ.hom.left))
  have g₄ := P₂.gen_isGen (DVR.pullGen_isGen _ _ _ D.toPre.rig D.toPre.rig_gen (toUnit D'.toPre.P.A).left)
  have g₅ := P₁.gen_isGen (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ D'.toPre.rig D'.toPre.rig_gen (toUnit D'.toPre.P.A).left))
  have g := DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.mulGen_isGen _ _ _ _ _ _ _ g₁ g₂) g₃) g₄) g₅
  have E1 : (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left ≫ (lift (fst D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) (snd D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom)).left = (lift Φ.hom (o'.onB.act w ≫ Φ.hom)).left := by
    rw [← Over.comp_left, comp_lift, lift_fst_assoc, lift_snd_assoc, Category.id_comp]
  have q1 : (Φ.hom * (o'.onB.act w ≫ Φ.hom)).left = Φ.hom.left ≫ (padd D.toPre.P.A (𝟙 _) (o.onB.act w)).left := by
    rw [← Over.comp_left]
    refine congrArg Over.Hom.left ?_
    show _ = Φ.hom ≫ (𝟙 _ * o.onB.act w)
    rw [MonObj.comp_mul, Category.comp_id, hact]
  have q2 : (o'.onB.act w ≫ Φ.hom).left = Φ.hom.left ≫ (o.onB.act w).left := by
    rw [← Over.comp_left, hact]
  have q3 : (1 : D'.toPre.P.A ⟶ D.toPre.P.A).left = (toUnit D'.toPre.P.A).left ≫ eSec D.toPre.P.A := rfl
  have q4 : Φ.hom.left ≫ (toUnit D.toPre.P.A ≫ η).left = (toUnit D'.toPre.P.A).left ≫ eSec D.toPre.P.A := by
    rw [← Over.comp_left, ← Category.assoc, comp_toUnit]; rfl
  have q6 : (𝟙 D'.toPre.P.A * o'.onB.act w).left = (padd D'.toPre.P.A (𝟙 _) (o'.onB.act w)).left := rfl
  have q8 : (1 : D'.toPre.P.A ⟶ D'.toPre.P.A).left = (toUnit D'.toPre.P.A).left ≫ eSec D'.toPre.P.A := rfl
  have q9 : (toUnit D'.toPre.P.A ≫ η).left = (toUnit D'.toPre.P.A).left ≫ eSec D'.toPre.P.A := rfl
  obtain ⟨t, ht, vt⟩ := exists_gen hN (φ' := Sum.elim (fun _ : PUnit => Φ.hom.left ≫ coprod.inr) (fun _ : PUnit => coprod.inl)) (ε' := Sum.elim (fun _ => (1:ℤ)) (fun _ => (-1:ℤ))) (by
      intro U _ h
      clear vΛ vt₁ hu0 hup hu0' hup' hxe hc g g₁ g₂ g₃ g₄ g₅ gΛ ht₁ hM hM' hN hu hu'
      simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fintype.prod_unique, Fin.prod_univ_four, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three, Matrix.head_cons, Matrix.tail_cons]
      rw [lamF Φ.hom (o'.onB.act w ≫ Φ.hom) _ _ E1, lamFneg, q1, q2, q3, q4, Category.comp_id, q8, q9, q6]
      simp only [Category.id_comp, Over.id_left]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow, zpow_one]
      clear q1 q2 q3 q4 q6 q8 q9 E1 t₁ u u' P₁ P₂ wΛ xe hΦ hact
      abel) _ g
  obtain ⟨w₀, hw₀, vw₀⟩ := _root_.GlobalTheory.JoinPull.exists_iso_of_joinGen D.toPre.P.L D'.toPre.P.L hM hM' inferInstance inferInstance Φ.hom.left t ht
  have vw : ∀ (Z : Scheme.{0}) (f : Z ⟶ D'.toPre.P.A.left) (z : Z)
      (J : (Z ⟶ D'.toPre.P.A.left ⨿ D.toPre.P.A.left) → (join D'.toPre.P.L D.toPre.P.L).ι),
      Good (join D'.toPre.P.L D.toPre.P.L) z J →
      gw w₀ f z (rr J (f ≫ Φ.hom.left)) (rl J f) =
        GlobalTheory.PolDeg.lamVal wΛ (f ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left) z (rr J) (rl J) * val u' f z (rl J) *
          (val u (f ≫ Φ.hom.left) z (rr J))⁻¹ * val D.toPre.rig (f ≫ (toUnit D'.toPre.P.A).left) z (rr J) *
          (val D'.toPre.rig (f ≫ (toUnit D'.toPre.P.A).left) z (rl J))⁻¹ := by
    intro Z f z J hJ
    rw [vw₀ Z f z J hJ, vt Z f z J hJ, val_mul hJ, val_mul hJ, val_mul hJ, val_mul hJ, val_pull hJ, vt₁ _ _ z J hJ,
      P₁.val_gen _ _ _ hJ, P₂.val_gen _ _ _ hJ, P₂.val_gen _ _ _ hJ, P₁.val_gen _ _ _ hJ, val_inv, val_inv,
      val_pull (P₂.good hJ), val_pull (P₂.good hJ), val_pull (P₁.good hJ)]
    rfl
  haveI := hΦ
  have c0' : D'.toPre.c 0 = 1 := by
    have h := D'.toPre.c_add 0 0
    rw [add_zero] at h
    exact mul_eq_left.1 (h.symm : D'.toPre.c 0 * D'.toPre.c 0 = D'.toPre.c 0)
  have hone : ∀ {T : Over (Spec (CommRingCat.of R))} (s : T ⟶ 𝟙_ (Over (Spec (CommRingCat.of R)))),
      s ≫ η[D'.toPre.P.A] ≫ lift (𝟙 D'.toPre.P.A) (o'.onB.act w) = lift (1 : T ⟶ D'.toPre.P.A) 1 := by
    intro T s
    have e1 : (η[D'.toPre.P.A] : 𝟙_ _ ⟶ D'.toPre.P.A) ≫ o'.onB.act w = η := by
      haveI := o'.onB.hom w; exact IsMonHom.one_hom _
    rw [comp_lift, comp_lift, Category.comp_id, e1, Hom.one_def, toUnit_unique s (toUnit T)]
  have hjK : (toUnit (TK R)).left = jK R := by simpa using Over.w (toUnit (TK R))
  have Z0 : ∀ (Z : Scheme.{0}) (r : Z ⟶ Spec (CommRingCat.of R)) (z : Z)
      (J : (Z ⟶ D'.toPre.P.A.left ⨿ D.toPre.P.A.left) → (join D'.toPre.P.L D.toPre.P.L).ι),
      Good (join D'.toPre.P.L D.toPre.P.L) z J →
      GlobalTheory.PolDeg.lamVal wΛ (r ≫ eSec D'.toPre.P.A ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left) z (rr J) (rl J) = 1 := by
    have E0 : eSec D'.toPre.P.A ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left =
        (lift (1 : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.toPre.P.A) 1).left := by
      rw [eSec, ← Over.comp_left, ← hone (𝟙 _), Category.id_comp]
    have E0' : (lift (1 : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.toPre.P.A) 1).left ≫
        (lift (fst D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom) (snd D'.toPre.P.A D'.toPre.P.A ≫ Φ.hom)).left =
        (lift (1 : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D.toPre.P.A) 1).left := by
      rw [← Over.comp_left, comp_lift, lift_fst_assoc, lift_snd_assoc, MonObj.one_comp]
    intro Z r z J hJ
    have key := _root_.GlobalTheory.Mum.GenOne.val_eq_one_of_generic R (join D'.toPre.P.L D.toPre.P.L) hN _ _ (by
        intro U _ h
        simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fintype.prod_empty, E0]
        rw [lamF 1 1 _ _ E0', lamFneg, _root_.mul_one, _root_.mul_one]
        apply Additive.ofMul.injective
        simp only [ofMul_mul, ofMul_inv, ofMul_one]
        abel)
      (LB.pullGen _ _ _ t₁ (eSec D'.toPre.P.A ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left))
      (DVR.pullGen_isGen _ _ _ _ ht₁ _) (by
        intro y J hJ
        rw [val_pull hJ, vt₁ _ _ y J hJ]
        have E1g : jK R ≫ eSec D'.toPre.P.A ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left =
            (lift (toUnit (TK R) ≫ D'.toPre.c 0) (toUnit (TK R) ≫ D'.toPre.c 0)).left := by
          rw [c0', MonObj.comp_one, ← hone (toUnit (TK R)), Over.comp_left, Over.comp_left, hjK]; rfl
        have v := vΛ 0 0 y (rr J) (rl J) (P₂.good hJ) (P₁.good hJ)
        rw [GlobalTheory.MumBil.tau_zero D'.tau_bimult (P₁.good hJ), map_zero, GlobalTheory.MumBil.tau_zero D.tau_bimult (P₂.good hJ),
          _root_.mul_one] at v
        rw [E1g]; exact v.symm) Z r z J hJ
    rw [val_pull hJ, vt₁ _ _ z J hJ] at key
    exact key
  have hE : eSec D'.toPre.P.A ≫ Φ.hom.left = eSec D.toPre.P.A := by
    rw [eSec, eSec, ← Over.comp_left, IsMonHom.one_hom]
  have hT : eSec D'.toPre.P.A ≫ (toUnit D'.toPre.P.A).left = 𝟙 _ := by
    rw [eSec, ← Over.comp_left, toUnit_unique (η ≫ toUnit D'.toPre.P.A) (𝟙 _)]; rfl
  have exJ : ∀ (Z : Scheme.{0}) (z : Z) (f : Z ⟶ D'.toPre.P.A.left) (p : D.toPre.P.L.ι) (q : D'.toPre.P.L.ι),
      Φ.hom.left (f z) ∈ D.toPre.P.L.U p → f z ∈ D'.toPre.P.L.U q →
      ∃ J, Good (join D'.toPre.P.L D.toPre.P.L) z J ∧ rr J (f ≫ Φ.hom.left) = p ∧ rl J f = q := by
    intro Z z f p q hp hq
    obtain ⟨J, hJ, e⟩ := exists_good (join D'.toPre.P.L D.toPre.P.L) hN z (K := Bool)
      (fun b => if b then (f ≫ Φ.hom.left) ≫ coprod.inr else f ≫ coprod.inl) (fun _ => (q, p)) (fun _ _ _ => rfl) (by
        rintro (_ | _)
        · exact (P₁.mem (q, p) (f z)).2 hq
        · exact (P₂.mem (q, p) _).2 hp)
    exact ⟨J, hJ, congrArg Prod.snd (e true), congrArg Prod.fst (e false)⟩
  have hr : PMaps w₀ (K := PUnit) (fun _ => eSec D'.toPre.P.A) (fun _ => eSec D.toPre.P.A) (fun _ => 1)
      D'.toPre.rig D.toPre.rig (𝟙 _) := by
    intro Z r z p q hp hq
    obtain ⟨J, hJ, ep, eq⟩ := exJ Z z (r ≫ eSec D'.toPre.P.A) (p PUnit.unit) (q PUnit.unit) (hp PUnit.unit) (hq PUnit.unit)
    have v := vw Z (r ≫ eSec D'.toPre.P.A) z J hJ
    rw [ep, eq] at v
    have a1 : GlobalTheory.PolDeg.lamVal wΛ ((r ≫ eSec D'.toPre.P.A) ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left) z
        (rr J) (rl J) = 1 := by
      rw [Category.assoc]; exact Z0 Z r z J hJ
    have a2 : val u' (r ≫ eSec D'.toPre.P.A) z (rl J) = 1 := by
      rw [← val_pull (P₁.good hJ), val_corr (P₁.good hJ) hu0' r, val_one]
    have a3 : val u ((r ≫ eSec D'.toPre.P.A) ≫ Φ.hom.left) z (rr J) = 1 := by
      rw [Category.assoc, hE, ← val_pull (P₂.good hJ), val_corr (P₂.good hJ) hu0 r, val_one]
    have a4 : (r ≫ eSec D'.toPre.P.A) ≫ (toUnit D'.toPre.P.A).left = r := by
      rw [Category.assoc, hT, Category.comp_id]
    have a5 : gm r z (LB.wchart D.toPre.P.L (fun _ => eSec D.toPre.P.A) p) (D.toPre.rig.s p) =
        val D.toPre.rig r z (rr J) := by
      refine (val_of _ _ _ _ p fun k => ?_).symm
      rw [← ep, ← hE, ← Category.assoc]
    have a6 : gm r z (LB.wchart D'.toPre.P.L (fun _ => eSec D'.toPre.P.A) q) (D'.toPre.rig.s q) =
        val D'.toPre.rig r z (rl J) := by
      refine (val_of _ _ _ _ q fun k => ?_).symm
      rw [← eq]
    simp only [Fintype.prod_unique, zpow_one, Category.comp_id]
    rw [v, a1, a2, a3, a4, a5, a6]
    group
  have hx : ∀ x, D'.toPre.xK x ≫ Φ.hom.left = D.toPre.xK (xe x) := fun x => by
    show (toUnit (TK R) ≫ D'.toPre.c x).left ≫ Φ.hom.left = (toUnit (TK R) ≫ D.toPre.c (xe x)).left
    rw [← Over.comp_left, Category.assoc, hc]
  have vΛr : ∀ (a b : D'.toPre.X) (Z : Scheme.{0}) (r : Z ⟶ (TK R).left) (z : Z)
      (J : (Z ⟶ D'.toPre.P.A.left ⨿ D.toPre.P.A.left) → (join D'.toPre.P.L D.toPre.P.L).ι),
      Good (join D'.toPre.P.L D.toPre.P.L) z J →
      val (D'.toPre.tau a b) r z (rl J) = GlobalTheory.PolDeg.lamVal wΛ
        (r ≫ (lift (toUnit (TK R) ≫ D'.toPre.c a) (toUnit (TK R) ≫ D'.toPre.c b)).left) z (rr J) (rl J) *
        val (D.toPre.tau (xe a) (xe b)) r z (rr J) := by
    intro a b Z r z J hJ
    have C := corr_of_val hN (t := P₁.gen (D'.toPre.tau a b))
      (t' := LB.mulGen _ _ _ _ _ (LB.pullGen _ _ _ t₁
        (lift (toUnit (TK R) ≫ D'.toPre.c a) (toUnit (TK R) ≫ D'.toPre.c b)).left) (P₂.gen (D.toPre.tau (xe a) (xe b))))
      (fun y J hJ => by
        rw [P₁.val_gen _ _ _ hJ, val_mul hJ, val_pull hJ, vt₁ _ _ _ _ hJ, P₂.val_gen _ _ _ hJ, Category.id_comp]
        exact vΛ a b y (rr J) (rl J) (P₂.good hJ) (P₁.good hJ))
    have := val_corr hJ C r
    rw [P₁.val_gen _ _ _ hJ, val_mul hJ, val_pull hJ, vt₁ _ _ _ _ hJ, P₂.val_gen _ _ _ hJ] at this
    exact this
  have hψ : ∀ x, PMaps w₀ (K := PUnit) (fun _ => D'.toPre.xK x) (fun _ => D.toPre.xK (xe x)) (fun _ => -1)
      (D'.toPre.psi x) (D.toPre.psi (xe x)) (𝟙 _) := by
    intro x Z r z p q hp hq
    obtain ⟨J, hJ, ep, eq⟩ := exJ Z z (r ≫ D'.toPre.xK x) (p PUnit.unit) (q PUnit.unit) (hp PUnit.unit) (hq PUnit.unit)
    have v := vw Z (r ≫ D'.toPre.xK x) z J hJ
    rw [ep, eq] at v
    have m1 : (r ≫ D'.toPre.xK x) ≫ (lift (𝟙 D'.toPre.P.A) (o'.onB.act w)).left =
        r ≫ (lift (toUnit (TK R) ≫ D'.toPre.c x) (toUnit (TK R) ≫ D'.toPre.c (w • x))).left := by
      rw [Category.assoc, o'.c_lin]
      congr 1
      show (toUnit (TK R) ≫ D'.toPre.c x).left ≫ _ = _
      rw [← Over.comp_left, comp_lift, Category.comp_id, Category.assoc]
    have m2 : (r ≫ D'.toPre.xK x) ≫ Φ.hom.left = r ≫ D.toPre.xK (xe x) := by rw [Category.assoc, hx]
    have m3 : (r ≫ D'.toPre.xK x) ≫ (toUnit D'.toPre.P.A).left = r ≫ (toUnit (TK R)).left := by
      rw [Category.assoc]; congr 1
      show (toUnit (TK R) ≫ D'.toPre.c x).left ≫ _ = _
      rw [← Over.comp_left, Category.assoc, toUnit_unique (D'.toPre.c x ≫ toUnit _) (𝟙 _), Category.comp_id]
    rw [m1, m2, m3] at v
    have A := val_corr (P₁.good hJ) (hup' x) r
    rw [val_mul (P₁.good hJ), val_mul (P₁.good hJ), val_pull (P₁.good hJ), DegPre.rigK, val_pull (P₁.good hJ)] at A
    have B := val_corr (P₂.good hJ) (hup (xe x)) r
    rw [val_mul (P₂.good hJ), val_mul (P₂.good hJ), val_pull (P₂.good hJ), DegPre.rigK, val_pull (P₂.good hJ)] at B
    have Cc := vΛr x (w • x) Z r z J hJ
    rw [hxe] at Cc
    have a5 : gm (r ≫ 𝟙 _) z (LB.wchart D.toPre.P.L (fun _ => D.toPre.xK (xe x)) p) ((D.toPre.psi (xe x)).s p) =
        val (D.toPre.psi (xe x)) r z (rr J) := by
      rw [Category.comp_id]
      refine (val_of _ _ _ _ p fun k => ?_).symm
      rw [← ep, ← hx, ← Category.assoc]
    have a6 : gm r z (LB.wchart D'.toPre.P.L (fun _ => D'.toPre.xK x) q) ((D'.toPre.psi x).s q) =
        val (D'.toPre.psi x) r z (rl J) := by
      refine (val_of _ _ _ _ q fun k => ?_).symm
      rw [← eq]
    simp only [Fintype.prod_unique]
    rw [a5, a6, v, eq_mul_inv_of_mul_eq B.symm, eq_mul_inv_of_mul_eq A.symm, Cc]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv, ofMul_zpow]
    abel
  have hs := specOf_id R
  have gp : IsGrpPullback D'.toPre.P.A D.toPre.P.A (specOf (RingHom.id R)) Φ.hom.left :=
    (isGrpPullback_of_iso Φ).congr hs.symm rfl
  obtain ⟨e, me, hF⟩ := grpPullback_iso gp (isGrpPullback_pullback D.toPre.P.A (specOf (RingHom.id R)))
  obtain ⟨w', g', r', ψ'⟩ := GlobalTheory.UnifUniq.exists_transport hF
    (fun (F : D'.toPre.P.A.left ⟶ D.toPre.P.A.left) (w : LB.Iso D'.toPre.P.L (D.toPre.P.L.pull F)) => w.IsGen ∧
      PMaps w (K := PUnit) (fun _ => eSec D'.toPre.P.A) (fun _ => eSec D.toPre.P.A) (fun _ => 1)
        D'.toPre.rig D.toPre.rig (𝟙 _) ∧
      ∀ x, PMaps w (K := PUnit) (fun _ => D'.toPre.xK x) (fun _ => D.toPre.xK (xe x)) (fun _ => -1)
        (D'.toPre.psi x) (D.toPre.psi (xe x)) (𝟙 _)) w₀ ⟨hw₀, hr, hψ⟩
  obtain ⟨W, hW, ⟨ψW⟩⟩ := GlobalTheory.PsiSpread.exists_psiOn D.toPre D.tau_bimult
  have hc₁' : ∀ x, (D'.toPre.c x).left ≫ Φ.hom.left = (D.toPre.c (xe x)).left := fun x => by
    rw [← Over.comp_left, hc]
  obtain ⟨hD, e₁, -, e₃⟩ := GlobalTheory.UnifUniq.exists_isPullDeg_id D.toPre D'.toPre W hW ψW e me w' g'
    ((congrArg (_ ≫ ·) hF).trans hE) r' xe (fun x => (congrArg (_ ≫ ·) hF).trans (hc₁' x)) ψ'
  exact ⟨hD, e₃, by rw [e₁]; exact hF⟩

end GlobalTheory.PrimPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPullbackAlongIdLiesOverDataIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPullbackAlongIdLiesOverDataIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomCharacterMapConstant\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTangentOfIsLieImage\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsAdicColimitOfFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.Mum.Two.PullLin

open GlobalTheory.Mum.Two.HomConst

theorem map_fstG {R : Type} [CommRing R] (I : Ideal R) (e : ℕ) (G : Over (Sp R)) (ψ : G ⟶ G) :
    ((Over.pullback (thick R I e)).map ψ).left ≫ (fstG I e G).left = (fstG I e G).left ≫ ψ.left := by
  simp [fstG]

end GlobalTheory.Mum.Two.PullLin


open GlobalTheory.Mum.Two.PullLin GlobalTheory.Mum.Two.HomConst in
theorem GlobalTheory.Mum.Two.isPullUnif_id_over₀_onTorus : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (D' : DegData R (maximalIdeal R)) (A' : PolAV (Sp (FractionRing R))) (U' : Unif (maximalIdeal R) D' A' G), ∀ (hD : IsPullDeg (RingHom.id R) D.toPre D'.toPre) (ψ : G ⟶ G) (bc : G ≅ (Over.pullback (specOf (RingHom.id R))).obj G) (b : D'.toPre.P.A ⟶ D.toPre.P.A), IsMonHom ψ → bc.hom.left ≫ pullback.fst G.hom (specOf (RingHom.id R)) = ψ.left → hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R)) = b.left → IsPullUnif (RingHom.id R) hD bc U U' → Over₀ U'.toUnifPre U.toUnifPre ψ b ∧ OnTorus U'.toUnifPre U.toUnifPre ψ hD.xe.symm := by
  intro R _ _ _ hB D A G _ _ hG U D' A' U' hD ψ bc b hψ hbc hb hP
  obtain ⟨hR, -⟩ := hB
  obtain ⟨wL, -, he, -, hlev⟩ := hP.lg

  have lev : ∀ e, ∃ h : (thickObj R (maximalIdeal R) e G).left ⟶ (thickObj R (maximalIdeal R) e G).left,
      h = ((Over.pullback (thick R (maximalIdeal R) e)).map ψ).left ∧
      (U'.gt e).pG.left ≫ hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R)) =
        h ≫ (U.gt e).pG.left ∧
      (∀ x : D'.toPre.X, ∃ hψ : ∀ k : Fin 4,
          D'.toPre.Oφ ((U'.gt e).pG) x k ≫ hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R)) =
            h ≫ D.toPre.Oφ ((U.gt e).pG) (hD.xe x) k,
        LB.Gen.Maps (LB.linCombIso hD.w _ Oinvε) ((U'.gt e).t x)
          (GeneratorPullback.pullAlong D.toPre.P.L (hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R))) h _
            Oinvε _ hψ ((U.gt e).t (hD.xe x)))) := by
    intro e
    obtain ⟨h, h1, h2, h3, -⟩ := hlev e
    have : Mono (fstG (maximalIdeal R) e G).left :=
      inferInstanceAs (Mono (pullback.fst G.hom (thick R (maximalIdeal R) e)))
    refine ⟨h, (cancel_mono (fstG (maximalIdeal R) e G).left).1 ?_, h2, h3⟩
    rw [h1, hbc, map_fstG]
  refine ⟨fun e => ?_, ?_⟩
  · obtain ⟨h, rfl, h2, -⟩ := lev e
    have : Mono (pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e)) := inferInstance
    refine Over.OverMorphism.ext ((cancel_mono (pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e))).1 ?_)
    rw [hb] at h2
    clear lev hlev hP wL he
    simp only [Over.comp_left, Category.assoc]
    refine Eq.trans ?_ (h2.symm.trans ?_)
    · rfl
    · show (U'.gt e).q.left ≫ pullback.fst D'.toPre.P.A.hom (thick R (maximalIdeal R) e) ≫ b.left = _
      congr 1
      exact (pullback.lift_fst _ _ _).symm
  · obtain ⟨-, -, -, hC⟩ := id hR
    obtain ⟨h₀, hT⟩ := GlobalTheory.Mum.Two.unifPre_hom_character_const R (maximalIdeal R) hR D' D A' A G G U'.toUnifPre
      U.toUnifPre ψ hψ
    have key : (h₀ : D.toPre.X → D'.toPre.X) = hD.xe.symm := by
      haveI := hC
      obtain ⟨t, ht, hi⟩ := hT 0
      refine acts_unique (U'.gt 0) (U.gt 0) (acts_of_torusHomOf _ _ _ ht hi) ?_
      obtain ⟨h, rfl, -, h3⟩ := lev 0
      clear lev hlev hP wL he hT ht hi
      intro Z r z J₁ J₂ hJ₁ hJ₂ c χ
      obtain ⟨x, rfl⟩ := hD.xe.surjective χ
      rw [AddEquiv.symm_apply_apply]
      obtain ⟨hψk, M⟩ := h3 x
      have P := (maps_iff hD.w _ _ Oinvε _ _ _ _ (GeneratorPullback.pullAlong_le _ _ _ _ _ hψk ·) (fun _ => rfl)).1 M
      have e := P Z r z
        (fun k => J₂ ((r ≫ D'.toPre.Oφ (U'.gt 0).pG x k) ≫ hD.e.hom.left ≫
          pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R))))
        (fun k => J₁ (r ≫ D'.toPre.Oφ (U'.gt 0).pG x k)) (fun k => hJ₂ _) (fun k => hJ₁ _)
      have h1 := GlobalTheory.ArcLieCompare.prod_Oφ_zero (D := D'.toPre) (U'.gt 0).pG r
        (r ≫ (fstG (maximalIdeal R) 0 G).left ≫ G.hom) (c.trans (by simp only [Category.assoc])) x
        (fun f => gw hD.w f z (J₂ (f ≫ hD.e.hom.left ≫ pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R)))) (J₁ f))
      rw [h1, _root_.one_mul] at e
      rw [val_of _ _ z J₂
          (fun k => J₂ ((r ≫ D'.toPre.Oφ (U'.gt 0).pG x k) ≫ hD.e.hom.left ≫
            pullback.fst D.toPre.P.A.hom (specOf (RingHom.id R))))
          (fun k => by simp only [Category.assoc, hψk k]),
        val_of _ r z J₁ (fun k => J₁ (r ≫ D'.toPre.Oφ (U'.gt 0).pG x k)) (fun k => rfl)]
      exact e
    rw [key] at hT
    exact hT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPullbackAlongIdLiesOverDataIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomExtOfInducedMaps =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomExtOfInducedMaps", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianPartIsoIsMonHomAndRigidified\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsHomOfPullbackId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

namespace GlobalTheory.Mum.Two

theorem torusHomOf_iff_appTop {S : Scheme.{0}} {X X' : Type} [AddCommGroup X] [AddCommGroup X'] (h : X' → X)
    (t : splitTorus S X ⟶ splitTorus S X') : TorusHomOf h t ↔
      ∀ χ, t.left.appTop.hom (charUnit S X' χ).val = (charUnit S X (h χ)).val := by
  refine forall_congr' fun χ => ?_
  have : (res (fun x _ => show t.left.base x ∈ (⊤ : TopologicalSpace.Opens _) from trivial)
      (pullU t.left ⊤ (charUnit S X' χ)) : Γ((splitTorus S X).left, ⊤)ˣ).val =
      t.left.appTop.hom (charUnit S X' χ).val := by
    rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]; rfl
  rw [← this, Units.ext_iff]

theorem torusHomOf_unique {S : Scheme.{0}} {X X' : Type} [AddCommGroup X] [AddCommGroup X'] {h : X' → X}
    {t t' : splitTorus S X ⟶ splitTorus S X'} (ht : TorusHomOf h t) (ht' : TorusHomOf h t') : t = t' := by
  refine (splitTorusPointsEquiv S X' _).injective (MonoidHom.ext fun χ => Units.ext ?_)
  obtain ⟨χ, rfl⟩ := Multiplicative.ofAdd.surjective χ
  rw [splitTorusPointsEquiv_val, splitTorusPointsEquiv_val, (torusHomOf_iff_appTop _ _).1 ht,
    (torusHomOf_iff_appTop _ _).1 ht']

theorem hom_eq_of_over₀_onTorus : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (D' : DegData R (maximalIdeal R)) (A' : PolAV (Sp (FractionRing R))) (U' : Unif (maximalIdeal R) D' A' G), ∀ (g g' : G ⟶ G) (b : D'.toPre.P.A ⟶ D.toPre.P.A) (h : D.toPre.X → D'.toPre.X), IsMonHom g → IsMonHom g' → Over₀ U'.toUnifPre U.toUnifPre g b → Over₀ U'.toUnifPre U.toUnifPre g' b → OnTorus U'.toUnifPre U.toUnifPre g h → OnTorus U'.toUnifPre U.toUnifPre g' h → g = g' := by
  intro R _ _ _ hR D A G _ _ hG U D' A' U' g g' b h hg hg' q₁ q₂ i₁ i₂
  have : IsNoetherianRing R := hR.1.1
  have : Smooth G.hom := hG.smooth
  have : GeometricallyConnected G.hom := hG.geomConnected
  have : IsSeparated G.hom := hG.separated
  refine GlobalTheory.AbelianPartIso.hom_eq_of_map_eq (IsLocalRing.maximalIdeal_le_jacobson _) G g g' fun e => ?_
  obtain ⟨t, ht, j₁⟩ := i₁ e
  obtain ⟨t', ht', j₂⟩ := i₂ e
  have htt : t = t' := torusHomOf_unique ht ht'
  have := (U.gt e).i_hom
  exact GlobalTheory.LinearUnifIso.hom_ext_torus (U.gt e) (U'.gt e) GlobalTheory.globalFns_holds _ _
    ((q₁ e).trans (q₂ e).symm) (j₁.trans (htt ▸ j₂.symm))

end GlobalTheory.Mum.Two
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomExtOfInducedMaps =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUBalanced =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUBalanced", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SeriesFrame\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRingActionDegenerationLinearUniformisation\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiFunctionEqThetaOfPrimitiveLineBundle\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistBaseChangeAndValuationStatements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT

namespace GlobalTheory.UT

theorem allU_balanced : AllU fun {_} _ _ {_} {_} {_} {_} _ _ U => Cl.Balanced U := by
  obtain ⟨-, h1, h2, h3, h4⟩ := GlobalTheory.twistBaseChange_and_valuation_statements
  intro R _ _ _ I hI D A G _ _ hG U
  exact ⟨GlobalTheory.RingActData.exists_oAct GlobalTheory.firstFiveLaws h1 h2 h3 h4 R I hI D A G hG U,
    GlobalTheory.PsiPrim.traceFormTwistIso_of_primitive_lineBundle GlobalTheory.firstFiveLaws h1 h2 h3 h4 R I hI D A G hG U⟩

end GlobalTheory.UT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUBalanced =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormData =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormData", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCpEvenOn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVGeneric\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationCompleteLocalEvenOnTorus\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoMumfordAdjointPrimitiveOfTwist\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarisedDegenerationDataIsoOfMumfordBundleIsoStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegenerationDataIsoOfPolarisedIsoStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationDeterminedByDegenerationDataNormal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationPullbackAlongIdLiesOverDataIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupHomExtOfInducedMaps\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaOfTranslDiff\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUBalanced\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationTripleLinearTorsionIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

namespace GlobalTheory.Mum

theorem mumfordBundle_primitive_of_evenNorm_data : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ (w : O) (ν : ℕ), w + star w = 1 → w * star w = (ν : O) → 1 ≤ ν → Even ν → TraceFormTwistIso D.toPre o w → LBIso U.LG.L (cubeLB G ![𝟙 G, oG.act w] U.LG.L) := by
  intro R _ _ _ hR D A G _ _ hG U O _ _ _ o oA oG hlin w ν hw hν hν1 hev hpsi
  haveI : CharZero R := hR.2
  obtain ⟨P, hP, hE⟩ := GlobalTheory.Mum.PrimCube.exists_cp_evenOn R hR D A G hG U O o oA oG hlin w hw hpsi
  obtain ⟨A', gen', hgen, hgL⟩ := GlobalTheory.Mum.GenPol.exists_polAV_generic R hR D A G hG U O o oA oG hlin w hw hpsi P hP
  obtain ⟨D', U', hLG, -⟩ := GlobalTheory.Mum.exists_unif_even R hR G P hG hE A' gen' hgen hgL
  obtain ⟨hlam, hadj, hprim⟩ := _root_.GlobalTheory.Mum.NormLam.lbIso_lam_adj_prim R hR D A G hG U O o oA oG hlin w hw P hP
  rw [← hLG] at hlam hadj hprim
  obtain ⟨hbal1, hbal2⟩ := GlobalTheory.UT.allU_balanced R (maximalIdeal R) hR.1 D' A' G hG U'
  obtain ⟨oA', hoA'⟩ := GlobalTheory.PELOfUnif.exists_oAct_unif U'.toUnifPre oG hadj
  obtain ⟨md, o', hlin'⟩ := hbal1 O oA' oG hoA' hadj
  letI := md
  have hpsi' : TraceFormTwistIso D'.toPre o' w := hbal2 O o' oA' oG hlin' hadj w ν hw hν hν1 hev hprim
  obtain ⟨Φ, xe, hΦ, hov, hto, hcB, hxs, hxc, hwΛ⟩ :=
    _root_.GlobalTheory.Mum.SameLam.iso_of_lbIso_lam R hR D A G hG U O o oA oG hlin D' A' U' o' oA' hlin' hlam
  obtain ⟨hD, hxe, heΦ⟩ := _root_.GlobalTheory.PrimPull.isPullDeg_of_primitive R hR D D' O o o' w hpsi hpsi' Φ xe hΦ ⟨hcB, hxs, hxc⟩ hwΛ
  obtain ⟨ψ, bc, φ, hψ, hbc, hcomp, hpu, -⟩ := GlobalTheory.unif_determined_by_data_normal R hR.1 D A G hG U D' A' G hG U' hD
  obtain ⟨hov', hto'⟩ := _root_.GlobalTheory.Mum.Two.isPullUnif_id_over₀_onTorus R hR D A G hG U D' A' U' hD ψ.hom bc Φ.hom hψ hcomp heΦ hpu
  rw [hxe] at hto'
  have h1 : ψ.hom = 𝟙 G := _root_.GlobalTheory.Mum.Two.hom_eq_of_over₀_onTorus R hR D A G hG U D' A' U' ψ.hom (𝟙 G) Φ.hom xe.symm hψ inferInstance hov' hov hto' hto
  obtain ⟨wL, hwL, -⟩ := hpu.lg
  have hc : bc.hom.left ≫ pullback.fst G.hom (specOf (RingHom.id R)) = 𝟙 G.left := by
    rw [hcomp, h1]; rfl
  have e1 : LBIso U'.LG.L (U.LG.L.pull (bc.hom.left ≫ pullback.fst G.hom (specOf (RingHom.id R)))) := ⟨wL, hwL⟩
  rw [hc, hLG] at e1
  have hL := U.LG.isLB
  have hPL := P.L.isLB
  have hN : (cubeLB G ![𝟙 G, oG.act w] U.LG.L).IsLB := GlobalTheory.LamCalc.cubeLB_isLB hL _
  have hL1 : (U.LG.L.pull (𝟙 G.left)).IsLB := pull_isLB hL _
  have e0 : LBIso U.LG.L (U.LG.L.pull (𝟙 G.left)) := (GlobalTheory.DescendedPrincipal.lbIso_pull_id hL).symm
  exact LBIso.trans hL hPL hN (LBIso.trans hL hL1 hPL e0 e1.symm) hP

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormData =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormDataStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormDataStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

theorem _root_.GlobalTheory.T.lbIso_cubeLB_of_even_norm : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [CommRing O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG → ∀ (w : O) (ν : ℕ), w + star w = 1 → w * star w = (ν : O) → 1 ≤ ν → Even ν → TraceFormTwistIso D.toPre o w → LBIso U.LG.L (cubeLB G ![𝟙 G, oG.act w] U.LG.L) := by
  first | exact @GlobalTheory.Mum.mumfordBundle_primitive_of_evenNorm_data
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormDataStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNorm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsCoprimeTwoSubRtTwoAddRt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSemiAbelianUniformisationCompleteNormalBaseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundlePrimitiveOfEvenNormDataStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationRingActionAdjointCubeBundle\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.IsSymmetricOfSymmetryGenerator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.UChart

theorem w_zero_mul_conj_eq_norm {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) :
    H.w0 * H.bar H.w0 = (((H.d + 1) / 4 : ℕ) : 𝓞 E) := by
  obtain ⟨m, hm⟩ : ∃ m, H.d + 1 = 4 * m := ⟨(H.d + 1) / 4, by have := H.d_mod; omega⟩
  have e : (H.d + 1) / 4 = m := by omega
  have hm' : (H.d : 𝓞 E) + 1 = 4 * m := by exact_mod_cast hm
  rw [e, GlobalTheory.HostModel.cmHost_bar_halfIntegerGenerator]
  have h4 : (4 : 𝓞 E) ≠ 0 := by norm_num
  apply mul_left_cancel₀ h4
  linear_combination (-(2 * H.w0 + H.rt - 1)) * H.two_weight_eq_one_add_root - H.rt_sq + hm'

theorem exists_sab_pelUnif_of_norm {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (R : Type)
    [CommRing R] [IsDomain R] [IsLocalRing R] (hR : Base R) (D : DegData R (maximalIdeal R))
    [inst : Module (𝓞 E) D.toPre.X] (oD : letI := H.starRing; D.toPre.OAct (𝓞 E))
    (hw : letI := H.starRing; TraceFormTwistIso D.toPre oD H.w0) :
    ∃ (t : SAB H (Sp R)) (P : PELUnif (maximalIdeal R) t), P.D = D ∧ HEq P.mod inst ∧ HEq P.oD oD := by
  letI := H.starRing
  obtain ⟨G, iG, cG, A, hG, ⟨U⟩⟩ := GlobalTheory.T.hasSemiAbelianUniformisation_complete_normal_base R hR D
  obtain ⟨oA, oG, hl⟩ := _root_.GlobalTheory.Mum.exists_oLinear_of_oAct R hR D A G hG U (𝓞 E) oD
  have hd := H.d_mod
  let t : SAB H (Sp R) :=
    { G := G
      semi := hG
      act := ofRingAct oG
      PP := U.LG
      cub := U.cubG
      sym := GlobalTheory.isSymmetric_of_symmetry_generator U.LG U.symG U.symG_gen U.symG_rig
      adj := fun a => GlobalTheory.Mum.UnifAdjoint.lbIso_cubeLB_star R hR.1 D A G hG U (𝓞 E) oD oA oG hl a
      prim := GlobalTheory.T.lbIso_cubeLB_of_even_norm R hR D A G hG U (𝓞 E) oD oA oG hl H.w0 ((H.d + 1) / 4)
        (by show H.w0 + H.bar H.w0 = 1; rw [GlobalTheory.HostModel.cmHost_bar_halfIntegerGenerator, add_sub_cancel]) (w_zero_mul_conj_eq_norm H) (by omega)
        (Nat.even_iff.2 (by omega)) hw }
  exact ⟨t, ⟨D, oD, A, oA, U, rfl, hl, hw⟩, rfl, HEq.rfl, HEq.rfl⟩

end GlobalTheory.UChart
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNormStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNormStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNormStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationDataNsmulRescaleKeepsLawsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSemiAbelianPelUniformisationOfNormStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GensOfPsiUnitOn\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRootOfIsAlgClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon.FamFrom

theorem rescale_inv_psi {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (g : D.X → (FractionRing R)ˣ) (χ : D.X) :
    (GlobalTheory.PolDeg.rescale (GlobalTheory.PolDeg.rescale D g) (fun y => (g y)⁻¹)).psi χ = D.psi χ := by
  apply _root_.GlobalTheory.PullDegResc.rescale_inv <;> assumption

theorem isPullDeg_rescale_inv {W R : Type} [CommRing W] [IsDomain W] [CommRing R] [IsDomain R] (φ : W →+* R)
    (D₀ : DegPre W) (D : DegPre R) (g : D.X → (FractionRing R)ˣ) (hD : IsPullDeg φ D₀ D) :
    ∃ h : IsPullDeg φ D₀ (GlobalTheory.PolDeg.rescale (GlobalTheory.PolDeg.rescale D g) (fun y => (g y)⁻¹)),
      (∀ y, h.xe y = hD.xe y) ∧ h.e.hom.left = hD.e.hom.left :=
  ⟨{ hD with psi_pr := fun x => (rescale_inv_psi D g x).symm ▸ hD.psi_pr x }, fun _ => rfl, rfl⟩

end GlobalTheory.UCanon.FamFrom

namespace GlobalTheory.UCanon.FamFrom

theorem main : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D' : Datum H} {l : Geo.Tor.Level H} {c : Coeff l} (L : LowBase D' c) (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], GlobalTheory.Mum.Base R → ∀ (iw : L.W →+* R), Function.Injective iw → ∀ (m N : ℕ) (s : Fin m ⊕ Fin N → R) (ε : Fin m ⊕ Fin N → LinearMap.BilinForm ℤ L.D.X), (∀ k, ε k ∈ balForms H.bar L.D.X) → (∀ i, s (.inl i) ∈ maximalIdeal R ∧ s (.inl i) ≠ 0) → (∀ j, IsUnit (s (.inr j))) → (∀ i y, 0 ≤ ε (.inl i) y y) → (∀ y, y ≠ 0 → 0 < ∑ i, ε (.inl i) y y) → Nontrivial L.D.X → ∃ (t : SAB H (Sp R)) (P : PELUnif (maximalIdeal R) t) (e : P.D.toPre.X ≃ₗ[𝓞 E] L.D.X), DivFrom L P.D.toPre P.oD iw s ε e ∧ IsMonomial P.D.toPre (fun i => s (.inl i)) (fun i => (l.M' : ℤ) • pull e.toLinearMap (ε (.inl i))) := by
  intro E _ _ _ H Dl l c L R _ _ _ hB iw hiw m N s ε hε hs hu hpos hdef hnt
  letI := H.starRing
  have hw : H.w0 + star H.w0 = 1 := GlobalTheory.TauTwist.halfUnit_add_star H
  have hM : 0 < l.M' := Nat.lcm_pos (by have := l.three_le; omega) l.A_pos
  letI iD : Module (𝓞 E) (mulDeg L.D l.M').X := L.mod
  obtain ⟨he0, hb0, hU0, oa0, hoa0, hW0⟩ := _root_.GlobalTheory.UCanon.MulDeg.mulDeg_laws L.W L.D (𝓞 E) L.oa H.w0 l.M' L.even L.bimult L.w0 L.gen
  have hne : ∃ i, ε (.inl i) ≠ 0 := by
    obtain ⟨y, hy⟩ := exists_ne (0 : L.D.X)
    have h := hdef y hy
    obtain ⟨i, -, hi⟩ := Finset.exists_ne_zero_of_sum_ne_zero h.ne'
    exact ⟨i, fun h0 => hi (by rw [h0]; rfl)⟩
  obtain ⟨D'', hD, iM, e, hxe, hPE, hTB, hPI, hfin, ⟨oa1, hoa1, hPW⟩, hmono, -, -, -⟩ :=
    GlobalTheory.UTautData.main L.W R (maximalIdeal R) iw hiw (mulDeg L.D l.M') (𝓞 E) oa0 H.w0 hw he0 hb0 hW0 hU0
      (fun i => s (.inl i)) (fun i => (hs i).2) (fun i => (hs i).1) (fun j => (hu j).unit) l.M' hM
      (fun i => ε (.inl i)) (fun j => ε (.inr j)) (fun i => hε _) hpos (fun j => hε _) hdef hne

  set T := GlobalTheory.UTautData.taut D'' e H.w0 (fun i => s (.inl i)) (fun i => (hs i).2) (fun j => (hu j).unit) l.M'
    (fun i => ε (.inl i)) (fun j => ε (.inr j)) with hT
  let D1 : DegData R (maximalIdeal R) := ⟨T, hPE, hTB, hPI, hfin⟩
  obtain ⟨t, P, hPD, hmod, hoD⟩ := _root_.GlobalTheory.UChart.exists_sab_pelUnif_of_norm H R hB D1 (inst := iM) oa1 hPW
  have key : ∀ (Dd : DegData R (maximalIdeal R)) [im : Module (𝓞 E) Dd.toPre.X] (od : Dd.toPre.OAct (𝓞 E)),
      Dd = D1 → HEq im iM → HEq od oa1 → ∃ e' : Dd.toPre.X ≃ₗ[𝓞 E] L.D.X,
        DivFrom L Dd.toPre od iw s ε e' ∧
        IsMonomial Dd.toPre (fun i => s (.inl i)) (fun i => (l.M' : ℤ) • pull e'.toLinearMap (ε (.inl i))) := by
    rintro Dd im od rfl h1 h2
    have h1' := eq_of_heq h1
    subst im
    have h2' := eq_of_heq h2
    subst od
    letI : Module (𝓞 E) D1.toPre.X := iM
    let e₁ : D1.toPre.X ≃ₗ[𝓞 E] L.D.X := e
    refine ⟨e₁, ?_, hmono⟩
    obtain ⟨h2p, hx2, he2⟩ := isPullDeg_rescale_inv iw (mulDeg L.D l.M') D''
      (GlobalTheory.UTautData.scaleFn (GlobalTheory.UTautData.coordsK (fun i => s (.inl i)) (fun i => (hs i).2) (fun j => (hu j).unit))
        H.w0 (GlobalTheory.UTautData.forms l.M' (fun i => pull e.toLinearMap (ε (.inl i)))
          (fun j => pull e.toLinearMap (ε (.inr j))))) hD
    refine ⟨_, h2p, fun y => ?_, fun y => (hx2 y).trans (hxe y).symm, fun x => ?_⟩
    · rw [inv_inv]
      refine (GlobalTheory.UTautData.scaleFn_coe _ _ _ _ _ _ _ _).trans ?_
      rw [Fintype.prod_sum_type]
      congr 1
      · refine Finset.prod_congr rfl fun i _ => ?_
        have h3 : e₁ (H.w0 • y) = H.w0 • e₁ y := e₁.map_smul H.w0 y
        show _ = algebraMap R (FractionRing R) (s (.inl i)) ^ ((l.M' : ℤ) * ε (.inl i) (e₁ y) (H.w0 • e₁ y))
        rw [← h3]
        rfl
      · refine Finset.prod_congr rfl fun j _ => ?_
        have h3 : e₁ (H.w0 • y) = H.w0 • e₁ y := e₁.map_smul H.w0 y
        show _ = algebraMap R (FractionRing R) (s (.inr j)) ^ ((l.M' : ℤ) * ε (.inr j) (e₁ y) (H.w0 • e₁ y))
        rw [← h3, (hu j).unit_spec]
        rfl
    · rw [he2]
      have h := hoa1 x
      rw [hoa0] at h
      exact h
  obtain ⟨e', h1, h2⟩ := key P.D P.oD hPD hmod hoD
  exact ⟨t, P, e', h1, h2⟩

end GlobalTheory.UCanon.FamFrom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinatesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinatesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFamilyFromRegularBaseCoordinatesStatement =====
