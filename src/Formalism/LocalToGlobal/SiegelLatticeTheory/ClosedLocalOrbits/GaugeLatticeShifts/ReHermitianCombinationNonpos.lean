module

import Formalism.LocalToGlobal.SubmoduleMembership
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
public import Lemmata.GeneralBFactThirdForm.Imports
public import Mathlib.LinearAlgebra.LinearIndependent.BaseChange
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Corank

@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf

open NumberField Module

section Quot

variable {E V : Type} [Field E] [NumberField E] [StarRing E] [AddCommGroup V] [Module E V]
  [FiniteDimensional E V] [Module (𝓞 E) V] [IsScalarTower (𝓞 E) E V]

abbrev Xc (W X : Submodule E V) : Submodule E W := X.comap W.subtype

abbrev QW (W X : Submodule E V) : Type := W ⧸ Xc W X

def qForm1 (h : V →ₗ⋆[E] V →ₗ[E] E) (W X : Submodule E V)
    (hR : ∀ x ∈ W, ∀ y ∈ X, h x y = 0) : W →ₗ⋆[E] QW W X →ₗ[E] E where
  toFun w := (Xc W X).liftQ (h.domRestrict₁₂ W W w) (by
    intro y hy
    simp only [LinearMap.mem_ker, LinearMap.domRestrict₁₂_apply]
    exact hR _ w.2 _ hy)
  map_add' a b := by
    apply Submodule.linearMap_qext
    ext y
    simp
  map_smul' c a := by
    apply Submodule.linearMap_qext
    ext y
    simp

def qForm (h : V →ₗ⋆[E] V →ₗ[E] E) (W X : Submodule E V)
    (hR : ∀ x ∈ W, ∀ y ∈ X, h x y = 0) (hL : ∀ x ∈ X, ∀ y ∈ W, h x y = 0) :
    QW W X →ₗ⋆[E] QW W X →ₗ[E] E :=
  (Xc W X).liftQ (qForm1 h W X hR) (by
    intro x hx
    simp only [LinearMap.mem_ker]
    apply Submodule.linearMap_qext
    ext y
    simp only [qForm1, LinearMap.coe_mk, AddHom.coe_mk, LinearMap.coe_comp, Function.comp_apply,
      Submodule.mkQ_apply, Submodule.liftQ_apply, LinearMap.domRestrict₁₂_apply, LinearMap.zero_comp,
      LinearMap.zero_apply]
    exact hL _ hx _ y.2)

theorem qForm_mk (h : V →ₗ⋆[E] V →ₗ[E] E) (W X : Submodule E V)
    (hR : ∀ x ∈ W, ∀ y ∈ X, h x y = 0) (hL : ∀ x ∈ X, ∀ y ∈ W, h x y = 0) (a b : W) :
    qForm h W X hR hL (Submodule.Quotient.mk a) (Submodule.Quotient.mk b) = h a b := rfl

theorem qForm_isSymm (h : V →ₗ⋆[E] V →ₗ[E] E) (hs : h.IsSymm) (W X : Submodule E V)
    (hR : ∀ x ∈ W, ∀ y ∈ X, h x y = 0) (hL : ∀ x ∈ X, ∀ y ∈ W, h x y = 0) :
    (qForm h W X hR hL).IsSymm := by
  refine ⟨fun x y => ?_⟩
  induction x using Submodule.Quotient.induction_on with | H a => ?_
  induction y using Submodule.Quotient.induction_on with | H b => ?_
  rw [qForm_mk, qForm_mk]
  exact hs.eq _ _

theorem mem_of_map_eq {γ : V ≃ₗ[E] V} {U U' : Submodule E V} (hU : U.map (γ : V →ₗ[E] V) = U') (v : V) :
    γ v ∈ U' ↔ v ∈ U := by
  constructor
  · intro hv
    rw [← hU] at hv
    obtain ⟨y, hy, hyv⟩ := hv
    have : y = v := γ.injective hyv
    exact this ▸ hy
  · intro hv
    rw [← hU]
    exact Submodule.mem_map_of_mem hv

def qEquiv (δ : V ≃ₗ[E] V) (W X : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : X.map (δ : V →ₗ[E] V) = X) : QW W X ≃ₗ[E] QW W X :=
  Submodule.Quotient.equiv (Xc W X) (Xc W X) (δ.ofSubmodules W W hW) (by
    ext w
    constructor
    · rintro ⟨y, hy, rfl⟩
      simp only [Submodule.mem_comap, Submodule.subtype_apply] at hy ⊢
      rw [LinearEquiv.coe_coe, LinearEquiv.ofSubmodules_apply]
      exact (mem_of_map_eq hX _).2 hy
    · intro hw
      simp only [Submodule.mem_comap, Submodule.subtype_apply] at hw
      have h1 : δ (δ.symm w) ∈ W := by simpa using w.2
      have h2 : δ (δ.symm w) ∈ X := by simpa using hw
      refine ⟨⟨δ.symm w, (mem_of_map_eq hW _).1 h1⟩, (mem_of_map_eq hX _).1 h2, ?_⟩
      apply Subtype.ext
      simp)

theorem qEquiv_mk (δ : V ≃ₗ[E] V) (W X : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : X.map (δ : V →ₗ[E] V) = X) (w : W) :
    qEquiv δ W X hW hX (Submodule.Quotient.mk w) =
      Submodule.Quotient.mk ⟨δ w, (mem_of_map_eq hW _).2 w.2⟩ := rfl

def qLat (Λ : Submodule (𝓞 E) V) (W X : Submodule E V) : Submodule (𝓞 E) (QW W X) :=
  (Λ.comap ((W.subtype).restrictScalars (𝓞 E))).map ((Xc W X).mkQ.restrictScalars (𝓞 E))

theorem mem_qLat {Λ : Submodule (𝓞 E) V} {W X : Submodule E V} {q : QW W X} :
    q ∈ qLat Λ W X ↔ ∃ w : W, (w : V) ∈ Λ ∧ Submodule.Quotient.mk w = q := by
  simp [qLat]

alias exists_smul_mem := _root_.Bl.general_b_fact_third_form.goal1

theorem qLat_isLattice (Λ : Submodule (𝓞 E) V) [hΛ : Submodule.IsLattice E Λ] (W X : Submodule E V) :
    Submodule.IsLattice E (qLat Λ W X) := by
  apply Submodule.IsLattice.of_fg E
  refine Submodule.FG.map _ ?_
  refine Submodule.fg_of_fg_map_injective ((W.subtype).restrictScalars (𝓞 E)) ?_ ?_
  · exact Subtype.val_injective
  · refine Submodule.FG.of_le hΛ.fg ?_
    intro v hv
    obtain ⟨w, hw, rfl⟩ := hv
    exact hw

end Quot

section Helpers

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem mem_orth_iff_bl {U : Submodule E S.V} {v : S.V} : v ∈ orth S U ↔ ∀ x ∈ U, S.hT x v = 0 := by
  simp [orth, Submodule.mem_iInf, LinearMap.mem_ker]

theorem orth_anti {U U' : Submodule E S.V} (h : U ≤ U') : orth S U' ≤ orth S U := by
  intro v hv
  rw [mem_orth_iff_bl] at hv ⊢
  exact fun x hx => hv x (h hx)

theorem form_span_left {s : Set S.V} {v : S.V} (hs : ∀ x ∈ s, S.hT x v = 0) :
    ∀ x ∈ Submodule.span E s, S.hT x v = 0 := by
  intro x hx
  have hle : Submodule.span E s ≤ LinearMap.ker (S.hT v) := by
    rw [Submodule.span_le]
    intro y hy
    simp only [SetLike.mem_coe, LinearMap.mem_ker]
    exact S.herm.eq_iff.1 (hs y hy)
  exact S.herm.eq_iff.1 (hle hx)

theorem flag_form_zero {T : E} (F : FlagG S r T) : ∀ x ∈ F.Xplus, ∀ v ∈ F.X, S.hT x v = 0 := by
  have hX : ∀ b ∈ F.X, ∀ i, S.hT (F.e i) b = 0 := fun b hb i => by
    have hle : F.X ≤ LinearMap.ker (S.hT (F.e i)) :=
      Submodule.span_le.2 (by rintro _ ⟨j, rfl⟩; exact F.e_iso i j)
    exact hle hb
  have hzX : ∀ b ∈ F.X, S.hT F.z b = 0 := fun b hb => by
    have hle : F.X ≤ LinearMap.ker (S.hT F.z) :=
      Submodule.span_le.2 (by rintro _ ⟨j, rfl⟩; exact S.herm.eq_iff.1 (F.z_orth j))
    exact hle hb
  intro x hx v hv
  obtain ⟨x1, hx1, x2, hx2, rfl⟩ := Submodule.mem_sup.1 hx
  obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 hx2
  have h1 : S.hT x1 v = 0 :=
    form_span_left (s := Set.range F.e) (by rintro _ ⟨i, rfl⟩; exact hX v hv i) x1 hx1
  rw [map_add (f := _), LinearMap.add_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply, h1, hzX v hv]
  simp

theorem orth_map_bl {γ : S.V ≃ₗ[E] S.V} (hγ : ∀ a b, S.hT (γ a) (γ b) = S.hT a b) (U : Submodule E S.V) :
    (orth S U).map (γ : S.V →ₗ[E] S.V) = orth S (U.map (γ : S.V →ₗ[E] S.V)) := by
  ext w
  rw [Submodule.mem_map_equiv, mem_orth_iff_bl, mem_orth_iff_bl]
  constructor
  · rintro h _ ⟨u, hu, rfl⟩
    have := h u hu
    rw [← hγ u (γ.symm w)] at this
    simpa using this
  · intro h u hu
    have := h (γ u) (Submodule.mem_map_of_mem hu)
    rw [← hγ u (γ.symm w)]
    simpa using this

theorem map_eq_of_iff {γ : S.V ≃ₗ[E] S.V} {U : Submodule E S.V} (h : ∀ w, γ w ∈ U ↔ w ∈ U) :
    U.map (γ : S.V →ₗ[E] S.V) = U := by
  ext w
  rw [Submodule.mem_map_equiv]
  rw [← h (γ.symm w)]
  simp

theorem mem_localization_of_mem' {P : Ideal (𝓞 E)} [P.IsPrime] {M : Submodule (𝓞 E) S.V} {x : S.V} (hx : x ∈ M) :
    x ∈ Formalism.HermitianLatticesTheory.localization₂ P M := by
  show ∃ s ∈ P.primeCompl, s • x ∈ M
  exact ⟨1, P.primeCompl.one_mem, by simpa using hx⟩

theorem localization_mono {P : Ideal (𝓞 E)} [P.IsPrime] {M N : Submodule (𝓞 E) S.V} (hMN : M ≤ N) {x : S.V}
    (hx : x ∈ Formalism.HermitianLatticesTheory.localization₂ P M) : x ∈ Formalism.HermitianLatticesTheory.localization₂ P N := by
  obtain ⟨s, hs, h⟩ := hx
  exact ⟨s, hs, hMN h⟩

theorem mem_of_forall_locP {M : Submodule (𝓞 E) S.V} {x : S.V}
    (h : ∀ P : IsDedekindDomain.HeightOneSpectrum (𝓞 E),
      x ∈ (haveI := P.isPrime; Formalism.HermitianLatticesTheory.localization₂ P.asIdeal M)) : x ∈ M := by
  exact Submodule.mem_of_forall_heightOne_exists_smul_mem (NumberField.RingOfIntegers.not_isField E) M x h

end Helpers

section Sig

open Matrix

def cform {n : Type} [Fintype n] (G : Matrix n n ℂ) (x y : n → ℂ) : ℂ := star x ⬝ᵥ (G *ᵥ y)

theorem cT_eq_conjTranspose {m n : Type} (P : Matrix m n ℂ) : Formalism.UG.cT (starRingEnd ℂ) P = Pᴴ := by
  ext i j
  simp [Formalism.UG.cT, Matrix.conjTranspose_apply]

theorem sig_bound {N p q : ℕ} (G : Matrix (Fin N) (Fin N) ℂ) (hG : Formalism.UG.HasSignature G p q)
    {ι : Type} [Fintype ι] (c : ι → Fin N → ℂ) (hc : LinearIndependent ℂ c)
    (hneg : ∀ d : ι → ℂ, (cform G (∑ l, d l • c l) (∑ l, d l • c l)).re ≤ 0) : Fintype.card ι ≤ q := by
  obtain ⟨e, P, hP⟩ := hG
  rw [cT_eq_conjTranspose] at hP
  let Pm : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ := (P : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ)
  let Pinv : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ := ((P⁻¹ : GL (Fin p ⊕ Fin q) ℂ) : Matrix _ _ ℂ)
  have hPP : Pm * Pinv = 1 := by
    simp only [Pm, Pinv]
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  have hPP' : Pinv * Pm = 1 := by
    simp only [Pm, Pinv]
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  let pr : (Fin N → ℂ) →ₗ[ℂ] (Fin p ⊕ Fin q → ℂ) :=
    (Matrix.mulVecLin Pinv).comp (LinearMap.funLeft ℂ ℂ e.symm)
  have hpr : ∀ x, pr x = Pinv *ᵥ (x ∘ e.symm) := fun x => rfl
  have hback : ∀ x, x ∘ e.symm = Pm *ᵥ pr x := fun x => by
    rw [hpr, Matrix.mulVec_mulVec, hPP, Matrix.one_mulVec]
  have hpr_inj : Function.Injective pr := by
    intro x y hxy
    have h1 : x ∘ e.symm = y ∘ e.symm := by rw [hback, hback, hxy]
    funext i
    have := congrFun h1 (e i)
    simpa using this
  have hkey : ∀ x, cform G x x = star (pr x) ⬝ᵥ (Formalism.UG.Jpq p q *ᵥ pr x) := by
    intro x
    have h1 : cform G x x = star (x ∘ e.symm) ⬝ᵥ ((G.reindex e e) *ᵥ (x ∘ e.symm)) := by
      simp only [cform, Matrix.reindex_apply, Matrix.submatrix_mulVec_equiv]
      rw [show (x ∘ e.symm) ∘ e.symm.symm = x by funext i; simp]
      rw [show star (x ∘ e.symm) = star x ∘ e.symm from rfl, dotProduct_comp_equiv_symm]
      congr 1
      funext i
      simp
    rw [h1, hback, ← hP, Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
      Matrix.mulVec_mulVec]
  have hJ : ∀ y : Fin p ⊕ Fin q → ℂ, star y ⬝ᵥ (Formalism.UG.Jpq p q *ᵥ y) =
      ∑ a, star (y (Sum.inl a)) * y (Sum.inl a) - ∑ b, star (y (Sum.inr b)) * y (Sum.inr b) := by
    intro y
    simp only [Formalism.UG.Jpq, dotProduct, Matrix.mulVec, Fintype.sum_sum_type, Matrix.fromBlocks_apply₁₁,
      Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂, Matrix.one_apply,
      Matrix.zero_apply, Matrix.neg_apply, Pi.star_apply]
    simp [Finset.sum_ite_eq, sub_eq_add_neg, Finset.sum_neg_distrib]
  let w : ι → Fin q → ℂ := fun l b => pr (c l) (Sum.inr b)
  have hw : LinearIndependent ℂ w := by
    rw [Fintype.linearIndependent_iff]
    intro d hd
    set x := ∑ l, d l • c l with hx
    have hprx : ∀ s, pr x s = ∑ l, d l * pr (c l) s := by
      intro s

      rw [hx, map_sum]
      simp
    have hinr : ∀ b, pr x (Sum.inr b) = 0 := by
      intro b
      rw [hprx]
      have := congrFun hd b
      simpa [w] using this
    have hre := hneg d
    rw [← hx, hkey, hJ] at hre
    simp only [hinr, star_zero, mul_zero, Finset.sum_const_zero, sub_zero] at hre
    have hsq : ∀ a, star (pr x (Sum.inl a)) * pr x (Sum.inl a) = ((Complex.normSq (pr x (Sum.inl a)) : ℝ) : ℂ) := by
      intro a
      rw [Complex.normSq_eq_conj_mul_self]
      rfl
    simp only [hsq] at hre
    rw [← Complex.ofReal_sum, Complex.ofReal_re] at hre
    have hnn : ∀ a ∈ Finset.univ, 0 ≤ Complex.normSq (pr x (Sum.inl a)) := fun a _ => Complex.normSq_nonneg _
    have hzero := (Finset.sum_eq_zero_iff_of_nonneg hnn).1 (le_antisymm hre (Finset.sum_nonneg hnn))
    have hinl : ∀ a, pr x (Sum.inl a) = 0 := fun a => Complex.normSq_eq_zero.1 (hzero a (Finset.mem_univ _))
    have hx0 : pr x = 0 := by
      funext s
      cases s with
      | inl a => exact hinl a
      | inr b => exact hinr b
    have hx00 : x = 0 := hpr_inj (by rw [hx0, map_zero])
    exact (Fintype.linearIndependent_iff.1 hc) d hx00
  have := hw.fintype_card_le_finrank
  simpa using this

end Sig

section D7

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.Corank

def IotaLift (D : D7) (u u' : D.what₂.Word) : Prop :=
  ∀ (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)) (Λ : Submodule (𝓞 D.host.E) (VS D).V),
    IsRowLat D F0 Λ → ∀ x : Carrier (PD D Λ (lf D F0) u'), ∀ x' ∈ Lrep Λ x.1,
      ∃ l ∈ Lrep Λ (lf D F0), l - x' ∈ NgX Λ (gS D) (lf D F0) x.1

def PosW (D : D7) : Prop :=
  ∀ T' : ℕ, 0 < T' → ∀ F' : FlagG (VS D) D.R.rS (T' : D.host.E), ∀ v ∈ orth (VS D) F'.Xplus, v ∉ F'.X →
    0 < Algebra.trace ℚ D.host.E ((VS D).hT v v)

end D7

section PosWPf

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

theorem form_coord {E : Type} [Field E] [NumberField E] [StarRing E] (S : Formalism.BasicNotions.HSpace E) (τ : E →+* ℂ)
    (hconj : ∀ a : E, τ (star a) = starRingEnd ℂ (τ a)) (a b : S.V) :
    τ (S.hT a b) = cform (S.gram.map τ) (fun i => τ (S.frame.equivFun a i))
      (fun j => τ (S.frame.equivFun b j)) := by
  conv_lhs => rw [← S.frame.sum_equivFun a, ← S.frame.sum_equivFun b]

  simp only [map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply, map_smul, smul_eq_mul,
  map_mul, starRingEnd_apply, hconj]
  simp only [cform, dotProduct, Matrix.mulVec, Matrix.map_apply, Formalism.BasicNotions.HSpace.gram, Pi.star_apply,
    Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
  simp only [Complex.star_def]
  ring

theorem cform_sum {n ι : Type} [Fintype n] [Fintype ι] (G : Matrix n n ℂ) (d : ι → ℂ) (c : ι → n → ℂ) :
    cform G (∑ l, d l • c l) (∑ l, d l • c l) =
      ∑ l, ∑ l', starRingEnd ℂ (d l) * d l' * cform G (c l) (c l') := by
  simp only [cform, star_sum, star_smul, Matrix.mulVec_sum, Matrix.mulVec_smul, sum_dotProduct,
    dotProduct_sum, smul_dotProduct, dotProduct_smul, smul_eq_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun l _ => Finset.sum_congr rfl (fun l' _ => ?_))
  simp only [Complex.star_def]
  ring

theorem re_hermitian_combination_nonpos (a b z : ℂ) (T : ℝ) (hz : z.re ≤ 0) (hT : 0 ≤ T) :
    (starRingEnd ℂ a * a * z + starRingEnd ℂ b * b * (-(T : ℂ))).re ≤ 0 := by
  rw [← Complex.normSq_eq_conj_mul_self, ← Complex.normSq_eq_conj_mul_self]
  simp only [Complex.add_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, Complex.neg_re,
    Complex.neg_im, zero_mul, sub_zero, mul_zero, neg_zero]
  nlinarith [Complex.normSq_nonneg a, Complex.normSq_nonneg b]

theorem posW_holds (D : D7) : PosW D := by
  intro T' hT' F' v hv hvX
  have hconj : ∀ (φ : D.host.E →+* ℂ) (a : D.host.E), φ (star a) = starRingEnd ℂ (φ a) :=
    D.sp.cm.cmUnram.2.1
  set t := (VS D).hT v v with ht
  have hvorth := mem_orth_iff_bl.1 hv
  have hzXp : F'.z ∈ F'.Xplus := Submodule.mem_sup_right (Submodule.mem_span_singleton_self _)
  have heXp : ∀ a, F'.e a ∈ F'.Xplus := fun a => Submodule.mem_sup_left (Submodule.subset_span ⟨a, rfl⟩)
  have hzv : (VS D).hT F'.z v = 0 := hvorth _ hzXp
  have hvz : (VS D).hT v F'.z = 0 := (VS D).herm.eq_iff.1 hzv
  have hev : ∀ a, (VS D).hT (F'.e a) v = 0 := fun a => hvorth _ (heXp a)
  have hve : ∀ a, (VS D).hT v (F'.e a) = 0 := fun a => (VS D).herm.eq_iff.1 (hev a)
  have hze : ∀ a, (VS D).hT F'.z (F'.e a) = 0 := fun a => (VS D).herm.eq_iff.1 (F'.z_orth a)
  have hT0 : (T' : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hT'.ne'
  let m : Fin (D.R.rS + 2) → (VS D).V := Fin.cons v (Fin.cons F'.z F'.e)
  have hm : LinearIndependent D.host.E m := by
    rw [linearIndependent_finCons]
    refine ⟨?_, ?_⟩
    · rw [linearIndependent_finCons]
      refine ⟨F'.e_indep, ?_⟩
      intro hz
      have h0 : (VS D).hT F'.z F'.z = 0 := flag_form_zero F' F'.z hzXp F'.z hz
      rw [F'.z_norm] at h0
      exact hT0 (neg_eq_zero.1 h0)
    · intro hvs
      rw [Fin.range_cons, Submodule.span_insert] at hvs
      obtain ⟨a1, ha1, a2, ha2, hsum⟩ := Submodule.mem_sup.1 hvs
      obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 ha1
      have h1 : (VS D).hT F'.z v = c * (VS D).hT F'.z F'.z := by
        rw [← hsum, map_add (f := _), map_smul, flag_form_zero F' F'.z hzXp a2 ha2, smul_eq_mul, add_zero]
      rw [hzv, F'.z_norm] at h1
      have hc : c = 0 := by
        rcases mul_eq_zero.1 h1.symm with h | h
        · exact h
        · exact absurd (neg_eq_zero.1 h) hT0
      apply hvX
      rw [← hsum, hc, zero_smul, zero_add]
      exact ha2
  have hτ : ∀ τ : D.host.E →+* ℂ, 0 < (τ t).re := by
    intro τ
    by_contra hle'
    have hle : (τ t).re ≤ 0 := not_lt.1 hle'
    letI : Algebra D.host.E ℂ := τ.toAlgebra
    haveI : FaithfulSMul D.host.E ℂ := (faithfulSMul_iff_algebraMap_injective _ _).2 τ.injective
    let c : Fin (D.R.rS + 2) → Fin (VS D).rank → ℂ :=
      fun l => algebraMap D.host.E ℂ ∘ ((VS D).frame.equivFun (m l))
    have hc : LinearIndependent ℂ c := by
      refine linearIndependent_algebraMap_comp_iff.2 ?_
      exact hm.map' (VS D).frame.equivFun.toLinearMap (VS D).frame.equivFun.ker
    have hsig : Formalism.UG.HasSignature ((VS D).gram.map τ) (D.R.k + D.R.rS) (D.R.rS + 1) := by
      have h1 := D.sp.Y_sig 0 τ
      rw [D.sp.baseSpace_signature_eq τ] at h1
      exact h1
    have hneg : ∀ d : Fin (D.R.rS + 2) → ℂ,
        (cform ((VS D).gram.map τ) (∑ l, d l • c l) (∑ l, d l • c l)).re ≤ 0 := by
      intro d
      have hexp : cform ((VS D).gram.map τ) (∑ l, d l • c l) (∑ l, d l • c l) =
          ∑ l, ∑ l', starRingEnd ℂ (d l) * d l' * τ ((VS D).hT (m l) (m l')) := by
        rw [cform_sum]
        refine Finset.sum_congr rfl (fun l _ => Finset.sum_congr rfl (fun l' _ => ?_))
        rw [form_coord (VS D) τ (hconj τ)]
        rfl
      have hexp2 : ∑ l, ∑ l', starRingEnd ℂ (d l) * d l' * τ ((VS D).hT (m l) (m l')) =
          starRingEnd ℂ (d 0) * d 0 * τ t + starRingEnd ℂ (d 1) * d 1 * (-(T' : ℂ)) := by
        simp [Fin.sum_univ_succ, m, hvz, hzv, hve, hev, hze, F'.z_orth, F'.e_iso, F'.z_norm, ht]
      rw [hexp, hexp2]
      exact re_hermitian_combination_nonpos _ _ _ _ hle (Nat.cast_nonneg _)
    have := sig_bound _ hsig c hc hneg
    simp at this
  have key : ((Algebra.trace ℚ D.host.E t : ℚ) : ℂ) = ∑ σ : D.host.E →ₐ[ℚ] ℂ, σ t := by
    rw [← eq_ratCast (algebraMap ℚ ℂ), trace_eq_sum_embeddings (E := ℂ)]
  have key' : ((Algebra.trace ℚ D.host.E t : ℚ) : ℝ) = ∑ σ : D.host.E →ₐ[ℚ] ℂ, (σ t).re := by
    have := congrArg Complex.re key
    rw [Complex.re_sum] at this
    rw [← this]
    simp
  have hpos : 0 < ∑ σ : D.host.E →ₐ[ℚ] ℂ, (σ t).re := by
    let σ0 : D.host.E →ₐ[ℚ] ℂ := (by
      refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
      solve_by_elim* (maxDepth := 2) only [*,
        @_root_.DivisionSemiring.to_moduleIsTorsionFree,
        @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
    exact Finset.sum_pos (fun σ _ => hτ σ.toRingHom) ⟨σ0, Finset.mem_univ _⟩
  exact_mod_cast key' ▸ hpos

end PosWPf

section Final

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.Corank

end Final

end Formalism.L2.SG.Pf
