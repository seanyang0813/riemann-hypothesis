module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GtPtBridgeSt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar
public import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionNe
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FamFEOneOfPsiRel
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnivIdentity
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FibreIsoCarriesSharpPointsToConjugates
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember
public import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralExpressionValuesAtDescendedPointStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFrameRatio
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
import Mathlib.Tactic.Polynomial.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.GtPtsVal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Mathlib.RingTheory.PicardGroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPointStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPointStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitCoefficientOfThetaSquareIntegralTorsion, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetric, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetricStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOneStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPointStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFunctionThetaSectionIntegralPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpec, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpecStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralSquaredThetaTermsTorusCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfield, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfieldStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPoint", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GtPtBridgeSt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFrameRatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.GtPtsVal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

namespace GlobalTheory.Poinc.Sep.CubInt

theorem cubProd_of_generic : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (N : ℕ) (b cχ : 𝟙_ (Over (Sp V)) ⟶ D.P.A),
    b ^ N = 1 → ∀ (χt : LB.Gen (LB.LinComb D.P.L ![(cχ * b).left, cχ.left, b.left, (η[D.P.A]).left] DegPre.gtε)),
    χt.IsGen →
    (∀ z J, Good D.P.L z J → ∏ i ∈ Finset.range N, cubV D.cub z J (toUnit (TF (R := V) (FractionRing V)) ≫ cχ)
        (toUnit (TF (R := V) (FractionRing V)) ≫ b ^ i) (toUnit (TF (R := V) (FractionRing V)) ≫ b) =
      val χt (toUnit (TF (R := V) (FractionRing V))).left z J ^ N) →
    ∀ (T : Over (Sp V)) (z : T.left) J, Good D.P.L z J →
      ∏ i ∈ Finset.range N, cubV D.cub z J (toUnit T ≫ cχ) (toUnit T ≫ b ^ i) (toUnit T ≫ b) = val χt T.hom z J ^ N := by
  intro V _ _ D N b cχ hbN χt ht hgen T z J hJ
  have G := (grep_cubProd cχ b N).mul ((SymFrame.grep_gen χt ht (𝟙 _)).pow N).inv
  obtain ⟨s, hs, vs⟩ := G.out D.P.isLB (K := PEmpty) PEmpty.elim PEmpty.elim
    (fun U _ h => Eq.trans (by
      have hK : ∏ k : Fin 4, h (𝟙 _ ≫ ![(cχ * b).left, cχ.left, b.left, (η[D.P.A]).left] k) ^ DegPre.gtε k =
          (h (cχ * b).left)⁻¹ * h cχ.left * h b.left *
            (h (1 : 𝟙_ (Over (Spec (CommRingCat.of V))) ⟶ D.P.A).left)⁻¹ := by
        rw [Fin.prod_univ_four, ← SymFrame.eta_eq]
        simp [DegPre.gtε, zpow_neg, zpow_one]
      have hP : ∀ i, h (cχ * b ^ i * b).left * (h (cχ * b ^ i).left)⁻¹ * (h (cχ * b).left)⁻¹ *
          (h (b ^ i * b).left)⁻¹ * h cχ.left * h (b ^ i).left * h b.left *
          (h (1 : 𝟙_ (Over (Spec (CommRingCat.of V))) ⟶ D.P.A).left)⁻¹ =
          (h (cχ * b ^ (i + 1)).left / h (b ^ (i + 1)).left) / (h (cχ * b ^ i).left / h (b ^ i).left) *
            ((h (cχ * b).left)⁻¹ * h cχ.left * h b.left *
              (h (1 : 𝟙_ (Over (Spec (CommRingCat.of V))) ⟶ D.P.A).left)⁻¹) := by
        intro i
        rw [_root_.mul_assoc cχ, ← pow_succ]
        apply Additive.ofMul.injective
        simp only [ofMul_mul, ofMul_inv, ofMul_div]
        abel
      rw [Finset.prod_congr rfl (fun i _ => hP i), Finset.prod_mul_distrib,
        Finset.prod_range_div (fun i => h (cχ * b ^ i).left / h (b ^ i).left), Finset.prod_const, Finset.card_range, hK,
        hbN, pow_zero]
      simp) (Fintype.prod_empty _).symm)
  obtain ⟨ρ, hρ⟩ := exists_ratio D.P.isLB rfl s (LB.oneGen D.P.L) hs (oneGen_gen _)
  have hρ1 : ρ = 1 := by
    obtain ⟨z₀⟩ := exists_pt (R := V) (F := FractionRing V)
    obtain ⟨J₀, hJ₀⟩ := exists_good' D.P.isLB z₀
    have a := vs _ (toUnit (TF (R := V) (FractionRing V))) z₀ J₀ hJ₀
    rw [hρ _ _ z₀ J₀ hJ₀, val_one, _root_.mul_one] at a
    simp only [Category.comp_id] at a
    have a1 : gm (toUnit (TF (R := V) (FractionRing V))).left z₀ ⊤ ρ = 1 := by
      rw [a]
      exact mul_inv_eq_one.mpr (hgen z₀ J₀ hJ₀)
    have c := gm_top_eq ρ z₀
    rw [a1, Units.val_one, cst_eq, ← map_one (cstH z₀)] at c
    have d := cstH_inj z₀ c
    rw [← map_one (algebraMap V (FractionRing V))] at d
    have e := IsFractionRing.injective V (FractionRing V) d
    apply Units.ext
    have hinj : Function.Injective (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom :=
      (Scheme.ΓSpecIso (CommRingCat.of V)).commRingCatIsoToRingEquiv.injective
    apply hinj
    rw [Units.val_one, map_one]
    exact e.symm
  have a := vs T (toUnit T) z J hJ
  rw [hρ _ _ z J hJ, val_one, _root_.mul_one, hρ1, map_one] at a
  simp only [Category.comp_id] at a
  exact mul_inv_eq_one.mp a.symm

end GlobalTheory.Poinc.Sep.CubInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPointStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GtPtBridgeSt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPointStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFrameRatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.GtPtsVal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.FieldBaseChange GlobalTheory.UT
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

namespace GlobalTheory.Poinc.Sep.FrameInt

theorem kap_of_generic : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (N : ℕ) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A), b ^ N = 1 → ∀ (t : LB.Gen (LB.LinComb D.P.L ![(η[D.P.A]).left, b.left] (DegPre.lineε 1))), t.IsGen → ∀ (κ : LB.Gen (kapLB D (𝟙 D.P.A ^ N) (N ^ 2) 1)), Normd κ → (∀ z J, Good D.P.L z J → val t (toUnit (TF (R := V) (FractionRing V))).left z J ^ (N ^ 2) * val κ ((toUnit (TF (R := V) (FractionRing V))).left ≫ b.left) z J = 1) → ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V) (z : Z) J, Good D.P.L z J → val t r z J ^ (N ^ 2) * val κ (r ≫ b.left) z J = 1 := by
  intro V _ _ D N b hbN t ht κ hκn hgen Z r z J hJ
  have G := ((SymFrame.grep_gen t ht (𝟙 _)).pow (N ^ 2)).mul (SymFrame.grep_kap κ hκn.1 b)
  obtain ⟨s, hs, vs⟩ := G.out D.P.isLB (K := PEmpty) PEmpty.elim PEmpty.elim
    (fun U _ h => Eq.trans (by
      rw [Fin.prod_univ_two, hbN, ← SymFrame.eta_eq]
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons, DegPre.lineε, Category.comp_id,
        Category.id_comp]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow, ofMul_pow, ofMul_one]
      rw [← natCast_zsmul]
      push_cast
      module) (Fintype.prod_empty _).symm)
  obtain ⟨ρ, hρ⟩ := exists_ratio D.P.isLB rfl s (LB.oneGen D.P.L) hs (oneGen_gen _)
  have hρ1 : ρ = 1 := by
    obtain ⟨z₀⟩ := exists_pt (R := V) (F := FractionRing V)
    obtain ⟨J₀, hJ₀⟩ := exists_good' D.P.isLB z₀
    have a := vs _ (toUnit (TF (R := V) (FractionRing V))) z₀ J₀ hJ₀
    rw [hρ _ _ z₀ J₀ hJ₀, val_one, _root_.mul_one] at a
    simp only [Category.comp_id] at a
    have a1 : gm (toUnit (TF (R := V) (FractionRing V))).left z₀ ⊤ ρ = 1 := a.trans (hgen z₀ J₀ hJ₀)
    have c := gm_top_eq ρ z₀
    rw [a1, Units.val_one, cst_eq, ← map_one (cstH z₀)] at c
    have d := cstH_inj z₀ c
    rw [← map_one (algebraMap V (FractionRing V))] at d
    have e := IsFractionRing.injective V (FractionRing V) d
    apply Units.ext
    have hinj : Function.Injective (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom :=
      (Scheme.ΓSpecIso (CommRingCat.of V)).commRingCatIsoToRingEquiv.injective
    apply hinj
    rw [Units.val_one, map_one]
    exact e.symm
  have a := vs (Over.mk r) (toUnit _) z J hJ
  rw [hρ _ _ z J hJ, val_one, _root_.mul_one, hρ1, map_one] at a
  simp only [Category.comp_id] at a
  exact a.symm

end GlobalTheory.Poinc.Sep.FrameInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.FieldBaseChange GlobalTheory.UT
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPointStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitCoefficientOfThetaSquareIntegralTorsion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitCoefficientOfThetaSquareIntegralTorsion", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionNe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic



theorem GlobalTheory.Poinc.Sep.CoefInt.isUnit_of_theta_sq : ∀ (N₁ : ℕ), 2 ≤ N₁ → ∀ (V₁ : Type) [CommRing V₁] [IsDomain V₁] [IsLocalRing V₁], IsCN V₁ →
    (∀ m : ℕ, m ≠ 0 → IsUnit (m : V₁)) → ∀ (D : DegPre V₁)
    (θ : SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))),
    (∀ (R' : Type) [CommRing R'] (f : V₁ →+* R') θ',
      IsPullSecLC D.P.L (D.famφB 0) (DegPre.famε 1) (snd (Over.mk (Spec.map (CommRingCat.ofHom f))) D.P.A).left θ θ' →
      GlobalTheory.Poinc.ThetaOne.OneBasisAt D f θ') →
    ∀ (C : Type) (b : C → (𝟙_ (Over (Sp V₁)) ⟶ D.P.A)),
    (∀ (K : Type) [Field K] [IsAlgClosed K] (x : Sp K ⟶ Sp V₁) (p : Over.mk x ⟶ D.P.A), p ^ N₁ = 1 →
      ∃ c, p = toUnit _ ≫ b c) →
    ∃ c₁ : C, ∀ (G : V₁) (U : ∀ (Z : Scheme.{0}) (_ : Z ⟶ Sp V₁) (z : Z) (_ : (Z ⟶ D.P.A.left) → D.P.L.ι),
        (Z.presheaf.stalk z)ˣ),
      (∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V₁) (z : Z) J, Good D.P.L z J →
        gs r z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom G) =
          sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (r ≫ (b c₁).left) z J ^ 2 *
            (U Z r z J).val) → IsUnit G := by
  intro N₁ hN V₁ _ _ _ hV hunit D θ hθ C b hcov
  let K := AlgebraicClosure (ResidueField V₁)
  let ev : V₁ →+* K := (algebraMap (ResidueField V₁) K).comp (residue V₁)
  have hθ' : ∃ j, (ThetaOne.pullTo D ev θ).f j ≠ 0 :=
    ThetaOne.exists_ne_zero D ev _ (hθ K ev _ (ThetaOne.isPullSecLC_pullTo D ev θ))
  have hNK : (N₁ : K) ≠ 0 := by
    have := (hunit N₁ (by omega)).map ev
    rw [map_natCast] at this
    exact this.ne_zero
  obtain ⟨p, hp, hne⟩ := GlobalTheory.Poinc.Sep.Coef.exists_torsion_ne D ev θ hθ' N₁ hN hNK
  obtain ⟨c₁, hc⟩ := hcov K (spMap ev) p hp
  refine ⟨c₁, fun G U hG => ?_⟩
  by_contra hGu
  have hG0 : ev G = 0 := by
    show algebraMap (ResidueField V₁) K (residue V₁ G) = 0
    rw [(residue_eq_zero_iff G).2 ((mem_maximalIdeal G).2 hGu), map_zero]
  let z : Sp K := IsLocalRing.closedPoint K
  have hch : ∀ ψ : Sp K ⟶ D.P.A.left, ∃ i, ψ z ∈ D.P.L.U i := fun ψ =>
    ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart D.P.isLB (ψ z)
  choose J hJ using hch
  have hgood : Good D.P.L z J := hJ
  have e := hG (Sp K) (spMap ev) z J hgood
  have e2 : gs (spMap ev) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom G) = toStk z (ev G) := by
    have := GlobalTheory.Poinc.Sep.Coef.gs_ev ev ((Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom G) z
    simpa using this
  have hpl : p.left = spMap ev ≫ (b c₁).left := by rw [hc]; rfl
  have h1 := hne z J hgood
  rw [hpl] at h1
  obtain ⟨y, hy⟩ := _root_.GlobalTheory.Ex.GtValues.toStk_surj z (sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (spMap ev ≫ (b c₁).left) z J)
  rw [e2, hG0, map_zero, ← hy, ← map_pow] at e
  have h3 : toStk z (y ^ 2) = 0 := (Units.mul_left_eq_zero _).1 e.symm
  have h4 : y ^ 2 = 0 := (toStk z).injective (h3.trans (map_zero _).symm)
  exact h1 (by rw [← hy, pow_eq_zero_iff two_ne_zero |>.1 h4, map_zero])
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitCoefficientOfThetaSquareIntegralTorsion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetric", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic
noncomputable section

namespace GlobalTheory.PsiSqGeneric

theorem cst_eq_gm {V : Type} [CommRing V] [IsDomain V] (z : Spec (CommRingCat.of (FractionRing V)))
    (k : (FractionRing V)ˣ) :
    cst (R := V) (FractionRing V) z (k : FractionRing V) =
      (gm (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z ⊤ (unitOn k)).val := by
  rw [← gs_unit _ z ⊤ trivial]
  rfl

end GlobalTheory.PsiSqGeneric

namespace GlobalTheory.PsiSqGeneric

theorem core (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (hE : D.PsiEven)
    (h0 : ∀ (Z : Scheme.{0}) (r : Z ⟶ (TK V).left) (z : Z) J, Good D.P.L z J →
      val (D.psi 0) r z J * val D.rigK r z J = 1)
    (τ₀ : GlobalTheory.UChart.Gens D) (N : ℕ) (s : Fin N → V) (ε : Fin N → LinearMap.BilinForm ℤ D.X)
    (hT : GlobalTheory.UChart.TauIn D τ₀ s ε) (mu : D.X) : ∃ k : (FractionRing V)ˣ,
      (k : FractionRing V) = ∏ i, algebraMap V (FractionRing V) (s i) ^ ε i mu mu ∧
      ∀ (z : Spec (CommRingCat.of (FractionRing V)))
        (J : (Spec (CommRingCat.of (FractionRing V)) ⟶ D.P.A.left) → D.P.L.ι), Good D.P.L z J →
        (val (D.psi mu) (jFK (R := V) (FractionRing V)) z J).val ^ 2 =
          cst (R := V) (FractionRing V) z (k : FractionRing V) *
            (val D.sym ((toUnit (TF (R := V) (FractionRing V))).left ≫ (D.c mu).left) z J *
              (val (τ₀ mu (-mu)) (toUnit (TF (R := V) (FractionRing V))).left z J)⁻¹ *
              (rigV D (toUnit (TF (R := V) (FractionRing V))).left z J ^ 2)⁻¹).val := by
  obtain ⟨-, k', hk', hv⟩ := hT mu (-mu)
  refine ⟨k'⁻¹, ?_, fun z J hJ => ?_⟩
  · rw [Units.val_inv_eq_inv_val, hk']
    simp only [map_neg, zpow_neg, Finset.prod_inv_distrib, inv_inv]
  · have hv' : val (D.tau mu (-mu)) (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z J =
        gm (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z ⊤ (unitOn k') * val (τ₀ mu (-mu)) (jK V) z J :=
      hv z J hJ
    have ev := val_corr hJ (hE mu) (𝟙 (Spec (CommRingCat.of (FractionRing V))))
    rw [val_mul hJ, val_pull hJ, Category.id_comp] at ev
    have p0 := h0 _ (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z J hJ
    have hrig : val D.rigK (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z J = rigV D (jK V) z J := by
      rw [DegPre.rigK, val_pull hJ, Category.id_comp]; rfl
    have hx : D.xK mu = jK V ≫ (D.c mu).left := rfl
    unfold DegPre.tau at hv'
    rw [val_mul hJ, val_mul hJ, val_mul hJ, val_inv, val_inv, val_inv,
      congrArg (fun w => val (D.psi w) (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z J) (add_neg_cancel mu)] at hv'
    rw [hx] at ev
    rw [hrig] at p0 hv'
    rw [_root_.GlobalTheory.UU.ExpFrac.jFK_self, GlobalTheory.Poinc.Sep.Frames.toUnit_left_eq, cst_eq_gm]
    have hg : gm (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z ⊤ (unitOn k'⁻¹) =
        (gm (𝟙 (Spec (CommRingCat.of (FractionRing V)))) z ⊤ (unitOn k'))⁻¹ := by
      rw [← map_inv]; rfl
    rw [hg, ← Units.val_pow_eq_pow_val, ← Units.val_mul]
    congr 1
    have hp := eq_inv_of_mul_eq_one_left p0
    have hb := eq_mul_inv_of_mul_eq ev
    have hG := eq_mul_inv_of_mul_eq hv'.symm
    rw [hG, hp, hb]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv, ofMul_pow]
    abel

end GlobalTheory.PsiSqGeneric

theorem GlobalTheory.PsiSqGeneric.main : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V), D.PsiEven →
    (∀ (Z : Scheme.{0}) (r : Z ⟶ (TK V).left) (z : Z) J, Good D.P.L z J →
      val (D.psi 0) r z J * val D.rigK r z J = 1) →
    ∀ (τ₀ : GlobalTheory.UChart.Gens D) (N : ℕ) (s : Fin N → V) (ε : Fin N → LinearMap.BilinForm ℤ D.X),
    GlobalTheory.UChart.TauIn D τ₀ s ε → ∀ mu : D.X, ∃ k : (FractionRing V)ˣ,
      (k : FractionRing V) = ∏ i, algebraMap V (FractionRing V) (s i) ^ ε i mu mu ∧
      ∀ z J, Good D.P.L z J →
        (@id ((TF (R := V) (FractionRing V)).left.presheaf.stalk z)ˣ (val (D.psi mu) (jFK (R := V) (FractionRing V)) z J)).val ^ 2 =
          cst (FractionRing V) z (k : FractionRing V) *
            (val D.sym ((toUnit (TF (R := V) (FractionRing V))).left ≫ (D.c mu).left) z J *
              (val (τ₀ mu (-mu)) (toUnit (TF (R := V) (FractionRing V))).left z J)⁻¹ *
              (rigV D (toUnit (TF (R := V) (FractionRing V))).left z J ^ 2)⁻¹).val := by
  intro V _ _ D hE h0 τ₀ N s ε hT mu
  exact GlobalTheory.PsiSqGeneric.core V D hE h0 τ₀ N s ε hT mu
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetric =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetricStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetricStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetricStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOne", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

namespace GlobalTheory.Poinc.Sep.PsiZero

theorem psi_zero_mul_rigK : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V), D.TauBimult →
    ∀ (Z : Scheme.{0}) (r : Z ⟶ (TK V).left) (z : Z) J, Good D.P.L z J →
      val (D.psi 0) r z J * val D.rigK r z J = 1 := by
  intro V _ _ D hB Z r z J hJ

  let T : Over (Spec (CommRingCat.of V)) := Over.mk (r ≫ (TK V).hom)
  let ρ : T ⟶ TK V := Over.homMk r rfl
  have hcub : val (LB.pullGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t (D.pt3 0 0 0)) r z J = 1 := by
    have e := val_cub D.cub ρ hJ (toUnit (TK V) ≫ D.c 0) (toUnit (TK V) ≫ D.c 0) (toUnit (TK V) ≫ D.c 0)
    refine e.trans ?_
    rw [_root_.GlobalTheory.IndivisibleSection.c_zero_eq_one, MonObj.comp_one, MonObj.comp_one]
    exact (isCub_cubV D.cub hJ).face 1 1
  have hc := (val_mul hJ _ _ r).symm.trans ((val_corr hJ (hB 0 0 0) r).trans (val_mul hJ _ _ r))
  rw [hcub, _root_.mul_one,
    congrArg (fun w => val (D.tau w 0) r z J) (add_zero (0 : D.X))] at hc
  have ht : val (D.tau 0 0) r z J = 1 := (mul_eq_left.1 hc.symm)
  unfold DegPre.tau at ht
  rw [val_mul hJ, val_mul hJ, val_mul hJ, val_inv, val_inv,
    congrArg (fun w => val (D.psi w) r z J) (add_zero (0 : D.X)), mul_inv_cancel, _root_.one_mul] at ht
  rw [← mul_inv, inv_eq_one] at ht
  exact ht

end GlobalTheory.Poinc.Sep.PsiZero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOneStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOneStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

theorem _root_.GlobalTheory.T.psi_zero_mul_rigidificationK_eq_one : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V), D.TauBimult →
    ∀ (Z : Scheme.{0}) (r : Z ⟶ (TK V).left) (z : Z) J, Good D.P.L z J →
      val (D.psi 0) r z J * val D.rigK r z J = 1 := by
  first | exact @GlobalTheory.Poinc.Sep.PsiZero.psi_zero_mul_rigK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOneStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FamFEOneOfPsiRel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

noncomputable section

namespace GlobalTheory.UT.CoefInt

theorem coef_int : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V)
    (θ : SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
    (lam : FractionRing V) (th : Fam D (FractionRing V) 1),
    famProj D (FractionRing V) 1 0 th = lam • termF D (FractionRing V) 1 0 θ →
    (∀ (Z : Scheme.{0}) (r : Z ⟶ (TK V).left) (z : Z) J, Good D.P.L z J →
      val (D.psi 0) r z J * val D.rigK r z J = 1) →
    ∀ (χ : D.X) (g : GtPtF D (FractionRing V)) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A), g.b = toUnit _ ≫ b →
    ∀ (w : Frm D (FractionRing V) 1 g.b) (x : FractionRing V), IsCoef 1 g w χ (th.s χ) x →
    ∀ z J, Good D.P.L z J →
      cst (FractionRing V) z x = cst (FractionRing V) z lam *
        (@id ((TF (R := V) (FractionRing V)).left.presheaf.stalk z)ˣ (val (D.psi χ) (jFK (R := V) (FractionRing V)) z J)).val *
        sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
          ((toUnit (TF (R := V) (FractionRing V))).left ≫ (b * D.c χ).left) z J *
        (val (g.s χ) (𝟙 _) z J).val * (val w (𝟙 _) z J).val := by
  intro V _ _ D θ lam th hlam hrig χ g b hb w x hx z J hJ
  have hG : GlobalFnsSt := GlobalTheory.abelianSchemeLaws_all.1.globalFns
  have h1 := hx z J hJ
  rw [pow_one] at h1
  obtain ⟨u, hu, hc, hrel⟩ := fe_from_zero hG D (FractionRing V) th χ
  have e1 := (secRel_iff D.P.isLB _ _ _ _ _ _ _ _ _ u).1 hrel _ (lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left z J hJ
  have e2 := (gen_fe (D := D) (F := FractionRing V) hG 1 χ 0).2 u hu hc _ (lift (𝟙 (TF (R := V) (FractionRing V))) g.b) z J hJ
  rw [GlobalTheory.UU.uVal_one D _ _ _ _ hJ, _root_.one_mul, lift_fst, Over.id_left] at e2
  have e3 := GlobalTheory.UU.val_famMult_one D (FractionRing V) (𝟙 (TF (R := V) (FractionRing V))) hJ χ 0
  have hps : val (D.psi (χ + 0)) (jFK (R := V) (FractionRing V)) z J = val (D.psi χ) (jFK (R := V) (FractionRing V)) z J := by
    rw [add_zero]
  rw [Over.id_left, Category.id_comp, hps] at e3
  have e4 := hrig _ (jFK (R := V) (FractionRing V)) z J hJ
  have hrK : val D.rigK (jFK (R := V) (FractionRing V)) z J = rigV D (TF (R := V) (FractionRing V)).hom z J := by
    rw [DegPre.rigK, val_pull hJ]
    rfl

  have hfm : val (DegPre.famMult D (FractionRing V) 1 χ 0) (𝟙 (TF (R := V) (FractionRing V)).left) z J =
      val (D.psi χ) (jFK (R := V) (FractionRing V)) z J * val D.rigK (jFK (R := V) (FractionRing V)) z J := by
    have h0 : val (D.psi 0) (jFK (R := V) (FractionRing V)) z J = (val D.rigK (jFK (R := V) (FractionRing V)) z J)⁻¹ :=
      eq_inv_of_mul_eq_one_left e4
    rw [h0] at e3
    exact eq_mul_of_mul_inv_eq e3
  have hsχ : sval (th.s χ) (lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left z J =
      sval (th.s (0 + 1 • χ)) (lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left z J := by
    rw [zero_add, one_smul]
  have hfst : ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫ (DegPre.trF D (FractionRing V) χ).left) ≫
      famBase D (FractionRing V) = 𝟙 _ := by
    show _ ≫ (fst (TF (R := V) (FractionRing V)) D.P.A).left = _
    rw [Category.assoc, ← Over.comp_left, ← Over.comp_left, DegPre.trF, lift_fst, lift_fst]; rfl
  have hsndO : lift (𝟙 (TF (R := V) (FractionRing V))) g.b ≫ DegPre.trF D (FractionRing V) χ ≫ DegPre.prB D (FractionRing V) =
      toUnit _ ≫ (b * D.c χ) := by
    rw [ReciprocityTheory.ChartRestriction.G.DVR.trF_eq, ReciprocityTheory.ChartRestriction.G.DVR.tr_pr, MonObj.comp_mul, ← Category.assoc, lift_fst, Category.id_comp,
      lift_snd, hb, MonObj.comp_mul]
    rfl
  have hsnd : ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫ (DegPre.trF D (FractionRing V) χ).left) ≫
      (DegPre.prB D (FractionRing V)).left = (toUnit (TF (R := V) (FractionRing V))).left ≫ (b * D.c χ).left := by
    rw [Category.assoc, ← Over.comp_left, ← Over.comp_left, ← Over.comp_left, hsndO]
  have hs0 : sval (th.s 0) ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫ (DegPre.trF D (FractionRing V) χ).left) z J =
      sval (famProj D (FractionRing V) 1 0 th) ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫
        (DegPre.trF D (FractionRing V) χ).left) z J := rfl
  have t1 := sval_smul' (π := famBase D (FractionRing V)) hJ
    ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫ (DegPre.trF D (FractionRing V) χ).left) lam
    (termF D (FractionRing V) 1 0 θ)
  have t2 := sval_pullOver (L := D.P.L) (ε := DegPre.famε 1) (prB_hom' D (FractionRing V)) (famφ_prB D (FractionRing V) 0) θ
    ((lift (𝟙 (TF (R := V) (FractionRing V))) g.b).left ≫ (DegPre.trF D (FractionRing V) χ).left) hJ
  have hc0 : constVal (𝟙 (TF (R := V) (FractionRing V)).left) z lam = cst (FractionRing V) z lam := rfl
  rw [hs0, hlam, t1, hfst, hc0] at e1
  erw [t2] at e1
  rw [hsnd] at e1
  rw [hsχ, e1, e2, hfm, hrK] at h1
  refine (Units.mul_left_inj (rigV D (TF (R := V) (FractionRing V)).hom z J)).1 (h1.trans ?_)
  simp only [Units.val_mul, id]
  ring

end GlobalTheory.UT.CoefInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPointStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFunctionThetaSectionIntegralPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFunctionThetaSectionIntegralPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnivIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.FieldBaseChange GlobalTheory.UT
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

namespace GlobalTheory.IntPointFn

theorem comp_padd_c_zero (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A) :
    b.left ≫ (padd D.P.A (𝟙 D.P.A) (toUnit D.P.A ≫ D.c 0)).left = b.left := by
  rw [← Over.comp_left, _root_.GlobalTheory.IndivisibleSection.c_zero_eq_one]
  simp only [padd, comp_one]
  show (b ≫ (𝟙 D.P.A * 1)).left = b.left
  rw [_root_.mul_one, Category.comp_id]

theorem comp_toUnit_c_zero (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A) :
    b.left ≫ (toUnit D.P.A ≫ D.c 0).left = (η[D.P.A]).left := by
  rw [← Over.comp_left, _root_.GlobalTheory.IndivisibleSection.c_zero_eq_one, ← SymFrame.eta_eq, ← Category.assoc,
    toUnit_unique (b ≫ toUnit D.P.A) (𝟙 _), Category.id_comp]

theorem comp_toUnit_eta (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A) :
    b.left ≫ (toUnit D.P.A ≫ η[D.P.A]).left = (η[D.P.A]).left := by
  rw [← Over.comp_left, ← Category.assoc, toUnit_unique (b ≫ toUnit D.P.A) (𝟙 _), Category.id_comp]

end GlobalTheory.IntPointFn

namespace GlobalTheory.IntPointFn

theorem fn_of_theta : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (θ : SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A) (t : LB.Gen (LB.LinComb D.P.L ![(η[D.P.A]).left, b.left] (DegPre.lineε 1))), t.IsGen → ∀ (ρ₀ : LB.Gen (D.P.L.pull (eSec D.P.A))), ρ₀.IsGen → ∃ f : V, ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V) (z : Z) J, Good D.P.L z J → sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (r ≫ b.left) z J * (val t r z J).val = gs r z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom f) * (val ρ₀ r z J).val := by
  intro V _ _ D θ b t ht ρ₀ hρ
  have hL := D.P.isLB
  have hu := mulGen_isGen D.P.L _ _ _ _ t (LB.invGen D.P.L _ _ ρ₀) ht (invGen_isGen _ _ _ _ hρ)
  have hF : FormEq (Sum.elim (fun k => b.left ≫ D.famφB 0 k)
      (Sum.elim ![(η[D.P.A]).left, b.left] (fun _ : PUnit => eSec D.P.A)))
      (Sum.elim (DegPre.famε 1) (Sum.elim (DegPre.lineε 1) (fun _ : PUnit => -(1 : ℤ))))
      (PEmpty.elim : PEmpty → (Sp V ⟶ D.P.A.left)) (PEmpty.elim : PEmpty → ℤ) := by
    intro U _ h
    simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fin.prod_univ_four, Fin.prod_univ_two,
      Fintype.prod_empty, Fintype.prod_unique, DegPre.famφB, DegPre.famε, DegPre.lineε, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three, Matrix.head_cons, Matrix.tail_cons, Category.comp_id, Nat.cast_one, sub_self,
      comp_padd_c_zero, comp_toUnit_c_zero, comp_toUnit_eta, eSec]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_zpow, ofMul_one]
    abel
  obtain ⟨s', hs'⟩ := exists_sec hL hF (pullMulSec (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) b.left
    (LB.mulGen D.P.L _ _ _ _ t (LB.invGen D.P.L _ _ ρ₀)) hu)
  have hle : (⊤ : (Sp V).Opens) ≤ LB.wchart D.P.L (PEmpty.elim : PEmpty → (Sp V ⟶ D.P.A.left)) (PEmpty.elim : PEmpty → D.P.L.ι) :=
    fun _ _ => Set.mem_iInter.2 fun k => k.elim
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom
    (((Sp V).presheaf.map (homOfLE hle).op).hom (s'.f (PEmpty.elim : PEmpty → D.P.L.ι))), fun Z r z J hJ => ?_⟩
  have e1 := (hs' Z r z J hJ).trans (sval_pullMulSec _ _ _ hu r z hJ)
  rw [val_mul hJ, val_inv,
    sval_of s' r z J (PEmpty.elim : PEmpty → D.P.L.ι) (fun k => k.elim)] at e1
  have e2 : (Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom
      (((Sp V).presheaf.map (homOfLE hle).op).hom (s'.f (PEmpty.elim : PEmpty → D.P.L.ι)))) =
      ((Sp V).presheaf.map (homOfLE hle).op).hom (s'.f (PEmpty.elim : PEmpty → D.P.L.ι)) := by
    rw [← CommRingCat.comp_apply, Iso.hom_inv_id]; rfl
  have e3 := gs_res r z hle (by trivial) (s'.f (PEmpty.elim : PEmpty → D.P.L.ι))
  rw [e2]
  erw [e3, e1]
  rw [Units.val_mul, _root_.mul_assoc, _root_.mul_assoc, ← Units.val_mul, _root_.inv_mul_cancel,
    Units.val_one, _root_.mul_one]

end GlobalTheory.IntPointFn
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFunctionThetaSectionIntegralPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpec =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpec", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFunctionThetaSectionIntegralPoint\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FibreIsoCarriesSharpPointsToConjugates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

namespace GlobalTheory.IntPointFnSq

theorem c_comp_inv (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (χ : D.X) :
    (D.c χ).left ≫ (ι[D.P.A]).left = (D.c (-χ)).left := by
  rw [← Over.comp_left]
  congr 1
  have h : D.c χ * D.c (-χ) = 1 := by
    rw [← _root_.GlobalTheory.IndivisibleSection.c_zero_eq_one D, ← add_neg_cancel χ, D.c_add]; rfl
  exact (eq_inv_of_mul_eq_one_right h).symm

theorem c_eq_eta (V : Type) [CommRing V] [IsDomain V] (D : DegPre V) (χ : D.X) :
    (D.c (χ + -χ)).left = (η[D.P.A]).left := by
  rw [add_neg_cancel, _root_.GlobalTheory.IndivisibleSection.c_zero_eq_one, ← SymFrame.eta_eq]


open GlobalTheory.IntPointFn in
theorem fn_of_theta_sq : ∀ (V : Type) [CommRing V] [IsDomain V] (D : DegPre V)
    (θ : SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
    (b : 𝟙_ (Over (Sp V)) ⟶ D.P.A) (χ : D.X)
    (t : LB.Gen (LB.LinComb D.P.L ![(η[D.P.A]).left, b.left] (DegPre.lineε 1))), t.IsGen →
    ∀ (χt : LB.Gen (LB.LinComb D.P.L ![(D.c χ * b).left, (D.c χ).left, b.left, (η[D.P.A]).left] DegPre.gtε)),
    χt.IsGen →
    ∀ (τ : LB.Gen (LB.LinComb D.P.L (K := Fin 4) ![(D.c (χ + -χ)).left, (D.c χ).left, (D.c (-χ)).left, (D.c 0).left]
      ![-1, 1, 1, -1])), τ.IsGen →
    ∃ G : V, ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V) (z : Z) J, Good D.P.L z J →
      gs r z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom G) =
        sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (r ≫ (b * D.c χ).left) z J ^ 2 *
          (val t r z J ^ 2 * val χt r z J ^ 2 * val D.sym (r ≫ (D.c χ).left) z J *
            (val τ r z J)⁻¹ * (rigV D r z J ^ 2)⁻¹).val := by
  intro V _ _ D θ b χ t ht χt hχt τ hτ
  have hL := D.P.isLB
  have e0 : (D.c 0).left = (η[D.P.A]).left := by rw [_root_.GlobalTheory.IndivisibleSection.c_zero_eq_one, ← SymFrame.eta_eq]
  have e1 := c_comp_inv V D χ
  have e2 := c_eq_eta V D χ
  have e4 : (b * D.c χ).left = (D.c χ * b).left := by rw [_root_.mul_comm]
  let u := LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _
    (LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ t t) (LB.mulGen D.P.L _ _ _ _ χt χt))
    (LB.pullGen D.P.L _ _ D.sym (D.c χ).left)) (LB.invGen D.P.L _ _ τ))
    (LB.invGen D.P.L _ _ (LB.mulGen D.P.L (Y := Sp V) (fun _ : PUnit => eSec D.P.A) (fun _ => 1) (fun _ : PUnit => eSec D.P.A) (fun _ => 1) D.rig D.rig))
  have hu : u.IsGen := by
    refine mulGen_isGen _ _ _ _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _
      (mulGen_isGen _ _ _ _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _ ht ht) (mulGen_isGen _ _ _ _ _ _ _ hχt hχt))
      (pullGen_isGen _ _ _ _ D.sym_gen _)) (invGen_isGen _ _ _ _ hτ))
      (invGen_isGen _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _ D.rig_gen D.rig_gen))
  obtain ⟨s', hs'⟩ := GlobalTheory.Poinc.Sep.ConjPt.exists_powSec hL (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
    (b * D.c χ).left 2 u hu (K' := PEmpty) PEmpty.elim PEmpty.elim (fun U _ f => by
      simp only [u, Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fin.prod_univ_four, Fin.prod_univ_two,
        Fintype.prod_empty, Fintype.prod_unique, DegPre.famφB, DegPre.famε, DegPre.lineε, DegPre.gtε,
        Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three, Matrix.head_cons,
        Matrix.tail_cons, Category.comp_id, Nat.cast_one, sub_self,
        comp_padd_c_zero, comp_toUnit_c_zero, comp_toUnit_eta, eSec, e0, e1, e2, e4]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_zpow, ofMul_pow, ofMul_one]
      abel)
  obtain ⟨a, ha⟩ := GlobalTheory.Poinc.Sep.ConjPt.exists_fn s'
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom a, fun Z r z J hJ => ?_⟩
  have e2' : (Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom a) = a := by
    rw [← CommRingCat.comp_apply, Iso.hom_inv_id]; rfl
  rw [e2', ← ha, hs' Z r z J hJ]
  congr 1
  simp only [u, val_mul hJ, val_inv, val_pull hJ, rigV]
  simp only [pow_two]

end GlobalTheory.IntPointFnSq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpec =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpecStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpecStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsExtensionPullOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpecStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralSquaredThetaTermsTorusCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralSquaredThetaTermsTorusCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CubicalProductIdentityOfGenericPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FibreIsoCarriesSharpPointsToConjugates\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralFrameIdentityOfGenericPointStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitCoefficientOfThetaSquareIntegralTorsion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiSqGenericPointEqMonomialMulSymmetricStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiZeroMulRigidificationKEqOneStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFamilyCoefficientIntegralTorusPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSquareProductIsFunctionOnSpecStatement\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFrameRatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange
open ReciprocityTheory.ChartRestriction.G.DVR GlobalTheory.Poinc.Sep.Frames GlobalTheory.UT.CoefBasic

noncomputable section

namespace GlobalTheory.Poinc.Sep.CoefInt

theorem rescale_gen {X Y : Scheme.{0}} (L : LB X) {K : Type} [Fintype K] (φ : K → (Y ⟶ X)) (ε : K → ℤ)
    (t : LB.Gen (LB.LinComb L φ ε)) (ht : t.IsGen) (u : Γ(Y, ⊤)ˣ) :
    ∃ t' : LB.Gen (LB.LinComb L φ ε), t'.IsGen ∧ ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J), Good L z J →
      val t' r z J = gm r z ⊤ u * val t r z J := by
  refine ⟨⟨fun j => t.s j * res le_top u⟩, fun i j => ?_, fun Z r z J hJ => ?_⟩
  · rw [map_mul, map_mul, ht i j, _root_.mul_assoc]
    refine congrArg (fun q => _ * (_ * q)) (unit_ext fun y hy => ?_)
    exact ((gm_res _ y _ hy _).trans (gm_res _ y le_top hy.1 _)).trans
      ((gm_res _ y _ hy _).trans (gm_res _ y le_top hy.2 _)).symm
  · exact (map_mul _ _ _).trans ((mul_comm _ _).trans (congrArg (· * _) (gm_res r z le_top (hJ.mem φ r) u)))

theorem gs_top {V : Type} [CommRing V] [IsDomain V] (a : V) (z : (TF (R := V) (FractionRing V)).left) :
    gs (toUnit (TF (R := V) (FractionRing V))).left z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom a) =
      cst (FractionRing V) z (algebraMap V (FractionRing V) a) := by
  rw [toUnit_left_eq, GlobalTheory.RatioVal.gs_specMap, ← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply]
  exact (GlobalTheory.RatioVal.gs_id_const z _).symm

theorem unit_map_map {V : Type} [CommRing V] (ε : Vˣ) :
    ((Units.map (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom.toMonoidHom
      (Units.map (Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom.toMonoidHom ε) : Vˣ) : V) = ε := by
  show (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom ((Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom ε) = ε
  rw [← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply]

end GlobalTheory.Poinc.Sep.CoefInt

namespace GlobalTheory.Poinc.Sep.CoefInt

theorem integral_sq_terms : ∀ (N₁ : ℕ), 2 ≤ N₁ → ∀ (V₁ : Type) [CommRing V₁] [IsDomain V₁] [IsLocalRing V₁], IsCN V₁ →
    (∀ m : ℕ, m ≠ 0 → IsUnit (m : V₁)) → ∀ (D : DegPre V₁), D.PsiEven → D.TauBimult →
    ∀ (X C : Type) [AddCommGroup X] (e : X ≃+ D.X) (u : X → C → V₁) (mo : X → V₁),
    (∀ mu, mo mu ≠ 0 ∧ ∃ c, IsUnit (u mu c)) → GlobalTheory.Poinc.Sep.IsThetaTerms D N₁ e (fun mu c => u mu c * mo mu) →
    ∀ (τ₀ : GlobalTheory.UChart.Gens D) (m N : ℕ) (s : Fin m ⊕ Fin N → V₁) (ε : Fin m ⊕ Fin N → LinearMap.BilinForm ℤ D.X)
      (hs : ∀ k, IsUnit (s (.inr k))),
    GlobalTheory.UChart.TauIn D τ₀ (fun k => s (finSumFinEquiv.symm k)) (fun k => ε (finSumFinEquiv.symm k)) →
    (∀ mu, algebraMap V₁ (FractionRing V₁) (mo mu) ^ 2 =
      ∏ k, algebraMap V₁ (FractionRing V₁) (s (.inl k)) ^ ε (.inl k) (e mu) (e mu)) →
    ∃ (θ : SecOver D.P.A.hom (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
      (b : C → (𝟙_ (Over (Sp V₁)) ⟶ D.P.A))
      (t : ∀ c, LB.Gen (LB.LinComb D.P.L ![(η[D.P.A]).left, (b c).left] (DegPre.lineε 1)))
      (χt : ∀ (mu : X) (c : C), LB.Gen (LB.LinComb D.P.L
        ![(D.c (e mu) * b c).left, (D.c (e mu)).left, (b c).left, (η[D.P.A]).left] DegPre.gtε))
      (s₀ : V₁) (G : X → C → V₁),
      (∀ (R' : Type) [CommRing R'] (f : V₁ →+* R') θ',
        IsPullSecLC D.P.L (D.famφB 0) (DegPre.famε 1) (snd (Over.mk (Spec.map (CommRingCat.ofHom f))) D.P.A).left θ θ' →
        GlobalTheory.Poinc.ThetaOne.OneBasisAt D f θ') ∧
      (∀ c, b c ^ N₁ = 1) ∧
      (∀ c, (t c).IsGen ∧ ∀ κ : LB.Gen (kapLB D (𝟙 D.P.A ^ N₁) (N₁ ^ 2) 1), Normd κ →
        ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V₁) (z : Z) J, Good D.P.L z J →
          val (t c) r z J ^ (N₁ ^ 2) * val κ (r ≫ (b c).left) z J = 1) ∧
      (∀ mu c, (χt mu c).IsGen ∧ ∀ (T : Over (Sp V₁)) (z : T.left) J, Good D.P.L z J →
        ∏ i ∈ Finset.range N₁, cubV D.cub z J (toUnit T ≫ D.c (e mu)) (toUnit T ≫ b c ^ i) (toUnit T ≫ b c) =
          val (χt mu c) T.hom z J ^ N₁) ∧
      IsUnit s₀ ∧
      (∀ mu c, u mu c ^ 2 * s₀ = ((∏ k, (hs k).unit ^ ε (.inr k) (e mu) (e mu) : V₁ˣ) : V₁) * G mu c) ∧
      ∀ mu c (Z : Scheme.{0}) (r : Z ⟶ Sp V₁) (z : Z) J, Good D.P.L z J →
        gs r z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom (G mu c)) =
          sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (r ≫ (b c * D.c (e mu)).left) z J ^ 2 *
            (val (t c) r z J ^ 2 * val (χt mu c) r z J ^ 2 * val D.sym (r ≫ (D.c (e mu)).left) z J *
              (val (τ₀ (e mu) (-e mu)) r z J)⁻¹ * (rigV D r z J ^ 2)⁻¹).val := by
  intro N₁ hN₁ V₁ _ _ _ hV hunit D hPE hTB X C _ e u mo hmo hT τ₀ m N s ε hs hτ hmo2
  haveI : IsNoetherianRing V₁ := hV.1
  haveI : IsIntegrallyClosed V₁ := hV.2.1
  have hN1 : 1 ≤ N₁ := by omega
  obtain ⟨th, g, b, w, hgb, ho, hcov, hw, hcoef, ⟨c₀, hc₀⟩, hbN, hfr, -⟩ := thetaTerms_integral D hN1 e _ hT
  obtain ⟨θ, hθ, -, hlamE, -, -⟩ := ThetaOne.main hV D
  obtain ⟨lam, hlam, -⟩ := hlamE (FractionRing V₁) th
  have hψ0 := GlobalTheory.T.psi_zero_mul_rigidificationK_eq_one V₁ D hTB

  have ht : ∀ c, ∃ t : LB.Gen (LB.LinComb D.P.L ![(η[D.P.A]).left, (b c).left] (DegPre.lineε 1)), t.IsGen ∧
      ∀ z J, Good D.P.L z J → val t (toUnit (TF (R := V₁) (FractionRing V₁))).left z J = val (w c) (𝟙 _) z J := by
    intro c
    obtain ⟨t', ht'⟩ := GlobalTheory.Poinc.Sep.ConjPt.exists_gen_local (D := D) ![(η[D.P.A]).left, (b c).left] (DegPre.lineε 1)
    obtain ⟨ε', hε'⟩ := hfr c t' ht'
    obtain ⟨t, htg, htv⟩ := rescale_gen D.P.L _ _ t' ht'
      (Units.map (Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom.toMonoidHom ε')
    refine ⟨t, htg, fun z J hJ => Units.ext ?_⟩
    rw [htv _ _ z J hJ, Units.val_mul, hε' z J hJ, gm_top_eq, unit_map_map]
  choose t htg htv using ht

  have hχ : ∀ mu c, ∃ χt : LB.Gen (LB.LinComb D.P.L
        ![(D.c (e mu) * b c).left, (D.c (e mu)).left, (b c).left, (η[D.P.A]).left] DegPre.gtε), χt.IsGen ∧
      (∀ z J, Good D.P.L z J → val χt (toUnit (TF (R := V₁) (FractionRing V₁))).left z J =
        val ((g c).s (e mu)) (𝟙 _) z J) ∧
      (∀ z J, Good D.P.L z J → ∏ i ∈ Finset.range N₁, cubV D.cub z J (toUnit (TF (R := V₁) (FractionRing V₁)) ≫ D.c (e mu))
        (toUnit (TF (R := V₁) (FractionRing V₁)) ≫ b c ^ i) (toUnit (TF (R := V₁) (FractionRing V₁)) ≫ b c) =
        val χt (toUnit (TF (R := V₁) (FractionRing V₁))).left z J ^ N₁) := by
    intro mu c
    obtain ⟨t', ht'⟩ := GlobalTheory.Poinc.Sep.ConjPt.exists_gen_local (D := D)
      ![(D.c (e mu) * b c).left, (D.c (e mu)).left, (b c).left, (η[D.P.A]).left] DegPre.gtε
    obtain ⟨ε', h1, h2⟩ := char_unit hN1 (g c) (b c) (hgb c) (ho c) (e mu) t' ht'
    obtain ⟨χt, hg, hv⟩ := rescale_gen D.P.L _ _ t' ht'
      (Units.map (Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom.toMonoidHom ε')
    refine ⟨χt, hg, fun z J hJ => Units.ext ?_, fun z J hJ => Units.ext ?_⟩
    · rw [hv _ _ z J hJ, Units.val_mul, h1 z J hJ, gm_top_eq, unit_map_map]
    · rw [h2 z J hJ, hv _ _ z J hJ, mul_pow, Units.val_mul]
      simp only [Units.val_pow_eq_pow_val]
      rw [gm_top_eq, unit_map_map]
  choose χt hχg hχv hχc using hχ

  have hG : ∀ mu c, ∃ G : V₁, ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp V₁) (z : Z) J, Good D.P.L z J →
      gs r z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of V₁)).inv.hom G) =
        sval (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1))) (r ≫ (b c * D.c (e mu)).left) z J ^ 2 *
          (val (t c) r z J ^ 2 * val (χt mu c) r z J ^ 2 * val D.sym (r ≫ (D.c (e mu)).left) z J *
            (val (τ₀ (e mu) (-e mu)) r z J)⁻¹ * (rigV D r z J ^ 2)⁻¹).val := fun mu c =>
    _root_.GlobalTheory.IntPointFnSq.fn_of_theta_sq V₁ D θ (b c) (e mu) (t c) (htg c) (χt mu c) (hχg mu c) (τ₀ (e mu) (-e mu)) (hτ _ _).1
  choose G hGv using hG
  have hk := fun mu => _root_.GlobalTheory.PsiSqGeneric.main V₁ D hPE hψ0 τ₀ _ _ _ hτ (e mu)
  choose k hkv hkψ using hk
  obtain ⟨z⟩ := exists_pt (R := V₁) (F := FractionRing V₁)
  obtain ⟨J, hJ⟩ := exists_good' D.P.isLB z
  have key : ∀ mu c, algebraMap V₁ (FractionRing V₁) (u mu c * mo mu) ^ 2 =
      lam ^ 2 * (k mu : FractionRing V₁) * algebraMap V₁ (FractionRing V₁) (G mu c) := by
    intro mu c
    have E1 := _root_.GlobalTheory.UT.CoefInt.coef_int V₁ D θ lam th hlam hψ0 (e mu) (g c) (b c) (hgb c) (w c) _ (hcoef mu c) z J hJ
    have E2 := hkψ mu z J hJ
    have E3 := hGv mu c _ (toUnit (TF (R := V₁) (FractionRing V₁))).left z J hJ
    rw [gs_top, htv c z J hJ, hχv mu c z J hJ] at E3
    simp only [Units.val_mul, Units.val_pow_eq_pow_val] at E2 E3
    apply cst_inj z
    rw [cst_eq] at E2 E3
    rw [cst_eq, cst_eq] at E1
    rw [cst_eq, cst_eq, map_pow (cstH z), E1, map_mul (cstH z), map_mul (cstH z), map_pow (cstH z), E3,
      mul_pow, mul_pow, mul_pow, mul_pow, E2]
    ring

  have hinj := IsFractionRing.injective V₁ (FractionRing V₁)
  have hsplit : ∀ mu, (k mu : FractionRing V₁) =
      (∏ j, algebraMap V₁ (FractionRing V₁) (s (.inl j)) ^ ε (.inl j) (e mu) (e mu)) *
      ∏ j, algebraMap V₁ (FractionRing V₁) (s (.inr j)) ^ ε (.inr j) (e mu) (e mu) := by
    intro mu
    rw [hkv mu, ← Fintype.prod_sum_type (fun j => algebraMap V₁ (FractionRing V₁) (s j) ^ ε j (e mu) (e mu))]
    exact Fintype.prod_equiv finSumFinEquiv.symm _ _ (fun _ => rfl)
  have hk0 : (k 0 : FractionRing V₁) = 1 := by
    rw [hkv]; simp
  have hl0 : lam ^ 2 * algebraMap V₁ (FractionRing V₁) (G 0 c₀) = 1 := by
    have := key 0 c₀
    rw [hc₀, map_one, one_pow, hk0, _root_.mul_one] at this
    exact this.symm
  obtain ⟨c₁, hc₁⟩ := _root_.GlobalTheory.Poinc.Sep.CoefInt.isUnit_of_theta_sq N₁ hN₁ V₁ hV hunit D θ hθ C b hcov
  have hb1 : b c₁ * D.c (e 0) = b c₁ := by rw [map_zero, ThetaOne.c_zero, _root_.mul_one]
  have hG1 : IsUnit (G 0 c₁) := hc₁ (G 0 c₁) (fun Z r z J => val (t c₁) r z J ^ 2 * val (χt 0 c₁) r z J ^ 2 *
      val D.sym (r ≫ (D.c (e 0)).left) z J * (val (τ₀ (e 0) (-e 0)) r z J)⁻¹ * (rigV D r z J ^ 2)⁻¹)
    (fun Z r z J hJ => by rw [hGv 0 c₁ Z r z J hJ, hb1])
  have hs₀u : IsUnit (G 0 c₀) := by
    have k1 := key 0 c₁
    rw [hk0, _root_.mul_one] at k1
    refine IsUnit.of_mul_eq_one ((u 0 c₁ * mo 0) ^ 2 * ↑hG1.unit⁻¹) (hinj ?_)
    rw [map_mul, map_mul, map_one, map_pow, k1]
    have hGne : algebraMap V₁ (FractionRing V₁) (G 0 c₁) * algebraMap V₁ (FractionRing V₁) ↑hG1.unit⁻¹ = 1 := by
      rw [← map_mul, IsUnit.mul_val_inv, map_one]
    linear_combination (algebraMap V₁ (FractionRing V₁) (G 0 c₀) * lam ^ 2) * hGne + hl0
  have hP : ∀ mu, algebraMap V₁ (FractionRing V₁) ((∏ k, (hs k).unit ^ ε (.inr k) (e mu) (e mu) : V₁ˣ) : V₁) =
      ∏ k, algebraMap V₁ (FractionRing V₁) (s (.inr k)) ^ ε (.inr k) (e mu) (e mu) := by
    intro mu
    rw [Units.coe_prod, map_prod]
    refine Finset.prod_congr rfl fun k _ => ?_
    change (((Units.map (algebraMap V₁ (FractionRing V₁)).toMonoidHom ((hs k).unit ^ ε (.inr k) (e mu) (e mu)) :
      (FractionRing V₁)ˣ)) : FractionRing V₁) = _
    rw [map_zpow, Units.val_zpow_eq_zpow_val, Units.coe_map, IsUnit.unit_spec]
    rfl
  refine ⟨θ, b, t, χt, G 0 c₀, G, hθ, hbN, fun c => ⟨htg c, fun κ hκ Z r z' J' hJ' => ?_⟩,
    fun mu c => ⟨hχg mu c, fun T z' J' hJ' =>
      _root_.GlobalTheory.Poinc.Sep.CubInt.cubProd_of_generic V₁ D N₁ (b c) (D.c (e mu)) (hbN c) (χt mu c) (hχg mu c) (hχc mu c) T z' J' hJ'⟩,
    hs₀u, fun mu c => ?_, hGv⟩
  · refine _root_.GlobalTheory.Poinc.Sep.FrameInt.kap_of_generic V₁ D N₁ (b c) (hbN c) (t c) (htg c) κ hκ (fun y I hI => ?_) Z r z' J' hJ'
    rw [htv c y I hI]
    have := (hw c).2 κ hκ y I hI
    rwa [show (g c).b.left = (toUnit (TF (R := V₁) (FractionRing V₁))).left ≫ (b c).left from
      congrArg (fun q => q.left) (hgb c)] at this
  · apply hinj
    have km := key mu c
    rw [hsplit, map_mul, mul_pow, ← hmo2 mu] at km
    have hmo0 : algebraMap V₁ (FractionRing V₁) (mo mu) ^ 2 ≠ 0 :=
      pow_ne_zero _ ((map_ne_zero_iff _ hinj).2 (hmo mu).1)
    have h3 : algebraMap V₁ (FractionRing V₁) (u mu c) ^ 2 =
        lam ^ 2 * (∏ j, algebraMap V₁ (FractionRing V₁) (s (.inr j)) ^ ε (.inr j) (e mu) (e mu)) *
          algebraMap V₁ (FractionRing V₁) (G mu c) :=
      mul_left_cancel₀ hmo0 (by linear_combination km)
    rw [map_mul, map_mul, map_pow, hP, h3]
    linear_combination ((∏ j, algebraMap V₁ (FractionRing V₁) (s (.inr j)) ^ ε (.inr j) (e mu) (e mu)) *
      algebraMap V₁ (FractionRing V₁) (G mu c)) * hl0

end GlobalTheory.Poinc.Sep.CoefInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralSquaredThetaTermsTorusCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfield =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfield", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralExpressionValuesAtDescendedPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralSquaredThetaTermsTorusCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep
open GlobalTheory.Poinc.ThetaOne GlobalTheory.Poinc.Sep GlobalTheory.UT GlobalTheory.FieldBaseChange

namespace GlobalTheory.USep.Coef

theorem ev_units_zpow {V K : Type} [CommRing V] [Field K] (f : V →+* K) (v : Vˣ) (n : ℤ) :
    f ((v ^ n : Vˣ) : V) = f v ^ n := by
  have h1 : f ((v ^ n : Vˣ) : V) = ((Units.map f.toMonoidHom (v ^ n) : Kˣ) : K) := rfl
  rw [h1, map_zpow, Units.val_zpow_eq_zpow_val]
  rfl

theorem coef_sq_mem_monomial : ∀ (N₁ : ℕ), 2 ≤ N₁ → ∀ (V₁ : Type) [CommRing V₁] [IsDomain V₁] [IsLocalRing V₁], IsCN V₁ → (∀ m : ℕ, m ≠ 0 → IsUnit (m : V₁)) → ∀ (D : DegPre V₁), D.PsiEven → D.TauBimult → ∀ (X C : Type) [AddCommGroup X] (e : X ≃+ D.X) (u : X → C → V₁) (mo : X → V₁), (∀ mu, mo mu ≠ 0 ∧ ∃ c, IsUnit (u mu c)) → GlobalTheory.Poinc.Sep.IsThetaTerms D N₁ e (fun mu c => u mu c * mo mu) → ∀ (K : Type) [Field K] [IsAlgClosed K] (ev : V₁ →+* K) (k₀ : Subfield K), IsAlgClosed k₀ → ∀ (τ₀ : GlobalTheory.UChart.Gens D) (m N : ℕ) (s : Fin m ⊕ Fin N → V₁) (ε : Fin m ⊕ Fin N → LinearMap.BilinForm ℤ D.X), (∀ k, IsUnit (s (.inr k))) → GlobalTheory.UChart.TauIn D τ₀ (fun k => s (finSumFinEquiv.symm k)) (fun k => ε (finSumFinEquiv.symm k)) → (∀ mu, algebraMap V₁ (FractionRing V₁) (mo mu) ^ 2 = ∏ k, algebraMap V₁ (FractionRing V₁) (s (.inl k)) ^ ε (.inl k) (e mu) (e mu)) → ∀ (W₀ : Type) [CommRing W₀] (ib : W₀ →+* V₁), GlobalTheory.UChart.FromBase D τ₀ ib → (∀ a, ev (ib a) ∈ k₀) → ∀ mu c, ∃ r ∈ k₀, ev (u mu c) ^ 2 = r * ∏ k, ev (s (.inr k)) ^ ε (.inr k) (e mu) (e mu) := by
  intro N₁ hN V₁ _ _ _ hV hunit D hpe htb X C _ e u mo hmo hT K _ _ ev k₀ hk₀ τ₀ m N s ε hs hτ hmo2 W₀ _ ib hB hib mu c
  obtain ⟨θ, b, t, χt, s₀, G, hθ, hb, ht, hχt, hs₀, hG, hGf⟩ :=
    _root_.GlobalTheory.Poinc.Sep.CoefInt.integral_sq_terms N₁ hN V₁ hV hunit D hpe htb X C e u mo hmo hT τ₀ m N s ε hs hτ hmo2
  obtain ⟨Λ, hΛ⟩ := GlobalTheory.USep.EvG.ev_values N₁ hN V₁ hV hunit D X C e τ₀ θ hθ b hb t ht χt hχt G hGf K ev k₀ hk₀ W₀ ib hB hib
  obtain ⟨-, -, -, -, -, -, -, -, -, c₀, hc₀⟩ := hT
  have hc₀' : u 0 c₀ * mo 0 = 1 := hc₀
  have hm0 : mo 0 ^ 2 = 1 := by
    have h := hmo2 0
    simp only [map_zero, zpow_zero, Finset.prod_const_one] at h
    exact IsFractionRing.injective V₁ (FractionRing V₁) (by simpa using h)
  have hu0 : u 0 c₀ ^ 2 = 1 := by
    have h := congrArg (· ^ 2) hc₀'
    simpa only [mul_pow, hm0, _root_.mul_one, one_pow] using h
  have hP0 : ((∏ k, (hs k).unit ^ ε (.inr k) (e 0) (e 0) : V₁ˣ) : V₁) = 1 := by
    simp only [map_zero, zpow_zero, Finset.prod_const_one, Units.val_one]
  have h0 : s₀ = G 0 c₀ := by
    have h := hG 0 c₀
    rw [hu0, _root_.one_mul, hP0, _root_.one_mul] at h
    exact h
  obtain ⟨r₀, hr₀, e₀⟩ := hΛ 0 c₀
  obtain ⟨r, hr, e₁⟩ := hΛ mu c
  have hev0 : ev s₀ ≠ 0 := (hs₀.map ev).ne_zero
  have hΛr₀ : Λ * r₀ ≠ 0 := by rw [← e₀, ← h0]; exact hev0
  have hr₀0 : r₀ ≠ 0 := right_ne_zero_of_mul hΛr₀
  have hΛ0 : Λ ≠ 0 := left_ne_zero_of_mul hΛr₀
  refine ⟨r / r₀, k₀.div_mem hr hr₀, ?_⟩
  have h := congrArg ev (hG mu c)
  rw [map_mul, map_mul, map_pow, e₁, h0, e₀, Units.coe_prod, map_prod] at h
  simp only [ev_units_zpow, IsUnit.unit_spec] at h
  field_simp
  apply mul_left_cancel₀ hΛ0
  linear_combination h

end GlobalTheory.USep.Coef
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfield =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfieldStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfieldStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FromBaseAlt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfield\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepAtBIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.UPoinc GlobalTheory.TorRef
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory GlobalTheory.USep

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTermCoefficientSqEqMonomialSubfieldStatement =====
