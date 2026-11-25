module

public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.Statements
public import Mathlib.LinearAlgebra.Vandermonde
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

namespace RestTerms

namespace Flag

open MvPolynomial Finset

noncomputable section

theorem vandermondeOf_eq_det {R : Type*} [CommRing R] {m : ℕ} (v : Fin m → R) :
    vandermondeOf v = (Matrix.vandermonde (fun i => -v i)).det := by
  rw [Matrix.det_vandermonde, vandermondeOf]
  refine Finset.prod_congr rfl (fun i _ => Finset.prod_congr rfl (fun j _ => ?_))
  ring

theorem vandermondeOf_perm {R : Type*} [CommRing R] {m : ℕ} (v : Fin m → R)
    (σ : Equiv.Perm (Fin m)) :
    vandermondeOf (fun i => v (σ i)) = (((Equiv.Perm.sign σ : ℤˣ) : ℤ) : R) * vandermondeOf v := by
  rw [vandermondeOf_eq_det, vandermondeOf_eq_det]
  have : Matrix.vandermonde (fun i => -v (σ i)) =
      (Matrix.vandermonde (fun i => -v i)).submatrix σ id := by
    ext i j; rfl
  rw [this, Matrix.det_permute]

theorem blockPermute_blockPermute (f N : ℕ) (v w : Fin f → Equiv.Perm (Fin N)) (H : RootRing f N) :
    blockPermute f N v (blockPermute f N w H) = blockPermute f N (v * w) H := by
  simp only [blockPermute, rename_rename]
  rfl

theorem blockSign_mul (f N : ℕ) (v w : Fin f → Equiv.Perm (Fin N)) :
    blockSign f N (v * w) = blockSign f N v * blockSign f N w := by
  simp only [blockSign, ← Finset.prod_mul_distrib, Pi.mul_apply, Equiv.Perm.sign_mul, Units.val_mul,
    Int.cast_mul]

theorem blockSign_mul_self (f N : ℕ) (w : Fin f → Equiv.Perm (Fin N)) :
    blockSign f N w * blockSign f N w = 1 := by
  simp only [blockSign, ← Finset.prod_mul_distrib]
  refine Finset.prod_eq_one (fun τ _ => ?_)
  rw [← Int.cast_mul, ← Units.val_mul, Int.units_mul_self, Units.val_one, Int.cast_one]

theorem blockPermute_X (f N : ℕ) (w : Fin f → Equiv.Perm (Fin N)) (τ : Fin f) (i : Fin N) :
    blockPermute f N w (X (τ, i)) = X (τ, w τ i) := by
  simp [blockPermute]

theorem blockPermute_blockVandermonde (f N : ℕ) (w : Fin f → Equiv.Perm (Fin N)) :
    blockPermute f N w (blockVandermonde f N) = blockSign f N w • blockVandermonde f N := by
  simp only [blockVandermonde, map_prod]
  have h1 : ∀ τ : Fin f, blockPermute f N w (vandermondeOf fun i : Fin N => (X (τ, i) : RootRing f N)) =
      (((Equiv.Perm.sign (w τ) : ℤˣ) : ℤ) : RootRing f N) *
        vandermondeOf fun i : Fin N => (X (τ, i) : RootRing f N) := by
    intro τ
    have : blockPermute f N w (vandermondeOf fun i : Fin N => (X (τ, i) : RootRing f N)) =
        vandermondeOf fun i : Fin N => (X (τ, w τ i) : RootRing f N) := by
      simp only [vandermondeOf, map_prod, map_sub, blockPermute_X]
    rw [this]
    exact vandermondeOf_perm (fun i : Fin N => (X (τ, i) : RootRing f N)) (w τ)
  rw [Finset.prod_congr rfl (fun τ _ => h1 τ), Finset.prod_mul_distrib, Algebra.smul_def,
    blockSign, map_prod]
  simp

theorem blockVandermonde_ne_zero (f N : ℕ) : blockVandermonde f N ≠ 0 := by
  simp only [blockVandermonde, vandermondeOf]
  refine Finset.prod_ne_zero_iff.mpr (fun τ _ => Finset.prod_ne_zero_iff.mpr
    (fun i _ => Finset.prod_ne_zero_iff.mpr (fun j hj => ?_)))
  rw [sub_ne_zero]
  intro h
  have := X_injective h
  simp only [Prod.mk.injEq, true_and] at this
  rw [Finset.mem_Ioi] at hj
  exact (ne_of_lt hj) this

theorem blockPermute_antisymmetrize (f N : ℕ) (v : Fin f → Equiv.Perm (Fin N)) (H : RootRing f N) :
    blockPermute f N v (antisymmetrize f N H) = blockSign f N v • antisymmetrize f N H := by

  simp only [antisymmetrize, map_sum, map_smul, blockPermute_blockPermute, Finset.smul_sum, smul_smul]
  refine Fintype.sum_equiv (Equiv.mulLeft v) _ _ (fun w => ?_)
  simp only [Equiv.coe_mulLeft]
  congr 1
  rw [blockSign_mul, ← mul_assoc, blockSign_mul_self, one_mul]

theorem card_blockPerm (f N : ℕ) : Fintype.card (Fin f → Equiv.Perm (Fin N)) = N.factorial ^ f := by
  simp [Fintype.card_perm]

end

end Flag

namespace Flag

open MvPolynomial Finset

noncomputable section

section Deriv

variable {σ ι : Type*}

end Deriv

section Indices

variable {f r a : ℕ}

end Indices

section Rest

variable (f r a : ℕ) (c : SmallBlock)

theorem flagIntegral_C_mul (f N : ℕ) (x : ℚ) (Φ : RootRing f N) :
    flagIntegral f N (C x * Φ) = x * flagIntegral f N Φ := by
  simp only [flagIntegral, coeff_C_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl (fun _ _ => ?_)
  ring

theorem flagIntegral_add (f N : ℕ) (Φ Ψ : RootRing f N) :
    flagIntegral f N (Φ + Ψ) = flagIntegral f N Φ + flagIntegral f N Ψ := by
  simp only [flagIntegral, MvPolynomial.coeff_add, add_mul, Finset.sum_add_distrib]

theorem flagIntegral_zero (f N : ℕ) : flagIntegral f N 0 = 0 := by
  simp [flagIntegral]

end Rest

end

end Flag

open MvPolynomial

namespace Flag

open MvPolynomial Finset

end Flag

end RestTerms

end GroundTheory.Heights₂.Heights
