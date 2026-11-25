module

public import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfAutomorphicEmbedding
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.OpTrace GlobalTheory.Cusp GlobalTheory.AutMult
open GlobalTheory.Orb (TypeDataG CcGA ResF)
open GlobalTheory.PRep (IsAdmissible fixed)

namespace GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

variable {D : D7}

abbrev radicalTwo (k : Type) [CommRing k] {a b r : ℕ} (h : a + b = r) : Subgroup (GL (Fin r) k) :=
  GlobalTheory.SmGL.unipRad k (GlobalTheory.SmGL.two (GlobalTheory.SmGL.stdSum h))

def NoRadicalFixed {V : HSp D} (T : TypeDataG V) : Prop :=
  ∀ (a b : ℕ) (h : a + b = V.rank), 0 < a → 0 < b → ∃ v : T.S, fixed (T.τ v) (radicalTwo (ResF v.1) h) = ⊥

def RadicalIntegralsVanish (V : HSp D) (f : GA D V → ℂ) : Prop :=
  ∀ 𝔉 : IsoFlag V, 𝔉.Proper → ∀ ν : Measure (NA 𝔉), ν.IsHaarMeasure →
    ∀ x y : GA D V, ∫ n : NA 𝔉, f (x * (n : GA D V) * y) ∂ν = 0

variable (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant]

structure IsCuspidalOp (f : GA D V → ℂ) : Prop where

  traceClass : IsTraceClass (RopG V μ f)

  trace_eq_integral : trace (RopG V μ f) = ∫ p, kernelQ (GQ V) f p p ∂autMeasure V μ

  traceClass_rep : ∀ c : UDual (GA D V), mCusp V μ c.rep.π ≠ 0 → IsTraceClass (repOp c.rep.π μ f)

  hasSum_trace : HasSum (fun c : UDual (GA D V) => ((mCusp V μ c.rep.π).toNat : ℂ) * repTrace c.rep.π μ f)
    (trace (RopG V μ f))

def CuspidalOperators : Prop :=
  ∀ f ∈ CcGA V, RadicalIntegralsVanish V f → RadicalIntegralsVanish V (starFn f) → IsCuspidalOp V μ f



end GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

end
