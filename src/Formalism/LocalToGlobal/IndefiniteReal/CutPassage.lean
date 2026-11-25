module

public import Formalism.LocalToGlobal.IndefiniteReal.HeckeTupleStatement
public import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2
public import Formalism.LocalToGlobal.IndefiniteReal.CxLemmas
public import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.ValBasic
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.IndefiniteReal.NonGenericAndKTwoTheorems, Formalism.LocalToGlobal.IndefiniteReal.CutPassage

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.NonGenericAndKTwoTheorems =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.NonGenericAndKTwoTheorems", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.HeckeTupleStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.IndefR.NonGenericAndKTwoTheorems

open NumberField IsDedekindDomain
open Formalism.DivisionValues Formalism.L2.Indef Formalism.IndefR.HeckeTupleConditions

theorem hecke_tuple_condition : UntwistedOfSupportAtTwistedPlaces := by
  intro K _ _ _ Bs Df S N h1 h2 w hw j
  have hμ : S.μ w = Bs.μ0 := by
    by_contra h
    exact hw ((h2 w).2 h)
  have hA : S.Aw j w = Atup S j Bs.μ0 w := by rw [← hμ]; rfl
  by_contra hc
  apply h1 w _ hμ
  refine ⟨j, ?_⟩
  by_cases hF : N.F0 w j = 0
  · left
    intro h0
    exact hc ⟨hA.trans h0, hF⟩
  · exact Or.inr hF

end Formalism.IndefR.NonGenericAndKTwoTheorems
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.NonGenericAndKTwoTheorems =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.CutPassage =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.CutPassage", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2\npublic import Formalism.LocalToGlobal.IndefiniteReal.HeckeTupleStatement\npublic import Formalism.LocalToGlobal.IndefiniteReal.CxLemmas\npublic import Formalism.LocalToGlobal.IndefiniteReal.NonGenericAndKTwoTheorems\npublic import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.ValBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV

variable {K : Type} [Field K] [NumberField K] [StarRing K]

namespace CxData

theorem rinv_spec {d n : ℕ} (P : Matrix (Fin d) (Fin n) K) (h : Function.Surjective P.mulVec) :
    P * rinv P = 1 := by
  have hex : ∃ R : Matrix (Fin n) (Fin d) K, P * R = 1 := by
    choose f hf using h
    refine ⟨Matrix.of fun i k => f (Pi.single k 1) i, ?_⟩
    ext i k
    have h1 := congrFun (hf (Pi.single k 1)) i
    rw [Pi.single_apply] at h1
    rw [Matrix.one_apply, ← h1]
    simp only [Matrix.mul_apply, Matrix.mulVec, dotProduct, Matrix.of_apply]
  unfold rinv
  rw [dite_eq_left hex]
  exact hex.choose_spec

variable {Bs : DefBase K} {A : DefAmb Bs} (X : CxData A) {fc : DefSub A → DefFace Bs} (cr : Crd A fc)

theorem cutPairing : X.CutPairing cr := by
  intro ζ sEE hW h2 hBt hMI hZ
  refine ⟨?_, fun u => by simp [colDef, colOf, hZ.1 u], fun u t => inv_ne_zero (hZ.2.1 u t),
    fun u w => ?_⟩
  swap
  · show vw w (ζ u (X.μ w))⁻¹ = 0
    rw [ValuationRepresentative.vw_inv, hZ.2.2 u w, neg_zero]
  intro u t φ F
  by_cases ht : t = Bs.μ0
  · subst ht
    show (fc X.zs).Dc.Pt u Bs.μ0 φ F =
      (ζ u Bs.μ0)⁻¹ * X.Bdef u φ ((X.rowMat cr true Bs.μ0).mulVec (((lv (fc X.zs) true).Pq Bs.μ0).mulVec F))
    rw [rowMat_base X cr true h2, Matrix.one_mulVec, hZ.1 u, inv_one, one_mul]
    show (fc X.zs).Dc.Pt u Bs.μ0 φ F = (fc X.zs).Dc.Pt u Bs.μ0 φ
      ((rinv ((fc X.zs).Df1.Pq Bs.μ0)).mulVec (((fc X.zs).Df1.Pq Bs.μ0).mulVec F))
    have hR := rinv_spec _ (hW.Pq_surj Bs.μ0)
    have hk : F - (rinv ((fc X.zs).Df1.Pq Bs.μ0)).mulVec (((fc X.zs).Df1.Pq Bs.μ0).mulVec F) ∈
        (fc X.zs).Df1.U Bs.μ0 := by
      rw [DefSide.U, LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_sub, Matrix.mulVec_mulVec, hR,
        Matrix.one_mulVec, sub_self]
    have h0 := hBt u φ _ hk
    rw [map_sub, sub_eq_zero] at h0
    exact h0
  · show (fc X.zs).Dc.Pt u t φ F = (ζ u t)⁻¹ * X.Bdef u φ ((X.rowMat cr true t).mulVec (((fc X.zs).Df1.Pq t).mulVec F))
    rw [← hMI u t ht φ F, ← mul_assoc, inv_mul_cancel₀ (hZ.2.1 u t), one_mul]

theorem cutTuples2 (C CH : ℝ) : X.CutTuples2 cr C CH := by
  intro hH0 hW1
  apply Formalism.IndefR.NonGenericAndKTwoTheorems.hecke_tuple_condition K Bs _ (X.data cr false) _
  · rintro w ⟨j, hj⟩
    show X.μ w ≠ Bs.μ0
    rw [← hH0.2 w]
    apply hW1
    rcases hj with h | h
    · by_contra hc
      apply h
      simp only [CxData.W1, not_exists, not_or, not_not] at hc
      obtain ⟨h1, h2, h3, -, -, -⟩ := hc j
      simp [Formalism.IndefR.HeckeTupleConditions.Atup, h1, h2, h3]
    · exact ⟨j, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))⟩
  · exact hH0.2

end CxData

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.CutPassage =====
