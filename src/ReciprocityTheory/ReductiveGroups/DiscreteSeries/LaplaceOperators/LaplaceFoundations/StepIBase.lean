module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.AssemblyStatement
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.UnipotentExpHaarSqrtBound
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.Exists
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.HWExists
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.IsCompactUnitaryMat
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousTorepK
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ToMKMulInv
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.EqSmulHighestWeightOfIsWeight
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.LowestKTypeIntertwinerExists
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.MeasurableEmbeddingLeftMulOfIsUnit
public import Mathlib.MeasureTheory.Function.L2Space
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B3b
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B5
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.BasePointPsiExpFormula
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.ImportsAlt
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.InvMulSelfOfMemIndefiniteUnitary
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.MatrixCoeffBoundsImplyBound
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormMatrixTripleProductLe
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiFor
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SmInfUnitary
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.SmoothMatrixMaps.ContinuousSecondMatrix
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RootSumApply

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.Assembly, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.Laplace, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B6, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B7a, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.OneLeNoncompactRankParabolicSign, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormPsiGen, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SchurOrthogonalityWhittaker, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiCoef, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.StepIBase

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.Assembly =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.Assembly", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.AssemblyStatement\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.UnipotentExpHaarSqrtBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiDecayCore\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.Exists\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.HWExists\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Filter Topology
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

open ReciprocityTheory.ChartRestriction.DS

namespace Asm

variable {k r : ℕ}

theorem cay_unit {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r} (hP : Formalism.MainNotions.S.IsCayley k r ε P) :
    P * P⁻¹ = 1 ∧ P⁻¹ * P = 1 := by
  have h := (Matrix.isUnit_iff_isUnit_det P).mp hP.1
  exact ⟨Matrix.mul_nonsing_inv P h, Matrix.nonsing_inv_mul P h⟩

theorem cay_left {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r} (hP : Formalism.MainNotions.S.IsCayley k r ε P) :
    Pᴴ * Jm ε = Formalism.QuantumDeterminants.Hpk k r * P⁻¹ := by
  have h1 := (cay_unit hP).1
  rw [← hP.2, Matrix.mul_assoc (Pᴴ * Formalism.REAL.Jm ε), h1, Matrix.mul_one]
  rfl

theorem cay_right {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r} (hP : Formalism.MainNotions.S.IsCayley k r ε P) :
    Jm ε * P = (P⁻¹)ᴴ * Formalism.QuantumDeterminants.Hpk k r := by
  have h1 := (cay_unit hP).1
  have h2 : (P⁻¹)ᴴ * Pᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, h1, Matrix.conjTranspose_one]
  rw [← hP.2, ← Matrix.mul_assoc, ← Matrix.mul_assoc, h2, Matrix.one_mul]
  rfl

theorem cay_mem {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r} (hP : Formalism.MainNotions.S.IsCayley k r ε P)
    {g : Mat k r} (hg : g ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) : inUJ ε (P * g * P⁻¹) := by
  have h1 := (cay_unit hP).1
  have hR := cay_right hP
  have hg' : gᴴ * Formalism.QuantumDeterminants.Hpk k r * g = Formalism.QuantumDeterminants.Hpk k r := hg
  have hPJP : Pᴴ * Jm ε * P = Formalism.QuantumDeterminants.Hpk k r := hP.2
  show (P * g * P⁻¹)ᴴ * Jm ε * (P * g * P⁻¹) = Jm ε
  calc (P * g * P⁻¹)ᴴ * Jm ε * (P * g * P⁻¹)
      = (P⁻¹)ᴴ * (gᴴ * (Pᴴ * Jm ε * P) * g) * P⁻¹ := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Jm ε := by
        rw [hPJP, hg', ← hR, Matrix.mul_assoc, h1, Matrix.mul_one]


open scoped Matrix.Norms.Operator in
theorem cay_inG {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r} (hP : Formalism.MainNotions.S.IsCayley k r ε P)
    {Y : Mat k r} (hY : Y ∈ Formalism.MainNotions.S.lieOf (Formalism.QuantumDeterminants.Nset k r)) : inG ε (P * Y * P⁻¹) := by
  have hL := cay_left hP
  have hR := cay_right hP
  set H := Formalism.QuantumDeterminants.Hpk k r with hH
  have hlie : Yᴴ * H + H * Y = 0 := by
    have hc : ∀ t : ℝ, NormedSpace.exp (t • Yᴴ) * H * NormedSpace.exp (t • Y) = H := by
      intro t
      have h : (NormedSpace.exp ((t : ℂ) • Y))ᴴ * H * NormedSpace.exp ((t : ℂ) • Y) = H :=
        (hY t).1
      have e1 : (NormedSpace.exp ((t : ℂ) • Y))ᴴ = NormedSpace.exp (t • Yᴴ) := by
        rw [← Matrix.exp_conjTranspose, Matrix.conjTranspose_smul, Complex.star_def,
          Complex.conj_ofReal, Complex.coe_smul]
      rw [← e1, ← Complex.coe_smul]
      exact h
    have hd1 := hasDerivAt_exp_smul_const' (𝕂 := ℝ) Yᴴ (0 : ℝ)
    have hd2 := hasDerivAt_exp_smul_const' (𝕂 := ℝ) Y (0 : ℝ)
    have hf := (hd1.mul_const H).mul hd2
    have h0 := hf.unique ((hasDerivAt_const (0 : ℝ) H).congr_of_eventuallyEq
      (Filter.Eventually.of_forall fun t => hc t))
    simpa using h0
  show (P * Y * P⁻¹)ᴴ * Jm ε + Jm ε * (P * Y * P⁻¹) = 0
  calc (P * Y * P⁻¹)ᴴ * Jm ε + Jm ε * (P * Y * P⁻¹)
      = (P⁻¹)ᴴ * Yᴴ * (Pᴴ * Jm ε) + (Jm ε * P) * Y * P⁻¹ := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = (P⁻¹)ᴴ * (Yᴴ * H + H * Y) * P⁻¹ := by
        rw [hL, hR]
        simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]
    _ = 0 := by rw [hlie, Matrix.mul_zero, Matrix.zero_mul]

theorem conj_sum_sub {ι : Type*} (s : Finset ι) (a : ι → ℂ) :
    starRingEnd ℂ (∑ i ∈ s, (a i - starRingEnd ℂ (a i))) = -∑ i ∈ s, (a i - starRingEnd ℂ (a i)) := by

  rw [map_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_sub, Complex.conj_conj, neg_sub]

theorem re_sum_sub {ι : Type*} (s : Finset ι) (a : ι → ℂ) :
    (∑ i ∈ s, (a i - starRingEnd ℂ (a i))).re = 0 := by
  rw [Complex.re_sum]
  refine Finset.sum_eq_zero fun i _ => ?_
  rw [Complex.sub_re, Complex.conj_re, sub_self]

theorem hs_nonneg {m : ℕ} (X : Matrix (Fin m) (Fin m) ℂ) : 0 ≤ S7.hs X := by
  unfold S7.hs
  positivity

theorem hs_unreal {m : ℕ} (x : EuclideanSpace ℝ (Fin m × Fin m × Bool)) :
    S7.hs (Formalism.MainNotions.S.unrealify x) = ‖x‖ ^ 2 := by
  unfold S7.hs
  rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _),
    Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Fintype.sum_bool]
  simp only [Formalism.MainNotions.S.unrealify, Complex.sq_norm, Complex.normSq_mk, Real.norm_eq_abs, sq_abs]
  ring

theorem eight_n_q0_lt_needed_gap {n : ℕ} (ε : Fin n → Bool) : 8 * (n : ℝ) * (S7.q0 ε : ℝ) < hNeed ε := by
  have hq : ((S7.q0 ε : ℕ) : ℝ) = min (pOf ε : ℝ) (qOf ε : ℝ) := by
    simp [S7.q0]
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hm : (0 : ℝ) ≤ min (pOf ε : ℝ) (qOf ε : ℝ) :=
    le_min (Nat.cast_nonneg _) (Nat.cast_nonneg _)
  have hs : 0 ≤ Real.sqrt (2 * min (pOf ε : ℝ) (qOf ε : ℝ)) := Real.sqrt_nonneg _
  have hnm := mul_nonneg hn hm
  rw [hq]
  unfold hNeed
  refine lt_max_of_lt_right (lt_max_of_lt_left ?_)
  nlinarith

theorem stdGap_of {n : ℕ} {ε : Fin n → Bool} {lam : Fin n → ℝ} {h : ℝ} (hG : GapLap ε lam h) :
    StdGap ε lam := by
  obtain ⟨h1, h2, h3⟩ := hG
  refine ⟨h1, h, h2, lt_trans ?_ h3⟩
  unfold hNeed
  refine lt_max_of_lt_left ?_
  have := le_max_right (3 * (n : ℝ) / 2) (1 + (n : ℝ) * (pOf ε : ℝ) * (qOf ε : ℝ))
  linarith

theorem norm_inner_w {n : ℕ} {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) (A : T.V →L[ℂ] T.V) :
    ‖⟪T.w, A T.w⟫_ℂ‖ ≤ ‖A‖ := by
  calc ‖⟪T.w, A T.w⟫_ℂ‖ ≤ ‖T.w‖ * ‖A T.w‖ := norm_inner_le_norm _ _
    _ ≤ ‖T.w‖ * (‖A‖ * ‖T.w‖) := by gcongr; exact A.le_opNorm _
    _ = ‖A‖ := by rw [T.w_norm]; ring

def chart (k r : ℕ) (x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)) : Formalism.QuantumDeterminants.Mt k r :=
  fun i j => NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) i j

theorem exp_mat_continuous : Continuous (NormedSpace.exp : Mat k r → Mat k r) := by
  open scoped Matrix.Norms.Operator in
  exact NormedSpace.exp_continuous

theorem unreal_continuous :
    Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _) : Mat k r) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  have h1 : Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) (i, j, false) :=
    (EuclideanSpace.proj (i, j, false)).continuous.comp continuous_subtype_val
  have h2 : Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) (i, j, true) :=
    (EuclideanSpace.proj (i, j, true)).continuous.comp continuous_subtype_val
  have h3 : Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      ((x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) (i, j, false) : ℂ) +
        ((x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) (i, j, true) : ℂ) *
          Complex.I :=
    (Complex.continuous_ofReal.comp h1).add ((Complex.continuous_ofReal.comp h2).mul continuous_const)
  refine h3.congr fun x => ?_
  apply Complex.ext <;> simp [Formalism.MainNotions.S.unrealify]

theorem exp_unreal_continuous :
    Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      (NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) : Mat k r) :=
  exp_mat_continuous.comp unreal_continuous

theorem chart_embedding
    (hinj : ∀ Y ∈ Formalism.MainNotions.S.lieOf (Formalism.QuantumDeterminants.Nset k r), ∀ Y' ∈ Formalism.MainNotions.S.lieOf (Formalism.QuantumDeterminants.Nset k r),
      NormedSpace.exp Y = NormedSpace.exp Y' → Y = Y')
    (hunr : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _) ∈ Formalism.MainNotions.S.lieOf (Formalism.QuantumDeterminants.Nset k r)) :
    MeasurableEmbedding (chart k r) := by
  have hcont : Continuous (chart k r) :=
    continuous_pi fun i => continuous_pi fun j =>
      (continuous_apply j).comp ((continuous_apply i).comp exp_unreal_continuous)
  refine hcont.measurableEmbedding ?_
  intro x y hxy
  have h1 : NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))) =
      NormedSpace.exp (Formalism.MainNotions.S.unrealify (y : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))) := by
    ext i j
    exact congrFun (congrFun hxy i) j
  have h2 := hinj _ (hunr x) _ (hunr y) h1
  exact Subtype.ext ((unrealL (2 * r + k + 1)).injective h2)

def partNML {n : ℕ} (ε : Fin n → Bool) (d : Fin n → ℝ) :
    Matrix (Fin n) (Fin n) ℂ →ₗ[ℝ] Matrix (Fin n) (Fin n) ℂ where
  toFun := partNM ε d
  map_add' X Y := by
    ext a b; simp only [partNM, Matrix.of_apply, Matrix.add_apply]; split_ifs <;> simp
  map_smul' c X := by
    ext a b; simp only [partNM, Matrix.of_apply, Matrix.smul_apply, RingHom.id_apply]; split_ifs <;> simp

def bracketB {n : ℕ} (ε : Fin n → Bool) (d : Fin n → ℝ) :
    Matrix (Fin n) (Fin n) ℂ →ₗ[ℝ] Matrix (Fin n) (Fin n) ℂ →ₗ[ℝ] ℂ :=
  LinearMap.mk₂ ℝ (fun X Y => -(1 / 2 : ℂ) * trace (dMat d * (X * partNML ε d Y - partNML ε d Y * X)))
    (fun X X' Y => by
      simp only [Matrix.add_mul, Matrix.mul_add, Matrix.mul_sub, Matrix.trace_add, Matrix.trace_sub]; ring)
    (fun c X Y => by
      simp only [Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_sub, Matrix.trace_sub, Matrix.trace_smul,
        Complex.real_smul]; ring)
    (fun X Y Y' => by
      simp only [map_add (f := _), Matrix.add_mul, Matrix.mul_add, Matrix.mul_sub, Matrix.trace_add,
        Matrix.trace_sub]; ring)
    (fun c X Y => by
      simp only [map_smul, Matrix.smul_mul, Matrix.mul_smul, Matrix.mul_sub, Matrix.trace_sub,
        Matrix.trace_smul, Complex.real_smul]; ring)

def conjL (P : Mat k r) : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) →ₗ[ℝ] Mat k r :=
  (LinearMap.mulRight ℝ P⁻¹).comp ((LinearMap.mulLeft ℝ P).comp
    ((unrealL (2 * r + k + 1)).toLinearMap.comp (Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)).subtype))

theorem conjL_apply (P : Mat k r) (x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)) :
    conjL P x = P * Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _) * P⁻¹ := rfl

theorem bracketB_apply {n : ℕ} (ε : Fin n → Bool) (d : Fin n → ℝ) (X : Matrix (Fin n) (Fin n) ℂ) :
    bracketB ε d X X = qForm ε d X / 2 := by
  show -(1 / 2 : ℂ) * trace (dMat d * (X * partNM ε d X - partNM ε d X * X)) = qForm ε d X / 2
  unfold qForm
  ring

end Asm

open Asm in
theorem assembly : AssemblyStatement := by
  intro hB1 hB3 hB4 hB5 hB6 hB7a hB7b hLamT hPsi hLink
  intro k r u v b hk hHC hIl hH
  obtain ⟨huHC, hq0, hlin, hWwt, t₁, ht₁⟩ := hLamT k r u v b hk hHC hIl hH
  obtain ⟨P, hP, hPW, htr, hpsi⟩ := hB1 k r hk
  obtain ⟨hinj, -, hunr, hNhaar, -⟩ := hB4 k r
  obtain ⟨c5, hc5, hmaj⟩ := hB5 k r (parEps k r) P hP
  obtain ⟨μW, hμW, hμW1⟩ := hB7a k r
  obtain ⟨Hπ, iπ1, iπ2, π', hπ'⟩ := HW.highest_weight_exists k u huHC
  have hT : ∀ t : ℕ, t₁ ≤ t →
      Nonempty (S7.KType (parEps k r) (lowK (parEps k r) (lamT k r u b t))) :=
    fun t ht => HW.kType_exists _ _ (ht₁ t ht).1
  have hMu : ∀ t : ℕ, t₁ ≤ t → ∃ μ : Fin (2 * r + k + 1) → ℤ, S7.IsMu (lamT k r u b t) μ := by
    intro t ht
    choose m hm using (ht₁ t ht).1.2
    refine ⟨fun a => m a + (((2 * r + k + 1 : ℕ) : ℤ) - 1 - ((a : ℕ) : ℤ)), fun a => ?_⟩
    have h1 := hm a
    simp only [rho]
    push_cast at h1 ⊢
    linarith
  choose μ hμ using hMu

  have hGap : ∀ t (ht : t₁ ≤ t), GapAtLeast (parEps k r) (lamT k r u b t) ((t : ℝ) / 2) :=
    fun t ht => (ht₁ t ht).2.2.1
  have h8 : ∀ t (ht : t₁ ≤ t), 8 * ((2 * r + k + 1 : ℕ) : ℝ) * (S7.q0 (parEps k r) : ℝ) < (t : ℝ) / 2 :=
    fun t ht => (eight_n_q0_lt_needed_gap _).trans (ht₁ t ht).2.2.2
  have hPF : ∀ t (ht : t₁ ≤ t), IsPsiFor (parEps k r) (lamT k r u b t) (Classical.choice (hT t ht))
      (S7.PsiM (Classical.choice (hT t ht)) (μ t ht)) ∧
      ContinuousOn (S7.PsiM (Classical.choice (hT t ht)) (μ t ht)) (UJset (parEps k r)) :=
    fun t ht => hPsi _ _ _ _ _ _ (ht₁ t ht).1 (hμ t ht) (hGap t ht) hq0 (h8 t ht)

  have hU : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _) ∈ Formalism.MainNotions.S.lieOf (Formalism.QuantumDeterminants.Nset k r) := hunr
  have hexpN : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) ∈ Formalism.QuantumDeterminants.Nset k r := by
    intro x; simpa using hU x 1
  have hgU : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹ ∈ UJset (parEps k r) :=
    fun x => cay_mem hP (hexpN x).1
  have hτre : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      (trace (dMat (dNode k r) * conjL P x)).re = 0 := by
    intro x; rw [conjL_apply, htr _ (hU x)]; exact re_sum_sub _ _
  have hτconj : ∀ x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r),
      starRingEnd ℂ (trace (dMat (dNode k r) * conjL P x)) = -trace (dMat (dNode k r) * conjL P x) := by
    intro x; rw [conjL_apply, htr _ (hU x)]; exact conj_sum_sub _ _
  have hτc : Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) => trace (dMat (dNode k r) * conjL P x) :=
    (continuous_const.matrix_mul ((continuous_const.matrix_mul unreal_continuous).matrix_mul
      continuous_const)).matrix_trace

  let f : ℕ → Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) → ℂ := fun t x =>
    if ht : t₁ ≤ t then
      ⟪(Classical.choice (hT t ht)).w, S7.PsiM (Classical.choice (hT t ht)) (μ t ht)
          (P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹)
          (Classical.choice (hT t ht)).w⟫_ℂ *
        Complex.exp (-((t : ℂ) * trace (dMat (dNode k r) * conjL P x)))
    else 0
  have hfe : ∀ t (ht : t₁ ≤ t) x, f t x =
      ⟪(Classical.choice (hT t ht)).w, S7.PsiM (Classical.choice (hT t ht)) (μ t ht)
          (P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹)
          (Classical.choice (hT t ht)).w⟫_ℂ *
        Complex.exp (-((t : ℂ) * trace (dMat (dNode k r) * conjL P x))) :=
    fun t ht x => dif_pos ht
  have hgc : Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹ :=
    (continuous_const.matrix_mul exp_unreal_continuous).matrix_mul continuous_const
  have hPc : ∀ t (ht : t₁ ≤ t), Continuous fun x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r) =>
      S7.PsiM (Classical.choice (hT t ht)) (μ t ht)
        (P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹) :=
    fun t ht => (hPF t ht).2.comp_continuous hgc hgU
  have hfc : ∀ t (ht : t₁ ≤ t), Continuous (f t) := by
    intro t ht
    have : f t = fun x => _ := funext (hfe t ht)
    rw [this]
    exact (continuous_const.inner ((hPc t ht).clm_apply continuous_const)).mul
      (Complex.continuous_exp.comp (continuous_const.mul hτc).neg)

  have hbound : ∀ t (ht : t₁ ≤ t) (x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)),
      ‖S7.PsiM (Classical.choice (hT t ht)) (μ t ht)
          (P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ _)) * P⁻¹)‖ ≤
        (1 + ‖x‖ ^ 2) ^ (-(c5 / 16 * (t : ℝ))) := by
    intro t ht x
    obtain ⟨κ, X, hX, hkX⟩ := S7.polar_exists (hgU x)
    have hdec := S7.psiM_dec (Classical.choice (hT t ht)) (μ t ht) (hμ t ht) (ht₁ t ht).1 (hGap t ht)
      hq0 κ hX
    have hm := hmaj _ (hU x) κ X hX hkX
    rw [hs_unreal] at hm
    have hxn : ‖(x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))‖ = ‖x‖ := rfl
    rw [hxn] at hm
    rw [hkX]
    refine hdec.trans ?_
    have h1p : 0 < 1 + ‖x‖ ^ 2 := by positivity
    rw [Real.rpow_def_of_pos h1p]
    apply Real.exp_le_exp.mpr
    have h2 := mul_le_mul_of_nonneg_left hm (show (0 : ℝ) ≤ (t : ℝ) / 16 by positivity)
    nlinarith [h2]
  have hbd : ∀ᶠ t : ℕ in atTop, ∀ x, ‖f t x‖ ≤ (1 + 1 * ‖x‖ ^ 2) ^ (-(c5 / 16 * (t : ℝ))) := by
    filter_upwards [eventually_ge_atTop t₁] with t ht x
    rw [hfe t ht x, one_mul, norm_mul, Complex.norm_exp]
    have hre : (-((t : ℂ) * trace (dMat (dNode k r) * conjL P x))).re = 0 := by
      simp [Complex.mul_re, hτre x]
    rw [hre, Real.exp_zero, mul_one]
    exact (norm_inner_w _ _).trans (hbound t ht x)

  let B := (bracketB (parEps k r) (dNode k r)).compl₁₂ (conjL P) (conjL P)
  have hBx : ∀ x, B x x = qForm (parEps k r) (dNode k r) (conjL P x) / 2 :=
    fun x => bracketB_apply _ _ _
  have hlim : ∀ x, Tendsto (fun t : ℕ => f t ((Real.sqrt t)⁻¹ • x)) atTop
      (𝓝 (Complex.exp (-(B x x)))) := by
    intro x
    obtain ⟨C, hC⟩ := hB3 (2 * r + k + 1) (parEps k r) (dNode k r) (lowK (parEps k r) (lamT k r u b 0))
      (Real.sqrt (S7.hs (conjL P x)))
    have hlimC : Tendsto (fun t : ℕ => C / Real.sqrt t) atTop (𝓝 0) :=
      tendsto_const_nhds.div_atTop (Real.tendsto_sqrt_atTop.comp tendsto_natCast_atTop_atTop)
    rw [tendsto_iff_norm_sub_tendsto_zero]
    refine squeeze_zero' (Eventually.of_forall fun _ => norm_nonneg _) ?_ hlimC
    filter_upwards [eventually_ge_atTop t₁, eventually_ge_atTop 1] with t ht ht1
    have ht1' : (1 : ℝ) ≤ t := by exact_mod_cast ht1
    obtain ⟨H, i1, i2, σ, w, hsm, hcoef⟩ := hLink _ _ _ (Classical.choice (hT t ht))
      (S7.PsiM (Classical.choice (hT t ht)) (μ t ht)) (stdGap_of (ht₁ t ht).2) (hPF t ht).1
    have hY := cay_inG hP (hU x)
    have hB3' := hC t ht1' H σ _ w hsm (hlin t) (conjL P x) hY (Real.sq_sqrt (hs_nonneg _)).symm.le
    have hus : Formalism.MainNotions.S.unrealify
        ((((Real.sqrt t)⁻¹ • x : Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r))) : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) =
        ((((Real.sqrt t)⁻¹ : ℝ) : ℂ)) • Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool)) := by
      rw [Submodule.coe_smul, Complex.coe_smul]
      exact (unrealL (2 * r + k + 1)).map_smul _ _
    have hcj : P * NormedSpace.exp ((((Real.sqrt t)⁻¹ : ℝ) : ℂ) • Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))) *
        P⁻¹ = NormedSpace.exp ((((Real.sqrt t)⁻¹ : ℝ) : ℂ) • conjL P x) := by
      rw [← Matrix.exp_conj _ _ hP.1, conjL_apply, Matrix.mul_smul, Matrix.smul_mul]
    have hmem : NormedSpace.exp ((((Real.sqrt t)⁻¹ : ℝ) : ℂ) • conjL P x) ∈ UJset (parEps k r) := by
      rw [← hcj]; exact cay_mem hP (hU x _).1
    have hτs : trace (dMat (dNode k r) * conjL P ((Real.sqrt t)⁻¹ • x)) =
        (((Real.sqrt t)⁻¹ : ℝ) : ℂ) * trace (dMat (dNode k r) * conjL P x) := by
      rw [map_smul, Matrix.mul_smul, Matrix.trace_smul, Complex.real_smul]
    have hts : (t : ℂ) * (((Real.sqrt t)⁻¹ : ℝ) : ℂ) = ((Real.sqrt t : ℝ) : ℂ) := by
      have h := Real.div_sqrt (x := (t : ℝ))
      rw [div_eq_mul_inv] at h
      exact_mod_cast h
    have hfx : f t ((Real.sqrt t)⁻¹ • x) =
        ⟪w, σ (NormedSpace.exp ((((Real.sqrt t)⁻¹ : ℝ) : ℂ) • conjL P x)) w⟫_ℂ *
          Complex.exp (-((Real.sqrt t : ℂ) * trace (dMat (dNode k r) * conjL P x))) := by
      rw [hfe t ht, hus, hcj, ← hcoef _ hmem, hτs, ← mul_assoc, hts]
    rw [hfx, hBx, show -(qForm (parEps k r) (dNode k r) (conjL P x) / 2) =
      -qForm (parEps k r) (dNode k r) (conjL P x) / 2 by ring]
    exact hB3'

  have hm : ∀ᶠ t : ℕ in atTop, AEStronglyMeasurable (f t) volume := by
    filter_upwards [eventually_ge_atTop t₁] with t ht
    exact (hfc t ht).aestronglyMeasurable
  have hγ : 0 < c5 / 16 := by positivity
  have hev := hB6 (Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)) volume f hm B hlim one_pos hγ hbd
  obtain ⟨N₂, hN₂⟩ := exists_nat_gt
    ((Module.finrank ℝ (Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)) : ℝ) / (2 * (c5 / 16)))
  obtain ⟨t₀, ht₀⟩ := Filter.eventually_atTop.mp (hev.and (eventually_ge_atTop (max (max t₁ N₂) 1)))
  refine ⟨t₀, fun t ht => ?_⟩
  obtain ⟨⟨-, hne⟩, htm⟩ := ht₀ t ht
  have htt : t₁ ≤ t := le_trans (le_max_left _ _) (le_trans (le_max_left _ _) htm)
  have htN : N₂ ≤ t := le_trans (le_max_right _ _) (le_trans (le_max_left _ _) htm)
  have ht1 : 1 ≤ t := le_trans (le_max_right _ _) htm

  haveI : Nontrivial Hπ := hπ'.1
  haveI hFD : FiniteDimensional ℂ Hπ := hπ'.2.1
  haveI hCS : CompleteSpace Hπ := FiniteDimensional.complete ℂ Hπ
  let πm : Mat k r → (Hπ →L[ℂ] Hπ) := fun g =>
    π' (Matrix.of fun i j : Fin k => g (Formalism.QuantumDeterminants.wI k r i.castSucc) (Formalism.QuantumDeterminants.wI k r j.castSucc))
  have hblk : ∀ h : Matrix (Fin k) (Fin k) ℂ, πm (Formalism.MainNotions.S.blockW k r h) = π' h := by
    intro h
    show π' _ = π' h
    congr 1
    ext i j
    simp [Formalism.MainNotions.S.blockW, Formalism.QuantumDeterminants.wI]
  have hπb : (fun h => πm (Formalism.MainNotions.S.blockW k r h)) = π' := funext hblk
  have hHCU : Formalism.MainNotions.S.IsHCTypeU k u (fun h => πm (Formalism.MainNotions.S.blockW k r h)) := by rw [hπb]; exact hπ'
  obtain ⟨v0, -, hv0, hwt⟩ := hπ'.2.2.2.2.2.2.1
  let ξ : Hπ := ((‖v0‖⁻¹ : ℝ) : ℂ) • v0
  have hξn : ‖ξ‖ = 1 := by
    simp only [ξ]
    rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity),
      inv_mul_cancel₀ (norm_ne_zero_iff.mpr hv0)]
  have hξw : Formalism.MainNotions.S.IsWtOn (Formalism.MainNotions.S.UJset (Formalism.MainNotions.S.allPos k)) (fun h => πm (Formalism.MainNotions.S.blockW k r h))
      (Formalism.QuantumDeterminants.lowK (Formalism.MainNotions.S.allPos k) u) ξ := by
    rw [hπb]
    intro θ _
    have hθK : Matrix.diagonal (fun a => Complex.exp ((θ a : ℂ) * Complex.I)) ∈
        Formalism.REAL.Kset (Formalism.MainNotions.S.allPos k) := by
      refine ⟨?_, ?_⟩
      · rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose,
          Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
        congr 1
        funext a
        rw [Pi.star_apply, Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq,
          Complex.norm_exp_ofReal_mul_I]
        simp
      · simp only [Formalism.REAL.Jm, Matrix.diagonal_mul_diagonal]
        congr 1
        funext a
        ring
    simp only [ξ]
    rw [ContinuousLinearMap.map_smul, hwt θ hθK, smul_comm]

  have hinWb : Formalism.QuantumDeterminants.inWb k r (z0 k r) := by
    intro i hi
    show (Pi.single (Formalism.QuantumDeterminants.wI k r (Fin.last k)) (1 : ℂ) : Fin (2 * r + k + 1) → ℂ) i = 0
    rw [Pi.single_apply, if_neg]
    intro hh
    subst hh
    simp only [Formalism.QuantumDeterminants.wI, Fin.val_last] at hi
    omega
  have key : ∀ (H : Mat k r) (i : Fin (2 * r + k + 1)),
      Formalism.QuantumDeterminants.herm H (Formalism.QuantumDeterminants.bvec i) (Formalism.QuantumDeterminants.bvec i) = H i i := by
    intro H i
    rw [show Formalism.QuantumDeterminants.herm H (Formalism.QuantumDeterminants.bvec i) (Formalism.QuantumDeterminants.bvec i) =
      ∑ j, star (Formalism.QuantumDeterminants.bvec i j) * (H *ᵥ Formalism.QuantumDeterminants.bvec i) j from rfl]
    rw [Finset.sum_eq_single i (fun j _ hj => by simp [Formalism.QuantumDeterminants.bvec, Pi.single_apply, hj]) (by simp)]
    simp [Formalism.QuantumDeterminants.bvec, Matrix.mulVec, dotProduct, Pi.single_apply]
  have hTz1 : Formalism.QuantumDeterminants.Tz k r (z0 k r) = 1 := by
    rw [Formalism.QuantumDeterminants.Tz, z0, key]
    simp [Formalism.QuantumDeterminants.Hpk, Formalism.QuantumDeterminants.wI]
  have hone : (1 : Mat k r) ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) := by
    show (1 : Mat k r)ᴴ * Formalism.QuantumDeterminants.Hpk k r * 1 = Formalism.QuantumDeterminants.Hpk k r
    simp
  have hframe : Formalism.MainNotions.S.IsFrameW k r (z0 k r) 1 := by
    refine ⟨hone, fun a => ⟨Matrix.one_mulVec _, Matrix.one_mulVec _⟩, ?_⟩
    rw [Matrix.one_mulVec, hTz1, Real.sqrt_one]
    simp [z0]
  have hHCW : Formalism.MainNotions.S.IsHCTypeW k r (z0 k r) u πm := by
    refine ⟨1, hframe, ?_⟩
    have : (fun h => πm (1 * Formalism.MainNotions.S.blockW k r h * 1⁻¹)) = fun h => πm (Formalism.MainNotions.S.blockW k r h) := by
      funext h; rw [inv_one, Matrix.mul_one, Matrix.one_mul]
    rw [this]; exact hHCU
  have hcne : ∀ a, cBase r (t : ℝ) a ≠ 0 := by
    intro a
    have : (t : ℂ) ≠ 0 := by exact_mod_cast (by omega : t ≠ 0)
    simp [cBase, Complex.I_ne_zero, this]

  have hemb := chart_embedding hinj hU
  have hμN : Formalism.MainNotions.S.haarLie (Formalism.QuantumDeterminants.Nset k r) 1 = Measure.map (chart k r) volume := by
    rw [Formalism.MainNotions.S.haarLie, one_smul]; rfl
  have hI : ∫ m, psiCoef (Classical.choice (hT t htt)) (μ t htt) P (Classical.choice (hT t htt)).w
        (Classical.choice (hT t htt)).w (Matrix.of m) *
        starRingEnd ℂ (Formalism.MainNotions.S.psiGen k r (z0 k r) (cBase r t) (Matrix.of m))
        ∂(Formalism.MainNotions.S.haarLie (Formalism.QuantumDeterminants.Nset k r) 1) = ∫ x, f t x := by
    rw [hμN, hemb.integral_map]
    refine integral_congr_ae (ae_of_all _ fun x => ?_)
    rw [hfe t htt x]
    show ⟪(Classical.choice (hT t htt)).w, S7.PsiM (Classical.choice (hT t htt)) (μ t htt)
        (P * NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))) * P⁻¹)
        (Classical.choice (hT t htt)).w⟫_ℂ *
        starRingEnd ℂ (Formalism.MainNotions.S.psiGen k r (z0 k r) (cBase r t)
          (NormedSpace.exp (Formalism.MainNotions.S.unrealify (x : EuclideanSpace ℝ (Fin (2 * r + k + 1) × Fin (2 * r + k + 1) × Bool))))) = _
    congr 1
    rw [hpsi _ (hU x) (t : ℝ), ← Complex.exp_conj, map_mul, Complex.conj_ofReal, ← conjL_apply, hτconj x]
    congr 1
    push_cast
    ring
  have hint2 : Integrable (fun m : Formalism.QuantumDeterminants.Mt k r =>
      ‖S7.PsiM (Classical.choice (hT t htt)) (μ t htt) (P * Matrix.of m * P⁻¹)‖)
      (Formalism.MainNotions.S.haarLie (Formalism.QuantumDeterminants.Nset k r) 1) := by
    rw [hμN, hemb.integrable_map_iff]
    have hfr : (Module.finrank ℝ (Formalism.MainNotions.S.lieE (Formalism.QuantumDeterminants.Nset k r)) : ℝ) < 2 * (c5 / 16) * t := by
      have h1 := (div_lt_iff₀ (by positivity : (0 : ℝ) < 2 * (c5 / 16))).mp hN₂
      have h2 : (N₂ : ℝ) ≤ t := by exact_mod_cast htN
      nlinarith
    refine Integrable.mono' (integrable_rpow_neg_one_add_norm_sq (μ := volume) hfr)
      ((hPc t htt).norm.aestronglyMeasurable) (ae_of_all _ fun x => ?_)
    rw [Function.comp_apply, norm_norm]
    exact (hbound t htt x).trans (le_of_eq (by congr 1; ring))
  have h7 := hB7b k r (parEps k r) (lowK (parEps k r) (lamT k r u b t)) (Classical.choice (hT t htt))
    (μ t htt) P u (cBase r t) Hπ πm ξ μW (Formalism.MainNotions.S.haarLie (Formalism.QuantumDeterminants.Nset k r) 1) hk hP hPW hHCU hξn
    hξw (hWwt t) hμW hμW1 hNhaar.1 (hPF t htt).2 hint2
  refine ⟨Classical.choice (hT t htt), μ t htt, P, z0 k r, cBase r t, Hπ, iπ1, iπ2, hCS, πm, μW,
    Formalism.MainNotions.S.haarLie (Formalism.QuantumDeterminants.Nset k r) 1, hμ t htt, hP,
    ⟨hinWb, by rw [hTz1]; norm_num, hcne, hHCW, hμW, hNhaar⟩,
    (Classical.choice (hT t htt)).w, (Classical.choice (hT t htt)).w, ξ, 1, 1, hone, hone, ?_⟩
  intro h0
  rw [h0, inner_zero_right, hI] at h7
  have hfr : (Module.finrank ℂ Hπ : ℂ) ≠ 0 := by exact_mod_cast (Module.finrank_pos (R := ℂ) (M := Hπ)).ne'
  rcases mul_eq_zero.mp h7.symm with h | h
  · exact inv_ne_zero hfr h
  · exact hne h

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.Assembly =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.Laplace =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.Laplace", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\npublic import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\nimport Mathlib.Analysis.Matrix.Order\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Complex Filter Topology Matrix

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Laplace

theorem gauss_diag {d : ℕ} (b : Fin d → ℂ) (hb : ∀ i, 0 < (b i).re) :
    ∫ v : Fin d → ℝ, cexp (-∑ i, b i * (v i : ℂ) ^ 2) ≠ 0 := by
  have hb0 : ∀ i, b i ≠ 0 := fun i h => by
    have h' := hb i
    rw [h] at h'
    simp at h'
  have h := GaussianFourier.integral_cexp_neg_sum_mul_add hb (fun _ => (0 : ℂ))
  simp only [zero_mul, Finset.sum_const_zero, add_zero] at h
  rw [h, Finset.prod_ne_zero_iff]
  intro i _
  refine mul_ne_zero ?_ (Complex.exp_ne_zero _)
  rw [Ne, Complex.cpow_eq_zero_iff]
  rintro ⟨h1, -⟩
  exact div_ne_zero (Complex.ofReal_ne_zero.2 Real.pi_ne_zero) (hb0 i) h1

open scoped MatrixOrder in
theorem simdiag {d : ℕ} (A C : Matrix (Fin d) (Fin d) ℝ) (hA : A.PosDef) (hC : C.IsHermitian) :
    ∃ P : Matrix (Fin d) (Fin d) ℝ, IsUnit P ∧ ∃ c : Fin d → ℝ,
      Pᵀ * A * P = 1 ∧ Pᵀ * C * P = diagonal c := by
  have spec : ∀ (M : Matrix (Fin d) (Fin d) ℝ) (hM : M.IsHermitian),
      ∃ U : Matrix (Fin d) (Fin d) ℝ, Uᵀ * U = 1 ∧ Uᵀ * M * U = diagonal hM.eigenvalues := by
    intro M hM
    have hst : star (hM.eigenvectorUnitary : Matrix (Fin d) (Fin d) ℝ) =
        (hM.eigenvectorUnitary : Matrix (Fin d) (Fin d) ℝ)ᵀ := by
      rw [Matrix.star_eq_conjTranspose, Matrix.conjTranspose_eq_transpose_of_trivial]
    have h1 := Matrix.mem_unitaryGroup_iff'.1 hM.eigenvectorUnitary.2
    have h2 := hM.spectral_theorem
    rw [Unitary.conjStarAlgAut_apply, RCLike.ofReal_real_eq_id, Function.id_comp] at h2
    rw [hst] at h1 h2
    obtain ⟨U, hU1, hU2⟩ : ∃ U : Matrix (Fin d) (Fin d) ℝ,
        Uᵀ * U = 1 ∧ M = U * diagonal hM.eigenvalues * Uᵀ := ⟨_, h1, h2⟩
    refine ⟨U, hU1, ?_⟩
    calc Uᵀ * M * U = Uᵀ * (U * diagonal hM.eigenvalues * Uᵀ) * U :=
          congrArg (fun X => Uᵀ * X * U) hU2
      _ = (Uᵀ * U) * diagonal hM.eigenvalues * (Uᵀ * U) := by simp only [Matrix.mul_assoc]
      _ = diagonal hM.eigenvalues := by rw [hU1, Matrix.one_mul, Matrix.mul_one]
  have hCt : Cᵀ = C := by
    have h := hC
    unfold Matrix.IsHermitian at h
    rwa [Matrix.conjTranspose_eq_transpose_of_trivial] at h
  obtain ⟨U, hU1, hU2⟩ := spec A hA.1
  obtain ⟨s, hs⟩ : ∃ s : Fin d → ℝ, ∀ i, s i * hA.1.eigenvalues i * s i = 1 := by
    refine ⟨fun i => (Real.sqrt (hA.1.eigenvalues i))⁻¹, fun i => ?_⟩
    have h0 := hA.eigenvalues_pos i
    rw [show (Real.sqrt (hA.1.eigenvalues i))⁻¹ * hA.1.eigenvalues i *
        (Real.sqrt (hA.1.eigenvalues i))⁻¹ =
        hA.1.eigenvalues i / (Real.sqrt (hA.1.eigenvalues i) * Real.sqrt (hA.1.eigenvalues i)) by ring,
      Real.mul_self_sqrt h0.le, div_self h0.ne']
  have hQ' : (U * diagonal s)ᵀ * A * (U * diagonal s) = 1 := by
    have e1 : (U * diagonal s)ᵀ * A * (U * diagonal s) = diagonal s * (Uᵀ * A * U) * diagonal s := by
      simp only [Matrix.transpose_mul, Matrix.diagonal_transpose, Matrix.mul_assoc]
    rw [e1, hU2, Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    funext i
    exact hs i
  obtain ⟨Q, hQ⟩ : ∃ Q : Matrix (Fin d) (Fin d) ℝ, Qᵀ * A * Q = 1 := ⟨_, hQ'⟩
  have hC' : (Qᵀ * C * Q).IsHermitian := by
    unfold Matrix.IsHermitian
    rw [Matrix.conjTranspose_eq_transpose_of_trivial]
    simp only [Matrix.transpose_mul, Matrix.transpose_transpose, hCt, Matrix.mul_assoc]
  obtain ⟨V, hV1, hV2⟩ := spec _ hC'
  have hPA : (Q * V)ᵀ * A * (Q * V) = 1 := by
    have e : (Q * V)ᵀ * A * (Q * V) = Vᵀ * (Qᵀ * A * Q) * V := by
      simp only [Matrix.transpose_mul, Matrix.mul_assoc]
    rw [e, hQ, Matrix.mul_one, hV1]
  have hPC : (Q * V)ᵀ * C * (Q * V) = diagonal hC'.eigenvalues := by
    have e : (Q * V)ᵀ * C * (Q * V) = Vᵀ * (Qᵀ * C * Q) * V := by
      simp only [Matrix.transpose_mul, Matrix.mul_assoc]
    rw [e, hV2]
  have hdet := congrArg Matrix.det hPA
  simp only [Matrix.det_mul, Matrix.det_transpose, Matrix.det_one] at hdet
  have hP : IsUnit (Q * V) := by
    rw [Matrix.isUnit_iff_isUnit_det, isUnit_iff_ne_zero, Matrix.det_mul]
    intro h0
    rw [h0] at hdet
    simp at hdet
  exact ⟨Q * V, hP, hC'.eigenvalues, hPA, hPC⟩

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem exists_diag (B : E →ₗ[ℝ] E →ₗ[ℝ] ℂ) (hB : ∀ v, v ≠ 0 → 0 < (B v v).re) :
    ∃ (L : (Fin (Module.finrank ℝ E) → ℝ) ≃ₗ[ℝ] E) (b : Fin (Module.finrank ℝ E) → ℂ),
      (∀ i, 0 < (b i).re) ∧ ∀ w, B (L w) (L w) = ∑ i, b i * (w i : ℂ) ^ 2 := by
  let e := Module.finBasis ℝ E
  let A : Matrix (Fin (Module.finrank ℝ E)) (Fin (Module.finrank ℝ E)) ℝ :=
    fun i j => ((B (e i) (e j)).re + (B (e j) (e i)).re) / 2
  let C : Matrix (Fin (Module.finrank ℝ E)) (Fin (Module.finrank ℝ E)) ℝ :=
    fun i j => ((B (e i) (e j)).im + (B (e j) (e i)).im) / 2
  have hexp : ∀ x : Fin (Module.finrank ℝ E) → ℝ, B (e.equivFun.symm x) (e.equivFun.symm x) =
      ∑ i, ∑ j, ((x i * x j : ℝ) : ℂ) * B (e i) (e j) := by
    intro x

    simp only [Module.Basis.equivFun_symm_apply, map_sum, map_smul, LinearMap.sum_apply,
    LinearMap.smul_apply, Complex.real_smul, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    push_cast
    ring
  have hsymm : ∀ (x : Fin (Module.finrank ℝ E) → ℝ) (f : Fin (Module.finrank ℝ E) → Fin (Module.finrank ℝ E) → ℝ),
      ∑ i, x i * ∑ j, ((f i j + f j i) / 2) * x j = ∑ i, ∑ j, x i * x j * f i j := by
    intro x f
    have h1 : ∑ i, ∑ j, x i * x j * f j i = ∑ i, ∑ j, x i * x j * f i j := by
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
    have h2 : ∑ i, x i * ∑ j, ((f i j + f j i) / 2) * x j =
        (∑ i, ∑ j, x i * x j * f i j + ∑ i, ∑ j, x i * x j * f j i) / 2 := by
      rw [← Finset.sum_add_distrib, Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Finset.mul_sum, ← Finset.sum_add_distrib, Finset.sum_div]
      exact Finset.sum_congr rfl fun j _ => by ring
    rw [h2, h1]
    ring
  have hre : ∀ x, (B (e.equivFun.symm x) (e.equivFun.symm x)).re = x ⬝ᵥ (A *ᵥ x) := by
    intro x
    show _ = ∑ i, x i * ∑ j, ((B (e i) (e j)).re + (B (e j) (e i)).re) / 2 * x j
    rw [hsymm x (fun i j => (B (e i) (e j)).re), hexp]
    simp only [Complex.re_sum, Complex.re_ofReal_mul]
  have him : ∀ x, (B (e.equivFun.symm x) (e.equivFun.symm x)).im = x ⬝ᵥ (C *ᵥ x) := by
    intro x
    show _ = ∑ i, x i * ∑ j, ((B (e i) (e j)).im + (B (e j) (e i)).im) / 2 * x j
    rw [hsymm x (fun i j => (B (e i) (e j)).im), hexp]
    simp only [Complex.im_sum, Complex.im_ofReal_mul]
  have hAh : A.IsHermitian := Matrix.IsHermitian.ext fun i j => by
    show star (((B (e j) (e i)).re + (B (e i) (e j)).re) / 2) =
      ((B (e i) (e j)).re + (B (e j) (e i)).re) / 2
    rw [star_trivial, add_comm]
  have hCh : C.IsHermitian := Matrix.IsHermitian.ext fun i j => by
    show star (((B (e j) (e i)).im + (B (e i) (e j)).im) / 2) =
      ((B (e i) (e j)).im + (B (e j) (e i)).im) / 2
    rw [star_trivial, add_comm]
  have hApd : A.PosDef := by
    refine ⟨hAh, fun x hx => ?_⟩
    have key : (x.sum fun i xi => x.sum fun j xj => star xi * A i j * xj) = (⇑x) ⬝ᵥ (A *ᵥ ⇑x) := by
      rw [Finsupp.sum_fintype]
      · show ∑ i, (x.sum fun j xj => star (x i) * A i j * xj) = ∑ i, x i * ∑ j, A i j * x j
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Finsupp.sum_fintype]
        · rw [Finset.mul_sum]
          exact Finset.sum_congr rfl fun j _ => by rw [star_trivial]; ring
        · intro j; simp
      · intro i; simp
    rw [key, ← hre]
    refine hB _ ((LinearEquiv.map_ne_zero_iff _).2 ?_)
    intro h0
    exact hx (Finsupp.ext fun i => by simpa using congrFun h0 i)
  obtain ⟨P, hP, c, hPA, hPC⟩ := simdiag A C hApd hCh
  have hcong : ∀ (M : Matrix (Fin (Module.finrank ℝ E)) (Fin (Module.finrank ℝ E)) ℝ)
      (w : Fin (Module.finrank ℝ E) → ℝ),
      (P *ᵥ w) ⬝ᵥ (M *ᵥ (P *ᵥ w)) = w ⬝ᵥ ((Pᵀ * M * P) *ᵥ w) := by
    intro M w
    rw [Matrix.mulVec_mulVec, ← Matrix.vecMul_transpose P w, ← Matrix.dotProduct_mulVec,
      Matrix.mulVec_mulVec, Matrix.mul_assoc]
  refine ⟨(Matrix.toLinearEquiv' P hP.invertible).trans e.equivFun.symm,
    fun i => 1 + (c i : ℂ) * I, fun i => by simp, fun w => ?_⟩
  have hd : diagonal c *ᵥ w = fun i => c i * w i := funext (Matrix.mulVec_diagonal c w)
  show B (e.equivFun.symm (P *ᵥ w)) (e.equivFun.symm (P *ᵥ w)) = _
  rw [← Complex.re_add_im (B (e.equivFun.symm (P *ᵥ w)) (e.equivFun.symm (P *ᵥ w))), hre, him,
    hcong, hcong, hPA, hPC, Matrix.one_mulVec, hd]
  show ((∑ i, w i * w i : ℝ) : ℂ) + ((∑ i, w i * (c i * w i) : ℝ) : ℂ) * I = _
  push_cast
  rw [Finset.sum_mul, ← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl fun i _ => by ring

variable [MeasurableSpace E] [BorelSpace E]

theorem gauss_ne_zero (μ : Measure E) [μ.IsAddHaarMeasure] (B : E →ₗ[ℝ] E →ₗ[ℝ] ℂ)
    (hB : ∀ v, v ≠ 0 → 0 < (B v v).re) : ∫ v, cexp (-(B v v)) ∂μ ≠ 0 := by
  obtain ⟨L, b, hb, hL⟩ := exists_diag B hB
  have hemb : MeasurableEmbedding
      (L.toContinuousLinearEquiv : (Fin (Module.finrank ℝ E) → ℝ) → E) :=
    L.toContinuousLinearEquiv.toHomeomorph.measurableEmbedding
  have hμ : μ = Measure.addHaarScalarFactor μ
      (Measure.map (L.toContinuousLinearEquiv : (Fin (Module.finrank ℝ E) → ℝ) → E) volume) •
      Measure.map (L.toContinuousLinearEquiv : (Fin (Module.finrank ℝ E) → ℝ) → E) volume := by
    apply Measure.isAddLeftInvariant_eq_smul
  have hc : 0 < Measure.addHaarScalarFactor μ
      (Measure.map (L.toContinuousLinearEquiv : (Fin (Module.finrank ℝ E) → ℝ) → E) volume) := by
    apply Measure.addHaarScalarFactor_pos_of_isAddHaarMeasure
  have h2 : ∀ w : Fin (Module.finrank ℝ E) → ℝ,
      cexp (-(B (L.toContinuousLinearEquiv w) (L.toContinuousLinearEquiv w))) =
        cexp (-∑ i, b i * (w i : ℂ) ^ 2) := by
    intro w
    rw [show L.toContinuousLinearEquiv w = L w from rfl, hL]
  rw [hμ, integral_smul_nnreal_measure, hemb.integral_map]
  simp_rw [h2]
  rw [NNReal.smul_def, Complex.real_smul]
  exact mul_ne_zero (Complex.ofReal_ne_zero.2 (NNReal.coe_pos.2 hc).ne') (gauss_diag b hb)

theorem mono_pow {x s t : ℝ} (hx : 0 ≤ x) (hs : 0 < s) (hst : s ≤ t) :
    (1 + x / s) ^ s ≤ (1 + x / t) ^ t := by
  have ht : 0 < t := lt_of_lt_of_le hs hst
  have hs' : s ≠ 0 := hs.ne'
  have ht' : t ≠ 0 := ht.ne'
  have hp0 : 0 ≤ s / t := div_nonneg hs.le ht.le
  have hp1 : s / t ≤ 1 := (div_le_one ht).2 hst
  have hb : 0 ≤ 1 + x / s := add_nonneg zero_le_one (div_nonneg hx hs.le)
  have key : (1 + x / s) ^ (s / t) ≤ 1 + x / t := by
    have h := Real.geom_mean_le_arith_mean2_weighted hp0 (sub_nonneg.2 hp1) hb zero_le_one
      (by ring : s / t + (1 - s / t) = 1)
    rw [Real.one_rpow, mul_one] at h
    calc (1 + x / s) ^ (s / t) ≤ s / t * (1 + x / s) + (1 - s / t) * 1 := h
      _ = 1 + x / t := by field_simp <;> ring
  calc (1 + x / s) ^ s = ((1 + x / s) ^ (s / t)) ^ t := by
        rw [← Real.rpow_mul hb]
        congr 1
        field_simp
    _ ≤ (1 + x / t) ^ t := Real.rpow_le_rpow (Real.rpow_nonneg hb _) key ht.le

end ReciprocityTheory.ChartRestriction.DS.Lap.Laplace
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.Laplace =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B6 =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B6", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.Laplace\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

private theorem integrable_one_add_mul_norm_sq_rpow_neg {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E] (μ : MeasureTheory.Measure E)
    [μ.IsAddHaarMeasure] {a s : ℝ} (ha : 0 < a) (hs : (Module.finrank ℝ E : ℝ) < 2 * s) :
    MeasureTheory.Integrable (fun v : E => (1 + a * ‖v‖ ^ 2) ^ (-s)) μ := by
  open MeasureTheory Filter Topology in
  have h := (integrable_rpow_neg_one_add_norm_sq (μ := μ) hs).comp_smul (Real.sqrt_pos.2 ha).ne'
  refine h.congr (Filter.Eventually.of_forall fun v => ?_)
  simp only [norm_smul, Real.norm_eq_abs, abs_of_pos (Real.sqrt_pos.2 ha), mul_pow,
    Real.sq_sqrt ha.le]
  congr 1
  ring

private theorem main_lemma_2 {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E] (μ : MeasureTheory.Measure E)
    [μ.IsAddHaarMeasure] (f : ℕ → E → ℂ)
    (hm : ∀ᶠ t : ℕ in Filter.atTop, MeasureTheory.AEStronglyMeasurable (f t) μ) (B : E →ₗ[ℝ] E →ₗ[ℝ] ℂ)
    (hlim : ∀ v, Filter.Tendsto (fun t : ℕ => f t ((Real.sqrt t)⁻¹ • v)) Filter.atTop
      (nhds (Complex.exp (-(B v v)))))
    {c γ : ℝ} (hc : 0 < c) (hγ : 0 < γ)
    (hbd : ∀ᶠ t : ℕ in Filter.atTop, ∀ v, ‖f t v‖ ≤ (1 + c * ‖v‖ ^ 2) ^ (-(γ * t))) :
    ∀ᶠ t : ℕ in Filter.atTop, MeasureTheory.Integrable (f t) μ ∧ ∫ v, f t v ∂μ ≠ 0 := by
  open MeasureTheory Filter Topology in
  have hbig : ∀ᶠ t : ℕ in atTop, (Module.finrank ℝ E : ℝ) < 2 * (γ * t) ∧ (1 : ℝ) ≤ t := by
    have h1 : Tendsto (fun t : ℕ => 2 * (γ * (t : ℝ))) atTop atTop :=
      Tendsto.const_mul_atTop two_pos (Tendsto.const_mul_atTop hγ tendsto_natCast_atTop_atTop)
    filter_upwards [h1.eventually_gt_atTop (Module.finrank ℝ E : ℝ), eventually_ge_atTop 1]
      with t ht ht1
    exact ⟨ht, by exact_mod_cast ht1⟩
  obtain ⟨N, hN⟩ := eventually_atTop.1 ((hbd.and hm).and hbig)
  have hNpos : (0 : ℝ) < N := lt_of_lt_of_le one_pos (hN N le_rfl).2.2

  have hmaj : ∀ t : ℕ, N ≤ t → ∀ w : E,
      ‖f t ((Real.sqrt t)⁻¹ • w)‖ ≤ (1 + c / N * ‖w‖ ^ 2) ^ (-(γ * N)) := by
    intro t ht w
    have ht' : (N : ℝ) ≤ t := by exact_mod_cast ht
    have htpos : (0 : ℝ) < t := lt_of_lt_of_le hNpos ht'
    have h1 := (hN t ht).1.1 ((Real.sqrt t)⁻¹ • w)
    have hn : ‖(Real.sqrt t)⁻¹ • w‖ ^ 2 = ‖w‖ ^ 2 / t := by
      rw [norm_smul, mul_pow, norm_inv, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg _),
        inv_pow, Real.sq_sqrt htpos.le]
      ring
    rw [hn] at h1
    refine h1.trans ?_
    have hx : 0 ≤ c * ‖w‖ ^ 2 := by positivity
    have hmono := ReciprocityTheory.ChartRestriction.DS.Lap.Laplace.mono_pow hx hNpos ht'
    have hA : 0 < 1 + c * ‖w‖ ^ 2 / N := by positivity
    have hB : 0 < 1 + c * ‖w‖ ^ 2 / t := by positivity
    have key : (1 + c * ‖w‖ ^ 2 / N) ^ (γ * N) ≤ (1 + c * ‖w‖ ^ 2 / t) ^ (γ * t) := by
      rw [mul_comm γ (N : ℝ), mul_comm γ (t : ℝ), Real.rpow_mul hA.le, Real.rpow_mul hB.le]
      exact Real.rpow_le_rpow (Real.rpow_nonneg hA.le _) hmono hγ.le
    have e1 : c * (‖w‖ ^ 2 / t) = c * ‖w‖ ^ 2 / t := by ring
    have e2 : c / N * ‖w‖ ^ 2 = c * ‖w‖ ^ 2 / N := by ring
    rw [e1, e2, Real.rpow_neg hB.le, Real.rpow_neg hA.le]
    exact inv_anti₀ (Real.rpow_pos_of_pos hA _) key
  have hbint : Integrable (fun w : E => (1 + c / N * ‖w‖ ^ 2) ^ (-(γ * N))) μ :=
    integrable_one_add_mul_norm_sq_rpow_neg μ (div_pos hc hNpos) (hN N le_rfl).2.1
  have hgm : ∀ t : ℕ, N ≤ t → AEStronglyMeasurable (fun w => f t ((Real.sqrt t)⁻¹ • w)) μ := by
    intro t ht
    have htpos : (0 : ℝ) < t := lt_of_lt_of_le hNpos (by exact_mod_cast ht)
    have hr : (Real.sqrt t)⁻¹ ≠ 0 := inv_ne_zero (Real.sqrt_pos.2 htpos).ne'
    exact (hN t ht).1.2.comp_quasiMeasurePreserving (Measure.quasiMeasurePreserving_smul μ hr)
  have hT : Tendsto (fun t : ℕ => ∫ w, f t ((Real.sqrt t)⁻¹ • w) ∂μ) atTop
      (𝓝 (∫ w, Complex.exp (-(B w w)) ∂μ)) :=
    tendsto_integral_filter_of_dominated_convergence _
      ((eventually_ge_atTop N).mono hgm)
      ((eventually_ge_atTop N).mono fun t ht => Eventually.of_forall (hmaj t ht))
      hbint (Eventually.of_forall hlim)

  have hpos : ∀ v : E, v ≠ 0 → 0 < (B v v).re := by
    intro v hv
    have hle : ‖Complex.exp (-(B v v))‖ ≤ (1 + c / N * ‖v‖ ^ 2) ^ (-(γ * N)) :=
      le_of_tendsto (hlim v).norm (eventually_atTop.2 ⟨N, fun t ht => hmaj t ht v⟩)
    have hlt : (1 + c / N * ‖v‖ ^ 2) ^ (-(γ * N)) < 1 := by
      apply Real.rpow_lt_one_of_one_lt_of_neg
      · have hv' := norm_pos_iff.2 hv
        have : 0 < c / N * ‖v‖ ^ 2 := by positivity
        linarith
      · have := mul_pos hγ hNpos
        linarith
    rw [Complex.norm_exp] at hle
    have h3 : Real.exp (-(B v v)).re < 1 := hle.trans_lt hlt
    have h4 := Real.exp_lt_exp.1 (h3.trans_eq Real.exp_zero.symm)
    rw [Complex.neg_re] at h4
    linarith
  have hev : ∀ᶠ t : ℕ in atTop, ∫ w, f t ((Real.sqrt t)⁻¹ • w) ∂μ ≠ 0 :=
    hT.eventually_ne (ReciprocityTheory.ChartRestriction.DS.Lap.Laplace.gauss_ne_zero μ B hpos)
  filter_upwards [eventually_ge_atTop N, hev] with t ht hgt
  refine ⟨?_, ?_⟩
  · exact Integrable.mono' (integrable_one_add_mul_norm_sq_rpow_neg μ hc (hN t ht).2.1) (hN t ht).1.2
      (Eventually.of_forall (hN t ht).1.1)
  · intro h0
    apply hgt
    rw [Measure.integral_comp_smul μ (f t) (Real.sqrt t)⁻¹, h0, smul_zero]

theorem b6 : GaussianLimitHaar := by
  intro E _ _ _ _ _ μ _ f hm B hlim c γ hc hγ hbd
  exact main_lemma_2 μ f hm B hlim hc hγ hbd

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B6 =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B7a =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B7a", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.IsCompactUnitaryMat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

theorem b7a : ExistsUnitaryHaarProbability := fun k r => StandardBasisEmbedding.main k r

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B7a =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.OneLeNoncompactRankParabolicSign =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.OneLeNoncompactRankParabolicSign", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

open ReciprocityTheory.ChartRestriction.DS

theorem parEps_eq_false_iff (k r : ℕ) (hk : 1 ≤ k) (b : Fin (2 * r + k + 1)) :
    parEps k r b = false ↔ k ≤ b.val ∧ (b.val - k) % 2 = 0 := by
  unfold parEps
  split_ifs with h
  · constructor
    · intro h'
      exact absurd h' (by decide)
    · intro h'
      omega
  · simp only [decide_eq_false_iff_not]
    omega

theorem parEps_true_of_lt (k r : ℕ) (hk : 1 ≤ k) (b : Fin (2 * r + k + 1)) (hb : b.val < k) :
    parEps k r b = true := by
  cases h : parEps k r b
  · exact absurd ((parEps_eq_false_iff k r hk b).1 h).1 (by omega)
  · rfl

theorem card_parEps_false (k r : ℕ) (hk : 1 ≤ k) :
    (univ.filter fun b : Fin (2 * r + k + 1) => parEps k r b = false).card = r + 1 := by
  have e : (univ.filter fun b : Fin (2 * r + k + 1) => parEps k r b = false) =
      (univ : Finset (Fin (r + 1))).image
        (fun i => (⟨k + 2 * i.val, by have := i.isLt; omega⟩ : Fin (2 * r + k + 1))) := by
    ext b
    simp only [mem_filter, mem_univ, true_and, mem_image, parEps_eq_false_iff k r hk]
    constructor
    · rintro ⟨h1, h2⟩
      have := b.isLt
      refine ⟨⟨(b.val - k) / 2, by omega⟩, Fin.ext ?_⟩
      show k + 2 * ((b.val - k) / 2) = b.val
      omega
    · rintro ⟨i, rfl⟩
      show k ≤ k + 2 * i.val ∧ (k + 2 * i.val - k) % 2 = 0
      omega
  rw [e, card_image_of_injective]
  · simp
  · intro i j h
    simp only [Fin.mk.injEq] at h
    exact Fin.ext (by omega)

theorem one_le_noncompactRank_parabolicSign (k r : ℕ) (hk : 1 ≤ k) : 1 ≤ S7.q0 (parEps k r) := by
  unfold S7.q0
  refine le_min ?_ ?_
  · unfold pOf
    refine Finset.card_pos.2 ⟨⟨0, by omega⟩, ?_⟩
    simp only [mem_filter, mem_univ, true_and]
    exact parEps_true_of_lt k r hk _ (by show 0 < k; omega)
  · unfold qOf
    rw [card_parEps_false k r hk]
    omega

theorem rhoN_parEps (k r : ℕ) (hk : 1 ≤ k) (a : Fin (2 * r + k + 1)) (ha : a.val < k) :
    rhoN (parEps k r) a = ((r : ℝ) + 1) / 2 := by
  have hea := parEps_true_of_lt k r hk a ha
  have e1 : (univ.filter fun b => a < b ∧ parEps k r b ≠ parEps k r a) =
      univ.filter fun b : Fin (2 * r + k + 1) => parEps k r b = false := by
    ext b
    simp only [mem_filter, mem_univ, true_and, hea, ne_eq, Bool.not_eq_true]
    constructor
    · exact And.right
    · intro hb
      have := ((parEps_eq_false_iff k r hk b).1 hb).1
      exact ⟨show a.val < b.val by omega, hb⟩
  have e2 : (univ.filter fun b => b < a ∧ parEps k r b ≠ parEps k r a) = ∅ := by
    refine filter_eq_empty_iff.2 ?_
    rintro b - ⟨hba, hne⟩
    have : b.val < a.val := hba
    exact hne (by rw [parEps_true_of_lt k r hk b (by omega), hea])
  unfold rhoN
  rw [e1, e2, card_parEps_false k r hk, card_empty]
  push_cast
  ring

theorem rhoC_parEps (k r : ℕ) (hk : 1 ≤ k) (a : Fin (2 * r + k + 1)) (ha : a.val < k) :
    rhoC (parEps k r) a = ((r : ℝ) + k - 1 - 2 * (a.val : ℝ)) / 2 := by
  have hea := parEps_true_of_lt k r hk a ha
  have e1 : (univ.filter fun b => a < b ∧ parEps k r b = parEps k r a) =
      (Ioi a).filter fun b => parEps k r b = true := by
    ext b
    simp only [mem_filter, mem_univ, true_and, mem_Ioi, hea]
  have e3 : ((Ioi a).filter fun b => ¬ parEps k r b = true) =
      univ.filter fun b : Fin (2 * r + k + 1) => parEps k r b = false := by
    ext b
    simp only [mem_filter, mem_univ, true_and, mem_Ioi, Bool.not_eq_true]
    constructor
    · exact And.right
    · intro hb
      have := ((parEps_eq_false_iff k r hk b).1 hb).1
      exact ⟨show a.val < b.val by omega, hb⟩
  have e2 : (univ.filter fun b => b < a ∧ parEps k r b = parEps k r a) = Iio a := by
    ext b
    simp only [mem_filter, mem_univ, true_and, mem_Iio, hea]
    constructor
    · exact And.left
    · intro hb
      have : b.val < a.val := hb
      exact ⟨hb, parEps_true_of_lt k r hk b (by omega)⟩
  have hsum := card_filter_add_card_filter_not (s := Ioi a) (p := fun b => parEps k r b = true)
  rw [e3, card_parEps_false k r hk, Fin.card_Ioi] at hsum
  have hC : ((univ.filter fun b => a < b ∧ parEps k r b = parEps k r a).card : ℝ) =
      (r : ℝ) + k - 1 - (a.val : ℝ) := by
    rw [e1]
    have := a.isLt
    have h2 : ((Ioi a).filter fun b => parEps k r b = true).card + a.val + 1 = r + k := by omega
    have h3 := congrArg (fun m : ℕ => (m : ℝ)) h2
    push_cast at h3
    linarith
  unfold rhoC
  rw [hC, e2, Fin.card_Iio]
  ring

theorem u_strictAnti (k r : ℕ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (hI : Interlaces k r u v b) : StrictAnti u := by
  have step : ∀ (i j : Fin k), j.val = i.val + 1 → u j < u i := by
    intro i j hij
    have hi : i.val < k - 1 := by have := j.isLt; omega
    obtain ⟨h1, h2⟩ := hI.1 ⟨i.val, hi⟩
    have : j = ⟨i.val + 1, by have := j.isLt; omega⟩ := Fin.ext hij
    rw [this]
    exact lt_trans h2 h1
  have gen : ∀ d : ℕ, ∀ (i j : Fin k), j.val = i.val + d + 1 → u j < u i := by
    intro d
    induction d with
    | zero => intro i j h; exact step i j (by omega)
    | succ d ih =>
      intro i j h
      have hm : i.val + d + 1 < k := by have := j.isLt; omega
      exact lt_trans (step ⟨i.val + d + 1, hm⟩ j (by show j.val = i.val + d + 1 + 1; omega))
        (ih i ⟨i.val + d + 1, hm⟩ rfl)
  intro i j hij
  have : i.val < j.val := hij
  exact gen (j.val - i.val - 1) i j (by omega)

theorem u_isHCParam (k r : ℕ) (hk : 1 ≤ k) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ)
    (b : Fin (2 * r + 2) → ℝ) (hP : IsHCPar (parLam k r v b)) (hI : Interlaces k r u v b)
    (hH : HalfInts k r u v b) : Formalism.QuantumDeterminants.IsHCParam u := by
  refine ⟨u_strictAnti k r u v b hI, fun i => ?_⟩
  let s : Fin (2 * r + k + 1) := ⟨0, by omega⟩
  obtain ⟨m1, hm1⟩ := hH i s
  obtain ⟨m2, hm2⟩ := hP.2 s
  refine ⟨m1 + m2 + r + 1, ?_⟩
  push_cast at hm2 ⊢
  linarith

theorem lamT_eq_sub (k r : ℕ) (hk : 1 ≤ k) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t : ℕ)
    (a : Fin (2 * r + k + 1)) :
    lamT k r u b t a = lamT k r u b 0 a - ((a.val + 1 - k : ℕ) : ℝ) * (t : ℝ) := by
  unfold lamT
  split_ifs with h
  · have : a.val + 1 - k = 0 := by omega
    simp [this]
  · have : a.val - (k - 1) = a.val + 1 - k := by omega
    have e : ((a.val - (k - 1) : ℕ) : ℝ) = ((a.val + 1 - k : ℕ) : ℝ) := by rw [this]
    rw [e]
    simp

theorem lamT_eq_parLam (k r : ℕ) (hk : 1 ≤ k) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ)
    (b : Fin (2 * r + 2) → ℝ) (t : ℕ) (a : Fin (2 * r + k + 1)) (ha : k ≤ a.val) :
    lamT k r u b t a = parLam k r v b a - ((a.val + 1 - k : ℕ) : ℝ) * (t : ℝ) := by
  unfold lamT parLam
  rw [dite_eq_right (by omega), dite_eq_right (by omega)]
  have : a.val - (k - 1) = a.val + 1 - k := by omega
  have e : ((a.val - (k - 1) : ℕ) : ℝ) = ((a.val + 1 - k : ℕ) : ℝ) := by rw [this]
  rw [e]

theorem lowK_lamT_affine (k r : ℕ) (hk : 1 ≤ k) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t : ℕ) :
    lowK (parEps k r) (lamT k r u b t) = (t : ℝ) • dNode k r + lowK (parEps k r) (lamT k r u b 0) := by
  funext a
  simp only [lowK, Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
  rw [lamT_eq_sub k r hk u b t a]
  have hd : dNode k r a = -((a.val + 1 - k : ℕ) : ℝ) := by
    unfold dNode
    split_ifs with h
    · have : a.val + 1 - k = 0 := by omega
      rw [this]
      simp
    · rfl
  rw [hd]
  ring

theorem lowK_lamT_first (k r : ℕ) (hk : 1 ≤ k) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t : ℕ)
    (a : Fin k) :
    lowK (parEps k r) (lamT k r u b t) ⟨a.val, by omega⟩ = Formalism.QuantumDeterminants.lowK (Formalism.MainNotions.S.allPos k) u a := by
  have ha : (⟨a.val, by omega⟩ : Fin (2 * r + k + 1)).val < k := a.isLt
  have hN0 : Formalism.REAL.rhoN (Formalism.MainNotions.S.allPos k) a = 0 := by
    simp [Formalism.REAL.rhoN, Formalism.MainNotions.S.allPos]
  have e1 : (univ.filter fun b : Fin k => a < b ∧ Formalism.MainNotions.S.allPos k b = Formalism.MainNotions.S.allPos k a) =
      Ioi a := by
    ext b; simp [Formalism.MainNotions.S.allPos]
  have e2 : (univ.filter fun b : Fin k => b < a ∧ Formalism.MainNotions.S.allPos k b = Formalism.MainNotions.S.allPos k a) =
      Iio a := by
    ext b; simp [Formalism.MainNotions.S.allPos]
  have hC0 : Formalism.REAL.rhoC (Formalism.MainNotions.S.allPos k) a = (((k : ℝ) - 1) - 2 * (a.val : ℝ)) / 2 := by
    have hc : ((k - 1 - (a : ℕ) : ℕ) : ℝ) = (k : ℝ) - 1 - (a : ℕ) := by
      have := a.2
      rw [Nat.cast_sub (by omega), Nat.cast_sub hk]; simp
    unfold Formalism.REAL.rhoC
    rw [e1, e2, Fin.card_Ioi, Fin.card_Iio, hc]
    ring
  simp only [lowK, Formalism.QuantumDeterminants.lowK, Pi.add_apply, Pi.sub_apply]
  rw [rhoN_parEps k r hk _ ha, rhoC_parEps k r hk _ ha, hN0, hC0]
  simp only [lamT, a.isLt, ↓reduceDIte]
  ring

theorem lamT_facts : LamTStatement := by
  intro k r u v b hk hP hI hH
  refine ⟨u_isHCParam k r hk u v b hP hI hH, one_le_noncompactRank_parabolicSign k r hk,
    fun t => lowK_lamT_affine k r hk u b t, fun t a => lowK_lamT_first k r hk u b t a, ?_⟩
  set B : ℝ := ∑ a, |lamT k r u b 0 a| with hB
  have hBa : ∀ a, |lamT k r u b 0 a| ≤ B := fun a =>
    single_le_sum (f := fun a => |lamT k r u b 0 a|) (fun i _ => abs_nonneg _) (mem_univ a)
  have hB0 : 0 ≤ B := sum_nonneg (fun i _ => abs_nonneg _)
  obtain ⟨t₀, ht₀⟩ := exists_nat_gt (4 * B + 2 + 2 * |hNeed (parEps k r)|)
  refine ⟨t₀, fun t ht => ?_⟩
  have htR : 4 * B + 2 + 2 * |hNeed (parEps k r)| < (t : ℝ) :=
    lt_of_lt_of_le ht₀ (by exact_mod_cast ht)
  have hNa := le_abs_self (hNeed (parEps k r))
  have hNb := abs_nonneg (hNeed (parEps k r))
  have key : ∀ a c : Fin (2 * r + k + 1), a.val + 1 - k < c.val + 1 - k →
      (t : ℝ) / 2 ≤ lamT k r u b t a - lamT k r u b t c := by
    intro a c hac
    rw [lamT_eq_sub k r hk u b t a, lamT_eq_sub k r hk u b t c]
    have h1 : ((a.val + 1 - k : ℕ) : ℝ) + 1 ≤ ((c.val + 1 - k : ℕ) : ℝ) := by exact_mod_cast hac
    have h2 := abs_le.1 (hBa a)
    have h3 := abs_le.1 (hBa c)
    have ht0 : (0 : ℝ) ≤ t := Nat.cast_nonneg t
    nlinarith [mul_le_mul_of_nonneg_right h1 ht0]
  have hanti : StrictAnti (lamT k r u b t) := by
    intro a c hac
    have hac' : a.val < c.val := hac
    by_cases hc : c.val < k
    · have ha : a.val < k := by omega
      have hu := u_strictAnti k r u v b hI (show (⟨a.val, ha⟩ : Fin k) < ⟨c.val, hc⟩ from hac')
      simp only [lamT, ha, hc, ↓reduceDIte]
      linarith
    · have := key a c (by omega)
      linarith
  refine ⟨⟨hanti, fun a => ?_⟩, hanti, ?_, ?_⟩
  · by_cases ha : a.val < k
    · obtain ⟨m1, hm1⟩ := hH ⟨a.val, ha⟩ a
      obtain ⟨m2, hm2⟩ := hP.2 a
      refine ⟨m1 + m2, ?_⟩
      simp only [lamT, ha, ↓reduceDIte]
      push_cast at hm2 ⊢
      linarith
    · obtain ⟨m2, hm2⟩ := hP.2 a
      refine ⟨m2 - ((a.val + 1 - k : ℕ) : ℤ) * (t : ℤ), ?_⟩
      rw [lamT_eq_parLam k r hk u v b t a (by omega)]
      push_cast at hm2 ⊢
      linarith
  · intro a c hne
    have hj : a.val + 1 - k ≠ c.val + 1 - k := by
      intro h
      apply hne
      by_cases ha : a.val < k
      · have hc : c.val < k := by omega
        rw [parEps_true_of_lt k r hk a ha, parEps_true_of_lt k r hk c hc]
      · have : a = c := Fin.ext (by omega)
        rw [this]
    rcases lt_or_gt_of_ne hj with h | h
    · exact le_trans (key a c h) (le_abs_self _)
    · rw [abs_sub_comm]
      exact le_trans (key c a h) (le_abs_self _)
  · linarith

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.OneLeNoncompactRankParabolicSign =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormPsiGen =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormPsiGen", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.SmoothMatrixMaps.ContinuousSecondMatrix\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousTorepK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ToMKMulInv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base.SchurOrthogonalityLemmas

open ReciprocityTheory.ChartRestriction.DS Formalism.QuantumDeterminants

variable {k r : ℕ}

theorem inUJ_kmul {ε : Fin (2 * r + k + 1) → Bool} {κ g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hκ : κ ∈ Kset ε) : inUJ ε (κ * g) ↔ inUJ ε g := by
  have hJ : κᴴ * Jm ε * κ = Jm ε := HW.torep_inUJ ε hκ
  unfold inUJ
  rw [Matrix.conjTranspose_mul]
  have e : gᴴ * κᴴ * Jm ε * (κ * g) = gᴴ * (κᴴ * Jm ε * κ) * g := by simp only [Matrix.mul_assoc]
  rw [e, hJ]

theorem psiM_zero {ε : Fin (2 * r + k + 1) → Bool} {Λ : Fin (2 * r + k + 1) → ℝ} (T : S7.KType ε Λ)
    (μ : Fin (2 * r + k + 1) → ℤ) {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hg : ¬ inUJ ε g) :
    S7.PsiM T μ g = 0 := by
  unfold S7.PsiM
  rw [dite_eq_right]
  rintro ⟨k', X, hX, rfl⟩
  exact hg (S7.inUJ_kexp k' hX)

theorem psiM_K {ε : Fin (2 * r + k + 1) → Bool} {Λ : Fin (2 * r + k + 1) → ℝ} (T : S7.KType ε Λ)
    (μ : Fin (2 * r + k + 1) → ℤ) {κ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hκ : κ ∈ Kset ε)
    (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) :
    S7.PsiM T μ (κ * g) = HW.torepSig T κ * S7.PsiM T μ g := by
  by_cases hg : inUJ ε g
  · have h := S7.psiM_equiv T μ (HW.torepK ε hκ) 1 hg
    rw [HW.toMK_torepK] at h
    have h1 : S7.toMK (1 : S7.KG ε) = 1 := rfl
    rw [h1, Matrix.mul_one] at h
    rw [h, HW.torepSig_of_mem T hκ]
    have : T.op 1 = 1 := by simp [S7.KType.op]
    rw [this, mul_one]
  · rw [psiM_zero T μ hg, psiM_zero T μ (fun h => hg ((inUJ_kmul hκ).1 h)), mul_zero]

theorem psiGen_cont (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) : Continuous (Formalism.MainNotions.S.psiGen k r z c) := by
  apply ReciprocityTheory.ChartRestriction.DS.Lap.CurveContinuity.psiGen_cont

theorem norm_psiGen (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) :
    ‖Formalism.MainNotions.S.psiGen k r z c g‖ = 1 := by
  unfold Formalism.MainNotions.S.psiGen
  rw [mul_comm]
  exact Complex.norm_exp_ofReal_mul_I _

theorem coef_meas {ε : Fin (2 * r + k + 1) → Bool} {Λ : Fin (2 * r + k + 1) → ℝ} (T : S7.KType ε Λ)
    (μ : Fin (2 * r + k + 1) → ℤ) (hcont : ContinuousOn (S7.PsiM T μ) (UJset ε)) (v w : T.V) :
    Measurable (fun M : Mt k r => ⟪w, S7.PsiM T μ (Matrix.of M) v⟫_ℂ) := by
  classical
  set s : Set (Mt k r) := {M | inUJ ε (Matrix.of M)}
  have hc : Continuous (fun x : Mt k r => (Matrix.of x : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) :=
    continuous_id
  have hs : IsClosed s :=
    isClosed_eq ((hc.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul hc) continuous_const
  have hΦ : ContinuousOn (fun M : Mt k r => ⟪w, S7.PsiM T μ (Matrix.of M) v⟫_ℂ) s := by
    have h1 : ContinuousOn (fun M : Mt k r => S7.PsiM T μ (Matrix.of M)) s :=
      hcont.comp hc.continuousOn (fun M hM => hM)
    exact continuousOn_const.inner (h1.clm_apply continuousOn_const)
  have he : (fun M : Mt k r => ⟪w, S7.PsiM T μ (Matrix.of M) v⟫_ℂ) =
      s.piecewise (fun M : Mt k r => ⟪w, S7.PsiM T μ (Matrix.of M) v⟫_ℂ) (fun _ => 0) := by
    funext M
    by_cases hM : M ∈ s
    · rw [Set.piecewise_eq_of_mem _ _ _ hM]
    · rw [Set.piecewise_eq_of_notMem _ _ _ hM, psiM_zero T μ hM]; simp
  rw [he]
  exact hΦ.measurable_piecewise continuousOn_const hs.measurableSet

end ReciprocityTheory.ChartRestriction.DS.Lap.Base.SchurOrthogonalityLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormPsiGen =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SchurOrthogonalityWhittaker =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SchurOrthogonalityWhittaker", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.EqSmulHighestWeightOfIsWeight\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.IsCompactUnitaryMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.LowestKTypeIntertwinerExists\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.MeasurableEmbeddingLeftMulOfIsUnit\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RootSumApply\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base.SchurOrthogonalityLemmas

open ReciprocityTheory.ChartRestriction.DS Formalism.QuantumDeterminants

variable {k r : ℕ}

theorem clm_continuousOn {X : Type*} [TopologicalSpace X] {V : Type*} [NormedAddCommGroup V]
    [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] (σ : X → (V →L[ℂ] V)) (s : Set X)
    (h : ∀ v, ContinuousOn (fun g => σ g v) s) : ContinuousOn σ s := by
  rw [continuousOn_iff_continuous_domRestrict]
  exact continuous_clm_apply.2 fun v => continuousOn_iff_continuous_domRestrict.1 (h v)

theorem isClosed_UW : IsClosed {x : Mt k r | Matrix.of x ∈ UWset k r (z0 k r)} := by
  have hc : Continuous (fun x : Mt k r => (Matrix.of x : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) :=
    continuous_id
  have e : {x : Mt k r | Matrix.of x ∈ UWset k r (z0 k r)} =
      {x | (Matrix.of x)ᴴ * Hpk k r * Matrix.of x = Hpk k r} ∩
        ((⋂ a : Fin r, ({x | Matrix.of x *ᵥ bvec (eI k r a) = bvec (eI k r a)} ∩
          {x | Matrix.of x *ᵥ bvec (esI k r a) = bvec (esI k r a)})) ∩
          {x | Matrix.of x *ᵥ z0 k r = z0 k r}) := by
    ext x
    simp only [UWset, UH, Set.mem_ofPred_eq, Set.mem_inter_iff, Set.mem_iInter]
  rw [e]
  refine IsClosed.inter (isClosed_eq ((hc.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul hc)
    continuous_const) (IsClosed.inter (isClosed_iInter fun a => IsClosed.inter ?_ ?_) ?_)
  · exact isClosed_eq (hc.matrix_mulVec continuous_const) continuous_const
  · exact isClosed_eq (hc.matrix_mulVec continuous_const) continuous_const
  · exact isClosed_eq (hc.matrix_mulVec continuous_const) continuous_const

theorem blk_cont : Continuous (fun x : Mt k r => StandardBasisEmbedding.blk (k := k) (r := r) (Matrix.of x)) := by
  refine continuous_pi fun q => continuous_pi fun q' => ?_
  exact (continuous_apply _).comp (continuous_apply _)

theorem uw_inv {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hg : g ∈ UWset k r (z0 k r)) :
    g⁻¹ = Formalism.MainNotions.S.blockW k r (star (StandardBasisEmbedding.blk g)) ∧ IsUnit g := by
  have hu := StandardBasisEmbedding.blk_unitary hg
  have h1 : g * Formalism.MainNotions.S.blockW k r (star (StandardBasisEmbedding.blk g)) = 1 := by
    have e := StandardBasisEmbedding.eq_blockW hg
    rw [show g * Formalism.MainNotions.S.blockW k r (star (StandardBasisEmbedding.blk g)) =
        Formalism.MainNotions.S.blockW k r (StandardBasisEmbedding.blk g) * Formalism.MainNotions.S.blockW k r (star (StandardBasisEmbedding.blk g)) from by rw [← e]]
    rw [← StandardBasisEmbedding.blockW_mul, Unitary.mul_star_self_of_mem hu, StandardBasisEmbedding.blockW_one]
  exact ⟨Matrix.inv_eq_right_inv h1, ⟨⟨g, _, h1, mul_eq_one_comm.mp h1⟩, rfl⟩⟩

theorem schur_orthogonality_whittaker {ε : Fin (2 * r + k + 1) → Bool} {Λ : Fin (2 * r + k + 1) → ℝ} (T : S7.KType ε Λ)
    {P : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} {u : Fin k → ℝ}
    {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]
    (π : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ → (Vp →L[ℂ] Vp)) {ξ : Vp}
    {μW : Measure (Mt k r)} (hP : Formalism.MainNotions.S.IsCayley k r ε P) (hW : WCols k r P)
    (hπ : Formalism.MainNotions.S.IsHCTypeU k u (fun h => π (Formalism.MainNotions.S.blockW k r h))) (hξn : ‖ξ‖ = 1)
    (hξ : Formalism.MainNotions.S.IsWtOn (Formalism.MainNotions.S.UJset (Formalism.MainNotions.S.allPos k)) (fun h => π (Formalism.MainNotions.S.blockW k r h))
      (Formalism.QuantumDeterminants.lowK (Formalism.MainNotions.S.allPos k) u) ξ)
    (hΛ : ∀ a : Fin k, Λ ⟨a.val, by omega⟩ = Formalism.QuantumDeterminants.lowK (Formalism.MainNotions.S.allPos k) u a)
    (hμW : Formalism.MainNotions.S.IsHaarOn (UWset k r (z0 k r)) μW) (hμ1 : μW Set.univ = 1) (Y : T.V) :
    ∫ x, ⟪ξ, π (Matrix.of x)⁻¹ ξ⟫_ℂ * ⟪T.w, HW.torepSig T (P * Matrix.of x * P⁻¹) Y⟫_ℂ ∂μW =
      (Module.finrank ℂ Vp : ℂ)⁻¹ * ⟪T.w, Y⟫_ℂ := by
  classical
  set π' : Matrix (Fin k) (Fin k) ℂ → (Vp →L[ℂ] Vp) := fun h => π (Formalism.MainNotions.S.blockW k r h) with hπ'
  have hε : ∀ a : Fin (2 * r + k + 1), a.val < k → ε a = true := fun a ha => cay_eps hP hW a ha
  have hΛ' : ∀ q : Fin k, Λ (fI k r q) = Formalism.QuantumDeterminants.lowK (Formalism.MainNotions.S.allPos k) u q := fun q => hΛ q
  have : FiniteDimensional ℂ Vp := hπ.2.1
  have : Nontrivial Vp := hπ.1
  have : IsProbabilityMeasure μW := ⟨hμ1⟩
  obtain ⟨U, α, hint, hα⟩ := lowestKType_intertwiner_exists T hε hΛ' π' hπ hξ
  have hUR := hπ.2.2.1
  have hπadj : ∀ h ∈ Matrix.unitaryGroup (Fin k) ℂ, ∀ a b : Vp, ⟪a, π' h b⟫_ℂ = ⟪π' (star h) a, b⟫_ℂ := by
    intro h hh a b
    have hs : star h ∈ Matrix.unitaryGroup (Fin k) ℂ := Unitary.star_mem hh
    have hinv : π' (star h) (π' h b) = b := by
      have := hUR.1.2 _ (unit_uj hs) _ (unit_uj hh)
      rw [Unitary.star_mul_self_of_mem hh, hUR.1.1] at this
      have := congrArg (fun A : Vp →L[ℂ] Vp => A b) this
      simpa using this.symm
    let Lm : Vp →ₗᵢ[ℂ] Vp := { toLinearMap := (π' (star h) : Vp →ₗ[ℂ] Vp), norm_map' := hUR.2.1 _ (unit_uj hs) }
    have := Lm.inner_map_map a (π' h b)
    change ⟪π' (star h) a, π' (star h) (π' h b)⟫_ℂ = _ at this
    rw [hinv] at this
    exact this.symm
  have hα0 : α ≠ 0 := by
    rintro rfl
    rw [zero_smul] at hα
    have : U ξ = 0 := Subtype.ext hα
    rw [LinearIsometryEquiv.map_eq_zero_iff] at this
    rw [this, norm_zero] at hξn
    exact zero_ne_one hξn
  set η : Vp := α⁻¹ • ξ with hηdef
  have hη : (U η : T.V) = T.w := by
    rw [hηdef, map_smul, Submodule.coe_smul, hα, smul_smul, inv_mul_cancel₀ hα0, one_smul]
  set Y' : Vp := U.symm ((spanW (k := k) (r := r) T).orthogonalProjectionOnto Y) with hY'
  have hproj : ∀ s : spanW (k := k) (r := r) T,
      ⟪(s : T.V), Y⟫_ℂ = ⟪s, (spanW (k := k) (r := r) T).orthogonalProjectionOnto Y⟫_ℂ := by
    intro s
    have h0 : ⟪(s : T.V), Y - ((spanW (k := k) (r := r) T).orthogonalProjectionOnto Y : T.V)⟫_ℂ = 0 :=
      Submodule.inner_right_of_mem_orthogonal s.2 ((spanW (k := k) (r := r) T).sub_starProjection_mem_orthogonal Y)
    rw [inner_sub_right, sub_eq_zero] at h0
    rw [h0]
    rfl
  have hUY : ∀ a : Vp, ⟪(U a : T.V), Y⟫_ℂ = ⟪a, Y'⟫_ℂ := by
    intro a
    rw [hproj, ← U.inner_map_map a Y', hY', U.apply_symm_apply]
  have hae : ∀ᵐ x ∂μW, Matrix.of x ∈ UWset k r (z0 k r) := by
    rw [ae_iff]; simpa using hμW.2.2.1
  have hpt : ∀ᵐ x ∂μW, ⟪ξ, π (Matrix.of x)⁻¹ ξ⟫_ℂ * ⟪T.w, HW.torepSig T (P * Matrix.of x * P⁻¹) Y⟫_ℂ =
      ⟪η, π (Matrix.of x) Y'⟫_ℂ * ⟪π (Matrix.of x) ξ, ξ⟫_ℂ := hae.mono fun x hx => by
    have hu : StandardBasisEmbedding.blk (Matrix.of x) ∈ Matrix.unitaryGroup (Fin k) ℂ := StandardBasisEmbedding.blk_unitary hx
    have hx' : Matrix.of x = Formalism.MainNotions.S.blockW k r (StandardBasisEmbedding.blk (Matrix.of x)) := StandardBasisEmbedding.eq_blockW hx
    have h1 : π (Matrix.of x)⁻¹ = π' (star (StandardBasisEmbedding.blk (Matrix.of x))) := by rw [(uw_inv hx).1]
    have h2 : HW.torepSig T (P * Matrix.of x * P⁻¹) = rhoK (k := k) (r := r) T (StandardBasisEmbedding.blk (Matrix.of x)) := by
      rw [rhoK, ← cay_kE hP hW, ← hx']
    have h3 : π (Matrix.of x) = π' (StandardBasisEmbedding.blk (Matrix.of x)) := by
      rw [hπ']; exact congrArg π hx'
    rw [h1, h2, h3]
    rw [rhoK_adj T hε hu, ← hη, hint _ (Unitary.star_mem hu), hUY, ← hπadj _ hu]
    rw [hπadj _ (Unitary.star_mem hu), star_star, mul_comm]
  rw [integral_congr_ae hpt]
  have hmul : ∀ g ∈ UWset k r (z0 k r), ∀ h ∈ UWset k r (z0 k r), π (g * h) = π g * π h := by
    intro g hg h hh
    have e1 := StandardBasisEmbedding.eq_blockW hg
    have e2 := StandardBasisEmbedding.eq_blockW hh
    rw [e1, e2, ← StandardBasisEmbedding.blockW_mul]
    exact hUR.1.2 _ (unit_uj (StandardBasisEmbedding.blk_unitary hg)) _ (unit_uj (StandardBasisEmbedding.blk_unitary hh))
  have hunit : ∀ g ∈ UWset k r (z0 k r), ∀ v, ‖π g v‖ = ‖v‖ := by
    intro g hg v
    rw [StandardBasisEmbedding.eq_blockW hg]
    exact hUR.2.1 _ (unit_uj (StandardBasisEmbedding.blk_unitary hg)) v
  have hirr : ∀ S : Submodule ℂ Vp, (∀ g ∈ UWset k r (z0 k r), ∀ v ∈ S, π g v ∈ S) → S = ⊥ ∨ S = ⊤ := by
    intro S hS
    exact hπ.2.2.2.2.2.1 S le_top (fun g hg v hv => hS _ (StandardBasisEmbedding.mem_UW hg.1) v hv)
  have hmeas : AEStronglyMeasurable (fun x : Mt k r => π (Matrix.of x)) μW := by
    have hc : ContinuousOn (fun x : Mt k r => π' (StandardBasisEmbedding.blk (Matrix.of x))) {x | Matrix.of x ∈ UWset k r (z0 k r)} :=
      (clm_continuousOn π' _ hUR.2.2).comp blk_cont.continuousOn (fun x hx => unit_uj (StandardBasisEmbedding.blk_unitary hx))
    have h1 := hc.aestronglyMeasurable (μ := μW) isClosed_UW.measurableSet
    rw [Measure.restrict_eq_self_of_ae_mem (s := {x : Mt k r | Matrix.of x ∈ UWset k r (z0 k r)}) hae] at h1
    exact h1.congr (hae.mono fun x hx => (congrArg π (StandardBasisEmbedding.eq_blockW hx)).symm)
  rw [schur_orthogonality_unitary_rep (UWset k r (z0 k r)) μW hμW.2.2.1 (fun g hg => (uw_inv hg).2) (fun g hg => hμW.2.2.2 g hg)
    π hmul hunit hirr hmeas Y' ξ ξ η]
  have e1 : ⟪η, ξ⟫_ℂ = (starRingEnd ℂ) α⁻¹ := by
    rw [hηdef, inner_smul_left, inner_self_eq_norm_sq_to_K, hξn]; simp
  have e2 : ⟪ξ, Y'⟫_ℂ = (starRingEnd ℂ) α * ⟪T.w, Y⟫_ℂ := by
    rw [← hUY, hα, inner_smul_left]
  rw [e1, e2, map_inv₀]
  have hc0 : (starRingEnd ℂ) α ≠ 0 := by simpa using hα0
  field_simp

end ReciprocityTheory.ChartRestriction.DS.Lap.Base.SchurOrthogonalityLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SchurOrthogonalityWhittaker =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiCoef =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiCoef", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.LowestKTypeIntertwinerExists\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.MeasurableEmbeddingLeftMulOfIsUnit\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormPsiGen\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SchurOrthogonalityWhittaker\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousTorepK\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.EqSmulHighestWeightOfIsWeight\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.IsCompactUnitaryMat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

open ReciprocityTheory.ChartRestriction.DS Formalism.QuantumDeterminants SchurOrthogonalityLemmas

theorem b7b : WhittakerSchurOrthogonality := by
  intro k r ε Λ T μ P u c Vp _ _ _ π ξ μW μN _ hP hW hπ hξn hξ hΛ hμW hμ1 _ hcont hint
  classical
  set ψ := Formalism.MainNotions.S.psiGen k r (z0 k r) c with hψ
  set π' : Matrix (Fin k) (Fin k) ℂ → (Vp →L[ℂ] Vp) := fun h => π (Formalism.MainNotions.S.blockW k r h) with hπ'
  have hUR := hπ.2.2.1
  have : FiniteDimensional ℂ Vp := hπ.2.1
  have : IsProbabilityMeasure μW := ⟨hμ1⟩
  have hae : ∀ᵐ x ∂μW, Matrix.of x ∈ UWset k r (z0 k r) := by
    rw [ae_iff]; simpa using hμW.2.2.1
  have haeP : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ UWset k r (z0 k r) :=
    Measure.quasiMeasurePreserving_fst.ae hae
  set F : Mt k r × Mt k r → Vp := fun p =>
    psiCoef T μ P T.w T.w ((1 : Mat k r)⁻¹ * (Matrix.of p.1 * Matrix.of p.2 * 1)) •
      chiInv ψ π (Matrix.of p.1) (Matrix.of p.2) ξ with hF
  have hA : aaFun T μ P μW μN ψ π T.w T.w ξ 1 1 = ∫ p, F p ∂(μW.prod μN) := rfl
  have hK : ∀ h : Mt k r, Matrix.of h ∈ UWset k r (z0 k r) → P * Matrix.of h * P⁻¹ ∈ Kset ε := by
    intro h hh
    rw [StandardBasisEmbedding.eq_blockW hh, cay_kE hP hW]
    exact kE_mem_Kset (fun a ha => cay_eps hP hW a ha) (StandardBasisEmbedding.blk_unitary hh)
  have hPsi : ∀ h m : Mt k r, Matrix.of h ∈ UWset k r (z0 k r) →
      S7.PsiM T μ (P * (Matrix.of h * Matrix.of m) * P⁻¹) =
        HW.torepSig T (P * Matrix.of h * P⁻¹) * S7.PsiM T μ (P * Matrix.of m * P⁻¹) := by
    intro h m hh
    have hu : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).mp hP.1
    have e : P * (Matrix.of h * Matrix.of m) * P⁻¹ = (P * Matrix.of h * P⁻¹) * (P * Matrix.of m * P⁻¹) := by
      have : (P * Matrix.of h * P⁻¹) * (P * Matrix.of m * P⁻¹) =
          P * Matrix.of h * (P⁻¹ * P) * Matrix.of m * P⁻¹ := by simp only [Matrix.mul_assoc]
      rw [this, Matrix.nonsing_inv_mul _ hu]
      simp only [Matrix.mul_one, Matrix.mul_assoc]
    rw [e, psiM_K T μ (hK h hh)]
  have hunit : ∀ g ∈ UWset k r (z0 k r), ∀ v, ‖π g v‖ = ‖v‖ := by
    intro g hg v
    rw [StandardBasisEmbedding.eq_blockW hg]
    exact hUR.2.1 _ (unit_uj (StandardBasisEmbedding.blk_unitary hg)) v
  have hinvG : ∀ h : Mt k r, Matrix.of h ∈ UWset k r (z0 k r) → (Matrix.of h)⁻¹ ∈ UWset k r (z0 k r) := by
    intro h hh
    rw [(uw_inv hh).1]
    exact StandardBasisEmbedding.mem_UW (Unitary.star_mem (StandardBasisEmbedding.blk_unitary hh))
  have hFm : AEStronglyMeasurable F (μW.prod μN) := by
    have hc0 : Continuous (fun p : Mt k r × Mt k r =>
        (P * ((1 : Mat k r)⁻¹ * (Matrix.of p.1 * Matrix.of p.2 * 1)) * P⁻¹ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) := by
      fun_prop
    have hc1 : Continuous (fun p : Mt k r × Mt k r =>
        (Matrix.of.symm (P * ((1 : Mat k r)⁻¹ * (Matrix.of p.1 * Matrix.of p.2 * 1)) * P⁻¹) : Mt k r)) := by
      exact hc0
    have h1 : Measurable (fun p : Mt k r × Mt k r =>
        psiCoef T μ P T.w T.w ((1 : Mat k r)⁻¹ * (Matrix.of p.1 * Matrix.of p.2 * 1))) := by
      exact (coef_meas T μ hcont T.w T.w).comp hc1.measurable
    have h2 : Continuous (fun p : Mt k r × Mt k r => star (ψ (Matrix.of p.2))) :=
      continuous_star.comp ((psiGen_cont _ _).comp continuous_snd)
    have h3 : AEStronglyMeasurable (fun p : Mt k r × Mt k r => π (Matrix.of p.1)⁻¹ ξ) (μW.prod μN) := by
      have hc : ContinuousOn (fun x : Mt k r => π' (star (StandardBasisEmbedding.blk (Matrix.of x))) ξ)
          {x | Matrix.of x ∈ UWset k r (z0 k r)} :=
        (hUR.2.2 ξ).comp blk_cont.star.continuousOn
          (fun x hx => unit_uj (Unitary.star_mem (StandardBasisEmbedding.blk_unitary hx)))
      have h0 := hc.aestronglyMeasurable (μ := μW) isClosed_UW.measurableSet
      rw [Measure.restrict_eq_self_of_ae_mem (s := {x : Mt k r | Matrix.of x ∈ UWset k r (z0 k r)}) hae] at h0
      have h0' : AEStronglyMeasurable (fun x : Mt k r => π (Matrix.of x)⁻¹ ξ) μW :=
        h0.congr (hae.mono fun x hx => by dsimp only; rw [(uw_inv hx).1])
      exact h0'.comp_fst
    exact h1.aestronglyMeasurable.smul (h2.aestronglyMeasurable.smul h3)
  have hFb : ∀ᵐ p ∂(μW.prod μN), ‖F p‖ ≤ ‖S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)‖ := haeP.mono fun p hp => by
    simp only [hF, chiInv, psiCoef, inv_one, Matrix.one_mul, Matrix.mul_one]
    rw [hPsi _ _ hp, norm_smul, norm_smul, norm_star, hψ, norm_psiGen, one_mul, hunit _ (hinvG _ hp), hξn, mul_one]
    have hA1 : ‖HW.torepSig T (P * Matrix.of p.1 * P⁻¹)‖ ≤ 1 :=
      opNorm_le_one_of_isometry_alt _ ((HW.torep_isURepOn T).2.1 _ (hK _ hp))
    calc ‖⟪T.w, (HW.torepSig T (P * Matrix.of p.1 * P⁻¹) * S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)) T.w⟫_ℂ‖
        ≤ ‖T.w‖ * ‖(HW.torepSig T (P * Matrix.of p.1 * P⁻¹) * S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)) T.w‖ :=
          norm_inner_le_norm _ _
      _ ≤ 1 * (‖HW.torepSig T (P * Matrix.of p.1 * P⁻¹) * S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)‖ * 1) := by
          rw [T.w_norm]
          gcongr
          calc _ ≤ _ := ContinuousLinearMap.le_opNorm _ _
            _ = _ := by rw [T.w_norm]
      _ ≤ ‖HW.torepSig T (P * Matrix.of p.1 * P⁻¹)‖ * ‖S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)‖ := by
          rw [one_mul, mul_one]; exact ContinuousLinearMap.opNorm_comp_le _ _
      _ ≤ 1 * ‖S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)‖ := by gcongr
      _ = _ := one_mul _
  have hFi : Integrable F (μW.prod μN) := by
    have hφ : Integrable (fun p : Mt k r × Mt k r => ‖S7.PsiM T μ (P * Matrix.of p.2 * P⁻¹)‖) (μW.prod μN) := by
      have := (integrable_const (1 : ℝ) (μ := μW)).mul_prod hint
      simpa using this
    exact hφ.mono' hFm hFb
  rw [hA, ← integral_inner hFi ξ, integral_prod_symm _ (hFi.const_inner ξ)]
  have hin : ∀ m : Mt k r, ∫ h, ⟪ξ, F (h, m)⟫_ℂ ∂μW =
      (Module.finrank ℂ Vp : ℂ)⁻¹ * (psiCoef T μ P T.w T.w (Matrix.of m) * starRingEnd ℂ (ψ (Matrix.of m))) := by
    intro m
    have hpt : ∀ᵐ h ∂μW, ⟪ξ, F (h, m)⟫_ℂ = starRingEnd ℂ (ψ (Matrix.of m)) *
        (⟪ξ, π (Matrix.of h)⁻¹ ξ⟫_ℂ * ⟪T.w, HW.torepSig T (P * Matrix.of h * P⁻¹)
          (S7.PsiM T μ (P * Matrix.of m * P⁻¹) T.w)⟫_ℂ) := hae.mono fun h hh => by
      simp only [hF, chiInv, psiCoef, inv_one, Matrix.one_mul, Matrix.mul_one, inner_smul_right]
      have e : ∀ (A B : T.V →L[ℂ] T.V) (v : T.V), (A * B) v = A (B v) := fun _ _ _ => rfl
      rw [hPsi _ _ hh, e, show star (ψ (Matrix.of m)) = starRingEnd ℂ (ψ (Matrix.of m)) from rfl]
      ring
    rw [integral_congr_ae hpt, integral_const_mul, schur_orthogonality_whittaker T π hP hW hπ hξn hξ hΛ hμW hμ1]
    simp only [psiCoef]
    ring
  simp only [hin]
  rw [integral_const_mul]

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiCoef =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.StepIBase =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.StepIBase", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.Assembly\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B3b\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B5\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B6\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.B7a\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.BasePointPsiExpFormula\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.ImportsAlt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.InvMulSelfOfMemIndefiniteUnitary\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.MatrixCoeffBoundsImplyBound\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NormMatrixTripleProductLe\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.OneLeNoncompactRankParabolicSign\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiCoef\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.PsiFor\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.SmInfUnitary\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

theorem stepIBase : StepIBaseStatement :=
  assembly b1 (matrixCoeffBounds_imply_bound b2 b3a b3b b3c smInfUnitary) b4 b5 b6 b7a b7b lamT_facts psiFor link

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.StepIBase =====
