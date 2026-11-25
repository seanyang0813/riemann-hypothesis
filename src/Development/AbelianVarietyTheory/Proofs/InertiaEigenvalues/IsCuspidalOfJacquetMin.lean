module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SubsingletonJacquetOfPerm
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
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.TypeRec GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.SerSys
open GlobalTheory.PRep GlobalTheory.SmGL

namespace GlobalTheory.JacMinCusp

open GlobalTheory.SmGL.CuspMax Matrix
open scoped TensorProduct

theorem blk_two_stdSum {a b n : ℕ} (h : a + b = n) (i : Fin n) :
    blk (two (stdSum h)) i = decide (a ≤ (i : ℕ)) := by
  obtain ⟨x, rfl⟩ := (stdSum h).surjective i
  rcases x with x | x
  · rw [← two_false, blk_apply]; simp [x.2]
  · rw [← two_true, blk_apply]; simp

theorem blk_two_stdSum_lt {a b n : ℕ} (h : a + b = n) (i j : Fin n) :
    blk (two (stdSum h)) i < blk (two (stdSum h)) j ↔ (i : ℕ) < a ∧ a ≤ (j : ℕ) := by
  rw [blk_two_stdSum, blk_two_stdSum]
  by_cases h1 : a ≤ (i : ℕ) <;> by_cases h2 : a ≤ (j : ℕ) <;> simp [h1, h2] <;> omega

theorem mem_unipRad_two_iff {R : Type} [CommRing R] {a b n : ℕ} (h : a + b = n) {g : GL (Fin n) R} :
    g ∈ unipRad R (two (stdSum h)) ↔ ∀ i j : Fin n, ¬ ((i : ℕ) < a ∧ a ≤ (j : ℕ)) →
      (g : Matrix (Fin n) (Fin n) R) i j = (1 : Matrix (Fin n) (Fin n) R) i j := by
  rw [mem_unipRad_iff_entries]
  simp only [blk_two_stdSum_lt]

end GlobalTheory.JacMinCusp
