module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsBIffCoreB
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ColsReLev0
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

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.Df GlobalTheory.Mem.Db NumberField IsDedekindDomain

noncomputable section

namespace GlobalTheory.Mem.Db.DivTr

open Formalism.L2.Forms GlobalTheory.Mem.Top.ColOwe

section Gen

variable {D : D7} (N : ∀ u, Submodule (𝓞 D.what₂.LL) (D.div.Nu u).V) (h : D.what₂.Word → ℝ)



def atTTS {u : D.what₂.Word} (A : AtTTied (D := D) u) : AtTTied (D := setDiv D N h) u := { A with }



def forms0S {u : D.what₂.Word} (F : Forms0 D u) : Forms0 (setDiv D N h) u :=
  { F with
    atT := atTTS N h F.atT
    cls0 := { F.cls0 with }
    val0 := { F.val0 with }
    lv0 := { F.lv0 with } }



def herm0S (H : Formalism.L2.Herm.Herm0 D) : Formalism.L2.Herm.Herm0 (setDiv D N h) := { H with }



def fullS (X : Formalism.L2.Herm.FullTiedS D) : Formalism.L2.Herm.FullTiedS (setDiv D N h) :=
  { X with
    base := { X.base with }
    atT := fun u => { X.atT u with }
    ad := { X.ad with } }




def gS {Gt : GatTies D} {c : LatCmp D} (g : Formalism.L2.G.GroupCompatibilityAll D Gt c) :
    Formalism.L2.G.GroupCompatibilityAll (setDiv D N h) (gatTr N h Gt) (cmpTr N h c) where
  herm := herm0S N h g.herm
  forms := fun u => forms0S N h (g.forms u)
  cmp := { g.cmp with }
  ring := fun u w hg v => by
    have h0 := g.ring u w hg v
    dsimp +instances only [Formalism.L2.G.RingCompatibleAt, Formalism.L2.G.ORec,
      Formalism.L2.G.KfRec, Formalism.L2.G.extRec, Formalism.L2.G.tauRec,
      Formalism.BasicNotions.factResChar, setDiv] at h0 ⊢
    exact h0
  gat := g.gat

end Gen

variable {B : Base} {f : Fr B.toPre} {T : TwDat B}
variable (w : ColW B f T) (Z : w.Lt) (N : ∀ u, Submodule (𝓞 B.LL) (Z.V.div.Nu u).V) (h : B.Word → ℝ)

-- Build the transported records at the same index used by the column data.

def fullSZ (X : Formalism.L2.Herm.FullTiedS (w.D Z)) :
    Formalism.L2.Herm.FullTiedS (w.D (setDivZ Z N h)) :=
  fullS (D := w.D Z) N h X


def forms0SZ {u : B.Word} (F : Forms0 (w.D Z) u) :
    Forms0 (w.D (setDivZ Z N h)) u :=
  forms0S (D := w.D Z) N h F


theorem fullS_cols (X : Formalism.L2.Herm.FullTiedS (w.D Z)) :
    (fullSZ w Z N h X).cols = hermRe (setDivZ Z N h) X.cols := rfl


theorem colsRe_to0S (C : ColsTiedSym (w.D Z)) (u : B.Word) :
    ((colsRe (setDivZ Z N h) C).forms u).to0 = forms0SZ w Z N h (C.forms u).to0 := rfl



theorem stdC_tr (C : ColsTiedSym (w.D Z)) (hC : TC.StdC w.I w.l Z C) :
    TC.StdC w.I w.l (setDivZ Z N h) (colsRe (setDivZ Z N h) C) := fun u =>
  { hC u with gl := { (hC u).gl with } }



def colTTr (t : ColT w Z) : ColT w (setDivZ Z N h) where
  C := colsRe (setDivZ Z N h) t.C
  std := stdC_tr w Z N h t.C t.std
  stdLv := fun u => t.stdLv u
  full := ⟨fullSZ w Z N h t.full.1,
    (fullS_cols w Z N h t.full.1).trans (congrArg (hermRe (setDivZ Z N h)) t.full.2)⟩
  stdDt := t.stdDt
  Gt := gatTr (D := w.D Z) N h t.Gt
  cmp := cmpTr (D := w.D Z) N h t.cmp
  g := gS (D := w.D Z) N h t.g
  herm_eq := congrArg (herm0S (D := w.D Z) N h) t.herm_eq
  forms_eq := funext fun u =>
    (congrArg (forms0SZ w Z N h) (congrFun t.forms_eq u)).trans (colsRe_to0S w Z N h t.C u).symm
  gpl := t.gpl

end GlobalTheory.Mem.Db.DivTr

end
