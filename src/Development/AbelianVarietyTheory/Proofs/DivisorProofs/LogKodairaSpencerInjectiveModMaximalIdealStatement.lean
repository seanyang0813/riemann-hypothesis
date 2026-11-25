module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidBoundaryChartsForFanOfUnitarySeparationStatement
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.RelAmpleOfGenericIso
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamilyFibreEqUniformisedPullbackGenericFibre
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoTangentPullConstantDeformation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionDualNumberPointEqConstantCharZero
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjPull
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SubsingletonSpDualNumber
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ESecCompOfIsGrpPullback
public import Mathlib.RingTheory.DualNumber
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppEqZeroOfValR
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WedgeOrdVpBaseChangeOfNeBot
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialDegenerationUnitPartExists
public import Mathlib.Algebra.DualNumber
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAbelianSchemeAndRelDimOfIsGrpPullback
public import Mathlib.LinearAlgebra.BilinearMap
public import Mathlib.LinearAlgebra.LinearIndependent.Defs
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Mathlib.RingTheory.Localization.Module
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopLePreimageOfClosedPoint
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLAlgebraMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnitMkOfFormallyUnramified
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogVectorFieldBasisToroidalModelSnc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqLogDerivationExtendLocalizationAw
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqOfLogDerivationExtendEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationConstantOfLogKodairaSpencerMemStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivationExtendsCompletedToricChartRing
import Development.AbelianVarietyTheory.Definitions.Divisors.IsLocalRingTrivSqZeroExt
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsGrpPullbackOfLoc
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigIsoCongr
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsModuliSchemePolarizedAbelianLevel
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAbelianSchemeOfIsGrpPullback
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Algebra.Order.Star.Int
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Mathlib.Tactic.ENatToNat
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Mathlib.Algebra.Azumaya.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.HolJetA
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpDualNumber, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerInjectiveClosedInteriorPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberUnitEqOfGermEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitPartOfPeriodTauMonomial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupPullbackAbelianSchemeDualNumberEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinIndepIntBilinFormCharZeroCombinationEqZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialBoundaryFamilyParamNeZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PulledBackLineBundleAutomorphismEqConst, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DirEqZeroOfConst, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedBoundaryPointMaximalIdeal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogVectorFieldMemMaxIdealSmulOfVanishing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalBoundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdeal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpDualNumber =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpDualNumber", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsLocalRingTrivSqZeroExt\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.RelAmpleOfGenericIso\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamilyFibreEqUniformisedPullbackGenericFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleIsoTangentPullConstantDeformation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionDualNumberPointEqConstantCharZero\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsGrpPullbackOfLoc\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjPull\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.SubsingletonSpDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ESecCompOfIsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.DualNumber\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigIsoCongr\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsModuliSchemePolarizedAbelianLevel\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open AlgebraicGeometry CategoryTheory MonObj MonoidalCategory CartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G.Semi
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.InteriorKS

theorem rigidity_dualNumber {K : Type} [Field K] (A₀ : Over (Sp K)) (A' G' : Over (Sp (DualNumber K))) [GrpObj A']
    [GrpObj G'] (j : A₀.left ⟶ A'.left) (a b : A' ⟶ G') (hA : IsAbelianScheme A')
    (hj : IsPullback j A₀.hom A'.hom (spMap (TrivSqZeroExt.fstHom K K K).toRingHom))
    (hab : j ≫ a.left = j ≫ b.left) (hη : η[A'] ≫ a = η[A'] ≫ b) : a = b := by
  have hL : Out.Laws := GlobalTheory.abelianSchemeLaws_all.1
  haveI := _root_.GlobalTheory.LevelQuotUnram.subsingleton_sp_dual K
  let c : A' ⟶ G' := a * b⁻¹
  let j' : Over.mk (j ≫ A'.hom) ⟶ A' := Over.homMk j rfl
  have h1 : j' ≫ a = j' ≫ b := Over.OverMorphism.ext hab
  have h2 : j' ≫ c = 1 := by
    simp only [c, MonObj.comp_mul, GrpObj.comp_inv, h1, mul_inv_cancel]
  have h3 : η[A'] ≫ c = 1 := by
    simp only [c, MonObj.comp_mul, GrpObj.comp_inv, hη, mul_inv_cancel]
  obtain ⟨t₀⟩ : Nonempty (Sp K) := inferInstance
  let t : Sp (DualNumber K) := spMap (TrivSqZeroExt.fstHom K K K).toRingHom t₀
  have hc : ∀ x : A'.left, c.left x = (η[G'] : 𝟙_ (Over (Sp (DualNumber K))) ⟶ G').left t := by
    intro x
    obtain ⟨z, rfl, -⟩ := Scheme.exists_preimage_of_isPullback hj x t₀ (Subsingleton.elim _ _)
    have e : j ≫ c.left = (j' ≫ c).left := rfl
    rw [← Scheme.Hom.comp_apply, e, h2, Hom.one_def, Over.comp_left]
    refine (Scheme.Hom.comp_apply _ _ _).trans ?_
    congr 1
    exact Subsingleton.elim (α := Sp (DualNumber K)) _ _
  have hη' : (η[A'] : 𝟙_ (Over (Sp (DualNumber K))) ⟶ A').left ≫ A'.hom = 𝟙 _ := Over.w η[A']
  have key := GlobalTheory.DualRigidity.eq_comp_section_of_const A'.hom _ c.left hη' (hL.globalFns _ A' hA).2 _ hc
  have key' : c = toUnit A' ≫ η[A'] ≫ c := Over.OverMorphism.ext key
  rw [h3, MonObj.comp_one] at key'
  exact mul_inv_eq_one.1 key'

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
  {Xo : Moduli Dw l} {K : Type} [Field K] {x₀ : Sp K ⟶ Xo.X} {x' : Sp (DualNumber K) ⟶ Xo.X}
  {A : Over (Sp K)} [GrpObj A] {A' : Over (Sp (DualNumber K))} [GrpObj A'] {π : A.left ⟶ Xo.univ.t.G.left}
  {π' : A'.left ⟶ Xo.univ.t.G.left} {i : A.left ⟶ A'.left} {q : A'.left ⟶ A.left}

theorem act_const (hi : IsGrpPullback A A' (GlobalTheory.DeRham.epsRed K) i) (hπ : IsGrpPullback A Xo.univ.t.G x₀ π)
    (hπ' : IsGrpPullback A' Xo.univ.t.G x' π') (hiπ : i ≫ π' = π) (hiq : i ≫ q = 𝟙 _)
    (hq : IsGrpPullback A' A (spMap (algebraMap K (DualNumber K))) q)
    (o : Obj Dw l (baseKA l) (x' ≫ Xo.s)) (m : ObjMap o Xo.univ x') (g : o.t.G.left ⟶ A'.left)
    (hg : g ≫ π' = m.cm.F) (hgw : g ≫ A'.hom = o.t.G.hom) (a : 𝓞 E) :
    (o.t.act.act a).left ≫ (g ≫ q ≫ π) = (g ≫ q ≫ π) ≫ (Xo.univ.t.act.act a).left := by
  haveI := Xo.univ.t.act.hom a
  have wβ : (π ≫ (Xo.univ.t.act.act a).left) ≫ Xo.univ.t.G.hom = A.hom ≫ x₀ := by
    rw [Category.assoc, Over.w (Xo.univ.t.act.act a), hπ.1.w]
  let β : A ⟶ A := Over.homMk (hπ.1.lift _ A.hom wβ) (hπ.1.lift_snd _ _ _)
  have hβ : β.left ≫ π = π ≫ (Xo.univ.t.act.act a).left := hπ.1.lift_fst _ _ _
  haveI : IsMonHom β := GlobalTheory.UU.isMonHom_of_over_isMonHom hπ hπ (Xo.univ.t.act.act a) β hβ
  have wα : (π' ≫ (Xo.univ.t.act.act a).left) ≫ Xo.univ.t.G.hom = A'.hom ≫ x' := by
    rw [Category.assoc, Over.w (Xo.univ.t.act.act a), hπ'.1.w]
  let α : A' ⟶ A' := Over.homMk (hπ'.1.lift _ A'.hom wα) (hπ'.1.lift_snd _ _ _)
  have hα : α.left ≫ π' = π' ≫ (Xo.univ.t.act.act a).left := hπ'.1.lift_fst _ _ _
  haveI : IsMonHom α := GlobalTheory.UU.isMonHom_of_over_isMonHom hπ' hπ' (Xo.univ.t.act.act a) α hα
  have wδ : (q ≫ β.left) ≫ A.hom = A'.hom ≫ spMap (algebraMap K (DualNumber K)) := by
    rw [Category.assoc, Over.w β, hq.1.w]
  let δ : A' ⟶ A' := Over.homMk (hq.1.lift _ A'.hom wδ) (hq.1.lift_snd _ _ _)
  have hδ : δ.left ≫ q = q ≫ β.left := hq.1.lift_fst _ _ _
  haveI : IsMonHom δ := GlobalTheory.UU.isMonHom_of_over_isMonHom hq hq β δ hδ
  have hA' : IsAbelianScheme A' := by
    have hG := ObjDim.isAbelianScheme Xo.univ
    have := hG.comm
    have hc : IsCommMonObj A' := by
      rw [isCommMonObj_iff_isMulCommutative]
      intro T
      refine ⟨⟨fun x y => Over.OverMorphism.ext (hπ'.1.hom_ext ?_ (by rw [Over.w, Over.w]))⟩⟩
      rw [← hπ'.2 T x y (pushPt hπ'.1.w x) (pushPt hπ'.1.w y) rfl rfl,
        ← hπ'.2 T y x (pushPt hπ'.1.w y) (pushPt hπ'.1.w x) rfl rfl, _root_.mul_comm]
    exact ⟨hc, MorphismProperty.of_isPullback (P := @Smooth) hπ'.1 hG.smooth,
      MorphismProperty.of_isPullback (P := @IsProper) hπ'.1 hG.proper,
      MorphismProperty.of_isPullback (P := @GeometricallyConnected) hπ'.1 hG.geomConnected⟩
  have e1 : i ≫ α.left = β.left ≫ i := by
    apply hπ'.1.hom_ext
    · simp only [Category.assoc]
      rw [hα, reassoc_of% hiπ, hiπ, hβ]
    · simp only [Category.assoc]
      rw [Over.w α, hi.1.w, reassoc_of% (Over.w β)]
  have e2 : i ≫ δ.left = β.left ≫ i := by
    apply hq.1.hom_ext
    · simp only [Category.assoc]
      rw [hδ, reassoc_of% hiq, hiq, Category.comp_id]
    · simp only [Category.assoc]
      rw [Over.w δ, hi.1.w, reassoc_of% (Over.w β)]
  have hαδ : α = δ := rigidity_dualNumber A A' A' i α δ hA' hi.1 (e1.trans e2.symm)
    (by rw [IsMonHom.one_hom, IsMonHom.one_hom])
  have hga : (o.t.act.act a).left ≫ g = g ≫ α.left := by
    apply hπ'.1.hom_ext
    · simp only [Category.assoc]
      rw [hα, hg, reassoc_of% hg]
      exact m.act a
    · simp only [Category.assoc]
      rw [hgw, Over.w α, hgw, Over.w (o.t.act.act a)]
  calc (o.t.act.act a).left ≫ (g ≫ q ≫ π) = g ≫ α.left ≫ q ≫ π := by rw [reassoc_of% hga]
    _ = g ≫ q ≫ π ≫ (Xo.univ.t.act.act a).left := by rw [hαδ, reassoc_of% hδ, hβ]
    _ = (g ≫ q ≫ π) ≫ (Xo.univ.t.act.act a).left := by simp only [Category.assoc]

theorem cub_const (c : Coeff l) [Algebra c.F K] (hi : IsGrpPullback A A' (GlobalTheory.DeRham.epsRed K) i)
    (hπ : IsGrpPullback A Xo.univ.t.G x₀ π)
    (hπ' : IsGrpPullback A' Xo.univ.t.G x' π') (hiπ : i ≫ π' = π) (hiq : i ≫ q = 𝟙 _)
    (hq : IsGrpPullback A' A (spMap (algebraMap K (DualNumber K))) q)
    (o : Obj Dw l (baseKA l) (x' ≫ Xo.s)) (m : ObjMap o Xo.univ x') (g : o.t.G.left ⟶ A'.left)
    (hg1 : g ≫ π' = m.cm.F) (hF : IsGrpPullback o.t.G Xo.univ.t.G (constPt x') (g ≫ q ≫ π)) :
    (cubeMapOf hF).IsPullCubical o.t.cub Xo.univ.t.cub := by
  haveI : IsProper o.t.G.hom := o.proper
  have hA : IsAbelianScheme o.t.G := AbelianSchemeGerms.isAbelianScheme_of_proper o.t.G o.t.semi
  refine GlobalTheory.TripleModel.isPullCubical_of_lbIso GlobalTheory.SemiRigid.globalFns hA hF o.t.cub Xo.univ.t.cub ?_
  obtain ⟨w, -, hw, -⟩ := rigIso_congr rfl m.cm m.lin rfl rfl
  have K2 : LBIso (Xo.univ.t.PP.L.pull π') (Xo.univ.t.PP.L.pull (q ≫ π)) :=
    GlobalTheory.TangentConstLB.lbIso_tangent_const E H Dw l Xo c K x₀ x' A A' π π' i q hi hπ hπ' hiπ hiq hq
  have hM := Xo.univ.t.PP.isLB
  have h1 : LBIso o.t.PP.L (Xo.univ.t.PP.L.pull (g ≫ π')) := hg1 ▸ ⟨w, hw⟩
  have h2 : LBIso ((Xo.univ.t.PP.L.pull π').pull g) (Xo.univ.t.PP.L.pull (g ≫ q ≫ π)) :=
    GlobalTheory.Ex.GenericFibre.lbIso_pull K2 g rfl
  have h3 : LBIso ((Xo.univ.t.PP.L.pull π').pull g) (Xo.univ.t.PP.L.pull (g ≫ π')) :=
    GlobalTheory.FamRep.lbIso_pull_pull hM π' g
  exact LBIso.trans o.t.PP.isLB (pull_isLB hM _) (pull_isLB hM _) h1
    (LBIso.trans (pull_isLB hM _) (pull_isLB (pull_isLB hM _) _) (pull_isLB hM _) h3.symm h2)

theorem objMap_const (c : Coeff l) [Algebra c.F K] (hx : GlobalTheory.DeRham.epsRed K ≫ x' = x₀)
    (hi : IsGrpPullback A A' (GlobalTheory.DeRham.epsRed K) i) (hπ : IsGrpPullback A Xo.univ.t.G x₀ π)
    (hπ' : IsGrpPullback A' Xo.univ.t.G x' π') (hiπ : i ≫ π' = π) (hiq : i ≫ q = 𝟙 _)
    (hq : IsGrpPullback A' A (spMap (algebraMap K (DualNumber K))) q)
    (o : Obj Dw l (baseKA l) (x' ≫ Xo.s)) (m : ObjMap o Xo.univ x') : Nonempty (ObjMap o Xo.univ (constPt x')) := by
  have hw : m.cm.F ≫ Xo.univ.t.G.hom = o.t.G.hom ≫ x' := m.cart.1.w
  let g : o.t.G.left ⟶ A'.left := hπ'.1.lift m.cm.F o.t.G.hom hw
  have hg : g ≫ π' = m.cm.F := hπ'.1.lift_fst _ _ _
  have hgw : g ≫ A'.hom = o.t.G.hom := hπ'.1.lift_snd _ _ _
  have hgc : IsGrpPullback o.t.G A' (𝟙 _) g :=
    hπ'.cancel (m.cart.congr (Category.id_comp _).symm hg.symm) (by rw [hgw, Category.comp_id])
  have hred : spMap (algebraMap K (DualNumber K)) ≫ x₀ = constPt x' := by
    rw [← hx]; rfl
  have hF : IsGrpPullback o.t.G Xo.univ.t.G (constPt x') (g ≫ q ≫ π) :=
    (hgc.comp (hq.comp hπ)).congr (by rw [Category.id_comp, hred]) rfl
  haveI : CharZero K := (RingHom.charZero_iff (algebraMap c.F K).injective).1 inferInstance
  have hgq := hgc.comp hq
  have hcomm : ∀ (T : Over (Sp K)) (x y : T ⟶ A), x * y = y * x := by
    intro T x y
    apply Over.OverMorphism.ext
    apply hπ.1.hom_ext
    · have e1 := hπ.2 T x y (pushPt hπ.1.w x) (pushPt hπ.1.w y) rfl rfl
      have e2 := hπ.2 T y x (pushPt hπ.1.w y) (pushPt hπ.1.w x) rfl rfl
      rw [← e1, ← e2, _root_.mul_comm]
    · rw [Over.w (x * y), Over.w (y * x)]
  have key : ∀ (σ : 𝟙_ (Over (Sp (DualNumber K))) ⟶ o.t.G) (τ : 𝟙_ (Over Xo.X) ⟶ Xo.univ.t.G) (n : ℕ),
      0 < n → σ ^ n = 1 → σ.left ≫ m.cm.F = x' ≫ τ.left →
      σ.left ≫ (g ≫ q ≫ π) = constPt x' ≫ τ.left := by
    intro σ τ n hn hσ hστ
    let u := pushHom hgq (𝟙_ (Over (Sp (DualNumber K)))) σ
    have hu : u ^ n = 1 := by rw [← map_pow, hσ, map_one]
    have e := GlobalTheory.TorsConst.torsion_eq_const K A _ (by simp) (hcomm _) u n hn hu
    have hul : u.left = σ.left ≫ g ≫ q := by
      show σ.left ≫ (g ≫ q) = _; rfl
    rw [hul] at e
    let w := spMap (TrivSqZeroExt.fstHom K K K).toRingHom ≫ σ.left ≫ g
    have hw' : w ≫ A'.hom = 𝟙 _ ≫ GlobalTheory.DeRham.epsRed K := by
      simp only [w, Category.assoc, hgw, Category.id_comp]
      rw [Over.w σ]; rfl
    let s₀ := hi.1.lift w (𝟙 _) hw'
    have hs₀ : s₀ ≫ i = w := hi.1.lift_fst _ _ _
    calc σ.left ≫ (g ≫ q ≫ π) = (σ.left ≫ g ≫ q) ≫ π := by simp only [Category.assoc]
      _ = (spMap (algebraMap K (DualNumber K)) ≫ w ≫ q) ≫ π := by rw [e]; simp only [w, Category.assoc]
      _ = spMap (algebraMap K (DualNumber K)) ≫ s₀ ≫ i ≫ π' := by
          rw [← hs₀]; simp only [Category.assoc]; rw [reassoc_of% hiq, hiπ]
      _ = spMap (algebraMap K (DualNumber K)) ≫ spMap (TrivSqZeroExt.fstHom K K K).toRingHom ≫ σ.left ≫ m.cm.F := by
          rw [reassoc_of% hs₀]; simp only [w, Category.assoc, hg]
      _ = constPt x' ≫ τ.left := by rw [hστ]; rfl
  have hpow : ∀ (f : Dw.La → (𝟙_ (Over (Sp (DualNumber K))) ⟶ o.t.G)), (∀ a b, f (a + b) = f a * f b) →
      ∀ (n : ℕ) a, f (n • a) = f a ^ n := by
    intro f hf n a
    induction n with
    | zero =>
      have h0 := hf 0 0
      rw [add_zero] at h0
      rw [zero_smul, pow_zero]
      exact mul_left_cancel (h0.symm.trans (_root_.mul_one _).symm)
    | succ n ih => rw [succ_nsmul, hf, ih, pow_succ]
  have hM : ((l.M : ℕ) : 𝓞 E) ∈ l.Mb := by
    have h1 : ((l.M : ℕ) : 𝓞 E) ∈ l.Mb * l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := by
      rw [l.prod]; exact Ideal.mem_span_singleton_self _
    exact Ideal.mul_le_left (I := l.Mb) (J := l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E)) h1
  exact ⟨{
    cm := cubeMapOf hF
    cart := hF
    base := rfl
    act := act_const hi hπ hπ' hiπ hiq hq o m g hg hgw
    lin := cub_const c hi hπ hπ' hiπ hiq hq o m g hg hF
    eta := fun a => key (o.eta a) (Xo.univ.eta a) l.M (by have := l.three_le; omega)
      (by rw [← hpow _ o.eta_add]; exact o.eta_ker _ (by
        rw [← Nat.cast_smul_eq_nsmul (𝓞 E)]; exact Submodule.smul_mem_smul hM Submodule.mem_top))
      (m.eta a)
    etaA := fun a => key (o.etaA a) (Xo.univ.etaA a) l.A l.A_pos
      (by rw [← hpow _ o.etaA_add]; exact o.etaA_ker a) (m.etaA a) }⟩

theorem eq_constPt (c : Coeff l) [Algebra c.F K] (hi : IsGrpPullback A A' (GlobalTheory.DeRham.epsRed K) i)
    (hπ' : IsGrpPullback A' Xo.univ.t.G x' π') (hiq : i ≫ q = 𝟙 _)
    (hq : IsGrpPullback A' A (spMap (algebraMap K (DualNumber K))) q) : x' = constPt x' := by
  obtain ⟨o, ⟨m⟩⟩ := GlobalTheory.obj_pull E H Dw l _ _ (baseKA l) (baseKA l) (RingHom.id _) _ _ Xo.s (x' ≫ Xo.s) x' rfl rfl
    (by rw [spMap, CommRingCat.ofHom_id, Spec.map_id, Category.comp_id]) Xo.univ
  exact Xo.unram K x' o ⟨m⟩ (objMap_const c rfl hi (hi.comp hπ') hπ' rfl hiq hq o m)

end GlobalTheory.InteriorKS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpDualNumber =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerInjectiveClosedInteriorPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerInjectiveClosedInteriorPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppEqZeroOfValR\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WedgeOrdVpBaseChangeOfNeBot\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAbelianSchemeOfIsGrpPullback\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.InteriorKS

theorem exists_sum_smul {F R : Type} [CommRing F] [CommRing R] [Algebra F R] [Algebra.Smooth F R]
    (D : Derivation ℤ R R) (hD : ∀ a, D (algebraMap F R a) = 0) (m : Ideal R) (hm : ∀ r, D r ∈ m) :
    ∃ (n : ℕ) (c : Fin n → R) (δ : Fin n → Derivation ℤ R R), (∀ k, c k ∈ m) ∧
      (∀ k a, δ k (algebraMap F R a) = 0) ∧ D = ∑ k, c k • δ k := by
  let DF : Derivation F R R :=
    { toFun := D
      map_add' := map_add D
      map_smul' := fun a r => by simp [Algebra.smul_def, hD]
      map_one_eq_zero' := D.map_one_eq_zero
      leibniz' := D.leibniz }
  let L : Ω[R⁄F] →ₗ[R] R := DF.liftKaehlerDifferential
  have hL : ∀ r, L (KaehlerDifferential.D F R r) = D r := fun r => DF.liftKaehlerDifferential_comp_D r
  have hLm : ∀ w, L w ∈ m := by
    intro w
    have hw : w ∈ Submodule.span R (Set.range (KaehlerDifferential.D F R)) := by
      rw [KaehlerDifferential.span_range_derivation]; trivial
    refine (Submodule.span_le (p := Submodule.comap L m)).2 ?_ hw
    rintro _ ⟨r, rfl⟩
    show L _ ∈ m
    rw [hL]; exact hm r
  obtain ⟨n, p, i, -, -, hpi⟩ := Module.Finite.exists_comp_eq_id_of_projective R Ω[R⁄F]
  refine ⟨n, fun k => L (p (Pi.single k 1)),
    fun k => (((LinearMap.proj k : (Fin n → R) →ₗ[R] R) ∘ₗ i).compDer (KaehlerDifferential.D F R)).restrictScalars ℤ,
    fun k => hLm _, fun k a => by simp, ?_⟩
  ext r
  have e : KaehlerDifferential.D F R r = ∑ k, i (KaehlerDifferential.D F R r) k • p (Pi.single k 1) := by
    have e0 := LinearMap.congr_fun hpi (KaehlerDifferential.D F R r)
    rw [LinearMap.comp_apply, LinearMap.id_apply, pi_eq_sum_univ' (i _)] at e0
    simpa using e0.symm
  have hs : ∀ δ : Fin n → Derivation ℤ R R, (∑ k, δ k) r = ∑ k, δ k r := fun δ => by

    rw [← Derivation.coeFnAddMonoidHom_apply, map_sum, Finset.sum_apply]
    rfl
  rw [← hL, e, hs]
  simp [mul_comm]

theorem mem_smul_top {F : Type} [CommRing F] {X : Scheme.{0}} (s : X ⟶ Sp F) [Smooth s] (I : X.IdealSheafData)
    (U : X.affineOpens) (D : logDer s I U) (m : Ideal Γ(X, U.1)) (hm : m.IsMaximal) (h : Γ(X, U.1)) (hI : h ∈ I.ideal U)
    (hh : h ∉ m) (hD : ∀ r, D.1 r ∈ m) : D ∈ m • (⊤ : Submodule Γ(X, U.1) (logDer s I U)) := by
  let φ : F →+* Γ(X, U.1) := (s.appLE ⊤ U.1 (fun _ _ => trivial)).hom.comp (Scheme.ΓSpecIso (CommRingCat.of F)).inv.hom
  have hφ : φ.Smooth := by
    refine RingHom.Smooth.comp ?_ (Smooth.smooth_appLE s (isAffineOpen_top _) U.2 _)
    exact RingHom.Smooth.of_bijective (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of F)).inv)
  letI := φ.toAlgebra
  haveI : Algebra.Smooth F Γ(X, U.1) := hφ
  obtain ⟨n, c, δ, hc, hδ, e⟩ := exists_sum_smul (F := F) D.1 D.2.1 m hD
  obtain ⟨y, z, hz, hyz⟩ := hm.exists_inv hh
  let δ' : Fin n → logDer s I U := fun k => ⟨(y * h) • δ k, fun a => by
    have : δ k (constFn s U.1 a) = 0 := hδ k a
    simp [this], fun f _ => Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ hI)⟩
  have e' : D = z • D + ∑ k, c k • δ' k := by
    apply Subtype.ext
    have : (∑ k, c k • δ' k : logDer s I U).1 = (y * h) • D.1 := by
      rw [e, Finset.smul_sum, Submodule.coe_sum]
      exact Finset.sum_congr rfl fun k _ => smul_comm _ _ _
    rw [Submodule.coe_add, this, Submodule.coe_smul, ← add_smul, add_comm, hyz, one_smul]
  rw [e']
  exact add_mem (Submodule.smul_mem_smul hz trivial) (sum_mem fun k _ => Submodule.smul_mem_smul (hc k) trivial)

def dualConst {k R : Type} [Field k] [CommRing R] (ρ : R →+* DualNumber k) : R →+* DualNumber k :=
  (algebraMap k (DualNumber k)).comp ((TrivSqZeroExt.fstHom k k k).toRingHom.comp ρ)

theorem constPt_spMap {K R : Type} [Field K] [CommRing R] (ψ : R →+* DualNumber K) :
    constPt (spMap ψ) = spMap (dualConst ψ) := by
  rw [constPt, spMap_comp', spMap_comp']
  rfl

theorem chart_comp {F : Type} [CommRing F] {X : Scheme.{0}} (s : X ⟶ Sp F) (U : X.affineOpens) :
    ∃ σ : F →+* Γ(X, U.1), (∀ a, σ a = constFn s U.1 a) ∧ chart U ≫ s = spMap σ := by
  refine ⟨(s.appLE ⊤ U.1 (fun _ _ => trivial)).hom.comp (Scheme.ΓSpecIso (CommRingCat.of F)).inv.hom, fun _ => rfl, ?_⟩
  have h := IsAffineOpen.SpecMap_appLE_fromSpec s (isAffineOpen_top (Spec (CommRingCat.of F))) U.2 (fun _ _ => trivial)
  rw [IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv, ← Spec.map_comp] at h
  exact h.symm

theorem snd_eq_zero {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H}
    {l : Geo.Tor.Level H} {Xo : Moduli Dw l} {c : Coeff l} (Y : Model Xo c (RingHom.id c.F)) (U : Y.X.affineOpens)
    {n : ℕ} (v : Fin n → (Sp (DualNumber Γ(Y.X, U.1)) ⟶ Y.t.G.left)) (D : Γ(Y.X, U.1) → Γ(Y.X, U.1))
    (Θ : Matrix (Fin n) (Fin n) Γ(Y.X, U.1)) (hv : ∀ i, IsTanAtG Y.t (chart U) (v i))
    (hKS : IsKS Y.t (interior Y) U v D Θ) {K : Type} [Field K] (φ : Γ(Y.X, U.1) →+* DualNumber K)
    (hφ : ∀ r, (φ r).snd = (φ (D r)).fst) (hΘ : ∀ a b, (φ (Θ a b)).fst = 0)
    (hV : ⊤ ≤ (spMap φ ≫ chart U) ⁻¹ᵁ interior Y) (hc : ∀ a, (φ (constFn Y.s U.1 a)).snd = 0) (r : Γ(Y.X, U.1)) :
    (φ r).snd = 0 := by
  obtain ⟨y', hy'⟩ : ∃ y' : Sp (DualNumber K) ⟶ Xo.XF c, y' ≫ Y.j = spMap φ ≫ chart U :=
    ⟨_, IsOpenImmersion.lift_fac Y.j _ (by rintro _ ⟨p, rfl⟩; exact hV (Set.mem_univ p))⟩
  obtain ⟨σ, hσ, hcs⟩ := chart_comp Y.s U
  letI : Algebra c.F K := ((TrivSqZeroExt.fstHom K K K).toRingHom.comp (φ.comp σ)).toAlgebra
  obtain ⟨A', _, lam, hlam⟩ := GlobalTheory.FlagTan.exists_isGrpPullback Y.oF.t.G y'
  obtain ⟨A₀, _, i, hi⟩ := GlobalTheory.FlagTan.exists_isGrpPullback A' (GlobalTheory.DeRham.epsRed K)
  have hπ' := hlam.comp Y.m0.cart
  have hι' : IsGrpPullback A' Y.t.G (spMap φ ≫ chart U) _ := (hlam.comp Y.m.cart).congr hy' rfl
  have hA' := PolPull.isAbelianScheme_of_isGrpPullback (ObjDim.isAbelianScheme Xo.univ) hπ'
  obtain ⟨ρ, hρ, -, hiρ⟩ := exists_isConstK Y.t (interior Y) U v D Θ hv hKS φ hφ hΘ hV A₀ A' _ i hA' hι' hi
  have e₁ := eq_constPt c hi hπ' hiρ hρ
  have hjs : Y.j ≫ Y.s = pullback.snd _ _ := by
    have h0 : spMap (RingHom.id c.F) = 𝟙 _ := Spec.map_id _
    rw [Model.j, Category.assoc, pullback.condition, ← Category.assoc, Y.jQ_over, h0, Category.comp_id]
  have e₂ : y' ≫ pullback.snd _ _ = spMap (φ.comp σ) := by
    rw [← hjs, reassoc_of% hy', hcs, spMap_comp']
  have e₃ : y' = constPt y' := by
    refine pullback.hom_ext e₁ ?_
    show _ = constPt (y' ≫ pullback.snd _ _)
    rw [e₂, constPt_spMap]
    congr 1
    ext a
    · simp [dualConst, TrivSqZeroExt.algebraMap_eq_inl]
    · simp [dualConst, TrivSqZeroExt.algebraMap_eq_inl, hσ, hc]
  have e₄ : spMap φ ≫ chart U = spMap (dualConst φ) ≫ chart U := by
    rw [← constPt_spMap]
    show _ = constPt (spMap φ ≫ chart U)
    rw [← hy']
    exact congrArg (· ≫ Y.j) e₃
  have hU : IsAffineOpen U.1 := U.2
  haveI : Mono (chart U) := inferInstanceAs (Mono hU.fromSpec)
  have e₅ : φ = dualConst φ := congrArg CommRingCat.Hom.hom (Spec.map_injective ((cancel_mono _).1 e₄))
  rw [e₅]
  simp [dualConst, TrivSqZeroExt.algebraMap_eq_inl]



theorem mem_smul_top_of_isKS : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → (∀ x ∈ genBd Y, IsClosed ({x} : Set (gen Y)) → HasRigidChart Y x) → ∀ (U : Y.X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, U.1)) ⟶ Y.t.G.left)) (A : 𝓞 E → Matrix (Fin n) (Fin n) Γ(Y.X, U.1)), (∀ i, IsTanAtG Y.t (chart U) (v i)) → (∀ w, IsTanAtG Y.t (chart U) w → ∃! cf : Fin n → Γ(Y.X, U.1), IsCombAtG Y.t (chart U) v cf w) → (∀ a i, IsCombAtG Y.t (chart U) v (A a i) (v i ≫ (Y.t.act.act a).left)) → ∀ (D : logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) (Θ : Matrix (Fin n) (Fin n) Γ(Y.X, U.1)) (m : Ideal Γ(Y.X, U.1)), m.IsMaximal → (∃ x ∈ interior Y, x ∈ U.1 ∧ ∀ f ∈ m, x ∉ Y.X.basicOpen f) → IsKS Y.t (interior Y) U v D.1 Θ → (∀ a b, Θ a b ∈ m) → D ∈ m • (⊤ : Submodule Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U)) := by
  intro E _ _ _ H Dw l Xo c Y _ hs _ _ U n v A hv _ _ D Θ m hm ⟨x, hxi, hxU, hx⟩ hKS hΘ
  have hs' := smooth_gen_iff.1 hs
  haveI : Smooth Y.s := SmoothOfRelativeDimension.smooth Dw.dim Y.s
  have hU : IsAffineOpen U.1 := U.2
  obtain ⟨h, hle, hxh⟩ := hU.exists_basicOpen_le (V := interior Y) ⟨x, hxi⟩ hxU
  have hh : h ∉ m := fun hh => hx h hh hxh
  have hI : h ∈ (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl).ideal U := by
    rw [Scheme.IdealSheafData.vanishingIdeal_ideal, PrimeSpectrum.mem_vanishingIdeal]
    intro p hp
    by_contra hn
    refine hp (hle ?_)
    have : p ∈ hU.fromSpec ⁻¹ᵁ Y.X.basicOpen h := by
      rw [hU.fromSpec_preimage_basicOpen]; exact hn
    exact this
  refine mem_smul_top Y.s _ U D m hm h hI hh fun r => ?_
  obtain ⟨K, _, π, hπ⟩ : ∃ (K : Type) (_ : Field K) (π : Γ(Y.X, U.1) →+* K), ∀ r, π r = 0 ↔ r ∈ m :=
    ⟨Γ(Y.X, U.1) ⧸ m, Ideal.Quotient.field m, Ideal.Quotient.mk m, fun _ => Ideal.Quotient.eq_zero_iff_mem⟩
  obtain ⟨φ, hf, hsn⟩ : ∃ φ : Γ(Y.X, U.1) →+* DualNumber K, (∀ r, (φ r).fst = π r) ∧ ∀ r, (φ r).snd = π (D.1 r) :=
    ⟨(dualMap π).comp (epsHom D.1), fun r => by simp [epsHom, dualMap], fun r => by simp [epsHom, dualMap]⟩
  have hV : ⊤ ≤ (spMap φ ≫ chart U) ⁻¹ᵁ interior Y := by
    intro p _
    refine hle ?_
    have : spMap φ p ∈ hU.fromSpec ⁻¹ᵁ Y.X.basicOpen h := by
      rw [hU.fromSpec_preimage_basicOpen]
      intro hp
      have hu : IsUnit (φ h) := by
        rw [TrivSqZeroExt.isUnit_iff_isUnit_fst, hf]
        exact Ne.isUnit fun h0 => hh ((hπ h).1 h0)
      exact p.isPrime.ne_top (Ideal.eq_top_of_isUnit_mem _ hp hu)
    exact this
  rw [← hπ, ← hsn]
  exact snd_eq_zero Y U v D.1 Θ hv hKS φ (fun r => (hsn r).trans (hf _).symm)
    (fun a b => (hf _).trans ((hπ _).2 (hΘ a b))) hV (fun a => by rw [hsn, D.2.1 a, map_zero]) r

end GlobalTheory.InteriorKS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerInjectiveClosedInteriorPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberUnitEqOfGermEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberUnitEqOfGermEq", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsLocalRingTrivSqZeroExt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DualNumber\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualUnitGerm

theorem primeSpectrum_subsingleton (k : Type) [Field k] : Subsingleton (PrimeSpectrum (DualNumber k)) := by
  have key : ∀ p : PrimeSpectrum (DualNumber k), p.asIdeal = maximalIdeal (DualNumber k) := by
    intro p
    refine le_antisymm (le_maximalIdeal p.isPrime.ne_top) ?_
    intro x hx
    have hn : IsNilpotent x := by
      rcases TrivSqZeroExt.isUnit_or_isNilpotent x with h | h
      · exact absurd h hx
      · exact h
    exact (nilpotent_iff_mem_prime.1 hn) p.asIdeal p.isPrime
  exact ⟨fun p q => PrimeSpectrum.ext ((key p).trans (key q).symm)⟩

theorem unit_eq_of_germ_eq : ∀ (k : Type) [Field k] (z : Sp (DualNumber k)) (u v : (DualNumber k)ˣ), gm (𝟙 (Sp (DualNumber k))) z ⊤ (unitOn u) = gm (𝟙 (Sp (DualNumber k))) z ⊤ (unitOn v) → u = v := by
  intro k _ z u v h
  have hs : Subsingleton (Sp (DualNumber k)) := primeSpectrum_subsingleton k
  have h1 : (unitOn u).val = (unitOn v).val := by
    refine TopCat.Presheaf.section_ext (Sp (DualNumber k)).sheaf ⊤ _ _ fun x hx => ?_
    obtain rfl : x = z := Subsingleton.elim _ _
    have := congrArg Units.val h
    rw [gm_val _ x ⊤ hx, gm_val _ x ⊤ hx] at this
    exact this
  exact Units.ext
    ((ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of (DualNumber k))).inv).1 h1)

end GlobalTheory.DualUnitGerm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberUnitEqOfGermEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitPartOfPeriodTauMonomial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitPartOfPeriodTauMonomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialDegenerationUnitPartExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.UnitTau

theorem commGroup_seven_term_product_rearrange {G : Type} [CommGroup G] (a b c A B C D : G) :
    a * b * c * A * (b * B)⁻¹ * (c * C)⁻¹ * D⁻¹ = a * (A * B⁻¹ * C⁻¹ * D⁻¹) := by
  simp only [mul_inv]
  calc _ = a * (A * B⁻¹ * C⁻¹ * D⁻¹) * (b * b⁻¹) * (c * c⁻¹) := by ac_rfl
    _ = _ := by simp



theorem exists_isUnitTau : ∀ {R : Type} [CommRing R] [IsDomain R] (Q : DegPre R) {m : ℕ} (t : Fin m → R) (gam : Fin m → LinearMap.BilinForm ℤ Q.X), IsMonomial Q t gam → (∀ i y z, gam i y z = gam i z y) → (∀ i, t i ≠ 0) → ∀ y z, ∃ τ₀, IsUnitTau Q t gam y z τ₀ := by
  intro R _ _ Q m t gam hM hsym ht y z
  obtain ⟨n1, p1, hp1⟩ := GlobalTheory.UnitPart.exists_isUnitPart Q t gam hM (y + z)
  obtain ⟨n2, p2, hp2⟩ := GlobalTheory.UnitPart.exists_isUnitPart Q t gam hM y
  obtain ⟨n3, p3, hp3⟩ := GlobalTheory.UnitPart.exists_isUnitPart Q t gam hM z
  have hc0 : Q.c 0 = η[Q.P.A] := by
    have h := Q.c_add 0 0
    rw [add_zero] at h
    have h' : Q.c 0 * Q.c 0 = Q.c 0 := h.symm
    have h1 : Q.c 0 = 1 := mul_eq_left.1 h'
    rw [h1, Hom.one_def, toUnit_unique (toUnit _) (𝟙 _), Category.id_comp]
  have hc0' : (Q.c 0).left = eSec Q.P.A := by rw [hc0]; rfl
  let T := LB.mulGen Q.P.L _ _ _ _ (LB.mulGen Q.P.L _ _ _ _ (LB.mulGen Q.P.L _ _ _ _ p1 (LB.invGen Q.P.L _ _ p2))
    (LB.invGen Q.P.L _ _ p3)) (LB.invGen Q.P.L _ _ Q.rig)

  have hT : T.IsGen :=
    LB.isGen_mulGen (L := Q.P.L) _ _ _ _ _ _ (LB.isGen_mulGen (L := Q.P.L) _ _ _ _ _ _
      (LB.isGen_mulGen (L := Q.P.L) _ _ _ _ _ _ hp1.1 (LB.isGen_invGen (L := Q.P.L) _ _ _ hp2.1))
      (LB.isGen_invGen (L := Q.P.L) _ _ _ hp3.1)) (LB.isGen_invGen (L := Q.P.L) _ _ _ Q.rig_gen)
  have hF : FormEq (Sum.elim (Sum.elim (Sum.elim (fun _ : PUnit => (Q.c (y + z)).left) (fun _ : PUnit => (Q.c y).left))
      (fun _ : PUnit => (Q.c z).left)) (fun _ : PUnit => eSec Q.P.A))
      (Sum.elim (Sum.elim (Sum.elim (fun _ : PUnit => (-1 : ℤ)) (fun _ : PUnit => -(-1 : ℤ))) (fun _ : PUnit => -(-1 : ℤ)))
        (fun _ : PUnit => -(1 : ℤ)))
      (K' := Fin 4) ![(Q.c (y + z)).left, (Q.c y).left, (Q.c z).left, (Q.c 0).left] ![-1, 1, 1, -1] := by
    intro U _ h
    simp only [Fintype.prod_sum_type, Fin.prod_univ_four, Finset.univ_unique, Finset.prod_singleton, Sum.elim_inl,
      Sum.elim_inr, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three, hc0', neg_neg]
    simp [Matrix.vecHead, Matrix.vecTail]
  obtain ⟨τ₀, hτ, hv⟩ := exists_gen Q.P.isLB hF T hT
  refine ⟨τ₀, hτ, ?_⟩

  obtain ⟨-, hn1, e1, he1, hv1⟩ := hp1
  obtain ⟨-, hn2, e2, he2, hv2⟩ := hp2
  obtain ⟨-, hn3, e3, he3, hv3⟩ := hp3
  have hne : ∀ i, algebraMap R (FractionRing R) (t i) ≠ 0 := fun i =>
    (map_ne_zero_iff _ (IsFractionRing.injective R _)).2 (ht i)
  let e' : (FractionRing R)ˣ := ∏ i, Units.mk0 _ (hne i) ^ gam i y z
  have he' : (e' : FractionRing R) = ∏ i, algebraMap R _ (t i) ^ gam i y z := by
    simp [e', Units.coe_prod]
  have hexp : ∀ i, (n1 i : ℤ) = gam i y z + n2 i + n3 i := by
    intro i
    have a := hn1 i
    have b := hn2 i
    have c := hn3 i
    have s := hsym i y z
    simp only [map_add (f := _), LinearMap.add_apply] at a
    linarith
  have hee : e1 = e' * e2 * e3 := by
    apply Units.ext
    rw [Units.val_mul, Units.val_mul, he1, he2, he3, he']
    simp only [map_prod, map_pow]
    rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [← zpow_natCast, ← zpow_natCast, ← zpow_natCast, ← zpow_add₀ (hne i), ← zpow_add₀ (hne i), hexp i]
  have hu : ∀ a b : (FractionRing R)ˣ, unitOn (a * b) = unitOn a * unitOn b := fun a b => map_mul (Units.map _) a b
  refine ⟨e', he', fun zz J hJ => ?_⟩
  rw [hv _ _ zz J hJ]
  simp only [DegPre.tau, DegPre.rigK, T, val_mul hJ, val_inv, val_pull hJ]
  rw [hv1 zz J hJ, hv2 zz J hJ, hv3 zz J hJ, hee, hu, hu, map_mul, map_mul, Category.id_comp]
  exact commGroup_seven_term_product_rearrange _ _ _ _ _ _ _

end GlobalTheory.UnitTau
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitPartOfPeriodTauMonomial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupPullbackAbelianSchemeDualNumberEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupPullbackAbelianSchemeDualNumberEq", "h": "module\n\npublic import Mathlib.Algebra.DualNumber\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsLocalRingTrivSqZeroExt\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAbelianSchemeAndRelDimOfIsGrpPullback\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SubsingletonSpDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ESecCompOfIsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DualNumber\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsModuliSchemePolarizedAbelianLevel\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualRigidityField

theorem eq_of_eq_closedFibre {K : Type} [Field K] (A' G' : Over (Sp (DualNumber K))) [GrpObj A'] [GrpObj G']
    (a b : A' ⟶ G') (hA : IsAbelianScheme A')
    (hab : pullback.fst A'.hom (spMap (TrivSqZeroExt.fstHom K K K).toRingHom) ≫ a.left =
      pullback.fst A'.hom (spMap (TrivSqZeroExt.fstHom K K K).toRingHom) ≫ b.left)
    (hη : η[A'] ≫ a = η[A'] ≫ b) : a = b := by
  haveI := _root_.GlobalTheory.LevelQuotUnram.subsingleton_sp_dual K
  let j := pullback.fst A'.hom (spMap (TrivSqZeroExt.fstHom K K K).toRingHom)
  have hj : IsPullback j (pullback.snd A'.hom (spMap (TrivSqZeroExt.fstHom K K K).toRingHom)) A'.hom
      (spMap (TrivSqZeroExt.fstHom K K K).toRingHom) := IsPullback.of_hasPullback _ _
  let c : A' ⟶ G' := a * b⁻¹
  let j' : Over.mk (j ≫ A'.hom) ⟶ A' := Over.homMk j rfl
  have h1 : j' ≫ a = j' ≫ b := Over.OverMorphism.ext hab
  have h2 : j' ≫ c = 1 := by
    simp only [c, MonObj.comp_mul, GrpObj.comp_inv, h1, mul_inv_cancel]
  have h3 : η[A'] ≫ c = 1 := by
    simp only [c, MonObj.comp_mul, GrpObj.comp_inv, hη, mul_inv_cancel]
  obtain ⟨t₀⟩ : Nonempty (Sp K) := inferInstance
  let t : Sp (DualNumber K) := spMap (TrivSqZeroExt.fstHom K K K).toRingHom t₀
  have hc : ∀ x : A'.left, c.left x = (η[G'] : 𝟙_ (Over (Sp (DualNumber K))) ⟶ G').left t := by
    intro x
    obtain ⟨z, rfl, -⟩ := Scheme.exists_preimage_of_isPullback hj x t₀ (Subsingleton.elim _ _)
    have e : j ≫ c.left = (j' ≫ c).left := rfl
    rw [← Scheme.Hom.comp_apply, e, h2, Hom.one_def, Over.comp_left]
    refine (Scheme.Hom.comp_apply _ _ _).trans ?_
    congr 1
    exact Subsingleton.elim (α := Sp (DualNumber K)) _ _
  have hη' : (η[A'] : 𝟙_ (Over (Sp (DualNumber K))) ⟶ A').left ≫ A'.hom = 𝟙 _ := Over.w η[A']
  have key := GlobalTheory.DualRigidity.eq_comp_section_of_const A'.hom _ c.left hη' (GlobalTheory.globalFns_holds _ A' hA).2 _ hc
  have key' : c = toUnit A' ≫ η[A'] ≫ c := Over.OverMorphism.ext key
  rw [h3, MonObj.comp_one] at key'
  exact mul_inv_eq_one.1 key'

theorem pullback_eq : ∀ {R : Type} [CommRing R] (k : Type) [Field k] (A : Over (Sp R)) [GrpObj A] (g : ℕ) (B' : Over (Sp (DualNumber k))) [GrpObj B'] (f : R →+* DualNumber k) (π₁ π₂ : B'.left ⟶ A.left), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → IsGrpPullback B' A (spMap f) π₁ → IsGrpPullback B' A (spMap f) π₂ → (∀ (Z : Scheme.{0}) (x : Z ⟶ B'.left) (y : Z ⟶ Sp k), x ≫ B'.hom = y ≫ spMap (TrivSqZeroExt.fstHom k k k).toRingHom → x ≫ π₁ = x ≫ π₂) → π₁ = π₂ := by
  intro R _ k _ A _ g B' _ f π₁ π₂ hA hg h1 h2 hx
  have hB := (GlobalTheory.AbBaseChange.isAbelianScheme_and_relDim_of_isGrpPullback f A B' π₂ g h2 hA hg).1
  let α : B' ⟶ B' := Over.homMk (h2.1.lift π₁ B'.hom h1.1.w) (h2.1.lift_snd _ _ _)
  have hα : α.left ≫ π₂ = π₁ := h2.1.lift_fst _ _ _
  haveI : IsMonHom α := GlobalTheory.UU.isMonHom_of_over_isMonHom h1 h2 (𝟙 A) α (by rw [hα]; rfl)
  have hα1 : α = 𝟙 B' := by
    refine eq_of_eq_closedFibre B' B' α (𝟙 B') hB ?_ (by rw [IsMonHom.one_hom, Category.comp_id])
    apply h2.1.hom_ext
    · simp only [Category.assoc, Over.id_left, Category.comp_id]
      rw [hα]
      exact hx _ _ _ pullback.condition
    · simp only [Category.assoc, Over.id_left, Category.comp_id]
      rw [Over.w α]
  rw [← hα, hα1, Over.id_left, Category.id_comp]

end GlobalTheory.DualRigidityField
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupPullbackAbelianSchemeDualNumberEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinIndepIntBilinFormCharZeroCombinationEqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinIndepIntBilinFormCharZeroCombinationEqZero", "h": "module\n\npublic import Mathlib.LinearAlgebra.BilinearMap\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\npublic import Mathlib.RingTheory.Localization.Module\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

theorem linIndep_intBilinForm_charZero_comb_eq_zero
    {X : Type} [AddCommGroup X] {m : ℕ} (gam : Fin m → LinearMap.BilinForm ℤ X)
    (k : Type) [Field k] [CharZero k] (a : Fin m → k) :
    LinearIndependent ℤ gam → (∀ y z, ∑ i, a i * (gam i y z : k) = 0) → a = 0 := by
  intro hli hsum

  let L : LinearMap.BilinForm ℤ X →ₗ[ℤ] (X → X → ℚ) :=
    { toFun := fun B y z => ((B y z : ℤ) : ℚ)
      map_add' := by intro B C; funext y z; simp
      map_smul' := by intro n B; funext y z; simp }
  have hker : LinearMap.ker L = ⊥ := by
    rw [LinearMap.ker_eq_bot']
    intro B hB
    ext y z
    have := congrFun (congrFun hB y) z
    simpa [L] using this
  have hZ : LinearIndependent ℤ (L ∘ gam) := hli.map' L hker
  have hQ : LinearIndependent ℚ (L ∘ gam) :=
    (LinearIndependent.iff_fractionRing ℤ ℚ).mp hZ
  funext j
  by_contra hj
  obtain ⟨ℓ, hℓ⟩ := Module.Projective.exists_dual_ne_zero ℚ (V := k) hj
  have hrel : ∑ i, ℓ (a i) • (L ∘ gam) i = 0 := by
    funext y z
    have h0 := congrArg ℓ (hsum y z)

    rw [map_sum, map_zero] at h0
    simp only [Finset.sum_apply, Pi.smul_apply, Function.comp_apply, Pi.zero_apply, smul_eq_mul, L,
      LinearMap.coe_mk, AddHom.coe_mk]
    rw [← h0]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_comm (a i), ← zsmul_eq_mul, map_zsmul, zsmul_eq_mul, mul_comm]
  have := (Fintype.linearIndependent_iff.mp hQ) _ hrel j
  exact hℓ this

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinIndepIntBilinFormCharZeroCombinationEqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialBoundaryFamilyParamNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialBoundaryFamilyParamNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.MonoParam

theorem t_ne_zero : ∀ {R : Type} [CommRing R] [IsDomain R] (Q : DegPre R) {m : ℕ} (t : Fin m → R) (gam : Fin m → LinearMap.BilinForm ℤ Q.X), IsMonomial Q t gam → LinearIndependent ℤ gam → (∀ i y z, gam i y z = gam i z y) → ∀ i, t i ≠ 0 := by
  intro R _ _ Q m t gam hM hli hsym i hti
  have hdiag : ∀ y, gam i y y = 0 := by
    intro y
    obtain ⟨u, n, hn, hc⟩ := hM y
    have h0 := GlobalTheory.PsiCoordLocal.ne_zero_of_coord hc
    have hni : n i = 0 := by
      by_contra hne
      apply h0
      rw [Finset.prod_eq_zero (Finset.mem_univ i) (by rw [hti]; exact zero_pow hne), mul_zero]
    rw [hn i, hni]; simp
  have hz : gam i = 0 := by
    refine LinearMap.ext₂ fun y z => ?_
    have h := hdiag (y + z)
    simp only [map_add (f := _), LinearMap.add_apply, hdiag y, hdiag z, hsym i z y] at h
    simp only [LinearMap.zero_apply]
    omega
  exact hli.ne_zero i hz

end GlobalTheory.MonoParam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialBoundaryFamilyParamNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PulledBackLineBundleAutomorphismEqConst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PulledBackLineBundleAutomorphismEqConst", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PullAutConst

theorem main : ∀ {A : Type} [CommRing A] (B' : Over (Sp A)) [GrpObj B'] {X : Scheme.{0}} (L : LB X) (π : B'.left ⟶ X), IsAbelianScheme B' → L.IsLB → ∀ w : LB.Iso (L.pull π) (L.pull π), w.IsGen → ∃ lam : Aˣ, ∀ (Z : Scheme.{0}) (x : Z ⟶ B'.left) (z : Z) (j : L.ι), π (x z) ∈ L.U j → gm x z _ (w.s (fun _ => j, fun _ => j)) = gm (x ≫ B'.hom) z ⊤ (unitOn lam) := by
  intro A _ B' _ X L π hB hL w hw
  have hP := (isGen_iff w).1 hw
  have hg : ∀ (j j' : L.ι) (x : B'.left), π x ∈ L.U j → π x ∈ L.U j' →
      gm (𝟙 B'.left) x _ ((L.pull π).g (fun _ => j) (fun _ => j')) = gm (𝟙 _ ≫ π) x _ (L.g j j') := by
    intro j j' x hj hj'
    have hp : (𝟙 B'.left : B'.left ⟶ B'.left) x ∈ (L.pull π).U (fun _ => j) ⊓ (L.pull π).U (fun _ => j') :=
      ⟨mem_pull.2 hj, mem_pull.2 hj'⟩
    show gm _ x _ (∏ _k : PUnit, (res _ (pullU π _ (L.g j j'))) ^ (1 : ℤ)) = _
    rw [Fintype.prod_unique, zpow_one]
    exact (gm_res _ x _ hp _).trans (gm_pull _ π x (L.U j ⊓ L.U j') ⟨hj, hj'⟩ _)
  obtain ⟨u, hu⟩ := glue_unit (⊤ : B'.left.Opens)
    (fun j : L.ι => (L.pull π).U (fun _ => j) ⊓ (L.pull π).U (fun _ => j)) (fun _ => le_top)
    (fun x _ => by
      obtain ⟨j, hj⟩ := exists_chart hL (π x)
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨j, mem_pull.2 hj, mem_pull.2 hj⟩)
    (fun j => w.s (fun _ => j, fun _ => j)) (fun j j' x hx => by
      have hj : π x ∈ L.U j := mem_pull.1 hx.1.1
      have hj' : π x ∈ L.U j' := mem_pull.1 hx.2.1
      have e := hP _ (𝟙 _) x j j' (fun _ => j) (fun _ => j') hj hj' (mem_pull.2 hj) (mem_pull.2 hj')
      rw [hg j j' x hj hj', mul_inv_cancel] at e
      exact e.trans (_root_.one_mul _))
  let e₁ : Γ(Sp A, ⊤) ≃+* Γ(B'.left, ⊤) :=
    RingEquiv.ofBijective B'.hom.appTop.hom (GlobalTheory.globalFns_holds _ B' hB)
  let e₂ : A ≃+* Γ(Sp A, ⊤) := (Scheme.ΓSpecIso (CommRingCat.of A)).symm.commRingCatIsoToRingEquiv
  let e : A ≃+* Γ(B'.left, ⊤) := e₂.trans e₁
  refine ⟨Units.map e.symm.toMonoidHom u, fun Z x z j hj => ?_⟩
  have hl : pullU B'.hom ⊤ (unitOn (Units.map e.symm.toMonoidHom u)) = u :=
    Units.ext (e.apply_symm_apply u.val)
  have hm : x z ∈ (L.pull π).U (fun _ => j) ⊓ (L.pull π).U (fun _ => j) := ⟨mem_pull.2 hj, mem_pull.2 hj⟩
  refine (congrArg (gm x z _) (hu j)).symm.trans ((gm_res x z _ hm _).trans ?_)
  exact (congrArg (gm x z ⊤) hl).symm.trans (gm_pull x B'.hom z ⊤ trivial _)

end GlobalTheory.PullAutConst
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PulledBackLineBundleAutomorphismEqConst =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DirEqZeroOfConst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DirEqZeroOfConst", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberUnitEqOfGermEq\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitPartOfPeriodTauMonomial\npublic import Mathlib.Algebra.DualNumber\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupPullbackAbelianSchemeDualNumberEq\npublic import Mathlib.LinearAlgebra.BilinearMap\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinIndepIntBilinFormCharZeroCombinationEqZero\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialBoundaryFamilyParamNeZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PulledBackLineBundleAutomorphismEqConst\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAbelianSchemeAndRelDimOfIsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ConstPointCone

theorem dir_eq_zero_of_const : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (Q : DegPre R) (m : ℕ) (t : Fin m → R) (gam : Fin m → LinearMap.BilinForm ℤ Q.X), IsMonomial Q t gam → LinearIndependent ℤ gam → (∀ i, t i ∈ maximalIdeal R) → (∀ i y z, gam i y z = gam i z y) → ∀ (k : Type) [Field k] [CharZero k] (ρ : R →+* DualNumber k) (a : Fin m → k), (∀ r, (ρ r).snd = 0) → IsConstAlong Q t gam ρ a → a = 0 := by
  intro R _ _ _ Q m t gam hmon hli _ hs k _ _ ρ a hρ hc
  have hρc : constHom ρ = ρ := by
    ext r
    · simp [constHom, TrivSqZeroExt.algebraMap_eq_inl]
    · simp [constHom, TrivSqZeroExt.algebraMap_eq_inl, hρ]
  obtain ⟨B', _, π₁, π₂, w, c', h1, h2, h3, hw, hc', hrel⟩ := hc
  rw [hρc] at h2 hc' hrel
  have hπ : π₁ = π₂ := _root_.GlobalTheory.DualRigidityField.pullback_eq k Q.P.A Q.P.g B' ρ π₁ π₂ Q.P.isAb Q.P.smoothDim h1 h2 h3
  subst hπ
  have hab : IsAbelianScheme B' :=
    (GlobalTheory.AbBaseChange.isAbelianScheme_and_relDim_of_isGrpPullback ρ Q.P.A B' π₁ Q.P.g h1 Q.P.isAb Q.P.smoothDim).1
  obtain ⟨lam, hlam⟩ := _root_.GlobalTheory.PullAutConst.main B' Q.P.L π₁ hab Q.P.isLB w hw
  obtain ⟨zz⟩ : Nonempty (Sp (DualNumber k)) := inferInstance
  obtain ⟨J, hJ⟩ : ∃ J, Good Q.P.L zz J := by
    obtain ⟨J, hJ, -⟩ := exists_good Q.P.L Q.P.isLB zz (K := PEmpty) PEmpty.elim PEmpty.elim
      (fun a => a.elim) (fun a => a.elim)
    exact ⟨J, hJ⟩
  have hW : ∀ x, gm (c' x) zz _ (w.s (fun _ => J (c' x ≫ π₁), fun _ => J (c' x ≫ π₁))) =
      gm (𝟙 (Sp (DualNumber k))) zz ⊤ (unitOn lam) := by
    intro x
    have hmem : π₁ (c' x zz) ∈ Q.P.L.U (J (c' x ≫ π₁)) := by
      have := hJ (c' x ≫ π₁)
      simpa using this
    rw [hlam _ (c' x) zz _ hmem, (hc' x).1]
  have htne := _root_.GlobalTheory.MonoParam.t_ne_zero Q t gam hmon hli hs
  have key : ∀ y z, ∑ i, a i * (gam i y z : k) = 0 := by
    intro y z
    obtain ⟨τ₀, hτ⟩ := _root_.GlobalTheory.UnitTau.exists_isUnitTau Q t gam hmon hs htne y z
    let e : (DualNumber k)ˣ := ⟨1 + TrivSqZeroExt.inr (∑ i, a i * (gam i y z : k)),
      1 - TrivSqZeroExt.inr (∑ i, a i * (gam i y z : k)), by ext <;> simp, by ext <;> simp⟩
    have h := hrel y z τ₀ hτ e rfl zz J hJ
    rw [hW (y + z), hW y, hW z, hW 0] at h
    have h' : gm (𝟙 (Sp (DualNumber k))) zz ⊤ (unitOn e) = gm (𝟙 (Sp (DualNumber k))) zz ⊤ (unitOn 1) := by
      rw [_root_.GlobalTheory.HeckePoint.unitOn_one, map_one]
      have hG : ∀ G : ((Sp (DualNumber k)).presheaf.stalk zz)ˣ, G * G⁻¹ * G⁻¹ * G = 1 := fun G => by group
      rw [hG, _root_.one_mul] at h
      exact mul_right_cancel (h.symm.trans (_root_.one_mul _).symm)
    have he := _root_.GlobalTheory.DualUnitGerm.unit_eq_of_germ_eq k zz _ _ h'
    have := congrArg (fun u : (DualNumber k)ˣ => TrivSqZeroExt.snd (u : DualNumber k)) he
    simpa [e] using this
  exact _root_.GlobalTheory.linIndep_intBilinForm_charZero_comb_eq_zero gam k a hli key

end GlobalTheory.ConstPointCone
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DirEqZeroOfConst =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedBoundaryPointMaximalIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedBoundaryPointMaximalIdeal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopLePreimageOfClosedPoint\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\nimport Mathlib.Algebra.Azumaya.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
open GlobalTheory.LocM GlobalTheory.PolFan ReciprocityTheory.AnForm.R
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.ChartDer

namespace GlobalTheory.BoundaryPoint

theorem isClosed_of_isMaximal {X : Scheme.{0}} [JacobsonSpace X] {U : X.Opens} (hU : IsAffineOpen U)
    {m : Ideal Γ(X, U)} (hm : m.IsMaximal) {x : X} (hx : x ∈ U) (h : ∀ f ∈ m, x ∉ X.basicOpen f) :
    IsClosed ({x} : Set X) := by
  have e := hU.fromSpec_primeIdealOf ⟨x, hx⟩
  have hle : m ≤ (hU.primeIdealOf ⟨x, hx⟩).asIdeal := fun f hf => by
    by_contra hc
    refine h f hf ?_
    have h₁ : hU.primeIdealOf ⟨x, hx⟩ ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen f := by
      rw [hU.fromSpec_preimage_basicOpen]
      exact hc
    have h₂ : hU.fromSpec (hU.primeIdealOf ⟨x, hx⟩) ∈ X.basicOpen f := h₁
    rwa [e] at h₂
  have hmax : (hU.primeIdealOf ⟨x, hx⟩).asIdeal.IsMaximal :=
    hm.eq_of_le (hU.primeIdealOf ⟨x, hx⟩).isPrime.ne_top hle ▸ hm
  have hc := (PrimeSpectrum.isClosed_singleton_iff_isMaximal _).2 hmax
  have h₃ : hU.primeIdealOf ⟨x, hx⟩ ∈ hU.fromSpec ⁻¹' closedPoints X := by
    rw [hU.fromSpec.isOpenEmbedding.preimage_closedPoints]
    exact hc
  have h₄ : IsClosed ({hU.fromSpec (hU.primeIdealOf ⟨x, hx⟩)} : Set X) := h₃
  rwa [e] at h₄

theorem exists_closed_boundary_point : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), SmoothOfRelativeDimension Dw.dim (genStr Y) → ∀ (U : Y.X.affineOpens) (m : Ideal Γ(Y.X, U.1)), m.IsMaximal → ∀ x : Y.X, x ∉ interior Y → x ∈ U.1 → (∀ f ∈ m, x ∉ Y.X.basicOpen f) → ∃ x' : gen Y, genι Y x' = x ∧ x' ∈ genBd Y ∧ IsClosed ({x'} : Set (gen Y)) := by
  intro E _ _ _ H Dw l Xo c Y hs U m hm x hx hU h
  have hi : IsIso (genι Y) := GlobalTheory.LogKS.isIso_fst Y
  have : Smooth (genStr Y) := SmoothOfRelativeDimension.smooth Dw.dim _
  have : JacobsonSpace Y.X := LocallyOfFiniteType.jacobsonSpace (inv (genι Y) ≫ genStr Y)
  have hc := isClosed_of_isMaximal U.2 hm hU h
  obtain ⟨x', rfl⟩ := (genι Y).homeomorph.surjective x
  refine ⟨x', rfl, mem_genBd_iff.2 fun h' => hx ?_, ?_⟩
  · rw [← coe_interior] at h'
    exact h'
  · rw [← (genι Y).homeomorph.isClosed_image, Set.image_singleton]
    exact hc

end GlobalTheory.BoundaryPoint
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedBoundaryPointMaximalIdeal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogVectorFieldMemMaxIdealSmulOfVanishing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogVectorFieldMemMaxIdealSmulOfVanishing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLAlgebraMap\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnitMkOfFormallyUnramified\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogVectorFieldBasisToroidalModelSnc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqLogDerivationExtendLocalizationAw\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqOfLogDerivationExtendEq\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopLePreimageOfClosedPoint\nimport Mathlib.Algebra.Azumaya.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LogBack

section Algebra

open IsLocalRing GlobalTheory.LogDerProj GlobalTheory.LogBasis

theorem prime_X {σ k : Type} [CommRing k] [IsDomain k] (s : σ) : Prime (MvPowerSeries.X s : MvPowerSeries σ k) := by
  intros
  apply _root_.GlobalTheory.BranchSep.prime_mvX <;> assumption

theorem exists_log_of_dvd {R ι : Type} [CommRing R] [IsDomain R] [Algebra ℤ R] [Fintype ι] (I : Ideal R) (δ : Derivation ℤ R R)
    (h0 : ∀ r, δ r ∈ I) (T a : ι → R) (hT : ∀ i, Prime (T i)) (ha : ∀ i, a i ∈ I) (hδ : ∀ i, δ (T i) = a i * T i)
    (N : ℕ) : ∀ g, g ∣ (∏ i, T i) ^ N → ∃ α ∈ I, δ g = α * g := by
  classical
  have step : ∀ i q, (∀ g, g ∣ q → ∃ α ∈ I, δ g = α * g) → ∀ g, g ∣ T i * q → ∃ α ∈ I, δ g = α * g := by
    rintro i q hq g ⟨h, hh⟩
    rcases (hT i).dvd_or_dvd (⟨q, hh.symm⟩ : T i ∣ g * h) with ⟨g', rfl⟩ | ⟨h', rfl⟩
    · obtain ⟨α, hα, e⟩ := hq g' ⟨h, mul_left_cancel₀ (hT i).ne_zero (by rw [hh]; ring)⟩
      refine ⟨α + a i, I.add_mem hα (ha i), ?_⟩
      rw [δ.leibniz, e, hδ, smul_eq_mul, smul_eq_mul]
      ring
    · exact hq g ⟨h', mul_left_cancel₀ (hT i).ne_zero (by rw [hh]; ring)⟩
  have steps : ∀ (s : Finset ι) q, (∀ g, g ∣ q → ∃ α ∈ I, δ g = α * g) →
      ∀ g, g ∣ (∏ i ∈ s, T i) * q → ∃ α ∈ I, δ g = α * g := by
    intro s q hq
    induction s using Finset.induction_on with
    | empty => simpa using hq
    | insert j s hj ih =>
      rw [Finset.prod_insert hj, mul_assoc]
      exact step j _ ih
  induction N with
  | zero =>
    intro g hg
    rw [pow_zero] at hg
    obtain ⟨v, hv⟩ := hg
    exact ⟨δ g * v, I.mul_mem_right _ (h0 g), by linear_combination (δ g) * hv⟩
  | succ N ih =>
    rw [pow_succ']
    exact steps _ _ ih

theorem exists_dual {K R : Type} [CommRing K] [CommRing R] [Algebra K R]
    {n : ℕ} (z : Fin n → R) (bΩ : Module.Basis (Fin n) R Ω[R⁄K])
    (hb : ∀ i, bΩ i = KaehlerDifferential.D K R (z i)) :
    ∃ d : Fin n → Derivation ℤ R R, (∀ k l, d k (z l) = if k = l then 1 else 0) ∧
      (∀ k a, d k (algebraMap K R a) = 0) ∧
      ∀ D : Derivation ℤ R R, (∀ a, D (algebraMap K R a) = 0) → D = ∑ k, D (z k) • d k := by
  classical
  let d : Fin n → Derivation ℤ R R := fun k =>
    (KaehlerDifferential.linearMapEquivDerivation K R (bΩ.coord k)).restrictScalars ℤ
  have hd' : ∀ k r, d k r = bΩ.repr (KaehlerDifferential.D K R r) k := fun k r => rfl
  refine ⟨d, fun k l => by rw [hd', ← hb]; simp [Finsupp.single_apply, eq_comm], fun k a => by rw [hd']; simp,
    fun D hD => ?_⟩
  let D' : Derivation K R R := Derivation.mk'
    { toFun := D
      map_add' := map_add D
      map_smul' := fun a r => by
        simp only [Algebra.smul_def, D.leibniz, hD, RingHom.id_apply]
        simp }
    (fun x y => D.leibniz x y)
  have hD' : ∀ r, D' r = D r := fun _ => rfl
  ext r
  have := map_sum (Derivation.coeFnAddMonoidHom (R := ℤ) (A := R) (M := R)) (fun k => D (z k) • d k) Finset.univ
  have h3 := congrFun this r
  rw [Finset.sum_apply] at h3
  refine Eq.trans ?_ h3.symm

  rw [← hD', ← D'.liftKaehlerDifferential_comp_D r, ← bΩ.sum_repr (KaehlerDifferential.D K R r), map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_smul, hb, D'.liftKaehlerDifferential_comp_D, hD']
  simp [Derivation.coeFnAddMonoidHom_apply, hd', mul_comm]

theorem exists_sum_of_coords {K B R : Type} [Field K] [CharZero K] [CommRing B] [Algebra K B] [IsNoetherianRing B]
    [CommRing R] (I : Ideal R) {n m : ℕ} (z : Fin n → B) (bΩ : Module.Basis (Fin n) B Ω[B⁄K])
    (hb : ∀ i, bΩ i = KaehlerDifferential.D K B (z i)) (e : Fin m → Fin n) (he : Function.Injective e)
    (ψ : B →+* R) (D : Derivation ℤ B B) (hD : D ∈ logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)}))
    (h0 : ∀ r, ψ (D r) ∈ I) (h1 : ∀ i c, D (z (e i)) = c * z (e i) → ψ c ∈ I) :
    ∃ (g : Fin n → B) (v : Fin n → Derivation ℤ B B), (∀ k, ψ (g k) ∈ I) ∧
      (∀ k, v k ∈ logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)})) ∧ D = ∑ k, g k • v k := by
  classical
  have hQ : ∀ n : ℕ, IsUnit ((n : B) + 1) := fun n => by
    have := (IsUnit.mk0 ((n : K) + 1) (Nat.cast_add_one_ne_zero n)).map (algebraMap K B)
    simpa using this
  obtain ⟨d, hd, hd0, hspan⟩ := exists_dual z bΩ hb
  obtain ⟨b, hb'⟩ := exists_basis_of_dual hQ (algebraMap K B) z d hd hd0 hspan e he
    (logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)})) (fun _ => Iff.rfl)
  have hv : ∀ k u, (∀ i, k = e i → z (e i) ∣ u) → u • d k ∈ logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)}) := by
    intro k u hu
    refine ⟨fun a => by simp [hd0], mem_span_of_dvd _ (prod_mem_span _ _ _ fun i _ => ?_)⟩
    rw [Derivation.smul_apply, hd]
    split_ifs with h
    · simpa using hu i h
    · simp
  have key : ∀ k, ∃ (g : B) (v : Derivation ℤ B B), ψ g ∈ I ∧
      v ∈ logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)}) ∧ D (z k) • d k = g • v := by
    intro k
    by_cases hk : ∃ i, e i = k
    · obtain ⟨i, rfl⟩ := hk
      have hc : D (z (e i)) = b.repr ⟨D, hD⟩ (e i) * z (e i) := by
        have h2 := congrArg Subtype.val (b.sum_repr ⟨D, hD⟩)
        rw [Submodule.coe_sum] at h2
        have := map_sum (Derivation.coeFnAddMonoidHom (R := ℤ) (A := B) (M := B))
          (fun k => ((b.repr ⟨D, hD⟩ k • b k : logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)})) :
            Derivation ℤ B B)) Finset.univ
        have h3 := congrFun this (z (e i))
        rw [Finset.sum_apply, h2] at h3
        refine h3.trans ?_
        simp [Derivation.coeFnAddMonoidHom_apply, hb']
      refine ⟨_, z (e i) • d (e i), h1 i _ hc, hv _ _ fun j hj => by rw [hj], ?_⟩
      rw [smul_smul, ← hc]
    · exact ⟨D (z k), (1 : B) • d k, h0 _, hv _ _ fun j hj => absurd ⟨j, hj.symm⟩ hk, by rw [one_smul]⟩
  choose g v hg hv' hgv using key
  exact ⟨g, v, hg, hv', (hspan D hD.1).trans (Finset.sum_congr rfl fun k _ => hgv k)⟩

theorem mem_smul_top_of_sum {K A B ι : Type} [Field K] [CommRing A] [CommRing B] [Algebra A B] [Fintype ι] (f : A)
    [IsLocalization.Away f B] (φ : K →+* A) (hφ : φ.FiniteType) (J m : Ideal A) (hm : m.IsMaximal) (hf : f ∉ m)
    (D : logSub φ J) (g : ι → B) (v : ι → Derivation ℤ B B)
    (hg : ∀ k, ∃ (s : Submonoid.powers f) (a : A), a ∈ m ∧ g k * algebraMap A B s = algebraMap A B a)
    (hv : ∀ k, v k ∈ logSub ((algebraMap A B).comp φ) (J.map (algebraMap A B)))
    (h : extL (S := B) f D.1 = ∑ k, g k • v k) : D ∈ m • (⊤ : Submodule A (logSub φ J)) := by
  classical
  have key : ∃ (s : Submonoid.powers f) (D' : logSub φ J), D' ∈ m • (⊤ : Submodule A (logSub φ J)) ∧
      (s : A) • extL (S := B) f D.1 = extL (S := B) f D'.1 := by
    rw [h]
    refine Finset.sum_induction _ (fun δ : Derivation ℤ B B => ∃ (s : Submonoid.powers f) (D' : logSub φ J),
      D' ∈ m • (⊤ : Submodule A (logSub φ J)) ∧ (s : A) • δ = extL (S := B) f D'.1) ?_ ⟨1, 0, zero_mem _, by simp⟩ ?_
    · rintro x y ⟨s, D₁, h₁, e₁⟩ ⟨t, D₂, h₂, e₂⟩
      refine ⟨s * t, (t : A) • D₁ + (s : A) • D₂,
        add_mem (Submodule.smul_mem _ _ h₁) (Submodule.smul_mem _ _ h₂), ?_⟩
      rw [Submodule.coe_add, Submodule.coe_smul, Submodule.coe_smul, map_add (f := _), map_smul, map_smul, ← e₁, ← e₂,
        smul_smul, smul_smul, smul_add, Submonoid.coe_mul, mul_comm (t : A)]
    · intro k _
      obtain ⟨s, a, ha, e⟩ := hg k
      obtain ⟨⟨D', t⟩, e'⟩ := exists_pow_smul_eq_res (S := B) f φ hφ J ⟨v k, hv k⟩
      have e'' : (t : A) • v k = extL (S := B) f D'.1 := congrArg Subtype.val e'
      refine ⟨s * t, a • D', Submodule.smul_mem_smul ha trivial, ?_⟩
      rw [Submodule.coe_smul, map_smul, ← e'', ← algebraMap_smul B a, ← e, ← algebraMap_smul B (t : A),
        ← algebraMap_smul B ((s * t : Submonoid.powers f) : A), smul_smul, smul_smul, Submonoid.coe_mul, map_mul]
      congr 1
      ring
  obtain ⟨s, D', hD', e⟩ := key
  obtain ⟨c, hc⟩ := exists_pow_smul_eq_of_res_eq (S := B) f φ hφ J ((s : A) • D) D' (Subtype.ext (by
    change extL (S := B) f ((s : A) • D.1) = extL (S := B) f D'.1
    rw [map_smul, e]))
  have h1 : ((c * s : Submonoid.powers f) : A) • D ∈ m • (⊤ : Submodule A (logSub φ J)) := by
    rw [Submonoid.coe_mul, mul_smul]
    have : (c : A) • (s : A) • D = (c : A) • D' := hc
    rw [this]
    exact Submodule.smul_mem _ _ hD'
  have h2 : ((c * s : Submonoid.powers f) : A) ∉ m := by
    obtain ⟨N, hN⟩ := (c * s).2
    rw [← hN]
    exact fun h => hf (hm.isPrime.mem_of_pow_mem N h)
  obtain ⟨y, i, hi, e1⟩ := hm.exists_inv h2
  rw [← one_smul A D, ← e1, add_smul, mul_smul]
  exact add_mem (Submodule.smul_mem _ _ h1) (Submodule.smul_mem_smul hi trivial)

theorem mem_smul_top_of_coords {K A B R : Type} [Field K] [CharZero K] [CommRing A] [CommRing B] [Algebra A B]
    [Algebra K B] [IsNoetherianRing B] [CommRing R] [IsDomain R] [IsLocalRing R] [Algebra ℤ R] (f : A) [IsLocalization.Away f B]
    (φ : K →+* A) (hφ : φ.FiniteType) (hK : (algebraMap A B).comp φ = algebraMap K B) (J m : Ideal A)
    (hm : m.IsMaximal) (hf : f ∉ m) {n r : ℕ} (z : Fin n → B) (bΩ : Module.Basis (Fin n) B Ω[B⁄K])
    (hb : ∀ i, bΩ i = KaehlerDifferential.D K B (z i)) (e : Fin r → Fin n) (he : Function.Injective e)
    (hJ : J.map (algebraMap A B) = Ideal.span {∏ i, z (e i)}) (ψ : B →+* R)
    (hψ : ∀ g ∈ m, ψ (algebraMap A B g) ∈ maximalIdeal R) (D : logSub φ J) (δ : Derivation ℤ R R)
    (hδ : ∀ a, δ (ψ (algebraMap A B a)) = ψ (algebraMap A B (D.1 a))) (h0 : ∀ x, δ x ∈ maximalIdeal R)
    (h1 : ∀ i, ψ (z (e i)) ≠ 0 ∧ ∃ α ∈ maximalIdeal R, δ (ψ (z (e i))) = α * ψ (z (e i))) :
    D ∈ m • (⊤ : Submodule A (logSub φ J)) := by
  have hcomm : ∀ y, ψ (extL (S := B) f D.1 y) = δ (ψ y) := by
    intro y
    obtain ⟨⟨a, t⟩, e⟩ := IsLocalization.surj (Submonoid.powers f) y
    have hu : IsUnit (ψ (algebraMap A B t)) := (IsLocalization.map_units B t).map ψ
    have e' : y * algebraMap A B t = algebraMap A B a := e
    have h1 := congrArg (fun y => ψ (extL (S := B) f D.1 y)) e'
    have h2 := congrArg (fun y => δ (ψ y)) e'
    simp only [Derivation.leibniz, smul_eq_mul, map_mul, map_add (f := _), extL_algebraMap, hδ] at h1 h2
    exact hu.mul_left_cancel (by linear_combination h1 - h2)
  have hD : extL (S := B) f D.1 ∈ logSub (algebraMap K B) (Ideal.span {∏ i, z (e i)}) := by
    rw [← hK, ← hJ]
    exact (res (S := B) f φ J D).2
  obtain ⟨g, v, hg, hv, hs⟩ := exists_sum_of_coords (maximalIdeal R) z bΩ hb e he ψ _ hD
    (fun y => hcomm y ▸ h0 _) (fun i c hc => by
      obtain ⟨hne, α, hα, e1⟩ := h1 i
      rw [← hcomm, hc, map_mul] at e1
      exact mul_right_cancel₀ hne e1 ▸ hα)
  refine mem_smul_top_of_sum f φ hφ J m hm hf D g v (fun k => ?_) (fun k => by rw [hK, hJ]; exact hv k) hs
  obtain ⟨⟨a, t⟩, e⟩ := IsLocalization.surj (Submonoid.powers f) (g k)
  have e' : g k * algebraMap A B t = algebraMap A B a := e
  refine ⟨t, a, ?_, e'⟩
  have hle : m = (maximalIdeal R).comap (ψ.comp (algebraMap A B)) :=
    hm.eq_of_le (Ideal.comap_ne_top _ (maximalIdeal.isMaximal R).ne_top) hψ
  rw [hle, Ideal.mem_comap, RingHom.comp_apply, ← e', map_mul]
  exact Ideal.mul_mem_right _ _ (hg k)

end Algebra

section Geometry

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.LogBasis GlobalTheory.LogDerProj GlobalTheory.ZH.CrdCalc
open ReciprocityTheory.ChartRestriction.G.DVR.FlatBC (algX)

theorem mem_basicOpen_iff {R : Type} [CommRing R] {X : Scheme.{0}} (χ : Sp R ⟶ X) (W : X.Opens) (h : ⊤ ≤ χ ⁻¹ᵁ W)
    (g : Γ(X, W)) (q : Sp R) : χ q ∈ X.basicOpen g ↔ valHom χ W h g ∉ q.asIdeal := by
  have b := Scheme.basicOpen_appLE χ ⊤ W h g
  rw [top_inf_eq, basicOpen_eq_of_affine'] at b
  change q ∈ χ ⁻¹ᵁ X.basicOpen g ↔ _
  rw [← b]
  rfl

theorem mem_smul_top_of_chart {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (p : X ⟶ Sp K) (n : ℕ)
    [SmoothOfRelativeDimension n p] (Z : Closeds X) (hI : FinalTheorems.Snc (Scheme.IdealSheafData.vanishingIdeal Z))
    (U : X.affineOpens) (D : LogKS.logDer p (Scheme.IdealSheafData.vanishingIdeal Z) U) (m : Ideal Γ(X, U.1))
    (hm : m.IsMaximal) {R ι : Type} [CommRing R] [IsDomain R] [IsLocalRing R] [Algebra ℤ R] [Fintype ι] (χ : Sp R ⟶ X)
    (hx : χ (closedPoint R) ∈ U.1) (hxm : ∀ f ∈ m, χ (closedPoint R) ∉ X.basicOpen f)
    (T a : ι → R) (hT : ∀ i, Prime (T i)) (hZ : ∀ q : Sp R, χ q ∈ Z → ∏ i, T i ∈ q.asIdeal)
    (δ : Derivation ℤ R R) (hδ : ∀ r, δ (valR χ U.1 r) = valR χ U.1 (D.1 r)) (hδT : ∀ i, δ (T i) = a i * T i)
    (h0 : ∀ r, δ r ∈ maximalIdeal R) (ha : ∀ i, a i ∈ maximalIdeal R) :
    D ∈ m • (⊤ : Submodule Γ(X, U.1) (LogKS.logDer p (Scheme.IdealSheafData.vanishingIdeal Z) U)) := by
  classical
  let I := Scheme.IdealSheafData.vanishingIdeal Z
  have hIdef : I = Scheme.IdealSheafData.vanishingIdeal Z := rfl
  haveI : Smooth p := SmoothOfRelativeDimension.smooth n p
  haveI : IsLocallyNoetherian X := LocallyOfFiniteType.isLocallyNoetherian p
  obtain ⟨-, O, hxO, r, s, J, hrsp, hO⟩ := hI (χ (closedPoint R))
  obtain ⟨V, hV, e, hxV, he, H⟩ := exists_coords p n _ O.1 hxO s hrsp
  obtain ⟨f, hfV, hxf⟩ := U.2.exists_basicOpen_le ⟨_, hxV⟩ hx
  let W : X.affineOpens := ⟨X.basicOpen f, U.2.basicOpen f⟩
  obtain ⟨z, bΩ, hz, hb⟩ := H W.1 hfV W.2
  let ix : Fin J.card → Fin r := fun i => (J.equivFin.symm i).1
  have hix : Function.Injective ix := fun i j h => J.equivFin.symm.injective (Subtype.ext h)
  have hWO : W ≤ O := hfV.trans hV
  have hideal : I.ideal W = Ideal.span {∏ i, z (e (ix i))} := by
    rw [← I.map_ideal hWO, hIdef, hO, Ideal.map_span, Set.image_singleton, map_prod, ← Finset.prod_coe_sort J,
      ← J.equivFin.symm.prod_comp]
    simp only [hz]
    rfl
  have hW : W.1 ≤ U.1 := X.basicOpen_le f
  letI : Algebra K Γ(X, W.1) := (algX p W.1).toAlgebra
  haveI : IsNoetherianRing Γ(X, W.1) := IsLocallyNoetherian.component_noetherian W
  letI : Algebra Γ(X, U.1) Γ(X, W.1) := (resG X hW).toAlgebra
  haveI : IsLocalization.Away f Γ(X, W.1) := U.2.isLocalization_basicOpen f
  have hφ : (algX p U.1).FiniteType := by
    have h1 : (p.appLE ⊤ U.1 (by simp)).hom.FiniteType :=
      HasRingHomProperty.appLE @LocallyOfFiniteType p inferInstance ⟨⊤, isAffineOpen_top _⟩ U _
    exact h1.comp (RingHom.FiniteType.of_surjective _
      (Scheme.ΓSpecIso (CommRingCat.of K)).symm.commRingCatIsoToRingEquiv.surjective)
  have hχ : ⊤ ≤ χ ⁻¹ᵁ W.1 := (top_le_iff χ W.1).2 hxf
  have hχU : ⊤ ≤ χ ⁻¹ᵁ U.1 := (top_le_iff χ U.1).2 hx
  have hval : ∀ g, valHom χ W.1 hχ (algebraMap Γ(X, U.1) Γ(X, W.1) g) = valR χ U.1 g := fun g =>
    (valR_eq χ W.1 hχ _).symm.trans (valR_res χ hW hχ g)
  refine mem_smul_top_of_coords (K := K) (B := Γ(X, W.1)) f (algX p U.1) hφ (GlobalTheory.TopForm.resG_comp_algX (p := p) hW)
    (I.ideal U) m hm (fun h => hxm f h hxf) z bΩ hb (e ∘ ix) (he.comp hix)
    ((I.map_ideal (U := W) (V := U) hW).trans hideal) (valHom χ W.1 hχ) (fun g hg => ?_) D δ
    (fun g => by rw [hval, hval]; exact hδ g) h0 (fun i => ?_)
  · rw [hval]
    exact fun hu => hxm g hg ((top_le_iff χ _).1 ((isUnit_valR_iff χ U.1 hχU g).1 hu))
  · have hrad : ∏ i, T i ∈ (Ideal.span {valHom χ W.1 hχ (z (e (ix i)))}).radical := by
      rw [Ideal.radical_eq_sInf, Ideal.mem_sInf]
      rintro P ⟨hP, hP'⟩
      let q : Sp R := (⟨P, hP'⟩ : PrimeSpectrum R)
      refine hZ q ?_
      have hq : χ q ∈ I.support := by
        rw [Scheme.IdealSheafData.mem_support_iff_of_mem (U := W) (hχ (Set.mem_univ q)), hideal,
          Scheme.zeroLocus_span, Scheme.mem_zeroLocus_iff]
        rintro _ rfl
        rw [mem_basicOpen_iff χ W.1 hχ, not_not, map_prod, ← Finset.mul_prod_erase _ _ (Finset.mem_univ i)]
        exact Ideal.mul_mem_right _ _ (hP (Ideal.mem_span_singleton_self _))
      have hs : (I.support : Set X) = Z := by
        rw [hIdef, Scheme.IdealSheafData.coe_support_vanishingIdeal]
      change χ q ∈ (Z : Set X)
      rw [← hs]
      exact hq
    obtain ⟨N, hN⟩ := hrad
    have hdvd := Ideal.mem_span_singleton.1 hN
    refine ⟨ne_zero_of_dvd_ne_zero (pow_ne_zero N (Finset.prod_ne_zero_iff.2 fun j _ => (hT j).ne_zero)) hdvd,
      exists_log_of_dvd _ δ h0 T a hT ha hδT N _ hdvd⟩

end Geometry

end GlobalTheory.LogBack

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
open GlobalTheory.LocM GlobalTheory.PolFan ReciprocityTheory.AnForm.R
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.ChartDer

theorem GlobalTheory.LogBack.mem_smul_top_of_vanish : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), SmoothOfRelativeDimension Dw.dim (genStr Y) → FinalTheorems.Snc (genBdIdeal Y) → ∀ (U : Y.X.affineOpens) (D : logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) (m : Ideal Γ(Y.X, U.1)), m.IsMaximal → ∀ x : Y.X, x ∉ interior Y → x ∈ U.1 → (∀ f ∈ m, x ∉ Y.X.basicOpen f) → ∀ (k : Type) [Field k] (m' d : ℕ) (ξ : Sp (ChartRing k m' d) ⟶ gen Y) (x' : gen Y), ξ (closedPoint _) = x' → genι Y x' = x → IsEtaleCompletion (Scheme.stalkClosedPointTo ξ).hom → (FinalTheorems.stalkId (genBdIdeal Y) (ξ (closedPoint _))).map (Scheme.stalkClosedPointTo ξ).hom = Ideal.span {∏ i, bdParam k m' d i} → (∀ p : Sp (ChartRing k m' d), ξ p ∈ genBd Y ↔ ∏ i, bdParam k m' d i ∈ p.asIdeal) → ∀ (hU : ⊤ ≤ (ξ ≫ genι Y) ⁻¹ᵁ U.1) (DR : Derivation ℤ (ChartRing k m' d) (ChartRing k m' d)) (a : Fin m' → (ChartRing k m' d)), (∀ r, DR (valR (ξ ≫ genι Y) U.1 r) = valR (ξ ≫ genι Y) U.1 (D.1 r)) → (∀ i, DR (bdParam k m' d i) = a i * bdParam k m' d i) → (∀ r, residue _ (DR r) = 0) → (∀ i, residue _ (a i) = 0) → D ∈ m • (⊤ : Submodule Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U)) := by
  intro E _ _ _ H Dw l Xo c Y hs hsnc U D m hm x _ hxU hxm k _ m' d ξ x' hξ hx' _ _ hbd _ DR a hD hT h0 ha
  haveI := smooth_gen_iff.1 hs
  subst hξ hx'
  refine GlobalTheory.LogBack.mem_smul_top_of_chart Y.s Dw.dim (interior Y).compl (snc_gen_iff.1 hsnc) U D m hm (ξ ≫ genι Y)
    hxU hxm (bdParam k m' d) a (fun i => GlobalTheory.LogBack.prime_X _) (fun q hq => (hbd q).1 ?_) DR hD hT
    (fun r => (residue_eq_zero_iff _).1 (h0 r)) (fun i => (residue_eq_zero_iff _).1 (ha i))
  rw [mem_genBd_iff, ← coe_interior]
  exact hq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogVectorFieldMemMaxIdealSmulOfVanishing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalBoundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalBoundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationConstantOfLogKodairaSpencerMemStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DirEqZeroOfConst\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedBoundaryPointMaximalIdeal\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivationExtendsCompletedToricChartRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogVectorFieldMemMaxIdealSmulOfVanishing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopLePreimageOfClosedPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.HolJetA\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LocM GlobalTheory.PolFan ReciprocityTheory.AnForm.R

noncomputable section

namespace GlobalTheory.ChartDer

def constEps {σ k : Type} [Field k] (δ : Derivation ℤ (MvPowerSeries σ k) (MvPowerSeries σ k)) :
    MvPowerSeries σ k →+* DualNumber k where
  toFun r := TrivSqZeroExt.inl (MvPowerSeries.constantCoeff r) + TrivSqZeroExt.inr (MvPowerSeries.constantCoeff (δ r))
  map_one' := by ext <;> simp
  map_zero' := by ext <;> simp
  map_add' a b := by ext <;> simp
  map_mul' a b := by ext <;> simp [Derivation.leibniz, mul_comm, add_comm]

theorem constEps_apply {σ k : Type} [Field k] (δ : Derivation ℤ (MvPowerSeries σ k) (MvPowerSeries σ k))
    (r : MvPowerSeries σ k) :
    constEps δ r = TrivSqZeroExt.inl (MvPowerSeries.constantCoeff r) +
      TrivSqZeroExt.inr (MvPowerSeries.constantCoeff (δ r)) := rfl

theorem residue_eq_zero_iff_constantCoeff {σ k : Type} [Field k] (r : MvPowerSeries σ k) :
    residue _ r = 0 ↔ MvPowerSeries.constantCoeff r = 0 := by
  rw [residue_eq_zero_iff, mem_maximalIdeal, mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff, isUnit_iff_ne_zero,
    not_not]

theorem logKS_inj_mod_boundary : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → (∀ x ∈ genBd Y, IsClosed ({x} : Set (gen Y)) → HasRigidChart Y x) → ∀ (U : Y.X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, U.1)) ⟶ Y.t.G.left)) (A : 𝓞 E → Matrix (Fin n) (Fin n) Γ(Y.X, U.1)), (∀ i, IsTanAtG Y.t (chart U) (v i)) → (∀ w, IsTanAtG Y.t (chart U) w → ∃! cf : Fin n → Γ(Y.X, U.1), IsCombAtG Y.t (chart U) v cf w) → (∀ a i, IsCombAtG Y.t (chart U) v (A a i) (v i ≫ (Y.t.act.act a).left)) → ∀ (D : logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) (Θ : Matrix (Fin n) (Fin n) Γ(Y.X, U.1)) (m : Ideal Γ(Y.X, U.1)), m.IsMaximal → (∃ x, x ∉ interior Y ∧ x ∈ U.1 ∧ ∀ f ∈ m, x ∉ Y.X.basicOpen f) → IsKS Y.t (interior Y) U v D.1 Θ → (∀ a b, Θ a b ∈ m) → D ∈ m • (⊤ : Submodule Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U)) := by
  intro E _ _ _ H Dw l Xo c Y hpq hsm hsnc hrig U n v A hv hvb hA D Θ m hm hx hKS hΘ
  obtain ⟨x, hxi, hxU, hxm⟩ := hx
  have h2 := _root_.GlobalTheory.BoundaryPoint.exists_closed_boundary_point E H Dw l Xo c Y hsm U m hm x hxi hxU hxm
  obtain ⟨x', hx'x, hx'bd, hx'cl⟩ := h2
  have h3 := hrig x' hx'bd hx'cl
  obtain ⟨k, _, m', d, ξ, t, P, gam, hξ, hEt, hId, hBd, hSAB, hMon, hPart, hRig⟩ := h3
  have hxU' : ξ (closedPoint _) ∈ genι Y ⁻¹ᵁ U.1 := by
    show genι Y (ξ (closedPoint _)) ∈ U.1
    rw [hξ, hx'x]
    exact hxU
  have hU : ⊤ ≤ (ξ ≫ genι Y) ⁻¹ᵁ U.1 := _root_.GlobalTheory.GenDer.top_le_preimage_of_mem _ _ hxU'
  have h4 := GlobalTheory.ChartDer.logDer_extend_chartRing E H Dw l Xo c Y U D k m' d ξ hxU' hEt hId
  obtain ⟨DR, hDR0, hDRt⟩ := h4
  have hval : ∀ r, valR (ξ ≫ genι Y) U.1 r = ((Scheme.stalkClosedPointTo ξ).hom.comp
      (((gen Y).presheaf.germ (genι Y ⁻¹ᵁ U.1) (ξ (closedPoint _)) hxU').hom.comp ((genι Y).app U.1).hom)) r := by
    intro r
    have e := ReciprocityTheory.ChartRestriction.G.PullbackSections.germ_stalkClosedPointTo_eq ξ (genι Y ⁻¹ᵁ U.1) hxU'
    have e2 := congrArg (fun φ => φ.hom (((genι Y).app U.1).hom r)) e
    simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e2
    rw [RingHom.comp_apply, RingHom.comp_apply, e2, valR, dite_eq_left hU, Scheme.Hom.comp_appLE]
    rfl
  have hDR : ∀ r, DR (valR (ξ ≫ genι Y) U.1 r) = valR (ξ ≫ genι Y) U.1 (D.1 r) := by
    intro r
    rw [hval, hval]
    exact hDR0 r
  have ha' : ∀ i, ∃ a, DR (bdParam k m' d i) = a * bdParam k m' d i := fun i => by
    obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.1 (hDRt i)
    exact ⟨a, ha.symm⟩
  choose a ha using ha'
  have hc := _root_.GlobalTheory.ChartConst.isConstAlong_of_ks_mem E H Dw l Xo c Y hpq hsm hsnc U n v A hv hvb hA D Θ m hm x hxi hxU hxm hKS hΘ k m' d ξ x' hξ
    hx'x t P gam hEt hId hBd hSAB hMon hPart hU DR a hDR ha (constEps DR) (constEps_apply DR)
  obtain ⟨c₀, hc₀, hcc⟩ := hc
  have ht0 : ∀ i, MvPowerSeries.constantCoeff (bdParam k m' d i) = 0 := fun i => by simp
  have hsnd : ∀ r, (constEps DR r).snd = 0 := by
    have h1 : ∀ r ∈ maximalIdeal (ChartRing k m' d), (constEps DR r).fst = 0 := fun r hr => by
      rw [constEps_apply]
      simpa using (residue_eq_zero_iff_constantCoeff r).1 ((residue_eq_zero_iff r).2 hr)
    have h2 : ∀ i, constEps DR (bdParam k m' d i) = 0 := fun i => by
      rw [constEps_apply, ha i, map_mul, ht0 i, mul_zero]
      simp
    exact hRig k (constEps DR) _ h1 h2 hcc
  have hres : ∀ r, residue _ (DR r) = 0 := fun r => by
    rw [residue_eq_zero_iff_constantCoeff]
    simpa [constEps_apply] using hsnd r
  haveI : CharZero k := by
    let f : c.F →+* k := MvPowerSeries.constantCoeff.comp (Spec.preimage (ξ ≫ genι Y ≫ Y.s)).hom
    exact charZero_of_injective_ringHom f.injective
  have hli : LinearIndependent ℤ (fun i => (gam i : LinearMap.BilinForm ℤ P.D.toPre.X)) :=
    hPart.linearIndependent.map' (levelForms H l.M' P.D.toPre.X).subtype (Submodule.ker_subtype _)
  have hdir := GlobalTheory.ConstPointCone.dir_eq_zero_of_const (ChartRing k m' d) P.D.toPre m' (bdParam k m' d)
    (fun i => gam i) hMon hli (fun i => by simp [mem_maximalIdeal, mem_nonunits_iff, MvPowerSeries.isUnit_iff_constantCoeff])
    (fun i y z => (gam i).2.1 y z) k (constEps DR) _ hsnd hcc
  have ha0 : ∀ i, residue _ (a i) = 0 := fun i => by
    rw [residue_eq_zero_iff_constantCoeff]
    have := congrFun hdir i
    simp only [Pi.zero_apply, mul_eq_zero, Rat.cast_eq_zero, hc₀, false_or] at this
    exact this
  exact _root_.GlobalTheory.LogBack.mem_smul_top_of_vanish E H Dw l Xo c Y hsm hsnc U D m hm x hxi hxU hxm k m' d ξ x' hξ hx'x hEt hId hBd hU DR a hDR ha
    hres ha0

end GlobalTheory.ChartDer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalBoundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdeal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerInjectiveClosedInteriorPoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalBoundary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exists_point_vanishing_of_isMaximal {X : Scheme} (U : X.affineOpens) (m : Ideal Γ(X, U.1))
    (hm : m.IsMaximal) : ∃ x, x ∈ U.1 ∧ ∀ f ∈ m, x ∉ X.basicOpen f := by
  let p : PrimeSpectrum Γ(X, U.1) := ⟨m, hm.isPrime⟩
  refine ⟨U.2.fromSpec p, ?_, ?_⟩
  · have h : U.2.fromSpec p ∈ Set.range U.2.fromSpec := ⟨p, rfl⟩
    rw [U.2.range_fromSpec] at h
    exact h
  · intro f hf hx
    have h : p ∈ U.2.fromSpec ⁻¹ᵁ X.basicOpen f := hx
    rw [U.2.fromSpec_preimage_basicOpen] at h
    exact h hf

theorem logKS_inj_mod_maximal : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → (∀ x ∈ genBd Y, IsClosed ({x} : Set (gen Y)) → HasRigidChart Y x) → ∀ (U : Y.X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, U.1)) ⟶ Y.t.G.left)) (A : 𝓞 E → Matrix (Fin n) (Fin n) Γ(Y.X, U.1)), (∀ i, IsTanAtG Y.t (chart U) (v i)) → (∀ w, IsTanAtG Y.t (chart U) w → ∃! cf : Fin n → Γ(Y.X, U.1), IsCombAtG Y.t (chart U) v cf w) → (∀ a i, IsCombAtG Y.t (chart U) v (A a i) (v i ≫ (Y.t.act.act a).left)) → ∀ (D : logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) (Θ : Matrix (Fin n) (Fin n) Γ(Y.X, U.1)) (m : Ideal Γ(Y.X, U.1)), m.IsMaximal → IsKS Y.t (interior Y) U v D.1 Θ → (∀ a b, Θ a b ∈ m) → D ∈ m • (⊤ : Submodule Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U)) := by
  intro E _ _ _ H Dw l Xo c Y hpq hsm hsnc hrig U n v A hv hbasis hact D Θ m hm hKS hΘ
  have hp := exists_point_vanishing_of_isMaximal U m hm
  obtain ⟨x, hxU, hxm⟩ := hp
  by_cases hx : x ∈ LogKS.interior Y
  · exact _root_.GlobalTheory.InteriorKS.mem_smul_top_of_isKS E H Dw l Xo c Y hpq hsm hsnc hrig U n v A hv hbasis hact D Θ m hm
      ⟨x, hx, hxU, hxm⟩ hKS hΘ
  · have hb : ∃ x, x ∉ LogKS.interior Y ∧ x ∈ U.1 ∧ ∀ f ∈ m, x ∉ Y.X.basicOpen f := ⟨x, hx, hxU, hxm⟩
    have key := _root_.GlobalTheory.ChartDer.logKS_inj_mod_boundary E H Dw l Xo c Y hpq hsm hsnc hrig U n v A hv hbasis hact D Θ m hm
    first
      | exact key hb hKS hΘ

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdeal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement =====
