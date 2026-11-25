module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SignAtBasePlaceEqEmbedding
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwInputs.Move
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open Formalism.L2.Host (embLL0 CharFrame)
open GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open scoped TensorProduct


noncomputable section
namespace GlobalTheory.TwInputs.Move.Forms



theorem hecke_geo {D D' : D7} (hR : D.R = D'.R) (hH : HEq D.host D'.host) (hsp : HEq D.sp D'.sp)
    (j : Fin D.R.m) (j' : Fin D'.R.m) (hj : (j : ℕ) = j') :
    GA D (Wc D j) = GA D' (Wc D' j') ∧ HEq (Wc D j) (Wc D' j') ∧
    ∀ (β : GL (Fin (Wc D j).rank) (Lev.EAf D)) (β' : GL (Fin (Wc D' j').rank) (Lev.EAf D')), HEq β β' →
    ∀ (Pg : Finset (Pl D.host.E)) (Pg' : Finset (Pl D'.host.E)), HEq Pg Pg' →
    ∀ (P : PlE D.host) (P' : PlE D'.host), HEq P P' → ∀ (k : ℕ) (α' : GA D' (Wc D' j')) (R' : Finset (GA D' (Wc D' j'))),
      IsHeckeAt (Wc D' j') P' k α' →
      Bridge.IsDC (Lev.levG (Wc D' j') β' (Lev.datY _ D'.R.r D'.R.t 0 (r_le_rank_Wc j') Pg' ∅ (LevelP.triv _ _ _)
        (fun _ _ => 1) (fun _ => 1) Lev.Frm.B)) α' R' →
      ∃ (α : GA D (Wc D j)) (R : Finset (GA D (Wc D j))), IsHeckeAt (Wc D j) P k α ∧
        Bridge.IsDC (Lev.levG (Wc D j) β (Lev.datY _ D.R.r D.R.t 0 (r_le_rank_Wc j) Pg ∅ (LevelP.triv _ _ _)
          (fun _ _ => 1) (fun _ => 1) Lev.Frm.B)) α R ∧
        ∀ F F', HEq F F' → HEq (Mult.heckeLin (Wc D j) R F) (Mult.heckeLin (Wc D' j') R' F') := by
  cases D; cases D'
  dsimp only at hR hH hsp
  subst hR; subst hH; subst hsp
  cases Fin.ext hj
  refine ⟨rfl, HEq.rfl, fun β β' hβ Pg Pg' hPg P P' hP k α R h1 h2 => ?_⟩
  subst hβ; subst hPg; subst hP
  exact ⟨α, R, h1, h2, fun F F' hF => by subst hF; rfl⟩



private theorem lieAt_rank_heq {D D' : D7} (hR : D.R = D'.R) (hH : HEq D.host D'.host)
    (hT : D.what₂.Tau = D'.what₂.Tau) (he : HEq D.eTau D'.eTau) {V : HSp D} {V' : HSp D'} (hV : HEq V V') :
    V.rank = V'.rank ∧ HEq (fun τ => lieAt V τ) (fun τ => lieAt V' τ) := by
  obtain ⟨R, H, sp, vol, vp, what₂, eT⟩ := D
  obtain ⟨R', H', sp', vol', vp', rows', eT'⟩ := D'
  dsimp only at hR hH hT he; subst hR; subst hH; cases what₂; cases rows'
  dsimp only at hT he; subst hT; subst he; subst hV; exact ⟨rfl, HEq.rfl⟩

private theorem exists_sameVec_flat {Tau Tau' : Type} (hT : Tau = Tau') {n n' : ℕ} (hn : n = n')
    {L : Tau → Set (Matrix (Fin n) (Fin n) ℂ)} {L' : Tau' → Set (Matrix (Fin n') (Fin n') ℂ)} (hL : HEq L L')
    {H : Tau → Type} {H' : Tau' → Type} (h1 : HEq H H')
    {nacg : ∀ τ, NormedAddCommGroup (H τ)} {nacg' : ∀ τ, NormedAddCommGroup (H' τ)} (h2 : HEq nacg nacg')
    {ips : letI := nacg; ∀ τ, InnerProductSpace ℂ (H τ)} {ips' : letI := nacg'; ∀ τ, InnerProductSpace ℂ (H' τ)} (h3 : HEq ips ips')
    {σ : letI := nacg; letI := ips; ∀ τ, Matrix (Fin n) (Fin n) ℂ → (H τ →L[ℂ] H τ)}
    {σ' : letI := nacg'; letI := ips'; ∀ τ, Matrix (Fin n') (Fin n') ℂ → (H' τ →L[ℂ] H' τ)} (h4 : HEq σ σ')
    {fr : Tau → Matrix (Fin n) (Fin n) ℂ} {fr' : Tau' → Matrix (Fin n') (Fin n') ℂ} (h5 : HEq fr fr')
    (v' : letI := nacg'; letI := ips'; ∀ τ : Tau', Submodule.span ℂ {w | SmoothVec (L' τ) (fun g => σ' τ (fr' τ * g * (fr' τ)⁻¹)) w}) :
    letI := nacg; letI := ips; letI := nacg'; letI := ips'
    ∃ v : ∀ τ : Tau, Submodule.span ℂ {w | SmoothVec (L τ) (fun g => σ τ (fr τ * g * (fr τ)⁻¹)) w},
      ∀ τ τ', HEq τ τ' → HEq (v τ : H τ) (v' τ' : H' τ') := by
  subst hT; subst hn; subst hL; subst h1; subst h2; subst h3; subst h4; subst h5
  exact ⟨v', fun τ τ' h => by subst h; rfl⟩

theorem exists_sameVec {D D' : D7} (hR : D.R = D'.R) (hH : HEq D.host D'.host) (hT : D.what₂.Tau = D'.what₂.Tau)
    (he : HEq D.eTau D'.eTau) {V : HSp D} {V' : HSp D'} (hV : HEq V V') {P : D.what₂.Tau → SPar} {P' : D'.what₂.Tau → SPar}
    {M : Mult.DSModel V P} {M' : Mult.DSModel V' P'} (hM : SameModel M M') (v' : M'.Vec) : ∃ v : M.Vec, SameVec v v' := by
  obtain ⟨hn, hL⟩ := lieAt_rank_heq hR hH hT he hV
  exact exists_sameVec_flat hT hn hL hM.H hM.nacg hM.ips hM.σ hM.fr v'

theorem place_geo {R R' : Ranks} {H : Host R} {H' : Host R'} (hR : R = R') (hH : HEq H H') :
    PlE H = PlE H' ∧ ∀ (P : PlE H) (P' : PlE H'), HEq P P' → (IsSplitPl H P ↔ IsSplitPl H' P') ∧
      Nat.card (kP P) = Nat.card (kP P') ∧
      (∀ (χ : Formalism.L2.Host.HChar H.E) (χ' : Formalism.L2.Host.HChar H'.E), HEq χ χ' → χ.val P = χ'.val P') := by
  subst hR; subst hH
  refine ⟨rfl, fun P P' hP => ?_⟩
  subst hP
  exact ⟨Iff.rfl, rfl, fun _ _ h => by subst h; rfl⟩

private theorem record_heq_1 {R R' : Ranks} {H : Host R} {H' : Host R'} (a1 : R = R') (a2 : HEq H H')
    {PlG PlG' : Fin 2 → Type} (nPlG : HEq PlG PlG') {Tw Tw' : Type} (xTw : Tw = Tw')
    {O : Tw → Type} {O' : Tw' → Type} {crO : ∀ i, CommRing (O i)} {crO' : ∀ i, CommRing (O' i)} (xO : HEq O O') (xcrO : HEq crO crO')
    {Fm : Tw → ℕ → Bool → Type} {Fm' : Tw' → ℕ → Bool → Type}
    {acgFm : ∀ i j b, AddCommGroup (Fm i j b)} {acgFm' : ∀ i j b, AddCommGroup (Fm' i j b)}
    {modFmK : letI := crO; letI := acgFm; ∀ i j b, Module (FractionRing (O i)) (Fm i j b)}
    {modFmK' : letI := crO'; letI := acgFm'; ∀ i j b, Module (FractionRing (O' i)) (Fm' i j b)}
    {modFmO : letI := crO; letI := acgFm; ∀ i j b, Module (O i) (Fm i j b)}
    {modFmO' : letI := crO'; letI := acgFm'; ∀ i j b, Module (O' i) (Fm' i j b)}
    (yFm : HEq Fm Fm') (yacgFm : HEq acgFm acgFm') (ymodFmK : HEq modFmK modFmK') (ymodFmO : HEq modFmO modFmO')
    {Bsup : letI := crO; letI := acgFm; letI := modFmO; ∀ i j b, Submodule (O i) (Fm i j b)}
    {Bsup' : letI := crO'; letI := acgFm'; letI := modFmO'; ∀ i j b, Submodule (O' i) (Fm' i j b)} (hB : HEq Bsup Bsup')
    {actG : letI := crO; letI := acgFm; letI := modFmK; ∀ i j b, (∀ kv : (Σ k : Fin 2, PlG k), GL (Fin R.r) (ZMod (H.g kv.1))) →* (Fm i j b ≃ₗ[FractionRing (O i)] Fm i j b)}
    {actG' : letI := crO'; letI := acgFm'; letI := modFmK'; ∀ i j b, (∀ kv : (Σ k : Fin 2, PlG' k), GL (Fin R'.r) (ZMod (H'.g kv.1))) →* (Fm' i j b ≃ₗ[FractionRing (O' i)] Fm' i j b)}
    (yactG : HEq actG actG')
    {hkF : letI := crO; letI := acgFm; letI := modFmK; ∀ i j b, ℕ → PlE H → Module.End (FractionRing (O i)) (Fm i j b)}
    {hkF' : letI := crO'; letI := acgFm'; letI := modFmK'; ∀ i j b, ℕ → PlE H' → Module.End (FractionRing (O' i)) (Fm' i j b)}
    (yhkF : HEq hkF hkF') {i : Tw} {i' : Tw'} (hi : HEq i i') :
    letI := crO; letI := acgFm; letI := modFmK; letI := modFmO; letI := crO'; letI := acgFm'; letI := modFmK'; letI := modFmO'
    ∀ j b (x : Fm i j b) (x' : Fm' i' j b), HEq x x' → (x ∈ Bsup i j b ↔ x' ∈ Bsup' i' j b) ∧
      (∀ (g : ∀ kv : (Σ k : Fin 2, PlG k), GL (Fin R.r) (ZMod (H.g kv.1))) (g' : ∀ kv : (Σ k : Fin 2, PlG' k), GL (Fin R'.r) (ZMod (H'.g kv.1))),
        HEq g g' → HEq (actG i j b g x) (actG' i' j b g' x')) ∧
      ∀ k (P : PlE H) (P' : PlE H'), HEq P P' → HEq (hkF i j b k P x) (hkF' i' j b k P' x') := by
  subst a1; subst a2; subst nPlG; subst xTw; subst xO; subst xcrO
  subst yFm; subst yacgFm; subst ymodFmK; subst ymodFmO; subst hB; subst yactG; subst yhkF; subst hi
  intro j b x x' hx; subst hx
  exact ⟨Iff.rfl, fun g g' h => by subst h; rfl, fun k P P' h => by subst h; rfl⟩

private theorem record_heq_2 {Tw Tw' : Type} (xTw : Tw = Tw')
    {O : Tw → Type} {O' : Tw' → Type} {crO : ∀ i, CommRing (O i)} {crO' : ∀ i, CommRing (O' i)}
    (xO : HEq O O') (xcrO : HEq crO crO') {i : Tw} {i' : Tw'} (hi : HEq i i') :
    letI := crO; letI := crO'
    ∀ (ε : ∀ i, Bool → (FractionRing (O i) →+* ℂ)) (ε' : ∀ i, Bool → (FractionRing (O' i) →+* ℂ)), HEq ε ε' →
      ∀ b a a', HEq a a' → ε i b a = ε' i' b a' := by
  subst xTw; subst xO; subst xcrO; subst hi; intro ε ε' hε b a a' ha; subst hε; subst ha; rfl

private theorem record_heq_3 {R R' : Ranks} {H : Host R} {H' : Host R'} (a1 : R = R') (a2 : HEq H H')
    {Om Om' : Type} {instOm : Field Om} {instOm' : Field Om'}
    {algOm : letI := instOm; Algebra H.E Om} {algOm' : letI := instOm'; Algebra H'.E Om'}
    (nOm : Om = Om') (ninstOm : HEq instOm instOm') (nalgOm : HEq algOm algOm')
    {plOm : letI := instOm; letI := algOm; Formalism.GaloisCohomology.Places H.E Om}
    {plOm' : letI := instOm'; letI := algOm'; Formalism.GaloisCohomology.Places H'.E Om'} (nplOm : HEq plOm plOm')
    {Tw Tw' : Type} (xTw : Tw = Tw')
    {O0 : Tw → Type} {O0' : Tw' → Type} {crO0 : ∀ i, CommRing (O0 i)} {crO0' : ∀ i, CommRing (O0' i)}
    {O : Tw → Type} {O' : Tw' → Type} {crO : ∀ i, CommRing (O i)} {crO' : ∀ i, CommRing (O' i)}
    {algO : letI := crO0; letI := crO; ∀ i, Algebra (O0 i) (O i)} {algO' : letI := crO0'; letI := crO'; ∀ i, Algebra (O0' i) (O' i)}
    (xO0 : HEq O0 O0') (xcrO0 : HEq crO0 crO0') (xO : HEq O O') (xcrO : HEq crO crO') (xalgO : HEq algO algO')
    {S0 : Tw → Finset (PlE H)} {S0' : Tw' → Finset (PlE H')} (xS0 : HEq S0 S0')
    {delta : letI := instOm; letI := algOm; letI := crO0; ∀ i, Formalism.ConjugateSelfDual.G H.E Om →* (O0 i)ˣ}
    {delta' : letI := instOm'; letI := algOm'; letI := crO0'; ∀ i, Formalism.ConjugateSelfDual.G H'.E Om' →* (O0' i)ˣ}
    (hd : HEq delta delta') {i : Tw} {i' : Tw'} (hi : HEq i i') :
    letI := instOm; letI := algOm; letI := crO0; letI := crO; letI := algO
    letI := instOm'; letI := algOm'; letI := crO0'; letI := crO'; letI := algO'
    ∀ (P : PlE H) (P' : PlE H'), HEq P P' → (P ∈ S0 i ↔ P' ∈ S0' i') ∧
      ∀ σ' : Formalism.ConjugateSelfDual.G H'.E Om', IsFrob (F := H'.E) (plOm'.1 P') (normV P') σ' →
        ∃ σ : Formalism.ConjugateSelfDual.G H.E Om, IsFrob (F := H.E) (plOm.1 P) (normV P) σ ∧ ∀ b : Bool,
          HEq (algebraMap (O i) (FractionRing (O i)) (algebraMap (O0 i) (O i) ((if b then delta i σ else (delta i σ)⁻¹ : (O0 i)ˣ) : O0 i)))
            (algebraMap (O' i') (FractionRing (O' i')) (algebraMap (O0' i') (O' i') ((if b then delta' i' σ' else (delta' i' σ')⁻¹ : (O0' i')ˣ) : O0' i'))) := by
  subst a1; subst a2; subst nOm; subst ninstOm; subst nalgOm; subst nplOm
  subst xTw; subst xO0; subst xcrO0; subst xO; subst xcrO; subst xalgO; subst xS0; subst hd; subst hi
  intro P P' hP; subst hP; exact ⟨Iff.rfl, fun σ hσ => ⟨σ, hσ, fun _ => HEq.rfl⟩⟩

theorem record_heq {D D' : D7} {N : NData D.R D.host D.what₂} {N' : NData D'.R D'.host D'.what₂}
    {X : NTw D.R D.host D.what₂ D.LL0 N} {X' : NTw D'.R D'.host D'.what₂ D'.LL0 N'}
    {Y : NExp D.R D.host D.what₂ D.LL0 N X} {Y' : NExp D'.R D'.host D'.what₂ D'.LL0 N' X'}
    (h1 : GlobalTheory.TwistChoice.SameGalois N N') (h2 : GlobalTheory.TwistChoice.TwistDataAgreeAcrossCoefficients X X') (h3 : GlobalTheory.TwistChoice.SameForms Y Y')
    (hB : HEq Y.Bsup Y'.Bsup) (hd : HEq X.delta X'.delta) {i : X.Tw} {i' : X'.Tw} (hi : HEq i i') :
    (∀ j b (x : Y.Fm i j b) (x' : Y'.Fm i' j b), HEq x x' → (x ∈ Y.Bsup i j b ↔ x' ∈ Y'.Bsup i' j b) ∧
      (∀ g g', HEq g g' → HEq (Y.actG i j b g x) (Y'.actG i' j b g' x')) ∧
      ∀ k P P', HEq P P' → HEq (Y.hkF i j b k P x) (Y'.hkF i' j b k P' x')) ∧
    (∀ (ε : ∀ i, Bool → (FractionRing (X.O i) →+* ℂ)) (ε' : ∀ i, Bool → (FractionRing (X'.O i) →+* ℂ)), HEq ε ε' →
      ∀ b a a', HEq a a' → ε i b a = ε' i' b a') ∧
    ∀ (P : PlE D.host) (P' : PlE D'.host), HEq P P' → (P ∈ X.S0 i ↔ P' ∈ X'.S0 i') ∧
      ∀ σ' : Formalism.ConjugateSelfDual.G D'.host.E N'.Om, IsFrob (F := D'.host.E) (N'.plOm.1 P') (normV P') σ' →
        ∃ σ : Formalism.ConjugateSelfDual.G D.host.E N.Om, IsFrob (F := D.host.E) (N.plOm.1 P) (normV P) σ ∧ ∀ b : Bool,
          HEq (algebraMap (X.O i) (FractionRing (X.O i)) (algebraMap (X.O0 i) (X.O i)
              ((if b then X.delta i σ else (X.delta i σ)⁻¹ : (X.O0 i)ˣ) : X.O0 i)))
            (algebraMap (X'.O i') (FractionRing (X'.O i')) (algebraMap (X'.O0 i') (X'.O i')
              ((if b then X'.delta i' σ' else (X'.delta i' σ')⁻¹ : (X'.O0 i')ˣ) : X'.O0 i'))) := by
  obtain ⟨a1, a2, -, nOm, ninstOm, nalgOm, nplOm, nPlG⟩ := h1
  have xTw := eq_of_heq h2.Tw
  exact ⟨record_heq_1 a1 a2 nPlG xTw h2.O h2.crO h3.Fm h3.acgFm h3.modFmK h3.modFmO hB h3.actG h3.hkF hi,
    record_heq_2 xTw h2.O h2.crO hi,
    record_heq_3 a1 a2 (eq_of_heq nOm) ninstOm nalgOm nplOm xTw h2.O0 h2.crO0 h2.O h2.crO h2.algO h2.S0 hd hi⟩

section Ext

variable {LL LL' Ks Ks' WL WL' G G' : Type} [Field LL] [Field LL'] [NumberField LL']
  [Field Ks] [NumberField Ks] [Algebra Ks LL] [Field Ks'] [NumberField Ks'] [Algebra Ks' LL']
  [AddCommGroup WL] [Module LL WL] [Module Ks WL] [Module (𝓞 Ks) WL] [IsScalarTower (𝓞 Ks) Ks WL] [IsScalarTower Ks LL WL]
  [AddCommGroup WL'] [Module LL' WL'] [Module Ks' WL'] [Module (𝓞 Ks') WL'] [IsScalarTower (𝓞 Ks') Ks' WL']
  [IsScalarTower Ks' LL' WL']
  {W : (LL →+* ℂ) → Type} [∀ σ, NormedAddCommGroup (W σ)] [∀ σ, InnerProductSpace ℂ (W σ)]
  {W' : (LL' →+* ℂ) → Type} [∀ σ, NormedAddCommGroup (W' σ)] [∀ σ, InnerProductSpace ℂ (W' σ)]
  [Group G] [Group G']
  {ι : LL →+* LL'} {eK : Ks ≃+* Ks'} {γ : G ≃* G'} {A : Arith.FormsL LL Ks WL W G} {A' : Arith.FormsL LL' Ks' WL' W' G'}

end Ext

end GlobalTheory.TwInputs.Move.Forms

end
