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
import Mathlib.Tactic.Linter.Style
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

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.RowUnf GlobalTheory.RowChain GlobalTheory.SeeSaw GlobalTheory.RowVal GlobalTheory.RowReal
open scoped NNReal

namespace GlobalTheory.RowWt

variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 T : Type} {A : FamIn D.what₂.LL Γ Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks}

def colCoef (ch : Choice R) (t : T) (β : CosFam ch.G t) (j : ℕ) : ℚ :=
  ∏ w : locPl ch.G t, if h : j < D.R.m then
    invVol (conjLevel one_le_sLen (givenLevel ch.G t w) ((repsAt ch.G t w).elt (β w)) (j := j) h) else 1

theorem coef_prod (ch : Choice R) (t : T) (Φ : ch.G.Datum) (β : CosFam ch.G t) :
    ∏ w, ((ch.S.term t Φ β w).coef : ℂ) = ((idx D).map fun j => (colCoef ch t β j : ℂ)).prod := by
  have hw : ∀ w, (ch.S.term t Φ β w).coef = ∏ i : Fin (D.R.m - 2), (if h : 1 + (i : ℕ) < D.R.m then
      invVol (conjLevel one_le_sLen (givenLevel ch.G t w) ((repsAt ch.G t w).elt (β w)) (j := 1 + (i : ℕ)) h) else 1) := by
    intro w
    have hj : ∀ (j j' : ℕ) (_ : j = j') (h : j < D.R.m) (h' : j' < D.R.m),
        invVol (conjLevel one_le_sLen (givenLevel ch.G t w) ((repsAt ch.G t w).elt (β w)) (j := j) h) =
          invVol (conjLevel one_le_sLen (givenLevel ch.G t w) ((repsAt ch.G t w).elt (β w)) (j := j') h') := by
      rintro j _ rfl h h'
      rfl
    show ∏ i : Fin (D.R.m - 2), invVol (conjLevel one_le_sLen (givenLevel ch.G t w) ((repsAt ch.G t w).elt (β w))
      (j := (i : ℕ) + 1) (show (i : ℕ) + 1 < D.R.m by have := i.isLt; omega)) = _
    exact Finset.prod_congr rfl fun i _ => by
      rw [dite_eq_left (show 1 + (i : ℕ) < D.R.m by have := i.isLt; omega)]
      exact hj _ _ (Nat.add_comm _ _) _ _
  have key : ∏ w, (ch.S.term t Φ β w).coef = ((idx D).map fun j => colCoef ch t β j).prod := by
    simp only [hw]
    rw [Finset.prod_comm]
    simp only [idx, List.range'_eq_map_range, List.map_map]
    rw [← List.map_coe_finRange_eq_range, List.map_map, ← List.ofFn_eq_map, List.prod_ofFn]
    exact Finset.prod_congr rfl fun i _ => rfl
  have := congrArg (Rat.cast : ℚ → ℂ) key
  rw [Rat.cast_prod, Rat.cast_list_prod, List.map_map] at this
  exact this

end GlobalTheory.RowWt
