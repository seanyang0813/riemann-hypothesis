module

public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.SesquilinearForm.Basic
public import Formalism.PeriodIntegrals.FlagGramNonneg
public import Mathlib.Basic.Complex.Basic
public import Mathlib.Data.Matrix.Block
public import Mathlib.LinearAlgebra.Matrix.Notation
public import Mathlib.Basic.Complex.BigOperators
public import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.GramJoint
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.SumMulCommMulVec, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.BinaryFormMulEqNormSqAdd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.ConjTMulMulApply, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.HasSignatureExistsNonneg, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.NatAddZeroFinOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.Gval, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.SumMulCommMulVec =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.SumMulCommMulVec", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.LinearAlgebra.SesquilinearForm.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.FlagGramNonneg\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PI.FlagGramNonneg

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

section Vec

variable {E : Type} [Field E] [StarRing E] {V : Type} [AddCommGroup V] [Module E V]

def amat (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) : Matrix (Fin r) (Fin r) E :=
  fun a b => hT (e a) (e' b)

def uvec (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e : Fin r → V) (z' : V) : Fin r → E :=
  fun a => hT (e a) z'

def vvec (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (z : V) (e' : Fin r → V) : Fin r → E :=
  fun b => hT z (e' b)

def sval (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) (z z' : V) : E :=
  hT z z' - vvec hT z e' ⬝ᵥ ((amat hT e e')⁻¹ *ᵥ uvec hT e z')

def zt (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) (z : V) : V :=
  z - ∑ a, star ((vvec hT z e' ᵥ* (amat hT e e')⁻¹) a) • e a

def zt' (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) (z' : V) : V :=
  z' - ∑ b, ((amat hT e e')⁻¹ *ᵥ uvec hT e z') b • e' b

def yv (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) (a : Fin r) : V :=
  e a - ∑ b, (amat hT e e')⁻¹ b a • e' b

theorem sum_mul_comm_mulVec {n : Type} [Fintype n] (A : Matrix n n E) (w : n → E) (c : n) :
    ∑ b, w b * A c b = (A *ᵥ w) c := by
  simp only [Matrix.mulVec, dotProduct]
  exact Finset.sum_congr rfl fun b _ => mul_comm _ _

theorem sum_mul_vecMul {n : Type} [Fintype n] (A : Matrix n n E) (w : n → E) (c : n) :
    ∑ a, w a * A a c = (w ᵥ* A) c := by
  simp only [Matrix.vecMul, dotProduct]

theorem herm {hT : V →ₗ⋆[E] V →ₗ[E] E} (hS : hT.IsSymm) (x y : V) : hT x y = star (hT y x) := by
  first
    | exact (hS.eq y x).symm

theorem left_sub_sum (hT : V →ₗ⋆[E] V →ₗ[E] E) {ι : Type} [Fintype ι] (z : V) (c : ι → E)
    (f : ι → V) (x : V) :
    hT (z - ∑ a, c a • f a) x = hT z x - ∑ a, star (c a) * hT (f a) x := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [map_sub, map_sum, LinearMap.sub_apply, LinearMap.sum_apply,
    LinearMap.map_smulₛₗ₂, smul_eq_mul, starRingEnd_apply]

theorem right_sub_sum (hT : V →ₗ⋆[E] V →ₗ[E] E) {ι : Type} [Fintype ι] (z : V) (c : ι → E)
    (f : ι → V) (x : V) :
    hT x (z - ∑ a, c a • f a) = hT x z - ∑ a, c a * hT x (f a) := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [map_sub, map_sum, map_smul, smul_eq_mul]

variable (hT : V →ₗ⋆[E] V →ₗ[E] E) {r : ℕ} (e e' : Fin r → V) (z z' : V)

theorem e_zt' (hA : IsUnit (amat hT e e').det) (c : Fin r) : hT (e c) (zt' hT e e' z') = 0 := by
  unfold zt'
  rw [right_sub_sum]
  have h : ∑ b, ((amat hT e e')⁻¹ *ᵥ uvec hT e z') b * hT (e c) (e' b) =
      (amat hT e e' *ᵥ ((amat hT e e')⁻¹ *ᵥ uvec hT e z')) c :=
    sum_mul_comm_mulVec (amat hT e e') _ c
  rw [h, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hA, Matrix.one_mulVec]
  simp [uvec]

theorem zt_e' (hA : IsUnit (amat hT e e').det) (c : Fin r) : hT (zt hT e e' z) (e' c) = 0 := by
  unfold zt
  rw [left_sub_sum]
  simp only [star_star]
  have h : ∑ a, (vvec hT z e' ᵥ* (amat hT e e')⁻¹) a * hT (e a) (e' c) =
      ((vvec hT z e' ᵥ* (amat hT e e')⁻¹) ᵥ* amat hT e e') c :=
    sum_mul_vecMul (amat hT e e') _ c
  rw [h, Matrix.vecMul_vecMul, Matrix.nonsing_inv_mul _ hA, Matrix.vecMul_one]
  simp [vvec]

theorem e_zt (he : ∀ a b, hT (e a) (e b) = 0) (hez : ∀ a, hT (e a) z = 0) (c : Fin r) :
    hT (e c) (zt hT e e' z) = 0 := by
  unfold zt
  rw [right_sub_sum, hez]
  simp [he]

theorem e'_zt' (he' : ∀ a b, hT (e' a) (e' b) = 0) (hez' : ∀ a, hT (e' a) z' = 0) (c : Fin r) :
    hT (e' c) (zt' hT e e' z') = 0 := by
  unfold zt'
  rw [right_sub_sum, hez']
  simp [he']

theorem zt_zt (hS : hT.IsSymm) (he : ∀ a b, hT (e a) (e b) = 0) (hez : ∀ a, hT (e a) z = 0) :
    hT (zt hT e e' z) (zt hT e e' z) = hT z z := by
  nth_rw 1 [zt]
  rw [left_sub_sum]
  simp only [e_zt hT e e' z he hez, mul_zero, Finset.sum_const_zero, sub_zero]
  have hze : ∀ a, hT z (e a) = 0 := fun a => by rw [herm hS, hez, star_zero]
  unfold zt
  rw [right_sub_sum]
  simp [hze]

theorem zt'_zt' (hS : hT.IsSymm) (he' : ∀ a b, hT (e' a) (e' b) = 0)
    (hez' : ∀ a, hT (e' a) z' = 0) :
    hT (zt' hT e e' z') (zt' hT e e' z') = hT z' z' := by
  nth_rw 1 [zt']
  rw [left_sub_sum]
  simp only [e'_zt' hT e e' z' he' hez', mul_zero, Finset.sum_const_zero, sub_zero]
  have hze : ∀ a, hT z' (e' a) = 0 := fun a => by rw [herm hS, hez', star_zero]
  unfold zt'
  rw [right_sub_sum]
  simp [hze]

theorem zt_zt' (hA : IsUnit (amat hT e e').det) :
    hT (zt hT e e' z) (zt' hT e e' z') = sval hT e e' z z' := by
  rw [zt', right_sub_sum]
  simp only [zt_e' hT e e' z hA, mul_zero, Finset.sum_const_zero, sub_zero]
  rw [zt, left_sub_sum]
  simp only [star_star]
  unfold sval
  rw [Matrix.dotProduct_mulVec]
  simp [dotProduct, uvec]

theorem yv_yv (hS : hT.IsSymm) (hA : IsUnit (amat hT e e').det) (he : ∀ a b, hT (e a) (e b) = 0)
    (he' : ∀ a b, hT (e' a) (e' b) = 0) (a c : Fin r) :
    hT (yv hT e e' a) (yv hT e e' c) = if a = c then -2 else 0 := by
  have hAA : amat hT e e' * (amat hT e e')⁻¹ = 1 := Matrix.mul_nonsing_inv _ hA
  have key : ∀ a c, ∑ d, hT (e a) (e' d) * (amat hT e e')⁻¹ d c = if a = c then 1 else 0 := by
    intro a c
    have h := congrFun (congrFun hAA a) c
    rw [Matrix.mul_apply, Matrix.one_apply] at h
    exact h
  have h1 : ∑ d, (amat hT e e')⁻¹ d c * hT (e a) (e' d) = if a = c then 1 else 0 := by
    rw [← key a c]
    exact Finset.sum_congr rfl fun d _ => mul_comm _ _
  have h2 : ∑ b, star ((amat hT e e')⁻¹ b a) * hT (e' b) (e c) = if a = c then 1 else 0 := by
    have h3 : ∑ b, star ((amat hT e e')⁻¹ b a) * hT (e' b) (e c) =
        star (∑ b, hT (e c) (e' b) * (amat hT e e')⁻¹ b a) := by
      rw [star_sum]
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [star_mul', herm hS (e' b) (e c), mul_comm]
    rw [h3, key c a]
    rcases eq_or_ne a c with h | h
    · subst h
      simp
    · simp [h, Ne.symm h]
  unfold yv
  simp only [left_sub_sum, right_sub_sum, he, he', mul_zero, Finset.sum_const_zero, sub_zero, zero_sub]
  rw [h1, h2]
  split_ifs <;> ring

theorem yv_zt (hS : hT.IsSymm) (hA : IsUnit (amat hT e e').det) (he : ∀ a b, hT (e a) (e b) = 0)
    (hez : ∀ a, hT (e a) z = 0) (a : Fin r) : hT (yv hT e e' a) (zt hT e e' z) = 0 := by
  unfold yv
  rw [left_sub_sum, e_zt hT e e' z he hez]
  have h : ∀ b, hT (e' b) (zt hT e e' z) = 0 := fun b => by
    rw [herm hS, zt_e' hT e e' z hA, star_zero]
  simp [h]

theorem yv_zt' (hA : IsUnit (amat hT e e').det) (he' : ∀ a b, hT (e' a) (e' b) = 0)
    (hez' : ∀ a, hT (e' a) z' = 0) (a : Fin r) : hT (yv hT e e' a) (zt' hT e e' z') = 0 := by
  unfold yv
  rw [left_sub_sum, e_zt' hT e e' z' hA]
  simp [e'_zt' hT e e' z' he' hez']

end Vec

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.SumMulCommMulVec =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.BinaryFormMulEqNormSqAdd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.BinaryFormMulEqNormSqAdd", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.Data.Matrix.Block\npublic import Mathlib.LinearAlgebra.Matrix.Notation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Basic.Complex.BigOperators\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix ComplexConjugate

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

def gamma (r : ℕ) (T T' : ℝ) (s : ℂ) : Matrix (Fin r ⊕ Fin 2) (Fin r ⊕ Fin 2) ℂ :=
  Matrix.fromBlocks ((-2 : ℂ) • (1 : Matrix (Fin r) (Fin r) ℂ)) 0 0 !![(-T : ℂ), s; conj s, (-T' : ℂ)]

theorem binaryForm_mul_eq_normSq_add (T T' : ℝ) (s x y : ℂ) :
    T * (T * Complex.normSq x + T' * Complex.normSq y - 2 * (conj x * s * y).re) =
      Complex.normSq ((T : ℂ) * x - s * y) + (T * T' - Complex.normSq s) * Complex.normSq y := by
  simp only [Complex.normSq_apply, Complex.mul_re, Complex.mul_im, Complex.sub_re, Complex.sub_im,
    Complex.conj_re, Complex.conj_im, Complex.ofReal_re, Complex.ofReal_im]
  ring

private theorem re_star_mul' (z w : ℂ) : (star z * w).re = z.re * w.re + z.im * w.im := by
  change ((starRingEnd ℂ) z * w).re = _
  rw [Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

theorem gamma_form (r : ℕ) (T T' : ℝ) (s : ℂ) (c : Fin r ⊕ Fin 2 → ℂ) :
    (star c ⬝ᵥ (gamma r T T' s *ᵥ c)).re =
      -2 * ∑ a, Complex.normSq (c (Sum.inl a)) -
        (T * Complex.normSq (c (Sum.inr 0)) + T' * Complex.normSq (c (Sum.inr 1)) -
          2 * (conj (c (Sum.inr 0)) * s * c (Sum.inr 1)).re) := by
  have hinl : ∀ a, (gamma r T T' s *ᵥ c) (Sum.inl a) =
      -(c (Sum.inl a) + c (Sum.inl a)) := by
    intro a
    first
    | (rw [gamma, Matrix.fromBlocks_mulVec]
       simp [Matrix.smul_mulVec_assoc, Matrix.one_mulVec] <;> ring1)
    | (rw [gamma, Matrix.fromBlocks_mulVec]
       simp <;> ring1)
    | (simp [gamma, Matrix.mulVec, dotProduct, Fintype.sum_sum_type, Matrix.one_apply,
        mul_ite, ite_mul, Finset.sum_ite_eq] <;> ring1)
  have hinr0 : (gamma r T T' s *ᵥ c) (Sum.inr 0) =
      -(T : ℂ) * c (Sum.inr 0) + s * c (Sum.inr 1) := by
    rw [gamma, Matrix.fromBlocks_mulVec]
    simp [dotProduct, Fin.sum_univ_two]
  have hinr1 : (gamma r T T' s *ᵥ c) (Sum.inr 1) =
      conj s * c (Sum.inr 0) + -(T' : ℂ) * c (Sum.inr 1) := by
    rw [gamma, Matrix.fromBlocks_mulVec]
    simp [dotProduct, Fin.sum_univ_two]
  have hsplit : star c ⬝ᵥ (gamma r T T' s *ᵥ c) =
      ∑ a, star (c (Sum.inl a)) * (gamma r T T' s *ᵥ c) (Sum.inl a) +
        (star (c (Sum.inr 0)) * (gamma r T T' s *ᵥ c) (Sum.inr 0) +
          star (c (Sum.inr 1)) * (gamma r T T' s *ᵥ c) (Sum.inr 1)) := by
    simp only [dotProduct, Fintype.sum_sum_type, Fin.sum_univ_two, Pi.star_apply]
  have hsum : (∑ a, star (c (Sum.inl a)) * -(c (Sum.inl a) + c (Sum.inl a))).re =
      -2 * ∑ a, Complex.normSq (c (Sum.inl a)) := by
    rw [Complex.re_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun a _ => ?_)
    rw [re_star_mul', Complex.neg_re, Complex.neg_im, Complex.add_re, Complex.add_im,
      Complex.normSq_apply]
    ring
  rw [hsplit]
  simp only [hinl, hinr0, hinr1]
  simp only [Complex.add_re, hsum, re_star_mul']
  simp only [Complex.add_im, Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im, Complex.ofReal_re, Complex.ofReal_im, Complex.conj_re, Complex.conj_im,
    Complex.normSq_apply]
  ring

theorem gamma_neg (r : ℕ) (T T' : ℝ) (hT : 0 < T) (hT' : 0 < T') (s : ℂ)
    (hs : Complex.normSq s < T * T') (c : Fin r ⊕ Fin 2 → ℂ) (hc : c ≠ 0) :
    (star c ⬝ᵥ (gamma r T T' s *ᵥ c)).re < 0 := by
  rw [gamma_form]
  have hS : 0 ≤ ∑ a, Complex.normSq (c (Sum.inl a)) :=
    Finset.sum_nonneg (fun a _ => Complex.normSq_nonneg _)
  have hd : 0 < T * T' - Complex.normSq s := by linarith
  have hq : ∀ x y : ℂ,
      0 ≤ T * Complex.normSq x + T' * Complex.normSq y - 2 * (conj x * s * y).re := by
    intro x y
    have h := binaryForm_mul_eq_normSq_add T T' s x y
    have h0 : 0 ≤ Complex.normSq ((T : ℂ) * x - s * y) +
        (T * T' - Complex.normSq s) * Complex.normSq y :=
      add_nonneg (Complex.normSq_nonneg _) (mul_nonneg hd.le (Complex.normSq_nonneg _))
    nlinarith
  have hqpos : ∀ x y : ℂ, (x ≠ 0 ∨ y ≠ 0) →
      0 < T * Complex.normSq x + T' * Complex.normSq y - 2 * (conj x * s * y).re := by
    intro x y hxy
    by_cases hy : y = 0
    · have hx : x ≠ 0 := hxy.resolve_right (not_not.mpr hy)
      have hnx : 0 < Complex.normSq x := Complex.normSq_pos.mpr hx
      subst hy
      simp only [mul_zero, sub_zero, add_zero, Complex.zero_re, Complex.normSq_zero]
      nlinarith [mul_pos hT hnx]
    · have h := binaryForm_mul_eq_normSq_add T T' s x y
      have hny : 0 < Complex.normSq y := Complex.normSq_pos.mpr hy
      have h0 : 0 < Complex.normSq ((T : ℂ) * x - s * y) +
          (T * T' - Complex.normSq s) * Complex.normSq y :=
        add_pos_of_nonneg_of_pos (Complex.normSq_nonneg _) (mul_pos hd hny)
      nlinarith
  by_cases hin : ∀ a, c (Sum.inl a) = 0
  · have hxy : c (Sum.inr 0) ≠ 0 ∨ c (Sum.inr 1) ≠ 0 := by
      obtain ⟨i, hi⟩ := Function.ne_iff.mp hc
      simp only [Pi.zero_apply] at hi
      rcases i with a | ⟨_ | _ | k, hk⟩
      · exact absurd (hin a) hi
      · exact Or.inl hi
      · exact Or.inr hi
      · omega
    have := hqpos _ _ hxy
    linarith
  · push_neg at hin
    obtain ⟨a, ha⟩ := hin
    have hpos : 0 < ∑ b, Complex.normSq (c (Sum.inl b)) :=
      Finset.sum_pos' (fun b _ => Complex.normSq_nonneg _)
        ⟨a, Finset.mem_univ _, Complex.normSq_pos.mpr ha⟩
    have := hq (c (Sum.inr 0)) (c (Sum.inr 1))
    linarith

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.BinaryFormMulEqNormSqAdd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.ConjTMulMulApply =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.ConjTMulMulApply", "h": "module\n\npublic import Formalism.PeriodIntegrals.FlagGramNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PI.FlagGramNonneg

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

theorem tau_form {E : Type} [Field E] [StarRing E] {V : Type} [AddCommGroup V] [Module E V]
    (hT : V →ₗ⋆[E] V →ₗ[E] E) {N : ℕ} (b : Module.Basis (Fin N) E V) (τ : E →+* ℂ)
    (hτ : ∀ a, τ (star a) = starRingEnd ℂ (τ a)) (v w : V) :
    τ (hT v w) = star (fun n => τ (b.repr v n)) ⬝ᵥ
      (((PI.FlagGramNonneg.gram hT b).map τ) *ᵥ (fun n => τ (b.repr w n))) := by
  conv_lhs => rw [← b.sum_repr v, ← b.sum_repr w]

  simp only [map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ₂, LinearMap.map_smul, smul_eq_mul,
  map_mul, starRingEnd_apply, hτ, dotProduct, mulVec, Matrix.map_apply, PI.FlagGramNonneg.gram,
  Pi.star_apply, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem conjT_mul_mul_apply {m n : Type} [Fintype m] (A : Matrix m n ℂ) (B : Matrix m m ℂ) (i j : n) :
    (Aᴴ * B * A) i j = star (fun k => A k i) ⬝ᵥ (B *ᵥ fun k => A k j) := by
  simp only [Matrix.mul_apply, conjTranspose_apply, dotProduct, mulVec, Pi.star_apply, Finset.sum_mul,
    Finset.mul_sum]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun k _ => by ring

theorem gram_tau {E : Type} [Field E] [StarRing E] {V : Type} [AddCommGroup V] [Module E V]
    (hT : V →ₗ⋆[E] V →ₗ[E] E) {N : ℕ} (b : Module.Basis (Fin N) E V) (τ : E →+* ℂ)
    (hτ : ∀ a, τ (star a) = starRingEnd ℂ (τ a)) {ι : Type} (y : ι → V) (i j : ι) :
    ((Matrix.of fun n k => τ (b.repr (y k) n))ᴴ * ((PI.FlagGramNonneg.gram hT b).map τ) *
      (Matrix.of fun n k => τ (b.repr (y k) n))) i j = τ (hT (y i) (y j)) := by
  rw [conjT_mul_mul_apply, tau_form hT b τ hτ]
  rfl

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.ConjTMulMulApply =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.HasSignatureExistsNonneg =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.HasSignatureExistsNonneg", "h": "module\n\npublic import Formalism.PeriodIntegrals.FlagGramNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Basic.Complex.BigOperators\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PI.FlagGramNonneg
open scoped ComplexOrder

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

theorem cT_star_eq {m n : Type} (M : Matrix m n ℂ) : cT (starRingEnd ℂ) M = Mᴴ := by
  ext i j
  simp [cT, Matrix.conjTranspose_apply]

theorem form_mulVec {m n : Type} [Fintype m] [Fintype n] (A : Matrix m n ℂ) (B : Matrix m m ℂ)
    (u : n → ℂ) :
    star (A *ᵥ u) ⬝ᵥ (B *ᵥ (A *ᵥ u)) = star u ⬝ᵥ ((Aᴴ * B * A) *ᵥ u) := by
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec,
    Matrix.mul_assoc]

theorem form_reindex {n m : Type} [Fintype n] [Fintype m] (e : n ≃ m) (J : Matrix n n ℂ)
    (x : n → ℂ) :
    star (fun i => x (e.symm i)) ⬝ᵥ ((J.reindex e e) *ᵥ (fun i => x (e.symm i))) =
      star x ⬝ᵥ (J *ᵥ x) := by
  have h : (J.reindex e e) *ᵥ (fun i => x (e.symm i)) = fun i => (J *ᵥ x) (e.symm i) := by
    rw [Matrix.reindex_apply, Matrix.submatrix_mulVec_equiv]
    funext i
    simp [Function.comp_def]
  rw [h]
  simp only [dotProduct, Pi.star_apply]
  exact Equiv.sum_comp e.symm (fun i => star (x i) * (J *ᵥ x) i)

theorem Jpq_mulVec_of {p q : ℕ} (u : Fin p ⊕ Fin q → ℂ) (hu : ∀ j, u (Sum.inr j) = 0) :
    Jpq p q *ᵥ u = u := by
  have h0 : (u ∘ Sum.inr) = 0 := funext hu
  rw [Jpq, Matrix.fromBlocks_mulVec, h0]
  funext i
  cases i <;> simp [hu]

theorem hasSignature_exists_nonneg {N p q : ℕ} {ι : Type} [Fintype ι] [DecidableEq ι]
    (J : Matrix (Fin N) (Fin N) ℂ) (hJ : HasSignature J p q) (hq : q < Fintype.card ι)
    (X : Matrix (Fin N) ι ℂ) :
    ∃ c : ι → ℂ, c ≠ 0 ∧ 0 ≤ (star (X *ᵥ c) ⬝ᵥ (J *ᵥ (X *ᵥ c))).re := by
  obtain ⟨e, P, hP⟩ := hJ
  let Q : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ := ((P⁻¹ : GL (Fin p ⊕ Fin q) ℂ) : Matrix _ _ ℂ)
  let Y : Matrix (Fin p ⊕ Fin q) ι ℂ := Q * X.submatrix e.symm id
  let K : Matrix (Fin q) ι ℂ := fun j l => Y (Sum.inr j) l
  have hk : LinearMap.ker (Matrix.mulVecLin K) ≠ ⊥ :=
    LinearMap.ker_ne_bot_of_finrank_lt (by simpa [Module.finrank_fintype_fun_eq_card] using hq)
  obtain ⟨c, hc, hc0⟩ := (Submodule.ne_bot_iff _).mp hk
  refine ⟨c, hc0, ?_⟩
  rw [LinearMap.mem_ker, Matrix.mulVecLin_apply] at hc
  have hy : ∀ j, (Y *ᵥ c) (Sum.inr j) = 0 := fun j => congrFun hc j
  have hx : (fun i => (X *ᵥ c) (e.symm i)) = (P : Matrix _ _ ℂ) *ᵥ (Y *ᵥ c) := by
    rw [Matrix.mulVec_mulVec, ← Matrix.mul_assoc]
    have hPQ : (P : Matrix _ _ ℂ) * Q = 1 := Units.mul_inv P
    rw [hPQ, Matrix.one_mul]
    rfl
  have key : star (X *ᵥ c) ⬝ᵥ (J *ᵥ (X *ᵥ c)) = star (Y *ᵥ c) ⬝ᵥ (Y *ᵥ c) := by
    rw [cT_star_eq] at hP
    rw [← form_reindex e J (X *ᵥ c), hx, form_mulVec, hP, Jpq_mulVec_of _ hy]
  rw [key]
  simp only [dotProduct, Pi.star_apply, Complex.re_sum]
  refine Finset.sum_nonneg fun i _ => ?_
  rw [Complex.star_def, Complex.mul_re, Complex.conj_re, Complex.conj_im]
  nlinarith [mul_self_nonneg ((Y *ᵥ c) i).re, mul_self_nonneg ((Y *ᵥ c) i).im]

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.HasSignatureExistsNonneg =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.NatAddZeroFinOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.NatAddZeroFinOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.FlagGramNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PI.FlagGramNonneg

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

theorem det_succ_schur {E : Type} [Field E] {r : ℕ} (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) E)
    (h : IsUnit (Z.submatrix Fin.castSucc Fin.castSucc).det) :
    Z.det = (Z.submatrix Fin.castSucc Fin.castSucc).det *
      (Z (Fin.last r) (Fin.last r) - (fun b => Z (Fin.last r) (Fin.castSucc b)) ⬝ᵥ
        ((Z.submatrix Fin.castSucc Fin.castSucc)⁻¹ *ᵥ (fun a => Z (Fin.castSucc a) (Fin.last r)))) := by
  haveI : Invertible (Z.submatrix Fin.castSucc Fin.castSucc) := Matrix.invertibleOfIsUnitDet _ h
  have hZ : Z.submatrix finSumFinEquiv finSumFinEquiv = Matrix.fromBlocks
      (Z.submatrix Fin.castSucc Fin.castSucc) (Matrix.of fun a (_ : Fin 1) => Z (Fin.castSucc a) (Fin.last r))
      (Matrix.of fun (_ : Fin 1) b => Z (Fin.last r) (Fin.castSucc b))
      (Matrix.of fun (_ : Fin 1) (_ : Fin 1) => Z (Fin.last r) (Fin.last r)) := by
    ext (i | i) (j | j)
    · rfl
    · rw [Fin.fin_one_eq_zero j]
      rfl
    · rw [Fin.fin_one_eq_zero i]
      rfl
    · rw [Fin.fin_one_eq_zero i, Fin.fin_one_eq_zero j]
      rfl
  rw [← Matrix.det_submatrix_equiv_self finSumFinEquiv Z, hZ, Matrix.det_fromBlocks₁₁,
    Matrix.invOf_eq_nonsing_inv, Matrix.det_unique (n := Fin 1)]
  congr 1
  rw [Matrix.sub_apply, Matrix.mul_assoc]
  simp only [Matrix.mul_apply, Matrix.mulVec, dotProduct, Matrix.of_apply]

theorem leadMinorE_succ {E : Type} [Field E] {r : ℕ} (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) E) :
    leadMinorE Z (r + 1) = Z.det := by
  unfold leadMinorE
  rw [dite_eq_left le_rfl]
  rfl

theorem leadMinorE_self {E : Type} [Field E] {r : ℕ} (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) E) :
    leadMinorE Z r = (Z.submatrix Fin.castSucc Fin.castSucc).det := by
  unfold leadMinorE
  rw [dite_eq_left (Nat.le_succ r)]
  rfl

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.NatAddZeroFinOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.Gval =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.Gval", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.SumMulCommMulVec\npublic import Formalism.PeriodIntegrals.FlagGramNonneg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.BinaryFormMulEqNormSqAdd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.ConjTMulMulApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.HasSignatureExistsNonneg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.NatAddZeroFinOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PI.FlagGramNonneg ComplexConjugate

namespace PI.UnitaryGroupMassFormula.FlagGramNonneg

theorem main : PI.FlagGramNonneg := by
  unfold PI.FlagGramNonneg
  intro E _ _ _ V _ _ _ hT hS hN N b τ hτ p r T T' hsig hT0 hT'0 e e' z z' hf hf'
  obtain ⟨-, he, hez, hzz⟩ := hf
  obtain ⟨-, he', hez', hzz'⟩ := hf'
  have hsym : ∀ x y, hT y x = star (hT x y) := fun x y => (hS.eq x y).symm
  set Z := zhat hT (fvec e z) (fvec e' z') with hZ
  have hsub : Z.submatrix Fin.castSucc Fin.castSucc = amat hT e e' := by
    ext a c
    simp [hZ, zhat, fvec, amat]
  have hg : gval Z (T : E) (T' : E) = Z.det * star Z.det -
      (T : E) * T' * ((amat hT e e').det * star (amat hT e e').det) := by
    rw [gval, leadMinorE_succ, leadMinorE_self, hsub]
  by_cases hA : IsUnit (amat hT e e').det
  ·
    have hrow : (fun c => Z (Fin.last r) (Fin.castSucc c)) = vvec hT z e' := by
      funext c; simp [hZ, zhat, fvec, vvec]
    have hcol : (fun a => Z (Fin.castSucc a) (Fin.last r)) = uvec hT e z' := by
      funext a; simp [hZ, zhat, fvec, uvec]
    have hll : Z (Fin.last r) (Fin.last r) = hT z z' := by
      simp [hZ, zhat, fvec]
    have hdet : Z.det = (amat hT e e').det * sval hT e e' z z' := by
      rw [det_succ_schur Z (by simpa [hsub] using hA), hsub, hll, hrow, hcol]
      rfl

    have hs : (T : ℝ) * T' ≤ Complex.normSq (τ (sval hT e e' z z')) := by
      by_contra hlt
      push_neg at hlt
      set y : Fin r ⊕ Fin 2 → V :=
        Sum.elim (yv hT e e') ![zt hT e e' z, zt' hT e e' z'] with hy
      have hyz : ∀ a, hT (zt hT e e' z) (yv hT e e' a) = 0 := fun a => by
        rw [hsym, yv_zt (hS := hS) (hA := hA) (he := he) (hez := hez) (a := a), star_zero]
      have hyz' : ∀ a, hT (zt' hT e e' z') (yv hT e e' a) = 0 := fun a => by
        rw [hsym, yv_zt' (hA := hA) (he' := he') (hez' := hez') (a := a), star_zero]
      have hz'z : hT (zt' hT e e' z') (zt hT e e' z) = star (sval hT e e' z z') := by
        rw [hsym, zt_zt' (hA := hA)]
      have hG : (Matrix.of fun n k => τ (b.repr (y k) n))ᴴ * ((gram hT b).map τ) *
          (Matrix.of fun n k => τ (b.repr (y k) n)) =
          gamma r T T' (τ (sval hT e e' z z')) := by
        ext i j
        rw [gram_tau hT b τ hτ y i j]
        rcases i with a | i <;> rcases j with c | j
        · by_cases hac : a = c
          · subst hac
            simp [hy, gamma, yv_yv (hS := hS) (hA := hA) (he := he) (he' := he'), map_ofNat]
          · simp [hy, gamma, yv_yv (hS := hS) (hA := hA) (he := he) (he' := he'), hac]
        · fin_cases j <;> simp [hy, gamma, yv_zt (hS := hS) (hA := hA) (he := he) (hez := hez), yv_zt' (hA := hA) (he' := he') (hez' := hez')]
        · fin_cases i <;> simp [hy, gamma, hyz, hyz']
        · fin_cases i <;> fin_cases j <;>
            simp [hy, gamma, zt_zt (hS := hS) (he := he) (hez := hez), zt'_zt' (hS := hS) (he' := he') (hez' := hez'), zt_zt' (hA := hA), hz'z, hzz, hzz', hτ]
      have hcard : r + 1 < Fintype.card (Fin r ⊕ Fin 2) := by
        rw [Fintype.card_sum, Fintype.card_fin, Fintype.card_fin]; omega
      obtain ⟨c, hc0, hcnn⟩ := hasSignature_exists_nonneg _ hsig hcard
        (Matrix.of fun n k => τ (b.repr (y k) n))
      rw [form_mulVec, hG] at hcnn
      have hneg := gamma_neg r T T' (by exact_mod_cast hT0) (by exact_mod_cast hT'0) _ hlt c hc0
      linarith
    refine ⟨Complex.normSq (τ (amat hT e e').det) *
      (Complex.normSq (τ (sval hT e e' z z')) - T * T'),
      mul_nonneg (Complex.normSq_nonneg _) (by linarith), ?_⟩
    rw [hg, hdet]
    simp only [map_sub, map_mul, star_mul', hτ, map_natCast]
    push_cast
    rw [← Complex.mul_conj, ← Complex.mul_conj]
    ring
  ·
    have h0 : (amat hT e e').det = 0 := by
      by_contra h
      exact hA (isUnit_iff_ne_zero.mpr h)
    refine ⟨Complex.normSq (τ Z.det), Complex.normSq_nonneg _, ?_⟩
    rw [hg, h0]
    simp [hτ, Complex.mul_conj]

end PI.UnitaryGroupMassFormula.FlagGramNonneg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.Gval =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.GramJoint\npublic import Formalism.PeriodIntegrals.FlagGramNonneg\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagGramNonnegativity.Gval\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions.S

namespace Formalism.L2.SG.Closed

theorem GramDetFlag_holds : Formalism.L2.SG.GramJoint.GramDetFlag := Formalism.L2.SG.GramJoint.gramDetFlag

theorem GNonnegAt_holds : Formalism.L2.SG.GramJoint.GNonnegAt := by
  intro E _ _ _ S τ hτ hsig r T T' hr hT hT' F F'
  obtain ⟨p, hp⟩ : ∃ p, Formalism.UG.HasSignature (S.gram.map τ) p (r + 1) := ⟨(S.sig τ).1, hr ▸ hsig τ⟩
  exact _root_.PI.UnitaryGroupMassFormula.FlagGramNonneg.main E S.V S.hT S.herm S.nondeg S.rank S.frame τ hτ p r T T' hp hT hT' F.e F'.e F.z F'.z
    ⟨F.e_indep, F.e_iso, F.z_orth, F.z_norm⟩ ⟨F'.e_indep, F'.e_iso, F'.z_orth, F'.z_norm⟩

theorem DNeZeroAt_holds : Formalism.L2.SG.GramJoint.DNeZeroAt := Formalism.L2.SG.GramJoint.dNeZeroAt_of GNonnegAt_holds


end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds =====
