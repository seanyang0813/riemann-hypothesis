module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.Trace
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul

@[expose] public section

namespace Bl.b110

theorem goal1 {n : Type} [Fintype n] [DecidableEq n] :
(A : ℝ → Matrix n n ℂ) →
(A' : Matrix n n ℂ) →
(A 0) = 1 →
(∀ (i j : n),
  HasDerivAt (fun (t : ℝ) ↦ A t i j) (A' i j) 0) →
  HasDerivAt (fun (t : ℝ) ↦ (A t).det) A'.trace 0 := by
  intro A A' h0 hd
  have hfun : (fun t : ℝ => (A t).det) =
      fun t => ∑ σ : Equiv.Perm n, ((Equiv.Perm.sign σ : ℤ) : ℂ) * ∏ i, A t (σ i) i := by
        funext t
        exact Matrix.det_apply' _
  rw [hfun]
  have hprod : ∀ σ : Equiv.Perm n, HasDerivAt (fun t : ℝ => ∏ i, A t (σ i) i)
      (∑ i, (∏ j ∈ Finset.univ.erase i, A 0 (σ j) j) • A' (σ i) i) 0 := by
    intro σ
    exact HasDerivAt.fun_finsetProd (f := fun i t => A t (σ i) i)
      (fun i _ => hd (σ i) i)
  have hsum := HasDerivAt.fun_sum (u := Finset.univ)
    (fun σ _ => (hprod σ).const_mul (((Equiv.Perm.sign σ : ℤ) : ℂ)))
  refine hsum.congr_deriv ?_
  rw [Finset.sum_eq_single (1 : Equiv.Perm n)]
  · simp only [Equiv.Perm.sign_one, Units.val_one, Int.cast_one, one_mul, Equiv.Perm.one_apply,
      h0, smul_eq_mul, Matrix.trace]
    simp
  · intro σ _ hσ
    rw [Finset.sum_eq_zero, mul_zero]
    intro i _
    obtain ⟨j, hj, hji⟩ := Finset.exists_mem_ne (Equiv.Perm.one_lt_card_support_of_ne_one hσ) i
    rw [Finset.prod_eq_zero (i := j) (Finset.mem_erase.mpr ⟨hji, Finset.mem_univ j⟩), zero_smul]
    simpa [h0] using Matrix.one_apply_ne (Equiv.Perm.mem_support.mp hj)
  · intro h
    exact absurd (Finset.mem_univ _) h

end Bl.b110
