module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.BernsteinUnitaryProductIrreducible
public import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FinitePartTypes
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HermitianOrthogonalExtensionData
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsAllTiedNotStable
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.TypeAtOfDiscreteSeries
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalGridNodeType
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
noncomputable section
namespace GlobalTheory.CuspValueType
end GlobalTheory.CuspValueType
theorem GlobalTheory.CuspValueType.hasTypeAt_cusp_of_cusp_value_type : _root_.GlobalTheory.FunPr.ThetaLocalInputs → ∀ {D : D7} (θ : InfFam D), IsInfFam (D := D) θ → ∀ (N : GlobalTheory.Grid.Node D), N.V.SigOK → ∀ F ∈ N.Cusp θ, ∀ (w : SmT N.M) (τ : D.what₂.Tau), GlobalTheory.IndefiniteRowSideFullHecke.FinitePartTypes.HasTypeAt θ N.V τ (N.S τ) (F w) := by
  intro hP D θ hθ N hN F hF w τ
  have hgood : GoodPar N.V.rank (N.V.sig (tauE D τ)).1 (N.V.sig (tauE D τ)).2 (N.S τ) :=
    ⟨N.M.lam τ, N.M.ε τ, N.M.enum τ, GlobalTheory.Published.HermitianUnique.isHCParam_of_isDS (N.M.enum τ).1 (N.M.ds τ),
      GlobalTheory.TypeAtCompare.card_eq_of_congr (N.M.fr_unit τ) (N.M.fr_gram τ) (hN (tauE D τ))⟩
  have key : ∀ T, Mult.IsMultMap θ N.M ∅ 1 T → ∀ v, T v ∈ GlobalTheory.IndefiniteRowSideFullHecke.FinitePartTypes.typeSub θ N.V τ (N.S τ) := fun T hT v =>
    GlobalTheory.SeriesToClosure.hasTypeAt_of_isTypeAt θ N.V τ (N.S τ) (T v) hP.discreteSeriesUpqExists
      (GlobalTheory.Published.discreteSeriesHermitianUnique_iff.1 hP.discreteSeriesHermitianUnique) hP.harishChandraModules
      hP.casselmanWallach hθ hN hgood (hT.aut v)
      (GlobalTheory.CuspValueType.isTypeAt_value θ hP.harishChandraModules N.M hT v τ)
  have main : ∀ T ∈ Mult.Mult θ N.M ∅ 1, ∀ w, PiTensorProduct.lift T w ∈ GlobalTheory.IndefiniteRowSideFullHecke.FinitePartTypes.typeSub θ N.V τ (N.S τ) := by
    intro T hT
    induction hT using Submodule.span_induction with
    | mem T hT =>
      intro w
      induction w using PiTensorProduct.induction_on with
      | smul_tprod r v =>
        rw [map_smul, PiTensorProduct.lift.tprod]
        exact Submodule.smul_mem _ r (key T hT v)
      | add a b ha hb =>
        rw [map_add (f := _)]
        exact Submodule.add_mem _ ha hb
    | zero =>
      intro w
      simp only [map_zero, LinearMap.zero_apply]
      exact Submodule.zero_mem _
    | add a b _ _ ha hb =>
      intro w
      rw [map_add (f := _), LinearMap.add_apply]
      exact Submodule.add_mem _ (ha w) (hb w)
    | smul c a _ ha =>
      intro w
      rw [map_smul, LinearMap.smul_apply]
      exact Submodule.smul_mem _ c (ha w)
  have hF' := (Mult.mem_multT θ N.M ∅ 1 F).1 hF
  have eF : F = PiTensorProduct.lift (PiTensorProduct.lift.symm F) := (LinearEquiv.apply_symm_apply _ F).symm
  rw [eF]
  exact main _ hF' w
end
end

