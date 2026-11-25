module

public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ValIntN
public import Formalism.SharpRestriction.GrowthBounds.TwistedLevelAgreement.StepInTwK

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.KAat

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.AgreeLv
open scoped TensorProduct

variable {D : D7} {Tw : TwForms D} {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop}
  {T : Formalism.L2.Herm.TwChTied D inQ} {Hc : Formalism.L2.Herm.HermColsCh D} {J : Formalism.L2.Herm.TwChJointS T Hc}
  {F : ∀ u, FormsTiedSym D u (Hc.Ch u) (Hc.chOf u)}
  {X0 : Formalism.L2.Herm.Herm0 D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

def atInTw (W : TwFormsTiedS D Tw T J F) (u : D.what₂.Word) (μ : D.what₂.Tup) (hμ : μ ≠ D.what₂.mu0) {w : D.what₂.places.Pl}
    {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}
    (dt : ∀ j (hj : j + 1 ≤ D.R.m) β, DetTie (W.ch u μ hμ (j + 1) (one_le j) hj β).lev)
    (Lc : ∀ j (_ : j + 1 ≤ D.R.m), LocIn X0 u w h Lv j (T.Ch u μ (j + 1))) : AtIn X0 Tw u μ w h Lv where
  Fo := fun j hj => formsInTw W u μ hμ j hj (dt j hj)
  Lc := Lc

variable (W : TwFormsTiedS D Tw T J F) (hμ : μ ≠ D.what₂.mu0)
  (dt : ∀ j (hj : j + 1 ≤ D.R.m) β, DetTie (W.ch u μ hμ (j + 1) (one_le j) hj β).lev)
  (Lc : ∀ j (_ : j + 1 ≤ D.R.m), LocIn X0 u w h Lv j (T.Ch u μ (j + 1)))

variable {W hμ dt Lc}

end Formalism.MainNotions.G.KAat

end
