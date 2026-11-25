module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkUInvariantUnderFieldEmbedding
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UwRQeIsNsmul
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsActIffIsDiagEnd
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefTwistPull
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExhaustOfLabels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionValueEqAdicSumAtImageOfZeroPair
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TxFrameTranslate
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PtEqOfProportional
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.NonemptyPerfectSectionsComplexOfNoetherianStatement
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.GtActIffEqGtSmul
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AdicSumSectionsOfFiniteSumsOnThickenings
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubNMul
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.DivMemOfForallPowSuccDivPowMem
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ThetaTableAlgClosedCompleteSingleValued
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsGenOfSection
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsActValue
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsAutomorphismInducingFrobeniusAllDegrees
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGenMulPullPowUnif
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsNsmulAndNeg
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecNeZero
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PullMulValue
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SectionValueAtTorsionPointEqSumTerms
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SumFCalculus
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumFConvOfCrossAny, Development.AbelianVarietyTheory.Proofs.DivisorProofs.QkToAkULevelField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionTranslateLiesOverProductTorsionFra

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumFConvOfCrossAny =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumFConvOfCrossAny", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PtEqOfProportional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory.UT
open ReciprocityTheory.ChartRestriction.G.DVR
open ReciprocityTheory.ChartRestriction.G.DVR
noncomputable section

namespace GlobalTheory.DvrAnyChar

end GlobalTheory.DvrAnyChar

namespace GlobalTheory.DvrAnyChar
open GlobalTheory.TorsionAnyChar

end GlobalTheory.DvrAnyChar

namespace GlobalTheory.DvrAnyChar
open GlobalTheory.TorsionAnyChar

end GlobalTheory.DvrAnyChar

namespace GlobalTheory.DvrAnyChar
open GlobalTheory.TorsionAnyChar
section
open GlobalTheory.UT.CoefUnit GlobalTheory.UT.CoefBasic

end
section
open GlobalTheory.UT.SmallPoint GlobalTheory.UT.CoefBasic

end
section
open GlobalTheory.UT.SmallZero GlobalTheory.UT.CoefBasic GlobalTheory.UT.SmallPoint

end
end GlobalTheory.DvrAnyChar

namespace GlobalTheory.DvrAnyChar
open GlobalTheory.TorsionAnyChar GlobalTheory.UT.MixedConv GlobalTheory.FieldBaseChange
section CoreAny
variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G] {U : UnifPre I D A G} (E : EndU U)
  {F : Type} [Field F] [IsAlgClosed F] [Algebra (FractionRing R) F]

end CoreAny
section FieldAny
variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G] {U : UnifPre I D A G} (E : EndU U)
  {F : Type} [Field F] [Algebra (FractionRing R) F]

end FieldAny

end GlobalTheory.DvrAnyChar

namespace GlobalTheory.DvrAnyChar
open GlobalTheory.TorsionAnyChar

theorem qkToAkU_level_any : LL → AnyUF fun {R} _ _ {I} {D} {A} {G} _ _ U F _ _ => ∀ (k n N : ℕ), 1 ≤ k → 1 ≤ n →
    N = k * n → ∀ (p : QkPt D.toPre F k) (q : QkPt D.toPre F N) x, q.y = n • p.y → q.g = p.g →
    QkToAkU U.toUnifPre F k p x → QkToAkU U.toUnifPre F N q x := by
  intro hL R _ _ I hI D A G _ _ hG U F _ _ _ k n N hk hn hN p q x hy hg hx
  have hN1 : 1 ≤ N := hN ▸ Nat.mul_pos hk hn
  obtain ⟨x₀, h₀⟩ := existsTransl_any hL R I hI D A G hG U F k hk p
  have a := (indAtTransl_any hL R I hI D A G hG U F k hk p x₀).1
    (h₀ 1 k le_rfl (Nat.mul_one k).symm p (one_nsmul _).symm rfl)
  obtain rfl := GlobalTheory.TorsionImage.qkToAkU_unique hL.1 hL.2.1 R I hI D A G hG U F k hk p x x₀ hx a
  exact (indAtTransl_any hL R I hI D A G hG U F N hN1 q x).1 (h₀ n N hn hN q hy hg)

end GlobalTheory.DvrAnyChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumFConvOfCrossAny =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QkToAkULevelField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.QkToAkULevelField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.NonemptyPerfectSectionsComplexOfNoetherianStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumFConvOfCrossAny\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.GtActIffEqGtSmul\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AdicSumSectionsOfFiniteSumsOnThickenings\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubNMul\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkUInvariantUnderFieldEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UwRQeIsNsmul\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.DivMemOfForallPowSuccDivPowMem\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.ZH

noncomputable section

namespace GlobalTheory.Poinc.Tors.AnyField
open GlobalTheory.TorsionAnyChar

def FieldUF (p : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G],
    Unif I D A G → ∀ (F : Type) [Field F] [Algebra (FractionRing R) F], Prop) : Prop :=
  AnyU fun {R} _ _ {_} {_} {_} {_} _ _ U => ∀ (F : Type) [Field F] [Algebra (FractionRing R) F], p U F

def FieldD (p : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R}, DegData R I →
    ∀ (F : Type) [Field F] [Algebra (FractionRing R) F], Prop) : Prop :=
  ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R), AdmBase R I → ∀ (D : DegData R I)
    (F : Type) [Field F] [Algebra (FractionRing R) F], p D F

section
open GlobalTheory.UT.CoefBasic GlobalTheory.UT.CoefPhi

theorem coefPhi_field : LL → FieldD fun {R} _ _ {I} D F _ _ => ∀ (k : ℕ), 1 ≤ k → ∀ (p : QkPt D.toPre F k) (w : Frm D.toPre F k p.g.b), w.IsGen → ∀ (g₀ g₁ : GtPtF D.toPre F), g₀.IsAdd p.g g₁ → ∀ ω₀ : Frm D.toPre F k g₀.b, ω₀.IsGen → ∃ ω₁ : Frm D.toPre F k g₁.b, ω₁.IsGen ∧ (g₀.IsZero → FrmOne ω₀ → ∀ z J, Good D.toPre.P.L z J → val ω₁ (𝟙 _) z J = val w (𝟙 _) z J) ∧ ∀ (n N : ℕ), 1 ≤ n → N = k * n → ∀ (q : QkPt D.toPre F N), q.y = n • p.y → q.g = p.g → ∀ (wN : Frm D.toPre F N q.g.b) (w₀ : Frm D.toPre F N g₀.b) (w₁ : Frm D.toPre F N g₁.b), (wN.IsGen ∧ ∀ z J, Good D.toPre.P.L z J → val wN (𝟙 _) z J = val w (𝟙 _) z J ^ n) → (w₀.IsGen ∧ ∀ z J, Good D.toPre.P.L z J → val w₀ (𝟙 _) z J = val ω₀ (𝟙 _) z J ^ n) → (w₁.IsGen ∧ ∀ z J, Good D.toPre.P.L z J → val w₁ (𝟙 _) z J = val ω₁ (𝟙 _) z J ^ n) → ∀ s s' : Fam D.toPre F N, PhiRel D.toPre F N q wN s s' → ∀ α, coef s' g₀ w₀ (α + q.y) = coef s g₁ w₁ α := by
  intro hL R _ _ I _ D F _ _ k _ p w hw g₀ g₁ hadd ω₀ h₀
  obtain ⟨hb, hs⟩ := (isAdd_iff _ _ _).1 hadd
  obtain ⟨ω₁, h₁, v₁⟩ := exists_frame p w hw g₀ ω₀ h₀ g₁.b hb
  refine ⟨ω₁, h₁, fun hz ho z J hJ => ?_, ?_⟩
  · have C : IsCub (th D.toPre (T := TF (R := R) F) z J) := isCub_cubV D.toPre.cub hJ
    obtain ⟨z₁, z₂⟩ := (isZero_iff _).1 hz
    have c : cubN (th D.toPre z J) k 1 p.g.b g₀.b = 1 := by rw [z₁, C.N_one]
    rw [v₁ z J hJ, ho.2 z J hJ, z₂ _ z J hJ, c, _root_.one_mul, _root_.mul_one, _root_.mul_one]
  · rintro n _ _ rfl ⟨qy, qg, qe⟩ hy hg wN w₀ w₁ ⟨hN, vN⟩ ⟨-, v₀⟩ ⟨hw₁, vw₁⟩ s s' hΦ α
    dsimp only at hy hg
    subst hy hg
    have H := (phiRel_iff hL.1.globalFns _ wN hN s s').1 hΦ
    refine coef_eq fun z J hJ => ?_
    have C : IsCub (th D.toPre (T := TF (R := R) F) z J) := isCub_cubV D.toPre.cub hJ
    have e₁ := H α _ rfl _ (lift (𝟙 (TF (R := R) F)) g₀.b) z J hJ
    have t : lift (𝟙 (TF (R := R) F)) g₀.b ≫ DegPre.trPt D.toPre F p.g.b = lift (𝟙 (TF (R := R) F)) g₁.b := by
      apply CartesianMonoidalCategory.hom_ext
      · rw [Category.assoc, tr_fst, lift_fst, lift_fst]
      · rw [lift_snd, hb, Category.assoc]
        refine (congrArg (_ ≫ ·) (tr_pr D.toPre F p.g.b)).trans ?_
        rw [MonObj.comp_mul, lift_fst_assoc, Category.id_comp, lift_snd]
    dsimp only at e₁ vN
    rw [t, uVal, lift_fst_assoc, lift_fst, lift_snd, Category.id_comp, Over.id_left, val_mul hJ, vN z J hJ,
      CoefPhi.cubN_mul C] at e₁
    have e₂ := gt_nsmul (𝟙 (TF (R := R) F)) hJ g₀ α p.y n
    rw [Category.id_comp, Over.id_left, cPoint_y] at e₂
    have e₃ := hs α z J hJ
    rw [isCoef_coef g₁ hw₁ α s z J hJ]
    dsimp only
    rw [e₁, v₀ z J hJ, vw₁ z J hJ, v₁ z J hJ]
    simp only [_root_.mul_assoc, ← Units.val_mul]
    congr 2
    apply Additive.ofMul.injective
    have a₂ := congrArg Additive.ofMul e₂
    have a₃ := congrArg Additive.ofMul e₃
    simp only [ofMul_mul, ofMul_inv, ofMul_pow] at a₂ a₃ ⊢
    linear_combination (norm := module) a₃ - a₂

end

section
open GlobalTheory.AbLaw GlobalTheory.AbLaw.Seesaw GlobalTheory.SecAdicSum

theorem sumF_field : LL → FieldD fun {R} _ _ {I} D F _ _ => ∀ (K : Type) [Fintype K] (φ : K → (D.toPre.P.A.left ⟶ D.toPre.P.A.left)) (ε : K → ℤ) (Ix : Type) (n : Ix → LB.Sec (LB.LinComb D.toPre.P.L φ ε)) (n₀ : LB.Sec (LB.LinComb D.toPre.P.L φ ε)), (∀ e : ℕ, ∃ S : Finset Ix, ∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e D.toPre.P.A).left) (z : Z) (J), Good D.toPre.P.L z J → (∀ i ∉ S, sval (n i) (r ≫ (D.toPre.prBe I e).left) z J = 0) ∧ sval n₀ (r ≫ (D.toPre.prBe I e).left) z J = ∑ i ∈ S, sval (n i) (r ≫ (D.toPre.prBe I e).left) z J) → ∀ (b : TF (R := R) F ⟶ D.toPre.P.A) (τ : LB.Gen (LB.LinComb D.toPre.P.L (fun i => b.left ≫ φ i) ε)), τ.IsGen → ∀ (x : Ix → F) (x₀ : F), (∀ z J, Good D.toPre.P.L z J → (∀ i, sval (n i) b.left z J = cst F z (x i) * (val τ (𝟙 _) z J).val) ∧ sval n₀ b.left z J = cst F z x₀ * (val τ (𝟙 _) z J).val) → SumF I F x x₀ := by
  intro _ R _ _ I hR D F _ _ K _ φ ε Ix n n₀ hS b τ _ x x₀ hx
  have := hR.1
  have := D.toPre.P.isAb.smooth
  have hL := D.toPre.P.isLB
  obtain ⟨P⟩ := GlobalTheory.T.nonempty_perfectSectionsComplex_of_noetherian R _ D.toPre.P.A.hom inferInstance
    (GlobalTheory.AbProj.isProjBy_of_isPullback D.toPre.P (IsPullback.id_horiz _)) _ (LB.isLB_linComb hL φ ε)
  choose v hv hv' using fun i => exists_vec P (n i)
  obtain ⟨v₀, hv₀, hv₀'⟩ := exists_vec P n₀
  obtain ⟨z⟩ := CoefBasic.exists_pt (R := R) (F := F)
  obtain ⟨J, hJ⟩ := CoefBasic.exists_good' hL z
  obtain ⟨i₀, hi₀⟩ := exists_mem P (b.left z)
  let t := trF φ ε b.left z (P.ch i₀) (fun k => J (b.left ≫ φ k)) * val τ (𝟙 _) z J
  choose y hy using fun k => CoefBasic.cstH_surj z (gs b.left z _ (P.u k i₀) * (t⁻¹).val)
  letI : Module R F := Module.compHom F (algebraMap R (FractionRing R))
  let ev : (Fin P.a → R) →ₗ[R] F := Fintype.linearCombination R y
  have key : ∀ (s : LB.Sec (LB.LinComb D.toPre.P.L φ ε)) (w : Fin P.a → R) (c : F),
      (∀ i, AbLaw.rs _ (P.le i) (s.f (P.ch i)) = loc₀ P w i) →
      sval s b.left z J = UT.cst F z c * (val τ (𝟙 _) z J).val → c = ev w := fun s w c h₁ h₂ => by
    have e := gs_loc₀ P h₁ b.left z hi₀ hJ
    rw [h₂, mul_left_comm, ← Units.val_mul, CoefBasic.cst_eq] at e
    refine CoefBasic.cstH_inj (R := R) z ?_
    have e' : CoefBasic.cstH z c = gs b.left z _ (loc₀ P w i₀) * (t⁻¹).val :=
      (Units.eq_mul_inv_iff_mul_eq t).2 e.symm
    have hs : ∀ a : Fin P.a → Γ(D.toPre.P.A.left, P.W i₀), gs b.left z _ (∑ k, a k) = ∑ k, gs b.left z _ (a k) :=
      fun a => by simp only [gs_eq b.left z _ hi₀, map_sum]
    rw [e', loc₀, hs, Finset.sum_mul]
    refine Eq.trans (Finset.sum_congr rfl fun k _ => ?_) (map_sum _ (fun k => w k • y k) _).symm
    rw [gs_mul b.left z _ hi₀, gs_cst_point b z _ hi₀, _root_.mul_assoc, ← hy, ← map_mul, ← Algebra.smul_def]
    rfl
  obtain rfl : x = fun i => ev (v i) := funext fun i => key _ _ _ (hv' i) ((hx z J hJ).1 i)
  obtain rfl : x₀ = ev v₀ := key _ _ _ hv₀' (hx z J hJ).2
  refine sumI_of_ker I P.D₀ ev v v₀ hv hv₀ fun e => ?_
  obtain ⟨S, hS⟩ := hS e
  refine ⟨S, fun T hT k => Ideal.Quotient.eq_zero_iff_mem.1 (congrFun (comp_eq_zero P
    (IsPullback.of_hasPullback D.toPre.P.A.hom (thick R I e)) (v₀ - ∑ i ∈ T, v i) ?_ fun i p hp => ?_) k)⟩
  · simp only [Matrix.mulVec_sub, Matrix.mulVec_sum, hv, hv₀, Finset.sum_const_zero, sub_zero]
  · obtain ⟨J', hJ'⟩ := CoefBasic.exists_good' hL p
    obtain ⟨h₁, h₂⟩ := hS _ (𝟙 _) p J' hJ'
    rw [Category.id_comp] at h₁ h₂
    have h₃ := h₂.trans (Finset.sum_subset hT fun j _ hj => h₁ j hj)
    have e₀ := gs_loc₀ P hv₀' _ p hp hJ'
    have e₁ := fun j => gs_loc₀ P (hv' j) _ p hp hJ'
    rw [gs_eq _ p _ hp] at e₀
    simp only [gs_eq _ p _ hp] at e₁

    rw [loc₀_sub_sum, gs_eq _ p _ hp, map_sub, map_sub, map_sum, map_sum, e₀, Finset.sum_congr rfl fun j _ => e₁ j,
    ← Finset.mul_sum]
    exact sub_eq_zero.2 (congrArg _ h₃)

end

section
open GlobalTheory.FieldBaseChange GlobalTheory.UT.ProdConv

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G] (U : UnifPre I D A G)
  {F : Type} [Field F] [Algebra (FractionRing R) F]

theorem point_field (hL : LL) (hR : AdmBase R I) {k l m : ℕ} (r : R) {σ : H0 U.LG.L k}
    {σ' : H0 U.LG.L l} {σ'' : H0 U.LG.L m} (hm : m = k + l)
    {f : ∀ α, D.toPre.SecB k α} {f' : ∀ α, D.toPre.SecB l α} {f'' : ∀ α, D.toPre.SecB m α}
    (h : ∀ e, U.ExpandsAt e k σ f) (h' : ∀ e, U.ExpandsAt e l σ' f') (h'' : ∀ e, U.ExpandsAt e m σ'' f'')
    (hσ : ∀ (Z : Scheme.{0}) (q : Z ⟶ G.left) (z : Z) (j), q z ∈ U.LG.L.U j →
      sv U m σ'' q z j = constVal (q ≫ G.hom) z r * (sv U k σ q z j * sv U l σ' q z j))
    (g : GtPtF D.toPre F) {w : Frm D.toPre F k g.b} {w' : Frm D.toPre F l g.b} {w'' : Frm D.toPre F m g.b}
    (hw : w''.IsGen) (hww : ∀ z J, Good D.toPre.P.L z J → val w'' (𝟙 _) z J = val w (𝟙 _) z J * val w' (𝟙 _) z J)
    {x x' : D.toPre.X → F} (hx : ∀ χ, IsTerm g w (f χ) (x χ)) (hx' : ∀ χ, IsTerm g w' (f' χ) (x' χ))
    (α : D.toPre.X) {x'' : F} (hx'' : IsTerm g w'' (f'' α) x'') :
    SumF I F (fun χ => algebraMap (FractionRing R) F (algebraMap R (FractionRing R) r) * (x χ * x' (α - χ))) x'' := by
  subst hm
  choose p hp using fun α β => exists_isProd r k l (add_sub_cancel β α) (f β) (f' (α - β))
  obtain ⟨τ, hτ, vτ⟩ := exists_frame g hw α
  refine sumF_field hL R I hR D F (Fin 4) (D.toPre.famφB α) (DegPre.famε (k + l)) D.toPre.X (p α) (f'' α)
    (fun e => level U e r rfl (h e) (h' e) (h'' e) hσ p hp α) g.b τ hτ _ _ fun z J hJ => ⟨fun χ => ?_, ?_⟩
  · have b := gt_mul (𝟙 (TF (R := R) F)) hJ g χ (α - χ)
    rw [add_sub_cancel, Category.id_comp, Over.id_left] at b
    rw [hp α χ _ g.b z J hJ, vτ z J hJ, constVal_TF, hww z J hJ, CoefBasic.cst_eq z (_ * _), map_mul, map_mul,
      ← CoefBasic.cst_eq, ← CoefBasic.cst_eq, ← CoefBasic.cst_eq]
    exact alg_prod _ (hx χ z J hJ) (hx' (α - χ) z J hJ) b
  · rw [vτ z J hJ]
    exact alg_term (hx'' z J hJ)

end

section
open GlobalTheory.FieldBaseChange GlobalTheory.UT.ProdConv

theorem prodConv_field : LL → FieldUF fun {R} _ _ {I} {D} {A} {G} _ _ U F _ _ => ∀ (w₀ : W0 U.toUnifPre), w₀.IsGen → ∀ (k k' k'' : ℕ), 1 ≤ k → 1 ≤ k' → k'' = k + k' → ∀ (t : SecA A F k) (t' : SecA A F k') (t'' : SecA A F k'') s s' s'', U.ExpandsF F k w₀ t s → U.ExpandsF F k' w₀ t' s' → U.ExpandsF F k'' w₀ t'' s'' → (∀ z J, Good A.L z J → sA t'' (𝟙 _) z J = sA t (𝟙 _) z J * sA t' (𝟙 _) z J) → ∀ (g : GtPtF D.toPre F) (w : Frm D.toPre F k g.b) (w' : Frm D.toPre F k' g.b) (w'' : Frm D.toPre F k'' g.b), w.IsGen → w'.IsGen → w''.IsGen → (∀ z J, Good D.toPre.P.L z J → val w'' (𝟙 _) z J = val w (𝟙 _) z J * val w' (𝟙 _) z J) → ∀ α, SumF I F (fun χ => coef s g w χ * coef s' g w' (α - χ)) (coef s'' g w'' α) := by
  intro hL R _ _ I hR D A G _ _ _ U F _ _ w₀ hw₀ k k' k'' hk hk' hm t t' t'' s s' s'' h h' h'' ht g w w' w'' hw hw' hw''
    hww α
  have hG := hL.1.globalFns
  have hk'' : 1 ≤ k'' := by omega
  obtain ⟨v, a, b⟩ := h
  obtain ⟨v', a', b'⟩ := h'
  obtain ⟨v'', a'', b''⟩ := h''
  obtain ⟨n, c, x, hx, e₁, e₂⟩ := (expandsG_iff U.toUnifPre F k v s).1 b
  obtain ⟨n', c', x', hx', e₁', e₂'⟩ := (expandsG_iff U.toUnifPre F k' v' s').1 b'
  obtain ⟨u, hu⟩ := exists_powMul A.isLB (q := (snd (TFK (R := R) F) A.A).left) hm t t'
  obtain rfl : t'' = u := sec_ext' A.isLB fun y J hJ => (ht y J hJ).trans (hu _ (𝟙 _) y _ (hJ (𝟙 _ ≫ _))).symm
  choose τ hτ using fun p : Fin n × Fin n' => exists_powMul U.LG.isLB (q := 𝟙 G.left) hm (x p.1).1 (x' p.2).1
  choose Φ hΦ using fun p => ((U.expand k'' hk'').1 (genericSec U.toUnifPre k'' (τ p))).exists
  choose r hr y hy d₁ d₂ using fun p => (expands_iff U.toUnifPre k'' _ _).1 (hΦ p)
  have hr' : ∀ p, algebraMap (FractionRing R) F (algebraMap R (FractionRing R) (r p)) ≠ 0 := fun p => by
    rw [map_ne_zero]; exact (map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).2 (hr p)
  have hyτ : ∀ p, (y p).1 = r p • (show IntSec U.toUnifPre k'' from τ p) := fun p =>
    genericSec_injective U.toUnifPre k'' ((d₁ p).trans (map_smulₛₗ _ _ _).symm)
  have hv : v'' = (∑ p : Fin n × Fin n', (c p.1 * c' p.2) • extendSec U.toUnifPre F k'' (genericSec U.toUnifPre k'' (τ p)) :
      GroupSec U.toUnifPre F k'') := by
    refine powVal_ext U.LG.isLB fun z i hi => ?_
    obtain ⟨i₁, hi₁⟩ := exists_chart A.isLB
      (U.gen.hom.left ((snd (TFK (R := R) F) ((Over.pullback (jK R)).obj G)).left z))
    have m := (isoRelM_iff _ _ _ _ a.1 _ a.2.1 _ _).1 a _ (𝟙 _) z i i₁ hi hi₁
    have m' := (isoRelM_iff _ _ _ _ a'.1 _ a'.2.1 _ _).1 a' _ (𝟙 _) z i i₁ hi hi₁
    have m'' := (isoRelM_iff _ _ _ _ a''.1 _ a''.2.1 _ _).1 a'' _ (𝟙 _) z i i₁ hi hi₁
    have b₁ : (snd (TFK (R := R) F) A.A).left ((𝟙 _ ≫ (U.genF F).left) z) ∈ A.L.U i₁ :=
      (congrArg (fun q => q z ∈ A.L.U i₁) a.1).mpr hi₁
    have m₀ := hu _ _ z i₁ b₁
    rw [Category.comp_id] at m m' m''
    have w₁ := (congrArg (fun q => powVal q (𝟙 _) z i) e₁).trans (powVal_comb U.toUnifPre c (fun p => (x p).1) z hi)
    have w₂ := (congrArg (fun q => powVal q (𝟙 _) z i) e₁').trans (powVal_comb U.toUnifPre c' (fun p => (x' p).1) z hi)
    refine Eq.trans ?_ (powVal_comb U.toUnifPre _ τ z hi).symm
    have w₃ : powVal v'' (𝟙 _) z i = powVal v (𝟙 _) z i * powVal v' (𝟙 _) z i := by
      rw [m, m', m'', m₀, hm, Nat.cast_add, zpow_add, Units.val_mul]; ring
    rw [w₃, w₁, w₂, Finset.sum_mul_sum, Fintype.sum_prod_type]
    refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
    have cm : constVal (groupBase G F) z (c p * c' q) = constVal (groupBase G F) z (c p) * constVal (groupBase G F) z (c' q) :=
      (congrArg (gs _ z ⊤) (map_mul _ _ _)).trans (gs_mul _ z ⊤ trivial _ _)
    rw [hτ (p, q) _ (UnifPre.gFK (G := G) F) z i hi, cm]
    ring
  have hs : ∀ β, famProj D.toPre F k'' β (∑ p : Fin n × Fin n', (c p.1 * c' p.2) • famPull D.toPre (FractionRing R) F hG k'' (Φ p)) =
      ∑ p : Fin n × Fin n', (c p.1 * c' p.2 * (algebraMap (FractionRing R) F (algebraMap R (FractionRing R) (r p)))⁻¹) •
        termPull D.toPre (FractionRing R) F k'' β (genericTerm D k'' β ((y p).2 β)) := fun β => by

    rw [map_sum]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [d₂, map_smulₛₗ, map_smulₛₗ, smul_smul, inv_mul_cancel_right₀ (hr' p)]; rfl
  have hE := expandsG_of_fintype U.toUnifPre F k'' v'' _ _ y hy (hv.trans (Finset.sum_congr (M := GroupSec U.toUnifPre F k'') rfl fun p _ => by
    rw [d₁, map_smulₛₗ, smul_smul, inv_mul_cancel_right₀ (hr' p)])) hs
  rw [← ((expandsG_bijective U.toUnifPre F hG hk'' (U.expand k'' hk'')).1 v'').unique b'' hE] at hs
  choose z hz using fun i χ => exists_isTerm g hw ((x i).2 χ)
  choose z' hz' using fun i χ => exists_isTerm g hw' ((x' i).2 χ)
  choose z'' hz'' using fun p => exists_isTerm g hw'' ((y p).2 α)
  have key := sumF_sum hR Finset.univ (fun p : Fin n × Fin n' =>
      c p.1 * c' p.2 * (algebraMap (FractionRing R) F (algebraMap R (FractionRing R) (r p)))⁻¹)
    fun p => point_field U.toUnifPre hL hR (r p) hm (hx p.1) (hx' p.2) (hy p) (fun Z q z j hj => by
      rw [hyτ p]
      exact (powVal_smul _ _ q z hj).trans (congrArg _ (hτ p Z q z j hj))) g hw'' hww (hz p.1) (hz' p.2) α (hz'' p)
  rw [coef_eq_sum g hz'' (hs α)]
  convert key using 2 with χ
  rw [coef_eq_sum g (fun i => hz i χ) (e₂ χ), coef_eq_sum g (fun i => hz' i (α - χ)) (e₂' (α - χ)), Finset.sum_mul_sum,
    Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun q _ => ?_
  have := hr' (p, q)
  field_simp

end

theorem qkToAkU_level_field : LL → FieldUF fun {R} _ _ {I} {D} {A} {G} _ _ U F _ _ => ∀ (k n N : ℕ), 1 ≤ k → 1 ≤ n →
    N = k * n → ∀ (p : QkPt D.toPre F k) (q : QkPt D.toPre F N) x, q.y = n • p.y → q.g = p.g →
    QkToAkU U.toUnifPre F k p x → QkToAkU U.toUnifPre F N q x := by
  intro hL R _ _ I hI D A G _ _ hG U F _ _ k n N hk hn hN p q x hy hg hx
  have hN1 : 1 ≤ N := hN ▸ Nat.mul_pos hk hn
  have hf : (algebraMap F (AlgebraicClosure F)).comp (algebraMap (FractionRing R) F) = algebraMap _ _ :=
    (IsScalarTower.algebraMap_eq _ _ _).symm
  obtain ⟨p', hp⟩ := qkExtExists R D.toPre F (AlgebraicClosure F) (algebraMap F _) (fun r => DFunLike.congr_fun hf r) k p
  obtain ⟨q', hq⟩ := qkExtExists R D.toPre F (AlgebraicClosure F) (algebraMap F _) (fun r => DFunLike.congr_fun hf r) N q
  refine (TorsionExt.qkToAkU_iff_of_algebra hL.1.globalFns hL.1.kerPow U hN1 hq x).2 ?_
  refine DvrAnyChar.qkToAkU_level_any hL R I hI D A G hG U _ k n N hk hn hN
    p' q' _ ?_ ?_ ((TorsionExt.qkToAkU_iff_of_algebra hL.1.globalFns hL.1.kerPow U hk hp x).1 hx)
  · rw [hq.1, hp.1, hy]
  · exact ((TorusExt.eq_gtExt_iff _ hf _ _).2 hq.2).trans
      (((TorusExt.eq_gtExt_iff _ hf _ _).2 hp.2).trans (congrArg (TorusExt.gtExt D.toPre _ hf) hg).symm).symm

theorem exists_sumI_smul {R : Type} [CommRing R] {I : Ideal R} [IsAdicComplete I R] {E Ix : Type} [AddCommGroup E]
    [Module R E] {x : Ix → E} {s : E} (h : SumI I x s) (a : Ix → R) : ∃ s', SumI I (fun i => a i • x i) s' := by
  classical
  obtain ⟨N, hN, hs, hx, hS⟩ := h
  choose S hS using hS
  have h0 : ∀ n i, i ∉ S n → x i ∈ I ^ n • N := fun n i hi => by
    have := sub_mem (hS n (S n) le_rfl) (hS n (insert i (S n)) (Finset.subset_insert _ _))
    rwa [Finset.sum_insert hi, sub_sub_sub_cancel_left, add_sub_cancel_right] at this
  have h1 : ∀ n (T T' : Finset Ix), S n ⊆ T → T ⊆ T' → ∑ i ∈ T', a i • x i - ∑ i ∈ T, a i • x i ∈ I ^ n • N :=
    fun n T T' h h' => by
      rw [← Finset.sum_sdiff h', add_sub_cancel_right]
      exact Submodule.sum_mem _ fun i hi => Submodule.smul_mem _ _
        (h0 n i fun hi' => (Finset.mem_sdiff.1 hi).2 (h hi'))
  haveI : Module.Finite R N := Module.Finite.iff_fg.2 hN
  have hP := T0.FiniteAlgebraLocalCompletion.isPrecomplete_finite_module I N
  let T : ℕ → Finset Ix := fun n => (Finset.range (n + 1)).biUnion S
  have hT : ∀ n, S n ⊆ T n := fun n => Finset.subset_biUnion_of_mem S (Finset.self_mem_range_succ n)
  have hT' : ∀ m n, m ≤ n → T m ⊆ T n := fun m n h =>
    Finset.biUnion_subset_biUnion_of_subset_left _ (Finset.range_mono (by omega))
  let f : ℕ → N := fun n => ⟨∑ i ∈ T n, a i • x i, Submodule.sum_mem _ fun i _ => N.smul_mem _ (hx i)⟩
  obtain ⟨l, hl⟩ := hP.prec' f (fun {m n} h => by
    rw [SModEq.sub_mem, Submodule.mem_smul_top_iff, ← neg_mem_iff]
    simpa [f] using h1 m _ _ (hT m) (hT' m n h))
  refine ⟨l, N, hN, l.2, fun i => N.smul_mem _ (hx i), fun n => ⟨T n, fun T' h => ?_⟩⟩
  have e := hl n
  rw [SModEq.sub_mem, Submodule.mem_smul_top_iff] at e
  have := add_mem (h1 n _ _ (hT n) h) e
  rw [← neg_mem_iff]
  convert this using 1
  simp [f]

theorem exists_sumF_twist {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} (hI : AdmBase R I) {Ix : Type}
    {x : Ix → FractionRing R} {s : FractionRing R} (h : SumF I (FractionRing R) x s) {n : ℕ} (hn : 1 ≤ n)
    (a : Ix → FractionRing R) (ha : ∀ i, a i ^ n = 1) : ∃ s', SumF I (FractionRing R) (fun i => a i * x i) s' := by
  obtain ⟨-, -, hc, hI⟩ := hI
  have : ∀ i, ∃ b : R, algebraMap R (FractionRing R) b = a i := fun i =>
    IsIntegrallyClosed.isIntegral_iff.1 (IsIntegral.of_pow hn (by rw [ha]; exact isIntegral_one))
  choose b hb using this
  letI : Module R (FractionRing R) := Module.compHom _ (algebraMap R (FractionRing R))
  obtain ⟨s', hs'⟩ := exists_sumI_smul h b
  refine ⟨s', ?_⟩
  simp only [← hb]
  exact hs'

end GlobalTheory.Poinc.Tors.AnyField
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QkToAkULevelField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionTranslateLiesOverProductTorsionFra =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionTranslateLiesOverProductTorsionFra", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsActIffIsDiagEnd\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefTwistPull\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ThetaTableAlgClosedCompleteSingleValued\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExhaustOfLabels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QkToAkULevelField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionValueEqAdicSumAtImageOfZeroPair\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsGenOfSection\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsActValue\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsAutomorphismInducingFrobeniusAllDegrees\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGenMulPullPowUnif\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsNsmulAndNeg\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecNeZero\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PullMulValue\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SectionValueAtTorsionPointEqSumTerms\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SumFCalculus\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TxFrameTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

namespace GlobalTheory.Poinc.Tors.Translate
open GlobalTheory.UT.CoefBasic GlobalTheory.AdicSum GlobalTheory.Poinc.Tors.AnyField GlobalTheory.Poinc.Tors.ValPair

section Pull
open GlobalTheory.UT.PullMul

theorem pull_mul_all {S : Scheme.{0}} (P : PolAV S) (T : Over S) (ρ : LB.Gen (P.L.pull (eSec P.A))) (n k k' : ℕ)
    (hk : k' = k * n ^ 2)
    (α₀ : LB.Gen (LB.LinComb P.L (K := Fin 2) ![𝟙 P.A.left, (mulA P.A n).left] ![(n : ℤ) ^ 2, -1]))
    (hα₀ : α₀.IsGen) (hN : IsNormMul P.A P.L ρ n α₀) (ψ : T ⊗ P.A ⟶ T ⊗ P.A) (m : T ⊗ P.A ⟶ P.A)
    (hm : ψ ≫ snd _ _ = m) (hψ : ψ ≫ fst _ _ = fst _ _) (hmn : m = snd _ _ ≫ (𝟙 P.A ^ n)) :
    ∃ α : LB.Gen (LB.LinComb P.L (K := Fin 2) ![(snd T P.A).left, m.left] ![(k' : ℤ), -(k : ℤ)]), α.IsGen ∧
      LB.Gen.Corr P.L _ _ _ _ (LB.pullGen P.L _ _ α (ptSecT P.A 1).left) (rigT P.A P.L ρ T ((k' : ℤ) - k)) ∧
      ∀ (t : LB.Sec (LPow P.A P.L (k : ℤ) T)) (c : ∀ z : T.left, T.left.presheaf.stalk z),
        (∀ z J, Good P.L z J → VVRank.sv P.A t (ptSecT P.A 1).left z J =
          c z * (val (rigT P.A P.L ρ T (k : ℤ)) (𝟙 _) z J).val) →
        ∃ t' : LB.Sec (LPow P.A P.L (k' : ℤ) T), IsTwistPull P.A P.L ψ m hm k' k α t t' ∧
          ∀ x : T ⟶ P.A, x ^ n = 1 → ∀ z J, Good P.L z J → VVRank.sv P.A t' (ptSecT P.A x).left z J =
            c z * (val (LB.mulGen P.L _ _ _ _ (LB.pullGen P.L _ _ α₀ x.left) (rigT P.A P.L ρ T 1)) (𝟙 _) z J).val ^ k := by
  have em : (snd T P.A).left ≫ (mulA P.A n).left = m.left := by rw [hmn, Over.comp_left]
  obtain ⟨α, hα, hv⟩ := exists_gen P.isLB (φ' := ![(snd T P.A).left, m.left]) (ε' := ![(k' : ℤ), -(k : ℤ)])
    (fun U _ h => by
      simp only [Fin.prod_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one, Category.comp_id, em, hk]
      congr 2 <;> push_cast <;> ring)
    (GeneratorPullback.powGen P.L _ _ (LB.pullGen P.L _ _ α₀ (snd T P.A).left) k)
    (powGen_isGen _ _ _ _ (pullGen_isGen _ _ _ _ hα₀ _) k)
  have hv' : ∀ (y : T ⟶ P.A) (z : T.left) (J), Good P.L z J →
      val α (ptSecT P.A y).left z J = val α₀ y.left z J ^ k := fun y z J hJ => by
    rw [hv _ _ z J hJ, val_powGen, val_pull hJ, ← Over.comp_left, ptSecT, lift_snd]
  refine ⟨α, hα, corr_of_val P.isLB fun z J hJ => ?_, fun t c ht => ?_⟩
  · have a := val_corr hJ hN T.hom
    rw [val_pull hJ, val_mul hJ, val_inv, val_rigPow] at a
    rw [val_pull hJ, Category.id_comp, hv' 1 z J hJ, one_left, val_rigT ρ T _ _ z hJ, Category.id_comp]
    refine (congrArg (· ^ k) a).trans ?_
    change (rv ρ T.hom z J ^ ((n : ℤ) ^ 2) * (rv ρ T.hom z J)⁻¹) ^ k = rv ρ T.hom z J ^ _
    rw [← zpow_sub_one, ← zpow_natCast, ← zpow_mul, hk]
    congr 1; push_cast; ring
  · obtain ⟨t', ht'⟩ := VVRank.exists_isTwistPull P.A (ψ := ψ) (hm := hm) P.isLB hα t
    refine ⟨t', ht', fun x hxn z J hJ => ?_⟩
    have e₁ : ptSecT P.A x ≫ ψ = ptSecT P.A 1 := by
      ext1
      · rw [Category.assoc, hψ, ptSecT, ptSecT, lift_fst, lift_fst]
      · rw [Category.assoc, hm, hmn, ptSecT, ptSecT, lift_snd_assoc, lift_snd, MonObj.comp_pow,
          Category.comp_id, hxn]
    rw [VVRank.sv_of_isTwistPull P.A ht' _ z hJ, ← Over.comp_left, e₁, ht z J hJ, hv' x z J hJ,
      val_rigT ρ T _ _ z hJ, val_mul hJ, val_pull hJ, val_rigT ρ T _ _ z hJ, Category.id_comp, zpow_one,
      mul_left_comm, ← Units.val_mul, zpow_natCast, ← mul_pow, Units.val_pow_eq_pow_val]
    simp only [Category.id_comp]

end Pull

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G]

section Field
variable {F : Type} [Field F] [Algebra (FractionRing R) F]

theorem exists_act_value (N : ℕ) (θ : ThetaGrp A.A A.L (N : ℤ) (TFK (R := R) F)) (x₁ x₂ : TFK (R := R) F ⟶ A.A)
    (hx : x₂ = x₁ * θ.pt) (e₁ : FrAt x₁) (he₁ : e₁.IsGen) (e₂ : FrAt x₂) (he₂ : e₂.IsGen) :
    ∃ u : F, u ≠ 0 ∧ ∀ (t t' : SecA A F N) (c : F), IsActOf A.A A.L (N : ℤ) θ t t' → ValAt t x₂ e₂ c →
      ValAt t' x₁ e₁ (u * c) := by
  have p₁ : ptSecT A.A x₁ ≫ translPt A.A θ.pt = x₂ := by
    rw [ptSecT, translPt, comp_lift_assoc, lift_fst_assoc, lift_snd, Category.id_comp, ← Hom.mul_def, hx, mul_comm]
  have p₂ : (ptSecT A.A x₁).left ≫ (translT A.A θ.pt).left = (ptSecT A.A x₂).left := by
    rw [← Over.comp_left, translT, comp_lift, p₁, ptSecT, lift_fst]; rfl
  have e₀ : (ptSecT A.A x₁).left ≫ (snd (TFK (R := R) F) A.A).left = x₁.left := by
    rw [← Over.comp_left, ptSecT, lift_snd]
  have e₃ : (ptSecT A.A x₁).left ≫ (translPt A.A θ.pt).left = x₂.left := by
    rw [← Over.comp_left, p₁]
  obtain ⟨u, hu, hv⟩ := TWM.exists_ratio (F := F) A.isLB
    (LB.mulGen A.L _ _ _ _ (LB.pullGen A.L _ _ θ.φ (ptSecT A.A x₁).left) (powFrame A.A A.L x₂ e₂ N))
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.pullGen_isGen _ _ _ _ θ.isGen _) (EvalLevel.powFrame_isGen x₂ e₂ he₂ N))
    (powFrame A.A A.L x₁ e₁ N) (EvalLevel.powFrame_isGen x₁ e₁ he₁ N) (fun U _ h => by
      simp only [Fintype.prod_sum_type, Fin.prod_univ_two, Fin.prod_univ_one, Sum.elim_inl, Sum.elim_inr,
        Matrix.cons_val_zero, Matrix.cons_val_one, zpow_neg]
      exact (congrArg₂ (fun a b => h a ^ (N : ℤ) * (h b ^ (N : ℤ))⁻¹ * h x₂.left ^ (N : ℤ)) e₀ e₃).trans
        (inv_mul_cancel_right _ _))
  refine ⟨u, hu, fun t t' c ha ht z J hJ => ?_⟩
  have a₁ := GlobalTheory.BoxTheta.act_val θ t t' ha (ptSecT A.A x₁).left z hJ
  rw [p₂] at a₁
  have a₀ := (val_pull (L := A.L) (K := Fin 2) (φ := ![(snd (TFK (R := R) F) A.A).left, (translPt A.A θ.pt).left])
    (ε := ![(N : ℤ), -(N : ℤ)]) hJ θ.φ (ptSecT A.A x₁).left (𝟙 _)).trans
    (congrArg (fun r => val (L := A.L) (K := Fin 2) (φ := ![(snd (TFK (R := R) F) A.A).left, (translPt A.A θ.pt).left])
      (ε := ![(N : ℤ), -(N : ℤ)]) θ.φ r z J) (Category.id_comp _))
  have a₂ := ((Units.val_mul _ _).symm.trans (congrArg Units.val ((val_mul hJ _ _ _).trans
    (congrArg₂ (· * ·) a₀ rfl)).symm)).trans (hv _ (𝟙 _) z J hJ)
  have a₃ := ht z J hJ
  have a₄ : UT.cst (R := R) F z (u * c) = UT.cst (R := R) F z u * UT.cst (R := R) F z c := by
    rw [cst_eq, cst_eq, cst_eq, map_mul]
  refine a₁.trans ((congrArg _ a₃).trans ?_)
  rw [a₄]
  refine (mul_left_comm _ _ _).trans ((congrArg _ a₂).trans ?_)
  exact (_root_.mul_assoc _ _ _).symm.trans
    (congrArg₂ (fun a b : (TFK (R := R) F).left.presheaf.stalk z => a * b) (_root_.mul_comm _ _) rfl)

theorem value_at_level (hB : AdmBase R I) (hG : IsSemiAbelian G) (U : Unif I D A G) {w₀ : W0 U.toUnifPre} (hw₀ : w₀.IsGen)
    {g₁ g₂ : GtPtF D.toPre F} {w₁ : Frm D.toPre F 1 g₁.b} (hw₁ : w₁.IsGen) {x₁ x₂ : TFK (R := R) F ⟶ A.A} {e₁ : FrAt x₁}
    (he₁ : e₁.IsGen) (H : LiesOver U.toUnifPre w₀ g₁ w₁ x₁ e₁) {N : ℕ} (hN1 : 1 ≤ N) (q : QkPt D.toPre F N)
    (x : TFK (R := R) F ⟶ A.A) (hx : QkToAkU U.toUnifPre F N q x) (hadd : g₁.IsAdd q.g g₂) (hx₂ : x₂ = x₁ * x)
    (e : FrAt x₂) (he : e.IsGen) (w : Frm D.toPre F N g₂.b) (hw : w.IsGen) :
    ∃ κ : F, κ ≠ 0 ∧ ∀ (t : SecA A F N) s (c : F), U.ExpandsF F N w₀ t s → ValAt t x₂ e c →
      SumF I F (coef s g₂ w) (κ * c) := by
  have hL := GlobalTheory.firstFiveLaws
  haveI : Subsingleton (TFK (R := R) F).left := inferInstanceAs (Subsingleton (Spec (CommRingCat.of F)))
  haveI : Nonempty (TFK (R := R) F).left := inferInstanceAs (Nonempty (Spec (CommRingCat.of F)))
  obtain ⟨hxN, hθ⟩ := hx w₀ hw₀
  obtain ⟨θ, rfl⟩ := GlobalTheory.BoxTheta.exists_theta hL.1.kerPow A hN1 (T := TFK (R := R) F) x hxN
  obtain ⟨w', hw', hΦ⟩ := hθ θ rfl
  obtain ⟨u, hu, hval⟩ := exists_act_value N θ x₁ x₂ hx₂ e₁ he₁ e he
  obtain ⟨W, hW, hWv⟩ := TorsionValue.exists_frm_pow w₁ hw₁ N
  obtain ⟨ω, hω, -, hc⟩ := coefPhi_field hL R _ hB D F N hN1 q w' hw' g₁ g₂ hadd W hW
  obtain ⟨d, hd, -, hdc⟩ := ((coef_basic R D.toPre F N g₂).2.2 ω hω).2.2.1 w hw
  refine ⟨d * u, mul_ne_zero hd hu, fun t s c hts hc' => ?_⟩
  obtain ⟨t', ht'⟩ := GlobalTheory.VVRank.exists_isTwistPull A.A (ψ := translT A.A θ.pt) (m := translPt A.A θ.pt)
    (hm := lift_snd _ _) (a := N) (b := N) (α := θ.φ) A.isLB θ.isGen t
  obtain ⟨s', hs', -⟩ := ((GlobalTheory.TorsionAnyChar.expBijF_any hL R _ hB D A G hG U).1 F N hN1 w₀ hw₀).1 t'
  have h₁ := H N hN1 W hWv hW t' s' (u * c) hs' (hval t t' c ht' hc')
  have h₂ := ((sumF_calculus R I hB F _ _ (fun _ => 0) _ 0).2.2 _ (fun β => β + q.y) (add_left_injective _)
    fun β hβ => absurd ⟨β - q.y, sub_add_cancel _ _⟩ hβ).2 h₁
  have h₃ := hc 1 N le_rfl (Nat.mul_one N).symm q (one_nsmul _).symm rfl w' W ω ⟨hw', fun _ _ _ => (pow_one _).symm⟩
    ⟨hW, fun _ _ _ => (pow_one _).symm⟩ ⟨hω, fun _ _ _ => (pow_one _).symm⟩ s s' (hΦ t t' s s' hts hs' ht')
  have h₄ := sumF_smul hB d h₂
  simp only [Function.comp_apply, h₃, ← hdc] at h₄
  rw [_root_.mul_assoc]
  exact h₄

theorem isTorsFrame_of_liesOver [CharZero R] (hB : AdmBase R I) (hG : IsSemiAbelian G) (U : Unif I D A G)
    {w₀ : W0 U.toUnifPre} (hw₀ : w₀.IsGen) {ρ : LB.Gen (A.L.pull (eSec A.A))} (hρ : ρ.IsGen) {n : ℕ} (hn : 1 ≤ n)
    {g₁ g₀ g₂ o : GtPtF D.toPre F} (ho : GtPtF.IsNsmul n g₁ o) {w₁ : Frm D.toPre F 1 g₁.b} (hw₁ : w₁.IsGen)
    {x₁ x₂ : TFK (R := R) F ⟶ A.A} {e₁ : FrAt x₁} (he₁ : IsTorsFrame A ρ n x₁ e₁)
    (H₁ : LiesOver U.toUnifPre w₀ g₁ w₁ x₁ e₁) {χ : Multiplicative D.toPre.X →* Fˣ} (hχ : χ ^ n = 1) (ht : IsTor χ g₀)
    (hadd : g₁.IsAdd g₀ g₂) {w₂ : Frm D.toPre F 1 g₂.b} (hw₂ : w₂.IsGen)
    (hww : ∀ z J, Good D.toPre.P.L z J → val w₂ (𝟙 _) z J = val w₁ (𝟙 _) z J) (hx₂ : x₂ ^ n = 1) {e₂ : FrAt x₂}
    (he₂ : e₂.IsGen) (H₂ : LiesOver U.toUnifPre w₀ g₂ w₂ x₂ e₂) : IsTorsFrame A ρ n x₂ e₂ := by
  have hL := GlobalTheory.firstFiveLaws
  have hbij := (GlobalTheory.TorsionAnyChar.expBijF_any hL R _ hB D A G hG U).1 F
  obtain ⟨hx₁, -, α₀, hα₀, hN₀, hC⟩ := he₁
  refine ⟨hx₂, he₂, α₀, hα₀, hN₀, corr_of_val A.isLB ?_⟩
  have f₁ : x₂.left ≫ (mulA A.A n).left = (TFK (R := R) F).hom ≫ eSec A.A := by
    rw [← Over.comp_left, MonObj.comp_pow, Category.comp_id, hx₂]; rfl
  obtain ⟨r, -, hr⟩ := TWM.exists_ratio (F := F) A.isLB
    (LB.mulGen A.L _ _ _ _ (LB.pullGen A.L _ _ α₀ x₂.left) (rigT A.A A.L ρ (TFK (R := R) F) 1))
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.pullGen_isGen _ _ _ _ hα₀ _) (EvalLevel.rigT_isGen hρ 1))
    (powFrame A.A A.L x₂ e₂ ((n : ℤ) ^ 2)) (EvalLevel.powFrame_isGen x₂ e₂ he₂ _) (fun U _ h => by
      simp only [Fintype.prod_sum_type, Fin.prod_univ_two, Fin.prod_univ_one, Sum.elim_inl, Sum.elim_inr,
        Matrix.cons_val_zero, Matrix.cons_val_one, zpow_neg, zpow_one]
      exact (congrArg₂ (fun a b => h a ^ ((n : ℤ) ^ 2) * (h b)⁻¹ * h ((TFK (R := R) F).hom ≫ eSec A.A))
        (Category.comp_id _) f₁).trans (inv_mul_cancel_right _ _))
  obtain ⟨u₀, hN⟩ := (sumF_origin hL R _ hB D A G hG U F).2.1 ρ hρ
  obtain ⟨E, eG, eA, -, eh, eAct⟩ := (GlobalTheory.IntEnd.exists_nsmul_and_neg hL R _ hB D A G hG U).1 n
  have hinj : Function.Injective E.h := fun a b h => by
    rw [eh, eh, ← natCast_zsmul, ← natCast_zsmul] at h
    exact smul_right_injective _ (by exact_mod_cast (by omega : n ≠ 0)) h
  have hAct : E.Act g₁ o := (eAct F _ _).2 ho
  have key : ∀ k : ℕ, 4 ≤ k → r ^ k = 1 := by
    intro k hk
    have hpos : 1 ≤ k * n ^ 2 := Nat.mul_pos (by omega) (Nat.pow_pos hn)
    obtain ⟨⟨κ, hκ⟩, hpull⟩ := coef_twistPull hL R _ hB D A G hG U F E hinj (k * n ^ 2) k (by omega) hpos
      (by rw [eG]; exact exists_gen_mulPull_pow_unif R _ D A G U.toUnifPre n k _ rfl)
    obtain ⟨σ, c, hc, hσ⟩ := NonVan.exists_sec_ne_zero hL R A F k hk 1 (rigT A.A A.L ρ (TFK (R := R) F) 1)
      (EvalLevel.rigT_isGen hρ 1)
    have e₀ : powFrame A.A A.L (1 : TFK (R := R) F ⟶ A.A) (rigT A.A A.L ρ (TFK (R := R) F) 1) (k : ℤ) =
        rigT A.A A.L ρ (TFK (R := R) F) (k : ℤ) :=
      congrArg LB.Gen.mk (funext fun j => congrArg (· ^ (k : ℤ)) (zpow_one _))
    rw [e₀] at hσ
    obtain ⟨α, hα, hα', Hα⟩ := pull_mul_all A (TFK (R := R) F) ρ n k (k * n ^ 2) rfl α₀ hα₀ hN₀
      (lift (fst _ _) (snd _ _ ≫ E.aA)) (snd _ _ ≫ E.aA) (lift_snd _ _) (lift_fst _ _) (by rw [eA])
    obtain ⟨t, htw, htv⟩ := Hα σ (fun z => UT.cst (R := R) F z c) hσ
    obtain ⟨s, hs, -⟩ := (hbij k (by omega) u₀ hN.1).1 σ
    obtain ⟨s', hs', -⟩ := (hbij _ hpos w₀ hw₀).1 t
    obtain ⟨d, -, hd⟩ := exists_coef_ratio (F := F) U hw₀ hN.1 (k * n ^ 2)
    obtain ⟨s'', hs'', es⟩ := hd t s' hs'
    obtain ⟨W₁, hW₁, vW₁⟩ := TorsionValue.exists_frm_pow w₁ hw₁ (k * n ^ 2)
    obtain ⟨W₂, hW₂, vW₂⟩ := TorsionValue.exists_frm_pow w₂ hw₂ (k * n ^ 2)
    obtain ⟨w, hw, hwv⟩ := TorsionValue.exists_frm_kap hAct.1 W₁ hW₁ κ hκ.1
    obtain ⟨-, h₂⟩ := hpull u₀ ρ hN _ _ (lift_snd _ _) (lift_fst _ _) rfl α hα hα' σ t s s'' hs hs'' htw κ hκ g₁ o hAct
      W₁ w hW₁ hw hwv
    have pw : ∀ (x : TFK (R := R) F ⟶ A.A) (e : FrAt x) z J,
        (val (powFrame A.A A.L x e ((n : ℤ) ^ 2)) (𝟙 _) z J).val ^ k =
          (val (powFrame A.A A.L x e ((k * n ^ 2 : ℕ) : ℤ)) (𝟙 _) z J).val := fun x e z J => by
      rw [PullMul.val_powFrame, PullMul.val_powFrame, ← Units.val_pow_eq_pow_val, ← zpow_natCast, ← zpow_mul]
      congr 2; push_cast; ring
    have S₁ := H₁ _ hpos W₁ vW₁ hW₁ t s' c hs' fun z J hJ =>
      (htv x₁ hx₁ z J hJ).trans (by rw [← val_corr hJ hC (𝟙 _), pw]; rfl)
    have S₂ := H₂ _ hpos W₂ vW₂ hW₂ t s' (c * r ^ k) hs' fun z J hJ => by
      refine (htv x₂ hx₂ z J hJ).trans ?_
      have a : UT.cst (R := R) F z (c * r ^ k) = UT.cst (R := R) F z c * UT.cst (R := R) F z r ^ k := by
        rw [cst_eq, cst_eq, cst_eq, map_mul, map_pow]
      rw [a, ← pw]
      exact (congrArg (fun q : (TFK (R := R) F).left.presheaf.stalk z =>
        @id ((TFK (R := R) F).left.presheaf.stalk z) (UT.cst (R := R) F z c) * q ^ k) (hr _ (𝟙 _) z J hJ)).trans
        ((congrArg (@id ((TFK (R := R) F).left.presheaf.stalk z) (UT.cst (R := R) F z c) * ·) (mul_pow _ _ _)).trans
          (_root_.mul_assoc _ _ _).symm)
    have e₃ : coef s' g₂ W₂ = coef s' g₁ W₁ := funext fun β => by
      rw [((coef_basic R D.toPre F _ g₁).2.2 W₁ hW₁).2.2.2 χ g₀ g₂ W₂ ht hadd
        (fun z J hJ => by rw [vW₁ z J hJ, vW₂ z J hJ, hww z J hJ])]
      by_cases hβ : β ∈ Set.range E.h
      · obtain ⟨b, rfl⟩ := hβ
        rw [eh, ofAdd_nsmul, map_pow, ← MonoidHom.pow_apply, hχ, MonoidHom.one_apply, Units.val_one, _root_.one_mul]
      · rw [es g₁ W₁ hW₁]
        simp only [h₂ β hβ, mul_zero]
    rw [e₃] at S₂
    exact mul_left_cancel₀ hc (((sumF_calculus R I hB F _ _ (fun _ => 0) _ _).1 S₂ S₁).trans (_root_.mul_one c).symm)
  have r₁ : r = 1 := by
    have a := key 5 (by omega)
    rwa [pow_succ, key 4 le_rfl, _root_.one_mul] at a
  intro z J hJ
  have a := hr _ (𝟙 _) z J hJ
  refine Units.ext (Eq.symm (a.trans ?_))
  have b : UT.cst (R := R) F z r = 1 := by rw [cst_eq, r₁, map_one]
  exact (congrArg (fun q : (Spec (CommRingCat.of F)).presheaf.stalk z => q * _) b).trans (_root_.one_mul _)

end Field


attribute [local instance] TorusExt.gtGroup in
theorem exists_liesOver (hB : AdmBase R I) (hG : IsSemiAbelian G) (U : Unif I D A G)
    {w₀ : W0 U.toUnifPre} (hw₀ : w₀.IsGen) {n : ℕ} (hn : 1 ≤ n)
    {g₁ g₂ : GtPtF D.toPre (FractionRing R)} {w₁ : Frm D.toPre (FractionRing R) 1 g₁.b} (hw₁ : w₁.IsGen)
    {x₁ x₂ x : TFK (R := R) (FractionRing R) ⟶ A.A} {e₁ : FrAt x₁} (he₁ : e₁.IsGen)
    (H₁ : LiesOver U.toUnifPre w₀ g₁ w₁ x₁ e₁) {χ : Multiplicative D.toPre.X →* (FractionRing R)ˣ} (hχ : χ ^ n = 1)
    (p : QkPt D.toPre (FractionRing R) n) (ht : IsTor χ p.g) (hx : QkToAkU U.toUnifPre (FractionRing R) n p x)
    (hadd : g₁.IsAdd p.g g₂) {w₂ : Frm D.toPre (FractionRing R) 1 g₂.b} (hw₂ : w₂.IsGen)
    (hww : ∀ z J, Good D.toPre.P.L z J → val w₂ (𝟙 _) z J = val w₁ (𝟙 _) z J) (hx₂ : x₂ = x₁ * x) :
    ∃ e₂ : FrAt x₂, e₂.IsGen ∧ LiesOver U.toUnifPre w₀ g₂ w₂ x₂ e₂ := by
  have hL := GlobalTheory.firstFiveLaws
  have hbij := (GlobalTheory.TorsionAnyChar.expBijF_any hL R _ hB D A G hG U).1 (FractionRing R)
  obtain ⟨z₀⟩ := exists_pt (R := R) (F := FractionRing R)
  obtain ⟨e, he⟩ : ∃ e : FrAt x₂, e.IsGen := exists_gen_pt A.isLB z₀ (fun y => pt_eq y z₀) _ _
  choose Ω hΩ hΩv using TorsionValue.exists_frm_pow w₂ hw₂
  have pf : ∀ (e : FrAt x₂) (k : ℤ) z J, val (powFrame A.A A.L x₂ e k) (𝟙 _) z J = val e (𝟙 _) z J ^ k :=
    fun e k z J => map_zpow _ _ _
  obtain ⟨l, hl, H⟩ := exists_degree_constant hB (fun k a c => ∃ (t : SecA A (FractionRing R) k)
      (s : Fam D.toPre (FractionRing R) k),
      U.ExpandsF (FractionRing R) k w₀ t s ∧ ValAt t x₂ e c ∧ a = coef s g₂ (Ω k)) n hn
    (by
      rintro k _ c hk ⟨t, s, hs, -, rfl⟩
      obtain ⟨W, hW, vW⟩ := TorsionValue.exists_frm_pow w₁ hw₁ k
      obtain ⟨c₁, hc₁⟩ := GlobalTheory.OneBasis.exists_valAt A (FractionRing R) hL.1 t x₁ he₁
      rw [funext (((coef_basic R D.toPre _ _ g₁).2.2 W hW).2.2.2 χ p.g g₂ (Ω k) ht hadd
        (fun z J hJ => by rw [vW z J hJ, hΩv k z J hJ, hww z J hJ]) s)]
      exact exists_sumF_twist hB (H₁ k hk W vW hW t s c₁ hs hc₁) hn _ fun β => by
        rw [← Units.val_pow_eq_pow_val, ← MonoidHom.pow_apply, hχ, MonoidHom.one_apply, Units.val_one])
    (by
      rintro k k' _ _ c c' hk hk' ⟨t, s, hs, ht, rfl⟩ ⟨t', s', hs', ht', rfl⟩
      obtain ⟨t'', h''⟩ := TorsionValue.exists_secA_mul t t'
      obtain ⟨s'', hs'', -⟩ := (hbij (k + k') (by omega) w₀ hw₀).1 t''
      refine ⟨_, ⟨t'', s'', hs'', fun z J hJ => ?_, rfl⟩, fun α =>
        (prodConv_field hL R _ hB D A G hG U _ w₀ hw₀ k k' _ hk hk' rfl t t' t'' s s' s'' hs hs' hs''
          (fun z J hJ => h'' _ _ z J hJ) g₂ _ _ _ (hΩ k) (hΩ k') (hΩ _)
          (fun z J hJ => by rw [hΩv _ z J hJ, hΩv _ z J hJ, hΩv _ z J hJ, pow_add]) α)⟩
      have cm : @id ((TFK (R := R) (FractionRing R)).left.presheaf.stalk z) (UT.cst (R := R) (FractionRing R) z (c * c')) =
          @id ((TFK (R := R) (FractionRing R)).left.presheaf.stalk z) (UT.cst (R := R) (FractionRing R) z c) *
            @id ((TFK (R := R) (FractionRing R)).left.presheaf.stalk z) (UT.cst (R := R) (FractionRing R) z c') :=
        (cst_eq (R := R) z _).trans ((map_mul _ _ _).trans
          (congrArg₂ (· * ·) (cst_eq (R := R) z _).symm (cst_eq (R := R) z _).symm))
      rw [h'' _ _ z J hJ, ht z J hJ, ht' z J hJ, pf, pf, pf, cm, Nat.cast_add, zpow_add, Units.val_mul]
      ring)
    (fun k hk => by
      obtain ⟨t, c, hc, ht⟩ := NonVan.exists_sec_ne_zero hL R A _ k hk x₂ e he
      obtain ⟨s, hs, -⟩ := (hbij k (by omega) w₀ hw₀).1 t
      exact ⟨_, c, ⟨t, s, hs, ht, rfl⟩, hc⟩)
    (fun m hm => by
      let q : QkPt D.toPre (FractionRing R) (n * m) :=
        ⟨m • p.y, p.g, GlobalTheory.InducingAut.exists_qk_mul D.tau_bimult p m⟩
      have hq := qkToAkU_level_field hL R _ hB D A G hG U _ n m _ hn hm rfl p q x rfl rfl hx
      obtain ⟨κ, hκ, Hκ⟩ := value_at_level hB hG U hw₀ hw₁ he₁ H₁ (Nat.mul_pos hn hm) q x hq hadd hx₂ e he (Ω _) (hΩ _)
      refine ⟨κ, hκ, ?_⟩
      rintro _ c ⟨t, s, hs, ht, rfl⟩
      exact Hκ t s c hs ht)
  obtain ⟨e₂, he₂, ve⟩ := exists_scale (R := R) (φ := fun _ : Fin 1 => x₂.left) e he (inv_ne_zero hl)
  refine ⟨e₂, he₂, fun k hk w hwv hw t s c hs ht => ?_⟩
  have S := H k _ (c * l⁻¹ ^ k) hk ⟨t, s, hs, fun z J hJ => by
    refine (ht z J hJ).trans ?_
    rw [pf, pf, zpow_natCast, zpow_natCast, Units.val_pow_eq_pow_val,
      Units.val_pow_eq_pow_val, cst_eq, cst_eq, map_mul, map_pow]
    exact (congrArg (fun q => _ * q ^ k) (ve z J hJ)).trans
      ((congrArg (_ * ·) (mul_pow _ _ _)).trans (_root_.mul_assoc _ _ _).symm), rfl⟩
  have sc := coef_scale g₂ (w' := w) (hΩ k) (c := 1) (fun z J hJ => by
    rw [hwv z J hJ, hΩv k z J hJ, map_one, _root_.one_mul]) s
  rw [mul_left_comm, ← mul_pow, mul_inv_cancel₀ hl, one_pow, _root_.mul_one] at S
  rw [funext sc]
  simpa only [_root_.one_mul] using S

end GlobalTheory.Poinc.Tors.Translate
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionTranslateLiesOverProductTorsionFra =====
