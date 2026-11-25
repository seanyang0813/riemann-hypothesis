module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedEmbeddingToM
public import Mathlib.Analysis.Matrix.Normed
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset
public import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order
public import Mathlib.MeasureTheory.Function.L2Space
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousConjProjection
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiFacts
public import Mathlib.Analysis.InnerProductSpace.Positive
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecALogLower
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ToMKMulInv
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.InnerProductSpace.StarOrder
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.Minors

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecSum, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecPos, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecSum =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecSum", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedEmbeddingToM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

def nuNext (ν : Fin n → ℝ) (i : Fin n) : ℝ := if h : (i : ℕ) + 1 < n then ν ⟨(i : ℕ) + 1, h⟩ else 0

lemma inP_entry_zero {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) {a b : Fin n}
    (hab : ε a = ε b) : Y a b = 0 := by
  have h := congrFun (congrFun hY.2 a) b
  simp only [Jm, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.neg_apply, hab] at h
  cases hb : ε b <;> simp [hb] at h <;>
    first | exact h | linear_combination h / 2 | linear_combination -h / 2

lemma conjTranspose_eq_self_of_mem_noncompactPart {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) : Yᴴ = Y := by
  have hJ : Jm ε * Jm ε = 1 := by
    rw [Jm, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    ext a
    split_ifs <;> norm_num
  have h1 : Yᴴ * Jm ε = Y * Jm ε := by
    rw [hY.2]
    exact eq_neg_of_add_eq_zero_left hY.1
  calc Yᴴ = Yᴴ * Jm ε * Jm ε := by rw [Matrix.mul_assoc, hJ, Matrix.mul_one]
    _ = Y * Jm ε * Jm ε := by rw [h1]
    _ = Y := by rw [Matrix.mul_assoc, hJ, Matrix.mul_one]

lemma inP_norm_symm {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) (a b : Fin n) :
    ‖Y b a‖ = ‖Y a b‖ := by
  have h := congrFun (congrFun (conjTranspose_eq_self_of_mem_noncompactPart hY) b) a
  rw [← h, Matrix.conjTranspose_apply, norm_star]

lemma hs_eq_two_lower {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) :
    hs Y = 2 * ∑ a : Fin n, ∑ b : Fin n, if b < a then ‖Y a b‖ ^ 2 else 0 := by
  have hsplit : ∀ a b : Fin n, ‖Y a b‖ ^ 2 =
      (if b < a then ‖Y a b‖ ^ 2 else 0) + (if a < b then ‖Y a b‖ ^ 2 else 0) := by
    intro a b
    rcases lt_trichotomy a b with h | h | h
    · simp [h, not_lt.mpr h.le]
    · subst h; simp [inP_entry_zero hY rfl]
    · simp [h, not_lt.mpr h.le]
  have hswap : (∑ a : Fin n, ∑ b : Fin n, if a < b then ‖Y a b‖ ^ 2 else 0) =
      ∑ a : Fin n, ∑ b : Fin n, if b < a then ‖Y a b‖ ^ 2 else 0 := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    rw [inP_norm_symm hY]
  unfold hs
  calc (∑ a : Fin n, ∑ b : Fin n, ‖Y a b‖ ^ 2)
      = ∑ a : Fin n, ∑ b : Fin n, ((if b < a then ‖Y a b‖ ^ 2 else 0) + (if a < b then ‖Y a b‖ ^ 2 else 0)) :=
        Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => hsplit a b
    _ = (∑ a : Fin n, ∑ b : Fin n, if b < a then ‖Y a b‖ ^ 2 else 0) +
        ∑ a : Fin n, ∑ b : Fin n, if a < b then ‖Y a b‖ ^ 2 else 0 := by
        simp only [Finset.sum_add_distrib]
    _ = _ := by rw [hswap]; ring

lemma sum_Ico_tele (f : ℕ → ℝ) {b : ℕ} : ∀ m, b ≤ m → ∑ i ∈ Finset.Ico b m, (f i - f (i + 1)) = f b - f m := by
  intro m hm
  induction m, hm using Nat.le_induction with
  | base => simp
  | succ m hm ih => rw [Finset.sum_Ico_succ_top hm, ih]; ring

lemma nuNext_tele (ν : Fin n → ℝ) {a b : Fin n} (hba : b < a) :
    ∑ i : Fin n, (if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then ν i - nuNext ν i else 0) = ν b - ν a := by
  let f : ℕ → ℝ := fun k => if h : k < n then ν ⟨k, h⟩ else 0
  have h1 : ∀ i : Fin n, (if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then ν i - nuNext ν i else 0) =
      (if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then f i - f (i + 1) else 0) := by
    intro i
    simp [f, nuNext, i.isLt]
  rw [Finset.sum_congr rfl (fun i _ => h1 i),
    Fin.sum_univ_eq_sum_range (fun k => if (b : ℕ) ≤ k ∧ k < (a : ℕ) then f k - f (k + 1) else 0) n,
    ← Finset.sum_filter]
  have hfil : (Finset.range n).filter (fun k => (b : ℕ) ≤ k ∧ k < (a : ℕ)) = Finset.Ico (b : ℕ) a := by
    ext k
    have := a.isLt
    simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ico]
    omega
  rw [hfil, sum_Ico_tele f (b := (b : ℕ)) (a : ℕ) (Fin.lt_iff_val_lt_val.mp hba).le]
  simp [f, b.isLt, a.isLt]

theorem dec_weighted {ε : Fin n → Bool} (ν : Fin n → ℝ) (hν : Antitone ν) {g : ℝ}
    (hg : ∀ a b : Fin n, ε a ≠ ε b → b < a → g ≤ ν b - ν a) {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) :
    g * hs Y / 2 ≤
      ∑ i : Fin n, (ν i - nuNext ν i) *
        (∑ a : Fin n, ∑ b : Fin n, if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then ‖Y a b‖ ^ 2 else 0) := by
  rw [hs_eq_two_lower hY]
  have hR : ∑ i : Fin n, (ν i - nuNext ν i) *
      (∑ a : Fin n, ∑ b : Fin n, if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then ‖Y a b‖ ^ 2 else 0) =
      ∑ a : Fin n, ∑ b : Fin n, if b < a then (ν b - ν a) * ‖Y a b‖ ^ 2 else 0 := by
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun b _ => ?_
    split_ifs with hba
    · rw [← nuNext_tele ν hba, Finset.sum_mul]
      refine Finset.sum_congr rfl fun i _ => ?_
      split_ifs <;> ring
    · refine Finset.sum_eq_zero fun i _ => ?_
      rw [if_neg, mul_zero]
      intro h
      exact hba (Fin.lt_iff_val_lt_val.mpr (lt_of_le_of_lt h.1 h.2))
  rw [hR]
  have hL : g * (2 * ∑ a : Fin n, ∑ b : Fin n, if b < a then ‖Y a b‖ ^ 2 else 0) / 2 =
      ∑ a : Fin n, ∑ b : Fin n, if b < a then g * ‖Y a b‖ ^ 2 else 0 := by
    have hg' : ∀ a b : Fin n, (if b < a then g * ‖Y a b‖ ^ 2 else 0) =
        g * (if b < a then ‖Y a b‖ ^ 2 else 0) := by
      intro a b; split_ifs <;> simp
    simp_rw [hg', ← Finset.mul_sum]
    ring
  rw [hL]
  refine Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => ?_
  split_ifs with hba
  · by_cases hε : ε a = ε b
    · rw [inP_entry_zero hY hε]; simp
    · exact mul_le_mul_of_nonneg_right (hg a b hε hba) (by positivity)
  · exact le_rfl

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecSum =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecPos =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecPos", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.StarOrder\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousConjProjection\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiFacts\npublic import Mathlib.Analysis.InnerProductSpace.Positive\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

variable {ε : Fin n → Bool} {Λ : Fin n → ℝ}

private abbrev dpP (T : KType ε Λ) (k : KG ε) : T.V →L[ℂ] T.V := T.op k * projW T * T.op k⁻¹

private lemma dpP_apply (T : KType ε Λ) (k : KG ε) (v : T.V) :
    dpP T k v = ⟪T.op k T.w, v⟫_ℂ • T.op k T.w := by
  show T.op k (projW T (T.op k⁻¹ v)) = _
  unfold projW
  rw [ContinuousLinearMap.smulRight_apply, map_smul, _root_.ReciprocityTheory.ChartRestriction.DS.S7.op_inv_eq_adjoint]
  congr 1
  exact ContinuousLinearMap.adjoint_inner_right _ _ _

private lemma dp_inner_P (T : KType ε Λ) (k : KG ε) (v : T.V) :
    ⟪v, dpP T k v⟫_ℂ = ((‖⟪T.op k T.w, v⟫_ℂ‖ ^ 2 : ℝ) : ℂ) := by
  rw [dpP_apply, inner_smul_right, ← inner_conj_symm v (T.op k T.w)]
  first
  | (rw [RCLike.mul_conj]; rfl)
  | (rw [RCLike.mul_conj]; norm_cast)

private lemma dp_cont_P (T : KType ε Λ) : Continuous (dpP T) := by
  have hop : Continuous fun k : KG ε => T.op k := continuous_subtype_val.comp T.cont
  have hinv : Continuous fun k : KG ε => T.op k⁻¹ := hop.comp continuous_inv
  exact (hop.mul continuous_const).mul hinv

private lemma dp_integrable (T : KType ε Λ) {g : KG ε → ℝ} (hg : Continuous g) :
    Integrable (fun k => ((g k : ℝ) : ℂ) • dpP T k) (muK ε) := by
  haveI := compactSpace_KG ε
  have hf : Continuous (fun k => ((g k : ℝ) : ℂ) • dpP T k) :=
    (Complex.continuous_ofReal.comp hg).smul (dp_cont_P T)
  exact integrableOn_univ.mp (ContinuousOn.integrableOn_compact isCompact_univ hf.continuousOn)

private lemma dp_isPositive (T : KType ε Λ) {c : ℝ} (hc : 0 ≤ c) {g : KG ε → ℝ} (hg : Continuous g)
    (hg0 : ∀ k, 0 ≤ g k) :
    ((c : ℂ) • ∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε)).IsPositive := by
  have hI := dp_integrable T hg

  have key : ∀ u v : T.V, ⟪u, (∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε)) v⟫_ℂ =
      ∫ k, ((g k : ℝ) : ℂ) * ⟪u, dpP T k v⟫_ℂ ∂(muK ε) := by
    intro u v
    have hIv : Integrable (fun k => (((g k : ℝ) : ℂ) • dpP T k) v) (muK ε) :=
      (ContinuousLinearMap.apply ℂ T.V v).integrable_comp hI
    rw [ContinuousLinearMap.integral_apply hI, ← integral_inner hIv]
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    simp only [ContinuousLinearMap.smul_apply, inner_smul_right]

  have hsym : ∀ k (u v : T.V), ⟪dpP T k u, v⟫_ℂ = ⟪u, dpP T k v⟫_ℂ := by
    intro k u v
    rw [dpP_apply, dpP_apply, inner_smul_left, inner_smul_right, inner_conj_symm]
    ring
  refine ⟨?_, ?_⟩
  · intro u v
    change ⟪(((c : ℝ) : ℂ) • ∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε)) u, v⟫_ℂ =
      ⟪u, (((c : ℝ) : ℂ) • ∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε)) v⟫_ℂ
    rw [ContinuousLinearMap.smul_apply,
      ContinuousLinearMap.smul_apply, inner_smul_left, inner_smul_right,
      ← inner_conj_symm _ v, key, key, ← integral_conj, Complex.conj_ofReal]
    congr 1
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    simp only
    rw [map_mul, Complex.conj_ofReal, inner_conj_symm, hsym]
  · intro v
    rw [ContinuousLinearMap.reApplyInnerSelf_apply, inner_re_symm, ContinuousLinearMap.smul_apply,
      inner_smul_right, key]
    have e : ∫ k, ((g k : ℝ) : ℂ) * ⟪v, dpP T k v⟫_ℂ ∂(muK ε) =
        ((∫ k, g k * ‖⟪T.op k T.w, v⟫_ℂ‖ ^ 2 ∂(muK ε) : ℝ) : ℂ) := by
      first
      | rw [← integral_complex_ofReal]
      refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
      simp only [dp_inner_P]
      push_cast
      ring
    rw [e, ← Complex.ofReal_mul]
    simp only [RCLike.re_to_complex, Complex.ofReal_re]
    exact mul_nonneg hc (integral_nonneg fun k => mul_nonneg (hg0 k) (sq_nonneg _))

private lemma dp_posDef_conj (k : KG ε) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) :
    (toMK k⁻¹ * x * toMK k).PosDef := by
  have hinj : Function.Injective (toMK k).mulVec := by
    intro a b h
    have h2 := congrArg ((toMK k)ᴴ).mulVec h
    simpa [Matrix.mulVec_mulVec, (toMK_facts k).1] using h2
  rw [toMK_inv]
  exact hx.conjTranspose_mul_mul_same hinj

private lemma dp_cont_phi (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) :
    Continuous (fun k : KG ε => (PhiM μ (toMK k⁻¹ * x * toMK k)).re) := by
  have htoMK : Continuous (toMK : KG ε → Matrix (Fin n) (Fin n) ℂ) := by
    unfold toMK toM
    first
    | fun_prop
  have hcont : Continuous fun k : KG ε => toMK k⁻¹ * x * toMK k :=
    ((htoMK.comp continuous_inv).mul continuous_const).mul htoMK
  have hmem : ∀ k : KG ε, toMK k⁻¹ * x * toMK k ∈ OmegaSet n := by
    intro k
    first
    | exact posSet_subset_omega (dp_posDef_conj k hx)
  exact Complex.continuous_re.comp
    ((phiM_differentiableOn μ).continuousOn.comp_continuous hcont hmem)

theorem psM_norm_le (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) {B : ℝ}
    (hB : ∀ k : KG ε, (PhiM μ (toMK k⁻¹ * x * toMK k)).re ≤ B) : ‖psM T μ x‖ ≤ B := by
  set c : ℝ := (Module.finrank ℂ T.V : ℝ) / (muK ε Set.univ).toReal with hc_def
  have hc : 0 ≤ c := div_nonneg (Nat.cast_nonneg _) (muK_univ_pos ε).le
  set g : KG ε → ℝ := fun k => (PhiM μ (toMK k⁻¹ * x * toMK k)).re with hg_def
  have hgc : Continuous g := dp_cont_phi μ hx
  have hg0 : ∀ k, 0 ≤ g k := fun k => (phiM_posDef μ (dp_posDef_conj k hx)).1.le
  have hPhi : ∀ k, PhiM μ (toMK k⁻¹ * x * toMK k) = ((g k : ℝ) : ℂ) := by
    intro k
    apply Complex.ext
    · simp [hg_def]
    · simp [(phiM_posDef μ (dp_posDef_conj k hx)).2]
  have hA : psM T μ x = ((c : ℝ) : ℂ) • ∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε) := by
    unfold psM
    rw [hc_def]
    push_cast
    congr 1
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    simp only [hPhi, dpP]
  have hone : (1 : T.V →L[ℂ] T.V) = ((c : ℝ) : ℂ) • ∫ k, (((fun _ => (1 : ℝ)) k : ℝ) : ℂ) • dpP T k ∂(muK ε) := by
    rw [← psM_one T μ]
    unfold psM
    rw [hc_def]
    push_cast
    congr 1
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    have h1 : toMK k⁻¹ * 1 * toMK k = 1 := by rw [Matrix.mul_one, toMK_inv, (toMK_facts k).1]
    simp only [h1, phiM_one, one_smul, dpP]
  have i1 := dp_integrable T (g := fun _ => (1 : ℝ)) continuous_const
  have i2 := dp_integrable T hgc
  have hlin : ∫ k, (((fun k => B - g k) k : ℝ) : ℂ) • dpP T k ∂(muK ε) =
      (B : ℂ) • (∫ k, (((fun _ => (1 : ℝ)) k : ℝ) : ℂ) • dpP T k ∂(muK ε)) -
        ∫ k, ((g k : ℝ) : ℂ) • dpP T k ∂(muK ε) := by
    have i1' : Integrable (fun k => (B : ℂ) • ((((fun _ => (1 : ℝ)) k : ℝ) : ℂ) • dpP T k)) (muK ε) :=
      i1.smul (B : ℂ)
    have e1 := integral_sub i1' i2
    rw [integral_smul] at e1
    refine (integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)).trans e1
    beta_reduce
    rw [smul_smul, ← sub_smul]
    congr 1
    push_cast
    ring
  have hdiff : (B : ℂ) • (1 : T.V →L[ℂ] T.V) - psM T μ x =
      ((c : ℝ) : ℂ) • ∫ k, (((fun k => B - g k) k : ℝ) : ℂ) • dpP T k ∂(muK ε) := by
    rw [hlin, smul_sub, smul_comm ((c : ℝ) : ℂ) (B : ℂ), ← hone, ← hA]
  have hpos1 := dp_isPositive T hc hgc hg0
  have hpos2 := dp_isPositive T hc (g := fun k => B - g k) (continuous_const.sub hgc)
    (fun k => sub_nonneg.mpr (hB k))
  have h0 : 0 ≤ psM T μ x := by
    rw [ContinuousLinearMap.nonneg_iff_isPositive, hA]
    exact hpos1
  have hle : psM T μ x ≤ (B : ℂ) • (1 : T.V →L[ℂ] T.V) := by
    rw [ContinuousLinearMap.le_def, hdiff]
    exact hpos2
  have hB0 : 0 ≤ B := (hg0 1).trans (hB 1)
  calc ‖psM T μ x‖ ≤ ‖(B : ℂ) • (1 : T.V →L[ℂ] T.V)‖ :=
      CStarAlgebra.norm_le_norm_of_le_of_nonneg hle h0
    _ ≤ ‖(B : ℂ)‖ * ‖(1 : T.V →L[ℂ] T.V)‖ := norm_smul_le _ _
    _ ≤ B * 1 := by
        rw [Complex.norm_real, Real.norm_of_nonneg hB0]
        exact mul_le_mul_of_nonneg_left ContinuousLinearMap.norm_id_le hB0
    _ = B := mul_one B

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecPos =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecALogLower\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DecPos\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.Minors\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ToMKMulInv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

variable {ε : Fin n → Bool} {lam : Fin n → ℝ}

def phiReal (ν : Fin n → ℝ) (x : Matrix (Fin n) (Fin n) ℂ) : ℝ :=
  ∏ i : Fin n, (lead ((i : ℕ) + 1) x).re ^ (-(ν i - nuNext ν i))

theorem phi_decay_core (ν : Fin n → ℝ) (hν : Antitone ν) {g : ℝ}
    (hg : ∀ a b : Fin n, ε a ≠ ε b → b < a → g ≤ ν b - ν a) (hq : 1 ≤ q0 ε) {Y : Matrix (Fin n) (Fin n) ℂ}
    (hY : inP ε Y) :
    phiReal ν (NormedSpace.exp Y) ≤
      Real.exp (-(g / 8) * min (hs Y) (Real.sqrt (hs Y) / Real.sqrt (2 * q0 ε))) := by
  classical
  by_cases h0 : hs Y = 0
  · have hY0 : Y = 0 := by
      ext a b
      have hsum := (Finset.sum_eq_zero_iff_of_nonneg
        (fun a _ => Finset.sum_nonneg fun b _ => sq_nonneg ‖Y a b‖)).mp h0 a (Finset.mem_univ _)
      have := (Finset.sum_eq_zero_iff_of_nonneg (fun b _ => sq_nonneg ‖Y a b‖)).mp hsum b (Finset.mem_univ _)
      simpa using this
    subst hY0
    have hl : ∀ i : Fin n, lead ((i : ℕ) + 1) (1 : Matrix (Fin n) (Fin n) ℂ) = 1 := fun i => by
      unfold lead
      rw [dif_pos (show (i : ℕ) + 1 ≤ n from i.isLt), Matrix.submatrix_one _ (Fin.castLE_injective _),
        Matrix.det_one]
    unfold phiReal
    rw [NormedSpace.exp_zero, h0]
    simp [hl]
  have hpos : 0 < hs Y := lt_of_le_of_ne (by unfold hs; positivity) (Ne.symm h0)
  obtain ⟨U, y, hU, hYe⟩ := decA_spec hY
  have hq' : (0 : ℝ) < 2 * q0 ε := by
    have : (1 : ℝ) ≤ q0 ε := by exact_mod_cast hq
    linarith
  set R := Real.sqrt (2 * q0 ε) * Real.sqrt (hs Y) with hRdef
  have hR : 0 < R := mul_pos (Real.sqrt_pos.mpr hq') (Real.sqrt_pos.mpr hpos)
  set t := min 1 (1 / R) with htdef
  have ht0 : 0 ≤ t := le_min zero_le_one (by positivity)
  set V : Fin n → ℝ := fun i =>
    ∑ a : Fin n, ∑ b : Fin n, if (b : ℕ) ≤ (i : ℕ) ∧ (i : ℕ) < (a : ℕ) then ‖Y a b‖ ^ 2 else 0 with hVdef
  have hx := exp_noncompactPart_posDef hY
  set c : Fin n → ℝ := fun i => (lead ((i : ℕ) + 1) (NormedSpace.exp Y)).re with hcdef
  have hc : ∀ i, 0 < c i := fun i => (lead_posDef hx _ i.isLt).1
  have hterm : ∀ i : Fin n, (ν i - nuNext ν i) * (t * V i / 4) ≤ (ν i - nuNext ν i) * Real.log (c i) := by
    intro i
    by_cases hlast : (i : ℕ) + 1 < n
    · have hnn : 0 ≤ ν i - nuNext ν i := by
        simp only [nuNext, dif_pos hlast]
        exact sub_nonneg.mpr (hν (show i ≤ ⟨(i : ℕ) + 1, hlast⟩ from Fin.le_def.mpr (by simp)))
      apply mul_le_mul_of_nonneg_left _ hnn
      have h := decA_log_lower hY hU hYe hq hpos ((i : ℕ) + 1) i.isLt
      simp only [Nat.lt_add_one_iff, Nat.add_one_le_iff] at h
      exact h
    · have hV : V i = 0 :=
        Finset.sum_eq_zero fun a _ => Finset.sum_eq_zero fun b _ => if_neg (by have := a.isLt; omega)
      have hn : (i : ℕ) + 1 = n := by have := i.isLt; omega
      have hL : c i = 1 := by
        simp only [hcdef, hn]
        exact decA_lead_last hY hU hYe
      rw [hV, hL, Real.log_one]
      simp
  have hsum : t * (g * hs Y / 2) / 4 ≤ ∑ i, (ν i - nuNext ν i) * Real.log (c i) := by
    have hw := dec_weighted ν hν hg hY
    calc t * (g * hs Y / 2) / 4 ≤ t * (∑ i, (ν i - nuNext ν i) * V i) / 4 := by
          have := mul_le_mul_of_nonneg_left hw ht0
          linarith
      _ = ∑ i, (ν i - nuNext ν i) * (t * V i / 4) := by
          rw [Finset.mul_sum, Finset.sum_div]
          refine Finset.sum_congr rfl fun i _ => ?_
          ring
      _ ≤ _ := Finset.sum_le_sum fun i _ => hterm i
  have hphi : phiReal ν (NormedSpace.exp Y) = Real.exp (-∑ i, (ν i - nuNext ν i) * Real.log (c i)) := by
    unfold phiReal
    rw [← Finset.sum_neg_distrib, Real.exp_sum]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [Real.rpow_def_of_pos (hc i)]
    congr 1
    ring
  have hmin : t * hs Y = min (hs Y) (Real.sqrt (hs Y) / Real.sqrt (2 * q0 ε)) := by
    rw [htdef, min_mul_of_nonneg _ _ hpos.le, one_mul]
    congr 1
    have hs2 : hs Y = Real.sqrt (hs Y) * Real.sqrt (hs Y) := (Real.mul_self_sqrt hpos.le).symm
    have hsq : 0 < Real.sqrt (hs Y) := Real.sqrt_pos.mpr hpos
    have hsq2 : 0 < Real.sqrt (2 * q0 ε) := Real.sqrt_pos.mpr hq'
    rw [hRdef]
    field_simp
    nlinarith [Real.sq_sqrt hpos.le, Real.mul_self_sqrt hpos.le]
  rw [hphi]
  apply Real.exp_le_exp.mpr
  rw [← hmin]
  nlinarith [hsum]

private lemma posDef_exp_of_hermitian {Y : Matrix (Fin n) (Fin n) ℂ} (hY : Yᴴ = Y) :
    (NormedSpace.exp Y).PosDef := by
  have hB : (NormedSpace.exp ((2 : ℂ)⁻¹ • Y))ᴴ = NormedSpace.exp ((2 : ℂ)⁻¹ • Y) := by
    rw [← Matrix.exp_conjTranspose]
    congr 1
    simp [hY]
  have hBB : NormedSpace.exp Y =
      (NormedSpace.exp ((2 : ℂ)⁻¹ • Y))ᴴ * 1 * NormedSpace.exp ((2 : ℂ)⁻¹ • Y) := by
    rw [hB, Matrix.mul_one, ← Matrix.exp_add_of_commute _ _ (Commute.refl _), ← add_smul]
    norm_num
  rw [hBB]
  exact Matrix.PosDef.one.conjTranspose_mul_mul_same
    (Matrix.mulVec_injective_iff_isUnit.2 (Matrix.isUnit_exp _))

private lemma lead_exp_pos_of_hermitian {Y : Matrix (Fin n) (Fin n) ℂ} (hY : Yᴴ = Y) (i : Fin n) :
    0 < lead ((i : ℕ) + 1) (NormedSpace.exp Y) := by
  have hle : (i : ℕ) + 1 ≤ n := i.isLt
  rw [lead, dif_pos hle]
  exact ((posDef_exp_of_hermitian hY).submatrix (Fin.castLE_injective hle)).det_pos

theorem phiM_exp_le (μ : Fin n → ℤ) (hμ : IsMu lam μ) (hlam : IsHCParam lam) {h : ℝ}
    (hgap : GapAtLeast ε lam h) (hq : 1 ≤ q0 ε) {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y) :
    (PhiM μ (NormedSpace.exp Y)).re ≤
      Real.exp (-(h / 8) * min (hs Y) (Real.sqrt (hs Y) / Real.sqrt (2 * q0 ε))) := by
  have hYh : Yᴴ = Y := by
    obtain ⟨h1, h2⟩ := hY
    have h1' : Yᴴ * Jm ε + Jm ε * Y = 0 := h1
    have hJ : Jm ε * Jm ε = 1 := by
      rw [Jm, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
      congr 1
      funext a
      split_ifs <;> norm_num
    have h3 : Yᴴ * Jm ε = Y * Jm ε := by
      rw [h2]
      exact eq_neg_of_add_eq_zero_left h1'
    calc Yᴴ = Yᴴ * Jm ε * Jm ε := by rw [Matrix.mul_assoc, hJ, Matrix.mul_one]
      _ = Y * Jm ε * Jm ε := by rw [h3]
      _ = Y := by rw [Matrix.mul_assoc, hJ, Matrix.mul_one]
  have hpos : ∀ i : Fin n, 0 < lead ((i : ℕ) + 1) (NormedSpace.exp Y) := fun i => lead_exp_pos_of_hermitian hYh i
  have hν : Antitone fun i => (μ i : ℝ) := by
    intro a b hab
    show (μ b : ℝ) ≤ μ a
    rw [hμ a, hμ b]
    have h1 := hlam.1.antitone hab
    have h2 : ((a : ℕ) : ℝ) ≤ ((b : ℕ) : ℝ) := Nat.cast_le.2 (Fin.le_def.1 hab)
    simp only [rho]
    linarith
  have hg : ∀ a b : Fin n, ε a ≠ ε b → b < a → h ≤ (μ b : ℝ) - μ a := by
    intro a b hne hba
    have h1 := hgap a b hne
    have h2 := hlam.1 hba
    rw [abs_of_neg (by linarith)] at h1
    rw [hμ a, hμ b]
    have h3 : ((b : ℕ) : ℝ) ≤ ((a : ℕ) : ℝ) := Nat.cast_le.2 (Fin.le_def.1 hba.le)
    simp only [rho]
    linarith
  have hcore := phi_decay_core (fun i => (μ i : ℝ)) hν hg hq hY
  refine le_trans (le_of_eq ?_) hcore
  have hfac : ∀ i : Fin n, lead ((i : ℕ) + 1) (NormedSpace.exp Y) ^ (-(μ i - muNext μ i)) =
      (((lead ((i : ℕ) + 1) (NormedSpace.exp Y)).re ^
        (-((μ i : ℝ) - nuNext (fun j => (μ j : ℝ)) i)) : ℝ) : ℂ) := by
    intro i
    have him : (lead ((i : ℕ) + 1) (NormedSpace.exp Y)).im = 0 := by
      have := (Complex.lt_def.1 (hpos i)).2
      simpa using this.symm
    have hre : lead ((i : ℕ) + 1) (NormedSpace.exp Y) =
        ((lead ((i : ℕ) + 1) (NormedSpace.exp Y)).re : ℂ) :=
      Complex.ext (by simp) (by simp [him])
    have hexp : (-((μ i : ℝ) - nuNext (fun j => (μ j : ℝ)) i)) = ((-(μ i - muNext μ i) : ℤ) : ℝ) := by
      simp only [nuNext, muNext]
      split_ifs <;> push_cast <;> ring
    rw [hexp, Real.rpow_intCast, Complex.ofReal_zpow, ← hre]
  simp only [PhiM, phiReal]
  rw [Finset.prod_congr rfl fun i _ => hfac i, ← Complex.ofReal_prod, Complex.ofReal_re]

theorem psiM_dec (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ) (hlam : IsHCParam lam)
    {h : ℝ} (hgap : GapAtLeast ε lam h) (hq : 1 ≤ q0 ε) (k : KG ε) {X : Matrix (Fin n) (Fin n) ℂ} (hX : inP ε X) :
    ‖PsiM T μ (toMK k * NormedSpace.exp X)‖ ≤
      Real.exp (-(h / 8) * min (hs X) (Real.sqrt (hs X) / Real.sqrt (2 * q0 ε))) := by
  rw [psiM_kexp T μ k hX]
  have hB : ∀ k' : KG ε, (PhiM μ (toMK k'⁻¹ * NormedSpace.exp X * toMK k')).re ≤
      Real.exp (-(h / 8) * min (hs X) (Real.sqrt (hs X) / Real.sqrt (2 * q0 ε))) := by
    intro k'
    obtain ⟨hP, hE⟩ := inP_conj k'⁻¹ hX
    rw [inv_inv] at hP hE
    rw [← hE]
    have := phiM_exp_le μ hμ hlam hgap hq hP
    rw [toMK_inv, decA_hs_conj (toMK_facts k').2.1] at this
    rwa [toMK_inv]
  calc ‖T.op k * psM T μ (NormedSpace.exp X)‖ = ‖psM T μ (NormedSpace.exp X)‖ :=
        CStarRing.norm_coe_unitary_mul _ _
    _ ≤ _ := psM_norm_le T μ (exp_noncompactPart_posDef hX) hB

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore =====
