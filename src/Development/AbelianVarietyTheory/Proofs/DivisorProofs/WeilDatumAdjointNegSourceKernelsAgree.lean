module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExternalProductOnHermitianSumSmulLeft
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ConjugateAdjointDagger
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ConjWeilDatumViaAdjointExchangedPair
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HermitianAdjointSymplecticActionThetaHeisenberg
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsWeilDatumConjNegHermitianSpaces
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaHeisenbergConjugationNegHermitianSpace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaTensorRuleTargetOrthogonalSum
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV GlobalTheory.RouteSeesaw

noncomputable section

namespace GlobalTheory.AdjSwap

theorem dagger_eq_adjM {D : D7} (S B : HSp D) (y : Mx D B.rank S.rank) :
    GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.dagger S B y = adjM S B y := by
  simp only [GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.dagger, adjM]
  rw [← Matrix.mul_assoc]
  rfl

theorem weil_adjoint_negSource : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (S B : HSp D) (χS χT : (AE D)ˣ →* Circle)
    (ω₂ : GA D B × GA D S →* Module.End ℂ (WO B S → ℂ)), IsWeilDatumO ψ B S χS χT ω₂ →
    ∃ (ω : GA D (negSp S) × GA D B →* Module.End ℂ (WO (negSp S) B → ℂ)) (χ χ' : (AE D)ˣ →* Circle),
      IsWeilDatumO ψ (negSp S) B χ χ' ω ∧ ∀ f : WO B S → ℂ, IsThetaFunO ψ B S f →
        IsThetaFunO ψ (negSp S) B (fun y => f (adjM S B y)) ∧
        ∀ g₁ u, thetaKO ω (negGA S u) g₁ (fun y => f (adjM S B y)) = thetaKO ω₂ g₁ u f := by
  intro D ψ hψ S B χS χT ω₂ H
  refine ⟨GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.conjSource (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.conjAdjoint ω₂), χT⁻¹, χS⁻¹,
    GlobalTheory.ConjWeil.weil_conjSource D ψ S B _ _ _ (GlobalTheory.ConjAdjWeil.isWeilDatumO_conjAdjoint D ψ B S _ _ ω₂ H),
    fun f hf => ?_⟩
  have e : (fun y : WO (negSp S) B => f (adjM S B y)) =
      GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.cj id (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.cj (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.dagger S B) f) := by
    funext y; simp [GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.cj, dagger_eq_adjM]
  rw [e]
  have h1 : IsThetaFunO ψ S B (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.cj (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.dagger S B) f) :=
    ((GlobalTheory.AdjointPair.adjoint_clauses D ψ hψ B S).2.2.1 f).2 hf
  refine ⟨((GlobalTheory.CjNeg.theta_heis_neg D ψ hψ S B).1 _).2.2 h1, fun g₁ u => ?_⟩
  show GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.conjSource (GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.conjAdjoint ω₂) (negGA S u, g₁) _ 0 = ω₂ (g₁, u) f 0
  rw [GlobalTheory.ConjWeil.conjSource_apply]
  simp only [MulEquiv.symm_apply_apply, GlobalTheory.ConjWeil.cj_id_cj_id]
  rw [GlobalTheory.TensorTargetRule.conjAdjoint_cj]
  simp [GlobalTheory.IndefiniteRowSideFullHecke.ConjugateAdjointDagger.cj, dagger_eq_adjM, adjM_zero]

end GlobalTheory.AdjSwap
