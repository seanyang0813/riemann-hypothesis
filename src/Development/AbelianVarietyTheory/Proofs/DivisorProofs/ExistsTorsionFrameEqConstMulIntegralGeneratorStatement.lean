module

public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionFramePowEqIntegralGenerator
public import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ProdSumReindex
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.GtPtsVal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsTheta
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndepende
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.UniversalNormalisedMulByNatPullbackIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ThickenedPointToTorusExtensionGenerator
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGenMulPullPowUnif
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ValueAtOrigin
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneCon, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneConStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndependeStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGenerator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGeneratorStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneCon =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneCon", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionFramePowEqIntegralGenerator\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ProdSumReindex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.GtPtsVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

namespace GlobalTheory.GenericMove

theorem move_one_const : ∀ (V : Type) [CommRing V] [IsDomain V] (I : Ideal V) (D : DegData V I) (A : PolAV (Sp (FractionRing V))) (G : Over (Sp V)) [GrpObj G] [IsCommMonObj G] (U : UnifPre I D A G) (w₀ : W0 U), w₀.IsGen → ∀ (N : ℕ) (α : LB.Gen (LB.LinComb A.L (K := Fin 2) ![𝟙 A.A.left, (mulA A.A N).left] ![(N : ℤ) ^ 2, -1])), α.IsGen → ∀ (β : LB.Gen (LB.LinComb U.LG.L (K := Fin 2) ![𝟙 G.left, (mulA G N).left] ![(N : ℤ) ^ 2, -1])), β.IsGen → ∃ c : FractionRing V, c ≠ 0 ∧ ∀ (r : (TF (R := V) (FractionRing V)).left ⟶ ((Over.pullback (jK V)).obj G).left), r ≫ ((Over.pullback (jK V)).obj G).hom = 𝟙 _ → ∀ (z : (TF (R := V) (FractionRing V)).left) (JA : ((TF (R := V) (FractionRing V)).left ⟶ A.A.left) → A.L.ι) (JG : ((TF (R := V) (FractionRing V)).left ⟶ G.left) → U.LG.L.ι), Good A.L z JA → Good U.LG.L z JG → (val β (r ≫ pullback.fst G.hom (jK V)) z JG).val = GlobalTheory.UT.cst (FractionRing V) z c * (GlobalTheory.TorsFrameInt.wv w₀ r z JG JA ^ ((N : ℤ) ^ 2) * (GlobalTheory.TorsFrameInt.wv w₀ (r ≫ (mulA ((Over.pullback (jK V)).obj G) N).left) z JG JA)⁻¹ * val α (r ≫ U.gen.hom.left) z JA).val := by
  intro V _ _ I D A G _ _ U w₀ hw₀ N α hα β hβ
  haveI := U.gen_hom
  have h₁ : ∀ k : Fin 2, (![𝟙 ((Over.pullback (jK V)).obj G).left,
      (mulA ((Over.pullback (jK V)).obj G) N).left] : Fin 2 → _) k ≫ pullback.fst G.hom (jK V) =
      pullback.fst G.hom (jK V) ≫ (![𝟙 G.left, (mulA G N).left] : Fin 2 → _) k := fun k => by
    fin_cases k
    · exact (Category.id_comp _).trans (Category.comp_id _).symm
    · exact GlobalTheory.TorsFrameInt.mulA_comm (isGrpPullback_pullback G (jK V)) N
  have hmA : mulA ((Over.pullback (jK V)).obj G) N ≫ U.gen.hom = U.gen.hom ≫ mulA A.A N := by
    rw [mulA, mulA, MonObj.pow_comp, MonObj.comp_pow, Category.id_comp, Category.comp_id]
  have h₂ : ∀ k : Fin 2, (![𝟙 ((Over.pullback (jK V)).obj G).left,
      (mulA ((Over.pullback (jK V)).obj G) N).left] : Fin 2 → _) k ≫ U.gen.hom.left =
      U.gen.hom.left ≫ (![𝟙 A.A.left, (mulA A.A N).left] : Fin 2 → _) k := fun k => by
    fin_cases k
    · exact (Category.id_comp _).trans (Category.comp_id _).symm
    · exact congrArg (fun q => q.left) hmA
  obtain ⟨a, ha, hav⟩ := GlobalTheory.TorsFrameInt.exists_move U.LG.isLB A.isLB w₀ hw₀ _ _ _ ![(N : ℤ) ^ 2, -1] h₁ h₂ β hβ
  obtain ⟨ρ, hρ⟩ := exists_ratio A.isLB rfl a (LB.pullGen A.L _ _ α U.gen.hom.left) ha
    (pullGen_isGen _ _ _ _ hα _)
  obtain ⟨c, hc0, hc⟩ := GlobalTheory.BoxExpansion.unit_const GlobalTheory.abelianSchemeLaws_all.1.globalFns A U.gen ρ
  refine ⟨c, hc0, fun r hr z JA JG hJA hJG => ?_⟩
  have hg : (gm r z ⊤ ρ).val = GlobalTheory.UT.cst (FractionRing V) z c := by
    rw [← gs_unit r z ⊤ trivial ρ, hc]
    exact (gs_pull r ((Over.pullback (jK V)).obj G).hom z ⊤ trivial _).trans (by rw [hr]; rfl)
  have e := hav _ r z JG JA hJG hJA
  rw [Fin.prod_univ_two] at e
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Category.comp_id] at e
  rw [e, hρ _ r z JA hJA, val_pull hJA, zpow_neg_one, mul_left_comm, Units.val_mul, hg]

end GlobalTheory.GenericMove
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneCon =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneConStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneConStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionFramePowEqIntegralGenerator\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.TXFrame\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneCon\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneConStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndependeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndependeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndepende\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndependeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGenerator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGenerator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.UniversalNormalisedMulByNatPullbackIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDominantToUnitLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedMulIsoUniformisationGenericFibreOneConStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedFrameRatioIntegralFrameChartIndependeStatement\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ThickenedPointToTorusExtensionGenerator\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGenMulPullPowUnif\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ValueAtOrigin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.TorsionFramePowEqIntegralGenerator\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

set_option backward.isDefEq.respectTransparency false

namespace GlobalTheory.Poinc.IntTerm.FrameInt

open GlobalTheory.UT.CoefBasic GlobalTheory.Poinc.Sep.Frames

variable {V : Type} [CommRing V] [IsDomain V]

theorem unit_ratio {X : Scheme.{0}} {L : LB X} (hL : L.IsLB) {K K' : Type} [Fintype K] [Fintype K']
    {φ : K → ((𝟙_ (Over (Sp V))).left ⟶ X)} {ε : K → ℤ} {φ' : K' → ((𝟙_ (Over (Sp V))).left ⟶ X)} {ε' : K' → ℤ}
    (h : FormEq φ ε φ' ε') {t : LB.Gen (LB.LinComb L φ ε)} {t' : LB.Gen (LB.LinComb L φ' ε')} (ht : t.IsGen)
    (ht' : t'.IsGen) :
    ∃ u : Vˣ, ∀ z J, Good L z J → (val t (toUnit (TF (R := V) (FractionRing V))).left z J).val =
      UT.cst (FractionRing V) z (algebraMap V (FractionRing V) u) *
        (val t' (toUnit (TF (R := V) (FractionRing V))).left z J).val := by
  obtain ⟨a, ha⟩ := GlobalTheory.TorusCoord.exists_ratio hL h t ht t' ht'
  exact ⟨_, fun z J hJ => by rw [ha _ _ z J hJ, Units.val_mul, gm_top_eq]⟩

theorem val_rigPow {S Z : Scheme.{0}} {G : Over S} [GrpObj G] (L : LB G.left) (rig : LB.Gen (L.pull (eSec G))) (k : ℤ)
    (r : Z ⟶ S) (z : Z) (J : (Z ⟶ G.left) → L.ι) : val (rigPow G L rig k) r z J = val rig r z J ^ k :=
  map_zpow _ _ _

theorem unit_origin (G : Over (Sp V)) [GrpObj G] (M : RigLB G) (N : ℕ)
    (β : LB.Gen (LB.LinComb M.L (K := Fin 2) ![𝟙 G.left, (mulA G N).left] ![(N : ℤ) ^ 2, -1])) (hβ : β.IsGen) :
    ∃ u : Vˣ, ∀ z J, Good M.L z J →
      (val β ((toUnit (TF (R := V) (FractionRing V))).left ≫ eSec G) z J).val =
        UT.cst (FractionRing V) z (algebraMap V (FractionRing V) u) *
          (val M.rig (toUnit (TF (R := V) (FractionRing V))).left z J ^ ((N : ℤ) ^ 2 - 1)).val := by
  have e₀ : eSec G ≫ (mulA G N).left = eSec G := GlobalTheory.TorsFrameInt.one_mulA N
  obtain ⟨u, hu⟩ := unit_ratio (V := V) M.isLB (t := LB.pullGen M.L _ _ β (eSec G))
    (t' := rigPow G M.L M.rig ((N : ℤ) ^ 2 - 1)) (fun U _ h => by
      rw [Fin.prod_univ_two, Fintype.prod_unique]
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons, Category.comp_id, e₀]
      rw [← zpow_add]; congr 1)
    (pullGen_isGen _ _ _ _ hβ _) (GlobalTheory.NormMulUniv.rigPow_isGen M.rigGen _)
  refine ⟨u, fun z J hJ => ?_⟩
  rw [← val_pull hJ, hu z J hJ, val_rigPow]

theorem unit_at (G : Over (Sp V)) [GrpObj G] (M : RigLB G) (N : ℕ)
    (β : LB.Gen (LB.LinComb M.L (K := Fin 2) ![𝟙 G.left, (mulA G N).left] ![(N : ℤ) ^ 2, -1])) (hβ : β.IsGen)
    (h : 𝟙_ (Over (Sp V)) ⟶ G) (hN : h ^ N = 1)
    (f₀ : LB.Gen (LB.LinComb M.L (K := Fin 1) (fun _ => h.left) (fun _ => 1))) (hf₀ : f₀.IsGen) :
    ∃ u : Vˣ, ∀ z J, Good M.L z J →
      (val β ((toUnit (TF (R := V) (FractionRing V))).left ≫ h.left) z J *
          val M.rig (toUnit (TF (R := V) (FractionRing V))).left z J).val =
        UT.cst (FractionRing V) z (algebraMap V (FractionRing V) u) *
          (val f₀ (toUnit (TF (R := V) (FractionRing V))).left z J ^ (N ^ 2)).val := by
  have e₀ : h.left ≫ (mulA G N).left = eSec G := by
    rw [GlobalTheory.TorsFrameInt.left_mulA, hN, GlobalTheory.TorsFrameInt.one_left]; exact Category.id_comp _
  obtain ⟨u, hu⟩ := unit_ratio (V := V) M.isLB
    (t := LB.mulGen M.L _ _ _ _ (LB.pullGen M.L _ _ β h.left) M.rig)
    (t' := GeneratorPullback.powGen M.L _ _ f₀ (N ^ 2)) (fun U _ H => by
      rw [Fintype.prod_sum_type, Fin.prod_univ_two, Fintype.prod_unique, Fintype.prod_unique]
      simp only [Sum.elim_inl, Sum.elim_inr, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
        Category.comp_id, e₀]
      rw [zpow_neg_one, zpow_one, inv_mul_cancel_right]
      push_cast; ring_nf)
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (pullGen_isGen _ _ _ _ hβ _) M.rigGen) (powGen_isGen _ _ _ _ hf₀ _)
  refine ⟨u, fun z J hJ => ?_⟩
  have := hu z J hJ
  rw [val_mul hJ, val_pull hJ] at this
  rw [this]
  congr 2
  exact map_pow _ _ _

theorem frame_values' {S : Scheme.{0}} (P : PolAV S) {rig : LB.Gen (P.L.pull (eSec P.A))} {n : ℕ} {T : Over S}
    {x : T ⟶ P.A} {τ : LB.Gen (LB.LinComb P.L (Y := T.left) (K := Fin 1) (fun _ => x.left) (fun _ => 1))}
    (H : IsTorsFrame P rig n x τ) :
    ∃ α : LB.Gen (LB.LinComb P.L (K := Fin 2) ![𝟙 P.A.left, (mulA P.A n).left] ![(n : ℤ) ^ 2, -1]), α.IsGen ∧
      (∀ (Z : Scheme.{0}) (t : Z ⟶ S) (y : Z) J, Good P.L y J →
        val α (t ≫ eSec P.A) y J = val rig t y J ^ ((n : ℤ) ^ 2) * (val rig t y J)⁻¹) ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ T.left) (y : Z) J, Good P.L y J →
        val τ r y J ^ ((n : ℤ) ^ 2) = val α (r ≫ x.left) y J * val rig (r ≫ T.hom) y J := by
  obtain ⟨-, -, α, hα, hn, hc⟩ := H
  refine ⟨α, hα, fun Z t y J hJ => ?_, fun Z r y J hJ => ?_⟩
  · have q := val_corr hJ hn t
    rw [val_pull hJ, val_mul hJ, val_inv] at q
    exact q.trans (congrArg (· * _) (map_zpow _ _ _))
  · have q := val_corr hJ hc r
    rw [val_mul hJ, val_pull hJ] at q
    refine Eq.trans (map_zpow _ _ _).symm (q.trans (congrArg (_ * ·) ?_))
    have hy := hJ.mem (fun _ : Fin 1 => T.hom ≫ eSec P.A) r
    refine (map_zpow _ _ _).trans ((zpow_one _).trans ((gm_res _ y _ hy _).trans ?_))
    refine (gm_pull r T.hom y (LB.wchart P.L (fun _ : PUnit => eSec P.A) (fun _ => J (r ≫ T.hom ≫ eSec P.A)))
      (rigT_le P.A P.L _ hy) _).trans ?_
    exact (val_of rig (r ≫ T.hom) y J _ (fun _ => by rw [Category.assoc])).symm

theorem key_alg {M : Type} [CommGroup M] (n : ℤ) (B0 Bx Cc W0 Wx α0 αx R E Cu0 Cu1 g F Cl : M)
    (a₁ : B0 = Cc * (W0 ^ n * W0⁻¹ * α0)) (a₂ : Bx = Cc * (Wx ^ n * W0⁻¹ * αx)) (a₃ : α0 = R ^ n * R⁻¹)
    (a₄ : E ^ n = αx * R) (a₅ : B0 = Cu0 * g ^ (n - 1)) (a₆ : Bx * g = Cu1 * F ^ n) (a₇ : Cl = W0 * R * g⁻¹) :
    (Wx * E) ^ n = (Cl * F) ^ n * (Cu1 * Cu0⁻¹) := by
  apply Additive.ofMul.injective
  replace a₁ := congrArg Additive.ofMul a₁
  replace a₂ := congrArg Additive.ofMul a₂
  replace a₃ := congrArg Additive.ofMul a₃
  replace a₄ := congrArg Additive.ofMul a₄
  replace a₅ := congrArg Additive.ofMul a₅
  replace a₆ := congrArg Additive.ofMul a₆
  replace a₇ := congrArg Additive.ofMul a₇
  simp only [ofMul_mul, ofMul_inv, ofMul_zpow] at a₁ a₂ a₃ a₄ a₅ a₆ a₇ ⊢
  linear_combination (norm := module) -a₂ + a₄ + a₆ - n • a₇ + a₁ + a₃ - a₅

theorem exists_frRel : ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V], IsCN V → ∀ (D : DegData V (maximalIdeal V)) (A : PolAV (Sp (FractionRing V))) (G : Over (Sp V)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal V) D A G) (w₀ : W0 U.toUnifPre), w₀.IsGen → ∀ (ρ : LB.Gen (A.L.pull (eSec A.A))), ρ.IsGen → ∀ N : ℕ, 1 ≤ N → ∃ l : FractionRing V, l ≠ 0 ∧ ∀ (x : TFK (R := V) (FractionRing V) ⟶ A.A) (e : FrAt x) (h : 𝟙_ (Over (Sp V)) ⟶ G), IsTorsFrame A ρ N x e → h ^ N = 1 → IntTerm.Ext U.toUnifPre x h → IntTerm.FrRel U.toUnifPre w₀ x e h l := by
  intro V _ _ _ hV D A G _ _ hG U w₀ hw₀ ρ hρ N hN
  have hIC : IsIntegrallyClosed V := hV.2.1
  have := U.gen_hom
  let GK := (Over.pullback (jK V)).obj G
  let eK : (TF (R := V) (FractionRing V)).left ⟶ GK.left := eSec GK
  have e₁ : eK ≫ U.gen.hom.left = eSec A.A := EvalZero.eK_gen U.toUnifPre
  have e₂ : eK ≫ pullback.fst G.hom (jK V) = jK V ≫ eSec G := EvalZero.eK_fst
  have e₃ : eK ≫ GK.hom = 𝟙 _ := Over.w η[GK]
  have e₄ : eK ≫ (mulA GK N).left = eK := GlobalTheory.TorsFrameInt.one_mulA N
  have jid : jFK (R := V) (FractionRing V) = 𝟙 _ := Spec.map_id _
  have tU : (toUnit (TF (R := V) (FractionRing V))).left = jK V := by
    show jFK (R := V) (FractionRing V) ≫ jK V = _
    rw [jid, Category.id_comp]
  obtain ⟨β, hβ⟩ := GlobalTheory.UT.exists_gen_mulPull_pow_unif V _ D A G U.toUnifPre N 1 (N ^ 2) (by ring)
  let β' : LB.Gen (LB.LinComb U.LG.L (K := Fin 2) ![𝟙 G.left, (mulA G N).left] ![(N : ℤ) ^ 2, -1]) := β
  have hβ' : β'.IsGen := hβ
  obtain ⟨z₀⟩ := exists_pt (R := V) (F := FractionRing V)
  obtain ⟨JA₀, hA₀⟩ := exists_good' A.isLB z₀
  obtain ⟨JG₀, hG₀⟩ := exists_good' U.LG.isLB z₀
  let W₀ := GlobalTheory.TorsFrameInt.wv w₀ eK z₀ JG₀ JA₀
  let R₀ := val (L := A.L) (φ := fun _ : PUnit => eSec A.A) (ε := fun _ => 1) ρ (𝟙 (TF (R := V) (FractionRing V)).left) z₀ JA₀
  let g₀ := val (L := U.LG.L) (φ := fun _ : PUnit => eSec G) (ε := fun _ => 1) U.LG.rig
    (toUnit (TF (R := V) (FractionRing V))).left z₀ JG₀
  obtain ⟨l, hl⟩ := cstH_surj z₀ (W₀ * R₀ * g₀⁻¹).val
  have hl0 : l ≠ 0 := fun h0 => by
    rw [h0, map_zero] at hl
    exact Units.ne_zero _ hl.symm
  refine ⟨l, hl0, fun x e h hx hh hext => ?_⟩

  obtain ⟨α, hα, hα₀, hαx⟩ := frame_values' A hx
  obtain ⟨c, hc0, hc⟩ := _root_.GlobalTheory.GenericMove.move_one_const V _ D A G U.toUnifPre w₀ hw₀ N α hα β' hβ'
  obtain ⟨u₀, hu₀⟩ := unit_origin (V := V) G U.LG N β' hβ'
  obtain ⟨i, hi⟩ := exists_chart U.LG.isLB (h.left (cpt V))
  obtain ⟨f₀, hf₀⟩ := GlobalTheory.TorsFrameInt.exists_gen_of_chart U.LG.isLB (K := Fin 1) (fun _ => h.left) (fun _ => 1)
    (fun _ => i) (fun y => Set.mem_iInter.2 fun _ => (top_le_iff_cpt (A := V) h.left _).2 hi (show y ∈ ⊤ from trivial))
  obtain ⟨u₁, hu₁⟩ := unit_at (V := V) G U.LG N β' hβ' h hh f₀ hf₀
  let x' : (TF (R := V) (FractionRing V)).left ⟶ GK.left := x.left ≫ U.gen.inv.left
  have x₁ : x' ≫ U.gen.hom.left = x.left := by
    show (x.left ≫ U.gen.inv.left) ≫ U.gen.hom.left = _
    rw [Category.assoc, ← Over.comp_left, U.gen.inv_hom_id]
    exact Category.comp_id _
  have x₂ : x' ≫ pullback.fst G.hom (jK V) = (toUnit (TF (R := V) (FractionRing V))).left ≫ h.left := hext
  have x₃ : x' ≫ GK.hom = 𝟙 _ := by
    show (x.left ≫ U.gen.inv.left) ≫ GK.hom = _
    rw [Category.assoc, Over.w U.gen.inv, Over.w x]
    exact jid
  have x₄ : x' ≫ (mulA GK N).left = eK := by
    have hmul : (mulA GK N) ≫ U.gen.hom = U.gen.hom ≫ mulA A.A N := by
      show (𝟙 GK ^ N) ≫ U.gen.hom = U.gen.hom ≫ 𝟙 A.A ^ N
      rw [MonObj.pow_comp, MonObj.comp_pow, Category.id_comp, Category.comp_id]
    refine (cancel_mono U.gen.hom.left).1 ?_
    rw [e₁, Category.assoc, ← Over.comp_left, hmul, Over.comp_left, ← Category.assoc, x₁, GlobalTheory.TorsFrameInt.left_mulA,
      hx.1, GlobalTheory.TorsFrameInt.one_left]
    show jFK (R := V) (FractionRing V) ≫ _ = _
    rw [jid, Category.id_comp]
    rfl

  have hT : (TFK (R := V) (FractionRing V)).hom = 𝟙 _ := jid
  have e₂' : eK ≫ pullback.fst G.hom (jK V) = (toUnit (TF (R := V) (FractionRing V))).left ≫ eSec G := by
    rw [e₂, tU]
  have ha := hc eK e₃ z₀ JA₀ JG₀ hA₀ hG₀
  rw [e₄, e₁, e₂'] at ha
  have hb := hc x' x₃ z₀ JA₀ JG₀ hA₀ hG₀
  rw [x₄, x₁, x₂] at hb
  have h3 := hα₀ _ (𝟙 (TF (R := V) (FractionRing V)).left) z₀ JA₀ hA₀
  rw [Category.id_comp] at h3
  have h4 := hαx _ (𝟙 (TF (R := V) (FractionRing V)).left) z₀ JA₀ hA₀
  rw [Category.id_comp, Category.id_comp, hT] at h4
  have h5 := hu₀ z₀ JG₀ hG₀
  have h6 := hu₁ z₀ JG₀ hG₀
  let C : (FractionRing V)ˣ →* ((TF (R := V) (FractionRing V)).left.presheaf.stalk z₀)ˣ :=
    Units.map (cstH z₀).toMonoidHom
  have toU : ∀ (a b : ((TF (R := V) (FractionRing V)).left.presheaf.stalk z₀)ˣ) (k : (FractionRing V)ˣ),
      a.val = UT.cst (FractionRing V) z₀ k.val * b.val → a = C k * b := fun a b k hk =>
    Units.ext (by rw [hk, Units.val_mul, cst_eq]; rfl)
  let U₀ := Units.map (algebraMap V (FractionRing V)).toMonoidHom u₀
  let U₁ := Units.map (algebraMap V (FractionRing V)).toMonoidHom u₁
  have a₁ := toU _ _ (Units.mk0 c hc0) ha
  have a₂ := toU _ _ (Units.mk0 c hc0) hb
  have a₅ := toU _ _ U₀ h5
  have a₆ := toU _ _ U₁ h6
  have a₇ : C (Units.mk0 l hl0) = W₀ * R₀ * g₀⁻¹ := Units.ext hl
  rw [← zpow_natCast, Nat.cast_pow] at a₆
  have key := key_alg ((N : ℤ) ^ 2) _ _ _ _ _ _ _ _ _ _ _ _ _ _ a₁ a₂ h3 h4 a₅ a₆ a₇

  have hq : (GlobalTheory.TorsFrameInt.wv w₀ x' z₀ JG₀ JA₀ * val (Z := (TF (R := V) (FractionRing V)).left) e (𝟙 _) z₀ JA₀ *
      (C (Units.mk0 l hl0) * val f₀ (toUnit (TF (R := V) (FractionRing V))).left z₀ JG₀)⁻¹) ^ ((N : ℤ) ^ 2) =
      C U₁ * (C U₀)⁻¹ := by
    rw [mul_zpow, key, inv_zpow, mul_comm, inv_mul_cancel_left]
  obtain ⟨k, hk⟩ := cstH_surj z₀ (GlobalTheory.TorsFrameInt.wv w₀ x' z₀ JG₀ JA₀ *
    val (Z := (TF (R := V) (FractionRing V)).left) e (𝟙 _) z₀ JA₀ *
      (C (Units.mk0 l hl0) * val f₀ (toUnit (TF (R := V) (FractionRing V))).left z₀ JG₀)⁻¹).val
  have hk' : k ^ (N ^ 2) = algebraMap V (FractionRing V) ((u₁ * u₀⁻¹ : Vˣ) : V) := by
    apply cstH_inj z₀
    rw [map_pow, hk, ← Units.val_pow_eq_pow_val, ← zpow_natCast, Nat.cast_pow, hq, ← map_inv, ← map_mul, ← map_inv,
      ← map_mul]
    rfl
  obtain ⟨v, hv⟩ := exists_unit_of_pow (Nat.one_le_pow _ _ hN) hk'
  let c' : Γ(Sp V, ⊤)ˣ := Units.map (Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom.toMonoidHom v
  have hcv : Units.map (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom.toMonoidHom c' = v := Units.ext (by
    show (Scheme.ΓSpecIso (CommRingCat.of V)).hom.hom ((Scheme.ΓSpecIso (CommRingCat.of V)).inv.hom v.val) = v.val
    rw [← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply])
  let f := GlobalTheory.TorsFrameInt.scale f₀ c'
  have hvf : ∀ z J, Good U.LG.L z J → val f (toUnit (TF (R := V) (FractionRing V))).left z J =
      gm (toUnit (TF (R := V) (FractionRing V))).left z ⊤ c' * val f₀ (toUnit (TF (R := V) (FractionRing V))).left z J :=
    fun z J hJ => GlobalTheory.TorsFrameInt.gm_scale f₀ c' _ z _ (hJ.mem _ _)
  have hgc : gm (toUnit (TF (R := V) (FractionRing V))).left z₀ ⊤ c' =
      GlobalTheory.TorsFrameInt.wv w₀ x' z₀ JG₀ JA₀ * val (Z := (TF (R := V) (FractionRing V)).left) e (𝟙 _) z₀ JA₀ *
        (C (Units.mk0 l hl0) * val f₀ (toUnit (TF (R := V) (FractionRing V))).left z₀ JG₀)⁻¹ := by
    refine Units.ext ((gm_top_eq c' z₀).trans ?_)
    rw [hcv, cst_eq, ← hv, hk]
  have can : GlobalTheory.TorsFrameInt.wv w₀ x' z₀ JG₀ JA₀ * val (Z := (TF (R := V) (FractionRing V)).left) e (𝟙 _) z₀ JA₀ *
      (val f (toUnit (TF (R := V) (FractionRing V))).left z₀ JG₀)⁻¹ = C (Units.mk0 l hl0) := by
    rw [hvf z₀ JG₀ hG₀, hgc]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv]
    abel
  refine ⟨f, GlobalTheory.TorsFrameInt.scale_isGen f₀ hf₀ c', fun z JA JG hA hG => ?_⟩
  obtain rfl := pt_eq z₀ z
  have ind := _root_.GlobalTheory.Poinc.FrameIndep.frame_ratio_indep V _ D A G U.toUnifPre w₀ hw₀ x e hx.2.1 h f (GlobalTheory.TorsFrameInt.scale_isGen f₀ hf₀ c') hext
    z₀ JA JA₀ JG JG₀ hA hG hA₀ hG₀
  have w₁ : GlobalTheory.TorsFrameInt.wv w₀ x' z₀ JG₀ JA₀ = Geo.Tor.gw (Y := (TF (R := V) (FractionRing V)).left) w₀
      (x.left ≫ U.gen.inv.left) z₀ (JG₀ (toUnit (TF (R := V) (FractionRing V)) ≫ h).left) (fun _ => JA₀ x.left) := by
    show Geo.Tor.gw w₀ x' z₀ (JG₀ (x' ≫ pullback.fst G.hom (jK V))) (fun _ => JA₀ (x' ≫ U.gen.hom.left)) = _
    rw [x₁, x₂]; rfl
  rw [← w₁, can, mul_inv_eq_iff_eq_mul] at ind
  have iv := congrArg Units.val ind
  rw [Units.val_mul, Units.val_mul] at iv
  rw [iv, cst_eq]
  rfl

end GlobalTheory.Poinc.IntTerm.FrameInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGenerator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGeneratorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGeneratorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGenerator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionFrameEqConstMulIntegralGeneratorStatement =====
