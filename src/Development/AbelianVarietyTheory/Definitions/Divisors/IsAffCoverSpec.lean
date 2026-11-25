module

public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsTypeIsRealConst
public import Mathlib.Tactic.Polynomial.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFormsMulClosed
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DelDbarAdditiveComplexLinearOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DelOperatorAtDbarOperatorAtLeibnizOfCommute
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolAtlasIsFormDelDbarSmooth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolAtlasIsFormPullbackHolomorphic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFormOneAddMulSmul
public import Mathlib.Geometry.Euclidean.Projection
public import Development.AbelianVarietyTheory.Definitions.Divisors.CupPair
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Basify
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
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Star.Int
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPreservesFormType, Development.AbelianVarietyTheory.Proofs.SatakeParameters.BasSingleMulSelf, Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTorusActionRot, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DifferentiableAtDirD, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExactFormsLeClosedForms, Development.AbelianVarietyTheory.Definitions.Divisors.IsAffCoverSpec

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPreservesFormType =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPreservesFormType", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsTypeIsRealConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.CxForm
open ReciprocityTheory.L2DbarEstimates (V)
open scoped ComplexConjugate

namespace GlobalTheory.CxForm.PullType

variable {n m : ℕ}

def scale (n : ℕ) (s t : ℂ) : Alt n →ₐ[ℂ] Alt n :=
  ExteriorAlgebra.map (Matrix.toLin' (Matrix.fromBlocks (s • 1) 0 0 (t • 1)))

theorem scale_single (s t : ℂ) (i : Fin (n + n)) :
    scale n s t (bas n {i}) = (if i.val < n then s else t) • bas n {i} := by
  obtain ⟨i, rfl⟩ := finSumFinEquiv.surjective i
  rw [bas_singleton, ← map_smul]
  refine (ExteriorAlgebra.map_apply_ι _ _).trans (congrArg _ (funext ?_))
  rcases i with i | i <;> rintro (b | b) <;> simp [Pi.single_apply, Matrix.one_apply]

theorem scale_bas (s t : ℂ) (S : Finset (Fin (n + n))) :
    scale n s t (bas n S) = (s ^ (S.filter (·.val < n)).card * t ^ (S.filter (n ≤ ·.val)).card) • bas n S := by
  induction S using Finset.induction_on with
  | empty => simp [bas_empty]
  | insert a S ha ih =>
    obtain ⟨ε, h⟩ := bas_mul (n := n) (S := {a}) (T := S) (by simpa using ha)
    have h' : bas n (insert a S) = ε • (bas n {a} * bas n S) := by
      rw [h, smul_smul, Int.units_mul_self, one_smul, Finset.insert_eq]
    rw [h', Units.smul_def, map_zsmul, map_mul, scale_single, ih, smul_mul_smul_comm, smul_comm]
    congr 1
    rw [Finset.filter_insert, Finset.filter_insert]
    by_cases hn : a.val < n
    · rw [if_pos hn, if_pos hn, if_neg (not_le.2 hn), Finset.card_insert_of_notMem (by simp [ha])]
      ring
    · rw [if_neg hn, if_neg hn, if_pos (not_lt.1 hn), Finset.card_insert_of_notMem (by simp [ha])]
      ring

theorem repr_scale (s t : ℂ) (α : Alt n) (S : Finset (Fin (n + n))) :
    (bas n).repr (scale n s t α) S =
      (s ^ (S.filter (·.val < n)).card * t ^ (S.filter (n ≤ ·.val)).card) * (bas n).repr α S := by
  conv_lhs => rw [← (bas n).sum_repr α]

  simp only [map_sum, map_smul, scale_bas, Module.Basis.repr_self, Finsupp.finsetSum_apply, Finsupp.smul_apply,
  Finsupp.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  ring

theorem scale_pull (L : V n →L[ℂ] V m) (s t : ℂ) (α : Alt m) :
    scale n s t (pull L α) = pull L (scale m s t α) := by
  rw [← AlgHom.comp_apply, ← AlgHom.comp_apply, scale, scale, pull, ExteriorAlgebra.map_comp_map,
    ExteriorAlgebra.map_comp_map, ← Matrix.toLin'_mul, ← Matrix.toLin'_mul]
  simp [Matrix.fromBlocks_multiply]

end GlobalTheory.CxForm.PullType

namespace GlobalTheory.CxForm

end GlobalTheory.CxForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPreservesFormType =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BasSingleMulSelf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.BasSingleMulSelf", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsTypeIsRealConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open ReciprocityTheory.L2DbarEstimates (V)
open scoped ContDiff

namespace GlobalTheory.CxForm

end GlobalTheory.CxForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BasSingleMulSelf =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTorusActionRot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTorusActionRot", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsTypeIsRealConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open ReciprocityTheory.L2DbarEstimates (V)
open scoped ContDiff

namespace GlobalTheory.CxForm.HolAtlas

variable {M : Type} [TopologicalSpace M] {n k : ℕ} (A : HolAtlas M n)

end GlobalTheory.CxForm.HolAtlas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTorusActionRot =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DifferentiableAtDirD =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DifferentiableAtDirD", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPreservesFormType\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BasSingleMulSelf\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTorusActionRot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFormsMulClosed\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DelDbarAdditiveComplexLinearOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DelOperatorAtDbarOperatorAtLeibnizOfCommute\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolAtlasIsFormDelDbarSmooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolAtlasIsFormPullbackHolomorphic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFormOneAddMulSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.GoodMetric (coordVec)
open ReciprocityTheory.L2DbarEstimates (V)
open scoped ContDiff Topology

namespace GlobalTheory.CxForm

section Point

variable {n m : ℕ}

def par (n : ℕ) : Alt n →ₐ[ℂ] Alt n := PullType.scale n (-1) (-1)

def HasDeg (k : ℕ) (α : Alt n) : Prop := ∀ S, (bas n).repr α S ≠ 0 → S.card = k

def degPart (n k : ℕ) : Alt n →ₗ[ℂ] Alt n := (bas n).constr ℂ fun S => if S.card = k then bas n S else 0

theorem repr_scale_self (t : ℂ) (α : Alt n) (S : Finset (Fin (n + n))) :
    (bas n).repr (PullType.scale n t t α) S = t ^ S.card * (bas n).repr α S := by
  rw [PullType.repr_scale, ← pow_add, ← Finset.card_filter_add_card_filter_not (s := S) (·.val < n)]
  simp only [not_lt]

theorem hasDeg_iff_scale (k : ℕ) (α : Alt n) : HasDeg k α ↔ PullType.scale n 2 2 α = (2 : ℂ) ^ k • α := by
  constructor
  · intro h
    refine (bas n).ext_elem fun S => ?_
    rw [repr_scale_self, map_smul, Finsupp.smul_apply, smul_eq_mul]
    by_cases hS : (bas n).repr α S = 0
    · simp [hS]
    · rw [h S hS]
  · intro h S hS
    have e := congrArg (fun β => (bas n).repr β S) h
    simp only [repr_scale_self, map_smul, Finsupp.smul_apply, smul_eq_mul] at e
    have : (2 : ℕ) ^ S.card = 2 ^ k := by exact_mod_cast mul_right_cancel₀ hS e
    exact Nat.pow_right_injective le_rfl this

theorem HasDeg.mul {k l : ℕ} {α β : Alt n} (hα : HasDeg k α) (hβ : HasDeg l β) : HasDeg (k + l) (α * β) := by
  rw [hasDeg_iff_scale] at hα hβ ⊢
  rw [map_mul, hα, hβ, smul_mul_smul_comm, pow_add]

theorem HasDeg.zero (k : ℕ) : HasDeg k (0 : Alt n) := fun S h => by simp at h

theorem HasDeg.add {k : ℕ} {α β : Alt n} (hα : HasDeg k α) (hβ : HasDeg k β) : HasDeg k (α + β) := by
  rw [hasDeg_iff_scale] at hα hβ ⊢
  rw [map_add (f := _), hα, hβ, smul_add]

theorem HasDeg.smul {k : ℕ} {α : Alt n} (c : ℂ) (hα : HasDeg k α) : HasDeg k (c • α) := by
  rw [hasDeg_iff_scale] at hα ⊢
  rw [map_smul, hα, smul_comm]

theorem HasDeg.sum {k : ℕ} {ι : Type} {t : Finset ι} {α : ι → Alt n} (h : ∀ i ∈ t, HasDeg k (α i)) :
    HasDeg k (∑ i ∈ t, α i) :=
  Finset.sum_induction _ _ (fun _ _ => HasDeg.add) (.zero k) h

theorem HasDeg.pull {k : ℕ} {α : Alt m} (L : V n →L[ℂ] V m) (hα : HasDeg k α) : HasDeg k (pull L α) := by
  rw [hasDeg_iff_scale] at hα ⊢
  rw [PullType.scale_pull, hα, map_smul]

theorem hasDeg_bas (S : Finset (Fin (n + n))) : HasDeg S.card (bas n S) := fun T hT => by
  rw [Module.Basis.repr_self, Finsupp.single_apply] at hT
  split_ifs at hT with h
  exacts [h ▸ rfl, (hT rfl).elim]

theorem hasDeg_algebraMap (c : ℂ) : HasDeg 0 (algebraMap ℂ (Alt n) c) := by
  rw [hasDeg_iff_scale, AlgHom.commutes, pow_zero, one_smul]

theorem scale_ι (t : ℂ) (u : Fin n ⊕ Fin n → ℂ) :
    PullType.scale n t t (ExteriorAlgebra.ι ℂ u) = t • ExteriorAlgebra.ι ℂ u := by
  rw [← map_smul]
  refine (ExteriorAlgebra.map_apply_ι _ _).trans (congrArg _ ?_)
  rw [← smul_zero t, ← Matrix.fromBlocks_smul, Matrix.fromBlocks_one]
  simp

theorem hasDeg_ι (u : Fin n ⊕ Fin n → ℂ) : HasDeg 1 (ExteriorAlgebra.ι ℂ u) := by
  rw [hasDeg_iff_scale, scale_ι, pow_one]

theorem hasDeg_iff_mem (k : ℕ) (α : Alt n) : HasDeg k α ↔ α ∈ ⋀[ℂ]^k (Fin n ⊕ Fin n → ℂ) := by
  constructor
  · intro h
    rw [← (bas n).sum_repr α]
    refine Submodule.sum_mem _ fun S _ => ?_
    by_cases hS : (bas n).repr α S = 0
    · simp [hS]
    · refine Submodule.smul_mem _ _ ?_
      rw [← h S hS, bas, ExteriorAlgebra.basis_apply]
      exact ExteriorAlgebra.ιMulti_range _ _ ⟨_, rfl⟩
  · intro h
    induction h using Submodule.pow_induction_on_left' with
    | algebraMap r => exact hasDeg_algebraMap r
    | add x y i _ _ hx hy => exact hx.add hy
    | mem_mul u hu i x _ hx =>
      obtain ⟨u, rfl⟩ := hu
      rw [Nat.succ_eq_one_add]
      exact (hasDeg_ι u).mul hx

theorem repr_degPart (k : ℕ) (α : Alt n) (S : Finset (Fin (n + n))) :
    (bas n).repr (degPart n k α) S = if S.card = k then (bas n).repr α S else 0 := by
  conv_lhs => rw [← (bas n).sum_repr α]

  simp only [map_sum, map_smul, degPart, Module.Basis.constr_basis, Finsupp.finsetSum_apply, Finsupp.smul_apply]
  rw [Finset.sum_eq_single S (fun T _ h => by split_ifs <;> simp [h]) (by simp)]
  split_ifs <;> simp

theorem HasDeg.degPart_eq {j : ℕ} {α : Alt n} (h : HasDeg j α) (k : ℕ) : degPart n k α = if j = k then α else 0 := by
  refine (bas n).ext_elem fun S => ?_
  rw [repr_degPart]
  by_cases hS : (bas n).repr α S = 0
  · split_ifs <;> simp [hS]
  · rw [h S hS]
    split_ifs <;> simp

theorem degPart_pull (L : V n →L[ℂ] V m) (k : ℕ) (α : Alt m) : degPart n k (pull L α) = pull L (degPart m k α) := by
  have : degPart n k ∘ₗ (pull L).toLinearMap = (pull L).toLinearMap ∘ₗ degPart m k := (bas m).ext fun S => by
    simp only [LinearMap.comp_apply, AlgHom.toLinearMap_apply]
    rw [((hasDeg_bas S).pull L).degPart_eq, (hasDeg_bas S).degPart_eq, apply_ite (pull L), map_zero]
  exact LinearMap.congr_fun this α

theorem par_ι (u : Fin n ⊕ Fin n → ℂ) : par n (ExteriorAlgebra.ι ℂ u) = -ExteriorAlgebra.ι ℂ u := by
  rw [par, scale_ι, neg_one_smul]

theorem HasDeg.par_eq {k : ℕ} {α : Alt n} (h : HasDeg k α) : par n α = (-1 : ℂ) ^ k • α := by
  refine (bas n).ext_elem fun S => ?_
  rw [par, repr_scale_self, map_smul, Finsupp.smul_apply, smul_eq_mul]
  by_cases hS : (bas n).repr α S = 0
  · simp [hS]
  · rw [h S hS]

theorem ι_mul_eq (u : Fin n ⊕ Fin n → ℂ) (α : Alt n) :
    ExteriorAlgebra.ι ℂ u * α = par n α * ExteriorAlgebra.ι ℂ u := by
  induction α using ExteriorAlgebra.induction with
  | algebraMap r => rw [AlgHom.commutes, Algebra.commutes]
  | ι x => rw [par_ι, neg_mul]; exact eq_neg_of_add_eq_zero_left (ExteriorAlgebra.ι_add_mul_swap u x)
  | mul a b ha hb => rw [← mul_assoc, ha, mul_assoc, hb, map_mul, mul_assoc]
  | add a b ha hb => rw [mul_add, ha, hb, map_add (f := _), add_mul]

theorem HasDeg.mul_comm {k l : ℕ} {α β : Alt n} (hα : HasDeg k α) (hβ : HasDeg l β) :
    α * β = (-1 : ℂ) ^ (k * l) • (β * α) := by
  rw [hasDeg_iff_mem] at hα
  induction hα using Submodule.pow_induction_on_left' with
  | algebraMap r => rw [zero_mul, pow_zero, one_smul, Algebra.commutes]
  | add x y i _ _ hx hy => rw [add_mul, mul_add, hx, hy, smul_add]
  | mem_mul u hu i x _ hx =>
    obtain ⟨u, rfl⟩ := hu
    rw [mul_assoc, hx, mul_smul_comm, ← mul_assoc, ι_mul_eq, hβ.par_eq, smul_mul_assoc, smul_mul_assoc, smul_smul,
      ← pow_add, mul_assoc, Nat.succ_mul]

end Point

section Coord

variable {n : ℕ} {v : V n}

def dirD (i : Fin n ⊕ Fin n) (f : V n → ℂ) (v : V n) : ℂ :=
  match i with
  | .inl a => del f v (coordVec a)
  | .inr a => dbar f v (coordVec a)

def opAt (s : Fin n → Fin n ⊕ Fin n) (F : V n → Alt n) (v : V n) : Alt n :=
  ∑ a, ExteriorAlgebra.ι ℂ (Pi.single (s a) 1) * coefwise (fun f => dirD (s a) f v) F

theorem dirD_zero (i : Fin n ⊕ Fin n) : dirD i (fun _ => 0) v = 0 := by
  rcases i with a | a <;> simp [dirD]

theorem repr_linear (L : Alt n →ₗ[ℂ] Alt n) (α : Alt n) (S : Finset (Fin (n + n))) :
    (bas n).repr (L α) S = ∑ T, (bas n).repr (L (bas n T)) S • (bas n).repr α T := by
  conv_lhs => rw [← (bas n).sum_repr α]

  simp only [map_sum, map_smul, Finsupp.finsetSum_apply, Finsupp.smul_apply, smul_eq_mul, mul_comm]

theorem hasDeg_opAt (s : Fin n → Fin n ⊕ Fin n) {k : ℕ} {F : V n → Alt n} (hF : ∀ x, HasDeg k (F x)) :
    HasDeg (k + 1) (opAt s F v) := by
  refine HasDeg.sum fun a _ => add_comm 1 k ▸ (hasDeg_ι _).mul fun S hS => ?_
  by_contra h
  have : (fun x => (bas n).repr (F x) S) = fun _ => 0 := funext fun x => by
    by_contra h'
    exact h (hF x S h')
  rw [FormMul.repr_coefwise, this, dirD_zero] at hS
  exact hS rfl

end Coord

namespace HolAtlas

variable {M M' M'' : Type} [TopologicalSpace M] [TopologicalSpace M'] [TopologicalSpace M''] {n n' n'' : ℕ}
  (A : HolAtlas M n) (A' : HolAtlas M' n') (A'' : HolAtlas M'' n'')

def dExt (α : A.Fld) : A.Fld := A.del α + A.dbar α

def IsDeg (k : ℕ) (α : A.Fld) : Prop := ∀ x, HasDeg k (α x)

def degFld (k : ℕ) : A.Fld →ₗ[ℂ] A.Fld := (degPart n k).compLeft A.Pt

@[simp] theorem degFld_apply (k : ℕ) (α : A.Fld) (x : A.Pt) : A.degFld k α x = degPart n k (α x) := rfl

def forms : Subalgebra ℂ A.Fld where
  carrier := {α | A.IsForm α}
  mul_mem' ha hb := ((isForm_algebra M n A).2 1 _ _ ha hb).2.1
  add_mem' ha hb := ((isForm_algebra M n A).2 1 _ _ ha hb).1
  algebraMap_mem' c := by
    rw [Algebra.algebraMap_eq_smul_one]
    exact ((isForm_algebra M n A).2 c _ _ (isForm_algebra M n A).1 (isForm_algebra M n A).1).2.2


variable {A}

theorem loc_linear (L : Alt n →ₗ[ℂ] Alt n) (α : A.Fld) (i : A.ι) :
    A.loc (fun x => L (α x)) i = fun v => L (A.loc α i v) := by
  funext v
  unfold loc
  split_ifs
  exacts [rfl, (map_zero L).symm]

theorem IsForm.linear {α : A.Fld} (hα : A.IsForm α) (L : Alt n →ₗ[ℂ] Alt n)
    (hL : ∀ (T : V n →L[ℂ] V n) (β : Alt n), L (pull T β) = pull T (L β)) : A.IsForm fun x => L (α x) := by
  refine ⟨fun i S => ?_, fun x x' h => by rw [hα.compat x x' h, hL]⟩
  simp only [loc_linear, repr_linear L (A.loc α i _)]
  exact ContDiffOn.sum fun T _ => (hα.smooth i T).const_smul _

theorem IsForm.degFld {α : A.Fld} (hα : A.IsForm α) (k : ℕ) : A.IsForm (A.degFld k α) :=
  hα.linear (degPart n k) fun T β => degPart_pull T k β

theorem IsForm.dExt {α : A.Fld} (hα : A.IsForm α) : A.IsForm (A.dExt α) :=
  A.forms.add_mem (A.isForm_del_dbar hα).1 (A.isForm_del_dbar hα).2

theorem dExt_add {α β : A.Fld} (hα : A.IsForm α) (hβ : A.IsForm β) : A.dExt (α + β) = A.dExt α + A.dExt β := by
  obtain ⟨h₁, h₂, -, -⟩ := (del_dbar_linear M n A).2 1 α β hα hβ
  rw [dExt, h₁, h₂, add_add_add_comm]
  rfl

theorem dExt_smul (c : ℂ) {α : A.Fld} (hα : A.IsForm α) : A.dExt (c • α) = c • A.dExt α := by
  obtain ⟨-, -, h₁, h₂⟩ := (del_dbar_linear M n A).2 c α α hα hα
  rw [dExt, h₁, h₂, ← smul_add]
  rfl


variable (A) in
def dForms : A.forms →ₗ[ℂ] A.forms where
  toFun α := ⟨A.dExt α, IsForm.dExt α.2⟩
  map_add' α β := Subtype.ext (dExt_add α.2 β.2)
  map_smul' c α := Subtype.ext (dExt_smul c α.2)



variable (A) in
@[simp] theorem dExt_zero : A.dExt 0 = 0 := congrArg Subtype.val (map_zero A.dForms)



theorem loc_prop {P : Alt n → Prop} (h₀ : P 0) {α : A.Fld} (hα : ∀ x, P (α x)) (i : A.ι) (v : V n) : P (A.loc α i v) := by
  unfold loc
  split_ifs
  exacts [hα _, h₀]

theorem IsDeg.dExt {k : ℕ} {α : A.Fld} (hα : A.IsDeg k α) : A.IsDeg (k + 1) (A.dExt α) := fun x =>
  (hasDeg_opAt .inl (loc_prop (.zero k) hα x.1.1)).add (hasDeg_opAt .inr (loc_prop (.zero k) hα x.1.1))

theorem IsDeg.mul {k l : ℕ} {α β : A.Fld} (hα : A.IsDeg k α) (hβ : A.IsDeg l β) : A.IsDeg (k + l) (α * β) :=
  fun x => (hα x).mul (hβ x)

theorem IsDeg.mul_comm {k l : ℕ} {α β : A.Fld} (hα : A.IsDeg k α) (hβ : A.IsDeg l β) :
    α * β = (-1 : ℂ) ^ (k * l) • (β * α) :=
  funext fun x => (hα x).mul_comm (hβ x)

variable {A' A''}


theorem IsForm.pullback {f : M' → M} (hf : A.IsHolo A' f) {α : A.Fld} (hα : A.IsForm α) : A'.IsForm (A.pullback A' f α) :=
  PullbackForm.isForm_pullback M M' n n' A A' f α hf hα

end HolAtlas

end GlobalTheory.CxForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DifferentiableAtDirD =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExactFormsLeClosedForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExactFormsLeClosedForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DifferentiableAtDirD\npublic import Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Geometry.Euclidean.Projection\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.L2DbarEstimates (V)
open scoped ContDiff

namespace GlobalTheory.CxForm.HolAtlas

variable {M M' M'' : Type} [TopologicalSpace M] [TopologicalSpace M'] [TopologicalSpace M''] {n n' n'' : ℕ}
  (A : HolAtlas M n) (A' : HolAtlas M' n') (A'' : HolAtlas M'' n'')

def closedForms (k : ℕ) : Submodule ℂ A.Fld where
  carrier := {α | A.IsForm α ∧ A.IsDeg k α ∧ A.dExt α = 0}
  add_mem' := by
    intro α β ha hb
    have hForm : A.IsForm (α + β) := by
      refine ⟨fun i S => ?_, fun x x' h => ?_⟩
      · exact ((ha.1.smooth i S).add (hb.1.smooth i S)).congr fun v hv => by
          have hLoc : A.loc (α + β) i v = A.loc α i v + A.loc β i v := by
            simp only [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_add (f := _), Finsupp.add_apply]
      · change α x + β x = pull _ (α x' + β x')
        rw [map_add (f := _), ← ha.1.compat x x' h, ← hb.1.compat x x' h]
    exact ⟨hForm, fun x => (ha.2.1 x).add (hb.2.1 x),
      by rw [dExt_add ha.1 hb.1, ha.2.2, hb.2.2, add_zero]⟩
  zero_mem' := by
    have hForm : A.IsForm 0 := by
      refine ⟨fun i S => ?_, fun x x' _ => ?_⟩
      · exact (contDiffOn_const (c := (0 : ℂ))).congr fun v hv => by
          have hLoc : A.loc 0 i v = 0 := by
            rw [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_zero, Finsupp.zero_apply]
      · change (0 : Alt n) = pull _ 0
        rw [map_zero]
    exact ⟨hForm, fun _ => .zero k, A.dExt_zero⟩
  smul_mem' c α ha := by
    have hForm : A.IsForm (c • α) := by
      refine ⟨fun i S => ?_, fun x x' h => ?_⟩
      · exact ((ha.1.smooth i S).const_smul c).congr fun v hv => by
          have hLoc : A.loc (c • α) i v = c • A.loc α i v := by
            simp only [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_smul, Finsupp.smul_apply, smul_eq_mul]
      · change c • α x = pull _ (c • α x')
        rw [map_smul, ← ha.1.compat x x' h]
    exact ⟨hForm, fun x => (ha.2.1 x).smul c, by rw [dExt_smul c ha.1, ha.2.2, smul_zero]⟩

def exactForms (k : ℕ) : Submodule ℂ A.Fld where
  carrier := {α | A.IsDeg k α ∧ ∃ η, A.IsForm η ∧ α = A.dExt η}
  add_mem' ha hb := by
    obtain ⟨h₁, η, hη, rfl⟩ := ha
    obtain ⟨h₂, η', hη', rfl⟩ := hb
    have hForm : A.IsForm (η + η') := by
      refine ⟨fun i S => ?_, fun x x' h => ?_⟩
      · exact ((hη.smooth i S).add (hη'.smooth i S)).congr fun v hv => by
          have hLoc : A.loc (η + η') i v = A.loc η i v + A.loc η' i v := by
            simp only [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_add (f := _), Finsupp.add_apply]
      · change η x + η' x = pull _ (η x' + η' x')
        rw [map_add (f := _), ← hη.compat x x' h, ← hη'.compat x x' h]
    exact ⟨fun x => (h₁ x).add (h₂ x), η + η', hForm, (dExt_add hη hη').symm⟩
  zero_mem' := by
    have hForm : A.IsForm 0 := by
      refine ⟨fun i S => ?_, fun x x' _ => ?_⟩
      · exact (contDiffOn_const (c := (0 : ℂ))).congr fun v hv => by
          have hLoc : A.loc 0 i v = 0 := by
            rw [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_zero, Finsupp.zero_apply]
      · change (0 : Alt n) = pull _ 0
        rw [map_zero]
    exact ⟨fun _ => .zero k, 0, hForm, A.dExt_zero.symm⟩
  smul_mem' c _ ha := by
    obtain ⟨h₁, η, hη, rfl⟩ := ha
    have hForm : A.IsForm (c • η) := by
      refine ⟨fun i S => ?_, fun x x' h => ?_⟩
      · exact ((hη.smooth i S).const_smul c).congr fun v hv => by
          have hLoc : A.loc (c • η) i v = c • A.loc η i v := by
            simp only [loc, dite_eq_left hv]
            rfl
          rw [hLoc, map_smul, Finsupp.smul_apply, smul_eq_mul]
      · change c • η x = pull _ (c • η x')
        rw [map_smul, ← hη.compat x x' h]
    exact ⟨fun x => (h₁ x).smul c, c • η, hForm, (dExt_smul c hη).symm⟩

variable {A}



variable (A) in
def HSm (k : ℕ) : Type := A.closedForms k ⧸ (A.exactForms k).submoduleOf (A.closedForms k)

instance (k : ℕ) : AddCommGroup (A.HSm k) := inferInstanceAs (AddCommGroup (_ ⧸ _))

instance (k : ℕ) : Module ℂ (A.HSm k) := inferInstanceAs (Module ℂ (_ ⧸ _))

namespace HSm


variable (A) in
def mk (k : ℕ) : A.closedForms k →ₗ[ℂ] A.HSm k := Submodule.mkQ _

theorem mk_surjective (k : ℕ) : Function.Surjective (mk A k) := Submodule.mkQ_surjective _

@[elab_as_elim] theorem induction_on {k : ℕ} {P : A.HSm k → Prop} (c : A.HSm k) (h : ∀ α, P (mk A k α)) : P c := by
  obtain ⟨α, rfl⟩ := mk_surjective k c
  exact h α








variable {A'}

end HSm

end GlobalTheory.CxForm.HolAtlas

namespace GlobalTheory.CxForm.HolAtlas

open GlobalTheory.GoodMetric (coordVec)

end GlobalTheory.CxForm.HolAtlas

namespace GlobalTheory.CxForm

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {k k' : Type} [CommRing k] [CommRing k'] {X Y : Scheme.{0}}

end GlobalTheory.CxForm

namespace GlobalTheory.CxForm.HolAtlas

end GlobalTheory.CxForm.HolAtlas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExactFormsLeClosedForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.IsAffCoverSpec =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.IsAffCoverSpec", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExactFormsLeClosedForms\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CupPair\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFormOneAddMulSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry KaehlerDifferential GlobalTheory.CechDR GlobalTheory.CxForm GlobalTheory.CxPts
open ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped ContDiff

namespace GlobalTheory.PD

section Smooth

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

abbrev smForms : Subalgebra ℂ A.Fld := A.forms

abbrev dL : smForms A →ₗ[ℂ] smForms A := A.dForms

def filAt (n p : ℕ) (m : ℤ) : Submodule ℂ (Alt n) :=
  ⨅ T ∈ {T : Finset (Fin (n + n)) | ¬ ((T.card : ℤ) = m ∧ p ≤ (T.filter (·.val < n)).card)}, LinearMap.ker ((bas n).coord T)

def smCx (p : ℕ) : Cx ℂ (smForms A) :=
  ⟨fun m => ⨅ x : A.Pt, (filAt n p m).comap ((LinearMap.proj x : A.Fld →ₗ[ℂ] Alt n) ∘ₗ (smForms A).val.toLinearMap), dL A⟩

abbrev HSm (m : ℤ) : Type := (smCx A 0).H m

structure FormOn (S : Set M) (α : A.Fld) : Prop where
  smooth : ∀ i T, ContDiffOn ℝ ∞ (fun v => (bas n).repr (A.loc α i v) T) ((A.e i).target ∩ (A.e i).symm ⁻¹' S)
  compat : ∀ x x' : A.Pt, x.pt ∈ S → x.pt = x'.pt → α x = pull (fderiv ℂ (x'.ch ∘ x.ch.symm) x.crd) (α x')

variable {ι : Type} [LinearOrder ι]

end Smooth

section Scheme

variable {k : Type} [Field k] {X : Scheme.{0}} (p : X ⟶ Sp k) (σ : k →+* ℂ) (d : ℕ)

variable [IsIntegral X]

@[reducible] def ffAlg : Algebra k X.functionField :=
  ((X.presheaf.germ ⊤ (genericPoint X) trivial).hom.comp (p.appTop.hom.comp (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom)).toAlgebra

variable [Algebra k X.functionField]


omit σ in
structure IsAffCover {ι : Type} (U : ι → X.Opens) (B : Finset ι → Subalgebra k X.functionField) : Prop where
  alg : algebraMap k X.functionField = @algebraMap k X.functionField _ _ (ffAlg p)
  affine : ∀ I : Finset ι, I.Nonempty → IsAffineOpen (I.inf U)
  cover : iSup U = ⊤
  ne : ∀ I : Finset ι, genericPoint X ∈ I.inf U
  ring : ∀ I : Finset ι, I.Nonempty → ∀ y, y ∈ B I ↔ ∃ f : Γ(X, I.inf U), (X.presheaf.germ (I.inf U) (genericPoint X) (ne I)).hom f = y

end Scheme

section Compare

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

variable {A}

variable (A)

end Compare

section Basic₂

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

end Basic₂

section Inhab

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

theorem FormOn.of_isForm {α : A.Fld} (h : A.IsForm α) (S : Set M) : FormOn A S α := by
  refine ⟨?_, ?_⟩
  · intro i T
    exact (h.smooth i T).mono Set.inter_subset_left
  · intro x x' _ hx
    exact h.compat x x' hx

theorem FormOn.zero (S : Set M) : FormOn A S 0 := by
  have h := (HolAtlas.isForm_algebra M n A).1
  have h0 := ((HolAtlas.isForm_algebra M n A).2 0 1 1 h h).2.2
  rw [zero_smul] at h0
  exact FormOn.of_isForm A h0 S

end Inhab

end GlobalTheory.PD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.IsAffCoverSpec =====
