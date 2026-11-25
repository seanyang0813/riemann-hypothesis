module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.StandardOrderExtendedBasisApplyLowBlock
public import Formalism.LocalRingCardinality.Params
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
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.OnesRepresent
public import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
import Formalism.LocalToGlobal.Columns.AlgebraMapMemMaximalIdealPowIff
public import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth
import Formalism.LocalToGlobal.Divisibility.CoefMod

@[expose] public section

open MeasureTheory ValuativeRel Matrix NumberField IsDedekindDomain

noncomputable section
namespace GlobalTheory.IndefiniteRowSideFullHecke.LocalOrderMatrix
open GlobalTheory.SplitWeil GlobalTheory.StepData GlobalTheory.SymChain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV

def ordX (R : Ranks) (j : ℕ) : XIx (Fin R.k) (Fin R.t) j ≃ Fin (R.N j) :=
  ((finSumFinEquiv.sumCongr finProdFinEquiv).trans finSumFinEquiv).trans
    (finCongr (by unfold Ranks.N; ring))

theorem ordX_d (R : Ranks) (j : ℕ) (i : Fin j) (l : Fin R.t) :
    (ordX R j (.inr (i, l))).val = R.k + j + (l.val + R.t * i.val) := rfl

section Points
variable {E k : Type} [Field E] [Field k] (ι : E →+* k) {a b : ℕ} {I J : Type}

end Points

section Match
variable {X : Fields} {Pr : Primes X} {R : Ranks} (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S₀ : Set ℕ}
  (mu : Tup X.F X.E X.K S₀) (cst : LocCst X (rowSG Pr sel mu)) (P : rowSG Pr sel mu) (σ₀ : X.K →+* ℂ)
  {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (ι : X.E →+* k)
  {s : ℕ} (S : SymData k s R.k)

variable [MeasurableSpace k] [BorelSpace k] (ν : Measure k)

end Match

end GlobalTheory.IndefiniteRowSideFullHecke.LocalOrderMatrix
