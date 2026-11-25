module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsRealFam
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RealLineOfPeriodsOnLine

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.RowUnf GlobalTheory.RowChain GlobalTheory.SeeSaw GlobalTheory.RowVal GlobalTheory.RowReal
open scoped NNReal

noncomputable section

namespace GlobalTheory.CellMass

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc)

def rowN (j : ℕ) : Subgroup (GA D (G.V (.grid D.R.m j))) :=
  if h : j + 2 * ((D.R.m - 1 - j) / 2) + 1 = D.R.m then GlobalTheory.MixPer.flagN (rowJac G j (by omega) ((D.R.m - 1 - j) / 2) (by omega))
  else if h' : j + 2 * ((D.R.m - 2 - j) / 2) + 2 = D.R.m then GlobalTheory.MixPer.flagN (besDecAt G j _ h') else ⊥

def rowEmb (j : ℕ) : GA D (G.V (.top j)) →* GA D (G.V (.grid D.R.m j)) :=
  if h : j + 2 * ((D.R.m - 1 - j) / 2) + 1 = D.R.m then (rowJac G j (by omega) ((D.R.m - 1 - j) / 2) (by omega)).emb0
  else if h' : j + 2 * ((D.R.m - 2 - j) / 2) + 2 = D.R.m then
    GlobalTheory.MixPer.embA (besDecAt G j _ h') (GlobalTheory.OrthSumExists.orthDecHsum D _ _) else 1

theorem rowGrp_eq (j : ℕ) : rowGrp G j = rowN G j ⊔ (rowEmb G j).range := by
  unfold rowGrp rowN rowEmb
  split_ifs
  · rfl
  · rfl
  · simp

def prSet (j : ℕ) (b : GfC (G.V (.grid D.R.m j))) : Set (GfC (G.V (.top j))) :=
  {g | ∃ n ∈ rowN G j, (b.1)⁻¹ * (n * rowEmb G j g.1) * b.1 ∈ latGrp G j}

end GlobalTheory.CellMass
