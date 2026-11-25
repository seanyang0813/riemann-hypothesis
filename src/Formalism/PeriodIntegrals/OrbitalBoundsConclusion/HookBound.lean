module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LGradedLemmas
public import Formalism.PieriBlockIdeals.PieriColumnMinors.HeightDescentMinors
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.FockQRowDivAdj
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LFockqLemmas
public import Formalism.PeriodIntegrals.HookBound
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliAbs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliMain
public import Mathlib.RingTheory.Derivation.Lie
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShift, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DeterminantAdjugate, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HighestWeightLastZero, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookBoundOfSteps, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookNorm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DiagonalMonomialFactorial, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.ProdFactorialLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.Assemble, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliOps, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShift =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShift", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LGradedLemmas\npublic import Formalism.PieriBlockIdeals.PieriColumnMinors.HeightDescentMinors\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookSteps

variable {N : ℕ}

theorem rowGen_coeff_zero (a b : Fin N) (f : MvPolynomial (Fin N × Fin N) ℚ) :
    (rowGen ℚ a b f).coeff 0 = f := by
  induction f using MvPolynomial.induction_on
  · next c =>
    simp [rowGen, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]
  · next p q hp hq =>
    rw [map_add (f := _), Polynomial.coeff_add, hp, hq]
  · next p v hp =>
    rw [map_mul, Polynomial.mul_coeff_zero, hp]
    simp only [rowGen, MvPolynomial.aeval_X]
    split_ifs <;> simp

theorem rowDiv_one_mul_X (a b : Fin N) (p : MvPolynomial (Fin N × Fin N) ℚ) (v : Fin N × Fin N) :
    rowDiv ℚ a b 1 (p * X v) = rowDiv ℚ a b 1 p * X v + p * (if v.1 = b then X (a, v.2) else 0) := by
  have hX : rowGen ℚ a b (X v : MvPolynomial (Fin N × Fin N) ℚ) = Polynomial.C (X v) +
      (if v.1 = b then Polynomial.X * Polynomial.C (X (a, v.2)) else 0) := by
    simp only [rowGen, MvPolynomial.aeval_X]
  have h0 := rowGen_coeff_zero a b p
  simp only [rowDiv, map_mul, hX, Polynomial.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk,
    Finset.sum_range_succ, Finset.sum_range_zero, zero_add, h0]
  split_ifs with h <;> simp [Polynomial.coeff_C, add_comm]

theorem polE_apply (a b : Fin N) (f : MvPolynomial (Fin N × Fin N) ℚ) :
    polE N a b f = ∑ s : Fin N, X (a, s) * pderiv (b, s) f := by
  simp [polE, LinearMap.sum_apply]

theorem polE_mul_X (a b : Fin N) (p : MvPolynomial (Fin N × Fin N) ℚ) (v : Fin N × Fin N) :
    polE N a b (p * X v) = polE N a b p * X v + p * (if v.1 = b then X (a, v.2) else 0) := by
  have key : ∀ s : Fin N, X (a, s) * pderiv (b, s) (p * X v) =
      X (a, s) * pderiv (b, s) p * X v + p * (if v = (b, s) then X (a, s) else 0) := by
    intro s
    rw [Derivation.leibniz, MvPolynomial.pderiv_X, Pi.single_apply]
    split_ifs <;> simp only [smul_eq_mul] <;> ring
  have hs : (∑ s : Fin N, (if v = (b, s) then (X (a, s) : MvPolynomial (Fin N × Fin N) ℚ) else 0)) =
      if v.1 = b then X (a, v.2) else 0 := by
    obtain ⟨v1, v2⟩ := v
    by_cases h : v1 = b
    · subst h
      simp [Prod.ext_iff]
    · simp [h]
  rw [polE_apply, polE_apply, Finset.sum_mul]
  simp only [key, Finset.sum_add_distrib, ← Finset.mul_sum, hs]

theorem polynomial_eq_divisibility : PolEqRowDiv := by
  intro N a b f
  induction f using MvPolynomial.induction_on
  · next c =>
    rw [polE_apply]
    simp [rowDiv, rowGen, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]
  · next p q hp hq =>
    rw [map_add (f := _), hp, hq]
    simp only [rowDiv, map_add (f := _), Polynomial.coeff_add]
  · next p v hp =>
    rw [polE_mul_X, rowDiv_one_mul_X, hp]

theorem fockQ_smul_right {σ : Type*} (c : ℚ) (f g : MvPolynomial σ ℚ) :
    fockQ f (c • g) = c * fockQ f g := by
  simp only [fockQ, MvPolynomial.coeff_smul, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  ring

theorem determinant_shift_norm : DetShiftNormOf := by
  intro hAdj hDD hPol hHw N ν hν
  have hν' : Antitone (fun i : Fin N => ν i + 1) := fun a b hab => Nat.add_le_add_right (hν hab) 1
  have hG' := hHw N ν hν

  have heul : ∀ a : Fin N, rowDiv ℚ a a 1 (hw ℚ le_rfl (fun i => ν i + 1)) =
      (((ν a + 1 : ℕ) : ℚ)) • hw ℚ le_rfl (fun i => ν i + 1) := by
    intro a
    ext m
    rw [lgraded_coeff_euler, MvPolynomial.coeff_smul, smul_eq_mul]
    by_cases hm : AddMonoidAlgebra.coeff (hw ℚ le_rfl (fun i : Fin N => ν i + 1)) m = 0
    · simp [hm]
    · have hW := hwRowWeight ℚ N N le_rfl _ hν' hm
      have hWa := congrFun hW a
      have hr : rowNu (r := N) (fun i : Fin N => ν i + 1) a = ν a + 1 := by
        simp [rowNu]
      rw [hr] at hWa
      congr 1
      rw [← hWa]
      norm_cast
      simp [Finsupp.weight_apply, Finsupp.sum, lgraded_wa, rowW, Pi.single_apply, eq_comm]
  have hcap := Formalism.CohomologicalDescent.HeightDescentMinors.c2_holds_alt ℚ (Module.End ℚ (MvPolynomial (Fin N × Fin N) ℚ))
    (MvPolynomial (Fin N × Fin N) ℚ) N (polE N) ((N : ℚ) - 1) (fun i => ((ν i + 1 : ℕ) : ℚ))
    (hw ℚ le_rfl (fun i => ν i + 1))
    (fun i j hij => by
      rw [Module.End.smul_def, hPol]
      exact hwRaise ℚ N N le_rfl _ i j 1 hij le_rfl)
    (fun i => by rw [Module.End.smul_def, hPol, heul])
  rw [← hDD N, Module.End.smul_def, Module.End.mul_apply, LinearMap.mulLeft_apply] at hcap
  have hdet0 : detX N ≠ 0 := by
    intro h0
    have h1 := hHw N (fun _ => 0) (fun _ _ _ => le_rfl)
    rw [h0, zero_mul] at h1
    exact hwNe ℚ N N le_rfl _ h1
  have hD : detD N (detX N * hw ℚ le_rfl ν) =
      (∏ i : Fin N, ((N : ℚ) - 1 + ((ν i + 1 : ℕ) : ℚ) - ((i : ℕ) : ℚ))) • hw ℚ le_rfl ν := by
    apply mul_left_cancel₀ hdet0
    rw [← hG', hcap, hG', mul_smul_comm]
  rw [hAdj N (hw ℚ le_rfl ν) (detX N * hw ℚ le_rfl ν), hD, fockQ_smul_right]
  congr 1
  refine Finset.prod_congr rfl fun i _ => ?_
  have hi : (i : ℕ) ≤ ν i + N := by omega
  rw [Nat.cast_sub hi]
  push_cast
  ring

end PI.HookSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShift =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DeterminantAdjugate =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DeterminantAdjugate", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.FockQRowDivAdj\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LFockqLemmas\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookSteps

theorem mulXAdj : MulXAdj := by
  intro σ v f g
  classical
  apply (Rat.castHom ℂ).injective
  show ((fockQ (X v * f) g : ℚ) : ℂ) = ((fockQ f (pderiv v g) : ℚ) : ℂ)
  rw [lfockq_cast, lfockq_cast, map_mul, map_X, Formalism.REAL.fischerInner_X_mul_left, pderiv_map]

theorem fockQ_zero_left {σ : Type*} (g : MvPolynomial σ ℚ) : fockQ 0 g = 0 := by
  unfold fockQ
  simp

theorem fockQ_sum_left {σ ι : Type*} (s : Finset ι) (F : ι → MvPolynomial σ ℚ) (g : MvPolynomial σ ℚ) :
    fockQ (∑ i ∈ s, F i) g = ∑ i ∈ s, fockQ (F i) g := by
  classical
  exact Finset.induction_on s (by simp [fockQ_zero_left]) fun a s ha ih => by
    rw [Finset.sum_insert ha, Finset.sum_insert ha, lfockq_add_left, ih]

theorem fockQ_sum_right {σ ι : Type*} (s : Finset ι) (F : ι → MvPolynomial σ ℚ) (f : MvPolynomial σ ℚ) :
    fockQ f (∑ i ∈ s, F i) = ∑ i ∈ s, fockQ f (F i) := by
  unfold fockQ
  simp only [MvPolynomial.coeff_sum, Finset.mul_sum, Finset.sum_mul]
  exact Finset.sum_comm

theorem fockQ_zsmul_left {σ : Type*} (z : ℤ) (f g : MvPolynomial σ ℚ) :
    fockQ (z • f) g = (z : ℚ) * fockQ f g := by
  rw [← Int.cast_smul_eq_zsmul ℚ z f, _root_.Formalism.GradedWeylDivisibility.lfockq_eq_sum _ g f.support MvPolynomial.support_smul]
  unfold fockQ
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  ring

theorem fockQ_zsmul_right {σ : Type*} (z : ℤ) (f g : MvPolynomial σ ℚ) :
    fockQ f (z • g) = (z : ℚ) * fockQ f g := by
  rw [← Int.cast_smul_eq_zsmul ℚ z g]
  unfold fockQ
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  ring

theorem fockQ_listX (hX : MulXAdj) {σ : Type} (l : List σ) (f g : MvPolynomial σ ℚ) :
    fockQ ((l.map fun v => (X v : MvPolynomial σ ℚ)).prod * f) g =
      fockQ f ((l.map fun v => ((pderiv v : Derivation ℚ _ _).toLinearMap :
        Module.End ℚ (MvPolynomial σ ℚ))).prod g) := by
  induction l generalizing f g with
  | nil => simp
  | cons v l ih =>
    simp only [List.map_cons, List.prod_cons]
    rw [mul_assoc, mul_left_comm, ih, hX σ v]
    rfl

theorem detAdj_of (hX : MulXAdj) : DetAdj := by
  intro N f g
  classical
  rw [detX, Matrix.det_apply, Finset.sum_mul, fockQ_sum_left, detD, LinearMap.sum_apply,
    fockQ_sum_right]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [Units.smul_def, smul_mul_assoc, fockQ_zsmul_left, LinearMap.smul_apply, fockQ_zsmul_right]
  congr 1
  have h := fockQ_listX hX (List.ofFn fun j : Fin N => (σ j, j)) f g
  simp only [List.map_ofFn] at h
  rw [List.prod_ofFn] at h
  exact h

theorem determinant_adjugate : DetAdj := detAdj_of mulXAdj

end PI.HookSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DeterminantAdjugate =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HighestWeightLastZero =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HighestWeightLastZero", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookSteps

theorem highest_weight_det_mul : HwDetMul := by
  intro N ν _
  cases N with
  | zero => simp [hw, detX]
  | succ n =>
    simp only [hw]
    rw [Fin.prod_univ_castSucc, Fin.prod_univ_castSucc]
    have hlast : ∀ μ : Fin (n + 1) → ℕ, nuNext μ (Fin.last n) = 0 := by
      intro μ; simp [nuNext]
    have hcs : ∀ s : Fin n, (ν s.castSucc + 1) - nuNext (fun i => ν i + 1) s.castSucc =
        ν s.castSucc - nuNext ν s.castSucc := by
      intro s
      have hs := s.isLt
      simp only [nuNext, Fin.val_castSucc]
      rw [dite_eq_left (show (s : ℕ) + 1 < n + 1 by omega), dite_eq_left (show (s : ℕ) + 1 < n + 1 by omega)]
      omega
    simp only [hlast, hcs, Nat.sub_zero]
    have hL : lpMinor ℚ ((Fin.last n : ℕ) + 1) (r := n + 1) (n := n + 1) (by simp) (by simp) =
        detX (n + 1) := rfl
    rw [hL, pow_succ]
    ring

theorem lpMinor_rename (n s : ℕ) (h1 h2 : s ≤ n) (h3 h4 : s ≤ n + 1) :
    rename (fun v : Fin n × Fin n => (Fin.castSucc v.1, Fin.castSucc v.2)) (lpMinor ℚ s h1 h2) =
      lpMinor ℚ s h3 h4 := by
  unfold lpMinor
  rw [AlgHom.map_det]
  congr 1
  ext p q
  simp only [AlgHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, rename_X]
  rfl

theorem highest_weight_last_zero : HwLastZero := by
  intro n ν _ hl
  simp only [hw]
  rw [Fin.prod_univ_castSucc, map_prod]
  have hlast : nuNext ν (Fin.last n) = 0 := by simp [nuNext]
  rw [hlast, hl, Nat.sub_zero, pow_zero, mul_one]
  refine Finset.prod_congr rfl fun s _ => ?_
  have hs := s.isLt
  rw [map_pow, lpMinor_rename n ((s : ℕ) + 1) _ _ (by omega) (by omega)]
  congr 1
  simp only [nuNext, Fin.val_castSucc]
  rw [dite_eq_left (show (s : ℕ) + 1 < n + 1 by omega)]
  by_cases h : (s : ℕ) + 1 < n
  · rw [dite_eq_left h]; rfl
  · rw [dite_eq_right h]
    have : (⟨s.val + 1, by omega⟩ : Fin (n + 1)) = Fin.last n := Fin.ext (by simp; omega)
    rw [this, hl]

theorem rename_isomorphism : RenameIso := by
  intro σ τ φ hφ f g
  classical
  unfold fockQ
  rw [support_rename_of_injective hφ, Finset.sum_image (fun a _ b _ h => Finsupp.mapDomain_injective hφ h)]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [coeff_rename_mapDomain φ hφ, coeff_rename_mapDomain φ hφ]
  congr 2
  rw [Finsupp.mapDomain_support_of_injective hφ, Finset.prod_image (fun a _ b _ h => hφ h)]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [Finsupp.mapDomain_apply_of_injective hφ]

end PI.HookSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HighestWeightLastZero =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookBoundOfSteps =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookBoundOfSteps", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.HookSteps

theorem hookBound_of_steps (hB : HookBoundOf) (hN : HookNormOf) (hS : DetShiftNormOf)
    (hR : RenameIso) (hH : HwDetMul) (hL : HwLastZero) (hA : DetAdj) (hD : DetDetId)
    (hP : PolEqRowDiv) : PI.HookBound :=
  hB (hN hR hH hL (hS hA hD hP hH))

end PI.HookSteps
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookBoundOfSteps =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookNorm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookNorm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookSteps

def Pn {N : ℕ} (ν : Fin N → ℕ) : ℕ := ∏ i : Fin N, ∏ j ∈ Finset.Ioi i, (ν i - ν j + (j - i) : ℕ)

def Qn {N : ℕ} (ν : Fin N → ℕ) : ℕ := ∏ i : Fin N, (ν i + (N - 1 - i)).factorial

theorem Pn_succ_shift {N : ℕ} (μ : Fin N → ℕ) : Pn (fun i => μ i + 1) = Pn μ := by
  unfold Pn
  refine Finset.prod_congr rfl fun i _ => Finset.prod_congr rfl fun j _ => ?_
  dsimp only
  omega

theorem Qn_succ_shift {N : ℕ} (μ : Fin N → ℕ) :
    Qn (fun i => μ i + 1) = (∏ i : Fin N, (μ i + N - i)) * Qn μ := by
  unfold Qn
  rw [← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  have hi := i.isLt
  have e : μ i + 1 + (N - 1 - (i : ℕ)) = (μ i + (N - 1 - (i : ℕ))) + 1 := by omega
  have e2 : μ i + N - (i : ℕ) = μ i + (N - 1 - (i : ℕ)) + 1 := by omega
  rw [e, e2, Nat.factorial_succ]

theorem Ioi_eq_filter {m : ℕ} (x : Fin m) : Finset.Ioi x = Finset.univ.filter (fun j => x < j) := by
  ext j
  simp

theorem prod_Ioi_castSucc {M : Type*} [CommMonoid M] (n : ℕ) (i : Fin n) (g : Fin (n + 1) → M) :
    ∏ j ∈ Finset.Ioi (Fin.castSucc i), g j = (∏ j ∈ Finset.Ioi i, g (Fin.castSucc j)) * g (Fin.last n) := by
  rw [Ioi_eq_filter, Ioi_eq_filter, Finset.prod_filter, Finset.prod_filter, Fin.prod_univ_castSucc]
  simp only [Fin.castSucc_lt_castSucc_iff, Fin.castSucc_lt_last, if_true]

theorem Pn_last_zero (n : ℕ) (ν : Fin (n + 1) → ℕ) (h : ν (Fin.last n) = 0) :
    Pn ν = Pn (fun i : Fin n => ν (Fin.castSucc i)) * ∏ i : Fin n, (ν (Fin.castSucc i) + (n - i)) := by
  unfold Pn
  rw [Fin.prod_univ_castSucc]
  have hlast : ∏ j ∈ Finset.Ioi (Fin.last n), (ν (Fin.last n) - ν j + ((j : ℕ) - ((Fin.last n : Fin (n + 1)) : ℕ))) = 1 := by
    rw [Finset.eq_empty_of_forall_notMem fun j hj => absurd (Finset.mem_Ioi.mp hj) (not_lt.mpr (Fin.le_last j)), Finset.prod_empty]
  rw [hlast, mul_one, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [prod_Ioi_castSucc]
  simp only [Fin.coe_castSucc, Fin.val_last, h]
  congr 1

theorem Qn_last_zero (n : ℕ) (ν : Fin (n + 1) → ℕ) (h : ν (Fin.last n) = 0) :
    Qn ν = (∏ i : Fin n, (ν (Fin.castSucc i) + (n - i))) * Qn (fun i : Fin n => ν (Fin.castSucc i)) := by
  unfold Qn
  rw [Fin.prod_univ_castSucc, h, ← Finset.prod_mul_distrib]
  have hl : (0 + (n + 1 - 1 - ((Fin.last n : Fin (n + 1)) : ℕ))).factorial = 1 := by
    simp
  rw [hl, mul_one]
  refine Finset.prod_congr rfl fun i _ => ?_
  have hi := i.isLt
  simp only [Fin.coe_castSucc]
  have e : ν (Fin.castSucc i) + (n + 1 - 1 - (i : ℕ)) = (ν (Fin.castSucc i) + (n - 1 - (i : ℕ))) + 1 := by omega
  rw [e, Nat.factorial_succ]
  congr 1
  omega

theorem castSucc2_injective (n : ℕ) :
    Function.Injective (fun v : Fin n × Fin n => (Fin.castSucc v.1, Fin.castSucc v.2)) := by
  intro a b h
  simp only [Prod.mk.injEq, Fin.castSucc_inj] at h
  exact Prod.ext h.1 h.2

theorem hook_norm : HookNormOf := by
  intro hR hH hL hS
  suffices key : ∀ (N : ℕ) (ν : Fin N → ℕ), Antitone ν →
      fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) * (Pn ν : ℚ) = (Qn ν : ℚ) by
    intro N ν hν
    have := key N ν hν
    unfold Pn Qn at this
    simp only [Nat.cast_prod] at this
    exact this
  intro N
  induction N with
  | zero => intro ν _; simp [Pn, Qn, hw, fockQ]
  | succ n ih =>
    suffices hk : ∀ (k : ℕ) (ν : Fin (n + 1) → ℕ), Antitone ν → ν (Fin.last n) = k →
        fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) * (Pn ν : ℚ) = (Qn ν : ℚ) by
      intro ν hν; exact hk _ ν hν rfl
    intro k
    induction k with
    | zero =>
      intro ν hν h0
      have hν' : Antitone (fun i : Fin n => ν i.castSucc) :=
        fun a b hab => hν (Fin.castSucc_le_castSucc_iff.2 hab)
      rw [hL n ν hν h0, hR _ _ _ (castSucc2_injective n), Pn_last_zero n ν h0, Qn_last_zero n ν h0,
        Nat.cast_mul, Nat.cast_mul, ← ih _ hν']
      ring
    | succ k ihk =>
      intro ν hν hk
      have hge : ∀ i, 1 ≤ ν i := fun i => by have := hν (Fin.le_last i); omega
      obtain ⟨μ, rfl⟩ : ∃ μ : Fin (n + 1) → ℕ, ν = fun i => μ i + 1 :=
        ⟨fun i => ν i - 1, funext fun i => by have := hge i; show ν i = ν i - 1 + 1; omega⟩
      have hμ : Antitone μ := fun a b hab => by have := hν hab; simp only at this; omega
      have hμk : μ (Fin.last n) = k := by simp only at hk; omega
      rw [Pn_succ_shift, Qn_succ_shift, hH _ μ hμ, hS _ μ hμ, Nat.cast_mul, Nat.cast_prod,
        ← ihk μ hμ hμk]
      ring

end PI.HookSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookNorm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DiagonalMonomialFactorial =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DiagonalMonomialFactorial", "h": "module\n\npublic import Formalism.PeriodIntegrals.HookBound\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookLower

def diagHom (N : ℕ) : MvPolynomial (Fin N × Fin N) ℚ →ₐ[ℚ] MvPolynomial (Fin N × Fin N) ℚ :=
  aeval fun v => if v.1 = v.2 then X v else 0

def IsDiag {N : ℕ} (m : Fin N × Fin N →₀ ℕ) : Prop := ∀ v : Fin N × Fin N, v.1 ≠ v.2 → m v = 0

open scoped Classical in
theorem diagHom_monomial {N : ℕ} (m : Fin N × Fin N →₀ ℕ) (c : ℚ) :
    diagHom N (monomial m c) = if IsDiag m then monomial m c else 0 := by
  classical
  rw [diagHom, aeval_monomial]
  split_ifs with h
  · rw [monomial_eq, algebraMap_eq]
    congr 1
    refine Finsupp.prod_congr fun v hv => ?_
    have : v.1 = v.2 := by
      by_contra hne
      exact (Finsupp.mem_support_iff.1 hv) (h v hne)
    rw [if_pos this]
  · have : ∃ v, v.1 ≠ v.2 ∧ m v ≠ 0 := by
      by_contra hc
      push_neg at hc
      exact h fun v hv => by_contra fun h0 => h0 (hc v hv)
    obtain ⟨v, hv, hmv⟩ := this
    rw [Finsupp.prod, Finset.prod_eq_zero (i := v) (Finsupp.mem_support_iff.2 hmv), mul_zero]
    rw [if_neg hv, zero_pow hmv]

theorem coeff_diagHom {N : ℕ} (f : MvPolynomial (Fin N × Fin N) ℚ) (m : Fin N × Fin N →₀ ℕ)
    (hm : IsDiag m) : AddMonoidAlgebra.coeff (diagHom N f) m = AddMonoidAlgebra.coeff f m := by
  classical
  refine MvPolynomial.induction_on' f (fun μ c => ?_) (fun p q hp hq => ?_)
  · rw [diagHom_monomial]
    split_ifs with h
    · rfl
    · rw [AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply, coeff_monomial, if_neg]
      rintro rfl
      exact h hm
  · rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hp, hq]

def diagMono {N : ℕ} (s : ℕ) (h : s ≤ N) : Fin N × Fin N →₀ ℕ :=
  ∑ p : Fin s, Finsupp.single (Fin.castLE h p, Fin.castLE h p) 1

theorem diagHom_lpMinor {N : ℕ} (s : ℕ) (hr hn : s ≤ N) :
    diagHom N (lpMinor ℚ s hr hn) = monomial (diagMono s hr) 1 := by
  classical
  rw [lpMinor, AlgHom.map_det]
  have hM : (diagHom N).mapMatrix
      (Matrix.of fun p q : Fin s => (X (Fin.castLE hr p, Fin.castLE hn q) : MvPolynomial (Fin N × Fin N) ℚ)) =
      Matrix.diagonal fun p : Fin s => (X (Fin.castLE hr p, Fin.castLE hr p) : MvPolynomial (Fin N × Fin N) ℚ) := by
    ext p q
    by_cases hpq : p = q
    · subst hpq
      simp [diagHom]
    · have : ¬ (Fin.castLE hr p = Fin.castLE hn q) := by
        intro h
        apply hpq
        exact Fin.ext (by simpa [Fin.ext_iff] using h)
      simp [diagHom, hpq, this]
  rw [hM, Matrix.det_diagonal, diagMono, monomial_sum_one]
  rfl

def M0 {N : ℕ} (ν : Fin N → ℕ) : Fin N × Fin N →₀ ℕ :=
  ∑ s : Fin N, (ν s - nuNext ν s) • diagMono (s.val + 1) s.isLt

theorem diagHom_hw {N : ℕ} (ν : Fin N → ℕ) :
    diagHom N (hw ℚ le_rfl ν) = monomial (M0 ν) 1 := by
  classical
  rw [hw, map_prod, M0, monomial_sum_one]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_pow, diagHom_lpMinor, monomial_pow, one_pow]

theorem isDiag_diagonal_monomial {N : ℕ} (ν : Fin N → ℕ) : IsDiag (M0 ν) := by
  classical
  intro v hv
  simp only [M0, diagMono, Finsupp.coe_finsetSum, Finset.sum_apply, Finsupp.smul_apply, smul_eq_mul]
  refine Finset.sum_eq_zero fun s _ => ?_
  rw [Finset.sum_eq_zero, mul_zero]
  intro p _
  rw [Finsupp.single_apply, if_neg]
  intro h
  subst h
  exact hv rfl

theorem coeff_diagonal_monomial_hw {N : ℕ} (ν : Fin N → ℕ) : AddMonoidAlgebra.coeff (hw ℚ le_rfl ν) (M0 ν) = 1 := by
  rw [← coeff_diagHom _ _ (isDiag_diagonal_monomial ν), diagHom_hw, coeff_monomial, if_pos rfl]

theorem weight_rowW_apply {N : ℕ} (m : Fin N × Fin N →₀ ℕ) (a : Fin N) :
    (Finsupp.weight (rowW N N) m) a = ∑ b : Fin N, m (a, b) := by
  classical
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by intro i; simp)]
  rw [Finset.sum_apply, Fintype.sum_prod_type]
  simp only [Pi.smul_apply, rowW, smul_eq_mul, Pi.single_apply]
  rw [Finset.sum_eq_single a]
  · simp
  · intro b _ hb
    simp [Ne.symm hb]
  · simp

theorem diagonal_monomial_apply {N : ℕ} (ν : Fin N → ℕ) (hν : Antitone ν) (a : Fin N) : M0 ν (a, a) = ν a := by
  classical
  have hmem : AddMonoidAlgebra.coeff (hw ℚ le_rfl ν) (M0 ν) ≠ 0 := by rw [coeff_diagonal_monomial_hw]; exact one_ne_zero
  have hw8 := hwRowWeight ℚ N N le_rfl ν hν hmem
  have h1 := congrFun hw8 a
  rw [weight_rowW_apply, Finset.sum_eq_single a] at h1
  · rw [h1]
    simp [rowNu]
  · intro b _ hb
    exact isDiag_diagonal_monomial ν (a, b) (Ne.symm hb)
  · simp

theorem diagonal_monomial_factorial {N : ℕ} (ν : Fin N → ℕ) (hν : Antitone ν) :
    (∏ k ∈ (M0 ν).support, ((M0 ν) k).factorial) = ∏ l, (ν l).factorial := by
  classical
  rw [Finset.prod_subset (Finset.subset_univ _) (fun k _ hk => by
    rw [Finsupp.notMem_support_iff.1 hk]; rfl)]
  rw [Fintype.prod_prod_type]
  refine Finset.prod_congr rfl fun a _ => ?_
  rw [Finset.prod_eq_single a]
  · rw [diagonal_monomial_apply ν hν a]
  · intro b _ hb
    rw [isDiag_diagonal_monomial ν (a, b) (Ne.symm hb)]
    rfl
  · simp

theorem fockQ_hw_ge {N : ℕ} (ν : Fin N → ℕ) (hν : Antitone ν) :
    (∏ l, ((ν l).factorial : ℚ)) ≤ fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) := by
  classical
  have hmem : M0 ν ∈ (hw ℚ le_rfl ν).support := by
    rw [mem_support_iff, coeff_diagonal_monomial_hw]; exact one_ne_zero
  unfold fockQ
  refine le_trans (le_of_eq ?_) (Finset.single_le_sum (f := fun m =>
      AddMonoidAlgebra.coeff (hw ℚ le_rfl ν) m * AddMonoidAlgebra.coeff (hw ℚ le_rfl ν) m *
        ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℚ))
    (fun m _ => mul_nonneg (mul_self_nonneg _) (Nat.cast_nonneg _)) hmem)
  simp only [coeff_diagonal_monomial_hw, one_mul]
  rw [diagonal_monomial_factorial ν hν]
  push_cast
  rfl

theorem one_le_cNu {N : ℕ} (ν : Fin N → ℕ) (hν : Antitone ν) : 1 ≤ PI.cNu ν := by
  have h := fockQ_hw_ge ν hν
  have hpos : (0 : ℝ) < ∏ l, ((ν l).factorial : ℝ) :=
    Finset.prod_pos fun l _ => by exact_mod_cast Nat.factorial_pos _
  have h' : (∏ l, ((ν l).factorial : ℝ)) ≤ ((fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) : ℚ) : ℝ) := by
    exact_mod_cast h
  unfold PI.cNu
  rw [one_le_div hpos]
  exact h'

end PI.HookLower
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DiagonalMonomialFactorial =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.ProdFactorialLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.ProdFactorialLe", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DiagonalMonomialFactorial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.GradedWeylDivisibility

noncomputable section

namespace PI.HookSteps

theorem sum_rev_eq (N : ℕ) : ∑ i : Fin N, (N - 1 - (i : ℕ)) = N * (N - 1) / 2 := by
  rw [Fin.sum_univ_eq_sum_range (fun i => N - 1 - i) N]
  have h := Finset.sum_range_reflect (fun i => i) N
  rw [h, Finset.sum_range_id]

theorem factorial_add_le (a k B : ℕ) (h : a + k ≤ B) : (a + k).factorial ≤ a.factorial * B ^ k := by
  induction k with
  | zero => simp
  | succ k ih =>
    have ih' := ih (by omega)
    rw [← add_assoc, Nat.factorial_succ, pow_succ]
    calc (a + k + 1) * (a + k).factorial ≤ B * (a.factorial * B ^ k) :=
          Nat.mul_le_mul (by omega) ih'
      _ = a.factorial * (B ^ k * B) := by ring

theorem prod_factorial_le (N : ℕ) (hN : 0 < N) (ν : Fin N → ℕ) (hν : Antitone ν) :
    ∏ i : Fin N, (ν i + (N - 1 - i)).factorial ≤
      (∏ i, (ν i).factorial) * (ν ⟨0, hN⟩ + N) ^ (N * (N - 1) / 2) := by
  have hB : ∀ i : Fin N, ν i + (N - 1 - i) ≤ ν ⟨0, hN⟩ + N := fun i => by
    have := hν (show (⟨0, hN⟩ : Fin N) ≤ i from Nat.zero_le _)
    omega
  calc ∏ i : Fin N, (ν i + (N - 1 - i)).factorial
      ≤ ∏ i : Fin N, ((ν i).factorial * (ν ⟨0, hN⟩ + N) ^ (N - 1 - (i : ℕ))) :=
        Finset.prod_le_prod₀ (fun _ _ => Nat.zero_le _) fun i _ => factorial_add_le _ _ _ (hB i)
    _ = (∏ i, (ν i).factorial) * (ν ⟨0, hN⟩ + N) ^ (N * (N - 1) / 2) := by
        rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, sum_rev_eq]

theorem hook_bound : HookBoundOf := by
  unfold HookBoundOf PI.HookBound
  intro hH N hN ν hν
  have h1 := PI.HookLower.one_le_cNu ν hν
  refine ⟨h1, ?_⟩
  have hD : (0 : ℝ) < ∏ l, ((ν l).factorial : ℝ) :=
    Finset.prod_pos fun l _ => by exact_mod_cast (ν l).factorial_pos
  unfold PI.cNu at h1 ⊢
  have hF0r : (0 : ℝ) ≤ (fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) : ℝ) := by
    have := (one_le_div hD).1 h1
    linarith
  have hF0 : (0 : ℚ) ≤ fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) := by exact_mod_cast hF0r
  have hP : (1 : ℚ) ≤ ∏ i : Fin N, ∏ j ∈ Finset.Ioi i, ((ν i - ν j + (j - i) : ℕ) : ℚ) := by
    calc (1 : ℚ) = ∏ i : Fin N, ∏ j ∈ Finset.Ioi i, (1 : ℚ) := by simp
      _ ≤ _ := Finset.prod_le_prod₀ (fun _ _ => by positivity) fun i _ =>
          Finset.prod_le_prod₀ (fun _ _ => zero_le_one) fun j hj => by
            have hij' : i < j := Finset.mem_Ioi.1 hj
            have hij : (i : ℕ) < j := hij'
            exact_mod_cast (show 1 ≤ ν i - ν j + (j - i) by omega)
  have hQ := hH N ν hν
  have hFQ : fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) ≤
      ∏ i : Fin N, (((ν i + (N - 1 - i)).factorial : ℕ) : ℚ) := by
    rw [← hQ]
    exact le_mul_of_one_le_right hF0 hP
  have hFQr : (fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) : ℝ) ≤
      ∏ i : Fin N, (((ν i + (N - 1 - i)).factorial : ℕ) : ℝ) := by exact_mod_cast hFQ
  have hle : (∏ i : Fin N, (((ν i + (N - 1 - i)).factorial : ℕ) : ℝ)) ≤
      (∏ i, ((ν i).factorial : ℝ)) * ((ν ⟨0, hN⟩ : ℝ) + N) ^ (N * (N - 1) / 2) := by
    exact_mod_cast prod_factorial_le N hN ν hν
  rw [div_le_iff₀ hD]
  linarith

end PI.HookSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.ProdFactorialLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShiftNormOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DetShift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.DeterminantAdjugate\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HighestWeightLastZero\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookBoundOfSteps\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.HookNorm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.ProdFactorialLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.HookSteps

theorem hookBound_of (hD : DetDetId) : PI.HookBound :=
  hookBound_of_steps hook_bound hook_norm determinant_shift_norm rename_isomorphism
    highest_weight_det_mul highest_weight_last_zero determinant_adjugate hD polynomial_eq_divisibility

end PI.HookSteps
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.Assemble =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliOps =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliOps", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliAbs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Derivation.Lie\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.HookSteps.Cap

open MvPolynomial Finset

theorem mulLeft_eq_lmul (N : ℕ) (p : MvPolynomial (Fin N × Fin N) ℚ) :
    LinearMap.mulLeft ℚ p = Algebra.lmul ℚ (MvPolynomial (Fin N × Fin N) ℚ) p := rfl

theorem capelli_relation : CapRel := by
  intro N
  refine ⟨fun a s b t => ?_, fun a s b t => ?_⟩
  · refine LinearMap.ext fun p => ?_
    have e1 : (xo N a s * xo N b t) p = X (a, s) * (X (b, t) * p) := rfl
    have e2 : (xo N b t * xo N a s) p = X (b, t) * (X (a, s) * p) := rfl
    rw [e1, e2]
    exact mul_left_comm _ _ _
  · refine LinearMap.ext fun p => ?_
    have e1 : (dop N b t * xo N a s) p = pderiv (b, t) (X (a, s) * p) := rfl
    have e2 : (xo N a s * dop N b t) p = X (a, s) * pderiv (b, t) p := rfl
    rw [LinearMap.add_apply, e1, e2, Derivation.leibniz, MvPolynomial.pderiv_X, smul_eq_mul, smul_eq_mul]
    split_ifs with h
    · obtain ⟨rfl, rfl⟩ := h
      simp
    · rw [Pi.single_apply, if_neg (fun e => h (Prod.mk.inj e))]
      simp

theorem capelli_left_holds : CapLeft := by
  intro N
  unfold Formalism.CohomologicalDescent.HeightDescentMinors.capelli Lw
  refine Finset.sum_congr rfl fun σ _ => ?_
  congr 2
  congr 1
  funext j
  have hE : polE N (σ j) j = Eop (xo N) (dop N) (σ j) (id j) := rfl
  simp only [Formalism.CohomologicalDescent.HeightDescentMinors.capA, hE, id]
  congr 2
  simp [map_sub, map_natCast]

theorem dop_comm (N : ℕ) (b t b' t' : Fin N) : Commute (dop N b t) (dop N b' t') := by
  have h : ⁅(pderiv (b, t) : Derivation ℚ (MvPolynomial (Fin N × Fin N) ℚ) (MvPolynomial (Fin N × Fin N) ℚ)),
      (pderiv (b', t') : Derivation ℚ (MvPolynomial (Fin N × Fin N) ℚ) (MvPolynomial (Fin N × Fin N) ℚ))⁆ = 0 := by
    apply MvPolynomial.derivation_ext
    intro k
    rw [Derivation.commutator_apply, pderiv_X, pderiv_X]
    simp only [Pi.single_apply]
    split_ifs <;> simp
  apply LinearMap.ext; intro f
  have := congrArg (fun D : Derivation ℚ (MvPolynomial (Fin N × Fin N) ℚ)
    (MvPolynomial (Fin N × Fin N) ℚ) => D f) h
  simp only [Derivation.commutator_apply, Derivation.zero_apply] at this
  simpa [dop, Module.End.mul_apply, sub_eq_zero] using this

theorem xw_xo (N : ℕ) : ∀ (k : ℕ) (r s : Fin k → Fin N),
    xw (xo N) r s = Algebra.lmul ℚ (MvPolynomial (Fin N × Fin N) ℚ) (∏ j, X (r j, s j)) := by
  intro k
  induction k with
  | zero =>
    intro r s
    rw [xw_zero]
    refine LinearMap.ext fun p => ?_
    simp
  | succ k ih =>
    intro r s
    rw [xw_succ, ih, Fin.prod_univ_succ, map_mul]
    rfl

theorem sum_perm_of_noninj {M : Type} [AddCommMonoid M] (N : ℕ) (F : (Fin N → Fin N) → M)
    (hF : ∀ s, ¬ Function.Injective s → F s = 0) :
    ∑ s, F s = ∑ π : Equiv.Perm (Fin N), F π := by
  classical
  have himg : ∑ π : Equiv.Perm (Fin N), F π =
      ∑ s ∈ Finset.univ.image (fun π : Equiv.Perm (Fin N) => (π : Fin N → Fin N)), F s :=
    (Finset.sum_image fun π _ σ _ h => Equiv.ext (congrFun h)).symm
  rw [himg]
  symm
  refine Finset.sum_subset (Finset.subset_univ _) fun s _ hs => hF s fun hinj => hs ?_
  exact Finset.mem_image.2
    ⟨Equiv.ofBijective s (Finite.injective_iff_bijective.1 hinj), Finset.mem_univ _, rfl⟩

theorem detD_eq (N : ℕ) : detD N = ∑ π : Equiv.Perm (Fin N), ((Equiv.Perm.sign π : ℤˣ) : ℤ) •
    dw (dop N) (id : Fin N → Fin N) (fun j => π j) := by
  unfold detD
  rw [← Equiv.sum_comp (Equiv.inv (Equiv.Perm (Fin N)))]
  refine Finset.sum_congr rfl fun σ _ => ?_
  simp only [Equiv.inv_apply, Equiv.Perm.sign_inv]
  congr 1
  unfold dw
  have hp := Equiv.Perm.ofFn_comp_perm σ⁻¹ (fun j => dop N j (σ j))
  have hc : (List.ofFn ((fun j => dop N j (σ j)) ∘ ⇑σ⁻¹)).Pairwise Commute :=
    List.pairwise_ofFn.mpr fun i j _ => dop_comm N _ _ _ _
  refine Eq.trans ?_ ((hp.prod_eq' hc).trans rfl)
  congr 1
  congr 1
  funext j
  simp [dop]

theorem capelli_square : CapSquare := by
  intro N
  set P := MvPolynomial (Fin N × Fin N) ℚ
  set M : Matrix (Fin N) (Fin N) P := Matrix.of fun a b => (X (a, b) : P) with hM
  have hdet : ∀ s : Fin N → Fin N, ∑ σ : Equiv.Perm (Fin N), ((Equiv.Perm.sign σ : ℤˣ) : ℤ) •
      xw (xo N) (fun j => σ j) s = Algebra.lmul ℚ P (M.submatrix id s).det := by
    intro s

    rw [Matrix.det_apply, map_sum]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [xw_xo, Units.smul_def, map_zsmul]
    rfl
  unfold Pn
  simp only [Finset.smul_sum]
  rw [Finset.sum_comm]
  simp only [← smul_mul_assoc, ← Finset.sum_mul, hdet]
  rw [sum_perm_of_noninj N (fun s => Algebra.lmul ℚ P (M.submatrix id s).det * dw (dop N) id s)]
  · rw [detD_eq, Finset.mul_sum, mulLeft_eq_lmul]
    refine Finset.sum_congr rfl fun π _ => ?_
    rw [Matrix.det_permute', map_mul, map_intCast, mul_assoc, ← zsmul_eq_mul, mul_smul_comm]
    rfl
  · intro s hs
    simp only [Function.Injective, not_forall] at hs
    obtain ⟨i, j, hij, hne⟩ := hs
    rw [Matrix.det_zero_of_column_eq hne (fun k => by simp [hij]), map_zero, zero_mul]

theorem capelli_determinant_identity : PI.HookSteps.DetDetId :=
  detDetId_of capelli_absolute_value capelli_square capelli_left_holds capelli_relation

end PI.HookSteps.Cap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliOps =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.HookBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HookLengthBound.CapelliOps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem hook_length_bound : PI.HookBound := PI.HookSteps.hookBound_of PI.HookSteps.Cap.capelli_determinant_identity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound =====
