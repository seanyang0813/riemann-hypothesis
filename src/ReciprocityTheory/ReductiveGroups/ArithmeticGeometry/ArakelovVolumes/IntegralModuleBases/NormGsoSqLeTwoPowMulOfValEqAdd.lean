module

public import ReciprocityTheory.ReducedBases.LatticeReduction
public import Mathlib.Analysis.InnerProductSpace.GramMatrix
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
public import ReciprocityTheory.ReducedBases.TBInjective

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.AR.IntegralModuleBases

open Finset InnerProductSpace ReciprocityTheory.ReducedBases.T2

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}

lemma norm_gso_sq_le_two_pow_mul_of_val_eq_add (b : Fin d → E) (hr : IsRed b) :
    ∀ (n : ℕ) (i j : Fin d), i.val = j.val + n → ‖gs b j‖ ^ 2 ≤ 2 ^ n * ‖gs b i‖ ^ 2 := by
  intro n
  induction n with
  | zero =>
    intro i j h
    have hij : i = j := Fin.ext (by simpa using h)
    subst hij; simp
  | succ n ih =>
    intro i j h
    have hk : j.val + 1 < d := by have := i.isLt; omega
    have h1 := hr.2.2 ⟨j.val + 1, hk⟩ j rfl
    have h2 := ih i ⟨j.val + 1, hk⟩ (by show i.val = j.val + 1 + n; omega)
    calc ‖gs b j‖ ^ 2 ≤ 2 * ‖gs b ⟨j.val + 1, hk⟩‖ ^ 2 := h1
      _ ≤ 2 * (2 ^ n * ‖gs b i‖ ^ 2) := by linarith
      _ = 2 ^ (n + 1) * ‖gs b i‖ ^ 2 := by ring

lemma gs_sq_le_pow (b : Fin d → E) (hr : IsRed b) (i j : Fin d) (h : j ≤ i) :
    ‖gs b j‖ ^ 2 ≤ 2 ^ (i.val - j.val) * ‖gs b i‖ ^ 2 :=
  norm_gso_sq_le_two_pow_mul_of_val_eq_add b hr _ i j (by omega)

lemma sum_lt_le (b : Fin d → E) (hr : IsRed b) (i : Fin d) :
    ∑ j ∈ univ.filter (fun j : Fin d => j < i), ‖gs b j‖ ^ 2 ≤
      (2 * 2 ^ i.val - 2) * ‖gs b i‖ ^ 2 := by
  rcases Nat.eq_zero_or_pos i.val with h0 | hpos
  · have hE : univ.filter (fun j : Fin d => j < i) = ∅ := by
      rw [Finset.filter_eq_empty_iff]; intro j _; rw [Fin.lt_def, h0]; omega
    rw [hE, sum_empty, h0]; simp
  · obtain ⟨n, hn⟩ : ∃ n, i.val = n + 1 := ⟨i.val - 1, by omega⟩
    have hnd : n < d := by have := i.isLt; omega
    have hset : univ.filter (fun j : Fin d => j < i) = univ.filter (fun j : Fin d => j.val ≤ n) := by
      ext j; simp only [mem_filter, mem_univ, true_and, Fin.lt_def]; omega
    rw [hset]
    have h1 := sum_gs_le b hr.2.2 n hnd
    have h2 := hr.2.2 i ⟨n, hnd⟩ hn
    have hA : (0 : ℝ) ≤ 2 ^ (n + 1) - 1 := by
      have : (1 : ℝ) ≤ 2 ^ (n + 1) := one_le_pow₀ (by norm_num)
      linarith
    calc _ ≤ (2 ^ (n + 1) - 1) * ‖gs b ⟨n, hnd⟩‖ ^ 2 := h1
      _ ≤ (2 ^ (n + 1) - 1) * (2 * ‖gs b i‖ ^ 2) := mul_le_mul_of_nonneg_left h2 hA
      _ = (2 * 2 ^ i.val - 2) * ‖gs b i‖ ^ 2 := by rw [hn, pow_succ]; ring

lemma norm_sq_b (b : Fin d → E) (hb : LinearIndependent ℝ b) (i : Fin d) :
    ‖b i‖ ^ 2 = ∑ j, mu b i j ^ 2 * ‖gs b j‖ ^ 2 := by
  simpa [nu] using norm_sq_comb b hb (fun l => if l = i then (1 : ℝ) else 0)

lemma norm_sq_le_pow_gs (b : Fin d → E) (hr : IsRed b) (i : Fin d) :
    ‖b i‖ ^ 2 ≤ 2 ^ i.val * ‖gs b i‖ ^ 2 := by
  rw [norm_sq_b b hr.1 i]
  have hle : ∀ j ∈ (univ : Finset (Fin d)), mu b i j ^ 2 * ‖gs b j‖ ^ 2 ≤
      (if j < i then (1 / 4) * ‖gs b j‖ ^ 2 else 0) + (if j = i then ‖gs b i‖ ^ 2 else 0) := by
    intro j _
    rcases lt_trichotomy j i with h | rfl | h
    · have hm := hr.2.1 i j h
      have hq : mu b i j ^ 2 ≤ 1 / 4 := by nlinarith [abs_nonneg (mu b i j), sq_abs (mu b i j)]
      simp only [h, h.ne, ite_true, ite_false, add_zero]
      nlinarith [sq_nonneg ‖gs b j‖]
    · simp [mu_self b hr.1]
    · simp [mu_of_lt b h, h.ne', not_lt.mpr h.le]
  calc _ ≤ ∑ j, ((if j < i then (1 / 4) * ‖gs b j‖ ^ 2 else 0) + (if j = i then ‖gs b i‖ ^ 2 else 0)) :=
        sum_le_sum hle
    _ = (1 / 4) * ∑ j ∈ univ.filter (fun j : Fin d => j < i), ‖gs b j‖ ^ 2 + ‖gs b i‖ ^ 2 := by
        rw [sum_filter, mul_sum, sum_add_distrib]
        congr 1
        · exact sum_congr rfl fun j _ => by split_ifs <;> ring
        · simp
    _ ≤ (1 / 4) * ((2 * 2 ^ i.val - 2) * ‖gs b i‖ ^ 2) + ‖gs b i‖ ^ 2 := by
        linarith [sum_lt_le b hr i]
    _ ≤ 2 ^ i.val * ‖gs b i‖ ^ 2 := by
        have h1 : (1 : ℝ) ≤ 2 ^ i.val := one_le_pow₀ (by norm_num)
        nlinarith [mul_nonneg (sub_nonneg.mpr h1) (sq_nonneg ‖gs b i‖)]

lemma gs_sq_ge (b : Fin d → E) (hr : IsRed b) (m : ℝ) (hm : ∀ i, m ≤ ‖b i‖ ^ 2) (j : Fin d) :
    m / 2 ^ (d - 1) ≤ ‖gs b j‖ ^ 2 := by
  have hp : (2 : ℝ) ^ j.val ≤ 2 ^ (d - 1) := pow_le_pow_right₀ (by norm_num) (by have := j.isLt; omega)
  rw [div_le_iff₀ (by positivity)]
  nlinarith [norm_sq_le_pow_gs b hr j, hm j, mul_le_mul_of_nonneg_right hp (sq_nonneg ‖gs b j‖)]

theorem red_norm_sq_le (b : Fin d → E) (hr : IsRed b) (m D : ℝ) (hm0 : 0 < m)
    (hm : ∀ i, m ≤ ‖b i‖ ^ 2) (hD : (Matrix.gram ℝ b).det ≤ D) (i : Fin d) :
    ‖b i‖ ^ 2 ≤ 2 ^ (d * (d - 1)) * D / m ^ (d - 1) := by
  let L : ℝ := m / 2 ^ (d - 1)
  have hLpos : 0 < L := by positivity
  have hprod : L ^ (d - 1) ≤ ∏ j ∈ univ.erase i, ‖gs b j‖ ^ 2 := by
    have := Finset.prod_le_prod₀ (s := univ.erase i) (f := fun _ => L) (g := fun j => ‖gs b j‖ ^ 2)
      (fun _ _ => hLpos.le) (fun j _ => gs_sq_ge b hr m hm j)
    simpa [Finset.card_erase_of_mem (mem_univ i)] using this
  have hdet : ‖gs b i‖ ^ 2 * ∏ j ∈ univ.erase i, ‖gs b j‖ ^ 2 ≤ D := by
    rwa [Finset.mul_prod_erase univ (fun j => ‖gs b j‖ ^ 2) (mem_univ i), ← det_gram_eq b hr.1]
  have hGi' : ‖gs b i‖ ^ 2 ≤ D / L ^ (d - 1) :=
    (le_div_iff₀ (pow_pos hLpos _)).2 <| (mul_le_mul_of_nonneg_left hprod (sq_nonneg _)).trans hdet
  have hid : (2 : ℝ) ^ i.val ≤ 2 ^ (d - 1) :=
    pow_le_pow_right₀ (by norm_num) (by have := i.isLt; omega)
  have hexp : (2 : ℝ) ^ (d * (d - 1)) = 2 ^ (d - 1) * 2 ^ ((d - 1) * (d - 1)) := by
    rw [← pow_add]
    congr 1
    cases d with
    | zero => rfl
    | succ k => simp only [Nat.add_sub_cancel]; ring
  calc ‖b i‖ ^ 2 ≤ 2 ^ i.val * ‖gs b i‖ ^ 2 := norm_sq_le_pow_gs b hr i
    _ ≤ 2 ^ (d - 1) * (D / L ^ (d - 1)) := mul_le_mul hid hGi' (sq_nonneg _) (by positivity)
    _ = 2 ^ (d * (d - 1)) * D / m ^ (d - 1) := by
        dsimp only [L]
        rw [div_pow, ← pow_mul, div_div_eq_mul_div, hexp]
        ring

theorem red_coeff_sq_le (b : Fin d → E) (hr : IsRed b) (m : ℝ) (hm0 : 0 < m)
    (hm : ∀ i, m ≤ ‖b i‖ ^ 2) (c : Fin d → ℝ) (i : Fin d) :
    c i ^ 2 ≤ 9 ^ d * ‖∑ l, c l • b l‖ ^ 2 / m := by
  let X : ℝ := ‖∑ l, c l • b l‖ ^ 2
  let y : ℝ := X * 2 ^ (d - 1) / m
  have hX0 : 0 ≤ X := sq_nonneg _
  have hy0 : 0 ≤ y := by positivity
  have hnu : ∀ j, |nu b c j| ≤ Real.sqrt y := fun j => Real.abs_le_sqrt <| by
    have h1 : nu b c j ^ 2 * ‖gs b j‖ ^ 2 ≤ X := by
      rw [show X = ∑ k, nu b c k ^ 2 * ‖gs b k‖ ^ 2 from norm_sq_comb b hr.1 c]
      exact Finset.single_le_sum (f := fun k => nu b c k ^ 2 * ‖gs b k‖ ^ 2)
        (fun _ _ => by positivity) (mem_univ j)
    have h3 : nu b c j ^ 2 * (m / 2 ^ (d - 1)) ≤ X :=
      (mul_le_mul_of_nonneg_left (gs_sq_ge b hr m hm j) (sq_nonneg _)).trans h1
    rw [le_div_iff₀ hm0]
    have hp : (0 : ℝ) < 2 ^ (d - 1) := by positivity
    have h4 : nu b c j ^ 2 * (m / 2 ^ (d - 1)) * 2 ^ (d - 1) = nu b c j ^ 2 * m := by
      rw [mul_assoc, div_mul_cancel₀ _ hp.ne']
    nlinarith [mul_le_mul_of_nonneg_right h3 hp.le]
  have hsq : c i ^ 2 ≤ ((3 / 2 : ℝ) ^ d) ^ 2 * y := by
    have hc := coeff_bound b hr.1 hr.2.1 c (Real.sqrt_nonneg y) hnu i
    have := pow_le_pow_left₀ (abs_nonneg _) hc 2
    rwa [sq_abs, mul_pow, Real.sq_sqrt hy0] at this
  have hA : ((3 / 2 : ℝ) ^ d) ^ 2 * 2 ^ (d - 1) ≤ 9 ^ d :=
    calc ((3 / 2 : ℝ) ^ d) ^ 2 * 2 ^ (d - 1)
        ≤ ((3 / 2 : ℝ) ^ d) ^ 2 * 2 ^ d := by gcongr; norm_num; exact Nat.sub_le _ _
      _ ≤ ((3 / 2 : ℝ) ^ d) ^ 2 * 4 ^ d := by gcongr; norm_num
      _ = 9 ^ d := by rw [← pow_mul, mul_comm d 2, pow_mul, ← mul_pow]; norm_num
  calc c i ^ 2 ≤ ((3 / 2 : ℝ) ^ d) ^ 2 * y := hsq
    _ = (((3 / 2 : ℝ) ^ d) ^ 2 * 2 ^ (d - 1)) * X / m := by dsimp only [y]; ring
    _ ≤ 9 ^ d * X / m := by gcongr

end ReciprocityTheory.ChartRestriction.G.AR.IntegralModuleBases

end
