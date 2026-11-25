module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.Development
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ShiftedGeneratorEqIteSmulAdd
public import Formalism.PeriodIntegrals.QmRowForm
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowIncreasing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowDecreasing, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.PermutedRowProductSplit, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowForm

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowDecreasing =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowDecreasing", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.Development\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ShiftedGeneratorEqIteSmulAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Formalism.REAL

noncomputable section

namespace PI.UnitaryGroupMassFormula.QmRowForm

theorem sign_sq_cast {A : Type*} [Ring A] {t : ℕ} (τ : Equiv.Perm (Fin t)) :
    ((Equiv.Perm.sign τ : ℤ) : A) * ((Equiv.Perm.sign τ : ℤ) : A) = 1 := by
  rw [← Int.cast_mul, ← Units.val_mul, Int.units_mul_self, Units.val_one, Int.cast_one]

theorem double_row_decreasing : DblDec := by
  unfold DblDec
  intro A _ _ n t E hE a b u
  have hcol := Formalism.REAL.quantumMinorColSkew_holds A n t E hE a b
  unfold doubleRowFormSum
  rw [Finset.sum_comm]
  rw [show (t.factorial : ℂ) • qminor E a b u = ∑ _τ : Equiv.Perm (Fin t), qminor E a b u by
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_perm, Fintype.card_fin, Nat.cast_smul_eq_nsmul]]
  refine Finset.sum_congr rfl fun τ _ => ?_
  have h := hcol τ u
  unfold qminor at h
  simp only [Function.comp_apply] at h
  have e : ∀ σ : Equiv.Perm (Fin t), (((Equiv.Perm.sign σ : ℤ) * (Equiv.Perm.sign τ : ℤ) : ℤ) : A) =
      ((Equiv.Perm.sign τ : ℤ) : A) * ((Equiv.Perm.sign σ : ℤ) : A) := by
    intro σ
    rw [Int.cast_mul, (Int.cast_commute _ _).eq]
  simp_rw [e, mul_assoc, ← Finset.mul_sum]
  rw [h, ← mul_assoc, sign_sq_cast, one_mul]
  rfl

end PI.UnitaryGroupMassFormula.QmRowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowDecreasing =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.PermutedRowProductSplit =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.PermutedRowProductSplit", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Formalism.REAL

noncomputable section

namespace PI.UnitaryGroupMassFormula.QmRowForm

def pF {A : Type*} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A) (a b : Fin t → Fin n)
    (x : Fin t → ℂ) (σ τ : Equiv.Perm (Fin t)) (k : Fin t) : A :=
  Tm E (x k) (a (σ k)) (b (τ k))

def pε {A : Type*} [Ring A] {t : ℕ} (σ τ : Equiv.Perm (Fin t)) : A :=
  (((Equiv.Perm.sign σ : ℤ) * (Equiv.Perm.sign τ : ℤ) : ℤ) : A)

theorem dblAlt_eq {A : Type*} [Ring A] [Algebra ℂ A] {n t : ℕ} (E : Fin n → Fin n → A)
    (a b : Fin t → Fin n) (x : Fin t → ℂ) :
    doubleRowFormSum E a b x = ∑ σ : Equiv.Perm (Fin t), ∑ τ : Equiv.Perm (Fin t),
      pε σ τ * (List.ofFn (pF E a b x σ τ)).prod := rfl

theorem perm_Tm_comm {A : Type*} [Ring A] [Algebra ℂ A] {n : ℕ} (E : Fin n → Fin n → A) (x y : ℂ)
    (a b c d : Fin n) :
    Tm E x a b * Tm E y c d - Tm E y c d * Tm E x a b = E a b * E c d - E c d * E a b := by
  have cen : ∀ (u : ℂ) (p q : Fin n) (z : A),
      (if p = q then algebraMap ℂ A u else 0) * z = z * (if p = q then algebraMap ℂ A u else 0) := by
    intro u p q z
    split_ifs
    · exact Algebra.commutes u z
    · simp
  unfold Tm
  have h1 := cen x a b (E c d)
  have h2 := cen y c d (E a b)
  have h3 := cen x a b (if c = d then algebraMap ℂ A y else 0)
  generalize (if a = b then algebraMap ℂ A x else 0) = c1 at h1 h3 ⊢
  generalize (if c = d then algebraMap ℂ A y else 0) = c2 at h2 h3 ⊢
  simp only [add_mul, mul_add]
  rw [h1, h2, h3]
  abel

theorem perm_fix {m : ℕ} (i : Fin m) (k : Fin (m + 1)) (h1 : (k : ℕ) ≠ i) (h2 : (k : ℕ) ≠ (i : ℕ) + 1) :
    Equiv.swap i.castSucc i.succ k = k := by
  apply Equiv.swap_apply_of_ne_of_ne
  · intro h
    apply h1
    rw [h]
    simp
  · intro h
    apply h2
    rw [h]
    simp

private lemma sum_cf_mul_sum_cf_mul_eq_sum_sum_toReal_mul {A : Type*} [Ring A] {m : ℕ} (F : Fin (m + 1) → A) (i : Fin m) :
    (List.ofFn F).prod = ((List.ofFn F).take (i : ℕ)).prod * (F i.castSucc * F i.succ) *
      ((List.ofFn F).drop ((i : ℕ) + 2)).prod := by
  have h0 : (i : ℕ) < (List.ofFn F).length := by simp
  have h1 : (i : ℕ) + 1 < (List.ofFn F).length := by simp
  conv_lhs => rw [← List.take_append_drop (i : ℕ) (List.ofFn F)]
  rw [List.drop_eq_getElem_cons h0, List.drop_eq_getElem_cons h1]
  simp only [List.prod_append, List.prod_cons, List.getElem_ofFn, mul_assoc]
  rfl

private lemma ofFn_take_drop_eq_of_eq_off_pair {A : Type*} {m : ℕ} (F G : Fin (m + 1) → A) (i : Fin m)
    (h : ∀ k : Fin (m + 1), (k : ℕ) ≠ i → (k : ℕ) ≠ (i : ℕ) + 1 → F k = G k) :
    (List.ofFn F).take (i : ℕ) = (List.ofFn G).take (i : ℕ) ∧
      (List.ofFn F).drop ((i : ℕ) + 2) = (List.ofFn G).drop ((i : ℕ) + 2) := by
  constructor
  · apply List.ext_getElem (by simp)
    intro j hj1 hj2
    simp only [List.getElem_take, List.getElem_ofFn]
    apply h <;> simp at hj1 ⊢ <;> omega
  · apply List.ext_getElem (by simp)
    intro j hj1 hj2
    simp only [List.getElem_drop, List.getElem_ofFn]
    apply h <;> simp <;> omega

theorem perm_split_swap {A : Type*} [Ring A] {m : ℕ} (F : Fin (m + 1) → A) (i : Fin m) :
    (List.ofFn F).prod - (List.ofFn (F ∘ Equiv.swap i.castSucc i.succ)).prod =
      ((List.ofFn F).take (i : ℕ)).prod * (F i.castSucc * F i.succ - F i.succ * F i.castSucc) *
        ((List.ofFn F).drop ((i : ℕ) + 2)).prod := by
  rw [sum_cf_mul_sum_cf_mul_eq_sum_sum_toReal_mul F i, sum_cf_mul_sum_cf_mul_eq_sum_sum_toReal_mul (F ∘ Equiv.swap i.castSucc i.succ) i]
  obtain ⟨ht, hd⟩ := ofFn_take_drop_eq_of_eq_off_pair (F ∘ Equiv.swap i.castSucc i.succ) F i
    (fun k h1 h2 => by simp [perm_fix i k h1 h2])
  rw [ht, hd]
  simp only [Function.comp, Equiv.swap_apply_left, Equiv.swap_apply_right]
  noncomm_ring

def pL {A : Type*} [Ring A] [Algebra ℂ A] {n m : ℕ} (E : Fin n → Fin n → A) (a b : Fin (m + 1) → Fin n)
    (x : Fin (m + 1) → ℂ) (i : Fin m) (σ τ : Equiv.Perm (Fin (m + 1))) : A :=
  ((List.ofFn (pF E a b x σ τ)).take (i : ℕ)).prod

def pR {A : Type*} [Ring A] [Algebra ℂ A] {n m : ℕ} (E : Fin n → Fin n → A) (a b : Fin (m + 1) → Fin n)
    (x : Fin (m + 1) → ℂ) (i : Fin m) (σ τ : Equiv.Perm (Fin (m + 1))) : A :=
  ((List.ofFn (pF E a b x σ τ)).drop ((i : ℕ) + 2)).prod

def permutedRowProductSplitSum {A : Type*} [Ring A] {n m : ℕ} (E : Fin n → Fin n → A) (a b : Fin (m + 1) → Fin n) (i : Fin m)
    (σ τ : Equiv.Perm (Fin (m + 1))) : A :=
  if b (τ i.castSucc) = a (σ i.succ) then E (a (σ i.castSucc)) (b (τ i.succ)) else 0

def permutedRowProductSplit {A : Type*} [Ring A] {n m : ℕ} (E : Fin n → Fin n → A) (a b : Fin (m + 1) → Fin n) (i : Fin m)
    (σ τ : Equiv.Perm (Fin (m + 1))) : A :=
  if b (τ i.succ) = a (σ i.castSucc) then E (a (σ i.succ)) (b (τ i.castSucc)) else 0

theorem perm_swap {A : Type*} [Ring A] [Algebra ℂ A] {n m : ℕ} (E : Fin n → Fin n → A) (hE : GlRel E)
    (a b : Fin (m + 1) → Fin n) (x : Fin (m + 1) → ℂ) (i : Fin m) :
    doubleRowFormSum E a b (x ∘ Equiv.swap i.castSucc i.succ) = doubleRowFormSum E a b x := by
  set s := Equiv.swap i.castSucc i.succ with hs
  have hu : ((Equiv.Perm.sign s : ℤ) * (Equiv.Perm.sign s : ℤ)) = 1 := by
    rw [← Units.val_mul, Int.units_mul_self, Units.val_one]
  have hε : ∀ σ τ : Equiv.Perm (Fin (m + 1)), (pε (σ * s) (τ * s) : A) = pε σ τ := by
    intro σ τ
    unfold pε
    congr 1
    rw [Equiv.Perm.sign_mul, Equiv.Perm.sign_mul, Units.val_mul, Units.val_mul]
    linear_combination ((Equiv.Perm.sign σ : ℤ) * (Equiv.Perm.sign τ : ℤ)) * hu
  have hagree : ∀ σ τ : Equiv.Perm (Fin (m + 1)), ∀ k : Fin (m + 1), (k : ℕ) ≠ i →
      (k : ℕ) ≠ (i : ℕ) + 1 → pF E a b x (σ * s) (τ * s) k = pF E a b x σ τ k := by
    intro σ τ k h1 h2
    simp only [pF, Equiv.Perm.mul_apply, hs, perm_fix i k h1 h2]
  have hL : ∀ σ τ, pL E a b x i (σ * s) (τ * s) = pL E a b x i σ τ := by
    intro σ τ
    unfold pL
    rw [(ofFn_take_drop_eq_of_eq_off_pair _ _ i (hagree σ τ)).1]
  have hR : ∀ σ τ, pR E a b x i (σ * s) (τ * s) = pR E a b x i σ τ := by
    intro σ τ
    unfold pR
    rw [(ofFn_take_drop_eq_of_eq_off_pair _ _ i (hagree σ τ)).2]
  have hX : ∀ σ τ, permutedRowProductSplitSum E a b i (σ * s) (τ * s) = permutedRowProductSplit E a b i σ τ := by
    intro σ τ
    simp only [permutedRowProductSplitSum, permutedRowProductSplit, Equiv.Perm.mul_apply, hs, Equiv.swap_apply_left, Equiv.swap_apply_right]
  have h1 : doubleRowFormSum E a b (x ∘ s) =
      ∑ σ, ∑ τ, pε σ τ * (List.ofFn (pF E a b x σ τ ∘ s)).prod := by
    rw [dblAlt_eq, ← Equiv.sum_comp (Equiv.mulRight s)]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [← Equiv.sum_comp (Equiv.mulRight s)]
    refine Finset.sum_congr rfl fun τ _ => ?_
    simp only [Equiv.coe_mulRight]
    rw [hε]
    rfl
  have h2 : ∀ σ τ, (List.ofFn (pF E a b x σ τ)).prod - (List.ofFn (pF E a b x σ τ ∘ s)).prod =
      pL E a b x i σ τ * (permutedRowProductSplitSum E a b i σ τ - permutedRowProductSplit E a b i σ τ) * pR E a b x i σ τ := by
    intro σ τ
    rw [hs, perm_split_swap]
    unfold pL pR
    congr 2
    simp only [pF]
    rw [perm_Tm_comm, hE]
    rfl
  have h3 : ∑ σ, ∑ τ, pε σ τ * (pL E a b x i σ τ * permutedRowProductSplitSum E a b i σ τ * pR E a b x i σ τ) =
      ∑ σ, ∑ τ, pε σ τ * (pL E a b x i σ τ * permutedRowProductSplit E a b i σ τ * pR E a b x i σ τ) := by
    rw [← Equiv.sum_comp (Equiv.mulRight s)]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [← Equiv.sum_comp (Equiv.mulRight s)]
    refine Finset.sum_congr rfl fun τ _ => ?_
    simp only [Equiv.coe_mulRight]
    rw [hε, hL, hR, hX]
  rw [h1, dblAlt_eq]
  symm
  rw [← sub_eq_zero]
  calc (∑ σ, ∑ τ, pε σ τ * (List.ofFn (pF E a b x σ τ)).prod) -
        ∑ σ, ∑ τ, pε σ τ * (List.ofFn (pF E a b x σ τ ∘ s)).prod
      = ∑ σ, ∑ τ, (pε σ τ * (pL E a b x i σ τ * permutedRowProductSplitSum E a b i σ τ * pR E a b x i σ τ) -
          pε σ τ * (pL E a b x i σ τ * permutedRowProductSplit E a b i σ τ * pR E a b x i σ τ)) := by
        rw [← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun σ _ => ?_
        rw [← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun τ _ => ?_
        rw [← mul_sub, h2]
        noncomm_ring
    _ = 0 := by
        simp only [Finset.sum_sub_distrib]
        rw [h3, sub_self]

theorem double_row_permutation : DblPerm := by
  intro A _ _ n t E hE a b x π
  rcases t with _ | m
  · have hx : x ∘ π = x := funext fun k => k.elim0
    rw [hx]
  · have hπ : π ∈ Submonoid.closure (Set.range fun i : Fin m => Equiv.swap i.castSucc i.succ) := by
      rw [Equiv.Perm.mclosure_swap_castSucc_succ]
      exact Submonoid.mem_top π
    revert x
    induction hπ using Submonoid.closure_induction with
    | mem π h =>
      obtain ⟨i, rfl⟩ := h
      intro x
      exact perm_swap E hE a b x i
    | one =>
      intro x
      rfl
    | mul π1 π2 _ _ ih1 ih2 =>
      intro x
      have hc : x ∘ ⇑(π1 * π2) = (x ∘ ⇑π1) ∘ ⇑π2 := rfl
      rw [hc, ih2, ih1]

end PI.UnitaryGroupMassFormula.QmRowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.PermutedRowProductSplit =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowForm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowForm", "h": "module\n\npublic import Formalism.PeriodIntegrals.QmRowForm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowDecreasing\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.DoubleRowIncreasing\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.PermutedRowProductSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowFormPermutationSplit.Development\n\n"}
section -- clump:auto
@[expose] public section

theorem quantum_minor_row_form : PI.QmRowForm :=
  PI.UnitaryGroupMassFormula.QmRowForm.qmRowForm_of PI.UnitaryGroupMassFormula.QmRowForm.double_row_decreasing PI.UnitaryGroupMassFormula.QmRowForm.double_row_increasing
    PI.UnitaryGroupMassFormula.QmRowForm.double_row_permutation
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowForm =====
