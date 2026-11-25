module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaBasis
public import Mathlib.Data.Nat.Choose.Multinomial
public import Formalism.GradedWeylDivisibility.FinalC
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.GramMatrixDuality
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.StdSlopeLowOf
public import Formalism.GradedWeylDivisibility.StatementE
public import Formalism.PeriodIntegrals.HookBound
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaOperatorBasis
public import Formalism.SharpRestriction.GlobalSchurBounds.SlopeMaxOpenOfHookTwoLeV
public import Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.MonomialFactorizationLower, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaGram, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow, Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.MonomialFactorizationLower =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.MonomialFactorizationLower", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaBasis\npublic import Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.SlopeSteps

open Finset

theorem multinomial_le_pow {N : ℕ} (f : Fin N → ℕ) : Nat.multinomial univ f ≤ N ^ (∑ a, f a) := by
  have h := Finset.sum_pow_eq_sum_piAntidiag (R := ℕ) (univ : Finset (Fin N)) (fun _ => (1 : ℕ)) (∑ a, f a)
  simp only [one_pow, prod_const_one, mul_one, sum_const, card_univ, Fintype.card_fin, smul_eq_mul] at h
  rw [h]
  exact Finset.single_le_sum (f := fun k => Nat.multinomial univ k) (fun _ _ => Nat.zero_le _)
    (mem_piAntidiag.mpr ⟨rfl, fun i _ => mem_univ i⟩)

theorem col_fact_le {N : ℕ} (f : Fin N → ℕ) :
    (∑ a, f a).factorial ≤ N ^ (∑ a, f a) * ∏ a, (f a).factorial := by
  rw [← Nat.multinomial_spec univ f, mul_comm]
  exact Nat.mul_le_mul_right _ (multinomial_le_pow f)

theorem monomial_factorization_lower : MonoFactLow := by
  intro N ν m hm
  classical
  have h1 : ∏ k ∈ m.support, (m k).factorial = ∏ s : Fin N, ∏ a : Fin N, (m (a, s)).factorial := by
    rw [Finset.prod_subset (Finset.subset_univ _) (fun k _ hk => by
      rw [Finsupp.mem_support_iff, not_not] at hk
      rw [hk, Nat.factorial_zero])]
    rw [Fintype.prod_prod_type, Finset.prod_comm]
  rw [h1, ← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
  refine Finset.prod_le_prod' fun s _ => ?_
  have := col_fact_le (fun a => m (a, s))
  rwa [hm s] at this

end PI.SlopeSteps
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.MonomialFactorizationLower =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaGram =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaGram", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaBasis\npublic import Formalism.GradedWeylDivisibility.FinalC\npublic import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.GramMatrixDuality\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.MonomialFactorizationLower\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.StdSlopeLowOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.GradedWeylDivisibility.StatementE\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.SlopeSteps

open MvPolynomial Formalism.GradedWeylDivisibility Formalism.L2.DIV Matrix

theorem det_mul_rect' {R : Type*} [CommRing R] {k : ℕ} {n : Type*} [Fintype n]
    (A : Matrix (Fin k) n R) (B : Matrix n (Fin k) R) :
    (A * B).det = ∑ f : Fin k → n, (∏ i, B (f i) i) * (A.submatrix id f).det := by
  simp only [det_apply, Matrix.mul_apply, Fintype.prod_sum, Finset.smul_sum, submatrix_apply, id]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  simp only [Units.smul_def, zsmul_eq_mul, Finset.prod_mul_distrib]
  ring

theorem sum_comp_perm' {M : Type*} [AddCommMonoid M] {k : ℕ} {n : Type*} [Fintype n] [DecidableEq n]
    (F : (Fin k → n) → M) (τ : Equiv.Perm (Fin k)) : ∑ f : Fin k → n, F (fun i => f (τ i)) = ∑ f, F f :=
  Equiv.sum_comp (Equiv.arrowCongr τ.symm (Equiv.refl n)) F

theorem factorial_mul_det_gram_cauchy_binet {R : Type*} [CommRing R] (k : ℕ) {n : Type*} [Fintype n] [DecidableEq n]
    (q : n → R) (V : Matrix n (Fin k) R) :
    (k.factorial : R) * (Vᵀ * diagonal q * V).det =
      ∑ f : Fin k → n, (∏ i, q (f i)) * ((V.submatrix f id).det * (Vᵀ.submatrix id f).det) := by
  have hexp : (Vᵀ * diagonal q * V).det = ∑ f : Fin k → n, (∏ i, q (f i)) *
      ((∏ i, V (f i) i) * (Vᵀ.submatrix id f).det) := by
    rw [Matrix.mul_assoc, det_mul_rect']
    refine Finset.sum_congr rfl fun f _ => ?_
    simp only [diagonal_mul, Finset.prod_mul_distrib, mul_assoc]
  have hk : (k.factorial : R) = ∑ _τ : Equiv.Perm (Fin k), (1 : R) := by
    simp [Fintype.card_perm]
  have step : ∀ τ : Equiv.Perm (Fin k),
      (1 : R) * ∑ f : Fin k → n, (∏ i, q (f i)) * ((∏ i, V (f i) i) * (Vᵀ.submatrix id f).det)
        = ∑ f : Fin k → n, (∏ i, q (f i)) *
            ((∏ i, V (f (τ i)) i) * ((Vᵀ.submatrix id f).submatrix id τ).det) := by
    intro τ
    rw [one_mul, ← sum_comp_perm' _ τ]
    refine Finset.sum_congr rfl fun f _ => ?_
    rw [Equiv.prod_comp τ (fun i => q (f i))]
    rfl
  rw [hexp, hk, Finset.sum_mul, Finset.sum_congr rfl fun τ _ => step τ, Finset.sum_comm]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [← Finset.mul_sum]
  congr 1
  rw [det_apply (V.submatrix f id), Finset.sum_mul]
  refine Finset.sum_congr rfl fun τ _ => ?_
  rw [det_permute']
  simp only [submatrix_apply, id, Units.smul_def, zsmul_eq_mul]
  ring

theorem factorial_mul_det_sq {R : Type*} [CommRing R] (k : ℕ) {n : Type*} [Fintype n] [DecidableEq n]
    (q : n → R) (V : Matrix n (Fin k) R) :
    (k.factorial : R) * (Vᵀ * diagonal q * V).det =
      ∑ f : Fin k → n, (∏ i, q (f i)) * ((V.submatrix f id).det * (V.submatrix f id).det) := by
  rw [factorial_mul_det_gram_cauchy_binet]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [← transpose_submatrix, det_transpose]

theorem fockQ_eq_sum {σ : Type} (P Q : MvPolynomial σ ℚ) (S : Finset (σ →₀ ℕ)) (hS : P.support ⊆ S) :
    fockQ P Q = ∑ m ∈ S, P.coeff m * Q.coeff m * ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℚ) := by
  unfold fockQ
  refine Finset.sum_subset hS fun m _ hm => ?_
  rw [MvPolynomial.mem_support_iff, not_not] at hm
  rw [hm]
  ring

theorem nabla_gram_lower_bound : NablaGramLow := by
  intro N ν r e hν
  classical
  have hpos := hwNormPos ν
  set h := fockQ (hw ℚ le_rfl ν) (hw ℚ le_rfl ν) with hh
  have hNpow := natPowPos N (∑ s, ν s) (sumNuZero ν)
  set A : ℚ := ((∏ s, (ν s).factorial : ℕ) : ℚ) / ((N : ℚ) ^ (∑ s, ν s) * h) with hA
  have hA0 : 0 ≤ A := div_nonneg (Nat.cast_nonneg _) (mul_pos hNpow hpos).le
  set S : Finset (Fin N × Fin N →₀ ℕ) :=
    Finset.univ.biUnion fun i => (e i : MvPolynomial (Fin N × Fin N) ℤ).support with hS
  set Vz : Matrix S (Fin r) ℤ := Matrix.of fun m i => (e i : MvPolynomial (Fin N × Fin N) ℤ).coeff m.1 with hVz
  set V : Matrix S (Fin r) ℚ := Vz.map (Int.castRingHom ℚ) with hV
  set q : S → ℚ := fun m => ((∏ k ∈ m.1.support, (m.1 k).factorial : ℕ) : ℚ) / h with hq

  have hG : gramOf ν (fun i => (e i : MvPolynomial (Fin N × Fin N) ℤ)) = Vᵀ * diagonal q * V := by
    ext i j
    have hsub : (map (Int.castRingHom ℚ) (e i : MvPolynomial (Fin N × Fin N) ℤ)).support ⊆ S :=
      (MvPolynomial.support_map_subset _ _).trans (by
        rw [hS]
        exact Finset.subset_biUnion_of_mem (fun i => (e i : MvPolynomial (Fin N × Fin N) ℤ).support)
          (Finset.mem_univ i))
    simp only [gramOf, Matrix.of_apply]
    rw [fockQ_eq_sum _ _ S hsub, Finset.sum_div, ← Finset.sum_coe_sort S]
    rw [Matrix.mul_apply]
    simp only [mul_diagonal, transpose_apply, hV, hVz, map_apply, of_apply, hq, coeff_map, eq_intCast]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [← hh]
    ring

  have hqA : ∀ m : S, A ≤ q m := by
    intro m
    obtain ⟨i, -, hm⟩ := Finset.mem_biUnion.mp m.2
    have hcol := colSums ℤ N N ν _ (e i).2 m.1 hm
    have hT1 := monomial_factorization_lower N ν m.1 hcol
    have hT1q : ((∏ s, (ν s).factorial : ℕ) : ℚ) ≤
        (N : ℚ) ^ (∑ s, ν s) * ((∏ k ∈ m.1.support, (m.1 k).factorial : ℕ) : ℚ) := by
      exact_mod_cast hT1
    rw [hA, hq]
    rw [div_le_div_iff₀ (mul_pos hNpow hpos) hpos]
    calc ((∏ s, (ν s).factorial : ℕ) : ℚ) * h
        ≤ (N : ℚ) ^ (∑ s, ν s) * ((∏ k ∈ m.1.support, (m.1 k).factorial : ℕ) : ℚ) * h :=
          mul_le_mul_of_nonneg_right hT1q hpos.le
      _ = ((∏ k ∈ m.1.support, (m.1 k).factorial : ℕ) : ℚ) * ((N : ℚ) ^ (∑ s, ν s) * h) := by ring

  have hid1 := factorial_mul_det_sq r (fun _ => (1 : ℚ)) V
  rw [diagonal_one, Matrix.mul_one] at hid1
  simp only [Finset.prod_const_one, one_mul] at hid1
  have hfac : (0 : ℚ) < r.factorial := by exact_mod_cast Nat.factorial_pos r
  have hVVnn : 0 ≤ (Vᵀ * V).det := by
    have h0 : 0 ≤ (r.factorial : ℚ) * (Vᵀ * V).det := by
      rw [hid1]; exact Finset.sum_nonneg fun f _ => mul_self_nonneg _
    exact nonneg_of_mul_nonneg_right (by linarith) hfac
  have hind := linIndep_Q e
  have hVVne : (Vᵀ * V).det ≠ 0 := by
    intro h0
    obtain ⟨v, hv0, hv⟩ := exists_mulVec_eq_zero_iff.mpr h0
    have h1 : dotProduct (V *ᵥ v) (V *ᵥ v) = 0 := by
      have h1' := congrArg (fun x => dotProduct v x) hv
      simp only [dotProduct_zero] at h1'
      rwa [← mulVec_mulVec, dotProduct_mulVec, vecMul_transpose] at h1'
    have h2 : V *ᵥ v = 0 := by
      funext m
      have h3 := (Finset.sum_eq_zero_iff_of_nonneg (fun m _ => mul_self_nonneg ((V *ᵥ v) m))).mp h1 m
        (Finset.mem_univ _)
      exact mul_self_eq_zero.mp h3
    have h3 : ∑ i, v i • intQ N N (e i : MvPolynomial (Fin N × Fin N) ℤ) = 0 := by
      ext m
      rw [MvPolynomial.coeff_sum, AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply]
      simp only [MvPolynomial.coeff_smul, smul_eq_mul, we_intQ_apply, MvPolynomial.coeff_map, eq_intCast]
      by_cases hm : m ∈ S
      · have h4 := congrFun h2 ⟨m, hm⟩
        simp only [mulVec, dotProduct, hV, hVz, map_apply, of_apply, Pi.zero_apply, eq_intCast] at h4
        rw [← h4]
        exact Finset.sum_congr rfl fun i _ => mul_comm _ _
      · refine Finset.sum_eq_zero fun i _ => ?_
        have h5 : (e i : MvPolynomial (Fin N × Fin N) ℤ).coeff m = 0 := by
          by_contra hc
          exact hm (Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, MvPolynomial.mem_support_iff.mpr hc⟩)
        rw [h5, Int.cast_zero, mul_zero]
    exact hv0 (funext (Fintype.linearIndependent_iff.mp hind v h3))
  have hVVint : (Vᵀ * V).det = (((Vzᵀ * Vz).det : ℤ) : ℚ) := by
    have h6 := RingHom.map_det (Int.castRingHom ℚ) (Vzᵀ * Vz)
    rw [eq_intCast] at h6
    rw [h6, RingHom.mapMatrix_apply, Matrix.map_mul, transpose_map]
  have hVV1 : 1 ≤ (Vᵀ * V).det := by
    rw [hVVint] at hVVnn hVVne ⊢
    have hz : 0 < (Vzᵀ * Vz).det := by
      have := lt_of_le_of_ne hVVnn (Ne.symm hVVne)
      exact_mod_cast this
    exact_mod_cast hz

  have hid := factorial_mul_det_sq r q V
  have hprod : ∀ f : Fin r → S, A ^ r ≤ ∏ i, q (f i) := by
    intro f
    calc A ^ r = ∏ _i : Fin r, A := by rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
      _ ≤ ∏ i, q (f i) := Finset.prod_le_prod₀ (fun _ _ => hA0) (fun i _ => hqA (f i))
  have hmain : A ^ r * ((r.factorial : ℚ) * (Vᵀ * V).det) ≤
      (r.factorial : ℚ) * (Vᵀ * diagonal q * V).det := by
    rw [hid1, hid, Finset.mul_sum]
    exact Finset.sum_le_sum fun f _ => mul_le_mul_of_nonneg_right (hprod f) (mul_self_nonneg _)
  rw [hG]
  have hAr : 0 ≤ A ^ r := pow_nonneg hA0 r
  nlinarith [mul_le_mul_of_nonneg_left hVV1 (mul_nonneg hAr hfac.le)]

end PI.SlopeSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaGram =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow", "h": "module\n\npublic import Formalism.PeriodIntegrals.HookBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.GramMatrixDuality\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaGram\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.NablaOperatorBasis\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardSlopeBound.StdSlopeLowOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem standard_slope_lower : PI.StdSlopeLow :=
  PI.SlopeSteps.stdSlopeLow_of PI.SlopeSteps.nabla_gram_lower_bound PI.SlopeSteps.gram_matrix_duality
    PI.SlopeSteps.nabla_operator_basis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.SlopeMaxOpenOfHookTwoLeV\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HookBound\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.MainNotions.flipTwoThree

theorem column_exact_slope_family {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) : fam0 Fm ColSlopeEq :=
  ⟨0, fun _ _ _ _ => column_lattice_exact_slope _⟩

theorem lower_slope_inequality_family {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) : FamilySlopeLowerOpenPart Fm :=
  familySlopeLowerOpen_of_std standard_slope_lower hook_length_bound Fm (column_exact_slope_family Fm)

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily =====
