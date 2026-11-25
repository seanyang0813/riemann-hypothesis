module

public import Formalism.HermitianCurvature.PositionExpansionTopCoefficients
public import Lemmata.HermitianSesquilinear.ConjEqOfNonnegReal
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.Matrix.Order

@[expose] public section

namespace Formalism.FourierDecayAlt.P.GramProductIdentities

open Finset Formalism.FourierDecayAlt.FormPairingAction Formalism.FourierDecayAlt.Wd
open scoped ComplexOrder MatrixOrder Matrix.Norms.L2Operator

section CS

variable {M : Type} [AddCommGroup M] [Module ℂ M]

theorem cs_of_pos (Ξ : F7.Sesq M) (h : ∀ m, 0 ≤ (Ξ m m).re ∧ (Ξ m m).im = 0) (x y : M) :
    ‖Ξ x y‖ ^ 2 ≤ (Ξ x x).re * (Ξ y y).re := by
  first | (apply Bl.HermitianSesquilinear.goal1 <;> assumption)

end CS

theorem exp_le_one_add {x : ℝ} (hx : |x| ≤ 1 / 2) : Real.exp (-2 * |x|) ≤ 1 + x := by
  rcases le_or_gt 0 x with h0 | h0
  · have : Real.exp (-2 * |x|) ≤ 1 := Real.exp_le_one_iff.mpr (by nlinarith [abs_nonneg x])
    linarith
  · have hu : |x| = -x := abs_of_neg h0
    set u := -x with hu'
    have hu0 : 0 ≤ u := by linarith
    have h1 : 1 + 2 * u ≤ Real.exp (2 * u) := by linarith [Real.add_one_le_exp (2 * u)]
    have h2 : Real.exp (-2 * u) * Real.exp (2 * u) = 1 := by rw [← Real.exp_add]; simp
    have h3 : Real.exp (-2 * u) * (1 + 2 * u) ≤ 1 := by
      calc Real.exp (-2 * u) * (1 + 2 * u) ≤ Real.exp (-2 * u) * Real.exp (2 * u) :=
            mul_le_mul_of_nonneg_left h1 (Real.exp_pos _).le
        _ = 1 := h2
    rw [hu]
    nlinarith [mul_nonneg hu0 (by linarith : (0:ℝ) ≤ 1 - 2 * u)]

theorem prod_bounds {ι : Type} (g : ι → ℝ) (ε : ℝ) (hε : ε ≤ 1 / 2) :
    ∀ w : List ι, (∀ l ∈ w, |g l - 1| ≤ ε) →
      Real.exp (-2 * ε * w.length) ≤ (w.map g).prod ∧ (w.map g).prod ≤ Real.exp (ε * w.length) := by
  intro w
  induction w with
  | nil => intro _; simp
  | cons l w ih =>
    intro hw
    obtain ⟨ih1, ih2⟩ := ih fun l' hl' => hw l' (by simp [hl'])
    have hl := hw l (by simp)
    have hx : |g l - 1| ≤ 1 / 2 := le_trans hl hε
    have hlo : Real.exp (-2 * ε) ≤ g l := by
      have := exp_le_one_add hx
      have : Real.exp (-2 * ε) ≤ Real.exp (-2 * |g l - 1|) := Real.exp_le_exp.mpr (by linarith)
      linarith
    have hhi : g l ≤ Real.exp ε := by
      have := Real.add_one_le_exp (g l - 1)
      have : Real.exp (g l - 1) ≤ Real.exp ε := Real.exp_le_exp.mpr (le_trans (le_abs_self _) hl)
      linarith
    simp only [List.map_cons, List.prod_cons, List.length_cons, Nat.cast_add, Nat.cast_one]
    have e1 : Real.exp (-2 * ε * (w.length + 1)) = Real.exp (-2 * ε) * Real.exp (-2 * ε * w.length) := by
      rw [← Real.exp_add]; ring_nf
    have e2 : Real.exp (ε * (w.length + 1)) = Real.exp ε * Real.exp (ε * w.length) := by
      rw [← Real.exp_add]; ring_nf
    rw [e1, e2]
    constructor
    · exact mul_le_mul hlo ih1 (Real.exp_pos _).le (le_trans (Real.exp_pos _).le hlo)
    · exact mul_le_mul hhi ih2 (le_trans (Real.exp_pos _).le ih1) (Real.exp_pos _).le

theorem qProduct : QProduct := by
  intro S _ _ q w Y hq hw
  induction w with
  | nil => simp [qw, hq]
  | cons l w ih =>
    have hl := hw l (by simp)
    have ih' := ih fun l' hl' => hw l' (by simp [hl'])
    simp only [qw, List.map_cons, List.prod_cons]
    rw [← ih']
    cases hp : l.plus
    · simp only [hp] at hl ⊢
      simp only [Bool.false_eq_true, if_false]
      have h2 : l.pt - Y - 1 ≠ 0 := hl
      field_simp
      try ring
    · simp only [hp] at hl ⊢
      simp only [if_true]
      have h2 : Y - l.pt ≠ 0 := hl
      field_simp

theorem lemmaQ : LemmaQ := by
  intro S _ _ q w N dl Y hN hw hdl hpts hq
  have hN' : (4:ℝ) ≤ N := by exact_mod_cast hN
  have hdlpos : 0 < dl := by nlinarith
  set g : Letter ℝ S → ℝ := fun l => if l.plus then 1 + 1 / (Y - l.pt) else 1 + 1 / (l.pt - Y - 1)
    with hg
  have hfac : ∀ l ∈ w, |g l - 1| ≤ 1 / dl := by
    intro l hl
    have h := hpts l hl
    cases hp : l.plus
    · simp only [hp, Bool.false_eq_true, if_false] at h
      simp only [hg, hp, Bool.false_eq_true, if_false, add_sub_cancel_left, abs_div, abs_one]
      have : |l.pt - Y - 1| = |Y - (l.pt - 1)| := by rw [← abs_neg]; ring_nf
      rw [this]
      exact one_div_le_one_div_of_le hdlpos h.2
    · simp only [hp, if_true] at h
      simp only [hg, hp, if_true, add_sub_cancel_left, abs_div, abs_one]
      exact one_div_le_one_div_of_le hdlpos h
  have hreg : ∀ l ∈ w, if l.plus then Y - l.pt ≠ 0 else l.pt - Y - 1 ≠ 0 := by
    intro l hl
    have h := hpts l hl
    cases hp : l.plus
    · simp only [hp, Bool.false_eq_true, if_false] at h ⊢
      intro h0
      have : |Y - (l.pt - 1)| = 0 := by rw [abs_eq_zero]; linarith
      linarith [h.2]
    · simp only [hp, if_true] at h ⊢
      intro h0
      rw [h0, abs_zero] at h
      linarith
  have hprod := qProduct S q w Y hq hreg
  have hε : 1 / dl ≤ 1 / 2 := one_div_le_one_div_of_le (by norm_num) (by nlinarith)
  obtain ⟨hlo, hhi⟩ := prod_bounds g (1 / dl) hε w hfac
  have hlen : (w.length : ℝ) ≤ N := by exact_mod_cast hw
  have hkey : 1 / dl * w.length ≤ 1 / 4 := by
    rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hdlpos]
    nlinarith
  rw [hprod]
  constructor
  · refine le_trans (Real.exp_le_exp.mpr ?_) hlo
    nlinarith
  · refine le_trans hhi (Real.exp_le_exp.mpr ?_)
    linarith

theorem dkStep4 : DKStep4 := by
  intro S q w L hL
  induction L with
  | nil => simp [kapF]
  | cons l L ih =>
    have hl : l.plus = true := hL l (by simp)
    have hL' : ∀ l' ∈ L, l'.plus = true := fun l' h => hL l' (by simp [h])
    have h1 : (L.map fun l' => if l.plus = l'.plus then (1:ℂ)
        else 1 - ((l.pt - l'.pt + (if l.plus then 1 else -1)) ^ 2)⁻¹).prod = 1 := by
      apply List.prod_eq_one
      intro x hx
      simp only [List.mem_map] at hx
      obtain ⟨l', hl', rfl⟩ := hx
      simp [hl, hL' l' hl']
    simp only [kapF, List.map_cons, List.prod_cons]
    rw [h1, ih hL']
    simp only [ypt, hl, if_true]
    ring

end Formalism.FourierDecayAlt.P.GramProductIdentities

