module

public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.FiniteEtaleSurjectiveOfPullback
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsSncModel
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsFinsetOfMemNhds
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LatRestrictComapSpan
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB

open AlgebraicGeometry CategoryTheory NumberField Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap)

section Relations

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Y : Model Xo c β} {S S' S'' : Finset ℕ}
  {Ω Ω' Ω'' : Type} [Field Ω] [Field Ω'] [Field Ω''] {K K' K'' : Type} [Fintype K] [Fintype K'] [Fintype K'']
  {J : K → Type} {J' : K' → Type} {J'' : K'' → Type} {x : (Σ k, J k) → Ω} {x' : (Σ k, J' k) → Ω'}
  {x'' : (Σ k, J'' k) → Ω''}

def HodgeOver (A' : HodgeCpt Y S' x') (A : HodgeCpt Y S x) (h : A'.X ⟶ A.X) (i : Ω →+* Ω') (j : A.Li →+ A'.Li) :
    Prop :=
  GlobalTheory.CompanionTheory.Ar.Dominates A'.ξ A.ξ h i ∧ A'.f = h ≫ A.f ∧ A'.cst = i.comp A.cst ∧ IsExtOver i j ∧
    ∀ w, (A'.M.pt (j w)).left ≫ A'.m.φ = spMap (dualMap i) ≫ (A.M.pt w).left ≫ A.m.φ

abbrev WBases (A : HodgeCpt Y S x) : Type := ∀ τ : CMType H, Module.Basis (Fin D.p) Ω (A.Vgen (.inl τ))

abbrev OmBases (A : HodgeCpt Y S x) : Type :=
  ∀ τ : CMType H, Module.Basis (Fin D.q) Ω (Module.Dual Ω (A.Vgen (.inr τ)))

def BasesOver {A' : HodgeCpt Y S' x'} {A : HodgeCpt Y S x} (i : Ω →+* Ω') (j : A.Li →+ A'.Li)
    (bW' : WBases A') (bO' : OmBases A') (bW : WBases A) (bO : OmBases A) : Prop :=
  (∀ τ a, (bW' τ a : A'.Li) = j (bW τ a)) ∧
    ∀ τ a (v : A.Vgen (.inr τ)) (v' : A'.Vgen (.inr τ)), (v' : A'.Li) = j v → bO' τ a v' = i (bO τ a v)

def HasSncBoundary [CharZero Ω] [∀ k, Fintype (J k)] (A : HodgeCpt Y S x) (n : ℕ) : Prop :=
  ∃ bd : Ideal (MRing J), Cmp.IsSncModel x n bd ∧
    ∀ (z : Spec (CommRingCat.of ℂ) ⟶ A.X) w, CoordsAt A.ξ x z w → (w ∈ mcPts bd ↔ ¬ A.Interior z)

variable {ι : K → Type} [∀ k, Fintype (ι k)] {Φ : Type} [Field Φ] {y : (Σ k, ι k) → Φ}
  {M : FlagModel y (CMType H) (D.p + D.q) D.p} {𝔐 : HodgeCpt Y S M.x}

def FlagTie.IsTotal (tie : FlagTie M 𝔐) (𝔐' : HodgeCpt Y S y) (Fl : 𝔐'.Flag)
    (xdeg : CMType H × Fin (D.p + D.q) → K → ℤ) (e : CMType H × Fin (D.p + D.q) → Φ) : Prop :=
  (∃ (pr : 𝔐'.X ⟶ 𝔐.X) (j : 𝔐.Li →+ 𝔐'.Li), HodgeOver 𝔐' 𝔐 pr (algebraMap M.Ω Φ) j ∧ 𝔐'.R = 𝔐.R ∧
    (∀ s, 𝔐'.V s = (𝔐.V s).pull 𝔐'.ξ pr j) ∧
    (∀ τ (k : Fin D.p), Fl.b (.inl τ) k = colFrame (fun a => j (tie.eW τ a)) (wBlock (M.g τ)) k) ∧
    ∀ τ (v : Fin D.q → 𝔐.Vgen (.inr τ)), (∀ a b, tie.eO τ a (v b) = if a = b then 1 else 0) →
      ∀ k : Fin D.q, Fl.b (.inr τ) k = colFrame (fun a => j (v a)) (omBlock (M.g τ))ᵀ⁻¹ k.rev) ∧
  Fl.RootLines xdeg e ∧ (∀ τ i, M.dy (τ, i) = -∑ k ∈ Finset.Iic i, xdeg (τ, k)) ∧
  ∀ τ i, (∏ k ∈ Finset.Iic i, e (τ, k)) * detFac D.p i (M.g τ) *
    (M.blk (τ, i)).elim (algebraMap M.Ω Φ (M.lam (τ, i))) (fun _ => 1) = 1

end Relations

def BaseMetric.IsConj {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Φ : Type} [Field Φ]
    {y : (Σ k, ι k) → Φ} {Ψ : Type} {N j : ℕ} {M : FlagModel y Ψ N j} {n : ℕ} (BM : BaseMetric M n) : Prop :=
  (∀ x x', SameOrbit (BM.Rb.lift x' x') (fun q => starRingEnd ℂ (BM.Rb.lift x x q)) →
    (x' ∈ ReciprocityTheory.AnForm.P.bdry BM.s ↔ x ∈ ReciprocityTheory.AnForm.P.bdry BM.s) ∧
      ReciprocityTheory.AnForm.P.rW BM.L BM.s x' = ReciprocityTheory.AnForm.P.rW BM.L BM.s x) ∧
  ∀ p, ∀ z ∈ mcPts (mCoordIdeal y), ∀ x, x ∉ ReciprocityTheory.AnForm.P.bdry BM.s →
    SameOrbit (basePart M.blk z) (BM.Rb.lift x x) → (BM.hom p).h (fun q => starRingEnd ℂ (z q)) = (BM.hom p).h z

def FlagModelExists : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l)
    (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S : Finset ℕ) (Ω : Type) [Field Ω] [CharZero Ω]
    (K₀ : Type) [Fintype K₀] (J₀ : K₀ → Type) [∀ k, Fintype (J₀ k)] (x₀ : (Σ k, J₀ k) → Ω) (𝔐 : HodgeCpt Y S x₀)
    (n d : ℕ) (bW : WBases 𝔐) (bO : OmBases 𝔐), IsArithVar (mCoordIdeal x₀) (n + 1) → 𝔐.IsCover d →
    ∃ (K : Type) (_ : Fintype K) (ι : K → Type) (_ : ∀ k, Fintype (ι k)) (Φ : Type) (_ : Field Φ)
      (y : (Σ k, ι k) → Φ) (M : FlagModel y (CMType H) (D.p + D.q) D.p) (𝔐₁ : HodgeCpt Y S M.x) (tie : FlagTie M 𝔐₁)
      (κ : K₀ → NonPluckerBlocks M.blk) (v : (Σ k, J₀ k) → Σ k, baseIdx ι M.blk k) (φ : Ω →+* M.Ω) (π : 𝔐₁.X ⟶ 𝔐.X)
      (j : 𝔐.Li →+ 𝔐₁.Li) (𝔐' : HodgeCpt Y S y) (Fl : 𝔐'.Flag) (xdeg : CMType H × Fin (D.p + D.q) → K → ℤ)
      (e : CMType H × Fin (D.p + D.q) → Φ),
      (IsBlockMap κ v ∧ (∀ q, M.x (v q) = φ (x₀ q)) ∧ Function.Bijective φ ∧ IsIso π ∧ HodgeOver 𝔐₁ 𝔐 π φ j ∧
        𝔐₁.R = 𝔐.R ∧ BasesOver φ j tie.eW tie.eO bW bO) ∧
      (𝔐₁.IsCover d ∧ IsArithVar (mCoordIdeal M.x) (n + 1) ∧ ∀ m, HasSncBoundary 𝔐 m → HasSncBoundary 𝔐₁ m) ∧
      IsArithVar (mCoordIdeal y) (n + Fintype.card (CMType H) * (D.p.choose 2 + D.q.choose 2) + 1) ∧
      tie.IsTotal 𝔐' Fl xdeg e ∧ Fl.deg = d

def BaseMetricExists : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l)
    (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S : Finset ℕ)
    (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Φ : Type) [Field Φ] (y : (Σ k, ι k) → Φ)
    (M : FlagModel y (CMType H) (D.p + D.q) D.p) (𝔐 : HodgeCpt Y S M.x) (tie : FlagTie M 𝔐) (d : ℕ),
    1 ≤ D.p → 1 ≤ D.q → 𝔐.IsCover d → HasSncBoundary 𝔐 (Fintype.card (CMType H) * D.p * D.q) →
    ∃ BM : BaseMetric M (Fintype.card (CMType H) * D.p * D.q), BM.IsHodge tie ∧ BM.IsConj

section Tests

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Y : Model Xo c β} {S S' S'' : Finset ℕ}
  {Ω Ω' Ω'' : Type} [Field Ω] [Field Ω'] [Field Ω''] {K K' K'' : Type} [Fintype K] [Fintype K'] [Fintype K'']
  {J : K → Type} {J' : K' → Type} {J'' : K'' → Type} {x : (Σ k, J k) → Ω} {x' : (Σ k, J' k) → Ω'}
  {x'' : (Σ k, J'' k) → Ω''}

theorem card_mul_eq_dim (D : Datum H) : Fintype.card (CMType H) * D.p * D.q = D.dim := by
  rw [Fintype.card_eq_nat_card, Datum.dim]
  exact congrArg (· * D.p * D.q) (GlobalTheory.PeriodCoord.card_cmType H)

theorem HodgeOver.refl (A : HodgeCpt Y S x) : HodgeOver A A (𝟙 _) (RingHom.id Ω) (AddMonoidHom.id _) := by
  have e : dualMap (RingHom.id Ω) = RingHom.id _ := RingHom.ext fun a => TrivSqZeroExt.inl_fst_add_inr_snd_eq a
  refine ⟨?_, (Category.id_comp _).symm, rfl, ⟨fun _ _ => rfl, fun _ _ h => h⟩, fun w => ?_⟩
  · show A.ξ ≫ 𝟙 _ = Spec.map (𝟙 _) ≫ A.ξ
    rw [Spec.map_id, Category.id_comp, Category.comp_id]
  · rw [e]
    show _ = Spec.map (𝟙 _) ≫ _
    rw [Spec.map_id, Category.id_comp]
    rfl

theorem HodgeOver.trans {A'' : HodgeCpt Y S'' x''} {A' : HodgeCpt Y S' x'} {A : HodgeCpt Y S x} {h' : A''.X ⟶ A'.X}
    {h : A'.X ⟶ A.X} {i' : Ω' →+* Ω''} {i : Ω →+* Ω'} {j' : A'.Li →+ A''.Li} {j : A.Li →+ A'.Li}
    (a : HodgeOver A'' A' h' i' j') (b : HodgeOver A' A h i j) :
    HodgeOver A'' A (h' ≫ h) (i'.comp i) (j'.comp j) := by
  have e : dualMap (i'.comp i) = (dualMap i').comp (dualMap i) := RingHom.ext fun a => by
    ext <;> simp [dualMap]
  refine ⟨?_, by rw [a.2.1, b.2.1, Category.assoc], by rw [a.2.2.1, b.2.2.1, RingHom.comp_assoc],
    ⟨fun t w => ?_, fun n v hv => a.2.2.2.1.2 n _ (b.2.2.2.1.2 n v hv)⟩, fun w => ?_⟩
  · show _ = Spec.map (CommRingCat.ofHom i ≫ CommRingCat.ofHom i') ≫ _
    rw [← Category.assoc, a.1, Category.assoc, b.1, Spec.map_comp, Category.assoc]
  · show j' (j (t • w)) = i' (i t) • j' (j w)
    rw [b.2.2.2.1.1, a.2.2.2.1.1]
  · show (A''.M.pt (j' (j w))).left ≫ _ = _
    rw [a.2.2.2.2, b.2.2.2.2, e]
    show _ = Spec.map (CommRingCat.ofHom (dualMap i) ≫ CommRingCat.ofHom (dualMap i')) ≫ _
    rw [Spec.map_comp, Category.assoc]

variable {A' : HodgeCpt Y S' x'} {A : HodgeCpt Y S x} {h : A'.X ⟶ A.X} {i : Ω →+* Ω'} {j : A.Li →+ A'.Li}

theorem HodgeOver.map_act (a : HodgeOver A' A h i j) (t : 𝓞 E) (w : A.Li) : j (A.ρ t w) = A'.ρ t (j w) := by
  refine A'.M.inj (Over.OverMorphism.ext (A'.m.cart.1.hom_ext ?_ ((Over.w _).trans (Over.w _).symm)))
  have h1 := a.2.2.2.2 (A.ρ t w)
  rw [A.act t w, Over.comp_left, Category.assoc, A.m.act] at h1
  refine h1.trans ?_
  rw [A'.act t (j w), Over.comp_left, Category.assoc, A'.m.act, ← Category.assoc (A'.M.pt (j w)).left]
  have h2 := a.2.2.2.2 w
  simp only [SABMap.φ] at h2
  rw [h2, Category.assoc, Category.assoc]

theorem HodgeOver.map_Vgen (a : HodgeOver A' A h i j) (s : CMType H ⊕ CMType H) {w : A.Li} (hw : w ∈ A.Vgen s) :
    j w ∈ A'.Vgen s := by
  refine (Submodule.mem_iInf _).2 fun t => ?_
  have h1 : A.ρ t w - A.emb s t • w = 0 := (Submodule.mem_iInf _).1 hw t
  show A'.ρ t (j w) - A'.emb s t • j w = 0
  have e : A'.emb s t = i (A.emb s t) := by
    show A'.cst _ = i (A.cst _)
    rw [a.2.2.1]; rfl
  rw [← a.map_act, e, ← a.2.2.2.1.1, ← map_sub, h1, map_zero]

theorem nonempty_basis_Vgen (A : HodgeCpt Y S x) (s : CMType H ⊕ CMType H) :
    Nonempty (Module.Basis (Fin (labelRk D s)) Ω (A.Vgen s)) := by
  obtain ⟨U, hU, b, hb, hf⟩ := (Lat.restrict_isVBOn _ _ _ _ _ _ _ _ (A.vb s)).1 (CptModel.self A.ξ) trivial
  exact ⟨Module.Basis.mk (hf _ trivial hU).1 hb.ge⟩

theorem nonempty_bases (A : HodgeCpt Y S x) : Nonempty (WBases A) ∧ Nonempty (OmBases A) :=
  ⟨⟨fun τ => (nonempty_basis_Vgen A (.inl τ)).some⟩, ⟨fun τ => (nonempty_basis_Vgen A (.inr τ)).some.dualBasis⟩⟩

theorem BasesOver.refl (bW : WBases A) (bO : OmBases A) :
    BasesOver (RingHom.id Ω) (AddMonoidHom.id _) bW bO bW bO :=
  ⟨fun _ _ => rfl, fun τ a v v' e => by rw [show v' = v from Subtype.ext e]; rfl⟩

theorem colFrame_dual {V : Type} [AddCommGroup V] [Module Ω V] {r : ℕ} (φ : Fin r → Module.Dual Ω V) (v : Fin r → V)
    (hv : ∀ a b, φ a (v b) = if a = b then 1 else 0) (g : Matrix (Fin r) (Fin r) Ω) (hg : IsUnit g.det) (k m : Fin r) :
    colFrame φ g k (colFrame v gᵀ⁻¹ m) = if k = m then 1 else 0 := by
  have := congrFun (congrFun (Matrix.mul_nonsing_inv gᵀ (by rwa [det_transpose])) k) m
  rw [Matrix.mul_apply, Matrix.one_apply] at this
  rw [← this]
  simp [colFrame, hv, mul_comm]

variable {ι : K → Type} [∀ k, Fintype (ι k)] {Φ : Type} [Field Φ] {y : (Σ k, ι k) → Φ}

theorem conj_mem_mcPts {P : Ideal (MRing ι)} {z : (Σ k, ι k) → ℂ} (hz : z ∈ mcPts P) :
    (fun q => starRingEnd ℂ (z q)) ∈ mcPts P := by
  refine ⟨fun k => (hz.1 k).imp fun i hi => (map_ne_zero _).2 hi, fun f hf => ?_⟩
  have h := congrArg (starRingEnd ℂ) (hz.2 f hf)
  rw [MvPolynomial.eval_map, MvPolynomial.eval₂_comp_left, map_zero] at h
  rw [MvPolynomial.eval_map, ← h]
  exact congrArg (fun g => MvPolynomial.eval₂ g _ f) (RingHom.ext_int _ _)

variable {Ψ : Type} {N j n : ℕ} {M : FlagModel y Ψ N j}

end Tests

section Chain

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)} {S S' : Finset ℕ}
  {Ω : Type} [Field Ω] [CharZero Ω] {K₀ : Type} [Fintype K₀] {J₀ : K₀ → Type} [∀ k, Fintype (J₀ k)]
  {x₀ : (Σ k, J₀ k) → Ω}

end Chain

end GlobalTheory.CompanionTheory.Ar.PB
