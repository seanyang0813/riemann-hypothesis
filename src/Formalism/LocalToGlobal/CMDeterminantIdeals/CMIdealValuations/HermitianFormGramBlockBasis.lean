module

public import Formalism.LocalToGlobal.CMDeterminantIdeals.StatementS

@[expose] public section

noncomputable section

namespace Formalism.L2.LamCM

open NumberField IsDedekindDomain IsLocalRing Matrix
open scoped nonZeroDivisors ComplexOrder

theorem dot_basis_vector_diag {k : ℕ} (M : Matrix (Fin k) (Fin k) ℂ) (j : Fin k) :
    star ((1 : Matrix (Fin k) (Fin k) ℂ) j) ⬝ᵥ (M *ᵥ (1 : Matrix (Fin k) (Fin k) ℂ) j) = M j j := by
  simp [dotProduct, mulVec, Matrix.one_apply]

section Gram

variable {K : Type} [Field K] [NumberField K] {B : Type} {m : B → ℕ} {g : ℕ}

theorem gramBlock_eq (e : (Σ b, Fin (m b)) ≃ Fin g) (U : Matrix (Fin g) (Fin g) K) (H : Matrix (Fin g) (Fin g) ℂ)
    (σ : K →+* ℂ) (b : B) :
    gramBlock e U H σ b = (((U.map σ).submatrix (fun j => e ⟨b, j⟩) id)ᵀ)ᴴ * H *
      ((U.map σ).submatrix (fun j => e ⟨b, j⟩) id)ᵀ := by
  rw [Matrix.mul_assoc]
  ext j j'
  simp [gramBlock, Matrix.mul_apply, dotProduct, mulVec, ReciprocityTheory.MultiplicativeHeights.embVec]

theorem gramBlock_posDef (e : (Σ b, Fin (m b)) ≃ Fin g) (U : Matrix (Fin g) (Fin g) K)
    (H : Matrix (Fin g) (Fin g) ℂ) (σ : K →+* ℂ) (b : B) (hH : H.PosDef) (hU : U.det ≠ 0) :
    (gramBlock e U H σ b).PosDef := by
  classical
  rw [gramBlock_eq]
  refine hH.conjTranspose_mul_mul_same ?_
  rw [Matrix.mulVec_injective_iff]
  have hdet : (U.map σ).det ≠ 0 := by
    rw [show U.map σ = σ.mapMatrix U from rfl, ← RingHom.map_det]
    exact (map_ne_zero σ).mpr hU
  have hli : LinearIndependent ℂ (U.map σ).row :=
    Matrix.linearIndependent_rows_of_isUnit ((Matrix.isUnit_iff_isUnit_det _).mpr (isUnit_iff_ne_zero.mpr hdet))
  have hinj : Function.Injective (fun j : Fin (m b) => e ⟨b, j⟩) := fun j j' h =>
    eq_of_heq (Sigma.mk.inj_iff.mp (e.injective h)).2
  exact hli.comp _ hinj

theorem hermitian_form_gramBlock_basis (e : (Σ b, Fin (m b)) ≃ Fin g) (U : Matrix (Fin g) (Fin g) K) (H : Matrix (Fin g) (Fin g) ℂ)
    (σ : K →+* ℂ) (b : B) (j : Fin (m b)) :
    ReciprocityTheory.MultiplicativeHeights.hq (gramBlock e U H σ b) ((1 : Matrix (Fin (m b)) (Fin (m b)) ℂ) j) =
      ReciprocityTheory.MultiplicativeHeights.hq H (ReciprocityTheory.MultiplicativeHeights.embVec σ (U (e ⟨b, j⟩))) := by
  simp only [ReciprocityTheory.MultiplicativeHeights.hq, dot_basis_vector_diag]
  rfl

end Gram

end Formalism.L2.LamCM
