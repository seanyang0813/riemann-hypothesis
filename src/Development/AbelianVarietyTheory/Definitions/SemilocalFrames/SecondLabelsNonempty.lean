module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

namespace GlobalTheory.Diag.PG

open Formalism.BasicNotions

def bx (x eps : ℝ) : ℝ := Real.exp (x ^ eps)

variable (D : D7)

def Top (τ : D.what₂.Tau) : Prop :=
  ∃ t : D.host.TT, (D.eTau τ : D.R.GG) = D.R.tau1 t

def uFirst (τ : D.what₂.Tau) : ℝ := (((D.hc τ).u ⟨0, by have := D.R.m_add_three_le_k; omega⟩ : ℚ) : ℝ)

def uLast (τ : D.what₂.Tau) : ℝ := (((D.hc τ).u ⟨D.R.k - 1, by have := D.R.m_add_three_le_k; omega⟩ : ℚ) : ℝ)

def vFirst (τ : D.what₂.Tau) : ℝ := (((D.hc τ).v ⟨0, by have := D.R.m_add_three_le_k; omega⟩ : ℚ) : ℝ)

def vLast (τ : D.what₂.Tau) : ℝ := (((D.hc τ).v ⟨D.R.k - 2, by have := D.R.m_add_three_le_k; omega⟩ : ℚ) : ℝ)

def bFirst (τ : D.what₂.Tau) : ℝ := (((D.hc τ).b ⟨0, by have := D.R.two_le_m; omega⟩ : ℚ) : ℝ)

def bLast (τ : D.what₂.Tau) : ℝ := (((D.hc τ).b ⟨D.R.m - 1, by have := D.R.two_le_m; omega⟩ : ℚ) : ℝ)

structure RankNums (x eps CD m f k lrd Del : ℝ) : Prop where
  m_lo : x ^ ((1 : ℝ) / 4) ≤ m
  mf : m ^ 4 ≤ f
  fk : f ≤ k
  k_lo : x ^ (eps / 2) * (m ^ 5 * f * x ^ eps) ≤ k
  k_hi : k ≤ x ^ (5 : ℝ)
  lrd_lo : Real.log 2 ≤ lrd
  lrd_hi : lrd ≤ x ^ (eps / 2)
  Del_lo : (k * f * x ^ eps) ^ CD ≤ Del
  Del_hi : Real.log Del ≤ x ^ (eps / 2)

structure Nodes (x eps : ℝ) : Prop where
  b_win : ∀ τ j, Real.sqrt (bx x eps) ≤ (((D.hc τ).b j : ℚ) : ℝ) ∧ (((D.hc τ).b j : ℚ) : ℝ) ≤ bx x eps ^ 2
  bm : ∀ τ, bLast D τ ≤ 2 * bFirst D τ
  top : ∀ τ, Top D τ → Real.sqrt (bx x eps) ≤ uFirst D τ ∧ uFirst D τ ≤ bx x eps ^ 2 ∧
    3 ≤ bFirst D τ + uLast D τ ∧ bFirst D τ / 2 ≤ -uLast D τ


end GlobalTheory.Diag.PG

end
