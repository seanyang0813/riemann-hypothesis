module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SepDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.DetMono
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBoundAlt
public import Mathlib.Analysis.Matrix.Normed
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.IndefiniteUnitaryPreservesForm
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatticeIsometry
public import Formalism.SatakeDualWeyl.StatementC
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Bridge
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsDual
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatSizeContOfSteps
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchPlace
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatCountAllOf
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlob
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlobApprox
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Stabfin

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchIneq, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBound, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Choose, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.DualIncl, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDual, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatticeIsDiscreteGroup, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.PackLem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SublatticeOfLattice, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.NormProd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchIneq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchIneq", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SepDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.DetMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.UnitaryGroupMassFormula.LCG

theorem archimedean_inequality : ArchIneq := by
  intro n k A C D κ hκ hA hker
  have hGdet := (PI.UnitaryGroupMassFormula.LSC.determinant_monotone n k D 1 1 zero_le_one (by intro w; simp)).1
  obtain ⟨G, hG⟩ : ∃ G : Matrix (Fin k) (Fin k) ℂ, G = Dᴴ * D := ⟨_, rfl⟩
  rw [← hG] at hGdet ⊢
  have hGh : Gᴴ = G := by
    rw [hG, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
  have him : G.det.im = 0 := by
    have hstar : star G.det = G.det := by rw [← Matrix.det_conjTranspose, hGh]
    have h1 := congrArg Complex.im hstar
    simp only [Complex.star_def, Complex.conj_im] at h1
    linarith
  by_cases hg : G.det = 0
  · rw [hg, Complex.zero_re, mul_zero]
    exact mul_nonneg (pow_nonneg hκ k) (sq_nonneg _)
  · have hGu : IsUnit G.det := isUnit_iff_ne_zero.mpr hg
    obtain ⟨X, hX⟩ : ∃ X : Matrix (Fin n) (Fin k) ℂ, X = D * G⁻¹ * Dᴴ * C := ⟨_, rfl⟩
    have hAP : A * (D * G⁻¹ * Dᴴ) = A := by
      apply Matrix.ext_of_mulVec_single
      intro j
      have h1 : Dᴴ *ᵥ ((Pi.single j 1 : Fin n → ℂ) - (D * G⁻¹ * Dᴴ) *ᵥ Pi.single j 1) = 0 := by
        have h3 : Dᴴ * (D * G⁻¹ * Dᴴ) = G * G⁻¹ * Dᴴ := by
          rw [hG]
          simp only [Matrix.mul_assoc]
        rw [Matrix.mulVec_sub, Matrix.mulVec_mulVec, h3, Matrix.mul_nonsing_inv G hGu, Matrix.one_mul, sub_self]
      have h2 := hker _ h1
      rw [Matrix.mulVec_sub, sub_eq_zero] at h2
      rw [← Matrix.mulVec_mulVec, ← h2]
    have hAX : A * X = A * C := by
      rw [hX, ← Matrix.mul_assoc, hAP]
    have hdm := (PI.UnitaryGroupMassFormula.LSC.determinant_monotone n k X A κ hκ hA).2
    rw [hAX] at hdm
    have hXh : Xᴴ = Cᴴ * D * G⁻¹ * Dᴴ := by
      rw [hX]
      simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, Matrix.conjTranspose_nonsing_inv,
        hGh, Matrix.mul_assoc]
    have hXX : Xᴴ * X = Cᴴ * D * G⁻¹ * (Dᴴ * C) := by
      rw [hXh, hX]
      have hGG : G⁻¹ * (Dᴴ * D) = 1 := by
        rw [← hG]
        exact Matrix.nonsing_inv_mul G hGu
      calc Cᴴ * D * G⁻¹ * Dᴴ * (D * G⁻¹ * Dᴴ * C) = Cᴴ * D * (G⁻¹ * (Dᴴ * D)) * G⁻¹ * (Dᴴ * C) := by
            simp only [Matrix.mul_assoc]
        _ = Cᴴ * D * G⁻¹ * (Dᴴ * C) := by rw [hGG, Matrix.mul_one]
    have hdetX : (Xᴴ * X).det = star (Dᴴ * C).det * (Dᴴ * C).det / G.det := by
      have hCD : Cᴴ * D = (Dᴴ * C)ᴴ := by
        rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
      rw [hXX, Matrix.det_mul, Matrix.det_mul, Matrix.det_nonsing_inv, Ring.inverse_eq_inv', hCD,
        Matrix.det_conjTranspose]
      ring
    have h5 : (Xᴴ * X).det * G.det = star (Dᴴ * C).det * (Dᴴ * C).det := by
      rw [hdetX, div_mul_cancel₀ _ hg]
    have hval : (Xᴴ * X).det.re * G.det.re = ‖(Dᴴ * C).det‖ ^ 2 := by
      have h6 := congrArg Complex.re h5
      rw [Complex.mul_re, him, mul_zero, sub_zero] at h6
      rw [h6, ← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
      simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]
      ring
    calc (((A * C)ᴴ * (A * C)).det).re * G.det.re ≤ κ ^ k * (Xᴴ * X).det.re * G.det.re :=
          mul_le_mul_of_nonneg_right hdm hGdet
      _ = κ ^ k * ‖(Dᴴ * C).det‖ ^ 2 := by rw [mul_assoc, hval]

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchIneq =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBoundAlt\npublic import Mathlib.Analysis.Matrix.Normed\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.IndefiniteUnitaryPreservesForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.UnitaryGroupMassFormula.LCG

namespace BoxB

variable {n : ℕ}

section Frob

attribute [local instance] Matrix.frobeniusNormedAddCommGroup Matrix.frobeniusNormedRing
  Matrix.frobeniusNormedAlgebra Matrix.frobeniusNormedSpace

lemma frob_sq (A : Matrix (Fin n) (Fin n) ℂ) : ‖A‖ ^ 2 = Formalism.REAL.hs A := by
  rw [Matrix.frobenius_norm_def, ← Real.rpow_natCast, ← Real.rpow_mul (by positivity)]
  simp only [Real.rpow_two]
  norm_num [Formalism.REAL.hs]

lemma frob_eq (A : Matrix (Fin n) (Fin n) ℂ) : ‖A‖ = Real.sqrt (Formalism.REAL.hs A) := by
  rw [← frob_sq, Real.sqrt_sq (norm_nonneg A)]

lemma hs_one : Formalism.REAL.hs (1 : Matrix (Fin n) (Fin n) ℂ) = n := by
  unfold Formalism.REAL.hs
  have h1 : ∀ i : Fin n, ∑ j, ‖(1 : Matrix (Fin n) (Fin n) ℂ) i j‖ ^ 2 = 1 := by
    intro i
    rw [Finset.sum_eq_single i]
    · simp
    · intro j _ hj
      simp [Matrix.one_apply_ne (Ne.symm hj)]
    · intro h
      exact absurd (Finset.mem_univ i) h
  simp [h1]

lemma norm_one_eq : ‖(1 : Matrix (Fin n) (Fin n) ℂ)‖ = Real.sqrt n := by
  rw [frob_eq, hs_one]

lemma term_le (hn : 1 ≤ n) (X : Matrix (Fin n) (Fin n) ℂ) (k : ℕ) :
    ‖((k.factorial : ℂ)⁻¹) • X ^ k‖ ≤ Real.sqrt n * (‖X‖ ^ k / k.factorial) := by
  have hsq : 1 ≤ Real.sqrt n := by
    rw [Real.one_le_sqrt]
    exact_mod_cast hn
  have hpow : ‖X ^ k‖ ≤ Real.sqrt n * ‖X‖ ^ k := by
    rcases Nat.eq_zero_or_pos k with rfl | hk
    · simp [norm_one_eq]
    · calc ‖X ^ k‖ ≤ ‖X‖ ^ k := norm_pow_le' X hk
        _ ≤ Real.sqrt n * ‖X‖ ^ k := le_mul_of_one_le_left (by positivity) hsq
  have hc : ‖((k.factorial : ℂ)⁻¹)‖ = (k.factorial : ℝ)⁻¹ := by simp
  have hf : (0 : ℝ) < k.factorial := by exact_mod_cast Nat.factorial_pos k
  rw [norm_smul, hc, inv_mul_eq_div, mul_div_assoc']
  exact div_le_div_of_nonneg_right hpow hf.le

lemma norm_exp_le (hn : 1 ≤ n) (X : Matrix (Fin n) (Fin n) ℂ) :
    ‖NormedSpace.exp X‖ ≤ Real.sqrt n * Real.exp ‖X‖ := by
  rw [NormedSpace.exp_eq_tsum ℂ]
  have hs := (NormedSpace.expSeries_div_hasSum_exp ‖X‖).mul_left (Real.sqrt n)
  rw [← Real.exp_eq_exp_ℝ] at hs
  exact tsum_of_norm_bounded hs (fun k => term_le hn X k)

lemma hs_exp_le (X : Matrix (Fin n) (Fin n) ℂ) :
    Formalism.REAL.hs (NormedSpace.exp X) ≤ (Real.sqrt n * Real.exp (Real.sqrt (Formalism.REAL.hs X))) ^ 2 := by
  rcases Nat.eq_zero_or_pos n with hn | hn
  · subst hn
    simp [Formalism.REAL.hs]
  · rw [← frob_sq, ← frob_eq]
    exact pow_le_pow_left₀ (norm_nonneg _) (norm_exp_le hn X) 2

end Frob

private lemma hs_eq_re_trace_conjTranspose_mul' {n : ℕ} (M : Matrix (Fin n) (Fin n) ℂ) :
    Formalism.REAL.hs M = (Mᴴ * M).trace.re := by
  unfold Formalism.REAL.hs
  simp only [Matrix.trace, Matrix.diag, Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.re_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
  rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
  simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]
  ring

lemma hs_unitary_mul {k : Matrix (Fin n) (Fin n) ℂ} (hk : kᴴ * k = 1) (M : Matrix (Fin n) (Fin n) ℂ) :
    Formalism.REAL.hs (k * M) = Formalism.REAL.hs M := by
  rw [hs_eq_re_trace_conjTranspose_mul', hs_eq_re_trace_conjTranspose_mul', Matrix.conjTranspose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc kᴴ k M, hk,
    Matrix.one_mul]

end BoxB

open BoxB in
theorem box_lattice_point_bound : BoxBound := by
  intro n ε g
  have hK : ∀ k : Matrix (Fin n) (Fin n) ℂ, k ∈ Formalism.REAL.Kset ε → kᴴ * k = 1 := by
    intro k hk
    simp only [Formalism.REAL.Kset, Set.mem_setOf_eq] at hk
    exact Matrix.mem_unitaryGroup_iff'.mp hk.1
  have hP : Formalism.REAL.Polar := Formalism.REAL.polar_decomposition_holds
  have hgi : Formalism.REAL.inUJ ε (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) : Matrix (Fin n) (Fin n) ℂ) := g.2
  obtain ⟨k0, X0, hk0, hX0, hg0⟩ := (hP n ε).1 _ hgi
  set S := {t | ∃ k X : Matrix (Fin n) (Fin n) ℂ, k ∈ Formalism.REAL.Kset ε ∧ Formalism.REAL.inP ε X ∧
      ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = k * NormedSpace.exp X ∧
      t = Real.sqrt (Formalism.REAL.hs X)} with hS
  have hne : S.Nonempty := ⟨_, k0, X0, hk0, hX0, hg0, rfl⟩
  have hbound : ∀ t ∈ S, hsN (Formalism.MainNotions.S.uMat g) ≤ Real.sqrt n * Real.exp t := by
    rintro t ⟨k, X, hk, _, hgk, rfl⟩
    unfold hsN Formalism.MainNotions.S.uMat
    rw [hgk, hs_unitary_mul (hK k hk)]
    calc Real.sqrt (Formalism.REAL.hs (NormedSpace.exp X))
        ≤ Real.sqrt ((Real.sqrt n * Real.exp (Real.sqrt (Formalism.REAL.hs X))) ^ 2) :=
          Real.sqrt_le_sqrt (hs_exp_le X)
      _ = Real.sqrt n * Real.exp (Real.sqrt (Formalism.REAL.hs X)) := Real.sqrt_sq (by positivity)
  show hsN (Formalism.MainNotions.S.uMat g) ≤ Real.sqrt n * Real.exp (sInf S)
  by_contra hlt
  push_neg at hlt
  rcases Nat.eq_zero_or_pos n with hn0 | hnpos
  · subst hn0
    have h0 : hsN (Formalism.MainNotions.S.uMat g) = 0 := by
      unfold hsN Formalism.REAL.hs
      simp
    rw [h0] at hlt
    simp at hlt
  · have hsqpos : 0 < Real.sqrt n := Real.sqrt_pos.mpr (by exact_mod_cast hnpos)
    set a := hsN (Formalism.MainNotions.S.uMat g) with ha
    have hapos : 0 < a := lt_of_le_of_lt (by positivity) hlt
    have h1 : sInf S < Real.log (a / Real.sqrt n) := by
      rw [Real.lt_log_iff_exp_lt (div_pos hapos hsqpos), lt_div_iff₀ hsqpos, mul_comm]
      exact hlt
    obtain ⟨t, htS, htlt⟩ := exists_lt_of_csInf_lt hne h1
    have h2 := hbound t htS
    have h3 : Real.exp t < a / Real.sqrt n := by
      rw [← Real.exp_log (div_pos hapos hsqpos)]
      exact Real.exp_lt_exp.mpr htlt
    rw [lt_div_iff₀ hsqpos] at h3
    linarith

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBound =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Choose =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Choose", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SepDefs\npublic import Mathlib.LinearAlgebra.Matrix.Rank\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatticeIsometry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

namespace ChooseW

section Gen

variable {K : Type*} [Field K] {n : ℕ}

lemma ann_range (δ : Matrix (Fin n) (Fin n) K) (a : Fin n → K)
    (ha : ∀ z, δ *ᵥ z = 0 → a ⬝ᵥ z = 0) : ∃ t, a = t ᵥ* δ := by
  let ℓ : Module.Dual K (Fin n → K) :=
    { toFun := fun z => a ⬝ᵥ z
      map_add' := fun x y => dotProduct_add a x y
      map_smul' := fun c x => by simp [dotProduct_smul] }
  have hmem : ℓ ∈ (LinearMap.ker δ.mulVecLin).dualAnnihilator := by
    rw [Submodule.mem_dualAnnihilator]
    intro z hz
    exact ha z (by simpa using hz)
  rw [← LinearMap.range_dualMap_eq_dualAnnihilator_ker] at hmem
  obtain ⟨φ, hφ⟩ := hmem
  refine ⟨fun j => φ (fun r => if j = r then 1 else 0), ?_⟩
  funext i
  have h1 := LinearMap.congr_fun hφ (fun r => if i = r then 1 else 0)
  rw [LinearMap.dualMap_apply] at h1
  have h2 : ℓ (fun r => if i = r then 1 else 0) = a i := by
    simp [ℓ, dotProduct]
  rw [h2, LinearMap.pi_apply_eq_sum_univ φ] at h1
  rw [← h1]
  simp [Matrix.vecMul, dotProduct, Matrix.mulVec, mul_comm]

lemma scaled_li {ι : Type*} {V : Type*} [AddCommGroup V] [Module K V] (d : ι → V)
    (hli : LinearIndependent K d) (m : ι → K) (hm : ∀ c, m c ≠ 0) :
    LinearIndependent K (fun c => m c • d c) := by
  have := hli.units_smul (fun c => Units.mk0 (m c) (hm c))
  convert this using 1
  funext c
  simp [Units.smul_def]

lemma scaled_span {ι : Type*} {V : Type*} [AddCommGroup V] [Module K V] (d : ι → V) (m : ι → K)
    (hm : ∀ c, m c ≠ 0) :
    Submodule.span K (Set.range d) ≤ Submodule.span K (Set.range fun c => m c • d c) := by
  rw [Submodule.span_le]
  rintro _ ⟨c, rfl⟩
  have : d c = (m c)⁻¹ • (m c • d c) := by rw [smul_smul, inv_mul_cancel₀ (hm c), one_smul]
  rw [this]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨c, rfl⟩)

lemma basis_range (A : Matrix (Fin n) (Fin n) K) (k : ℕ) (hk : A.rank = k) :
    ∃ z : Fin k → Fin n → K, LinearIndependent K (fun c => A *ᵥ z c) ∧
      ∀ w, A *ᵥ w ∈ Submodule.span K (Set.range fun c => A *ᵥ z c) := by
  let R := LinearMap.range A.mulVecLin
  let bas := Module.finBasisOfFinrankEq K R (by simpa only [R, Matrix.finrank_range_mulVecLin] using hk)
  have hz : ∀ c, ∃ z, A *ᵥ z = (bas c : Fin n → K) := fun c => by
    obtain ⟨z, hz⟩ := LinearMap.mem_range.mp (bas c).2
    exact ⟨z, by simpa using hz⟩
  choose z hz using hz
  have hspan : Submodule.span K (Set.range fun c => (bas c : Fin n → K)) = R := by
    rw [show (fun c => (bas c : Fin n → K)) = R.subtype ∘ bas from rfl, Set.range_comp,
      ← Submodule.map_span, bas.span_eq, Submodule.map_top, Submodule.range_subtype]
  refine ⟨z, ?_, ?_⟩
  · simp only [hz]
    exact bas.linearIndependent.map' R.subtype (Submodule.ker_subtype R)
  · intro w
    simp only [hz]
    rw [hspan]
    exact LinearMap.mem_range.mpr ⟨w, by simp⟩

lemma rank_pos (δ : Matrix (Fin n) (Fin n) K) (hδ : δ ≠ 0) : 1 ≤ δ.rank := by
  by_contra h
  have h0 : δ.rank = 0 := by omega
  have hbot : LinearMap.range δ.mulVecLin = ⊥ := Submodule.finrank_eq_zero.mp (by simpa only [Matrix.finrank_range_mulVecLin] using h0)
  have hz : Matrix.toLin' δ = 0 := by
    rw [Matrix.toLin'_apply']
    exact LinearMap.range_eq_bot.mp hbot
  exact hδ (Matrix.toLin'.injective (by rw [hz, map_zero]))

end Gen

section Star

variable {E : Type*} [Field E] [StarRing E] {n : ℕ}

def sv (w : Fin n → E) : Fin n → E := fun i => starRingEnd E (w i)

lemma sv_sv (w : Fin n → E) : sv (sv w) = w := by
  funext i; simp [sv]

lemma star_li {k : ℕ} (v : Fin k → Fin n → E) (h : LinearIndependent E v) :
    LinearIndependent E (fun a => sv (v a)) := by
  rw [Fintype.linearIndependent_iff] at h ⊢
  intro g hg i
  have h0 : ∑ a, starRingEnd E (g a) • v a = 0 := by
    funext j
    have := congrArg (starRingEnd E) (congrFun hg j)

    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, sv, map_sum, map_mul,
    starRingEnd_self_apply, map_zero, Pi.zero_apply] at this ⊢
    rw [← this]
  have := h _ h0 i
  simpa using this

lemma star_span {k : ℕ} (v : Fin k → Fin n → E) (w : Fin n → E)
    (hw : sv w ∈ Submodule.span E (Set.range v)) :
    w ∈ Submodule.span E (Set.range fun a => sv (v a)) := by
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun E).mp hw
  refine (Submodule.mem_span_range_iff_exists_fun E).mpr ⟨fun a => starRingEnd E (c a), ?_⟩
  rw [← sv_sv w, ← hc]
  funext j

  simp [sv, Finset.sum_apply, map_sum, map_mul]

end Star

lemma scale {E : Type} [Field E] [NumberField E] {n : ℕ} (Λ : Submodule (𝓞 E) (Fin n → E))
    (hΛ : Submodule.span E (Λ : Set (Fin n → E)) = ⊤) (w : Fin n → E) :
    ∃ m : ℤ, m ≠ 0 ∧ (m : E) • w ∈ Λ := by
  classical
  have hw : w ∈ Submodule.span E (Λ : Set (Fin n → E)) := hΛ ▸ Submodule.mem_top
  obtain ⟨N, f, g, hfg⟩ := Submodule.mem_span_set'.mp hw
  obtain ⟨y, hy, hint⟩ := exists_integral_multiples ℤ ℚ (L := E) (Finset.univ.image f)
  refine ⟨y, hy, ?_⟩
  rw [← hfg, Finset.smul_sum]
  refine Submodule.sum_mem _ fun i _ => ?_
  have hi : IsIntegral ℤ ((y : E) * f i) := by
    have := hint (f i) (Finset.mem_image_of_mem f (Finset.mem_univ i))
    simpa [zsmul_eq_mul] using this
  rw [smul_smul]
  have := Λ.smul_mem (⟨(y : E) * f i, hi⟩ : 𝓞 E) (g i).2
  convert this using 1
  exact (algebraMap_smul E _ _).symm

lemma hf_eq (I : Formalism.MainNotions.S.AutInst) (w z : Fin I.n → I.E) : hf I w z = (sv w ᵥ* I.J) ⬝ᵥ z := by
  simp only [hf, Formalism.UG.hform, dotProduct, vecMul, Finset.sum_mul, sv]
  rw [Finset.sum_comm]

end ChooseW

open ChooseW in
theorem choice_of_generators : Choose := by
  intro I y δ hδ
  obtain ⟨Λ, _, hΛs, hΛ0⟩ := PI.UnitaryGroupMassFormula.LSC.lattice_isometry I y
  have hΛ : PI.LatCountG.latSet I y = (Λ : Set (Fin I.n → I.E)) := hΛ0
  have hJ : IsUnit I.J.det := isUnit_iff_ne_zero.mpr I.J_det
  set k := δ.rank with hk
  have hk1 : 1 ≤ k := rank_pos δ hδ

  obtain ⟨z, hzli, hzsp⟩ := basis_range δ k hk.symm
  have hsc : ∀ c, ∃ m : ℤ, m ≠ 0 ∧ ((m : I.E) • z c) ∈ Λ := fun c => scale Λ hΛs (z c)
  choose mu hmu0 hmuΛ using hsc

  set B : Matrix (Fin I.n) (Fin I.n) I.E := (δ * I.J⁻¹)ᵀ with hB
  have hBr : B.rank = k := by
    rw [hB, Matrix.rank_transpose, Matrix.rank_mul_eq_left_of_isUnit_det _ _ (Matrix.isUnit_nonsing_inv_det I.J hJ)]
  obtain ⟨t, htli, htsp⟩ := basis_range B k hBr
  have hsc' : ∀ a, ∃ m : ℤ, m ≠ 0 ∧ ((m : I.E) • sv (B *ᵥ t a)) ∈ Λ := fun a => scale Λ hΛs _
  choose mb hmb0 hmbΛ using hsc'
  have hmu0' : ∀ c, ((mu c : ℤ) : I.E) ≠ 0 := fun c => Int.cast_ne_zero.mpr (hmu0 c)
  have hmb0' : ∀ a, ((mb a : ℤ) : I.E) ≠ 0 := fun a => Int.cast_ne_zero.mpr (hmb0 a)

  have hperpB : ∀ s w, δ *ᵥ w = 0 → ((B *ᵥ s) ᵥ* I.J) ⬝ᵥ w = 0 := by
    intro s w hw
    rw [hB, Matrix.mulVec_transpose, Matrix.vecMul_vecMul, Matrix.mul_assoc,
      Matrix.nonsing_inv_mul _ hJ, Matrix.mul_one, ← Matrix.dotProduct_mulVec, hw, dotProduct_zero]
  refine ⟨k, fun c => ((mu c : ℤ) : I.E) • z c, fun a => ((mb a : ℤ) : I.E) • sv (B *ᵥ t a), hk1,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro c; rw [hΛ]; exact hmuΛ c
  · simp only [Matrix.mulVec_smul]
    exact scaled_li (fun c => δ *ᵥ z c) hzli (fun c => ((mu c : ℤ) : I.E)) hmu0'
  · intro w
    simp only [Matrix.mulVec_smul]
    exact scaled_span (fun c => δ *ᵥ z c) (fun c => ((mu c : ℤ) : I.E)) hmu0' (hzsp w)
  · intro a; rw [hΛ]; exact hmbΛ a
  · exact scaled_li (fun a => sv (B *ᵥ t a)) (star_li (fun a => B *ᵥ t a) htli)
      (fun a => ((mb a : ℤ) : I.E)) hmb0'
  · intro a w hw
    rw [hf_eq]
    have hs : sv (((mb a : ℤ) : I.E) • sv (B *ᵥ t a)) = ((mb a : ℤ) : I.E) • (B *ᵥ t a) := by
      funext i; simp [sv]
    rw [hs, Matrix.smul_vecMul, smul_dotProduct, hperpB _ _ hw, smul_zero]
  · intro w hw
    have hann : ∀ z', δ *ᵥ z' = 0 → (sv w ᵥ* I.J) ⬝ᵥ z' = 0 := fun z' hz' => by
      rw [← hf_eq]; exact hw z' hz'
    obtain ⟨s, hs⟩ := ann_range δ _ hann
    have hsv : sv w = B *ᵥ s := by
      have : sv w = (sv w ᵥ* I.J) ᵥ* I.J⁻¹ := by
        rw [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hJ, Matrix.vecMul_one]
      rw [this, hs, Matrix.vecMul_vecMul, hB, Matrix.mulVec_transpose]
    have h1 : sv w ∈ Submodule.span I.E (Set.range fun a => B *ᵥ t a) := hsv ▸ htsp s
    exact scaled_span (fun a => sv (B *ᵥ t a)) (fun a => ((mb a : ℤ) : I.E)) hmb0'
      (star_span (fun a => B *ᵥ t a) w h1)

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Choose =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.DualIncl =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.DualIncl", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SepDefs\npublic import Formalism.SatakeDualWeyl.StatementC\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatticeIsometry\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Bridge\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsDual\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlob\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlobApprox\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Stabfin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix TensorProduct

namespace PI.UnitaryGroupMassFormula.LCG

namespace DualI

open Formalism.UG Formalism.UG.P

abbrev AA (I : Formalism.MainNotions.S.AutInst) : Type := I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F

abbrev SS (I : Formalism.MainNotions.S.AutInst) : Subring (AA I) := Formalism.MainNotions.S.IntAf I.F I.E

abbrev iA (I : Formalism.MainNotions.S.AutInst) : I.E →+* AA I := Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F)

theorem sig_eq (I : Formalism.MainNotions.S.AutInst) :
    ((I.cm.sig : I.E →ₐ[I.F] I.E) : I.E →+* I.E) = starRingEnd I.E := rfl

theorem mem_latSet (I : Formalism.MainNotions.S.AutInst) (y : I.GA) (u : Fin I.n → I.E) :
    u ∈ PI.LatCountG.latSet I y ↔
      (((y.2 : GL (Fin I.n) (AA I))⁻¹ : GL (Fin I.n) (AA I)) : Matrix (Fin I.n) (Fin I.n) (AA I)) *ᵥ
        (fun i => iA I (u i)) ∈ latS (F := I.F) (Formalism.MainNotions.S.Af I.F) (SS I) I.L := by
  unfold PI.LatCountG.latSet
  rw [Set.mem_ofPred_eq, PI.UnitaryGroupMassFormula.LSC.LatIs.lamAf_eq I]
  rfl

theorem hform_smul_right {A : Type} [CommRing A] {n : Type} [Fintype n] (τ : A →+* A)
    (J : Matrix n n A) (a : A) (w x : n → A) : hform τ J w (a • x) = a * hform τ J w x := by
  unfold hform
  simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

theorem hform_add_right {A : Type} [CommRing A] {n : Type} [Fintype n] (τ : A →+* A)
    (J : Matrix n n A) (w x x' : n → A) : hform τ J w (x + x') = hform τ J w x + hform τ J w x' := by
  unfold hform
  simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]

theorem hform_sub_right {A : Type} [CommRing A] {n : Type} [Fintype n] (τ : A →+* A)
    (J : Matrix n n A) (w x x' : n → A) : hform τ J w (x - x') = hform τ J w x - hform τ J w x' := by
  unfold hform
  simp only [Pi.sub_apply, mul_sub, Finset.sum_sub_distrib]

theorem hform_zero_right {A : Type} [CommRing A] {n : Type} [Fintype n] (τ : A →+* A)
    (J : Matrix n n A) (w : n → A) : hform τ J w 0 = 0 := by
  unfold hform
  simp

theorem pair_int (I : Formalism.MainNotions.S.AutInst) (w : Fin I.n → I.E) (hw : w ∈ I.L)
    (x : Fin I.n → AA I) (hx : x ∈ latS (F := I.F) (Formalism.MainNotions.S.Af I.F) (SS I) I.L) :
    hform (sigR I.cm.sig (Formalism.MainNotions.S.Af I.F)) (I.J.map (iA I)) (fun i => iA I (w i)) x ∈ SS I := by
  have hσ (e : I.E) :
      sigR I.cm.sig (Formalism.MainNotions.S.Af I.F) (iA I e) = iA I (starRingEnd I.E e) := by
    rw [← sig_eq I]
    simp [iA, sigR, inclE]
  unfold latS at hx
  induction hx using Submodule.span_induction with
  | mem x h =>
    obtain ⟨l, hl, rfl⟩ := h
    obtain ⟨b, hb⟩ := (I.L_dual l).mp hl w hw
    have hpair :
        hform (sigR I.cm.sig (Formalism.MainNotions.S.Af I.F)) (I.J.map (iA I))
          (fun i => iA I (w i)) (fun i => iA I (l i)) =
        iA I (hform (starRingEnd I.E) I.J w l) := by
      simp only [hform, hσ, Matrix.map_apply, map_sum, map_mul]
    rw [hpair, ← hb]
    exact levelaf_tmul_mem b (one_mem (intAd I.F))
  | zero =>
    rw [hform_zero_right]
    exact (SS I).zero_mem
  | add x y _ _ hx hy =>
    rw [hform_add_right]
    exact (SS I).add_mem hx hy
  | smul a x _ hx =>
    rw [Subring.smul_def, hform_smul_right]
    exact (SS I).mul_mem a.2 hx

end DualI

open DualI Formalism.UG Formalism.UG.P in
theorem dual_lattice_inclusion : DualIncl := by
  intro I y u hu
  let embed (v : Fin I.n → I.E) : Fin I.n → AA I := fun i => iA I (v i)
  let C (a : 𝓞 I.F) : AA I := levelafC I.E a
  let L := latS (F := I.F) (Formalism.MainNotions.S.Af I.F) (SS I) I.L
  let σ := sigR I.cm.sig (Formalism.MainNotions.S.Af I.F)
  let J := I.J.map (iA I)
  let g : GL (Fin I.n) (AA I) := y.2
  let G : Matrix (Fin I.n) (Fin I.n) (AA I) := g
  let H : Matrix (Fin I.n) (Fin I.n) (AA I) := (g⁻¹ : GL (Fin I.n) (AA I))
  have hU : cT σ G * J * G = J := y.2.2
  have hGH : G * H = 1 := Units.mul_inv g
  have hHG : H * G = 1 := Units.inv_mul g
  have hmem (v : Fin I.n → I.E) : v ∈ PI.LatCountG.latSet I y ↔ H *ᵥ embed v ∈ L :=
    mem_latSet I y v
  have hC (a : 𝓞 I.F) : iA I (algebraMap (𝓞 I.F) I.E a) = C a := by
    change (algebraMap (𝓞 I.F) I.E a) ⊗ₜ[I.F] (1 : Formalism.MainNotions.S.Af I.F) =
      (1 : I.E) ⊗ₜ[I.F] algebraMap (𝓞 I.F) (Formalism.MainNotions.S.Af I.F) a
    rw [IsScalarTower.algebraMap_apply (𝓞 I.F) I.F I.E,
      IsScalarTower.algebraMap_apply (𝓞 I.F) I.F (Formalism.MainNotions.S.Af I.F),
      Algebra.algebraMap_eq_smul_one (A := I.E), TensorProduct.smul_tmul,
      ← Algebra.algebraMap_eq_smul_one]
  have hσ (e : I.E) : σ (iA I e) = iA I (starRingEnd I.E e) := by
    rw [← sig_eq I]
    simp [σ, iA, sigR, inclE]
  have hint (e : I.E) (he : IsIntegral ℤ e) : iA I e ∈ SS I :=
    levelaf_tmul_mem (⟨e, he⟩ : 𝓞 I.E) (one_mem (intAd I.F))
  have hσint {a : AA I} (ha : a ∈ SS I) : σ a ∈ SS I := by
    refine (show SS I ≤ (SS I).comap σ from Subring.closure_le.2 ?_) ha
    rintro _ (⟨⟨e, ⟨b, rfl⟩⟩, rfl⟩ | ⟨⟨a, ha⟩, rfl⟩)
    · change σ (iA I (algebraMap (𝓞 I.E) I.E b)) ∈ SS I
      rw [hσ]
      exact hint _ ((RingOfIntegers.isIntegral_coe b).map (starRingEnd I.E).toIntAlgHom)
    · change σ ((1 : I.E) ⊗ₜ[I.F] a) ∈ SS I
      simpa [σ, sigR] using levelaf_tmul_mem (E := I.E) 1 ha
  have hpair (v w : Fin I.n → I.E) :
      hform σ J (embed v) (embed w) = iA I (hf I v w) := by
    simp only [hf, hform, J, embed, hσ, Matrix.map_apply, map_sum, map_mul]

  have happ (a : 𝓞 I.F) (ha : a ≠ 0) (s : AA I) (hs : s ∈ SS I) :
      ∃ e : I.E, IsIntegral ℤ e ∧ ∃ t ∈ SS I, s = iA I e + C a * t := by
    refine Subring.closure_induction
      (p := fun s _ => ∃ e : I.E, IsIntegral ℤ e ∧ ∃ t ∈ SS I, s = iA I e + C a * t)
      ?_ ?_ ?_ ?_ ?_ ?_ hs
    · rintro _ (⟨⟨e, ⟨b, rfl⟩⟩, rfl⟩ | ⟨⟨q, hq⟩, rfl⟩)
      · exact ⟨_, RingOfIntegers.isIntegral_coe b, 0, zero_mem _, by simp [iA, inclE]⟩
      · obtain ⟨r, t, ht, hqt⟩ := csGlob_intAdApprox I.F a ha q hq
        refine ⟨algebraMap (𝓞 I.F) I.E r, ?_, (1 : I.E) ⊗ₜ[I.F] t, ?_, ?_⟩
        · rw [IsScalarTower.algebraMap_apply (𝓞 I.F) I.F I.E]
          exact (RingOfIntegers.isIntegral_coe r).algebraMap
        · simpa using levelaf_tmul_mem (E := I.E) 1 ht
        · rw [hC]
          simp only [C, levelafC, Algebra.TensorProduct.tmul_mul_tmul, one_mul]
          rw [← TensorProduct.tmul_add, ← hqt]
    · exact ⟨0, isIntegral_zero, 0, zero_mem _, by simp⟩
    · exact ⟨1, isIntegral_one, 0, zero_mem _, by simp⟩
    · rintro s t _ _ ⟨e, he, v, hv, rfl⟩ ⟨f, hf, w, hw, rfl⟩
      exact ⟨e + f, he.add hf, v + w, add_mem hv hw, by rw [map_add]; ring⟩
    · rintro s _ ⟨e, he, v, hv, rfl⟩
      exact ⟨-e, he.neg, -v, neg_mem hv, by rw [map_neg]; ring⟩
    · rintro s t _ _ ⟨e, he, v, hv, rfl⟩ ⟨f, hf, w, hw, rfl⟩
      refine ⟨e * f, he.mul hf, v * iA I f + iA I e * w + C a * v * w, ?_, ?_⟩
      · exact add_mem (add_mem (mul_mem hv (hint f hf)) (mul_mem (hint e he) hw))
          (mul_mem (mul_mem (levelafC_mem a) hv) hw)
      · rw [map_mul]
        ring
  have happrox (a : 𝓞 I.F) (ha : a ≠ 0) (x : Fin I.n → AA I) :
      ∃ v : Fin I.n → I.E, ∃ t : Fin I.n → AA I, (∀ i, t i ∈ SS I) ∧
        x = embed v + (fun i => C a * t i) := by
    have hcoord (i : Fin I.n) : ∃ v : I.E, ∃ t ∈ SS I, x i = iA I v + C a * t := by
      obtain ⟨d, hd, hdx⟩ := levelaf_denom (F := I.F) (x i)
      obtain ⟨e, -, t, ht, hx⟩ := happ (d * a) (mul_ne_zero hd ha) (C d * x i) hdx
      let r := algebraMap (𝓞 I.F) I.E d
      have hr : r ≠ 0 := adelstab_algebraMap_ne_zero d hd
      have hunit : iA I r⁻¹ * C d = 1 := by
        rw [← hC, ← map_mul, inv_mul_cancel₀ hr, map_one]
      refine ⟨r⁻¹ * e, t, ht, ?_⟩
      change C d * x i = iA I e + levelafC I.E (d * a) * t at hx
      rw [levelafC_mul] at hx
      change C d * x i = iA I e + C d * C a * t at hx
      rw [map_mul]
      linear_combination iA I r⁻¹ * hx - x i * hunit + (C a * t) * hunit
    choose v t ht hv using hcoord
    exact ⟨v, t, ht, funext hv⟩

  obtain ⟨m, hm, hsingle⟩ := csGlob_single I.L I.L_span
  let c : 𝓞 I.F := m
  have hc : c ≠ 0 := Int.cast_ne_zero.2 hm
  have hembed_single (i : Fin I.n) (a : I.E) :
      embed (Pi.single i a) = Pi.single i (iA I a) := by
    funext j
    by_cases h : j = i <;> simp [embed, h]
  have hsingle_sum (a : AA I) (t : Fin I.n → AA I) (ht : ∀ i, t i ∈ SS I) :
      (fun i => a * t i) = ∑ k, (⟨t k, ht k⟩ : SS I) • Pi.single k a := by
    funext i
    rw [Finset.sum_apply, Finset.sum_eq_single i]
    · rw [Pi.smul_apply, Pi.single_eq_same, Subring.smul_def, smul_eq_mul, mul_comm]
    · intro k _ hki
      simp [Ne.symm hki]
    · exact fun hi => (hi (Finset.mem_univ i)).elim
  have hlower (t : Fin I.n → AA I) (ht : ∀ i, t i ∈ SS I) :
      (fun i => C c * t i) ∈ L := by
    rw [hsingle_sum (C c) t ht]
    refine sum_mem fun k _ => L.smul_mem _ ?_
    have hk : Pi.single k (C c) = embed (Pi.single k (m : I.E)) := by
      rw [hembed_single, ← hC, show algebraMap (𝓞 I.F) I.E c = (m : I.E) from map_intCast _ _]
    rw [hk]
    exact Submodule.subset_span ⟨_, hsingle k, rfl⟩

  obtain ⟨d, hd, b, hb, -, M, hM⟩ := levelaf_exists_denom (F := I.F) g
  have hden (i j : Fin I.n) : C d * H i j ∈ SS I := by
    have hij := congrFun (congrFun hM i) j
    change (M i j : AA I) = (b : AA I) * H i j at hij
    rw [← show (b : AA I) = C d from hb, ← hij]
    exact (M i j).2
  have hsmall (t : Fin I.n → AA I) (ht : ∀ i, t i ∈ SS I) :
      H *ᵥ (fun i => C (c * d) * t i) ∈ L := by
    have heq : H *ᵥ (fun i => C (c * d) * t i) =
        fun i => C c * ∑ j, (C d * H i j) * t j := by
      funext i
      simp only [mulVec, dotProduct, C, levelafC_mul, Finset.mul_sum]
      exact Finset.sum_congr rfl fun j _ => by ring
    rw [heq]
    exact hlower _ fun i => sum_mem fun j _ => mul_mem (hden i j) (ht j)

  let P := Submodule.span (SS I) (embed '' PI.LatCountG.latSet I y)
  have hspan (w : Fin I.n → AA I) (hw : w ∈ L) : G *ᵥ w ∈ P := by
    obtain ⟨v, t, ht, hv⟩ := happrox (c * d) (mul_ne_zero hc hd) (G *ᵥ w)
    have hvlat : v ∈ PI.LatCountG.latSet I y := by
      rw [hmem, show embed v = G *ᵥ w - (fun i => C (c * d) * t i) from eq_sub_of_add_eq hv.symm,
        mulVec_sub, mulVec_mulVec, hHG, one_mulVec]
      exact sub_mem hw (hsmall t ht)
    have hbasis (k : Fin I.n) : Pi.single k (C (c * d)) ∈ P := by
      let r := algebraMap (𝓞 I.F) I.E (c * d)
      have hr : embed (Pi.single k r) = Pi.single k (C (c * d)) := by
        rw [hembed_single, hC]
      rw [← hr]
      apply Submodule.subset_span
      refine ⟨_, (hmem _).2 ?_, rfl⟩
      have hscale : (fun i => C (c * d) * (Pi.single k 1 : Fin I.n → AA I) i) =
          Pi.single k (C (c * d)) := by
        funext i
        by_cases h : i = k <;> simp [h]
      rw [hr, ← hscale]
      exact hsmall (Pi.single k 1) fun i => by
        by_cases h : i = k <;> simp [h]
    rw [hv, hsingle_sum _ t ht]
    exact add_mem (Submodule.subset_span ⟨v, hvlat, rfl⟩)
      (sum_mem fun k _ => P.smul_mem _ (hbasis k))

  have hleft (w : Fin I.n → AA I) (hw : w ∈ P) : hform σ J w (embed u) ∈ SS I := by
    induction hw using Submodule.span_induction with
    | mem w hw =>
      obtain ⟨v, hv, rfl⟩ := hw
      obtain ⟨b, hb⟩ := hu v hv
      rw [hpair, ← hb]
      exact hint _ (RingOfIntegers.isIntegral_coe b)
    | zero =>
      rw [csDual_hform_zero_left]
      exact zero_mem _
    | add w v _ _ hw hv =>
      rw [csDual_hform_add_left]
      exact add_mem hw hv
    | smul a w _ hw =>
      rw [Subring.smul_def, csDual_hform_smul_left]
      exact mul_mem (hσint a.2) hw
  let z := H *ᵥ embed u
  have hz : G *ᵥ z = embed u := by
    rw [show z = H *ᵥ embed u from rfl, mulVec_mulVec, hGH, one_mulVec]
  have hdual (w : Fin I.n → AA I) (hw : w ∈ L) : hform σ J w z ∈ SS I := by
    have h := hleft _ (hspan w hw)
    rwa [← hz, hform_mulVec, hU] at h

  have hdiagonal (e : I.E) (he : iA I e ∈ SS I) : IsIntegral ℤ e := by
    let T : AA I →ₗ[I.F] Formalism.MainNotions.S.Af I.F :=
      (TensorProduct.lid I.F _).toLinearMap ∘ₗ (Algebra.trace I.F I.E).rTensor _
    have hT (x : I.E) (a : Formalism.MainNotions.S.Af I.F) :
        T (x ⊗ₜ[I.F] a) = algebraMap I.F _ (Algebra.trace I.F I.E x) * a := by
      simp only [T, LinearMap.comp_apply, LinearMap.rTensor_tmul, LinearEquiv.coe_coe,
        TensorProduct.lid_tmul, Algebra.smul_def]
    have hTint (s : AA I) (hs : s ∈ SS I) : T s ∈ intAd I.F := by
      let B := Module.finBasis ℤ (𝓞 I.E)
      obtain ⟨r, hr, rfl⟩ := levelaf_decomp B (Module.Basis.span_eq B) hs
      rw [map_sum]
      refine sum_mem fun j _ => ?_
      rw [hT]
      obtain ⟨a, ha⟩ := adelstab_trace_int (F := I.F) (B j)
      rw [← ha, ← IsScalarTower.algebraMap_apply]
      exact mul_mem (levelaf_int_mem a) (hr j)
    let N : Submodule (𝓞 I.F) I.E :=
      { carrier := {x | iA I x ∈ SS I}
        add_mem' := fun {x y} hx hy => by
          change iA I (x + y) ∈ SS I
          rw [map_add]
          exact add_mem hx hy
        zero_mem' := by
          change iA I 0 ∈ SS I
          rw [map_zero]
          exact zero_mem _
        smul_mem' := fun a x hx => by
          change iA I (a • x) ∈ SS I
          rw [Algebra.smul_def, map_mul, hC]
          exact mul_mem (levelafC_mem a) hx }
    let β := Module.finBasis I.F I.E
    obtain ⟨q, hq, -, hqint⟩ := sf_den (fun i => β i)
    let β' := (Algebra.traceForm I.F I.E).dualBasis (traceForm_nondegenerate I.F I.E) β
    let W := Submodule.span (𝓞 I.F) (Set.range fun i => q⁻¹ * β' i)
    have hle : N ≤ W := by
      intro x hx
      have htrace (b : 𝓞 I.E) :
          Algebra.trace I.F I.E (x * algebraMap (𝓞 I.E) I.E b) ∈ (algebraMap (𝓞 I.F) I.F).range := by
        have hprod : iA I (x * algebraMap (𝓞 I.E) I.E b) ∈ SS I := by
          rw [map_mul]
          exact mul_mem hx (hint _ (RingOfIntegers.isIntegral_coe b))
        apply adelstab_F_int
        have h := hTint _ hprod
        change T (_ ⊗ₜ[I.F] (1 : Formalism.MainNotions.S.Af I.F)) ∈ intAd I.F at h
        rwa [hT, mul_one] at h
      have h := adelstab_dual β q hqint x htrace
      let f := (LinearMap.mulLeft I.F q⁻¹).restrictScalars (𝓞 I.F)
      have hx' := Submodule.mem_map_of_mem (f := f) h
      rw [Submodule.map_span] at hx'
      have hf : f (q * x) = x := by
        change q⁻¹ * (q * x) = x
        rw [← mul_assoc, inv_mul_cancel₀ hq, one_mul]
      rw [hf] at hx'
      exact Submodule.span_mono (by rintro _ ⟨_, ⟨i, rfl⟩, rfl⟩; exact ⟨i, rfl⟩) hx'
    have : Module.Finite (𝓞 I.F) W := Module.Finite.span_of_finite _ (Set.finite_range _)
    have : IsNoetherian (𝓞 I.F) W := inferInstance
    have : IsNoetherian (𝓞 I.F) N := isNoetherian_of_le hle
    have hN : N ≠ ⊥ := by
      intro h
      have h1 : (1 : I.E) ∈ N := hint 1 isIntegral_one
      exact one_ne_zero (h ▸ h1 : (1 : I.E) ∈ (⊥ : Submodule (𝓞 I.F) I.E))
    refine isIntegral_trans (R := ℤ) (A := 𝓞 I.F) e
      (isIntegral_of_smul_mem_submodule N hN (Module.Finite.iff_fg.mp inferInstance) e ?_)
    intro x hx
    change iA I (e * x) ∈ SS I
    rw [map_mul]
    exact mul_mem he hx

  obtain ⟨v, t, ht, hv⟩ := happrox c hc z
  have htL : (fun i => C c * t i) ∈ L := hlower t ht
  have hvL : v ∈ I.L := by
    rw [I.L_dual v]
    intro w hw
    have hwL : embed w ∈ L := Submodule.subset_span ⟨w, hw, rfl⟩
    have h : IsIntegral ℤ (hf I w v) := by
      apply hdiagonal
      rw [← hpair, show embed v = z - (fun i => C c * t i) from eq_sub_of_add_eq hv.symm, hform_sub_right]
      exact sub_mem (hdual _ hwL) (pair_int I w hw _ htL)
    exact ⟨⟨_, h⟩, rfl⟩
  apply (hmem u).2
  change z ∈ L
  rw [hv]
  exact add_mem (Submodule.subset_span ⟨v, hvL, rfl⟩) htL

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.DualIncl =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDual =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDual", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

namespace DIdx

def qI {S : Type} [CommRing S] (𝔞 : Ideal S) (a : S) : Ideal S where
  carrier := {y | ∀ c ∈ 𝔞, c * y ∈ Ideal.span {a}}
  add_mem' := by
    intro y y' hy hy' c hc
    rw [mul_add]
    exact add_mem (hy c hc) (hy' c hc)
  zero_mem' := by
    intro c _
    rw [mul_zero]
    exact zero_mem _
  smul_mem' := by
    intro r y hy c hc
    rw [smul_eq_mul, mul_left_comm]
    exact Ideal.mul_mem_left _ r (hy c hc)

def aI {K : Type} [Field K] [NumberField K] {k : ℕ} (X : Submodule (𝓞 K) (Fin k → K)) (x : Fin k → K) :
    Ideal (𝓞 K) where
  carrier := {c | c • x ∈ X}
  add_mem' := by
    intro c c' hc hc'
    rw [Set.mem_ofPred_eq, add_smul]
    exact add_mem hc hc'
  zero_mem' := by
    rw [Set.mem_ofPred_eq, zero_smul]
    exact zero_mem _
  smul_mem' := by
    intro r c hc
    rw [Set.mem_ofPred_eq, smul_eq_mul, mul_smul]
    exact X.smul_mem r hc

theorem absNorm_eq_index {S : Type} [CommRing S] [IsDedekindDomain S] [Module.Free ℤ S] [Module.Finite ℤ S]
    (I : Ideal S) : Ideal.absNorm I = I.toAddSubgroup.index := by
  letI : Infinite S := Module.Free.infinite ℤ S
  exact Ideal.absNorm_eq_index I

theorem quot_le (K : Type) [Field K] [NumberField K] (𝔞 : Ideal (𝓞 K)) (h𝔞 : 𝔞 ≠ ⊥) (a : 𝓞 K)
    (ha0 : a ≠ 0) :
    Ideal.span {a} ≤ qI 𝔞 a ∧
    (Ideal.span {a}).toAddSubgroup.relIndex (qI 𝔞 a).toAddSubgroup ≠ 0 ∧
    (Ideal.span {a}).toAddSubgroup.relIndex (qI 𝔞 a).toAddSubgroup ≤ Ideal.absNorm 𝔞 := by
  have hle : Ideal.span {a} ≤ qI 𝔞 a := by
    intro y hy c _
    obtain ⟨z, rfl⟩ := Ideal.mem_span_singleton'.mp hy
    rw [Ideal.mem_span_singleton']
    exact ⟨c * z, by ring⟩
  have hmul : 𝔞 * qI 𝔞 a ≤ Ideal.span {a} := Ideal.mul_le.mpr fun r hr s hs => hs r hr
  have hq0 : qI 𝔞 a ≠ ⊥ := by
    intro h
    have : a ∈ qI 𝔞 a := hle (Ideal.mem_span_singleton_self a)
    rw [h, Ideal.mem_bot] at this
    exact ha0 this
  have hNq : Ideal.absNorm (qI 𝔞 a) ≠ 0 := fun h => hq0 (Ideal.absNorm_eq_zero_iff.mp h)
  have hNa : Ideal.absNorm (Ideal.span {a}) ≠ 0 := by
    intro h
    rw [Ideal.absNorm_eq_zero_iff, Ideal.span_singleton_eq_bot] at h
    exact ha0 h
  have hN𝔞 : Ideal.absNorm 𝔞 ≠ 0 := fun h => h𝔞 (Ideal.absNorm_eq_zero_iff.mp h)
  have hrel : (Ideal.span {a}).toAddSubgroup.relIndex (qI 𝔞 a).toAddSubgroup * Ideal.absNorm (qI 𝔞 a) =
      Ideal.absNorm (Ideal.span {a}) := by
    rw [absNorm_eq_index, absNorm_eq_index]
    exact AddSubgroup.relIndex_mul_index ((Submodule.toAddSubgroup_le _ _).mpr hle)
  have hdvd : Ideal.absNorm (Ideal.span {a}) ∣ Ideal.absNorm 𝔞 * Ideal.absNorm (qI 𝔞 a) := by
    have := Ideal.absNorm_dvd_absNorm_of_le hmul
    rwa [map_mul] at this
  have hr0 : (Ideal.span {a}).toAddSubgroup.relIndex (qI 𝔞 a).toAddSubgroup ≠ 0 := by
    intro h
    rw [h, zero_mul] at hrel
    exact hNa hrel.symm
  refine ⟨hle, hr0, ?_⟩
  have h1 : (Ideal.span {a}).toAddSubgroup.relIndex (qI 𝔞 a).toAddSubgroup * Ideal.absNorm (qI 𝔞 a) ≤
      Ideal.absNorm 𝔞 * Ideal.absNorm (qI 𝔞 a) := by
    rw [hrel]
    exact Nat.le_of_dvd (Nat.pos_of_ne_zero (mul_ne_zero hN𝔞 hNq)) hdvd
  exact Nat.le_of_mul_le_mul_right h1 (Nat.pos_of_ne_zero hNq)

theorem dualL_anti {K : Type} [Field K] [NumberField K] {k : ℕ} {X Y : Submodule (𝓞 K) (Fin k → K)}
    (h : X ≤ Y) : dualL Y ≤ dualL X :=
  fun _ ht s hs => ht s (h hs)

theorem smul_dot {K : Type} [Field K] [NumberField K] {k : ℕ} (c : 𝓞 K) (x t : Fin k → K) :
    (c • x) ⬝ᵥ t = algebraMap (𝓞 K) K c * (x ⬝ᵥ t) := by
  simp only [dotProduct, Pi.smul_apply, Algebra.smul_def, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => by ring

theorem step (K : Type) [Field K] [NumberField K] (k : ℕ) (X Y : Submodule (𝓞 K) (Fin k → K)) (hXY : X ≤ Y)
    (hne : X.toAddSubgroup.relIndex Y.toAddSubgroup ≠ 0) (x : Fin k → K) (hxY : x ∈ Y) :
    (dualL (X ⊔ Submodule.span (𝓞 K) {x})).toAddSubgroup.relIndex (dualL X).toAddSubgroup ≠ 0 ∧
    (dualL (X ⊔ Submodule.span (𝓞 K) {x})).toAddSubgroup.relIndex (dualL X).toAddSubgroup ≤
      X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup := by
  have hX1Y : X ⊔ Submodule.span (𝓞 K) {x} ≤ Y :=
    sup_le hXY ((Submodule.span_singleton_le_iff_mem _ _).mpr hxY)
  have hxX1 : x ∈ X ⊔ Submodule.span (𝓞 K) {x} :=
    Submodule.mem_sup_right (Submodule.mem_span_singleton_self x)
  have hneX1 : X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup ≠ 0 := fun h =>
    hne (AddSubgroup.relIndex_eq_zero_of_le_right ((Submodule.toAddSubgroup_le _ _).mpr hX1Y) h)

  let g : 𝓞 K →+ (Fin k → K) := AddMonoidHom.mk' (fun c => c • x) (fun c c' => add_smul c c' x)
  have e1 : (aI X x).toAddSubgroup = X.toAddSubgroup.comap g := by
    ext c
    exact Iff.rfl
  have hrange : g.range ≤ (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup := by
    rintro _ ⟨c, rfl⟩
    exact (X ⊔ Submodule.span (𝓞 K) {x}).smul_mem c hxX1
  have hN : Ideal.absNorm (aI X x) = X.toAddSubgroup.relIndex g.range := by
    rw [absNorm_eq_index, e1, AddSubgroup.index_comap]
  have hNne : Ideal.absNorm (aI X x) ≠ 0 := by
    rw [hN]
    exact fun h => hneX1 (AddSubgroup.relIndex_eq_zero_of_le_right hrange h)
  have hNle : Ideal.absNorm (aI X x) ≤ X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup := by
    rw [hN]
    exact AddSubgroup.relIndex_le_of_le_right hrange hneX1
  have h𝔞 : aI X x ≠ ⊥ := by
    intro h
    rw [h, Ideal.absNorm_bot] at hNne
    exact hNne rfl
  obtain ⟨a, ha, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h𝔞
  have hax : a • x ∈ X := ha
  obtain ⟨hle, hq0, hqle⟩ := quot_le K (aI X x) h𝔞 a ha0

  let ψ : (Fin k → K) →+ K := AddMonoidHom.mk' (fun t => algebraMap (𝓞 K) K a * (x ⬝ᵥ t))
    (fun t t' => by simp only [dotProduct_add, mul_add])
  let mO : 𝓞 K →+ K := (algebraMap (𝓞 K) K).toAddMonoidHom
  have hinj : Function.Injective mO := IsFractionRing.injective (𝓞 K) K
  have ha0K : algebraMap (𝓞 K) K a ≠ 0 := fun h => ha0 (hinj (h.trans (map_zero _).symm))
  have claim1 : (dualL (X ⊔ Submodule.span (𝓞 K) {x})).toAddSubgroup =
      ((Ideal.span {a}).toAddSubgroup.map mO).comap ψ ⊓ (dualL X).toAddSubgroup := by
    ext t
    constructor
    · intro ht
      refine ⟨?_, dualL_anti le_sup_left ht⟩
      obtain ⟨o, ho⟩ := ht x hxX1
      refine ⟨a * o, Ideal.mul_mem_right o _ (Ideal.mem_span_singleton_self a), ?_⟩
      show algebraMap (𝓞 K) K (a * o) = algebraMap (𝓞 K) K a * (x ⬝ᵥ t)
      rw [map_mul, ho]
    · rintro ⟨⟨r, hr, hrt⟩, htX⟩
      obtain ⟨o, rfl⟩ := Ideal.mem_span_singleton'.mp hr
      have hrt' : algebraMap (𝓞 K) K a * algebraMap (𝓞 K) K o = algebraMap (𝓞 K) K a * (x ⬝ᵥ t) := by
        rw [← map_mul, mul_comm a o]
        exact hrt
      have hxt : x ⬝ᵥ t = algebraMap (𝓞 K) K o := (mul_left_cancel₀ ha0K hrt').symm
      intro s hs
      obtain ⟨s0, hs0, s1, hs1, rfl⟩ := Submodule.mem_sup.mp hs
      obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp hs1
      rw [add_dotProduct, smul_dot, hxt, ← map_mul]
      exact add_mem (htX s0 hs0) ⟨c * o, rfl⟩
  have claim2 : (dualL X).toAddSubgroup.map ψ ≤ (qI (aI X x) a).toAddSubgroup.map mO := by
    rintro _ ⟨t, ht, rfl⟩
    obtain ⟨o, ho⟩ := (show t ∈ dualL X from ht) (a • x) hax
    refine ⟨o, ?_, ?_⟩
    · intro c hc
      obtain ⟨o', ho'⟩ := (show t ∈ dualL X from ht) (c • x) hc
      have : c * o = o' * a := by
        apply hinj
        show algebraMap (𝓞 K) K (c * o) = algebraMap (𝓞 K) K (o' * a)
        rw [map_mul, map_mul, ho, ho', smul_dot, smul_dot]
        ring
      rw [this, Ideal.mem_span_singleton']
      exact ⟨o', rfl⟩
    · show algebraMap (𝓞 K) K o = algebraMap (𝓞 K) K a * (x ⬝ᵥ t)
      rw [ho, smul_dot]
  have hmapQ : ((Ideal.span {a}).toAddSubgroup.map mO).relIndex ((qI (aI X x) a).toAddSubgroup.map mO) =
      (Ideal.span {a}).toAddSubgroup.relIndex (qI (aI X x) a).toAddSubgroup :=
    AddSubgroup.relIndex_map_map_of_injective _ _ hinj
  have hrel : (dualL (X ⊔ Submodule.span (𝓞 K) {x})).toAddSubgroup.relIndex (dualL X).toAddSubgroup =
      ((Ideal.span {a}).toAddSubgroup.map mO).relIndex ((dualL X).toAddSubgroup.map ψ) := by
    rw [claim1, AddSubgroup.inf_relIndex_right, AddSubgroup.relIndex_comap]
  have hQne : ((Ideal.span {a}).toAddSubgroup.map mO).relIndex ((qI (aI X x) a).toAddSubgroup.map mO) ≠ 0 := by
    rw [hmapQ]; exact hq0
  rw [hrel]
  refine ⟨fun h => hQne (AddSubgroup.relIndex_eq_zero_of_le_right claim2 h), ?_⟩
  calc ((Ideal.span {a}).toAddSubgroup.map mO).relIndex ((dualL X).toAddSubgroup.map ψ)
      ≤ ((Ideal.span {a}).toAddSubgroup.map mO).relIndex ((qI (aI X x) a).toAddSubgroup.map mO) :=
        AddSubgroup.relIndex_le_of_le_right claim2 hQne
    _ = (Ideal.span {a}).toAddSubgroup.relIndex (qI (aI X x) a).toAddSubgroup := hmapQ
    _ ≤ Ideal.absNorm (aI X x) := hqle
    _ ≤ _ := hNle

end DIdx

open DIdx in
theorem dual_index_formula : DualIdx := by
  intro K _ _ k X Y hXY hne
  suffices H : ∀ m : ℕ, ∀ X Y : Submodule (𝓞 K) (Fin k → K), X ≤ Y →
      X.toAddSubgroup.relIndex Y.toAddSubgroup = m → m ≠ 0 →
      (dualL Y).toAddSubgroup.relIndex (dualL X).toAddSubgroup ≠ 0 ∧
        (dualL Y).toAddSubgroup.relIndex (dualL X).toAddSubgroup ≤ X.toAddSubgroup.relIndex Y.toAddSubgroup from
    H _ X Y hXY rfl hne
  intro m
  induction m using Nat.strong_induction_on with
  | _ m ih =>
  intro X Y hXY hm hm0
  by_cases hYX : Y ≤ X
  · have e : X = Y := le_antisymm hXY hYX
    subst e
    rw [AddSubgroup.relIndex_self, AddSubgroup.relIndex_self]
    exact ⟨one_ne_zero, le_rfl⟩
  · obtain ⟨x, hxY, hxX⟩ := Set.not_subset.mp hYX
    have hX1Y : X ⊔ Submodule.span (𝓞 K) {x} ≤ Y :=
      sup_le hXY ((Submodule.span_singleton_le_iff_mem _ _).mpr hxY)
    have hXX1 : X ≤ X ⊔ Submodule.span (𝓞 K) {x} := le_sup_left
    have hxX1 : x ∈ X ⊔ Submodule.span (𝓞 K) {x} :=
      Submodule.mem_sup_right (Submodule.mem_span_singleton_self x)
    obtain ⟨h0, hle⟩ := step K k X Y hXY (by rw [hm]; exact hm0) x hxY
    have hmul := AddSubgroup.relIndex_mul_relIndex _ _ _ ((Submodule.toAddSubgroup_le _ _).mpr hXX1)
      ((Submodule.toAddSubgroup_le _ _).mpr hX1Y)
    rw [hm] at hmul
    have hb0 : (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup.relIndex Y.toAddSubgroup ≠ 0 := by
      intro h; rw [h, mul_zero] at hmul; exact hm0 hmul.symm
    have ha0 : X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup ≠ 0 := by
      intro h; rw [h, zero_mul] at hmul; exact hm0 hmul.symm
    have ha1 : X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup ≠ 1 := by
      intro h
      rw [AddSubgroup.relIndex_eq_one] at h
      exact hxX (h hxX1)
    have hlt : (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup.relIndex Y.toAddSubgroup < m := by
      rw [← hmul]
      have h2 : 2 ≤ X.toAddSubgroup.relIndex (X ⊔ Submodule.span (𝓞 K) {x}).toAddSubgroup := by omega
      have hbpos := Nat.pos_of_ne_zero hb0
      nlinarith
    obtain ⟨ih0, ihle⟩ := ih _ hlt (X ⊔ Submodule.span (𝓞 K) {x}) Y hX1Y rfl hb0
    have hdmul := AddSubgroup.relIndex_mul_relIndex _ _ _ ((Submodule.toAddSubgroup_le _ _).mpr (DIdx.dualL_anti hX1Y))
      ((Submodule.toAddSubgroup_le _ _).mpr (DIdx.dualL_anti hXX1))
    rw [← hdmul, hm, ← hmul]
    refine ⟨mul_ne_zero ih0 h0, ?_⟩
    rw [mul_comm (X.toAddSubgroup.relIndex _)]
    exact Nat.mul_le_mul ihle hle

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDual =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatticeIsDiscreteGroup =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatticeIsDiscreteGroup", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SepDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatticeIsometry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

open PI.LatCountG

theorem hsN_nonneg' {n : ℕ} (A : Matrix (Fin n) (Fin n) ℂ) : 0 ≤ hsN A := by
  unfold hsN
  exact Real.sqrt_nonneg _

theorem lattice_is_discrete_group : LatIsG := by
  intro I x
  obtain ⟨Λ, h1, h2, h3⟩ := PI.UnitaryGroupMassFormula.LSC.lattice_isometry I x
  exact ⟨Λ, h1, h2, h3⟩

theorem gram_nonneg (hDM : PI.UnitaryGroupMassFormula.LSC.DetMono) (I : Formalism.MainNotions.S.AutInst) (z : I.GA) (v : InfinitePlace I.F) {j : ℕ}
    (b : Fin j → Fin I.n → I.E) : 0 ≤ ((gramV I z v b).det).re := by
  let C : Matrix (Fin I.n) (Fin j) ℂ := Matrix.of fun i a => coordV I z v (b a) i
  have hG : gramV I z v b = Cᴴ * C := by
    ext a c
    simp [gramV, C, Matrix.mul_apply, Matrix.conjTranspose_apply]
  rw [hG]
  exact (hDM I.n j C 1 1 zero_le_one (fun w => by simp)).1

theorem ht_eq (I : Formalism.MainNotions.S.AutInst) {z : I.GA} (s : Sub I z) :
    ht I s = (∏ v, ((gramV I z v s.b).det).re) / (idx I s.B s.b : ℝ) := rfl

theorem tau_pow_le_ht (hDM : PI.UnitaryGroupMassFormula.LSC.DetMono) (I : Formalism.MainNotions.S.AutInst) (z : I.GA) (hz : 0 < tau1 I z) (s : Sub I z) :
    tau1 I z ^ (2 * I.f * s.j) ≤ ht I s ∧ idx I s.B s.b ≠ 0 := by
  have hf : 0 < I.f := Module.finrank_pos
  have hj : 0 < s.j := s.j_pos
  have hN : (0 : ℝ) < 2 * (I.f : ℝ) * (s.j : ℝ) := by
    have : (0 : ℝ) < I.f := by exact_mod_cast hf
    have : (0 : ℝ) < s.j := by exact_mod_cast hj
    positivity
  have hht : ∀ t : Sub I z, 0 ≤ ht I t := by
    intro t
    rw [ht_eq]
    exact div_nonneg (Finset.prod_nonneg fun v _ => gram_nonneg hDM I z v t.b) (Nat.cast_nonneg _)
  have hsize : ∀ t : Sub I z, 0 ≤ size I t := fun t => Real.rpow_nonneg (hht t) _
  have hle : tau1 I z ≤ size I s :=
    (min_le_right _ _).trans (ciInf_le ⟨0, by rintro _ ⟨t, rfl⟩; exact hsize t⟩ s)
  have hpow : size I s ^ (2 * I.f * s.j) = ht I s := by
    unfold size
    rw [← Real.rpow_natCast, ← Real.rpow_mul (hht s)]
    push_cast
    rw [one_div_mul_cancel hN.ne', Real.rpow_one]
  refine ⟨?_, ?_⟩
  · calc tau1 I z ^ (2 * I.f * s.j) ≤ size I s ^ (2 * I.f * s.j) := pow_le_pow_left₀ hz.le hle _
      _ = ht I s := hpow
  · intro h0
    have h1 : ht I s = 0 := by
      rw [ht_eq, h0]
      simp
    have hs0 : size I s = 0 := by
      unfold size
      rw [h1, Real.zero_rpow (one_div_pos.2 hN).ne']
    linarith

theorem separation_of_points : SepOf := by
  intro hLat hDual hCh hArch hIdx hNP hDM _hCard I x y hx hy δ hδ hmap
  obtain ⟨Λ, hFG, hspan, hΛ⟩ := hLat I y
  obtain ⟨k, u, b', hk, hu, hind1, hspan1, hb', hind2, hperp, hspan2⟩ := hCh I y δ hδ
  have huΛ : ∀ c, u c ∈ Λ := fun c => by
    have := hu c
    rw [hΛ] at this
    exact this
  have hbΛ : ∀ a, b' a ∈ Λ := fun a => by
    have := hb' a
    rw [hΛ] at this
    exact this
  let s₁ : Sub I x :=
    { j := k
      j_pos := hk
      b := fun c => δ *ᵥ u c
      b_ind := hind1
      B := imSub I Λ δ
      B_lat := by
        intro z hz
        obtain ⟨w, hw, rfl⟩ := Submodule.mem_map.1 hz
        exact hmap w (by rw [hΛ]; exact hw)
      b_mem := fun c => Submodule.mem_map.2 ⟨u c, huΛ c, rfl⟩
      B_span := by
        intro z hz
        obtain ⟨w, hw, rfl⟩ := Submodule.mem_map.1 hz
        exact hspan1 w }
  let s₂ : Sub I y :=
    { j := k
      j_pos := hk
      b := b'
      b_ind := hind2
      B := perpSub I Λ δ
      B_lat := by
        intro z hz
        rw [hΛ]
        exact (Submodule.mem_inf.1 hz).1
      b_mem := fun a => Submodule.mem_inf.2 ⟨hbΛ a, hperp a⟩
      B_span := fun z hz => hspan2 z (Submodule.mem_inf.1 hz).2 }
  obtain ⟨h1, hi1⟩ := tau_pow_le_ht hDM I x hx s₁
  obtain ⟨h2, hi2⟩ := tau_pow_le_ht hDM I y hy s₂
  rw [ht_eq] at h1 h2
  change tau1 I x ^ (2 * I.f * k) ≤ (∏ v, ((gramV I x v (fun c => δ *ᵥ u c)).det).re) /
    (idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) : ℝ) at h1
  change tau1 I y ^ (2 * I.f * k) ≤ (∏ v, ((gramV I y v b').det).re) / (idx I (perpSub I Λ δ) b' : ℝ) at h2
  change idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) ≠ 0 at hi1
  change idx I (perpSub I Λ δ) b' ≠ 0 at hi2
  have hdualΛ : ∀ w, (∀ w' ∈ Λ, hf I w' w ∈ (algebraMap (𝓞 I.E) I.E).range) → w ∈ Λ := by
    intro w hw
    have := hDual I y w (by rw [hΛ]; exact hw)
    rw [hΛ] at this
    exact this
  have hN := hIdx I Λ hFG hspan hdualΛ δ k u b' huΛ hind1 hspan1 hbΛ hind2 hperp hspan2 hi1 hi2
  have hNP' := hNP I (pairM I b' u).det
  have hi1' : (0 : ℝ) < idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) := by exact_mod_cast Nat.pos_of_ne_zero hi1
  have hi2' : (0 : ℝ) < idx I (perpSub I Λ δ) b' := by exact_mod_cast Nat.pos_of_ne_zero hi2
  have hHp : 0 ≤ ∏ v, hsN (amat I x y v δ) := Finset.prod_nonneg fun v _ => hsN_nonneg' _
  have key : ((tau1 I x * tau1 I y) ^ I.f) ^ (2 * k) ≤ (∏ v, hsN (amat I x y v δ)) ^ (2 * k) := by
    rw [← pow_mul, mul_pow, show I.f * (2 * k) = 2 * I.f * k by ring]
    calc tau1 I x ^ (2 * I.f * k) * tau1 I y ^ (2 * I.f * k)
        ≤ ((∏ v, ((gramV I x v (fun c => δ *ᵥ u c)).det).re) / (idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) : ℝ)) *
          ((∏ v, ((gramV I y v b').det).re) / (idx I (perpSub I Λ δ) b' : ℝ)) :=
          mul_le_mul h1 h2 (pow_nonneg (hy.le) _) ((pow_nonneg hx.le _).trans h1)
      _ = (∏ v, (((gramV I x v (fun c => δ *ᵥ u c)).det).re * ((gramV I y v b').det).re)) /
          ((idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) : ℝ) * (idx I (perpSub I Λ δ) b' : ℝ)) := by
          rw [Finset.prod_mul_distrib, div_mul_div_comm]
      _ ≤ (∏ v, (hsN (amat I x y v δ) ^ (2 * k) * ‖I.φ v (pairM I b' u).det‖ ^ 2)) /
          ((idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) : ℝ) * (idx I (perpSub I Λ δ) b' : ℝ)) := by
          apply div_le_div_of_nonneg_right _ (mul_pos hi1' hi2').le
          exact Finset.prod_le_prod₀ (fun v _ => mul_nonneg (gram_nonneg hDM I x v _) (gram_nonneg hDM I y v _))
            (fun v _ => hArch I x y δ k u b' v hind1 hspan1 hind2 hperp)
      _ = (∏ v, hsN (amat I x y v δ)) ^ (2 * k) * |((Algebra.norm ℚ (pairM I b' u).det : ℚ) : ℝ)| /
          ((idx I (imSub I Λ δ) (fun c => δ *ᵥ u c) : ℝ) * (idx I (perpSub I Λ δ) b' : ℝ)) := by
          rw [Finset.prod_mul_distrib, Finset.prod_pow, hNP']
      _ ≤ (∏ v, hsN (amat I x y v δ)) ^ (2 * k) := by
          rw [div_le_iff₀ (mul_pos hi1' hi2')]
          exact mul_le_mul_of_nonneg_left hN (pow_nonneg hHp _)
  exact le_of_pow_le_pow_left₀ (by omega) hHp key

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatticeIsDiscreteGroup =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.PackLem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.PackLem", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBoundAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Metric Module

namespace PI.UnitaryGroupMassFormula.LCG

def matVec {N : ℕ} (A : Matrix (Fin N) (Fin N) ℂ) : EuclideanSpace ℂ (Fin N × Fin N) :=
  WithLp.toLp 2 (fun ij => A ij.1 ij.2)

theorem norm_matVec {N : ℕ} (A : Matrix (Fin N) (Fin N) ℂ) : ‖matVec A‖ = hsN A := by
  rw [EuclideanSpace.norm_eq, hsN, Formalism.REAL.hs, Fintype.sum_prod_type]
  rfl

theorem matVec_sub {N : ℕ} (A B : Matrix (Fin N) (Fin N) ℂ) : matVec (A - B) = matVec A - matVec B := by
  ext ij
  simp [matVec]

theorem finrank_matSpace (N : ℕ) : finrank ℝ (EuclideanSpace ℂ (Fin N × Fin N)) = 2 * N ^ 2 := by
  rw [finrank_real_of_complex, finrank_euclideanSpace, Fintype.card_prod, Fintype.card_fin, sq]

theorem lattice_packLem : PackLem := by
  intro ι _ N R ρ hρ hR T hT hsep
  classical
  let W := EuclideanSpace ℂ (Fin N × Fin N)
  let μ : Measure W := Measure.addHaar
  let ν : Measure (ι → W) := Measure.pi fun _ => μ
  let B : (ι → Matrix (Fin N) (Fin N) ℂ) → Set (ι → W) :=
    fun p => Set.univ.pi fun v => ball (matVec (p v)) (ρ v / 2)
  let Big : Set (ι → W) := Set.univ.pi fun v => ball (0 : W) (R v + ρ v / 2)
  have hdisj : (T : Set (ι → Matrix (Fin N) (Fin N) ℂ)).PairwiseDisjoint B := by
    intro p hp q hq hpq
    rw [Function.onFun, Set.disjoint_left]
    intro z hzp hzq
    obtain ⟨v, hv⟩ := hsep p hp q hq hpq
    have h1 := (Set.mem_univ_pi.1 hzp) v
    have h2 := (Set.mem_univ_pi.1 hzq) v
    rw [mem_ball] at h1 h2
    have h3 : dist (matVec (p v)) (matVec (q v)) < ρ v := by
      calc dist (matVec (p v)) (matVec (q v)) ≤ dist (matVec (p v)) (z v) + dist (z v) (matVec (q v)) :=
            dist_triangle _ _ _
        _ < ρ v / 2 + ρ v / 2 := by rw [dist_comm] at h1; exact add_lt_add h1 h2
        _ = ρ v := by ring
    rw [dist_eq_norm, ← matVec_sub, norm_matVec] at h3
    linarith
  have hmeas : ∀ p ∈ T, MeasurableSet (B p) := fun p _ =>
    MeasurableSet.univ_pi fun v => measurableSet_ball
  have hsub : (⋃ p ∈ T, B p) ⊆ Big := by
    intro z hz
    simp only [Set.mem_iUnion] at hz
    obtain ⟨p, hp, hz⟩ := hz
    refine Set.mem_univ_pi.2 fun v => ?_
    have h1 := (Set.mem_univ_pi.1 hz) v
    rw [mem_ball, dist_eq_norm] at h1
    rw [mem_ball_zero_iff]
    have h2 : ‖matVec (p v)‖ ≤ R v := by rw [norm_matVec]; exact hT p hp v
    calc ‖z v‖ = ‖(z v - matVec (p v)) + matVec (p v)‖ := by rw [sub_add_cancel]
      _ ≤ ‖z v - matVec (p v)‖ + ‖matVec (p v)‖ := norm_add_le _ _
      _ < ρ v / 2 + R v := by linarith
      _ = R v + ρ v / 2 := by ring
  have key : ∑ p ∈ T, ν (B p) ≤ ν Big := by
    rw [← measure_biUnion_finset hdisj hmeas]
    exact measure_mono hsub
  set d := finrank ℝ W with hd
  set c := μ (ball (0 : W) 1) with hc
  have hc0 : c ≠ 0 := (measure_ball_pos μ (0 : W) one_pos).ne'
  have hctop : c ≠ ⊤ := measure_ball_lt_top.ne
  have hB : ∀ p, ν (B p) = ∏ v, ENNReal.ofReal ((ρ v / 2) ^ d) * c := by
    intro p
    simp only [ν, B, Measure.pi_pi]
    refine Finset.prod_congr rfl fun v _ => ?_
    exact Measure.addHaar_ball_of_pos μ _ (by linarith [hρ v])
  have hBig : ν Big = ∏ v, ENNReal.ofReal ((R v + ρ v / 2) ^ d) * c := by
    simp only [ν, Big, Measure.pi_pi]
    refine Finset.prod_congr rfl fun v _ => ?_
    exact Measure.addHaar_ball_of_pos μ _ (by linarith [hρ v, hR v])
  simp only [hB, Finset.sum_const, nsmul_eq_mul] at key
  rw [hBig] at key
  have hfin : ∏ v, ENNReal.ofReal ((R v + ρ v / 2) ^ d) * c ≠ ⊤ :=
    ENNReal.prod_ne_top fun v _ => ENNReal.mul_ne_top ENNReal.ofReal_ne_top hctop
  have key' := ENNReal.toReal_mono hfin key
  rw [ENNReal.toReal_mul, ENNReal.toReal_natCast, ENNReal.toReal_prod, ENNReal.toReal_prod] at key'
  simp only [ENNReal.toReal_mul] at key'
  have hc' : 0 < c.toReal := ENNReal.toReal_pos hc0 hctop
  have hpos : ∀ v, 0 < ρ v / 2 := fun v => by linarith [hρ v]
  simp only [fun v => ENNReal.toReal_ofReal (pow_nonneg (hpos v).le d),
    fun v => ENNReal.toReal_ofReal (pow_nonneg (add_pos_of_nonneg_of_pos (hR v) (hpos v)).le d)] at key'
  have hprodpos : 0 < ∏ v, (ρ v / 2) ^ d * c.toReal :=
    Finset.prod_pos fun v _ => mul_pos (pow_pos (hpos v) d) hc'
  rw [← le_div_iff₀ hprodpos, ← Finset.prod_div_distrib] at key'
  have hdN : d = 2 * N ^ 2 := finrank_matSpace N
  calc (T.card : ℝ) ≤ ∏ v, (R v + ρ v / 2) ^ d * c.toReal / ((ρ v / 2) ^ d * c.toReal) := key'
    _ = ∏ v, ((2 * R v + ρ v) / ρ v) ^ (2 * N ^ 2) := by
      refine Finset.prod_congr rfl fun v _ => ?_
      rw [mul_div_mul_right _ _ hc'.ne', ← div_pow, hdN]
      congr 1
      have := hρ v
      field_simp

end PI.UnitaryGroupMassFormula.LCG

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.PackLem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SublatticeOfLattice =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SublatticeOfLattice", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBoundAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

theorem sublattice_of_lattice : LatSub := by
  intro I x u u' hu hu'
  simp only [PI.LatCountG.latSet, Set.mem_setOf_eq] at hu hu' ⊢
  have h : (fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) ((u - u') i)) =
      (fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (u i)) -
        (fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (u' i)) := by
    funext i
    simp [map_sub]
  rw [h, Matrix.mulVec_sub]
  exact Submodule.sub_mem _ hu hu'

theorem lattice_map_image : LatMap := by
  intro I x y γ g hγ hK u hu
  simp only [PI.LatCountG.latSet, Set.mem_setOf_eq] at hu ⊢
  have h1 : (fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F)
      (((g : Matrix (Fin I.n) (Fin I.n) I.E) *ᵥ u) i)) =
      I.fmat γ.2 *ᵥ (fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (u i)) := by
    funext i
    rw [hγ]
    exact RingHom.map_mulVec _ _ _ i
  have hK' : ∀ v, v ∈ I.Lf ↔ I.fmat (x⁻¹ * γ * y).2 *ᵥ v ∈ I.Lf := hK
  have hk := (hK' (I.fmat y.2⁻¹ *ᵥ fun i => Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (u i))).1 hu
  rw [h1]
  convert hk using 1
  rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
  congr 1
  simp only [Formalism.MainNotions.S.AutInst.fmat, Prod.snd_mul, Prod.snd_inv]
  push_cast
  simp only [Matrix.mul_assoc]
  rw [Matrix.mul_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).mp (Units.isUnit _)),
    Matrix.mul_one]

theorem norm_positive : NPos := by
  intro I x h
  by_contra hn
  have hn0 : I.n = 0 := by omega
  have hE : IsEmpty (PI.LatCountG.Sub I x) := by
    constructor
    intro s
    have hj := s.j_pos
    apply s.b_ind.ne_zero ⟨0, by omega⟩
    funext i
    exact absurd i.2 (by omega)
  have h0 : PI.LatCountG.tau1 I x = 0 := by
    unfold PI.LatCountG.tau1
    rw [Real.iInf_of_isEmpty]
    exact min_eq_right (by norm_num)
  linarith

theorem card_places_bound : CardPl := by
  intro I
  haveI : NumberField.IsTotallyReal I.F := I.cm.totReal
  have h1 := NumberField.InfinitePlace.card_add_two_mul_card_eq_rank I.F
  have h2 := NumberField.InfinitePlace.card_eq_nrRealPlaces_add_nrComplexPlaces (K := I.F)
  have h3 := NumberField.IsTotallyReal.nrComplexPlaces_eq_zero (K := I.F)
  show _ = Module.finrank ℚ I.F
  omega

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SublatticeOfLattice =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.NormProd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.NormProd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.LatSizeContOfSteps\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField

namespace PI.UnitaryGroupMassFormula.LSC.NormProd

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]

theorem algebraMap_norm_eq (hc : Formalism.BasicNotions.CMData F E) (m : E) :
    algebraMap F E (Algebra.norm F m) = m * star m := by
  classical
  haveI : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hc.deg2]; norm_num)
  have hfix : ∀ r : F, starRingAut (algebraMap F E r) = algebraMap F E r := fun r =>
    (hc.fixed _).mpr ⟨r, rfl⟩
  let σ : E ≃ₐ[F] E := AlgEquiv.ofRingEquiv (f := starRingAut) hfix
  have hσ : ∀ a, σ a = star a := fun _ => rfl
  have hne : (1 : E ≃ₐ[F] E) ≠ σ := by
    intro h
    have hall : ∀ a : E, a ∈ (algebraMap F E).range := fun a => by
      rw [← hc.fixed, ← hσ, ← h]; rfl
    have hbot : (⊥ : Subalgebra F E) = ⊤ := by
      ext a; simpa [Algebra.mem_bot] using hall a
    have h1 := Subalgebra.bot_eq_top_iff_finrank_eq_one.mp hbot
    rw [hc.deg2] at h1; norm_num at h1
  have hle : Fintype.card (E ≃ₐ[F] E) ≤ 2 := by
    rw [← hc.deg2]
    exact (Fintype.card_le_of_injective (fun e : E ≃ₐ[F] E => (e : E →ₐ[F] E))
      (fun a b h => AlgEquiv.coe_algHom_injective h)).trans AlgHom.card_le
  have hge : 2 ≤ Fintype.card (E ≃ₐ[F] E) := by
    rw [← Finset.card_pair hne]; exact Finset.card_le_univ _
  have hcard : Fintype.card (E ≃ₐ[F] E) = Module.finrank F E := by
    rw [hc.deg2]; omega
  haveI : IsGalois F E := IsGalois.of_card_aut_eq_finrank F E (by rw [Nat.card_eq_fintype_card]; exact hcard)
  have huniv : (Finset.univ : Finset (E ≃ₐ[F] E)) = {1, σ} :=
    (Finset.eq_of_subset_of_card_le (Finset.subset_univ _)
      (by rw [Finset.card_univ, Finset.card_pair hne]; omega)).symm
  rw [Algebra.norm_eq_prod_automorphisms, huniv, Finset.prod_pair hne]
  rfl

end PI.UnitaryGroupMassFormula.LSC.NormProd

namespace PI.UnitaryGroupMassFormula.LSC

open PI.UnitaryGroupMassFormula.LSC.NormProd

theorem norm_product_formula : NormProd := by
  intro I m
  letI := I.fF; letI := I.nF; letI := I.fE; letI := I.nE; letI := I.sE; letI := I.aFE
  have hc := I.cm
  set N := Algebra.norm I.F m with hN
  have hv : ∀ v : InfinitePlace I.F, ‖I.φ v m‖ ^ 2 = v N := by
    intro v
    have h1 : I.φ v (m * star m) = v.embedding N := by
      rw [← algebraMap_norm_eq hc m, I.φ_over]
    rw [map_mul, hc.cmUnram.2.1, Complex.mul_conj] at h1
    rw [← InfinitePlace.norm_embedding_eq, ← h1, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Complex.normSq_nonneg _), Complex.normSq_eq_norm_sq]
  simp_rw [hv]
  have hmult : ∀ v : InfinitePlace I.F, v.mult = 1 := fun v =>
    InfinitePlace.mult_isReal ⟨v, hc.totReal.isReal v⟩
  have := InfinitePlace.prod_eq_abs_norm N
  simp only [hmult, pow_one] at this
  rw [this, hN, Algebra.norm_norm, Rat.cast_abs]

end PI.UnitaryGroupMassFormula.LSC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.NormProd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchIneq\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchPlace\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.BoxBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Choose\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.DualIncl\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDual\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatCountAllOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.LatticeIsDiscreteGroup\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.PackLem\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.SublatticeOfLattice\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.DetMono\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeSizeContinuity.NormProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.LCG

theorem latCountAll_of_steps (hB : BoxBound) (hP : PackLem) (hD : DualIncl) (hCh : Choose) (hA : ArchIneq)
    (hAP : ArchPlaceOf) (hI : IndexIneq) : PI.LatCountG.LatCountAll :=
  latCountAll_of hB lattice_map_image sublattice_of_lattice
    (separation_of_points lattice_is_discrete_group hD hCh (hAP hA) hI PI.UnitaryGroupMassFormula.LSC.norm_product_formula PI.UnitaryGroupMassFormula.LSC.determinant_monotone card_places_bound)
    hP norm_positive card_places_bound

theorem latCountAll_of_open (hD : DualIncl) (hCh : Choose) (hAP : ArchPlaceOf) (hI : IndexIneq) :
    PI.LatCountG.LatCountAll :=
  latCountAll_of_steps box_lattice_point_bound lattice_packLem hD hCh archimedean_inequality hAP hI

theorem latCountAll_of_open2 (hAP : ArchPlaceOf) (hI : IndexIneq) : PI.LatCountG.LatCountAll :=
  latCountAll_of_open dual_lattice_inclusion choice_of_generators hAP hI

theorem latCountAll_of_index (hI : IndexIneq) : PI.LatCountG.LatCountAll :=
  latCountAll_of_open2 archimedean_place_exists hI

theorem latCountAll_of_idx (hD2 : DetIdx) (hIO : IndexOf) : PI.LatCountG.LatCountAll :=
  latCountAll_of_index (hIO dual_index_formula hD2)

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble =====
