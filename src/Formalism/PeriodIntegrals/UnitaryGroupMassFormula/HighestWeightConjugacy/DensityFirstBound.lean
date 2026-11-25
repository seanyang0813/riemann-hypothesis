module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensStepOf
public import Mathlib.NumberTheory.NumberField.InfiniteAdeleRing
public import Mathlib.NumberTheory.NumberField.Completion.InfinitePlace
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDense
public import Mathlib.Topology.Algebra.MvPolynomial
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsElementPosImUnderCmType
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.CayMulConjTranspose, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensitySecondBound, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensityFirstBound

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.CayMulConjTranspose =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.CayMulConjTranspose", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsElementPosImUnderCmType\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensStepOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.InfiniteAdeleRing\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.NumberField.Completion.InfinitePlace\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.L2.NG ReciprocityTheory.Aut Matrix
open scoped ComplexOrder
open Classical

namespace PI.UnitaryGroupMassFormula.HwConjInf

section cx

variable {n : ℕ}

def cay {R : Type*} [CommRing R] (X : Matrix (Fin n) (Fin n) R) : Matrix (Fin n) (Fin n) R := (1 - X) * (1 + X)⁻¹

theorem det_one_add_ne_zero {X : Matrix (Fin n) (Fin n) ℂ} (hX : Xᴴ = -X) : (1 + X).det ≠ 0 := by
  intro h
  obtain ⟨v, hv, hXv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h
  have h1 : X *ᵥ v = -v := by
    rw [Matrix.add_mulVec, Matrix.one_mulVec] at hXv
    exact (neg_eq_of_add_eq_zero_right hXv).symm
  have h2 : Xᴴ *ᵥ v = v := by rw [hX, Matrix.neg_mulVec, h1, neg_neg]
  have h3 : star v ᵥ* X = star v := by
    have := Matrix.star_mulVec Xᴴ v
    rw [Matrix.conjTranspose_conjTranspose, h2] at this
    exact this.symm
  have h4 : star v ⬝ᵥ v = -(star v ⬝ᵥ v) := by
    calc star v ⬝ᵥ v = (star v ᵥ* X) ⬝ᵥ v := by rw [h3]
      _ = star v ⬝ᵥ (X *ᵥ v) := (Matrix.dotProduct_mulVec _ _ _).symm
      _ = -(star v ⬝ᵥ v) := by rw [h1, dotProduct_neg]
  have h5 : star v ⬝ᵥ v = 0 := by linear_combination h4 / 2
  exact hv (dotProduct_star_self_eq_zero.1 h5)

theorem isUnit_det_one_add {X : Matrix (Fin n) (Fin n) ℂ} (hX : Xᴴ = -X) : IsUnit (1 + X).det := isUnit_iff_ne_zero.mpr (det_one_add_ne_zero hX)

theorem isUnit_det_one_sub {X : Matrix (Fin n) (Fin n) ℂ} (hX : Xᴴ = -X) : IsUnit (1 - X).det := by
  have h : (-X)ᴴ = -(-X) := by rw [Matrix.conjTranspose_neg, hX]
  rw [sub_eq_add_neg]
  exact isUnit_det_one_add h

theorem cay_mul_conjTranspose {X : Matrix (Fin n) (Fin n) ℂ} (hX : Xᴴ = -X) : cay X * (cay X)ᴴ = 1 := by
  have h1 : (1 + X)ᴴ = 1 - X := by
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_one, hX, sub_eq_add_neg]
  have h2 : (1 - X)ᴴ = 1 + X := by
    rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_one, hX, sub_neg_eq_add]
  have hu1 := isUnit_det_one_add hX
  have hu2 := isUnit_det_one_sub hX
  have hc : Commute (1 - X) (1 + X) :=
    (Commute.one_right (1 - X)).add_right ((Commute.one_left X).sub_left (Commute.refl X))
  have e : (1 + X)⁻¹ * (1 - X)⁻¹ = (1 - X)⁻¹ * (1 + X)⁻¹ := by
    rw [← Matrix.mul_inv_rev, hc.eq, Matrix.mul_inv_rev]
  unfold cay
  rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv, h1, h2]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc (1 + X)⁻¹ (1 - X)⁻¹, e, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hu1,
    Matrix.mul_one, Matrix.mul_nonsing_inv _ hu2]

theorem cay_eq (X : Matrix (Fin n) (Fin n) ℂ) :
    cay X = ((1 + X).det)⁻¹ • ((1 - X) * (1 + X).adjugate) := by
  unfold cay
  rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.mul_smul]

theorem exists_cay {Y : Matrix (Fin n) (Fin n) ℂ} (hY : Yᴴ * Y = 1) (h1 : (1 + Y).det ≠ 0) :
    ∃ X : Matrix (Fin n) (Fin n) ℂ, Xᴴ = -X ∧ cay X = Y := by
  have hA : IsUnit (1 + Y).det := isUnit_iff_ne_zero.mpr h1
  have hYY : Y * Yᴴ = 1 := by
    first
      | exact mul_eq_one_comm.1 hY
  have hc : Commute (1 + Y) (Y - 1) :=
    ((Commute.one_left Y).add_left (Commute.refl Y)).sub_right (Commute.one_right _)
  have hcinv : (1 + Y)⁻¹ * (Y - 1) = (Y - 1) * (1 + Y)⁻¹ := by
    calc (1 + Y)⁻¹ * (Y - 1) = (1 + Y)⁻¹ * (Y - 1) * ((1 + Y) * (1 + Y)⁻¹) := by
          rw [Matrix.mul_nonsing_inv _ hA, Matrix.mul_one]
      _ = (1 + Y)⁻¹ * ((1 + Y) * (Y - 1)) * (1 + Y)⁻¹ := by
          rw [hc.eq]
          simp only [Matrix.mul_assoc]
      _ = (Y - 1) * (1 + Y)⁻¹ := by
          rw [← Matrix.mul_assoc (1 + Y)⁻¹, Matrix.nonsing_inv_mul _ hA, Matrix.one_mul]
  refine ⟨(1 - Y) * (1 + Y)⁻¹, ?_, ?_⟩
  · have hinv : ((1 + Y)ᴴ)⁻¹ = (1 + Y)⁻¹ * Y := by
      apply Matrix.inv_eq_right_inv
      rw [Matrix.conjTranspose_add, Matrix.conjTranspose_one, ← Matrix.mul_assoc]
      have e : 1 + Yᴴ = Yᴴ * (1 + Y) := by
        rw [Matrix.mul_add, Matrix.mul_one, hY, add_comm]
      rw [e, Matrix.mul_assoc Yᴴ, Matrix.mul_nonsing_inv _ hA, Matrix.mul_one, hY]
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv, hinv, Matrix.conjTranspose_sub,
      Matrix.conjTranspose_one, Matrix.mul_assoc, Matrix.mul_sub, Matrix.mul_one, hYY, hcinv,
      ← neg_mul, neg_sub]
  · have hsum : 1 + (1 - Y) * (1 + Y)⁻¹ = (2 : ℂ) • (1 + Y)⁻¹ := by
      calc 1 + (1 - Y) * (1 + Y)⁻¹ = (1 + Y) * (1 + Y)⁻¹ + (1 - Y) * (1 + Y)⁻¹ := by
            rw [Matrix.mul_nonsing_inv _ hA]
        _ = ((1 + Y) + (1 - Y)) * (1 + Y)⁻¹ := (Matrix.add_mul _ _ _).symm
        _ = (2 : ℂ) • (1 + Y)⁻¹ := by
            rw [show (1 + Y) + (1 - Y) = (2 : ℂ) • (1 : Matrix (Fin n) (Fin n) ℂ) by
              rw [two_smul]; abel, Matrix.smul_mul, Matrix.one_mul]
    have hdiff : 1 - (1 - Y) * (1 + Y)⁻¹ = (2 : ℂ) • (Y * (1 + Y)⁻¹) := by
      calc 1 - (1 - Y) * (1 + Y)⁻¹ = (1 + Y) * (1 + Y)⁻¹ - (1 - Y) * (1 + Y)⁻¹ := by
            rw [Matrix.mul_nonsing_inv _ hA]
        _ = ((1 + Y) - (1 - Y)) * (1 + Y)⁻¹ := (Matrix.sub_mul _ _ _).symm
        _ = (2 : ℂ) • (Y * (1 + Y)⁻¹) := by
            rw [show (1 + Y) - (1 - Y) = (2 : ℂ) • Y by rw [two_smul]; abel, Matrix.smul_mul]
    have hinv2 : ((2 : ℂ) • (1 + Y)⁻¹)⁻¹ = (2 : ℂ)⁻¹ • (1 + Y) := by
      apply Matrix.inv_eq_right_inv
      rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, Matrix.nonsing_inv_mul _ hA,
        mul_inv_cancel₀ two_ne_zero, one_smul]
    unfold cay
    rw [hsum, hdiff, hinv2, Matrix.smul_mul, Matrix.mul_smul, smul_smul, mul_inv_cancel₀ two_ne_zero,
      one_smul, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hA, Matrix.mul_one]

end cx

section pts

variable {L : Type} [Field L] [NumberField L] {n : ℕ}

def cpt (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) : (L →+* ℂ) × Fin n × Fin n → ℂ := fun p =>
  if p.1 = (InfinitePlace.mk p.1).embedding then Y (InfinitePlace.mk p.1) p.2.1 p.2.2
  else star (Y (InfinitePlace.mk p.1) p.2.1 p.2.2)

theorem repPt_eq_cpt (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) (hY : ∀ w, (Y w)ᴴ * Y w = 1) :
    repPt Y = cpt Y := by
  unfold repPt
  funext p
  simp only [cpt]
  split_ifs
  · rfl
  · rw [Matrix.inv_eq_left_inv (hY _), Matrix.conjTranspose_apply]

theorem denseRange_emb [IsCMField L] :
    DenseRange (fun x : L => fun w : InfinitePlace L => w.embedding x) := by
  apply GlobalTheory.CMTypeImPos.denseRange_embeddings

theorem denseRange_matEmb [IsCMField L] :
    DenseRange (fun b : Matrix (Fin n) (Fin n) L => fun (i j : Fin n) (w : InfinitePlace L) => w.embedding (b i j)) := by
  exact DenseRange.piMap fun _ => DenseRange.piMap fun _ => denseRange_emb

def skewOf (z : Fin n → Fin n → InfinitePlace L → ℂ) (w : InfinitePlace L) : Matrix (Fin n) (Fin n) ℂ :=
  Matrix.of (fun i j => z i j w) - (Matrix.of (fun i j => z i j w))ᴴ

theorem skewOf_skew (z : Fin n → Fin n → InfinitePlace L → ℂ) (w : InfinitePlace L) :
    (skewOf z w)ᴴ = -(skewOf z w) := by
  unfold skewOf
  rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_conjTranspose, neg_sub]

theorem continuous_cpt_cay :
    Continuous (fun z : Fin n → Fin n → InfinitePlace L → ℂ => cpt (fun w => cay (skewOf z w))) := by
  have hs : ∀ w : InfinitePlace L,
      Continuous fun z : Fin n → Fin n → InfinitePlace L → ℂ => skewOf z w := by
    intro w
    refine continuous_pi fun i => continuous_pi fun j => ?_
    simp only [skewOf, Matrix.sub_apply, Matrix.of_apply, Matrix.conjTranspose_apply]
    have hc : ∀ a b : Fin n, Continuous fun z : Fin n → Fin n → InfinitePlace L → ℂ => z a b w :=
      fun a b => (continuous_apply w).comp ((continuous_apply b).comp (continuous_apply a))
    first
      | exact (hc i j).sub (hc j i).star
  have hA : ∀ (w : InfinitePlace L) (i j : Fin n),
      Continuous fun z : Fin n → Fin n → InfinitePlace L → ℂ => cay (skewOf z w) i j := by
    intro w i j
    have e : (fun z : Fin n → Fin n → InfinitePlace L → ℂ => cay (skewOf z w) i j) = fun z =>
        ((1 + skewOf z w).det)⁻¹ * ((1 - skewOf z w) * (1 + skewOf z w).adjugate) i j := by
      funext z
      rw [cay_eq, Matrix.smul_apply, smul_eq_mul]
    rw [e]
    have hd : Continuous fun z : Fin n → Fin n → InfinitePlace L → ℂ => (1 + skewOf z w).det :=
      (continuous_const.add (hs w)).matrix_det
    refine (hd.inv₀ fun z => det_one_add_ne_zero (skewOf_skew z w)).mul ?_
    exact (((continuous_const.sub (hs w)).matrix_mul
      (continuous_const.add (hs w)).matrix_adjugate)).matrix_elem i j
  refine continuous_pi fun p => ?_
  simp only [cpt]
  split_ifs
  · exact hA _ _ _
  · exact (hA _ _ _).star

end pts

end PI.UnitaryGroupMassFormula.HwConjInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.CayMulConjTranspose =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensitySecondBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensitySecondBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensStepOf\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitaryDense\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.L2.NG ReciprocityTheory.Aut Matrix MvPolynomial
open scoped ComplexOrder
open Classical

namespace PI.UnitaryGroupMassFormula.HwConjInf

variable {L : Type} [Field L] [NumberField L] {n : ℕ}

def coords (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) : InfinitePlace L × Fin n × Fin n → ℂ :=
  fun q => Y q.1 q.2.1 q.2.2

def Mx (w : InfinitePlace L) : Matrix (Fin n) (Fin n) (MvPolynomial (InfinitePlace L × Fin n × Fin n) ℂ) :=
  Matrix.of fun i j => X (w, i, j)

theorem eval_Mx (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) (w : InfinitePlace L) :
    (eval (coords Y)).mapMatrix (Mx w) = Y w := by
  ext i j
  simp [Mx, coords]

theorem eval_det_Mx (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) (w : InfinitePlace L) :
    eval (coords Y) (Mx w).det = (Y w).det := by
  rw [RingHom.map_det, eval_Mx]

theorem eval_det_one_add_Mx (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) (w : InfinitePlace L) :
    eval (coords Y) (1 + Mx w).det = (1 + Y w).det := by
  rw [RingHom.map_det, map_add (f := _), map_one, eval_Mx]

theorem eval_adj_Mx (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) (w : InfinitePlace L) (i j : Fin n) :
    eval (coords Y) ((Mx w).adjugate i j) = (Y w).adjugate i j := by
  have h := congrFun (congrFun (RingHom.map_adjugate (eval (coords Y)) (Mx w)) i) j
  rw [eval_Mx] at h
  simpa using h

def Dl (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) : ℂ := ∏ w, (Y w).det

def DlP : MvPolynomial (InfinitePlace L × Fin n × Fin n) ℂ := ∏ w, (Mx w).det

theorem eval_DlP (Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ) : eval (coords Y) (DlP (L := L) (n := n)) = Dl Y := by
  simp [DlP, Dl, map_prod, eval_det_Mx]

theorem var_hom (v : (L →+* ℂ) × Fin n × Fin n) :
    ∃ N : MvPolynomial (InfinitePlace L × Fin n × Fin n) ℂ, ∀ Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ,
      (∀ w, (Y w).det ≠ 0) → Dl Y * repPt Y v = eval (coords Y) N := by
  obtain ⟨σ, i, j⟩ := v
  by_cases h : σ = (InfinitePlace.mk σ).embedding
  · refine ⟨X (InfinitePlace.mk σ, i, j) * DlP, fun Y _ => ?_⟩
    simp only [repPt, if_pos h, map_mul, eval_X, eval_DlP, coords]
    ring
  · refine ⟨(Mx (InfinitePlace.mk σ)).adjugate j i *
      ∏ w ∈ Finset.univ.erase (InfinitePlace.mk σ), (Mx w).det, fun Y hY => ?_⟩
    simp only [repPt, if_neg h, map_mul, map_prod, eval_adj_Mx, eval_det_Mx]
    rw [Matrix.inv_def, Matrix.smul_apply, Dl,
      ← Finset.mul_prod_erase Finset.univ (fun w => (Y w).det) (Finset.mem_univ (InfinitePlace.mk σ)),
      Ring.inverse_eq_inv', smul_eq_mul]
    have := hY (InfinitePlace.mk σ)
    field_simp

theorem hom_exists (F : MvPolynomial ((L →+* ℂ) × Fin n × Fin n) ℂ) :
    ∃ (K : ℕ) (P : MvPolynomial (InfinitePlace L × Fin n × Fin n) ℂ), ∀ Y : InfinitePlace L → Matrix (Fin n) (Fin n) ℂ,
      (∀ w, (Y w).det ≠ 0) → Dl Y ^ K * eval (repPt Y) F = eval (coords Y) P := by
  induction F using MvPolynomial.induction_on with
  | C a => exact ⟨0, C a, fun Y _ => by simp⟩
  | add p q hp hq =>
    obtain ⟨K1, P1, h1⟩ := hp
    obtain ⟨K2, P2, h2⟩ := hq
    refine ⟨K1 + K2, P1 * DlP ^ K2 + P2 * DlP ^ K1, fun Y hY => ?_⟩
    simp only [map_add (f := _), map_mul, map_pow, eval_DlP, ← h1 Y hY, ← h2 Y hY]
    ring
  | mul_X p v hp =>
    obtain ⟨K, P, h⟩ := hp
    obtain ⟨N, hN⟩ := var_hom (L := L) v
    refine ⟨K + 1, P * N, fun Y hY => ?_⟩
    rw [map_mul, map_mul, ← h Y hY, ← hN Y hY, eval_X]
    ring

theorem repPt_of_InV [IsCMField L] (y : (L →+* ℂ) × Fin n × Fin n → ℂ) (hy : InV y) :
    repPt (fun w => Matrix.of fun i j => y (w.embedding, i, j)) = y ∧
      ∀ w : InfinitePlace L, (Matrix.of fun i j => y (w.embedding, i, j)).det ≠ 0 := by
  refine ⟨?_, fun w => ?_⟩
  · funext p
    obtain ⟨σ, i, j⟩ := p
    simp only [repPt]
    split_ifs with h
    · exact congrArg (fun s => y (s, i, j)) h.symm
    · have hc : σ = ComplexEmbedding.conjugate (InfinitePlace.mk σ).embedding := by
        rcases InfinitePlace.embedding_mk_eq σ with h' | h'
        · exact absurd h'.symm h
        · rw [h']; exact (star_star σ).symm
      obtain ⟨B, hB⟩ := hy (InfinitePlace.mk σ).embedding
      have hYB : (Matrix.of fun i j => y ((InfinitePlace.mk σ).embedding, i, j)) = (B : Matrix (Fin n) (Fin n) ℂ) := by
        ext a b; exact (hB a b).1
      rw [hYB, ← Matrix.coe_units_inv]
      conv_rhs => rw [hc]
      exact ((hB i j).2).symm
  · obtain ⟨B, hB⟩ := hy w.embedding
    have hYB : (Matrix.of fun i j => y (w.embedding, i, j)) = (B : Matrix (Fin n) (Fin n) ℂ) := by
      ext a b; exact (hB a b).1
    rw [hYB]
    exact (Matrix.isUnits_det_units B).ne_zero

theorem density_second_bound : DensB := by
  intro L _ _ _ n F hF y hy
  obtain ⟨K, P, hP⟩ := hom_exists (L := L) F
  have hG : (∏ w, (1 + Mx (L := L) (n := n) w).det) * P = 0 := by
    apply productFramesDense_holds (InfinitePlace L) n (fun _ => 1) (fun _ => Matrix.PosDef.one)
    intro Y hY
    have hY' : ∀ w, (Y w)ᴴ * Y w = 1 := fun w => by simpa using hY w
    have hdet : ∀ w, (Y w).det ≠ 0 := fun w h0 => by
      have := congrArg Matrix.det (hY' w)
      rw [Matrix.det_mul, h0, mul_zero, Matrix.det_one] at this
      exact zero_ne_one this
    change eval (coords Y) _ = 0
    rw [map_mul, map_prod]
    simp only [eval_det_one_add_Mx]
    by_cases h1 : ∀ w, (1 + Y w).det ≠ 0
    · rw [← hP Y hdet, hF Y hY' h1]
      simp
    · push Not at h1
      obtain ⟨w, hw⟩ := h1
      rw [Finset.prod_eq_zero (Finset.mem_univ w) hw, zero_mul]
  have hne : (∏ w, (1 + Mx (L := L) (n := n) w).det) ≠ 0 := by
    intro h0
    have := congrArg (eval (coords (fun _ : InfinitePlace L => (0 : Matrix (Fin n) (Fin n) ℂ)))) h0
    rw [map_prod] at this
    simp only [eval_det_one_add_Mx, add_zero, Matrix.det_one, Finset.prod_const_one, map_zero] at this
    exact one_ne_zero this
  have hP0 : P = 0 := (mul_eq_zero.mp hG).resolve_left hne
  obtain ⟨hYy, hYdet⟩ := repPt_of_InV y hy
  have := hP _ hYdet
  rw [hP0, map_zero, hYy] at this
  exact (mul_eq_zero.mp this).resolve_left (pow_ne_zero _ (Finset.prod_ne_zero_iff.mpr fun w _ => hYdet w))

end PI.UnitaryGroupMassFormula.HwConjInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensitySecondBound =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensityFirstBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensityFirstBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.CayMulConjTranspose\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensitySecondBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.L2.NG ReciprocityTheory.Aut Matrix
open scoped ComplexOrder
open Classical

namespace PI.UnitaryGroupMassFormula.HwConjInf

variable {L : Type} [Field L] [NumberField L] {n : ℕ}

theorem mapMatrix_inv (f : L →+* ℂ) (M : Matrix (Fin n) (Fin n) L) (h : M.det ≠ 0) :
    f.mapMatrix M⁻¹ = (f.mapMatrix M)⁻¹ := by
  refine (Matrix.inv_eq_left_inv ?_).symm
  rw [← map_mul, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr h), map_one]

theorem det_mapMatrix (f : L →+* ℂ) (M : Matrix (Fin n) (Fin n) L) : (f.mapMatrix M).det = f M.det :=
  (RingHom.map_det f M).symm

variable [IsCMField L]

def skewL (b : Matrix (Fin n) (Fin n) L) : Matrix (Fin n) (Fin n) L :=
  b - ((IsCMField.complexConj L : L →+* L).mapMatrix b)ᵀ

def zOf (b : Matrix (Fin n) (Fin n) L) : Fin n → Fin n → InfinitePlace L → ℂ :=
  fun i j w => w.embedding (b i j)

theorem map_skewL (b : Matrix (Fin n) (Fin n) L) (w : InfinitePlace L) :
    w.embedding.mapMatrix (skewL b) = skewOf (zOf b) w := by
  ext i j
  simp [skewL, skewOf, zOf, conjTranspose_apply, IsCMField.complexEmbedding_complexConj]

theorem det_one_add_skewL (b : Matrix (Fin n) (Fin n) L) : (1 + skewL b).det ≠ 0 := by
  intro h0
  let w0 : InfinitePlace L := Classical.arbitrary _
  apply det_one_add_ne_zero (skewOf_skew (zOf b) w0)
  rw [← map_skewL, ← map_one w0.embedding.mapMatrix, ← map_add (f := _), det_mapMatrix, h0, map_zero]

theorem det_one_sub_skewL (b : Matrix (Fin n) (Fin n) L) : (1 - skewL b).det ≠ 0 := by
  intro h0
  let w0 : InfinitePlace L := Classical.arbitrary _
  apply (isUnit_det_one_sub (skewOf_skew (zOf b) w0)).ne_zero
  rw [← map_skewL, ← map_one w0.embedding.mapMatrix, ← map_sub, det_mapMatrix, h0, map_zero]

theorem map_cay (b : Matrix (Fin n) (Fin n) L) (w : InfinitePlace L) :
    w.embedding.mapMatrix (cay (skewL b)) = cay (skewOf (zOf b) w) := by
  unfold cay
  rw [map_mul, mapMatrix_inv _ _ (det_one_add_skewL b), map_sub, map_add (f := _), map_one, map_skewL]

theorem map_conjT (f : L →+* ℂ) (M : Matrix (Fin n) (Fin n) L) :
    f.mapMatrix (conjT (IsCMField.complexConj L : L →+* L) M) = (f.mapMatrix M)ᴴ := by
  ext i j
  simp [conjT, conjTranspose_apply, IsCMField.complexEmbedding_complexConj]

theorem cay_skewL_mem (b : Matrix (Fin n) (Fin n) L) :
    cay (skewL b) * conjT (IsCMField.complexConj L : L →+* L) (cay (skewL b)) = 1 := by
  let w0 : InfinitePlace L := Classical.arbitrary _
  have hinj : Function.Injective (w0.embedding.mapMatrix : Matrix (Fin n) (Fin n) L →+* _) := by
    intro M N h
    ext i j
    exact w0.embedding.injective (congrFun (congrFun h i) j)
  apply hinj
  rw [map_mul, map_conjT, map_cay, map_one]
  exact cay_mul_conjTranspose (skewOf_skew (zOf b) w0)

theorem det_cay_skewL (b : Matrix (Fin n) (Fin n) L) : (cay (skewL b)).det ≠ 0 := by
  unfold cay
  rw [det_mul, Matrix.det_nonsing_inv, Ring.inverse_eq_inv']
  exact mul_ne_zero (det_one_sub_skewL b) (inv_ne_zero (det_one_add_skewL b))

theorem ratPt_cay (b : Matrix (Fin n) (Fin n) L) :
    ratPt (cay (skewL b)) = cpt (fun w => cay (skewOf (zOf b) w)) := by
  funext p
  obtain ⟨σ, i, j⟩ := p
  simp only [ratPt, cpt]
  split_ifs with h
  · rw [← map_cay b (InfinitePlace.mk σ), RingHom.mapMatrix_apply, Matrix.map_apply]
    conv_rhs => rw [← h]
  · have hc : σ = ComplexEmbedding.conjugate (InfinitePlace.mk σ).embedding := by
      rcases InfinitePlace.embedding_mk_eq σ with h' | h'
      · exact absurd h'.symm h
      · rw [h']; exact (star_star σ).symm
    rw [← map_cay b (InfinitePlace.mk σ), RingHom.mapMatrix_apply, Matrix.map_apply]
    conv_lhs => rw [hc]
    rw [ComplexEmbedding.conjugate_coe_eq]
    rfl

theorem rat_zero (F : MvPolynomial ((L →+* ℂ) × Fin n × Fin n) ℂ)
    (hF : ∀ γ₀ ∈ GQ0 L n, MvPolynomial.eval (ratPt (γ₀ : Matrix (Fin n) (Fin n) L)) F = 0)
    (b : Matrix (Fin n) (Fin n) L) :
    MvPolynomial.eval (cpt (fun w => cay (skewOf (zOf b) w))) F = 0 := by
  have hu : IsUnit (cay (skewL b)) :=
    (Matrix.isUnit_iff_isUnit_det _).mpr (isUnit_iff_ne_zero.mpr (det_cay_skewL b))
  have hmem : hu.unit ∈ GQ0 L n := by
    show ((hu.unit : GL (Fin n) L) : Matrix (Fin n) (Fin n) L) *
      conjT (IsCMField.complexConj L : L →+* L) ((hu.unit : GL (Fin n) L) : Matrix (Fin n) (Fin n) L) = 1
    rw [IsUnit.unit_spec]
    exact cay_skewL_mem b
  have := hF _ hmem
  rwa [IsUnit.unit_spec, ratPt_cay] at this

theorem density_first_bound : DensA := by
  intro L _ _ _ n F hF Y hYu hY1
  have hH : (fun z : Fin n → Fin n → InfinitePlace L → ℂ => MvPolynomial.eval (cpt (fun w => cay (skewOf z w))) F) =
      fun _ => 0 :=
    (denseRange_matEmb (L := L) (n := n)).equalizer ((MvPolynomial.continuous_eval F).comp continuous_cpt_cay)
      continuous_const (funext fun b => rat_zero F hF b)
  choose X hXs hXc using fun w => exists_cay (hYu w) (hY1 w)
  let z : Fin n → Fin n → InfinitePlace L → ℂ := fun i j w => ((2 : ℂ)⁻¹ • X w) i j
  have hz : ∀ w, cay (skewOf z w) = Y w := by
    intro w
    have hs : skewOf z w = X w := by
      ext i j
      have h1 := congrArg (fun M => M i j) (hXs w)
      simp only [conjTranspose_apply, Matrix.neg_apply] at h1
      have h2 : (starRingEnd ℂ) (X w j i) = -X w i j := h1
      simp only [skewOf, z, Matrix.sub_apply, Matrix.of_apply, conjTranspose_apply, Matrix.smul_apply, smul_eq_mul,
        star_mul']
      simp [h2]
      ring
    rw [hs, hXc]
  rw [repPt_eq_cpt Y hYu]
  have := congrFun hH z
  rwa [show (fun w => cay (skewOf z w)) = Y from funext hz] at this

theorem density_induction : DensStep := densStep_of density_first_bound density_second_bound

end PI.UnitaryGroupMassFormula.HwConjInf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightConjugacy.DensityFirstBound =====
