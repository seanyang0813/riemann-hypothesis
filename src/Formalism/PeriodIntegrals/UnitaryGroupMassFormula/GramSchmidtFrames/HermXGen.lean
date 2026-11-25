module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.IsotropicSubspaceEqPrimed
import Formalism.HermitianCurvature.BigCellVanishingOfCommute
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFdGramCut

@[expose] public section

open MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6
open Matrix

noncomputable section

namespace PI.UnitaryGroupMassFormula.GsFr
open PI.UnitaryGroupMassFormula.DLm.Gram

section iso

variable {k r : ℕ}

lemma herm_X_gen {x w : Fin (2 * r + k + 1) → ℂ} (hx : x ∈ Xsp k r) (hw : ∀ i : Fin (2 * r + k + 1), r + k < i.val → w i = 0) :
    herm (Hpk k r) x w = 0 := by
  have hlo : ∀ j : Fin (2 * r + k + 1), r ≤ j.val → x j = 0 := by
    intro j hj
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨a, rfl⟩ := hy
      have hne : j ≠ eI k r a := by
        intro h
        have := congrArg Fin.val h
        simp [eI] at this
        omega
      simp [bvec, hne]
    | zero => rfl
    | add y z _ _ hy hz => simp [hy, hz]
    | smul c y _ hy => simp [hy]
  unfold herm
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum, Pi.star_apply]
  refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
  by_cases hj : r ≤ j.val
  · rw [hlo j hj, mul_zero, mul_zero]
  · push_neg at hj
    by_cases hi : r + k < i.val
    · rw [hw i hi, star_zero, zero_mul]
    · push_neg at hi
      have hH : Hpk k r i j = 0 := by
        unfold Hpk
        simp only [Fin.ext_iff]
        split_ifs <;> first | rfl | (exfalso; omega)
      rw [hH, zero_mul, mul_zero]

lemma herm_wb_X {x w : Fin (2 * r + k + 1) → ℂ} (hx : x ∈ Xsp k r) (hw : ∀ i : Fin (2 * r + k + 1), r + k < i.val → w i = 0) :
    herm (Hpk k r) w x = 0 := by
  have hlo : ∀ j : Fin (2 * r + k + 1), r ≤ j.val → x j = 0 := by
    intro j hj
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨a, rfl⟩ := hy
      have hne : j ≠ eI k r a := by
        intro h
        have := congrArg Fin.val h
        simp [eI] at this
        omega
      simp [bvec, hne]
    | zero => rfl
    | add y z _ _ hy hz => simp [hy, hz]
    | smul c y _ hy => simp [hy]
  unfold herm
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum, Pi.star_apply]
  refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
  by_cases hi : r ≤ i.val
  · rw [hlo i hi, star_zero, zero_mul]
  · push_neg at hi
    by_cases hj : r + k < j.val
    · rw [hw j hj, mul_zero, mul_zero]
    · push_neg at hj
      have hH : Hpk k r i j = 0 := by
        unfold Hpk
        simp only [Fin.ext_iff]
        split_ifs <;> first | rfl | (exfalso; omega)
      rw [hH, zero_mul, mul_zero]

lemma X_hi {x : Fin (2 * r + k + 1) → ℂ} (hx : x ∈ Xsp k r) : ∀ i : Fin (2 * r + k + 1), r + k < i.val → x i = 0 := by
  intro i hi
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨a, rfl⟩ := hy
    have hne : i ≠ eI k r a := by
      intro h
      have := congrArg Fin.val h
      simp [eI] at this
      omega
    simp [bvec, hne]
  | zero => rfl
  | add y z _ _ hy hz => simp [hy, hz]
  | smul c y _ hy => simp [hy]

lemma wb_hi {x : Fin (2 * r + k + 1) → ℂ} (hx : inWb k r x) : ∀ i : Fin (2 * r + k + 1), r + k < i.val → x i = 0 := by
  intro i hi
  exact hx i (Or.inr hi)

end iso

end PI.UnitaryGroupMassFormula.GsFr
