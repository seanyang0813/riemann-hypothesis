module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimes
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

namespace GlobalTheory.Mem.Top.Bl.RowWt

theorem fockDeg_cast (D : D7) (h : DV.KapDef D) (n : ℕ) (h1 : 1 ≤ n) (h2 : n ≤ D.R.m) :
    ((fockDeg D n : ℤ) : ℚ) = ∑ τ, (∑ a : Fin (D.R.sigW n).1, |DV.aPlusQ D n τ a| +
      ∑ c : Fin (D.R.sigW n).2, |DV.aMinusQ D n τ c|) := by
  unfold fockDeg
  push_cast
  refine Finset.sum_congr rfl fun τ _ => ?_
  congr 1
  · refine Finset.sum_congr rfl fun a _ => ?_
    rw [(h n h1 h2 τ).1 a]
  · refine Finset.sum_congr rfl fun c _ => ?_
    rw [(h n h1 h2 τ).2 c, abs_neg]

theorem fockDeg_eq {B : Base} {f : Fr B.toPre} {T : TwDat B} (w : ColW B f T) (Z Z' : w.Lt)
    (h : DV.KapDef (w.D Z)) (h' : DV.KapDef (w.D Z')) (n : ℕ) (h1 : 1 ≤ n) (h2 : n ≤ (w.D Z).R.m) :
    fockDeg (w.D Z) n = fockDeg (w.D Z') n := by
  have e := fockDeg_cast (w.D Z) h n h1 h2
  have e' := fockDeg_cast (w.D Z') h' n h1 h2
  exact_mod_cast e.trans e'.symm

theorem forcedContent_eq_over_same_choices : ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z Z' : w.Lt), DV.KapDef (w.D Z) →
    DV.KapDef (w.D Z') → F0K K.s (w.D Z) = F0K K.s (w.D Z') := by
  intro K B f T w Z Z' h h'
  funext y j
  have hT : FTypeG (w.D Z) (j.1 + 1) = FTypeG (w.D Z') (j.1 + 1) := by
    unfold FTypeG
    rw [fockDeg_eq w Z Z' h h' (j.1 + 1) (Nat.succ_pos _) j.2]
  unfold F0K FK
  rw [hT]
  rfl

end GlobalTheory.Mem.Top.Bl.RowWt
