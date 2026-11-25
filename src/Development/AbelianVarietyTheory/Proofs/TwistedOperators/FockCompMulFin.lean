module

public import Development.AbelianVarietyTheory.Definitions.Divisors.KernelNormConstantSpec
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CompAtMtOfMemGfC
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.KerMovedVec
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEq

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.TopZeroInv

noncomputable section

namespace GlobalTheory.KerTrans

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc}

theorem toPair_fin (p : Pair T) (k : FinPt G p.small) :
    (G.toPair p k.1 1).1 ∈ GfC (G.pS p) ∧ (G.toPair p k.1 1).2 ∈ GfC (G.pT p) := by
  cases p <;> simp [GridData.toPair]

theorem ker_mul_fin (W : G.Weil) (p : Pair T) (F : WO (G.pS p) (G.pT p) → ℂ) (g k : GA D (G.V p.small))
    (h : GA D (G.V p.big)) : W.ker p F (g * k) h = W.ker p (W.om p (G.toPair p k 1) F) g h := by
  have e : G.toPair p (g * k) h = G.toPair p g h * G.toPair p k 1 := by
    rw [← GlobalTheory.RowClaim.toPair_mul, mul_one]
  unfold GridData.Weil.ker
  rw [e]
  simp only [thetaKO, Prod.mk.eta, map_mul, Module.End.mul_apply]

theorem fockComp_mul_fin : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} (W : G.Weil) (B : VertexFrames G)
    {p : Pair T}, p.InRange D.R.m → ∀ (f : WO (G.pS p) (G.pT p) → ℂ), IsThetaFunO W.ψ (G.pS p) (G.pT p) f →
    ∀ (g k : FinPt G p.small) (h : FinPt G p.big),
      fockComp W B p f (g * k) h = fockComp W B p (W.om p (G.toPair p k.1 1) f) g h := by
  intro D T L sc G W B p hp f hf g k h
  have hk := toPair_fin p k
  unfold fockComp
  congr 1
  funext m
  unfold jetTab kerFin
  rw [Subgroup.coe_mul, ker_mul_fin]
  congr 1
  exact GlobalTheory.OrientedHeis.om_fin_pureTensorO W.ψ _ _ _ _ (W.om p) (W.om_is p hp) W.θ W.θ_is _ hk.1 _ hk.2 _ _ _ _ f _ hf

end GlobalTheory.KerTrans

end
