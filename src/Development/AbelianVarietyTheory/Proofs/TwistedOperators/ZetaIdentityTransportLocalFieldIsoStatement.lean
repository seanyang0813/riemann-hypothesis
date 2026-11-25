module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsLocIsoRefl
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ZetaIdentityTransportLocalFieldIso
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


theorem _root_.GlobalTheory.T.zetaIdentity_transport_localFieldIso : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [MeasurableSpace k] [BorelSpace k] (k' : Type) [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [MeasurableSpace k'] [BorelSpace k'] (j : k ≃+* k'), IsLocIso j → ∀ (a : ℕ) (A' : Type) [Fintype A'] [DecidableEq A'] (C : Type) [Fintype C] [DecidableEq C] (σ : Fin a ⊕ A' ≃ C)
    (μ : Measure (GL A' k)) [μ.IsHaarMeasure] (μ' : Measure (GL A' k')) [μ'.IsHaarMeasure] (ϖ : kˣ) (ϖ' : k'ˣ), IsUnif ϖ → IsUnif ϖ' →
    ∀ (ν β : kˣ →* ℂˣ) (ν' β' : k'ˣ →* ℂˣ), (∀ x, ν x = ν' (Units.map (j : k →* k') x)) →
    ∃ lam : ℂ, lam ≠ 0 ∧ ∀ (Ξ : Matrix (Fin a) C k' → ℂ) (Ψ : Matrix A' C k' → ℂ),
      bigP (haarVol (KO k' (Fin a))) ϖ' σ ν' β' Ξ = smallP μ' σ ν' (ν' * β') Ψ →
      bigP (haarVol (KO k (Fin a))) ϖ σ ν β (fun X => Ξ (X.map j)) = smallP μ σ ν (ν * β) fun Y => lam * Ψ (Y.map j) := by
  first | exact @GlobalTheory.FlipMatch.FieldTransport.zeta_identity_transport
