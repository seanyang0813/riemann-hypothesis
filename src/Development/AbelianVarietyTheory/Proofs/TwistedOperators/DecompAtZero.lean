module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspAlongSmoothRows
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.KTypeExtension
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
open GlobalTheory.Grow GlobalTheory.Size

noncomputable section

namespace GlobalTheory.KFinDecomp

variable {D : D7}

def Cls (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (U : Subgroup (GA D N.V)) : Set (GA D N.V → ℂ) :=
  {f | GlobalTheory.IndefiniteRowSideFullHecke.CuspAlongSmoothLifts.IsCuspOfType θ N f ∧ ∀ k ∈ U, k ∈ GfC N.V → ∀ g, f (g * k) = f g}

structure IsOpAt (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (𝒞 : Set (GA D N.V → ℂ))
    (Ty : D.what₂.Tau → (GA D N.V → ℂ) → Prop) (τ : D.what₂.Tau) (A : (GA D N.V → ℂ) → (GA D N.V → ℂ)) : Prop where

  cont : ∀ f, Continuous f → Continuous (A f)

  add : ∀ f f', Continuous f → Continuous f' → A (f + f') = A f + A f'

  smul : ∀ (c : ℂ) f, Continuous f → A (c • f) = c • A f

  maps : ∀ f ∈ 𝒞, A f ∈ 𝒞

  keep : ∀ τ', τ' ≠ τ → ∀ f ∈ 𝒞, Ty τ' f → Ty τ' (A f)

  tr : ∀ τ', τ' ≠ τ → ∀ g ∈ Formalism.QuantumDeterminants.UH (gramAt D N.V τ'), ∀ f ∈ 𝒞,
    A (rTr N.V (atTau θ N.V τ' g) f) = rTr N.V (atTau θ N.V τ' g) (A f)

  lie : ∀ τ', τ' ≠ τ → ∀ X ∈ lieAt N.V τ', ∀ f ∈ 𝒞, A (Rder θ N.V τ' X f) = Rder θ N.V τ' X (A f)

def DecompAt (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (𝒞 : Set (GA D N.V → ℂ))
    (Ty : D.what₂.Tau → (GA D N.V → ℂ) → Prop) (τ : D.what₂.Tau) : Prop :=
  ∃ (m : ℕ) (a : Fin m → GlobalTheory.IndefiniteRowSideFullHecke.KTypeExtension.kFin N.M τ)
    (A : Fin m → GlobalTheory.IndefiniteRowSideFullHecke.KTypeExtension.kFin N.M τ → (GA D N.V → ℂ) → (GA D N.V → ℂ)),
    (∀ j u, IsOpAt θ N 𝒞 Ty τ (A j u)) ∧
    (∀ j, ∀ f ∈ 𝒞, (∀ u u', A j (u + u') f = A j u f + A j u' f) ∧ (∀ (c : ℂ) u, A j (c • u) f = c • A j u f) ∧
      (∀ k ∈ GlobalTheory.IndefiniteRowSideFullHecke.KTypeExtension.maxCpt N.M τ, ∀ u w : GlobalTheory.IndefiniteRowSideFullHecke.KTypeExtension.kFin N.M τ,
        (w : N.M.H τ) = N.M.rep τ k u → A j w f = rTr N.V (atTau θ N.V τ k) (A j u f)) ∧
      (∀ X ∈ lieAt N.V τ, ∀ u w : GlobalTheory.IndefiniteRowSideFullHecke.KTypeExtension.kFin N.M τ,
        (w : N.M.H τ) = dRep (N.M.rep τ) X u → A j w f = Rder θ N.V τ X (A j u f))) ∧
    ∀ f ∈ 𝒞, Ty τ f → f = ∑ j, A j (a j) f

theorem isOpAt_id (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (𝒞 : Set (GA D N.V → ℂ))
    (Ty : D.what₂.Tau → (GA D N.V → ℂ) → Prop) (τ : D.what₂.Tau) : IsOpAt θ N 𝒞 Ty τ id :=
  ⟨fun _ h => h, fun _ _ _ _ => rfl, fun _ _ _ => rfl, fun _ h => h, fun _ _ _ _ h => h, fun _ _ _ _ _ _ => rfl,
    fun _ _ _ _ _ _ => rfl⟩

end GlobalTheory.KFinDecomp

end
