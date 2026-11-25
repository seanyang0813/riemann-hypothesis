module

public import Formalism.PeriodIntegrals.QmBorderES
public import Formalism.PeriodIntegrals.QmColExp
public import Formalism.PeriodIntegrals.QmRowExp
public import Mathlib.GroupTheory.Perm.Fin
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmColExp
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowExp
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.SkipTwoSuccAboveComp

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderSignIdentity.SkipOneEqSuccAbove, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderSignIdentity.SkipOneEqSuccAbove =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderSignIdentity.SkipOneEqSuccAbove", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.SkipTwoSuccAboveComp\npublic import Formalism.PeriodIntegrals.QmBorderES\npublic import Formalism.PeriodIntegrals.QmColExp\npublic import Formalism.PeriodIntegrals.QmRowExp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.GroupTheory.Perm.Fin\n\n"}
section -- clump:auto
@[expose] public section

open Finset Formalism.REAL

noncomputable section

namespace PI.UnitaryGroupMassFormula.QmBorderES

theorem skip_one_eq_succAbove {t : ℕ} (i : Fin (t + 1)) (j : Fin t) : PI.skip1 i j = i.succAbove j := by
  ext
  simp only [PI.skip1, Fin.succAbove, Fin.lt_def, Fin.coe_castSucc]
  split_ifs <;> simp_all

theorem cons_comp_finRotate {n t : ℕ} (e : Fin n) (f : Fin t → Fin n) :
    PI.bE e f ∘ (finRotate (t + 1) : Fin (t + 1) → Fin (t + 1)) = PI.bS f e := by
  funext i
  refine Fin.lastCases ?_ (fun j => ?_) i
  · simp [PI.bE, PI.bS, finRotate_apply, Fin.last_add_one]
  · simp [PI.bE, PI.bS, finRotate_apply, Fin.coeSucc_eq_succ]

theorem neg_one_pow_mul_self (t : ℕ) : ((-1 : ℤ) ^ t) * ((-1 : ℤ) ^ t) = 1 := by
  rw [← mul_pow, neg_one_mul, neg_neg, one_pow]

theorem qminor_bE_eq {A : Type} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A) (e : Fin n)
    (f : Fin t → Fin n) (b : Fin (t + 1) → Fin n) (u : ℂ) :
    qminor E (PI.bE e f) b u = (((-1 : ℤ) ^ t : ℤ) : A) * qminor E (PI.bS f e) b u := by
  apply PI.UnitaryGroupMassFormula.QmBorderFull.Four.qminor_bE_eq

theorem qminor_bS_eq {A : Type} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A) (e : Fin n)
    (f : Fin t → Fin n) (b : Fin (t + 1) → Fin n) (u : ℂ) :
    qminor E (PI.bS f e) b u = (((-1 : ℤ) ^ t : ℤ) : A) * qminor E (PI.bE e f) b u := by
  rw [qminor_bE_eq E e f b u, ← mul_assoc, ← Int.cast_mul, neg_one_pow_mul_self, Int.cast_one, one_mul]

theorem Tm_of_ne {A : Type} [Ring A] [Algebra ℂ A] {n : ℕ} (E : Fin n → Fin n → A) (u : ℂ) {a b : Fin n}
    (h : a ≠ b) : Tm E u a b = E a b := by
  simp [Tm, h]

theorem zmul {A : Type} [Ring A] (z : ℤ) (y : A) : (z : A) * y = z • y := (zsmul_eq_mul y z).symm

theorem rowPart (hR : PI.ExpLastRow) {A : Type} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A)
    (hG : GlRel E) (e : Fin n) (f : Fin t → Fin n) (b : Fin (t + 1) → Fin n) (he : ∀ x, b x ≠ e) (u : ℂ) :
    qminor E (PI.bE e f) b u = ∑ x : Fin (t + 1), (((-1 : ℤ) ^ (x : ℕ) : ℤ) : A) *
      (qminor E f (b ∘ x.succAbove) (u - 1) * E e (b x)) := by
  have h1 : (PI.bS f e ∘ Fin.castSucc) = f := by funext j; simp [PI.bS]
  have h2 : PI.bS f e (Fin.last t) = e := by simp [PI.bS]
  rw [qminor_bE_eq, hR A n t E hG (PI.bS f e) b u, Finset.mul_sum]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [h1, h2, Tm_of_ne E u (he x).symm, ← mul_assoc, ← Int.cast_mul, pow_add, ← mul_assoc ((-1 : ℤ) ^ t),
    neg_one_pow_mul_self, one_mul]

theorem colPart (hF : PI.ExpFirstRow) {A : Type} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A)
    (hG : GlRel E) (e : Fin n) (f : Fin t → Fin n) (b : Fin (t + 1) → Fin n) (he : ∀ x, b x ≠ e) (u : ℂ) :
    qminor E (PI.bS f e) b u = ∑ x : Fin (t + 1), (((-1 : ℤ) ^ (t + (x : ℕ)) : ℤ) : A) *
      (E e (b x) * qminor E f (b ∘ x.succAbove) u) := by
  have h1 : (PI.bE e f ∘ Fin.succ) = f := by funext j; simp [PI.bE]
  have h2 : PI.bE e f 0 = e := by simp [PI.bE]
  rw [qminor_bS_eq, hF A n t E hG (PI.bE e f) b u, Finset.mul_sum]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [h1, h2, Tm_of_ne E (u - (t : ℂ)) (he x).symm, ← mul_assoc, ← Int.cast_mul, pow_add]

theorem comp_skip {n t : ℕ} (v : Fin (t + 1) → Fin n) (w : Fin (t + 1)) :
    (v ∘ PI.skip1 w : Fin t → Fin n) = v ∘ w.succAbove := by
  funext j
  exact congrArg v (skip_one_eq_succAbove w j)

theorem borderE_of (hC : PI.ExpFirstCol) (hR : PI.ExpLastRow) : PI.BorderE := by
  intro A _ _ n m E e es v hG hB u
  obtain ⟨_, _, hve, _⟩ := hB
  rw [hC A n m E (PI.bE e v) (PI.bE e v) u, Fin.sum_univ_succ]
  have hsucc : PI.bE e v ∘ Fin.succ = v := by funext j; simp [PI.bE]
  have h0 : PI.bE e v 0 = e := by simp [PI.bE]
  simp only [Fin.succAbove_zero, hsucc, h0, Fin.val_zero, pow_zero, Int.cast_one, one_mul]
  rw [sub_eq_add_neg (Tm E u e e * qminor E v v (u - 1)), ← Finset.sum_neg_distrib]
  congr 1
  refine Finset.sum_congr rfl fun w _ => ?_
  cases m with
  | zero => exact w.elim0
  | succ k =>
  have hrow : PI.bE e v ∘ (Fin.succ w).succAbove = PI.bE e (v ∘ w.succAbove) := by
    funext j
    refine Fin.cases ?_ (fun j => ?_) j
    · simp [PI.bE]
    · simp [PI.bE, Fin.succ_succAbove_succ]
  have hvw : PI.bE e v w.succ = v w := by simp [PI.bE]
  rw [hrow, hvw, Tm_of_ne E u (hve w), rowPart hR E hG e (v ∘ w.succAbove) v hve (u - 1),
    Finset.mul_sum, Finset.mul_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun x _ => ?_
  erw [comp_skip v w, comp_skip v x]
  rw [show u - 1 - 1 = u - 2 by ring]
  simp only [zmul, mul_smul_comm, smul_smul, Fin.val_succ, mul_assoc]
  rw [← neg_smul]
  congr 1
  ring

theorem borderS_of (hC : PI.ExpLastCol) (hF : PI.ExpFirstRow) : PI.BorderS := by
  intro A _ _ n m E e es v hG hB u
  obtain ⟨_, _, _, hves⟩ := hB
  rw [hC A n m E (PI.bS v es) (PI.bS v es) u, Fin.sum_univ_castSucc]
  have hcs : PI.bS v es ∘ Fin.castSucc = v := by funext j; simp [PI.bS]
  have hl : PI.bS v es (Fin.last m) = es := by simp [PI.bS]
  simp only [Fin.succAbove_last, hcs, hl, Fin.val_last]
  rw [pow_add, neg_one_pow_mul_self, Int.cast_one, one_mul, add_comm,
    sub_eq_add_neg (qminor E v v u * Tm E (u - (m : ℂ)) es es), ← Finset.sum_neg_distrib]
  congr 1
  refine Finset.sum_congr rfl fun w _ => ?_
  cases m with
  | zero => exact w.elim0
  | succ k =>
  have hrow : PI.bS v es ∘ (Fin.castSucc w).succAbove = PI.bS (v ∘ w.succAbove) es := by
    funext j
    refine Fin.lastCases ?_ (fun j => ?_) j
    · have : (Fin.castSucc w).succAbove (Fin.last k) = Fin.last (k + 1) := by
        rw [Fin.succAbove_of_le_castSucc _ _ (by simpa using Fin.le_last w), Fin.succ_last]
      simp [PI.bS, this]
    · simp [PI.bS, Fin.castSucc_succAbove_castSucc]
  have hvw : PI.bS v es (Fin.castSucc w) = v w := by simp [PI.bS]
  rw [hrow, hvw, Tm_of_ne E (u - ((k + 1 : ℕ) : ℂ)) (hves w), colPart hF E hG es (v ∘ w.succAbove) v hves u,
    Finset.sum_mul, Finset.mul_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun x _ => ?_
  erw [comp_skip v w, comp_skip v x]
  simp only [zmul, mul_smul_comm, smul_mul_assoc, smul_smul, Fin.coe_castSucc, mul_assoc]
  rw [← neg_smul]
  congr 1
  linear_combination (-(-1 : ℤ) ^ ((w : ℕ) + (x : ℕ))) * neg_one_pow_mul_self k

theorem qmBorderES_of (h1 : PI.QmColExp) (h2 : PI.QmRowExp) : PI.QmBorderES :=
  ⟨borderE_of h1.1 h2.2, borderS_of h1.2 h2.1⟩

end PI.UnitaryGroupMassFormula.QmBorderES
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderSignIdentity.SkipOneEqSuccAbove =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES", "h": "module\n\npublic import Formalism.PeriodIntegrals.QmBorderES\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmColExp\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowExp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderSignIdentity.SkipOneEqSuccAbove\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem quantum_minor_border_es : PI.QmBorderES := PI.UnitaryGroupMassFormula.QmBorderES.qmBorderES_of quantum_minor_column_expansion quantum_minor_row_expansion
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES =====
