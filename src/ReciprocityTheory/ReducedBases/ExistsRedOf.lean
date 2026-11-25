module

public import ReciprocityTheory.ReducedBases.GsInnerBOfLt
public import Mathlib.LinearAlgebra.Dimension.OrzechProperty
public import ReciprocityTheory.ReducedBases.LatticeReduction

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReducedBases.NormGsoCompSwapRightSqMul, ReciprocityTheory.ReducedBases.SizeReduce, ReciprocityTheory.ReducedBases.ExistsRedOf

-- ===== clump member: ReciprocityTheory.ReducedBases.NormGsoCompSwapRightSqMul =====
-- clump-header: {"m": "ReciprocityTheory.ReducedBases.NormGsoCompSwapRightSqMul", "h": "module\n\npublic import ReciprocityTheory.ReducedBases.GsInnerBOfLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ReducedBases.T2

open Finset InnerProductSpace Submodule

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}

def pot (b : Fin d → E) : ℝ :=
  ∏ k, ∏ j ∈ univ.filter (fun j : Fin d => j ≤ k), ‖gs b j‖ ^ 2

lemma swap_lt (j j1 : Fin d) (hj : j1.val = j.val + 1) (k : Fin d) (hk : k ≠ j1) (l : Fin d)
    (hl : l < k) : Equiv.swap j j1 l < k := by
  by_cases h1 : l = j
  · rw [h1, Equiv.swap_apply_left]
    rw [h1] at hl
    have : k.val ≠ j1.val := fun h => hk (Fin.ext h)
    rw [Fin.lt_iff_val_lt_val] at hl ⊢
    omega
  · by_cases h2 : l = j1
    · rw [h2, Equiv.swap_apply_right]
      rw [h2] at hl
      rw [Fin.lt_iff_val_lt_val] at hl ⊢
      omega
    · rw [Equiv.swap_apply_of_ne_of_ne h1 h2]
      exact hl

lemma swap_img (b : Fin d → E) (j j1 : Fin d) (hj : j1.val = j.val + 1) (k : Fin d)
    (hk : k ≠ j1) : (b ∘ Equiv.swap j j1) '' Set.Iio k = b '' Set.Iio k := by
  have hs : (Equiv.swap j j1) '' Set.Iio k = Set.Iio k := by
    ext l
    simp only [Set.mem_image, Set.mem_Iio]
    constructor
    · rintro ⟨m, hm, rfl⟩
      exact swap_lt j j1 hj k hk m hm
    · intro hl
      exact ⟨Equiv.swap j j1 l, swap_lt j j1 hj k hk l hl, Equiv.swap_apply_self _ _ _⟩
  rw [Set.image_comp, hs]

lemma swap_gs_other (b : Fin d → E) (j j1 : Fin d) (hj : j1.val = j.val + 1) (k : Fin d)
    (hk : k ≠ j) (hk1 : k ≠ j1) : gs (b ∘ Equiv.swap j j1) k = gs b k := by
  have hkk : Equiv.swap j j1 k = k := Equiv.swap_apply_of_ne_of_ne hk hk1
  refine gs_eq_of _ _ _ ?_ ?_
  · rw [swap_img b j j1 hj k hk1]
    simp only [Function.comp_apply, hkk]
    exact b_sub_gs_mem b k
  · intro i hi
    apply inner_gs_span b k
    apply Submodule.subset_span
    exact ⟨Equiv.swap j j1 i, swap_lt j j1 hj k hk1 i hi, rfl⟩

lemma swap_gs_j (b : Fin d → E) (hb : LinearIndependent ℝ b) (j j1 : Fin d)
    (hj : j1.val = j.val + 1) :
    gs (b ∘ Equiv.swap j j1) j = gs b j1 + mu b j1 j • gs b j := by
  have hne : j ≠ j1 := fun h => by rw [Fin.ext_iff] at h; omega
  have hne' : j1 ≠ j := fun h => hne h.symm
  have hsj : Equiv.swap j j1 j = j1 := Equiv.swap_apply_left j j1
  have hI : Set.Iio j1 = insert j (Set.Iio j) := by
    ext l
    simp only [Set.mem_Iio, Set.mem_insert_iff, Fin.lt_iff_val_lt_val, Fin.ext_iff]
    omega
  have hmem := b_sub_gs_mem b j1
  rw [hI, Set.image_insert_eq, Submodule.mem_span_insert] at hmem
  obtain ⟨c, s, hs, hcs⟩ := hmem
  have hG0 : ‖gs b j‖ ^ 2 ≠ 0 := pow_ne_zero 2 (norm_ne_zero_iff.mpr (gs_ne_zero b hb j))
  have hc : c = mu b j1 j := by
    have h1 : ⟪gs b j, b j1 - gs b j1⟫_ℝ = mu b j1 j * ‖gs b j‖ ^ 2 := by
      rw [inner_sub_right, gs_orth b hne, sub_zero]
      unfold mu
      rw [div_mul_cancel₀ _ hG0]
    have h2 : ⟪gs b j, b j1 - gs b j1⟫_ℝ = c * ‖gs b j‖ ^ 2 := by
      rw [hcs, inner_add_right, real_inner_smul_right, inner_gs_b_self, inner_gs_span b j hs, add_zero]
    exact mul_right_cancel₀ hG0 (h2.symm.trans h1)
  subst hc
  refine gs_eq_of _ _ _ ?_ ?_
  · rw [swap_img b j j1 hj j hne]
    simp only [Function.comp_apply, hsj]
    have he : b j1 - (gs b j1 + mu b j1 j • gs b j) = mu b j1 j • (b j - gs b j) + s := by
      rw [sub_add_eq_sub_sub, hcs, smul_sub]
      abel
    rw [he]
    exact Submodule.add_mem _ (Submodule.smul_mem _ _ (b_sub_gs_mem b j)) hs
  · intro i hi
    have hi1 : i < j1 := lt_trans hi (by rw [Fin.lt_iff_val_lt_val]; omega)
    have hsi : Equiv.swap j j1 i = i := Equiv.swap_apply_of_ne_of_ne (ne_of_lt hi) (ne_of_lt hi1)
    simp only [Function.comp_apply, hsi]
    rw [inner_add_left, real_inner_smul_left, gs_inner_b_of_lt b hi1, gs_inner_b_of_lt b hi]
    ring

lemma norm_swap_j (b : Fin d → E) (j j1 : Fin d) (hj : j1.val = j.val + 1) :
    ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 = ‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2 := by
  have hne : j1 ≠ j := fun h => by rw [Fin.ext_iff] at h; omega
  rw [norm_add_sq_real, real_inner_smul_right, gs_orth b hne, norm_smul, Real.norm_eq_abs, mul_pow,
    sq_abs]
  ring

lemma norm_gso_comp_swap_right_sq_mul (b : Fin d → E) (hb : LinearIndependent ℝ b) (j j1 : Fin d)
    (hj : j1.val = j.val + 1) :
    ‖gs (b ∘ Equiv.swap j j1) j1‖ ^ 2 * ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 =
      ‖gs b j‖ ^ 2 * ‖gs b j1‖ ^ 2 := by
  have hne : j ≠ j1 := fun h => by rw [Fin.ext_iff] at h; omega
  have hjlt : j < j1 := by rw [Fin.lt_iff_val_lt_val]; omega
  have hb' : LinearIndependent ℝ (b ∘ Equiv.swap j j1) := hb.comp _ (Equiv.injective _)
  have hu := swap_gs_j b hb j j1 hj
  have hN := norm_swap_j b j j1 hj
  have hN0 : ‖gs (b ∘ Equiv.swap j j1) j‖ ^ 2 ≠ 0 :=
    pow_ne_zero 2 (norm_ne_zero_iff.mpr (gs_ne_zero _ hb' j))
  have hG0 : ‖gs b j‖ ^ 2 ≠ 0 := pow_ne_zero 2 (norm_ne_zero_iff.mpr (gs_ne_zero b hb j))
  have hv : gs (b ∘ Equiv.swap j j1) j1 = gs b j -
      (mu b j1 j * ‖gs b j‖ ^ 2 / ‖gs (b ∘ Equiv.swap j j1) j‖ ^ 2) • gs (b ∘ Equiv.swap j j1) j := by
    refine gs_eq_of _ _ _ ?_ ?_
    · have hmono : span ℝ ((b ∘ Equiv.swap j j1) '' Set.Iio j) ≤
          span ℝ ((b ∘ Equiv.swap j j1) '' Set.Iio j1) :=
        Submodule.span_mono (Set.image_mono (Set.Iio_subset_Iio (le_of_lt hjlt)))
      have hbj : (b ∘ Equiv.swap j j1) j ∈ span ℝ ((b ∘ Equiv.swap j j1) '' Set.Iio j1) :=
        Submodule.subset_span ⟨j, hjlt, rfl⟩
      have hgs : gs (b ∘ Equiv.swap j j1) j ∈ span ℝ ((b ∘ Equiv.swap j j1) '' Set.Iio j1) := by
        have h := Submodule.sub_mem _ hbj (hmono (b_sub_gs_mem (b ∘ Equiv.swap j j1) j))
        rwa [sub_sub_cancel] at h
      have hB : b j - gs b j ∈ span ℝ ((b ∘ Equiv.swap j j1) '' Set.Iio j1) := by
        apply hmono
        rw [swap_img b j j1 hj j hne]
        exact b_sub_gs_mem b j
      have hbj1 : (b ∘ Equiv.swap j j1) j1 = b j := by simp [Equiv.swap_apply_right]
      rw [hbj1]
      have he : ∀ (t : ℝ) (x : E), b j - (gs b j - t • x) = (b j - gs b j) + t • x := by
        intro t x; abel
      rw [he]
      exact Submodule.add_mem _ hB (Submodule.smul_mem _ _ hgs)
    · intro i hi
      have hij : i ≤ j := by
        rw [Fin.le_iff_val_le_val]; rw [Fin.lt_iff_val_lt_val] at hi; omega
      rcases lt_or_eq_of_le hij with h | h
      · have hsi : Equiv.swap j j1 i = i :=
          Equiv.swap_apply_of_ne_of_ne (ne_of_lt h) (ne_of_lt (lt_trans h hjlt))
        rw [inner_sub_left, real_inner_smul_left, gs_inner_b_of_lt _ h]
        simp only [Function.comp_apply, hsi, gs_inner_b_of_lt b h]
        ring
      · rw [h, inner_sub_left, real_inner_smul_left, inner_gs_b_self (b ∘ Equiv.swap j j1) j]
        have hsj : (b ∘ Equiv.swap j j1) j = b j1 := by simp
        have hmu : ⟪gs b j, b j1⟫_ℝ = mu b j1 j * ‖gs b j‖ ^ 2 := by
          unfold mu
          rw [div_mul_cancel₀ _ hG0]
        rw [hsj, hmu, div_mul_cancel₀ _ hN0, sub_self]
  have hip : ⟪gs b j, gs (b ∘ Equiv.swap j j1) j⟫_ℝ = mu b j1 j * ‖gs b j‖ ^ 2 := by
    rw [hu, inner_add_right, real_inner_smul_right, gs_orth b hne, real_inner_self_eq_norm_sq]
    ring
  have hN' : ‖gs (b ∘ Equiv.swap j j1) j‖ ^ 2 = ‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2 := by
    rw [hu, hN]
  rw [hv, ← hu, norm_sub_sq_real, real_inner_smul_right, hip, norm_smul, mul_pow, Real.norm_eq_abs,
    sq_abs, hN']
  have hD : ‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2 ≠ 0 := hN' ▸ hN0
  have key : mu b j1 j * ‖gs b j‖ ^ 2 / (‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2) *
      (‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2) = mu b j1 j * ‖gs b j‖ ^ 2 :=
    div_mul_cancel₀ _ hD
  linear_combination (mu b j1 j * ‖gs b j‖ ^ 2 / (‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2) *
      (‖gs b j1‖ ^ 2 + mu b j1 j ^ 2 * ‖gs b j‖ ^ 2) - mu b j1 j * ‖gs b j‖ ^ 2) * key

private lemma prod_filter_le_ite_eq_of_mul_eq_one (j j1 : Fin d) (hj : j1.val = j.val + 1) (A B : ℝ) (hAB : A * B = 1)
    (k : Fin d) :
    ∏ i ∈ univ.filter (fun i : Fin d => i ≤ k),
        ((if i = j then A else 1) * (if i = j1 then B else 1)) = if k = j then A else 1 := by
  rw [Finset.prod_mul_distrib]
  simp only [Finset.prod_ite_eq', Finset.mem_filter, Finset.mem_univ, true_and]
  rcases lt_trichotomy k j with h | h | h
  · have h1 : ¬ j ≤ k := not_le.mpr h
    have h2 : ¬ j1 ≤ k := by
      rw [Fin.le_iff_val_le_val]; rw [Fin.lt_iff_val_lt_val] at h; omega
    rw [if_neg h1, if_neg h2, if_neg (ne_of_lt h), one_mul]
  · have h2 : ¬ j1 ≤ j := by rw [Fin.le_iff_val_le_val]; omega
    rw [h, if_pos le_rfl, if_neg h2, if_pos rfl, mul_one]
  · have h1 : j ≤ k := le_of_lt h
    have h2 : j1 ≤ k := by
      rw [Fin.le_iff_val_le_val]; rw [Fin.lt_iff_val_lt_val] at h; omega
    rw [if_pos h1, if_pos h2, if_neg (ne_of_gt h), hAB]

lemma pot_swap (b : Fin d → E) (hb : LinearIndependent ℝ b) (j j1 : Fin d)
    (hj : j1.val = j.val + 1) :
    pot (b ∘ Equiv.swap j j1) =
      pot b * (‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 / ‖gs b j‖ ^ 2) := by
  have hne : j ≠ j1 := fun h => by rw [Fin.ext_iff] at h; omega
  have hb' : LinearIndependent ℝ (b ∘ Equiv.swap j j1) := hb.comp _ (Equiv.injective _)
  have hG0 : ‖gs b j‖ ^ 2 ≠ 0 := pow_ne_zero 2 (norm_ne_zero_iff.mpr (gs_ne_zero b hb j))
  have hU0 : ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 ≠ 0 := by
    rw [← swap_gs_j b hb j j1 hj]
    exact pow_ne_zero 2 (norm_ne_zero_iff.mpr (gs_ne_zero _ hb' j))
  have hf : ∀ i, ‖gs (b ∘ Equiv.swap j j1) i‖ ^ 2 =
      ‖gs b i‖ ^ 2 * ((if i = j then ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 / ‖gs b j‖ ^ 2 else 1) *
        (if i = j1 then ‖gs b j‖ ^ 2 / ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 else 1)) := by
    intro i
    by_cases h1 : i = j
    · rw [h1, if_pos rfl, if_neg hne, swap_gs_j b hb j j1 hj, mul_one, mul_comm,
        div_mul_cancel₀ _ hG0]
    · by_cases h2 : i = j1
      · rw [h2, if_neg (Ne.symm hne), if_pos rfl, one_mul, mul_div_assoc', eq_div_iff hU0]
        linear_combination norm_gso_comp_swap_right_sq_mul b hb j j1 hj
      · rw [if_neg h1, if_neg h2, swap_gs_other b j j1 hj i h1 h2]
        ring
  have hAB : ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 / ‖gs b j‖ ^ 2 *
      (‖gs b j‖ ^ 2 / ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2) = 1 := by
    rw [div_mul_div_comm, div_eq_one_iff_eq (mul_ne_zero hG0 hU0)]
    ring
  have hk : ∀ k : Fin d, ∏ i ∈ univ.filter (fun i : Fin d => i ≤ k),
      ‖gs (b ∘ Equiv.swap j j1) i‖ ^ 2 =
      (∏ i ∈ univ.filter (fun i : Fin d => i ≤ k), ‖gs b i‖ ^ 2) *
        (if k = j then ‖gs b j1 + mu b j1 j • gs b j‖ ^ 2 / ‖gs b j‖ ^ 2 else 1) := by
    intro k
    rw [← prod_filter_le_ite_eq_of_mul_eq_one j j1 hj _ _ hAB k, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl (fun i _ => hf i)
  unfold pot
  rw [Finset.prod_congr rfl (fun k _ => hk k), Finset.prod_mul_distrib, Finset.prod_ite_eq' univ j,
    if_pos (Finset.mem_univ j)]

end ReciprocityTheory.ReducedBases.T2

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReducedBases.NormGsoCompSwapRightSqMul =====

-- ===== clump member: ReciprocityTheory.ReducedBases.SizeReduce =====
-- clump-header: {"m": "ReciprocityTheory.ReducedBases.SizeReduce", "h": "module\n\npublic import ReciprocityTheory.ReducedBases.GsInnerBOfLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Dimension.OrzechProperty\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ReducedBases.T2

open Finset InnerProductSpace Submodule

lemma span_tri {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] {d : ℕ} (v : Fin d → M)
    (W : Fin d → Fin d → R) (hW : ∀ i l, i ≤ l → W i l = 0) (S : Set (Fin d))
    (hS : ∀ i ∈ S, ∀ l < i, l ∈ S) :
    span R (v '' S) = span R ((fun i => v i - ∑ l, W i l • v l) '' S) := by
  set w : Fin d → M := fun i => v i - ∑ l, W i l • v l with hw
  have key : ∀ i, i ∈ S → v i ∈ span R (w '' S) := by
    intro i
    refine WellFoundedLT.induction (motive := fun i => i ∈ S → v i ∈ span R (w '' S)) i ?_
    intro i ih hi
    have hv : v i = w i + ∑ l, W i l • v l := (sub_add_cancel _ _).symm
    rw [hv]
    refine Submodule.add_mem _ (Submodule.subset_span ⟨i, hi, rfl⟩)
      (Submodule.sum_mem _ fun l _ => ?_)
    by_cases hl : l < i
    · exact Submodule.smul_mem _ _ (ih l hl (hS i hi l hl))
    · rw [hW i l (not_lt.mp hl), zero_smul]
      exact Submodule.zero_mem _
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨i, hi, rfl⟩
    exact key i hi
  · rw [Submodule.span_le]
    rintro _ ⟨i, hi, rfl⟩
    show v i - ∑ l, W i l • v l ∈ span R (v '' S)
    refine Submodule.sub_mem _ (Submodule.subset_span ⟨i, hi, rfl⟩)
      (Submodule.sum_mem _ fun l _ => ?_)
    by_cases hl : l < i
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨l, hS i hi l hl, rfl⟩)
    · rw [hW i l (not_lt.mp hl), zero_smul]
      exact Submodule.zero_mem _

private lemma gs_sub_sum_lower_smul {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}
    (b : Fin d → E) (c : Fin d → Fin d → ℝ) (hc : ∀ i l, i ≤ l → c i l = 0) :
    gs (fun i => b i - ∑ l, c i l • b l) = gs b := by
  set b' : Fin d → E := fun i => b i - ∑ l, c i l • b l with hb'
  funext n
  have hV : span ℝ (b' '' Set.Iio n) = span ℝ (b '' Set.Iio n) :=
    (span_tri b c hc (Set.Iio n) (fun i hi l hl => lt_trans hl hi)).symm
  apply gs_eq_of
  · rw [hV]
    change b n - (∑ l, c n l • b l) - gs b n ∈ _
    rw [sub_right_comm]
    refine sub_mem (b_sub_gs_mem b n) (Submodule.sum_mem _ fun l _ => ?_)
    by_cases hl : l < n
    · exact Submodule.smul_mem _ _ (subset_span ⟨l, hl, rfl⟩)
    · simp [hc n l (not_lt.mp hl)]
  · intro j hj
    apply inner_gs_span b n
    rw [← hV]
    exact subset_span ⟨j, hj, rfl⟩

private lemma exists_basis_sub_sum_lower {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}
    (f : (Fin d → ℤ) →ₗ[ℤ] E)
    (hli : ∀ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), LinearIndependent ℝ (fun i => f (e i)))
    (e0 : Module.Basis (Fin d) ℤ (Fin d → ℤ)) (W : Fin d → Fin d → ℤ)
    (hW : ∀ i l, i ≤ l → W i l = 0) :
    ∃ e1 : Module.Basis (Fin d) ℤ (Fin d → ℤ), ∀ i, e1 i = e0 i - ∑ l, W i l • e0 l := by
  set v : Fin d → (Fin d → ℤ) := fun i => e0 i - ∑ l, W i l • e0 l with hv
  have hfv : (fun i => f (v i)) = fun i => f (e0 i) - ∑ l, (W i l : ℝ) • f (e0 l) := by
    funext i

    simp only [hv, map_sub, map_sum, map_zsmul, Int.cast_smul_eq_zsmul]
  have hspR : span ℝ (Set.range (fun i => f (v i))) = span ℝ (Set.range (fun i => f (e0 i))) := by
    rw [hfv, ← Set.image_univ, ← Set.image_univ]
    exact (span_tri (fun i => f (e0 i)) (fun i l => (W i l : ℝ)) (fun i l h => by simp [hW i l h])
      Set.univ (fun i _ l _ => Set.mem_univ l)).symm
  have hliR : LinearIndependent ℝ (fun i => f (v i)) := by
    rw [linearIndependent_iff_card_eq_finrank_span, Set.finrank, hspR]
    exact linearIndependent_iff_card_eq_finrank_span.mp (hli e0)
  have hliZ : LinearIndependent ℤ v :=
    LinearIndependent.of_comp f (hliR.restrict_scalars
      (fun (a b : ℤ) (h : a • (1 : ℝ) = b • (1 : ℝ)) => by simpa using h))
  have hspZ : ⊤ ≤ span ℤ (Set.range v) := by
    have h := span_tri e0 W hW Set.univ (fun i _ l _ => Set.mem_univ l)
    rw [Set.image_univ, Set.image_univ, e0.span_eq] at h
    exact le_of_eq h
  exact ⟨Module.Basis.mk hliZ hspZ, fun i => Module.Basis.mk_apply hliZ hspZ i⟩

private lemma exists_basis_size_reduce_column {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}
    (f : (Fin d → ℤ) →ₗ[ℤ] E)
    (hli : ∀ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), LinearIndependent ℝ (fun i => f (e i)))
    (e0 : Module.Basis (Fin d) ℤ (Fin d → ℤ)) (j : Fin d) :
    ∃ e1 : Module.Basis (Fin d) ℤ (Fin d → ℤ),
      gs (fun i => f (e1 i)) = gs (fun i => f (e0 i)) ∧
      (∀ i, j < i → |mu (fun i => f (e1 i)) i j| ≤ 1 / 2) ∧
      ∀ i j', j < j' → mu (fun i => f (e1 i)) i j' = mu (fun i => f (e0 i)) i j' := by
  set b : Fin d → E := fun i => f (e0 i) with hb
  obtain ⟨e1, he1⟩ := exists_basis_sub_sum_lower f hli e0
    (fun i l => if l = j ∧ j < i then round (mu b i j) else 0)
    (fun i l h => if_neg (by rintro ⟨rfl, h2⟩; exact absurd h (not_le.mpr h2)))
  have hfe1 : (fun i => f (e1 i)) = fun i => b i -
      ∑ l, ((if l = j ∧ j < i then round (mu b i j) else 0 : ℤ) : ℝ) • b l := by
    funext i
    rw [he1 i]

    simp only [map_sub, map_sum, map_zsmul, Int.cast_smul_eq_zsmul, hb]
  have hsum : ∀ i, ∑ l, ((if l = j ∧ j < i then round (mu b i j) else 0 : ℤ) : ℝ) • b l
      = ((if j < i then round (mu b i j) else 0 : ℤ) : ℝ) • b j := by
    intro i
    rw [Finset.sum_eq_single j]
    · simp
    · intro l _ hl
      simp [hl]
    · intro h
      exact absurd (Finset.mem_univ j) h
  have hfe : ∀ i, f (e1 i) = b i - ((if j < i then round (mu b i j) else 0 : ℤ) : ℝ) • b j := by
    intro i
    have h := congrFun hfe1 i
    rw [h, hsum i]
  have hgs : gs (fun i => f (e1 i)) = gs b := by
    rw [hfe1]
    exact gs_sub_sum_lower_smul b (fun i l => ((if l = j ∧ j < i then round (mu b i j) else 0 : ℤ) : ℝ))
      (fun i l h => by
        show ((if l = j ∧ j < i then round (mu b i j) else 0 : ℤ) : ℝ) = 0
        rw [if_neg (by rintro ⟨rfl, h2⟩; exact absurd h (not_le.mpr h2)), Int.cast_zero])
  have hmu : ∀ i j', mu (fun i => f (e1 i)) i j' =
      mu b i j' - ((if j < i then round (mu b i j) else 0 : ℤ) : ℝ) * mu b j j' := by
    intro i j'
    have hfi := hfe i
    generalize ((if j < i then round (mu b i j) else 0 : ℤ) : ℝ) = r at hfi ⊢
    simp only [mu]
    rw [hgs, hfi, inner_sub_right, inner_smul_right]
    ring
  refine ⟨e1, hgs, fun i hi => ?_, fun i j' hj' => ?_⟩
  · rw [hmu, if_pos hi, _root_.ReciprocityTheory.ReducedBases.T2.mu_self b (hli e0) j, mul_one]
    exact abs_sub_round _
  · rw [hmu, _root_.ReciprocityTheory.ReducedBases.T2.mu_of_lt b hj', mul_zero, sub_zero]

lemma size_reduce {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}
    (f : (Fin d → ℤ) →ₗ[ℤ] E)
    (hli : ∀ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), LinearIndependent ℝ (fun i => f (e i)))
    (e : Module.Basis (Fin d) ℤ (Fin d → ℤ)) :
    ∃ e' : Module.Basis (Fin d) ℤ (Fin d → ℤ), gs (fun i => f (e' i)) = gs (fun i => f (e i)) ∧
      ∀ i j : Fin d, j < i → |mu (fun i => f (e' i)) i j| ≤ 1 / 2 := by
  have key : ∀ k : ℕ, ∃ e' : Module.Basis (Fin d) ℤ (Fin d → ℤ),
      gs (fun i => f (e' i)) = gs (fun i => f (e i)) ∧
      ∀ i j : Fin d, d ≤ j.val + k → j < i → |mu (fun i => f (e' i)) i j| ≤ 1 / 2 := by
    intro k
    induction k with
    | zero => exact ⟨e, rfl, fun i j h _ => absurd h (by have := j.isLt; omega)⟩
    | succ k ih =>
      obtain ⟨e', hgs', hred⟩ := ih
      by_cases hk : k < d
      · obtain ⟨e'', hgs'', hred'', hsame⟩ := exists_basis_size_reduce_column f hli e' ⟨d - k - 1, by omega⟩
        refine ⟨e'', hgs''.trans hgs', fun i j hj hji => ?_⟩
        by_cases hjv : j.val = d - k - 1
        · have hj0 : j = ⟨d - k - 1, by omega⟩ := Fin.ext hjv
          rw [hj0] at hji ⊢
          exact hred'' i hji
        · have hlt : (⟨d - k - 1, by omega⟩ : Fin d) < j := by
            rw [Fin.lt_iff_val_lt_val]
            show d - k - 1 < j.val
            omega
          rw [hsame i j hlt]
          exact hred i j (by omega) hji
      · exact ⟨e', hgs', fun i j _ hji => hred i j (by omega) hji⟩
  obtain ⟨e', hgs', hred⟩ := key d
  exact ⟨e', hgs', fun i j hji => hred i j (by omega) hji⟩

end ReciprocityTheory.ReducedBases.T2

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReducedBases.SizeReduce =====

-- ===== clump member: ReciprocityTheory.ReducedBases.ExistsRedOf =====
-- clump-header: {"m": "ReciprocityTheory.ReducedBases.ExistsRedOf", "h": "module\n\npublic import ReciprocityTheory.ReducedBases.LatticeReduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReducedBases.NormGsoCompSwapRightSqMul\npublic import ReciprocityTheory.ReducedBases.SizeReduce\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ReducedBases.T2

open Finset InnerProductSpace

theorem exists_red_of {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] {d : ℕ}
    (f : (Fin d → ℤ) →ₗ[ℤ] E)
    (hli : ∀ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), LinearIndependent ℝ (fun i => f (e i)))
    (hlow : ∃ c : ℝ, 0 < c ∧ ∀ (e : Module.Basis (Fin d) ℤ (Fin d → ℤ)) (k : Fin d),
      c ≤ ∏ j ∈ univ.filter (fun j : Fin d => j ≤ k), ‖gs (fun i => f (e i)) j‖ ^ 2) :
    ∃ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), IsRed (fun i => f (e i)) := by
  obtain ⟨c, hc0, hc⟩ := hlow
  set S : Set ℝ := Set.range (fun e : Module.Basis (Fin d) ℤ (Fin d → ℤ) =>
    pot (fun i => f (e i))) with hSdef
  have hpos : ∀ e : Module.Basis (Fin d) ℤ (Fin d → ℤ), c ^ d ≤ pot (fun i => f (e i)) := by
    intro e
    unfold pot
    calc c ^ d = ∏ _k : Fin d, c := by simp
      _ ≤ _ := Finset.prod_le_prod₀ (fun _ _ => hc0.le) (fun k _ => hc e k)
  have hne : S.Nonempty := ⟨_, ⟨Pi.basisFun ℤ (Fin d), rfl⟩⟩
  have hbdd : BddBelow S := ⟨c ^ d, by rintro _ ⟨e, rfl⟩; exact hpos e⟩
  have hm : c ^ d ≤ sInf S := le_csInf hne (by rintro _ ⟨e, rfl⟩; exact hpos e)
  have hm0 : 0 < sInf S := lt_of_lt_of_le (pow_pos hc0 d) hm
  obtain ⟨_, ⟨e0, rfl⟩, he0⟩ :=
    exists_lt_of_csInf_lt hne (show sInf S < 4 / 3 * sInf S by linarith)
  obtain ⟨e1, hgs1, hsz1⟩ := size_reduce f hli e0
  have hpot1 : pot (fun i => f (e1 i)) = pot (fun i => f (e0 i)) := by unfold pot; rw [hgs1]
  have hb1 := hli e1
  by_contra hnot
  have hex : ∃ i j : Fin d, i.val = j.val + 1 ∧
      2 * ‖gs (fun i => f (e1 i)) i‖ ^ 2 < ‖gs (fun i => f (e1 i)) j‖ ^ 2 := by
    by_contra h
    push Not at h
    exact hnot ⟨e1, hb1, hsz1, fun i j hij => h i j hij⟩
  obtain ⟨j1, j, hj, hlt⟩ := hex
  have hjj1 : j < j1 := by rw [Fin.lt_def]; omega
  set e2 := e1.reindex (Equiv.swap j j1) with he2
  have hb2 : (fun i => f (e2 i)) = (fun i => f (e1 i)) ∘ Equiv.swap j j1 := by
    funext i; simp [he2, Module.Basis.coe_reindex, Equiv.symm_swap]
  have hp2 := pot_swap _ hb1 j j1 hj
  rw [← hb2] at hp2
  have hV := norm_swap_j (fun i => f (e1 i)) j j1 hj
  have hsz := hsz1 j1 j hjj1
  set m := mu (fun i => f (e1 i)) j1 j
  set A := ‖gs (fun i => f (e1 i)) j‖ ^ 2 with hA
  set B := ‖gs (fun i => f (e1 i)) j1‖ ^ 2
  have hA0 : 0 < A := by have := gs_ne_zero _ hb1 j; positivity
  have hm2 : m ^ 2 ≤ 1 / 4 := by
    rw [← sq_abs]; nlinarith [abs_nonneg m]
  have hVA : ‖gs (fun i => f (e1 i)) j1 + m • gs (fun i => f (e1 i)) j‖ ^ 2 / A < 3 / 4 := by
    rw [div_lt_iff₀ hA0, hV]; nlinarith
  have hP1 : 0 < pot (fun i => f (e1 i)) := lt_of_lt_of_le (pow_pos hc0 d) (hpos e1)
  have h2 : sInf S ≤ pot (fun i => f (e2 i)) := csInf_le hbdd ⟨e2, rfl⟩
  have h3 : pot (fun i => f (e2 i)) < pot (fun i => f (e1 i)) * (3 / 4) := by
    rw [hp2]; exact mul_lt_mul_of_pos_left hVA hP1
  rw [hpot1] at h3
  linarith

end ReciprocityTheory.ReducedBases.T2

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReducedBases.ExistsRedOf =====
