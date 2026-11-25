module

public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.Analysis.Calculus.ContDiff.CPolynomial
public import Mathlib.Analysis.Calculus.FDeriv.Symmetric
public import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StChangeOfVariablesDegree
public import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegreePiola, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegree

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegreePiola =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegreePiola", "h": "module\n\npublic import Mathlib.Analysis.Calculus.ContDiff.Defs\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.CPolynomial\npublic import Mathlib.Analysis.Calculus.FDeriv.Symmetric\npublic import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open scoped ContDiff
open MeasureTheory

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets

namespace ChangeOfVariablesDegree

variable {n : ℕ}

noncomputable def jacobian (H : (Fin n → ℝ) → Fin n → ℝ) (x : Fin n → ℝ) : Fin n → Fin n → ℝ :=
  fun k l => fderiv ℝ H x (Pi.single l 1) k

theorem det_fderiv_eq_det_jacobian (H : (Fin n → ℝ) → Fin n → ℝ) (x : Fin n → ℝ) :
    (fderiv ℝ H x).det = (Matrix.of (jacobian H x)).det := by
  rw [ContinuousLinearMap.det, ← LinearMap.det_toMatrix']
  congr 1

theorem jacobian_eq_fderiv_apply (H : (Fin n → ℝ) → Fin n → ℝ) (x : Fin n → ℝ)
    (hd : DifferentiableAt ℝ H x) (k l : Fin n) :
    jacobian H x k l = fderiv ℝ (fun y => H y k) x (Pi.single l 1) := by
  have hd' : HasFDerivAt (fun y => H y k) ((ContinuousLinearMap.proj k).comp (fderiv ℝ H x)) x :=
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin n => ℝ) k).hasFDerivAt.comp x
      hd.hasFDerivAt
  rw [hd'.fderiv]; rfl

noncomputable def detCML : ContinuousMultilinearMap ℝ (fun _ : Fin n => Fin n → ℝ) ℝ :=
  { (Matrix.detRowAlternating : (Fin n → ℝ) [⋀^Fin n]→ₗ[ℝ] ℝ).toMultilinearMap with
    cont := continuous_id.matrix_det }

theorem detCML_apply (M : Fin n → Fin n → ℝ) : detCML M = Matrix.det (Matrix.of M) := rfl

theorem det_update_eq_sum (V : Fin n → Fin n → ℝ) (k : Fin n) (r : Fin n → ℝ) :
    Matrix.det (Matrix.of (Function.update V k r)) =
      ∑ l, r l * Matrix.det (Matrix.of (Function.update V k (Pi.single l 1))) := by
  have hr : r = ∑ l, r l • (Pi.single l 1 : Fin n → ℝ) := by
    ext m; simp [Pi.single_apply]
  conv_lhs => rw [hr]
  change (Matrix.detRowAlternating : (Fin n → ℝ) [⋀^Fin n]→ₗ[ℝ] ℝ).toMultilinearMap.toLinearMap V k
    (∑ l, r l • (Pi.single l 1 : Fin n → ℝ)) = _

  rw [map_sum]
  simp only [map_smul, smul_eq_mul, MultilinearMap.toLinearMap_apply]
  rfl

noncomputable def entriesCLM : ((Fin n → ℝ) →L[ℝ] (Fin n → ℝ)) →L[ℝ] (Fin n → Fin n → ℝ) :=
  ContinuousLinearMap.pi fun k => ContinuousLinearMap.pi fun l =>
    (ContinuousLinearMap.proj k).comp (ContinuousLinearMap.apply ℝ (Fin n → ℝ) (Pi.single l 1))

noncomputable def killRow (i : Fin n) : (Fin n → Fin n → ℝ) →L[ℝ] (Fin n → Fin n → ℝ) :=
  ContinuousLinearMap.pi fun k => if k = i then 0 else ContinuousLinearMap.proj k

theorem killRow_apply_self (i : Fin n) (M : Fin n → Fin n → ℝ) : killRow i M i = 0 := by
  simp [killRow]

theorem killRow_apply_ne {i k : Fin n} (h : k ≠ i) (M : Fin n → Fin n → ℝ) :
    killRow i M k = M k := by
  simp [killRow, h]

theorem update_eq_killRow (M : Fin n → Fin n → ℝ) (i : Fin n) (c : Fin n → ℝ) :
    Function.update M i c = killRow i M + Pi.single i c := by
  funext k
  by_cases h : k = i
  · subst h; simp [killRow_apply_self]
  · simp [killRow_apply_ne h, h]

noncomputable def cofactorFn (H : (Fin n → ℝ) → Fin n → ℝ) (i j : Fin n) (y : Fin n → ℝ) : ℝ :=
  Matrix.det (Matrix.of (Function.update (jacobian H y) i (Pi.single j 1)))

theorem hasFDerivAt_cofactorFn (H : (Fin n → ℝ) → Fin n → ℝ) (hH : ContDiff ℝ ∞ H)
    (i j : Fin n) (x : Fin n → ℝ) :
    HasFDerivAt (cofactorFn H i j)
      ((detCML.linearDeriv (Function.update (jacobian H x) i (Pi.single j 1))).comp
        ((killRow i).comp (entriesCLM.comp (fderiv ℝ (fderiv ℝ H) x)))) x := by
  have h2 : HasFDerivAt (fderiv ℝ H) (fderiv ℝ (fderiv ℝ H) x) x :=
    ((hH.fderiv_right (m := ∞) le_rfl).differentiable (by simp)).differentiableAt.hasFDerivAt
  have hM : HasFDerivAt
      (fun y => (Function.update (jacobian H y) i (Pi.single j 1) : Fin n → Fin n → ℝ))
      ((killRow i).comp (entriesCLM.comp (fderiv ℝ (fderiv ℝ H) x))) x := by
    have : (fun y => (Function.update (jacobian H y) i (Pi.single j 1) : Fin n → Fin n → ℝ)) =
        fun y => killRow i (entriesCLM (fderiv ℝ H y)) + Pi.single i (Pi.single j 1) := by
      funext y; exact update_eq_killRow _ _ _
    rw [this]
    exact ((killRow i).hasFDerivAt.comp x (entriesCLM.hasFDerivAt.comp x h2)).add_const _
  exact (detCML.hasFDerivAt _).comp x hM

theorem sum_det_symm_eq_zero (A : Fin n → Fin n → ℝ) {i k : Fin n} (hik : i ≠ k)
    (S : Fin n → Fin n → ℝ) (hS : ∀ j l, S j l = S l j) :
    ∑ j, Matrix.det (Matrix.of (Function.update (Function.update A i (Pi.single j 1)) k (S j))) =
      0 := by
  simp_rw [det_update_eq_sum _ k (S _)]
  set T : Fin n → Fin n → ℝ := fun j l =>
    Matrix.det (Matrix.of (Function.update (Function.update A i (Pi.single j 1)) k
      (Pi.single l 1))) with hTdef
  have hT : ∀ j l, T j l = - T l j := by
    intro j l
    have hw : (Function.update (Function.update A i (Pi.single l 1)) k (Pi.single j 1)) =
        (Function.update (Function.update A i (Pi.single j 1)) k (Pi.single l 1)) ∘
          Equiv.swap i k := by
      funext r
      by_cases hri : r = i
      · subst hri; simp [Equiv.swap_apply_left, hik]
      · by_cases hrk : r = k
        · subst hrk; simp [Equiv.swap_apply_right, hik]
        · simp [Equiv.swap_apply_of_ne_of_ne hri hrk, hri, hrk]
    have h1 : T l j = - T j l := by
      show Matrix.det (Matrix.of (Function.update (Function.update A i (Pi.single l 1)) k
        (Pi.single j 1))) = _
      rw [hw]
      exact (Matrix.detRowAlternating : (Fin n → ℝ) [⋀^Fin n]→ₗ[ℝ] ℝ).map_swap
        (Function.update (Function.update A i (Pi.single j 1)) k (Pi.single l 1)) hik
    linarith
  have hX : ∑ j, ∑ l, S j l * T j l = - ∑ j, ∑ l, S j l * T j l := by
    conv_lhs => rw [Finset.sum_comm]
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [hS l j, hT l j]; ring
  change ∑ j, ∑ l, S j l * T j l = 0
  linarith

theorem sum_fderiv_cofactorFn_eq_zero (H : (Fin n → ℝ) → Fin n → ℝ) (hH : ContDiff ℝ ∞ H) (i : Fin n)
    (x : Fin n → ℝ) :
    ∑ j, fderiv ℝ (cofactorFn H i j) x (Pi.single j 1) = 0 := by
  set D2 := fderiv ℝ (fderiv ℝ H) x with hD2
  have hsym : ∀ v w, D2 v w = D2 w v :=
    (hH.contDiffAt (x := x)).isSymmSndFDerivAt (by simp)
  simp_rw [(hasFDerivAt_cofactorFn H hH i _ x).fderiv, ContinuousLinearMap.comp_apply,
    ContinuousMultilinearMap.linearDeriv_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_eq_zero fun k _ => ?_
  by_cases hk : k = i
  · subst hk
    refine Finset.sum_eq_zero fun j _ => ?_
    rw [killRow_apply_self, Function.update_idem]
    exact detCML.map_update_zero _ _
  · simp_rw [killRow_apply_ne hk]
    have := sum_det_symm_eq_zero (jacobian H x) (Ne.symm hk)
      (fun j l => D2 (Pi.single j 1) (Pi.single l 1) k)
      (fun j l => by simp only [hsym (Pi.single j 1)])
    exact this

theorem contDiff_cofactorFn (H : (Fin n → ℝ) → Fin n → ℝ) (hH : ContDiff ℝ ∞ H) (i j : Fin n) :
    ContDiff ℝ ∞ (cofactorFn H i j) := by
  have : cofactorFn H i j =
      fun y => detCML (killRow i (entriesCLM (fderiv ℝ H y)) + Pi.single i (Pi.single j 1)) := by
    funext y; rw [detCML_apply, ← update_eq_killRow]; rfl
  rw [this]
  exact detCML.contDiff.comp (((killRow i).contDiff.comp
    (entriesCLM.contDiff.comp (hH.fderiv_right (m := ∞) le_rfl))).add contDiff_const)

theorem integral_det_fderiv_eq_zero (H : (Fin n → ℝ) → Fin n → ℝ) (hH : ContDiff ℝ ∞ H)
    (i : Fin n) (hi : HasCompactSupport fun x => H x i) : ∫ x, (fderiv ℝ H x).det = 0 := by
  set h : (Fin n → ℝ) → ℝ := fun x => H x i with hh
  have hhs : ContDiff ℝ ∞ h := (contDiff_apply ℝ (fun _ => ℝ) i).comp hH
  have hJ : ∀ x j, jacobian H x i j = fderiv ℝ h x (Pi.single j 1) := fun x j =>
    jacobian_eq_fderiv_apply H x ((hH.differentiable (by simp)) x) i j
  have hexp : ∀ x, (fderiv ℝ H x).det =
      ∑ j, cofactorFn H i j x * fderiv ℝ h x (Pi.single j 1) := by
    intro x
    rw [det_fderiv_eq_det_jacobian]
    have := det_update_eq_sum (jacobian H x) i (jacobian H x i)
    rw [Function.update_eq_self] at this
    rw [this]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hJ, mul_comm]; rfl
  have hcof := contDiff_cofactorFn H hH i
  have hcd : ∀ j, Continuous fun x => fderiv ℝ (cofactorFn H i j) x (Pi.single j 1) := fun j =>
    ((hcof j).continuous_fderiv (by simp)).clm_apply continuous_const
  have hhd : ∀ j, Continuous fun x => fderiv ℝ h x (Pi.single j 1) := fun j =>
    (hhs.continuous_fderiv (by simp)).clm_apply continuous_const
  have i1 : ∀ j, Integrable (fun x => fderiv ℝ (cofactorFn H i j) x (Pi.single j 1) * h x) :=
    fun j => ((hcd j).mul hhs.continuous).integrable_of_hasCompactSupport hi.mul_left
  have i2 : ∀ j, Integrable (fun x => cofactorFn H i j x * fderiv ℝ h x (Pi.single j 1)) :=
    fun j => ((hcof j).continuous.mul (hhd j)).integrable_of_hasCompactSupport
      (hi.fderiv_apply (𝕜 := ℝ) (Pi.single j 1)).mul_left
  have i3 : ∀ j, Integrable (fun x => cofactorFn H i j x * h x) :=
    fun j => ((hcof j).continuous.mul hhs.continuous).integrable_of_hasCompactSupport hi.mul_left
  have hibp : ∀ j, ∫ x, cofactorFn H i j x * fderiv ℝ h x (Pi.single j 1) =
      - ∫ x, fderiv ℝ (cofactorFn H i j) x (Pi.single j 1) * h x := fun j =>
    integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (i1 j) (i2 j) (i3 j)
      (fun x _ => ((hcof j).differentiable (by simp)) x)
      (fun x _ => (hhs.differentiable (by simp)) x)
  simp_rw [hexp]
  rw [integral_finsetSum _ fun j _ => i2 j]
  simp_rw [hibp]
  rw [Finset.sum_neg_distrib, ← integral_finsetSum _ fun j _ => i1 j]
  simp_rw [← Finset.sum_mul, sum_fderiv_cofactorFn_eq_zero H hH i, zero_mul, integral_zero, neg_zero]

end ChangeOfVariablesDegree
end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegreePiola =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegree =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegree", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StChangeOfVariablesDegree\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegreePiola\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Mathlib.Analysis.Calculus.ParametricIntegral\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open scoped ContDiff

open MeasureTheory Metric

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets

namespace ChangeOfVariablesDegree

theorem continuous_det_fderiv {n : ℕ} (φ : (Fin n → ℝ) → Fin n → ℝ) (hφ : ContDiff ℝ ∞ φ) :
    Continuous fun x => (fderiv ℝ φ x).det := by
  have : (fun x => (fderiv ℝ φ x).det) = fun x => detCML (entriesCLM (fderiv ℝ φ x)) := by
    funext x; rw [det_fderiv_eq_det_jacobian]; rfl
  rw [this]
  exact detCML.cont.comp (entriesCLM.continuous.comp (hφ.continuous_fderiv (by simp)))

theorem hasCompactSupport_comp_sub {n : ℕ} (φ : (Fin n → ℝ) → Fin n → ℝ) (C : ℝ)
    (hC : ∀ x, ‖φ x - x‖ ≤ C) (g : (Fin n → ℝ) → ℝ) (hgc : HasCompactSupport g)
    (y₀ : Fin n → ℝ) : HasCompactSupport fun x => g (φ x - y₀) := by
  obtain ⟨r, hr⟩ := hgc.isCompact.isBounded.subset_closedBall 0
  refine HasCompactSupport.intro (isCompact_closedBall (0 : Fin n → ℝ) (r + ‖y₀‖ + C))
    fun x hx => ?_
  by_contra hne
  have h1 := hr (subset_tsupport _ hne)
  rw [mem_closedBall_zero_iff] at h1
  apply hx
  rw [mem_closedBall_zero_iff]
  have h2 : ‖x‖ ≤ ‖φ x - y₀‖ + ‖y₀‖ + ‖φ x - x‖ := by
    calc ‖x‖ = ‖(φ x - y₀) + y₀ - (φ x - x)‖ := by congr 1; abel
      _ ≤ ‖(φ x - y₀) + y₀‖ + ‖φ x - x‖ := norm_sub_le _ _
      _ ≤ ‖φ x - y₀‖ + ‖y₀‖ + ‖φ x - x‖ := by gcongr; exact norm_add_le _ _
  linarith [hC x]

theorem clm_apply_eq_sum {n : ℕ} (T : (Fin n → ℝ) →L[ℝ] ℝ) (v : Fin n → ℝ) :
    T v = ∑ k, v k * T (Pi.single k 1) := by
  have hv : v = ∑ k, v k • (Pi.single k 1 : Fin n → ℝ) := by
    ext m; simp [Pi.single_apply]
  conv_lhs => rw [hv]

  simp [map_sum, map_smul]

variable {m : ℕ}

theorem integral_fderiv_comp_mul_det_eq_zero (φ : (Fin (m + 1) → ℝ) → Fin (m + 1) → ℝ)
    (hφ : ContDiff ℝ ∞ φ) (hu : HasCompactSupport fun x => φ x - x)
    (g : (Fin (m + 1) → ℝ) → ℝ) (hg : ContDiff ℝ ∞ g) (hgc : HasCompactSupport g) :
    ∫ x, fderiv ℝ g (φ x) (Pi.single 0 1) * (fderiv ℝ φ x).det = 0 := by
  obtain ⟨C, hC⟩ := (hφ.continuous.sub continuous_id).bounded_above_of_compact_support hu
  set H : (Fin (m + 1) → ℝ) → Fin (m + 1) → ℝ := fun x => Function.update (φ x) 0 (g (φ x))
    with hH
  have hH0 : (fun x => H x 0) = fun x => g (φ x) := by
    funext x; simp [hH]
  have hHk : ∀ k, k ≠ 0 → (fun x => H x k) = fun x => φ x k := by
    intro k hk; funext x; simp [hH, hk]
  have hHs : ContDiff ℝ ∞ H := by
    refine contDiff_pi.2 fun k => ?_
    by_cases hk : k = 0
    · subst hk; rw [hH0]; exact hg.comp hφ
    · rw [hHk k hk]; exact (contDiff_apply ℝ (fun _ => ℝ) k).comp hφ
  have hHc : HasCompactSupport fun x => H x 0 := by
    rw [hH0]
    simpa using hasCompactSupport_comp_sub φ C hC g hgc 0
  have hdet : ∀ x, (fderiv ℝ H x).det =
      fderiv ℝ g (φ x) (Pi.single 0 1) * (fderiv ℝ φ x).det := by
    intro x
    have hφd : DifferentiableAt ℝ φ x := (hφ.differentiable (by simp)) x
    have hgd : DifferentiableAt ℝ g (φ x) := (hg.differentiable (by simp)) (φ x)
    set c : Fin (m + 1) → ℝ := fun k => fderiv ℝ g (φ x) (Pi.single k 1) with hc
    have hJ : Matrix.of (jacobian H x) = (Matrix.of (jacobian φ x)).updateRow 0
        (∑ k, c k • (Matrix.of (jacobian φ x)) k) := by
      ext r l
      rw [Matrix.of_apply, jacobian_eq_fderiv_apply H x ((hHs.differentiable (by simp)) x)]
      by_cases hr : r = 0
      · subst hr
        rw [hH0, Matrix.updateRow_self]
        have : fderiv ℝ (fun y => g (φ y)) x = (fderiv ℝ g (φ x)).comp (fderiv ℝ φ x) :=
          fderiv_comp x hgd hφd
        rw [this, ContinuousLinearMap.comp_apply, clm_apply_eq_sum]
        simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Matrix.of_apply, hc]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [jacobian, mul_comm]
      · rw [hHk r hr, Matrix.updateRow_ne hr, Matrix.of_apply,
          jacobian_eq_fderiv_apply φ x hφd]
    rw [det_fderiv_eq_det_jacobian, hJ, Matrix.det_updateRow_sum, det_fderiv_eq_det_jacobian,
      smul_eq_mul]
  simp_rw [← hdet]
  exact integral_det_fderiv_eq_zero H hHs 0 hHc

theorem integral_comp_sub_mul_det_eq (φ : (Fin (m + 1) → ℝ) → Fin (m + 1) → ℝ)
    (hφ : ContDiff ℝ ∞ φ) (hu : HasCompactSupport fun x => φ x - x)
    (f : (Fin (m + 1) → ℝ) → ℝ) (hf : ContDiff ℝ ∞ f) (hfc : HasCompactSupport f) (s : ℝ) :
    ∫ x, f (φ x - s • (Pi.single 0 1 : Fin (m + 1) → ℝ)) * (fderiv ℝ φ x).det =
      ∫ x, f (φ x) * (fderiv ℝ φ x).det := by
  set e : Fin (m + 1) → ℝ := Pi.single 0 1 with he
  obtain ⟨C, hC⟩ := (hφ.continuous.sub continuous_id).bounded_above_of_compact_support hu
  have hC' : ∀ x, ‖φ x - x‖ ≤ C := hC
  obtain ⟨r, hr⟩ := hfc.isCompact.isBounded.subset_closedBall 0
  obtain ⟨Cf, hCf⟩ := ((hf.continuous_fderiv (by simp)).clm_apply
    (continuous_const (y := e))).bounded_above_of_compact_support (hfc.fderiv_apply (𝕜 := ℝ) e)
  have hdc := continuous_det_fderiv φ hφ
  set Φ : ℝ → ℝ := fun s => ∫ x, f (φ x - s • e) * (fderiv ℝ φ x).det with hΦ
  have hderiv : ∀ s₀, HasDerivAt Φ 0 s₀ := by
    intro s₀
    set R := r + C + (|s₀| + 1) * ‖e‖ with hR
    set F' : ℝ → (Fin (m + 1) → ℝ) → ℝ :=
      fun s x => -(fderiv ℝ f (φ x - s • e) e) * (fderiv ℝ φ x).det with hF'
    have hbound : ∀ᵐ x ∂(volume : Measure (Fin (m + 1) → ℝ)), ∀ s ∈ ball s₀ 1,
        ‖F' s x‖ ≤ (closedBall (0 : Fin (m + 1) → ℝ) R).indicator
          (fun x => Cf * |(fderiv ℝ φ x).det|) x := by
      refine Filter.Eventually.of_forall fun x s hs => ?_
      by_cases hx : x ∈ closedBall (0 : Fin (m + 1) → ℝ) R
      · rw [Set.indicator_of_mem hx]
        simp only [hF', norm_mul, norm_neg, Real.norm_eq_abs]
        exact mul_le_mul_of_nonneg_right (by simpa [Real.norm_eq_abs] using hCf (φ x - s • e))
          (abs_nonneg _)
      · rw [Set.indicator_of_notMem hx]
        have hnot : φ x - s • e ∉ tsupport f := by
          intro hmem
          have h1 := hr hmem
          rw [mem_closedBall_zero_iff] at h1
          apply hx
          rw [mem_closedBall_zero_iff]
          have hs' : |s| ≤ |s₀| + 1 := by
            rw [mem_ball, Real.dist_eq] at hs
            have := abs_sub_abs_le_abs_sub s s₀
            linarith
          have hse : ‖s • e‖ ≤ (|s₀| + 1) * ‖e‖ := by
            rw [norm_smul, Real.norm_eq_abs]
            exact mul_le_mul_of_nonneg_right hs' (norm_nonneg _)
          have h2 : ‖x‖ ≤ ‖φ x - s • e‖ + ‖s • e‖ + ‖φ x - x‖ := by
            calc ‖x‖ = ‖(φ x - s • e) + s • e - (φ x - x)‖ := by congr 1; abel
              _ ≤ ‖(φ x - s • e) + s • e‖ + ‖φ x - x‖ := norm_sub_le _ _
              _ ≤ ‖φ x - s • e‖ + ‖s • e‖ + ‖φ x - x‖ := by gcongr; exact norm_add_le _ _
          linarith [hC' x]
        have h0 : fderiv ℝ f (φ x - s • e) = 0 :=
          image_eq_zero_of_notMem_tsupport fun h => hnot (tsupport_fderiv_subset ℝ h)
        simp [hF', h0]
    have hdiff : ∀ᵐ x ∂(volume : Measure (Fin (m + 1) → ℝ)), ∀ s ∈ ball s₀ 1,
        HasDerivAt (fun s => f (φ x - s • e) * (fderiv ℝ φ x).det) (F' s x) s := by
      refine Filter.Eventually.of_forall fun x s _ => ?_
      have hl : HasDerivAt (fun s : ℝ => φ x - s • e) (-e) s := by
        simpa using ((hasDerivAt_id s).smul_const e).const_sub (φ x)
      have := (((hf.differentiable (by simp)) (φ x - s • e)).hasFDerivAt.comp_hasDerivAt s
        hl).mul_const ((fderiv ℝ φ x).det)
      refine this.congr_deriv ?_
      simp only [hF', map_neg, neg_mul]
    have hcF : ∀ s : ℝ, Continuous fun x => f (φ x - s • e) * (fderiv ℝ φ x).det := fun s =>
      (hf.continuous.comp (hφ.continuous.sub continuous_const)).mul hdc
    have hcF' : Continuous (F' s₀) :=
      (((hf.continuous_fderiv (by simp)).comp (hφ.continuous.sub continuous_const)).clm_apply
        continuous_const).neg.mul hdc
    have hcB : Continuous fun x => Cf * |(fderiv ℝ φ x).det| := continuous_const.mul hdc.abs
    have key := hasDerivAt_integral_of_dominated_loc_of_deriv_le (μ := volume)
      (F := fun s x => f (φ x - s • e) * (fderiv ℝ φ x).det) (F' := F') (x₀ := s₀)
      (bound := (closedBall (0 : Fin (m + 1) → ℝ) R).indicator
        fun x => Cf * |(fderiv ℝ φ x).det|)
      (ball_mem_nhds s₀ one_pos)
      (Filter.Eventually.of_forall fun s => (hcF s).aestronglyMeasurable)
      ((hcF s₀).integrable_of_hasCompactSupport
        (hasCompactSupport_comp_sub φ C hC' f hfc _).mul_right)
      hcF'.aestronglyMeasurable
      hbound
      ((hcB.continuousOn.integrableOn_compact
        (isCompact_closedBall _ _)).integrable_indicator measurableSet_closedBall)
      hdiff
    have h0 : ∫ x, F' s₀ x = 0 := by
      simp only [hF', neg_mul, integral_neg]
      have hg := integral_fderiv_comp_mul_det_eq_zero φ hφ hu (fun y => f (y - s₀ • e))
        (hf.comp (contDiff_id.sub contDiff_const))
        (hfc.comp_homeomorph (Homeomorph.subRight (s₀ • e)))
      simp only [fderiv_comp_sub] at hg
      rw [hg, neg_zero]
    rw [← h0]
    exact key.2
  have hΦd : Differentiable ℝ Φ := fun s => (hderiv s).differentiableAt
  have := is_const_of_deriv_eq_zero hΦd (fun s => (hderiv s).deriv) s 0
  simpa [hΦ] using this

end ChangeOfVariablesDegree

theorem ChangeOfVariablesDegree.proof : ChangeOfVariablesDegree.Statement := by
  intro n φ hφ hu f hf hfc
  cases n with
  | zero =>
    have hid : φ = id := funext fun x => Subsingleton.elim _ _
    subst hid
    simp only [fderiv_id, id_eq, ContinuousLinearMap.det, ContinuousLinearMap.coe_id,
      LinearMap.det_id, mul_one]
  | succ m =>
    set e : Fin (m + 1) → ℝ := Pi.single 0 1 with he
    obtain ⟨C, hC⟩ := (hφ.continuous.sub continuous_id).bounded_above_of_compact_support hu
    have hC' : ∀ x, ‖φ x - x‖ ≤ C := hC
    obtain ⟨r, hr⟩ := hfc.isCompact.isBounded.subset_closedBall 0
    obtain ⟨ru, hru⟩ := hu.isCompact.isBounded.subset_closedBall 0
    have he1 : ‖e‖ = 1 := by simp [he, Pi.norm_single]
    set R := |r| + |ru| + |C| + 1 with hR
    have hpt : ∀ x, f (φ x - R • e) * (fderiv ℝ φ x).det = f (x - R • e) := by
      intro x
      have hRe : ‖R • e‖ = R := by
        rw [norm_smul, he1, mul_one, Real.norm_eq_abs, abs_of_pos (by positivity)]
      by_cases hx : x ∈ tsupport fun x => φ x - x
      · have hx' := hru hx
        rw [mem_closedBall_zero_iff] at hx'
        have hf1 : f (φ x - R • e) = 0 := by
          refine image_eq_zero_of_notMem_tsupport fun hmem => ?_
          have h1 := hr hmem
          rw [mem_closedBall_zero_iff] at h1
          have h2 : ‖R • e‖ ≤ ‖φ x - R • e‖ + ‖φ x - x‖ + ‖x‖ := by
            calc ‖R • e‖ = ‖-(φ x - R • e) + (φ x - x) + x‖ := by congr 1; abel
              _ ≤ ‖-(φ x - R • e) + (φ x - x)‖ + ‖x‖ := norm_add_le _ _
              _ ≤ ‖φ x - R • e‖ + ‖φ x - x‖ + ‖x‖ := by
                gcongr; exact (norm_add_le _ _).trans (by rw [norm_neg])
          rw [hRe] at h2
          linarith [hC' x, le_abs_self r, le_abs_self ru, le_abs_self C]
        have hf2 : f (x - R • e) = 0 := by
          refine image_eq_zero_of_notMem_tsupport fun hmem => ?_
          have h1 := hr hmem
          rw [mem_closedBall_zero_iff] at h1
          have h2 : ‖R • e‖ ≤ ‖x - R • e‖ + ‖x‖ := by
            calc ‖R • e‖ = ‖-(x - R • e) + x‖ := by congr 1; abel
              _ ≤ ‖-(x - R • e)‖ + ‖x‖ := norm_add_le _ _
              _ = ‖x - R • e‖ + ‖x‖ := by rw [norm_neg]
          rw [hRe] at h2
          have := abs_nonneg C
          linarith [le_abs_self r, le_abs_self ru]
        rw [hf1, hf2, zero_mul]
      · rw [notMem_tsupport_iff_eventuallyEq] at hx
        have hev : φ =ᶠ[nhds x] id := hx.mono fun y hy => by simpa [sub_eq_zero] using hy
        have hfd : fderiv ℝ φ x = ContinuousLinearMap.id ℝ _ := by
          rw [hev.fderiv_eq, fderiv_id]
        have hφx : φ x = x := hev.self_of_nhds
        rw [hfd, hφx, ContinuousLinearMap.det,
          ContinuousLinearMap.coe_id, LinearMap.det_id, mul_one]
    calc ∫ x, f (φ x) * (fderiv ℝ φ x).det
        = ∫ x, f (φ x - R • e) * (fderiv ℝ φ x).det :=
          (ChangeOfVariablesDegree.integral_comp_sub_mul_det_eq φ hφ hu f hf hfc R).symm
      _ = ∫ x, f (x - R • e) := by simp_rw [hpt]
      _ = ∫ x, f x := integral_sub_right_eq_self f (R • e)

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PChangeOfVariablesDegree =====
