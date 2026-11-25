module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ContinuousHermNormGroup
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerMul
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFibreDegree
public import Mathlib.Algebra.MvPolynomial.Funext
public import Mathlib.Algebra.MvPolynomial.NoZeroDivisors
public import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianMatrixMeasurePosFinite
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AeFibrePointsCardEqDegree
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PEvalSpecFirst
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PMahlerIntegrand
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PSpecFirstHomog
public import GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.TargetsProjRegularDens
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFsLogIntegrable
import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMeasureOfProduct, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AePolynomialNonvanishingRows, Development.WeilBound.CoreStatements.CommonZeroEvaluation.EvalEqZeroOfCommonZero, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormSpecializationProportional, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibrefactor, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormFibreSpecialization, Development.WeilBound.CoreStatements.CommonZeroEvaluation.GaussianSphereMeanIntegral, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SphereMeanNormalizedGroups, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMinusConeIntegralIndep, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerSectionStatementHolds

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMeasureOfProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMeasureOfProduct", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ContinuousHermNormGroup\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem mahler_pow_mul {n e : ℕ} (h : HermNorm n) {q g : MvPolynomial (Fin e × Fin n) ℂ}
    (hq : q ≠ 0) (hg : g ≠ 0) (a : ℕ) :
    mahler h e (q ^ a * g) = (a : ℝ) * mahler h e q + mahler h e g := by
  induction a with
  | zero => simp
  | succ a ih =>
    rw [pow_succ', mul_assoc, mahlerMul n e h _ _ hq (mul_ne_zero (pow_ne_zero _ hq) hg), ih]
    push_cast
    ring

theorem mahler_C_mul_prod_pow : ∀ (n e : ℕ) (h : HermNorm n) {ι : Type} (s : Finset ι) (q : ι → MvPolynomial (Fin e × Fin n) ℂ) (d : ι → ℕ) (a : ι → ℕ) (c : ℂ), c ≠ 0 → (∀ i ∈ s, q i ≠ 0 ∧ GroundTheory.Heights₂.Heights.IsMultiHomog (d i) (q i)) → mahler h e (C c * ∏ i ∈ s, q i ^ a i) = Real.log ‖c‖ + ∑ i ∈ s, (a i : ℝ) * mahler h e (q i) := by
  classical
  intro n e h ι s q d a c hc hq
  revert hq
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp [mahler_C]
  · intro i s hi ih hq
    have hrest : ∀ j ∈ s, q j ≠ 0 ∧ GroundTheory.Heights₂.Heights.IsMultiHomog (d j) (q j) := fun j hj => hq j (Finset.mem_insert_of_mem hj)
    have hne : C c * ∏ j ∈ s, q j ^ a j ≠ 0 :=
      mul_ne_zero (by simpa using hc) (Finset.prod_ne_zero_iff.2 fun j hj => pow_ne_zero _ (hrest j hj).1)
    rw [Finset.prod_insert hi, Finset.sum_insert hi, mul_left_comm (C c) (q i ^ a i),
      mahler_pow_mul h (hq i (Finset.mem_insert_self i s)).1 hne (a i), ih hrest]
    ring

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMeasureOfProduct =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AePolynomialNonvanishingRows =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AePolynomialNonvanishingRows", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFibreDegree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.MvPolynomial.Funext\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem eq_zero_of_hermNorm_eq_zero {n : ℕ} (h : HermNorm n) {u : Fin n → ℂ} (hu : h.norm u = 0) :
    u = 0 := by
  have hs : ∑ i, ‖(h.mat *ᵥ u) i‖ ^ 2 = 0 :=
    (Real.sqrt_eq_zero (Finset.sum_nonneg fun _ _ => by positivity)).mp hu
  have hz : h.mat *ᵥ u = 0 := by
    funext i
    have hi := (Finset.sum_eq_zero_iff_of_nonneg (fun _ _ => by positivity)).mp hs i (Finset.mem_univ i)
    simpa using hi
  have := congrArg (fun w => h.mat⁻¹ *ᵥ w) hz
  simpa [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ h.isUnit_det] using this

theorem eval_scale_groups {k n δ : ℕ} {q : MvPolynomial (Fin k × Fin n) ℂ} (hq : GroundTheory.Heights₂.Heights.IsMultiHomog δ q)
    (c : Fin k → ℂ) (v : Fin k × Fin n → ℂ) :
    eval (fun ij => c ij.1 * v ij) q = (∏ i, c i ^ δ) * eval v q := by
  classical
  rw [eval_eq', eval_eq', Finset.mul_sum]
  refine Finset.sum_congr rfl fun d hd => ?_
  have hw := hq (mem_support_iff.mp hd)
  have hrow : ∀ i, ∑ j, d (i, j) = δ := by
    intro i
    have := congrFun hw i
    rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp)] at this
    simp [groupWeight, Fintype.sum_prod_type, Pi.single_apply, Finset.sum_apply] at this
    rw [Finset.sum_eq_single i (fun b _ hb => by simp [Ne.symm hb]) (by simp)] at this
    simpa using this
  have hc : ∏ ij : Fin k × Fin n, c ij.1 ^ d ij = ∏ i, c i ^ δ := by
    rw [Fintype.prod_prod_type]
    refine Finset.prod_congr rfl fun i _ => ?_
    dsimp only
    rw [Finset.prod_pow_eq_pow_sum, hrow]
  simp only [mul_pow, Finset.prod_mul_distrib, hc]
  ring

theorem eval_nrmGroups_ne_zero {k n δ : ℕ} (h : HermNorm n) {q : MvPolynomial (Fin k × Fin n) ℂ}
    (hq : GroundTheory.Heights₂.Heights.IsMultiHomog δ q) {v : Fin k × Fin n → ℂ} (hv : eval v q ≠ 0) :
    eval (nrmGroups h k v) q ≠ 0 := by
  classical
  have e : nrmGroups h k v =
      fun ij => (fun i => ((h.norm fun j => v (i, j) : ℝ) : ℂ)⁻¹) ij.1 * v ij := rfl
  rw [e, eval_scale_groups hq (fun i => ((h.norm fun j => v (i, j) : ℝ) : ℂ)⁻¹) v]
  refine mul_ne_zero (Finset.prod_ne_zero_iff.mpr fun i _ => ?_) hv
  rcases Nat.eq_zero_or_pos δ with rfl | hpos
  · simp
  refine pow_ne_zero _ fun hc => hv ?_
  have hn : h.norm (fun j => v (i, j)) = 0 := by simpa using hc
  have hr := eq_zero_of_hermNorm_eq_zero h hn
  have hv' : v = fun ij => (Function.update (1 : Fin k → ℂ) i 0) ij.1 * v ij := by
    funext ⟨a, j⟩
    by_cases ha : a = i
    · subst ha
      simpa using congrFun hr j
    · simp [Function.update_of_ne ha]
  rw [hv', eval_scale_groups hq, Finset.prod_eq_zero (Finset.mem_univ i) (by simp [hpos.ne']), zero_mul]

theorem exists_poly_eval_coefRows {n e : ℕ} (h : HermNorm n) {q : MvPolynomial (Fin e × Fin n) ℂ}
    (hq : q ≠ 0) :
    ∃ Q : MvPolynomial (Fin (e + 1) × Fin n) ℂ, Q ≠ 0 ∧
      ∀ π : Fin (e + 1) → Fin n → ℂ, eval (fun ij => π ij.1 ij.2) Q = eval (coefRows h π) q := by
  let f : Fin e × Fin n → MvPolynomial (Fin (e + 1) × Fin n) ℂ :=
    fun ij => ∑ k, C (h.mat⁻¹ ij.2 k) * X (ij.1.succ, k)
  have key : ∀ π : Fin (e + 1) → Fin n → ℂ,
      eval (fun ij => π ij.1 ij.2) (bind₁ f q) = eval (coefRows h π) q := by
    intro π
    have hf : (fun ij => eval (fun ij => π ij.1 ij.2) (f ij)) = coefRows h π := by
      funext ij
      simp [f, coefRows, Matrix.mulVec, dotProduct]
    rw [← hf]
    exact eval₂Hom_bind₁ _ _ _ _
  refine ⟨bind₁ f q, fun hQ => hq (MvPolynomial.funext fun v => ?_), key⟩
  have hv : coefRows h (Fin.cons 0 fun i => h.mat *ᵥ fun j => v (i, j)) = v := by
    funext ij
    simp [coefRows, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ h.isUnit_det]
  rw [map_zero, ← hv, ← key, hQ, map_zero]

theorem ae_eval_nrmGroups_coefRows_ne_zero :
    ∀ (n e δ : ℕ) (h : HermNorm n) (q : MvPolynomial (Fin e × Fin n) ℂ), q ≠ 0 → GroundTheory.Heights₂.Heights.IsMultiHomog δ q →
      ∀ᵐ π : Fin (e + 1) → Fin n → ℂ, eval (nrmGroups h e (coefRows h π)) q ≠ 0 := by
  intro n e δ h q hq hδ
  obtain ⟨Q, hQ, key⟩ := exists_poly_eval_coefRows h hq
  filter_upwards [ConeFibreDegree.ae_eval_matrix_ne_zero Q hQ] with π hπ
  rw [key] at hπ
  exact eval_nrmGroups_ne_zero h hδ hπ

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AePolynomialNonvanishingRows =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.EvalEqZeroOfCommonZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.EvalEqZeroOfCommonZero", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Mathlib.Algebra.MvPolynomial.Funext\npublic import Mathlib.Algebra.MvPolynomial.NoZeroDivisors\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace ModelDimension.ChowFactor

noncomputable section

variable {n : ℕ}

theorem eval_linForm (x u : Fin n → ℂ) : eval u (linForm x) = ∑ j, u j * x j := by
  simp [linForm, mul_comm]

theorem linForm_isHomogeneous (x : Fin n → ℂ) : (linForm x).IsHomogeneous 1 := by
  unfold linForm
  apply IsHomogeneous.sum
  intro j _
  exact isHomogeneous_C_mul_X (x j) j

theorem eval_single_linForm (x : Fin n → ℂ) (j : Fin n) :
    eval (Pi.single j 1) (linForm x) = x j := by
  rw [eval_linForm]
  simp [Pi.single_apply]

theorem linForm_ne_zero {x : Fin n → ℂ} (hx : x ≠ 0) : linForm x ≠ 0 := by
  intro h
  apply hx
  funext j
  rw [← eval_single_linForm x j, h]
  simp

def shiftHom (x c : Fin n → ℂ) : MvPolynomial (Fin n) ℂ →ₐ[ℂ] MvPolynomial (Fin n) ℂ :=
  aeval (fun j => X j - C (c j) * linForm x)

theorem linForm_dvd_sub_shift (x c : Fin n → ℂ) (p : MvPolynomial (Fin n) ℂ) :
    linForm x ∣ p - shiftHom x c p := by
  have key : (Ideal.Quotient.mkₐ ℂ (Ideal.span {linForm x})).comp (shiftHom x c) =
      Ideal.Quotient.mkₐ ℂ (Ideal.span {linForm x}) := by
    apply MvPolynomial.algHom_ext
    intro j
    simp only [AlgHom.comp_apply, shiftHom, aeval_X, Ideal.Quotient.mkₐ_eq_mk]
    rw [Ideal.Quotient.eq, Ideal.mem_span_singleton]
    exact ⟨-C (c j), by ring⟩
  have h := DFunLike.congr_fun key p
  simp only [AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk] at h
  rw [eq_comm, Ideal.Quotient.eq, Ideal.mem_span_singleton] at h
  exact h

theorem eval_shiftHom (x c u : Fin n → ℂ) (p : MvPolynomial (Fin n) ℂ) :
    eval u (shiftHom x c p) = eval (fun j => u j - c j * ∑ i, u i * x i) p := by
  induction p using MvPolynomial.induction_on with
  | C a => simp [shiftHom]
  | add p q hp hq => simp [hp, hq]
  | mul_X p j hp =>
    rw [map_mul, map_mul, hp, map_mul]
    congr 1
    simp [shiftHom, eval_linForm]

theorem shiftHom_eq_zero {x c : Fin n → ℂ} (hc : ∑ j, c j * x j = 1)
    {p : MvPolynomial (Fin n) ℂ} (hp : ∀ u : Fin n → ℂ, ∑ j, u j * x j = 0 → eval u p = 0) :
    shiftHom x c p = 0 := by
  apply MvPolynomial.funext
  intro u
  rw [eval_shiftHom, map_zero]
  apply hp
  have : ∑ j, (u j - c j * ∑ i, u i * x i) * x j =
      ∑ j, u j * x j - (∑ j, c j * x j) * ∑ i, u i * x i := by
    rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun j _ => by ring
  rw [this, hc]
  ring

theorem exists_dual {x : Fin n → ℂ} (hx : x ≠ 0) : ∃ c : Fin n → ℂ, ∑ j, c j * x j = 1 := by
  obtain ⟨k, hk⟩ := Function.ne_iff.1 hx
  refine ⟨Pi.single k (x k)⁻¹, ?_⟩
  have hk' : x k ≠ 0 := hk
  simp [Pi.single_apply, hk']

theorem linForm_dvd_of_vanish {x : Fin n → ℂ} (hx : x ≠ 0) {p : MvPolynomial (Fin n) ℂ}
    (hp : ∀ u : Fin n → ℂ, ∑ j, u j * x j = 0 → eval u p = 0) : linForm x ∣ p := by
  obtain ⟨c, hc⟩ := exists_dual hx
  have := linForm_dvd_sub_shift x c p
  rwa [shiftHom_eq_zero hc hp, sub_zero] at this

theorem linForm_prime {x : Fin n → ℂ} (hx : x ≠ 0) : Prime (linForm x) := by
  obtain ⟨c, hc⟩ := exists_dual hx
  refine ⟨linForm_ne_zero hx, fun hu => ?_, fun a b hab => ?_⟩
  · have h0 := hu.map (eval (0 : Fin n → ℂ))
    rw [eval_linForm] at h0
    simp at h0
  · have hl : shiftHom x c (linForm x) = 0 :=
      shiftHom_eq_zero hc fun u hu => by rw [eval_linForm, hu]
    have h0 : shiftHom x c a * shiftHom x c b = 0 := by
      obtain ⟨r, hr⟩ := hab
      rw [← map_mul, hr, map_mul, hl, zero_mul]
    rcases mul_eq_zero.1 h0 with h | h
    · left
      have := linForm_dvd_sub_shift x c a
      rwa [h, sub_zero] at this
    · right
      have := linForm_dvd_sub_shift x c b
      rwa [h, sub_zero] at this

theorem eq_smul_of_linForm_dvd {x y : Fin n → ℂ} (hx : x ≠ 0) (hy : y ≠ 0)
    (h : linForm x ∣ linForm y) : ∃ t : ℂ, y = t • x := by
  obtain ⟨r, hr⟩ := h
  have hr0 : r ≠ 0 := by
    rintro rfl
    exact linForm_ne_zero hy (by simpa using hr)
  have hdeg := congrArg totalDegree hr
  rw [totalDegree_mul_of_isDomain (linForm_ne_zero hx) hr0,
    (linForm_isHomogeneous y).totalDegree (linForm_ne_zero hy),
    (linForm_isHomogeneous x).totalDegree (linForm_ne_zero hx)] at hdeg
  have hr1 : r = C (r.coeff 0) := totalDegree_eq_zero_iff_eq_C.1 (by omega)
  refine ⟨r.coeff 0, ?_⟩
  funext j
  have := congrArg (eval (Pi.single j 1)) hr
  rw [hr1, map_mul, eval_single_linForm, eval_single_linForm, eval_C] at this
  simp only [Pi.smul_apply, smul_eq_mul]
  rw [this, mul_comm]

theorem prod_linForm_dvd (P : Finset (Fin n → ℂ)) (h0 : ∀ x ∈ P, x ≠ 0)
    (hprop : ∀ x ∈ P, ∀ x' ∈ P, ∀ t : ℂ, x' = t • x → x' = x)
    {Q : MvPolynomial (Fin n) ℂ} (hQ : ∀ x ∈ P, linForm x ∣ Q) :
    ∏ x ∈ P, linForm x ∣ Q := by
  classical
  induction P using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    have ha0 := h0 a (Finset.mem_insert_self a s)
    have hs0 : ∀ x ∈ s, x ≠ 0 := fun x hx => h0 x (Finset.mem_insert_of_mem hx)
    obtain ⟨R, hR⟩ := ih hs0
      (fun x hx x' hx' t => hprop x (Finset.mem_insert_of_mem hx) x' (Finset.mem_insert_of_mem hx') t)
      (fun x hx => hQ x (Finset.mem_insert_of_mem hx))
    have hp := linForm_prime ha0
    have hdiv : linForm a ∣ (∏ x ∈ s, linForm x) * R := hR ▸ hQ a (Finset.mem_insert_self a s)
    rw [Finset.prod_insert ha]
    rcases hp.dvd_or_dvd hdiv with h | ⟨R', rfl⟩
    · exfalso
      obtain ⟨y, hy, hdy⟩ := (hp.dvd_finsetProd_iff _).1 h
      obtain ⟨t, ht⟩ := eq_smul_of_linForm_dvd ha0 (hs0 y hy) hdy
      have := hprop a (Finset.mem_insert_self a s) y (Finset.mem_insert_of_mem hy) t ht
      exact ha (this ▸ hy)
    · exact ⟨R', by rw [hR]; ring⟩

variable {e : ℕ}

def firstSub (v : Fin e × Fin n → ℂ) (ij : Fin (e + 1) × Fin n) : MvPolynomial (Fin n) ℂ :=
  Fin.cases (motive := fun _ => MvPolynomial (Fin n) ℂ) (X ij.2) (fun i => C (v (i, ij.2))) ij.1

def sectionPoly (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (v : Fin e × Fin n → ℂ) :
    MvPolynomial (Fin n) ℂ :=
  aeval (firstSub v) g

theorem eval_sectionPoly (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (v : Fin e × Fin n → ℂ)
    (u : Fin n → ℂ) : eval u (sectionPoly g v) = eval (consGroup u v) g := by
  unfold sectionPoly
  induction g using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), map_add (f := _), hp, hq]
  | mul_X p ij hp =>
    rw [map_mul, map_mul, hp, map_mul, aeval_X, eval_X]
    congr 1
    obtain ⟨i, j⟩ := ij
    cases i using Fin.cases <;> simp [firstSub, consGroup]

theorem sectionPoly_isHomogeneous {δ : ℕ} {g : MvPolynomial (Fin (e + 1) × Fin n) ℂ}
    (hg : GroundTheory.Heights₂.Heights.IsMultiHomog δ g) (v : Fin e × Fin n → ℂ) : (sectionPoly g v).IsHomogeneous δ := by
  classical
  have hs : ∀ ij : Fin (e + 1) × Fin n,
      (firstSub v ij).IsHomogeneous (if ij.1 = 0 then 1 else 0) := by
    rintro ⟨i, j⟩
    cases i using Fin.cases with
    | zero => simpa [firstSub] using isHomogeneous_X ℂ j
    | succ i => simpa [firstSub, Fin.succ_ne_zero] using isHomogeneous_C (Fin n) (v (i, j))
  rw [sectionPoly, aeval_def, eval₂_eq']
  apply IsHomogeneous.sum
  intro d hd
  have hw := congrFun (hg (mem_support_iff.1 hd)) 0
  have h1 : ∑ ij, (if ij.1 = (0 : Fin (e + 1)) then 1 else 0) * d ij = δ := by
    rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp)] at hw
    rw [← hw, Finset.sum_apply]
    refine Finset.sum_congr rfl fun ij _ => ?_
    simp [groupWeight, Pi.single_apply, eq_comm, mul_comm]
  have hp := IsHomogeneous.prod Finset.univ (fun ij => firstSub v ij ^ d ij) _
    (fun ij _ => (hs ij).pow (d ij))
  rw [h1] at hp
  simpa using (isHomogeneous_C (Fin n) (AddMonoidAlgebra.coeff g d)).mul hp

theorem eval_eq_zero_of_common_zero {W : Ideal (MvPolynomial (Fin n) ℂ)}
    {g : MvPolynomial (Fin (e + 1) × Fin n) ℂ} (hg : IsChowForm W (e + 1) g)
    {w : Fin (e + 1) × Fin n → ℂ} {x : Fin n → ℂ} (hx : x ≠ 0) (hW : ∀ q ∈ W, eval x q = 0)
    (hw : ∀ i, ∑ j, w (i, j) * x j = 0) : eval w g = 0 := by
  set a := algebraMap ℂ (AlgebraicClosure ℂ) with ha
  have hinj : Function.Injective a := a.injective
  have hmem : (a ∘ w) ∈ incidence W (e + 1) := by
    refine ⟨a ∘ x, fun h => hx ?_, fun q hq => ?_, fun i => ?_⟩
    · funext j
      apply hinj
      simpa using congrFun h j
    · have h1 : aeval x q = 0 := hW q hq
      rw [aeval_algebraMap_apply, h1, map_zero]
    · have := congrArg a (hw i)

      simpa [map_sum] using this
  have h := (hg.2 g).2 dvd_rfl _ hmem
  rw [aeval_algebraMap_apply] at h
  exact hinj (h.trans (map_zero a).symm)

end

end ModelDimension.ChowFactor


open ModelDimension.ChowFactor in
theorem ModelDimension.chow_form_product_formula :
    ∀ (n e δ : ℕ) (W : Ideal (MvPolynomial (Fin n) ℂ)) (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ)
  (v : Fin e × Fin n → ℂ) (P : Finset (Fin n → ℂ)) (u₀ : Fin n → ℂ),
  IsChowForm W (e + 1) g → GroundTheory.Heights₂.Heights.IsMultiHomog δ g →
  (∀ x ∈ P, x ≠ 0 ∧ (∀ q ∈ W, eval x q = 0) ∧ ∀ i, ∑ j, v (i, j) * x j = 0) →
  (∀ x ∈ P, ∀ x' ∈ P, ∀ t : ℂ, x' = t • x → x' = x) →
  P.card = δ → eval (consGroup u₀ v) g ≠ 0 →
    ∃ c : ℂ, c ≠ 0 ∧ ∀ u : Fin n → ℂ, eval (consGroup u v) g = c * ∏ x ∈ P, ∑ j, u j * x j := by
  intro n e δ W g v P u₀ hg hd hP hprop hcard hne
  have hQ0 : sectionPoly g v ≠ 0 := by
    intro h
    apply hne
    rw [← eval_sectionPoly, h, map_zero]
  have hdvd : ∏ x ∈ P, linForm x ∣ sectionPoly g v := by
    refine prod_linForm_dvd P (fun x hx => (hP x hx).1) hprop fun x hx => ?_
    obtain ⟨hx0, hxW, hxv⟩ := hP x hx
    refine linForm_dvd_of_vanish hx0 fun u hu => ?_
    rw [eval_sectionPoly]
    refine eval_eq_zero_of_common_zero hg hx0 hxW fun i => ?_
    cases i using Fin.cases with
    | zero => simpa [consGroup] using hu
    | succ i => simpa [consGroup] using hxv i
  obtain ⟨R, hR⟩ := hdvd
  have hprod0 : ∏ x ∈ P, linForm x ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun x hx => linForm_ne_zero (hP x hx).1
  have hR0 : R ≠ 0 := by
    rintro rfl
    exact hQ0 (by simpa using hR)
  have hprodH : (∏ x ∈ P, linForm x).IsHomogeneous δ := by
    have := IsHomogeneous.prod P (fun x => linForm x) (fun _ => 1)
      (fun x _ => linForm_isHomogeneous x)
    simpa [hcard] using this
  have hdeg := congrArg totalDegree hR
  rw [totalDegree_mul_of_isDomain hprod0 hR0, hprodH.totalDegree hprod0,
    (sectionPoly_isHomogeneous hd v).totalDegree hQ0] at hdeg
  have hR1 : R = C (R.coeff 0) := totalDegree_eq_zero_iff_eq_C.1 (by omega)
  refine ⟨R.coeff 0, ?_, fun u => ?_⟩
  · intro h
    rw [h, map_zero] at hR1
    exact hR0 hR1
  · rw [← eval_sectionPoly, hR, hR1, map_mul, eval_C, map_prod, mul_comm]
    simp only [eval_linForm, coeff_C, if_true]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.EvalEqZeroOfCommonZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormSpecializationProportional =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormSpecializationProportional", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.EvalEqZeroOfCommonZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.chow_form_specialization_proportional : ∀ (n e δ : ℕ) (W : Ideal (MvPolynomial (Fin n) ℂ)) (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ)
  (v : Fin e × Fin n → ℂ) (P : Finset (Fin n → ℂ)) (u₀ : Fin n → ℂ),
  IsChowForm W (e + 1) g → GroundTheory.Heights₂.Heights.IsMultiHomog δ g →
  (∀ x ∈ P, x ≠ 0 ∧ (∀ q ∈ W, eval x q = 0) ∧ ∀ i, ∑ j, v (i, j) * x j = 0) →
  (∀ x ∈ P, ∀ x' ∈ P, ∀ t : ℂ, x' = t • x → x' = x) →
  P.card = δ → eval (consGroup u₀ v) g ≠ 0 →
    ∃ c : ℂ, c ≠ 0 ∧ ∀ u : Fin n → ℂ, eval (consGroup u v) g = c * ∏ x ∈ P, ∑ j, u j * x j := by
  first | exact @ModelDimension.chow_form_product_formula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormSpecializationProportional =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibrefactor =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibrefactor", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormSpecializationProportional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace PositivityTheory.Xgn.A_xgz_chow_mahler_fibrefactor

theorem pair_eq {n : ℕ} (h : HermNorm n) (p : Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)) :
    ∑ j, ((h.mat)⁻¹ *ᵥ p) j * h.pointOf y j = ∑ j, p j * y j := by
  have h1 : ((h.mat)⁻¹ *ᵥ p) ⬝ᵥ (h.matᵀ *ᵥ fun i => y i) = p ⬝ᵥ fun i => y i := by
    rw [Matrix.mulVec_transpose, dotProduct_comm, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
      Matrix.mul_nonsing_inv _ h.isUnit_det, Matrix.one_mulVec, dotProduct_comm]
  exact h1

theorem pointOf_inj {n : ℕ} (h : HermNorm n) : Function.Injective h.pointOf := by
  intro y y' hy
  ext i
  have h1 := pair_eq h (Pi.single i 1) y
  have h2 := pair_eq h (Pi.single i 1) y'
  rw [hy, h2] at h1
  simpa [Pi.single_apply] using h1.symm

theorem row_zero {n e : ℕ} {S : Set (EuclideanSpace ℂ (Fin n))} {π : Fin (e + 1) → Fin n → ℂ}
    {y : EuclideanSpace ℂ (Fin n)} (hy : y ∈ fibrePts S π) : ∑ j, π 0 j * y j = 1 := by
  have h1 : linProj π y 0 = firstCoordVec (e + 1) 0 := by rw [hy.2]
  simpa [linProj, firstCoordVec] using h1

theorem row_succ {n e : ℕ} {S : Set (EuclideanSpace ℂ (Fin n))} {π : Fin (e + 1) → Fin n → ℂ}
    {y : EuclideanSpace ℂ (Fin n)} (hy : y ∈ fibrePts S π) (i : Fin e) :
    ∑ j, π i.succ j * y j = 0 := by
  have h1 : linProj π y i.succ = firstCoordVec (e + 1) i.succ := by rw [hy.2]
  simpa [linProj, firstCoordVec] using h1

end PositivityTheory.Xgn.A_xgz_chow_mahler_fibrefactor

open PositivityTheory.Xgn.A_xgz_chow_mahler_fibrefactor in
theorem PositivityTheory.Xgn.t_xgz_chow_mahler_fibrefactor : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (π : Fin (e + 1) → Fin n → ℂ) (u₀ : Fin n → ℂ),
  IsProjPrime W → IsChowForm W (e + 1) g → GroundTheory.Heights₂.Heights.IsMultiHomog δ g →
  (fibrePts (coneSet h W) π).encard = δ →
  eval (consGroup u₀ (nrmGroups h e (coefRows h π))) g ≠ 0 →
    ∃ c : ℂ, c ≠ 0 ∧ ∀ u : Fin n → ℂ, eval (consGroup u (nrmGroups h e (coefRows h π))) g =
      c * ∏ᶠ y ∈ fibrePts (coneSet h W) π, ∑ j, u j * h.pointOf y j := by
  classical
  intro n e δ h W g π u₀ _ hch hmh hcard hne
  have hfin : (fibrePts (coneSet h W) π).Finite := Set.finite_of_encard_eq_coe hcard
  have hc : hfin.toFinset.card = δ := by
    have h1 := hfin.encard_eq_coe_toFinset_card
    rw [hcard] at h1
    exact_mod_cast h1.symm
  have hone : ∀ y ∈ fibrePts (coneSet h W) π,
      ∑ j, ((h.mat)⁻¹ *ᵥ π 0) j * h.pointOf y j = 1 := fun y hy => by
    rw [pair_eq, row_zero hy]
  obtain ⟨c, hc0, hcu⟩ := _root_.GlobalTheory.CompanionTheory.Relay.chow_form_specialization_proportional n e δ W g (nrmGroups h e (coefRows h π))
    (hfin.toFinset.image h.pointOf) u₀ hch hmh
    (by
      intro x hx
      obtain ⟨y, hy, rfl⟩ := Finset.mem_image.mp hx
      rw [Set.Finite.mem_toFinset] at hy
      refine ⟨fun h0 => ?_, hy.1, fun i => ?_⟩
      · have h1 := hone y hy
        rw [h0] at h1
        simp at h1
      · have h1 := pair_eq h (π i.succ) y
        rw [row_succ hy] at h1
        simp only [nrmGroups, coefRows, mul_assoc]
        rw [← Finset.mul_sum, h1, mul_zero])
    (by
      intro x hx x' hx' t ht
      obtain ⟨y, hy, rfl⟩ := Finset.mem_image.mp hx
      obtain ⟨y', hy', rfl⟩ := Finset.mem_image.mp hx'
      rw [Set.Finite.mem_toFinset] at hy hy'
      have h1 := hone y hy
      have h2 := hone y' hy'
      rw [ht] at h2
      simp only [Pi.smul_apply, smul_eq_mul, mul_left_comm _ t] at h2
      rw [← Finset.mul_sum, h1, mul_one] at h2
      rw [ht, h2, one_smul])
    (by rw [Finset.card_image_of_injective _ (pointOf_inj h), hc]) hne
  refine ⟨c, hc0, fun u => ?_⟩
  rw [hcu u, Finset.prod_image (fun a _ b _ hab => pointOf_inj h hab),
    finprod_mem_eq_finite_toFinset_prod _ hfin]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibrefactor =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormFibreSpecialization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormFibreSpecialization", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgzChowMahlerFibrefactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.chow_form_fibre_specialization : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
  (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (π : Fin (e + 1) → Fin n → ℂ) (u₀ : Fin n → ℂ),
  IsProjPrime W → IsChowForm W (e + 1) g → GroundTheory.Heights₂.Heights.IsMultiHomog δ g →
  (fibrePts (coneSet h W) π).encard = δ →
  eval (consGroup u₀ (nrmGroups h e (coefRows h π))) g ≠ 0 →
    ∃ c : ℂ, c ≠ 0 ∧ ∀ u : Fin n → ℂ, eval (consGroup u (nrmGroups h e (coefRows h π))) g =
      c * ∏ᶠ y ∈ fibrePts (coneSet h W) π, ∑ j, u j * h.pointOf y j := by
  first | exact @PositivityTheory.Xgn.t_xgz_chow_mahler_fibrefactor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormFibreSpecialization =====

-- ===== clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.GaussianSphereMeanIntegral =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.CommonZeroEvaluation.GaussianSphereMeanIntegral", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace ModelDimension.GSph

noncomputable section

theorem transfer {Ω S X : Type*} [MeasurableSpace Ω] [MeasurableSpace S] [MeasurableSpace X]
    (γ : Measure Ω) [IsFiniteMeasure γ] (ν : Measure S) (μ : Measure X) [IsFiniteMeasure μ]
    (hμ : μ Set.univ ≠ 0) {φ : Ω → X} (hφ : Measurable φ) {T : S × X → X} (hT : Measurable T)
    (hmap : γ.map φ = (ν.prod μ).map T) {F : X → ℝ} (hF : AEStronglyMeasurable F (γ.map φ))
    (hinv : ∀ᵐ s ∂ν, ∀ u, F (T (s, u)) = F u) (hint : Integrable F μ) :
    Integrable (fun x => F (φ x)) γ ∧
      ∫ x, F (φ x) ∂γ = (γ Set.univ).toReal * ⨍ u, F u ∂μ := by
  have hmass : γ Set.univ = ν Set.univ * μ Set.univ := by
    have h1 : γ Set.univ = (γ.map φ) Set.univ := by
      rw [Measure.map_apply hφ MeasurableSet.univ, Set.preimage_univ]
    rw [h1, hmap, Measure.map_apply hT MeasurableSet.univ, Set.preimage_univ,
      ← Set.univ_prod_univ, Measure.prod_prod]
  have hνfin : ν Set.univ ≠ ⊤ := by
    have h2 : ν Set.univ * μ Set.univ ≠ ⊤ := by rw [← hmass]; exact measure_ne_top γ _
    exact (ENNReal.lt_top_of_mul_ne_top_left h2 hμ).ne
  haveI : IsFiniteMeasure ν := ⟨lt_top_iff_ne_top.2 hνfin⟩
  have hF' : AEStronglyMeasurable F ((ν.prod μ).map T) := hmap ▸ hF
  have hFT : AEStronglyMeasurable (fun p => F (T p)) (ν.prod μ) := hF'.comp_measurable hT
  have hintT : Integrable (fun p => F (T p)) (ν.prod μ) := by
    rw [integrable_prod_iff hFT]
    constructor
    · filter_upwards [hinv] with s hs
      simp only [hs]
      exact hint
    · refine (integrable_const (∫ u, ‖F u‖ ∂μ)).congr ?_
      filter_upwards [hinv] with s hs
      simp only [hs]
  have hintMap : Integrable F ((ν.prod μ).map T) := (integrable_map_measure hF' hT.aemeasurable).2 hintT
  refine ⟨?_, ?_⟩
  · refine (integrable_map_measure hF hφ.aemeasurable).1 ?_
    rw [hmap]; exact hintMap
  · rw [← integral_map hφ.aemeasurable hF, hmap, integral_map hT.aemeasurable hF',
      integral_prod _ hintT]
    have h3 : (fun s => ∫ u, F (T (s, u)) ∂μ) =ᵐ[ν] fun _ => ∫ u, F u ∂μ := by
      filter_upwards [hinv] with s hs
      simp only [hs]
    rw [integral_congr_ae h3, integral_const, smul_eq_mul, average_eq, smul_eq_mul, hmass,
      ENNReal.toReal_mul]
    have h4 : (μ Set.univ).toReal ≠ 0 := ENNReal.toReal_ne_zero.2 ⟨hμ, measure_ne_top μ _⟩
    simp only [measureReal_def]
    field_simp

variable {n e : ℕ}

def sc (c : Fin e → ℝ) : (Fin e × Fin n → ℂ) →ₗ[ℂ] (Fin e × Fin n → ℂ) where
  toFun u := fun ij => (c ij.1 : ℂ) * u ij
  map_add' u v := by funext ij; simp [mul_add]
  map_smul' a u := by funext ij; simp [mul_left_comm]

theorem sc_apply (c : Fin e → ℝ) (u : Fin e × Fin n → ℂ) (ij : Fin e × Fin n) :
    sc c u ij = (c ij.1 : ℂ) * u ij := rfl

theorem sc_surjective {c : Fin e → ℝ} (hc : ∀ i, 0 < c i) :
    Function.Surjective (sc (n := n) c) := by
  intro v
  refine ⟨fun ij => v ij / (c ij.1 : ℂ), ?_⟩
  funext ij
  have hne : (c ij.1 : ℂ) ≠ 0 := by exact_mod_cast (hc ij.1).ne'
  simp only [sc_apply]
  field_simp

def rowN (h : HermNorm n) (u : Fin e × Fin n → ℂ) (i : Fin e) : ℝ := h.norm fun j => u (i, j)

theorem rowN_nonneg (h : HermNorm n) (u : Fin e × Fin n → ℂ) (i : Fin e) : 0 ≤ rowN h u i :=
  Real.sqrt_nonneg _

theorem continuous_rowN (h : HermNorm n) (i : Fin e) :
    Continuous fun u : Fin e × Fin n → ℂ => rowN h u i := continuous_hermNorm_group h i

theorem rowN_sc (h : HermNorm n) {c : Fin e → ℝ} (hc : ∀ i, 0 < c i) (u : Fin e × Fin n → ℂ)
    (i : Fin e) : rowN h (sc c u) i = c i * rowN h u i := by
  unfold rowN HermNorm.norm
  have h1 : (fun j => sc c u (i, j)) = (c i : ℂ) • fun j => u (i, j) := by
    funext j; simp [sc_apply]
  rw [h1, Matrix.mulVec_smul]
  simp only [Pi.smul_apply, smul_eq_mul, norm_mul, mul_pow, ← Finset.mul_sum]
  rw [Real.sqrt_mul (by positivity), Complex.norm_real, Real.norm_eq_abs, sq_abs,
    Real.sqrt_sq (hc i).le]

theorem nrm_sc (h : HermNorm n) {c : Fin e → ℝ} (hc : ∀ i, 0 < c i) (u : Fin e × Fin n → ℂ) :
    nrmGroups h e (sc c u) = nrmGroups h e u := by
  funext ij
  have h1 : (h.norm fun j => sc c u (ij.1, j)) = c ij.1 * h.norm fun j => u (ij.1, j) :=
    rowN_sc h hc u ij.1
  simp only [nrmGroups]
  rw [h1, sc_apply]
  have hne : (c ij.1 : ℂ) ≠ 0 := by exact_mod_cast (hc ij.1).ne'
  push_cast
  rw [mul_inv, mul_assoc, ← mul_assoc _ (c ij.1 : ℂ), mul_comm _ (c ij.1 : ℂ), ← mul_assoc,
    ← mul_assoc, inv_mul_cancel₀ hne, one_mul]

theorem measurable_sc (c : Fin e → ℝ) : Measurable (sc (n := n) c) :=
  (LinearMap.continuous_of_finiteDimensional _).measurable

theorem map_sc {c : Fin e → ℝ} (hc : ∀ i, 0 < c i) :
    ∃ d : ℝ≥0∞, 0 < d ∧ (volume : Measure (Fin e × Fin n → ℂ)).map (sc c) = d • volume := by
  classical
  set f : (Fin e × Fin n → ℂ) →ₗ[ℝ] (Fin e × Fin n → ℂ) := (sc (n := n) c).restrictScalars ℝ with hf
  have hinj : Function.Injective f := by
    intro u v huv
    funext ij
    have h1 := congrFun huv ij
    simp only [hf, LinearMap.coe_restrictScalars, sc_apply] at h1
    have hc' : (c ij.1 : ℂ) ≠ 0 := by exact_mod_cast (hc ij.1).ne'
    exact mul_left_cancel₀ hc' h1
  have hsurj : Function.Surjective f := sc_surjective hc
  have hdet : LinearMap.det f ≠ 0 :=
    ((LinearMap.isUnit_iff_isUnit_det f).1 ((Module.End.isUnit_iff f).2 ⟨hinj, hsurj⟩)).ne_zero
  refine ⟨ENNReal.ofReal |(LinearMap.det f)⁻¹|, ?_, ?_⟩
  · exact ENNReal.ofReal_pos.2 (abs_pos.2 (inv_ne_zero hdet))
  · exact Measure.map_linearMap_addHaar_eq_smul_addHaar (volume : Measure (Fin e × Fin n → ℂ)) hdet

theorem aesm (h : HermNorm n) (G : (Fin e × Fin n → ℂ) → ℝ)
    (hG : AEStronglyMeasurable (fun u => G (nrmGroups h e u)) (volume.restrict (ballProd h e))) :
    AEStronglyMeasurable (fun u => G (nrmGroups h e u)) volume := by
  have hcov : ∀ u : Fin e × Fin n → ℂ, ∃ m : ℕ,
      sc (n := n) (fun _ => (1 : ℝ) / (m + 1)) u ∈ ballProd h e := by
    intro u
    obtain ⟨m, hm⟩ := exists_nat_gt (∑ i, rowN h u i)
    refine ⟨m, ?_⟩
    simp only [ballProd, Set.mem_setOf_eq]
    intro i
    have h1 := rowN_sc h (c := fun _ => (1 : ℝ) / (m + 1)) (fun _ => by positivity) u i
    change rowN h (sc (fun _ => (1 : ℝ) / (m + 1)) u) i < 1
    rw [h1]
    have hle : rowN h u i ≤ ∑ i, rowN h u i :=
      Finset.single_le_sum (fun j _ => rowN_nonneg h u j) (Finset.mem_univ i)
    have hpos : (0 : ℝ) < m + 1 := by positivity
    rw [div_mul_eq_mul_div, one_mul, div_lt_one hpos]
    linarith
  have hF : ∀ m : ℕ, AEStronglyMeasurable (fun u => G (nrmGroups h e u))
      (volume.restrict (sc (n := n) (fun _ => (1 : ℝ) / (m + 1)) ⁻¹' ballProd h e)) := by
    intro m
    have hc : ∀ i : Fin e, (0 : ℝ) < (fun _ => (1 : ℝ) / (m + 1)) i := fun _ => by positivity
    obtain ⟨d, hd, hmap⟩ := map_sc (n := n) hc
    have hq : Measure.QuasiMeasurePreserving (sc (n := n) (fun _ => (1 : ℝ) / (m + 1)))
        (volume.restrict (sc (n := n) (fun _ => (1 : ℝ) / (m + 1)) ⁻¹' ballProd h e))
        (volume.restrict (ballProd h e)) := by
      refine ⟨(measurable_sc _).aemeasurable, ?_⟩
      rw [← Measure.restrict_map (measurable_sc _) (isOpen_ballProd h e).measurableSet, hmap,
        Measure.restrict_smul]
      exact Measure.smul_absolutelyContinuous
    have h2 := hG.comp_quasiMeasurePreserving hq
    have heq : (fun u => G (nrmGroups h e u)) =
        (fun u => G (nrmGroups h e u)) ∘ sc (n := n) (fun _ => (1 : ℝ) / (m + 1)) := by
      funext u
      simp only [Function.comp, nrm_sc h hc u]
    rw [heq]
    exact h2
  have hU : (⋃ m : ℕ, sc (n := n) (fun _ => (1 : ℝ) / (m + 1)) ⁻¹' ballProd h e) = Set.univ := by
    ext u
    simp only [Set.mem_iUnion, Set.mem_preimage, Set.mem_univ, iff_true]
    exact hcov u
  rw [← Measure.restrict_univ (μ := volume), ← hU]
  exact aestronglyMeasurable_iUnion_iff.2 hF

def ex1 : Measure ℝ :=
  (volume.restrict (Set.Ioi 0)).withDensity fun s => ENNReal.ofReal (Real.exp (-s))

theorem exponential_measure_Ioi {t : ℝ} (ht : 0 ≤ t) : ex1 (Set.Ioi t) = ENNReal.ofReal (Real.exp (-t)) := by
  rw [ex1, withDensity_apply _ measurableSet_Ioi, Measure.restrict_restrict measurableSet_Ioi,
    Set.Ioi_inter_Ioi, sup_eq_left.2 ht,
    ← ofReal_integral_eq_lintegral_ofReal (integrableOn_exp_neg_Ioi t)
      (ae_of_all _ fun x => (Real.exp_pos _).le), integral_exp_neg_Ioi]

instance exponential_measure_finite : IsFiniteMeasure ex1 := ⟨by
  rw [ex1, withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ]
  exact (integrableOn_exp_neg_Ioi 0).lintegral_lt_top⟩

theorem exponential_measure_pos_ae : ∀ᵐ s ∂ex1, 0 < s :=
  (withDensity_absolutelyContinuous _ _).ae_le (ae_restrict_mem measurableSet_Ioi)

def exP (e : ℕ) : Measure (Fin e → ℝ) := Measure.pi fun _ => ex1

instance isFiniteMeasure_piExponential : IsFiniteMeasure (exP e) := by
  unfold exP
  infer_instance

theorem ae_pos_piExponential : ∀ᵐ s ∂(exP e), ∀ i, 0 < s i := by
  unfold exP
  rw [ae_all_iff]
  intro i
  exact (Measure.tendsto_eval_ae_ae (i := i)).eventually exponential_measure_pos_ae

def rowGauss (h : HermNorm n) (u : Fin e × Fin n → ℂ) : ℝ≥0∞ :=
  ENNReal.ofReal (Real.exp (-∑ i, rowN h u i ^ 2))

theorem measurable_rowGauss (h : HermNorm n) : Measurable (rowGauss (e := e) h) := by
  unfold rowGauss
  refine ENNReal.measurable_ofReal.comp (Real.measurable_exp.comp ?_)
  refine Measurable.neg (Finset.measurable_sum _ fun i _ => ?_)
  exact ((continuous_rowN h i).measurable).pow_const 2

def under (h : HermNorm n) (e : ℕ) : Set ((Fin e → ℝ) × (Fin e × Fin n → ℂ)) :=
  {p | ∀ i, rowN h p.2 i ^ 2 < p.1 i}

theorem isOpen_under (h : HermNorm n) : IsOpen (under h e) := by
  have e1 : under h e = ⋂ i, {p | rowN h p.2 i ^ 2 < p.1 i} := by
    ext p
    simp [under]
  rw [e1]
  exact isOpen_iInter_of_finite fun i =>
    isOpen_lt (((continuous_rowN h i).comp continuous_snd).pow 2)
      ((continuous_apply i).comp continuous_fst)

theorem piExponential_preimage_under (h : HermNorm n) (u : Fin e × Fin n → ℂ) :
    exP e ((fun s => (s, u)) ⁻¹' under h e) = rowGauss h u := by
  have hpre : (fun s => (s, u)) ⁻¹' under h e = Set.univ.pi fun i => Set.Ioi (rowN h u i ^ 2) := by
    ext s; simp [under]
  rw [hpre, exP, Measure.pi_pi]
  simp_rw [exponential_measure_Ioi (sq_nonneg _)]
  rw [rowGauss, ← ENNReal.ofReal_prod_of_nonneg (fun i _ => (Real.exp_pos _).le), ← Real.exp_sum,
    Finset.sum_neg_distrib]

def scT (p : (Fin e → ℝ) × (Fin e × Fin n → ℂ)) : Fin e × Fin n → ℂ :=
  sc (fun i => √(p.1 i)) p.2

theorem measurable_scT : Measurable (scT (n := n) (e := e)) := by
  unfold scT
  refine Measurable.of_eval fun ij => ?_
  simp only [sc_apply]
  refine Measurable.mul ?_ ?_
  · exact Complex.continuous_ofReal.measurable.comp
      (Real.continuous_sqrt.measurable.comp ((measurable_pi_apply ij.1).comp measurable_fst))
  · exact (measurable_pi_apply ij).comp measurable_snd

def wt (h : HermNorm n) (s : Fin e → ℝ) : ℝ≥0∞ :=
  volume (Prod.mk s ⁻¹' under h e) / volume (ballProd h e)

theorem measurable_wt (h : HermNorm n) : Measurable (wt (e := e) h) :=
  (measurable_measure_prodMk_left (isOpen_under h).measurableSet).div_const _

theorem wt_mul (h : HermNorm n) {s : Fin e → ℝ} (hs : ∀ i, 0 < s i) {A : Set (Fin e × Fin n → ℂ)}
    (hA : MeasurableSet A) :
    wt h s * (volume.restrict (ballProd h e)) (Prod.mk s ⁻¹' (scT ⁻¹' A)) =
      volume (Prod.mk s ⁻¹' (under h e ∩ Prod.snd ⁻¹' A)) := by
  classical
  set c : Fin e → ℝ := fun i => √(s i) with hcd
  have hc : ∀ i, 0 < c i := fun i => Real.sqrt_pos.2 (hs i)
  set c' : Fin e → ℝ := fun i => (c i)⁻¹ with hcd'
  have hc' : ∀ i, 0 < c' i := fun i => inv_pos.2 (hc i)
  have hcomp : ∀ u, sc (n := n) c (sc c' u) = u := by
    intro u
    funext ij
    simp only [sc_apply, hcd', ← mul_assoc, Complex.ofReal_inv]
    rw [mul_inv_cancel₀ (by exact_mod_cast (hc ij.1).ne'), one_mul]
  have hslice : Prod.mk s ⁻¹' under h e = sc (n := n) c' ⁻¹' ballProd h e := by
    ext u
    show (∀ i, rowN h u i ^ 2 < s i) ↔ ∀ i, rowN h (sc c' u) i < 1
    refine forall_congr' fun i => ?_
    rw [rowN_sc h hc' u i, ← Real.lt_sqrt (rowN_nonneg h u i)]
    show rowN h u i < c i ↔ (c i)⁻¹ * rowN h u i < 1
    rw [inv_mul_lt_iff₀ (hc i), mul_one]
  have hpre : Prod.mk s ⁻¹' (under h e ∩ Prod.snd ⁻¹' A) =
      sc (n := n) c' ⁻¹' (ballProd h e ∩ sc c ⁻¹' A) := by
    rw [Set.preimage_inter, hslice, Set.preimage_inter]
    congr 1
    ext u
    simp [hcomp]
  have hmeasA : MeasurableSet (sc (n := n) c ⁻¹' A) := measurable_sc c hA
  have hball : MeasurableSet (ballProd h e) := (isOpen_ballProd h e).measurableSet
  obtain ⟨d, -, hd⟩ := map_sc (n := n) hc'
  have hvol : ∀ X, MeasurableSet X → volume (sc (n := n) c' ⁻¹' X) = d * volume X := by
    intro X hX
    have h1 := congrArg (fun μ : Measure (Fin e × Fin n → ℂ) => μ X) hd
    simp only [Measure.smul_apply, smul_eq_mul] at h1
    rw [Measure.map_apply (measurable_sc c') hX] at h1
    exact h1
  have hwt : wt h s = d := by
    rw [wt, hslice, hvol _ hball]
    exact ENNReal.mul_div_cancel_right (volume_ballProd_pos h e).ne' (volume_ballProd_lt_top h e).ne
  rw [hwt, hpre, hvol _ (hball.inter hmeasA)]
  change d * (volume.restrict (ballProd h e)) (sc (n := n) c ⁻¹' A) = _
  rw [Measure.restrict_apply hmeasA, Set.inter_comm]

theorem layer (h : HermNorm n) :
    (volume : Measure (Fin e × Fin n → ℂ)).withDensity (rowGauss h) =
      (((exP e).withDensity (wt h)).prod (volume.restrict (ballProd h e))).map scT := by
  ext A hA
  have hm : MeasurableSet (under h e ∩ Prod.snd ⁻¹' A) :=
    (isOpen_under h).measurableSet.inter (measurable_snd hA)
  rw [Measure.map_apply measurable_scT hA, Measure.prod_apply (measurable_scT hA),
    lintegral_withDensity_eq_lintegral_mul _ (measurable_wt h)
      (measurable_measure_prodMk_left (measurable_scT hA))]
  have h1 : ∫⁻ s, wt h s * (volume.restrict (ballProd h e)) (Prod.mk s ⁻¹' (scT ⁻¹' A))
      ∂(exP e) = ∫⁻ s, volume (Prod.mk s ⁻¹' (under h e ∩ Prod.snd ⁻¹' A)) ∂(exP e) := by
    refine lintegral_congr_ae ?_
    filter_upwards [ae_pos_piExponential (e := e)] with s hs
    exact wt_mul h hs hA
  simp only [Pi.mul_apply]
  rw [h1, ← Measure.prod_apply hm, Measure.prod_apply_symm hm, withDensity_apply _ hA,
    ← lintegral_indicator hA]
  refine lintegral_congr fun u => ?_
  by_cases hu : u ∈ A
  · rw [Set.indicator_of_mem hu, ← piExponential_preimage_under]
    congr 1
    ext s
    simp [hu]
  · rw [Set.indicator_of_notMem hu]
    have e1 : (fun s => (s, u)) ⁻¹' (under h e ∩ Prod.snd ⁻¹' A) = ∅ := by
      ext s
      simp [hu]
    rw [e1, measure_empty]

def splitL (h : HermNorm n) (e : ℕ) :
    (Fin (e + 1) → Fin n → ℂ) →ₗ[ℂ] (Fin n → ℂ) × (Fin e × Fin n → ℂ) where
  toFun π := (π 0, coefRows h π)
  map_add' π ρ := by
    refine Prod.ext rfl (funext fun ij => ?_)
    simp [coefRows, Matrix.mulVec_add]
  map_smul' a π := by
    refine Prod.ext rfl (funext fun ij => ?_)
    simp [coefRows, Matrix.mulVec_smul]

theorem splitL_surjective (h : HermNorm n) : Function.Surjective (splitL h e) := by
  rintro ⟨x, w⟩
  refine ⟨Fin.cons x fun i => h.mat *ᵥ fun j => w (i, j), ?_⟩
  simp only [splitL, LinearMap.coe_mk, AddHom.coe_mk, Fin.cons_zero, Prod.mk.injEq, true_and]
  funext ij
  simp only [coefRows, Fin.cons_succ, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ h.isUnit_det,
    Matrix.one_mulVec]

theorem measurable_splitL (h : HermNorm n) : Measurable (splitL h e) :=
  (LinearMap.continuous_of_finiteDimensional _).measurable

theorem measurable_coefRows (h : HermNorm n) :
    Measurable (coefRows (e := e) h) := measurable_snd.comp (measurable_splitL h)

theorem rowN_coefRows (h : HermNorm n) (π : Fin (e + 1) → Fin n → ℂ) (i : Fin e) :
    rowN h (coefRows h π) i ^ 2 = ∑ j, ‖π i.succ j‖ ^ 2 := by
  unfold rowN HermNorm.norm
  rw [Real.sq_sqrt (Finset.sum_nonneg fun _ _ => by positivity)]
  have h1 : (h.mat *ᵥ fun j => coefRows h π (i, j)) = π i.succ := by
    have h2 : (fun j => coefRows h π (i, j)) = h.mat⁻¹ *ᵥ π i.succ := by funext j; rfl
    rw [h2, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ h.isUnit_det, Matrix.one_mulVec]
  rw [h1]

theorem map_coefRows (h : HermNorm n) : ∃ a : ℝ≥0∞,
    (gaussM (e + 1) n).map (coefRows h) =
      a • (volume : Measure (Fin e × Fin n → ℂ)).withDensity (rowGauss h) := by
  classical
  have hinj : Function.Injective (splitL h e) := by
    intro π ρ hπρ
    have h0 : π 0 = ρ 0 := congrArg Prod.fst hπρ
    have h1 : coefRows h π = coefRows h ρ := congrArg Prod.snd hπρ
    funext i
    induction i using Fin.cases with
    | zero => exact h0
    | succ i' =>
      have hrow : h.mat⁻¹ *ᵥ π i'.succ = h.mat⁻¹ *ᵥ ρ i'.succ := by
        funext j
        exact congrFun h1 (i', j)
      have h2 := congrArg (fun v => h.mat *ᵥ v) hrow
      simpa [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ h.isUnit_det] using h2
  let Ψl : (Fin (e + 1) → Fin n → ℂ) ≃ₗ[ℝ] (Fin n → ℂ) × (Fin e × Fin n → ℂ) :=
    LinearEquiv.ofBijective ((splitL h e).restrictScalars ℝ) ⟨hinj, splitL_surjective h⟩
  let Ψ := Ψl.toContinuousLinearEquiv
  have hΨ : ∀ π, Ψ π = (π 0, coefRows h π) := fun π => rfl
  haveI : (volume : Measure (Fin n → ℂ)).IsAddHaarMeasure := inferInstance
  haveI : (volume : Measure (Fin e × Fin n → ℂ)).IsAddHaarMeasure := inferInstance
  haveI : (volume : Measure ((Fin n → ℂ) × (Fin e × Fin n → ℂ))).IsAddHaarMeasure :=
    Measure.prod.instIsAddHaarMeasure _ _
  haveI : (volume : Measure (Fin (e + 1) → Fin n → ℂ)).IsAddHaarMeasure :=
    Measure.pi.isAddHaarMeasure _
  haveI : (Measure.map Ψ (volume : Measure (Fin (e + 1) → Fin n → ℂ))).IsAddHaarMeasure :=
    Ψ.isAddHaarMeasure_map volume
  have hc := Measure.isAddLeftInvariant_eq_smul
    (Measure.map Ψ (volume : Measure (Fin (e + 1) → Fin n → ℂ)))
    (volume : Measure ((Fin n → ℂ) × (Fin e × Fin n → ℂ)))
  set c := (Measure.map Ψ (volume : Measure (Fin (e + 1) → Fin n → ℂ))).addHaarScalarFactor
    (volume : Measure ((Fin n → ℂ) × (Fin e × Fin n → ℂ)))
  have hg0 : Measurable fun x : Fin n → ℂ => ENNReal.ofReal (Real.exp (-∑ j, ‖x j‖ ^ 2)) := by
    fun_prop
  refine ⟨(c : ℝ≥0∞) * ∫⁻ x : Fin n → ℂ, ENNReal.ofReal (Real.exp (-∑ j, ‖x j‖ ^ 2)), ?_⟩
  ext A hA
  have hmA : MeasurableSet (coefRows h ⁻¹' A) := measurable_coefRows h hA
  rw [Measure.map_apply (measurable_coefRows h) hA, Measure.smul_apply, withDensity_apply _ hA,
    smul_eq_mul, gaussM, withDensity_apply _ hmA, ← lintegral_indicator hmA]
  have key : ∀ π, (coefRows h ⁻¹' A).indicator matGauss π =
      (fun p : (Fin n → ℂ) × (Fin e × Fin n → ℂ) =>
        ENNReal.ofReal (Real.exp (-∑ j, ‖p.1 j‖ ^ 2)) * A.indicator (rowGauss h) p.2) (Ψ π) := by
    intro π
    rw [hΨ]
    simp only [Set.indicator, Set.mem_preimage]
    split_ifs with hπ
    · simp only [matGauss, rowGauss, rowN_coefRows, Fin.sum_univ_succ]
      rw [← ENNReal.ofReal_mul (Real.exp_pos _).le, ← Real.exp_add]
      congr 2
      ring
    · simp
  simp_rw [key]
  have hF : Measurable fun p : (Fin n → ℂ) × (Fin e × Fin n → ℂ) =>
      ENNReal.ofReal (Real.exp (-∑ j, ‖p.1 j‖ ^ 2)) * A.indicator (rowGauss h) p.2 :=
    (hg0.comp measurable_fst).mul (((measurable_rowGauss h).indicator hA).comp measurable_snd)
  have hprod := lintegral_prod_mul (μ := (volume : Measure (Fin n → ℂ)))
    (ν := (volume : Measure (Fin e × Fin n → ℂ))) hg0.aemeasurable
      ((measurable_rowGauss h).indicator hA).aemeasurable
  rw [← Measure.volume_eq_prod] at hprod
  rw [← lintegral_map hF Ψ.continuous.measurable, hc, lintegral_smul_measure, hprod,
    lintegral_indicator hA]
  rw [ENNReal.smul_def, smul_eq_mul, mul_assoc]

end

end ModelDimension.GSph
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.CommonZeroEvaluation.GaussianSphereMeanIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SphereMeanNormalizedGroups =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SphereMeanNormalizedGroups", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianMatrixMeasurePosFinite\npublic import Development.WeilBound.CoreStatements.CommonZeroEvaluation.GaussianSphereMeanIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.sphere_mean_normalized_groups : ∀ (n e : ℕ) (h : HermNorm n) (G : (Fin e × Fin n → ℂ) → ℝ),
  IntegrableOn (fun u => G (nrmGroups h e u)) (ballProd h e) →
    Integrable (fun π : Fin (e + 1) → Fin n → ℂ => G (nrmGroups h e (coefRows h π))) (gaussM (e + 1) n) ∧
      ∫ π, G (nrmGroups h e (coefRows h π)) ∂(gaussM (e + 1) n) =
        (gaussM (e + 1) n Set.univ).toReal * sphereMean h e G := by
  intro n e h G hint
  have hfin := (gaussM_univ_pos_lt_top (e + 1) n).2
  haveI : IsFiniteMeasure (gaussM (e + 1) n) := ⟨hfin⟩
  haveI : IsFiniteMeasure (volume.restrict (ballProd h e)) := ⟨by rw [Measure.restrict_apply_univ]; exact volume_ballProd_lt_top h e⟩
  obtain ⟨a, ha⟩ := ModelDimension.GSph.map_coefRows (e := e) h
  have hmap : Measure.map (coefRows h) (gaussM (e + 1) n) = Measure.map ModelDimension.GSph.scT ((a • (ModelDimension.GSph.exP e).withDensity (ModelDimension.GSph.wt h)).prod (volume.restrict (ballProd h e))) := by
    rw [ha, ModelDimension.GSph.layer, Measure.prod_smul_left, Measure.map_smul]
    exact ModelDimension.GSph.measurable_scT.aemeasurable
  have h1 : ∀ᵐ x ∂ModelDimension.GSph.ex1, 0 < x :=
    (withDensity_absolutelyContinuous _ _).ae_le (ae_restrict_mem measurableSet_Ioi)
  have hp : ∀ᵐ s ∂(ModelDimension.GSph.exP e), ∀ i, 0 < s i := by
    rw [ae_all_iff]
    intro i
    exact (Measure.tendsto_eval_ae_ae (μ := fun _ : Fin e => ModelDimension.GSph.ex1) (i := i)).eventually h1
  have hpos0 : ∀ᵐ s ∂((ModelDimension.GSph.exP e).withDensity (ModelDimension.GSph.wt h)), ∀ i, 0 < s i :=
    (withDensity_absolutelyContinuous _ _).ae_le hp
  have hpos : ∀ᵐ s ∂(a • (ModelDimension.GSph.exP e).withDensity (ModelDimension.GSph.wt h)), ∀ i, 0 < s i :=
    Measure.ae_smul_measure hpos0 a
  have hne : (volume.restrict (ballProd h e)) Set.univ ≠ 0 := by
    rw [Measure.restrict_apply_univ]
    exact (volume_ballProd_pos h e).ne'
  have haesm : AEStronglyMeasurable (fun u => G (nrmGroups h e u)) (Measure.map (coefRows h) (gaussM (e + 1) n)) := by
    rw [ha]
    exact ((ModelDimension.GSph.aesm h G hint.1).mono_ac (withDensity_absolutelyContinuous _ _)).smul_measure a
  have hinv : ∀ᵐ s ∂(a • (ModelDimension.GSph.exP e).withDensity (ModelDimension.GSph.wt h)), ∀ u, (fun u => G (nrmGroups h e u)) (ModelDimension.GSph.scT (s, u)) = (fun u => G (nrmGroups h e u)) u := by
    filter_upwards [hpos] with s hs u
    exact congrArg G (ModelDimension.GSph.nrm_sc h (fun i => Real.sqrt_pos.mpr (hs i)) u)
  have key := ModelDimension.GSph.transfer (gaussM (e + 1) n) (a • (ModelDimension.GSph.exP e).withDensity (ModelDimension.GSph.wt h)) (volume.restrict (ballProd h e)) hne (ModelDimension.GSph.measurable_coefRows h) ModelDimension.GSph.measurable_scT hmap haesm hinv hint
  refine ⟨key.1, ?_⟩
  rw [key.2]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SphereMeanNormalizedGroups =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMinusConeIntegralIndep =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMinusConeIntegralIndep", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AeFibrePointsCardEqDegree\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AePolynomialNonvanishingRows\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChowFormFibreSpecialization\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussianMatrixMeasurePosFinite\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IntegralFubiniStudySumCone\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SphereMeanNormalizedGroups\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PEvalSpecFirst\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PMahlerIntegrand\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PSpecFirstHomog\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeFsLogIntegrable\nimport GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton

theorem log_norm_sub_fsSum_eq {n e : ℕ} (h : HermNorm n) (u : Fin n → ℂ)
    (S : Set (EuclideanSpace ℂ (Fin n))) (π : Fin (e + 1) → Fin n → ℂ) (c z : ℂ)
    (hfin : (fibrePts S π).Finite) (hc : c ≠ 0)
    (hz : z = c * ∏ᶠ y ∈ fibrePts S π, ∑ j, u j * h.pointOf y j) (hz0 : z ≠ 0) :
    Real.log ‖z‖ - fsSum h u S π = Real.log ‖c‖ + ∑ y ∈ hfin.toFinset, Real.log ‖y‖ := by
  rw [finprod_mem_eq_finite_toFinset_prod _ hfin] at hz
  have hprod : ∏ y ∈ hfin.toFinset, ∑ j, u j * h.pointOf y j ≠ 0 :=
    fun h0 => hz0 (by rw [hz, h0, mul_zero])
  have hne := Finset.prod_ne_zero_iff.mp hprod
  have key : ∀ y ∈ hfin.toFinset, fsLog h u (h.pointOf y) =
      Real.log ‖∑ j, u j * h.pointOf y j‖ - Real.log ‖y‖ := by
    intro y hy
    have hy0 : y ≠ 0 := by
      rintro rfl
      apply hne _ hy
      show ∑ j, u j * (h.matᵀ *ᵥ (0 : Fin n → ℂ)) j = 0
      simp
    rw [fsLog, ConeFsLog.dualNorm_pointOf,
      Real.log_div (norm_ne_zero_iff.2 (hne y hy)) (norm_ne_zero_iff.2 hy0)]
  rw [fsSum, finsum_mem_eq_finite_toFinset_sum _ hfin, Finset.sum_congr rfl key,
    Finset.sum_sub_distrib, hz, norm_mul, norm_prod,
    Real.log_mul (norm_ne_zero_iff.2 hc)
      (Finset.prod_ne_zero_iff.mpr fun y hy => norm_ne_zero_iff.2 (hne y hy)),
    Real.log_prod (fun y hy => norm_ne_zero_iff.2 (hne y hy))]
  ring

theorem defect_eq_of_linForm_notMem : ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
    (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u u' : Fin n → ℂ),
    IsProjPrime W → IsChowForm W (e + 1) g → GroundTheory.Heights₂.Heights.IsMultiHomog δ g → linForm u ∉ W → linForm u' ∉ W →
      mahler h e (specFirst g u) - coneIntegral h W e (fsLog h u) =
        mahler h e (specFirst g u') - coneIntegral h W e (fsLog h u') := by
  intro n e δ h W g u u' hW hg hδ hu hu'
  have hq := SpecFirstNe.full ℂ n e W g u hW hg hu
  have hq' := SpecFirstNe.full ℂ n e W g u' hW hg hu'
  have hh := SpecFirstHomog.proof n e δ g u hδ
  have hh' := SpecFirstHomog.proof n e δ g u' hδ
  obtain ⟨hΓ0, hΓ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.gaussM_univ_pos_lt_top (e + 1) n
  have hΓr : (gaussM (e + 1) n Set.univ).toReal ≠ 0 := (ENNReal.toReal_pos hΓ0.ne' hΓ.ne).ne'
  have hae : ∀ᵐ π : Fin (e + 1) → Fin n → ℂ,
      Real.log ‖eval (nrmGroups h e (coefRows h π)) (specFirst g u)‖ - fsSum h u (coneSet h W) π =
        Real.log ‖eval (nrmGroups h e (coefRows h π)) (specFirst g u')‖ -
          fsSum h u' (coneSet h W) π := by
    filter_upwards [_root_.GlobalTheory.CompanionTheory.Relay.ae_fibre_points_card_eq_degree n e δ h W g hW hg hδ, _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.ae_eval_nrmGroups_coefRows_ne_zero n e δ h _ hq hh,
      _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.ae_eval_nrmGroups_coefRows_ne_zero n e δ h _ hq' hh'] with π hcount h1 h2
    rw [EvalSpecFirst.proof] at h1 h2 ⊢
    rw [EvalSpecFirst.proof]
    obtain ⟨c, hc, hfac⟩ := _root_.GlobalTheory.CompanionTheory.Relay.chow_form_fibre_specialization n e δ h W g π u hW hg hδ hcount h1
    have hfin : (fibrePts (coneSet h W) π).Finite := Set.finite_of_encard_eq_coe hcount
    rw [log_norm_sub_fsSum_eq h u _ π c _ hfin hc (hfac u) h1,
      log_norm_sub_fsSum_eq h u' _ π c _ hfin hc (hfac u') h2]
  have haeG := (withDensity_absolutelyContinuous (volume : Measure (Fin (e + 1) → Fin n → ℂ))
    matGauss).ae_le hae
  obtain ⟨i1, e1⟩ := _root_.GlobalTheory.CompanionTheory.Relay.sphere_mean_normalized_groups n e h (fun w => Real.log ‖eval w (specFirst g u)‖)
    (MahlerIntegrand.proof n e δ h _ hq hh)
  obtain ⟨i1', e1'⟩ := _root_.GlobalTheory.CompanionTheory.Relay.sphere_mean_normalized_groups n e h (fun w => Real.log ‖eval w (specFirst g u')‖)
    (MahlerIntegrand.proof n e δ h _ hq' hh')
  obtain ⟨i2, e2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.fsSum_crofton n e δ h W g u hW hg hδ hu
  obtain ⟨i2', e2'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.fsSum_crofton n e δ h W g u' hW hg hδ hu'
  have hint := integral_congr_ae (μ := gaussM (e + 1) n) haeG
  rw [integral_sub i1 i2, integral_sub i1' i2', e1, e2, e1', e2'] at hint
  apply mul_left_cancel₀ hΓr
  rw [mul_sub, mul_sub]
  exact hint

end GlobalTheory.CompanionTheory.Ar.Short.Crofton
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMinusConeIntegralIndep =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerSectionStatementHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerSectionStatementHolds", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMeasureOfProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerMinusConeIntegralIndep\npublic import GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.TargetsProjRegularDens\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PSpecFirstHomog\nimport GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.MvPolynomial.Nilpotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.Ar.Short

open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial

theorem mahlerDefect_eq_sum {n e δ : ℕ} (h : HermNorm n) {Z : ProjCycle ℂ n}
    {f : MvPolynomial (Fin (e + 1) × Fin n) ℂ} (hd : IsChowCycleData Z e δ f) :
    ∃ (c : ℂ) (g : Ideal (MvPolynomial (Fin n) ℂ) → MvPolynomial (Fin (e + 1) × Fin n) ℂ)
      (d : Ideal (MvPolynomial (Fin n) ℂ) → ℕ),
      (∀ W ∈ Z.support, IsChowForm W (e + 1) (g W) ∧ GroundTheory.Heights₂.Heights.IsMultiHomog (d W) (g W)) ∧
      ∀ u : Fin n → ℂ, IsAdmissible Z u →
        mahlerDefect h e Z f u = Real.log ‖c‖ + ∑ W ∈ Z.support, (Z W : ℝ) *
          (mahler h e (specFirst (g W) u) - coneIntegral h W e (fsLog h u)) := by
  obtain ⟨c, hc, g, hg, hf⟩ := hd.chow
  have hf0 : C c * ∏ W ∈ Z.support, g W ^ Z W ≠ 0 :=
    mul_ne_zero (C_ne_zero.mpr hc)
      (Finset.prod_ne_zero_iff.mpr fun W hW => pow_ne_zero _ (hg W hW).1)
  have hhom : GroundTheory.Heights₂.Heights.IsMultiHomog δ (C c * ∏ W ∈ Z.support, g W ^ Z W) := hf ▸ hd.homog
  obtain ⟨d, hdW, -⟩ := exists_degrees_of_chowFormCycle (Nat.succ_pos e) Z c g hg hhom hf0
  refine ⟨c, g, d, fun W hW => ⟨hg W hW, hdW W hW⟩, fun u hu => ?_⟩
  have hspec : specFirst f u = C c * ∏ W ∈ Z.support, specFirst (g W) u ^ Z W := by
    rw [hf]
    simp only [specFirst, map_mul, map_prod, map_pow, bind₁_C_right]
  have hq : ∀ W ∈ Z.support, specFirst (g W) u ≠ 0 ∧ GroundTheory.Heights₂.Heights.IsMultiHomog (d W) (specFirst (g W) u) :=
    fun W hW => ⟨SpecFirstNe.full ℂ n e W (g W) u (hd.prime W hW) (hg W hW) (hu W hW),
      SpecFirstHomog.proof n e (d W) (g W) u (hdW W hW)⟩
  rw [mahlerDefect, hspec, _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.mahler_C_mul_prod_pow n e h Z.support (fun W => specFirst (g W) u) d (fun W => Z W) c hc hq,
    cycleIntegral]
  simp only [mul_sub, Finset.sum_sub_distrib]
  ring

theorem defectConstDim (e : ℕ) : DefectConstDim e := by
  intro n δ h Z f u u' hd hu hu'
  obtain ⟨c, g, d, hg, hsum⟩ := mahlerDefect_eq_sum h hd
  have hW : ∀ W ∈ Z.support, (Z W : ℝ) * (mahler h e (specFirst (g W) u) - coneIntegral h W e (fsLog h u)) =
      (Z W : ℝ) * (mahler h e (specFirst (g W) u') - coneIntegral h W e (fsLog h u')) := fun W hW => by
    have := _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.defect_eq_of_linForm_notMem n e (d W) h W (g W) u u' (hd.prime W hW) (hg W hW).1 (hg W hW).2 (hu W hW)
      (hu' W hW)
    rw [this]
  rw [hsum u hu, hsum u' hu', Finset.sum_congr rfl hW]

theorem mahlerSection : GroundTheory.Heights₂.Heights.MahlerSection.Statement := by
  intro n e δ h Z f u hp hc hm ha
  exact GroundTheory.Heights₂.Heights.AutoClose.MahlerSectionOfConst e (defectConstDim e) n δ h Z f u ⟨hp, hc, hm⟩ ha

end GlobalTheory.CompanionTheory.Ar.Short
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MahlerSectionStatementHolds =====
