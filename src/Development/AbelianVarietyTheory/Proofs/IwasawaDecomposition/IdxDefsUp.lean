module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BaseLevelRowSideTransport
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.UpLReStage
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section
namespace GlobalTheory.Mem.R3.Rw.Up
variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T}

abbrev refUp (Z : w.Lt) (S' : SStage B w.C Z.W) (N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V) (h : B.Word → ℝ) : Refill Z :=
  { Refill.ofDiv Z N h with S := S' }


def divBack {Z : w.Lt} {S' : SStage B w.C Z.W} {N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V} {h : B.Word → ℝ}
    (X : DivX (w.D (SRe.upL Z S' N h))) : DivX (w.D Z) :=
  { X with }



theorem grpAt_up {Z : w.Lt} (S' : SStage B w.C Z.W) (N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V) (h : B.Word → ℝ)
    (x : GrpAt (w.st Z) w.I) : GrpAt (w.st (SRe.upL Z S' N h)) w.I :=
  ⟨(by with_unfolding_all exact (x.pl :)), (by with_unfolding_all exact (x.idem :)), (by with_unfolding_all exact (x.cen :))⟩



theorem muIsW_up {Z : w.Lt} {Wt : Set B.places.Pl} (S' : SStage B w.C Z.W) (N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V)
    (h : B.Word → ℝ) (x : V4.MuIsW (w.st Z) f T Wt w.I.xi) : V4.MuIsW (w.st (SRe.upL Z S' N h)) f T Wt w.I.xi := by
  exact
    { inj := by with_unfolding_all exact (x.inj :)
      range := by with_unfolding_all exact (x.range :)
      mu0 := by with_unfolding_all exact (x.mu0 :)
      star := by with_unfolding_all exact (x.star :)
      star' := by with_unfolding_all exact (x.star' :)
      tw := by with_unfolding_all exact (x.tw :)
      on := by with_unfolding_all exact (x.on :)
      off := by with_unfolding_all exact (x.off :)
      sub := by with_unfolding_all exact (x.sub :)
      supp := by with_unfolding_all exact (x.supp :) }



theorem rowInt_up {Z : w.Lt} (S' : SStage B w.C Z.W) (N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V) (h : B.Word → ℝ)
    (x : GlobalTheory.PerQ.RowInt w.I w.l Z) : GlobalTheory.PerQ.RowInt w.I w.l (SRe.upL Z S' N h) :=
  ⟨(by with_unfolding_all exact (x.ref :)), (by with_unfolding_all exact (x.tw :))⟩



theorem idxDefs_up {Z : w.Lt} {S' : SStage B w.C Z.W} {N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V} {h : B.Word → ℝ}
    (Y : DivX (w.D (SRe.upL Z S' N h))) (hI : IdxDefs (w.D Z) (divBack Y)) : IdxDefs (w.D (SRe.upL Z S' N h)) Y :=
  ⟨(by with_unfolding_all exact (hI.Ij_def :)), (by with_unfolding_all exact (hI.jw_def :))⟩

end GlobalTheory.Mem.R3.Rw.Up
