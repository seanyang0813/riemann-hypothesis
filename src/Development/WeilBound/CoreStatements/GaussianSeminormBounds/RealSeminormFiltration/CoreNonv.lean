module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.LoweringPartRightActionInlInr
public import Formalism.LocalToGlobal.ThetaOperatorCommutation.RealTh
public import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDefs
public import Mathlib.Analysis.InnerProductSpace.Orthogonal
public import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreCyc
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FockRaiseLow
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.FockOperatorsKernel
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.SameBlockOfPosC
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockHarmonicSplitting.ConjTransposeOneKronecker
public import Mathlib.RingTheory.MvPolynomial.EulerIdentity
public import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreLie
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.SimpleRing.Principal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDelta, Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreGraph, Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreProj, Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreNonv

-- ===== clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDelta =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDelta", "h": "module\n\npublic import Formalism.LocalToGlobal.ThetaOperatorCommutation.RealTh\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ThetaSummability.Real ReciprocityTheory.ChartRestriction.G.ThK.Real FockH1Action MvPolynomial Matrix
open scoped InnerProductSpace TensorProduct

namespace PositivityTheory.KReal

namespace Delta

section Gen

variable {A B : Type} [CommRing A] [CommRing B] [Algebra ℂ A] [Algebra ℂ B]

theorem mulL (x : A) (t : A ⊗[ℂ] B) : (x ⊗ₜ[ℂ] (1 : B)) * t = (LinearMap.mulLeft ℂ x).rTensor B t := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp
  | add a b ha hb => rw [mul_add, map_add (f := _), ha, hb]

theorem mulR (y : B) (t : A ⊗[ℂ] B) : ((1 : A) ⊗ₜ[ℂ] y) * t = (LinearMap.mulLeft ℂ y).lTensor A t := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp
  | add a b ha hb => rw [mul_add, map_add (f := _), ha, hb]

theorem derL (D : Derivation ℂ A A) (t : A ⊗[ℂ] B) (x : A) (y : B) :
    D.toLinearMap.rTensor B (t * (x ⊗ₜ[ℂ] y)) =
      D.toLinearMap.rTensor B t * (x ⊗ₜ[ℂ] y) + t * (D x ⊗ₜ[ℂ] y) := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b =>
    simp only [Algebra.TensorProduct.tmul_mul_tmul, LinearMap.rTensor_tmul, Derivation.coeFn_coe,
      Derivation.leibniz, smul_eq_mul, TensorProduct.add_tmul]
    rw [add_comm, mul_comm x]
  | add a b ha hb => rw [add_mul, map_add (f := _), ha, hb, map_add (f := _), add_mul, add_mul]; abel

theorem derR (D : Derivation ℂ B B) (t : A ⊗[ℂ] B) (x : A) (y : B) :
    D.toLinearMap.lTensor A (t * (x ⊗ₜ[ℂ] y)) =
      D.toLinearMap.lTensor A t * (x ⊗ₜ[ℂ] y) + t * (x ⊗ₜ[ℂ] D y) := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b =>
    simp only [Algebra.TensorProduct.tmul_mul_tmul, LinearMap.lTensor_tmul, Derivation.coeFn_coe,
      Derivation.leibniz, smul_eq_mul, TensorProduct.tmul_add]
    rw [add_comm, mul_comm y]
  | add a b ha hb => rw [add_mul, map_add (f := _), ha, hb, map_add (f := _), add_mul, add_mul]; abel

end Gen

variable {p q r s : ℕ}

def dv (p q r s : ℕ) : Ln p q r s → Pol p q r 0 ⊗[ℂ] Pol p q 0 s
  | (a, .inl k) => (X (a, Sum.inl k) : Pol p q r 0) ⊗ₜ[ℂ] (1 : Pol p q 0 s)
  | (a, .inr l) => (1 : Pol p q r 0) ⊗ₜ[ℂ] (X (a, Sum.inr l) : Pol p q 0 s)

def dl (p q r s : ℕ) : Pol p q r s →ₐ[ℂ] Pol p q r 0 ⊗[ℂ] Pol p q 0 s := aeval (dv p q r s)

theorem dl_XL (a : Ix p q) (k : Fin r) :
    dl p q r s (X (a, Sum.inl k)) = (X (a, Sum.inl k) : Pol p q r 0) ⊗ₜ[ℂ] (1 : Pol p q 0 s) := by
  simp [dl, dv]

theorem dl_XR (a : Ix p q) (l : Fin s) :
    dl p q r s (X (a, Sum.inr l)) = (1 : Pol p q r 0) ⊗ₜ[ℂ] (X (a, Sum.inr l) : Pol p q 0 s) := by
  simp [dl, dv]

theorem dl_mulL (a : Ix p q) (k : Fin r) (f : Pol p q r s) :
    dl p q r s (X (a, Sum.inl k) * f) =
      (LinearMap.mulLeft ℂ (X (a, Sum.inl k) : Pol p q r 0)).rTensor _ (dl p q r s f) := by
  rw [map_mul, dl_XL, mulL]

theorem dl_mulR (a : Ix p q) (l : Fin s) (f : Pol p q r s) :
    dl p q r s (X (a, Sum.inr l) * f) =
      (LinearMap.mulLeft ℂ (X (a, Sum.inr l) : Pol p q 0 s)).lTensor _ (dl p q r s f) := by
  rw [map_mul, dl_XR, mulR]

private theorem dl_pderiv_inl_X_eq_rTensor (a : Ix p q) (k : Fin r) (i : Ln p q r s) :
    dl p q r s (pderiv (a, Sum.inl k) (X i)) =
      (pderiv ((a, Sum.inl k) : Ln p q r 0)).toLinearMap.rTensor _ (dl p q r s (X i)) := by
  obtain ⟨b, m | m⟩ := i
  · rw [dl_XL, LinearMap.rTensor_tmul]
    by_cases h : b = a ∧ m = k
    · obtain ⟨rfl, rfl⟩ := h
      simp [Algebra.TensorProduct.one_def]
    · have h1 : ((b, Sum.inl m) : Ln p q r s) ≠ (a, Sum.inl k) := by simpa using h
      have h2 : ((b, Sum.inl m) : Ln p q r 0) ≠ (a, Sum.inl k) := by simpa using h
      simp [pderiv_X, h1, h2]
  · rw [dl_XR, LinearMap.rTensor_tmul]
    simp [pderiv_X]

theorem dl_pdL (a : Ix p q) (k : Fin r) (f : Pol p q r s) :
    dl p q r s (pderiv (a, Sum.inl k) f) =
      (pderiv ((a, Sum.inl k) : Ln p q r 0)).toLinearMap.rTensor _ (dl p q r s f) := by
  induction f using MvPolynomial.induction_on with
  | C c => simp
  | add f g hf hg => simp only [map_add (f := _), hf, hg]
  | mul_X f i hf =>
    have h1 : pderiv (a, Sum.inl k) (f * X i) =
        pderiv (a, Sum.inl k) f * X i + f * pderiv (a, Sum.inl k) (X i) := by
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      ring
    simp only [h1, map_add (f := _), map_mul, hf, dl_pderiv_inl_X_eq_rTensor]
    obtain ⟨b, m | m⟩ := i
    · rw [dl_XL, derL, LinearMap.rTensor_tmul]
      rfl
    · rw [dl_XR, derL, LinearMap.rTensor_tmul]
      rfl

private theorem dl_pderiv_inr_X_eq_lTensor (a : Ix p q) (k : Fin s) (i : Ln p q r s) :
    dl p q r s (pderiv (a, Sum.inr k) (X i)) =
      (pderiv ((a, Sum.inr k) : Ln p q 0 s)).toLinearMap.lTensor _ (dl p q r s (X i)) := by
  obtain ⟨b, m | m⟩ := i
  · rw [dl_XL, LinearMap.lTensor_tmul]
    simp [pderiv_X]
  · rw [dl_XR, LinearMap.lTensor_tmul]
    by_cases h : b = a ∧ m = k
    · obtain ⟨rfl, rfl⟩ := h
      simp [Algebra.TensorProduct.one_def]
    · have h1 : ((b, Sum.inr m) : Ln p q r s) ≠ (a, Sum.inr k) := by simpa using h
      have h2 : ((b, Sum.inr m) : Ln p q 0 s) ≠ (a, Sum.inr k) := by simpa using h
      simp [pderiv_X, h1, h2]

theorem dl_pdR (a : Ix p q) (k : Fin s) (f : Pol p q r s) :
    dl p q r s (pderiv (a, Sum.inr k) f) =
      (pderiv ((a, Sum.inr k) : Ln p q 0 s)).toLinearMap.lTensor _ (dl p q r s f) := by
  induction f using MvPolynomial.induction_on with
  | C c => simp
  | add f g hf hg => simp only [map_add (f := _), hf, hg]
  | mul_X f i hf =>
    have h1 : pderiv (a, Sum.inr k) (f * X i) =
        pderiv (a, Sum.inr k) f * X i + f * pderiv (a, Sum.inr k) (X i) := by
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      ring
    simp only [h1, map_add (f := _), map_mul, hf, dl_pderiv_inr_X_eq_lTensor]
    obtain ⟨b, m | m⟩ := i
    · rw [dl_XL, derR, LinearMap.lTensor_tmul]
      rfl
    · rw [dl_XR, derR, LinearMap.lTensor_tmul]
      rfl

theorem dl_lowL (a : Ix p q) (k : Fin r) (f : Pol p q r s) :
    dl p q r s (lowB (a, Sum.inl k) f) =
      (lowB ((a, Sum.inl k) : Ln p q r 0)).rTensor _ (dl p q r s f) := by
  obtain a | a := a <;> simp [lowB, linePos, dl_pdL, dl_mulL]

theorem dl_lowR (a : Ix p q) (k : Fin s) (f : Pol p q r s) :
    dl p q r s (lowB (a, Sum.inr k) f) =
      (lowB ((a, Sum.inr k) : Ln p q 0 s)).lTensor _ (dl p q r s f) := by
  obtain a | a := a <;> simp [lowB, linePos, dl_pdR, dl_mulR]

theorem dl_raiL (a : Ix p q) (k : Fin r) (f : Pol p q r s) :
    dl p q r s (raiB (a, Sum.inl k) f) =
      (raiB ((a, Sum.inl k) : Ln p q r 0)).rTensor _ (dl p q r s f) := by
  obtain a | a := a <;> simp [raiB, linePos, dl_pdL, dl_mulL, LinearMap.rTensor_neg]

theorem dl_raiR (a : Ix p q) (k : Fin s) (f : Pol p q r s) :
    dl p q r s (raiB (a, Sum.inr k) f) =
      (raiB ((a, Sum.inr k) : Ln p q 0 s)).lTensor _ (dl p q r s f) := by
  obtain a | a := a <;> simp [raiB, linePos, dl_pdR, dl_mulR, LinearMap.lTensor_neg]

theorem dl_omL (a b : Ix p q) (k : Fin r) (f : Pol p q r s) :
    dl p q r s (omE (a, Sum.inl k) (b, Sum.inl k) f) =
      (omE ((a, Sum.inl k) : Ln p q r 0) (b, Sum.inl k)).rTensor _ (dl p q r s f) := by
  simp only [omE, LinearMap.add_apply, Module.End.mul_apply, map_add (f := _), dl_raiL, dl_lowL,
    LinearMap.rTensor_add, LinearMap.rTensor_mul]
  by_cases h : a = b
  · subst h
    simp [LinearMap.rTensor_smul, Module.End.one_eq_id, LinearMap.rTensor_id]
  · have h' : ((a, Sum.inl k) : Ln p q r s) ≠ (b, Sum.inl k) := by simp [h]
    have h'' : ((a, Sum.inl k) : Ln p q r 0) ≠ (b, Sum.inl k) := by simp [h]
    simp [h', h'']

theorem dl_omR (a b : Ix p q) (k : Fin s) (f : Pol p q r s) :
    dl p q r s (omE (a, Sum.inr k) (b, Sum.inr k) f) =
      (omE ((a, Sum.inr k) : Ln p q 0 s) (b, Sum.inr k)).lTensor _ (dl p q r s f) := by
  simp only [omE, LinearMap.add_apply, Module.End.mul_apply, map_add (f := _), dl_raiR, dl_lowR,
    LinearMap.lTensor_add, LinearMap.lTensor_mul]
  by_cases h : a = b
  · subst h
    simp [LinearMap.lTensor_smul, Module.End.one_eq_id, LinearMap.lTensor_id]
  · have h' : ((a, Sum.inr k) : Ln p q r s) ≠ (b, Sum.inr k) := by simp [h]
    have h'' : ((a, Sum.inr k) : Ln p q 0 s) ≠ (b, Sum.inr k) := by simp [h]
    simp [h', h'']

theorem act_unit (a b : Ix p q) :
    fockAct1 p q r s (Eab a b) = ∑ c : Ix r s, omE ((a, c) : Ln p q r s) (b, c) := by
  apply _root_.PI.WFJM.fockAct1_Eab <;> assumption

section Form

variable (b : Pol p q r 0 →ₗ[ℂ] Pol p q 0 s →ₗ[ℂ] ℂ)

theorem sumL {ι : Type} [Fintype ι] (F : ι → Module.End ℂ (Pol p q r 0)) (t : Pol p q r 0 ⊗[ℂ] Pol p q 0 s) :
    (∑ i, F i).rTensor (Pol p q 0 s) t = ∑ i, (F i).rTensor (Pol p q 0 s) t := by
  classical
  have key : ∀ S : Finset ι, (∑ i ∈ S, F i).rTensor (Pol p q 0 s) t = ∑ i ∈ S, (F i).rTensor (Pol p q 0 s) t := by
    intro S
    induction S using Finset.induction_on with
    | empty => simp
    | insert j S hj ih => rw [Finset.sum_insert hj, Finset.sum_insert hj, LinearMap.rTensor_add, LinearMap.add_apply, ih]
  exact key Finset.univ

theorem sumR {ι : Type} [Fintype ι] (F : ι → Module.End ℂ (Pol p q 0 s)) (t : Pol p q r 0 ⊗[ℂ] Pol p q 0 s) :
    (∑ i, F i).lTensor (Pol p q r 0) t = ∑ i, (F i).lTensor (Pol p q r 0) t := by
  classical
  have key : ∀ S : Finset ι, (∑ i ∈ S, F i).lTensor (Pol p q r 0) t = ∑ i ∈ S, (F i).lTensor (Pol p q r 0) t := by
    intro S
    induction S using Finset.induction_on with
    | empty => simp
    | insert j S hj ih => rw [Finset.sum_insert hj, Finset.sum_insert hj, LinearMap.lTensor_add, LinearMap.add_apply, ih]
  exact key Finset.univ

end Form

theorem dl_unit (a b : Ix p q) (f : Pol p q r s) :
    dl p q r s (fockAct1 p q r s (Eab a b) f) =
      (fockAct1 p q r 0 (Eab a b)).rTensor _ (dl p q r s f) +
      (fockAct1 p q 0 s (Eab a b)).lTensor _ (dl p q r s f) := by
  rw [act_unit, act_unit, act_unit, sumL, sumR]

  simp only [Fintype.sum_sum_type, LinearMap.add_apply, map_add (f := _), LinearMap.sum_apply, map_sum, dl_omL, dl_omR,
  Finset.univ_eq_empty, Finset.sum_empty, add_zero, zero_add]

theorem eq_sum_units (Z : Mat p q) : Z = ∑ a, ∑ b, Z a b • Eab a b := by
  conv_lhs => rw [Matrix.matrix_eq_sum_single Z]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  ext i j
  simp [Eab, Matrix.single_apply]

theorem dl_act (Z : Mat p q) (f : Pol p q r s) :
    dl p q r s (fockAct1 p q r s Z f) =
      (fockAct1 p q r 0 Z).rTensor _ (dl p q r s f) + (fockAct1 p q 0 s Z).lTensor _ (dl p q r s f) := by
  rw [eq_sum_units Z]

  simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, sumL, sumR, dl_unit,
  LinearMap.rTensor_smul, LinearMap.lTensor_smul, smul_add, Finset.sum_add_distrib]

def iA (p q r s : ℕ) : Ln p q r 0 → Ln p q r s := fun l => (l.1, Sum.elim Sum.inl Fin.elim0 l.2)

def iB (p q r s : ℕ) : Ln p q 0 s → Ln p q r s := fun l => (l.1, Sum.elim Fin.elim0 Sum.inr l.2)

theorem dl_iA (u : Pol p q r 0) : dl p q r s (rename (iA p q r s) u) = u ⊗ₜ[ℂ] (1 : Pol p q 0 s) := by
  have h : (dl p q r s).comp (rename (iA p q r s)) =
      (Algebra.TensorProduct.includeLeft (R := ℂ) (S := ℂ) (A := Pol p q r 0) (B := Pol p q 0 s)) := by
    apply MvPolynomial.algHom_ext
    rintro ⟨a, k | k⟩
    · simp [iA, dl_XL]
    · exact k.elim0
  simpa using DFunLike.congr_fun h u

theorem dl_iB (v : Pol p q 0 s) : dl p q r s (rename (iB p q r s) v) = (1 : Pol p q r 0) ⊗ₜ[ℂ] v := by
  have h : (dl p q r s).comp (rename (iB p q r s)) =
      (Algebra.TensorProduct.includeRight (R := ℂ) (A := Pol p q r 0) (B := Pol p q 0 s)) := by
    apply MvPolynomial.algHom_ext
    rintro ⟨a, k | k⟩
    · exact k.elim0
    · simp [iB, dl_XR]
  simpa using DFunLike.congr_fun h v

end Delta

open Delta in
theorem nontrivial_of_form {p q r s : ℕ} (c : ℂ) (b : Pol p q r 0 →ₗ[ℂ] Pol p q 0 s →ₗ[ℂ] ℂ)
    (hb : ∀ Z u v, b (fockAct1 p q r 0 Z u) v + b u (fockAct1 p q 0 s Z v) = c * Z.trace * b u v)
    (u0 : Pol p q r 0) (v0 : Pol p q 0 s) (hne : b u0 v0 ≠ 0) : Nontrivial (ThC p q r s c) := by
  classical
  set B' : Pol p q r 0 ⊗[ℂ] Pol p q 0 s →ₗ[ℂ] ℂ := TensorProduct.lift b with hB'
  have key : ∀ (Z : Mat p q) (t : Pol p q r 0 ⊗[ℂ] Pol p q 0 s),
      B' ((fockAct1 p q r 0 Z).rTensor _ t) + B' ((fockAct1 p q 0 s Z).lTensor _ t) = c * Z.trace * B' t := by
    intro Z t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul u v => simpa [hB'] using hb Z u v
    | add x y hx hy =>
      simp only [map_add (f := _)]
      linear_combination hx + hy
  have hle : coinvSub (act1 p q r s) (chiTr c) ≤ LinearMap.ker (B' ∘ₗ (dl p q r s).toLinearMap) := by
    refine iSup_le fun Z => ?_
    intro x hx
    obtain ⟨f, rfl⟩ := LinearMap.mem_range.mp hx
    rw [LinearMap.mem_ker]
    simp only [LinearMap.comp_apply, LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply,
      map_sub, map_smul, AlgHom.toLinearMap_apply, act1, chiTr, dl_act, map_add, key, smul_eq_mul]
    ring
  refine ⟨⟨Submodule.Quotient.mk (p := coinvSub (act1 p q r s) (chiTr c))
    (rename (iA p q r s) u0 * rename (iB p q r s) v0), 0, ?_⟩⟩
  intro h
  rw [Submodule.Quotient.mk_eq_zero] at h
  have h2 := hle h
  rw [LinearMap.mem_ker, LinearMap.comp_apply, AlgHom.toLinearMap_apply, map_mul, dl_iA, dl_iB,
    Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, hB', TensorProduct.lift.tmul] at h2
  exact hne h2

end PositivityTheory.KReal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDelta =====

-- ===== clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreGraph =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreGraph", "h": "module\n\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDefs\npublic import Mathlib.Analysis.InnerProductSpace.Orthogonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ThetaSummability.Real ReciprocityTheory.ChartRestriction.G.ThK.Real FockH1Action MvPolynomial Matrix
open scoped InnerProductSpace

namespace PositivityTheory.KReal

theorem graph_orth_stable {p q : ℕ} {A : Type} [NormedAddCommGroup A] [InnerProductSpace ℂ A]
    (ρ : Mat p q →ₗ[ℂ] Module.End ℂ A) (aA : AdjG ρ) (K : Submodule ℂ A) (hK : ∀ W, ∀ v ∈ K, ρ W v ∈ K) :
    ∀ W, ∀ u ∈ Kᗮ, ρ W u ∈ Kᗮ := by
  intro W u hu
  rw [Submodule.mem_orthogonal']
  intro v hv
  have hu' := (Submodule.mem_orthogonal' K u).1 hu
  rw [Matrix.matrix_eq_sum_single W]

  simp only [map_sum, LinearMap.sum_apply, sum_inner]
  refine Finset.sum_eq_zero fun a _ => Finset.sum_eq_zero fun b _ => ?_
  have hs : Matrix.single a b (W a b) = W a b • Eab a b := by
    simp [Eab, Matrix.smul_single]
  rw [hs, map_smul, LinearMap.smul_apply, inner_smul_left, aA, hu' _ (hK _ _ hv), mul_zero, mul_zero]

def prodAct {p q : ℕ} {A B : Type} [AddCommGroup A] [Module ℂ A] [AddCommGroup B] [Module ℂ B]
    (ρA : Mat p q →ₗ[ℂ] Module.End ℂ A) (ρB : Mat p q →ₗ[ℂ] Module.End ℂ B) :
    Mat p q →ₗ[ℂ] Module.End ℂ (A × B) where
  toFun Z := (ρA Z).prodMap (ρB Z)
  map_add' Z Z' := by
    refine LinearMap.ext fun n => ?_
    simp
  map_smul' a Z := by
    refine LinearMap.ext fun n => ?_
    simp

theorem prodAct_apply {p q : ℕ} {A B : Type} [AddCommGroup A] [Module ℂ A] [AddCommGroup B] [Module ℂ B]
    (ρA : Mat p q →ₗ[ℂ] Module.End ℂ A) (ρB : Mat p q →ₗ[ℂ] Module.End ℂ B) (Z : Mat p q) (n : A × B) :
    prodAct ρA ρB Z n = (ρA Z n.1, ρB Z n.2) := rfl

theorem graph_sub {p q : ℕ} {A : Type} [NormedAddCommGroup A] [InnerProductSpace ℂ A]
    {B : Type} [NormedAddCommGroup B] [InnerProductSpace ℂ B]
    (ρA : Mat p q →ₗ[ℂ] Module.End ℂ A) (ρB : Mat p q →ₗ[ℂ] Module.End ℂ B)
    (hA : IsLie ρA) (hB : IsLie ρB) (aA : AdjG ρA) (aB : AdjG ρB) (lam : Ix p q → ℂ) (x : A) (y : B)
    (hx0 : x ≠ 0)
    (hxK : ∀ a b, sameBlock a b → ρA (Eab a b) x = (if a = b then lam a else 0) • x)
    (hyK : ∀ a b, sameBlock a b → ρB (Eab a b) y = (if a = b then lam a else 0) • y)
    (hxP : ∀ i j, ρA (Eab (.inr j) (.inl i)) x = 0) (hyP : ∀ i j, ρB (Eab (.inr j) (.inl i)) y = 0) :
    ∃ N : Submodule ℂ (A × B), (x, y) ∈ N ∧ (∀ W, ∀ n ∈ N, prodAct ρA ρB W n ∈ N) ∧
      ∀ v, ((0 : A), v) ∈ N → v = 0 := by
  classical
  set P := prodAct ρA ρB with hPdef
  have hP : ∀ Z (n : A × B), P Z n = (ρA Z n.1, ρB Z n.2) := fun Z n => prodAct_apply ρA ρB Z n
  have hLie : ∀ (X Y : Mat p q) (n : A × B), P X (P Y n) = P Y (P X n) + P (X * Y - Y * X) n := by
    intro X Y n
    have h1 := congrArg (fun f => f n.1) (hA X Y)
    have h2 := congrArg (fun f => f n.2) (hB X Y)
    simp only [LinearMap.sub_apply, Module.End.mul_apply] at h1 h2
    refine Prod.ext ?_ ?_
    · simp only [hP, Prod.fst_add]
      rw [← h1]
      abel
    · simp only [hP, Prod.snd_add]
      rw [← h2]
      abel
  have hbr : ∀ a b c d : Ix p q, Eab a b * Eab c d - Eab c d * Eab a b =
      (if b = c then Eab a d else 0) - (if d = a then Eab c b else 0) := by
    intro a b c d
    simp only [Eab]
    split_ifs with h1 h2 h2
    · subst h1
      subst h2
      simp
    · subst h1
      rw [Matrix.single_mul_single_same, Matrix.single_mul_single_of_ne _ _ _ _ h2]
      simp
    · subst h2
      rw [Matrix.single_mul_single_of_ne _ _ _ _ h1, Matrix.single_mul_single_same]
      simp
    · rw [Matrix.single_mul_single_of_ne _ _ _ _ h1, Matrix.single_mul_single_of_ne _ _ _ _ h2]
  let Rs : Set (Submodule ℂ (A × B)) :=
    {M | (x, y) ∈ M ∧ ∀ (i : Fin p) (j : Fin q), ∀ n ∈ M, P (Eab (.inl i) (.inr j)) n ∈ M}
  let R := sInf Rs
  have hR_xy : (x, y) ∈ R := Submodule.mem_sInf.2 fun M hM => hM.1
  have hR_raise : ∀ (i : Fin p) (j : Fin q), ∀ n ∈ R, P (Eab (.inl i) (.inr j)) n ∈ R :=
    fun i j n hn => Submodule.mem_sInf.2 fun M hM => hM.2 i j n (Submodule.mem_sInf.1 hn M hM)
  have hR_ind : ∀ M : Submodule ℂ (A × B), (x, y) ∈ M →
      (∀ (i : Fin p) (j : Fin q), ∀ n ∈ M, P (Eab (.inl i) (.inr j)) n ∈ M) → R ≤ M :=
    fun M h1 h2 => sInf_le ⟨h1, h2⟩
  have hK : ∀ a b : Ix p q, sameBlock a b → ∀ n ∈ R, P (Eab a b) n ∈ R := by
    let T : Submodule ℂ (A × B) :=
      R ⊓ ⨅ a : Ix p q, ⨅ b : Ix p q, ⨅ (_ : sameBlock a b), R.comap (P (Eab a b))
    have hT : R ≤ T := by
      apply hR_ind
      · refine Submodule.mem_inf.2 ⟨hR_xy, ?_⟩
        simp only [Submodule.mem_iInf, Submodule.mem_comap]
        intro a b hab
        rw [hP]
        simp only [hxK a b hab, hyK a b hab]
        rw [← Prod.smul_mk]
        exact R.smul_mem _ hR_xy
      · intro i j n hn
        obtain ⟨hnR, hn2⟩ := Submodule.mem_inf.1 hn
        simp only [Submodule.mem_iInf, Submodule.mem_comap] at hn2
        refine Submodule.mem_inf.2 ⟨hR_raise i j n hnR, ?_⟩
        simp only [Submodule.mem_iInf, Submodule.mem_comap]
        intro a b hab
        rw [hLie, hbr]
        refine R.add_mem (hR_raise i j _ (hn2 a b hab)) ?_
        rw [map_sub, LinearMap.sub_apply]
        refine R.sub_mem ?_ ?_
        · split_ifs with h
          · subst h
            rcases a with a | a
            · exact hR_raise a j n hnR
            · simp [sameBlock] at hab
          · simp
        · split_ifs with h
          · subst h
            rcases b with b | b
            · simp [sameBlock] at hab
            · exact hR_raise i b n hnR
          · simp
    intro a b hab n hn
    have h := (Submodule.mem_inf.1 (hT hn)).2
    simp only [Submodule.mem_iInf, Submodule.mem_comap] at h
    exact h a b hab
  have hL : ∀ (i : Fin p) (j : Fin q), ∀ n ∈ R, P (Eab (.inr j) (.inl i)) n ∈ R := by
    let T : Submodule ℂ (A × B) :=
      R ⊓ ⨅ i : Fin p, ⨅ j : Fin q, R.comap (P (Eab (.inr j) (.inl i)))
    have hT : R ≤ T := by
      apply hR_ind
      · refine Submodule.mem_inf.2 ⟨hR_xy, ?_⟩
        simp only [Submodule.mem_iInf, Submodule.mem_comap]
        intro i j
        rw [hP, hxP, hyP, Prod.mk_zero_zero]
        exact R.zero_mem
      · intro i' j' n hn
        obtain ⟨hnR, hn2⟩ := Submodule.mem_inf.1 hn
        simp only [Submodule.mem_iInf, Submodule.mem_comap] at hn2
        refine Submodule.mem_inf.2 ⟨hR_raise i' j' n hnR, ?_⟩
        simp only [Submodule.mem_iInf, Submodule.mem_comap]
        intro i j
        rw [hLie, hbr]
        refine R.add_mem (hR_raise i' j' _ (hn2 i j)) ?_
        rw [map_sub, LinearMap.sub_apply]
        refine R.sub_mem ?_ ?_
        · split_ifs with h
          · exact hK _ _ (by simp [sameBlock]) n hnR
          · simp
        · split_ifs with h
          · exact hK _ _ (by simp [sameBlock]) n hnR
          · simp
    intro i j n hn
    have h := (Submodule.mem_inf.1 (hT hn)).2
    simp only [Submodule.mem_iInf, Submodule.mem_comap] at h
    exact h i j
  have hall : ∀ W, ∀ n ∈ R, P W n ∈ R := by
    intro W n hn
    rw [Matrix.matrix_eq_sum_single W]

    simp only [map_sum, LinearMap.sum_apply]
    refine R.sum_mem fun a _ => R.sum_mem fun b _ => ?_
    have hs : Matrix.single a b (W a b) = W a b • Eab a b := by
      simp [Eab, Matrix.smul_single]
    rw [hs, map_smul, LinearMap.smul_apply]
    refine R.smul_mem _ ?_
    rcases a with a | a <;> rcases b with b | b
    · exact hK _ _ (by simp [sameBlock]) n hn
    · exact hR_raise a b n hn
    · exact hL b a n hn
    · exact hK _ _ (by simp [sameBlock]) n hn
  let Q : Submodule ℂ (A × B) :=
    { carrier := {m | ⟪x, x⟫_ℂ * ⟪m.2, y⟫_ℂ = ⟪y, y⟫_ℂ * ⟪m.1, x⟫_ℂ}
      add_mem' := by
        intro m m' hm hm'
        simp only [Set.mem_setOf_eq, Prod.fst_add, Prod.snd_add, inner_add_left] at hm hm' ⊢
        linear_combination hm + hm'
      zero_mem' := by simp
      smul_mem' := by
        intro c m hm
        simp only [Set.mem_setOf_eq, Prod.smul_fst, Prod.smul_snd, inner_smul_left] at hm ⊢
        linear_combination (starRingEnd ℂ c) * hm }
  have hRQ : R ≤ Q := by
    apply hR_ind
    · show ⟪x, x⟫_ℂ * ⟪y, y⟫_ℂ = ⟪y, y⟫_ℂ * ⟪x, x⟫_ℂ
      ring
    · intro i j n _
      show ⟪x, x⟫_ℂ * ⟪(P _ n).2, y⟫_ℂ = ⟪y, y⟫_ℂ * ⟪(P _ n).1, x⟫_ℂ
      rw [hP]
      simp only
      rw [aB, hyP, aA, hxP, inner_zero_right, inner_zero_right]
      ring
  let S : Submodule ℂ (A × B) :=
    { carrier := {n | ∀ m ∈ R, ⟪x, x⟫_ℂ * ⟪m.2, n.2⟫_ℂ = ⟪y, y⟫_ℂ * ⟪m.1, n.1⟫_ℂ}
      add_mem' := by
        intro n n' hn hn' m hm
        simp only [Prod.fst_add, Prod.snd_add, inner_add_right]
        linear_combination hn m hm + hn' m hm
      zero_mem' := by
        intro m _
        simp
      smul_mem' := by
        intro c n hn m hm
        simp only [Prod.smul_fst, Prod.smul_snd, inner_smul_right]
        linear_combination c * hn m hm }
  have hRS : R ≤ S := by
    apply hR_ind
    · intro m hm
      exact hRQ hm
    · intro i j n hn m hm
      have key := hn (P (Eab (.inr j) (.inl i)) m) (hall _ m hm)
      rw [hP] at key
      simp only at key
      rw [aB, aA] at key
      have he : epsB (Sum.inr j : Ix p q) (Sum.inl i) = -1 := by
        simp [epsB, sameBlock]
      rw [he] at key
      show ⟪x, x⟫_ℂ * ⟪m.2, (P _ n).2⟫_ℂ = ⟪y, y⟫_ℂ * ⟪m.1, (P _ n).1⟫_ℂ
      rw [hP]
      linear_combination -key
  refine ⟨R, hR_xy, hall, ?_⟩
  intro v hv
  have h : ∀ m ∈ R, ⟪x, x⟫_ℂ * ⟪m.2, v⟫_ℂ = ⟪y, y⟫_ℂ * ⟪m.1, (0 : A)⟫_ℂ := hRS hv
  have h0 := h (0, v) hv
  simp only [inner_zero_right, mul_zero] at h0
  have hxx : ⟪x, x⟫_ℂ ≠ 0 := inner_self_ne_zero.2 hx0
  have hvv : ⟪v, v⟫_ℂ = 0 := (mul_eq_zero.1 h0).resolve_left hxx
  exact inner_self_eq_zero.1 hvv

theorem graph_map {p q : ℕ} {A : Type} [NormedAddCommGroup A] [InnerProductSpace ℂ A] {B : Type} [NormedAddCommGroup B] [InnerProductSpace ℂ B]
    (ρA : Mat p q →ₗ[ℂ] Module.End ℂ A) (ρB : Mat p q →ₗ[ℂ] Module.End ℂ B)
    (hA : IsLie ρA) (hB : IsLie ρB) (aA : AdjG ρA) (aB : AdjG ρB) (lam : Ix p q → ℂ) (x : A) (y : B)
    (hx0 : x ≠ 0)
    (hxK : ∀ a b, sameBlock a b → ρA (Eab a b) x = (if a = b then lam a else 0) • x)
    (hyK : ∀ a b, sameBlock a b → ρB (Eab a b) y = (if a = b then lam a else 0) • y)
    (hxP : ∀ i j, ρA (Eab (.inr j) (.inl i)) x = 0) (hyP : ∀ i j, ρB (Eab (.inr j) (.inl i)) y = 0)
    (hproj : genG ρA (Submodule.span ℂ {x}) ⊔ (genG ρA (Submodule.span ℂ {x}))ᗮ = ⊤) :
    ∃ Φ : A →ₗ[ℂ] B, (∀ Z u, Φ (ρA Z u) = ρB Z (Φ u)) ∧ Φ x = y := by
  classical
  obtain ⟨N, hxyN, hNinv, hN0⟩ := graph_sub ρA ρB hA hB aA aB lam x y hx0 hxK hyK hxP hyP
  have hg : ∀ (z : A × B), z ∈ N → z.1 = 0 → z.2 = 0 := by
    rintro ⟨a, b⟩ hz h0
    simp only at h0 ⊢
    subst h0
    exact hN0 b hz
  have huniq : ∀ (u : A) (b b' : B), (u, b) ∈ N → (u, b') ∈ N → b = b' := by
    intro u b b' h h'
    have hd : ((0 : A), b - b') ∈ N := by
      have h2 := N.sub_mem h h'
      simpa using h2
    exact sub_eq_zero.1 (hN0 _ hd)
  have hGinv : ∀ W, ∀ u ∈ genG ρA (Submodule.span ℂ {x}), ρA W u ∈ genG ρA (Submodule.span ℂ {x}) := by
    intro W u hu
    exact Submodule.mem_sInf.2 fun M hM => hM.2 W u (Submodule.mem_sInf.1 hu M hM)
  have hxG : x ∈ genG ρA (Submodule.span ℂ {x}) :=
    Submodule.mem_sInf.2 fun M hM => hM.1 (Submodule.mem_span_singleton_self x)
  have hGdom : genG ρA (Submodule.span ℂ {x}) ≤ N.map (LinearMap.fst ℂ A B) := by
    refine sInf_le (show N.map (LinearMap.fst ℂ A B) ∈ {M : Submodule ℂ A | Submodule.span ℂ {x} ≤ M ∧ ∀ W, ∀ u ∈ M, ρA W u ∈ M} from ⟨?_, ?_⟩)
    · rw [Submodule.span_le, Set.singleton_subset_iff]
      exact ⟨(x, y), hxyN, rfl⟩
    · rintro W u ⟨n, hn, rfl⟩
      refine ⟨prodAct ρA ρB W n, hNinv W n hn, ?_⟩
      simp [prodAct_apply]
  set G := genG ρA (Submodule.span ℂ {x}) with hGdef
  have hcompl : IsCompl G Gᗮ := ⟨Submodule.orthogonal_disjoint G, codisjoint_iff.2 hproj⟩
  let Φ : A →ₗ[ℂ] B := N.toLinearPMap.toFun ∘ₗ Submodule.inclusion hGdom ∘ₗ Submodule.linearProjOfIsCompl G Gᗮ hcompl
  have hΦG : ∀ u (hu : u ∈ G), (u, Φ u) ∈ N := by
    intro u hu
    have h := Submodule.mem_graph_toLinearPMap hg (Submodule.inclusion hGdom ⟨u, hu⟩)
    have hp : Submodule.linearProjOfIsCompl G Gᗮ hcompl u = ⟨u, hu⟩ :=
      Submodule.linearProjOfIsCompl_apply_left hcompl ⟨u, hu⟩
    simp only [Φ, LinearMap.comp_apply, hp]
    exact h
  have hΦO : ∀ u ∈ Gᗮ, Φ u = 0 := by
    intro u hu
    have hp : Submodule.linearProjOfIsCompl G Gᗮ hcompl u = 0 :=
      Submodule.linearProjOfIsCompl_apply_right hcompl ⟨u, hu⟩
    simp only [Φ, LinearMap.comp_apply, hp, map_zero]
  have hOinv := graph_orth_stable ρA aA G hGinv
  refine ⟨Φ, ?_, ?_⟩
  · intro Z u
    have hu : u ∈ G ⊔ Gᗮ := by
      rw [hproj]
      trivial
    obtain ⟨g, hgG, g', hgO, rfl⟩ := Submodule.mem_sup.1 hu
    rw [map_add (f := _), map_add (f := _), map_add (f := _), hΦO g' hgO, hΦO _ (hOinv Z g' hgO), add_zero, add_zero]
    refine huniq (ρA Z g) _ _ (hΦG _ (hGinv Z g hgG)) ?_
    have h3 := hNinv Z _ (hΦG g hgG)
    rwa [prodAct_apply] at h3
  · exact huniq x _ _ (hΦG x hxG) hxyN

end PositivityTheory.KReal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreGraph =====

-- ===== clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreProj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreProj", "h": "module\n\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDefs\npublic import Mathlib.Analysis.InnerProductSpace.Orthogonal\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreCyc\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FockRaiseLow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.FockOperatorsKernel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.SameBlockOfPosC\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockHarmonicSplitting.ConjTransposeOneKronecker\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.MvPolynomial.EulerIdentity\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ThetaSummability.Real ReciprocityTheory.ChartRestriction.G.ThK.Real FockH1Action MvPolynomial Matrix
open scoped InnerProductSpace

namespace PositivityTheory.KReal

theorem graded_orth {σ : Type} [Fintype σ] (L : Submodule ℂ (MvPolynomial σ ℂ))
    (hL : ∀ d, ∀ z ∈ L, homogeneousComponent d z ∈ L) (u : MvPolynomial σ ℂ) :
    ∃ y ∈ L, ∀ z ∈ L, fockInner z (u - y) = 0 := by
  have key : ∀ d, ∀ u ∈ homog σ d, ∃ y ∈ L, ∀ z ∈ L, fockInner z (u - y) = 0 := by
    intro d u hu
    obtain ⟨y, hy, h⟩ := PI.FHS.exists_orth (L ⊓ homog σ d) d inf_le_right u
    refine ⟨y, hy.1, fun z hz => ?_⟩
    rw [← PI.FHS.fockInner_hc_left z (u - y) (Submodule.sub_mem _ hu hy.2)]
    exact h _ ⟨hL d z hz, homogeneousComponent_mem d z⟩
  choose! f hf using fun d => key d (homogeneousComponent d u) (homogeneousComponent_mem d u)
  refine ⟨∑ i ∈ Finset.range (u.totalDegree + 1), f i, Submodule.sum_mem _ fun i _ => (hf i).1, fun z hz => ?_⟩
  have e : u - ∑ i ∈ Finset.range (u.totalDegree + 1), f i =
      ∑ i ∈ Finset.range (u.totalDegree + 1), (homogeneousComponent i u - f i) := by
    rw [Finset.sum_sub_distrib, sum_homogeneousComponent]
  rw [e, PI.FHS.fockInner_sum_right]
  exact Finset.sum_eq_zero fun i _ => (hf i).2 z hz

theorem unit_homog {p q r : ℕ} (a b : Ix p q) (i : ℕ) (P : Pol p q r 0) (hP : P ∈ homog (Ix p q × Ix r 0) i) :
    ∃ e, fockAct1 p q r 0 (Eab a b) P ∈ homog (Ix p q × Ix r 0) e := by
  by_cases hab : sameBlock a b
  · exact ⟨i, (gradedOscillatorProperty p q r 0).1 _ (PI.FockOneDegW.isKC_Eab hab) i P hP⟩
  have hP' : P.IsHomogeneous i := hP
  rw [PI.FockOneDegW.fockAct1_Eab_apply]
  rcases a with a | a <;> rcases b with b | b
  · exact absurd trivial hab
  · refine ⟨1 + (1 + i), Submodule.sum_mem _ fun c _ => ?_⟩
    rcases c with c | c
    · rw [PI.FHS.omE_apply_of_ne (by simp)]
      simp only [raiB, lowB, linePos, if_true, Bool.false_eq_true, if_false, LinearMap.mulLeft_apply]
      exact (isHomogeneous_X ℂ _).mul ((isHomogeneous_X ℂ _).mul hP')
    · exact c.elim0
  · refine ⟨i - 1 - 1, Submodule.sum_mem _ fun c _ => ?_⟩
    rcases c with c | c
    · rw [PI.FHS.omE_apply_of_ne (by simp)]
      simp only [raiB, lowB, linePos, if_true, Bool.false_eq_true, if_false, LinearMap.neg_apply]
      exact Submodule.neg_mem _ (hP'.pderiv.pderiv)
    · exact c.elim0
  · exact absurd trivial hab

theorem gen_graded {p q r : ℕ} (x : Pol p q r 0) (dx : ℕ) (hx : x ∈ homog (Ix p q × Ix r 0) dx) :
    ∀ d, ∀ z ∈ genG (fockAct1 p q r 0) (Submodule.span ℂ {x}),
      homogeneousComponent d z ∈ genG (fockAct1 p q r 0) (Submodule.span ℂ {x}) := by
  set L := genG (fockAct1 p q r 0) (Submodule.span ℂ {x}) with hLdef
  have hxL : x ∈ L := by
    rw [hLdef, genG, Submodule.mem_sInf]
    exact fun N hN => hN.1 (Submodule.mem_span_singleton_self x)
  have hst : ∀ W, ∀ z ∈ L, fockAct1 p q r 0 W z ∈ L := by
    intro W z hz
    rw [hLdef, genG, Submodule.mem_sInf] at hz ⊢
    exact fun N hN => hN.2 W z (hz N hN)
  have hhom : ∀ e d, ∀ w ∈ homog (Ix p q × Ix r 0) e, w ∈ L → homogeneousComponent d w ∈ L := by
    intro e d w hw hwL
    rw [homogeneousComponent_of_mem hw]
    split_ifs
    · exact hwL
    · exact L.zero_mem
  let L' : Submodule ℂ (Pol p q r 0) := ⨅ d, L.comap (homogeneousComponent d)
  have mem' : ∀ z, z ∈ L' ↔ ∀ d, homogeneousComponent d z ∈ L := fun z => by
    simp only [L', Submodule.mem_iInf, Submodule.mem_comap]
  have hle : L ≤ L' := by
    rw [hLdef, genG]
    refine sInf_le ⟨?_, ?_⟩
    · rw [Submodule.span_singleton_le_iff_mem, mem']
      exact fun d => hhom dx d x hx hxL
    · intro W z hz
      rw [act_eq_sum]
      simp only [LinearMap.sum_apply, LinearMap.smul_apply]
      refine Submodule.sum_mem _ fun a _ => Submodule.sum_mem _ fun b _ => Submodule.smul_mem _ _ ?_

      rw [← sum_homogeneousComponent z, map_sum]
      refine Submodule.sum_mem _ fun i _ => ?_
      obtain ⟨e, he⟩ := unit_homog a b i _ (homogeneousComponent_mem i z)
      rw [mem']
      exact fun d => hhom e d _ he (hst _ _ ((mem' z).1 hz i))
  exact fun d z hz => (mem' z).1 (hle hz) d

theorem proj_gen {p q r : ℕ} (x : FV p q r 0) (dx : ℕ) (hx : (x : Pol p q r 0) ∈ homog (Ix p q × Ix r 0) dx) :
    genG (fvAct1 p q r 0) (Submodule.span ℂ {x}) ⊔ (genG (fvAct1 p q r 0) (Submodule.span ℂ {x}))ᗮ = ⊤ := by
  rw [eq_top_iff]
  intro u _
  obtain ⟨y, hy, h⟩ := graded_orth (σ := Ix p q × Ix r 0) _ (gen_graded (p := p) (q := q) (r := r) x dx hx) u
  let y' : FV p q r 0 := y
  have h1 : y' ∈ genG (fvAct1 p q r 0) (Submodule.span ℂ {x}) := hy
  have h2 : u - y' ∈ (genG (fvAct1 p q r 0) (Submodule.span ℂ {x}))ᗮ := by
    rw [Submodule.mem_orthogonal]
    intro z hz
    exact h z hz
  have := Submodule.add_mem_sup h1 h2
  rwa [add_sub_cancel] at this

end PositivityTheory.KReal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreProj =====

-- ===== clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreNonv =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreNonv", "h": "module\n\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDefs\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreDelta\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreGraph\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreLie\npublic import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreProj\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockHarmonicSplitting.ConjTransposeOneKronecker\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ThetaSummability.Real ReciprocityTheory.ChartRestriction.G.ThK.Real FockH1Action MvPolynomial Matrix
open scoped InnerProductSpace

namespace PositivityTheory.KReal

section Dual

variable {p q : ℕ}

theorem epsB_mul (a c b : Ix p q) : epsB a c * epsB c b = epsB a b := by
  rcases a with a | a <;> rcases c with c | c <;> rcases b with b | b <;> simp [epsB, sameBlock]

theorem epsB_symm (a b : Ix p q) : epsB a b = epsB b a := by
  rcases a with a | a <;> rcases b with b | b <;> simp [epsB, sameBlock]

theorem epsB_self (a : Ix p q) : epsB a a = 1 := by
  rcases a with a | a <;> simp [epsB, sameBlock]

theorem epsB_conj (a b : Ix p q) : (starRingEnd ℂ) (epsB a b) = epsB a b := by
  unfold epsB
  split_ifs <;> simp

def thetaM (p q : ℕ) : Mat p q →ₗ[ℂ] Mat p q where
  toFun Z := Matrix.of fun a b => epsB a b * Z b a
  map_add' Z W := by
    ext a b
    simp [mul_add]
  map_smul' t Z := by
    ext a b
    simp [mul_left_comm]

theorem thetaM_mul (Z W : Mat p q) : thetaM p q (Z * W) = thetaM p q W * thetaM p q Z := by
  ext a b
  simp only [thetaM, LinearMap.coe_mk, AddHom.coe_mk, Matrix.of_apply, Matrix.mul_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [← epsB_mul a c b]
  ring

theorem thetaM_Eab (a b : Ix p q) : thetaM p q (Eab a b) = epsB a b • Eab b a := by
  ext i j
  simp only [thetaM, LinearMap.coe_mk, AddHom.coe_mk, Matrix.of_apply, Eab, Matrix.single_apply, Matrix.smul_apply, smul_eq_mul]
  by_cases h1 : a = j <;> by_cases h2 : b = i
  · subst h1 h2
    simp [epsB_symm a b]
  all_goals simp [h1, h2]

theorem trace_Eab (a b : Ix p q) : (Eab a b).trace = if a = b then 1 else 0 := by
  simp [Eab, Matrix.trace, Matrix.single_apply, Matrix.diag]
  split_ifs with h
  · subst h
    simp [Finset.filter_eq]
  · rw [Nat.cast_eq_zero, Finset.card_eq_zero, Finset.filter_eq_empty_iff]
    rintro x - ⟨h1, h2⟩
    exact h (h1.trans h2.symm)

def dualAct {B : Type} [AddCommGroup B] [Module ℂ B] (ρ : Mat p q →ₗ[ℂ] Module.End ℂ B) (c : ℂ) :
    Mat p q →ₗ[ℂ] Module.End ℂ B :=
  (c • Matrix.traceLinearMap (Ix p q) ℂ ℂ).smulRight 1 - ρ ∘ₗ thetaM p q

theorem dualAct_eq {B : Type} [AddCommGroup B] [Module ℂ B] (ρ : Mat p q →ₗ[ℂ] Module.End ℂ B) (c : ℂ)
    (Z : Mat p q) : dualAct ρ c Z = (c * Z.trace) • (1 : Module.End ℂ B) - ρ (thetaM p q Z) := by
  simp [dualAct]

theorem dualAct_Eab {B : Type} [AddCommGroup B] [Module ℂ B] (ρ : Mat p q →ₗ[ℂ] Module.End ℂ B) (c : ℂ)
    (a b : Ix p q) (v : B) :
    dualAct ρ c (Eab a b) v = (if a = b then c else 0) • v - epsB a b • ρ (Eab b a) v := by
  rw [dualAct_eq, trace_Eab, thetaM_Eab]
  split_ifs <;> simp

theorem dualAct_lie {B : Type} [AddCommGroup B] [Module ℂ B] {ρ : Mat p q →ₗ[ℂ] Module.End ℂ B}
    (h : IsLie ρ) (c : ℂ) : IsLie (dualAct ρ c) := by
  intro X Y
  rw [dualAct_eq, dualAct_eq, dualAct_eq, map_sub, thetaM_mul, thetaM_mul, Matrix.trace_sub, Matrix.trace_mul_comm X Y, sub_self, mul_zero, zero_smul, zero_sub, map_sub, neg_sub, ← map_sub, ← h (thetaM p q X) (thetaM p q Y)]
  simp only [sub_mul, mul_sub, smul_mul_assoc, mul_smul_comm, one_mul, mul_one, smul_smul, smul_sub]
  rw [mul_comm (c * Y.trace) (c * X.trace)]
  abel

theorem dualAct_adj {B : Type} [NormedAddCommGroup B] [InnerProductSpace ℂ B]
    {ρ : Mat p q →ₗ[ℂ] Module.End ℂ B} (h : AdjG ρ) (c0 : ℚ) : AdjG (dualAct ρ (c0 : ℂ)) := by
  intro a b u v
  rw [dualAct_Eab, dualAct_Eab, inner_sub_left, inner_sub_right, inner_smul_left, inner_smul_left, inner_smul_right, inner_smul_right, h, epsB_conj, mul_sub, ← mul_assoc, ← mul_assoc, epsB_mul, epsB_self, one_mul]
  by_cases hab : a = b
  · subst hab
    simp [epsB_self]
  · simp [hab, Ne.symm hab]

end Dual

section Conj

variable {p q r s : ℕ}

def cjP (P : Pol p q r s) : Pol p q r s := MvPolynomial.map (starRingEnd ℂ) P

theorem cjP_add (P Q : Pol p q r s) : cjP (P + Q) = cjP P + cjP Q := map_add _ _ _

theorem cjP_sub (P Q : Pol p q r s) : cjP (P - Q) = cjP P - cjP Q := map_sub _ _ _

theorem cjP_smul (t : ℂ) (P : Pol p q r s) : cjP (t • P) = (starRingEnd ℂ) t • cjP P := by
  simp [cjP, MvPolynomial.smul_eq_C_mul]

theorem cjP_lowB (l : Ln p q r s) (P : Pol p q r s) : cjP (lowB l P) = lowB l (cjP P) := by
  unfold lowB
  split_ifs <;> simp [cjP, MvPolynomial.pderiv_map]

theorem cjP_raiB (l : Ln p q r s) (P : Pol p q r s) : cjP (raiB l P) = raiB l (cjP P) := by
  unfold raiB
  split_ifs <;> simp [cjP, MvPolynomial.pderiv_map]

theorem cjP_omE (l l' : Ln p q r s) (P : Pol p q r s) : cjP (omE l l' P) = omE l l' (cjP P) := by
  unfold omE
  simp only [LinearMap.add_apply, Module.End.mul_apply, cjP_add, cjP_raiB, cjP_lowB]
  split_ifs
  · simp only [LinearMap.smul_apply, cjP_smul, Module.End.one_apply]
    congr 2
    rw [map_div₀, map_one, Complex.conj_ofNat]
  · simp [cjP]

theorem conj_first_action_comm (a b : Ix p q) (P : Pol p q r s) :
    cjP (fockAct1 p q r s (Eab a b) P) = fockAct1 p q r s (Eab a b) (cjP P) := by
  rw [PI.FHS.fockAct1_eq, PI.FHS.omAct_apply, PI.FHS.omAct_apply]
  show MvPolynomial.map _ _ = _

  rw [map_sum]
  refine Finset.sum_congr rfl fun l _ => ?_

  rw [map_sum]
  refine Finset.sum_congr rfl fun l' _ => ?_
  change cjP _ = _
  rw [cjP_smul, cjP_omE]
  congr 1
  simp only [Matrix.kroneckerMap_apply, Eab, Matrix.single_apply, Matrix.one_apply, map_mul]
  split_ifs <;> simp

theorem fockInner_sub_left' (P P' Q : Pol p q r s) :
    fockInner (P - P') Q = fockInner P Q - fockInner P' Q := by
  rw [sub_eq_add_neg, PI.FHS.fockInner_add_left, PI.FHS.fockInner_neg_left, sub_eq_add_neg]

end Conj

private theorem fockInner_cjP_fockAct1_thetaM_adjoint {p q r s : ℕ} (Z : Mat p q) (w v : Pol p q r s) :
    fockInner (cjP (fockAct1 p q r s (thetaM p q Z) w)) v = fockInner (cjP w) (fockAct1 p q r s Z v) := by
  induction Z using Matrix.induction_on' with
  | h_zero =>
    simp [cjP, PI.FHS.fockInner_zero_left, PI.FHS.fockInner_zero_right]
  | h_add A B hA hB =>
    rw [map_add (f := _), map_add (f := _), LinearMap.add_apply, cjP_add, PI.FHS.fockInner_add_left, hA, hB, map_add (f := _),
      LinearMap.add_apply, PI.FHS.fockInner_add_right]
  | h_std_basis i j t =>
    have hE : Matrix.single i j t = t • Eab i j := by
      simp [Eab, Matrix.smul_single]
    simp only [hE, map_smul, LinearMap.smul_apply, cjP_smul, PI.FHS.fockInner_smul_left,
      PI.FHS.fockInner_smul_right, Complex.conj_conj, thetaM_Eab, conj_first_action_comm, epsB_conj, fock_inner_adjoint_first]
    rw [← mul_assoc (epsB i j), epsB_mul, epsB_self, one_mul]

theorem nontrivial_of_pair {p q r s : ℕ} (c : ℂ) (c0 : ℚ) (hc : c = c0) (h : PairData p q r s c) :
    Nontrivial (ThC p q r s c) := by
  obtain ⟨lam, x, y, dx, hx0, hy0, hxh, hxw, hxl, hyw, hyl⟩ := h
  subst hc
  have hsb : ∀ a : Ix p q, sameBlock a a := by
    intro a
    rcases a with a | a <;> simp [sameBlock]
  have hsym : ∀ a b : Ix p q, sameBlock a b → sameBlock b a := by
    intro a b
    rcases a with a | a <;> rcases b with b | b <;> simp [sameBlock]
  have hlam : ∀ a, (starRingEnd ℂ) (lam a) = lam a := by
    intro a
    have h1 := fock_inner_adjoint_first a a x x
    rw [hxw a a (hsb a), if_pos rfl, epsB_self, one_mul, PI.FHS.fockInner_smul_left,
      PI.FHS.fockInner_smul_right] at h1
    have hne : fockInner x x ≠ 0 := fun h0 => hx0 (PI.FHS.fockInner_self_eq_zero h0)
    exact mul_right_cancel₀ hne h1
  set ρB := dualAct (fvAct1 p q 0 s) (c0 : ℂ) with hρB
  have hyw' : ∀ a b, sameBlock a b →
      ρB (Eab a b) (cjP y : FV p q 0 s) = (if a = b then lam a else 0) • (cjP y : FV p q 0 s) := by
    intro a b hab
    rw [hρB]
    refine (dualAct_Eab (fvAct1 p q 0 s) (c0 : ℂ) a b (cjP y)).trans ?_
    change (if a = b then (c0 : ℂ) else 0) • cjP y - epsB a b • fockAct1 p q 0 s (Eab b a) (cjP y) =
      (if a = b then lam a else 0) • cjP y
    rw [← conj_first_action_comm, hyw b a (hsym a b hab)]
    by_cases hab' : a = b
    · subst hab'
      rw [if_pos rfl, if_pos rfl, if_pos rfl, cjP_smul, epsB_self, one_smul, map_sub, hlam, map_ratCast,
        sub_smul]
      abel
    · rw [if_neg hab', if_neg hab', if_neg (Ne.symm hab'), zero_smul, zero_smul]
      simp [cjP]
  have hyl' : ∀ (i : Fin p) (j : Fin q), ρB (Eab (Sum.inr j) (Sum.inl i)) (cjP y : FV p q 0 s) = 0 := by
    intro i j
    rw [hρB]
    refine (dualAct_Eab (fvAct1 p q 0 s) (c0 : ℂ) _ _ (cjP y)).trans ?_
    change (if (Sum.inr j : Ix p q) = Sum.inl i then (c0 : ℂ) else 0) • cjP y -
      epsB (Sum.inr j) (Sum.inl i) • fockAct1 p q 0 s (Eab (Sum.inl i) (Sum.inr j)) (cjP y) = 0
    rw [← conj_first_action_comm, hyl i j, if_neg (by simp)]
    simp [cjP]
  obtain ⟨Φ, hΦ, hΦx⟩ := graph_map (fvAct1 p q r 0) ρB (lie1 p q r 0) (dualAct_lie (lie1 p q 0 s) _)
    (adj1 p q r 0) (dualAct_adj (adj1 p q 0 s) c0) lam x (cjP y) hx0 hxw hyw' hxl hyl' (proj_gen x dx hxh)
  obtain ⟨Ψ, hΨ1, hΨ2⟩ : ∃ Ψ : Pol p q r 0 →ₗ[ℂ] Pol p q 0 s,
      (∀ Z u, Ψ (fockAct1 p q r 0 Z u) = ((c0 : ℂ) * Z.trace) • Ψ u - fockAct1 p q 0 s (thetaM p q Z) (Ψ u)) ∧
      Ψ x = cjP y := by
    refine ⟨Φ, fun Z u => ?_, hΦx⟩
    have h1 := hΦ Z u
    rw [hρB, dualAct_eq, LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply] at h1
    exact h1
  let b : Pol p q r 0 →ₗ[ℂ] Pol p q 0 s →ₗ[ℂ] ℂ :=
    LinearMap.mk₂ ℂ (fun u v => fockInner (cjP (Ψ u)) v)
      (by
        intro u u' v
        rw [map_add (f := _), cjP_add, PI.FHS.fockInner_add_left])
      (by
        intro t u v
        rw [map_smul, cjP_smul, PI.FHS.fockInner_smul_left, Complex.conj_conj]
        rfl)
      (by
        intro u v v'
        exact PI.FHS.fockInner_add_right _ _ _)
      (by
        intro t u v
        rw [PI.FHS.fockInner_smul_right]
        rfl)
  refine nontrivial_of_form (c0 : ℂ) b ?_ x y ?_
  · intro Z u v
    change fockInner (cjP (Ψ (fockAct1 p q r 0 Z u))) v + fockInner (cjP (Ψ u)) (fockAct1 p q 0 s Z v) =
      (c0 : ℂ) * Z.trace * fockInner (cjP (Ψ u)) v
    rw [hΨ1, cjP_sub, cjP_smul, fockInner_sub_left', PI.FHS.fockInner_smul_left, Complex.conj_conj,
      fockInner_cjP_fockAct1_thetaM_adjoint]
    ring
  · change fockInner (cjP (Ψ x)) y ≠ 0
    rw [hΨ2]
    intro h0
    apply hy0
    apply PI.FHS.fockInner_self_eq_zero
    simpa [cjP, MvPolynomial.map_map, MvPolynomial.map_id] using h0

end PositivityTheory.KReal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.CoreNonv =====
