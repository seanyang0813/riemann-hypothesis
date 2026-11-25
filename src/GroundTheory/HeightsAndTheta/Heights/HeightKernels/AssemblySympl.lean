module

public import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar
public import Mathlib.Algebra.Module.ZLattice.Basic
public import Mathlib.MeasureTheory.Group.GeometryOfNumbers
public import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Data.Pi.Interval
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplBoxVolume, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplCons, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetBound, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetSchur, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtMem, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtVecMul, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplFirstRow, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGcd, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGramMem, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinBound, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinExists, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinkowskiBox, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOmegaMem, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOrbit, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplQuadDiag, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceConj, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceMem, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReducePosDef, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceStep, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplShortPrim, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplStep, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTop, GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTwoRow, GroundTheory.HeightsAndTheta.Heights.HeightKernels.AssemblySympl

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplBoxVolume =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplBoxVolume", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.Basic\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplBoxVolume

theorem set_eq_preimage {ι : Type} [Fintype ι] [DecidableEq ι] (A : Matrix ι ι ℝ) (a : ι → ℝ) :
    {x : ι → ℝ | ∀ i, |(A *ᵥ x) i| < a i} =
      (Matrix.toLin' A) ⁻¹' (Set.pi Set.univ fun i => Set.Ioo (-a i) (a i)) := by
  ext x
  simp [abs_lt]

end PSymplBoxVolume


open PSymplBoxVolume in
theorem SymplBoxVolume.proof : SymplBoxVolume.Statement := by
  intro ι _ _ A a hA ha
  rw [set_eq_preimage, MeasureTheory.Measure.addHaar_preimage_linearMap _ (by rwa [LinearMap.det_toLin'])
    , Real.volume_pi_Ioo, LinearMap.det_toLin',
    ← ENNReal.ofReal_prod_of_nonneg (fun i _ => by linarith [ha i]),
    ← ENNReal.ofReal_mul (abs_nonneg _), abs_inv, div_eq_mul_inv, mul_comm]
  congr 2
  refine Finset.prod_congr rfl fun i _ => ?_
  ring

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplBoxVolume =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplCons =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplCons", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplCons

theorem J_mulVec_inl {R : Type*} [CommRing R] {l : Type*} [Fintype l] [DecidableEq l]
    (v : l ⊕ l → R) (i : l) : (J l R *ᵥ v) (Sum.inl i) = -v (Sum.inr i) := by
  simp [Matrix.J, fromBlocks_mulVec, neg_mulVec]

theorem J_mulVec_inr {R : Type*} [CommRing R] {l : Type*} [Fintype l] [DecidableEq l]
    (v : l ⊕ l → R) (i : l) : (J l R *ᵥ v) (Sum.inr i) = v (Sum.inl i) := by
  simp [Matrix.J, fromBlocks_mulVec]

theorem symplOmega_eq_sum {R : Type*} [CommRing R] {l : Type*} [Fintype l] [DecidableEq l]
    (u v : l ⊕ l → R) :
    symplOmega u v = ∑ i, (u (Sum.inr i) * v (Sum.inl i) - u (Sum.inl i) * v (Sum.inr i)) := by
  unfold symplOmega dotProduct
  rw [Fintype.sum_sum_type]
  simp only [J_mulVec_inl, J_mulVec_inr, mul_neg, Finset.sum_neg_distrib]
  rw [Finset.sum_sub_distrib]
  ring

end PSymplCons


open PSymplCons in
theorem SymplCons.proof : SymplCons.Statement := by
  intro R _ n
  refine ⟨fun u => ?_, fun p q p' q' w w' => ?_⟩
  · funext x
    rcases x with i | i <;> refine Fin.cases ?_ (fun j => ?_) i <;> simp [symplCons, symplTail]
  · rw [symplOmega_eq_sum, symplOmega_eq_sum, Fin.sum_univ_succ]
    simp [symplCons]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplCons =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetBound =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplDetBound

theorem step_bound (n : ℕ) (ρ : ℝ) (hle : ρ ≤ 2 * ((n : ℝ) + 1)) :
    ρ * (2 * (n : ℝ)) ^ n ≤ (2 * ((n + 1 : ℕ) : ℝ)) ^ (n + 1) := by
  have h0 : (0 : ℝ) ≤ (2 * (n : ℝ)) ^ n := by positivity
  calc ρ * (2 * (n : ℝ)) ^ n ≤ (2 * ((n : ℝ) + 1)) * (2 * (n : ℝ)) ^ n :=
        mul_le_mul_of_nonneg_right hle h0
    _ ≤ (2 * ((n : ℝ) + 1)) * (2 * ((n : ℝ) + 1)) ^ n := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        apply pow_le_pow_left₀ (by positivity)
        linarith
    _ = (2 * ((n + 1 : ℕ) : ℝ)) ^ (n + 1) := by
        push_cast; ring

end PSymplDetBound

theorem SymplDetBound.proof (h1 : SymplStep.Statement) : SymplDetBound.Statement := by
  intro n
  induction n with
  | zero =>
    intro G _ _
    refine ⟨1, Submonoid.one_mem _, ?_⟩
    rw [Matrix.det_isEmpty]
    simp
  | succ n ih =>
    intro G hG hpos
    obtain ⟨ρsq, _, _, hle, P, hP, _, hdet⟩ :=
      h1 n ((2 * (n : ℝ)) ^ n) G hG hpos (fun H hH hHpos => ih H hH hHpos)
    exact ⟨P, hP, hdet.trans (PSymplDetBound.step_bound n ρsq hle)⟩

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetBound =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetSchur =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetSchur", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplDetSchur

noncomputable def clearCol {n : ℕ} (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) :
    Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ :=
  Matrix.of fun i j => if i = j then 1 else if j = 0 then -A i 0 / A 0 0 else 0

theorem det_clearCol {n : ℕ} (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) :
    (clearCol A).det = 1 := by
  rw [Matrix.det_of_isLowerTriangular _ ?_]
  · simp [clearCol]
  · intro i j hij
    have hij' : i < j := OrderDual.toDual_lt_toDual.mp hij
    have hne : i ≠ j := ne_of_lt hij'
    have hj : j ≠ 0 := by
      rintro rfl
      simp at hij'
    simp [clearCol, hne, hj]

theorem clearCol_mul_zero {n : ℕ} (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) (j : Fin (n + 1)) :
    (clearCol A * A) 0 j = A 0 j := by
  rw [Matrix.mul_apply, Fin.sum_univ_succ]
  simp [clearCol, (Fin.succ_ne_zero _).symm, Fin.succ_ne_zero]

theorem clearCol_mul_succ {n : ℕ} (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) (i : Fin n)
    (j : Fin (n + 1)) :
    (clearCol A * A) i.succ j = A i.succ j - A i.succ 0 / A 0 0 * A 0 j := by
  rw [Matrix.mul_apply, Fin.sum_univ_succ]
  simp [clearCol, Fin.succ_ne_zero, Fin.succ_inj]
  ring

end PSymplDetSchur


open PSymplDetSchur in
theorem SymplDetSchur.proof : SymplDetSchur.Statement := by
  intro n A ha
  have hdet : A.det = (clearCol A * A).det := by
    rw [Matrix.det_mul, det_clearCol, one_mul]
  rw [hdet, Matrix.det_succ_column_zero, Fin.sum_univ_succ]
  have hcol : ∀ i : Fin n, (clearCol A * A) i.succ 0 = 0 := by
    intro i
    rw [clearCol_mul_succ]
    field_simp
    ring
  simp only [hcol, mul_zero, zero_mul, Finset.sum_const_zero, add_zero, Fin.val_zero, pow_zero,
    one_mul, Fin.succAbove_zero, clearCol_mul_zero]
  congr 1
  congr 1
  ext i j
  simp only [Matrix.submatrix_apply, Matrix.of_apply, clearCol_mul_succ]
  ring

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetSchur =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtMem =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtMem", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplExtMem

lemma omega_zero_left {R : Type*} [CommRing R] {l : Type*} [Fintype l] [DecidableEq l]
    (w : l ⊕ l → R) : symplOmega (0 : l ⊕ l → R) w = 0 := by
  simp [symplOmega]

lemma omega_zero_right {R : Type*} [CommRing R] {l : Type*} [Fintype l] [DecidableEq l]
    (w : l ⊕ l → R) : symplOmega w (0 : l ⊕ l → R) = 0 := by
  simp [symplOmega]

variable {R : Type*} [Zero R] {n : ℕ} (α β γ δ : R) (Q : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) R)

lemma row_e : symplExt α β γ δ Q (Sum.inl 0) = symplCons α β 0 := rfl

lemma row_f : symplExt α β γ δ Q (Sum.inr 0) = symplCons γ δ 0 := rfl

lemma row_inl (i : Fin n) :
    symplExt α β γ δ Q (Sum.inl i.succ) = symplCons 0 0 (Q (Sum.inl i)) := rfl

lemma row_inr (i : Fin n) :
    symplExt α β γ δ Q (Sum.inr i.succ) = symplCons 0 0 (Q (Sum.inr i)) := rfl

end PSymplExtMem


open PSymplExtMem in
theorem SymplExtMem.proof (h1 : SymplOmegaMem.Statement) (h2 : SymplCons.Statement) :
    SymplExtMem.Statement := by
  intro R _ n α β γ δ Q hdet hQ
  rw [h1 R (Fin (n + 1))]
  have hQ' := (h1 R (Fin n) Q).1 hQ
  have hc := (h2 R n).2
  rintro (x | x) (y | y) <;> cases x using Fin.cases <;> cases y using Fin.cases <;>
    simp only [row_e, row_f, row_inl, row_inr, hc, hQ', omega_zero_left, omega_zero_right] <;>
    simp [Matrix.J, Matrix.one_apply, Fin.succ_ne_zero, Fin.succ_inj] <;>
    first
      | ring1
      | linear_combination hdet
      | linear_combination (-1 : R) * hdet
      | exact fun h => absurd (Eq.symm h) (Fin.succ_ne_zero _)

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtMem =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtVecMul =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtVecMul", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

theorem SymplExtVecMul.proof : SymplExtVecMul.Statement := by
  intro R _ n α β γ δ p q Q w
  funext y
  rcases y with y | y <;> refine Fin.cases ?_ (fun j => ?_) y <;>
    simp [vecMul, dotProduct, symplCons, symplExt, Fintype.sum_sum_type, Fin.sum_univ_succ]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtVecMul =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplFirstRow =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplFirstRow", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplFirstRow

theorem intVec_ne_zero {ι : Type*} {v : ι → ℤ} (hv : v ≠ 0) : intVec v ≠ 0 := by
  intro h
  apply hv
  funext i
  have := congrFun h i
  simpa [intVec] using this

end PSymplFirstRow

theorem SymplFirstRow.proof (h1 : SymplMinExists.Statement) (h2 : SymplMinBound.Statement)
    (h3 : SymplOrbit.Statement) (h4 : SymplShortPrim.Statement) (h5 : SymplGramMem.Statement) :
    SymplFirstRow.Statement := by
  intro n G hG hpd
  obtain ⟨ρsq, hleast⟩ := h1 (Fin (n + 1) ⊕ Fin (n + 1)) G hpd
  have hdet : G.det = 1 := SymplecticGroup.det_eq_one hG
  have hbound := h2 (Fin (n + 1) ⊕ Fin (n + 1)) G hpd hdet ρsq hleast
  obtain ⟨v, hv0, hvρ⟩ := hleast.1
  refine ⟨ρsq, hleast, ?_, ?_, ?_⟩
  · rw [hvρ]
    have := hpd.dotProduct_mulVec_pos (PSymplFirstRow.intVec_ne_zero hv0)
    simpa [qf] using this
  · simp only [Fintype.card_sum, Fintype.card_fin] at hbound
    push_cast at hbound
    linarith
  · have hmin : ∀ u : Fin (n + 1) ⊕ Fin (n + 1) → ℤ, u ≠ 0 →
        qf G (intVec v) ≤ qf G (intVec u) := by
      intro u hu
      rw [← hvρ]
      exact hleast.2 ⟨u, hu, rfl⟩
    obtain ⟨P, hP, m, hm⟩ := h3 n v
    have hrow : ∃ P' ∈ symplecticGroup (Fin (n + 1)) ℤ, P' (Sum.inl 0) = v := by
      rcases h4 _ G hpd v (P (Sum.inl 0)) m hm hv0 hmin with h | h
      · exact ⟨P, hP, by rw [hm, h, one_smul]⟩
      · refine ⟨-P, SymplecticGroup.neg_mem hP, ?_⟩
        rw [hm, h, neg_one_smul]
        rfl
    obtain ⟨P', hP', hP'v⟩ := hrow
    refine ⟨P', hP', ?_⟩
    rw [(h5 (n + 1) P' G hP' hG hpd).2.2.2 (Sum.inl 0), hP'v, hvρ]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplFirstRow =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGcd =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGcd", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

namespace PSymplGcd

theorem of_gcd_ne_zero (a b : ℤ) (hc : (Int.gcd a b : ℤ) ≠ 0) :
    ∃ c a' b' x y : ℤ, a = c * a' ∧ b = c * b' ∧ x * a' + y * b' = 1 := by
  obtain ⟨a', ha'⟩ := Int.gcd_dvd_left a b
  obtain ⟨b', hb'⟩ := Int.gcd_dvd_right a b
  refine ⟨(Int.gcd a b : ℤ), a', b', Int.gcdA a b, Int.gcdB a b, ha', hb', ?_⟩
  have h := Int.gcd_eq_gcd_ab a b
  apply mul_left_cancel₀ hc
  linear_combination (-Int.gcdA a b) * ha' - Int.gcdB a b * hb' - h

end PSymplGcd

theorem SymplGcd.proof : SymplGcd.Statement := by
  intro a b
  by_cases hc : (Int.gcd a b : ℤ) = 0
  · have h0 : Int.gcd a b = 0 := by exact_mod_cast hc
    obtain ⟨rfl, rfl⟩ := Int.gcd_eq_zero_iff.mp h0
    exact ⟨0, 1, 0, 1, 0, by ring, by ring, by ring⟩
  · exact PSymplGcd.of_gcd_ne_zero a b hc

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGcd =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGramMem =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGramMem", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplGramMem

lemma det_map_cast {n : ℕ} {P : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℤ}
    (hP : P ∈ symplecticGroup (Fin n) ℤ) : (P.map (Int.cast : ℤ → ℝ)).det = 1 := by
  have h := SymplecticGroup.det_eq_one (SymplecticGroup.map_mem hP (Int.castRingHom ℝ))
  simpa using h

lemma gram_diag {l : Type*} [Fintype l] (P : Matrix l l ℤ) (G : Matrix l l ℝ) (x : l) :
    symplGram P G x x = qf G (intVec (P x)) := by
  unfold symplGram qf intVec
  rw [Matrix.mul_mul_apply]
  rfl

end PSymplGramMem


open PSymplGramMem in
theorem SymplGramMem.proof : SymplGramMem.Statement := by
  intro n P G hP hG hGpd
  set P' : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℝ := P.map (Int.cast : ℤ → ℝ) with hP'
  have hP'mem : P' ∈ symplecticGroup (Fin n) ℝ := SymplecticGroup.map_mem hP (Int.castRingHom ℝ)
  refine ⟨?_, ?_, ?_, fun x => gram_diag P G x⟩
  · exact Submonoid.mul_mem _ (Submonoid.mul_mem _ hP'mem hG) (SymplecticGroup.transpose_mem hP'mem)
  · have hdet : IsUnit P'.det := by rw [det_map_cast hP]; exact isUnit_one
    have hinj : Function.Injective P'.vecMul :=
      vecMul_injective_iff_isUnit.mpr ((Matrix.isUnit_iff_isUnit_det _).mpr hdet)
    have h := hGpd.mul_mul_conjTranspose_same hinj
    rwa [conjTranspose_eq_transpose_of_trivial] at h
  · intro Q
    unfold symplGram
    have hmap : (Q * P).map (Int.cast : ℤ → ℝ) = Q.map (Int.cast : ℤ → ℝ) * P.map (Int.cast : ℤ → ℝ) :=
      Matrix.map_mul (f := Int.castRingHom ℝ)
    rw [hmap, Matrix.transpose_mul]
    simp only [Matrix.mul_assoc]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGramMem =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinBound =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplMinBound

theorem prod_sqrt_eq_one {ι : Type} [Fintype ι] (lam : ι → ℝ) (hlam : ∀ i, 0 < lam i)
    (hprod : ∏ i, lam i = 1) : ∏ i, Real.sqrt (lam i) = 1 := by
  have hnn : 0 ≤ ∏ i, Real.sqrt (lam i) := Finset.prod_nonneg fun i _ => Real.sqrt_nonneg _
  have hsq : (∏ i, Real.sqrt (lam i)) ^ 2 = 1 := by
    rw [← Finset.prod_pow]
    simp_rw [Real.sq_sqrt (hlam _).le]
    exact hprod
  nlinarith [hsq, hnn]

theorem exists_lt (h2 : SymplMinkowskiBox.Statement) {ι : Type} [Fintype ι] [DecidableEq ι]
    [Nonempty ι] (O : Matrix ι ι ℝ) (lam : ι → ℝ) (hlam : ∀ i, 0 < lam i) (hO : |O.det| = 1)
    (hprod : ∏ i, lam i = 1) (c : ℝ) (hc : 1 < c) :
    ∃ v : ι → ℤ, v ≠ 0 ∧
      ∑ i, lam i * (O *ᵥ intVec v) i ^ 2 < (Fintype.card ι : ℝ) * c ^ 2 := by
  have hc0 : 0 < c := by linarith
  have ha : ∀ i, 0 < c / Real.sqrt (lam i) := fun i => div_pos hc0 (Real.sqrt_pos.2 (hlam i))
  have hpa : 1 < ∏ i, c / Real.sqrt (lam i) := by
    rw [Finset.prod_div_distrib, prod_sqrt_eq_one lam hlam hprod, div_one, Finset.prod_const,
      Finset.card_univ]
    exact one_lt_pow₀ hc Fintype.card_ne_zero
  obtain ⟨v, hv, hbox⟩ := h2 ι O (fun i => c / Real.sqrt (lam i)) hO ha hpa
  refine ⟨v, hv, ?_⟩
  have hlt : ∀ i ∈ (Finset.univ : Finset ι), lam i * (O *ᵥ intVec v) i ^ 2 < c ^ 2 := by
    intro i _
    have hs := Real.sqrt_pos.2 (hlam i)
    have h1 : |(O *ᵥ intVec v) i| * Real.sqrt (lam i) < c := (lt_div_iff₀ hs).1 (hbox i)
    have h2' : (|(O *ᵥ intVec v) i| * Real.sqrt (lam i)) ^ 2 < c ^ 2 :=
      pow_lt_pow_left₀ h1 (mul_nonneg (abs_nonneg _) hs.le) two_ne_zero
    rw [mul_pow, sq_abs, Real.sq_sqrt (hlam i).le] at h2'
    linarith
  calc ∑ i, lam i * (O *ᵥ intVec v) i ^ 2 < ∑ _i : ι, c ^ 2 :=
        Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty hlt
    _ = (Fintype.card ι : ℝ) * c ^ 2 := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]

end PSymplMinBound

theorem SymplMinBound.proof (h1 : SymplQuadDiag.Statement) (h2 : SymplMinkowskiBox.Statement) :
    SymplMinBound.Statement := by
  intro ι _ _ G hG hdet m hm
  obtain ⟨w, hw, -⟩ := hm.1
  have hne : Nonempty ι := by
    by_contra h
    rw [not_nonempty_iff] at h
    exact hw (funext fun i => (IsEmpty.false i).elim)
  obtain ⟨O, lam, hlam, hO, hprod, hq⟩ := h1 ι G hG
  rw [hdet] at hprod
  have hN : (0 : ℝ) < Fintype.card ι := by exact_mod_cast Fintype.card_pos
  have key : ∀ c : ℝ, 1 < c → m < (Fintype.card ι : ℝ) * c ^ 2 := by
    intro c hc
    obtain ⟨v, hv, hlt⟩ := PSymplMinBound.exists_lt h2 O lam hlam hO hprod c hc
    have hmv : m ≤ qf G (intVec v) := hm.2 ⟨v, hv, rfl⟩
    rw [hq] at hmv
    linarith
  by_contra hcon
  rw [not_le] at hcon
  set N : ℝ := (Fintype.card ι : ℝ) with hNdef
  set t : ℝ := (m / N + 1) / 2 with htdef
  have hmN : 1 < m / N := by rw [lt_div_iff₀ hN]; linarith
  have ht : 1 < t := by rw [htdef]; linarith
  have hsqrt : 1 < Real.sqrt t := by
    rw [Real.lt_sqrt zero_le_one]; linarith
  have hk := key (Real.sqrt t) hsqrt
  rw [Real.sq_sqrt (by linarith)] at hk
  have : N * t = (m + N) / 2 := by
    rw [htdef]; field_simp
  linarith

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinBound =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinExists =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinExists", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Data.Pi.Interval\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplMinExists

variable {ι : Type} [Fintype ι]

theorem qf_smul (G : Matrix ι ι ℝ) (c : ℝ) (x : ι → ℝ) : qf G (c • x) = c ^ 2 * qf G x := by
  simp only [qf, mulVec_smul, smul_dotProduct, dotProduct_smul, smul_eq_mul]
  ring

theorem continuous_qf (G : Matrix ι ι ℝ) : Continuous (qf G) :=
  continuous_id.dotProduct (continuous_const.matrix_mulVec continuous_id)

theorem exists_lower [DecidableEq ι] [Nonempty ι] (G : Matrix ι ι ℝ) (hG : G.PosDef) :
    ∃ μ : ℝ, 0 < μ ∧ ∀ x : ι → ℝ, μ * ‖x‖ ^ 2 ≤ qf G x := by
  obtain ⟨i₀⟩ := ‹Nonempty ι›
  have hpos : ∀ x : ι → ℝ, x ≠ 0 → 0 < qf G x := fun x hx => by
    simpa [qf] using hG.dotProduct_mulVec_pos hx
  have hK : IsCompact (Metric.sphere (0 : ι → ℝ) 1) := isCompact_sphere 0 1
  have hne : (Metric.sphere (0 : ι → ℝ) 1).Nonempty :=
    ⟨Pi.single i₀ 1, by simp [Pi.norm_single]⟩
  obtain ⟨u, hu, hmin⟩ := hK.exists_isMinOn hne (continuous_qf G).continuousOn
  refine ⟨qf G u, hpos u ?_, fun x => ?_⟩
  · rintro rfl
    simp at hu
  · by_cases hx : x = 0
    · subst hx
      simp [qf]
    · have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx
      have hy : ‖x‖⁻¹ • x ∈ Metric.sphere (0 : ι → ℝ) 1 := by
        rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hn.ne']
      have h1 : qf G u ≤ qf G (‖x‖⁻¹ • x) := isMinOn_iff.mp hmin _ hy
      calc qf G u * ‖x‖ ^ 2 ≤ qf G (‖x‖⁻¹ • x) * ‖x‖ ^ 2 := by gcongr
        _ = qf G x := by
          rw [qf_smul]
          field_simp

end PSymplMinExists

theorem SymplMinExists.proof (h1 : SymplQuadDiag.Statement) : SymplMinExists.Statement := by
  intro ι _ _ _ G hG
  obtain ⟨μ, hμ, hlow⟩ := PSymplMinExists.exists_lower G hG
  obtain ⟨i₀⟩ := ‹Nonempty ι›
  set v₀ : ι → ℤ := Pi.single i₀ 1 with hv₀def
  set M₀ : ℝ := qf G (intVec v₀) with hM₀
  set R : ℤ := ⌈M₀ / μ⌉ with hR
  set S : Set (ι → ℤ) := {v | v ≠ 0 ∧ qf G (intVec v) ≤ M₀} with hS
  have hbox : S ⊆ Set.Icc (fun _ => -R) (fun _ => R) := by
    rintro v ⟨-, hq⟩
    have hb : ∀ i, |(v i : ℝ)| ≤ M₀ / μ := by
      intro i
      have hi : |(v i : ℝ)| ≤ ‖intVec v‖ := by
        have := norm_le_pi_norm (intVec v) i
        simpa [intVec, Real.norm_eq_abs] using this
      have hsq : |(v i : ℝ)| ≤ |(v i : ℝ)| ^ 2 := by
        rcases eq_or_ne (v i) 0 with h | h
        · simp [h]
        · have h' : (1 : ℝ) ≤ |(v i : ℝ)| := by
            rw [← Int.cast_abs]
            exact_mod_cast Int.one_le_abs h
          nlinarith
      have hsq2 : |(v i : ℝ)| ^ 2 ≤ ‖intVec v‖ ^ 2 := pow_le_pow_left₀ (abs_nonneg _) hi 2
      rw [le_div_iff₀ hμ]
      calc |(v i : ℝ)| * μ ≤ μ * ‖intVec v‖ ^ 2 := by nlinarith
        _ ≤ qf G (intVec v) := hlow _
        _ ≤ M₀ := hq
    have hc : ∀ i, |v i| ≤ R := by
      intro i
      have : ((|v i| : ℤ) : ℝ) ≤ (R : ℝ) := by
        rw [Int.cast_abs]
        exact (hb i).trans (Int.le_ceil _)
      exact_mod_cast this
    refine ⟨fun i => ?_, fun i => ?_⟩
    · exact (abs_le.mp (hc i)).1
    · exact (abs_le.mp (hc i)).2
  have hfin : S.Finite := (Set.finite_Icc _ _).subset hbox
  have hv₀ : v₀ ∈ S := by
    refine ⟨fun h => ?_, le_rfl⟩
    have := congrFun h i₀
    simp [v₀] at this
  obtain ⟨w, hwS, hwmin⟩ := Set.exists_min_image S (fun v => qf G (intVec v)) hfin ⟨v₀, hv₀⟩
  refine ⟨qf G (intVec w), ⟨w, hwS.1, rfl⟩, ?_⟩
  rintro t ⟨v, hv, rfl⟩
  by_cases hvS : qf G (intVec v) ≤ M₀
  · exact hwmin v ⟨hv, hvS⟩
  · exact hwS.2.trans (le_of_lt (not_le.mp hvS))

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinExists =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinkowskiBox =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinkowskiBox", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\npublic import Mathlib.Algebra.Module.ZLattice.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Group.GeometryOfNumbers\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix MeasureTheory

namespace PSymplMinkowskiBox

theorem box_neg {ι : Type} [Fintype ι] (A : Matrix ι ι ℝ) (a : ι → ℝ) (x : ι → ℝ)
    (hx : ∀ i, |(A *ᵥ x) i| < a i) : ∀ i, |(A *ᵥ (-x)) i| < a i := by
  intro i
  rw [mulVec_neg, Pi.neg_apply, abs_neg]
  exact hx i

theorem box_convex {ι : Type} [Fintype ι] (A : Matrix ι ι ℝ) (a : ι → ℝ) :
    Convex ℝ {x : ι → ℝ | ∀ i, |(A *ᵥ x) i| < a i} := by
  intro x hx y hy s t hs ht hst i
  have hlt : s • |(A *ᵥ x) i| + t • |(A *ᵥ y) i| ∈ Set.Iio (a i) :=
    convex_Iio (a i) (hx i) (hy i) hs ht hst
  rw [Set.mem_Iio, smul_eq_mul, smul_eq_mul] at hlt
  rw [mulVec_add, mulVec_smul, mulVec_smul, Pi.add_apply, Pi.smul_apply, Pi.smul_apply,
    smul_eq_mul, smul_eq_mul]
  calc |s * (A *ᵥ x) i + t * (A *ᵥ y) i| ≤ |s * (A *ᵥ x) i| + |t * (A *ᵥ y) i| := abs_add_le _ _
    _ = s * |(A *ᵥ x) i| + t * |(A *ᵥ y) i| := by
        rw [abs_mul, abs_mul, abs_of_nonneg hs, abs_of_nonneg ht]
    _ < a i := hlt

theorem volume_fundamentalDomain_basisFun (ι : Type) [Fintype ι] :
    volume (ZSpan.fundamentalDomain (Pi.basisFun ℝ ι)) = 1 := by
  rw [ZSpan.fundamentalDomain_pi_basisFun, volume_pi, Measure.pi_pi]
  simp [Real.volume_Ico]

end PSymplMinkowskiBox


open PSymplMinkowskiBox in
theorem SymplMinkowskiBox.proof (h1 : SymplBoxVolume.Statement) : SymplMinkowskiBox.Statement := by
  intro ι _ _ A a hdet ha hprod
  have hdet0 : A.det ≠ 0 := by
    intro h
    rw [h, abs_zero] at hdet
    exact zero_ne_one hdet
  set s : Set (ι → ℝ) := {x | ∀ i, |(A *ᵥ x) i| < a i} with hs
  have hvol : volume s = ENNReal.ofReal (2 ^ Fintype.card ι * ∏ i, a i) := by
    rw [hs, h1 ι A a hdet0 ha, hdet, div_one, Finset.prod_mul_distrib, Finset.prod_const,
      Finset.card_univ]
  have hP : (0 : ℝ) < 2 ^ Fintype.card ι := by positivity
  have hbig : volume (ZSpan.fundamentalDomain (Pi.basisFun ℝ ι)) * 2 ^ Module.finrank ℝ (ι → ℝ) <
      volume s := by
    rw [volume_fundamentalDomain_basisFun, one_mul, Module.finrank_fintype_fun_eq_card, hvol,
      ← ENNReal.ofReal_ofNat, ← ENNReal.ofReal_pow (by norm_num),
      ENNReal.ofReal_lt_ofReal_iff (by positivity)]
    exact lt_mul_of_one_lt_right hP hprod
  have : Countable (Submodule.span ℤ (Set.range (Pi.basisFun ℝ ι))).toAddSubgroup := by
    change Countable (Submodule.span ℤ (Set.range (Pi.basisFun ℝ ι)))
    infer_instance
  obtain ⟨x, hx0, hxs⟩ := MeasureTheory.exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure
    (L := (Submodule.span ℤ (Set.range (Pi.basisFun ℝ ι))).toAddSubgroup)
    (ZSpan.isAddFundamentalDomain (Pi.basisFun ℝ ι) volume)
    (fun y hy => box_neg A a y hy) (box_convex A a) hbig
  have hint : ∀ i, ∃ z : ℤ, (z : ℝ) = (x : ι → ℝ) i := by
    intro i
    obtain ⟨z, hz⟩ := ((Pi.basisFun ℝ ι).mem_span_iff_repr_mem ℤ (x : ι → ℝ)).mp x.2 i
    exact ⟨z, by simpa using hz⟩
  choose v hv using hint
  have hxv : intVec v = (x : ι → ℝ) := funext hv
  refine ⟨v, ?_, fun i => ?_⟩
  · rintro rfl
    apply hx0
    ext i
    rw [← hv i]
    simp
  · rw [hxv]
    exact hxs i

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinkowskiBox =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOmegaMem =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOmegaMem", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplOmegaMem

theorem mul_J_mul_transpose_apply {R : Type*} [CommRing R] {l : Type*} [Fintype l]
    [DecidableEq l] (M : Matrix (l ⊕ l) (l ⊕ l) R) (x y : l ⊕ l) :
    (M * J l R * Mᵀ) x y = symplOmega (M x) (M y) := by
  rw [symplOmega, dotProduct_mulVec, Matrix.mul_apply]
  rfl

end PSymplOmegaMem

theorem SymplOmegaMem.proof : SymplOmegaMem.Statement := by
  intro R _ l _ _ M
  rw [SymplecticGroup.mem_iff]
  constructor
  · intro h x y
    rw [← PSymplOmegaMem.mul_J_mul_transpose_apply, h]
  · intro h
    ext x y
    rw [PSymplOmegaMem.mul_J_mul_transpose_apply, h]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOmegaMem =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOrbit =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOrbit", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplOrbit

theorem smul_symplCons {R : Type*} [CommRing R] {n : ℕ} (m p q : R) (w : Fin n ⊕ Fin n → R) :
    m • symplCons p q w = symplCons (m * p) (m * q) (m • w) := by
  funext x
  rcases x with i | i <;> refine Fin.cases ?_ (fun j => ?_) i <;> simp [symplCons]

theorem symplCons_one_zero {R : Type*} [CommRing R] {n : ℕ} :
    symplCons (1 : R) 0 (0 : Fin n ⊕ Fin n → R) = Pi.single (Sum.inl 0) 1 := by
  funext x
  rcases x with i | i <;> refine Fin.cases ?_ (fun j => ?_) i <;>
    simp [symplCons, Fin.succ_ne_zero]

end PSymplOrbit


open PSymplOrbit in
theorem SymplOrbit.proof (h1 : SymplExtMem.Statement) (h2 : SymplExtVecMul.Statement)
    (h3 : SymplTwoRow.Statement) (h4 : SymplGcd.Statement) (h5 : SymplCons.Statement) :
    SymplOrbit.Statement := by
  intro n
  induction n with
  | zero =>
    intro v
    obtain ⟨c, a', b', x, y, ha, hb, hxy⟩ := h4 (v (Sum.inl 0)) (v (Sum.inr 0))
    have hE := h1 ℤ 0 a' b' (-y) x 1 (by linarith) (Submonoid.one_mem _)
    refine ⟨_, hE, c, ?_⟩
    have htail : symplTail v = 0 := funext fun z => z.elim (fun i => i.elim0) (fun i => i.elim0)
    have hrow : symplExt a' b' (-y) x (1 : Matrix (Fin 0 ⊕ Fin 0) (Fin 0 ⊕ Fin 0) ℤ) (Sum.inl 0) =
        symplCons a' b' 0 :=
      rfl
    rw [hrow, smul_symplCons, ← ha, ← hb, smul_zero, ← htail]
    exact ((h5 ℤ 0).1 v).symm
  | succ n ih =>
    intro v
    obtain ⟨Q, hQ, m', hw⟩ := ih (symplTail v)
    obtain ⟨c, a', b', x, y, ha, hb, hxy⟩ := h4 (v (Sum.inl 0)) (v (Sum.inr 0))
    obtain ⟨k, c'', d'', x', y', hc, hm, hxy'⟩ := h4 c m'
    obtain ⟨P₂, hP₂, hrow₂⟩ := h3 n c'' d'' x' y' hxy'
    have hE₁ := h1 ℤ (n + 1) a' b' (-y) x 1 (by linarith) (Submonoid.one_mem _)
    have hE₂ := h1 ℤ (n + 1) 1 0 0 1 Q (by ring) hQ
    refine ⟨P₂ * symplExt 1 0 0 1 Q * symplExt a' b' (-y) x 1,
      Submonoid.mul_mem _ (Submonoid.mul_mem _ hP₂ hE₂) hE₁, k, ?_⟩
    have e1 : symplCons c 0 (symplTail v) ᵥ* symplExt a' b' (-y) x 1 = v := by
      rw [h2, vecMul_one]
      simp only [zero_mul, add_zero]
      rw [← ha, ← hb]
      exact (h5 ℤ (n + 1)).1 v
    have e2 : symplCons c 0 (symplCons m' 0 0) ᵥ* symplExt 1 0 0 1 Q = symplCons c 0 (symplTail v) := by
      rw [h2]
      simp only [mul_one, mul_zero, add_zero]
      congr 1
      have hs : symplCons m' 0 (0 : Fin n ⊕ Fin n → ℤ) = m' • symplCons 1 0 0 := by
        rw [smul_symplCons]; simp
      rw [hs, smul_vecMul, symplCons_one_zero, single_one_vecMul, hw]
      rfl
    have e3 : k • P₂ (Sum.inl 0) = symplCons c 0 (symplCons m' 0 0) := by
      rw [hrow₂, hc, hm, smul_symplCons, smul_symplCons]
      simp
    rw [mul_apply_eq_vecMul, mul_apply_eq_vecMul, ← smul_vecMul, ← smul_vecMul, e3, e2, e1]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOrbit =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplQuadDiag =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplQuadDiag", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

noncomputable section

namespace PSymplQuadDiag

theorem abs_det_eq_one_of_mul_transpose {ι : Type} [Fintype ι] [DecidableEq ι]
    (O : Matrix ι ι ℝ) (h : Oᵀ * O = 1) : |O.det| = 1 := by
  have h1 : O.det * O.det = 1 := by
    have := congrArg Matrix.det h
    rwa [det_mul, det_transpose, det_one] at this
  have h2 : |O.det| * |O.det| = 1 := by rw [← abs_mul, h1, abs_one]
  nlinarith [abs_nonneg O.det]

end PSymplQuadDiag

theorem SymplQuadDiag.proof : SymplQuadDiag.Statement := by
  intro ι _ _ G hG
  have hH := hG.isHermitian
  set U : Matrix ι ι ℝ := (hH.eigenvectorUnitary : Matrix ι ι ℝ) with hUdef
  have hstar : star U = Uᵀ := by
    rw [star_eq_conjTranspose, conjTranspose_eq_transpose_of_trivial]
  have hspec : G = U * diagonal (RCLike.ofReal ∘ hH.eigenvalues) * star U := by
    conv_lhs => rw [hH.spectral_theorem]
    simp [hUdef]
  refine ⟨star U, hH.eigenvalues, fun i => hG.eigenvalues_pos i, ?_, ?_, ?_⟩
  · rw [hstar]
    apply PSymplQuadDiag.abs_det_eq_one_of_mul_transpose
    rw [transpose_transpose, ← hstar]
    exact Unitary.coe_mul_star_self hH.eigenvectorUnitary
  · rw [hH.det_eq_prod_eigenvalues]
    simp
  · intro x
    have hx : x ᵥ* U = star U *ᵥ x := by rw [hstar, mulVec_transpose]
    calc qf G x = x ⬝ᵥ (U *ᵥ (diagonal (RCLike.ofReal ∘ hH.eigenvalues) *ᵥ (star U *ᵥ x))) := by
          have hG' : G *ᵥ x = U *ᵥ (diagonal (RCLike.ofReal ∘ hH.eigenvalues) *ᵥ (star U *ᵥ x)) := by
            rw [mulVec_mulVec, mulVec_mulVec, ← hspec]
          rw [qf, hG']
      _ = (star U *ᵥ x) ⬝ᵥ (diagonal (RCLike.ofReal ∘ hH.eigenvalues) *ᵥ (star U *ᵥ x)) := by
          rw [dotProduct_mulVec, hx]
      _ = ∑ i, hH.eigenvalues i * (star U *ᵥ x) i ^ 2 := by
          simp only [dotProduct, mulVec_diagonal, Function.comp_apply, RCLike.ofReal_real_eq_id,
            id]
          exact Finset.sum_congr rfl fun i _ => by ring

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplQuadDiag =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceConj =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceConj", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplReduceConj

theorem sum_symplCons {n : ℕ} (p q : ℝ) (w : Fin n ⊕ Fin n → ℝ)
    (F : Fin (n + 1) ⊕ Fin (n + 1) → ℝ) :
    ∑ x, symplCons p q w x * F x =
      p * F (Sum.inl 0) + q * F (Sum.inr 0) + ∑ y, w y * F (Sum.map Fin.succ Fin.succ y) := by
  simp [symplCons, Fintype.sum_sum_type, Fin.sum_univ_succ]
  ring

theorem row_e {n : ℕ} (Q : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℝ) :
    symplExt (1 : ℝ) 0 0 1 Q (Sum.inl 0) = symplCons 1 0 0 :=
  rfl

theorem ends_rank_three_of_local {n : ℕ} (Q : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℝ) (a : Fin n ⊕ Fin n) :
    symplExt (1 : ℝ) 0 0 1 Q (Sum.map Fin.succ Fin.succ a) = symplCons 0 0 (Q a) := by
  cases a <;> rfl

theorem entry {l : Type*} [Fintype l] (E H : Matrix l l ℝ) (x y : l) :
    (E * H * Eᵀ) x y = ∑ w, E x w * ∑ z, E y z * H w z := by
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => ?_
  ring

end PSymplReduceConj


open PSymplReduceConj in
theorem SymplReduceConj.proof : SymplReduceConj.Statement := by
  intro n H Q
  have kee : (symplExt (1 : ℝ) 0 0 1 Q * H * (symplExt (1 : ℝ) 0 0 1 Q)ᵀ) (Sum.inl 0) (Sum.inl 0) =
      H (Sum.inl 0) (Sum.inl 0) := by
    rw [entry, row_e]
    simp only [sum_symplCons, zero_mul, one_mul, add_zero, Pi.zero_apply, Finset.sum_const_zero]
  refine ⟨kee, ?_⟩
  ext a b
  have kse : (symplExt (1 : ℝ) 0 0 1 Q * H * (symplExt (1 : ℝ) 0 0 1 Q)ᵀ)
      (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) =
      ∑ q, Q a q * H (Sum.map Fin.succ Fin.succ q) (Sum.inl 0) := by
    rw [entry, ends_rank_three_of_local, row_e]
    simp only [sum_symplCons, zero_mul, one_mul, add_zero, zero_add, Pi.zero_apply,
      Finset.sum_const_zero]
  have kes : (symplExt (1 : ℝ) 0 0 1 Q * H * (symplExt (1 : ℝ) 0 0 1 Q)ᵀ)
      (Sum.inl 0) (Sum.map Fin.succ Fin.succ b) =
      ∑ r, Q b r * H (Sum.inl 0) (Sum.map Fin.succ Fin.succ r) := by
    rw [entry, ends_rank_three_of_local, row_e]
    simp only [sum_symplCons, zero_mul, one_mul, add_zero, zero_add, Pi.zero_apply,
      Finset.sum_const_zero]
  have kss : (symplExt (1 : ℝ) 0 0 1 Q * H * (symplExt (1 : ℝ) 0 0 1 Q)ᵀ)
      (Sum.map Fin.succ Fin.succ a) (Sum.map Fin.succ Fin.succ b) =
      ∑ q, Q a q * ∑ r, Q b r * H (Sum.map Fin.succ Fin.succ q) (Sum.map Fin.succ Fin.succ r) := by
    rw [entry, ends_rank_three_of_local, ends_rank_three_of_local]
    simp only [sum_symplCons, zero_mul, add_zero, zero_add]
  show _ - _ * _ / _ = _
  rw [kss, kse, kes, kee]
  calc _ = ∑ q, ∑ r, Q a q * symplReduce H q r * Q b r := by
        rw [Finset.sum_mul_sum, Finset.sum_div, ← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun q _ => ?_
        rw [Finset.mul_sum, Finset.sum_div, ← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun r _ => ?_
        simp only [symplReduce]
        ring
    _ = _ := by
        simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
        exact Finset.sum_comm

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceConj =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceMem =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceMem", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplReduceMem

theorem omega_sub_smul {l : Type} [Fintype l] [DecidableEq l] (u v w : l ⊕ l → ℝ) (c d : ℝ) :
    symplOmega (u - c • w) (v - d • w) =
      symplOmega u v - d * symplOmega u w - c * symplOmega w v + c * d * symplOmega w w := by
  unfold symplOmega
  simp only [mulVec_sub, mulVec_smul, dotProduct_sub, sub_dotProduct, smul_dotProduct,
    dotProduct_smul, smul_eq_mul]
  ring

theorem omega_tail (h2 : SymplCons.Statement) {n : ℕ} (x y : Fin (n + 1) ⊕ Fin (n + 1) → ℝ) :
    symplOmega (symplTail x) (symplTail y) =
      symplOmega x y - (x (Sum.inr 0) * y (Sum.inl 0) - x (Sum.inl 0) * y (Sum.inr 0)) := by
  have key := (h2 ℝ n).2 (x (Sum.inl 0)) (x (Sum.inr 0)) (y (Sum.inl 0)) (y (Sum.inr 0))
    (symplTail x) (symplTail y)
  rw [(h2 ℝ n).1 x, (h2 ℝ n).1 y] at key
  linarith

theorem J_succ {n : ℕ} (a b : Fin n ⊕ Fin n) :
    J (Fin (n + 1)) ℝ (Sum.map Fin.succ Fin.succ a) (Sum.map Fin.succ Fin.succ b) =
      J (Fin n) ℝ a b := by
  rcases a with i | i <;> rcases b with j | j <;> simp [J, Matrix.one_apply, Fin.succ_inj]

theorem J_succ_e {n : ℕ} (a : Fin n ⊕ Fin n) :
    J (Fin (n + 1)) ℝ (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) = 0 := by
  rcases a with i | i <;> simp [J, Fin.succ_ne_zero]

theorem J_e_succ {n : ℕ} (b : Fin n ⊕ Fin n) :
    J (Fin (n + 1)) ℝ (Sum.inl 0) (Sum.map Fin.succ Fin.succ b) = 0 := by
  rcases b with j | j <;> simp [J, (Fin.succ_ne_zero j).symm]

theorem reduce_row {n : ℕ} (H : Matrix (Fin (n + 1) ⊕ Fin (n + 1)) (Fin (n + 1) ⊕ Fin (n + 1)) ℝ)
    (a : Fin n ⊕ Fin n) :
    symplReduce H a = symplTail (H (Sum.map Fin.succ Fin.succ a)) -
      (H (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) / H (Sum.inl 0) (Sum.inl 0)) •
        symplTail (H (Sum.inl 0)) := by
  funext b
  simp only [symplReduce, symplTail, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
  ring

end PSymplReduceMem


open PSymplReduceMem in
theorem SymplReduceMem.proof (h1 : SymplOmegaMem.Statement) (h2 : SymplCons.Statement) :
    SymplReduceMem.Statement := by
  intro n H hH he
  have hω := (h1 ℝ (Fin (n + 1)) H).1 hH
  rw [h1 ℝ (Fin n) (symplReduce H)]
  intro a b
  rw [reduce_row, reduce_row, omega_sub_smul, omega_tail h2, omega_tail h2, omega_tail h2,
    omega_tail h2, hω, hω, hω, hω, J_succ, J_succ_e, J_e_succ]
  simp only [J, fromBlocks_apply₁₁, Matrix.zero_apply]
  field_simp
  ring

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceMem =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReducePosDef =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReducePosDef", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplReducePosDef

theorem sum_mul_symplCons {n : ℕ} (c : ℝ) (x : Fin n ⊕ Fin n → ℝ)
    (F : Fin (n + 1) ⊕ Fin (n + 1) → ℝ) :
    ∑ p, F p * symplCons c 0 x p =
      F (Sum.inl 0) * c + ∑ q, F (Sum.map Fin.succ Fin.succ q) * x q := by
  simp [Fintype.sum_sum_type, Fin.sum_univ_succ, symplCons]
  ring

end PSymplReducePosDef


open PSymplReducePosDef in
theorem SymplReducePosDef.proof : SymplReducePosDef.Statement := by
  intro n H hH
  have hsymm : ∀ i j, H j i = H i j := fun i j => by
    simpa using hH.isHermitian.apply i j
  have hpos : 0 < H (Sum.inl 0) (Sum.inl 0) := hH.diag_pos
  refine Matrix.PosDef.of_dotProduct_mulVec_pos ?_ ?_
  · refine Matrix.IsHermitian.ext fun a b => ?_
    simp only [symplReduce, star_trivial]
    rw [hsymm (Sum.map Fin.succ Fin.succ a), hsymm (Sum.map Fin.succ Fin.succ a) (Sum.inl 0),
      hsymm (Sum.inl 0) (Sum.map Fin.succ Fin.succ b)]
    ring
  · intro x hx
    simp only [star_trivial]
    set h := H (Sum.inl 0) (Sum.inl 0) with hh
    set S := ∑ b, H (Sum.inl 0) (Sum.map Fin.succ Fin.succ b) * x b with hS
    set Q := ∑ a, (∑ b, H (Sum.map Fin.succ Fin.succ a) (Sum.map Fin.succ Fin.succ b) * x b) * x a
      with hQ
    have hT : ∑ a, x a * H (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) = S := by
      rw [hS]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [hsymm]; ring
    have hy : symplCons (-(S / h)) 0 x ≠ 0 := by
      intro hz
      apply hx
      funext q
      have := congrFun hz (Sum.map Fin.succ Fin.succ q)
      cases q <;> simpa [symplCons] using this
    have h1 := hH.dotProduct_mulVec_pos hy
    simp only [star_trivial] at h1
    have hL : symplCons (-(S / h)) 0 x ⬝ᵥ (H *ᵥ symplCons (-(S / h)) 0 x) =
        (h * (-(S / h)) + S) * (-(S / h)) + (-(S / h)) * S + Q := by
      rw [dotProduct_comm]
      simp only [dotProduct, mulVec, PSymplReducePosDef.sum_mul_symplCons]
      rw [← hh, ← hS]
      simp only [add_mul, Finset.sum_add_distrib]
      rw [← hQ]
      have hc : ∑ q, H (Sum.map Fin.succ Fin.succ q) (Sum.inl 0) * (-(S / h)) * x q =
          (-(S / h)) * S := by
        rw [← hT, Finset.mul_sum]
        refine Finset.sum_congr rfl fun a _ => ?_
        ring
      rw [hc]
      ring
    have hRa : ∀ a, ∑ b, (H (Sum.map Fin.succ Fin.succ a) (Sum.map Fin.succ Fin.succ b) -
        H (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) * H (Sum.inl 0) (Sum.map Fin.succ Fin.succ b) /
          h) * x b =
        ∑ b, H (Sum.map Fin.succ Fin.succ a) (Sum.map Fin.succ Fin.succ b) * x b -
          H (Sum.map Fin.succ Fin.succ a) (Sum.inl 0) / h * S := by
      intro a
      rw [hS, Finset.mul_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun b _ => ?_
      ring
    have hR : x ⬝ᵥ (symplReduce H *ᵥ x) = Q - S / h * S := by
      simp only [dotProduct, mulVec, symplReduce]
      rw [← hh]
      simp only [hRa, mul_sub, Finset.sum_sub_distrib]
      rw [hQ, ← hT, Finset.sum_div, Finset.sum_mul]
      congr 1
      · refine Finset.sum_congr rfl fun a _ => ?_
        ring
      · refine Finset.sum_congr rfl fun a _ => ?_
        ring
    have hne : h ≠ 0 := hpos.ne'
    have key : symplCons (-(S / h)) 0 x ⬝ᵥ (H *ᵥ symplCons (-(S / h)) 0 x) =
        x ⬝ᵥ (symplReduce H *ᵥ x) := by
      rw [hL, hR]
      field_simp
      ring
    rw [← key]
    exact h1

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReducePosDef =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceStep =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceStep", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

noncomputable section

namespace PSymplReduceStep

theorem symplExt_map {n : ℕ} (Q : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℤ) :
    (symplExt (1 : ℤ) 0 0 1 Q).map (Int.cast : ℤ → ℝ) =
      symplExt 1 0 0 1 (Q.map (Int.cast : ℤ → ℝ)) := by
  ext x y
  rcases x with i | i <;> rcases y with j | j <;>
    cases i using Fin.cases <;> cases j using Fin.cases <;> simp [symplExt, symplCons]

theorem schur_toBlocks {n : ℕ} (K : Matrix (Fin (n + 1) ⊕ Fin (n + 1)) (Fin (n + 1) ⊕ Fin (n + 1)) ℝ) :
    (Matrix.of fun i j : Fin n => K.toBlocks₁₁ i.succ j.succ -
        K.toBlocks₁₁ i.succ 0 * K.toBlocks₁₁ 0 j.succ / K.toBlocks₁₁ 0 0) =
      (symplReduce K).toBlocks₁₁ := by
  ext i j
  simp [symplReduce, Matrix.toBlocks₁₁]

end PSymplReduceStep

theorem SymplReduceStep.proof (h1 : SymplExtMem.Statement) (h2 : SymplReduceConj.Statement)
    (h3 : SymplDetSchur.Statement) : SymplReduceStep.Statement := by
  intro n H Q hH hQ
  refine ⟨symplExt 1 0 0 1 Q, h1 ℤ n 1 0 0 1 Q (by norm_num) hQ, ?_⟩
  obtain ⟨he, hred⟩ := h2 n H (Q.map (Int.cast : ℤ → ℝ))
  rw [symplGram, PSymplReduceStep.symplExt_map]
  generalize symplExt 1 0 0 1 (Q.map (Int.cast : ℤ → ℝ)) * H *
    (symplExt 1 0 0 1 (Q.map (Int.cast : ℤ → ℝ)))ᵀ = K at he hred ⊢
  refine ⟨he, ?_⟩
  have hk0 : K.toBlocks₁₁ 0 0 = H (Sum.inl 0) (Sum.inl 0) := he
  rw [h3 n K.toBlocks₁₁ (hk0 ▸ hH), PSymplReduceStep.schur_toBlocks, hred, hk0]
  rfl

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceStep =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplShortPrim =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplShortPrim", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplShortPrim

lemma intVec_smul {ι : Type} (m : ℤ) (w : ι → ℤ) : intVec (m • w) = (m : ℝ) • intVec w := by
  funext i
  simp [intVec]

lemma qf_smul {ι : Type} [Fintype ι] (Y : Matrix ι ι ℝ) (c : ℝ) (x : ι → ℝ) :
    qf Y (c • x) = c ^ 2 * qf Y x := by
  simp only [qf, mulVec_smul, dotProduct_smul, smul_dotProduct, smul_eq_mul]
  ring

end PSymplShortPrim


open PSymplShortPrim in
theorem SymplShortPrim.proof : SymplShortPrim.Statement := by
  intro ι _ _ G hG v w m hvw hv hmin
  have hm : m ≠ 0 := by
    rintro rfl
    exact hv (by simp [hvw])
  have hw : w ≠ 0 := by
    rintro rfl
    exact hv (by simp [hvw])
  have hwR : intVec w ≠ 0 := by
    intro h
    apply hw
    funext i
    have := congrFun h i
    simpa [intVec] using this
  have hq : 0 < qf G (intVec w) := by
    have := hG.dotProduct_mulVec_pos hwR
    simpa [qf] using this
  have hle := hmin w hw
  rw [hvw, intVec_smul, qf_smul] at hle
  have hm2 : ((m : ℝ)) ^ 2 ≤ 1 := by
    by_contra h
    rw [not_le] at h
    nlinarith
  have hm2' : m ^ 2 ≤ 1 := by exact_mod_cast hm2
  have habs : |m| ≤ 1 := (sq_le_one_iff_abs_le_one m).mp hm2'
  rw [abs_le] at habs
  omega

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplShortPrim =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplStep =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplStep", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

theorem SymplStep.proof (h1 : SymplFirstRow.Statement) (h2 : SymplGramMem.Statement)
    (h3 : SymplReduceMem.Statement) (h4 : SymplReducePosDef.Statement)
    (h5 : SymplReduceStep.Statement) : SymplStep.Statement := by
  intro n B G hG hGpd hind
  obtain ⟨ρsq, hleast, hpos, hle, P₁, hP₁, hP₁e⟩ := h1 n G hG hGpd
  obtain ⟨hHmem, hHpd, hcomp, -⟩ := h2 (n + 1) P₁ G hP₁ hG hGpd
  have hHe : symplGram P₁ G (Sum.inl 0) (Sum.inl 0) ≠ 0 := by
    rw [hP₁e]; exact hpos.ne'
  obtain ⟨Q, hQ, hQB⟩ :=
    hind (symplReduce (symplGram P₁ G)) (h3 n _ hHmem hHe) (h4 n _ hHpd)
  obtain ⟨Q', hQ', hQ'e, hQ'det⟩ := h5 n (symplGram P₁ G) Q hHe hQ
  refine ⟨ρsq, hleast, hpos, hle, Q' * P₁, Submonoid.mul_mem _ hQ' hP₁, ?_, ?_⟩
  · rw [hcomp Q', hQ'e, hP₁e]
  · rw [hcomp Q', hQ'det, hP₁e]
    exact mul_le_mul_of_nonneg_left hQB hpos.le

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplStep =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTop =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTop", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

theorem SymplecticReduction.proof (hStep : SymplStep.Statement) (hDet : SymplDetBound.Statement) :
    SymplecticReduction.Statement := by
  intro g _ G hG hpos
  obtain ⟨n, rfl⟩ : ∃ n, g = n + 1 := Nat.exists_eq_succ_of_ne_zero (NeZero.ne g)
  obtain ⟨ρsq, hleast, hρ, hle, P, hP, hent, hdet⟩ :=
    hStep n ((2 * (n : ℝ)) ^ n) G hG hpos (fun H hH hHpos => hDet n H hH hHpos)
  refine ⟨ρsq, hleast, ?_, P, hP, hent, ?_⟩
  · push_cast; linarith
  · calc (symplGram P G).toBlocks₁₁.det ≤ ρsq * (2 * (n : ℝ)) ^ n := hdet
      _ ≤ ρsq * (2 * ((n + 1 : ℕ) : ℝ)) ^ (n + 1 - 1) := by
        rw [Nat.add_sub_cancel]
        apply mul_le_mul_of_nonneg_left _ hρ.le
        apply pow_le_pow_left₀ (by positivity)
        push_cast; linarith

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTop =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTwoRow =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTwoRow", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Matrix

namespace PSymplTwoRow

def twoBlock (n : ℕ) (a b r s : ℤ) : Matrix (Fin (n + 1 + 1)) (Fin (n + 1 + 1)) ℤ :=
  Matrix.of (vecCons (vecCons a (vecCons b 0))
    (vecCons (vecCons (-s) (vecCons r 0)) fun k => vecCons 0 (vecCons 0 (Pi.single k 1))))

theorem twoBlock_mul_transpose {n : ℕ} {c d x y : ℤ} (h : x * c + y * d = 1) :
    twoBlock n c d x y * (twoBlock n x y c d)ᵀ = 1 := by
  ext i j
  rw [Matrix.mul_apply]
  refine Fin.cases ?_ (fun i => Fin.cases ?_ (fun i => ?_) i) i <;>
  refine Fin.cases ?_ (fun j => Fin.cases ?_ (fun j => ?_) j) j <;>
  simp [twoBlock, Fin.sum_univ_succ, Matrix.one_apply, Pi.single_apply] <;>
  first | linarith | (split_ifs <;> simp_all [Fin.ext_iff]) | simp [Fin.ext_iff]

end PSymplTwoRow


open PSymplTwoRow in
theorem SymplTwoRow.proof : SymplTwoRow.Statement := by
  intro n c d x y h
  refine ⟨fromBlocks (twoBlock n c d x y) 0 0 (twoBlock n x y c d), ?_, ?_⟩
  · rw [SymplecticGroup.mem_iff]
    have h1 := twoBlock_mul_transpose (n := n) h
    have h2 : twoBlock n x y c d * (twoBlock n c d x y)ᵀ = 1 := by
      rw [← transpose_transpose (twoBlock n x y c d), ← transpose_mul, h1, transpose_one]
    simp [J, fromBlocks_transpose, fromBlocks_multiply, h1, h2]
  · funext z
    rcases z with i | i
    · refine Fin.cases ?_ (fun i => Fin.cases ?_ (fun i => ?_) i) i <;>
        simp [symplCons, twoBlock]
    · refine Fin.cases ?_ (fun i => Fin.cases ?_ (fun i => ?_) i) i <;>
        simp [symplCons]

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTwoRow =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.AssemblySympl =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HeightKernels.AssemblySympl", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.StatementsSympl\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplBoxVolume\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplCons\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetBound\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplDetSchur\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtMem\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplExtVecMul\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplFirstRow\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGcd\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplGramMem\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinBound\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinExists\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplMinkowskiBox\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOmegaMem\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplOrbit\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplQuadDiag\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceConj\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceMem\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReducePosDef\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplReduceStep\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplShortPrim\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplStep\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTop\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PSymplTwoRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

alias SymplOmegaMem.full := _root_.GroundTheory.Heights₂.Heights.SymplOmegaMem.proof

alias SymplCons.full := _root_.GroundTheory.Heights₂.Heights.SymplCons.proof

alias SymplExtVecMul.full := _root_.GroundTheory.Heights₂.Heights.SymplExtVecMul.proof

alias SymplTwoRow.full := _root_.GroundTheory.Heights₂.Heights.SymplTwoRow.proof

alias SymplGcd.full := _root_.GroundTheory.Heights₂.Heights.SymplGcd.proof

alias SymplQuadDiag.full := _root_.GroundTheory.Heights₂.Heights.SymplQuadDiag.proof

alias SymplBoxVolume.full := _root_.GroundTheory.Heights₂.Heights.SymplBoxVolume.proof

alias SymplShortPrim.full := _root_.GroundTheory.Heights₂.Heights.SymplShortPrim.proof

alias SymplGramMem.full := _root_.GroundTheory.Heights₂.Heights.SymplGramMem.proof

alias SymplReducePosDef.full := _root_.GroundTheory.Heights₂.Heights.SymplReducePosDef.proof

alias SymplReduceConj.full := _root_.GroundTheory.Heights₂.Heights.SymplReduceConj.proof

alias SymplDetSchur.full := _root_.GroundTheory.Heights₂.Heights.SymplDetSchur.proof

theorem SymplExtMem.full : SymplExtMem.Statement :=
  SymplExtMem.proof SymplOmegaMem.full SymplCons.full

theorem SymplMinkowskiBox.full : SymplMinkowskiBox.Statement :=
  SymplMinkowskiBox.proof SymplBoxVolume.full

theorem SymplMinExists.full : SymplMinExists.Statement :=
  SymplMinExists.proof SymplQuadDiag.full

theorem SymplReduceMem.full : SymplReduceMem.Statement :=
  SymplReduceMem.proof SymplOmegaMem.full SymplCons.full

theorem SymplOrbit.full : SymplOrbit.Statement :=
  SymplOrbit.proof SymplExtMem.full SymplExtVecMul.full SymplTwoRow.full SymplGcd.full SymplCons.full

theorem SymplMinBound.full : SymplMinBound.Statement :=
  SymplMinBound.proof SymplQuadDiag.full SymplMinkowskiBox.full

theorem SymplReduceStep.full : SymplReduceStep.Statement :=
  SymplReduceStep.proof SymplExtMem.full SymplReduceConj.full SymplDetSchur.full

theorem SymplFirstRow.full : SymplFirstRow.Statement :=
  SymplFirstRow.proof SymplMinExists.full SymplMinBound.full SymplOrbit.full SymplShortPrim.full SymplGramMem.full

theorem SymplStep.full : SymplStep.Statement :=
  SymplStep.proof SymplFirstRow.full SymplGramMem.full SymplReduceMem.full SymplReducePosDef.full SymplReduceStep.full

theorem SymplDetBound.full : SymplDetBound.Statement :=
  SymplDetBound.proof SymplStep.full

theorem SymplecticReduction.full : SymplecticReduction.Statement :=
  SymplecticReduction.proof SymplStep.full SymplDetBound.full

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HeightKernels.AssemblySympl =====
