module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleDiagonalPullbackBaseChange
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsGenThetaOfIsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsPolAVHypSRetract
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemePrimeToCharTorsionRational
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalSiegelObjectOddLevelRigid
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExtId
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.Clauses
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.CmHostUnitAddConjEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyBaseInjectionsAgreeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCDvrTwoEmbeddings
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelPointPairsLowerBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoComparisonNormalisedGeneratorStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodPartMemTautologicalPointTorsionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothConeSumGeneratorsEqOfCommonInteriorPoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalCoordsEqOfMatchingData
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalPointTransportFieldMapStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffPow
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullUUnitsCompatGeneric
public import Development.AbelianVarietyTheory.Definitions.Divisors.TorusMemOfSepAtBTate
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Mathlib.LinearAlgebra.FreeModule.PID
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteEtalePointOfExt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolarisedAVIsoDescendsOfRationalThreeTorsion
public import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalDataRigidAlongStratumStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyHasPointRigidCoordinatesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteOfRigidAtB
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.NonemptyFiniteRootsOfBimul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComesFromBaseOfPullbackInjectiveDomains
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComesFromTautBaseOfRescaledPullbackMonomialStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationDataNsmulRescaleKeepsLawsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQkZeroOver
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTautologicalBaseNsmulDegenerationDataStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometryEqReflOfCongrModGeThree
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialsDifferByUnitsPositiveBoundaryCombinatioStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OnTorusComp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalBaseMatchingMonomialsRatioUnitStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointTorusPartEqOfEquivSameLatticeStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBundleGenericFibreDescent
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PelObjectClassPrimAndIsoClosed
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.OActDescendOfGenerators
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentations, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentationsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfProdZpowEqBalancedFormsBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalInjectionsAgreeCanonicalFamilyCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyLocalInjectionsEqSamePoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTauScaledGeneratorTorusMonomial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubfieldOfBilinFormBasisMonomials, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomDescent, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoOfLbIsoFieldExt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfield, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfieldStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPointRigidBoundaryFamilyOfRigidCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChartStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentations =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentations", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsGenThetaOfIsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsPolAVHypSRetract\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemePrimeToCharTorsionRational\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalSiegelObjectOddLevelRigid\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon GlobalTheory.PolDeg GlobalTheory.TInj
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.PresRigid

open GlobalTheory.CechPic GlobalTheory.SiegLev GlobalTheory.SiegRigid GlobalTheory.ZM

theorem eq_of_field_of_ample {S : Scheme.{0}} {A : Over S} [GrpObj A] (c : CechPic.Pic A.left)
    {K : Type} [Field K] [IsAlgClosed K] {A' : Over (Sp K)} [GrpObj A'] (hA' : IsAbelianScheme A') {z : Sp K ⟶ S}
    {φ φ' : A'.left ⟶ A.left} (h : IsGrpPullback A' A z φ) (h' : IsGrpPullback A' A z φ')
    {M : LB A'.left} (hM : M.IsLB) (hamp : Out.RelAmple A' M) (hMc : cls M hM = pull φ' c)
    (hc : pull φ c = pull φ' c) {N : ℕ} (hN : 3 ≤ N) (hNK : (N : K) ≠ 0)
    (hfix : ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (t : Sp Ω ⟶ Sp K) (x : Over.mk t ⟶ A'), x ^ N = 1 →
      x.left ≫ φ = x.left ≫ φ') : φ = φ' := by
  obtain ⟨σ, hσ, e⟩ := exists_aut h h'
  have := hA'.comm
  have key := serreAmple K A' hA' M hM hamp N hN hNK σ hσ
    (by rw [hMc, ← pull_comp, e, hc]) fun Ω _ _ t x hx => by
      apply Over.OverMorphism.ext
      apply h'.1.hom_ext
      · rw [Over.comp_left, Category.assoc, e]
        exact hfix Ω t x hx
      · rw [Over.w, Over.w]
  rw [← e, key, Over.id_left, Category.id_comp]

theorem cls_diag_lam_pull {S S' : Scheme.{0}} {G : Over S} {H : Over S'} [GrpObj G] [IsCommMonObj G] [GrpObj H]
    [IsCommMonObj H] {f : S' ⟶ S} {φ : H.left ⟶ G.left} (hp : IsGrpPullback H G f φ) {L : LB G.left} (hL : L.IsLB)
    (h₁ : ((abelian₂ G L).pull (lift (𝟙 G) (𝟙 G)).left).IsLB)
    (h₂ : ((abelian₂ H (L.pull φ)).pull (lift (𝟙 H) (𝟙 H)).left).IsLB) : cls _ h₂ = pull φ (cls _ h₁) := by
  have hL' := pull_isLB hL φ
  have hΛ : (abelian₂ G L).IsLB := LB.isLB_linComb hL _ _
  have hΛ' : (abelian₂ H (L.pull φ)).IsLB := LB.isLB_linComb hL' _ _
  have c₁ : cls _ hΛ = lam (cls L hL) (fst G G) (snd G G) := cls_cube_two hL _ _ hΛ
  have c₂ : cls _ hΛ' = lam (cls _ hL') (fst H H) (snd H H) := cls_cube_two hL' _ _ hΛ'
  have c₃ : lam (cls L hL) (pushHom hp H (𝟙 H)) (pushHom hp H (𝟙 H)) = lam (pull φ (cls L hL)) (𝟙 H) (𝟙 H) := by
    simp only [lam, ← map_mul, ← map_one (pushHom hp H)]
    simp only [← pull_comp]
    rfl
  have c₄ : pull (pushHom hp H (𝟙 H)).left (lam (cls L hL) (𝟙 G) (𝟙 G)) =
      lam (cls L hL) (pushHom hp H (𝟙 H)) (pushHom hp H (𝟙 H)) := by
    rw [pull_lam, Category.comp_id]
  have c₅ : (pushHom hp H (𝟙 H)).left = φ := Category.id_comp φ
  rw [cls_pull hΛ, cls_pull hΛ', c₁, c₂, pull_lam, pull_lam, lift_fst, lift_snd, lift_fst, lift_snd, cls_pull hL,
    ← c₃, ← c₄]
  exact congrArg (fun q => pull q _) c₅

theorem diag_square {S S' : Scheme.{0}} {A : Over S'} {B : Over S} {φ : A.left ⟶ B.left}
    {φ₂ : (A ⊗ A).left ⟶ (B ⊗ B).left} (hs : IsSquare φ φ₂) :
    (lift (𝟙 A) (𝟙 A)).left ≫ φ₂ = φ ≫ (lift (𝟙 B) (𝟙 B)).left := by
  intros
  apply _root_.GlobalTheory.DiagAmpleBC.diag_comp <;> assumption

theorem eq_of_lam_of_torsion : ∀ (V : Type) [CommRing V] [IsDomain V] [CharZero V] (D : DegPre V) {S : Scheme.{0}} (B : Over S) [GrpObj B] [IsCommMonObj B] (P : LB (G2 B).left), P.IsLB → ∀ (t : Sp V ⟶ S) (a₁ a₂ : D.P.A.left ⟶ B.left) (aa₁ aa₂ : (G2 D.P.A).left ⟶ (G2 B).left), IsGrpPullback D.P.A B t a₁ → IsGrpPullback D.P.A B t a₂ → IsSquare a₁ aa₁ → IsSquare a₂ aa₂ → LBIso (abelian₂ D.P.A D.P.L) (P.pull aa₁) → LBIso (abelian₂ D.P.A D.P.L) (P.pull aa₂) → ∀ n : ℕ, 3 ≤ n → ∀ (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing V) F], (∀ x : TF (R := V) F ⟶ D.P.A, x ^ n = 1 → x.left ≫ a₁ = x.left ≫ a₂) → a₁ = a₂ := by
  intro V _ _ _ D S B _ _ P hP t a₁ a₂ aa₁ aa₂ g₁ g₂ s₁ s₂ w₁ w₂ n hn F _ _ _ hfix
  have hab := D.P.isAb
  have hL := D.P.isLB
  have hΛ : (abelian₂ D.P.A D.P.L).IsLB := LB.isLB_linComb hL _ _
  have hN := pull_isLB hΛ (lift (𝟙 D.P.A) (𝟙 D.P.A)).left
  have hcls : ∀ (a : D.P.A.left ⟶ B.left) (aa : (G2 D.P.A).left ⟶ (G2 B).left), IsSquare a aa →
      LBIso (abelian₂ D.P.A D.P.L) (P.pull aa) →
      cls _ hN = pull a (pull (lift (𝟙 B) (𝟙 B)).left (cls P hP)) := by
    intro a aa s w
    rw [cls_pull hΛ, (cls_eq_iff hΛ (pull_isLB hP aa)).2 w, cls_pull hP, ← pull_comp, ← pull_comp, diag_square s]
  let ψ : D.P.A.left ⟶ D.P.A.left := g₂.1.lift a₁ D.P.A.hom g₁.1.w
  have e₁ : ψ ≫ a₂ = a₁ := g₂.1.lift_fst _ _ _
  have e₂ : ψ ≫ D.P.A.hom = D.P.A.hom := g₂.1.lift_snd _ _ _
  have hψ : IsGrpPullback D.P.A D.P.A (𝟙 _) ψ :=
    IsGrpPullback.cancel g₂ (by rw [Category.id_comp, e₁]; exact g₁) (by rw [e₂, Category.comp_id])
  have hψc : pull ψ (cls _ hN) = cls _ hN := by
    refine Eq.trans ?_ (hcls a₁ aa₁ s₁ w₁).symm
    rw [hcls a₂ aa₂ s₂ w₂, ← pull_comp, e₁]
  let j : Sp F ⟶ Sp V := DegPre.jFR (R := V) F
  have hp := isGrpPullback_pullback D.P.A j
  have := hab.smooth
  have := hab.proper
  have := hab.geomConnected
  have habF : IsAbelianScheme ((Over.pullback j).obj D.P.A) :=
    { comm := Functor.isCommMonObj_obj
      smooth := by change Smooth (pullback.snd D.P.A.hom j); infer_instance
      proper := by change IsProper (pullback.snd D.P.A.hom j); infer_instance
      geomConnected := by change GeometricallyConnected (pullback.snd D.P.A.hom j); infer_instance }
  have : CharZero (FractionRing V) := IsFractionRing.charZero_of_isFractionRing V
  have : CharZero F := charZero_of_injective_algebraMap (algebraMap (FractionRing V) F).injective
  have hnF : (n : F) ≠ 0 := Nat.cast_ne_zero.2 (by omega)
  have e' : pullback.fst D.P.A.hom j ≫ ψ = pullback.fst D.P.A.hom j := by
    have := habF.comm
    have hL' := pull_isLB hL (pullback.fst D.P.A.hom j)
    obtain ⟨w, hw⟩ := (cls_eq_iff hL' hL').1 rfl
    have ha' : Out.RelAmple ((Over.pullback j).obj D.P.A) (D.P.L.pull (pullback.fst D.P.A.hom j)) :=
      relAmple_pull hp.1 hL hL' ((isGen_iff w).1 hw) ⊤ (isAffineOpen_top _) (fun _ => trivial) D.P.ample
    have hamp := GlobalTheory.EighthPowerFactor.relAmple_diag_lam habF hL'
      (exists_gen_theta_of_isAbelianScheme F _ habF _ hL') ha'
    have hM := pull_isLB (LB.isLB_linComb hL' _ _ : (abelian₂ ((Over.pullback j).obj D.P.A) _).IsLB)
      (lift (𝟙 ((Over.pullback j).obj D.P.A)) (𝟙 ((Over.pullback j).obj D.P.A))).left
    refine eq_of_field_of_ample (cls _ hN) habF ((hp.comp hψ).congr (Category.comp_id _) rfl) hp hM hamp
      (cls_diag_lam_pull hp hL hN hM) (by rw [pull_comp, hψc]) hn hnF fun Ω _ _ x y hy => ?_
    obtain ⟨e, rfl⟩ : ∃ e : F →+* Ω, x = spMap e := ⟨(Spec.preimage x).hom, (Spec.map_preimage x).symm⟩
    obtain ⟨y₀, hy₀⟩ := GlobalTheory.TorsRat.torsion_point_rational F Ω e _ habF n (IsUnit.mk0 _ hnF) y hy
    have : Epi (spMap e) := Flat.epi_of_flat_of_surjective (spMap e)
    have hw₀ : y₀ ≫ ((Over.pullback j).obj D.P.A).hom = 𝟙 _ := by
      rw [← cancel_epi (spMap e), ← Category.assoc, ← hy₀, Over.w y, Category.comp_id]
      rfl
    let y₁ : Over.mk (𝟙 (Sp F)) ⟶ (Over.pullback j).obj D.P.A := Over.homMk y₀ hw₀
    let u : Over.mk (spMap e) ⟶ Over.mk (𝟙 (Sp F)) := Over.homMk (spMap e) (Category.comp_id _)
    have hyu : y = u ≫ y₁ := Over.OverMorphism.ext hy₀
    have hy₁ : y₁ ^ n = 1 := by
      apply Over.OverMorphism.ext
      have h1 : u ≫ y₁ ^ n = u ≫ 1 := by rw [MonObj.comp_pow, ← hyu, hy, MonObj.comp_one]
      exact (cancel_epi (spMap e)).1 (congrArg (fun q => q.left) h1)
    have hy₂ : pushHom hp (Over.mk (𝟙 (Sp F))) y₁ ^ n = 1 := by rw [← map_pow, hy₁, map_one]
    let v : TF (R := V) F ⟶ Over.mk ((Over.mk (𝟙 (Sp F))).hom ≫ j) := Over.homMk (𝟙 _) (by simp [j])
    have hx := hfix (v ≫ pushHom hp (Over.mk (𝟙 (Sp F))) y₁) (by rw [← MonObj.comp_pow, hy₂, MonObj.comp_one])
    have hxl : (v ≫ pushHom hp (Over.mk (𝟙 (Sp F))) y₁).left = y₀ ≫ pullback.fst D.P.A.hom j := Category.id_comp _
    rw [hxl] at hx
    rw [hy₀, Category.assoc, Category.assoc]
    congr 1
    apply g₂.1.hom_ext
    · rw [Category.assoc, Category.assoc, e₁, ← Category.assoc, hx]
    · rw [Category.assoc, Category.assoc, e₂, Category.assoc]
  have hd := ReciprocityTheory.ChartRestriction.G.DVR.GC.isDominant_jFR (V := V) F
  have : IsDominant (pullback.fst D.P.A.hom j) := by
    refine ⟨?_⟩
    rw [DenseRange, Scheme.Pullback.range_fst]
    exact hd.denseRange.preimage D.P.A.hom.isOpenMap
  have : IsReduced D.P.A.left := GlobalTheory.isReduced_of_smooth_of_isReduced D.P.A.hom
  have key : ψ = 𝟙 _ :=
    ext_of_isDominant_of_isSeparated D.P.A.hom (e₂.trans (Category.id_comp _).symm) (pullback.fst D.P.A.hom j)
      (e'.trans (Category.comp_id _).symm)
  rw [← e₁, key, Category.id_comp]

end GlobalTheory.PresRigid

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentations =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentationsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentationsStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.Clauses\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentations\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon GlobalTheory.PolDeg GlobalTheory.TInj
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentationsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfProdZpowEqBalancedFormsBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfProdZpowEqBalancedFormsBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.NonemptyFiniteRootsOfBimul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.CmHostUnitAddConjEqOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon GlobalTheory.PolDeg GlobalTheory.TInj
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.BalMono

theorem coords_eq_zero {O : Type} [CommRing O] [StarRing O] [IsDedekindDomain O]
    [Module.Finite ℤ O] [Module.Free ℤ O] {w : O} (hw : w + star w = 1)
    {X : Type} [AddCommGroup X] [Module O X] [Module.Finite ℤ X] [Module.Free ℤ X]
    {J : Type} [Fintype J] (ε : Module.Basis J ℤ (PolFan.balForms (star : O → O) X))
    {B : Type} [AddCommGroup B] (c : J → B)
    (hc : ∀ a b, ∑ k, (ε k : LinearMap.BilinForm ℤ X) a b • c k = 0) (k : J) : c k = 0 := by
  classical
  have := Forms.projective_of_int O X
  have := Forms.finite_balTensor (O := O) (X := X)
  have := Forms.free_balTensor (X := X) hw
  let e := Module.Free.chooseBasis ℤ ((TensorProduct ℤ X X) ⧸ Forms.balTensorRel (O := O) (X := X))
  have hm := Forms.balTensorMk_mem_balForms O X
  let β : _ → PolFan.balForms (star : O → O) X := fun j =>
    ⟨(Forms.balTensorMk O).compr₂ (e.coord j),
      fun y x => congrArg (e.coord j) (hm.1 y x), fun a y x => congrArg (e.coord j) (hm.2 a y x)⟩
  let L : J → ((TensorProduct ℤ X X) ⧸ Forms.balTensorRel (O := O) (X := X)) →+ ℤ := fun i =>
    Forms.balTensorLift (O := O) ⟨(ε i : LinearMap.BilinForm ℤ X), (ε i).2.1, (ε i).2.2⟩
  have hL (i a b) : L i (Forms.balTensorMk O a b) = (ε i : LinearMap.BilinForm ℤ X) a b := rfl
  let Φ : ((TensorProduct ℤ X X) ⧸ Forms.balTensorRel (O := O) (X := X)) →+ B :=
    ∑ i, (zmultiplesHom B (c i)).comp (L i)
  have hΦa (t) : Φ t = ∑ i, L i t • c i := by
    simp [Φ, AddMonoidHom.finsetSum_apply]
  have hΦ : Φ = 0 := Forms.balTensor_hom_ext fun a b => by
    rw [hΦa]
    exact hc a b
  have hε (i) : ε i = ∑ j, L i (e j) • β j := by
    apply Subtype.ext
    refine LinearMap.ext fun a => LinearMap.ext fun b => ?_
    simp only [Submodule.coe_sum, Submodule.coe_smul, LinearMap.sum_apply, LinearMap.smul_apply,
      smul_eq_mul]

    rw [← hL, ← e.sum_repr (Forms.balTensorMk O a b), map_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_zsmul, smul_eq_mul, _root_.mul_comm]
    rfl
  have hδ (i) : L i (∑ j, ε.repr (β j) k • e j) = ε.repr (ε i) k := by
    have h1 := congrArg (ε.coord k) (hε i)

    rw [map_sum] at h1

    rw [map_sum, ← ε.coord_apply, h1]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_zsmul, map_zsmul, smul_eq_mul, smul_eq_mul, _root_.mul_comm, ε.coord_apply]
  have h := hΦa (∑ j, ε.repr (β j) k • e j)
  simp only [hδ, hΦ, AddMonoidHom.zero_apply] at h
  simpa [Finsupp.single_apply] using h.symm

theorem eq_of_prod_zpow_eq : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X] [Module.Free ℤ X] [Module.Finite ℤ X] (F : Type) [Field F] (I : Type) [Fintype I] (ε : Module.Basis I ℤ (balForms H.bar X)) (x y : I → F), (∀ i, x i ≠ 0) → (∀ i, y i ≠ 0) → (∀ a b, ∏ i, x i ^ (ε i : LinearMap.BilinForm ℤ X) a b = ∏ i, y i ^ (ε i : LinearMap.BilinForm ℤ X) a b) → x = y := by
  intro E _ _ _ H X _ _ _ _ F _ I _ ε x y hx hy h
  letI : StarRing (𝓞 E) :=
    { star := H.bar
      star_involutive := fun a => by
        apply Subtype.ext
        change ((H.bar (H.bar a) : 𝓞 E) : E) = a
        rw [H.bar_eq, H.bar_eq, IsCMField.complexConj_apply_apply]
      star_mul := fun a b => by rw [map_mul, _root_.mul_comm]
      star_add := fun a b => map_add H.bar a b }
  have hw : H.w0 + H.bar H.w0 = 1 := PullbackSections.CVA.cmHostUnit_add_conj_eq_one H
  let u : I → Fˣ := fun i => Units.mk0 (x i) (hx i)
  let v : I → Fˣ := fun i => Units.mk0 (y i) (hy i)
  have huv : ∀ a b, ∏ i, (u i / v i) ^ ((ε i : LinearMap.BilinForm ℤ X) a b) = 1 := by
    intro a b
    rw [Finset.prod_congr rfl (fun i _ => div_zpow _ _ _), Finset.prod_div_distrib, div_eq_one]
    apply Units.ext
    simpa [u, v, Units.coe_prod] using h a b
  funext k
  have hk := coords_eq_zero (O := 𝓞 E) hw ε (fun i => Additive.ofMul (u i / v i))
    (fun a b => by
      apply Additive.toMul.injective
      simp only [toMul_sum, toMul_zsmul, toMul_ofMul, toMul_zero]
      exact huv a b) k
  have hk' : u k / v k = 1 := hk
  simpa [u, v] using congrArg Units.val (div_eq_one.1 hk')

end GlobalTheory.BalMono
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfProdZpowEqBalancedFormsBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalInjectionsAgreeCanonicalFamilyCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalInjectionsAgreeCanonicalFamilyCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyBaseInjectionsAgreeStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComesFromBaseOfPullbackInjectiveDomains\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComesFromTautBaseOfRescaledPullbackMonomialStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegenerationDataNsmulRescaleKeepsLawsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfMumfordBundleTorsionPresentationsStatement\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfProdZpowEqBalancedFormsBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCDvrTwoEmbeddings\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelPointPairsLowerBase\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQkZeroOver\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTautologicalBaseNsmulDegenerationDataStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometryEqReflOfCongrModGeThree\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.MonomialsDifferByUnitsPositiveBoundaryCombinatioStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoComparisonNormalisedGeneratorStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OnTorusComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodPartMemTautologicalPointTorsionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothConeSumGeneratorsEqOfCommonInteriorPoint\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalBaseMatchingMonomialsRatioUnitStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalCoordsEqOfMatchingData\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalPointTransportFieldMapStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointTorusPartEqOfEquivSameLatticeStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBundleGenericFibreDescent\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.PelObjectClassPrimAndIsoClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon GlobalTheory.PolDeg GlobalTheory.TInj
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum.Two

noncomputable section

namespace GlobalTheory.UInj

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem lattice_id {O : Type} [CommRing O] {bar : O → O} {ψ : InvFun O} {X : Type} [AddCommGroup X] [Module O X]
    [Module.Finite O X] [Module.Free ℤ X] [Module.Finite ℤ X] {m : ℕ} {δ : Fin m → LinearMap.BilinForm ℤ X} (hδ : IsCone bar ψ δ)
    (hdef : ∀ x, x ≠ 0 → ∃ k, 0 < δ k x x) (ga : X ≃ₗ[O] X) (c c' : Fin m → ℕ) (hc : ∀ k, 0 < c k) (hc' : ∀ k, 0 < c' k)
    (he : ∑ k, c k • δ k = ∑ k, c' k • pull ga.toLinearMap (δ k)) {n : ℕ} (hn : 3 ≤ n)
    (hcong : ∀ x, GlobalTheory.Poinc.CongMod n (ga x) x) (x : X) : ga x = x := by
  classical
  have hδ' := hδ.pull_equiv ga
  set δ' := fun k => pull ga.toLinearMap (δ k) with hd
  have h1 : ∀ k, ∃ j, δ k = δ' j := cone_gen_mem_of_common hδ hδ' c c' hc he
  have h2 : ∀ j, ∃ k, δ' j = δ k := cone_gen_mem_of_common hδ' hδ c' c hc' he.symm
  have himg : Finset.univ.image δ = Finset.univ.image δ' := by
    ext x
    simp only [Finset.mem_image, Finset.mem_univ, true_and]
    exact ⟨by rintro ⟨k, rfl⟩; exact (h1 k).imp fun _ => Eq.symm, by rintro ⟨j, rfl⟩; exact (h2 j).imp fun _ => Eq.symm⟩
  have e1 : ∑ x ∈ Finset.univ.image δ, x = ∑ k, δ k := Finset.sum_image fun a _ b _ h => hδ.injective h
  have e2 : ∑ x ∈ Finset.univ.image δ', x = ∑ k, δ' k := Finset.sum_image fun a _ b _ h => hδ'.injective h
  have hS : ∑ k, δ k = ∑ k, δ' k := by rw [← e1, ← e2, himg]
  have hk : ∀ x y, (∑ k, δ k) (ga x) (ga y) = (∑ k, δ k) x y := by
    intro x y
    have h := LinearMap.congr_fun₂ hS x y
    simp only [LinearMap.sum_apply, hd, pull_apply, LinearEquiv.coe_coe] at h ⊢
    exact h.symm
  have hpos : ∀ x, x ≠ 0 → 0 < (∑ k, δ k) x x := by
    intro x hx
    obtain ⟨k, hk⟩ := hdef x hx
    simp only [LinearMap.sum_apply]
    exact Finset.sum_pos' (fun i _ => hδ.nonneg i x) ⟨k, Finset.mem_univ _, hk⟩
  exact DFunLike.congr_fun (GlobalTheory.Poinc.eq_refl_of_isometry_congMod X _ hpos ga.toAddEquiv.toIntLinearEquiv hk n hn hcong) x

theorem tors_sec {D' : Datum H} {l : Geo.Tor.Level H} {B : Type} [CommRing B] {bs : Geo.Tor.Base l B} {S : Scheme.{0}}
    {s : S ⟶ Sp B} (o : Obj D' l bs s) {G : Over S} [GrpObj G] {φ : o.t.G.left ⟶ G.left}
    (h : IsGrpPullback o.t.G G (𝟙 S) φ) (K : Type) [Field K] [IsAlgClosed K] (x : Sp K ⟶ S) (p : Over.mk x ⟶ G)
    (hp : p ^ l.A = 1) : ∃ σ : 𝟙_ (Over S) ⟶ G, σ ^ l.A = 1 ∧ p.left = x ≫ σ.left := by
  have : IsMonHom (Iso.refl G).hom := by show IsMonHom (𝟙 _); infer_instance
  obtain ⟨e, he, -⟩ := grpPullback_iso h (isGrpPullback_of_iso (Iso.refl G))
  obtain ⟨-, I, -, hI, -⟩ := o.geom K x (Spec.preimage (x ≫ s)).hom (Spec.map_preimage _).symm
  obtain ⟨a, ha⟩ := (I.onto l.A l.A_pos (p ≫ e.inv)).1 (by rw [← MonObj.pow_comp, hp, MonObj.one_comp])
  have h0 : o.etaA 0 = 1 := by simpa using o.etaA_ker 0
  have hpow : ∀ n : ℕ, o.etaA (n • a) = o.etaA a ^ n := fun n => by
    induction n with
    | zero => simpa using h0
    | succ n ih => rw [succ_nsmul, o.etaA_add, ih, pow_succ]
  refine ⟨o.etaA a ≫ e.hom, by rw [← MonObj.pow_comp, ← hpow, o.etaA_ker, MonObj.one_comp], ?_⟩
  have : p = toUnit _ ≫ o.etaA a ≫ e.hom := by
    rw [← Category.assoc, hI, ha, Category.assoc, e.inv_hom_id, Category.comp_id]
  rw [this]
  rfl

theorem monomials_eq {o W : Type} [CommRing o] [CommRing W] [IsLocalRing W] (T : TautBase o W) {I : Type} [Fintype I] (ε : I → LinearMap.BilinForm ℤ (Fin T.r → ℤ)) (n : ℕ) (V : Type) [CommRing V] [IsDomain V] (ω : W →+* V) (D₁ D₂ : DegPre V) (s₁ : I → V) (e₁ : D₁.X ≃+ (Fin T.r → ℤ)) (β₁ : D₁.P.A.left ⟶ T.B.left) (ββ₁ : (G2 D₁.P.A).left ⟶ (G2 T.B).left) (w₁ : LB.Iso (abelian₂ D₁.P.A D₁.P.L) ((abelian₂ T.B T.M.L).pull ββ₁)) (s₂ : I → V) (e₂ : D₂.X ≃+ (Fin T.r → ℤ)) (β₂ : D₂.P.A.left ⟶ T.B.left) (ββ₂ : (G2 D₂.P.A).left ⟶ (G2 T.B).left) (w₂ : LB.Iso (abelian₂ D₂.P.A D₂.P.L) ((abelian₂ T.B T.M.L).pull ββ₂)) (b : D₁.P.A ⟶ D₂.P.A) (φ : D₁.X ≃+ D₂.X) (F : Type) [Field F] [Algebra (FractionRing V) F] : 1 ≤ n → D₁.TauBimult → D₂.TauBimult → From T ω s₁ ε n D₁ e₁ β₁ ββ₁ w₁ → From T ω s₂ ε n D₂ e₂ β₂ ββ₂ w₂ → Match D₁ D₂ b φ F → (∀ y, e₂ (φ y) = e₁ y) → b.left ≫ β₂ = β₁ → (∀ a : Fin T.r → ℤ, ∃ (p₁ : QkPt D₁ F n) (p₂ : QkPt D₂ F n), p₁.y = e₁.symm a ∧ TautPt T ω s₁ ε n D₁ e₁ β₁ ββ₁ w₁ F a p₁.g ∧ p₂.y = e₂.symm a ∧ TautPt T ω s₂ ε n D₂ e₂ β₂ ββ₂ w₂ F a p₂.g ∧ QImg b φ p₁ p₂) → ∀ c a : Fin T.r → ℤ, ∏ i, algebraMap (FractionRing V) F (algebraMap V (FractionRing V) (s₁ i)) ^ ε i c a = ∏ i, algebraMap (FractionRing V) F (algebraMap V (FractionRing V) (s₂ i)) ^ ε i c a := by
  intro hn hD₁ hD₂ hF₁ hF₂ hM he hb H c a
  obtain ⟨hbm, -, -, hu, -⟩ := hM
  obtain ⟨p₁, p₂, hy₁, ht₁, hy₂, ht₂, p', hy', hA, hE⟩ := H a
  have hg : p'.g = p₂.g := GlobalTheory.T.torsionPoint_torusPart_eq_of_equiv_same_lattice V D₂ hD₂ F n hn p' p₂ (by
    rw [hy', hy₁, hy₂]; apply e₂.injective; rw [he, e₁.apply_symm_apply, e₂.apply_symm_apply]) hE
  rw [hg] at hA
  have hχ : e₁ (φ.symm (e₂.symm c)) = e₂ (e₂.symm c) := by rw [← he, φ.apply_symm_apply]
  obtain ⟨u, hun⟩ := hu (e₂.symm c)
  obtain ⟨k₁, hk₁, hv₁⟩ := ht₁.2 (φ.symm (e₂.symm c))
  obtain ⟨k₂, hk₂, hv₂⟩ := ht₂.2 (e₂.symm c)
  let z : (TF (R := V) F).left := (⊥ : PrimeSpectrum F)
  obtain ⟨J, hJ, -⟩ := exists_good (JN D₁ D₂) (jn_isLB D₁ D₂) z (K := Empty) Empty.elim Empty.elim
    (fun a => a.elim) (fun k => k.elim)
  obtain ⟨J₀, hJ₀, -⟩ := exists_good T.M.L T.M.isLB z (K := Empty) Empty.elim Empty.elim
    (fun a => a.elim) (fun k => k.elim)
  have a₁ := hv₁ z J₀ (rl J) hJ₀ ((isPart_inl D₁.P.L D₂.P.L).good hJ)
  have a₂ := hv₂ z J₀ (rr J) hJ₀ ((isPart_inr D₁.P.L D₂.P.L).good hJ)
  have a₃ := hA.2 (e₂.symm c) u hun z J hJ
  have a₄ := GlobalTheory.T.mumfordBundleIso_comparison_normalisedGenerator T ε n V ω D₁ D₂ s₁ e₁ β₁ ββ₁ w₁ s₂ e₂ β₂ ββ₂ w₂ b hD₁ hD₂ hF₁ hF₂ hbm hb
    (φ.symm (e₂.symm c)) (e₂.symm c) hχ u hun (TF (R := V) F) p₁.g.b z J J₀ hJ hJ₀
  rw [← hA.1] at a₄
  rw [hχ] at a₁
  have hk : k₁ = k₂ := by
    apply gm_unitOn_inj z
    exact cancel_four a₁ a₂ a₃ a₄
  have := congrArg Units.val hk
  rw [hk₁, hk₂, hχ, e₂.apply_symm_apply] at this
  exact this

theorem torsion_fixed {W R V : Type} [CommRing W] [CommRing R] [IsDomain R] [CommRing V] [IsDomain V] {B : Over (Sp W)} [GrpObj B]
    {n : ℕ} (hn : 1 ≤ n) (hB : ∀ (K : Type) [Field K] [IsAlgClosed K] (x : Sp K ⟶ Sp W) (p : Over.mk x ⟶ B), p ^ n = 1 →
      ∃ σ : 𝟙_ (Over (Sp W)) ⟶ B, σ ^ n = 1 ∧ p.left = x ≫ σ.left)
    {D₀ : DegPre R} {D₁ D₂ : DegPre V} (h₀ : D₀.TauBimult) (h₂ : D₂.TauBimult) {ω : W →+* R} {β : D₀.P.A.left ⟶ B.left}
    (hβ : IsGrpPullback D₀.P.A B (spMap ω) β) {f₁ f₂ : R →+* V} (hf : f₁.comp ω = f₂.comp ω) (hD₁ : IsPullDeg f₁ D₀ D₁)
    (hD₂ : IsPullDeg f₂ D₀ D₂) {F₀ F : Type} [Field F₀] [IsAlgClosed F₀] [Algebra (FractionRing R) F₀] [Field F]
    [IsAlgClosed F] [Algebra (FractionRing V) F] {j₁ j₂ : F₀ →+* F} {b : D₁.P.A ⟶ D₂.P.A} {φ : D₁.X ≃+ D₂.X}
    (hj₁ : Ext f₁ j₁) (hj₂ : Ext f₂ j₂)
    (hβ₁ : IsGrpPullback D₁.P.A B (spMap (f₁.comp ω)) ((hD₁.e.hom.left ≫ pullback.fst D₀.P.A.hom (specOf f₁)) ≫ β))
    (HP : ∀ p₀ : QkPt D₀ F₀ n, ∃ (p₁ : QkPt D₁ F n) (p₂ : QkPt D₂ F n), p₁.y = hD₁.xe.symm p₀.y ∧ Tr f₁ hD₁ j₁ p₀.g p₁.g ∧
      p₂.y = hD₂.xe.symm p₀.y ∧ Tr f₂ hD₂ j₂ p₀.g p₂.g ∧ QImg b φ p₁ p₂)
    (x : TF (R := V) F ⟶ D₁.P.A) (hx : x ^ n = 1) :
    x.left ≫ (hD₁.e.hom.left ≫ pullback.fst D₀.P.A.hom (specOf f₁)) ≫ β =
      x.left ≫ b.left ≫ (hD₂.e.hom.left ≫ pullback.fst D₀.P.A.hom (specOf f₂)) ≫ β := by
  obtain ⟨σ, hσ, hxσ⟩ := hB F ((TF (R := V) F).hom ≫ spMap (f₁.comp ω)) (pushHom hβ₁ _ x) (by rw [← map_pow, hx, map_one])
  have hxσ' : x.left ≫ (hD₁.e.hom.left ≫ pullback.fst D₀.P.A.hom (specOf f₁)) ≫ β =
      ((TF (R := V) F).hom ≫ spMap (f₁.comp ω)) ≫ σ.left := hxσ
  obtain ⟨b₀, hb₀⟩ := GlobalTheory.SiegelPull.push_surjective hβ (TF (R := R) F₀) (toUnit _ ≫ σ)
  have hb₀' : b₀.left ≫ β = (TF (R := R) F₀).hom ≫ spMap ω ≫ σ.left := by
    have e := congrArg (fun z => z.left) hb₀
    simp only [pushHom, pushPt, MonoidHom.mk'_apply, Over.homMk_left, Over.comp_left] at e
    rw [e]
    simp
  have hpow : b₀ ^ n = 1 := by
    apply GlobalTheory.SiegelPull.push_injective hβ
    rw [map_pow, hb₀, ← MonObj.comp_pow, hσ, MonObj.comp_one, map_one]
  obtain ⟨p₀, hp₀y, hp₀b⟩ := GlobalTheory.TInj.exists_qk_zero_over R D₀ h₀ F₀ n hn b₀ hpow
  obtain ⟨p₁, p₂, h1y, htr1, h2y, htr2, p', hp'y, hact, heqv⟩ := HP p₀
  have hg₀ : p₀.g.b.left ≫ β = (TF (R := R) F₀).hom ≫ (spMap ω ≫ σ.left) := by rw [hp₀b, hb₀']
  have hsp : ∀ f : R →+* V, spMap (f.comp ω) = spMap f ≫ spMap ω := fun f => by
    simp only [spMap, ← Spec.map_comp]; rfl
  have e₁ := tr_base hj₁ htr1 _ _ hg₀
  have e₂ := tr_base hj₂ htr2 _ _ hg₀
  rw [← Category.assoc (spMap _), ← hsp] at e₁ e₂
  have hg : p'.g = p₂.g := GlobalTheory.T.torsionPoint_torusPart_eq_of_equiv_same_lattice V D₂ h₂ F n hn p' p₂ (by rw [hp'y, h1y, h2y, hp₀y, map_zero, map_zero, map_zero]) heqv
  have hx₁ : x.left = p₁.g.b.left := by
    apply hβ₁.1.hom_ext
    · rw [hxσ', e₁, Category.assoc]
    · rw [Over.w, Over.w]
  rw [hx₁, e₁, hf, ← e₂, ← hg, hact.1, Over.comp_left, Category.assoc]



theorem coords_eq : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), 1 ≤ Dw.p + Dw.q → IsPolFan H.bar (min Dw.p Dw.q) φ → NoSelfInt H.bar (min Dw.p Dw.q) φ → ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], GlobalTheory.Mum.Base R → ∀ (C : MonoFam Xo c φ R) (Cn : Canon C), ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'], GlobalTheory.Mum.Base R' → ∀ θ₁ θ₂ : R →+* R', Function.Injective θ₁ → Function.Injective θ₂ → IsLocalHom θ₁ → IsLocalHom θ₂ → ∀ κ₁ κ₂ : Sp (FractionRing R') ⟶ Sp (FractionRing R), κ₁ ≫ jK R = jK R' ≫ spMap θ₁ → κ₂ ≫ jK R = jK R' ≫ spMap θ₂ → κ₁ ≫ C.y = κ₂ ≫ C.y → ∀ k, θ₁ (Cn.ψ (MvPolynomial.X k)) = θ₂ (Cn.ψ (MvPolynomial.X k)) := by
  intro E _ _ _ H Dw l Xo c φ hpq hφ hns R _ _ _ hR C Cn R' _ _ _ hR' θ₁ θ₂ i₁ i₂ l₁ l₂ κ₁ κ₂ hκ₁ hκ₂ hy
  have hW := _root_.GlobalTheory.UCanon.injBase Xo c φ hpq hφ hns R hR C Cn R' hR' θ₁ θ₂ i₁ i₂ l₁ l₂ κ₁ κ₂ hκ₁ hκ₂ hy
  letI := H.starRing
  have hn : 3 ≤ l.M' := l.three_le.trans (Nat.le_of_dvd (level_pos l) (Nat.dvd_lcm_left _ _))
  have hn1 : 1 ≤ l.M' := by omega
  set iw := Cn.ψ.comp MvPolynomial.C with hiwd
  have hiw : Function.Injective iw := by
    have hfl : iw.Flat := RingHom.Flat.comp (RingHom.flat_algebraMap_iff.2 inferInstance) Cn.compl.2.2.1
    letI := iw.toAlgebra
    have : Module.Flat Cn.L.W R := hfl
    have : IsLocalHom (algebraMap Cn.L.W R) := Cn.ψ_loc
    have : Module.FaithfullyFlat Cn.L.W R := Module.FaithfullyFlat.of_flat_of_isLocalHom
    exact FaithfulSMul.algebraMap_injective Cn.L.W R
  let s : Fin C.m ⊕ Fin Cn.N → R := fun k => Cn.ψ (MvPolynomial.X k)
  have hs0 : ∀ k, s k ≠ 0 := by
    rintro (k | k)
    · exact (Cn.bd k).trans_ne (C.s_ne_zero k)
    · exact (Cn.tor k).ne_zero
  obtain ⟨hev, hbi, hgen, -⟩ := GlobalTheory.T.degenerationDataNsmulRescale_keeps_laws Cn.L.W Cn.L.D (𝓞 E) Cn.L.oa H.w0 l.M' Cn.L.even Cn.L.bimult Cn.L.w0 Cn.L.gen
  obtain ⟨T, ib, β₀, ββ₀, w₀, hF₀⟩ := GlobalTheory.T.exists_tautologicalBase_nsmul_degenerationData Cn.L.b Cn.L.D Cn.L.bimult Cn.L.gen l.M'
  obtain ⟨g, hD, hg, hxe, -⟩ := Cn.data
  let ε : Fin C.m ⊕ Fin Cn.N → LinearMap.BilinForm ℤ (Fin T.r → ℤ) := fun k =>
    (Cn.ε k : LinearMap.BilinForm ℤ Cn.L.D.X).compl₁₂ ib.symm.toIntLinearEquiv.toLinearMap ib.symm.toIntLinearEquiv.toLinearMap
  have hε : ∀ k a b, ε k (ib a) (ib b) = (Cn.ε k : LinearMap.BilinForm ℤ Cn.L.D.X) a b := fun k a b =>
    congrArg₂ (fun x y => (Cn.ε k : LinearMap.BilinForm ℤ Cn.L.D.X) x y) (ib.symm_apply_apply a) (ib.symm_apply_apply b)
  let e : C.P.D.toPre.X ≃+ (Fin T.r → ℤ) := Cn.e.toAddEquiv.trans ib
  have he : ∀ y, e y = ib (Cn.e y) := fun _ => rfl
  obtain ⟨β, ββ, w, hF⟩ := _root_.GlobalTheory.TInj.from_rescale_pull T l.M' (mulDeg Cn.L.D l.M') hev hbi hgen ib β₀ ββ₀ w₀ hF₀ R iw hiw C.P.D.toPre g hD
    s ε e (fun y => congrArg ib (hxe y).symm) (fun a a' => by
      simp only [he, hε]
      exact _root_.GlobalTheory.UCanon.LatId.second_diff_bal Cn.e _ (fun k => (map_ne_zero_iff _ (IsFractionRing.injective R _)).2 (hs0 k)) _
        (fun k => (Cn.ε k).2) _ g hg a a')
  have hT : IsGrpPullback Cn.L.o.t.G T.B (𝟙 _) (Cn.L.φB ≫ β₀) :=
    (Cn.L.ab.1.comp hF₀.1).congr ((Category.id_comp _).trans (Spec.map_id _)) rfl
  obtain ⟨V, _, _, _, _, η', f₁, f₂, hV, hη, hf₁, hf₂, lf₁, lf₂, c₁, c₂⟩ :=
    exists_cDvr_two_embeddings R R R' (RingHom.id R) Function.injective_id (RingHom.Finite.id R)
      ⟨hR'.1.1, hR'.1.2.2.1, hR'.1.2.2.2, hR'.2⟩ θ₁ θ₂ i₁ i₂ l₁ l₂
  rw [RingHom.comp_id] at c₁ c₂
  obtain ⟨k₀, hk₀⟩ := exists_genericMap hη
  have hk : ∀ (θ : R →+* R') (κ : Sp (FractionRing R') ⟶ Sp (FractionRing R)), κ ≫ jK R = jK R' ≫ spMap θ →
      (k₀ ≫ κ) ≫ jK R = jK V ≫ spMap (η'.comp θ) := fun θ κ hκ => by
    rw [Category.assoc, hκ, ← Category.assoc, hk₀, Category.assoc, GlobalTheory.GenericBundleDescent.sp_comp]
  obtain ⟨D₁, D₂, hD₁, hD₂, j₁, j₂, b, ph, hE₁, hE₂, hM, hlin, hpairs, -⟩ := pair_match Xo c φ R hR C.toFam V hV f₁ f₂ hf₁ hf₂
    lf₁ lf₂ (k₀ ≫ κ₁) (k₀ ≫ κ₂) (c₁ ▸ hk θ₁ κ₁ hκ₁) (c₂ ▸ hk θ₂ κ₂ hκ₂) (by rw [Category.assoc, hy, Category.assoc])
  obtain ⟨ββ₁, w₁, hF₁⟩ := from_pull T ε l.M' R V _ C.P.D iw s e β ββ w f₁ D₁.toPre hD₁ hf₁ hF
  obtain ⟨ββ₂, w₂, hF₂⟩ := from_pull T ε l.M' R V _ C.P.D iw s e β ββ w f₂ D₂.toPre hD₂ hf₂ hF
  have htaut : ∀ a : Fin T.r → ℤ, ∃ (p₁ : QkPt D₁.toPre (AlgebraicClosure (FractionRing V)) l.M')
      (p₂ : QkPt D₂.toPre (AlgebraicClosure (FractionRing V)) l.M'),
      p₁.y = (hD₁.xe.trans e).symm a ∧ TautPt T (f₁.comp iw) (fun k => f₁ (s k)) ε l.M' D₁.toPre (hD₁.xe.trans e)
        ((hD₁.e.hom.left ≫ pullback.fst C.P.D.toPre.P.A.hom (specOf f₁)) ≫ β) ββ₁ w₁ (AlgebraicClosure (FractionRing V)) a p₁.g ∧
      p₂.y = (hD₂.xe.trans e).symm a ∧ TautPt T (f₂.comp iw) (fun k => f₂ (s k)) ε l.M' D₂.toPre (hD₂.xe.trans e)
        ((hD₂.e.hom.left ≫ pullback.fst C.P.D.toPre.P.A.hom (specOf f₂)) ≫ β) ββ₂ w₂ (AlgebraicClosure (FractionRing V)) a p₂.g ∧
      QImg b ph p₁ p₂ := by
    intro a
    obtain ⟨p₀, hp₀y, hp₀⟩ := GlobalTheory.T.periodPart_mem_tautologicalPoint_torsion T ε l.M' R C.P.D.toPre iw s e β ββ w C.P.D.tau_bimult hF hs0
      (AlgebraicClosure (FractionRing R)) a
    obtain ⟨p₁, p₂, hp₁y, hTr₁, hp₂y, hTr₂, hQ⟩ := hpairs p₀
    exact ⟨p₁, p₂, by rw [hp₁y, hp₀y]; rfl,
      GlobalTheory.T.tautologicalPoint_transport_fieldMap T ε l.M' R V _ C.P.D iw s e β ββ w f₁ D₁.toPre hD₁ ββ₁ w₁ hf₁ D₁.tau_bimult hF hF₁ _ _ j₁ hE₁ a _ _ hp₀ hTr₁,
      by rw [hp₂y, hp₀y]; rfl,
      GlobalTheory.T.tautologicalPoint_transport_fieldMap T ε l.M' R V _ C.P.D iw s e β ββ w f₂ D₂.toPre hD₂ ββ₂ w₂ hf₂ D₂.tau_bimult hF hF₂ _ _ j₂ hE₂ a _ _ hp₀ hTr₂,
      hQ⟩

  let ga : C.P.D.toPre.X ≃ₗ[𝓞 E] C.P.D.toPre.X :=
    { (hD₁.xe.symm.trans ph).trans hD₂.xe with map_smul' := hlin }
  have hga : ∀ y, ga y = hD₂.xe (ph (hD₁.xe.symm y)) := fun _ => rfl
  have hbd : ∀ f : R →+* V, Function.Injective f → IsLocalHom f → ∀ k, f (s (.inl k)) ∈ maximalIdeal V ∧ f (s (.inl k)) ≠ 0 :=
    fun f hf hl k => ⟨map_nonunit f _ (show Cn.ψ _ ∈ maximalIdeal R from (Cn.bd k).symm ▸ C.s_mem k),
      (map_ne_zero_iff f hf).2 (hs0 _)⟩
  have hpu := _root_.GlobalTheory.TInj.PerUnit.monomial_ratio_unit T ε l.M' V D₁.toPre D₂.toPre _ _ _ _ ββ₁ w₁ _ _ _ _ ββ₂ w₂ b ph _ D₁.tau_bimult D₂.tau_bimult hF₁ hF₂ hM
  obtain ⟨d₁, d₂, hd₁, hd₂, hsum⟩ := _root_.GlobalTheory.TInj.coneval V T.r C.m Cn.N l.M' hn1 ε (fun k => f₁ (s k)) (fun k => f₂ (s k))
    ((e.symm.trans ga.toAddEquiv).trans e).toIntLinearEquiv (hbd f₁ hf₁ lf₁) (fun k => (Cn.tor k).map f₁) (hbd f₂ hf₂ lf₂)
    (fun k => (Cn.tor k).map f₂) (fun a a' => by
      obtain ⟨u, hu⟩ := hpu (hD₁.xe.symm (e.symm a)) (hD₁.xe.symm (e.symm a'))
      simp only [AddEquiv.trans_apply, AddEquiv.apply_symm_apply] at hu
      exact ⟨u, hu⟩)
  have hδ : ∀ k a a', C.δ k a a' = ε (.inl k) (e a) (e a') := fun k a a' => by rw [he, he, hε, Cn.cone]; rfl
  have hid := lattice_id C.cone (fun x hx => by
      obtain ⟨i, hi⟩ := C.mono.exists_pos (maximalIdeal.isMaximal _).ne_top hx
      exact ⟨i, (mul_pos_iff_of_pos_left (show (0 : ℤ) < l.M' by exact_mod_cast level_pos l)).1 hi⟩) ga d₁ d₂ hd₁ hd₂
    (LinearMap.ext₂ fun a a' => by
      have h := LinearMap.congr_fun₂ hsum (e a) (e a')
      simpa [LinearMap.sum_apply, hδ] using h) hn (fun x => by
      obtain ⟨p₁, p₂, hy₁, -, hy₂, -, p', hp', -, z, hz, -⟩ := htaut (e x)
      have h : hD₂.xe p₂.y = hD₂.xe (ph p₁.y) + l.M' • hD₂.xe z := by rw [hz, map_add (f := _), hp', map_nsmul]
      rw [hy₂, hy₁] at h
      refine ⟨-(hD₂.xe z), ?_⟩
      rw [smul_neg, eq_add_neg_iff_add_eq, hga]
      simpa using h.symm)
  have hlat : ∀ y, (hD₂.xe.trans e) (ph y) = (hD₁.xe.trans e) y := fun y => by
    have := hid (hD₁.xe y)
    rw [hga, AddEquiv.symm_apply_apply] at this
    exact congrArg e this

  have hω : f₁.comp iw = f₂.comp iw := by rw [c₁, c₂, RingHom.comp_assoc, RingHom.comp_assoc, hW]
  rw [← hω] at hF₂ htaut
  haveI := hM.2.1
  haveI : IsMonHom (asIso b).hom := hM.1
  have hbsq : IsSquare b.left (lift (fst D₁.toPre.P.A D₁.toPre.P.A ≫ b) (snd D₁.toPre.P.A D₁.toPre.P.A ≫ b) :
      G2 D₁.toPre.P.A ⟶ G2 D₂.toPre.P.A).left :=
    ⟨by rw [← Over.comp_left, lift_fst, Over.comp_left], by rw [← Over.comp_left, lift_snd, Over.comp_left]⟩
  have hLam : ∀ D : DegPre V, (abelian₂ D.P.A D.P.L).IsLB := fun D => LB.isLB_linComb D.P.isLB _ _
  have hLamT : (abelian₂ T.B T.M.L).IsLB := LB.isLB_linComb T.M.isLB _ _
  have hb := _root_.GlobalTheory.PresRigid.eq_of_lam_of_torsion V D₁.toPre T.B _ hLamT _ _ _ _ _ hF₁.1
    (((isGrpPullback_of_iso (asIso b)).comp hF₂.1).congr (Category.id_comp _) rfl) hF₁.2.1 (isSquare_comp hbsq hF₂.2.1)
    ⟨w₁, hF₁.2.2.1⟩ (LBIso.trans (hLam _) (pull_isLB (hLam _) _) (pull_isLB hLamT _) hM.2.2.1
      (lbIso_pull_comp ⟨w₂, hF₂.2.2.1⟩ _ rfl)) l.M' hn (AlgebraicClosure (FractionRing V))
    (torsion_fixed hn1 (tors_sec Cn.L.o hT) C.P.D.tau_bimult D₂.tau_bimult hF.1 hω hD₁ hD₂ hE₁ hE₂ hF₁.1 hpairs)
  have key := monomials_eq T ε l.M' V _ D₁.toPre D₂.toPre _ _ _ ββ₁ w₁ _ _ _ ββ₂ w₂ b ph _ hn1 D₁.tau_bimult D₂.tau_bimult
    hF₁ hF₂ hM hlat hb.symm htaut
  let f : V →+* AlgebraicClosure (FractionRing V) := (algebraMap (FractionRing V) _).comp (algebraMap V (FractionRing V))
  have hf : Function.Injective f :=
    (algebraMap (FractionRing V) _).injective.comp (IsFractionRing.injective V (FractionRing V))
  have hx := _root_.GlobalTheory.BalMono.eq_of_prod_zpow_eq H Cn.L.D.X _ _ Cn.ε (fun k => f (f₁ (s k))) (fun k => f (f₂ (s k)))
    (fun k => (map_ne_zero_iff _ hf).2 ((map_ne_zero_iff _ hf₁).2 (hs0 k)))
    (fun k => (map_ne_zero_iff _ hf).2 ((map_ne_zero_iff _ hf₂).2 (hs0 k)))
    (fun a a' => by
      have := key (ib a) (ib a')
      simp only [hε] at this
      exact this)
  intro k
  have h1 := hf (congrFun hx k)
  rw [c₁, c₂] at h1
  exact hη h1

end GlobalTheory.UInj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalInjectionsAgreeCanonicalFamilyCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyLocalInjectionsEqSamePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyLocalInjectionsEqSamePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyBaseInjectionsAgreeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffPow\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalInjectionsAgreeCanonicalFamilyCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.UCanon.inj_of_canon : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), 1 ≤ Dw.p + Dw.q → IsPolFan H.bar (min Dw.p Dw.q) φ → NoSelfInt H.bar (min Dw.p Dw.q) φ → ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], GlobalTheory.Mum.Base R → ∀ (C : MonoFam Xo c φ R), Canon C → Inj C := by
  intro E _ _ _ H Dw l Xo c φ h₁ h₂ h₃ R _ _ _ hR C Cn R' _ _ _ hR' θ₁ θ₂ i₁ i₂ l₁ l₂ κ₁ κ₂ e₁ e₂ e
  have : IsNoetherianRing R' := hR'.1.1
  refine GlobalTheory.TChart.cuniq _ R R' Cn.ψ Cn.compl θ₁ θ₂ l₁ l₂ (MvPolynomial.ringHom_ext (fun w => ?_) (fun k => ?_))
  · exact RingHom.congr_fun
      (_root_.GlobalTheory.UCanon.injBase Xo c φ h₁ h₂ h₃ R hR C Cn R' hR' θ₁ θ₂ i₁ i₂ l₁ l₂ κ₁ κ₂ e₁ e₂ e) w
  · exact _root_.GlobalTheory.UInj.coords_eq Xo c φ h₁ h₂ h₃ R hR C Cn R' hR' θ₁ θ₂ i₁ i₂ l₁ l₂ κ₁ κ₂ e₁ e₂ e k
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyLocalInjectionsEqSamePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTauScaledGeneratorTorusMonomial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTauScaledGeneratorTorusMonomial", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullUUnitsCompatGeneric\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TorusMemOfSepAtBTate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon.ScaleTorus

theorem isUnitTau_scaleGen : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H}
    (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)) (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R]
    (C : MonoFam Xo c φ R) (N : ℕ) (s : Fin C.m ⊕ Fin N → R)
    (ε : Module.Basis (Fin C.m ⊕ Fin N) ℤ (balForms H.bar C.P.D.toPre.X)) (τ₀ : Gens C.P.D.toPre),
    (∀ i, s (.inl i) = C.s i) → (∀ i, (ε (.inl i) : LinearMap.BilinForm ℤ _) = C.δ i) →
    TauIn C.P.D.toPre τ₀ (fun k => s (finSumFinEquiv.symm k))
      (fun k => (l.M' : ℤ) • (ε (finSumFinEquiv.symm k) : LinearMap.BilinForm ℤ C.P.D.toPre.X)) →
    ∀ (u : Fin N → Rˣ), (∀ k, (u k : R) = s (.inr k)) → ∀ a b,
      GlobalTheory.RigChart.IsUnitTau C.P.D.toPre C.s (fun i => (l.M' : ℤ) • C.δ i) a b
        (ReciprocityTheory.ChartRestriction.G.DVR.scaleGen
          (unitOn (∏ k, u k ^ ((l.M' : ℤ) * (ε (.inr k) : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b))) (τ₀ a b)) := by
  intro E _ _ _ H Dw l Xo c φ R _ _ _ C N s ε τ₀ hs hε hτ u hu a b
  obtain ⟨hgen, k, hk, hval⟩ := hτ a b
  set w : Rˣ := ∏ k, u k ^ ((l.M' : ℤ) * (ε (.inr k) : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b) with hw
  let w' : (FractionRing R)ˣ := Units.map (algebraMap R (FractionRing R)).toMonoidHom w
  have hw' : (w' : FractionRing R) = ∏ k, algebraMap R (FractionRing R) (s (.inr k)) ^
      ((l.M' : ℤ) • (ε (.inr k) : LinearMap.BilinForm ℤ C.P.D.toPre.X)) a b := by
    simp only [w', hw, map_prod, map_zpow, Units.coe_prod, Units.val_zpow_eq_zpow_val, Units.coe_map,
      LinearMap.smul_apply, smul_eq_mul, ← hu]
    rfl
  refine ⟨ReciprocityTheory.ChartRestriction.G.DVR.scaleGen_isGen _ _ hgen, k * w'⁻¹, ?_, fun zz J hJ => ?_⟩
  · rw [Units.val_mul, Units.val_inv_eq_inv_val, mul_inv_eq_iff_eq_mul₀ w'.ne_zero, hk, hw']
    refine (finSumFinEquiv.symm.prod_comp fun k => algebraMap R (FractionRing R) (s k) ^
      ((l.M' : ℤ) • (ε k : LinearMap.BilinForm ℤ C.P.D.toPre.X)) a b).trans ?_
    rw [Fintype.prod_sum_type]
    simp only [hs, hε]
  · have e₁ : val (ReciprocityTheory.ChartRestriction.G.DVR.scaleGen (unitOn w) (τ₀ a b)) (toUnit (TK R)).left zz J =
        gm (toUnit (TK R)).left zz ⊤ (unitOn w) * val (τ₀ a b) (toUnit (TK R)).left zz J :=
      (map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res _ zz le_top (hJ.mem _ _) _) rfl)
    have e₂ : gm (toUnit (TK R)).left zz ⊤ (unitOn w) = gm (𝟙 (TK R).left) zz ⊤ (unitOn w') := by
      have e : (toUnit (TK R)).left = spMap (algebraMap R (FractionRing R)) := by simp
      rw [e]
      exact SepBModel.gm_spMap _ zz w
    have e₃ : gm (𝟙 (TK R).left) zz ⊤ (unitOn k) =
        gm (𝟙 (TK R).left) zz ⊤ (unitOn (k * w'⁻¹)) * gm (𝟙 (TK R).left) zz ⊤ (unitOn w') := by
      refine Eq.trans ?_ (map_mul _ _ _)
      refine congrArg _ (Eq.trans ?_ (_root_.GlobalTheory.ToricData.unitOn_mul _ _))
      rw [inv_mul_cancel_right]
    refine (hval zz J hJ).trans (Eq.trans ?_ (congrArg _ e₁.symm))
    rw [e₂, ← _root_.mul_assoc, ← e₃]

end GlobalTheory.UCanon.ScaleTorus
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTauScaledGeneratorTorusMonomial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubfieldOfBilinFormBasisMonomials =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubfieldOfBilinFormBasisMonomials", "h": "module\n\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\npublic import Mathlib.LinearAlgebra.FreeModule.PID\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

theorem mem_subfield_of_zpow_mem {K : Type} [Field K] (k₀ : Subfield K) [IsAlgClosed k₀]
    (u : Kˣ) (m : ℤ) (hm : m ≠ 0) (h : ((u ^ m : Kˣ) : K) ∈ k₀) : (u : K) ∈ k₀ := by
  have h1 : (u : K) ^ m.natAbs ∈ k₀ := by
    rw [Units.val_zpow_eq_zpow_val] at h
    rcases Int.natAbs_eq m with h2 | h2
    · rw [h2, zpow_natCast] at h; exact h
    · rw [h2, zpow_neg, zpow_natCast] at h
      simpa using k₀.inv_mem h
  have hint : IsIntegral k₀ (u : K) := by
    apply IsIntegral.of_pow (Int.natAbs_pos.mpr hm)
    exact isIntegral_algebraMap (R := k₀) (x := ⟨_, h1⟩)
  obtain ⟨y, hy⟩ := minpoly.mem_range_of_degree_eq_one k₀ (u : K)
    (IsAlgClosed.degree_eq_one_of_irreducible k₀ (minpoly.irreducible hint))
  rw [← hy]
  exact y.2

def monomialExponents {I : Type} [Fintype I] {K : Type} [Field K] (k₀ : Subfield K)
    (t : I → Kˣ) : Submodule ℤ (I → ℤ) :=
  AddSubgroup.toIntSubmodule
  { carrier := {v | ((∏ k, t k ^ v k : Kˣ) : K) ∈ k₀}
    zero_mem' := by simp [k₀.one_mem]
    add_mem' := by
      intro a b ha hb
      simp only [Set.mem_setOf_eq, Pi.add_apply, zpow_add, Finset.prod_mul_distrib,
        Units.val_mul] at *
      exact k₀.mul_mem ha hb
    neg_mem' := by
      intro a ha
      simp only [Set.mem_setOf_eq, Pi.neg_apply, zpow_neg, Finset.prod_inv_distrib,
        Units.val_inv_eq_inv_val] at *
      exact k₀.inv_mem ha }

theorem mem_monomialExponents {I : Type} [Fintype I] {K : Type} [Field K] (k₀ : Subfield K)
    (t : I → Kˣ) (v : I → ℤ) :
    v ∈ monomialExponents k₀ t ↔ ((∏ k, t k ^ v k : Kˣ) : K) ∈ k₀ := Iff.rfl

theorem mem_monomialExponents_of_smul {I : Type} [Fintype I] {K : Type} [Field K]
    (k₀ : Subfield K) [IsAlgClosed k₀] (t : I → Kˣ) (v : I → ℤ) (m : ℤ) (hm : m ≠ 0)
    (h : m • v ∈ monomialExponents k₀ t) : v ∈ monomialExponents k₀ t := by
  rw [mem_monomialExponents] at h ⊢
  apply mem_subfield_of_zpow_mem k₀ _ m hm
  convert h using 2
  rw [← Finset.prod_zpow]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [← zpow_mul, Pi.smul_apply, smul_eq_mul, mul_comm]

theorem mem_subfield_of_bilinForm_monomials :
    ∀ (X : Type) [AddCommGroup X] (S : Submodule ℤ (LinearMap.BilinForm ℤ X)) (I : Type) [Fintype I]
    (ε : Module.Basis I ℤ S) (K : Type) [Field K] (k₀ : Subfield K), IsAlgClosed k₀ → ∀ (n : ℤ), n ≠ 0 →
    ∀ (t : I → Kˣ), (∀ a b : X, ((∏ k, t k ^ (n * (ε k : LinearMap.BilinForm ℤ X) a b) : Kˣ) : K) ∈ k₀) →
    ∀ k, (t k : K) ∈ k₀ := by
  intro X _ S I _ ε K _ k₀ hk n hn t h k
  classical
  set P := monomialExponents k₀ t with hP
  have hv : ∀ a b : X, (fun k => (ε k : LinearMap.BilinForm ℤ X) a b) ∈ P := fun a b =>
    mem_monomialExponents_of_smul k₀ t _ n hn (h a b)
  haveI : NoZeroSMulDivisors ℤ ((I → ℤ) ⧸ P) := by
    refine ⟨fun {c x} hx => ?_⟩
    obtain ⟨v, rfl⟩ := P.mkQ_surjective x
    by_cases hc : c = 0
    · exact Or.inl hc
    · right
      rw [← map_smul] at hx
      rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at hx ⊢
      exact mem_monomialExponents_of_smul k₀ t v c hc hx
  haveI : Module.Free ℤ ((I → ℤ) ⧸ P) := Module.free_of_finite_type_torsion_free'
  have key : P.mkQ (Pi.single k 1) = 0 := by
    rw [← Module.forall_dual_apply_eq_zero_iff ℤ]
    intro φ
    have hz : ∑ j, φ (P.mkQ (Pi.single j 1)) • ε j = 0 := by
      apply Subtype.ext
      ext a b
      have h0 : φ (P.mkQ (fun k => (ε k : LinearMap.BilinForm ℤ X) a b)) = 0 := by
        rw [Submodule.mkQ_apply, (Submodule.Quotient.mk_eq_zero P).mpr (hv a b), map_zero]
      have h1 : (fun k => (ε k : LinearMap.BilinForm ℤ X) a b)
          = ∑ j, (ε j : LinearMap.BilinForm ℤ X) a b • (Pi.single j 1 : I → ℤ) := by
        funext i
        simp [Finset.sum_apply, Pi.single_apply]

      rw [h1, map_sum, map_sum] at h0
      simp only [map_smul, smul_eq_mul] at h0
      simp only [AddSubmonoidClass.coe_finsetSum, Submodule.coe_smul, LinearMap.sum_apply,
        LinearMap.smul_apply, smul_eq_mul, ZeroMemClass.coe_zero, LinearMap.zero_apply]
      rw [← h0]
      exact Finset.sum_congr rfl fun j _ => mul_comm _ _
    exact Fintype.linearIndependent_iff.mp ε.linearIndependent _ hz k
  rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, hP, mem_monomialExponents] at key
  convert key using 2
  rw [Finset.prod_eq_single k]
  · simp
  · intro j _ hj; simp [hj]
  · simp

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubfieldOfBilinFormBasisMonomials =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomDescent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomDescent", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteEtalePointOfExt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.OActDescendOfGenerators\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AlgClosedDescent

theorem hom_descent : ∀ (k₀ K : Type) [Field k₀] [IsAlgClosed k₀] [Field K] [Algebra k₀ K] (B B' : Over (Sp k₀)) [GrpObj B] [GrpObj B'], IsAbelianScheme B → IsAbelianScheme B' → ∀ f : (Over.pullback (spMap (algebraMap k₀ K))).obj B ⟶ (Over.pullback (spMap (algebraMap k₀ K))).obj B', IsMonHom f → ∃! f₀ : B ⟶ B', IsMonHom f₀ ∧ (Over.pullback (spMap (algebraMap k₀ K))).map f₀ = f := by
  intro k₀ K _ _ _ _ B B' _ _ hB hB' f hf
  have hP : IsAbelianScheme (B ⊗ B') := AbelianSchemeGerms.isAbelianScheme_tensor _ _ hB hB'
  let i : B ⟶ B ⊗ B' := lift (𝟙 B) 1
  let j : B' ⟶ B ⊗ B' := lift 1 (𝟙 B')
  have hi : IsMonHom i := by
    have : IsMonHom (1 : B ⟶ B') := by
      rw [Hom.one_def]; infer_instance
    infer_instance
  have hj : IsMonHom j := by
    have : IsMonHom (1 : B' ⟶ B) := by
      rw [Hom.one_def]; infer_instance
    infer_instance
  obtain ⟨F₀, ⟨hF₀, hF⟩, -⟩ := endo_descent (K := K) (B ⊗ B') hP
    ((Over.pullback (spMap (algebraMap k₀ K))).map (fst B B') ≫ f ≫
      (Over.pullback (spMap (algebraMap k₀ K))).map j) inferInstance
  have key : (Over.pullback (spMap (algebraMap k₀ K))).map (i ≫ F₀ ≫ snd B B') = f := by
    rw [Functor.map_comp, Functor.map_comp, hF]
    simp only [Category.assoc]
    rw [← Functor.map_comp, ← Functor.map_comp_assoc, lift_fst, lift_snd,
      CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id, Category.id_comp,
      Category.comp_id]
  exact ⟨i ≫ F₀ ≫ snd B B', ⟨inferInstance, key⟩, fun f₁ hf₁ =>
    ActDescent.pullback_map_injective (spMap (algebraMap k₀ K)) B B' (hf₁.2.trans key.symm)⟩

end GlobalTheory.AlgClosedDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomDescent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoOfLbIsoFieldExt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoOfLbIsoFieldExt", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolarisedAVIsoDescendsOfRationalThreeTorsion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.UCanon.lbIso_of_lbIso_fieldExt : ∀ (k₀ K : Type) [Field k₀] [Field K] (i₀ : k₀ →+* K) (B : Over (Sp k₀)) [GrpObj B], IsAbelianScheme B → ∀ L L' : LB B.left, L.IsLB → L'.IsLB → LBIso (L.pull (pullback.fst B.hom (spMap i₀))) (L'.pull (pullback.fst B.hom (spMap i₀))) → LBIso L L' := by
  intro k₀ K _ _ i₀ B _ hB L L' hL hL' h
  exact GlobalTheory.PolIsoDescent.lbIso_descend GlobalTheory.globalFns_holds (spMap i₀) B hB hL hL' h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoOfLbIsoFieldExt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfield =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfield", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TorusMemOfSepAtBTate\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomDescent\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoOfLbIsoFieldExt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon.BaseDescent

theorem exists_descent {K : Type} [Field K] (k₀ : Subfield K) [IsAlgClosed k₀] {S : Scheme.{0}} (g : Sp k₀ ⟶ S)
    (B₀ : Over (Sp k₀)) [GrpObj B₀] (B₁ : Over S) [GrpObj B₁] (B' : Over (Sp K)) [GrpObj B']
    (h₀ : IsAbelianScheme B₀) (h₁ : IsAbelianScheme B₁) {π₀ : B'.left ⟶ B₀.left} {δ : B'.left ⟶ B₁.left}
    (p₀ : IsGrpPullback B' B₀ (spMap k₀.subtype) π₀) (p₁ : IsGrpPullback B' B₁ (spMap k₀.subtype ≫ g) δ) :
    ∃ κ₀ : B₀.left ⟶ B₁.left, π₀ ≫ κ₀ = δ := by
  let i : Sp K ⟶ Sp k₀ := spMap k₀.subtype
  let B₂ := (Over.pullback g).obj B₁
  obtain ⟨e₁, m₁, he₁⟩ := grpPullback_iso (isGrpPullback_pullback B₀ i) p₀
  obtain ⟨e₂, m₂, he₂⟩ := grpPullback_iso p₁ ((isGrpPullback_pullback B₂ i).comp (isGrpPullback_pullback B₁ g))
  obtain ⟨f₀, ⟨-, hf⟩, -⟩ := GlobalTheory.AlgClosedDescent.hom_descent k₀ K B₀ B₂ h₀ (TLinPf.isAb_pullback g B₁ h₁)
    (e₁.hom ≫ e₂.hom) (by exact inferInstanceAs (IsMonHom (e₁.hom ≫ e₂.hom)))
  refine ⟨f₀.left ≫ pullback.fst B₁.hom g, ?_⟩
  have hi : IsIso e₁.hom.left := ⟨⟨e₁.inv.left, by rw [← Over.comp_left, e₁.hom_inv_id, Over.id_left],
    by rw [← Over.comp_left, e₁.inv_hom_id, Over.id_left]⟩⟩
  have h2 : (e₁.hom ≫ e₂.hom).left ≫ pullback.fst B₂.hom i = pullback.fst B₀.hom i ≫ f₀.left := by
    exact (congrArg (fun q => q.left ≫ pullback.fst B₂.hom i) hf).symm.trans (pullback.lift_fst _ _ _)
  rw [← cancel_epi e₁.hom.left, ← he₂, ← Category.assoc, he₁, ← Category.assoc, ← h2]
  simp only [Over.comp_left, Category.assoc]

alias lbIso_pull := _root_.GlobalTheory.RigidBundleGlue.LBIso.pull

theorem exists_lbIso {K : Type} [Field K] (k₀ : Subfield K) (B₀ : Over (Sp k₀)) [GrpObj B₀] (B' : Over (Sp K)) [GrpObj B']
    (h₀ : IsAbelianScheme B₀) {A B₁ : Scheme.{0}} {π₀ : B'.left ⟶ B₀.left} {π₁ : B'.left ⟶ A} {β : A ⟶ B₁}
    {κ₀ : B₀.left ⟶ B₁} (p₀ : IsGrpPullback B' B₀ (spMap k₀.subtype) π₀) (hκ₀ : π₀ ≫ κ₀ = π₁ ≫ β)
    {L : LB A} {M₀ : LB B₀.left} {M₁ : LB B₁} (hL : L.IsLB) (hM₀ : M₀.IsLB) (hM₁ : M₁.IsLB)
    (w : LBIso (L.pull π₁) (M₀.pull π₀)) (w' : LBIso L (M₁.pull β)) : LBIso M₀ (M₁.pull κ₀) := by
  obtain ⟨e, -, he⟩ := grpPullback_iso (isGrpPullback_pullback B₀ (spMap k₀.subtype)) p₀
  have P : ∀ {X Y : Scheme.{0}} {N : LB X}, N.IsLB → ∀ f : Y ⟶ X, (N.pull f).IsLB := fun h f => pull_isLB h f
  have a₁ : LBIso (M₀.pull π₀) ((M₁.pull β).pull π₁) :=
    LBIso.trans (P hM₀ _) (P hL _) (P (P hM₁ _) _) w.symm (lbIso_pull w' π₁)
  have a₂ : LBIso ((M₁.pull β).pull π₁) ((M₁.pull κ₀).pull π₀) :=
    LBIso.trans (P (P hM₁ _) _) (P hM₁ (π₁ ≫ β)) (P (P hM₁ _) _) (SepBModel.lbIso_two hM₁ β π₁).symm
      (hκ₀ ▸ SepBModel.lbIso_two hM₁ κ₀ π₀)
  have a₃ := lbIso_pull (LBIso.trans (P hM₀ _) (P (P hM₁ _) _) (P (P hM₁ _) _) a₁ a₂) e.hom.left
  refine lbIso_of_lbIso_fieldExt k₀ K k₀.subtype B₀ h₀ _ _ hM₀ (P hM₁ _) ?_
  have a₄ := LBIso.trans (P hM₀ _) (P (P hM₀ _) _) (P (P (P hM₁ _) _) _) (SepBModel.lbIso_two hM₀ π₀ e.hom.left) a₃
  have a₅ := LBIso.trans (P hM₀ _) (P (P (P hM₁ _) _) _) (P (P hM₁ _) _) a₄
    (SepBModel.lbIso_two (P hM₁ κ₀) π₀ e.hom.left).symm
  rw [he] at a₅
  exact a₅

theorem exists_unit {B' B₀ A B₁ : Scheme.{0}} {π₀ : B' ⟶ B₀} {π₁ : B' ⟶ A} {β : A ⟶ B₁} {κ₀ : B₀ ⟶ B₁}
    (hκ₀ : π₀ ≫ κ₀ = π₁ ≫ β) {L : LB A} {M₀ : LB B₀} {M₁ : LB B₁} (hL : L.IsLB) (hM₀ : M₀.IsLB) (hM₁ : M₁.IsLB)
    {w : LB.Iso (L.pull π₁) (M₀.pull π₀)} {w' : LB.Iso L (M₁.pull β)} {v : LB.Iso M₀ (M₁.pull κ₀)}
    (hw : w.IsGen) (hw' : w'.IsGen) (hv : v.IsGen) :
    ∃ ρ : Γ(B', ⊤)ˣ, ∀ (Z : Scheme.{0}) (f : Z ⟶ B') (z : Z) (j : L.ι) (m₀ : M₀.ι) (m₁ : M₁.ι),
      π₁ (f z) ∈ L.U j → π₀ (f z) ∈ M₀.U m₀ → β (π₁ (f z)) ∈ M₁.U m₁ →
      gw w' (f ≫ π₁) z m₁ j = gm f z ⊤ ρ * gw v (f ≫ π₀) z m₁ m₀ * gw w f z m₀ (fun _ => j) := by
  have hp : ∀ x : B', κ₀ (π₀ x) = β (π₁ x) := fun x => congrArg (fun q : B' ⟶ B₁ => q x) hκ₀
  let W : L.ι × M₀.ι × M₁.ι → B'.Opens := fun p =>
    π₁ ⁻¹ᵁ ((M₁.pull β).U (fun _ => p.2.2) ⊓ L.U p.1) ⊓ π₀ ⁻¹ᵁ ((M₁.pull κ₀).U (fun _ => p.2.2) ⊓ M₀.U p.2.1) ⊓
      ((M₀.pull π₀).U (fun _ => p.2.1) ⊓ (L.pull π₁).U (fun _ => p.1))
  let u : ∀ p, Γ(B', W p)ˣ := fun p =>
    res (inf_le_left.trans inf_le_left) (pullU π₁ _ (w'.s (fun _ => p.2.2, p.1))) *
      (res (inf_le_left.trans inf_le_right) (pullU π₀ _ (v.s (fun _ => p.2.2, p.2.1))))⁻¹ *
      (res inf_le_right (w.s (fun _ => p.2.1, fun _ => p.1)))⁻¹
  have hW : ∀ (x : B') p, x ∈ W p ↔ π₁ x ∈ L.U p.1 ∧ π₀ x ∈ M₀.U p.2.1 ∧ β (π₁ x) ∈ M₁.U p.2.2 := fun x p =>
    ⟨fun h => ⟨h.1.1.2, h.1.2.2, mem_pull.1 h.1.1.1⟩, fun h => ⟨⟨⟨mem_pull.2 h.2.2, h.1⟩,
      ⟨mem_pull.2 (by rw [hp]; exact h.2.2), h.2.1⟩⟩, mem_pull.2 h.2.1, mem_pull.2 h.1⟩⟩
  have hu : ∀ (Z : Scheme.{0}) (f : Z ⟶ B') (z : Z) p, f z ∈ W p → gm f z (W p) (u p) =
      gw w' (f ≫ π₁) z p.2.2 p.1 * (gw v (f ≫ π₀) z p.2.2 p.2.1)⁻¹ * (gw w f z p.2.1 (fun _ => p.1))⁻¹ := by
    intro Z f z p h
    refine (map_mul _ _ _).trans (congrArg₂ (· * ·) ((map_mul _ _ _).trans (congrArg₂ (· * ·) ?_ ?_)) ?_)
    · exact (gm_res f z _ h _).trans (gm_pull f π₁ z _ h.1.1 _)
    · exact (map_inv _ _).trans (congrArg (·⁻¹) ((gm_res f z _ h _).trans (gm_pull f π₀ z _ h.1.2 _)))
    · exact (map_inv _ _).trans (congrArg (·⁻¹) (gm_res f z _ h _))
  obtain ⟨ρ, hρ⟩ := glue_unit ⊤ W (fun _ => le_top) (fun x _ => by
      obtain ⟨j, hj⟩ := exists_chart hL (π₁ x)
      obtain ⟨m₀, h₀⟩ := exists_chart hM₀ (π₀ x)
      obtain ⟨m₁, h₁⟩ := exists_chart hM₁ (β (π₁ x))
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨(j, m₀, m₁), (hW x _).2 ⟨hj, h₀, h₁⟩⟩) u (fun p q x hx => by
      obtain ⟨a₁, a₂, a₃⟩ := (hW x p).1 hx.1
      obtain ⟨b₁, b₂, b₃⟩ := (hW x q).1 hx.2
      rw [hu _ _ x p hx.1, hu _ _ x q hx.2,
        (isGen_iff w').1 hw' _ (𝟙 B' ≫ π₁) x p.2.2 q.2.2 p.1 q.1 a₃ b₃ a₁ b₁,
        (isGen_iff v).1 hv _ (𝟙 B' ≫ π₀) x p.2.2 q.2.2 p.2.1 q.2.1 ((hp x).symm ▸ a₃) ((hp x).symm ▸ b₃) a₂ b₂,
        (isGen_iff w).1 hw _ (𝟙 B') x p.2.1 q.2.1 (fun _ => p.1) (fun _ => q.1) a₂ b₂ (mem_pull.2 a₁) (mem_pull.2 b₁),
        gm_pull_g L π₁ (𝟙 B') x (fun _ => p.1) (fun _ => q.1) (mem_pull.2 a₁) (mem_pull.2 b₁)]
      simp only [Category.assoc, hκ₀]
      simp only [mul_inv, inv_inv]
      generalize gm (𝟙 B' ≫ π₁ ≫ β) x _ _ = s
      generalize gm (𝟙 B' ≫ π₁) x _ _ = t
      generalize gm (𝟙 B' ≫ π₀) x _ _ = r
      rw [show ∀ a b c, s * t⁻¹ * a * (s⁻¹ * r * b) * (r⁻¹ * t * c) = (s * s⁻¹) * (t * t⁻¹) * (r * r⁻¹) * (a * b * c) from
        fun a b c => by ac_rfl]
      simp)
  refine ⟨ρ, fun Z f z j m₀ m₁ h₁ h₂ h₃ => ?_⟩
  have hm : f z ∈ W (j, m₀, m₁) := (hW _ _).2 ⟨h₁, h₂, h₃⟩
  rw [← gm_res f z le_top hm ρ, hρ, hu Z f z _ hm]
  rw [mul_right_comm _ _ (gw v _ _ _ _), inv_mul_cancel_right, inv_mul_cancel_right]

theorem gm_const {S S₀ : Scheme.{0}} (i : S ⟶ S₀) (B₀ : Over S₀) [GrpObj B₀] (B' : Over S) [GrpObj B']
    (h₀ : IsAbelianScheme B₀) {π₀ : B'.left ⟶ B₀.left} (p₀ : IsGrpPullback B' B₀ i π₀) (ρ : Γ(B'.left, ⊤)ˣ) (z : S)
    (c c' : S ⟶ B'.left) (hc : c ≫ B'.hom = 𝟙 _) (hc' : c' ≫ B'.hom = 𝟙 _) : gm c z ⊤ ρ = gm c' z ⊤ ρ := by
  obtain ⟨e, -, -⟩ := grpPullback_iso (isGrpPullback_pullback B₀ i) p₀
  obtain ⟨κ, hκ⟩ := TLinPf.const_pullback GlobalTheory.globalFns_holds i B₀ h₀ (e.hom.left.appTop.hom ρ.val)
  have hρ : ρ.val = B'.hom.appTop.hom κ := by
    have h1 : e.inv.left.appTop.hom (e.hom.left.appTop.hom ρ.val) = ρ.val := by
      rw [← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, ← Over.comp_left, e.inv_hom_id]
      simp
    rw [← h1, ← hκ, ← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, Over.w]
  have key : ∀ d : S ⟶ B'.left, d ≫ B'.hom = 𝟙 _ → d.appTop.hom ρ.val = κ := fun d hd => by
    rw [hρ, ← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, hd]
    simp
  apply Units.ext
  rw [gm_val c z ⊤ trivial, gm_val c' z ⊤ trivial]
  exact (congrArg (S.presheaf.germ ⊤ z trivial).hom ((key c hc).trans (key c' hc').symm))

theorem exists_const {K : Type} [Field K] (k₀ : Subfield K) {B₀ B₁ : Scheme.{0}} {M₀ : LB B₀} {M₁ : LB B₁} (hM₀ : M₀.IsLB)
    (hM₁ : M₁.IsLB) {κ₀ : B₀ ⟶ B₁} {v : LB.Iso M₀ (M₁.pull κ₀)} (hv : v.IsGen) (p : Fin 4 → (Sp k₀ ⟶ B₀))
    (τ₁ : LB.Gen (LB.LinComb M₀ p ![-1, 1, 1, -1])) (hτ : τ₁.IsGen) (z : Sp K) (m : Fin 4 → M₁.ι)
    (hm : ∀ k, κ₀ (p k (spMap k₀.subtype z)) ∈ M₁.U (m k)) (t : ((Sp K).presheaf.stalk z)ˣ)
    (ht : t ∈ (gm (spMap k₀.subtype) z ⊤).range) :
    ∃ x : k₀ˣ, ∀ J₀, Good M₀ z J₀ →
      gw v (spMap k₀.subtype ≫ p 0) z (m 0) (J₀ (spMap k₀.subtype ≫ p 0)) *
        (gw v (spMap k₀.subtype ≫ p 1) z (m 1) (J₀ (spMap k₀.subtype ≫ p 1)))⁻¹ *
        (gw v (spMap k₀.subtype ≫ p 2) z (m 2) (J₀ (spMap k₀.subtype ≫ p 2)))⁻¹ *
        gw v (spMap k₀.subtype ≫ p 3) z (m 3) (J₀ (spMap k₀.subtype ≫ p 3)) * t =
      gm (𝟙 (Sp K)) z ⊤ (unitOn (Units.map k₀.subtype.toMonoidHom x)) * val τ₁ (spMap k₀.subtype) z J₀ := by
  have : Subsingleton (Sp k₀) := inferInstanceAs (Subsingleton (PrimeSpectrum k₀))
  set i : Sp K ⟶ Sp k₀ := spMap k₀.subtype with hi
  have rg : ∀ (U : (Sp k₀).Opens) (a : Γ(Sp k₀, U)ˣ), i z ∈ U → gm i z U a ∈ (gm i z ⊤).range := fun U a h => by
    obtain ⟨x, hx⟩ := SepBModel.gm_field i z U h a
    exact ⟨_, hx.symm⟩
  choose I hI using fun χ : Sp K ⟶ B₀ => exists_chart hM₀ (χ z)
  have rw' : ∀ k, gw v (i ≫ p k) z (m k) (I (i ≫ p k)) ∈ (gm i z ⊤).range := fun k => by
    have h : p k (i z) ∈ (M₁.pull κ₀).U (fun _ => m k) ⊓ M₀.U (I (i ≫ p k)) := ⟨mem_pull.2 (hm k), hI (i ≫ p k)⟩
    obtain ⟨c, hc⟩ := rg _ (pullU (p k) _ (v.s (fun _ => m k, I (i ≫ p k)))) h
    exact ⟨c, hc.trans (gm_pull i (p k) z _ h _)⟩
  have rv : val τ₁ i z I ∈ (gm i z ⊤).range := rg _ _ (Good.mem hI p i)
  obtain ⟨c, hc⟩ := mul_mem (mul_mem (mul_mem (mul_mem (mul_mem (rw' 0) (inv_mem (rw' 1))) (inv_mem (rw' 2))) (rw' 3)) ht)
    (inv_mem rv)
  obtain ⟨x, hx⟩ := SepBModel.gm_field i z ⊤ trivial c
  refine ⟨x, fun J₀ hJ₀ => ?_⟩
  have ch : ∀ k, gw v (i ≫ p k) z (m k) (J₀ (i ≫ p k)) =
      (gm (i ≫ p k) z _ (M₀.g (J₀ (i ≫ p k)) (I (i ≫ p k))))⁻¹ * gw v (i ≫ p k) z (m k) (I (i ≫ p k)) := fun k => by
    rw [(isGen_iff v).1 hv _ (i ≫ p k) z (m k) (m k) _ _ (hm k) (hm k) (hJ₀ _) (hI _),
      gm_self hM₁ ((i ≫ p k) ≫ κ₀) z (hm k), _root_.one_mul]
  have cv : val τ₁ i z J₀ = _ * val τ₁ i z I := gen_trans hτ i z (hJ₀.mem p i) (Good.mem hI p i)
  rw [← SepBModel.gm_spMap, ← hx, hc, ch, ch, ch, ch, cv]
  simp only [trF, Fin.prod_univ_four, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, zpow_neg, zpow_one,
    mul_inv, inv_inv]
  generalize val τ₁ i z I = s
  rw [mul_comm _ s, mul_inv_mul_mul_cancel _ s]
  ac_rfl

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R]
    (Q : DegPre R) (τ₀ : Gens Q) (K : Type) [Field K] [IsAlgClosed K] (ev : R →+* K) (k₀ : Subfield K), IsAlgClosed k₀ →
    ∀ (W₀ : Type) [CommRing W₀] (ιb : W₀ →+* R), FromBase Q τ₀ ιb → (∀ a, ev (ιb a) ∈ k₀) →
    ∀ (B₀ : Over (Sp k₀)) [GrpObj B₀] [IsCommMonObj B₀] (M₀ : LB B₀.left) (c₀ : Q.X → (Sp k₀ ⟶ B₀.left))
      (B' : Over (Sp K)) [GrpObj B'] (π₁ : B'.left ⟶ Q.P.A.left) (π₀ : B'.left ⟶ B₀.left)
      (w : LB.Iso (Q.P.L.pull π₁) (M₀.pull π₀)) (c' : Q.X → (Sp K ⟶ B'.left)),
      IsAbelianScheme B₀ → M₀.IsLB → IsGrpPullback B' Q.P.A (spMap ev) π₁ → IsGrpPullback B' B₀ (spMap k₀.subtype) π₀ →
      w.IsGen →
      (∀ a, c' a ≫ B'.hom = 𝟙 _ ∧ c' a ≫ π₁ = spMap ev ≫ (Q.c a).left ∧ c' a ≫ π₀ = spMap k₀.subtype ≫ c₀ a) →
      ∀ (a b : Q.X) (τ₁ : LB.Gen (LB.LinComb M₀ (K := Fin 4) ![c₀ (a + b), c₀ a, c₀ b, c₀ 0] ![-1, 1, 1, -1])),
        τ₁.IsGen → ∃ x : k₀ˣ, ∀ z J J₀, Good Q.P.L z J → Good M₀ z J₀ →
          val (τ₀ a b) (spMap ev) z J = lamUnit w c' a b z J J₀ *
            gm (𝟙 (Sp K)) z ⊤ (unitOn (Units.map k₀.subtype.toMonoidHom x)) * val τ₁ (spMap k₀.subtype) z J₀ := by
  intro R _ _ Q τ₀ K _ _ ev k₀ hk W₀ _ ιb hF hι B₀ _ _ M₀ c₀ B' _ π₁ π₀ w c' h₀ hM₀ p₁ p₀ hw hc a b τ₁ hτ
  obtain ⟨B₁, _, M₁, c₁, τ', β, w', h₁, hM₁, pβ, hw', -, -, hv'⟩ := hF
  let i : Sp K ⟶ Sp k₀ := spMap k₀.subtype
  let e₀ : W₀ →+* k₀ := (ev.comp ιb).codRestrict k₀ hι
  have he : spMap ev ≫ spMap ιb = i ≫ spMap e₀ :=
    (Spec.map_comp _ _).symm.trans (Spec.map_comp (CommRingCat.ofHom e₀) (CommRingCat.ofHom k₀.subtype))
  obtain ⟨κ₀, hκ⟩ := exists_descent k₀ (spMap e₀) B₀ B₁ B' h₀ h₁ p₀ ((p₁.comp pβ).congr he rfl)
  obtain ⟨v, hv⟩ := exists_lbIso k₀ B₀ B' h₀ p₀ hκ Q.P.isLB hM₀ hM₁ ⟨w, hw⟩ ⟨w', hw'⟩
  obtain ⟨ρ, hρ⟩ := exists_unit hκ Q.P.isLB hM₀ hM₁ hw hw' hv
  have : Subsingleton (Sp K) := inferInstanceAs (Subsingleton (PrimeSpectrum K))
  let z₀ : Sp K := (default : PrimeSpectrum K)
  choose J₁ hJ₁ using fun χ : Sp K ⟶ B₁.left => exists_chart hM₁ (χ z₀)
  have gJ₁ : Good M₁ (spMap ev z₀) (fun χ => J₁ (spMap ev ≫ χ)) := fun χ => hJ₁ (spMap ev ≫ χ)
  let m : Q.X → M₁.ι := fun y => J₁ (spMap ev ≫ cpt Q y ≫ β)
  have hm₁ : ∀ y, β (π₁ (c' y z₀)) ∈ M₁.U (m y) := fun y => by
    have := hJ₁ (spMap ev ≫ cpt Q y ≫ β)
    rw [← Category.assoc] at this
    exact (congrArg (fun q : Sp K ⟶ _ => β (q z₀) ∈ M₁.U (m y)) (hc y).2.1).mpr this
  have hm₀ : ∀ y, κ₀ (c₀ y (i z₀)) ∈ M₁.U (m y) := fun y => by
    have e : i ≫ c₀ y ≫ κ₀ = c' y ≫ π₁ ≫ β := by rw [← hκ, ← Category.assoc, ← (hc y).2.2, Category.assoc]
    exact (congrArg (fun q : Sp K ⟶ _ => q z₀ ∈ M₁.U (m y)) e).mpr (hm₁ y)
  have mτ := gJ₁.mem ![c₁ (a + b), c₁ a, c₁ b, c₁ 0] (spMap ιb)
  let t := Units.map ((spMap ev).stalkMap z₀).hom.toMonoidHom
    (val (τ' a b) (spMap ιb) (spMap ev z₀) (fun χ => J₁ (spMap ev ≫ χ)))
  have ht : t ∈ (gm i z₀ ⊤).range := by
    have hp : spMap ιb (spMap ev z₀) = spMap e₀ (i z₀) := congrArg (fun q : Sp K ⟶ Sp W₀ => q z₀) he
    have hm' := Eq.mp (congrArg (· ∈ _) hp) mτ
    have e₄ : t = _ := SepBModel.stalkMap_gm (spMap ev) (spMap ιb) z₀ _ mτ _
    rw [he] at e₄
    replace e₄ := e₄.trans (gm_pull _ _ z₀ _ hm' _).symm
    obtain ⟨x, hx⟩ := SepBModel.gm_field i z₀ _ hm' (pullU (spMap e₀) _ ((τ' a b).s _))
    exact ⟨_, (e₄.trans hx).symm⟩
  obtain ⟨x, hx⟩ := exists_const k₀ hM₀ hM₁ hv _ τ₁ hτ z₀ ![m (a + b), m a, m b, m 0]
    (fun k => by fin_cases k <;> exact hm₀ _) t ht
  refine ⟨x, fun z J J₀ hJ hJ₀ => ?_⟩
  obtain rfl : z₀ = z := Subsingleton.elim _ _
  have gJ : Good Q.P.L (spMap ev z₀) (fun χ => J (spMap ev ≫ χ)) := fun χ => hJ (spMap ev ≫ χ)
  have E := congrArg (Units.map ((spMap ev).stalkMap z₀).hom.toMonoidHom) (hv' a b _ _ _ gJ gJ₁)
  have l : Units.map ((spMap ev).stalkMap z₀).hom.toMonoidHom
      (val (τ₀ a b) (𝟙 (Sp R)) (spMap ev z₀) (fun χ => J (spMap ev ≫ χ))) = val (τ₀ a b) (spMap ev) z₀ J := by
    refine (SepBModel.stalkMap_gm (spMap ev) (𝟙 _) z₀ _ (gJ.mem _ _) _).trans ?_
    rw [Category.comp_id]
    exact (val_of _ _ _ _ _ fun k => by rw [Category.id_comp]).symm
  have key : ∀ y, Units.map ((spMap ev).stalkMap z₀).hom.toMonoidHom
      (gm (cpt Q y) (spMap ev z₀) _ (w'.s (fun _ => J₁ (spMap ev ≫ cpt Q y ≫ β), J (spMap ev ≫ cpt Q y)))) =
      gm (c' 0) z₀ ⊤ ρ * gw v (i ≫ c₀ y) z₀ (m y) (J₀ (i ≫ c₀ y)) *
        gw w (c' y) z₀ (J₀ (c' y ≫ π₀)) (fun _ => J (c' y ≫ π₁)) := fun y => by
    have hmem : cpt Q y (spMap ev z₀) ∈ (M₁.pull β).U (fun _ => m y) ⊓ Q.P.L.U (J (spMap ev ≫ cpt Q y)) :=
      ⟨mem_pull.2 (gJ₁ (cpt Q y ≫ β)), gJ (cpt Q y)⟩
    refine (SepBModel.stalkMap_gm (spMap ev) (cpt Q y) z₀ _ hmem _).trans ?_
    have r := hρ _ (c' y) z₀ (J (c' y ≫ π₁)) (J₀ (c' y ≫ π₀)) (m y) (hJ (c' y ≫ π₁)) (hJ₀ (c' y ≫ π₀)) (hm₁ y)
    rw [gm_const i B₀ B' h₀ p₀ ρ z₀ (c' y) (c' 0) (hc y).1 (hc 0).1] at r
    have e₁ : c' y ≫ π₁ = spMap ev ≫ cpt Q y := (hc y).2.1
    have e₂ : c' y ≫ π₀ = i ≫ c₀ y := (hc y).2.2
    rw [← e₂, ← r, e₁]
    rfl
  rw [l, map_mul, map_mul, map_mul, map_mul, map_inv, map_inv] at E
  have E' := E.trans (congrArg₂ (· * ·) (congrArg₂ (· * ·) (congrArg₂ (· * ·) (congrArg₂ (· * ·) (key _)
    (congrArg (·⁻¹) (key _))) (congrArg (·⁻¹) (key _))) (key _)) (rfl : _ = t))
  have hx' := hx J₀ hJ₀
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val] at hx'
  rw [E', _root_.mul_assoc (lamUnit _ _ _ _ _ _ _), ← hx', lamUnit]
  generalize gm (c' 0) z₀ ⊤ ρ = s
  simp only [mul_inv]
  rw [show ∀ a₁ a₂ a₃ a₄ b₁ b₂ b₃ b₄ u, s * a₁ * b₁ * (s⁻¹ * a₂ * b₂) * (s⁻¹ * a₃ * b₃) * (s * a₄ * b₄) * u =
    (s * s⁻¹) * (s * s⁻¹) * (b₁ * b₂ * b₃ * b₄ * (a₁ * a₂ * a₃ * a₄ * u)) from fun _ _ _ _ _ _ _ _ _ => by ac_rfl]
  simp only [mul_inv_cancel, _root_.one_mul]
  rfl

end GlobalTheory.UCanon.BaseDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfield =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfieldStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfieldStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfield\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfieldStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPointRigidBoundaryFamilyOfRigidCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPointRigidBoundaryFamilyOfRigidCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TorusMemOfSepAtBTate\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullUUnitsCompatGeneric\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTauScaledGeneratorTorusMonomial\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubfieldOfBilinFormBasisMonomials\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodGeneratorsAgreeOverAlgClosedSubfieldStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PtRigid

theorem pointRigid_of_hasRigidCoords : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (C : MonoFam Xo c φ R), HasRigidCoords C → PointRigid C := by
  intro E _ _ _ H Dw l Xo c φ R _ _ _ C hC
  obtain ⟨N, s, ε, τ₀, hs, hε, hu, hτ, hPR⟩ := hC
  intro K _ _ ev k₀ hk hemb hsep
  apply hPR K ev k₀ hk hemb
  obtain ⟨h0, B₀, i₁, i₂, M₀, c₀, B', i₃, π₁, π₀, w, c', α, hB, hM, hp₁, hp₀, hw, hc, hrel⟩ := hsep
  refine ⟨fun i => by rw [hs]; exact h0 i, ⟨B₀, i₁, i₂, M₀, c₀, B', i₃, π₁, π₀, w, c', hB, hM, hp₁, hp₀, hw, hc⟩, ?_⟩
  intro W₀ _ ιb hFB hιb j
  let u : Fin N → Rˣ := fun k => (hu k).unit
  have hu' : ∀ k, (u k : R) = s (.inr k) := fun k => (hu k).unit_spec
  let t : Fin C.m ⊕ Fin N → Kˣ := Sum.elim (fun i => (α i)⁻¹) (fun k => Units.map ev.toMonoidHom (u k))
  have key : ∀ a b : C.P.D.toPre.X,
      ((∏ k, t k ^ ((l.M' : ℤ) * (ε k : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b) : Kˣ) : K) ∈ k₀ := by
    intro a b
    have hτ' := _root_.GlobalTheory.UCanon.ScaleTorus.isUnitTau_scaleGen Xo c φ R C N s ε τ₀ hs hε hτ u hu' a b
    obtain ⟨τ₁, hτ₁, hv⟩ := hrel a b _ hτ'
    obtain ⟨x, hx⟩ := _root_.GlobalTheory.UCanon.BaseDescent.main R C.P.D.toPre τ₀ K ev k₀ hk W₀ ιb hFB hιb B₀ M₀ c₀ B' π₁ π₀ w c' hB hM hp₁ hp₀ hw hc
      a b τ₁ hτ₁
    let z : Sp K := IsLocalRing.closedPoint K
    choose J hJ using fun χ : Sp K ⟶ C.P.D.toPre.P.A.left => exists_chart C.P.D.toPre.P.isLB (χ z)
    choose J₀ hJ₀ using fun χ : Sp K ⟶ B₀.left => exists_chart hM (χ z)
    have gJ : Good C.P.D.toPre.P.L z J := hJ
    have gJ₀ : Good M₀ z J₀ := hJ₀
    have e₁ := hv z J J₀ gJ gJ₀
    have e₂ := hx z J J₀ gJ gJ₀
    have vs : ∀ (cc : Γ(Sp R, ⊤)ˣ), val (ReciprocityTheory.ChartRestriction.G.DVR.scaleGen cc (τ₀ a b)) (spMap ev) z J =
        gm (spMap ev) z ⊤ cc * val (τ₀ a b) (spMap ev) z J := fun cc =>
      (map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res _ z le_top (gJ.mem _ _) cc) rfl)
    rw [vs, GlobalTheory.UChart.SepBModel.gm_spMap, e₂] at e₁
    set U' := Units.map ev.toMonoidHom (∏ k, u k ^ ((l.M' : ℤ) * (ε (.inr k) : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b))
    set x' := Units.map k₀.subtype.toMonoidHom x
    set A := ∏ i, α i ^ (((l.M' : ℤ) • C.δ i) a b)
    set L := lamUnit w c' a b z J J₀
    set V := val τ₁ (spMap k₀.subtype) z J₀
    have e₃ : gm (𝟙 (Sp K)) z ⊤ (unitOn U') * gm (𝟙 (Sp K)) z ⊤ (unitOn x') = gm (𝟙 (Sp K)) z ⊤ (unitOn A) := by
      have h₁ : gm (𝟙 (Sp K)) z ⊤ (unitOn U') * (L * gm (𝟙 (Sp K)) z ⊤ (unitOn x') * V) =
          (L * V) * (gm (𝟙 (Sp K)) z ⊤ (unitOn U') * gm (𝟙 (Sp K)) z ⊤ (unitOn x')) := by ac_rfl
      have h₂ : L * gm (𝟙 (Sp K)) z ⊤ (unitOn A) * V = (L * V) * gm (𝟙 (Sp K)) z ⊤ (unitOn A) := by ac_rfl
      rw [h₁, h₂] at e₁
      exact mul_left_cancel e₁
    have e₄ : U' * x' = A := GlobalTheory.UChart.SepBModel.gm_unitOn_inj z (by
      rw [show unitOn (U' * x') = unitOn U' * unitOn x' from map_mul _ _ _, map_mul]; exact e₃)
    have e₅ : (∏ k, t k ^ ((l.M' : ℤ) * (ε k : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b)) = x'⁻¹ := by
      rw [Fintype.prod_sum_type]
      have hA : (∏ i, t (.inl i) ^ ((l.M' : ℤ) * (ε (.inl i) : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b)) = A⁻¹ := by
        simp only [t, Sum.elim_inl, hε, A, inv_zpow, Finset.prod_inv_distrib, LinearMap.smul_apply, smul_eq_mul]
      have hU : (∏ k, t (.inr k) ^ ((l.M' : ℤ) * (ε (.inr k) : LinearMap.BilinForm ℤ C.P.D.toPre.X) a b)) = U' := by
        simp only [t, Sum.elim_inr, U', map_prod, map_zpow]
      rw [hA, hU, ← e₄, mul_inv_rev, inv_mul_cancel_right]
    rw [e₅]
    exact (x⁻¹ : k₀ˣ).val.2
  have := _root_.GlobalTheory.mem_subfield_of_bilinForm_monomials C.P.D.toPre.X (balForms H.bar C.P.D.toPre.X) (Fin C.m ⊕ Fin N) ε K k₀ hk (l.M')
    (by exact_mod_cast (level_pos l).ne') t key (.inr j)
  simpa [t, u] using this

end GlobalTheory.PtRigid
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPointRigidBoundaryFamilyOfRigidCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalDataRigidAlongStratumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyHasPointRigidCoordinatesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyLocalInjectionsEqSamePoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPointRigidBoundaryFamilyOfRigidCoordinates\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteOfRigidAtB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon

theorem isTautB_of_canon : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), 1 ≤ Dw.p + Dw.q → IsPolFan H.bar (min Dw.p Dw.q) φ → NoSelfInt H.bar (min Dw.p Dw.q) φ → ∀ {k : Type} [Field k] {m e : ℕ} (C : MonoFam Xo c φ (ChartRing k m e)), Canon C → (∃ hm : C.m = m, ∀ i, C.s i = bdParam k m e (Fin.cast hm i)) → IsTautB C := by
  intro E _ _ _ H Dw l Xo c φ hpq hfan hnsi k _ m e C hC hms
  obtain ⟨hm, hs⟩ := hms
  have hB : GlobalTheory.Mum.Base (ChartRing k m e) := GlobalTheory.ChartQF.base_chartRing C.toFam
  have hR : HasRigidCoords C := _root_.GlobalTheory.UCanon.canon_hasRigidCoords Xo c φ (ChartRing k m e) hB C hC
  obtain ⟨hft, hdim⟩ := _root_.GlobalTheory.UCanon.canon_residue_dim Xo c φ C hC
  obtain ⟨N, s, ε, τ₀, h1, h2, h3, h4, -⟩ := id hR
  exact ⟨⟨hm, hs, _root_.GlobalTheory.UCanon.OpenPart.openCls Xo c φ _ hB C, _root_.GlobalTheory.UCanon.inj_of_canon Xo c φ hpq hfan hnsi _ hB C hC,
    ⟨_root_.GlobalTheory.UCanon.isRigid_canon Xo c φ _ hB C hC, _root_.GlobalTheory.PtRigid.pointRigid_of_hasRigidCoords Xo c φ _ C hR, hft⟩, ⟨N, s, ε, τ₀, h1, h2, h3, h4⟩, hdim⟩, hR⟩

end GlobalTheory.UCanon
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChartStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChartStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalFamilyIsPointRigidTautologicalChartStatement =====
