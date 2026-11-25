module

public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility

section general

variable {σ R : Type*} [CommRing R]

end general

section what₂

variable {R : Type*} [CommRing R] {r n : ℕ}

lemma tsact_rowAct_X (G : Matrix (Fin r) (Fin r) R) (v : Fin r × Fin n) :
    rowAct R G (X v) = ∑ b : Fin r, C (G v.1 b) * X (b, v.2) := by
  simp [rowAct]

lemma tsact_coeff_zero (G : Matrix (Fin r) (Fin r) R) (h : MvPolynomial (Fin r × Fin n) R) :
    AddMonoidAlgebra.coeff (rowAct R G h) 0 = AddMonoidAlgebra.coeff h 0 := by
  show MvPolynomial.constantCoeff (rowAct R G h) = MvPolynomial.constantCoeff h
  induction h using MvPolynomial.induction_on
  next a => simp [rowAct]
  next p q hp hq => simp only [map_add (f := _), hp, hq]
  next p v hp => simp [rowAct]

lemma tsact_chain (G : Matrix (Fin r) (Fin r) R) (b : Fin r) (s : Fin n) (h : MvPolynomial (Fin r × Fin n) R) :
    pderiv (b, s) (rowAct R G h) = ∑ a : Fin r, G a b • rowAct R G (pderiv (a, s) h) := by
  classical
  induction h using MvPolynomial.induction_on with
  | C a => simp [rowAct]
  | add p q hp hq => simp only [map_add (f := _), hp, hq, smul_add, Finset.sum_add_distrib]
  | mul_X p v hp =>
    obtain ⟨c, t⟩ := v
    have hL : pderiv (b, s) (∑ d : Fin r, C (G c d) * X (d, t) : MvPolynomial (Fin r × Fin n) R)
        = if t = s then C (G c b) else 0 := by

      rw [map_sum]
      simp only [pderiv_C_mul, pderiv_X, Pi.single_apply, Prod.mk.injEq]
      by_cases hts : t = s
      · subst hts
        simp [eq_comm]
      · simp [hts]
    have hR : ∑ a : Fin r, G a b • (rowAct R G p * rowAct R G (pderiv (a, s) (X (c, t))))
        = rowAct R G p * (if t = s then C (G c b) else 0) := by
      simp only [pderiv_X, Pi.single_apply, Prod.mk.injEq]
      by_cases hts : t = s
      · subst hts
        simp [apply_ite, Finset.sum_ite_eq, smul_eq_C_mul, mul_comm]
      · simp [hts]
    simp only [map_mul, Derivation.leibniz, smul_eq_mul, map_add (f := _), tsact_rowAct_X, hL, hp]
    simp only [smul_add, Finset.sum_add_distrib]
    rw [hR]
    simp only [Finset.mul_sum, Finset.sum_mul, mul_smul_comm]

end what₂

theorem fock_pairing_row_action : FockRRowAct := by
  intro R _ r n g P
  change ∀ Q, FockPairing.pair (rowAct R g P) Q = FockPairing.pair P (rowAct R g.transpose Q)
  induction P using MvPolynomial.induction_on with
  | C a =>
    intro Q
    have h1 : rowAct R g (C a : MvPolynomial (Fin r × Fin n) R) = C a := by simp [rowAct]
    rw [h1, C_apply, FockPairing.pair_monomial_left, FockPairing.pair_monomial_left, tsact_coeff_zero]
  | add p q hp hq =>
    intro Q
    rw [map_add (f := _), FockPairing.pair_add_left, FockPairing.pair_add_left, hp, hq]
  | mul_X p v hp =>
    intro Q
    rw [map_mul, tsact_rowAct_X, Finset.mul_sum, FockPairing.pair_sum_left,
      FockPairing.pair_mul_X, tsact_chain, FockPairing.pair_sum_right]
    refine Finset.sum_congr rfl fun b _ => ?_
    have e : rowAct R g p * (C (g v.1 b) * X (b, v.2)) = g v.1 b • (rowAct R g p * X (b, v.2)) := by
      rw [smul_eq_C_mul]; ring
    rw [e, FockPairing.pair_smul_left, FockPairing.pair_mul_X, hp,
      FockPairing.pair_smul_right, Matrix.transpose_apply]

end Formalism.L2.G.Model.TS
