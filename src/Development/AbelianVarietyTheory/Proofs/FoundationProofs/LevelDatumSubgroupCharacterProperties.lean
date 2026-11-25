module

public import Development.AbelianVarietyTheory.Definitions.Foundations.StandardFiveNontrivial
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Polynomial Classical GlobalTheory.BadShare
namespace GlobalTheory.BadShare.LevGroup

variable {g : ℕ} [Fact g.Prime] {N : ℕ}

alias isNilpotent_of_isUp := _root_.GlobalTheory.BadShare.Basic.isNilpotent_of_isUp

theorem lev_group : ∀ (g : ℕ) [Fact g.Prime] (N : ℕ), ∀ L : Lev g N, L.Mem 1 ∧ (∀ u v, L.Mem u → L.Mem v → L.Mem (u * v)) ∧ L.chi 1 = 1 ∧ (∀ u v, L.Mem u → L.Mem v → L.chi (u * v) = L.chi u * L.chi v) ∧ ∀ u, L.Mem u → IsNilpotent (u.val - 1) :=
  fun _ _ _ L => ⟨_root_.GlobalTheory.BadShare.Basic.mem_one L, fun _ _ => _root_.GlobalTheory.BadShare.Basic.mem_mul L, _root_.GlobalTheory.BadShare.Basic.chi_one L, fun _ _ => _root_.GlobalTheory.BadShare.Basic.chi_mul L, fun _ hu => isNilpotent_of_isUp hu.1⟩

end GlobalTheory.BadShare.LevGroup
