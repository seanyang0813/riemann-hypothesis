module

public import Formalism.SharpRestriction.ElevenLe
public import Formalism.SharpRestriction.GrowthBounds.IsResidueClassZero

@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G Filter

namespace Formalism.MainNotions.AuxBlock8.Pf.G5.Nu

theorem ev_log (c α : ℝ) (hα : 0 < α) : ∀ᶠ x : ℝ in atTop, c * Real.log x ≤ x ^ α := by
  have h := (isLittleO_log_rpow_atTop hα).bound (show (0 : ℝ) < 1 / (|c| + 1) by positivity)
  filter_upwards [h, eventually_gt_atTop 0] with x hx hx0
  have hp := Real.rpow_pos_of_pos hx0 α
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos hp] at hx
  have hc : c * Real.log x ≤ |c| * |Real.log x| := by
    rw [← abs_mul]; exact le_abs_self _
  have h1 : |c| * |Real.log x| ≤ |c| * (1 / (|c| + 1) * x ^ α) :=
    mul_le_mul_of_nonneg_left hx (abs_nonneg c)
  have h3 : |c| / (|c| + 1) ≤ 1 := by
    rw [div_le_one (by positivity)]; linarith
  have h2 : |c| * (1 / (|c| + 1) * x ^ α) = |c| / (|c| + 1) * x ^ α := by ring
  linarith [mul_le_mul_of_nonneg_right h3 hp.le]

theorem ev_pow (c α β : ℝ) (h : α < β) : ∀ᶠ x : ℝ in atTop, c * x ^ α ≤ x ^ β := by
  have ht := (tendsto_rpow_atTop (sub_pos.2 h)).eventually_ge_atTop |c|
  filter_upwards [ht, eventually_gt_atTop 0] with x hx hx0
  have hp := Real.rpow_pos_of_pos hx0 α
  have e : x ^ β = x ^ α * x ^ (β - α) := by
    rw [← Real.rpow_add hx0]; congr 1; ring
  rw [e]
  grind [mul_le_mul_of_nonneg_right (le_abs_self c) hp.le, mul_le_mul_of_nonneg_left hx hp.le]

theorem k_le_x_pow_six {D : D7} (L : SizeData₂ D) (hS : Formalism.MainNotions.SizesAt L) : (D.R.k : ℝ) ≤ L.sc.x ^ (6 : ℝ) := by
  have hK := hS.2.2.1.2
  simp only [Formalism.MainNotions.szTh] at hK
  refine hK.trans (Real.rpow_le_rpow_of_exponent_le L.sc.one_lt_alt.le ?_)
  have h1 := L.sc.eps_lt
  have h2 := L.sc.eps_pos
  linarith

theorem one_le_k (D : D7) : (1 : ℝ) ≤ (D.R.k : ℝ) := by
  have h := D.R.m_add_three_le_k
  exact_mod_cast (show 1 ≤ D.R.k by omega)

theorem xpow_le_exp (x N y : ℝ) (hx : 0 < x) (h : N * Real.log x ≤ y) : x ^ N ≤ Real.exp y := by
  rw [Real.rpow_def_of_pos hx]
  exact Real.exp_le_exp.mpr (by rw [mul_comm]; exact h)

theorem ev_const (c α : ℝ) (hα : 0 < α) : ∀ᶠ x : ℝ in atTop, c ≤ Real.exp (x ^ α) := by
  filter_upwards [(tendsto_rpow_atTop hα).eventually_ge_atTop c] with x hx
  linarith [Real.add_one_le_exp (x ^ α)]

def rE (eps : ℝ) : ℕ := ⌈8 * (2 + 8 * eps + 2) / eps⌉₊ + 1

theorem rG_rE (s : Scale) : rG s = rE s.eps := rfl

end Formalism.MainNotions.AuxBlock8.Pf.G5.Nu

end
