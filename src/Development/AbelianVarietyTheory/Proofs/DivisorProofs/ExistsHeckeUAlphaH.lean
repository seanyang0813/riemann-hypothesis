module

public import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapFinPartILocFEq
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)
noncomputable section

namespace GlobalTheory.FunObj.SqNum

theorem exists_heckeU_alphaH : ∀ {D : D7} {T : Type} {L : LevCh D T} {μ₀ : T}, L.Is μ₀ →
    ∀ (i j : Fin D.R.m), ∃ χ : HeckeU D (botSmall D i j),
      ∀ x, χ.f x = (alphaH L μ₀ i j).1 (finIdl D x) := by
  intro D T L μ₀ hL i j
  obtain ⟨χ₁, h1, -⟩ := GlobalTheory.Mem.Col2.SplitChar.exists_of_isMu0 (N := 0) ⟨0, rfl⟩ (L.C.isMu0 j) fun g => (D.hc _).e_int j
  have hr := (ranks_exact D i j).2.1
  rcases Nat.mod_two_eq_zero_or_one (rankV D i j) with h | h
  · refine ⟨GlobalTheory.AlphaSplit.mulU _ χ₁ (GlobalTheory.Mem.Col2.SplitChar.trivial D (N := 0) ⟨0, rfl⟩)
      (Int.even_iff.2 (by omega)), fun x => ?_⟩
    rw [GlobalTheory.AlphaSplit.mulU_f, h1]
    simp [alphaH, h, hL.xi_base, GlobalTheory.Mem.Col2.SplitChar.trivial]
  · refine ⟨GlobalTheory.AlphaSplit.mulU _ χ₁ (GlobalTheory.AlphaSplit.etaU L.C.isEta) (Int.even_iff.2 (by omega)), fun x => ?_⟩
    rw [GlobalTheory.AlphaSplit.mulU_f, h1, GlobalTheory.AlphaSplit.etaU_f]
    simp [alphaH, h, hL.xi_base]

end GlobalTheory.FunObj.SqNum
