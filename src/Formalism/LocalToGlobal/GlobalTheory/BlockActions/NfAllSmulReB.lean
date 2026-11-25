module

public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ArchimedeanSignatureMatchingOfTrivialBranchingSymm
public import Formalism.LocalToGlobal.HermitianForms.TiedBrProof
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.BrExistsOfRestS
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ExistsOnOfPosDef
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.HformSmulRightB
public import Formalism.LocalToGlobal.GlobalTheory.NfAllSmulSelfRe
import Formalism.LocalToGlobal.HermitianForms.TiedBrCl
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LowerTieChain
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix Formalism.UG

section Gen

variable {ι : Type} [Fintype ι] {n : ℕ}

theorem fnOf_trG (G : ι → Matrix (Fin n) (Fin n) ℂ) (s : ι → ℤ) (M g : ι → Matrix (Fin n) (Fin n) ℂ)
    (hg : ∀ τ, IsUnit (g τ).det) (P : MvPolynomial (ι × Fin n × Fin n) ℂ) (y : Frames G) :
    fnOf G s M P (y.tr g hg) = fnOf G s (fun τ => M τ * g τ) P y := by
  simp only [fnOf, LinearMap.coe_mk, AddHom.coe_mk, Frames.tr, Matrix.mul_assoc]

end Gen

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem shift_lamTr : shiftOf (lamT u D.R.m) = fun τ => (lamTr D u τ).detShift := by
  funext τ
  have hk := D.R.m_add_three_le_k
  have hN : D.R.N D.R.m = D.R.k + D.R.m * (D.R.t + 1) := rfl
  have h1 : 0 < D.R.N D.R.m := by omega
  simp only [shiftOf, lamT, lamTr]
  rw [detShift_shW _ _ h1, detShift_wSh _ _ h1]
  rfl

section Frame


variable (D) in
abbrev eN : Fin (D.R.N D.R.m - 1) ⊕ Fin 1 ≃ Fin (D.R.N D.R.m) := finSumFinEquiv.trans (finCongr (Nm_succ D.R))

theorem lastGL_eq (a : ℂˣ) : ((Formalism.MainNotions.PrimeDegreeVariant.lastGL ℂ (D.R.N D.R.m) a : GL (Fin (D.R.N D.R.m)) ℂ) : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ) =
    Matrix.reindex (eN D) (eN D) (Matrix.fromBlocks 1 0 0 (Matrix.of fun _ _ => (a : ℂ))) := by
  have hN := Nm_succ D.R
  ext x y
  obtain ⟨p, rfl⟩ := (eN D).surjective x
  obtain ⟨q, rfl⟩ := (eN D).surjective y
  rw [Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_apply_apply, Equiv.symm_apply_apply]
  show Matrix.diagonal _ _ _ = _
  rcases p with i | i <;> rcases q with j | j
  · have hi' : ¬ ((i : ℕ) + 1 = D.R.N D.R.m) := by have := i.isLt; omega
    by_cases hij : i = j
    · subst hij; simp [hi']
    · have hne : (eN D) (Sum.inl i) ≠ (eN D) (Sum.inl j) := fun h => hij (Sum.inl_injective ((eN D).injective h))
      simp [hij]
  · have := i.isLt
    simp [Matrix.diagonal_apply, Fin.ext_iff]; omega
  · have := j.isLt
    simp [Matrix.diagonal_apply, Fin.ext_iff]; omega
  · have hi : i = 0 := Subsingleton.elim _ _
    have hj : j = 0 := Subsingleton.elim _ _
    subst hi hj
    simp [hN]

def dOT (u : D.what₂.Word) (o' : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) ℂ) :
    Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ :=
  Matrix.reindex (eN D) (eN D) (Matrix.fromBlocks o' 0 0 (Matrix.of fun _ _ => ((sqrtT D u : ℂˣ) : ℂ)))

theorem reindex_mulB {a b : Type} [Fintype a] [Fintype b] {c : Type} [Semiring c] (e : a ≃ b) (X Y : Matrix a a c) :
    Matrix.reindex e e X * Matrix.reindex e e Y = Matrix.reindex e e (X * Y) := by
  simp only [Matrix.reindex_apply, Matrix.submatrix_mul_equiv]

theorem sqrtT_mul_self : ((sqrtT D u : ℂˣ) : ℂ) * ((sqrtT D u : ℂˣ) : ℂ) = ((D.mem u).A.T : ℂ) := by
  simp only [sqrtT, Units.val_mk0]
  rw [← Complex.ofReal_mul, Real.mul_self_sqrt (Nat.cast_nonneg _)]
  push_cast; rfl

theorem star_sqrtT : star ((sqrtT D u : ℂˣ) : ℂ) = ((sqrtT D u : ℂˣ) : ℂ) := by
  simp only [sqrtT, Units.val_mk0, Complex.star_def, Complex.conj_ofReal]

theorem dOT_on (o' G' : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) ℂ) (ho : o'ᴴ * G' * o' = 1) :
    (dOT u o')ᴴ * Matrix.reindex (eN D) (eN D) (Matrix.fromBlocks G' 0 0 (Matrix.of fun _ _ => ((D.mem u).A.T : ℂ)⁻¹)) *
      dOT u o' = 1 := by
  have hT : ((D.mem u).A.T : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (D.mem u).A.T_prime.ne_zero
  unfold dOT
  rw [Matrix.conjTranspose_reindex, Matrix.fromBlocks_conjTranspose, Matrix.conjTranspose_zero, Matrix.conjTranspose_zero,
    reindex_mulB, reindex_mulB, Matrix.fromBlocks_multiply, Matrix.fromBlocks_multiply]
  rw [show (1 : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ) = Matrix.reindex (eN D) (eN D) 1 by
    rw [Matrix.reindex_apply, Matrix.submatrix_one_equiv]]
  congr 1
  rw [← Matrix.fromBlocks_one]
  simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, ho]
  congr 1
  ext i j
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.of_apply, Fin.sum_univ_one, Matrix.one_apply, Fin.fin_one_eq_zero,
    if_true, star_sqrtT]
  rw [show ((sqrtT D u : ℂˣ) : ℂ) * ((D.mem u).A.T : ℂ)⁻¹ * ((sqrtT D u : ℂˣ) : ℂ) =
    ((sqrtT D u : ℂˣ) : ℂ) * ((sqrtT D u : ℂˣ) : ℂ) * ((D.mem u).A.T : ℂ)⁻¹ by ring, sqrtT_mul_self, mul_inv_cancel₀ hT]

end Frame

section Main

theorem nfAll_smul_reB {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n) (a : ℂ) (p : MvPolynomial (ι × Fin n × Fin n) ℂ) :
    (Formalism.L2.Forms.nfAll lam (a • p) (a • p)).re = ‖a‖ ^ 2 * (Formalism.MainNotions.product_first_zeroth_parts.nfAll lam p p).re :=
  Formalism.L2.GlobalTheoryTheory.ColValS.nfAll_smul_self_re lam a p

end Main

end Formalism.L2.GlobalTheoryTheory.Br
