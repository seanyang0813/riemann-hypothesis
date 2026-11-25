module

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
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim
open GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StepData

noncomputable section

namespace GlobalTheory.FirstRowEndLaw

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts}


open Classical in
def stepType (L : LevCh D T) (t : T) (w : Pl D.host.E) (j : ℕ) : TypeDatum (Kw w) (Ix (Fin D.R.r) (Fin D.R.t) j) :=
  if w ∈ L.Pg then
    (TypeDatum.principal (Kw w) (Fin D.R.r)).iter (Fin D.R.t) (fun c => ((muBase L c).loc w)⁻¹) (isTame_muBase w) j
  else if h : w ∈ L.Q t ∧ IsTame ((L.xiH t).loc w)⁻¹ then parahoric (Fin D.R.r) (Fin j × Fin D.R.t) _ h.2
  else TypeDatum.full _ _


open Classical in
def endLamAt (G : GridData L sc) (t : T) (w : Pl D.host.E) (j : ℕ) (κ : GL (Fin ((locGrid G t w).rank (0, j))) (Kw w)) : ℂ :=
  if h : (reGL (ixFin G t w j)).symm κ ∈ (stepType L t w j).J then (((stepType L t w j).lam ⟨_, h⟩)⁻¹ : ℂˣ) else 1

def endLam (G : GridData L sc) (t : T) (w : Pl D.host.E) (κ : GL (Fin ((locGrid G t w).rank (0, D.R.m))) (Kw w)) : ℂ :=
  endLamAt G t w D.R.m κ

end GlobalTheory.FirstRowEndLaw
