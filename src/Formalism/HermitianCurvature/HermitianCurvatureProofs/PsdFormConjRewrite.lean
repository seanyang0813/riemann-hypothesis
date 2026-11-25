module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelSizesJointMean
public import Formalism.HermitianCurvature.StatementJ
import Mathlib.Tactic.Linter.Style

@[expose] public section

open Finset NumberField Formalism.FourierDecayAlt Formalism.FourierDecayAlt.J
open scoped ComplexOrder ComplexConjugate nonZeroDivisors

namespace Formalism.FourierDecayAlt.P.Jx1

theorem conv {α : Type} (F : Finset α) (k : α → α → ℂ) (h : TB.PSDOn F k) :
    TA.PSDOn F (fun x y => k y x) := by
  unfold TB.PSDOn at h
  rw [Matrix.posSemidef_iff_dotProduct_mulVec] at h
  obtain ⟨hH, hN⟩ := h
  refine ⟨fun x hx y hy => ?_, fun a => ?_⟩
  · have e := hH.apply ⟨y, hy⟩ ⟨x, hx⟩
    simp only [Matrix.of_apply] at e
    show k x y = conj (k y x)
    rw [← e]
    simp
  · have hb := (Complex.le_def.mp (hN (fun i => conj (a i)))).1
    simp only [Complex.zero_re] at hb
    refine le_of_le_of_eq hb ?_
    congr 1
    rw [Finset.sum_comm, ← Finset.sum_coe_sort F]
    simp only [dotProduct, Matrix.mulVec, Matrix.of_apply, Pi.star_apply, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← Finset.sum_coe_sort F]
    refine Finset.sum_congr rfl fun j _ => ?_
    simp only [Complex.star_def, Complex.conj_conj]
    ring

private theorem im_quadratic_form_eq_zero_of_hermitian {α : Type} (F : Finset α) (k : α → α → ℂ)
    (hh : ∀ x ∈ F, ∀ y ∈ F, k y x = conj (k x y)) (a : α → ℂ) :
    (∑ x ∈ F, ∑ y ∈ F, conj (a x) * k x y * a y).im = 0 := by
  have h : conj (∑ x ∈ F, ∑ y ∈ F, conj (a x) * k x y * a y) =
      ∑ x ∈ F, ∑ y ∈ F, conj (a x) * k x y * a y := by

    simp only [map_sum, map_mul, Complex.conj_conj]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun u hu => Finset.sum_congr rfl fun v hv => ?_
    rw [← hh v hv u hu]
    ring
  exact Complex.conj_eq_iff_im.mp h

private theorem tb_psdOn_of_ta_psdOn {α : Type} (F : Finset α) (k : α → α → ℂ) (h : TA.PSDOn F k) :
    TB.PSDOn F k := by
  classical
  unfold TB.PSDOn
  rw [Matrix.posSemidef_iff_dotProduct_mulVec]
  refine ⟨?_, fun x => ?_⟩
  · refine Matrix.IsHermitian.ext fun i j => ?_
    simp only [Matrix.of_apply]
    rw [h.1 i i.2 j j.2]
    simp
  · set a : α → ℂ := fun u => if hu : u ∈ F then x ⟨u, hu⟩ else 0 with ha
    have hQ : star x ⬝ᵥ (Matrix.of fun u v : F => k u v).mulVec x =
        ∑ u ∈ F, ∑ v ∈ F, conj (a u) * k u v * a v := by
      rw [← Finset.sum_coe_sort F]
      simp only [dotProduct, Matrix.mulVec, Matrix.of_apply, Pi.star_apply, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← Finset.sum_coe_sort F]
      refine Finset.sum_congr rfl fun j _ => ?_
      simp [ha, mul_assoc]
    rw [hQ, Complex.le_def]
    simp only [Complex.zero_re, Complex.zero_im]
    exact ⟨h.2 a, (im_quadratic_form_eq_zero_of_hermitian F k h.1 a).symm⟩

theorem t_PSDTranspose : PSDTranspose := by
  unfold PSDTranspose
  intro α F k h
  exact tb_psdOn_of_ta_psdOn F _ (conv F k h)

section Agree
variable {α : Type}

theorem psd_form_conj_rewrite (F : Finset α) (k : α → α → ℂ) (a : α → ℂ) :
    (∑ x ∈ F, ∑ y ∈ F, a x * conj (a y) * k x y) =
      ∑ x ∈ F, ∑ y ∈ F, conj ((fun z => conj (a z)) x) * k x y * (fun z => conj (a z)) y := by
  refine Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => ?_
  simp only [Complex.conj_conj]
  ring

theorem psd_kernel_hermitian (F : Finset α) (k : α → α → ℂ) (h : A5.IsPSD F k) :
    ∀ x ∈ F, ∀ y ∈ F, k y x = conj (k x y) := by
  classical
  intro x hx y hy
  set B : (α → ℂ) → (α → ℂ) → ℂ := fun a b => ∑ u ∈ F, ∑ v ∈ F, a u * conj (b v) * k u v with hB
  have hS : ∀ a, (B a a).im = 0 := fun a => (h a).1
  have hexp : ∀ a b, B (a + b) (a + b) = B a a + B b b + (B a b + B b a) := by
    intro a b
    simp only [hB, Pi.add_apply, map_add (f := _), ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
    ring
  have hpol : ∀ a b, (B a b + B b a).im = 0 := by
    intro a b
    have h0 := hS (a + b)
    rw [hexp, Complex.add_im, Complex.add_im, hS a, hS b] at h0
    simpa using h0
  have hsc1 : ∀ (c : ℂ) a b, B (c • a) b = c * B a b := by
    intro c a b
    simp only [hB, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
    ring
  have hsc2 : ∀ (c : ℂ) a b, B a (c • b) = conj c * B a b := by
    intro c a b
    simp only [hB, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
    ring
  have hBe : ∀ p q, p ∈ F → q ∈ F →
      B (fun u => if u = p then 1 else 0) (fun u => if u = q then 1 else 0) = k p q := by
    intro p q hp hq
    simp [hB, apply_ite (starRingEnd ℂ), ite_mul, hp, hq]
  have h1 := hpol (fun u => if u = x then 1 else 0) (fun u => if u = y then 1 else 0)
  have h2 := hpol (fun u => if u = x then 1 else 0) (Complex.I • fun u => if u = y then 1 else 0)
  rw [hsc2, hsc1] at h2
  rw [hBe x y hx hy, hBe y x hy hx] at h1 h2
  apply Complex.ext <;> simp [Complex.mul_im] at h1 h2 ⊢ <;> linarith

theorem t_PSDAgree : PSDAgree := by
  unfold PSDAgree
  intro α F k
  refine ⟨⟨fun h => conv F _ (t_PSDTranspose α F k h), _root_.Formalism.FourierDecayAlt.P.Jx1.tb_psdOn_of_ta_psdOn F k⟩, ⟨fun h => ⟨psd_kernel_hermitian F k h, fun a => ?_⟩, fun h => ?_⟩⟩
  · have h2 := (h (fun z => conj (a z))).2
    refine le_of_le_of_eq h2 ?_
    congr 1
    refine Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun y _ => ?_
    simp only [Complex.conj_conj]
    ring
  · intro a
    rw [psd_form_conj_rewrite F k a]
    exact ⟨_root_.Formalism.FourierDecayAlt.P.Jx1.im_quadratic_form_eq_zero_of_hermitian F k h.1 _, h.2 _⟩

end Agree

theorem t_BoxSumLattice : BoxSumLattice := by
  apply Formalism.FourierDecayAlt.P.Jx2.t_BoxSumLattice

end Formalism.FourierDecayAlt.P.Jx1

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
