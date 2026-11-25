module

public import Formalism.HermitianCurvature.StatementWd
public import Mathlib.CategoryTheory.Category.Basic

@[expose] public section

namespace Formalism.FourierDecayAlt.P.Wd2

open Matrix Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.W Formalism.FourierDecayAlt.Wd

section Units

variable {A S : Type} [Ring A] [Fintype S] [DecidableEq S]

end Units

section Entries

variable {K B : Type} [CommRing K] [Ring B] [Algebra K B]

end Entries

section Slots

variable {K A S : Type} [Field K] [Ring A] [Algebra K A] [Fintype S] [DecidableEq S]

end Slots

section Start

variable {K A S : Type} [Field K] [Ring A] [Algebra K A] [Fintype S] [DecidableEq S]

theorem io_smul (c : K) (x : A) : (io (c • x) : SlopeTestRemainingChoices S A) = c • io x := by
  ext x y
  simp only [io, Matrix.scalar_apply, Matrix.smul_apply, Matrix.diagonal_apply]
  split_ifs <;> simp

theorem liftMatrix_eq_map_scalar (M : M2 A) : (lift0 M : M2 (SlopeTestRemainingChoices S A)) = M.map (Matrix.scalar (Ix S)) := rfl

theorem firstEmbed_liftMatrix (M : M2 A) :
    E1 (lift0 M : M2 (SlopeTestRemainingChoices S A)) = (E1 M).map (Matrix.scalar (Ix S)) := by
  ext p q
  simp only [E1, lift0, io, Matrix.of_apply, Matrix.map_apply, Matrix.map_apply]
  split_ifs <;> simp

theorem secondEmbed_liftMatrix (M : M2 A) :
    E2 (lift0 M : M2 (SlopeTestRemainingChoices S A)) = (E2 M).map (Matrix.scalar (Ix S)) := by
  ext p q
  simp only [E2, lift0, io, Matrix.of_apply, Matrix.map_apply]
  split_ifs <;> simp

theorem core_map (c : K) :
    c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) (SlopeTestRemainingChoices S A)) - Pf (SlopeTestRemainingChoices S A) =
      (c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Pf A).map (Matrix.scalar (Ix S)) := by
  have hsc : ∀ x : A, Matrix.scalar (Ix S) (c • x) = c • Matrix.scalar (Ix S) x := io_smul c
  ext p q : 1
  simp only [Pf, Matrix.map_apply, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply,
    Matrix.of_apply]
  split_ifs <;> simp [map_sub, map_neg, hsc]

theorem J_map : YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) = (YangianSpanCharacter.T.J A).map (Matrix.scalar (Ix S)) := by
  ext i j : 1
  fin_cases i <;> fin_cases j <;> simp [YangianSpanCharacter.T.J] <;>
    (try (ext x y; simp only [Matrix.neg_apply, Matrix.one_apply, Matrix.diagonal_apply]; split_ifs <;> simp))

theorem smulJ_map (c : K) :
    algebraMap K (SlopeTestRemainingChoices S A) c • YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) =
      (algebraMap K A c • YangianSpanCharacter.T.J A).map (Matrix.scalar (Ix S)) := by
  have hsc : ∀ x : A, Matrix.scalar (Ix S) (c • x) = c • Matrix.scalar (Ix S) x := io_smul c
  ext i j : 1
  fin_cases i <;> fin_cases j <;> simp [YangianSpanCharacter.T.J, Algebra.algebraMap_eq_smul_one, hsc] <;>
    (try (ext x y; simp only [Matrix.neg_apply, Matrix.one_apply, Matrix.diagonal_apply,
      Matrix.smul_apply]; split_ifs <;> simp))

theorem rtt_lift0 (M N : M2 A) (c : K)
    (H : (c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Pf A) * E1 M * E2 N =
      E2 N * E1 M * (c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Pf A)) :
    (c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) (SlopeTestRemainingChoices S A)) - Pf (SlopeTestRemainingChoices S A)) *
        E1 (lift0 M) * E2 (lift0 N) =
      E2 (lift0 N) * E1 (lift0 M) *
        (c • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) (SlopeTestRemainingChoices S A)) - Pf (SlopeTestRemainingChoices S A)) := by
  rw [core_map, firstEmbed_liftMatrix, secondEmbed_liftMatrix, ← Matrix.map_mul, ← Matrix.map_mul, ← Matrix.map_mul,
    ← Matrix.map_mul, H]

theorem det_lift0 (M M' : M2 A) (c : K) (H : M'ᵀ * YangianSpanCharacter.T.J A * M = algebraMap K A c • YangianSpanCharacter.T.J A) :
    (lift0 M' : M2 (SlopeTestRemainingChoices S A))ᵀ * YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * lift0 M = algebraMap K (SlopeTestRemainingChoices S A) c • YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) := by
  rw [smulJ_map, liftMatrix_eq_map_scalar, liftMatrix_eq_map_scalar, J_map, ← Matrix.transpose_map, ← Matrix.map_mul,
    ← Matrix.map_mul, H]

theorem det_lift0' (M M' : M2 A) (c : K) (H : M * YangianSpanCharacter.T.J A * M'ᵀ = algebraMap K A c • YangianSpanCharacter.T.J A) :
    (lift0 M : M2 (SlopeTestRemainingChoices S A)) * YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * (lift0 M')ᵀ = algebraMap K (SlopeTestRemainingChoices S A) c • YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) := by
  rw [smulJ_map, liftMatrix_eq_map_scalar, liftMatrix_eq_map_scalar, J_map, ← Matrix.transpose_map, ← Matrix.map_mul,
    ← Matrix.map_mul, H]

theorem liftMatrix_conjTranspose [StarRing A] (M : M2 A) :
    (lift0 M : M2 (SlopeTestRemainingChoices S A))ᴴ = lift0 Mᴴ := by
  ext i j x y
  simp [lift0, io, Matrix.conjTranspose_apply, Matrix.scalar_apply, Matrix.diagonal_apply,
    Matrix.star_apply]
  split_ifs <;> simp_all [@eq_comm _ y x]

theorem d0_one : (d0 (1 : SlopeTestRemainingChoices S A)) = 1 := by
  unfold d0
  exact Matrix.diagonal_one

end Start

end Formalism.FourierDecayAlt.P.Wd2

namespace Formalism.FourierDecayAlt.P

open Matrix Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.W Formalism.FourierDecayAlt.Wd

theorem initial_module_structure : Formalism.FourierDecayAlt.Wd.StartModule := by
  intro K A S _ _ _ _ _ _ _ _ QQ q hS
  refine ⟨star_one _, fun Y _ hY => ?_, fun Y _ Y' _ => ?_, fun Y _ _ => ?_, hS.q_real⟩
  · rw [Formalism.FourierDecayAlt.P.Wd2.d0_one, one_mul, Formalism.FourierDecayAlt.P.Wd2.liftMatrix_conjTranspose, hS.herm Y hY]
  · exact Formalism.FourierDecayAlt.P.Wd2.rtt_lift0 (QQ Y') (QQ Y) (Y' - Y) (hS.rtt Y Y')
  · exact ⟨Formalism.FourierDecayAlt.P.Wd2.det_lift0 (QQ Y) (QQ (Y + 1)) (q Y) (hS.det Y).1,
      Formalism.FourierDecayAlt.P.Wd2.det_lift0' (QQ Y) (QQ (Y + 1)) (q Y) (hS.det Y).2⟩

end Formalism.FourierDecayAlt.P
