module

public import Formalism.LocalToGlobal.HermitianForms.TiedTw
public import Formalism.SharpRestriction.GrowthBounds.ChartComparison.CmpGlMemMIff
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TiePtOneRec
public import Formalism.LocalToGlobal.HermitianColumns.TiedCh
public import Formalism.LocalToGlobal.HermitianForms.TiedSym
public import Formalism.LocalToGlobal.HermitianForms.TiedTwSym

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix
open scoped TensorProduct

structure LocPart (D : D7) {p : ℕ} (G : GAtP p) (Ch : Type) (n : ℕ) where
  cmpt : Ch → Type
  [fin : ∀ β, Fintype (cmpt β)]
  eC : (Σ β, cmpt β) ≃ G.comp
  loc : ∀ β, LocAt D.host.F D.host.E n (gatCh G fun a : cmpt β => eC ⟨β, a⟩)
  pos : (Σ v : Fin G.P.nV, Fin (G.P.n' v)) ≃ D.what₂.Tau

attribute [instance] LocPart.fin

variable {D : D7} {Tw : TwForms D} {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop}
  {T : Formalism.L2.Herm.TwChTied D inQ} {H : Formalism.L2.Herm.HermColsCh D} {J : Formalism.L2.Herm.TwChJointS T H}
  {F : ∀ u, FormsTiedSym D u (H.Ch u) (H.chOf u)}


theorem badQ_notOver (u : D.what₂.Word) (w : D.what₂.places.Pl) (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w))
    (Q : Finset (HeightOneSpectrum (𝓞 D.host.F))) (hQ : okQ D Q w) (w' : HeightOneSpectrum (𝓞 D.host.F)) (hw : w' ∈ badQ D Q) :
    ((D.what₂.places.resChar w : ℕ) : 𝓞 D.host.F) ∉ w'.asIdeal := by
  rcases hw with h | h
  · exact bad_notOver u w hg w' h
  · exact hQ w' h

end Formalism.MainNotions.G.CmpJ

end
