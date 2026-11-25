module

public import Formalism.HermitianCurvature.StatementB
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth
public import Formalism.SharedLemmas.HpkSq

@[expose] public section

open Matrix

noncomputable section

namespace PI.MirrorSection₂

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C2

section Grp

variable {k r : ℕ}

theorem hpk_sq (k r : ℕ) : Hpk k r * Hpk k r = 1 := by
  first
  | exact _root_.Formalism.SharedLemmas.upq_hpk_mul_self
  | (apply _root_.Formalism.SharedLemmas.upq_hpk_mul_self <;> assumption)

theorem uh_inv {a : B.Mat k r} (ha : a ∈ UH (Hpk k r)) :
    a * a⁻¹ = 1 ∧ a⁻¹ * a = 1 ∧ a⁻¹ ∈ UH (Hpk k r) := by
  have ha' : aᴴ * Hpk k r * a = Hpk k r := ha
  have hl : (Hpk k r * aᴴ * Hpk k r) * a = 1 := by
    calc Hpk k r * aᴴ * Hpk k r * a = Hpk k r * (aᴴ * Hpk k r * a) := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [ha', hpk_sq]
  have hinv : a⁻¹ = Hpk k r * aᴴ * Hpk k r := Matrix.inv_eq_left_inv hl
  have h1 : a⁻¹ * a = 1 := by rw [hinv]; exact hl
  have h2 : a * a⁻¹ = 1 := Matrix.mul_nonsing_inv a (Matrix.isUnit_det_of_left_inverse hl)
  refine ⟨h2, h1, ?_⟩
  show (a⁻¹)ᴴ * Hpk k r * a⁻¹ = Hpk k r
  calc (a⁻¹)ᴴ * Hpk k r * a⁻¹ = (a⁻¹)ᴴ * (aᴴ * Hpk k r * a) * a⁻¹ := by rw [ha']
    _ = (a * a⁻¹)ᴴ * Hpk k r * (a * a⁻¹) := by simp only [conjTranspose_mul, Matrix.mul_assoc]
    _ = Hpk k r := by rw [h2]; simp

theorem col_eq (g : B.Mat k r) (j : Fin (2 * r + k + 1)) : g *ᵥ bvec j = fun i => g i j := by
  funext i
  simp [bvec, Matrix.mulVec, dotProduct, Pi.single_apply]

def lowS (k r a : ℕ) : Submodule ℂ (Fin (2 * r + k + 1) → ℂ) where
  carrier := {y | ∀ i : Fin (2 * r + k + 1), a ≤ i.val → y i = 0}
  add_mem' := by
    intro x y hx hy i hi
    simp [hx i hi, hy i hi]
  zero_mem' := by
    intro i _
    rfl
  smul_mem' := by
    intro c x hx i hi
    simp [hx i hi]

theorem maps_low {n : B.Mat k r} (hn : ∀ (a : Fin r) (i : Fin (2 * r + k + 1)), a.val ≤ i.val →
      n i (eI k r a) = if i = eI k r a then 1 else 0) {a : ℕ} (har : a ≤ r) :
    ∀ y ∈ lowS k r a, n *ᵥ y ∈ lowS k r a := by
  intro y hy i hi
  simp only [Matrix.mulVec, dotProduct]
  apply Finset.sum_eq_zero
  intro l _
  by_cases hl : a ≤ l.val
  · rw [hy l hl, mul_zero]
  · have hlr : l.val < r := by omega
    have hle : (eI k r ⟨l.val, hlr⟩) = l := Fin.ext rfl
    have := hn ⟨l.val, hlr⟩ i (by simp; omega)
    rw [hle] at this
    rw [this, if_neg (by intro h; rw [h] at hi; omega), zero_mul]

theorem onto_low {g : B.Mat k r} (hg : g⁻¹ * g = 1) {a : ℕ} (hmaps : ∀ y ∈ lowS k r a, g *ᵥ y ∈ lowS k r a) :
    ∀ y ∈ lowS k r a, ∃ x ∈ lowS k r a, g *ᵥ x = y := by
  let f : lowS k r a →ₗ[ℂ] lowS k r a := (Matrix.mulVecLin g).restrict hmaps
  have hinj : Function.Injective f := by
    intro x x' hxx
    have h1 : g *ᵥ (x : Fin (2 * r + k + 1) → ℂ) = g *ᵥ x' := congrArg Subtype.val hxx
    have h2 := congrArg (fun v => g⁻¹ *ᵥ v) h1
    simp only [Matrix.mulVec_mulVec, hg, Matrix.one_mulVec] at h2
    exact Subtype.ext h2
  have hsurj := LinearMap.injective_iff_surjective.mp hinj
  intro y hy
  obtain ⟨x, hx⟩ := hsurj ⟨y, hy⟩
  exact ⟨x.1, x.2, congrArg Subtype.val hx⟩

theorem n_inv {n : B.Mat k r} (hn : n ∈ Nset k r) : n⁻¹ ∈ Nset k r := by
  have hu := uh_inv hn.1
  have hC1 := hn.2.1
  refine ⟨hu.2.2, ?_, ?_⟩
  · intro a i hai
    have hmaps := maps_low hC1 (a := a.val) a.isLt.le
    have hy : bvec (eI k r a) - n *ᵥ bvec (eI k r a) ∈ lowS k r a.val := by
      intro l hl
      rw [col_eq]
      simp only [Pi.sub_apply]
      rw [hC1 a l hl]
      simp [bvec, Pi.single_apply]
    obtain ⟨x, hx, hgx⟩ := onto_low hu.2.1 hmaps _ hy
    have hx2 : n *ᵥ (x + bvec (eI k r a)) = bvec (eI k r a) := by
      rw [Matrix.mulVec_add, hgx]
      abel
    have hx3 : n⁻¹ *ᵥ bvec (eI k r a) = x + bvec (eI k r a) := by
      rw [← hx2, Matrix.mulVec_mulVec, hu.2.1, Matrix.one_mulVec, hx2]
    have e := congrFun hx3 i
    rw [col_eq] at e
    simp only at e
    rw [e]
    simp only [Pi.add_apply]
    rw [hx i hai, zero_add]
    simp [bvec, Pi.single_apply]
  · intro i j hj1 hj2 hi
    have hmaps := maps_low hC1 (a := r) le_rfl
    have hy : bvec j - n *ᵥ bvec j ∈ lowS k r r := by
      intro l hl
      rw [col_eq]
      simp only [Pi.sub_apply]
      rw [hn.2.2 l j hj1 hj2 hl]
      simp [bvec, Pi.single_apply]
    obtain ⟨x, hx, hgx⟩ := onto_low hu.2.1 hmaps _ hy
    have hx2 : n *ᵥ (x + bvec j) = bvec j := by
      rw [Matrix.mulVec_add, hgx]
      abel
    have hx3 : n⁻¹ *ᵥ bvec j = x + bvec j := by
      rw [← hx2, Matrix.mulVec_mulVec, hu.2.1, Matrix.one_mulVec, hx2]
    have e := congrFun hx3 i
    rw [col_eq] at e
    simp only at e
    rw [e]
    simp only [Pi.add_apply]
    rw [hx i hi, zero_add]
    simp [bvec, Pi.single_apply]

theorem uw_inv {z : Fin (2 * r + k + 1) → ℂ} {h : B.Mat k r} (hh : h ∈ UWset k r z) : h⁻¹ ∈ UWset k r z := by
  have hu := uh_inv hh.1
  have back : ∀ v, h *ᵥ v = v → h⁻¹ *ᵥ v = v := by
    intro v hv
    calc h⁻¹ *ᵥ v = h⁻¹ *ᵥ (h *ᵥ v) := by rw [hv]
      _ = v := by rw [Matrix.mulVec_mulVec, hu.2.1, Matrix.one_mulVec]
  exact ⟨hu.2.2, fun a => ⟨back _ (hh.2.1 a).1, back _ (hh.2.1 a).2⟩, back _ hh.2.2⟩

end Grp

end PI.MirrorSection₂
