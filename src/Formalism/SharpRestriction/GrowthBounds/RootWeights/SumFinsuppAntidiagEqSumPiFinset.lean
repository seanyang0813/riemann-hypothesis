module

public import Formalism.SharpRestriction.GrowthBounds.RootWeights.TwistSubEqMatrixSubst
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionX, Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionMonomialOfFixed, Formalism.SharpRestriction.GrowthBounds.RootWeights.SumFinsuppAntidiagEqSumPiFinset

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionX =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionX", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.TwistSubEqMatrixSubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G

def sourceVar {ι : Type*} {n : ℕ} (LL : Letters ι) (a b : Fin n) (l : ι) : ι × Fin n :=
  if LL.vec l then (l, b) else (l, a)

def targetVar {ι : Type*} {n : ℕ} (LL : Letters ι) (a b : Fin n) (l : ι) : ι × Fin n :=
  if LL.vec l then (l, a) else (l, b)

def letterSign (B : Type*) [CommRing B] {ι : Type*} (LL : Letters ι) (l : ι) : B := if LL.vec l then 1 else -1

theorem sourceVar_fst {ι : Type*} {n : ℕ} (LL : Letters ι) (a b : Fin n) (l : ι) : (sourceVar LL a b l).1 = l := by
  unfold sourceVar
  split_ifs <;> rfl

section X

variable {R B : Type*} [CommRing R] [CommRing B] {ι : Type*} {n : ℕ} (LL : Letters ι) (S : Set ι)
  (φ : R →+* B) (a b : Fin n) (t : B)

theorem sum_C_one_col (l : ι) (c : Fin n) :
    ∑ b' : Fin n, C ((1 : Matrix (Fin n) (Fin n) B) b' c) * (X (l, b') : MvPolynomial (ι × Fin n) B) = X (l, c) := by
  rw [Finset.sum_eq_single c]
  · simp
  · intro b' _ hb
    simp [Matrix.one_apply_ne hb]
  · simp

theorem sum_C_one_row (l : ι) (c : Fin n) :
    ∑ b' : Fin n, C ((1 : Matrix (Fin n) (Fin n) B) c b') * (X (l, b') : MvPolynomial (ι × Fin n) B) = X (l, c) := by
  rw [Finset.sum_eq_single c]
  · simp
  · intro b' _ hb
    simp [Matrix.one_apply_ne (Ne.symm hb)]
  · simp

theorem sum_C_single_col (s : B) (l : ι) (c : Fin n) :
    ∑ b' : Fin n, C (Matrix.single a b s b' c) * (X (l, b') : MvPolynomial (ι × Fin n) B) =
      if c = b then C s * X (l, a) else 0 := by
  by_cases hc : c = b
  · subst hc
    rw [Finset.sum_eq_single a]
    · simp
    · intro b' _ hb
      simp [Ne.symm hb]
    · simp
  · simp [hc, Ne.symm hc]

theorem sum_C_single_row (s : B) (l : ι) (c : Fin n) :
    ∑ b' : Fin n, C (Matrix.single a b s c b') * (X (l, b') : MvPolynomial (ι × Fin n) B) =
      if c = a then C s * X (l, b) else 0 := by
  by_cases hc : c = a
  · subst hc
    rw [Finset.sum_eq_single b]
    · simp
    · intro b' _ hb
      simp [Ne.symm hb]
    · simp
  · simp [hc, Ne.symm hc]

open Classical in
theorem matrixSubst_transvection_X (v : ι × Fin n) :
    matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (X v) =
      if v.1 ∈ S ∧ v = sourceVar LL a b v.1 then X v + C (letterSign B LL v.1 * t) * X (targetVar LL a b v.1) else X v := by
  obtain ⟨l, c⟩ := v
  rw [matrixSubst_X]
  simp only [Matrix.transvection, Matrix.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib,
    sum_C_one_col, sum_C_one_row, sum_C_single_col, sum_C_single_row, sourceVar, targetVar, letterSign]
  by_cases hS : l ∈ S <;> by_cases hv : LL.vec l <;> simp [hS, hv]
  all_goals split_ifs <;> simp

end X

section fs

variable {ι : Type*} [Fintype ι] {n : ℕ} (LL : Letters ι) (a b : Fin n)

open Classical in
theorem sum_single_sourceVar_apply (c : ι → ℕ) (v : ι × Fin n) :
    (∑ l : ι, Finsupp.single (sourceVar LL a b l) (c l)) v = if v = sourceVar LL a b v.1 then c v.1 else 0 := by
  rw [Finsupp.finsetSum_apply, Finset.sum_eq_single v.1]
  · rw [Finsupp.single_apply]
    by_cases h : v = sourceVar LL a b v.1
    · rw [if_pos h.symm, if_pos h]
    · rw [if_neg (Ne.symm h), if_neg h]
  · intro l _ hl
    rw [Finsupp.single_apply, if_neg]
    intro h
    apply hl
    rw [← h, sourceVar_fst]
  · intro h
    exact absurd (Finset.mem_univ _) h

end fs

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionX =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionMonomialOfFixed =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionMonomialOfFixed", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionX\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G

theorem prod_monomial_eq_monomial_sum_prod {B σ α : Type*} [CommRing B] (s : Finset α) (f : α → σ →₀ ℕ) (c : α → B) :
    ∏ i ∈ s, monomial (f i) (c i) = monomial (∑ i ∈ s, f i) (∏ i ∈ s, c i) := by
  first
  | classical
    refine Finset.induction_on s (by simp) ?_
    intro i s hi ih
    rw [prod_insert hi, prod_insert hi, sum_insert hi, ih, monomial_mul]

section mono

variable {B : Type*} [CommRing B] {ι : Type*} [Fintype ι] {n : ℕ} (LL : Letters ι) (S : Set ι)
  (a b : Fin n) (t : B) (m : ι × Fin n →₀ ℕ)


open Classical in
def sourceExp (l : ι) : ℕ := if l ∈ S then m (sourceVar LL a b l) else 0

def sourceVariableExponent : ι × Fin n →₀ ℕ := ∑ l : ι, Finsupp.single (sourceVar LL a b l) (sourceExp LL S a b m l)

def shiftedExponent (p : ι → ℕ) : ι × Fin n →₀ ℕ :=
  (m - ∑ l : ι, Finsupp.single (sourceVar LL a b l) (p l)) + ∑ l : ι, Finsupp.single (targetVar LL a b l) (p l)

def rootShiftCoefficient (B : Type*) [CommRing B] {ι : Type*} [Fintype ι] {n : ℕ} (LL : Letters ι) (a b : Fin n)
    (m : ι × Fin n →₀ ℕ) (p : ι → ℕ) : B :=
  ∏ l : ι, (if LL.vec l then ((m (l, b)).choose (p l) : B) else (-1 : B) ^ (p l) * ((m (l, a)).choose (p l) : B))

theorem sourcePart_le : sourceVariableExponent LL S a b m ≤ m := by
  classical
  rw [Finsupp.le_def]
  intro v
  unfold sourceVariableExponent
  rw [sum_single_sourceVar_apply]
  split_ifs with h
  · unfold sourceExp
    split_ifs
    · exact (congrArg m h.symm).le
    · exact Nat.zero_le _
  · exact Nat.zero_le _

theorem sub_sourcePart_sourceVar (l : ι) (hl : l ∈ S) : (m - sourceVariableExponent LL S a b m) (sourceVar LL a b l) = 0 := by
  classical
  rw [Finsupp.tsub_apply]
  unfold sourceVariableExponent
  rw [sum_single_sourceVar_apply, sourceVar_fst, if_pos rfl]
  unfold sourceExp
  rw [if_pos hl]
  exact Nat.sub_self _

variable {R : Type*} [CommRing R] (φ : R →+* B)

theorem matrixSubst_transvection_monomial_of_fixed (m0 : ι × Fin n →₀ ℕ) (h0 : ∀ l ∈ S, m0 (sourceVar LL a b l) = 0) :
    matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial m0 1) = monomial m0 1 := by
  classical
  simp only [monomial_eq, map_one, one_mul, Finsupp.prod, map_prod, map_pow]
  refine Finset.prod_congr rfl fun v hv => ?_
  have hv' : ¬ (v.1 ∈ S ∧ v = sourceVar LL a b v.1) := by
    rintro ⟨hS, he⟩
    exact (Finsupp.mem_support_iff.1 hv) ((congrArg m0 he).trans (h0 _ hS))
  rw [matrixSubst_transvection_X, if_neg hv']

theorem matrixSubst_transvection_monomial_prod :
    matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial m 1) =
      monomial (m - sourceVariableExponent LL S a b m) 1 *
        ∏ l : ι, (C (letterSign B LL l * t) * X (targetVar LL a b l) + X (sourceVar LL a b l)) ^ (sourceExp LL S a b m l) := by
  classical
  have hsplit : (monomial m (1 : R) : MvPolynomial (ι × Fin n) R) =
      monomial (m - sourceVariableExponent LL S a b m) 1 * monomial (sourceVariableExponent LL S a b m) 1 := by
    rw [monomial_mul, one_mul, tsub_add_cancel_of_le (sourcePart_le LL S a b m)]
  have hprod : (monomial (sourceVariableExponent LL S a b m) (1 : R) : MvPolynomial (ι × Fin n) R) =
      ∏ l : ι, X (sourceVar LL a b l) ^ sourceExp LL S a b m l := by
    unfold sourceVariableExponent
    simp only [X_pow_eq_monomial]
    rw [prod_monomial_eq_monomial_sum_prod, Finset.prod_const_one]
  rw [hsplit, map_mul, matrixSubst_transvection_monomial_of_fixed (LL := LL) (S := S) (a := a) (b := b) (t := t)
    (φ := φ) (m0 := m - sourceVariableExponent LL S a b m) (h0 := sub_sourcePart_sourceVar LL S a b m)]
  congr 1
  rw [hprod, map_prod]
  refine Finset.prod_congr rfl fun l _ => ?_
  rw [map_pow]
  by_cases hl : l ∈ S
  · rw [matrixSubst_transvection_X, sourceVar_fst, if_pos ⟨hl, rfl⟩, add_comm]
  · have he : sourceExp LL S a b m l = 0 := by
      unfold sourceExp
      rw [if_neg hl]
    rw [he, pow_zero, pow_zero]

private theorem letterSign_pow_mul_choose_sourceExp (p : ι → ℕ) (l : ι) (hpl : p l ≤ sourceExp LL S a b m l) :
    letterSign B LL l ^ p l * ((sourceExp LL S a b m l).choose (p l) : B) =
      (if LL.vec l then ((m (l, b)).choose (p l) : B) else (-1 : B) ^ (p l) * ((m (l, a)).choose (p l) : B)) := by
  classical
  by_cases hS : l ∈ S
  · have he : sourceExp LL S a b m l = m (sourceVar LL a b l) := by
      unfold sourceExp
      rw [if_pos hS]
    rw [he]
    unfold sourceVar letterSign
    cases LL.vec l <;> simp
  · have he : sourceExp LL S a b m l = 0 := by
      unfold sourceExp
      rw [if_neg hS]
    rw [he] at hpl ⊢
    have hp0 : p l = 0 := by omega
    rw [hp0]
    simp

theorem monomial_mul_prod_binomial_term (p : ι → ℕ) (hp : ∀ l, p l ≤ sourceExp LL S a b m l) :
    monomial (m - sourceVariableExponent LL S a b m) (1 : B) *
      ∏ l : ι, ((C (letterSign B LL l * t) * X (targetVar LL a b l)) ^ (p l) *
        X (sourceVar LL a b l) ^ (sourceExp LL S a b m l - p l) * (((sourceExp LL S a b m l).choose (p l) : ℕ) :
          MvPolynomial (ι × Fin n) B)) =
      C (t ^ (∑ l, p l)) * monomial (shiftedExponent LL a b m p) (rootShiftCoefficient B LL a b m p) := by
  classical
  have hfac : ∀ l : ι, (C (letterSign B LL l * t) * X (targetVar LL a b l)) ^ (p l) *
        X (sourceVar LL a b l) ^ (sourceExp LL S a b m l - p l) *
        (((sourceExp LL S a b m l).choose (p l) : ℕ) : MvPolynomial (ι × Fin n) B) =
      monomial (Finsupp.single (targetVar LL a b l) (p l) +
          Finsupp.single (sourceVar LL a b l) (sourceExp LL S a b m l - p l))
        ((letterSign B LL l * t) ^ (p l) * ((sourceExp LL S a b m l).choose (p l) : B)) := by
    intro l
    rw [← monomial_mul, ← C_mul_X_pow_eq_monomial, ← C_mul_X_pow_eq_monomial]
    simp only [mul_pow, map_pow, map_mul, map_natCast]
    ring
  simp_rw [hfac]
  rw [prod_monomial_eq_monomial_sum_prod, monomial_mul, C_mul_monomial, one_mul]
  refine congrArg₂ (fun (s : ι × Fin n →₀ ℕ) (c : B) => (monomial s c : MvPolynomial (ι × Fin n) B)) ?_ ?_
  · have key : m - sourceVariableExponent LL S a b m +
        ∑ l : ι, Finsupp.single (sourceVar LL a b l) (sourceExp LL S a b m l - p l) =
        m - ∑ l : ι, Finsupp.single (sourceVar LL a b l) (p l) := by
      unfold sourceVariableExponent
      ext v
      rw [Finsupp.add_apply, Finsupp.tsub_apply, Finsupp.tsub_apply, sum_single_sourceVar_apply,
        sum_single_sourceVar_apply, sum_single_sourceVar_apply]
      split_ifs with h
      · have h1 := hp v.1
        have h2 : sourceExp LL S a b m v.1 ≤ m v := by
          unfold sourceExp
          split_ifs
          · exact (congrArg m h.symm).le
          · exact Nat.zero_le _
        omega
      · simp
    rw [Finset.sum_add_distrib, shiftedExponent, ← key, add_assoc,
      add_comm (∑ l : ι, Finsupp.single (targetVar LL a b l) (p l))]
  · unfold rootShiftCoefficient
    rw [← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun l _ => ?_
    rw [← letterSign_pow_mul_choose_sourceExp (B := B) LL S a b m p l (hp l)]
    ring


open Classical in
theorem matrixSubst_transvection_monomial_sum :
    matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial m 1) =
      ∑ p ∈ Fintype.piFinset (fun l : ι => Finset.range (sourceExp LL S a b m l + 1)),
        C (t ^ (∑ l, p l)) * monomial (shiftedExponent LL a b m p) (rootShiftCoefficient B LL a b m p) := by
  rw [matrixSubst_transvection_monomial_prod]
  simp_rw [add_pow]
  rw [Finset.prod_univ_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun p hp => ?_
  refine monomial_mul_prod_binomial_term LL S a b t m p fun l => ?_
  have hl := Fintype.mem_piFinset.1 hp l
  rw [Finset.mem_range] at hl
  omega

end mono

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionMonomialOfFixed =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.SumFinsuppAntidiagEqSumPiFinset =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.SumFinsuppAntidiagEqSumPiFinset", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.MatrixSubstTransvectionMonomialOfFixed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G

section mtch

variable {B : Type*} [CommRing B] {ι : Type*} [Fintype ι] {n : ℕ} (LL : Letters ι) (S : Set ι)
  (a b : Fin n) (t : B) (m : ι × Fin n →₀ ℕ)

open Classical in
theorem dividedPowerMonomial_eq_sum (k : ℕ) :
    divPowMono B LL S a b k m = ∑ f ∈ Finset.finsuppAntidiag (Finset.univ.filter (· ∈ S)) k,
      monomial (shiftedExponent LL a b m (⇑f)) (rootShiftCoefficient B LL a b m (⇑f)) := by
  have sum_support_single_eq_lemma {σ ι : Type _} [Fintype ι] (f : ι →₀ ℕ) (g : ι → σ) :
      ∑ l ∈ f.support, Finsupp.single (g l) (f l) = ∑ l, Finsupp.single (g l) (f l) :=
    Finset.sum_subset (Finset.subset_univ _) fun l _ hl => by
      have h0 : f l = 0 := by simpa using hl
      rw [h0, Finsupp.single_zero]
  simp only [Formalism.MainNotions.G.divPowMono, shiftedExponent, rootShiftCoefficient, sourceVar, targetVar]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [sum_support_single_eq_lemma f, sum_support_single_eq_lemma f, Finset.prod_subset (Finset.subset_univ f.support)]
  intro l _ hl
  have h0 : f l = 0 := by simpa using hl
  simp [h0]

open Classical in
theorem sum_finsuppAntidiag_eq_sum_piFinset (k : ℕ) :
    ∑ f ∈ Finset.finsuppAntidiag (Finset.univ.filter (· ∈ S)) k,
      monomial (shiftedExponent LL a b m (⇑f)) (rootShiftCoefficient B LL a b m (⇑f)) =
    ∑ p ∈ (Fintype.piFinset (fun l : ι => Finset.range (sourceExp LL S a b m l + 1))).filter (fun p => ∑ l, p l = k),
      monomial (shiftedExponent LL a b m p) (rootShiftCoefficient B LL a b m p) := by
  have hcf : ∀ p : ι → ℕ, rootShiftCoefficient B LL a b m p ≠ 0 → ∀ l, p l ≤ m (sourceVar LL a b l) := by
    intro p hp l
    by_contra hlt
    push_neg at hlt
    apply hp
    unfold rootShiftCoefficient
    refine Finset.prod_eq_zero (Finset.mem_univ l) ?_
    unfold sourceVar at hlt
    split_ifs at hlt ⊢ with hv
    · rw [Nat.choose_eq_zero_of_lt hlt, Nat.cast_zero]
    · rw [Nat.choose_eq_zero_of_lt hlt, Nat.cast_zero, mul_zero]
  have hmon : ∀ (s : ι × Fin n →₀ ℕ) (c : B),
      (monomial s c : MvPolynomial (ι × Fin n) B) ≠ 0 → c ≠ 0 :=
    fun s c h hc => h (by rw [hc, map_zero])
  have hsumS : ∀ p : ι → ℕ, (∀ l, l ∉ S → p l = 0) →
      ∑ l ∈ Finset.univ.filter (· ∈ S), p l = ∑ l, p l := by
    intro p hp
    refine Finset.sum_subset (Finset.subset_univ _) fun l _ hl => hp l ?_
    intro hS
    exact hl (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hS⟩)
  refine Finset.sum_bij_ne_zero (fun f _ _ => ⇑f) ?_ ?_ ?_ ?_
  · intro f hf hne
    rw [Finset.mem_finsuppAntidiag] at hf
    have hz : ∀ l, l ∉ S → f l = 0 := fun l hl => by
      by_contra h
      exact hl (Finset.mem_filter.mp (hf.2 (Finsupp.mem_support_iff.mpr h))).2
    simp only [Finset.mem_filter, Fintype.mem_piFinset, Finset.mem_range]
    refine ⟨fun l => ?_, ?_⟩
    · rw [Nat.lt_succ_iff]
      by_cases hl : l ∈ S
      · rw [sourceExp, if_pos hl]
        exact hcf _ (hmon _ _ hne) l
      · rw [hz l hl]
        exact Nat.zero_le _
    · rw [← hsumS _ hz]
      exact hf.1
  · intro f₁ _ _ f₂ _ _ h
    exact DFunLike.coe_injective h
  · intro p hp hne
    simp only [Finset.mem_filter, Fintype.mem_piFinset, Finset.mem_range] at hp
    have hle : ∀ l, p l ≤ sourceExp LL S a b m l := fun l => Nat.lt_succ_iff.mp (hp.1 l)
    have hz : ∀ l, l ∉ S → p l = 0 := fun l hl => by
      have h := hle l
      rw [sourceExp, if_neg hl] at h
      omega
    refine ⟨Finsupp.equivFunOnFinite.symm p, ?_, ?_, ?_⟩
    · rw [Finset.mem_finsuppAntidiag, Finsupp.coe_equivFunOnFinite_symm]
      refine ⟨by rw [hsumS _ hz]; exact hp.2, fun l hl => ?_⟩
      rw [Finsupp.mem_support_iff, Finsupp.coe_equivFunOnFinite_symm] at hl
      refine Finset.mem_filter.mpr ⟨Finset.mem_univ _, ?_⟩
      by_contra hS
      exact hl (hz l hS)
    · simp only [Finsupp.coe_equivFunOnFinite_symm]
      exact hne
    · exact Finsupp.coe_equivFunOnFinite_symm p
  · intro f _ _
    rfl

theorem sum_sourceExp_le : ∑ l : ι, sourceExp LL S a b m l ≤ m.sum fun _ e => e := by
  classical
  have hinj : ∀ x ∈ (Finset.univ : Finset ι), ∀ y ∈ (Finset.univ : Finset ι),
      sourceVar LL a b x = sourceVar LL a b y → x = y := by
    intro x _ y _ h
    have h1 := congrArg Prod.fst h
    rwa [sourceVar_fst, sourceVar_fst] at h1
  calc ∑ l : ι, sourceExp LL S a b m l ≤ ∑ l : ι, m (sourceVar LL a b l) :=
        Finset.sum_le_sum fun l _ => by unfold sourceExp; split_ifs <;> simp
    _ = ∑ v ∈ Finset.univ.image (sourceVar LL a b), m v := (Finset.sum_image hinj).symm
    _ ≤ ∑ v ∈ m.support, m v := Finset.sum_le_sum_of_ne_zero fun v _ h => Finsupp.mem_support_iff.mpr h
    _ = m.sum fun _ e => e := rfl

variable {R : Type*} [CommRing R] (φ : R →+* B)

theorem matrixSubst_transvection_monomial (N : ℕ) (hN : (m.sum fun _ e => e) < N) :
    matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial m 1) =
      ∑ k ∈ Finset.range N, C (t ^ k) * divPowMono B LL S a b k m := by
  classical
  rw [matrixSubst_transvection_monomial_sum]
  have hmaps : ∀ p ∈ Fintype.piFinset (fun l : ι => Finset.range (sourceExp LL S a b m l + 1)),
      (∑ l, p l) ∈ Finset.range N := by
    intro p hp
    rw [Fintype.mem_piFinset] at hp
    rw [Finset.mem_range]
    calc ∑ l, p l ≤ ∑ l, sourceExp LL S a b m l :=
          Finset.sum_le_sum fun l _ => by have := Finset.mem_range.mp (hp l); omega
      _ ≤ _ := sum_sourceExp_le LL S a b m
      _ < N := hN
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [dividedPowerMonomial_eq_sum, sum_finsuppAntidiag_eq_sum_piFinset, Finset.mul_sum]
  refine Finset.sum_congr (by ext p; simp only [Finset.mem_filter]) fun p hp => ?_
  have hk : ∑ l, p l = k := (Finset.mem_filter.mp hp).2
  rw [hk]

theorem map_dividedPowerMonomial (k : ℕ) :
    MvPolynomial.map φ (divPowMono R LL S a b k m) = divPowMono B LL S a b k m := by
  unfold Formalism.MainNotions.G.divPowMono

  rw [map_sum]
  refine Finset.sum_congr rfl fun f _ => ?_
  have h : ∀ l, φ (if LL.vec l then ((m (l, b)).choose (f l) : R) else (-1 : R) ^ (f l) * ((m (l, a)).choose (f l) : R)) =
      (if LL.vec l then ((m (l, b)).choose (f l) : B) else (-1 : B) ^ (f l) * ((m (l, a)).choose (f l) : B)) :=
    fun l => by split_ifs <;> simp
  simp only [MvPolynomial.map_monomial, map_prod, h]

theorem dividedPower_monomial (k : ℕ) (c : R) :
    divPow R LL S a b k (monomial m c) = c • divPowMono R LL S a b k m := by
  have h1 : (monomial m c : MvPolynomial (ι × Fin n) R) = c • MvPolynomial.basisMonomials (ι × Fin n) R m := by
    simp only [MvPolynomial.coe_basisMonomials, MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
  rw [h1, map_smul]
  unfold Formalism.MainNotions.G.divPow
  rw [Module.Basis.constr_basis]

end mtch

theorem transvectionExpansion : TransvectionExpansion := by
  unfold TransvectionExpansion
  intro R B _ _ ι _ LL n S φ a b _ t F N hF
  have key : ∀ v ∈ F.support,
      matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial v (AddMonoidAlgebra.coeff F v)) =
        ∑ k ∈ Finset.range N, C (t ^ k) * MvPolynomial.map φ (Formalism.MainNotions.G.divPow R LL S a b k (monomial v (AddMonoidAlgebra.coeff F v))) := by
    intro v hv
    have hv' : (v.sum fun _ e => e) < N := lt_of_le_of_lt (MvPolynomial.le_totalDegree hv) hF
    have hmono : (monomial v (AddMonoidAlgebra.coeff F v) : MvPolynomial (ι × Fin n) R) = C (AddMonoidAlgebra.coeff F v) * monomial v 1 := by
      rw [MvPolynomial.C_mul_monomial, mul_one]
    have hL : matrixSubst LL S φ (Matrix.transvection a b t) (Matrix.transvection a b (-t)) (monomial v (AddMonoidAlgebra.coeff F v)) =
        C (φ (AddMonoidAlgebra.coeff F v)) * ∑ k ∈ Finset.range N, C (t ^ k) * Formalism.MainNotions.G.divPowMono B LL S a b k v := by
      rw [hmono, map_mul, matrixSubst_C, matrixSubst_transvection_monomial LL S a b t v φ N hv']
    rw [hL, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [dividedPower_monomial, MvPolynomial.smul_eq_C_mul, map_mul, MvPolynomial.map_C, map_dividedPowerMonomial]
    ring
  conv_lhs => rw [F.as_sum]

  rw [map_sum]
  refine (Finset.sum_congr rfl key).trans ?_
  conv_rhs => rw [F.as_sum]

  simp only [map_sum, Finset.mul_sum]
  exact Finset.sum_comm

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.SumFinsuppAntidiagEqSumPiFinset =====
