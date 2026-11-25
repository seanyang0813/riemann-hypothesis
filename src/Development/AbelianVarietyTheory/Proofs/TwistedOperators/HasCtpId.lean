module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DecompAtZero
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.TypeAtOfDiscreteSeries
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
open GlobalTheory.Grow GlobalTheory.Size

noncomputable section

namespace GlobalTheory.PlaceDecomp

variable {D : D7}

def TyOf (θ : InfFam D) (N : GlobalTheory.Grid.Node D) {W : D.what₂.Tau → Type} [∀ τ, AddCommGroup (W τ)] [∀ τ, Module ℂ (W τ)]
    (ρ : ∀ τ, Representation ℂ (Formalism.REAL.KG (N.M.ε τ)) (W τ)) : D.what₂.Tau → (GA D N.V → ℂ) → Prop :=
  fun τ f => GlobalTheory.Published.AutFin.HasTypeAt θ N.V τ (N.M.ε τ) (N.M.fr τ) (ρ τ) f

def HasCtp (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (U : Subgroup (GA D N.V)) (Ty : D.what₂.Tau → (GA D N.V → ℂ) → Prop)
    (τ : D.what₂.Tau) (T : N.M.H τ → N.M.H τ) : Prop :=
  ∃ A : (GA D N.V → ℂ) → (GA D N.V → ℂ), GlobalTheory.KFinDecomp.IsOpAt θ N (GlobalTheory.KFinDecomp.Cls θ N U) Ty τ A ∧
    ∀ φ ∈ GlobalTheory.KFinDecomp.Cls θ N U, GlobalTheory.SeriesToClosure.Moves θ N.V τ (N.M.ε τ) (N.M.σ τ) (N.M.fr τ) T φ (A φ)

theorem hasCtp_id (θ : InfFam D) (N : GlobalTheory.Grid.Node D) (U : Subgroup (GA D N.V)) (Ty : D.what₂.Tau → (GA D N.V → ℂ) → Prop)
    (τ : D.what₂.Tau) : HasCtp θ N U Ty τ id :=
  ⟨id, GlobalTheory.KFinDecomp.isOpAt_id θ N _ Ty τ, fun _ _ _ _ _ _ _ _ _ h => h⟩

end GlobalTheory.PlaceDecomp

end
