module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.IsotropicSubspaceEqPrimed
public import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth
public import Formalism.FormalDegreeBessel.FinalG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.AdjugateLastEntrySum
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HermXGen
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.BigCellVanishingOfCommute
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFdGramCut
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HermBvecEI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HmSelfRe
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.MemXspIff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.XiHermitianCofactorDet

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.MemXspIff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.MemXspIff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.IsotropicSubspaceEqPrimed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFdGramCut\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6
open Matrix

noncomputable section

namespace PI.UnitaryGroupMassFormula.GsFr
open PI.UnitaryGroupMassFormula.DLm.Gram

section lemmas

variable {k r : ℕ}

lemma mem_Xsp_iff (v : Fin (2 * r + k + 1) → ℂ) : v ∈ Xsp k r ↔ ∀ i : Fin (2 * r + k + 1), r ≤ i.val → v i = 0 := by
  constructor
  · intro hv
    induction hv using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨a, rfl⟩ := hx
      intro i hi
      simp only [bvec, Pi.single_apply]
      rw [if_neg]
      intro h
      have ha := a.isLt
      rw [h] at hi
      simp only [eI] at hi
      omega
    | zero => intro i _; rfl
    | add x y _ _ hx hy => intro i hi; simp [hx i hi, hy i hi]
    | smul c x _ hx => intro i hi; simp [hx i hi]
  · intro hv
    have hsum : v = ∑ a : Fin r, v (eI k r a) • bvec (eI k r a) := by
      funext i
      simp only [Finset.sum_apply, Pi.smul_apply, bvec, Pi.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero]
      by_cases hi : i.val < r
      · rw [Finset.sum_eq_single ⟨i.val, hi⟩]
        · have he : i = eI k r ⟨i.val, hi⟩ := by ext; rfl
          rw [if_pos he, ← he]
        · intro b _ hb
          rw [if_neg]
          intro h
          apply hb
          ext
          show b.val = i.val
          have h2 := congrArg Fin.val h
          simp only [eI] at h2
          omega
        · simp
      · rw [hv i (by omega)]
        refine (Finset.sum_eq_zero fun b _ => ?_).symm
        rw [if_neg]
        intro h
        have hb := b.isLt
        rw [h] at hi
        simp only [eI] at hi
        omega
    rw [hsum]
    exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

end lemmas

end PI.UnitaryGroupMassFormula.GsFr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.MemXspIff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.XiHermitianCofactorDet =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.XiHermitianCofactorDet", "h": "module\n\npublic import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.IsotropicSubspaceEqPrimed\npublic import Formalism.FormalDegreeBessel.FinalG\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.AdjugateLastEntrySum\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HermBvecEI\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HermXGen\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.HmSelfRe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.MemXspIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6
open Matrix

noncomputable section

namespace PI.UnitaryGroupMassFormula.GsFr
open PI.UnitaryGroupMassFormula.DLm.Gram

section hpk

variable {k r : ℕ}

lemma herm_out_wb {v u : Fin (2 * r + k + 1) → ℂ}
    (hv : ∀ i : Fin (2 * r + k + 1), r ≤ i.val → i.val ≤ r + k → v i = 0) (hu : inWb k r u) :
    herm (Hpk k r) v u = 0 := by
  unfold herm
  simp only [dotProduct, mulVec, Pi.star_apply]
  refine Finset.sum_eq_zero fun j _ => ?_
  by_cases hj : r ≤ j.val ∧ j.val ≤ r + k
  · refine mul_eq_zero_of_right _ (Finset.sum_eq_zero fun l _ => ?_)
    by_cases hl : r ≤ l.val ∧ l.val ≤ r + k
    · rw [hv l hl.1 hl.2, mul_zero]
    · have h0 : Hpk k r j l = 0 := by
        simp only [Hpk]
        split_ifs with h1 h2 h3 <;> first | rfl | (exfalso; omega)
      rw [h0, zero_mul]
  · rw [hu j (by omega), star_zero, zero_mul]

lemma herm_wb_out {u v : Fin (2 * r + k + 1) → ℂ} (hu : inWb k r u)
    (hv : ∀ i : Fin (2 * r + k + 1), r ≤ i.val → i.val ≤ r + k → v i = 0) :
    herm (Hpk k r) u v = 0 := by
  rw [hm_symm _ _root_.Formalism.FourierDecayAlt.P.Ux1.hpk_herm v u, herm_out_wb hv hu, star_zero]

lemma wbPart_mid (v : Fin (2 * r + k + 1) → ℂ) :
    ∀ i : Fin (2 * r + k + 1), r ≤ i.val → i.val ≤ r + k → (v - wbPart k r v) i = 0 := by
  intro i h1 h2
  simp only [Pi.sub_apply, wbPart]
  rw [if_pos ⟨h1, h2⟩, sub_self]

lemma wbPart_inWb (v : Fin (2 * r + k + 1) → ℂ) : inWb k r (wbPart k r v) := by
  intro i hi
  simp only [wbPart]
  rw [if_neg (by omega)]

lemma Tz_ne {z : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) : (Tz k r z : ℂ) ≠ 0 :=
  Complex.ofReal_ne_zero.2 hz.2.ne'

lemma prW_mem {z : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) (v : Fin (2 * r + k + 1) → ℂ) :
    prW k r z v ∈ Wsp k r z := by
  refine ⟨fun i hi => ?_, ?_⟩
  · have h0 : wbPart k r v i = 0 := wbPart_inWb v i hi
    simp only [prW, Pi.add_apply, Pi.smul_apply, smul_eq_mul, h0, hz.1 i hi, mul_zero, add_zero]
  · simp only [prW]
    rw [hm_add_l, hm_smul_l, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, mul_neg, div_mul_cancel₀ _ (Tz_ne hz),
      add_neg_cancel]

lemma herm_prW_r {z q : Fin (2 * r + k + 1) → ℂ} (hq : q ∈ Wsp k r z) (v : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) q (prW k r z v) = herm (Hpk k r) q v := by
  have e1 : herm (Hpk k r) q (v - wbPart k r v) = 0 := herm_wb_out hq.1 (wbPart_mid v)
  have e2 : herm (Hpk k r) q z = 0 := hq.2
  simp only [prW]
  rw [hm_add_r, hm_smul_r, e2, mul_zero, add_zero]
  rw [hm_sub_r, sub_eq_zero] at e1
  exact e1.symm

lemma esI_hi {ξ : Fin (2 * r + k + 1) → ℂ} (hX : ∀ a : Fin r, ξ (esI k r a) = 0) :
    ∀ i : Fin (2 * r + k + 1), r + k < i.val → ξ i = 0 := by
  intro i hi
  have := i.isLt
  have e : esI k r ⟨2 * r + k - i.val, by omega⟩ = i := Fin.ext (by simp only [esI, Fin.val_mk]; omega)
  rw [← e]
  exact hX _

lemma sub_wbPart_X {ξ : Fin (2 * r + k + 1) → ℂ} (hX : ∀ a : Fin r, ξ (esI k r a) = 0) :
    ξ - wbPart k r ξ ∈ Xsp k r := by
  rw [mem_Xsp_iff]
  intro i hi
  by_cases h2 : i.val ≤ r + k
  · exact wbPart_mid ξ i hi h2
  · simp only [Pi.sub_apply, wbPart]
    rw [if_neg (by omega), sub_zero]
    exact esI_hi hX i (by omega)

lemma herm_add_X {p q x x' : Fin (2 * r + k + 1) → ℂ} (hp : inWb k r p) (hq : inWb k r q)
    (hx : x ∈ Xsp k r) (hx' : x' ∈ Xsp k r) :
    herm (Hpk k r) (p + x) (q + x') = herm (Hpk k r) p q := by
  rw [hm_add_l, hm_add_r, hm_add_r, herm_wb_X hx' (wb_hi hp), herm_X_gen hx (wb_hi hq),
    herm_X_gen hx (X_hi hx')]
  simp

lemma fv_last (z : Fin (2 * r + k + 1) → ℂ) : fvec k r z (Fin.last r) = z := by simp [fvec]

lemma fv_X (z : Fin (2 * r + k + 1) → ℂ) (b : Fin (r + 1)) (hb : b ≠ Fin.last r) : fvec k r z b ∈ Xsp k r := by
  have hb' : b.val < r := by
    have h1 := b.isLt
    have h2 : b.val ≠ r := fun h => hb (Fin.ext (by rw [h, Fin.val_last]))
    omega
  rw [fvec, dite_eq_left hb']
  exact Submodule.subset_span ⟨⟨b.val, hb'⟩, rfl⟩

lemma fv_hi {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (b : Fin (r + 1)) :
    ∀ i : Fin (2 * r + k + 1), r + k < i.val → fvec k r z b i = 0 := by
  by_cases hb : b = Fin.last r
  · subst hb; rw [fv_last]; exact wb_hi hz
  · exact X_hi (fv_X z b hb)

lemma key_pr {z ξ : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) (hX : ∀ a : Fin r, ξ (esI k r a) = 0)
    (h0 : prW k r z ξ = 0) :
    herm (Hpk k r) ξ ξ * herm (Hpk k r) z z = herm (Hpk k r) ξ z * star (herm (Hpk k r) ξ z) := by
  have h0' := h0
  unfold prW at h0'
  have hw : wbPart k r ξ = (-(herm (Hpk k r) (wbPart k r ξ) z / (Tz k r z : ℂ))) • z := by
    rw [neg_smul]; exact eq_neg_of_add_eq_zero_left h0'
  set c := -(herm (Hpk k r) (wbPart k r ξ) z / (Tz k r z : ℂ))
  have hx := sub_wbPart_X hX
  have hξ : ξ = c • z + (ξ - wbPart k r ξ) := by rw [← hw]; abel
  have hcz : inWb k r (c • z) := fun i hi => by simp [hz.1 i hi]
  have e1 : herm (Hpk k r) ξ ξ = herm (Hpk k r) (c • z) (c • z) := by
    conv_lhs => rw [hξ]
    exact herm_add_X hcz hcz hx hx
  have e2 : herm (Hpk k r) ξ z = herm (Hpk k r) (c • z) z := by
    conv_lhs => rw [hξ]
    rw [hm_add_l, herm_X_gen hx (wb_hi hz.1), add_zero]
  rw [e1, e2]
  simp only [hm_smul_l, hm_smul_r, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, star_mul', star_neg, Complex.star_def,
    Complex.conj_ofReal]
  ring

lemma adj_LL (M : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) :
    M.adjugate (Fin.last r) (Fin.last r) = (M.submatrix Fin.castSucc Fin.castSucc).det := by
  rw [Matrix.adjugate_fin_succ_eq_det_submatrix]
  simp [Fin.succAbove_last, ← two_mul]

lemma xcof_self {z z' : Fin (2 * r + k + 1) → ℂ} (hz' : C2.StdZ k r z') {y : B.Mat k r} (hy : y ∈ B.GV k r) :
    herm (Hpk k r) (xcof k r z z' y) (xcof k r z z' y) =
      (Zhat k r z z' y).adjugate (Fin.last r) (Fin.last r) *
        (star ((Zhat k r z z' y).adjugate (Fin.last r) (Fin.last r)) * herm (Hpk k r) z' z') := by
  unfold xcof
  rw [hm_sum_l]
  simp_rw [hm_sum_r, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_UH hy]
  rw [Finset.sum_eq_single (Fin.last r)]
  · rw [Finset.sum_eq_single (Fin.last r)]
    · rw [fv_last]
    · intro b' _ hb'
      rw [fv_last, herm_wb_X (fv_X z' b' hb') (wb_hi hz'.1), mul_zero]
    · intro h; exact absurd (Finset.mem_univ _) h
  · intro b _ hb
    refine mul_eq_zero_of_right _ (Finset.sum_eq_zero fun b' _ => ?_)
    rw [herm_X_gen (fv_X z' b hb) (fv_hi hz'.1 b'), mul_zero]
  · intro h; exact absurd (Finset.mem_univ _) h

lemma herm_Hpk_xcof_eq_det_Zhat (z z' : Fin (2 * r + k + 1) → ℂ) (y : B.Mat k r) :
    herm (Hpk k r) (xcof k r z z' y) z = (Zhat k r z z' y).det := by
  unfold xcof
  rw [hm_sum_l]
  have h := congrFun (congrFun (Matrix.mul_adjugate (Zhat k r z z' y)) (Fin.last r)) (Fin.last r)
  rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul, mul_one] at h
  rw [← h]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [mul_comm]
  simp only [Zhat, fv_last]

lemma xcofL_self {z z' : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) (y : B.Mat k r) :
    herm (Hpk k r) (xcofL k r z z' y) (xcofL k r z z' y) =
      star ((Zhat k r z z' y).adjugate (Fin.last r) (Fin.last r)) *
        ((Zhat k r z z' y).adjugate (Fin.last r) (Fin.last r) * herm (Hpk k r) z z) := by
  unfold xcofL
  rw [hm_sum_l]
  simp_rw [hm_sum_r, star_star]
  rw [Finset.sum_eq_single (Fin.last r)]
  · rw [Finset.sum_eq_single (Fin.last r)]
    · rw [fv_last]
    · intro b' _ hb'
      rw [fv_last, herm_wb_X (fv_X z b' hb') (wb_hi hz.1), mul_zero]
    · intro h; exact absurd (Finset.mem_univ _) h
  · intro b _ hb
    refine mul_eq_zero_of_right _ (Finset.sum_eq_zero fun b' _ => ?_)
    rw [herm_X_gen (fv_X z b hb) (fv_hi hz.1 b'), mul_zero]
  · intro h; exact absurd (Finset.mem_univ _) h

lemma ginv_cancel {y : B.Mat k r} (hy : y ∈ B.GV k r) (v : Fin (2 * r + k + 1) → ℂ) : y *ᵥ (y⁻¹ *ᵥ v) = v := by
  rw [mulVec_mulVec, mul_nonsing_inv _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hy), one_mulVec]

lemma xi_hermitian_cofactor_det {z z' : Fin (2 * r + k + 1) → ℂ} {y : B.Mat k r} (hy : y ∈ B.GV k r) :
    herm (Hpk k r) (y⁻¹ *ᵥ xcofL k r z z' y) z' = star (Zhat k r z z' y).det := by
  rw [← Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_UH hy (y⁻¹ *ᵥ xcofL k r z z' y) z', ginv_cancel hy]
  unfold xcofL
  rw [hm_sum_l]
  have h := congrFun (congrFun (Matrix.adjugate_mul (Zhat k r z z' y)) (Fin.last r)) (Fin.last r)
  rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul, mul_one] at h
  rw [← h, star_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [star_mul']
  congr 1
  simp only [Zhat, fv_last]
  exact hm_symm _ _root_.Formalism.FourierDecayAlt.P.Ux1.hpk_herm (y *ᵥ z') (fvec k r z a)

lemma omW_ne {z z' : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) (hz' : C2.StdZ k r z') {y : B.Mat k r}
    (hy : y ∈ B.GV k r) (hG : 0 < Gf k r z z' y) : omW k r z z' y ≠ 0 := by
  intro h0
  have key := key_pr hz (xcof_esI z z' y) h0
  rw [xcof_self hz' hy, herm_Hpk_xcof_eq_det_Zhat, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, adj_LL] at key
  have hG' : 0 < Complex.normSq (Zhat k r z z' y).det -
      Tz k r z * Tz k r z' * Complex.normSq ((Zhat k r z z' y).submatrix Fin.castSucc Fin.castSucc).det := hG
  set a := ((Zhat k r z z' y).submatrix Fin.castSucc Fin.castSucc).det
  set d := (Zhat k r z z' y).det
  simp only [Complex.star_def] at key
  have e : ((Complex.normSq a * Tz k r z' * Tz k r z : ℝ) : ℂ) = ((Complex.normSq d : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.mul_conj, ← Complex.mul_conj]
    linear_combination key
  have e' := Complex.ofReal_injective e
  linarith [e', show Tz k r z * Tz k r z' * Complex.normSq a = Complex.normSq a * Tz k r z' * Tz k r z by ring]

lemma omW'_ne {z z' : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) (hz' : C2.StdZ k r z') {y : B.Mat k r}
    (hy : y ∈ B.GV k r) (hG : 0 < Gf k r z z' y) : omW' k r z z' y ≠ 0 := by
  intro h0
  have key := key_pr hz' (ginv_xcofL_esI z z' hy) h0
  have hs : herm (Hpk k r) (y⁻¹ *ᵥ xcofL k r z z' y) (y⁻¹ *ᵥ xcofL k r z z' y) =
      herm (Hpk k r) (xcofL k r z z' y) (xcofL k r z z' y) := by
    rw [← Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_UH hy, ginv_cancel hy]
  rw [hs, xcofL_self hz, xi_hermitian_cofactor_det hy, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, Formalism.FourierDecayAlt.P.TwoByOneBlock.herm_self_eq, adj_LL,
    star_star] at key
  have hG' : 0 < Complex.normSq (Zhat k r z z' y).det -
      Tz k r z * Tz k r z' * Complex.normSq ((Zhat k r z z' y).submatrix Fin.castSucc Fin.castSucc).det := hG
  set a := ((Zhat k r z z' y).submatrix Fin.castSucc Fin.castSucc).det
  set d := (Zhat k r z z' y).det
  simp only [Complex.star_def] at key
  have e : ((Complex.normSq a * Tz k r z' * Tz k r z : ℝ) : ℂ) = ((Complex.normSq d : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.mul_conj, ← Complex.mul_conj]
    linear_combination key
  have e' := Complex.ofReal_injective e
  linarith [e', show Tz k r z * Tz k r z' * Complex.normSq a = Complex.normSq a * Tz k r z' * Tz k r z by ring]

end hpk

end PI.UnitaryGroupMassFormula.GsFr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GramSchmidtFrames.XiHermitianCofactorDet =====
