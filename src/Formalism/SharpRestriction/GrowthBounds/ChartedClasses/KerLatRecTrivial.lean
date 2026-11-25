module

public import Formalism.LocalToGlobal.PairingIndexBounds.OrthogonalChartLevels.FrecAt

@[expose] public section

noncomputable section

open Formalism.BasicNotions NumberField IsDedekindDomain Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.G.Pend Formalism.MainNotions Formalism.L2.Ker Formalism.MainNotions.G.CmpJ
open Formalism.L2.Forms Formalism.L2.KerInert.SecondKernelInstances Formalism.L2.Col Formalism.L2.PairingIndexBounds.F Formalism.UG
open scoped TensorProduct

namespace Formalism.MainNotions.G.KAat

section SlopeTestRemainingChoices

variable {p : ℕ} [Fact p.Prime] {X : Sys p} {D : D7}

end SlopeTestRemainingChoices

section Rec

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : G.Inst D L} {Gl : G.LatInst D} {Kc0 : G.Consts} {Dx : DivX D}
  {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc0 Dx cX} {u : D.what₂.Word} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)}
  [Fact (D.what₂.places.resChar w).Prime] {Fl : Fills (D.gat u w h)} {Lv : Levels Fl} (Ch : Chain Lv)
  (std : ∀ v, Std (D.what₂.places.resChar w) ((D.gat u w h).P.n' v) (D.gat u w h).P.m Fl.t Fl.mm Fl.c (D.gat u w h).P.r
    (Fl.TT v) (Fl.a v) (Fl.b v) ((D.gat u w h).P.lam0 v) (Fl.w v))
  (vp : (D.gat u w h).O) (unif : Irreducible vp) (eO : ℕ)
  (eO_spec : Associated ((D.what₂.places.resChar w : ℕ) : (D.gat u w h).O) (vp ^ eO)) (dG : ℕ → ℕ)
  (dG_spec : ∀ j ≤ Fl.mm, ∀ (c : Lv.comp j) (L : (Fl.Pj j).Tup), (Fl.Pj j).IsLatTup L →
    padicValNat (D.what₂.places.resChar w) (Nat.card {γ : (Lv.lev j c).Γ // (Lv.lev j c).smul γ L = L}) ≤ dG j)
  (om : ∀ v, OmBasis (D.what₂.places.resChar w) ((D.gat u w h).P.n' v))
  {μ : D.what₂.Tup} (I : CmpJIn ex.tw u μ w h Lv)
  (L0 : Lev0Data D u w h) (a : 𝓞 D.host.E) (bad : Finset (HeightOneSpectrum (𝓞 D.host.F)))
  (t : KerEntTied ex) (cls : ∀ j, Lv.comp j → (Fl.Pj j).Tup → (D.chTw u μ).cls j)

variable {Ch std vp unif eO eO_spec dG dG_spec om I L0 a bad t cls}



theorem frM_comp (i : ℕ) (c : Lv.comp (i + 1)) (Lt Lt' : (Fl.Pj (i + 1)).Tup) (v : (sysAt Ch std vp unif eO eO_spec dG dG_spec om).Pl) :
    (fdAtL Ch std vp unif eO eO_spec dG dG_spec om I L0 a bad).frM (i + 1) (c, Lt) v = (fdAtL Ch std vp unif eO eO_spec dG dG_spec om I L0 a bad).frM (i + 1) (c, Lt') v := by
  by_cases hi : i + 1 ≤ D.R.m
  · simp only [fdAtL, fdAt, fdOfCharts, cpAt, chAt, dif_pos hi]
    rfl
  · simp only [fdAtL, fdAt, fdOfCharts, cpAt, chAt, dif_neg hi]
    rfl


end Rec

end Formalism.MainNotions.G.KAat

end
