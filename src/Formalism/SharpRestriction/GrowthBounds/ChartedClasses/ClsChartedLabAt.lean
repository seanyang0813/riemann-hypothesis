module

public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ExistsIsCGBases
public import Formalism.SharpRestriction.GrowthBounds.ChartComparison
public import Formalism.LocalToGlobal.GroupLattices.ClassLocalOfEq
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan
public import Formalism.LocalToGlobal.HermitianColumns.TiedQC

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.KAat

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PStabEq
open scoped TensorProduct

section Cast

variable {R : Ranks} {ι : Type} [Fintype ι] {hc : ι → HCParam R}

def castCls {C C' : ColumnChain R ι hc} (h : C = C') (j : ℕ) (c : C.cls j) : C'.cls j := h ▸ c

theorem castCls_inj {C C' : ColumnChain R ι hc} (h : C = C') (j : ℕ) : Function.Injective (castCls h j) := by
  subst h; exact fun _ _ h => h

theorem castCls_surj {C C' : ColumnChain R ι hc} (h : C = C') (j : ℕ) : Function.Surjective (castCls h j) := by
  subst h; exact fun c => ⟨c, rfl⟩

theorem castCls_card {C C' : ColumnChain R ι hc} (h : C = C') (j : ℕ) (c : C.cls j) :
    Nat.card (C'.stab j (castCls h j c)) = Nat.card (C.stab j c) := by
  subst h; rfl

end Cast

variable {D : D7} {c : LatCmp D} {Tw : TwForms D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

structure LabIn (I : CmpJIn Tw u μ w h Lv) where
  onCh : ∀ j hj, (I.at' j hj).C = D.chTw u μ
  chX : ∀ j hj, ChX (I.at' j hj).st
  fl_t : Fl.t = D.R.t
  fl_m : Fl.mm = D.R.m
  c0 : Formalism.L2.G.TwTie0.ClsAt0 D u μ w h Lv
  fill : ∀ j, D.R.m < j → Lv.comp j → (D.chTw u μ).cls j
  rat : ∀ j, j < D.R.m → (Tw.fm u μ).KRat j
  dgam : (D.chTw u μ).DGam ∣ (D.mem u).C.DGam

variable {I : CmpJIn Tw u μ w h Lv}

def clsAt (X : LabIn I) (H : CmpJHyp c I) : ∀ j, Lv.comp j → (Fl.Pj j).Tup → (D.chTw u μ).cls j
  | 0 => X.c0.cls
  | j + 1 => fun a L =>
    if hj : j + 1 ≤ D.R.m then castCls (X.onCh j hj) (j + 1) (clsOf (S := (I.at' j hj).st) (H.core j hj) a L)
    else X.fill (j + 1) (by omega) a

theorem clsAt_succ (X : LabIn I) (H : CmpJHyp c I) (j : ℕ) (hj : j + 1 ≤ D.R.m) (a : Lv.comp (j + 1)) (L : (Fl.Pj (j + 1)).Tup) :
    clsAt X H (j + 1) a L = castCls (X.onCh j hj) (j + 1) (clsOf (S := (I.at' j hj).st) (H.core j hj) a L) := dif_pos hj

def levelChartElement (H : CmpJHyp c I) (j : ℕ) (hj : j + 1 ≤ D.R.m) (a : Lv.comp (j + 1)) (L : (Fl.Pj (j + 1)).Tup) :
    GL (Fin (D.R.N (j + 1))) D.host.E := gam0 (S := (I.at' j hj).st) (H.core j hj) a L

def labAt (X : LabIn I) (H : CmpJHyp c I) : KerLabelsMu Tw u μ w h Lv where
  fl_t := X.fl_t
  fl_m := X.fl_m
  cls := clsAt X H
  cls_iff := fun j hj a a' L L' hL hL' => by
    cases j with
    | zero => exact X.c0.cls_iff a a' L L' hL hL'
    | succ j =>
      rw [clsAt_succ X H j hj, clsAt_succ X H j hj, (castCls_inj _ _).eq_iff]
      exact clsOf_iff (S := (I.at' j hj).st) (H.core j hj) (X.chX j hj) a a' L L' hL hL'
  cls_surj := fun j hj x => by
    cases j with
    | zero => exact X.c0.cls_surj x
    | succ j =>
      obtain ⟨x0, rfl⟩ := castCls_surj (X.onCh j hj) (j + 1) x
      obtain ⟨a, L, hL, e⟩ := clsOf_surj (S := (I.at' j hj).st) (H.core j hj) x0
      exact ⟨a, L, hL, by rw [clsAt_succ X H j hj]; exact congrArg _ e⟩
  stab_zero := X.c0.stab_zero
  stab_dvd := fun j hj a L hL => by
    cases j with
    | zero =>
      have e : Nat.card {γ : (Lv.lev 0 a).Γ // (Lv.lev 0 a).smul γ L = L} = 1 := X.c0.stab_zero a L hL
      rw [e]
      exact ⟨Nat.one_pos, one_dvd _⟩
    | succ j =>
      have e : Nat.card ((D.chTw u μ).stab (j + 1) (clsAt X H (j + 1) a L)) =
          Nat.card {γ : (Lv.lev (j + 1) a).Γ // (Lv.lev (j + 1) a).smul γ L = L} := by
        rw [clsAt_succ X H j hj, castCls_card]
        exact clsOf_card (S := (I.at' j hj).st) (H.core j hj) (X.chX j hj) a L hL
      rw [← e]
      exact ⟨Nat.card_pos, ((D.chTw u μ).dvd_DGam (j + 1) hj _).trans X.dgam⟩
  rat := X.rat
  stab_eq := fun j h1 hj a L hL => by
    cases j with
    | zero => omega
    | succ j =>
      rw [clsAt_succ X H j hj, castCls_card]
      exact clsOf_card (S := (I.at' j hj).st) (H.core j hj) (X.chX j hj) a L hL

abbrev chainAt (H : CmpJHyp c I) (Gt : GatTies D) : Chain Lv := chainMu (stepsMu H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt).up

def kaAt (X : LabIn I) (H : CmpJHyp c I) (Gt : GatTies D) : TwTie.KerAtMu D c Tw u μ w h (chainAt H Gt) :=
  kerAtMu_cmpJ (labAt X H) H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt

def kaAtAny (X : LabIn I) (H : CmpJHyp c I) (Gt : GatTies D) (Ch : Chain Lv)
    (hCh : ∀ j, j < D.R.m → ∀ (x : ((Tw.fm u μ).lat j).V) (y : ((Tw.fm u μ).lat (j + 1)).V),
      (Tw.fm u μ).emb (j + 1) y = (D.chTw u μ).K j ((Tw.fm u μ).emb j x) →
      (stepsMu H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt).up.cmp (j + 1) y = Ch.Kz j ((stepsMu H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt).up.cmp j x)) :
    TwTie.KerAtMu D c Tw u μ w h Ch :=
  kerAtMu_any (labAt X H) H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt Ch hCh

theorem kaAt_cls (X : LabIn I) (H : CmpJHyp c I) (Gt : GatTies D) : (kaAt X H Gt).cls = clsAt X H := by
  simp [kaAt, kerAtMu_cmpJ, kerAtMu, kerAtMu_of, labAt]

theorem kaAtAny_cls (X : LabIn I) (H : CmpJHyp c I) (Gt : GatTies D) (Ch : Chain Lv) (hCh) :
    (kaAtAny X H Gt Ch hCh).cls = clsAt X H := by
  simp [kaAtAny, kerAtMu_any, labAt]

theorem kaAt_cmp (X : LabIn I) (H : CmpJHyp c I) (Gt : GatTies D) (j : ℕ) (hj : j + 1 ≤ D.R.m) (x : ((Tw.fm u μ).lat (j + 1)).V) :
    (kaAt X H Gt).cmp (j + 1) x = (I.at' j hj).st.cmpJ (c.embW u w h) ((I.at' j hj).eps.symm x) :=
  kerAtMu_cmpJ_cmp (labAt X H) H Formalism.L2.G.RelativeIndexFlags.blockRationality_holds Gt j hj x

theorem kaAt_pt (H : CmpJHyp c I) (j : ℕ) (hj : j + 1 ≤ D.R.m) (β : (I.at' j hj).st.Ch) (a0 : (I.at' j hj).st.cmpt β)
    (L : (Fl.Pj (j + 1)).Tup) (g : ∀ v, GL (Fin ((Fl.Pj (j + 1)).m + 1)) ((Fl.Pj (j + 1)).Qq v))
    (hL : ∀ v, L v = colSpan ((Fl.Pj (j + 1)).W v) (g v : Matrix (Fin ((Fl.Pj (j + 1)).m + 1)) (Fin ((Fl.Pj (j + 1)).m + 1))
      ((Fl.Pj (j + 1)).Qq v)))
    (x : UPts (sigD D) (gramN D (j + 1) hj) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
    (hx : ((I.at' j hj).st.loc β).IsPt a0 g x.1) :
    ∃ (hc : (I.at' j hj).st.chOf (clsOf (S := (I.at' j hj).st) (H.core j hj) ((I.at' j hj).st.eC ⟨β, a0⟩) L) = β)
      (κ : ((I.at' j hj).st.K β).lev.U),
      levelChartElement H j hj ((I.at' j hj).st.eC ⟨β, a0⟩) L ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D (j + 1) hj) ∧
      x.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (levelChartElement H j hj ((I.at' j hj).st.eC ⟨β, a0⟩) L) *
        (((I.at' j hj).st.K β).y ⟨_, hc⟩).1 * κ.1 := by
  have hLt : (Fl.Pj (j + 1)).IsLatTup L := isLatTup_of_bases (G := gatJ Lv (j + 1)) L g hL
  have hs := cg_spec (S := (I.at' j hj).st) (H.core j hj) ((I.at' j hj).st.eC ⟨β, a0⟩) L hLt
  have hc : (I.at' j hj).st.chOf (clsOf (S := (I.at' j hj).st) (H.core j hj) ((I.at' j hj).st.eC ⟨β, a0⟩) L) = β := by
    rw [hs.chart, Equiv.symm_apply_apply]
  obtain ⟨κ, e⟩ := hs.pt (H.core j hj) hc g hL x hx
  exact ⟨hc, κ, hs.mem, e⟩

section OnTw

variable {st : ∀ j (hj : j + 1 ≤ D.R.m), StepIn (Tw.fm u μ) (j + 1) hj (gatJ Lv (j + 1))}

end OnTw

section Yb

variable {inQ : D.what₂.Tup → HeightOneSpectrum (𝓞 D.host.F) → Prop} (T : Formalism.L2.Herm.TwChTied D inQ)
  {st : ∀ j (hj : j + 1 ≤ D.R.m), StepIn (Tw.fm u μ) (j + 1) hj (gatJ Lv (j + 1))}

variable {T}

end Yb

end Formalism.MainNotions.G.KAat

end
