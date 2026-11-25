module

public import Formalism.LocalToGlobal.HermitianForms.TiedTwSame
public import Formalism.LocalToGlobal.HermitianColumns.TiedCh
public import Formalism.LocalToGlobal.HermitianForms.TiedSym

@[expose] public section

noncomputable section

open Formalism.BasicNotions NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

namespace Formalism.L2.Herm

structure TwChJointS {D : D7} {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop} (T : TwChTied D inQ)
    (H : HermColsCh D) where

  gOf : ∀ u μ i, T.Ch u μ i → H.Ch u i

  Uloc_off : ∀ u μ i (h1 : 1 ≤ i) (hm : i ≤ D.R.m) (β : T.Ch u μ i) (v : HeightOneSpectrum (𝓞 D.host.F)), v ∉ T.Q μ →
    (i + 1 ≠ D.R.m ∨ v ∉ Formalism.L2.Forms.badG D) →
    (T.lev u μ i h1 hm β).Uloc v = (H.lev u i h1 hm (gOf u μ i β)).Uloc v
  Lb_off : ∀ u μ i (h1 : 1 ≤ i) (hm : i ≤ D.R.m) (β : T.Ch u μ i) (v : HeightOneSpectrum (𝓞 D.host.F)), v ∉ T.Q μ →
    locL v (T.lev u μ i h1 hm β).Lb = locL v (H.lev u i h1 hm (gOf u μ i β)).Lb
  Q_off : ∀ u μ, ∀ v ∈ T.Q μ, (((D.mem u).A.T : ℕ) : 𝓞 D.host.F) ∉ v.asIdeal ∧ ∀ a, (D.host.g a : 𝓞 D.host.F) ∉ v.asIdeal

end Formalism.L2.Herm

namespace Formalism.L2.Forms

variable {D : D7}

def eYS {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i} (F : FormsTiedSym D u Ch chOf) (i : ℕ)
    (hi : i ≤ D.R.m) : (D.mem u).C.Y i ≃ Fr D i hi :=
  if h : i = 0 ∨ i = D.R.m then (F.val i hi h).eY else F.eYC i (by omega) (by omega)

theorem eYS_end {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i} (F : FormsTiedSym D u Ch chOf) (i : ℕ)
    (hi : i ≤ D.R.m) (h : i = 0 ∨ i = D.R.m) : eYS F i hi = (F.val i hi h).eY := by
  rw [eYS, dite_eq_left h]

variable {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop}

def twYS (T : Formalism.L2.Herm.TwChTied D inQ) {Ch : D.what₂.Word → ℕ → Type} {chOf : ∀ u i, (D.mem u).C.cls i → Ch u i}
    (F : ∀ u, FormsTiedSym D u (Ch u) (chOf u)) (u : D.what₂.Word) (μ : D.what₂.Tup) (i : ℕ) (hi : i ≤ D.R.m) :
    (D.chTw u μ).Y i ≃ Fr D i hi :=
  (T.eY u μ i hi).symm.trans (eYS (F u) i hi)



structure TwFormsTiedS (D : D7) (Tw : TwForms D) {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop}
    (T : Formalism.L2.Herm.TwChTied D inQ) {H : Formalism.L2.Herm.HermColsCh D} (J : Formalism.L2.Herm.TwChJointS T H)
    (F : ∀ u, FormsTiedSym D u (H.Ch u) (H.chOf u)) where

  atT : ∀ u μ, TwAtT Tw u μ

  ch : ∀ (u : D.what₂.Word) (μ : D.what₂.Tup), μ ≠ D.what₂.mu0 → ∀ (i : ℕ), 1 ≤ i → ∀ (hm : i ≤ D.R.m) (β : T.Ch u μ i),
    LevelChart D (D.mem u).A.T (badQ D (T.Q μ)) i hm
      (fun c : {c // T.chOf u μ i c = β} => (D.chTw u μ).stab i c.1) (fun c => latCrd D i hm (T.lat u μ i c.1))

  car : ∀ u μ (hμ : μ ≠ D.what₂.mu0) i (h1 : 1 ≤ i) (hm : i ≤ D.R.m) (β : T.Ch u μ i),
    SameCar (rankN D i hm) (T.lev u μ i h1 hm β).Lb (ch u μ hμ i h1 hm β).lev.Lb
      (T.lev u μ i h1 hm β).Uloc (ch u μ hμ i h1 hm β).lev.Uloc (T.lev u μ i h1 hm β).U (ch u μ hμ i h1 hm β).lev.U
      (fun c => ((T.cls u μ hμ i h1 hm β).y c).1) (fun c => ((ch u μ hμ i h1 hm β).y c).1)
      (fun c s => ((T.cls u μ hμ i h1 hm β).stabI c s).1) (fun c s => ((ch u μ hμ i h1 hm β).stabI c s).1)

  chi_fin : ∀ u μ hμ i h1 hm β, ∃ n : ℕ, 0 < n ∧ ∀ κ, (ch u μ hμ i h1 hm β).lev.chi κ ^ n = 1

  val : ∀ u μ hμ i h1 hm, ValuationCompatibleChart (Tw.fm u μ) (twYS T F u μ i hm) (okQ D (T.Q μ)) (T.chOf u μ i)
    (lat := fun c => latCrd D i hm (T.lat u μ i c)) (ch u μ hμ i h1 hm)



structure SymmetricTwistedLevelData {Tw : TwForms D} {T : Formalism.L2.Herm.TwChTied D inQ} {H : Formalism.L2.Herm.HermColsCh D} {J : Formalism.L2.Herm.TwChJointS T H}
    {F : ∀ u, FormsTiedSym D u (H.Ch u) (H.chOf u)} (W : TwFormsTiedS D Tw T J F) where
  lv : ∀ u μ, μ ≠ D.what₂.mu0 → ∀ i, 1 ≤ i → ∀ hm : i ≤ D.R.m,
    LevelCompatibleLattices (Tw.fm u μ) (D.mem u).A.T ((W.atT u μ).res (F u).atT) i hm (fun c => latCrd D i hm (T.lat u μ i c))
  fMe : ∀ u μ hμ i h1 hm β v, (W.ch u μ hμ i h1 hm β).lev.fM (((W.atT u μ).eV (F u).atT) v).1 (((W.atT u μ).eV (F u).atT) v).2 ≃+
    (Tw.A u μ).Fv v
  fv : ∀ u μ hμ i h1 hm, FvTieG (lv u μ hμ i h1 hm) ((W.atT u μ).eV (F u).atT) (W.ch u μ hμ i h1 hm) (fMe u μ hμ i h1 hm)
  upN : ∀ u μ hμ i h1 hm, UpNatTieG (lv u μ hμ i h1 hm) (twYS T F u μ i hm) ((W.atT u μ).eV (F u).atT) (W.ch u μ hμ i h1 hm)
  dnN : ∀ u μ hμ i h1 hm, DnNatTieG (lv u μ hμ i h1 hm) (twYS T F u μ i hm) ((W.atT u μ).eV (F u).atT) (W.ch u μ hμ i h1 hm)
  bw : ∀ u μ, μ ≠ D.what₂.mu0 → ∀ i, 1 ≤ i → ∀ hm : i ≤ D.R.m,
    BwTieG (Tw.fm u μ) (D.mem u).A.T ((W.atT u μ).res (F u).atT) (twYS T F u μ i hm) (fun c => latCrd D i hm (T.lat u μ i c))

end Formalism.L2.Forms

end
