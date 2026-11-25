module

public import Formalism.SharpRestriction.GrowthBounds.ChartComparison.LocTiesOf
public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ExistsIsCGBases
public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.InTwSt
public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.CompInjLocJ

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.KAat

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PStabEq
open scoped TensorProduct

variable {D : D7} (X0 : Formalism.L2.Herm.Herm0 D) (Tw : TwForms D) (u : D.what₂.Word) (μ : D.what₂.Tup) (w : D.what₂.places.Pl)
  (h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) {Fl : Fills (D.gat u w h)} (Lv : Levels Fl)

structure AtIn where
  Fo : ∀ j (hj : j + 1 ≤ D.R.m), FormsIn (Tw.fm u μ) (j + 1) hj
  Lc : ∀ j (hj : j + 1 ≤ D.R.m), LocIn X0 u w h Lv j (Fo j hj).Ch

variable {X0 Tw u μ w h Lv}

def AtIn.st (Z : AtIn X0 Tw u μ w h Lv) (Gt : GatTies D) (j : ℕ) (hj : j + 1 ≤ D.R.m) :
    StepIn (Tw.fm u μ) (j + 1) hj (gatJ Lv (j + 1)) :=
  stepInOf hj (Z.Fo j hj) (Z.Lc j hj) (Gt.gat_pos u w h)

def AtIn.I (Z : AtIn X0 Tw u μ w h Lv) (Gt : GatTies D) : CmpJIn Tw u μ w h Lv := inTw (Z.st Gt)

structure AtHyp (Z : AtIn X0 Tw u μ w h Lv) (_Gt : GatTies D) (c : LatCmp D) : Prop where
  ties : ∀ j hj β, LocTiesR hj (Z.Fo j hj) (Z.Lc j hj) (c.embW u w h) β
  hypC : ∀ j hj β, HypTJC ((Z.Lc j hj).t β)

variable {Gt : GatTies D} {c : LatCmp D} {T : ∀ u : D.what₂.Word, Forms0 D u}

theorem AtHyp.chX {Z : AtIn X0 Tw u μ w h Lv} (A : AtHyp Z Gt c) (j : ℕ) (hj : j + 1 ≤ D.R.m) : ChX (((Z.I Gt).at' j hj).st) :=
  chX_stepInOf hj (Z.Fo j hj) (Z.Lc j hj) (Gt.gat_pos u w h) (fun β => (A.ties j hj β).sameU) (fun β => (A.ties j hj β).frRat)
    (A.hypC j hj)

end Formalism.MainNotions.G.KAat

end
