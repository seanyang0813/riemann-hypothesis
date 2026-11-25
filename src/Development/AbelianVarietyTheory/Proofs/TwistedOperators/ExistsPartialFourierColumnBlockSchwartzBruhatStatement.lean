module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsLocIsoRefl
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsPartialFourierColumnBlockSchwartzBruhat
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

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA IsDatumB mulG colV adjV₁)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple Acts SInf At piW psiLoc chrW)

open GlobalTheory.FlipMatch


theorem _root_.GlobalTheory.T.exists_partialFourier_columnBlock_schwartzBruhat : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (A : Type) [Fintype A] [DecidableEq A] (C : Type) [Fintype C] [DecidableEq C] (ψ : AddChar k Circle) (ϖ : kˣ) (P : Finset C), IsUnif ϖ → HasConductor ψ 1 →
    ∃ 𝓕 : (Matrix A C k → ℂ) →ₗ[ℂ] (Matrix A C k → ℂ), Set.BijOn 𝓕 (GlobalTheory.WeilM.SB (Matrix A C k) : Set _) (GlobalTheory.WeilM.SB (Matrix A C k) : Set _) ∧
      (∀ Ξ ∈ GlobalTheory.WeilM.SB (Matrix A C k), ∀ T R : Matrix A C k, (∀ r, ∀ s ∈ P, T r s = 0) → (∀ r, ∀ s ∉ P, R r s = 0) →
        𝓕 (fun S => (ψ (pairM S R) : ℂ) * Ξ (S + T)) = fun Z => 𝓕 Ξ (Z + (T + R))) ∧
      (∀ Ξ ∈ GlobalTheory.WeilM.SB (Matrix A C k), ∀ T R : Matrix A C k, (∀ r, ∀ s ∉ P, T r s = 0) → (∀ r, ∀ s ∈ P, R r s = 0) →
        𝓕 (fun S => (ψ (pairM S R) : ℂ) * Ξ (S + T)) = fun Z => (ψ (pairM Z R - pairM Z T) : ℂ) * 𝓕 Ξ Z) ∧
      ∀ Ξ ∈ GlobalTheory.WeilM.SB (Matrix A C k), ∀ n, IsNatDatum ϖ n (𝓕 Ξ) → fourierSum ψ⁻¹ ϖ n P (𝓕 Ξ) = Ξ := by
  first | exact @GlobalTheory.ColFourier.exists_blockFourier
