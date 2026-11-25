module

public import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

@[expose] public section

open scoped ComplexOrder

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.ScaledCoisometryNorms

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Col.Br

def sumGram {K : Type} [Zero K] (N : ℕ) {n : ℕ} (G' : Matrix (Fin n) (Fin n) K) (g : K) : Matrix (Fin N) (Fin N) K :=
  Matrix.of fun a b =>
    if ha : a.1 < n then (if hb : b.1 < n then G' ⟨a.1, ha⟩ ⟨b.1, hb⟩ else 0) else (if b.1 < n then 0 else g)

theorem sumGram_entries {K : Type} [Zero K] {N n : ℕ} (hN : N = n + 1) (G' : Matrix (Fin n) (Fin n) K) (g : K) :
    (∀ a b : Fin n, sumGram N G' g (iC hN a) (iC hN b) = G' a b) ∧
      (∀ a : Fin n, sumGram N G' g (iC hN a) (iL hN) = 0 ∧ sumGram N G' g (iL hN) (iC hN a) = 0) ∧
      sumGram N G' g (iL hN) (iL hN) = g := by
  refine ⟨fun a b => ?_, fun a => ⟨?_, ?_⟩, ?_⟩ <;> simp [sumGram, iC, iL]

def nrmSq {K : Type} [Field K] [StarRing K] (s : K →+* ℂ) {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n)
    (G : ι → Matrix (Fin n) (Fin n) K) (f : VV K lam) : ℝ :=
  (s (pairK lam G f f)).re

def IsScaledCoisometry {K : Type} [Field K] [StarRing K] (s : K →+* ℂ) {ι : Type} [Fintype ι] {N n : ℕ}
    (lam : ι → DomWeight N) (sg : ι → DomWeight n) (G : ι → Matrix (Fin N) (Fin N) K) (G' : ι → Matrix (Fin n) (Fin n) K)
    (P : VV K lam →ₗ[K] VV K sg) (κ : ℝ) : Prop :=
  ∃ Q : VV K sg →ₗ[K] VV K lam,
    (∀ (y : VV K sg) (f : VV K lam), pairK lam G (Q y) f = pairK sg G' y (P f)) ∧
    ∀ y y' : VV K sg, s (pairK lam G (Q y) (Q y')) = (κ : ℂ) * s (pairK sg G' y y')

def orthSq {ι : Type} [Fintype ι] {N n : ℕ} (hN : N = n + 1) (lam : ι → DomWeight N) (sg : ι → DomWeight n) : ℝ :=
  ∏ τ, ((cBr hN (lam τ) (sg τ) : ℤ) : ℝ) ^ 2 * kapBr ℝ hN (lam τ) (sg τ)

def brSq {ι : Type} [Fintype ι] {N n : ℕ} (hN : N = n + 1) (lam : ι → DomWeight N) (sg : ι → DomWeight n) (T : ℝ) : ℝ :=
  ∏ τ, T ^ (-nBr (lam τ) (sg τ)) * (((cBr hN (lam τ) (sg τ) : ℤ) : ℝ) ^ 2 * kapBr ℝ hN (lam τ) (sg τ))

def NormConcl {K : Type} [Field K] [StarRing K] (s : K →+* ℂ) {ι : Type} [Fintype ι] {N n : ℕ} (hN : N = n + 1)
    (lam : ι → DomWeight N) (sg : ι → DomWeight n) (G : ι → Matrix (Fin N) (Fin N) K) (G' : ι → Matrix (Fin n) (Fin n) K)
    (t : ι → K) (T : ℝ) : Prop :=
  0 < brSq hN lam sg T ∧
  IsScaledCoisometry s lam sg G G' (brAt hN lam sg t) (brSq hN lam sg T) ∧
  (∀ f : VV K lam, nrmSq s sg G' (brAt hN lam sg t f) ≤ brSq hN lam sg T * nrmSq s lam G f) ∧
  ∃ f : VV K lam, f ≠ 0 ∧ nrmSq s sg G' (brAt hN lam sg t f) = brSq hN lam sg T * nrmSq s lam G f

def BrNorm : Prop :=
  ∀ (K : Type) [Field K] [StarRing K] (s : K →+* ℂ), (∀ x, s (star x) = star (s x)) →
  ∀ (ι : Type) [Fintype ι] (N n : ℕ) (hN : N = n + 1) (lam : ι → DomWeight N) (sg : ι → DomWeight n),
    (∀ τ, Interlace hN (lam τ) (sg τ)) → (∀ τ, SameShift (lam τ) (sg τ)) →
  ∀ (G' : ι → Matrix (Fin n) (Fin n) K), (∀ τ, ((G' τ).map s).PosDef) →
  ∀ (g t : ι → K) (T : ℝ), 0 < T → (∀ τ, ((‖s (t τ)‖ ^ 2 : ℝ) : ℂ) * s (g τ) = (T : ℂ)) →
    NormConcl s hN lam sg (fun τ => sumGram N (G' τ) (g τ)) G' t T

theorem brSq_eq {ι : Type} [Fintype ι] {N n : ℕ} (hN : N = n + 1) (lam : ι → DomWeight N) (sg : ι → DomWeight n) {T : ℝ}
    (hT : 0 < T) : brSq hN lam sg T = T ^ (-∑ τ, nBr (lam τ) (sg τ)) * orthSq hN lam sg := by
  unfold brSq orthSq
  rw [Finset.prod_mul_distrib]
  congr 1
  rw [← Finset.sum_neg_distrib]
  induction (Finset.univ : Finset ι) using Finset.cons_induction with
  | empty => simp
  | cons a S ha ih => rw [Finset.prod_cons, Finset.sum_cons, zpow_add₀ hT.ne', ih]

end GlobalTheory.IndefiniteRowSideFullHecke.ScaledCoisometryNorms
