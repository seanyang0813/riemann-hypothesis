module

public import Formalism.PeriodIntegrals.QmSkip
public import Formalism.PeriodIntegrals.QmBorderES
public import Formalism.PeriodIntegrals.QmBorderFull
public import Formalism.PeriodIntegrals.QmColExp
public import Formalism.PeriodIntegrals.QmRowExp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.SkipTwoSuccAboveComp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.Development
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Development
public import Formalism.FormalDegreeBessel.FinalG
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.Analysis.Calculus.Deriv.Linear
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.Analysis.SpecialFunctions.Exponential
public import Formalism.RealPlaceAnalysis.ThirdArithmeticHolds
public import Formalism.HermitianCurvature.StatementQ
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnEabGl
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnEabPres
public import Formalism.YangianSpanCharacter.ExchangeGen
public import Formalism.YangianSpanCharacter.StatementT
public import Mathlib.Basic.Complex.Basic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne
public import Formalism.PeriodIntegrals.RTTIndependence
public import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation
public import Formalism.FormalDegreeBessel.StatementRP
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelLiftBasics.LevelGroupUnitaryHermitian
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelTransfer.LzOutRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelTransfer.SecondCapelliMinorLevel
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.MulApplyS
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Pow
public import Mathlib.Analysis.Complex.RealDeriv
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.ReflectionColumnDualIsotropic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.WColOther
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelImageArithmetic.GlevImageOf
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnHermHaar
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnTInv
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnTPres
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmColExp
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowExp
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ConjugateTransposeLeibniz.ExpMulVecFix
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSkip, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.QmBorderFullOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderFull, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.CapelliOperatorCongruence, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.QuantumDeterminantCommutes, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Transfer, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmCapComm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EntrywiseSandwichCommute.BlockEmbeddingMulEntrySwap, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSandwich, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevBasics, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevTransfer, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.HasDerivAtPhase, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.LeftMultiplicationRule, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.SecondHermitianPartDiagonal, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnRuleTorus, Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSkip =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSkip", "h": "module\n\npublic import Formalism.PeriodIntegrals.QmSkip\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem quantum_minor_skip : PI.QmSkip := by
  have hsa : ∀ {n : ℕ} (p : Fin (n + 1)) (k : Fin n),
      (p.succAbove k).val = if k.val < p.val then k.val else k.val + 1 := by
    intro n p k
    unfold Fin.succAbove
    split_ifs with h1 h2 h2 <;> simp_all [Fin.lt_def]
  refine ⟨fun t i j => ?_, fun t i i' j hii' => ?_⟩
  · apply Fin.ext
    have e := hsa i j
    unfold PI.skip1
    split_ifs at e ⊢ <;> simp only at * <;> omega
  · apply Fin.ext
    have e1 := hsa i i'
    have e2 := hsa i' j
    have e3 := hsa i (i'.succAbove j)
    rw [if_neg (by omega)] at e1
    unfold PI.skip2
    split_ifs at e2 e3 ⊢ <;> simp only at * <;> omega
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSkip =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.QmBorderFullOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.QmBorderFullOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.QmBorderES\npublic import Formalism.PeriodIntegrals.QmBorderFull\npublic import Formalism.PeriodIntegrals.QmColExp\npublic import Formalism.PeriodIntegrals.QmRowExp\npublic import Formalism.PeriodIntegrals.QmSkip\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.SkipTwoSuccAboveComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.Development\n\n"}
section -- clump:auto
@[expose] public section

namespace PI

private theorem snoc_comp_cast_eq_bS_of_eq {n k t : ℕ} (hk : k = t) (h : t + 1 = k + 1) (f : Fin k → Fin n)
    (g : Fin t → Fin n) (es : Fin n) (hfg : ∀ i : Fin k, f i = g (Fin.cast hk i)) :
    (Fin.snoc f es ∘ Fin.cast h : Fin (t + 1) → Fin n) = bS g es := by
  subst hk
  have hf : f = g := funext fun i => by simpa using hfg i
  subst hf
  funext i
  simp [bS]

private theorem bfMid_of_expLastCol_expLastRow_skipSucc_bfCross (hLC : ExpLastCol) (hLR : ExpLastRow) (hS1 : SkipSucc)
    (hX : UnitaryGroupMassFormula.QmBorderFull.BFCross) : UnitaryGroupMassFormula.QmBorderFull.BFMid := by
  intro A _ _ n m E e es v hG hB u w
  obtain ⟨t, rfl⟩ : ∃ t, m = t + 1 := ⟨m - 1, by have := w.pos; omega⟩
  have hexp := hLC A n (t + 1) E (bE e (bS v es) ∘ w.castSucc.succ.succAbove) (bS v es) (u - 1)
  have hb1 : bS v es ∘ Fin.castSucc = v := by
    funext i
    simp [bS]
  have hb2 : bS v es (Fin.last (t + 1)) = es := by simp [bS]
  rw [Fin.sum_univ_succ, Fin.sum_univ_castSucc] at hexp
  rw [hb1, hb2, Fin.succ_last, hX A n t E e es v hG hB u w, UnitaryGroupMassFormula.QmBorderFull.Four.mid_comp] at hexp
  simp only [Nat.succ_eq_add_one] at hexp
  have e1 : bE e (bS (v ∘ w.succAbove) es) ∘ Fin.succ = bS (v ∘ w.succAbove) es := by
    funext i
    simp [bE]
  have e2 : bE e (bS (v ∘ w.succAbove) es) 0 = e := by simp [bE]
  have e3 : bE e (bS (v ∘ w.succAbove) es) (Fin.last (t + 1)) = es := by
    rw [← Fin.succ_last]
    simp [bE, bS]
  have hees : e ≠ es := hB.2.1
  rw [Fin.succAbove_zero, e1, e2, e3, UnitaryGroupMassFormula.QmBorderFull.bL_last,
    UnitaryGroupMassFormula.QmBorderFull.Four.Tm_of_ne E _ hees,
    UnitaryGroupMassFormula.QmBorderFull.Four.rowPart hLR E hG e (v ∘ w.succAbove) v (fun x => hB.2.2.1 x) (u - 1)] at hexp
  have g1 : bE e (bS v es) ∘ Fin.succ = bS v es := by
    funext i
    simp [bE]
  have g2 : bE e (bS v es) 0 = e := by simp [bE]
  have hsk : ∀ i : Fin (t + 1), (v ∘ skip1 i : Fin t → Fin n) = v ∘ i.succAbove := by
    intro i
    funext j
    exact congrArg v (hS1 t i j)
  have hu1 : u - 1 - 1 = u - 2 := by ring
  have hu2 : u - 1 - ((t + 1 : ℕ) : ℂ) = u - ((t + 1 : ℕ) : ℂ) - 1 := by ring
  rw [UnitaryGroupMassFormula.QmBorderFull.Four.mid_val (t := t + 1) e es v w, g2,
    UnitaryGroupMassFormula.QmBorderFull.Four.Tm_of_ne E u (hB.2.2.1 w), UnitaryGroupMassFormula.QmBorderFull.Four.mid_comp, g1, hexp]
  rw [hu1, hu2]
  simp only [hsk, Fin.val_succ, Fin.coe_castSucc, Fin.val_zero, Fin.val_last]
  rw [snoc_comp_cast_eq_bS_of_eq (k := t + 1 - 1) (t := t) rfl _ (v ∘ w.succAbove) (v ∘ w.succAbove) es (fun _ => rfl)]
  have hT : ∀ x : Fin (t + 1), E e (v x) * Formalism.REAL.Tm E (u - ↑(t + 1) - 1) es es =
      Formalism.REAL.Tm E (u - ↑(t + 1) - 1) es es * E e (v x) := fun x =>
    (UnitaryGroupMassFormula.QmBorderFull.tm_comm_E E hG _ es e (v x) hees.symm (hB.2.2.2 x)).symm
  clear hexp hb1 hb2 e1 e2 e3 g1 g2 hu1 hu2 hX hLC hLR hS1 hsk
  simp only [UnitaryGroupMassFormula.QmBorderFull.Four.zmul, mul_smul_comm, smul_mul_assoc, smul_smul, mul_add,
    Finset.mul_sum, Finset.sum_mul, mul_ite, mul_zero, mul_assoc, hT]
  have k1 : ((-1 : ℤ) ^ (t + 1 + 0) * (-1) ^ ((w : ℕ) + 1)) = (-1) ^ ((w : ℕ) + 1 + (t + 1)) := by ring
  have k2 : ∀ a b : ℤ, a * (b * ((-1) ^ (w : ℕ) * (-1) ^ ((w : ℕ) + 1))) = -(a * b) := by
    intro a b
    have hw : ((-1 : ℤ) ^ (w : ℕ)) * (-1) ^ ((w : ℕ) + 1) = -1 := by
      rw [pow_succ, ← mul_assoc, ← pow_add, ← two_mul, pow_mul]
      norm_num
    rw [hw]
    ring
  have k3 : ∀ x : ℕ, (-1 : ℤ) ^ x * ((-1) ^ (t + 1 + (t + 1)) * (-1) ^ ((w : ℕ) + 1)) = -(-1) ^ ((w : ℕ) + x) := by
    intro x
    have : ((-1 : ℤ) ^ (t + 1 + (t + 1))) = 1 := by
      rw [← two_mul, pow_mul]
      norm_num
    rw [this]
    ring
  have kite : ∀ (c : Prop) [Decidable c] (X : A), (if c then -X else 0) = -(if c then X else 0) := by
    intro c _ X
    split_ifs <;> simp
  simp only [k1, k2, k3, neg_smul, kite, Finset.sum_neg_distrib]
  abel

theorem qmBorderFull_of (hES : PI.QmBorderES) (hCol : PI.QmColExp) (hRow : PI.QmRowExp) (hSkip : PI.QmSkip) :
    PI.QmBorderFull := by
  obtain ⟨hE, hS⟩ := hES
  obtain ⟨hFC, hLC⟩ := hCol
  obtain ⟨hFR, hLR⟩ := hRow
  obtain ⟨hS1, hS2⟩ := hSkip
  exact UnitaryGroupMassFormula.QmBorderFull.borderFull_of hFC hS
    (bfMid_of_expLastCol_expLastRow_skipSucc_bfCross hLC hLR hS1 (UnitaryGroupMassFormula.QmBorderFull.Four.bfCross_of ⟨hFR, hLR⟩ ⟨hS1, hS2⟩))

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.QmBorderFullOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderFull =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderFull", "h": "module\n\npublic import Formalism.PeriodIntegrals.QmBorderFull\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmColExp\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmRowExp\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSkip\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BorderMinorRotation.QmBorderFullOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem quantum_minor_border_full : PI.QmBorderFull :=
  PI.qmBorderFull_of quantum_minor_border_es quantum_minor_column_expansion quantum_minor_row_expansion quantum_minor_skip
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderFull =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.CapelliOperatorCongruence =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.CapelliOperatorCongruence", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ConjugateTransposeLeibniz.ExpMulVecFix\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Development\npublic import Formalism.FormalDegreeBessel.FinalG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Linear\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.MeanValue\npublic import Mathlib.Analysis.SpecialFunctions.Exponential\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Filter Topology Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

noncomputable section

namespace QmCapCommW

section Linfty
attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

lemma exp_mul_fix {n : ℕ} (X E : Matrix (Fin n) (Fin n) ℂ) (hXE : X * E = 0) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) * E = E := by
  apply QnYLeibnizW.exp_mul_fix <;> assumption

lemma exp_curve_cont {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) :
    Continuous (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X)) := NormedSpace.exp_continuous.comp (Complex.continuous_ofReal.smul continuous_const)

end Linfty

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

lemma exp_mulVec_fix {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) (v : Fin n → ℂ) (hXv : X *ᵥ v = 0) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) *ᵥ v = v := by
  apply QnYLeibnizW.exp_mulVec_fix <;> assumption

lemma exp_mem_UH {n : ℕ} (H Y : Matrix (Fin n) (Fin n) ℂ) (hH : H * H = 1) (hY : Yᴴ * H + H * Y = 0) :
    NormedSpace.exp Y ∈ UH H := by
  apply QnYLeibnizW.exp_mem_UH <;> assumption

lemma glev_mul {k r : ℕ} {i : Fin (r + 1)} {g h : Mx k r} (hg : g ∈ Glev k r i) (hh : h ∈ Glev k r i) :
    g * h ∈ Glev k r i := by
  simp only [Glev, UH, Set.mem_setOf_eq] at hg hh ⊢
  obtain ⟨hg1, hg2⟩ := hg
  obtain ⟨hh1, hh2⟩ := hh
  refine ⟨?_, fun a ha => ⟨?_, ?_⟩⟩
  · rw [Matrix.conjTranspose_mul]
    calc hᴴ * gᴴ * Hpk k r * (g * h) = hᴴ * (gᴴ * Hpk k r * g) * h := by
          simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [hg1, hh1]
  · rw [← Matrix.mulVec_mulVec, (hh2 a ha).1, (hg2 a ha).1]
  · rw [← Matrix.mulVec_mulVec, (hh2 a ha).2, (hg2 a ha).2]

lemma exp_mem_glev {k r : ℕ} {i : Fin (r + 1)} {X : Mx k r} (hX : inLieLev k r i X) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) ∈ Glev k r i := by
  obtain ⟨hL, hF⟩ := hX
  have hH : Hpk k r * Hpk k r = 1 := (hpkFacts k r).2.1
  refine ⟨exp_mem_UH _ _ hH ?_, fun a ha => ?_⟩
  · rw [Matrix.conjTranspose_smul, Complex.star_def, Complex.conj_ofReal, Matrix.smul_mul,
      Matrix.mul_smul, ← smul_add, hL, smul_zero]
  · obtain ⟨h1, h2⟩ := hF a ha
    exact ⟨exp_mulVec_fix X _ h1 t, exp_mulVec_fix X _ h2 t⟩

lemma skew_minus {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) (hh : Hᴴ = H) (hHH : H * H = 1) :
    (Z - H * Zᴴ * H)ᴴ * H + H * (Z - H * Zᴴ * H) = 0 := by
  have e1 : (Z - H * Zᴴ * H)ᴴ = Zᴴ - H * Z * H := by
    rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul,
      Matrix.conjTranspose_conjTranspose, hh, Matrix.mul_assoc H Z H]
  rw [e1, Matrix.sub_mul, Matrix.mul_sub]
  have e2 : H * Z * H * H = H * Z := by rw [Matrix.mul_assoc (H * Z) H H, hHH, Matrix.mul_one]
  have e3 : H * (H * Zᴴ * H) = Zᴴ * H := by
    rw [← Matrix.mul_assoc H (H * Zᴴ) H, ← Matrix.mul_assoc H H Zᴴ, hHH, Matrix.one_mul]
  rw [e2, e3]
  abel

lemma skew_plus {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) (hh : Hᴴ = H) (hHH : H * H = 1) :
    H * (Z + H * Zᴴ * H) - (Z + H * Zᴴ * H)ᴴ * H = 0 := by
  have e1 : (Z + H * Zᴴ * H)ᴴ = Zᴴ + H * Z * H := by
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul,
      Matrix.conjTranspose_conjTranspose, hh, Matrix.mul_assoc H Z H]
  rw [e1, Matrix.add_mul, Matrix.mul_add]
  have e2 : H * Z * H * H = H * Z := by rw [Matrix.mul_assoc (H * Z) H H, hHH, Matrix.mul_one]
  have e3 : H * (H * Zᴴ * H) = Zᴴ * H := by
    rw [← Matrix.mul_assoc H (H * Zᴴ) H, ← Matrix.mul_assoc H H Zᴴ, hHH, Matrix.one_mul]
  rw [e2, e3]
  abel

lemma hpart1_skew {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) (hh : Hᴴ = H) (hHH : H * H = 1) :
    (hpart1 H Z)ᴴ * H + H * hpart1 H Z = 0 := by
  have hinv : H⁻¹ = H := Matrix.inv_eq_left_inv hHH
  unfold hpart1
  rw [hinv, Matrix.conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul]
  have hs : star (1 / 2 : ℂ) = 1 / 2 := by
    have h1 := Complex.conj_ofReal (1 / 2 : ℝ)
    push_cast at h1
    exact h1
  rw [hs, ← smul_add, skew_minus H Z hh hHH, smul_zero]

lemma hpart2_skew {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) (hh : Hᴴ = H) (hHH : H * H = 1) :
    (hpart2 H Z)ᴴ * H + H * hpart2 H Z = 0 := by
  have hinv : H⁻¹ = H := Matrix.inv_eq_left_inv hHH
  unfold hpart2
  rw [hinv, Matrix.conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul]
  have hs : star (1 / (2 * Complex.I)) = -(1 / (2 * Complex.I)) := by
    simp only [Complex.star_def, map_div₀, map_one, map_mul, Complex.conj_I, map_ofNat]
    ring
  rw [hs, neg_smul, neg_add_eq_sub, ← smul_sub, skew_plus H Z hh hHH, smul_zero]

lemma hpk_zero {k r : ℕ} (i : Fin (r + 1)) (p : Fin (mdim k r i)) (a : Fin r) (ha : a.val < i.val) :
    Hpk k r (posL k r i p) (eI k r a) = 0 ∧ Hpk k r (posL k r i p) (esI k r a) = 0 := by
  have hp := p.isLt
  have hi := i.isLt
  unfold mdim at hp
  constructor <;> simp only [Hpk, posL, eI, esI, Fin.ext_iff, Fin.val_mk] <;> split_ifs <;>
    first | rfl | (exfalso; omega)

lemma col_zero {n : ℕ} (Y : Matrix (Fin n) (Fin n) ℂ) (c : Fin n) (h : ∀ j, Y j c = 0) : Y *ᵥ bvec c = 0 := by
  funext j
  simp [bvec, Matrix.mulVec, dotProduct, Pi.single_apply, h]

lemma single_ct {n : ℕ} (a b : Fin n) : (Matrix.single a b (1 : ℂ))ᴴ = Matrix.single b a 1 := by
  ext i j
  rw [Matrix.conjTranspose_apply, Matrix.single_apply, Matrix.single_apply]
  split_ifs <;> simp_all

lemma hpart_col {k r : ℕ} {i : Fin (r + 1)} (a b : Fin (mdim k r i)) (c : Fin (2 * r + k + 1))
    (hcb : c ≠ posL k r i b) (hac : Hpk k r (posL k r i a) c = 0) (s : ℂ) (j : Fin (2 * r + k + 1)) :
    (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ) + s • ((Hpk k r)⁻¹ *
      (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ))ᴴ * Hpk k r)) j c = 0 := by
  rw [single_ct]
  simp [Matrix.mul_apply, Matrix.single_apply, ite_and, hac, Ne.symm hcb]

lemma hpart1_lie {k r : ℕ} (i : Fin (r + 1)) (a b : Fin (mdim k r i)) :
    inLieLev k r i (hpart1 (Hpk k r) (Matrix.single (posL k r i a) (posL k r i b) 1)) := by
  refine ⟨hpart1_skew _ _ (hpkFacts k r).1 (hpkFacts k r).2.1, fun a' ha' => ⟨?_, ?_⟩⟩
  all_goals
    refine col_zero _ _ fun j => ?_
    unfold hpart1
    rw [Matrix.smul_apply, sub_eq_add_neg, ← neg_one_smul ℂ ((Hpk k r)⁻¹ * _ * _)]
  · rw [hpart_col a b _ (by simp only [posL, eI, ne_eq, Fin.ext_iff]; omega) (hpk_zero i a a' ha').1, smul_zero]
  · rw [hpart_col a b _ (by simp only [posL, esI, ne_eq, Fin.ext_iff]; have := b.isLt; unfold mdim at this; omega)
      (hpk_zero i a a' ha').2, smul_zero]

lemma hpart2_lie {k r : ℕ} (i : Fin (r + 1)) (a b : Fin (mdim k r i)) :
    inLieLev k r i (hpart2 (Hpk k r) (Matrix.single (posL k r i a) (posL k r i b) 1)) := by
  refine ⟨hpart2_skew _ _ (hpkFacts k r).1 (hpkFacts k r).2.1, fun a' ha' => ⟨?_, ?_⟩⟩
  all_goals
    refine col_zero _ _ fun j => ?_
    unfold hpart2
    rw [Matrix.smul_apply, ← one_smul ℂ ((Hpk k r)⁻¹ * _ * _)]
  · rw [hpart_col a b _ (by simp only [posL, eI, ne_eq, Fin.ext_iff]; omega) (hpk_zero i a a' ha').1, smul_zero]
  · rw [hpart_col a b _ (by simp only [posL, esI, ne_eq, Fin.ext_iff]; have := b.isLt; unfold mdim at this; omega)
      (hpk_zero i a a' ha').2, smul_zero]

lemma rdV_congr {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {k r : ℕ} {i : Fin (r + 1)}
    {D : Set (Mx k r)} (hD : IsOpen D) {f f' : Mx k r → E} (h : ∀ g ∈ Glev k r i ∩ D, f g = f' g)
    {X : Mx k r} (hX : inLieLev k r i X) {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) :
    RdV X f g = RdV X f' g := by
  unfold RdV
  apply Filter.EventuallyEq.deriv_eq
  have hcont : Continuous (fun t : ℝ => g * NormedSpace.exp ((t : ℂ) • X)) :=
    continuous_const.mul (exp_curve_cont X)
  have hmem : ∀ᶠ t : ℝ in 𝓝 (0 : ℝ), g * NormedSpace.exp ((t : ℂ) • X) ∈ D := by
    apply hcont.continuousAt.preimage_mem_nhds
    simp only [Complex.ofReal_zero, zero_smul, NormedSpace.exp_zero, Matrix.mul_one]
    exact hD.mem_nhds hg.2
  filter_upwards [hmem] with t ht
  exact h _ ⟨glev_mul hg.1 (exp_mem_glev hX t), ht⟩

theorem capelli_operator_congruence : CapCongr := by
  intro E _ _ k r i D a b f f' hD h g hg
  show EabH (Hpk k r) _ _ f g = EabH (Hpk k r) _ _ f' g
  unfold EabH
  rw [rdV_congr hD h (hpart1_lie i a b) hg, rdV_congr hD h (hpart2_lie i a b) hg]

end QmCapCommW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.CapelliOperatorCongruence =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.QuantumDeterminantCommutes =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.QuantumDeterminantCommutes", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Development\npublic import Formalism.RealPlaceAnalysis.ThirdArithmeticHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

noncomputable section

namespace QmCapCommW

theorem quantum_determinant_commutes : QdetCommute := by
  intro A _ _ n E hE u v
  have hc : ∀ c d, Commute (qdet E u) (E c d) := fun c d => qDetCentral A n E hE u c d
  have hT : ∀ w a b, Commute (qdet E u) (Tm E w a b) := by
    intro w a b
    unfold Tm
    refine Commute.add_right ?_ (hc a b)
    split_ifs
    · exact Algebra.commute_algebraMap_right w _
    · exact Commute.zero_right _
  have key : Commute (qdet E u) (qdet E v) := by
    show Commute (qdet E u) (∑ σ : Equiv.Perm (Fin n), ((Equiv.Perm.sign σ : ℤ) : A) *
      (List.ofFn fun k : Fin n => Tm E (v - (k : ℂ)) (id (σ k)) (id k)).prod)
    refine Commute.sum_right _ _ _ fun σ _ => ?_
    refine Commute.mul_right Commute.intCast_right ?_
    refine Commute.list_prod_right _ _ fun y hy => ?_
    simp only [List.mem_ofFn] at hy
    obtain ⟨k, rfl⟩ := hy
    exact hT _ _ _
  exact key.eq

end QmCapCommW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.QuantumDeterminantCommutes =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Transfer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Transfer", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

noncomputable section

namespace QmCapCommW

abbrev Pt (k r : ℕ) (i : Fin (r + 1)) (D : Set (Mx k r)) : Type := {g : Mx k r // g ∈ Glev k r i ∩ D}


open Classical in
def ext0 {k r : ℕ} {i : Fin (r + 1)} {D : Set (Mx k r)} {E : Type} [Zero E] (φ : Pt k r i D → E) : Mx k r → E :=
  fun g => if h : g ∈ Glev k r i ∩ D then φ ⟨g, h⟩ else 0

section Core

variable {k r : ℕ} {i : Fin (r + 1)} {D : Set (Mx k r)} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

lemma extension_by_zero_apply {φ : Pt k r i D → E} {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) : ext0 φ g = φ ⟨g, hg⟩ := by
  simp only [ext0, dif_pos hg]

lemma matrixExtendByZero_add (φ ψ : Pt k r i D → E) : ext0 (φ + ψ) = fun h => ext0 φ h + (1 : ℂ) • ext0 ψ h := by
  funext h
  simp only [ext0]
  split_ifs <;> simp

lemma extendByZeroOffSubset_smul_apply (c : ℂ) (φ : Pt k r i D → E) : ext0 (c • φ) = fun h => (fun _ => (0 : E)) h + c • ext0 φ h := by
  funext h
  simp only [ext0]
  split_ifs <;> simp

lemma matrixExtendByZero_zero : ext0 (0 : Pt k r i D → E) = fun _ => 0 := by
  funext h
  simp only [ext0]
  split_ifs <;> simp

lemma smooth_congr (hD : IsOpen D) {f f' : Mx k r → E} (h : ∀ g ∈ Glev k r i ∩ D, f g = f' g)
    (hf : SmoothLev k r i D f) : SmoothLev k r i D f' := by
  intro g₀ hg₀
  obtain ⟨U, F, hU, hgU, hF, hfF⟩ := hf g₀ hg₀
  refine ⟨U ∩ D, F, hU.inter hD, ⟨hgU, hg₀.2⟩, hF.mono Set.inter_subset_left, fun g hg hgl => ?_⟩
  rw [← h g ⟨hgl, hg.2⟩]
  exact hfF g hg.1 hgl

lemma smooth_zero : SmoothLev k r i D (fun _ : Mx k r => (0 : E)) := fun _ _ => ⟨Set.univ, fun _ => 0, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩

lemma smooth_lin {f f' : Mx k r → E} (hf : SmoothLev k r i D f) (hf' : SmoothLev k r i D f') (c : ℂ) :
    SmoothLev k r i D (fun g => f g + c • f' g) := by
  intro g₀ hg₀
  obtain ⟨U1, F1, hU1, hg1, hF1, hf1⟩ := hf g₀ hg₀
  obtain ⟨U2, F2, hU2, hg2, hF2, hf2⟩ := hf' g₀ hg₀
  refine ⟨U1 ∩ U2, fun g => F1 g + c • F2 g, hU1.inter hU2, ⟨hg1, hg2⟩,
    (hF1.mono Set.inter_subset_left).add ((hF2.mono Set.inter_subset_right).const_smul c),
    fun g hg hgl => ?_⟩
  show f g + c • f' g = F1 g + c • F2 g
  rw [hf1 g hg.1 hgl, hf2 g hg.2 hgl]


variable (k r i D E) in
def SS : Submodule ℂ (Pt k r i D → E) where
  carrier := {φ | SmoothLev k r i D (ext0 φ)}
  add_mem' {φ ψ} hφ hψ := by
    show SmoothLev k r i D (ext0 (φ + ψ))
    rw [matrixExtendByZero_add]; exact smooth_lin hφ hψ 1
  zero_mem' := by
    show SmoothLev k r i D (ext0 (0 : Pt k r i D → E))
    rw [matrixExtendByZero_zero]; exact smooth_zero
  smul_mem' c φ hφ := by
    show SmoothLev k r i D (ext0 (c • φ))
    rw [extendByZeroOffSubset_smul_apply]; exact smooth_lin smooth_zero hφ c

lemma eh_zero (a b : Fin (2 * r + k + 1)) (g : Mx k r) : EH k r a b (fun _ : Mx k r => (0 : E)) g = 0 := by
  simp [EH, EabH, RdV]

def TT (a b : Fin (mdim k r i)) (φ : Pt k r i D → E) : Pt k r i D → E :=
  fun p => EH k r (posL k r i a) (posL k r i b) (ext0 φ) p.1

lemma TT_mem (hP : EabPres) (hD : IsOpen D) {φ : Pt k r i D → E} (hφ : φ ∈ SS k r i D E) (a b : Fin (mdim k r i)) :
    TT a b φ ∈ SS k r i D E := by
  have h1 := (hP E k r 0 i D a b (ext0 φ) (ext0 φ) 0 hD hφ hφ).1
  refine smooth_congr hD (fun g hg => ?_) h1
  exact (extension_by_zero_apply (φ := TT a b φ) hg).symm

lemma TT_add (hP : EabPres) (hD : IsOpen D) {φ ψ : Pt k r i D → E} (hφ : φ ∈ SS k r i D E)
    (hψ : ψ ∈ SS k r i D E) (a b : Fin (mdim k r i)) : TT a b (φ + ψ) = TT a b φ + TT a b ψ := by
  funext p
  have h3 := (hP E k r 0 i D a b (ext0 φ) (ext0 ψ) 1 hD hφ hψ).2.2 p.1 p.2
  show EH k r (posL k r i a) (posL k r i b) (ext0 (φ + ψ)) p.1 =
    EH k r (posL k r i a) (posL k r i b) (ext0 φ) p.1 + EH k r (posL k r i a) (posL k r i b) (ext0 ψ) p.1
  rw [matrixExtendByZero_add, h3, one_smul]

lemma TT_smul (hP : EabPres) (hD : IsOpen D) {φ : Pt k r i D → E} (hφ : φ ∈ SS k r i D E) (c : ℂ)
    (a b : Fin (mdim k r i)) : TT a b (c • φ) = c • TT a b φ := by
  funext p
  have h3 := (hP E k r 0 i D a b (fun _ => (0 : E)) (ext0 φ) c hD smooth_zero hφ).2.2 p.1 p.2
  try dsimp only at h3
  show EH k r (posL k r i a) (posL k r i b) (ext0 (c • φ)) p.1 =
    c • EH k r (posL k r i a) (posL k r i b) (ext0 φ) p.1
  rw [extendByZeroOffSubset_smul_apply]
  try dsimp only
  rw [h3, eh_zero, zero_add]

def EE (hP : EabPres) (hD : IsOpen D) (a b : Fin (mdim k r i)) : Module.End ℂ (SS k r i D E) where
  toFun x := ⟨TT a b x.1, TT_mem hP hD x.2 a b⟩
  map_add' x y := Subtype.ext (TT_add hP hD x.2 y.2 a b)
  map_smul' c x := Subtype.ext (TT_smul hP hD x.2 c a b)

def Rep (F : Mx k r → E) (φ : Pt k r i D → E) : Prop := ∀ g (hg : g ∈ Glev k r i ∩ D), F g = φ ⟨g, hg⟩

lemma EE_rep (hC : CapCongr) (hP : EabPres) (hD : IsOpen D) {F : Mx k r → E} {x : SS k r i D E}
    (h : Rep F x.1) (a b : Fin (mdim k r i)) :
    Rep (EH k r (posL k r i a) (posL k r i b) F) (EE hP hD a b x).1 := by
  unfold Rep at h ⊢
  intro g hg
  show EH k r (posL k r i a) (posL k r i b) F g = EH k r (posL k r i a) (posL k r i b) (ext0 x.1) g
  exact hC E k r i D a b F (ext0 x.1) hD (fun g' hg' => by rw [extension_by_zero_apply hg']; exact h g' hg') g hg

lemma rep_sum {ι : Type*} [Fintype ι] (c : ι → ℂ) {F : ι → Mx k r → E} {x : ι → SS k r i D E}
    (h : ∀ j, Rep (F j) (x j).1) : Rep (fun g => ∑ j, c j • F j g) (∑ j, c j • x j).1 := by
  unfold Rep at h ⊢
  intro g hg
  show ∑ j, c j • F j g = _
  rw [Submodule.coe_sum, Finset.sum_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Submodule.coe_smul, Pi.smul_apply, h j g hg]

lemma posL_inj {a b : Fin (mdim k r i)} (e : posL k r i a = posL k r i b) : a = b := by
  have h1 := congrArg Fin.val e
  simp only [posL, Fin.val_mk] at h1
  exact Fin.ext (by omega)

lemma Tm_rep (hC : CapCongr) (hP : EabPres) (hD : IsOpen D) {F : Mx k r → E} {x : SS k r i D E}
    (h : Rep F x.1) (u : ℂ) (a b : Fin (mdim k r i)) :
    Rep (Formalism.QuantumDeterminants.Top (EH k r) u (posL k r i a) (posL k r i b) F) (Tm (EE hP hD) u a b x).1 := by
  have h1 := EE_rep hC hP hD h a b
  unfold Rep at h h1 ⊢
  intro g hg
  by_cases hab : a = b
  · subst hab
    first
      | simp [Formalism.QuantumDeterminants.Top, Formalism.REAL.Tm, Module.algebraMap_end_apply, h g hg, h1 g hg]
  · have hne : posL k r i a ≠ posL k r i b := fun e => hab (posL_inj e)
    first
      | simp [Formalism.QuantumDeterminants.Top, Formalism.REAL.Tm, hab, hne, h1 g hg]

lemma foldr_rep (hC : CapCongr) (hP : EabPres) (hD : IsOpen D) (l : List (ℂ × Fin (mdim k r i) × Fin (mdim k r i)))
    {F : Mx k r → E} {x : SS k r i D E} (h : Rep F x.1) :
    Rep ((l.map fun p => Formalism.QuantumDeterminants.Top (EH k r) p.1 (posL k r i p.2.1) (posL k r i p.2.2)).foldr (fun T f => T f) F)
      ((l.map fun p => Tm (EE hP hD) p.1 p.2.1 p.2.2).prod x).1 := by
  induction l with
  | nil => simpa using h
  | cons q l ih =>
    simp only [List.map_cons, List.foldr_cons, List.prod_cons]
    first
      | rw [Module.End.mul_apply]
    exact Tm_rep hC hP hD ih q.1 q.2.1 q.2.2

lemma qminor_apply (hP : EabPres) (hD : IsOpen D) {t : ℕ} (a b : Fin t → Fin (mdim k r i)) (u : ℂ)
    (x : SS k r i D E) :
    qminor (EE hP hD) a b u x = ∑ σ : Equiv.Perm (Fin t), (((Equiv.Perm.sign σ : ℤ) : ℂ)) •
      ((List.ofFn fun k : Fin t => (u - ((k : ℕ) : ℂ), a (σ k), b k)).map
        fun p => Tm (EE hP hD) p.1 p.2.1 p.2.2).prod x := by
  unfold qminor
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun d _ => ?_
  rw [Module.End.mul_apply, List.map_ofFn]
  simp [Function.comp_def, Int.cast_smul_eq_zsmul]

lemma qdet_rep (hC : CapCongr) (hP : EabPres) (hD : IsOpen D) (u : ℂ) {F : Mx k r → E} {x : SS k r i D E}
    (h : Rep F x.1) : Rep (capL k r i u F) (qdet (EE hP hD) u x).1 := by
  unfold qdet capL
  rw [qminor_apply]
  unfold qminorOp
  have H := rep_sum (fun σ : Equiv.Perm (Fin (mdim k r i)) => (((Equiv.Perm.sign σ : ℤ) : ℂ)))
    (fun σ => foldr_rep hC hP hD (List.ofFn fun q : Fin (mdim k r i) => (u - ((q : ℕ) : ℂ), σ q, q)) h)
  simp only [List.map_ofFn, Function.comp_def, id] at H ⊢
  intro g hg
  rw [Finset.sum_apply]
  simp only [Pi.smul_apply]
  exact H g hg

lemma EE_gl (hC : CapCongr) (hP : EabPres) (hG : EabGlLev) (hD : IsOpen D) :
    GlRel (EE (E := E) (i := i) hP hD) := by
  unfold GlRel
  unfold EabGlLev at hG
  have loc : ∀ (a b c d : Fin (mdim k r i)) (x : SS k r i D E) (g : Mx k r) (hg : g ∈ Glev k r i ∩ D),
      (EE hP hD a b (EE hP hD c d x)).1 ⟨g, hg⟩ =
        EH k r (posL k r i a) (posL k r i b) (EH k r (posL k r i c) (posL k r i d) (ext0 x.1)) g := by
    intro a b c d x g hg
    show EH k r (posL k r i a) (posL k r i b) (ext0 (TT c d x.1)) g = _
    exact (hC E k r i D a b (EH k r (posL k r i c) (posL k r i d) (ext0 x.1)) (ext0 (TT c d x.1)) hD
      (fun g' hg' => by rw [extension_by_zero_apply hg']; rfl) g hg).symm
  intro a b c d
  apply LinearMap.ext
  intro x
  apply Subtype.ext
  funext q
  obtain ⟨g, hg⟩ := q
  have key := hG E k r i D a b c d (ext0 x.1) hD x.2 g hg
  change (EE hP hD a b (EE hP hD c d x)).1 ⟨g, hg⟩ - (EE hP hD c d (EE hP hD a b x)).1 ⟨g, hg⟩ = _
  rw [loc a b c d x g hg, loc c d a b x g hg, key]
  split_ifs <;> rfl

end Core

theorem capelli_operator_transfer : CapTransfer := by
  unfold CapTransfer
  intro hC hQ hP hG
  unfold CapCommute
  unfold QdetCommute at hQ
  intro E _ _ k r i D f hD hf g hg u v
  have hmem : (fun q : Pt k r i D => f q.1) ∈ SS k r i D E :=
    smooth_congr hD (fun g' hg' => (extension_by_zero_apply (φ := fun q : Pt k r i D => f q.1) hg').symm) hf
  let x : SS k r i D E := ⟨fun q => f q.1, hmem⟩
  have hx : Rep f x.1 := fun _ _ => rfl
  have h1 := qdet_rep hC hP hD u (qdet_rep hC hP hD v hx)
  have h2 := qdet_rep hC hP hD v (qdet_rep hC hP hD u hx)
  have hcomm := hQ (Module.End ℂ (SS k r i D E)) (mdim k r i) (EE hP hD) (EE_gl hC hP hG hD) u v
  rw [h1 g hg, h2 g hg]
  have := congrArg (fun T => (T x).1 ⟨g, hg⟩) hcomm
  simpa only [Module.End.mul_apply] using this

end QmCapCommW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Transfer =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmCapComm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmCapComm", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnEabGl\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnEabPres\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.CapelliOperatorCongruence\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.QuantumDeterminantCommutes\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuantumDeterminantCommute.Transfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem qmCapComm_of : Formalism.FourierDecayAlt.Q.EabPres → Formalism.FourierDecayAlt.Q.EabGlLev → Formalism.FourierDecayAlt.Q.CapCommute :=
  fun hP hG => QmCapCommW.capelli_operator_transfer QmCapCommW.capelli_operator_congruence QmCapCommW.quantum_determinant_commutes hP hG

theorem qmCapComm_of_gl : Formalism.FourierDecayAlt.Q.EabGlLev → Formalism.FourierDecayAlt.Q.CapCommute :=
  qmCapComm_of qnEabPres

theorem capelli_det_commute : Formalism.FourierDecayAlt.Q.CapCommute :=
  qmCapComm_of_gl qnEabGl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmCapComm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EntrywiseSandwichCommute.BlockEmbeddingMulEntrySwap =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EntrywiseSandwichCommute.BlockEmbeddingMulEntrySwap", "h": "module\n\npublic import Formalism.YangianSpanCharacter.ExchangeGen\npublic import Formalism.YangianSpanCharacter.StatementT\npublic import Mathlib.Basic.Complex.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.QmSandwichWork

open Matrix Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.P.W

variable {A : Type} [Ring A] [Algebra ℂ A]

theorem tm_entry_comm (Y : ℂ) {p c ci x : A} (hp : Commute p x) (hc : Commute c x)
    (hci : Commute ci x) (i j : Fin 2) : Commute (Tm Y p c ci i j) x := by
  fin_cases i <;> fin_cases j
  · simpa [Tm] using (Algebra.commute_algebraMap_left Y x).add_left hp
  · simpa [Tm] using hc.neg_left
  · simpa [Tm] using hci
  · simp [Tm]

theorem flip_row (D : ℂ) (K : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) :
    ((D • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Pf A) * K) (0, 0) (0, 0) =
      algebraMap ℂ A (D - 1) * K (0, 0) (0, 0) := by
  simp [Matrix.mul_apply, Fintype.sum_prod_type, Fin.sum_univ_two, Pf, Matrix.one_apply,
    Algebra.algebraMap_eq_smul_one, sub_smul, sub_mul]

theorem flip_col (D : ℂ) (K : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) :
    (K * (D • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Pf A)) (0, 0) (0, 0) =
      algebraMap ℂ A (D - 1) * K (0, 0) (0, 0) := by
  simp [Matrix.mul_apply, Fintype.sum_prod_type, Fin.sum_univ_two, Pf, Matrix.one_apply,
    Algebra.algebraMap_eq_smul_one, sub_smul, sub_mul, mul_sub, mul_one]

theorem block_embedding_mul_entry (M N : Matrix (Fin 2) (Fin 2) A) : (E1 M * E2 N) (0, 0) (0, 0) = M 0 0 * N 0 0 := by
  simp [Matrix.mul_apply, Fintype.sum_prod_type, E1, E2]

theorem block_embedding_mul_entry_swap (M N : Matrix (Fin 2) (Fin 2) A) : (E2 N * E1 M) (0, 0) (0, 0) = N 0 0 * M 0 0 := by
  simp [Matrix.mul_apply, Fintype.sum_prod_type, E1, E2]

end PI.QmSandwichWork
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EntrywiseSandwichCommute.BlockEmbeddingMulEntrySwap =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSandwich =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSandwich", "h": "module\n\npublic import Formalism.PeriodIntegrals.RTTIndependence\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EntrywiseSandwichCommute.BlockEmbeddingMulEntrySwap\npublic import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

private theorem rtt_commutator_sandwich_eq_of_relations {M : Type} [Ring M] (R e2b e1b' e1q' e2q e1a' e2a : M)
    (h1 : e2q * e1a' = e1a' * e2q) (h2 : e2b * e1q' = e1q' * e2b) (h3 : e2b * e1a' = e1a' * e2b)
    (h4 : e2a * e1b' = e1b' * e2a) (h5 : e2q * e1b' = e1b' * e2q) (h6 : e2a * e1q' = e1q' * e2a)
    (hP : R * e1b' * e2b = e2b * e1b' * R) (hU : R * e1a' * e2a = e2a * e1a' * R) :
    e2b * e1b' * (R * e1q' * e2q - e2q * e1q' * R) * (e1a' * e2a) =
      R * (e1b' * e1q' * e1a' * (e2b * e2q * e2a)) - e2b * e2q * e2a * (e1b' * e1q' * e1a') * R := by
  rw [mul_sub, sub_mul]
  congr 1
  · calc e2b * e1b' * (R * e1q' * e2q) * (e1a' * e2a)
        = e2b * e1b' * R * e1q' * (e2q * e1a') * e2a := by simp only [mul_assoc]
      _ = R * e1b' * e2b * e1q' * (e1a' * e2q) * e2a := by rw [← hP, h1]
      _ = R * e1b' * (e2b * e1q') * e1a' * e2q * e2a := by simp only [mul_assoc]
      _ = R * e1b' * e1q' * (e2b * e1a') * e2q * e2a := by rw [h2]; simp only [mul_assoc]
      _ = R * (e1b' * e1q' * e1a' * (e2b * e2q * e2a)) := by rw [h3]; simp only [mul_assoc]
  · calc e2b * e1b' * (e2q * e1q' * R) * (e1a' * e2a)
        = e2b * e1b' * e2q * e1q' * (R * e1a' * e2a) := by simp only [mul_assoc]
      _ = e2b * e1b' * e2q * e1q' * (e2a * e1a' * R) := by rw [hU]
      _ = e2b * (e1b' * e2q) * (e1q' * e2a) * e1a' * R := by simp only [mul_assoc]
      _ = e2b * (e2q * e1b') * (e2a * e1q') * e1a' * R := by rw [← h5, ← h6]
      _ = e2b * e2q * (e1b' * e2a) * e1q' * e1a' * R := by simp only [mul_assoc]
      _ = e2b * e2q * e2a * (e1b' * e1q' * e1a') * R := by rw [← h4]; simp only [mul_assoc]

theorem rtt_sandwich' : PI.RTTSandwich := by
  intro A _ _ QQ p c ci p' c' ci' hW hW' hcomm hQ Y Y'
  dsimp only
  have hbu : ∀ (y : ℂ) (i j : Fin 2), ∀ u ∈ ({p, c, ci} : Set A), Commute (Formalism.YangianSpanCharacter.T.Tm y p' c' ci' i j) u := by
    intro y i j u hu
    exact PI.QmSandwichWork.tm_entry_comm y (hcomm u hu p' (by simp)).symm (hcomm u hu c' (by simp)).symm
      (hcomm u hu ci' (by simp)).symm i j
  have hab : ∀ (y y' : ℂ) (i j k l : Fin 2),
      Commute (Formalism.YangianSpanCharacter.T.Tm y p c ci i j) (Formalism.YangianSpanCharacter.T.Tm y' p' c' ci' k l) := by
    intro y y' i j k l
    exact PI.QmSandwichWork.tm_entry_comm y (hbu y' k l p (by simp)).symm (hbu y' k l c (by simp)).symm
      (hbu y' k l ci (by simp)).symm i j
  have haq : ∀ (y y' : ℂ) (i j k l : Fin 2), Commute (Formalism.YangianSpanCharacter.T.Tm y p c ci i j) (QQ y' k l) :=
    fun y y' i j k l => PI.QmSandwichWork.tm_entry_comm y (hQ p (by simp) y' k l) (hQ c (by simp) y' k l)
      (hQ ci (by simp) y' k l) i j
  have hbq : ∀ (y y' : ℂ) (i j k l : Fin 2), Commute (Formalism.YangianSpanCharacter.T.Tm y p' c' ci' i j) (QQ y' k l) :=
    fun y y' i j k l => PI.QmSandwichWork.tm_entry_comm y (hQ p' (by simp) y' k l) (hQ c' (by simp) y' k l)
      (hQ ci' (by simp) y' k l) i j
  have h1 : Formalism.YangianSpanCharacter.T.E2 (QQ Y) * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) =
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) * Formalism.YangianSpanCharacter.T.E2 (QQ Y) :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => haq Y' Y i j k l).symm
  have h2 : Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') * Formalism.YangianSpanCharacter.T.E1 (QQ Y') =
      Formalism.YangianSpanCharacter.T.E1 (QQ Y') * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => (hbq Y Y' k l i j).symm).symm
  have h3 : Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) =
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => hab Y' Y i j k l).symm
  have h4 : Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') =
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => (hab Y Y' k l i j).symm).symm
  have h5 : Formalism.YangianSpanCharacter.T.E2 (QQ Y) * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') =
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') * Formalism.YangianSpanCharacter.T.E2 (QQ Y) :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => hbq Y' Y i j k l).symm
  have h6 : Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) * Formalism.YangianSpanCharacter.T.E1 (QQ Y') =
      Formalism.YangianSpanCharacter.T.E1 (QQ Y') * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) :=
    (Formalism.FourierDecayAlt.P.W.first_second_embedding_commute _ _ fun i j k l => (haq Y Y' k l i j).symm).symm
  have hP : ((Y' - Y) • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Formalism.YangianSpanCharacter.T.Pf A) *
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') =
      Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') *
        ((Y' - Y) • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Formalism.YangianSpanCharacter.T.Pf A) :=
    Formalism.YangianSpanCharacter.P.rttRelation ℂ A p' c' ci' Y Y' hW'
  have hU : ((Y' - Y) • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Formalism.YangianSpanCharacter.T.Pf A) *
      Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) =
      Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci) * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) *
        ((Y' - Y) • (1 : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) - Formalism.YangianSpanCharacter.T.Pf A) :=
    Formalism.YangianSpanCharacter.P.rttRelation ℂ A p c ci Y Y' hW
  have hmat := rtt_commutator_sandwich_eq_of_relations _ _ _ _ _ _ _ h1 h2 h3 h4 h5 h6 hP hU
  change _ = (Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p' c' ci') * Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p' c' ci') *
    (_ : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) A) *
    (Formalism.YangianSpanCharacter.T.E1 (Formalism.YangianSpanCharacter.T.Tm Y' p c ci) * Formalism.YangianSpanCharacter.T.E2 (Formalism.YangianSpanCharacter.T.Tm Y p c ci))) (0, 0) (0, 0)
  rw [hmat, Matrix.sub_apply, PI.QmSandwichWork.flip_row, PI.QmSandwichWork.flip_col, ← Formalism.FourierDecayAlt.P.W.first_embedding_mul,
    ← Formalism.FourierDecayAlt.P.W.first_embedding_mul, ← Formalism.FourierDecayAlt.P.W.entries_mem_mul, ← Formalism.FourierDecayAlt.P.W.entries_mem_mul, PI.QmSandwichWork.block_embedding_mul_entry,
    PI.QmSandwichWork.block_embedding_mul_entry_swap, mul_sub]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSandwich =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevBasics =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevBasics", "h": "module\n\npublic import Formalism.FormalDegreeBessel.StatementRP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelLiftBasics.LevelGroupUnitaryHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem level_basics : Formalism.QuantumDeterminants.LevHom ∧ Formalism.QuantumDeterminants.LevUH ∧ Formalism.QuantumDeterminants.LevN ∧ Formalism.QuantumDeterminants.LevUW ∧ Formalism.QuantumDeterminants.LevWb ∧ Formalism.QuantumDeterminants.LevEll :=
  ⟨PI.QnLevBasicsW.level_group_homomorphism, PI.QnLevBasicsW.level_group_unitary_hermitian, PI.QnLevBasicsW.level_group_nilpotent,
    PI.QnLevBasicsW.level_group_unitary_weyl, PI.QnLevBasicsW.level_group_isotropic_vector, PI.QnLevBasicsW.level_group_ellipticity⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevBasics =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevTransfer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevTransfer", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelTransfer.LzOutRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelTransfer.SecondCapelliMinorLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem level_transfer_of_levHom : Formalism.QuantumDeterminants.LevHom → Formalism.FourierDecayAlt.Q.LevelTransfer := by
  open PIQnLT Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q in
  intro hL E _ _ k i r' z z' Y p q f g hg
  have hinv : (ιLev k i r' g)⁻¹ = ιLev k i r' g⁻¹ := ιLev_inv hL g (isUnit_det_of_UH g hg)
  have hm := mdim_lev k i r'
  have hP : ∀ j, posL k (i + r') ⟨i, by omega⟩ j = levPos k i r' (posL k r' 0 (Fin.cast hm j)) :=
    posL_lev k i r'
  have hx : ∀ j, xv k (i + r') (liftVec k i r' z') ⟨i, by omega⟩ j = xv k r' z' 0 (Fin.cast hm j) := by
    intro j
    simp only [xv]
    rw [fvec_lift, hP, liftVec_lev]
  have hxb : ∀ j, xbv k (i + r') (liftVec k i r' z') ⟨i, by omega⟩ j =
      xbv k r' z' 0 (Fin.cast hm j) := by
    intro j
    simp only [xbv]
    rw [fvec_lift, hP, bvec_lev, herm_liftVec]
  have hy : ∀ j, yv k (i + r') (liftVec k i r' z) ⟨i, by omega⟩ (ιLev k i r' g) j =
      yv k r' z 0 g (Fin.cast hm j) := by
    intro j
    simp only [yv]
    rw [hinv, fvec_lift, mulVec_liftVec, hP, liftVec_lev]
  have hyb : ∀ j, ybv k (i + r') (liftVec k i r' z) ⟨i, by omega⟩ (ιLev k i r' g) j =
      ybv k r' z 0 g (Fin.cast hm j) := by
    intro j
    simp only [ybv]
    rw [fvec_lift, hP, bvec_lev, mulVec_liftVec, herm_liftVec]
  have hu := uC_lev k i r' Y
  fin_cases p <;> fin_cases q
  · simp only [tL, capL]
    rw [hu]
    exact capL_cast hL hm _ _ hP _ f g
  · simp only [tL, Pi.neg_apply]
    rw [hu]
    congr 1
    exact chatL_cast hL hm _ _ hP _ _ _ _ _ f g (fun j => hx j) (fun j => hyb j)
  · simp only [tL, Pi.neg_apply]
    rw [hu]
    congr 1
    exact chatL_cast hL hm _ _ hP _ _ _ _ _ f g (fun j => hy j) (fun j => hxb j)
  · simp only [tL, Pi.neg_apply]
    rw [hu]
    congr 1
    exact second_capelli_minor_cast hL hm _ _ hP _ _ _ _ _ _ _ _ _ f g (fun j => hy j) (fun j => hx j)
      (fun j => hyb j) (fun j => hxb j)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevTransfer =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.HasDerivAtPhase =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.HasDerivAtPhase", "h": "module\n\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.MulApplyS\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Pow\npublic import Mathlib.Analysis.Complex.RealDeriv\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.QuantumDeterminants.WeylGroupFacts

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.Q.LeftMultiplicationRule

variable {k r : ℕ}

lemma hinv : (Hpk k r)⁻¹ = Hpk k r := Matrix.inv_eq_left_inv (Formalism.QuantumDeterminants.GBasic.Hpk_sq k r)

lemma hH2 (X : Mx k r) : Hpk k r * (Hpk k r * X) = X := by
  rw [← mul_assoc, Formalism.QuantumDeterminants.GBasic.Hpk_sq k r, one_mul]

lemma uh_inv_eq {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g⁻¹ = Hpk k r * gᴴ * Hpk k r := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  apply Matrix.inv_eq_left_inv
  calc Hpk k r * gᴴ * Hpk k r * g = Hpk k r * (gᴴ * Hpk k r * g) := by simp only [mul_assoc]
    _ = 1 := by rw [hg', Formalism.QuantumDeterminants.GBasic.Hpk_sq k r]

lemma dag_conj {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (Z : Mx k r) :
    g * (Hpk k r * Zᴴ * Hpk k r) * g⁻¹ = Hpk k r * (g * Z * g⁻¹)ᴴ * Hpk k r := by
  rw [uh_inv_eq hg]
  simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, Formalism.QuantumDeterminants.GBasic.Hpk_herm, mul_assoc, hH2]

lemma hpart1_conj {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (Z : Mx k r) :
    g * hpart1 (Hpk k r) Z * g⁻¹ = hpart1 (Hpk k r) (g * Z * g⁻¹) := by
  simp only [hpart1, hinv]
  rw [mul_smul_comm, smul_mul_assoc, mul_sub, sub_mul, dag_conj hg]

lemma hpart2_conj {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (Z : Mx k r) :
    g * hpart2 (Hpk k r) Z * g⁻¹ = hpart2 (Hpk k r) (g * Z * g⁻¹) := by
  simp only [hpart2, hinv]
  rw [mul_smul_comm, smul_mul_assoc, mul_add, add_mul, dag_conj hg]

lemma dagdag (M : Mx k r) : Hpk k r * (Hpk k r * Mᴴ * Hpk k r)ᴴ * Hpk k r = M := by
  simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, Formalism.QuantumDeterminants.GBasic.Hpk_herm, mul_assoc, hH2,
    Formalism.QuantumDeterminants.GBasic.Hpk_sq, mul_one]

lemma hpart1_skew (Z : Mx k r) :
    Hpk k r * (hpart1 (Hpk k r) Z)ᴴ * Hpk k r = -hpart1 (Hpk k r) Z := by
  simp only [hpart1, hinv, Matrix.conjTranspose_smul, Matrix.conjTranspose_sub, mul_smul_comm, smul_mul_assoc,
    mul_sub, sub_mul, dagdag]
  ext i j
  simp
  ring

lemma hpart2_skew (Z : Mx k r) :
    Hpk k r * (hpart2 (Hpk k r) Z)ᴴ * Hpk k r = -hpart2 (Hpk k r) Z := by
  have hc : star (1 / (2 * Complex.I)) = -(1 / (2 * Complex.I)) := by
    rw [Complex.star_def, map_div₀, map_one, map_mul, Complex.conj_I, map_ofNat, mul_neg,
      one_div_neg_eq_neg_one_div]
  simp only [hpart2, hinv, Matrix.conjTranspose_smul, Matrix.conjTranspose_add, mul_smul_comm, smul_mul_assoc,
    mul_add, add_mul, dagdag, hc]
  rw [neg_smul, add_comm (Hpk k r * Zᴴ * Hpk k r) Z]

lemma exp_uh {Y : Mx k r} (hY : Hpk k r * Yᴴ * Hpk k r = -Y) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • Y) ∈ UH (Hpk k r) := by
  have hH := Formalism.QuantumDeterminants.GBasic.Hpk_sq k r
  have hU : IsUnit (Hpk k r) := ⟨⟨Hpk k r, Hpk k r, hH, hH⟩, rfl⟩
  have hY' : Yᴴ = Hpk k r * -Y * Hpk k r := by
    rw [← hY]
    simp only [← mul_assoc, hH, one_mul]
    rw [mul_assoc, hH, mul_one]
  have hYH : ((t : ℂ) • Y)ᴴ = Hpk k r * -((t : ℂ) • Y) * (Hpk k r)⁻¹ := by
    rw [hinv, Matrix.conjTranspose_smul, Complex.star_def, Complex.conj_ofReal, hY']
    simp only [smul_neg, mul_neg, neg_mul, mul_smul_comm, smul_mul_assoc]
  show (NormedSpace.exp ((t : ℂ) • Y))ᴴ * Hpk k r * NormedSpace.exp ((t : ℂ) • Y) = Hpk k r
  rw [← Matrix.exp_conjTranspose, hYH, Matrix.exp_conj _ _ hU, hinv]
  simp only [mul_assoc]
  rw [← mul_assoc (Hpk k r) (Hpk k r), hH, one_mul,
    ← Matrix.exp_add_of_commute _ _ (Commute.neg_left (Commute.refl ((t : ℂ) • Y))), neg_add_cancel,
    NormedSpace.exp_zero, mul_one]

lemma dag_apply (M : Mx k r) (p q : Fin (2 * r + k + 1)) :
    (Hpk k r * Mᴴ * Hpk k r) p q =
      WeylGroupFacts.sgn k r p * (star (M (tau k r q) (tau k r p)) * WeylGroupFacts.sgn k r q) := by
  have hs : ∀ i, star (WeylGroupFacts.sgn k r i) = WeylGroupFacts.sgn k r i := by
    intro i; unfold WeylGroupFacts.sgn; split_ifs <;> simp
  have e : Mᴴ * Hpk k r = (Hpk k r * M)ᴴ := by
    rw [Matrix.conjTranspose_mul, Formalism.QuantumDeterminants.GBasic.Hpk_herm]
  rw [mul_assoc, hpk_mul_apply, e, Matrix.conjTranspose_apply, hpk_mul_apply, star_mul', hs]
  ring

lemma inS_dag {l : Fin r} {M : Mx k r} (hM : InS k r l M) : InS k r l (Hpk k r * Mᴴ * Hpk k r) := by
  unfold InS at hM ⊢
  intro p q hpq
  rw [dag_apply, hM (tau k r q) (tau k r p) ?_, star_zero, zero_mul, mul_zero]
  intro h
  apply hpq
  unfold SP at h ⊢
  simp only [tau, Fin.val_mk] at h
  have hl := l.isLt
  have hp := p.isLt
  have hq := q.isLt
  split_ifs at h <;> omega

lemma hasDerivAt_phase (A B : ℂ) :
    HasDerivAt (fun t : ℝ => Complex.exp (Complex.I * (((cStd * ((t : ℂ) * A + (t : ℂ) ^ 2 * B)).re : ℝ) : ℂ)))
      (Complex.I * (((cStd * A).re : ℝ) : ℂ)) 0 := by
  have e : ∀ t : ℝ, (cStd * ((t : ℂ) * A + (t : ℂ) ^ 2 * B)).re = t * (cStd * A).re + t ^ 2 * (cStd * B).re := by
    intro t
    have h : cStd * ((t : ℂ) * A + (t : ℂ) ^ 2 * B) = (t : ℂ) * (cStd * A) + ((t ^ 2 : ℝ) : ℂ) * (cStd * B) := by
      push_cast; ring
    rw [h, Complex.add_re, Complex.re_ofReal_mul, Complex.re_ofReal_mul]
  simp_rw [e]
  have ha : HasDerivAt (fun t : ℝ => t * (cStd * A).re) (1 * (cStd * A).re) 0 :=
    (hasDerivAt_id' (0 : ℝ)).mul_const _
  have hb : HasDerivAt (fun t : ℝ => t ^ 2 * (cStd * B).re) (((2 : ℕ) : ℝ) * (0 : ℝ) ^ (2 - 1) * (cStd * B).re) 0 :=
    (hasDerivAt_pow 2 (0 : ℝ)).mul_const _
  have h1 : HasDerivAt (fun t : ℝ => t * (cStd * A).re + t ^ 2 * (cStd * B).re) ((cStd * A).re) 0 :=
    (ha.add hb).congr_deriv (by simp)
  have h2 := (h1.ofReal_comp.const_mul Complex.I).cexp
  exact h2.congr_deriv (by simp)

lemma rdV_left {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {z : Fin (2 * r + k + 1) → ℂ}
    (hz : inWb k r z) {l : Fin r} {D : Set (Mx k r)} {f : Mx k r → E} (hL : LeftEq k r z l.castSucc D f)
    {g : Mx k r} (hg : g ∈ Glev k r l.castSucc ∩ D) (X : Mx k r) (hS : InS k r l (g * X * g⁻¹))
    (hk : Hpk k r * (g * X * g⁻¹)ᴴ * Hpk k r = -(g * X * g⁻¹)) :
    RdV X f g = (Complex.I * (((cStd * ell k r z (g * X * g⁻¹)).re : ℝ) : ℂ)) • f g := by
  have ell_sm : ∀ (c : ℂ) (M : Mx k r), ell k r z (c • M) = c * ell k r z M := by
    intro c M
    simp only [ell, Finset.mul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    split_ifs <;> simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]
  obtain ⟨hgG, hgD⟩ := hg
  have hgU : g ∈ UH (Hpk k r) := by
    have h := hgG
    simp only [Glev, Set.mem_setOf_eq] at h
    exact h.1
  have hleft : Hpk k r * gᴴ * Hpk k r * g = 1 := by
    have hg' : gᴴ * Hpk k r * g = Hpk k r := hgU
    calc Hpk k r * gᴴ * Hpk k r * g = Hpk k r * (gᴴ * Hpk k r * g) := by simp only [mul_assoc]
      _ = 1 := by rw [hg', Formalism.QuantumDeterminants.GBasic.Hpk_sq k r]
  have hdet : IsUnit g.det := Matrix.isUnit_det_of_left_inverse hleft
  have hU : IsUnit g := (Matrix.isUnit_iff_isUnit_det g).mpr hdet
  have hgi : g⁻¹ * g = 1 := Matrix.nonsing_inv_mul g hdet
  set Y := g * X * g⁻¹ with hYdef
  have hconj : ∀ u : ℝ, g * NormedSpace.exp ((u : ℂ) • X) = NormedSpace.exp ((u : ℂ) • Y) * g := by
    intro u
    have h1 : (u : ℂ) • Y = g * ((u : ℂ) • X) * g⁻¹ := by
      rw [hYdef, mul_smul_comm, smul_mul_assoc]
    rw [h1, Matrix.exp_conj _ _ hU, mul_assoc, hgi, mul_one]
  have hSu : ∀ u : ℝ, InS k r l ((u : ℂ) • Y) := fun u => inS_smul _ hS
  have hmemN : ∀ u : ℝ, NormedSpace.exp ((u : ℂ) • Y) ∈ Nlev k r l.castSucc := by
    intro u
    have hUu := exp_uh hk u
    rw [exp_S (hSu u)] at hUu ⊢
    exact memN_S (hSu u) hUu
  have hfe : ∀ u : ℝ, f (g * NormedSpace.exp ((u : ℂ) • X)) =
      psi k r z cStd (NormedSpace.exp ((u : ℂ) • Y)) • f g := by
    intro u
    rw [hconj u]
    exact hL g ⟨hgG, hgD⟩ _ (hmemN u)
  have hell : ∀ u : ℝ, ell k r z (NormedSpace.exp ((u : ℂ) • Y)) =
      (u : ℂ) * ell k r z Y + (u : ℂ) ^ 2 * ((1 / 2 : ℂ) * ell k r z (Y * Y)) := by
    intro u
    rw [exp_S (hSu u), ell_add, ell_add, ell_one z hz]
    simp only [smul_mul_assoc, mul_smul_comm, smul_smul, ell_sm]
    ring
  have hfun : (fun u : ℝ => f (g * NormedSpace.exp ((u : ℂ) • X))) =
      fun u : ℝ => Complex.exp (Complex.I * (((cStd * ((u : ℂ) * ell k r z Y +
        (u : ℂ) ^ 2 * ((1 / 2 : ℂ) * ell k r z (Y * Y)))).re : ℝ) : ℂ)) • f g := by
    funext u
    rw [hfe u, ← hell u]
    rfl
  have hd := (hasDerivAt_phase (ell k r z Y) ((1 / 2 : ℂ) * ell k r z (Y * Y))).smul_const (f g)
  show deriv (fun u : ℝ => f (g * NormedSpace.exp ((u : ℂ) • X))) 0 = _
  rw [hfun]
  exact hd.deriv

lemma phase_sum (A B : ℂ) :
    Complex.I * (((cStd * ((1 / 2 : ℂ) * (A - B))).re : ℝ) : ℂ) +
      Complex.I * (Complex.I * (((cStd * ((1 / (2 * Complex.I) : ℂ) * (A + B))).re : ℝ) : ℂ)) = A + star B := by
  have h1 : cStd * ((1 / 2 : ℂ) * (A - B)) = -Complex.I * (A - B) := by
    simp only [cStd]; ring
  have h2 : cStd * ((1 / (2 * Complex.I) : ℂ) * (A + B)) = -(A + B) := by
    simp only [cStd]; field_simp
  rw [h1, h2]
  apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring

lemma core {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {z : Fin (2 * r + k + 1) → ℂ}
    (hz : inWb k r z) {l : Fin r} {D : Set (Mx k r)} {f : Mx k r → E} (hL : LeftEq k r z l.castSucc D f)
    {g : Mx k r} (hg : g ∈ Glev k r l.castSucc ∩ D) (a b : Fin (2 * r + k + 1))
    (hS : InS k r l (g * Matrix.single a b 1 * g⁻¹)) :
    EH k r a b f g = (ell k r z (g * Matrix.single a b 1 * g⁻¹) +
      star (ell k r z (Hpk k r * (g * Matrix.single a b 1 * g⁻¹)ᴴ * Hpk k r))) • f g := by
  have ell_sm : ∀ (c : ℂ) (M : Mx k r), ell k r z (c • M) = c * ell k r z M := by
    intro c M
    simp only [ell, Finset.mul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    split_ifs <;> simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]
  set W := g * Matrix.single a b 1 * g⁻¹ with hW
  have hgU : g ∈ UH (Hpk k r) := by
    have h := hg.1
    simp only [Glev, Set.mem_setOf_eq] at h
    exact h.1
  have hp1 : hpart1 (Hpk k r) W = (1 / 2 : ℂ) • (W - Hpk k r * Wᴴ * Hpk k r) := by
    simp only [hpart1, hinv]
  have hp2 : hpart2 (Hpk k r) W = (1 / (2 * Complex.I) : ℂ) • (W + Hpk k r * Wᴴ * Hpk k r) := by
    simp only [hpart2, hinv]
  have hS1 : InS k r l (g * hpart1 (Hpk k r) (Matrix.single a b 1) * g⁻¹) := by
    rw [hpart1_conj hgU, ← hW, hp1]
    exact inS_smul _ (inS_sub hS (inS_dag hS))
  have hS2 : InS k r l (g * hpart2 (Hpk k r) (Matrix.single a b 1) * g⁻¹) := by
    rw [hpart2_conj hgU, ← hW, hp2]
    exact inS_smul _ (inS_add hS (inS_dag hS))
  have hk1 : Hpk k r * (g * hpart1 (Hpk k r) (Matrix.single a b 1) * g⁻¹)ᴴ * Hpk k r =
      -(g * hpart1 (Hpk k r) (Matrix.single a b 1) * g⁻¹) := by
    rw [hpart1_conj hgU]; exact hpart1_skew _
  have hk2 : Hpk k r * (g * hpart2 (Hpk k r) (Matrix.single a b 1) * g⁻¹)ᴴ * Hpk k r =
      -(g * hpart2 (Hpk k r) (Matrix.single a b 1) * g⁻¹) := by
    rw [hpart2_conj hgU]; exact hpart2_skew _
  have r1 := rdV_left hz hL hg _ hS1 hk1
  have r2 := rdV_left hz hL hg _ hS2 hk2
  rw [hpart1_conj hgU, ← hW] at r1
  rw [hpart2_conj hgU, ← hW] at r2
  show RdV (hpart1 (Hpk k r) (Matrix.single a b 1)) f g +
    Complex.I • RdV (hpart2 (Hpk k r) (Matrix.single a b 1)) f g = _
  rw [r1, r2, smul_smul, ← add_smul, hp1, hp2, ell_sm, ell_sm]
  congr 1
  have hsub : ell k r z (W - Hpk k r * Wᴴ * Hpk k r) = ell k r z W - ell k r z (Hpk k r * Wᴴ * Hpk k r) := by
    rw [sub_eq_add_neg, ell_add, ← neg_one_smul ℂ (Hpk k r * Wᴴ * Hpk k r), ell_sm]; ring
  rw [hsub, ell_add]
  exact phase_sum _ _

end Formalism.FourierDecayAlt.Q.LeftMultiplicationRule
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.HasDerivAtPhase =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.LeftMultiplicationRule =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.LeftMultiplicationRule", "h": "module\n\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.MulApplyS\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.HasDerivAtPhase\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.ReflectionColumnDualIsotropic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.QuantumDeterminants.WeylGroupFacts

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.Q.LeftMultiplicationRule

variable {k r : ℕ}

lemma single_conj (A B : Mx k r) (a b p q : Fin (2 * r + k + 1)) :
    ((A * Matrix.single a b 1 * B : Mx k r)) p q = A p a * B b q := by
  simp only [Matrix.mul_apply, Matrix.single_apply, ite_and, mul_ite, mul_one, mul_zero, ite_mul, zero_mul,
    Finset.sum_ite_eq, Finset.mem_univ, if_true]

private lemma hpk_eq_lemma (i j : Fin (2 * r + k + 1)) :
    Hpk k r i j = if j = tau k r i then WeylGroupFacts.sgn k r i else 0 := by
  have hi := i.isLt
  have hj := j.isLt
  unfold Hpk WeylGroupFacts.sgn
  simp only [Fin.ext_iff, tau_val]
  split_ifs <;> first | rfl | omega

lemma hpkVec (u : Fin (2 * r + k + 1) → ℂ) (s : Fin (2 * r + k + 1)) :
    (Hpk k r *ᵥ u) s = WeylGroupFacts.sgn k r s * u (tau k r s) := by
  simp only [Matrix.mulVec, dotProduct, hpk_eq_lemma, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]

lemma posL_in (l : Fin r) (j : Fin (mdim k r l.succ)) :
    l.val < (posL k r l.succ j).val ∧ (posL k r l.succ j).val < 2 * r + k - l.val := by
  have hj := j.isLt
  have hl := l.isLt
  unfold mdim at hj
  show l.val < j.val + l.succ.val ∧ j.val + l.succ.val < 2 * r + k - l.val
  simp only [Fin.val_succ] at hj ⊢
  omega

lemma fvec_es {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (l : Fin r) :
    fvec k r z l.succ (esI k r l) = 0 := by
  have hl := l.isLt
  unfold fvec
  split_ifs with h
  · simp only [bvec, Pi.single_apply]
    rw [if_neg]
    intro h'
    have h'' := congrArg Fin.val h'
    simp only [eI, esI, Fin.val_succ] at h'' h
    omega
  · apply hz
    right
    show r + k < 2 * r + k - l.val
    omega

lemma ell_form {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) {l : Fin r} {M : Mx k r}
    (hM : InS k r l M) : ell k r z M = ∑ q, M (eI k r l) q * fvec k r z l.succ q := by
  have hl := l.isLt
  unfold ell
  rw [Finset.sum_eq_single l]
  · split_ifs with h
    · unfold fvec
      rw [dite_eq_left (show l.succ.val < r by simp only [Fin.val_succ]; exact h)]
      simp only [bvec, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
      rfl
    · unfold fvec
      rw [dite_eq_right (show ¬ l.succ.val < r by simp only [Fin.val_succ]; exact h)]
      rfl
  · intro a _ hal
    have hal' : a.val ≠ l.val := Fin.val_ne_of_ne hal
    have hal2 := a.isLt
    split_ifs with h
    · apply hM
      intro hs
      unfold SP at hs
      simp only [eI] at hs
      omega
    · simp only [Matrix.mulVec, dotProduct]
      apply Finset.sum_eq_zero
      intro q _
      have hq2 := q.isLt
      by_cases hq : r + k < q.val
      · rw [hz q (Or.inr hq), mul_zero]
      · rw [hM _ _ ?_, zero_mul]
        intro hs
        unfold SP at hs
        simp only [eI] at hs
        omega
  · intro h
    exact absurd (Finset.mem_univ l) h

private lemma tau_tau_lemma (i : Fin (2 * r + k + 1)) : tau k r (tau k r i) = i := by
  have hi := i.isLt
  apply Fin.ext
  simp only [tau_val]
  split_ifs <;> omega

private lemma sgn_tau_lemma (i : Fin (2 * r + k + 1)) : WeylGroupFacts.sgn k r (tau k r i) = WeylGroupFacts.sgn k r i := by
  have hi := i.isLt
  unfold WeylGroupFacts.sgn
  simp only [tau_val]
  split_ifs <;> first | rfl | omega

private lemma hpk_col_lemma (x y : Fin (2 * r + k + 1)) :
    Hpk k r x y = if x = tau k r y then WeylGroupFacts.sgn k r y else 0 := by
  rw [hpk_eq_lemma]
  by_cases h : x = tau k r y
  · subst h
    simp [tau_tau_lemma, sgn_tau_lemma]
  · rw [if_neg h, if_neg (fun h' => h (by rw [h', tau_tau_lemma]))]

private lemma hpk_mul_conjTranspose_mul_hpk_apply (M : Mx k r) (p q : Fin (2 * r + k + 1)) :
    (Hpk k r * Mᴴ * Hpk k r) p q =
      WeylGroupFacts.sgn k r p * star (M (tau k r q) (tau k r p)) * WeylGroupFacts.sgn k r q := by
  rw [Matrix.mul_apply]
  have inner : ∀ y, (Hpk k r * Mᴴ) p y = WeylGroupFacts.sgn k r p * star (M y (tau k r p)) := fun y => by
    rw [Matrix.mul_apply]
    simp only [hpk_eq_lemma, Matrix.conjTranspose_apply, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  simp only [inner, hpk_col_lemma, mul_ite, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]

private lemma sp_of_sp_tau {l : Fin r} {p q : Fin (2 * r + k + 1)}
    (h : SP k r l (tau k r q) (tau k r p)) : SP k r l p q := by
  have hl := l.isLt
  have hp := p.isLt
  have hq := q.isLt
  have e1 := tau_val (k := k) (r := r) p
  have e2 := tau_val (k := k) (r := r) q
  unfold SP at h ⊢
  split_ifs at e1 e2 <;> omega

lemma ell_dag_form {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) {l : Fin r} {M : Mx k r}
    (hM : InS k r l M) : ell k r z (Hpk k r * Mᴴ * Hpk k r) =
      ∑ q, star (M (tau k r q) (esI k r l)) * WeylGroupFacts.sgn k r q * fvec k r z l.succ q := by
  have hN : InS k r l (Hpk k r * Mᴴ * Hpk k r) := by
    intro p q hpq
    rw [hpk_mul_conjTranspose_mul_hpk_apply, hM _ _ (fun h => hpq (sp_of_sp_tau h)), star_zero, mul_zero, zero_mul]
  rw [ell_form hz hN]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [hpk_mul_conjTranspose_mul_hpk_apply, tau_e, sgn_e, one_mul]

section Cases

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {z : Fin (2 * r + k + 1) → ℂ}
  {l : Fin r} {D : Set (Mx k r)} {f : Mx k r → E} {c : ℂ} {g₁ : Mx k r}

lemma ginv_eq (hc : c ≠ 0) : (w1 k r l c * g₁)⁻¹ = g₁⁻¹ * w1 k r l (star c) := by
  rw [Matrix.mul_inv_rev, weyl_cell_inv l c hc]

lemma e_out (l : Fin r) : ¬ (l.val < (eI k r l).val ∧ (eI k r l).val < 2 * r + k - l.val) := by
  exact fun h => (lt_irrefl _) h.1

lemma es_out (l : Fin r) : ¬ (l.val < (esI k r l).val ∧ (esI k r l).val < 2 * r + k - l.val) := by
  exact fun h => (lt_irrefl _) h.2

lemma case1 (hz : inWb k r z) (hL : LeftEq k r z l.castSucc D f) (hc : c ≠ 0)
    (hg₁ : g₁ ∈ Glev k r l.succ) (hgD : w1 k r l c * g₁ ∈ D) (v : Fin (2 * r + k + 1))
    (hv : l.val < v.val ∧ v.val < 2 * r + k - l.val) :
    EH k r v (eI k r l) f (w1 k r l c * g₁) =
      (c⁻¹ * herm (Hpk k r) (g₁ *ᵥ bvec v) (fvec k r z l.succ)) • f (w1 k r l c * g₁) := by
  have hl := l.isLt
  have hg : w1 k r l c * g₁ ∈ Glev k r l.castSucc ∩ D := ⟨wg_glev l c hc hg₁, hgD⟩
  have hinv := glev_inv hg₁
  have hv1 : v ≠ eI k r l := fun h => by rw [h] at hv; exact e_out l hv
  have hv2 : v ≠ esI k r l := fun h => by rw [h] at hv; exact es_out l hv
  have hre := (glev_out hg₁ (eI k r l) (e_out l)).1
  have hres := (glev_out hg₁ (esI k r l) (es_out l)).1
  have h0e : g₁ (eI k r l) v = 0 := by rw [hre, if_neg (Ne.symm hv1)]
  have h0es : g₁ (esI k r l) v = 0 := by rw [hres, if_neg (Ne.symm hv2)]
  have hcol : ∀ p, (w1 k r l c * g₁) p v = g₁ p v := fun p => weyl_cell_mul_apply l c g₁ p v h0e h0es
  have hire := (glev_out hinv (eI k r l) (e_out l)).1
  have hB : ∀ q, (g₁⁻¹ * w1 k r l (star c)) (eI k r l) q = if q = esI k r l then c⁻¹ else 0 :=
    fun q => by
      rw [Matrix.mul_apply]
      simp only [hire, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
      rw [weyl_cell_apply_basis, star_star]
  have hMe : ∀ p q, (w1 k r l c * g₁ * Matrix.single v (eI k r l) 1 * (w1 k r l c * g₁)⁻¹ : Mx k r) p q =
      g₁ p v * (if q = esI k r l then c⁻¹ else 0) := fun p q => by
    rw [ginv_eq hc, single_conj, hcol, hB]
  have hS : InS k r l (w1 k r l c * g₁ * Matrix.single v (eI k r l) 1 * (w1 k r l c * g₁)⁻¹) := by
    intro p q hpq
    rw [hMe]
    by_cases hq : q = esI k r l
    · have hp : ¬ (l.val < p.val ∧ p.val < 2 * r + k - l.val) :=
        fun hp => hpq (Or.inr ⟨by rw [hq]; rfl, hp.1, hp.2⟩)
      rw [(glev_out hg₁ p hp).1 v, if_neg (fun (h : p = v) => hp (h ▸ hv)), zero_mul]
    · rw [if_neg hq, mul_zero]
  rw [core hz hL hg v (eI k r l) hS, ell_form hz hS, ell_dag_form hz hS]
  congr 1
  simp only [hMe, h0e, zero_mul, Finset.sum_const_zero, zero_add, if_true]
  unfold herm
  simp only [dotProduct, Pi.star_apply]
  simp only [hpkVec]
  simp only [Matrix.mulVec, dotProduct, bvec, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [star_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  simp only [star_mul', star_star, star_sgn]
  ring

lemma case2 (hz : inWb k r z) (hL : LeftEq k r z l.castSucc D f) (hc : c ≠ 0)
    (hg₁ : g₁ ∈ Glev k r l.succ) (hgD : w1 k r l c * g₁ ∈ D) (v : Fin (2 * r + k + 1))
    (hv : l.val < v.val ∧ v.val < 2 * r + k - l.val) :
    EH k r (esI k r l) v f (w1 k r l c * g₁) =
      ((star c)⁻¹ * (g₁⁻¹ *ᵥ fvec k r z l.succ) v) • f (w1 k r l c * g₁) := by
  have hl := l.isLt
  have hg : w1 k r l c * g₁ ∈ Glev k r l.castSucc ∩ D := ⟨wg_glev l c hc hg₁, hgD⟩
  have hinv := glev_inv hg₁
  have hv1 : v ≠ eI k r l := fun h => by rw [h] at hv; exact e_out l hv
  have hv2 : v ≠ esI k r l := fun h => by rw [h] at hv; exact es_out l hv
  have hces := (glev_out hg₁ (esI k r l) (es_out l)).2
  have hice := (glev_out hinv (eI k r l) (e_out l)).2
  have hices := (glev_out hinv (esI k r l) (es_out l)).2
  have hA : ∀ p, (w1 k r l c * g₁) p (esI k r l) = if p = eI k r l then (star c)⁻¹ else 0 :=
    fun p => by
      rw [Matrix.mul_apply]
      simp only [hces, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
      rw [reflection_column_dual_isotropic]
  have h0 : g₁⁻¹ v (esI k r l) = 0 := by rw [hices, if_neg hv2]
  have hB : ∀ q, (g₁⁻¹ * w1 k r l (star c)) v q = g₁⁻¹ v q := fun q =>
    mul_weyl_cell_apply l (star c) g₁⁻¹ v q (by rw [hice, if_neg hv1]) h0
  have hMe : ∀ p q, (w1 k r l c * g₁ * Matrix.single (esI k r l) v 1 * (w1 k r l c * g₁)⁻¹ : Mx k r) p q =
      (if p = eI k r l then (star c)⁻¹ else 0) * g₁⁻¹ v q := fun p q => by
    rw [ginv_eq hc, single_conj, hA, hB]
  have hS : InS k r l (w1 k r l c * g₁ * Matrix.single (esI k r l) v 1 * (w1 k r l c * g₁)⁻¹) := by
    intro p q hpq
    rw [hMe]
    by_cases hp : p = eI k r l
    · have hq : ¬ (l.val < q.val ∧ q.val < 2 * r + k - l.val) :=
        fun hq => hpq (Or.inl ⟨by rw [hp]; rfl, hq.1, le_of_lt hq.2⟩)
      rw [(glev_out hinv q hq).2 v, if_neg (fun (h : v = q) => hq (h ▸ hv)), mul_zero]
    · rw [if_neg hp, zero_mul]
  rw [core hz hL hg (esI k r l) v hS, ell_form hz hS, ell_dag_form hz hS]
  congr 1
  simp only [hMe, h0, mul_zero, star_zero, zero_mul, Finset.sum_const_zero, add_zero, if_true]
  simp only [Matrix.mulVec, dotProduct]
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  ring

lemma case3 (hz : inWb k r z) (hL : LeftEq k r z l.castSucc D f) (hc : c ≠ 0)
    (hg₁ : g₁ ∈ Glev k r l.succ) (hgD : w1 k r l c * g₁ ∈ D) :
    EH k r (esI k r l) (eI k r l) f (w1 k r l c * g₁) = 0 := by
  have hl := l.isLt
  have hg : w1 k r l c * g₁ ∈ Glev k r l.castSucc ∩ D := ⟨wg_glev l c hc hg₁, hgD⟩
  have hinv := glev_inv hg₁
  have hre := (glev_out hg₁ (eI k r l) (e_out l)).1
  have hces := (glev_out hg₁ (esI k r l) (es_out l)).2
  have hire := (glev_out hinv (eI k r l) (e_out l)).1
  have hA : ∀ p, (w1 k r l c * g₁) p (esI k r l) = if p = eI k r l then (star c)⁻¹ else 0 :=
    fun p => by
      rw [Matrix.mul_apply]
      simp only [hces, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
      rw [reflection_column_dual_isotropic]
  have hB : ∀ q, (g₁⁻¹ * w1 k r l (star c)) (eI k r l) q = if q = esI k r l then c⁻¹ else 0 :=
    fun q => by
      rw [Matrix.mul_apply]
      simp only [hire, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
      rw [weyl_cell_apply_basis, star_star]
  have hMe : ∀ p q,
      (w1 k r l c * g₁ * Matrix.single (esI k r l) (eI k r l) 1 * (w1 k r l c * g₁)⁻¹ : Mx k r) p q =
      (if p = eI k r l then (star c)⁻¹ else 0) * (if q = esI k r l then c⁻¹ else 0) := fun p q => by
    rw [ginv_eq hc, single_conj, hA, hB]
  have hS : InS k r l
      (w1 k r l c * g₁ * Matrix.single (esI k r l) (eI k r l) 1 * (w1 k r l c * g₁)⁻¹) := by
    intro p q hpq
    rw [hMe]
    by_cases hp : p = eI k r l
    · by_cases hq : q = esI k r l
      · exfalso
        apply hpq
        left
        subst hp
        subst hq
        exact ⟨rfl, show l.val < 2 * r + k - l.val by omega, le_refl _⟩
      · rw [if_neg hq, mul_zero]
    · rw [if_neg hp, zero_mul]
  rw [core hz hL hg (esI k r l) (eI k r l) hS, ell_form hz hS, ell_dag_form hz hS]
  have h1 : ∑ q, (w1 k r l c * g₁ * Matrix.single (esI k r l) (eI k r l) 1 * (w1 k r l c * g₁)⁻¹ : Mx k r)
      (eI k r l) q * fvec k r z l.succ q = 0 := by
    apply Finset.sum_eq_zero
    intro q _
    rw [hMe, if_pos rfl]
    by_cases hq : q = esI k r l
    · rw [hq, fvec_es hz l, mul_zero]
    · rw [if_neg hq, mul_zero, zero_mul]
  have h2 : ∑ q, star ((w1 k r l c * g₁ * Matrix.single (esI k r l) (eI k r l) 1 *
      (w1 k r l c * g₁)⁻¹ : Mx k r) (tau k r q) (esI k r l)) * WeylGroupFacts.sgn k r q * fvec k r z l.succ q = 0 := by
    apply Finset.sum_eq_zero
    intro q _
    by_cases hq : q = esI k r l
    · rw [hq, fvec_es hz l, mul_zero]
    · rw [hMe, if_neg (fun h => hq (by rw [← tau_tau_lemma q, h, tau_e])), zero_mul, star_zero,
        zero_mul, zero_mul]
  rw [h1, h2, star_zero, add_zero, zero_smul]

end Cases

theorem left_multiplication_rule : RuleLeft := by
  intro E _ _ k r z l D f hz _ _ _ hL c hc g₁ hg₁ hgD
  refine ⟨fun j => ?_, fun j => ?_, case3 hz hL hc hg₁ hgD⟩
  · exact case1 hz hL hc hg₁ hgD _ (posL_in l j)
  · exact case2 hz hL hc hg₁ hgD _ (posL_in l j)

end Formalism.FourierDecayAlt.Q.LeftMultiplicationRule
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.LeftMultiplicationRule =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.SecondHermitianPartDiagonal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.SecondHermitianPartDiagonal", "h": "module\n\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.WColOther\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.Deriv.Prod\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Complex.RealDeriv\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Filter Topology
open scoped ContDiff

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

noncomputable section

namespace PI.QnRT

variable {k r : ℕ}

private lemma tau_val_lemma (i : Fin (2 * r + k + 1)) :
    (WeylGroupFacts.tau k r i).val = if i.val < r ∨ r + k < i.val then 2 * r + k - i.val else i.val := rfl

private lemma tau_tau_lemma (i : Fin (2 * r + k + 1)) : WeylGroupFacts.tau k r (WeylGroupFacts.tau k r i) = i := by
  have hi := i.isLt
  apply Fin.ext
  simp only [tau_val_lemma]
  split_ifs <;> omega

private lemma sgn_tau_lemma (i : Fin (2 * r + k + 1)) : WeylGroupFacts.sgn k r (WeylGroupFacts.tau k r i) = WeylGroupFacts.sgn k r i := by
  have hi := i.isLt
  unfold WeylGroupFacts.sgn
  simp only [tau_val_lemma]
  split_ifs <;> first | rfl | omega

private lemma sgn_sq_lemma (i : Fin (2 * r + k + 1)) : WeylGroupFacts.sgn k r i * WeylGroupFacts.sgn k r i = 1 := by
  unfold WeylGroupFacts.sgn
  split_ifs <;> norm_num

private lemma hpk_eq_lemma (i j : Fin (2 * r + k + 1)) :
    Hpk k r i j = if j = WeylGroupFacts.tau k r i then WeylGroupFacts.sgn k r i else 0 := by
  have hi := i.isLt
  have hj := j.isLt
  unfold Hpk WeylGroupFacts.sgn
  simp only [Fin.ext_iff, tau_val_lemma]
  split_ifs <;> first | rfl | omega

private lemma hpk_sq_lemma : Hpk k r * Hpk k r = 1 := by
  ext i j
  rw [Matrix.mul_apply, Matrix.one_apply]
  simp only [hpk_eq_lemma, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true, tau_tau_lemma, sgn_tau_lemma]
  by_cases h : i = j
  · subst h
    simp [sgn_sq_lemma]
  · simp [h, Ne.symm h]

lemma hpk_inv : (Hpk k r)⁻¹ = Hpk k r := Matrix.inv_eq_left_inv hpk_sq_lemma

private lemma hpk_col_lemma (x y : Fin (2 * r + k + 1)) :
    Hpk k r x y = if x = WeylGroupFacts.tau k r y then WeylGroupFacts.sgn k r y else 0 := by
  rw [hpk_eq_lemma]
  by_cases h : x = WeylGroupFacts.tau k r y
  · subst h
    simp [tau_tau_lemma, sgn_tau_lemma]
  · rw [if_neg h, if_neg]
    intro h'
    apply h
    rw [h', tau_tau_lemma]

private lemma single_ct_lemma (a b : Fin (2 * r + k + 1)) (c : ℂ) :
    (Matrix.single a b c)ᴴ = Matrix.single b a (star c) := by
  ext x y
  rw [Matrix.conjTranspose_apply, Matrix.single_apply, Matrix.single_apply]
  by_cases h : a = y ∧ b = x
  · rw [if_pos h, if_pos ⟨h.2, h.1⟩]
  · rw [if_neg h, if_neg (fun h' => h ⟨h'.2, h'.1⟩), star_zero]

private lemma conj_single_lemma (A B : Mx k r) (a b : Fin (2 * r + k + 1)) (c : ℂ)
    (p q : Fin (2 * r + k + 1)) : (A * Matrix.single a b c * B) p q = A p a * c * B b q := by
  simp only [Matrix.mul_apply, Matrix.single_apply, ite_and, mul_ite, mul_zero, ite_mul, zero_mul,
    Finset.sum_ite_eq, Finset.mem_univ, if_true]

lemma conj_single (x : Fin (2 * r + k + 1)) :
    Hpk k r * (single x x (1 : ℂ))ᴴ * Hpk k r =
      single (WeylGroupFacts.tau k r x) (WeylGroupFacts.tau k r x) 1 := by
  rw [single_ct_lemma, star_one]
  ext p q
  rw [conj_single_lemma, hpk_eq_lemma, hpk_col_lemma, Matrix.single_apply]
  by_cases hp : p = WeylGroupFacts.tau k r x
  · subst hp
    by_cases hq : q = WeylGroupFacts.tau k r x
    · subst hq
      simp [tau_tau_lemma, sgn_tau_lemma, sgn_sq_lemma]
    · have hq' : x ≠ WeylGroupFacts.tau k r q := fun h => hq (by rw [h, tau_tau_lemma])
      simp [hq', Ne.symm hq]
  · have hp' : x ≠ WeylGroupFacts.tau k r p := fun h => hp (by rw [h, tau_tau_lemma])
    simp [hp', Ne.symm hp]

lemma inv_conj_single (x : Fin (2 * r + k + 1)) :
    (Hpk k r)⁻¹ * (single x x (1 : ℂ))ᴴ * Hpk k r =
      single (WeylGroupFacts.tau k r x) (WeylGroupFacts.tau k r x) 1 := by
  rw [hpk_inv, conj_single]

def dz (l : Fin r) (κ κ' : ℂ) : Mx k r :=
  diagonal (fun p => if p = eI k r l then κ else if p = esI k r l then κ' else 0)

lemma X1_eq (l : Fin r) : hpart1 (Hpk k r) (single (eI k r l) (eI k r l) 1) =
    dz l ((1 / 2 : ℝ) : ℂ) (-((1 / 2 : ℝ) : ℂ)) := by
  have hne : eI k r l ≠ esI k r l := e_ne_es l
  unfold hpart1 dz
  rw [inv_conj_single, tau_e]
  ext p q
  simp only [Matrix.smul_apply, Matrix.sub_apply, Matrix.single_apply,
    Matrix.diagonal_apply, smul_eq_mul]
  by_cases hpq : p = q
  · subst hpq
    by_cases h1 : p = eI k r l
    · subst h1
      simp [hne.symm]
    · by_cases h2 : p = esI k r l
      · subst h2
        simp [hne, hne.symm]
      · simp [h1, h2, Ne.symm h1, Ne.symm h2]
  · have a1 : ¬ (eI k r l = p ∧ eI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    have a2 : ¬ (esI k r l = p ∧ esI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    simp [a1, a2, hpq]

lemma depthNumbers_threshold_eq (l : Fin r) : hpart2 (Hpk k r) (single (eI k r l) (eI k r l) 1) =
    dz l (((-1 / 2 : ℝ) : ℂ) * Complex.I) (((-1 / 2 : ℝ) : ℂ) * Complex.I) := by
  have hne : eI k r l ≠ esI k r l := e_ne_es l
  unfold hpart2 dz
  rw [inv_conj_single, tau_e]
  ext p q
  simp only [Matrix.smul_apply, Matrix.add_apply, Matrix.single_apply,
    Matrix.diagonal_apply, smul_eq_mul]
  by_cases hpq : p = q
  · subst hpq
    by_cases h1 : p = eI k r l
    · subst h1
      simp [hne.symm] <;> (try norm_num) <;> (try ring)
    · by_cases h2 : p = esI k r l
      · subst h2
        simp [hne, hne.symm] <;> (try norm_num) <;> (try ring)
      · simp [h1, h2, Ne.symm h1, Ne.symm h2]
  · have a1 : ¬ (eI k r l = p ∧ eI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    have a2 : ¬ (esI k r l = p ∧ esI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    simp [a1, a2, hpq]

lemma first_hermitian_part_diagonal (l : Fin r) : hpart1 (Hpk k r) (single (esI k r l) (esI k r l) 1) =
    dz l (-((1 / 2 : ℝ) : ℂ)) ((1 / 2 : ℝ) : ℂ) := by
  have hne : eI k r l ≠ esI k r l := e_ne_es l
  unfold hpart1 dz
  rw [inv_conj_single, tau_es]
  ext p q
  simp only [Matrix.smul_apply, Matrix.sub_apply, Matrix.single_apply,
    Matrix.diagonal_apply, smul_eq_mul]
  by_cases hpq : p = q
  · subst hpq
    by_cases h1 : p = eI k r l
    · subst h1
      simp [hne.symm]
    · by_cases h2 : p = esI k r l
      · subst h2
        simp [hne, hne.symm]
      · simp [h1, h2, Ne.symm h1, Ne.symm h2]
  · have a1 : ¬ (eI k r l = p ∧ eI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    have a2 : ¬ (esI k r l = p ∧ esI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    simp [a1, a2, hpq]

lemma second_hermitian_part_diagonal (l : Fin r) : hpart2 (Hpk k r) (single (esI k r l) (esI k r l) 1) =
    dz l (((-1 / 2 : ℝ) : ℂ) * Complex.I) (((-1 / 2 : ℝ) : ℂ) * Complex.I) := by
  have hne : eI k r l ≠ esI k r l := e_ne_es l
  unfold hpart2 dz
  rw [inv_conj_single, tau_es]
  ext p q
  simp only [Matrix.smul_apply, Matrix.add_apply, Matrix.single_apply,
    Matrix.diagonal_apply, smul_eq_mul]
  by_cases hpq : p = q
  · subst hpq
    by_cases h1 : p = eI k r l
    · subst h1
      simp [hne.symm] <;> (try norm_num) <;> (try ring)
    · by_cases h2 : p = esI k r l
      · subst h2
        simp [hne, hne.symm] <;> (try norm_num) <;> (try ring)
      · simp [h1, h2, Ne.symm h1, Ne.symm h2]
  · have a1 : ¬ (eI k r l = p ∧ eI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    have a2 : ¬ (esI k r l = p ∧ esI k r l = q) := fun h => hpq (h.1.symm.trans h.2)
    simp [a1, a2, hpq]

lemma w_decomp (l : Fin r) (b : ℂ) :
    w1 k r l b = w1 k r l 0 + b • single (esI k r l) (eI k r l) 1 +
      (star b)⁻¹ • single (eI k r l) (esI k r l) 1 := by
  have hne : eI k r l ≠ esI k r l := e_ne_es l
  ext p q
  simp only [Matrix.add_apply, Matrix.smul_apply, Matrix.single_apply, smul_eq_mul]
  unfold w1
  by_cases hp1 : p = eI k r l
  · subst hp1
    by_cases hq2 : q = esI k r l
    · subst hq2
      simp [hne, hne.symm]
    · simp [hne, hne.symm, hq2, Ne.symm hq2]
  · by_cases hp2 : p = esI k r l
    · subst hp2
      by_cases hq1 : q = eI k r l
      · subst hq1
        simp [hne, hne.symm]
      · simp [hne, hne.symm, hq1, Ne.symm hq1]
    · simp [hp1, hp2, Ne.symm hp1, Ne.symm hp2]

lemma w_diff (l : Fin r) (g₁ : Mx k r) (c : Fin r → ℂ) (hc : c l ≠ 0) :
    DifferentiableAt ℝ (fun c' : Fin r → ℂ => w1 k r l (c' l) * g₁) c := by
  have hfun : (fun c' : Fin r → ℂ => w1 k r l (c' l) * g₁) = fun c' : Fin r → ℂ =>
      (w1 k r l 0 + c' l • single (esI k r l) (eI k r l) (1 : ℂ) +
        (star (c' l))⁻¹ • single (eI k r l) (esI k r l) (1 : ℂ)) * g₁ := by
    funext c'
    rw [w_decomp]
  rw [hfun]
  have h1 : DifferentiableAt ℝ (fun c' : Fin r → ℂ => c' l) c := differentiableAt_apply l c
  have hs : DifferentiableAt ℝ (fun c' : Fin r → ℂ => star (c' l)) c :=
    Complex.conjCLE.differentiableAt.comp c h1
  have h2 : DifferentiableAt ℝ (fun c' : Fin r → ℂ => (star (c' l))⁻¹) c :=
    hs.inv (by simpa using hc)
  have hin : DifferentiableAt ℝ (fun c' : Fin r → ℂ => (w1 k r l 0 + c' l • single (esI k r l) (eI k r l) (1 : ℂ) +
        (star (c' l))⁻¹ • single (eI k r l) (esI k r l) (1 : ℂ) : Mx k r)) c :=
    ((differentiableAt_const _).add (h1.smul_const _)).add (h2.smul_const _)
  let Lm : Mx k r →L[ℝ] Mx k r := LinearMap.toContinuousLinearMap (LinearMap.mulRight ℝ g₁)
  exact Lm.differentiableAt.comp c hin

lemma phi_diff {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (l : Fin r) (D : Set (Mx k r))
    (f : Mx k r → E) (hf : SmoothLev k r l.castSucc D f) (c : Fin r → ℂ) (hc : c l ≠ 0)
    (g₁ : Mx k r) (hg₁ : g₁ ∈ Glev k r l.succ) (hD : w1 k r l (c l) * g₁ ∈ D) :
    DifferentiableAt ℝ (fun c' : Fin r → ℂ => f (w1 k r l (c' l) * g₁)) c := by
  obtain ⟨U, F, hU, hgU, hF, hfF⟩ := hf _ ⟨w_mul_mem l (c l) hc g₁ hg₁, hD⟩
  have hγ := w_diff l g₁ c hc
  have hFd : DifferentiableAt ℝ F (w1 k r l (c l) * g₁) :=
    (hF.differentiableOn (by first | simp)).differentiableAt
      (hU.mem_nhds hgU)
  have hev1 : ∀ᶠ c' in 𝓝 c, w1 k r l (c' l) * g₁ ∈ U :=
    hγ.continuousAt.preimage_mem_nhds (hU.mem_nhds hgU)
  have hev2 : ∀ᶠ c' in 𝓝 c, c' l ≠ 0 := (continuous_apply l).continuousAt.eventually_ne hc
  have hev := hev1.and hev2
  refine (hFd.comp c hγ).congr_of_eventuallyEq ?_
  filter_upwards [hev] with c' hc'
  exact hfF _ hc'.1 (w_mul_mem l (c' l) hc'.2 g₁ hg₁)

lemma mul_exp_dz (l : Fin r) (a κ : ℂ) (g₁ : Mx k r) (hg₁ : g₁ ∈ Glev k r l.succ) (t : ℝ) :
    w1 k r l a * g₁ * NormedSpace.exp ((t : ℂ) • dz l κ (-star κ)) =
      w1 k r l (a * Complex.exp (t * κ)) * g₁ := by
  have hsm : (t : ℂ) • dz l κ (-star κ) = (diagonal (fun p => if p = eI k r l then (t : ℂ) * κ
      else if p = esI k r l then (t : ℂ) * -star κ else 0) : Mx k r) := by
    unfold dz
    ext p q
    simp only [Matrix.smul_apply, Matrix.diagonal_apply, smul_eq_mul]
    split_ifs <;> simp
  have hconj : Complex.exp ((t : ℂ) * -star κ) = (star (Complex.exp ((t : ℂ) * κ)))⁻¹ := by
    rw [show (t : ℂ) * -star κ = -(star ((t : ℂ) * κ)) by simp, Complex.exp_neg]
    congr 1
    exact Complex.exp_conj _
  rw [hsm, exp_diag2, hconj, Matrix.mul_assoc, ← dg_comm l _ _ g₁ hg₁, ← Matrix.mul_assoc, w_mul_dg]

lemma rdV_dz {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (l : Fin r) (D : Set (Mx k r))
    (f : Mx k r → E) (hf : SmoothLev k r l.castSucc D f) (c : Fin r → ℂ) (hc : c l ≠ 0)
    (g₁ : Mx k r) (hg₁ : g₁ ∈ Glev k r l.succ) (hD : w1 k r l (c l) * g₁ ∈ D) (κ : ℂ) :
    RdV (dz l κ (-star κ)) f (w1 k r l (c l) * g₁) =
      fderiv ℝ (fun c' : Fin r → ℂ => f (w1 k r l (c' l) * g₁)) c (Pi.single l (c l * κ)) := by
  have hφ := phi_diff l D f hf c hc g₁ hg₁ hD
  have hηd : HasDerivAt (fun t : ℝ => Function.update c l (c l * Complex.exp ((t : ℂ) * κ)))
      (Pi.single l (c l * κ)) 0 := by
    rw [hasDerivAt_pi]
    intro i
    by_cases hi : i = l
    · subst hi
      simp only [Function.update_apply, if_true, Pi.single_eq_same]
      have h1 : HasDerivAt (fun t : ℝ => Complex.exp ((t : ℂ) * κ)) κ 0 := by
        have h2 := (((hasDerivAt_id ((0 : ℝ) : ℂ)).mul_const κ).cexp).comp_ofReal
        simpa using h2
      simpa using h1.const_mul (c i)
    · simp only [Function.update_apply, hi, if_false, Pi.single_eq_of_ne hi]
      exact hasDerivAt_const _ _
  have hη0 : Function.update c l (c l * Complex.exp (((0 : ℝ) : ℂ) * κ)) = c := by simp
  have hcomp := hφ.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hηd hη0.symm
  unfold RdV
  have hfun : (fun t : ℝ => f (w1 k r l (c l) * g₁ * NormedSpace.exp ((t : ℂ) • dz l κ (-star κ)))) =
      (fun c' : Fin r → ℂ => f (w1 k r l (c' l) * g₁)) ∘
        (fun t : ℝ => Function.update c l (c l * Complex.exp ((t : ℂ) * κ))) := by
    funext t
    rw [mul_exp_dz l (c l) κ g₁ hg₁ t]
    simp [Function.comp]
  rw [hfun, hcomp.deriv]

lemma rdV_dz' {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (l : Fin r) (D : Set (Mx k r))
    (f : Mx k r → E) (hf : SmoothLev k r l.castSucc D f) (c : Fin r → ℂ) (hc : c l ≠ 0)
    (g₁ : Mx k r) (hg₁ : g₁ ∈ Glev k r l.succ) (hD : w1 k r l (c l) * g₁ ∈ D) (κ κ' : ℂ)
    (hκ : κ' = -star κ) :
    RdV (dz l κ κ') f (w1 k r l (c l) * g₁) =
      fderiv ℝ (fun c' : Fin r → ℂ => f (w1 k r l (c' l) * g₁)) c (Pi.single l (c l * κ)) := by
  subst hκ
  exact rdV_dz l D f hf c hc g₁ hg₁ hD κ

lemma lin_single {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (l : Fin r)
    (L : (Fin r → ℂ) →L[ℝ] E) (z : ℂ) :
    L (Pi.single l z) = (z.re : ℂ) • L (Pi.single l 1) + (z.im : ℂ) • L (Pi.single l Complex.I) := by
  have h : (Pi.single l z : Fin r → ℂ) =
      ((z.re : ℝ) • (Pi.single l (1 : ℂ) : Fin r → ℂ) +
        (z.im : ℝ) • (Pi.single l Complex.I : Fin r → ℂ) : Fin r → ℂ) := by
    ext i
    by_cases hi : i = l
    · subst hi
      simp only [Pi.add_apply, Pi.smul_apply, Pi.single_eq_same, Complex.real_smul, mul_one]
      exact (Complex.re_add_im z).symm
    · simp [hi]
  rw [h, map_add (f := _), map_smul, map_smul, Complex.coe_smul, Complex.coe_smul]

end PI.QnRT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.SecondHermitianPartDiagonal =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnRuleTorus =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnRuleTorus", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TorusConjugationRule.SecondHermitianPartDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

theorem qnRuleTorus : Formalism.FourierDecayAlt.Q.RuleTorus := by
  open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q PI.QnRT in
  intro E _ _ k r l D f hD hf c hc g₁ hg₁ hmem
  have hcl : c l ≠ 0 := hc l
  have h1 : -((1 / 2 : ℝ) : ℂ) = -star ((1 / 2 : ℝ) : ℂ) := by simp
  have h2 : ((-1 / 2 : ℝ) : ℂ) * Complex.I = -star (((-1 / 2 : ℝ) : ℂ) * Complex.I) := by
    simp
  have h3 : ((1 / 2 : ℝ) : ℂ) = -star (-((1 / 2 : ℝ) : ℂ)) := by simp
  set φ : (Fin r → ℂ) → E := fun c' => f (w1 k r l (c' l) * g₁) with hφ
  set L := fderiv ℝ φ c with hL
  refine ⟨?_, ?_⟩
  · simp only [EH, EabH]
    rw [X1_eq, depthNumbers_threshold_eq, rdV_dz' l D f hf c hcl g₁ hg₁ hmem _ _ h1,
      rdV_dz' l D f hf c hcl g₁ hg₁ hmem _ _ h2]
    simp only [pOp, wirt, if_pos hc]
    rw [lin_single l L (c l * ((1 / 2 : ℝ) : ℂ)), lin_single l L (c l * (((-1 / 2 : ℝ) : ℂ) * Complex.I))]
    generalize L (Pi.single l 1) = A
    generalize L (Pi.single l Complex.I) = B
    obtain ⟨a, b, hab⟩ : ∃ a b : ℝ, c l = (a : ℂ) + (b : ℂ) * Complex.I :=
      ⟨_, _, (Complex.re_add_im _).symm⟩
    rw [hab]
    simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im]
    match_scalars <;> simp [Complex.ext_iff] <;> ring
  · simp only [EH, EabH]
    rw [first_hermitian_part_diagonal, second_hermitian_part_diagonal, rdV_dz' l D f hf c hcl g₁ hg₁ hmem _ _ h3,
      rdV_dz' l D f hf c hcl g₁ hg₁ hmem _ _ h2]
    simp only [pbOp, wirtBar, if_pos hc]
    rw [lin_single l L (c l * -((1 / 2 : ℝ) : ℂ)), lin_single l L (c l * (((-1 / 2 : ℝ) : ℂ) * Complex.I))]
    generalize L (Pi.single l 1) = A
    generalize L (Pi.single l Complex.I) = B
    obtain ⟨a, b, hab⟩ : ∃ a b : ℝ, c l = (a : ℂ) + (b : ℂ) * Complex.I :=
      ⟨_, _, (Complex.re_add_im _).symm⟩
    rw [hab]
    simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.neg_re, Complex.neg_im]
    match_scalars <;> simp [Complex.ext_iff] <;> ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnRuleTorus =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderES\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmBorderFull\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmCapComm\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmSandwich\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelImageArithmetic.GlevImageOf\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnHermHaar\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevBasics\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnLevTransfer\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LeftPhaseRule.LeftMultiplicationRule\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnRuleTorus\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnTInv\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QnTPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem Formalism.FourierDecayAlt.P.border_first_expansion : Formalism.FourierDecayAlt.Q.BorderE := by
  exact quantum_minor_border_es.1

theorem Formalism.FourierDecayAlt.P.border_last_expansion : Formalism.FourierDecayAlt.Q.BorderS := by
  exact quantum_minor_border_es.2

theorem Formalism.FourierDecayAlt.P.border_full_expansion : Formalism.FourierDecayAlt.Q.BorderFull := by
  exact quantum_minor_border_full

theorem Formalism.FourierDecayAlt.P.rtt_sandwich : Formalism.FourierDecayAlt.Q.RTTSandwich := by
  exact rtt_sandwich'

theorem Formalism.FourierDecayAlt.P.level_group_image : Formalism.FourierDecayAlt.Q.GlevImage := by
  obtain ⟨hH, hU, -⟩ := level_basics
  exact _root_.QnGlevImageW.glevImage_of hH hU

theorem Formalism.FourierDecayAlt.P.level_transfer : Formalism.FourierDecayAlt.Q.LevelTransfer := by
  exact level_transfer_of_levHom level_basics.1

theorem Formalism.FourierDecayAlt.P.left_action_rule : Formalism.FourierDecayAlt.Q.RuleLeft := by
  exact _root_.Formalism.FourierDecayAlt.Q.LeftMultiplicationRule.left_multiplication_rule

theorem Formalism.FourierDecayAlt.P.torus_action_rule : Formalism.FourierDecayAlt.Q.RuleTorus := by
  exact qnRuleTorus

theorem Formalism.FourierDecayAlt.P.operator_invariance : Formalism.FourierDecayAlt.Q.TInvariant := by
  exact qnTInv

theorem Formalism.FourierDecayAlt.P.operator_preserves_fusion_forms : Formalism.FourierDecayAlt.Q.TPreservesFF := by
  exact qnTPres

theorem Formalism.FourierDecayAlt.P.capelli_commutation : Formalism.FourierDecayAlt.Q.CapCommute := by
  exact capelli_det_commute

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms =====
