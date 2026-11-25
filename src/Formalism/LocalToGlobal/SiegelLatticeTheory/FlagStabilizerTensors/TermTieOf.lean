module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ParametersTermRelations
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SaturatedPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermAttrConst
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2
  Formalism.L2.SG.Saturated

namespace Formalism.L2.SG.TermTieOf

section Witt

variable {D : D7} (X : HidaSetting D)

structure WittDat where
  δ : D.what₂.Word → ((VS D).V ≃ₗ[D.host.E] (VS D).V)
  isom : ∀ u, δ u ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT
  e_eq : ∀ u a, δ u (X.eX a) = D.sp.hypE a
  z_eq : ∀ u, δ u (X.zu u) = D.zmOf u

def WittExists : Prop := Nonempty (WittDat X)

variable {X}

variable (W : WittDat X)

def FlagOfWord (u : D.what₂.Word) : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E) :=
  Formalism.L2.SG.Saturated.mapFlag (W.δ u) (W.isom u) (X.Fu u)

theorem F0rec_e (u : D.what₂.Word) : (FlagOfWord W u).e = D.sp.hypE := by
  funext a
  show W.δ u ((X.Fu u).e a) = D.sp.hypE a
  rw [X.Fu_e u]
  exact W.e_eq u a

theorem F0rec_z_eq_zmOf (u : D.what₂.Word) : (FlagOfWord W u).z = D.zmOf u := by
  show W.δ u (X.Fu u).z = D.zmOf u
  rw [X.flagZVector u]
  exact W.z_eq u

theorem mapL_lf (u : D.what₂.Word) : mapL (W.δ u) (W.isom u) (lf D (X.Fu u)) = lf D (FlagOfWord W u) := rfl

def rowsRec (Y : Formalism.L2.SG.Full.Full X) (u : D.what₂.Word) : Finset (Submodule (𝓞 D.host.E) (VS D).V) :=
  (Y.what₂ u).image (Formalism.HermitianLatticesTheory.gmap (W.δ u))

end Witt

section Iso

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}
  (β : S.V ≃ₗ[E] S.V) (hβ : β ∈ Formalism.HermitianLatticesTheory.isom S.hT)

include hβ in
theorem zhat_mapFlag (F : FlagG S r T) (F' : FlagG S r T') :
    Formalism.MainNotions.S.Zhat (Formalism.L2.SG.Saturated.mapFlag β hβ F) (Formalism.L2.SG.Saturated.mapFlag β hβ F') = Formalism.MainNotions.S.Zhat F F' := by
  funext a b
  simp only [Formalism.MainNotions.S.Zhat, Formalism.MainNotions.S.brS, Formalism.L2.SG.Saturated.fvec_mapFlag, Formalism.L2.SG.Saturated.isom_apply hβ]

include hβ in
theorem gflag_mapFlag (F : FlagG S r T) (F' : FlagG S r T') :
    Formalism.MainNotions.S.Gflag (Formalism.L2.SG.Saturated.mapFlag β hβ F) (Formalism.L2.SG.Saturated.mapFlag β hβ F') = Formalism.MainNotions.S.Gflag F F' := by
  simp only [Formalism.MainNotions.S.Gflag, Formalism.MainNotions.S.Dl, zhat_mapFlag β hβ]

include hβ in
theorem zhatL_mapL (F : LFlag S r T) (F' : LFlag S r T') :
    ZhatL (mapL β hβ F) (mapL β hβ F') = ZhatL F F' := zhat_mapFlag β hβ F.fl F'.fl

include hβ in
theorem gval_mapL (F : LFlag S r T) (F' : LFlag S r T') : Gval (mapL β hβ F) (mapL β hβ F') = Gval F F' := gflag_mapFlag β hβ F.fl F'.fl

end Iso

section Terms

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y}

variable (W : WittDat X) (hI : SIso D.s (sOf hF))

def tc {u u' : D.what₂.Word} (t : D.s.Term u u') : RT Y u u' := hI.eT u u' t

def repF {u u' : D.what₂.Word} (t : RT Y u u') : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) :=
  (Quot.out t.cls).1

def lamOf {u u' : D.what₂.Word} (t : D.s.Term u u') : Submodule (𝓞 D.host.E) (VS D).V :=
  Formalism.HermitianLatticesTheory.gmap (W.δ u) (tc hI t).lam

def fl'Of {u u' : D.what₂.Word} (t : D.s.Term u u') : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) :=
  mapL (W.δ u) (W.isom u) (repF (tc hI t))


variable (D) in
def LatIso : Prop :=
  ∀ (β : (VS D).V ≃ₗ[D.host.E] (VS D).V), β ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT →
    ∀ Λ : Submodule (𝓞 D.host.E) (VS D).V,
      (Λ ∈ Formalism.HermitianLatticesTheory.genus (VS D).hT (VS D).L0 → Formalism.HermitianLatticesTheory.gmap β Λ ∈ Formalism.HermitianLatticesTheory.genus (VS D).hT (VS D).L0) ∧
      (Submodule.IsLattice D.host.E Λ → Submodule.IsLattice D.host.E (Formalism.HermitianLatticesTheory.gmap β Λ)) ∧
      (Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ → Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT (Formalism.HermitianLatticesTheory.gmap β Λ))

theorem rowLat_map (hL : LatIso D) {T : D.host.E} (β : (VS D).V ≃ₗ[D.host.E] (VS D).V)
    (hβ : β ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT) (F0 : FlagG (VS D) D.R.rS T) (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (h : IsRowLat D F0 Λ) : IsRowLat D (Formalism.L2.SG.Saturated.mapFlag β hβ F0) (Formalism.HermitianLatticesTheory.gmap β Λ) := by
  obtain ⟨hg, ⟨hlat, hun, hlift, hfix⟩, hX⟩ := h
  obtain ⟨h1, h2, h3⟩ := hL β hβ Λ
  refine ⟨h1 hg, ⟨h2 hlat, h3 hun, ?_, ?_⟩, ?_⟩
  · exact (Formalism.L2.SG.Pf.IsLift_mapL (β := β) (hβ := hβ) Λ (lf D F0)).mpr hlift
  · exact (Formalism.L2.SG.Pf.IsFixedConv_mapL (β := β) (hβ := hβ) (gS D) Λ (lf D F0)).mpr hfix
  · show XLam (Formalism.HermitianLatticesTheory.gmap β Λ) (mapL β hβ (lf D F0)) = _
    rw [Formalism.L2.SG.Pf.XLam_mapL (β := β) (hβ := hβ) Λ (lf D F0), hX]
    unfold Formalism.MainNotions.S.XS Formalism.HermitianLatticesTheory.gmap
    rw [Submodule.map_span]
    congr 1
    ext y
    simp only [Set.mem_image, Set.mem_setOf_eq]
    constructor
    · rintro ⟨y0, ⟨a, x, hx, rfl⟩, rfl⟩
      exact ⟨a, x, hx, by simp [Formalism.L2.SG.Saturated.mapFlag]⟩
    · rintro ⟨a, x, hx, rfl⟩
      exact ⟨x • F0.e a, ⟨a, x, hx, rfl⟩, by simp [Formalism.L2.SG.Saturated.mapFlag]⟩

theorem rowLat_tc {u u' : D.what₂.Word} (t : D.s.Term u u') : IsRowLat D (X.Fu u) (tc hI t).lam := (Y.rowsOK u).1 _ (tc hI t).mem

theorem fixedC (hL : LatIso D) {u u' : D.what₂.Word} (t : D.s.Term u u') :
    FixedHyp D (lamOf W hI t) (lf D (FlagOfWord W u)) := (rowLat_map hL (W.δ u) (W.isom u) (X.Fu u) _ (rowLat_tc hI t)).2.1

theorem pdC {u u' : D.what₂.Word} (t : D.s.Term u u') :
    TermDef.PD D (lamOf W hI t) (lf D (FlagOfWord W u)) u' (fl'Of W hI t) := (Formalism.L2.SG.Pf.positive_definite_isomorphism D u' (W.δ u) (W.isom u) (tc hI t).lam (lf D (X.Fu u)) (repF (tc hI t))).2
    (Quot.out (tc hI t).cls).2

theorem gterm_val {u u' : D.what₂.Word} (t : D.s.Term u u') :
    algebraMap D.host.F D.host.E (D.s.Gterm t) = (tc hI t).G := by
  rw [hI.Gterm t]
  rfl

theorem G_eqC {u u' : D.what₂.Word} (t : D.s.Term u u') :
    algebraMap D.host.F D.host.E (D.s.Gterm t) = Gval (lf D (FlagOfWord W u)) (fl'Of W hI t) := by
  rw [gterm_val hI t]
  exact (gval_mapL (W.δ u) (W.isom u) (lf D (X.Fu u)) (repF (tc hI t))).symm

theorem gen_iffC {u u' : D.what₂.Word} (t : D.s.Term u u') :
    D.s.generic t ↔ IsGeneric (lamOf W hI t) (gS D) (lf D (FlagOfWord W u)) (fl'Of W hI t) := by
  rw [hI.generic t]
  show (tc hI t).generic ↔ _
  unfold TermDef.Term.generic
  conv_lhs => rw [← Quot.out_eq (tc hI t).cls]
  refine (TermDef.isGen_mk (gS D) ((term_function_const D u u' (X.Fu u) (tc hI t).lam
    ((Y.rowsOK u).1 _ (tc hI t).mem)).2.2.2.1) _).trans ?_
  exact (Formalism.L2.SG.Pf.generic_isomorphism_holds (gS D) _ _ (W.δ u) (W.isom u) (tc hI t).lam (lf D (X.Fu u))
    (repF (tc hI t))).symm


variable (Y) in
def AtSome (u u' : D.what₂.Word) : Prop := ∀ t : RT Y u u', t.G ≠ 0 → t.relevant → ∃ w, t.atPt w

theorem cellQ {u u' : D.what₂.Word} (t : RT Y u u') (w : Formalism.MainNotions.S.Point D.host.E (D.R.rS + 1)) :
    ∀ x y : TermDef.Carrier (TermDef.PD D t.lam (lf D (X.Fu u)) u'),
      TermDef.Rel t.lam (lf D (X.Fu u)) (TermDef.PD D t.lam (lf D (X.Fu u)) u') x y →
      ((Gval (lf D (X.Fu u)) x.1 ≠ 0 ∧ IsInCell (ZhatOM (ZhatL (lf D (X.Fu u)) x.1)) w) ↔
        (Gval (lf D (X.Fu u)) y.1 ≠ 0 ∧ IsInCell (ZhatOM (ZhatL (lf D (X.Fu u)) y.1)) w)) := by
  intro x y hxy
  rw [PI.TermAttrConst.UnitaryGroupMassFormula.gFun_all t.lam (lf D (X.Fu u)) (TermDef.PD D t.lam (lf D (X.Fu u)) u') x y hxy,
    PI.TermAttrConst.UnitaryGroupMassFormula.cellFun_all t.lam (lf D (X.Fu u)) (TermDef.PD D t.lam (lf D (X.Fu u)) u') x y hxy w]

theorem pt_cellC (hAt : ∀ u u', AtSome Y u u') {u u' : D.what₂.Word} (t : D.s.Term u u') (hG : D.s.Gterm t ≠ 0)
    (hr : D.s.relevant t) : IsInCell (ZhatOM (ZhatL (lf D (FlagOfWord W u)) (fl'Of W hI t))) (D.s.ptOf t) := by
  have hG' : (tc hI t).G ≠ 0 := by
    intro h0
    apply hG
    rw [hI.Gterm t]
    exact Subtype.ext h0
  have hr' : (tc hI t).relevant := (hI.relevant t).mp hr
  obtain ⟨w, hw⟩ := hAt u u' (tc hI t) hG' hr'
  have hex : ∃ w, (tc hI t).atPt w ∧ (tc hI t).relevant := ⟨w, hw, hr'⟩
  rw [hI.ptOf t]
  show IsInCell _ (Formalism.L2.SG.PairVal.ptOf (tc hI t))
  unfold Formalism.L2.SG.PairVal.ptOf
  rw [dite_eq_left hex]
  obtain ⟨h2, -⟩ := hex.choose_spec
  generalize hex.choose = w0 at h2 ⊢
  unfold TermDef.Term.atPt at h2
  rw [← Quot.out_eq (tc hI t).cls] at h2
  have h3 := ((TermDef.atPt_mk (PI.TermAttrConst.UnitaryGroupMassFormula.gFun_all _ _ _) (PI.TermAttrConst.UnitaryGroupMassFormula.cellFun_all _ _ _) _
    w0).mp h2).2
  have e : ZhatL (lf D (FlagOfWord W u)) (fl'Of W hI t) = ZhatL (lf D (X.Fu u)) (repF (tc hI t)) :=
    Formalism.L2.SG.Saturated.zhat_mapL (W.δ u) (W.isom u) (lf D (X.Fu u)) (repF (tc hI t))
  rw [e]
  exact h3

theorem rp_lam {u u' : D.what₂.Word} (q : RP Y u u') : q.1.1.lam = q.1.2.lam := by
  obtain ⟨⟨s₁, h₁⟩, ⟨s₂, h₂⟩, hrow⟩ := q.2
  rw [← h₁, ← h₂]
  exact congrArg (fun x => (x.1 : Submodule (𝓞 D.host.E) (VS D).V)) hrow

theorem pLamC {u u' : D.what₂.Word} (p : D.s.Pair u u') : lamOf W hI (D.s.pfst p) = lamOf W hI (D.s.psnd p) := by
  unfold lamOf tc
  rw [hI.pfst p, hI.psnd p]
  exact congrArg (Formalism.HermitianLatticesTheory.gmap (W.δ u)) (rp_lam (hI.eP u u' p))

end Terms

section Pairs

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y} (W : WittDat X)
  (hI : SIso D.s (sOf hF))

def mvOf {T T' : D.host.E} (Λ : Submodule (𝓞 D.host.E) (VS D).V) (F : LFlag (D.sp.Y 0) D.R.rS T)
    (F₁ F₂ : LFlag (D.sp.Y 0) D.R.rS T') : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
  if h : TermDef.DCRel Λ F F₁ F₂ then h.choose * h.choose_spec.2.choose else 1

def betaOf {u u' : D.what₂.Word} (p : D.s.Pair u u') : (VS D).V ≃ₗ[D.host.E] (VS D).V :=
  W.δ u * (mvOf (hI.eP u u' p).1.2.lam (lf D (X.Fu u)) (hI.eP u u' p).l2.frame (repF (hI.eP u u' p).1.2) *
      ((hI.eP u u' p).l2.lin * (hI.eP u u' p).l1.lin⁻¹) *
      (mvOf (hI.eP u u' p).1.1.lam (lf D (X.Fu u)) (hI.eP u u' p).l1.frame (repF (hI.eP u u' p).1.1))⁻¹) *
    (W.δ u)⁻¹

structure PairTies : Prop where
  isPair : ∀ {u u' : D.what₂.Word} (p : D.s.Pair u u'),
    IsPair (lamOf W hI (D.s.pfst p)) (lf D (FlagOfWord W u)) (fl'Of W hI (D.s.pfst p)) (fl'Of W hI (D.s.psnd p))
      (betaOf W hI p) (gS D)
  s0_eq : ∀ {u u' : D.what₂.Word} (p : D.s.Pair u u'), D.s.s0 p =
    Lat.s0 (lamOf W hI (D.s.pfst p)) (lf D (FlagOfWord W u)) (fl'Of W hI (D.s.pfst p)) (fl'Of W hI (D.s.psnd p))
      (betaOf W hI p) D.R.k
  scal_iff : ∀ {u u' : D.what₂.Word} (p : D.s.Pair u u'), D.s.s0 p = 1 → (D.s.scalarPair p ↔
    IsScalar (lamOf W hI (D.s.pfst p)) (lf D (FlagOfWord W u)) (fl'Of W hI (D.s.pfst p)) (fl'Of W hI (D.s.psnd p))
      (betaOf W hI p))

def JtOf {u u' : D.what₂.Word} (t : D.s.Term u u') : X.Vpi u' →L[ℂ] X.Vpi u :=
  if h : ∃ s : TT Y u u', s.toTerm = tc hI t then ampN (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') h.choose else 0

def wRowOf {u u' : D.what₂.Word} (p : D.s.Pair u u') : ℝ := Formalism.MainNotions.S.wRow D (FlagOfWord W u) (lamOf W hI (D.s.pfst p))

theorem lamOf_mem {u u' : D.what₂.Word} (t : D.s.Term u u') : lamOf W hI t ∈ rowsRec W Y u := Finset.mem_image_of_mem _ (tc hI t).mem

theorem wRowOf_pos (hA : ∀ u, Formalism.L2.SG.PairVal.AutFin D (FlagOfWord W u) (rowsRec W Y u)) {u u' : D.what₂.Word}
    (p : D.s.Pair u u') : 0 < wRowOf W hI p := Formalism.L2.SG.PairVal.wRow_pos (h := hA u _ (lamOf_mem W hI (D.s.pfst p)))


variable (X) in
structure AmpDat where
  chi : ∀ {u u' : D.what₂.Word}, D.s.Pair u u' → ℂ
  piB : ∀ {u u' : D.what₂.Word}, D.s.Pair u u' → (X.Vpi u' →L[ℂ] X.Vpi u')

def PvalForm (A : AmpDat X) : Prop :=
  ∀ {u u' : D.what₂.Word} (p : D.s.Pair u u'), D.s.pval p =
    (wRowOf W hI p : ℂ) * A.chi p * hsInner ((JtOf hI (D.s.pfst p)).comp (A.piB p)) (JtOf hI (D.s.psnd p))

structure TieHyp : Prop where
  lat : LatIso D
  atSome : ∀ u u', AtSome Y u u'
  autFin : ∀ u, Formalism.L2.SG.PairVal.AutFin D (FlagOfWord W u) (rowsRec W Y u)
  pairs : PairTies W hI

def termTieOf (H : TieHyp W hI) (A : AmpDat X) (_hV : PvalForm W hI A) : TermTie D where
  abelian₂ := fun t => lamOf W hI t
  fl := fun {u _} _ => lf D (FlagOfWord W u)
  fl' := fun t => fl'Of W hI t
  fixed := fun t => fixedC W hI H.lat t
  lift' := fun t => (pdC W hI t).1
  adm := fun t => (pdC W hI t).2.1
  G_eq := fun t => G_eqC W hI t
  gen_iff := fun t => gen_iffC W hI t
  pt_cell := fun t h hr => pt_cellC W hI H.atSome t h hr
  pLam := fun p => pLamC W hI p
  pfl := fun _ => rfl
  beta := fun p => betaOf W hI p
  isPair := fun p => H.pairs.isPair p
  s0_eq := fun p => H.pairs.s0_eq p
  scal_iff := fun p => H.pairs.scal_iff p
  wRow := fun p => wRowOf W hI p
  wRow_pos := fun p => wRowOf_pos W hI H.autFin p
  Hpi := X.Vpi
  Jt := fun t => JtOf hI t

end Pairs

section Loc

variable {D : D7} {X : HidaSetting D} {Y : Formalism.L2.SG.Full.Full X} {hF : FinX Y} (W : WittDat X)
  (hI : SIso D.s (sOf hF))


variable (D) in
def WRowIso : Prop :=
  ∀ (β : (VS D).V ≃ₗ[D.host.E] (VS D).V) (hβ : β ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT) {T : D.host.E}
    (F0 : FlagG (VS D) D.R.rS T) (Λ : Submodule (𝓞 D.host.E) (VS D).V),
    Formalism.MainNotions.S.wRow D (Formalism.L2.SG.Saturated.mapFlag β hβ F0) (Formalism.HermitianLatticesTheory.gmap β Λ) = Formalism.MainNotions.S.wRow D F0 Λ


variable (D) in
def RowRepsIso : Prop :=
  ∀ (β : (VS D).V ≃ₗ[D.host.E] (VS D).V) (hβ : β ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT) {T : D.host.E}
    (F0 : FlagG (VS D) D.R.rS T) (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)),
    IsRowReps D F0 what₂ → IsRowReps D (Formalism.L2.SG.Saturated.mapFlag β hβ F0) (what₂.image (Formalism.HermitianLatticesTheory.gmap β))


theorem term_injC {u u' : D.what₂.Word} (γ γ' : D.s.Term u u') (hL : lamOf W hI γ = lamOf W hI γ')
    (h : ∃ n ∈ NLam (lamOf W hI γ) (lf D (FlagOfWord W u)), ∃ m ∈ NLam (lamOf W hI γ) (fl'Of W hI γ),
      ∀ b, frame (fl'Of W hI γ') b = n (m (frame (fl'Of W hI γ) b))) : γ = γ' := by
  obtain ⟨n, hn, m, hm, hfr⟩ := h
  have hlam : (tc hI γ).lam = (tc hI γ').lam := (Formalism.L2.SG.Pf.gmap_inj (W.δ u)).1 hL
  have hz : ∀ t : D.s.Term u u', (fl'Of W hI t).zt = frame (fl'Of W hI t) (Fin.last _) := by
    intro t
    rw [(pdC W hI t).1.2]
    simp [frame, FlagG.fvec]
  have hdc : TermDef.DCRel (lamOf W hI γ) (mapL (W.δ u) (W.isom u) (lf D (X.Fu u))) (fl'Of W hI γ) (fl'Of W hI γ') :=
    ⟨n, hn, m, hm, hfr, by rw [hz γ', hz γ]; exact hfr _⟩
  have hdc' := (Formalism.L2.SG.Pf.double_coset_isomorphism _ _ (W.δ u) (W.isom u) _ _ _ _).1 hdc
  apply (hI.eT u u').injective
  have key : ∀ (a b : RT Y u u'), a.lam = b.lam →
      TermDef.DCRel a.lam (lf D (X.Fu u)) (Quot.out a.cls).1 (Quot.out b.cls).1 → a = b := by
    rintro ⟨Λ, hm1, c⟩ ⟨Λ', hm2, c'⟩ h hd
    simp only at h
    subst h
    have : c = c' := by
      rw [← Quot.out_eq c, ← Quot.out_eq c']
      exact Quot.sound hd
    subst this
    rfl
  exact key (tc hI γ) (tc hI γ') hlam hdc'


end Loc

section WittEquiv

variable {D : D7} {X : HidaSetting D} (W : WittDat X) (Y : Formalism.L2.SG.Full.Full X)

variable {W Y}

theorem rowLat_rec (hL : LatIso D) {u : D.what₂.Word} (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hm : Λ ∈ Y.what₂ u) :
    IsRowLat D (FlagOfWord W u) (Formalism.HermitianLatticesTheory.gmap (W.δ u) Λ) := rowLat_map hL (W.δ u) (W.isom u) (X.Fu u) Λ ((Y.rowsOK u).1 Λ hm)

theorem eqIff_base {u u' : D.what₂.Word} (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hm : Λ ∈ Y.what₂ u) :
    TermDef.EqIff Λ (lf D (X.Fu u)) (TermDef.PD D Λ (lf D (X.Fu u)) u') := PI.DCRelEquiv.UnitaryGroupMassFormula.eqIffAll_holds _ _ _ _ _ _ _ _

variable (W Y)

variable {W Y}

variable (W Y)

end WittEquiv

def AtSomeAll : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word), AtSome Y u u'

def PairTiesAll : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (hF : FinX Y) (W : WittDat X) (hI : SIso D.s (sOf hF)),
    PairTies W hI

def FibFinAll : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word) (t : RT Y u u'), Finite (fib Y t)

def PairIndepAll : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word) (s₁ s₂ s₁' s₂' : TT Y u u'),
    s₁.toTerm = s₁'.toTerm → s₂.toTerm = s₂'.toTerm →
    rowOf Y.TR (Y.cs u) (Y.cs u') s₁ = rowOf Y.TR (Y.cs u) (Y.cs u') s₂ →
    rowOf Y.TR (Y.cs u) (Y.cs u') s₁' = rowOf Y.TR (Y.cs u) (Y.cs u') s₂' →
    s0T s₁ s₂ = s0T s₁' s₂' ∧ (liftScalar s₁ s₂ ↔ liftScalar s₁' s₂')

end Formalism.L2.SG.TermTieOf
