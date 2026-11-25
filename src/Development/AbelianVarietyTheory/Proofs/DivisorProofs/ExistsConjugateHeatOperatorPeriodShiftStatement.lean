module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantHeatOperatorOfSymmetricRelat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeatOperatorGluedPullbackBundlePower
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLieDeterminantLineRatioFunction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldConstFnEqZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaShiftFourierTermTranslationGaugeStatement
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.CohomologyLogDerivativeAdjointEndomorphisms
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionInvariantField
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.HolomorphicHomDetermined
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorActsOnFourierTermsStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimages, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimagesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlaps, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlapsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMulStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMulStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PresBasicOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperatorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValues, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValuesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperatorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGauge, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGaugeStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPoints, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPointsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShiftStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimages =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimages", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantHeatOperatorOfSymmetricRelat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.CohomologyLogDerivativeAdjointEndomorphisms\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

noncomputable section

namespace GlobalTheory.Heat.Gauge

theorem isWt_zero_pbT_factor {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O]
    [Module O Q.X] {oa : Q.OAct O} (Y : Ray oa) {Z : Scheme.{0}} (m₁ : Y.H.left ⟶ Z) (τ : Q.P.A.left ⟶ Z)
    (hm : m₁ = Y.q.left ≫ τ) {U : Z.Opens} (s : Γ(Z, U)) {V : Y.H.left.Opens} (hV : V ≤ m₁ ⁻¹ᵁ U) :
    IsWt Y 0 V (pbT m₁ s V) := by
  intro S _ φ z z' c a a' ha ha' h1 h2 hq hc
  have e : a' ≫ m₁ = a ≫ m₁ := by
    subst ha ha' hm
    have := congrArg CommaMorphism.left hq
    simp only [Over.comp_left] at this
    rw [← Category.assoc, this, Category.assoc]
  rw [GlobalTheory.HeatGlue.valR_pbT a' m₁ hV h2, GlobalTheory.HeatGlue.valR_pbT a m₁ hV h1, e, GlobalTheory.Heat.WtAlg.c_zero z z' c hc,
    Units.val_one, _root_.one_mul]

end GlobalTheory.Heat.Gauge


open GlobalTheory.Heat.Gauge in
theorem GlobalTheory.Heat.Gauge.gU_isWt : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (dd : Fin n → Fld Y.H.left) (D : R → R) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd D) (e : LB.Gen (LB.LinComb Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X), (∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V))) → ∀ (p : h₁.J × (Fin 2 → Q.P.L.ι)) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ GlobalTheory.Heat.Gauge.W Y.q.left h₁ p → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (GlobalTheory.Heat.Gauge.gU Y.q.left h₁ e p).val (Y.q.left ⁻¹ᵁ V)) := by
  intro R _ _ Q O _ _ _ oa Y n dd D x h₁ e β hwe p V hV
  obtain ⟨τ, hτ⟩ := trans_factor Q oa Y x
  have hW := W_le_wchart Y.q.left h₁ p
  have hm := W_le_m₁ Y.q.left h₁ p
  have key : rsT (gU Y.q.left h₁ e p).val (Y.q.left ⁻¹ᵁ V) =
      pbT ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) (Q.P.L.g (p.2 1) (h₁.j p.1)).val (Y.q.left ⁻¹ᵁ V) *
        rsT (e.s p.2).val (Y.q.left ⁻¹ᵁ V) := by
    rw [gU, Units.val_mul, GlobalTheory.KS.AdjDlog.val_res_pullU]
    erw [GlobalTheory.KS.AdjDlog.val_res hW]
    rw [GlobalTheory.KS.rsT_mul,
      GlobalTheory.KS.rsT_rsT hW hV, GlobalTheory.KS.rsT_pbT _ hm hV]
    exact mul_comm _ _
  rw [key]
  exact GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul
    (isWt_zero_pbT_factor Y _ τ hτ _ (hV.trans hm))
    (hwe p.2 V (hV.trans hW))
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimages =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimagesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimagesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimages\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.gauge_unit_has_generator_weight_on_preimages : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (dd : Fin n → Fld Y.H.left) (D : R → R) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd D) (e : LB.Gen (LB.LinComb Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X), (∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V))) → ∀ (p : h₁.J × (Fin 2 → Q.P.L.ι)) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ GlobalTheory.Heat.Gauge.W Y.q.left h₁ p → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (GlobalTheory.Heat.Gauge.gU Y.q.left h₁ e p).val (Y.q.left ⁻¹ᵁ V)) := by
  first | exact @GlobalTheory.Heat.Gauge.gU_isWt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimagesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlaps =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlaps", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeatOperatorGluedPullbackBundlePower\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.CohomologyLogDerivativeAdjointEndomorphisms\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

noncomputable section

namespace GlobalTheory.Heat.Gauge

theorem gU_transition : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), L.IsLB → e.IsGen → ∀ (p p' : h₁.J × (Fin 2 → L.ι)) (O : G.left.Opens), O ≤ GlobalTheory.Heat.Gauge.W m h₁ p ⊓ GlobalTheory.Heat.Gauge.W m h₁ p' → pbT m (L.g (p.2 0) (p'.2 0)).val O * rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p').val O = rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O * pbT m₁ (L.g (h₁.j p.1) (h₁.j p'.1)).val O := by
  intro R _ G _ _ n X m m₁ L dd D h₁ e hL he p p' O hO
  have hWp : O ≤ W m h₁ p := hO.trans inf_le_left
  have hWp' : O ≤ W m h₁ p' := hO.trans inf_le_right
  have gv : ∀ q, O ≤ W m h₁ q → rsT (gU m h₁ e q).val O =
      rsT (e.s q.2).val O * pbT m₁ (L.g (q.2 1) (h₁.j q.1)).val O := by
    intro q hq
    rw [gU, Units.val_mul, GlobalTheory.KS.rsT_mul, GlobalTheory.KS.AdjDlog.val_res_pullU m₁ (W_le_m₁ m h₁ q),
      GlobalTheory.KS.rsT_pbT m₁ (W_le_m₁ m h₁ q) hq]
    have a : rsT (res (W_le_wchart m h₁ q) (e.s q.2)).val O = rsT (e.s q.2).val O :=
      (congrArg (fun s => rsT s O) (GlobalTheory.KS.AdjDlog.val_res (W_le_wchart m h₁ q) (e.s q.2))).trans
        (GlobalTheory.KS.rsT_rsT (W_le_wchart m h₁ q) hq _)
    exact congrArg (· * _) a
  have hj : O ≤ LB.wchart L ![m, m₁] p.2 ⊓ LB.wchart L ![m, m₁] p'.2 :=
    le_inf (hWp.trans (W_le_wchart m h₁ p)) (hWp'.trans (W_le_wchart m h₁ p'))
  have hj' : O ≤ (LB.LinComb L ![m, m₁] ![1, -1]).U p.2 ⊓ (LB.LinComb L ![m, m₁] ![1, -1]).U p'.2 := hj
  have g1 : rsT (e.s p.2).val O = (res hj' ((LB.LinComb L ![m, m₁] ![1, -1]).g p.2 p'.2)).val * rsT (e.s p'.2).val O := by
    have g0 := congrArg (fun u => (res hj' u).val) (he p.2 p'.2)
    simp only [map_mul, Units.val_mul, GlobalTheory.KS.AdjDlog.res_res'] at g0
    rw [GlobalTheory.KS.AdjDlog.val_res hj']
    simpa only [GlobalTheory.KS.AdjDlog.val_res] using g0
  have le : ∀ k : Fin 2, O ≤ (![m, m₁] k) ⁻¹ᵁ (L.U (p.2 k) ⊓ L.U (p'.2 k)) := fun k =>
    le_inf ((hj.trans inf_le_left).trans (LB.wchart_le L _ _ k)) ((hj.trans inf_le_right).trans (LB.wchart_le L _ _ k))
  have ec : res hj' ((LB.LinComb L ![m, m₁] ![1, -1]).g p.2 p'.2) =
      ∏ k, res (le k) (pullU _ _ (L.g (p.2 k) (p'.2 k))) ^ (![(1 : ℤ), -1] k) := by
    refine (map_prod (res hj') _ _).trans (Finset.prod_congr rfl fun k _ => (map_zpow (res hj') _ _).trans ?_)
    exact congrArg (fun u => u ^ (![(1 : ℤ), -1] k)) (GlobalTheory.KS.AdjDlog.res_res' _ hj' _)
  have v0 : (res (le 0) (pullU (![m, m₁] 0) _ (L.g (p.2 0) (p'.2 0)))).val = pbT m (L.g (p.2 0) (p'.2 0)).val O :=
    GlobalTheory.KS.AdjDlog.val_res_pullU _ (le 0) _
  have v1 : (res (le 1) (pullU (![m, m₁] 1) _ (L.g (p.2 1) (p'.2 1)))).val = pbT m₁ (L.g (p.2 1) (p'.2 1)).val O :=
    GlobalTheory.KS.AdjDlog.val_res_pullU _ (le 1) _
  have hv : (res hj' ((LB.LinComb L ![m, m₁] ![1, -1]).g p.2 p'.2)).val * pbT m₁ (L.g (p.2 1) (p'.2 1)).val O =
      pbT m (L.g (p.2 0) (p'.2 0)).val O := by
    rw [ec, Fin.prod_univ_two, ← v0, ← v1]
    rw [show (![(1 : ℤ), -1] 0) = 1 from rfl, show (![(1 : ℤ), -1] 1) = -1 from rfl, zpow_one, zpow_neg_one,
      ← Units.val_mul, inv_mul_cancel_right]
  have m1p := hWp.trans (W_le_m₁ m h₁ p)
  have m1p' := hWp'.trans (W_le_m₁ m h₁ p')
  have coc1 := GlobalTheory.Heat.Glue.pbT_cocycle hL m₁ (p.2 1) (h₁.j p.1) (h₁.j p'.1)
    (O := O) (fun y hy => ⟨⟨(m1p hy).1, (m1p hy).2⟩, (m1p' hy).2⟩)
  have coc2 := GlobalTheory.Heat.Glue.pbT_cocycle hL m₁ (p.2 1) (p'.2 1) (h₁.j p'.1)
    (O := O) (fun y hy => ⟨⟨(m1p hy).1, (m1p' hy).1⟩, (m1p' hy).2⟩)
  rw [gv p hWp, gv p' hWp']
  linear_combination -(rsT (e.s p'.2).val O * pbT m₁ (L.g (p'.2 1) (h₁.j p'.1)).val O) * hv +
    ((res hj' ((LB.LinComb L ![m, m₁] ![1, -1]).g p.2 p'.2)).val * rsT (e.s p'.2).val O) * coc2 -
    pbT m₁ (L.g (p.2 1) (h₁.j p'.1)).val O * g1 - rsT (e.s p.2).val O * coc1

end GlobalTheory.Heat.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlaps =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlapsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlapsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlaps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

theorem _root_.GlobalTheory.T.gauge_units_transition_relation_on_overlaps : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), L.IsLB → e.IsGen → ∀ (p p' : h₁.J × (Fin 2 → L.ι)) (O : G.left.Opens), O ≤ GlobalTheory.Heat.Gauge.W m h₁ p ⊓ GlobalTheory.Heat.Gauge.W m h₁ p' → pbT m (L.g (p.2 0) (p'.2 0)).val O * rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p').val O = rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O * pbT m₁ (L.g (h₁.j p.1) (h₁.j p'.1)).val O := by
  first | exact @GlobalTheory.Heat.Gauge.gU_transition
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlapsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Heat.Gauge

theorem chart_fn_mul_gen_pow : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), L.IsLB → e.IsGen → ∀ (k : ℕ) (σ : SecM m₁ L k) (ρ : SecM m L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val) → ∀ (p : h₁.J × (Fin 2 → L.ι)), rsT (ρ.f fun _ => p.2 0) (GlobalTheory.Heat.Gauge.W m h₁ p) = (GlobalTheory.Heat.Gauge.gU m h₁ e p).val ^ k * rsT (σ.f fun _ => h₁.j p.1) (GlobalTheory.Heat.Gauge.W m h₁ p) := by
  intro R _ G _ _ n X m m₁ L dd D h₁ e hL he k σ ρ hρ p
  have le₀ : W m h₁ p ≤ LB.wchart L (K := Fin 1) (fun _ => m) (fun _ => p.2 0) :=
    fun y hy => Set.mem_iInter.2 fun _ => W_le_m m h₁ p hy
  have le₁ : W m h₁ p ≤ LB.wchart L (K := Fin 1) (fun _ => m₁) (fun _ => h₁.j p.1) :=
    fun y hy => Set.mem_iInter.2 fun _ => (W_le_m₁ m h₁ p hy).2
  refine fn_ext fun y hy => ?_
  choose J hJ using fun χ : G.left ⟶ X => exists_chart hL (χ y)
  have hJ' : Good L y J := hJ
  have hy' : (𝟙 G.left : G.left ⟶ G.left) y ∈ W m h₁ p := hy
  have e₀ : gs (𝟙 G.left) y _ (rsT (ρ.f fun _ => p.2 0) (W m h₁ p)) =
      (trF (fun _ : Fin 1 => m) (fun _ => (k : ℤ)) (𝟙 G.left) y (fun _ => p.2 0) (fun _ => J (𝟙 G.left ≫ m))).val *
        sval ρ (𝟙 G.left) y J :=
    (congrArg (gs (𝟙 G.left) y _) (GlobalTheory.KS.rsT_of_le le₀ _)).trans ((gs_res (𝟙 G.left) y le₀ hy' _).trans
      (sec_trans ρ (𝟙 G.left) y (le₀ hy) (hJ'.mem _ (𝟙 G.left))))
  have e₁ : gs (𝟙 G.left) y _ (rsT (σ.f fun _ => h₁.j p.1) (W m h₁ p)) =
      (trF (fun _ : Fin 1 => m₁) (fun _ => (k : ℤ)) (𝟙 G.left) y (fun _ => h₁.j p.1) (fun _ => J (𝟙 G.left ≫ m₁))).val *
        sval σ (𝟙 G.left) y J :=
    (congrArg (gs (𝟙 G.left) y _) (GlobalTheory.KS.rsT_of_le le₁ _)).trans ((gs_res (𝟙 G.left) y le₁ hy' _).trans
      (sec_trans σ (𝟙 G.left) y (le₁ hy) (hJ'.mem _ (𝟙 G.left))))
  have e₂ : gm (𝟙 G.left) y _ (gU m h₁ e p) =
      (trF ![m, m₁] ![1, -1] (𝟙 G.left) y p.2 (fun a => J (𝟙 G.left ≫ ![m, m₁] a)) * val e (𝟙 G.left) y J) *
        gm (𝟙 G.left ≫ m₁) y _ (L.g (p.2 1) (h₁.j p.1)) :=
    (map_mul _ _ _).trans (congrArg₂ (· * ·)
      ((gm_res (𝟙 G.left) y (W_le_wchart m h₁ p) hy' _).trans
        (gen_trans he (𝟙 G.left) y (W_le_wchart m h₁ p hy) (hJ'.mem _ (𝟙 G.left))))
      ((gm_res (𝟙 G.left) y (W_le_m₁ m h₁ p) hy' _).trans (gm_pull (𝟙 G.left) m₁ y _ (W_le_m₁ m h₁ p hy) _)))
  have e₃ : gs (𝟙 G.left) y _ ((gU m h₁ e p).val ^ k) = (gm (𝟙 G.left) y _ (gU m h₁ e p) ^ k).val := by
    rw [← Units.val_pow_eq_pow_val, gs_unit _ _ _ hy', map_pow]
  have hc := gm_cocycle hL (𝟙 G.left ≫ m₁) y (W_le_m₁ m h₁ p hy).1 (W_le_m₁ m h₁ p hy).2 (hJ (𝟙 G.left ≫ m₁))
  rw [gs_mul _ _ _ hy', e₀, e₁, e₃, e₂, hρ _ _ y J hJ', ← _root_.mul_assoc, ← _root_.mul_assoc, mul_right_comm, ← Units.val_mul,
    ← Units.val_mul]
  congr 2
  simp only [trF, Fin.prod_univ_two, Fin.prod_univ_one, Matrix.cons_val_zero, Matrix.cons_val_one, zpow_natCast,
    zpow_one, zpow_neg]
  rw [← mul_pow, ← mul_pow]
  congr 1
  rw [_root_.mul_assoc _ (gm _ _ _ (L.g (p.2 1) _)), hc]
  rw [mul_right_comm _ (val e _ y J)]
  exact congrArg (· * val e _ y J) (inv_mul_cancel_right _ _).symm

end GlobalTheory.Heat.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMulStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMulStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

theorem _root_.GlobalTheory.T.gauged_chart_function_eq_gauge_power_mul : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), L.IsLB → e.IsGen → ∀ (k : ℕ) (σ : SecM m₁ L k) (ρ : SecM m L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val) → ∀ (p : h₁.J × (Fin 2 → L.ι)), rsT (ρ.f fun _ => p.2 0) (GlobalTheory.Heat.Gauge.W m h₁ p) = (GlobalTheory.Heat.Gauge.gU m h₁ e p).val ^ k * rsT (σ.f fun _ => h₁.j p.1) (GlobalTheory.Heat.Gauge.W m h₁ p) := by
  first | exact @GlobalTheory.Heat.Gauge.chart_fn_mul_gen_pow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMulStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantHeatOperatorOfSymmetricRelat\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

namespace GlobalTheory.Heat.Gauge

open GlobalTheory.KS (rsT_mul rsT_one rsT_sum rsT_sub rsT_add rsT_constFn rsT_rsT)
open GlobalTheory.HeatGlue (IsDer isDer_of_isField field_rsT ringOp_conj)

theorem op_gauged : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), (∀ a, IsField ⊤ (dd a)) → ∀ (c : R), 2 * c = 1 → ∀ (p : h₁.J × (Fin 2 → L.ι)) (k : ℕ) (O : G.left.Opens), O ≤ GlobalTheory.Heat.Gauge.W m h₁ p → ∀ (f : Γ(G.left, O)), op G dd h₁.Θ h₁.u (GlobalTheory.Heat.Gauge.gD m h₁ e p) (GlobalTheory.Heat.Gauge.gP m h₁ e c p) (GlobalTheory.Heat.Gauge.gP' m h₁ e c p) k O (rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O ^ k * f) = rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O ^ k * op G dd h₁.Θ h₁.u (h₁.d p.1) (h₁.p p.1) (h₁.p' p.1) k O f := by
  intro R _ G _ _ n X m m₁ L dd D h₁ e hdd c hc p k O hO f
  have hW1 : W m h₁ p ≤ h₁.W p.1 := heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p
  have hdF : IsField (h₁.W p.1) (h₁.d p.1) := (h₁.lift p.1).1
  have hd : IsDer (h₁.d p.1 O) := isDer_of_isField hdF (hO.trans hW1)
  have hddO : ∀ a, IsDer (dd a O) := fun a => isDer_of_isField (hdd a) le_top
  have hg : rsT (gU m h₁ e p).val O * rsT (gU m h₁ e p)⁻¹.val O = 1 := by
    rw [← rsT_mul, Units.mul_inv, rsT_one hO]
  set g := rsT (gU m h₁ e p).val O with hgdef
  set gi := rsT (gU m h₁ e p)⁻¹.val O with hgidef
  have eL : ∀ a, rsT (gL m h₁ e a p) O = dd a O g * gi := fun a => by
    rw [gL, rsT_mul, field_rsT (hdd a) le_top hO]
  have eE : rsT (gE m h₁ e p) O = h₁.d p.1 O g * gi := by
    rw [gE, rsT_mul, field_rsT hdF hW1 hO]
  have eY : ∀ a, rsT (gY m h₁ e a p) O = ∑ b, constFn G.hom O (h₁.Θ a b) * (dd b O g * gi) := fun a => by
    simp only [gY, rsT_sum, rsT_mul, rsT_constFn G.hom hO, eL]
  have eP : rsT (gP m h₁ e c p) O = rsT (h₁.p p.1) O - h₁.d p.1 O g * gi -
      constFn G.hom O c * ∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * (dd a O g * gi) * (dd b O g * gi) := by
    simp only [gP, rsT_sub, rsT_mul, rsT_sum, rsT_constFn G.hom hO, eL, eE, rsT_rsT hW1 hO]
  have eDL : ∀ a b, rsT (dd a (W m h₁ p) (gL m h₁ e b p)) O = dd a O (dd b O g * gi) := fun a b => by
    rw [← field_rsT (hdd a) le_top hO, eL]
  have eP' : rsT (gP' m h₁ e c p) O = rsT (h₁.p' p.1) O +
      constFn G.hom O c * ∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * dd a O (dd b O g * gi) -
      ∑ a, constFn G.hom O (h₁.u a) * (dd a O g * gi) := by
    simp only [gP', rsT_sub, rsT_add, rsT_mul, rsT_sum, rsT_constFn G.hom hO, eL, eDL, rsT_rsT hW1 hO]
  have hcO : 2 * constFn G.hom O c = 1 := by
    have := congrArg (constFn G.hom O) (show c + c = 1 by linear_combination hc)
    simp only [constFn, map_add (f := _), map_one] at this ⊢
    linear_combination this
  have hs : ∀ a b, (h₁.Θ.map (constFn G.hom O)) a b = (h₁.Θ.map (constFn G.hom O)) b a := fun a b => by
    simp only [Matrix.map_apply]
    rw [show h₁.Θ a b = h₁.Θᵀ b a from rfl, h₁.symm]
  have key := ringOp_conj hd hddO hs (fun a => constFn G.hom O (h₁.u a)) (rsT (h₁.p p.1) O) (rsT (h₁.p' p.1) O) hg k f
  simp only [ringOp, Matrix.map_apply] at key
  have S1 : ∑ a, (∑ b, constFn G.hom O (h₁.Θ a b) * (dd b O g * gi)) * dd a O (g ^ k * f) =
      g ^ k * ∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * (dd b O g * gi) * dd a O f +
      (k : Γ(G.left, O)) * g ^ k * f * ∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * (dd a O g * gi) * (dd b O g * gi) := by
    simp only [(hddO _).pow_mul hg, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    ring
  simp only [op, gD, eY, eP, eP']
  linear_combination key + 2 * (k : Γ(G.left, O)) * S1 -
    (k : Γ(G.left, O)) * g ^ k * f * ((k : Γ(G.left, O)) *
      (∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * (dd a O g * gi) * (dd b O g * gi)) -
      ∑ a, ∑ b, constFn G.hom O (h₁.Θ a b) * dd a O (dd b O g * gi)) * hcO

end GlobalTheory.Heat.Gauge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMulStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMulStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.gauged_local_heat_operator_power_mul : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (n : ℕ) (X : Scheme.{0}) (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D) (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])), (∀ a, IsField ⊤ (dd a)) → ∀ (c : R), 2 * c = 1 → ∀ (p : h₁.J × (Fin 2 → L.ι)) (k : ℕ) (O : G.left.Opens), O ≤ GlobalTheory.Heat.Gauge.W m h₁ p → ∀ (f : Γ(G.left, O)), op G dd h₁.Θ h₁.u (GlobalTheory.Heat.Gauge.gD m h₁ e p) (GlobalTheory.Heat.Gauge.gP m h₁ e c p) (GlobalTheory.Heat.Gauge.gP' m h₁ e c p) k O (rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O ^ k * f) = rsT (GlobalTheory.Heat.Gauge.gU m h₁ e p).val O ^ k * op G dd h₁.Θ h₁.u (h₁.d p.1) (h₁.p p.1) (h₁.p' p.1) k O f := by
  first | exact @GlobalTheory.Heat.Gauge.op_gauged
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMulStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PresBasicOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PresBasicOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

noncomputable section

namespace GlobalTheory.Heat.WtPres

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O} {Y : Ray oa}

theorem isWt_div {α : Q.X} {V : Y.H.left.Opens} {f u u' : Γ(Y.H.left, V)} (hf : IsWt Y α V f) (hu : IsWt Y α V u)
    (h : u * u' = 1) : IsWt Y 0 V (f * u') := by
  intro S _ φ x x' c a a' ha ha' hV hV' hq hc
  have e : ∀ b : Sp S ⟶ Y.H.left, ⊤ ≤ b ⁻¹ᵁ V → valR b V u * valR b V u' = 1 := fun b hb => by
    rw [← WtAlg.valR_mul'' _ _ hb, h, WtAlg.valR_eq' _ _ hb, map_one, map_one]
  have e₁ := e a hV
  have e₂ := e a' hV'
  rw [hu S φ x x' c a a' ha ha' hV hV' hq hc] at e₂
  rw [WtAlg.valR_mul'' _ _ hV', WtAlg.valR_mul'' _ _ hV, hf S φ x x' c a a' ha ha' hV hV' hq hc,
    WtAlg.c_zero x x' c hc, Units.val_one, _root_.one_mul]
  linear_combination valR a V f * valR a V u' * e₂ - c α * valR a V f * valR a' V u' * e₁

end GlobalTheory.Heat.WtPres
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PresBasicOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatGaugeCoverOpenLeHeatOperatorOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeatOperatorGluedPullbackBundlePower\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitHasGeneratorWeightOnPreimagesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugeUnitsTransitionRelationOnOverlapsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedChartFunctionEqGaugePowerMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaugedLocalHeatOperatorPowerMulStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionInvariantField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PresBasicOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Heat.Gauge

open GlobalTheory.KS

theorem gauge_op {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}}
    (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D)
    (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])) (hdd : ∀ a, IsField ⊤ (dd a)) (c : R) (hc : 2 * c = 1)
    (p : h₁.J × (Fin 2 → L.ι)) (k : ℕ) (O : G.left.Opens) (hO : O ≤ W m h₁ p) (f : Γ(G.left, O)) :
    op G dd h₁.Θ h₁.u (gD m h₁ e p) (gP m h₁ e c p) (gP' m h₁ e c p) k O (rsT (gU m h₁ e p).val O ^ k * f) =
      rsT (gU m h₁ e p).val O ^ k * op G dd h₁.Θ h₁.u (h₁.d p.1) (h₁.p p.1) (h₁.p' p.1) k O f :=
  GlobalTheory.T.gauged_local_heat_operator_power_mul _ G n X m m₁ L dd D h₁ e hdd c hc p k O hO f

theorem gauge_cocycle {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}}
    (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D)
    (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])) (hL : L.IsLB) (he : e.IsGen) (p p' : h₁.J × (Fin 2 → L.ι))
    (O : G.left.Opens) (hO : O ≤ W m h₁ p ⊓ W m h₁ p') :
    pbT m (L.g (p.2 0) (p'.2 0)).val O * rsT (gU m h₁ e p').val O =
      rsT (gU m h₁ e p).val O * pbT m₁ (L.g (h₁.j p.1) (h₁.j p'.1)).val O :=
  GlobalTheory.T.gauge_units_transition_relation_on_overlaps _ G n X m m₁ L dd D h₁ e hL he p p' O hO

theorem gauge_chart {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}}
    (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D)
    (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])) (hL : L.IsLB) (he : e.IsGen) (k : ℕ) (σ : SecM m₁ L k)
    (ρ : SecM m L k)
    (hρ : ∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J →
      sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val)
    (p : h₁.J × (Fin 2 → L.ι)) :
    rsT (ρ.f fun _ => p.2 0) (W m h₁ p) = (gU m h₁ e p).val ^ k * rsT (σ.f fun _ => h₁.j p.1) (W m h₁ p) :=
  GlobalTheory.T.gauged_chart_function_eq_gauge_power_mul _ G n X m m₁ L dd D h₁ e hL he k σ ρ hρ p

theorem gauge_wt {R : Type} [CommRing R] [IsDomain R] (Q : DegPre R) {O : Type} [CommRing O] [StarRing O]
    [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) {n : ℕ} (dd : Fin n → Fld Y.H.left) (D : R → R)
    (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd D)
    (e : LB.Gen (LB.LinComb Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X)
    (hwe : ∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens),
      Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j →
        IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V)))
    (p : h₁.J × (Fin 2 → Q.P.L.ι)) (V : Q.P.A.left.Opens) (hV : Y.q.left ⁻¹ᵁ V ≤ W Y.q.left h₁ p) :
    IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (gU Y.q.left h₁ e p).val (Y.q.left ⁻¹ᵁ V)) :=
  GlobalTheory.T.gauge_unit_has_generator_weight_on_preimages _ Q O oa Y n dd D x h₁ e β hwe p V hV

section General

variable {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}}
  (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D)
  (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1]))

theorem gauge_cover (hL : L.IsLB) : ⨆ p, W m h₁ p = ⊤ := by
  refine eq_top_iff.2 fun y _ => ?_
  have hy : y ∈ ⨆ i, h₁.W i := by rw [h₁.cover]; trivial
  obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 hy
  obtain ⟨a, ha⟩ := ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart hL (m y)
  obtain ⟨b, hb⟩ := ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart hL (m₁ y)
  exact TopologicalSpace.Opens.mem_iSup.2 ⟨(i, ![a, b]), hi, Set.mem_iInter.2 (Fin.forall_fin_two.2 ⟨ha, hb⟩)⟩

theorem gauge_lift (hF : ∀ a, IsField ⊤ (dd a)) (h0 : ∀ a O r, dd a O (constFn G.hom O r) = 0)
    (p : h₁.J × (Fin 2 → L.ι)) : IsLift G D (W m h₁ p) (gD m h₁ e p) := by
  have hd₁ := h₁.lift p.1
  refine ⟨GlobalTheory.Heat.Adjust.isField_add_comb (h₁.d p.1) dd (fun a => gY m h₁ e a p)
    (isField_mono hd₁.1 (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p)) hF, fun O' hO r => ?_⟩
  show h₁.d p.1 O' (constFn G.hom O' r) + ∑ a, rsT (gY m h₁ e a p) O' * dd a O' (constFn G.hom O' r) = _
  rw [hd₁.2 O' (hO.trans (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p)) r]
  simp [h0]

theorem gauge_glue (hL : L.IsLB) (he : e.IsGen) (hF : ∀ a, IsField ⊤ (dd a)) (c : R) (hc : 2 * c = 1) (k : ℕ)
    (p p' : h₁.J × (Fin 2 → L.ι)) (O' : G.left.Opens) (hO : O' ≤ W m h₁ p ⊓ W m h₁ p') (f : Γ(G.left, O')) :
    op G dd h₁.Θ h₁.u (gD m h₁ e p) (gP m h₁ e c p) (gP' m h₁ e c p) k O' (pbT m (L.g (p.2 0) (p'.2 0)).val O' ^ k * f) =
      pbT m (L.g (p.2 0) (p'.2 0)).val O' ^ k *
        op G dd h₁.Θ h₁.u (gD m h₁ e p') (gP m h₁ e c p') (gP' m h₁ e c p') k O' f := by
  have hOp : O' ≤ W m h₁ p := hO.trans inf_le_left
  have hOp' : O' ≤ W m h₁ p' := hO.trans inf_le_right
  have hco := gauge_cocycle G m m₁ L dd D h₁ e hL he p p' O' hO
  have hA' : rsT (gU m h₁ e p').val O' * rsT (gU m h₁ e p')⁻¹.val O' = 1 := by
    rw [← GlobalTheory.KS.rsT_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, GlobalTheory.KS.rsT_one hOp']
  have hk := congrArg (· ^ k) hco
  have hk' := congrArg (· ^ k) hA'
  simp only [one_pow, mul_pow] at hk hk'
  have e1 : pbT m (L.g (p.2 0) (p'.2 0)).val O' ^ k * f =
      rsT (gU m h₁ e p).val O' ^ k *
        (pbT m₁ (L.g (h₁.j p.1) (h₁.j p'.1)).val O' ^ k * (rsT (gU m h₁ e p')⁻¹.val O' ^ k * f)) := by
    linear_combination (-(pbT m (L.g (p.2 0) (p'.2 0)).val O' ^ k * f)) * hk' +
      (rsT (gU m h₁ e p')⁻¹.val O' ^ k * f) * hk
  have ef : f = rsT (gU m h₁ e p').val O' ^ k * (rsT (gU m h₁ e p')⁻¹.val O' ^ k * f) := by
    linear_combination (-f) * hk'
  rw [e1, gauge_op G m m₁ L dd D h₁ e hF c hc p k O' hOp,
    h₁.glue k p.1 p'.1 O' (le_inf (hOp.trans (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p)) (hOp'.trans (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p')))]
  conv_rhs => rw [ef, gauge_op G m m₁ L dd D h₁ e hF c hc p' k O' hOp']
  linear_combination (-(op G dd h₁.Θ h₁.u (h₁.d p'.1) (h₁.p p'.1) (h₁.p' p'.1) k O'
    (rsT (gU m h₁ e p')⁻¹.val O' ^ k * f))) * hk

end General

theorem gauge_acts {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}}
    (m m₁ : G.left ⟶ X) (L : LB X) (dd : Fin n → Fld G.left) (D : R → R) (h₁ : Heat G m₁ L dd D)
    (e : LB.Gen (LB.LinComb L ![m, m₁] ![1, -1])) (hL : L.IsLB) (he : e.IsGen) (hF : ∀ a, IsField ⊤ (dd a))
    (c : R) (hc : 2 * c = 1) (k : ℕ) (σ σ' : SecM m₁ L k) (ρ ρ' : SecM m L k)
    (hρ : ∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J →
      sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val)
    (hρ' : ∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J →
      sval ρ' r z J = sval σ' r z J * ((val e r z J) ^ k).val)
    (hA : h₁.Acts k σ σ') (p : h₁.J × (Fin 2 → L.ι)) :
    rsT (ρ'.f fun _ => p.2 0) (W m h₁ p) = op G dd h₁.Θ h₁.u (gD m h₁ e p) (gP m h₁ e c p) (gP' m h₁ e c p) k
      (W m h₁ p) (rsT (ρ.f fun _ => p.2 0) (W m h₁ p)) := by
  have c1 := gauge_chart G m m₁ L dd D h₁ e hL he k σ ρ hρ p
  have c2 := gauge_chart G m m₁ L dd D h₁ e hL he k σ' ρ' hρ' p
  have hU : rsT (gU m h₁ e p).val (W m h₁ p) = (gU m h₁ e p).val := GlobalTheory.KS.rsT_self _
  rw [c1, c2, ← hU, gauge_op G m m₁ L dd D h₁ e hF c hc p k _ le_rfl, hU]
  congr 1
  have hWc : h₁.W p.1 ≤ (LB.LinComb L (K := Fin 1) (fun _ => m₁) fun _ => (k : ℤ)).U (fun _ => h₁.j p.1) :=
    GlobalTheory.Heat.Glue.le_wchart _ (h₁.le p.1)
  rw [← GlobalTheory.KS.rsT_rsT hWc (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p) (σ'.f fun _ => h₁.j p.1), hA p.1,
    op_rsT G dd hF _ _ _ _ _ k (h₁.lift p.1).1 le_rfl (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p),
    GlobalTheory.KS.rsT_rsT hWc (heatGaugeCoverOpen_le_heatOperatorOpen m h₁ p)]

theorem gauge_basic {R : Type} [CommRing R] [IsDomain R] (Q : DegPre R) {O : Type} [CommRing O] [StarRing O]
    [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) {n : ℕ} (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left)
    (hinv : ∀ a, IsInv Y.H (v a) (dd a)) (D : R → R)
    (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd D)
    (hB₁ : ∀ i, (∃ V : Q.P.A.left.Opens, h₁.W i = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (h₁.p i) ∧ IsWt Y 0 _ (h₁.p' i) ∧
      ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ h₁.W i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f →
        IsWt Y α (Y.q.left ⁻¹ᵁ V) (h₁.d i _ f))
    (e : LB.Gen (LB.LinComb Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X)
    (hwe : ∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens),
      Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j →
        IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V)))
    (c : R) (p : h₁.J × (Fin 2 → Q.P.L.ι)) :
    (∃ V : Q.P.A.left.Opens, W Y.q.left h₁ p = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (gP Y.q.left h₁ e c p) ∧
      IsWt Y 0 _ (gP' Y.q.left h₁ e c p) ∧
      ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ W Y.q.left h₁ p → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f →
        IsWt Y α (Y.q.left ⁻¹ᵁ V) (gD Y.q.left h₁ e p _ f) := by
  obtain ⟨τ, hτ⟩ := trans_factor Q oa Y x
  obtain ⟨⟨V₁, hV₁⟩, hp₁, hp₁', hd₁⟩ := hB₁ p.1
  let Vp : Q.P.A.left.Opens := V₁ ⊓ (Q.P.L.U (p.2 0) ⊓ τ ⁻¹ᵁ Q.P.L.U (p.2 1))
  have hm₁ : ∀ y, ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) y = τ (Y.q.left y) := fun y => by
    rw [hτ, Scheme.Hom.comp_apply]
  have hWp : W Y.q.left h₁ p = Y.q.left ⁻¹ᵁ Vp := by
    refine TopologicalSpace.Opens.ext (Set.ext fun y => ⟨fun hy => ?_, fun hy => ?_⟩)
    · have h1 : y ∈ Y.q.left ⁻¹ᵁ V₁ := hV₁ ▸ hy.1
      have h2 := Set.mem_iInter.1 hy.2
      refine ⟨h1, h2 0, ?_⟩
      show τ (Y.q.left y) ∈ Q.P.L.U (p.2 1)
      rw [← hm₁]; exact h2 1
    · have h1 : y ∈ h₁.W p.1 := hV₁ ▸ hy.1
      refine ⟨h1, Set.mem_iInter.2 (Fin.forall_fin_two.2 ⟨hy.2.1, ?_⟩)⟩
      show ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) y ∈ Q.P.L.U (p.2 1)
      rw [hm₁]; exact hy.2.2
  have tr : ∀ (α : Q.X) (W₀ : Y.H.left.Opens), W₀ = Y.q.left ⁻¹ᵁ Vp → ∀ f : Γ(Y.H.left, W₀),
      IsWt Y α (Y.q.left ⁻¹ᵁ Vp) (rsT f (Y.q.left ⁻¹ᵁ Vp)) → IsWt Y α W₀ f := by
    rintro α W₀ rfl f h
    rwa [GlobalTheory.KS.rsT_self] at h
  have hU : IsWt Y β (W Y.q.left h₁ p) (gU Y.q.left h₁ e p).val :=
    tr β _ hWp _ (gauge_wt Q oa Y dd D x h₁ e β hwe p Vp hWp.ge)
  have hdW : ∀ α f, IsWt Y α (W Y.q.left h₁ p) f → IsWt Y α (W Y.q.left h₁ p) (h₁.d p.1 (W Y.q.left h₁ p) f) := by
    have hle : Y.q.left ⁻¹ᵁ Vp ≤ h₁.W p.1 := hWp ▸ heatGaugeCoverOpen_le_heatOperatorOpen Y.q.left h₁ p
    rw [hWp]
    exact fun α => hd₁ α Vp hle
  have hinvU : (gU Y.q.left h₁ e p).val * (gU Y.q.left h₁ e p)⁻¹.val = 1 := Units.mul_inv _
  have hL0 : ∀ a, IsWt Y 0 (W Y.q.left h₁ p) (gL Y.q.left h₁ e a p) := fun a =>
    GlobalTheory.Heat.WtPres.isWt_div (GlobalTheory.Heat.IsInv.isWt Y (v a) (dd a) (hinv a) β _ _ hU) hU hinvU
  have hE0 : IsWt Y 0 (W Y.q.left h₁ p) (gE Y.q.left h₁ e p) :=
    GlobalTheory.Heat.WtPres.isWt_div (hdW β _ hU) hU hinvU
  have hY0 : ∀ a, IsWt Y 0 (W Y.q.left h₁ p) (gY Y.q.left h₁ e a p) := fun a =>
    GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun b _ => GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _) (hL0 b)
  refine ⟨⟨Vp, hWp⟩, ?_, ?_, fun α V hV f hf => ?_⟩
  · refine GlobalTheory.Heat.WtAlg.isWt_sub (GlobalTheory.Heat.WtAlg.isWt_sub
      (GlobalTheory.Heat.Adjust.isWt_rsT Y (heatGaugeCoverOpen_le_heatOperatorOpen Y.q.left h₁ p) hp₁) hE0) ?_
    refine GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _) ?_
    exact GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun a _ => GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun b _ =>
      GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _) (hL0 a)) (hL0 b)
  · refine GlobalTheory.Heat.WtAlg.isWt_sub (GlobalTheory.Heat.WtAlg.isWt_add
      (GlobalTheory.Heat.Adjust.isWt_rsT Y (heatGaugeCoverOpen_le_heatOperatorOpen Y.q.left h₁ p) hp₁') ?_) ?_
    · refine GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _) ?_
      exact GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun a _ => GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun b _ =>
        GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _)
          (GlobalTheory.Heat.IsInv.isWt Y (v a) (dd a) (hinv a) 0 _ _ (hL0 b))
    · exact GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun a _ =>
        GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul (GlobalTheory.Heat.WtAlg.isWt_constFn _ _) (hL0 a)
  · show IsWt Y α _ (h₁.d p.1 _ f + ∑ a, rsT (gY Y.q.left h₁ e a p) _ * dd a _ f)
    exact GlobalTheory.Heat.WtAlg.isWt_add (hd₁ α V (hV.trans (heatGaugeCoverOpen_le_heatOperatorOpen Y.q.left h₁ p)) f hf)
      (GlobalTheory.Heat.WtAlg.isWt_sum _ _ fun a _ => GlobalTheory.Heat.WtAlg.isRaynaudTorusWeightFunction_weightZero_mul
        (GlobalTheory.Heat.Adjust.isWt_rsT Y hV (hY0 a)) (GlobalTheory.Heat.IsInv.isWt Y (v a) (dd a) (hinv a) α _ _ hf))

theorem exists_gauge_heat : ∀ (R : Type) [CommRing R] [IsDomain R] [Algebra ℚ R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd ⇑D), (∀ i, (∃ V : Q.P.A.left.Opens, h₁.W i = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (h₁.p i) ∧ IsWt Y 0 _ (h₁.p' i) ∧ ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ h₁.W i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f → IsWt Y α (Y.q.left ⁻¹ᵁ V) (h₁.d i _ f)) → ∀ (e : LB.Gen (LB.LinComb Q.P.L (K := Fin 2) ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X), e.IsGen → (∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V))) → ∃ h' : Heat Y.H Y.q.left Q.P.L dd ⇑D, IsBasic Y h' ∧ h'.Θ = h₁.Θ ∧ h'.u = h₁.u ∧ ∀ (k : ℕ) (σ σ' : SecM ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L k) (ρ ρ' : SecM Y.q.left Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val) → (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ' r z J = sval σ' r z J * ((val e r z J) ^ k).val) → h₁.Acts k σ σ' → h'.Acts k ρ ρ' := by
  intro R _ _ _ Q O _ _ _ oa Y n v dd hinv D x h₁ hB₁ e β he hwe
  have hL : Q.P.L.IsLB := Q.P.isLB
  have hF : ∀ a, IsField ⊤ (dd a) := fun a => (hinv a).1
  have hc : 2 * algebraMap ℚ R (1 / 2) = 1 := by
    rw [← map_ofNat (algebraMap ℚ R) 2, ← map_mul]
    norm_num
  refine ⟨⟨h₁.Θ, h₁.symm, h₁.u, h₁.J × (Fin 2 → Q.P.L.ι), W Y.q.left h₁, fun p => p.2 0,
    gD Y.q.left h₁ e, gP Y.q.left h₁ e (algebraMap ℚ R (1 / 2)), gP' Y.q.left h₁ e (algebraMap ℚ R (1 / 2)),
    gauge_cover Y.H _ _ Q.P.L dd _ h₁ hL, fun p => W_le_m Y.q.left h₁ p,
    gauge_lift Y.H _ _ Q.P.L dd _ h₁ e hF (fun a O' r => GlobalTheory.Heat.Adjust.inv_constFn Y.H (v a) (dd a) (hinv a) O' r),
    fun k p p' O' hO f => gauge_glue Y.H _ _ Q.P.L dd _ h₁ e hL he hF _ hc k p p' O' hO f⟩,
    gauge_basic Q oa Y v dd hinv _ x h₁ hB₁ e β hwe _, rfl, rfl, ?_⟩
  intro k σ σ' ρ ρ' hρ hρ' hA p
  exact gauge_acts Y.H _ _ Q.P.L dd _ h₁ e hL he hF _ hc k σ σ' ρ ρ' hρ hρ' hA p

end GlobalTheory.Heat.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperatorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperatorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.exists_gauged_torusInvariant_heatOperator : ∀ (R : Type) [CommRing R] [IsDomain R] [Algebra ℚ R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd ⇑D), (∀ i, (∃ V : Q.P.A.left.Opens, h₁.W i = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (h₁.p i) ∧ IsWt Y 0 _ (h₁.p' i) ∧ ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ h₁.W i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f → IsWt Y α (Y.q.left ⁻¹ᵁ V) (h₁.d i _ f)) → ∀ (e : LB.Gen (LB.LinComb Q.P.L (K := Fin 2) ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X), e.IsGen → (∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V))) → ∃ h' : Heat Y.H Y.q.left Q.P.L dd ⇑D, IsBasic Y h' ∧ h'.Θ = h₁.Θ ∧ h'.u = h₁.u ∧ ∀ (k : ℕ) (σ σ' : SecM ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L k) (ρ ρ' : SecM Y.q.left Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ r z J = sval σ r z J * ((val e r z J) ^ k).val) → (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ' r z J = sval σ' r z J * ((val e r z J) ^ k).val) → h₁.Acts k σ σ' → h'.Acts k ρ ρ' := by
  first | exact @GlobalTheory.Heat.Gauge.exists_gauge_heat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperatorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValues =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValues", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

namespace GlobalTheory.HeatTrans

theorem chart_rel_of_sval : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (k : ℕ) (σ : SecM (GlobalTheory.HeatTrans.tr Y.H x ≫ Y.q.left) Q.P.L k) (τ : SecM Y.q.left Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ r z J = sval τ (r ≫ GlobalTheory.HeatTrans.tr Y.H x) z J) → ∀ (c : Q.P.L.ι) (U : Y.H.left.Opens), U ≤ Y.q.left ⁻¹ᵁ Q.P.L.U c → rsT (σ.f fun _ => c) (GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U) = pbT (GlobalTheory.HeatTrans.tr Y.H x) (rsT (τ.f fun _ => c) U) (GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U) := by
  intro R _ _ Q O _ _ _ oa Y x k σ τ hst c U hU
  have hWσ : tr Y.H x ⁻¹ᵁ U ≤ LB.wchart Q.P.L (fun _ : Fin 1 => tr Y.H x ≫ Y.q.left) (fun _ => c) := fun y hy =>
    Set.mem_iInter.2 fun _ => hU hy
  have hWτ : U ≤ LB.wchart Q.P.L (fun _ : Fin 1 => Y.q.left) (fun _ => c) := fun y hy =>
    Set.mem_iInter.2 fun _ => hU hy
  have e1 : rsT (σ.f fun _ => c) (tr Y.H x ⁻¹ᵁ U) = resG _ hWσ (σ.f fun _ => c) := GlobalTheory.KS.rsT_of_le hWσ _
  have e2 : rsT (τ.f fun _ => c) U = resG _ hWτ (τ.f fun _ => c) := GlobalTheory.KS.rsT_of_le hWτ _
  rw [e1, e2, GlobalTheory.KS.pbT_of_le (tr Y.H x) le_rfl]
  apply fn_ext
  intro y hy
  obtain ⟨J, hJ, hJc⟩ := exists_good Q.P.L Q.P.isLB y (K := Fin 1) (fun _ => tr Y.H x ≫ Y.q.left) (fun _ => c)
    (fun _ _ _ => rfl) (fun _ => Set.mem_iInter.1 (hWσ hy) 0)
  have h1 := hst Y.H.left (𝟙 _) y J hJ
  rw [sval_of σ (𝟙 _) y J (fun _ => c) (fun _ => by rw [Category.id_comp]; exact hJc 0),
    sval_of τ (𝟙 _ ≫ tr Y.H x) y J (fun _ => c) (fun _ => by rw [Category.id_comp]; exact hJc 0)] at h1
  have hTy : (tr Y.H x) ((𝟙 Y.H.left : Y.H.left ⟶ Y.H.left) y) ∈ U := hy
  refine (gs_res (𝟙 _) y hWσ hy _).trans (h1.trans ?_)
  rw [← Scheme.Hom.app_eq_appLE]
  exact ((gs_pull (𝟙 _) (tr Y.H x) y U hTy _).trans (gs_res _ y hWτ hTy _)).symm

end GlobalTheory.HeatTrans
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValues =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValuesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValuesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValues\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

theorem _root_.GlobalTheory.T.chartFunction_rel_of_translate_section_values : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (k : ℕ) (σ : SecM (GlobalTheory.HeatTrans.tr Y.H x ≫ Y.q.left) Q.P.L k) (τ : SecM Y.q.left Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ r z J = sval τ (r ≫ GlobalTheory.HeatTrans.tr Y.H x) z J) → ∀ (c : Q.P.L.ι) (U : Y.H.left.Opens), U ≤ Y.q.left ⁻¹ᵁ Q.P.L.U c → rsT (σ.f fun _ => c) (GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U) = pbT (GlobalTheory.HeatTrans.tr Y.H x) (rsT (τ.f fun _ => c) U) (GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U) := by
  first | exact @GlobalTheory.HeatTrans.chart_rel_of_sval
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValuesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLieDeterminantLineRatioFunction\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.HolomorphicHomDetermined\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

noncomputable section

open GlobalTheory.HeatTrans

namespace GlobalTheory.Heat

theorem IsInv.pbT_tr_preimage {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]
    (v : TanM (𝟙 (Sp R)) G) (dd : Fld G.left) (hinv : IsInv G v dd) (x : 𝟙_ (Over (Sp R)) ⟶ G)
    (O : G.left.Opens) (f : Γ(G.left, O)) :
    dd (tr G x ⁻¹ᵁ O) (pbT (tr G x) f (tr G x ⁻¹ᵁ O)) = pbT (tr G x) (dd O f) (tr G x ⁻¹ᵁ O) := by
  set T := tr G x with hTdef
  have key : ∀ (U : G.left.Opens) (hU : IsAffineOpen U) (hle : U ≤ T ⁻¹ᵁ O),
      (G.left.presheaf.map (homOfLE hle).op).hom (dd (T ⁻¹ᵁ O) (pbT T f (T ⁻¹ᵁ O))) =
        (G.left.presheaf.map (homOfLE hle).op).hom (pbT T (dd O f) (T ⁻¹ᵁ O)) := by
    intro U hU hle
    let g : Sp Γ(G.left, U) ⟶ G.left := hU.fromSpec
    let φ : R →+* Γ(G.left, U) := (Spec.preimage (g ≫ G.hom)).hom
    have hφ : g ≫ G.hom = spMap φ := by simp [φ, spMap]
    have hgU : ⊤ ≤ g ⁻¹ᵁ U := hU.fromSpec_preimage_self.ge
    have hgO : ⊤ ≤ g ⁻¹ᵁ (T ⁻¹ᵁ O) := hgU.trans (g.preimage_mono hle)
    have hgTO : ⊤ ≤ (g ≫ T) ⁻¹ᵁ O := hgO
    have e : (dualMap φ).comp (algebraMap R (DualNumber R)) =
        (algebraMap Γ(G.left, U) (DualNumber Γ(G.left, U))).comp φ := by
      ext a <;> simp [dualMap, TrivSqZeroExt.algebraMap_eq_inl]
    have hv : (tv v).left ≫ G.hom = spMap (algebraMap R (DualNumber R)) :=
      (Over.w (tv v)).trans (Category.comp_id _)
    have h2 : (spMap (dualMap φ) ≫ (tv v).left) ≫ G.hom = (tEpsG (g ≫ G.hom)).hom := by
      show _ = spMap (algebraMap Γ(G.left, U) (DualNumber Γ(G.left, U))) ≫ g ≫ G.hom
      refine (Category.assoc _ _ _).trans ((congrArg (spMap (dualMap φ) ≫ ·) hv).trans ?_)
      rw [hφ, ← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp, e]
    let g' : tEpsG (g ≫ G.hom) ⟶ G :=
      Over.homMk (spMap (algebraMap Γ(G.left, U) (DualNumber Γ(G.left, U))) ≫ g) (Category.assoc _ _ _)
    let v' : tEpsG (g ≫ G.hom) ⟶ G := Over.homMk (spMap (dualMap φ) ≫ (tv v).left) h2
    have htr : IsTr G φ g v (g' * v').left := ⟨g', v', rfl, rfl, rfl⟩
    have hval := hinv.2 _ φ g _ (T ⁻¹ᵁ O) (pbT T f (T ⁻¹ᵁ O)) hφ hgO htr

    have hT' : (g ≫ T) ≫ G.hom = g ≫ G.hom := by rw [Category.assoc, hTdef, tr_hom]
    have hφ₁ : (g ≫ T) ≫ G.hom = spMap φ := hT'.trans hφ
    have eo : tEpsG ((g ≫ T) ≫ G.hom) = tEpsG (g ≫ G.hom) := congrArg tEpsG hT'
    let g'₁ : tEpsG ((g ≫ T) ≫ G.hom) ⟶ G := eqToHom eo ≫ (g' * (toUnit _ ≫ x))
    let v'₁ : tEpsG ((g ≫ T) ≫ G.hom) ⟶ G := eqToHom eo ≫ v'
    have hl : ∀ k : tEpsG (g ≫ G.hom) ⟶ G, (eqToHom eo ≫ k).left = k.left := by
      intro k; rw [Over.comp_left]; simp
    have hg'T : g' ≫ (𝟙 G * (toUnit G ≫ x)) = g' * (toUnit _ ≫ x) := by
      rw [MonObj.comp_mul, Category.comp_id, ← Category.assoc, toUnit_unique (g' ≫ toUnit G) (toUnit _)]
    have hwT : (g' * v') ≫ (𝟙 G * (toUnit G ≫ x)) = (g' * (toUnit _ ≫ x)) * v' := by
      rw [MonObj.comp_mul, Category.comp_id, ← Category.assoc,
        toUnit_unique ((g' * v') ≫ toUnit G) (toUnit _), _root_.mul_assoc, _root_.mul_comm v',
        ← _root_.mul_assoc]
    have htr₁ : IsTr G φ (g ≫ T) v ((g' * v').left ≫ T) := by
      refine ⟨g'₁, v'₁, ?_, ?_, ?_⟩
      · show (eqToHom eo ≫ (g' * (toUnit _ ≫ x))).left = _
        rw [hl, ← hg'T, Over.comp_left]
        rfl
      · show (eqToHom eo ≫ v').left = _
        rw [hl]
        rfl
      · show (eqToHom eo ≫ (g' * (toUnit _ ≫ x)) * (eqToHom eo ≫ v')).left = _
        rw [← MonObj.comp_mul, hl, ← hwT, Over.comp_left]
        rfl
    have hval₁ := hinv.2 _ φ (g ≫ T) _ O f hφ₁ hgTO htr₁

    have hpb : ∀ s : Γ(G.left, O), pbT T s (T ⁻¹ᵁ O) = (T.app O).hom s := fun s => by
      rw [GlobalTheory.KS.pbT_of_le T le_rfl, Scheme.Hom.app_eq_appLE]
    have hL : valR g (T ⁻¹ᵁ O) (dd (T ⁻¹ᵁ O) (pbT T f (T ⁻¹ᵁ O))) = valR (g ≫ T) O (dd O f) := by
      rw [← hval, ← hval₁, GlobalTheory.HolHom.valR_comp, hpb]
    have hR : valR g (T ⁻¹ᵁ O) (pbT T (dd O f) (T ⁻¹ᵁ O)) = valR (g ≫ T) O (dd O f) := by
      rw [GlobalTheory.HolHom.valR_comp, hpb]
    rw [← GlobalTheory.DetRatio.valR_fromSpec hU ((G.left.presheaf.map (homOfLE hle).op).hom _),
      ← GlobalTheory.DetRatio.valR_fromSpec hU ((G.left.presheaf.map (homOfLE hle).op).hom (pbT T (dd O f) (T ⁻¹ᵁ O))),
      GlobalTheory.HolHom.valR_res g hle _ hgU, GlobalTheory.HolHom.valR_res g hle _ hgU]
    exact hL.trans hR.symm
  refine G.left.sheaf.eq_of_locally_eq' (fun k : {U : G.left.Opens // IsAffineOpen U ∧ U ≤ T ⁻¹ᵁ O} => k.1) _
    (fun k => homOfLE k.2.2) ?_ _ _ fun k => ?_
  · intro y hy
    obtain ⟨U, hU, hyU, hUO⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.mp G.left.isBasis_affineOpens hy
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨U, hU, hUO⟩, hyU⟩
  · exact key k.1 k.2.1 k.2.2

theorem IsInv.pbT_tr {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (v : TanM (𝟙 (Sp R)) G)
    (dd : Fld G.left) (hinv : IsInv G v dd) (x : 𝟙_ (Over (Sp R)) ⟶ G) (O O' : G.left.Opens)
    (hO' : O' ≤ tr G x ⁻¹ᵁ O) (f : Γ(G.left, O)) :
    dd O' (pbT (tr G x) f O') = pbT (tr G x) (dd O f) O' := by
  rw [← GlobalTheory.KS.rsT_pbT (tr G x) le_rfl hO' f, ← GlobalTheory.KS.rsT_pbT (tr G x) le_rfl hO' (dd O f),
    GlobalTheory.KS.rsT_of_le hO', GlobalTheory.KS.rsT_of_le hO', hinv.1.2.2 _ _ hO' le_top,
    IsInv.pbT_tr_preimage G v dd hinv x O f]

end GlobalTheory.Heat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.invariantVectorField_commutes_pointTranslation : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (v : TanM (𝟙 (Sp R)) G) (dd : Fld G.left), IsInv G v dd → ∀ (x : 𝟙_ (Over (Sp R)) ⟶ G) (O O' : G.left.Opens), O' ≤ GlobalTheory.HeatTrans.tr G x ⁻¹ᵁ O → ∀ f : Γ(G.left, O), dd O' (pbT (GlobalTheory.HeatTrans.tr G x) f O') = pbT (GlobalTheory.HeatTrans.tr G x) (dd O f) O' := by
  first | exact @GlobalTheory.Heat.IsInv.pbT_tr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

noncomputable section

namespace GlobalTheory.HeatTransWt

theorem valR_pbT_le {A : Type} [CommRing A] {X Z : Scheme.{0}} (w : Sp A ⟶ Z) (T : Z ⟶ X) {U : X.Opens}
    {U' : Z.Opens} (hU : U' ≤ T ⁻¹ᵁ U) (h : ⊤ ≤ w ⁻¹ᵁ U') (f : Γ(X, U)) :
    valR w U' (pbT T f U') = valR (w ≫ T) U f := by
  have h' : ⊤ ≤ (w ≫ T) ⁻¹ᵁ U := h.trans (w.preimage_mono hU)
  unfold valR
  rw [dite_eq_left h, dite_eq_left h', GlobalTheory.KS.pbT_of_le T hU]
  rw [← Scheme.Hom.appLE_comp_appLE w T U U' ⊤ hU h]
  rfl

theorem isWt_pbT_tr : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (α : Q.X) (U U' : Y.H.left.Opens), U' ≤ GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U → ∀ f : Γ(Y.H.left, U), IsWt Y α U f → IsWt Y α U' (pbT (GlobalTheory.HeatTrans.tr Y.H x) f U') := by
  intro R _ _ Q O _ _ _ oa Y x α U U' hU f hf S _ φ x₁ x₁' c a a' ha ha' hV hV' hq hc
  have hqm : IsMonHom Y.q := Y.q_linear.isMonHom
  let z : Over.mk (spMap φ) ⟶ Y.H := toUnit _ ≫ x
  have hleft : ∀ w : Over.mk (spMap φ) ⟶ Y.H, (w * z).left = w.left ≫ GlobalTheory.HeatTrans.tr Y.H x := fun w => by
    have e : w ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)) = w * z := by
      rw [MonObj.comp_mul, Category.comp_id, ← Category.assoc, toUnit_unique (w ≫ toUnit Y.H) (toUnit _)]
    rw [← e]; rfl
  rw [valR_pbT_le a' _ hU hV', valR_pbT_le a _ hU hV]
  subst ha ha'
  rw [← hleft, ← hleft]
  refine hf S φ (x₁ * z) (x₁' * z) c _ _ rfl rfl ?_ ?_ ?_ ?_
  · rw [hleft]; exact hV.trans (x₁.left.preimage_mono hU)
  · rw [hleft]; exact hV'.trans (x₁'.left.preimage_mono hU)
  · rw [MonObj.mul_comp, MonObj.mul_comp, hq]
  · intro χ y J hJ
    have h1 := ((GlobalTheory.TorusModel.isAdd_iff _ _ _).1 (Y.rep.2 _ x₁ z)).2 χ y J hJ
    have h1' := ((GlobalTheory.TorusModel.isAdd_iff _ _ _).1 (Y.rep.2 _ x₁' z)).2 χ y J hJ
    simp only [Y.Φ_b, GlobalTheory.TorusModel.cv] at h1 h1'
    rw [hq] at h1'
    refine mul_right_cancel (h1'.trans ?_)
    rw [hc χ y J hJ, _root_.mul_assoc, ← h1, _root_.mul_assoc]

end GlobalTheory.HeatTransWt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageTrQ\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

theorem _root_.GlobalTheory.T.isRaynaudTorusWeight_pullback_pointTranslation : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (α : Q.X) (U U' : Y.H.left.Opens), U' ≤ GlobalTheory.HeatTrans.tr Y.H x ⁻¹ᵁ U → ∀ f : Γ(Y.H.left, U), IsWt Y α U f → IsWt Y α U' (pbT (GlobalTheory.HeatTrans.tr Y.H x) f U') := by
  first | exact @GlobalTheory.HeatTransWt.isWt_pbT_tr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartFunctionRelOfTranslateSectionValuesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldCommutesPointTranslationStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightPullbackPointTranslationStatement\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

noncomputable section


open GlobalTheory.HeatTrans in
theorem GlobalTheory.HeatTrans.exists_heat_translate : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h : Heat Y.H Y.q.left Q.P.L dd ⇑D), IsBasic Y h → ∀ (x : 𝟙_ (Over (Sp R)) ⟶ Y.H), ∃ h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd ⇑D, h₁.Θ = h.Θ ∧ h₁.u = h.u ∧ (∀ i, (∃ V : Q.P.A.left.Opens, h₁.W i = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (h₁.p i) ∧ IsWt Y 0 _ (h₁.p' i) ∧ ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ h₁.W i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f → IsWt Y α (Y.q.left ⁻¹ᵁ V) (h₁.d i _ f)) ∧ ∀ (k : ℕ) (τ τ' : SecM Y.q.left Q.P.L k) (σ σ' : SecM ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ r z J = sval τ (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J) → (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ' r z J = sval τ' (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J) → h.Acts k τ τ' → h₁.Acts k σ σ' := by
  intro R _ _ Q O _ _ _ oa Y n v dd hinv D h hB x
  have hTeq : (𝟙 Y.H * (toUnit Y.H ≫ x)).left = tr Y.H x := rfl
  rw [hTeq]
  have hTS := tr_tr_inv Y.H x
  have hST := tr_inv_tr Y.H x
  have hT := tr_hom Y.H x
  have hS := tr_hom Y.H x⁻¹
  set T := tr Y.H x with hTd
  set S := tr Y.H x⁻¹ with hSd
  have hdd : ∀ a (O O' : Y.H.left.Opens), O' ≤ T ⁻¹ᵁ O → ∀ f : Γ(Y.H.left, O),
      dd a O' (pbT T f O') = pbT T (dd a O f) O' := fun a => GlobalTheory.T.invariantVectorField_commutes_pointTranslation R Y.H (v a) (dd a) (hinv a) x
  have hpre : ∀ U : Y.H.left.Opens, S ⁻¹ᵁ (T ⁻¹ᵁ U) = U := fun U => by
    rw [← Scheme.Hom.comp_preimage, hST]; rfl
  have hpre' : ∀ U : Y.H.left.Opens, T ⁻¹ᵁ (S ⁻¹ᵁ U) = U := fun U => by
    rw [← Scheme.Hom.comp_preimage, hTS]; rfl
  refine ⟨⟨h.Θ, h.symm, h.u, h.J, (fun i => T ⁻¹ᵁ h.W i), h.j, (fun i => conjF T S (h.d i)),
    (fun i => pbT T (h.p i) (T ⁻¹ᵁ h.W i)), (fun i => pbT T (h.p' i) (T ⁻¹ᵁ h.W i)), ?_, ?_, ?_, ?_⟩, rfl, rfl, ?_, ?_⟩
  · refine top_le_iff.1 fun z _ => ?_
    have hz : T z ∈ ⨆ i, h.W i := h.cover ▸ trivial
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 hz
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, hi⟩
  · intro i
    rw [Scheme.Hom.comp_preimage]
    exact T.preimage_mono (h.le i)
  · intro i
    exact isLift_conjF Y.H D hTS hST hT hS (h.lift i)
  · intro k i i' O₁ hO f
    have hOi : O₁ ≤ T ⁻¹ᵁ h.W i := hO.trans inf_le_left
    have hOi' : O₁ ≤ T ⁻¹ᵁ h.W i' := hO.trans inf_le_right
    have hSO : S ⁻¹ᵁ O₁ ≤ h.W i ⊓ h.W i' :=
      le_inf ((S.preimage_mono hOi).trans (hpre _).le) ((S.preimage_mono hOi').trans (hpre _).le)
    have hg : S ⁻¹ᵁ O₁ ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j i) ⊓ Q.P.L.U (h.j i')) :=
      le_inf (hSO.trans (inf_le_left.trans (h.le i))) (hSO.trans (inf_le_right.trans (h.le i')))
    have hg' : O₁ ≤ (T ≫ Y.q.left) ⁻¹ᵁ (Q.P.L.U (h.j i) ⊓ Q.P.L.U (h.j i')) := by
      rw [Scheme.Hom.comp_preimage, ← hpre' O₁]
      exact T.preimage_mono hg
    have hOO : O₁ ≤ T ⁻¹ᵁ (S ⁻¹ᵁ O₁) := (hpre' O₁).ge
    rw [op_conjF Y.H dd hTS hST hT hdd h.Θ h.u (h.d i) (h.p i) (h.p' i) k hOi,
      op_conjF Y.H dd hTS hST hT hdd h.Θ h.u (h.d i') (h.p i') (h.p' i') k hOi',
      GlobalTheory.KS.pbT_mul, pbT_pow S le_rfl _ _, _root_.GlobalTheory.KS.InvField.pbT_pbT S (T ≫ Y.q.left) hg' le_rfl]
    have hSTq : S ≫ T ≫ Y.q.left = Y.q.left := by rw [← Category.assoc, hST, Category.id_comp]
    rw [hSTq, h.glue k i i' _ hSO, GlobalTheory.KS.pbT_mul, pbT_pow T hOO, _root_.GlobalTheory.KS.InvField.pbT_pbT T Y.q.left hg hOO]
  · intro i
    obtain ⟨⟨V, hV⟩, hp, hp', hd⟩ := hB i
    refine ⟨?_, GlobalTheory.T.isRaynaudTorusWeight_pullback_pointTranslation R Q O oa Y x 0 _ _ le_rfl _ hp, GlobalTheory.T.isRaynaudTorusWeight_pullback_pointTranslation R Q O oa Y x 0 _ _ le_rfl _ hp', ?_⟩
    · exact ⟨_, (congrArg (T ⁻¹ᵁ ·) hV).trans (preimage_tr_q Y x V)⟩
    · intro α V₁ hV₁ f hf
      obtain ⟨V₂, hV₂⟩ : ∃ V₂, S ⁻¹ᵁ (Y.q.left ⁻¹ᵁ V₁) = Y.q.left ⁻¹ᵁ V₂ := ⟨_, preimage_tr_q Y x⁻¹ V₁⟩
      have hle : S ⁻¹ᵁ (Y.q.left ⁻¹ᵁ V₁) ≤ h.W i := (S.preimage_mono hV₁).trans (hpre _).le
      have hf' : IsWt Y α (S ⁻¹ᵁ (Y.q.left ⁻¹ᵁ V₁)) (pbT S f (S ⁻¹ᵁ (Y.q.left ⁻¹ᵁ V₁))) :=
        GlobalTheory.T.isRaynaudTorusWeight_pullback_pointTranslation R Q O oa Y x⁻¹ α _ _ le_rfl f hf
      have gen : ∀ (U : Y.H.left.Opens), U = Y.q.left ⁻¹ᵁ V₂ → ∀ g : Γ(Y.H.left, U), U ≤ h.W i → IsWt Y α U g →
          IsWt Y α U (h.d i U g) := by
        rintro U rfl g hU hg
        exact hd α V₂ hU g hg
      exact GlobalTheory.T.isRaynaudTorusWeight_pullback_pointTranslation R Q O oa Y x α _ _ (hpre' _).ge _ (gen _ hV₂ _ hle hf')
  · intro k τ τ' σ σ' hσ hσ' hA i
    have hW : S ⁻¹ᵁ (T ⁻¹ᵁ h.W i) ≤ h.W i := (hpre _).le
    show rsT (σ'.f fun _ => h.j i) (T ⁻¹ᵁ h.W i) = op Y.H dd h.Θ h.u (conjF T S (h.d i)) (pbT T (h.p i) (T ⁻¹ᵁ h.W i))
      (pbT T (h.p' i) (T ⁻¹ᵁ h.W i)) k (T ⁻¹ᵁ h.W i) (rsT (σ.f fun _ => h.j i) (T ⁻¹ᵁ h.W i))
    rw [GlobalTheory.T.chartFunction_rel_of_translate_section_values R Q O oa Y x k σ' τ' hσ' (h.j i) (h.W i) (h.le i), GlobalTheory.T.chartFunction_rel_of_translate_section_values R Q O oa Y x k σ τ hσ (h.j i) (h.W i) (h.le i),
      op_conjF Y.H dd hTS hST hT hdd h.Θ h.u (h.d i) (h.p i) (h.p' i) k (le_rfl : T ⁻¹ᵁ h.W i ≤ T ⁻¹ᵁ h.W i),
      _root_.GlobalTheory.KS.InvField.pbT_pbT S T le_rfl le_rfl, hST, pbT_id hW,
      op_rsT Y.H dd (fun a => (hinv a).1) h.Θ h.u (h.d i) (h.lift i).1 (h.p i) (h.p' i) k hW le_rfl,
      GlobalTheory.KS.pbT_rsT T hW (hpre' _).ge, hA i]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperatorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperatorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.exists_translated_torus_invariant_heat_operator : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h : Heat Y.H Y.q.left Q.P.L dd ⇑D), IsBasic Y h → ∀ (x : 𝟙_ (Over (Sp R)) ⟶ Y.H), ∃ h₁ : Heat Y.H ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L dd ⇑D, h₁.Θ = h.Θ ∧ h₁.u = h.u ∧ (∀ i, (∃ V : Q.P.A.left.Opens, h₁.W i = Y.q.left ⁻¹ᵁ V) ∧ IsWt Y 0 _ (h₁.p i) ∧ IsWt Y 0 _ (h₁.p' i) ∧ ∀ (α : Q.X) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ h₁.W i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V) f → IsWt Y α (Y.q.left ⁻¹ᵁ V) (h₁.d i _ f)) ∧ ∀ (k : ℕ) (τ τ' : SecM Y.q.left Q.P.L k) (σ σ' : SecM ((𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left) Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ r z J = sval τ (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J) → (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval σ' r z J = sval τ' (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J) → h.Acts k τ τ' → h₁.Acts k σ σ' := by
  first | exact @GlobalTheory.HeatTrans.exists_heat_translate
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperatorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGauge =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGauge", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaugedTorusInvariantHeatOperatorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslatedTorusInvariantHeatOperatorStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

namespace GlobalTheory.Heat.ConjGauge
open ReciprocityTheory.ChartRestriction.G.Semi

theorem exists_pullSec {X Y : Scheme.{0}} (L : LB X) (hL : L.IsLB) (m : Y ⟶ X) (T : Y ⟶ Y) (k : ℕ)
    (τ : SecM m L k) : ∃ σ : SecM (T ≫ m) L k, ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J : (Z ⟶ X) → L.ι),
      Good L z J → sval σ r z J = sval τ (r ≫ T) z J := by
  have hF : FormEq (K := Fin 1 ⊕ PEmpty.{1}) (Sum.elim (fun _ : Fin 1 => T ≫ m) PEmpty.elim)
      (Sum.elim (fun _ : Fin 1 => (k : ℤ)) PEmpty.elim) (K' := Fin 1) (fun _ => T ≫ m) (fun _ => (k : ℤ)) := by
    intro U _ h
    simp [Fintype.prod_sum_type]
  obtain ⟨σ, hσ⟩ := exists_sec hL hF (pullMulSec τ T (LB.oneGen L (Y := Y)) (_root_.GlobalTheory.SelfUnif.oneGen_isGen L))
  refine ⟨σ, fun Z r z J hJ => ?_⟩
  rw [hσ Z r z J hJ, sval_pullMulSec τ T _ _ r z hJ, val_one, Units.val_one, _root_.mul_one]

theorem conj_gauge : ∀ (R : Type) [CommRing R] [IsDomain R] [Algebra ℚ R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Fin n → TanM (𝟙 (Sp R)) Y.H) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h : Heat Y.H Y.q.left Q.P.L dd ⇑D), IsBasic Y h → ∀ (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (e : LB.Gen (LB.LinComb Q.P.L (K := Fin 2) ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])) (β : Q.X), e.IsGen → (∀ (j : Fin 2 → Q.P.L.ι) (V : Q.P.A.left.Opens), Y.q.left ⁻¹ᵁ V ≤ LB.wchart Q.P.L ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] j → IsWt Y β (Y.q.left ⁻¹ᵁ V) (rsT (e.s j).val (Y.q.left ⁻¹ᵁ V))) → ∃ h' : Heat Y.H Y.q.left Q.P.L dd ⇑D, IsBasic Y h' ∧ h'.Θ = h.Θ ∧ h'.u = h.u ∧ ∀ (k : ℕ) (τ τ' ρ ρ' : SecM Y.q.left Q.P.L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ r z J = sval τ (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J * ((val e r z J) ^ k).val) → (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ' r z J = sval τ' (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J * ((val e r z J) ^ k).val) → h.Acts k τ τ' → h'.Acts k ρ ρ' := by
  intro R _ _ _ Q O _ _ _ oa Y n v dd hv D h hB x e β he hwt
  obtain ⟨h₁, hΘ₁, hu₁, hB₁, hA₁⟩ := GlobalTheory.T.exists_translated_torus_invariant_heat_operator R Q O oa Y n v dd hv D h hB x
  obtain ⟨h', hB', hΘ', hu', hA'⟩ := GlobalTheory.T.exists_gauged_torusInvariant_heatOperator R Q O oa Y n v dd hv D x h₁ hB₁ e β he hwt
  refine ⟨h', hB', hΘ'.trans hΘ₁, hu'.trans hu₁, fun k τ τ' ρ ρ' hρ hρ' hact => ?_⟩
  obtain ⟨σ, hσ⟩ := exists_pullSec Q.P.L Q.P.isLB Y.q.left (𝟙 Y.H * (toUnit Y.H ≫ x)).left k τ
  obtain ⟨σ', hσ'⟩ := exists_pullSec Q.P.L Q.P.isLB Y.q.left (𝟙 Y.H * (toUnit Y.H ≫ x)).left k τ'
  exact hA' k σ σ' ρ ρ' (fun Z r z J hJ => by rw [hσ Z r z J hJ]; exact hρ Z r z J hJ)
    (fun Z r z J hJ => by rw [hσ' Z r z J hJ]; exact hρ' Z r z J hJ) (hA₁ k τ τ' σ σ' hσ hσ' hact)

end GlobalTheory.Heat.ConjGauge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGauge =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGaugeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGaugeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGauge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGaugeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeatOperatorGluedPullbackBundlePower\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldConstFnEqZero\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

noncomputable section

namespace GlobalTheory.Heat

theorem Heat.acts_const_at_points : ∀ {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}} (m : G.left ⟶ X) (L : LB X), L.IsLB → ∀ (v : Fin n → TanM (𝟙 (Sp R)) G) (dd : Fin n → Fld G.left), (∀ a, IsInv G (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h : Heat G m L dd ⇑D) (k : ℕ) (a b : R) (ρ τ ρ' τ' : SecM m L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → gs r z ⊤ (scal G.hom a) * sval ρ r z J = gs r z ⊤ (scal G.hom b) * sval τ r z J) → h.Acts k ρ ρ' → h.Acts k τ τ' → ∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → gs r z ⊤ (scal G.hom a) * sval ρ' r z J + gs r z ⊤ (scal G.hom (2 * (k : R) * D a)) * sval ρ r z J = gs r z ⊤ (scal G.hom b) * sval τ' r z J + gs r z ⊤ (scal G.hom (2 * (k : R) * D b)) * sval τ r z J := by
  intro R _ G _ _ n X m L hL v dd hinv D h k a b ρ τ ρ' τ' hpt hρ hτ

  have cTop : ∀ c : R, constFn G.hom ⊤ c = scal G.hom c := fun c => by
    simp only [constFn, Out.scal, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
    rfl
  have gsR : ∀ {Z : Scheme.{0}} (r : Z ⟶ G.left) (z : Z) {O O₀ : G.left.Opens} (hle : O ≤ O₀) (hz : r z ∈ O)
      (s : Γ(G.left, O₀)), gs r z O (rsT s O) = gs r z O₀ s := fun r z _ _ hle hz s => by
    rw [GlobalTheory.KS.rsT_of_le hle]; exact gs_res r z hle hz s
  have gsC : ∀ {Z : Scheme.{0}} (r : Z ⟶ G.left) (z : Z) (O : G.left.Opens) (hz : r z ∈ O) (c : R),
      gs r z O (constFn G.hom O c) = gs r z ⊤ (scal G.hom c) := fun r z O hz c => by
    rw [← GlobalTheory.KS.rsT_constFn G.hom (le_top : O ≤ ⊤) c, gsR r z le_top hz, cTop]
  have cMul : ∀ (O : G.left.Opens) (c : R),
      constFn G.hom O (2 * (k : R) * c) = 2 * (k : Γ(G.left, O)) * constFn G.hom O c := fun O c => by
    simp [constFn, map_mul, map_natCast, map_ofNat]
  have hWc : ∀ i, h.W i ≤ LB.wchart L (fun _ : Fin 1 => m) (fun _ => h.j i) := fun i => Glue.le_wchart _ (h.le i)

  have leib : ∀ i (c : R) (F : Γ(G.left, h.W i)),
      op G dd h.Θ h.u (h.d i) (h.p i) (h.p' i) k (h.W i) (constFn G.hom (h.W i) c * F) =
        constFn G.hom (h.W i) c * op G dd h.Θ h.u (h.d i) (h.p i) (h.p' i) k (h.W i) F +
          constFn G.hom (h.W i) (2 * (k : R) * D c) * F := by
    intro i c F
    have hd := (h.lift i).1.2.1 (h.W i) le_rfl (constFn G.hom (h.W i) c) F
    have hdc := (h.lift i).2 (h.W i) le_rfl c
    have hdd : ∀ a' (f : Γ(G.left, h.W i)), dd a' (h.W i) (constFn G.hom (h.W i) c * f) =
        constFn G.hom (h.W i) c * dd a' (h.W i) f := fun a' f => by
      rw [(hinv a').1.2.1 (h.W i) le_top, IsInv.apply_constFn G (v a') (dd a') (hinv a'), mul_zero, add_zero]
    have hs : ∀ (f : Γ(G.left, h.W i)),
        ∑ a', ∑ b', constFn G.hom (h.W i) (h.Θ a' b') * dd a' (h.W i) (dd b' (h.W i) (constFn G.hom (h.W i) c * f)) =
          constFn G.hom (h.W i) c * ∑ a', ∑ b', constFn G.hom (h.W i) (h.Θ a' b') * dd a' (h.W i) (dd b' (h.W i) f) := by
      intro f
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun a' _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun b' _ => ?_
      rw [hdd, hdd]; ring
    have hs' : ∑ a', constFn G.hom (h.W i) (h.u a') * dd a' (h.W i) (constFn G.hom (h.W i) c * F) =
        constFn G.hom (h.W i) c * ∑ a', constFn G.hom (h.W i) (h.u a') * dd a' (h.W i) F := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun a' _ => ?_
      rw [hdd]; ring
    simp only [op]
    rw [hs, hs', hd, hdc, cMul]
    ring

  have onW : ∀ i, constFn G.hom (h.W i) a * rsT (ρ'.f fun _ => h.j i) (h.W i) +
      constFn G.hom (h.W i) (2 * (k : R) * D a) * rsT (ρ.f fun _ => h.j i) (h.W i) =
      constFn G.hom (h.W i) b * rsT (τ'.f fun _ => h.j i) (h.W i) +
      constFn G.hom (h.W i) (2 * (k : R) * D b) * rsT (τ.f fun _ => h.j i) (h.W i) := by
    intro i
    have hA : constFn G.hom (h.W i) a * rsT (ρ.f fun _ => h.j i) (h.W i) =
        constFn G.hom (h.W i) b * rsT (τ.f fun _ => h.j i) (h.W i) := by
      refine fn_ext fun x hx => ?_
      obtain ⟨J, hJ, e⟩ := exists_good L hL x (fun _ : Fin 1 => m) (fun _ => h.j i) (fun _ _ _ => rfl)
        (fun _ => h.le i hx)
      have hp := hpt G.left (𝟙 _) x J hJ
      have s1 : ∀ σ : SecM m L k, sval σ (𝟙 G.left) x J = gs (𝟙 G.left) x (h.W i) (rsT (σ.f fun _ => h.j i) (h.W i)) :=
        fun σ => by
          rw [sval_of σ (𝟙 G.left) x J (fun _ => h.j i) (fun q => by rw [Category.id_comp]; exact e q)]
          exact (gsR (𝟙 G.left) x (hWc i) hx _).symm
      rw [s1, s1] at hp
      rw [gs_mul _ x _ hx, gs_mul _ x _ hx, gsC _ x _ hx, gsC _ x _ hx]
      exact hp
    rw [hρ i, hτ i, ← leib, ← leib, hA]

  intro Z r z J hJ
  obtain ⟨i, hi⟩ : ∃ i, r z ∈ h.W i := by
    have : r z ∈ ⨆ i, h.W i := by rw [h.cover]; trivial
    exact TopologicalSpace.Opens.mem_iSup.1 this
  have hz1 := hJ.mem (fun _ : Fin 1 => m) r
  have hz2 : r z ∈ LB.wchart L (fun _ : Fin 1 => m) (fun _ => h.j i) := hWc i hi
  have sv : ∀ σ : SecM m L k, sval σ r z J =
      (trF (fun _ : Fin 1 => m) (fun _ => (k : ℤ)) r z (fun _ => J (r ≫ m)) (fun _ => h.j i)).val *
        gs r z (h.W i) (rsT (σ.f fun _ => h.j i) (h.W i)) := fun σ => by
    exact (sec_trans σ r z hz1 hz2).trans (congrArg _ (gsR r z (hWc i) hi _).symm)
  have E := congrArg (gs r z (h.W i)) (onW i)
  simp only [gs_add r z _ hi, gs_mul r z _ hi, gsC r z _ hi] at E
  rw [sv ρ, sv τ, sv ρ', sv τ']
  linear_combination (trF (fun _ : Fin 1 => m) (fun _ => (k : ℤ)) r z (fun _ => J (r ≫ m)) (fun _ => h.j i)).val * E

end GlobalTheory.Heat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPoints =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPointsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPointsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

theorem _root_.GlobalTheory.T.leibniz_along_baseConstants_at_points : ∀ {R : Type} [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] {n : ℕ} {X : Scheme.{0}} (m : G.left ⟶ X) (L : LB X), L.IsLB → ∀ (v : Fin n → TanM (𝟙 (Sp R)) G) (dd : Fin n → Fld G.left), (∀ a, IsInv G (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h : Heat G m L dd ⇑D) (k : ℕ) (a b : R) (ρ τ ρ' τ' : SecM m L k), (∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → gs r z ⊤ (scal G.hom a) * sval ρ r z J = gs r z ⊤ (scal G.hom b) * sval τ r z J) → h.Acts k ρ ρ' → h.Acts k τ τ' → ∀ (Z : Scheme.{0}) (r : Z ⟶ G.left) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J → gs r z ⊤ (scal G.hom a) * sval ρ' r z J + gs r z ⊤ (scal G.hom (2 * (k : R) * D a)) * sval ρ r z J = gs r z ⊤ (scal G.hom b) * sval τ' r z J + gs r z ⊤ (scal G.hom (2 * (k : R) * D b)) * sval τ r z J := by
  first | exact @GlobalTheory.Heat.Heat.acts_const_at_points
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPointsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeatOperatorConjTranslationGaugeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeibnizAlongBaseConstantsAtPointsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaShiftFourierTermTranslationGaugeStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorActsOnFourierTermsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

noncomputable section

namespace GlobalTheory.HeatDefect

theorem exists_gauge_translate : ∀ {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X] {oa : Q.OAct O} (Y : Ray oa) (x : 𝟙_ (Over (Sp R)) ⟶ Y.H) (e : LB.Gen (LB.LinComb Q.P.L (K := Fin 2) ![Y.q.left, (𝟙 Y.H * (toUnit Y.H ≫ x)).left ≫ Y.q.left] ![1, -1])), e.IsGen → ∀ (k : ℕ) (τ : SecM Y.q.left Q.P.L k), ∃ ρ : SecM Y.q.left Q.P.L k, (∀ (Z : Scheme.{0}) (r : Z ⟶ Y.H.left) (z : Z) (J : (Z ⟶ Q.P.A.left) → Q.P.L.ι), Good Q.P.L z J → sval ρ r z J = sval τ (r ≫ (𝟙 Y.H * (toUnit Y.H ≫ x)).left) z J * ((val e r z J) ^ k).val) := by
  intro R _ _ Q O _ _ _ oa Y x e he k τ
  obtain ⟨ρ, hρ⟩ := exists_sec (L := Q.P.L) Q.P.isLB
    (φ' := fun _ : Fin 1 => Y.q.left) (ε' := fun _ => (k : ℤ))
    (by
      intro U _ g
      simp only [Fintype.prod_sum_type, Fin.prod_univ_two, Fin.prod_univ_one, Sum.elim_inl, Sum.elim_inr,
        Matrix.cons_val_zero, Matrix.cons_val_one]
      rw [zpow_mul, zpow_mul, zpow_one, zpow_neg_one, _root_.mul_comm]
      exact inv_mul_cancel_right _ _)
    (pullMulSec τ (𝟙 Y.H * (toUnit Y.H ≫ x)).left (GeneratorPullback.powGen Q.P.L _ _ e k) (ReciprocityTheory.ChartRestriction.G.DVR.powGen_isGen _ _ _ e he k))
  refine ⟨ρ, fun Z r z J hJ => ?_⟩
  rw [hρ Z r z J hJ, sval_pullMulSec _ _ _ _ r z hJ]
  congr 1
  exact congrArg Units.val (map_pow _ _ _)

theorem exists_conj_shift : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [IsAdicComplete (maximalIdeal R) R] [Algebra ℚ R] (Dd : DegData R (maximalIdeal R)) (O : Type) [CommRing O] [StarRing O] [Module O Dd.toPre.X] (oa : Dd.toPre.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (m : ℕ) (t : Fin m → R) (gam : Fin m → LinearMap.BilinForm ℤ Dd.toPre.X), IsMonomial Dd.toPre t gam → (∀ i, t i ≠ 0) → ∀ D : Derivation ℤ R R, (∀ i, D (t i) ∈ Ideal.span {t i}) → ∀ h : Heat Y.H Y.q.left Dd.toPre.P.L dd ⇑D, IsBasic Y h → ∀ mu : Dd.toPre.X, ∃ (h' : Heat Y.H Y.q.left Dd.toPre.P.L dd ⇑D) (w : Dd.toPre.X →+ R) (π π' : R), IsBasic Y h' ∧ h'.Θ = h.Θ ∧ h'.u = h.u ∧ ∀ (k : ℕ) (α : Dd.toPre.X) (σ : Dd.toPre.SecB k α) (σ₁ σ₁' : Dd.toPre.SecB k (α + k • mu)), 1 ≤ k → ShiftEq Dd.toPre k mu α σ σ₁ 0 σ₁ → TActs Y h k (α + k • mu) σ₁ σ₁' → ∃ σ'' : Dd.toPre.SecB k α, TActs Y h' k α σ σ'' ∧ ShiftEq Dd.toPre k mu α σ'' σ₁' (2 * (k : R) * w α + 2 * (k : R) ^ 2 * π + 2 * (k : R) * π') σ₁ := by
  intro R _ _ _ _ _ _ Dd O _ _ _ oa Y n v dd hv m t gam hm ht D hD h hb mu
  obtain ⟨x, e, β, w, π, π', he, hwe, hTR⟩ := _root_.GlobalTheory.HeatShift.shift_term R Dd O oa Y m t gam hm ht D hD mu
  obtain ⟨h', hb', hΘ, hu, hint⟩ :=
    _root_.GlobalTheory.Heat.ConjGauge.conj_gauge R Dd.toPre O oa Y n (fun a => v a) dd hv D h hb x e β he hwe
  refine ⟨h', w, π, π', hb', hΘ, hu, ?_⟩
  intro k α σ σ₁ σ₁' hk hs hA
  obtain ⟨τ₁, τ₁', hτ₁, hτ₁', hA₁⟩ := hA
  obtain ⟨σ'', τ, τ'', hτ, hτ'', hA'⟩ := GlobalTheory.T.torusInvariant_heatOperator_acts_on_fourierTerms R Dd O oa Y n v dd hv D h' hb' k α σ
  obtain ⟨ρ, hρ⟩ := exists_gauge_translate Y x e he k τ₁
  obtain ⟨ρ', hρ'⟩ := exists_gauge_translate Y x e he k τ₁'
  have hAρ := hint k τ₁ τ₁' ρ ρ' hρ hρ' hA₁
  obtain ⟨a, b, -, hab⟩ := hTR k α hk
  obtain ⟨h1, h2⟩ := hab σ σ₁ τ τ₁ ρ hs hτ hτ₁ hρ
  exact ⟨σ'', ⟨τ, τ'', hτ, hτ'', hA'⟩, h2 σ'' σ₁' τ'' τ₁' ρ' hτ'' hτ₁' hρ'
    (GlobalTheory.T.leibniz_along_baseConstants_at_points Y.H Y.q.left Dd.toPre.P.L Dd.toPre.P.isLB (fun a => v a) dd hv D h' k a b ρ τ ρ' τ'' h1 hAρ hA')⟩

end GlobalTheory.HeatDefect
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShiftStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShiftStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjugateHeatOperatorPeriodShiftStatement =====
