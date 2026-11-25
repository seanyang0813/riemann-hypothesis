module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTorusTranslatesTwistedSumsStatement
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsNumberFieldQkPointsComplexDegeneration
public import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigTorsFrame
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusCharOfLabelOrthogonalDividing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedAdicSumTermsOfFractionFieldSum
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.YKThNeZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealisedThetaSystemThetaConstantNegEvenUpToRoot
public import Development.AbelianVarietyTheory.Definitions.Divisors.NotTwistSumZeroFamily
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumIOfSumFMul
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTermNonzeroIndexMemMaximalIdealStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemDividingLabelsIffClassZeroStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTwistWeightWellDefinedLatticeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberExistsTermsDividingGroupLabelStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumExponentsDifferAffineTwoMembersStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GtOntoDivisibleKernel
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationTorsionIdentificationWithPairing
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
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsoFreePerpLabelKernelWeights
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilIsGrpPullbackOfCommute
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkUInvariantUnderFieldEmbedding
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.WeilQkIsIffCommutatorPairingTorsion
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NsmulEqZeroOfCast
import Mathlib.Tactic.Basify
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SumFCalculus
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsYyAlt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCharEqWeilGen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMember, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMemberStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystemStatement, Development.AbelianVarietyTheory.Definitions.Divisors.IsMemberPOfIsMember, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioMod, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioModStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabelStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMember, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMemberStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSums, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSumsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsYyAlt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsYyAlt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GtOntoDivisibleKernel\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationTorsionIdentificationWithPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

namespace GlobalTheory.GSep.GMem

theorem exists_yy : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)), ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (mu : X), ∃ a : X₁.S.Gam, 𝔪.YY a mu := by
  intro I X₁ z₁ act V _ _ _ ev X _ t δ 𝔪 mu
  haveI : CharZero V := 𝔪.cn.2.2.2
  have hA : AdmBase V (maximalIdeal V) := ⟨𝔪.cn.1, inferInstance, 𝔪.cn.2.1, 𝔪.cn.2.2.1⟩
  have hk : 1 ≤ X₁.S.r * X₁.S.N := by
    obtain ⟨j, -, hj⟩ := X₁.ρ.r_eq
    have hn := X₁.ρ.n_prime.pos
    rw [hj, X₁.ρ.N_eq]
    exact Nat.one_le_iff_ne_zero.2 (by positivity)
  obtain ⟨h, hh⟩ := GlobalTheory.TorusExt.exists_iota (F := AlgebraicClosure (FractionRing V)) 𝔪.D.tau_bimult (𝔪.e₈ mu)
  obtain ⟨g', hg'⟩ := (GlobalTheory.UT.gt_onto_divisible_kernel GlobalTheory.firstFiveLaws V (maximalIdeal V) hA 𝔪.D
    (AlgebraicClosure (FractionRing V))).2.1 _ hk h
  let p : QkPt 𝔪.D.toPre (AlgebraicClosure (FractionRing V)) (X₁.S.r * X₁.S.N) := ⟨𝔪.e₈ mu, g', h, hg', hh⟩
  obtain ⟨f, hf, -⟩ := GlobalTheory.TorsionIso.torsion_eq GlobalTheory.firstFiveLaws V (maximalIdeal V) hA 𝔪.D 𝔪.A 𝔪.G 𝔪.semi 𝔪.U
    (AlgebraicClosure (FractionRing V)) _ hk
  have hx := (hf p (f p)).2 rfl
  obtain ⟨w, hw⟩ := 𝔪.U.ext
  have hpow : f p ^ (X₁.S.r * X₁.S.N) = 1 := (hx w hw).1
  let z := pushHom 𝔪.cart (TFK (R := V) (AlgebraicClosure (FractionRing V))) (f p)
  have hz : z ^ (X₁.S.r * X₁.S.N) = 1 := by
    simp only [z]
    rw [← map_pow, hpow, map_one]
  obtain ⟨a, ha, -⟩ := X₁.ρ.pt_bij (AlgebraicClosure (FractionRing V)) _ z hz
  refine ⟨a, p, f p, rfl, hx, ?_⟩
  have e := congrArg (fun q => q.left) ha
  simp only [Over.comp_left, Over.homMk_left] at e
  have e2 : spMap ((algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).comp 𝔪.yK) =
      jFK (R := V) (AlgebraicClosure (FractionRing V)) ≫ spMap 𝔪.yK := by
    simp [spMap, jFK, ← Spec.map_comp]
  rw [e2]
  exact e.symm

end GlobalTheory.GSep.GMem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsYyAlt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCharEqWeilGen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCharEqWeilGen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsNumberFieldQkPointsComplexDegeneration\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsoFreePerpLabelKernelWeights\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilIsGrpPullbackOfCommute\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GtOntoDivisibleKernel\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkUInvariantUnderFieldEmbedding\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.WeilQkIsIffCommutatorPairingTorsion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

noncomputable section

namespace GlobalTheory.GSep

open GlobalTheory.TorusExt GlobalTheory.ZH.TorusPerp GlobalTheory.QkNumberField GlobalTheory.TorsionExt

theorem torusChar_eq_weil_gen : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)), ∃ sg : ℤˣ, ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (τ : X₁.S.Gam) (χ : Multiplicative 𝔪.D.toPre.X →* (FractionRing V)ˣ), χ ^ (X₁.S.r * X₁.S.N) = 1 → (∀ g₀ : GtPtF 𝔪.D.toPre (FractionRing V), IsTor χ g₀ → ∃ (p : QkPt 𝔪.D.toPre (FractionRing V) (X₁.S.r * X₁.S.N)) (x : TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A), p.y = 0 ∧ p.g = g₀ ∧ QkToAkU 𝔪.U.toUnifPre (FractionRing V) (X₁.S.r * X₁.S.N) p x ∧ x.left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt τ).left) → (∀ a mu, 𝔪.YY a mu → ((χ (Multiplicative.ofAdd (𝔪.e₈ mu)) : (FractionRing V)ˣ) : FractionRing V) = 𝔪.yK (algebraMap X₁.o₁ X₁.S.R (X₁.S.ζ ^ (X₁.S.r * X₁.S.N * (((sg : ℤˣ) : ℤ) • eStd X₁.S.g _ τ a).val)))) := by
  intro I X₁ z₁ act
  refine ⟨1, ?_⟩
  intro V _ _ _ ev X _ t δ 𝔪 τ χ hχ hpt a mu hY
  haveI : CharZero V := 𝔪.cn.2.2.2
  have hA : AdmBase V (maximalIdeal V) := ⟨𝔪.cn.1, inferInstance, 𝔪.cn.2.1, 𝔪.cn.2.2.1⟩
  have hL : LL := GlobalTheory.firstFiveLaws
  have hG : GlobalFnsSt := hL.1.globalFns
  have hK : KerPowSt := hL.1.kerPow
  have hB := 𝔪.D.tau_bimult
  have hk : 1 ≤ X₁.S.r * X₁.S.N := Nat.one_le_iff_ne_zero.2 (Nat.mul_ne_zero (by have := X₁.S.r_pos; omega) (by have := X₁.S.N_ge; omega))
  have hf : (algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).comp
      (algebraMap (FractionRing V) (FractionRing V)) = algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V)) := by
    rw [Algebra.algebraMap_self, RingHom.comp_id]
  obtain ⟨p, x, hpy, hpg, hpx, hxo⟩ := hpt (torusPt 𝔪.D.toPre (FractionRing V) (Additive.ofMul χ))
    ((isTor_iff _ _).2 (isTorusPtF_torusPt χ))
  obtain ⟨p', x', hp'y, hp'x, hx'o⟩ := hY
  obtain ⟨p₁, hext, -⟩ := existsUnique_qkExt hB (algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))) hf p
  set χ₁ : Multiplicative 𝔪.D.toPre.X →* (AlgebraicClosure (FractionRing V))ˣ :=
    (Units.map (algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).toMonoidHom).comp χ with hχ₁
  have hp₁g : p₁.g = torusPt 𝔪.D.toPre (AlgebraicClosure (FractionRing V)) (Additive.ofMul χ₁) := by
    rw [(eq_gtExt_iff _ hf _ _).2 hext.2, hpg]
    exact gtExt_torusPt _ hf χ
  have hp₁y : p₁.y = 0 := hext.1.trans hpy
  have hτ₁ : IsTor χ₁ p₁.g := by rw [hp₁g]; exact (isTor_iff _ _).2 (isTorusPtF_torusPt χ₁)
  have W₁ := weilQkIs_tor hG p₁ p' hp₁y hτ₁
  have hx₁ := (qkToAkU_iff_of_algebra hG hK 𝔪.U hk hext x).1 hpx
  have W₂ := (GlobalTheory.UT.weilQkIs_iff_weilIs hL V (maximalIdeal V) hA 𝔪.D 𝔪.A 𝔪.G 𝔪.semi 𝔪.U
    (AlgebraicClosure (FractionRing V)) _ hk p₁ p' _ x' hx₁ hp'x (χ₁ (Multiplicative.ofAdd p'.y))).1 W₁
  have := X₁.ρ.P.isAb.comm
  have hy : (TFK (R := V) (AlgebraicClosure (FractionRing V))).hom ≫ spMap 𝔪.yK =
      spMap ((algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).comp 𝔪.yK) := (spMap_comp _ _).symm
  let h : Over.mk ((TFK (R := V) (AlgebraicClosure (FractionRing V))).hom ≫ spMap 𝔪.yK) ⟶ baseOver (Sp X₁.S.R) :=
    Over.homMk ((TFK (R := V) (AlgebraicClosure (FractionRing V))).hom ≫ spMap 𝔪.yK) (by simp)
  have hh : h.left = spMap ((algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).comp 𝔪.yK) := hy
  have hζ : IsPrimitiveRoot (X₁.S.ζ ^ (X₁.S.r * X₁.S.N)) (X₁.S.r * X₁.S.N) :=
    X₁.S.prim.pow (pow_pos hk 2) (pow_two _)
  let c₀ : (X₁.S.R)ˣ := Units.map (algebraMap X₁.o₁ X₁.S.R).toMonoidHom (hζ.isUnit (by omega)).unit
  have w := GlobalTheory.CommPairing.weilIs_pull hG X₁.ρ.P.isAb X₁.ρ.P.isLB h
    (X₁.ρ.weil τ a (c₀ ^ (eStd X₁.S.g _ τ a).val) (by rw [pow_mul, map_pow]; rfl))
  have W₃ := (_root_.GlobalTheory.weilIs_grpPullback_of_comm _ _ _ _ _ _ _ _ X₁.ρ.P.isLB 𝔪.A.isLB 𝔪.cart ⟨𝔪.wl, 𝔪.wl_gen⟩
    (TFK (R := V) (AlgebraicClosure (FractionRing V))) _
    (fieldMap (FractionRing V) (AlgebraicClosure (FractionRing V)) ≫ x) x' (h ≫ X₁.ρ.pt τ) (h ≫ X₁.ρ.pt a) _ ?_ ?_).2 w
  · rw [hh, map_unitOn] at W₃
    have e := unitOn_injective (GlobalTheory.CommutatorPairing.weilIs_unique hG 𝔪.A.isAb 𝔪.A.isLB W₂ W₃)
    rw [hp'y] at e
    have e' := congrArg Units.val e
    simp only [hχ₁, MonoidHom.comp_apply, Units.coe_map, MonoidHom.coe_coe, RingHom.toMonoidHom_eq_coe,
      RingHom.coe_comp, Function.comp_apply, Units.val_pow_eq_pow_val, c₀, IsUnit.unit_spec] at e'
    rw [Units.val_one, one_smul]
    refine (algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V))).injective ?_
    have hc : (algebraMap X₁.o₁ X₁.S.R (X₁.S.ζ ^ (X₁.S.r * X₁.S.N))) ^ (eStd X₁.S.g _ τ a).val =
        algebraMap X₁.o₁ X₁.S.R (X₁.S.ζ ^ (X₁.S.r * X₁.S.N * (eStd X₁.S.g _ τ a).val)) := by
      simp only [pow_mul, map_pow]
    rw [e']
    exact congrArg (fun z => algebraMap (FractionRing V) (AlgebraicClosure (FractionRing V)) (𝔪.yK z)) hc
  · show h.left ≫ (X₁.ρ.pt τ).left = _
    rw [Over.comp_left, Category.assoc, hxo]
    rfl
  · show h.left ≫ (X₁.ρ.pt a).left = _
    rw [hx'o, hh]

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCharEqWeilGen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMember =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMember", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigTorsFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusCharOfLabelOrthogonalDividing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsYyAlt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusCharEqWeilGen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedAdicSumTermsOfFractionFieldSum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.YKThNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

noncomputable section

theorem GlobalTheory.GSep.twistAtEach_exists : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∃ sg : ℤˣ, GlobalTheory.GSep.TwistAtEach X₁ z₁ act x₀ sg ∧ (∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (τ : X₁.S.Gam) (χ : Multiplicative 𝔪.D.toPre.X →* (FractionRing V)ˣ), χ ^ (X₁.S.r * X₁.S.N) = 1 → (∀ g₀ : GtPtF 𝔪.D.toPre (FractionRing V), IsTor χ g₀ → ∃ (p : QkPt 𝔪.D.toPre (FractionRing V) (X₁.S.r * X₁.S.N)) (x : TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A), p.y = 0 ∧ p.g = g₀ ∧ QkToAkU 𝔪.U.toUnifPre (FractionRing V) (X₁.S.r * X₁.S.N) p x ∧ x.left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt τ).left) → (∀ a mu, 𝔪.YY a mu → ((χ (Multiplicative.ofAdd (𝔪.e₈ mu)) : (FractionRing V)ˣ) : FractionRing V) = 𝔪.yK (algebraMap X₁.o₁ X₁.S.R (X₁.S.ζ ^ (X₁.S.r * X₁.S.N * (((sg : ℤˣ) : ℤ) • eStd X₁.S.g _ τ a).val))))) := by
  intro I X₁ z₁ act x₀ hdiv
  obtain ⟨sg, hsg⟩ := GlobalTheory.GSep.torusChar_eq_weil_gen I X₁ z₁ act
  refine ⟨sg, ?_, hsg⟩
  intro V _ _ _ ev X _ t δ 𝔪 C lab hlab T hT c τ hτ
  obtain ⟨χ, hχN, hχo⟩ := GlobalTheory.GSep.TorPt.exists_torus_char I X₁ z₁ act V ev X t δ 𝔪 τ hτ
  obtain ⟨e, he⟩ := GlobalTheory.GSep.TwistTranslate.twistSum_translate I X₁ z₁ act V ev X t δ 𝔪 x₀ C lab hlab T hT c τ hτ χ hχN hχo
  exact ⟨e, GlobalTheory.GSep.TwistSum₂.twistSum_of_sumF I X₁ z₁ act V ev X t δ 𝔪 x₀ C lab T sg c τ χ e
    (GlobalTheory.GSep.GMem.yK_th_ne_zero I X₁ z₁ act V ev X t δ 𝔪 x₀ hdiv)
    (GlobalTheory.GSep.GMem.exists_yy I X₁ z₁ act V ev X t δ 𝔪) (hsg V ev X t δ 𝔪 τ χ hχN hχo) he⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMember =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMemberStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMemberStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMember\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMemberStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.NsmulEqZeroOfCast\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealisedThetaSystemThetaConstantNegEvenUpToRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

namespace GlobalTheory.GSep.SupISymm

theorem exists_unit_of_pow_eq_one {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (S : ThetaSys o Ω)
    {c ε : Ω} (hc : c ^ 2 = 1) (hε : ε ^ ((S.r * S.N) ^ 2) = 1) : ∃ u : oˣ, c * ε = algebraMap o Ω (u : o) := by
  have hinj : Function.Injective (algebraMap o Ω) := ArithBase.inj
  have hp : IsPrimitiveRoot (algebraMap o Ω S.ζ) ((S.r * S.N) ^ 2) := S.prim.map_of_injective hinj
  have hpos : 0 < (S.r * S.N) ^ 2 := by
    have := S.N_ge; have := S.r_pos; positivity
  obtain ⟨k, -, hk⟩ := hp.eq_pow_of_pow_eq_one hε
  have hζu : IsUnit S.ζ := S.prim.isUnit hpos.ne'
  have hc' : c = 1 ∨ c = -1 := by
    have : c * c = 1 := by rw [← sq]; exact hc
    exact mul_self_eq_one_iff.1 this
  rcases hc' with rfl | rfl
  · exact ⟨(hζu.unit) ^ k, by simp [← hk, map_pow]⟩
  · exact ⟨-(hζu.unit) ^ k, by simp [← hk, map_pow]⟩

theorem exists_unit_th_neg {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (S : ThetaSys o Ω)
    (H : ∀ a : S.Gam, ∃ c ε : Ω, c ^ 2 = 1 ∧ ε ^ ((S.r * S.N) ^ 2) = 1 ∧ S.th (-a) = c * ε * S.th a) (a : S.Gam) :
    ∃ u : oˣ, S.th (-a) = algebraMap o Ω (u : o) * S.th a := by
  obtain ⟨c, ε, hc, hε, h⟩ := H a
  obtain ⟨u, hu⟩ := exists_unit_of_pow_eq_one S hc hε
  exact ⟨u, by rw [h, hu]⟩

theorem neg_mem_supI_of_parity {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (S : ThetaSys o Ω)
    (M : RatModel o Ω)
    (H : ∀ a : S.Gam, ∃ c ε : Ω, c ^ 2 = 1 ∧ ε ^ ((S.r * S.N) ^ 2) = 1 ∧ S.th (-a) = c * ε * S.th a)
    (z : M.Z) (a : S.Gam) (ha : a ∈ S.supI M z) : -a ∈ S.supI M z := by
  obtain ⟨hne, hdiv⟩ := ha
  obtain ⟨u, hu⟩ := exists_unit_th_neg S H a
  have hu0 : algebraMap o Ω (u : o) ≠ 0 := by
    intro h0
    have h1 : algebraMap o Ω ((u : o) * ((u⁻¹ : oˣ) : o)) = 1 := by simp
    rw [map_mul, h0, zero_mul] at h1
    exact zero_ne_one h1
  refine ⟨by rw [hu]; exact mul_ne_zero hu0 hne, fun j => ?_⟩
  obtain ⟨v, hv⟩ := exists_unit_th_neg S H (-j)
  rw [neg_neg] at hv
  have key : S.th j / S.th (-a) = algebraMap o Ω ((v : o) * ((u⁻¹ : oˣ) : o)) * (S.th (-j) / S.th a) := by
    have hi : algebraMap o Ω ((u⁻¹ : oˣ) : o) = (algebraMap o Ω (u : o))⁻¹ := by
      exact eq_inv_of_mul_eq_one_left (by rw [← map_mul]; simp)
    rw [hv, hu, map_mul, hi]
    field_simp
  rw [key]
  exact (M.O z).mul_mem (Subalgebra.algebraMap_mem _ _) (hdiv (-j))

end GlobalTheory.GSep.SupISymm


open GlobalTheory.GSep.SupISymm in
theorem GlobalTheory.GSep.neg_mem_supI : ∀ (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (a : X₁.S.Gam), a ∈ X₁.S.supI X₁.M z₁ → -a ∈ X₁.S.supI X₁.M z₁ := by
  intro X₁ z₁ a ha
  exact neg_mem_supI_of_parity X₁.S X₁.M (fun a => GlobalTheory.ThetaParity.theta_neg X₁.o₁ X₁.Ω₁ X₁.S X₁.ρ a) z₁ a ha
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystemStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystemStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep


theorem _root_.GlobalTheory.T.neg_mem_dividingLabels_thetaSystem : ∀ (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (a : X₁.S.Gam), a ∈ X₁.S.supI X₁.M z₁ → -a ∈ X₁.S.supI X₁.M z₁ := by
  first | exact @GlobalTheory.GSep.neg_mem_supI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystemStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.IsMemberPOfIsMember =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.IsMemberPOfIsMember", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.ZH GlobalTheory.Poinc

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GSep.MemberModel

variable {I : Type} {X₁ : GSet} {z₁ : X₁.M.Z} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)}
  {V : Type} [CommRing V] [IsDomain V] [IsLocalRing V] {ev : X₁.M.Z.presheaf.stalk z₁ →+* V}
  {L : Type} [AddCommGroup L] {mo : L → V} {hL : I → L → L}

theorem terms_sum (𝔪 : GMem X₁ z₁ act V ev L mo hL) {x₀ : X₁.S.Gam} {C : Type} {lab : C → X₁.S.Gam}
    {T : L → C → V} (h : 𝔪.Terms x₀ lab T) (c : C) :
    SumF (maximalIdeal V) (FractionRing V)
      (fun χ => algebraMap V (FractionRing V) (T (𝔪.e₈.symm χ) c) * 𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩)
      (𝔪.yK ⟨X₁.S.th (lab c), X₁.S.th_mem _⟩) := by
  obtain ⟨x, fr, th, w₀, s, g', w, -, -, hth, -, hs, hc, hT⟩ := h
  have := (hc c).2.2 1 le_rfl (w c) (fun z J _ => (pow_one _).symm) (hc c).2.1 th s _ hs (hth (lab c))
  convert this using 2 with χ
  rw [hT, AddEquiv.apply_symm_apply]

section
open GlobalTheory.UPoinc
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H}
  {Xo : Moduli Dw l} {c : Coeff l} {C : UCompact Xo c}

end

section
open GlobalTheory.UPoinc
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H}
  {Xo : Moduli Dw l} {c : Coeff l} {C : UCompact Xo c}

end

end GlobalTheory.GSep.MemberModel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.IsMemberPOfIsMember =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioMod =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioMod", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsMemberPOfIsMember\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotTwistSumZeroFamily\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumIOfSumFMul\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTermNonzeroIndexMemMaximalIdealStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

namespace GlobalTheory.GSep.ConstTerm

theorem sub_mem_of_sumI {V Ix : Type} [CommRing V] {I : Ideal V} {y : Ix → V} {v : V} (h : SumI I y v) (i₀ : Ix)
    (hy : ∀ j, j ≠ i₀ → y j ∈ I) : v - y i₀ ∈ I := by
  classical
  obtain ⟨N, -, -, -, hS⟩ := h
  obtain ⟨S, hS⟩ := hS 1
  have h1 := Submodule.smul_mono (le_refl (I ^ 1)) (le_top : N ≤ ⊤) (hS (insert i₀ S) (Finset.subset_insert _ _))
  rw [pow_one, smul_eq_mul, Ideal.mul_top, ← Finset.add_sum_erase _ _ (Finset.mem_insert_self i₀ S)] at h1
  have h2 : ∑ j ∈ (insert i₀ S).erase i₀, y j ∈ I :=
    Submodule.sum_mem _ fun j hj => hy j (Finset.ne_of_mem_erase hj)
  have := add_mem h1 h2
  convert this using 1
  ring

theorem const_term_sub_mem : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∀ (V1 : Type) [CommRing V1] [IsDomain V1] [IsLocalRing V1] (ev1 : X₁.M.Z.presheaf.stalk z₁ →+* V1) (Y1 : Type) [AddCommGroup Y1] (t1 : Y1 → V1) (δ1 : I → Y1 → Y1) (𝔪1 : GlobalTheory.GSep.GMem X₁ z₁ act V1 ev1 Y1 t1 δ1) (C : Type) (lab : C → X₁.S.Gam), (∀ c, lab c ∈ X₁.S.HH X₁.M z₁) → ∀ T : Y1 → C → V1, 𝔪1.Terms x₀ lab T → ∀ (c : C) (r : X₁.M.Z.presheaf.stalk z₁), X₁.M.stalkHom z₁ r = X₁.S.th (lab c) / X₁.S.th x₀ → ev1 r - T 0 c ∈ maximalIdeal V1 := by
  intro I X₁ z₁ act x₀ hd V _ _ _ ev X _ t δ 𝔪 C lab hlab T hT c r hr
  haveI : IsNoetherianRing V := 𝔪.cn.1
  haveI : IsLocalHom ev := 𝔪.loc
  have hθ : 𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩ ≠ 0 := GlobalTheory.GSep.TwistModel.yK_th_ne_zero 𝔪 hd
  have sp : ∀ w, X₁.M.Z.fromSpecStalk z₁ w ⤳ z₁ := fun w => by
    have : X₁.M.Z.fromSpecStalk z₁ w ∈ Set.range (X₁.M.Z.fromSpecStalk z₁) := ⟨w, rfl⟩
    rwa [Scheme.range_fromSpecStalk] at this
  have hd' := hd.of_specializes
    (ξ := (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) (closedPoint (FractionRing V))) (sp _)
  have hs : ∀ w, (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) w ⤳
      (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) (closedPoint (FractionRing V)) :=
    RatModel.specializes_of_range_eq (RatModel.range_eq_singleton _ _)
  have e := RatModel.val_mul hs (hd'.2 (lab c)) (𝔪.reg _ (X₁.S.th_mem x₀))
  rw [div_mul_cancel₀ _ hd.1, ← hr, GlobalTheory.GSep.TwistModel.val_stalkHom] at e
  have e' : 𝔪.yK ⟨X₁.S.th (lab c), X₁.S.th_mem _⟩ =
      algebraMap V (FractionRing V) (ev r) * 𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩ := by
    rw [𝔪.yK_eq, 𝔪.yK_eq]
    exact e
  have hS := GlobalTheory.GSep.MemberModel.terms_sum 𝔪 hT c
  rw [e'] at hS
  have hI := GlobalTheory.Poinc.TwistSum₂.sumI_of_sumF_mul (fun χ => T (𝔪.e₈.symm χ) c) (ev r) _ hθ hS
  have := sub_mem_of_sumI hI 0 fun j hj =>
    GlobalTheory.T.thetaMember_term_nonzero_index_mem_maximalIdeal I X₁ z₁ act x₀ hd V ev X t δ 𝔪 C lab hlab T hT c _ (𝔪.e₈.symm.map_ne_zero_iff.2 hj)
  simpa only [map_zero] using this

end GlobalTheory.GSep.ConstTerm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioMod =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioModStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioModStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep


theorem _root_.GlobalTheory.T.thetaMember_index_zero_term_eq_theta_ratio_mod : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∀ (V1 : Type) [CommRing V1] [IsDomain V1] [IsLocalRing V1] (ev1 : X₁.M.Z.presheaf.stalk z₁ →+* V1) (Y1 : Type) [AddCommGroup Y1] (t1 : Y1 → V1) (δ1 : I → Y1 → Y1) (𝔪1 : GlobalTheory.GSep.GMem X₁ z₁ act V1 ev1 Y1 t1 δ1) (C : Type) (lab : C → X₁.S.Gam), (∀ c, lab c ∈ X₁.S.HH X₁.M z₁) → ∀ T : Y1 → C → V1, 𝔪1.Terms x₀ lab T → ∀ (c : C) (r : X₁.M.Z.presheaf.stalk z₁), X₁.M.stalkHom z₁ r = X₁.S.th (lab c) / X₁.S.th x₀ → ev1 r - T 0 c ∈ maximalIdeal V1 := by
  first | exact @GlobalTheory.GSep.ConstTerm.const_term_sub_mem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioModStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemDividingLabelsIffClassZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberIndexZeroTermEqThetaRatioModStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTermNonzeroIndexMemMaximalIdealStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTwistWeightWellDefinedLatticeStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

noncomputable section
namespace GlobalTheory.GSep.TwistResid

theorem twist_resid : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∀ (V1 : Type) [CommRing V1] [IsDomain V1] [IsLocalRing V1] (ev1 : X₁.M.Z.presheaf.stalk z₁ →+* V1) (Y1 : Type) [AddCommGroup Y1] (t1 : Y1 → V1) (δ1 : I → Y1 → Y1) (𝔪1 : GlobalTheory.GSep.GMem X₁ z₁ act V1 ev1 Y1 t1 δ1) (C : Type) (lab : C → X₁.S.Gam), (∀ c, lab c ∈ X₁.S.HH X₁.M z₁) → ∀ T : Y1 → C → V1, 𝔪1.Terms x₀ lab T → ∀ (c : C), lab c ∈ X₁.S.supI X₁.M z₁ → ∀ τ ∈ X₁.S.TT X₁.M z₁, ∀ (sg : ℤˣ) (e : ℕ), GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪1 lab T sg c τ e → ∀ s u : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ s = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ e) → X₁.M.stalkHom z₁ u = X₁.S.th (lab c + τ) / X₁.S.th (lab c) → ev1 (s * u) - 1 ∈ maximalIdeal V1 := by
  classical
  intro I X₁ z₁ act x₀ hx₀ V _ _ _ ev Y _ t δ 𝔪 C lab hlab T hT c hc τ hτ sg e hTw s u hs hu
  have hcd : X₁.M.Div X₁.S.th (lab c) z₁ := hc
  have hqO : X₁.S.th (lab c) / X₁.S.th x₀ ∈ X₁.M.O z₁ := hx₀.2 (lab c)
  let r := (X₁.M.stalkEquiv z₁).symm ⟨_, hqO⟩
  have hr : X₁.M.stalkHom z₁ r = X₁.S.th (lab c) / X₁.S.th x₀ := by
    rw [← RatModel.coe_stalkEquiv, RingEquiv.apply_symm_apply]
  have hrU : IsUnit r := ((RatModel.isUnit_O_iff (⟨_, hqO⟩ : X₁.M.O z₁)).2
    ⟨div_ne_zero hcd.1 hx₀.1, by rw [inv_div]; exact hcd.2 x₀⟩).map (X₁.M.stalkEquiv z₁).symm
  obtain ⟨zt, hzt⟩ : ∃ zt : X₁.M.Z.presheaf.stalk z₁,
      X₁.M.stalkHom z₁ zt = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ (X₁.S.r * X₁.S.N)) := by
    obtain ⟨s', hs'⟩ := (X₁.M.stalkEquiv z₁).surjective
      ⟨algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ (X₁.S.r * X₁.S.N)), Subalgebra.algebraMap_mem _ _⟩
    exact ⟨s', by rw [← RatModel.coe_stalkEquiv, hs']⟩
  obtain ⟨wt, hwt⟩ := GlobalTheory.T.thetaMember_twist_weight_wellDefined_lattice I X₁ z₁ act x₀ hx₀ V ev Y t δ 𝔪 sg τ hτ
  let wt' : Y → ZMod (X₁.S.r * X₁.S.N) := fun mu => if mu = 0 then 0 else wt mu
  have hwt' : ∀ a mu, 𝔪.YY a mu → wt' mu = (sg : ℤ) • eStd X₁.S.g _ τ a := by
    intro a mu h
    by_cases h0 : mu = 0
    · subst h0
      have ha : a ∈ X₁.S.HH X₁.M z₁ := (_root_.GlobalTheory.GSep.mem_HH_iff_yy_zero I X₁ z₁ act x₀ hx₀ V ev Y t δ 𝔪 a).2 h
      have h1 : eStd X₁.S.g _ τ a = 0 := hτ a ha
      simp only [wt', if_pos rfl, h1, smul_zero]
    · simp only [wt', if_neg h0]
      exact hwt a mu h
  have hh : X₁.M.stalkHom z₁ (s * u * r) = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ e) * X₁.S.th (lab c + τ) / X₁.S.th x₀ := by
    rw [map_mul, map_mul, hs, hu, hr]
    field_simp [hcd.1, hx₀.1]
  obtain ⟨N, -, -, -, hN⟩ := hTw zt (s * u * r) hzt hh wt' hwt'
  obtain ⟨S, hS⟩ := hN 1
  have h1 := hS (insert 0 S) (Finset.subset_insert _ _)
  have hle : maximalIdeal V ^ 1 • N ≤ (maximalIdeal V : Submodule V V) :=
    Submodule.smul_le.2 fun a ha b _ => by
      rw [smul_eq_mul]; exact Ideal.mul_mem_right b _ (by simpa using ha)
  have h2 := hle h1
  rw [← Finset.add_sum_erase _ _ (Finset.mem_insert_self 0 S)] at h2
  have h3 : ∑ mu ∈ (insert 0 S).erase 0, ev zt ^ (wt' mu).val * T mu c ∈ maximalIdeal V :=
    Ideal.sum_mem _ fun mu hmu => Ideal.mul_mem_left _ _
      (GlobalTheory.T.thetaMember_term_nonzero_index_mem_maximalIdeal I X₁ z₁ act x₀ hx₀ V ev Y t δ 𝔪 C lab hlab T hT c mu (Finset.ne_of_mem_erase hmu))
  have h0 : ev zt ^ (wt' 0).val * T 0 c = T 0 c := by simp [wt']
  rw [h0] at h2
  have h4 : ev (s * u * r) - T 0 c ∈ maximalIdeal V := by
    have := Ideal.add_mem _ h2 h3
    simpa [sub_add_eq_sub_sub, sub_add_cancel] using this
  have h5 := GlobalTheory.T.thetaMember_index_zero_term_eq_theta_ratio_mod I X₁ z₁ act x₀ hx₀ V ev Y t δ 𝔪 C lab hlab T hT c r hr
  have h6 : (ev (s * u) - 1) * ev r ∈ maximalIdeal V := by
    have := Ideal.sub_mem _ h4 h5
    rw [map_mul] at this
    convert this using 1; ring
  exact (Ideal.mul_unit_mem_iff_mem _ (hrU.map ev)).1 h6

end GlobalTheory.GSep.TwistResid
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep


theorem _root_.GlobalTheory.T.twistedSum_zeta_power_residue_dividing_label : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∀ (V1 : Type) [CommRing V1] [IsDomain V1] [IsLocalRing V1] (ev1 : X₁.M.Z.presheaf.stalk z₁ →+* V1) (Y1 : Type) [AddCommGroup Y1] (t1 : Y1 → V1) (δ1 : I → Y1 → Y1) (𝔪1 : GlobalTheory.GSep.GMem X₁ z₁ act V1 ev1 Y1 t1 δ1) (C : Type) (lab : C → X₁.S.Gam), (∀ c, lab c ∈ X₁.S.HH X₁.M z₁) → ∀ T : Y1 → C → V1, 𝔪1.Terms x₀ lab T → ∀ (c : C), lab c ∈ X₁.S.supI X₁.M z₁ → ∀ τ ∈ X₁.S.TT X₁.M z₁, ∀ (sg : ℤˣ) (e : ℕ), GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪1 lab T sg c τ e → ∀ s u : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ s = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ e) → X₁.M.stalkHom z₁ u = X₁.S.th (lab c + τ) / X₁.S.th (lab c) → ev1 (s * u) - 1 ∈ maximalIdeal V1 := by
  first | exact @GlobalTheory.GSep.TwistResid.twist_resid
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMember =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMember", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NegMemDividingLabelsThetaSystemStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberExistsTermsDividingGroupLabelStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMemberTwistWeightWellDefinedLatticeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumExponentsDifferAffineTwoMembersStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSumZetaPowerResidueDividingLabelStatement\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SumFCalculus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep

noncomputable section

namespace GlobalTheory.GSep.TwistIndep

theorem isUnit_one_sub_pow {o : Type} [CommRing o] [IsDomain o] {ζ : o} {M : ℕ} (hζ : IsPrimitiveRoot ζ M)
    (hM : IsUnit (M : o)) {d : ℕ} (hd : ζ ^ d ≠ 1) : IsUnit (1 - ζ ^ d) := by
  have hη : (ζ ^ d) ^ M = 1 := by rw [← pow_mul, mul_comm, pow_mul, hζ.pow_eq_one, one_pow]
  have hsum : ∑ k ∈ Finset.range M, (ζ ^ d) ^ k = 0 := by
    have h := mul_geom_sum (ζ ^ d) M
    rw [hη, sub_self] at h
    exact (mul_eq_zero.1 h).resolve_left (sub_ne_zero.2 hd)
  have hdiv : (1 - ζ ^ d) ∣ (M : o) := by
    have h : (M : o) = ∑ k ∈ Finset.range M, (1 - (ζ ^ d) ^ k) := by
      rw [Finset.sum_sub_distrib, hsum]; simp
    rw [h]
    exact Finset.dvd_sum fun k _ => by simpa using sub_dvd_pow_sub_pow (1 : o) (ζ ^ d) k
  exact isUnit_of_dvd_unit hdiv hM

theorem mem_maximalIdeal_of_map {R V : Type} [CommRing R] [IsLocalRing R] [CommRing V] [IsLocalRing V]
    (ev : R →+* V) {x : R} (h : ev x ∈ maximalIdeal V) : x ∈ maximalIdeal R := by
  rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at h ⊢
  exact fun hu => h (hu.map ev)

theorem stalk_of_base (X₁ : GSet) (z₁ : X₁.M.Z) (a : X₁.o₁) :
    ∃ s : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ s = algebraMap X₁.o₁ X₁.Ω₁ a := by
  obtain ⟨s, hs⟩ := (X₁.M.stalkEquiv z₁).surjective ⟨algebraMap X₁.o₁ X₁.Ω₁ a, Subalgebra.algebraMap_mem _ a⟩
  exact ⟨s, by rw [← RatModel.coe_stalkEquiv, hs]⟩

theorem stalk_isUnit (X₁ : GSet) (z₁ : X₁.M.Z) {s : X₁.M.Z.presheaf.stalk z₁} {x : X₁.o₁}
    (hs : X₁.M.stalkHom z₁ s = algebraMap X₁.o₁ X₁.Ω₁ x) (hx : IsUnit x) : IsUnit s := by
  obtain ⟨y, hy⟩ := hx.exists_right_inv
  obtain ⟨t, ht⟩ := stalk_of_base X₁ z₁ y
  refine IsUnit.of_mul_eq_one t (X₁.M.stalkHom_injective z₁ ?_)
  rw [map_mul, hs, ht, ← map_mul, hy, map_one, map_one]

theorem pow_eq_of_sub_mem (X₁ : GSet) (z₁ : X₁.M.Z) {s₁ s₂ : X₁.M.Z.presheaf.stalk z₁} {e₁ e₂ : ℕ}
    (h₁ : X₁.M.stalkHom z₁ s₁ = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ e₁))
    (h₂ : X₁.M.stalkHom z₁ s₂ = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ e₂))
    (hm : s₁ - s₂ ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁)) : X₁.S.ζ ^ e₁ = X₁.S.ζ ^ e₂ := by
  haveI : IsDomain X₁.o₁ := by haveI := X₁.ar.ded; infer_instance
  by_contra hne
  obtain ⟨M, hM⟩ : ∃ M, M = (X₁.S.r * X₁.S.N) ^ 2 := ⟨_, rfl⟩
  have hζ : IsPrimitiveRoot X₁.S.ζ M := hM ▸ X₁.S.prim
  have hM0 : M ≠ 0 := by
    rw [hM]; exact pow_ne_zero _ (Nat.mul_ne_zero (by have := X₁.S.r_pos; omega) (by have := X₁.S.N_ge; omega))
  have hMu : IsUnit (M : X₁.o₁) := by rw [hM, Nat.cast_pow]; exact X₁.S.unit.pow 2
  obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero hM0
  have hd : X₁.S.ζ ^ e₂ * X₁.S.ζ ^ (e₁ + k * e₂) = X₁.S.ζ ^ e₁ := by
    have h1 : e₂ + (e₁ + k * e₂) = e₁ + M * e₂ := by rw [hk, Nat.succ_eq_add_one]; ring
    rw [← pow_add, h1, pow_add, pow_mul, hζ.pow_eq_one, one_pow, _root_.mul_one]
  have hd1 : X₁.S.ζ ^ (e₁ + k * e₂) ≠ 1 := fun h => hne (by rw [← hd, h, _root_.mul_one])
  have hu : IsUnit (X₁.S.ζ ^ e₁ - X₁.S.ζ ^ e₂) := by
    have h3 : X₁.S.ζ ^ e₁ - X₁.S.ζ ^ e₂ = -(X₁.S.ζ ^ e₂ * (1 - X₁.S.ζ ^ (e₁ + k * e₂))) := by
      rw [← hd]; ring
    rw [h3]
    exact ((((hζ.isUnit hM0).pow e₂).mul (isUnit_one_sub_pow hζ hMu hd1))).neg
  have hs : IsUnit (s₁ - s₂) := stalk_isUnit X₁ z₁ (by rw [map_sub, h₁, h₂, map_sub]) hu
  rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hm
  exact hm hs

theorem pow_eq_iff_cast (X₁ : GSet) (a b : ℕ) :
    X₁.S.ζ ^ a = X₁.S.ζ ^ b ↔ (a : ZMod ((X₁.S.r * X₁.S.N) ^ 2)) = (b : ZMod ((X₁.S.r * X₁.S.N) ^ 2)) := by
  have hpos : 0 < (X₁.S.r * X₁.S.N) ^ 2 :=
    pow_pos (Nat.mul_pos (by have := X₁.S.r_pos; omega) (by have := X₁.S.N_ge; omega)) 2
  have hord := X₁.S.prim.eq_orderOf
  rw [ZMod.natCast_eq_natCast_iff']
  constructor
  · intro h
    apply X₁.S.prim.pow_inj (Nat.mod_lt _ hpos) (Nat.mod_lt _ hpos)
    rw [hord, pow_mod_orderOf, pow_mod_orderOf]
    exact h
  · intro h
    calc X₁.S.ζ ^ a = X₁.S.ζ ^ (a % orderOf X₁.S.ζ) := (pow_mod_orderOf _ _).symm
      _ = X₁.S.ζ ^ (b % orderOf X₁.S.ζ) := by rw [← hord, h]
      _ = X₁.S.ζ ^ b := pow_mod_orderOf _ _

theorem affine_zero {G : Type} [AddCommGroup G] {M : ℕ} (hM : Odd M) (S : Set G) (hS : ∀ s ∈ S, -s ∈ S)
    (hne : S.Nonempty) (κ : ZMod M) (h : AddSubgroup.closure S →+ ZMod M)
    (hz : ∀ s (hs : s ∈ S), κ + h ⟨s, AddSubgroup.subset_closure hs⟩ = 0) :
    ∀ a (ha : a ∈ AddSubgroup.closure S), κ + h ⟨a, ha⟩ = 0 := by
  apply _root_.GlobalTheory.Poinc.Sep.TwistIndep.affine_zero <;> assumption

end GlobalTheory.GSep.TwistIndep

namespace GlobalTheory.GSep
open GlobalTheory.GSep.TwistIndep

theorem twistSum_indep : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∀ sg : ℤˣ, GlobalTheory.GSep.TwistAtEach X₁ z₁ act x₀ sg → (∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (τ : X₁.S.Gam) (χ : Multiplicative 𝔪.D.toPre.X →* (FractionRing V)ˣ), χ ^ (X₁.S.r * X₁.S.N) = 1 → (∀ g₀ : GtPtF 𝔪.D.toPre (FractionRing V), IsTor χ g₀ → ∃ (p : QkPt 𝔪.D.toPre (FractionRing V) (X₁.S.r * X₁.S.N)) (x : TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A), p.y = 0 ∧ p.g = g₀ ∧ QkToAkU 𝔪.U.toUnifPre (FractionRing V) (X₁.S.r * X₁.S.N) p x ∧ x.left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt τ).left) → (∀ a mu, 𝔪.YY a mu → ((χ (Multiplicative.ofAdd (𝔪.e₈ mu)) : (FractionRing V)ˣ) : FractionRing V) = 𝔪.yK (algebraMap X₁.o₁ X₁.S.R (X₁.S.ζ ^ (X₁.S.r * X₁.S.N * (((sg : ℤˣ) : ℤ) • eStd X₁.S.g _ τ a).val))))) → ∀ (V₁ : Type) [CommRing V₁] [IsDomain V₁] [IsLocalRing V₁] (ev₁ : X₁.M.Z.presheaf.stalk z₁ →+* V₁) (Y₁ : Type) [AddCommGroup Y₁] (t₁ : Y₁ → V₁) (δ₁ : I → Y₁ → Y₁) (𝔪₁ : GlobalTheory.GSep.GMem X₁ z₁ act V₁ ev₁ Y₁ t₁ δ₁) (C₁ : Type) (lab₁ : C₁ → X₁.S.Gam), (∀ c, lab₁ c ∈ X₁.S.HH X₁.M z₁) → ∀ T₁ : Y₁ → C₁ → V₁, 𝔪₁.Terms x₀ lab₁ T₁ → ∀ c₁ : C₁, ∀ (V₂ : Type) [CommRing V₂] [IsDomain V₂] [IsLocalRing V₂] (ev₂ : X₁.M.Z.presheaf.stalk z₁ →+* V₂) (Y₂ : Type) [AddCommGroup Y₂] (t₂ : Y₂ → V₂) (δ₂ : I → Y₂ → Y₂) (𝔪₂ : GlobalTheory.GSep.GMem X₁ z₁ act V₂ ev₂ Y₂ t₂ δ₂) (C₂ : Type) (lab₂ : C₂ → X₁.S.Gam), (∀ c, lab₂ c ∈ X₁.S.HH X₁.M z₁) → ∀ T₂ : Y₂ → C₂ → V₂, 𝔪₂.Terms x₀ lab₂ T₂ → ∀ c₂ : C₂, lab₁ c₁ = lab₂ c₂ → ∀ τ ∈ X₁.S.TT X₁.M z₁, ∀ e₁ e₂ : ℕ, GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪₁ lab₁ T₁ sg c₁ τ e₁ → GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪₂ lab₂ T₂ sg c₂ τ e₂ → (∃ r : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ r = X₁.S.th (lab₁ c₁ + τ) / X₁.S.th x₀ ∧ ev₁ r ≠ 0) → GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪₂ lab₂ T₂ sg c₂ τ e₁ := by
  intro I X₁ z₁ act x₀ hdiv sg hsg hW V₁ _ _ _ ev₁ Y₁ _ t₁ δ₁ 𝔪₁ C₁ lab₁ hlab₁ T₁ hT₁ c₁
    V₂ _ _ _ ev₂ Y₂ _ t₂ δ₂ 𝔪₂ C₂ lab₂ hlab₂ T₂ hT₂ c₂ hlab τ hτ e₁ e₂ hS₁ _ hr'
  obtain ⟨r, hr, hr0⟩ := hr'
  obtain ⟨ε₁, ε₂, h1, h2, haff⟩ := _root_.GlobalTheory.GSep.twistSum_exp_affine I X₁ z₁ act x₀ hdiv sg hsg hW V₁ ev₁ Y₁ t₁ δ₁ 𝔪₁ V₂ ev₂ Y₂ t₂ δ₂ 𝔪₂

  have hφ : ∀ b ∈ X₁.S.HH X₁.M z₁, X₁.S.ζ ^ ε₁ b τ = X₁.S.ζ ^ ε₂ b τ := by
    obtain ⟨κ, h, hκ⟩ := haff τ hτ
    have hsup : ∀ s (hs : s ∈ X₁.S.supI X₁.M z₁), κ + h ⟨s, AddSubgroup.subset_closure hs⟩ = 0 := by
      intro s hs
      have hsH : s ∈ X₁.S.HH X₁.M z₁ := AddSubgroup.subset_closure hs
      obtain ⟨U₁, hU₁⟩ := GlobalTheory.T.thetaMember_exists_terms_dividing_group_label I X₁ z₁ act x₀ hdiv V₁ ev₁ Y₁ t₁ δ₁ 𝔪₁ s hsH
      obtain ⟨U₂, hU₂⟩ := GlobalTheory.T.thetaMember_exists_terms_dividing_group_label I X₁ z₁ act x₀ hdiv V₂ ev₂ Y₂ t₂ δ₂ 𝔪₂ s hsH
      have hw₁ := h1 Unit (fun _ => s) (fun _ => hsH) U₁ hU₁ () τ hτ
      have hw₂ := h2 Unit (fun _ => s) (fun _ => hsH) U₂ hU₂ () τ hτ
      obtain ⟨q₁, hq₁⟩ := stalk_of_base X₁ z₁ (X₁.S.ζ ^ ε₁ s τ)
      obtain ⟨q₂, hq₂⟩ := stalk_of_base X₁ z₁ (X₁.S.ζ ^ ε₂ s τ)
      obtain ⟨u, hu⟩ := (X₁.M.stalkEquiv z₁).surjective ⟨_, hs.2 (s + τ)⟩
      have hu' : X₁.M.stalkHom z₁ u = X₁.S.th (s + τ) / X₁.S.th s := by rw [← RatModel.coe_stalkEquiv, hu]
      have r₁ := GlobalTheory.T.twistedSum_zeta_power_residue_dividing_label I X₁ z₁ act x₀ hdiv V₁ ev₁ Y₁ t₁ δ₁ 𝔪₁ Unit (fun _ => s) (fun _ => hsH) U₁ hU₁ ()
        hs τ hτ sg _ hw₁ q₁ u hq₁ hu'
      have r₂ := GlobalTheory.T.twistedSum_zeta_power_residue_dividing_label I X₁ z₁ act x₀ hdiv V₂ ev₂ Y₂ t₂ δ₂ 𝔪₂ Unit (fun _ => s) (fun _ => hsH) U₂ hU₂ ()
        hs τ hτ sg _ hw₂ q₂ u hq₂ hu'
      have m₁' : q₁ * u - 1 ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) :=
        mem_maximalIdeal_of_map ev₁ (by rwa [map_sub, map_one])
      have m₂' : q₂ * u - 1 ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) :=
        mem_maximalIdeal_of_map ev₂ (by rwa [map_sub, map_one])
      have hunit : IsUnit u := by
        have hqu : IsUnit (q₁ * u) := by
          by_contra hn
          have hmem : q₁ * u ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) := (IsLocalRing.mem_maximalIdeal _).2 hn
          have h1m : (1 : X₁.M.Z.presheaf.stalk z₁) ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) := by
            simpa using sub_mem hmem m₁'
          exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).2 h1m)
        exact isUnit_of_mul_isUnit_right hqu
      have hdiff : (q₁ - q₂) * u ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) := by
        have h3 := sub_mem m₁' m₂'
        rwa [show q₁ * u - 1 - (q₂ * u - 1) = (q₁ - q₂) * u by ring] at h3
      have hq : q₁ - q₂ ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) := by
        obtain ⟨v, hv⟩ := hunit.exists_right_inv
        have h4 := Ideal.mul_mem_right v _ hdiff
        rwa [_root_.mul_assoc, hv, _root_.mul_one] at h4
      have heq := (pow_eq_iff_cast X₁ _ _).1 (pow_eq_of_sub_mem X₁ z₁ hq₁ hq₂ hq)
      rw [← hκ s hsH, heq, sub_self]
    have hodd : Odd ((X₁.S.r * X₁.S.N) ^ 2) := by
      have h5 : Odd (X₁.S.r * X₁.S.N) := by
        obtain ⟨j, -, hj⟩ := X₁.ρ.r_eq
        rw [hj, X₁.ρ.N_eq]
        exact X₁.ρ.n_odd.pow.mul X₁.ρ.n_odd.pow.pow
      exact h5.pow
    have hz := affine_zero hodd (X₁.S.supI X₁.M z₁) (GlobalTheory.T.neg_mem_dividingLabels_thetaSystem X₁ z₁) ⟨x₀, hdiv⟩ κ h hsup
    intro b hb
    rw [pow_eq_iff_cast, ← sub_eq_zero, hκ b hb]
    exact hz b hb

  obtain ⟨zt, hzt⟩ := stalk_of_base X₁ z₁ (X₁.S.ζ ^ (X₁.S.r * X₁.S.N))
  obtain ⟨wt, hwt⟩ := GlobalTheory.T.thetaMember_twist_weight_wellDefined_lattice I X₁ z₁ act x₀ hdiv V₁ ev₁ Y₁ t₁ δ₁ 𝔪₁ sg τ hτ
  obtain ⟨s₁, hs₁⟩ := stalk_of_base X₁ z₁ (X₁.S.ζ ^ e₁)
  obtain ⟨s₀, hs₀⟩ := stalk_of_base X₁ z₁ (X₁.S.ζ ^ ε₁ (lab₁ c₁) τ)
  have hA := hS₁ zt (s₁ * r) hzt (by rw [map_mul, hs₁, hr, mul_div_assoc]) wt hwt
  have hB := h1 C₁ lab₁ hlab₁ T₁ hT₁ c₁ τ hτ zt (s₀ * r) hzt (by rw [map_mul, hs₀, hr, mul_div_assoc]) wt hwt
  haveI : IsNoetherianRing V₁ := 𝔪₁.cn.1
  have hE := GlobalTheory.AdicSum.sumI_unique (IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top).ge hA hB
  rw [map_mul, map_mul] at hE
  have hE' : ev₁ s₁ = ev₁ s₀ := mul_right_cancel₀ hr0 hE
  have hm : s₁ - s₀ ∈ maximalIdeal (X₁.M.Z.presheaf.stalk z₁) :=
    mem_maximalIdeal_of_map ev₁ (by rw [map_sub, hE', sub_self]; exact zero_mem _)
  have hpe : X₁.S.ζ ^ e₁ = X₁.S.ζ ^ ε₁ (lab₁ c₁) τ := pow_eq_of_sub_mem X₁ z₁ hs₁ hs₀ hm

  have hpe2 : X₁.S.ζ ^ ε₂ (lab₂ c₂) τ = X₁.S.ζ ^ e₁ := by
    rw [hpe, ← hlab]
    exact (hφ _ (hlab₁ c₁)).symm
  have hF := h2 C₂ lab₂ hlab₂ T₂ hT₂ c₂ τ hτ
  intro zt' h' hzt' hh' wt' hwt'
  exact hF zt' h' hzt' (by rw [hpe2]; exact hh') wt' hwt'

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMember =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMemberStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMemberStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMember\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMemberStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSums =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSums", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedThetaSumCommonSignMemberStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedThetaSumZetaExponentIndepOfMemberStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TwistAtEach\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

theorem GlobalTheory.GSep.twistSum_translate : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (x₀ : X₁.S.Gam), X₁.M.Div X₁.S.th x₀ z₁ → ∃ (sg : ℤˣ) (eps : X₁.S.Gam → X₁.S.Gam → ℕ), ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (C : Type) (lab : C → X₁.S.Gam), (∀ c, lab c ∈ X₁.S.HH X₁.M z₁) → ∀ T : X → C → V, 𝔪.Terms x₀ lab T → ∀ (c : C), ∀ τ ∈ X₁.S.TT X₁.M z₁, ∀ zt h : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ zt = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ (X₁.S.r * X₁.S.N)) → X₁.M.stalkHom z₁ h = algebraMap X₁.o₁ X₁.Ω₁ (X₁.S.ζ ^ eps (lab c) τ) * X₁.S.th (lab c + τ) / X₁.S.th x₀ → ∀ wt : X → ZMod (X₁.S.r * X₁.S.N), (∀ a mu, 𝔪.YY a mu → wt mu = (sg : ℤ) • eStd X₁.S.g _ τ a) → SumI (maximalIdeal V) (fun mu => ev zt ^ (wt mu).val * T mu c) (ev h) := by
  intro I X₁ z₁ act x₀ hdiv
  obtain ⟨sg, hsg, hweil⟩ := _root_.GlobalTheory.GSep.twistAtEach_exists I X₁ z₁ act x₀ hdiv
  classical
  let Wit : X₁.S.Gam → X₁.S.Gam → ℕ → Prop := fun a τ e =>
    ∃ (V : Type) (_ : CommRing V) (_ : IsDomain V) (_ : IsLocalRing V) (ev : X₁.M.Z.presheaf.stalk z₁ →+* V)
      (X : Type) (_ : AddCommGroup X) (t : X → V) (δ : I → X → X)
      (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (C : Type) (lab : C → X₁.S.Gam) (_ : ∀ c, lab c ∈ X₁.S.HH X₁.M z₁)
      (T : X → C → V) (_ : 𝔪.Terms x₀ lab T) (c : C), lab c = a ∧
      GlobalTheory.GSep.TwistSum X₁ z₁ act x₀ 𝔪 lab T sg c τ e ∧
      ∃ r : X₁.M.Z.presheaf.stalk z₁, X₁.M.stalkHom z₁ r = X₁.S.th (lab c + τ) / X₁.S.th x₀ ∧ ev r ≠ 0
  refine ⟨sg, fun a τ => if h : ∃ e, Wit a τ e then h.choose else 0, ?_⟩
  intro V _ _ _ ev X _ t δ 𝔪 C lab hlab T hT c τ hτ zt h hzt hh wt hwt
  obtain ⟨e₂, he₂⟩ := hsg V ev X t δ 𝔪 C lab hlab T hT c τ hτ
  by_cases hW : ∃ e, Wit (lab c) τ e
  · beta_reduce at hh
    rw [dite_eq_left hW] at hh
    obtain ⟨V₁, _, _, _, ev₁, Y₁, _, t₁, δ₁, 𝔪₁, C₁, lab₁, hlab₁, T₁, hT₁, c₁, hc₁, hts, r, hr, hr0⟩ := hW.choose_spec
    have key := _root_.GlobalTheory.GSep.twistSum_indep I X₁ z₁ act x₀ hdiv sg hsg hweil V₁ ev₁ Y₁ t₁ δ₁ 𝔪₁ C₁ lab₁ hlab₁ T₁ hT₁ c₁
      V ev X t δ 𝔪 C lab hlab T hT c hc₁ τ hτ _ e₂ hts he₂ ⟨r, hr, hr0⟩
    exact key zt h hzt hh wt hwt
  · beta_reduce at hh
    rw [dite_eq_right hW] at hh
    have hh' : X₁.M.stalkHom z₁ h = X₁.S.th (lab c + τ) / X₁.S.th x₀ := by rw [hh]; simp
    have hev : ev h = 0 := by
      by_contra hne
      exact hW ⟨e₂, V, inferInstance, inferInstance, inferInstance, ev, X, inferInstance, t, δ, 𝔪, C, lab, hlab, T, hT, c,
        rfl, he₂, h, hh', hne⟩
    obtain ⟨s, hs⟩ := _root_.GlobalTheory.GSep.TwistIndep.stalk_of_base X₁ z₁ (X₁.S.ζ ^ e₂)
    have := he₂ zt (s * h) hzt (by rw [map_mul, hs, hh', mul_div_assoc]) wt hwt
    rw [map_mul, hev, mul_zero] at this
    rwa [hev]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSums =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSumsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSumsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsTranslateEqTwistedSumsStatement =====
