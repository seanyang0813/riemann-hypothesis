module

public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar
public import Mathlib.Analysis.InnerProductSpace.Spectrum
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.KerPNonzero
public import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform
public import Mathlib.MeasureTheory.Integral.Pi
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyIdentity, Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyGaussianIntegral

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyIdentity =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyIdentity", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.H

section Diag

variable {V : Type*} [AddCommGroup V] [Module ℂ V]

@[reducible] def coreOf (H : Sesq V) (hH : IsHerm H) (hP : IsPosDef H) : InnerProductSpace.Core ℂ V where
  inner x y := H y x
  conj_inner_symm x y := (hH x y).symm
  re_inner_nonneg x := by
    by_cases h : x = 0
    · simp [h]
    · exact (hP x h).le
  add_left x y z := by simp
  smul_left x y r := by simp
  definite x hx := by
    by_contra h
    have := hP x h
    rw [hx] at this
    simp at this

theorem symm_diag [FiniteDimensional ℂ V] (H : Sesq V) (hH : IsHerm H) (hP : IsPosDef H) (T : V →ₗ[ℂ] V)
    (hT : ∀ x y, H (T x) y = H x (T y)) :
    ∃ (b : Module.Basis (Fin (Module.finrank ℂ V)) ℂ V) (t : Fin (Module.finrank ℂ V) → ℝ),
      (∀ i j, H (b i) (b j) = if i = j then 1 else 0) ∧ ∀ i, T (b i) = (t i : ℂ) • b i := by
  letI cd : InnerProductSpace.Core ℂ V := coreOf H hH hP
  letI : NormedAddCommGroup V := @InnerProductSpace.Core.toNormedAddCommGroup ℂ V _ _ _ cd
  letI : InnerProductSpace ℂ V := InnerProductSpace.ofCore cd.toCore
  haveI : FiniteDimensional ℂ V := ‹FiniteDimensional ℂ V›
  have hS : LinearMap.IsSymmetric T := fun x y => (hT y x).symm
  let b := hS.eigenvectorBasis rfl
  refine ⟨b.toBasis, fun i => hS.eigenvalues rfl i, ?_, ?_⟩
  · intro i j
    rw [OrthonormalBasis.coe_toBasis]
    have h := (orthonormal_iff_ite.mp b.orthonormal) j i
    exact h.trans (if_congr eq_comm rfl rfl)
  · intro i
    rw [OrthonormalBasis.coe_toBasis]
    exact hS.apply_eigenvectorBasis rfl i

theorem cayley_diag [FiniteDimensional ℂ V] (H : Sesq V) (hH : IsHerm H) (hP : IsPosDef H) (Ae : V ≃ₗ[ℂ] V)
    (hA : ∀ u v, H (Ae u) v + H u (Ae v) = H (Ae u) (Ae v)) :
    ∃ (b : Module.Basis (Fin (Module.finrank ℂ V)) ℂ V) (l : Fin (Module.finrank ℂ V) → ℂ),
      (∀ i j, H (b i) (b j) = if i = j then 1 else 0) ∧ (∀ i, Ae (b i) = l i • b i) ∧ ∀ i, 0 < (l i).re := by
  set B : V →ₗ[ℂ] V := (Ae.symm : V ≃ₗ[ℂ] V).toLinearMap with hBdef
  have key : ∀ x y, H (B x) y + H x (B y) = H x y := by
    intro x y
    have h := hA (Ae.symm x) (Ae.symm y)
    simp only [LinearEquiv.apply_symm_apply] at h
    simpa [hBdef, add_comm] using h
  set T : V →ₗ[ℂ] V := Complex.I • ((2 : ℂ) • B - LinearMap.id) with hTdef
  have hTx : ∀ x, T x = Complex.I • ((2 : ℂ) • B x - x) := by
    intro x; simp [hTdef]
  have hT : ∀ x y, H (T x) y = H x (T y) := by
    intro x y
    rw [hTx, hTx]
    simp only [map_smul, map_sub, map_smulₛₗ, LinearMap.smul_apply, LinearMap.sub_apply, smul_eq_mul,
      Complex.conj_I, map_ofNat]
    linear_combination (2 * Complex.I) * key x y
  obtain ⟨b, t, hb, hbt⟩ := symm_diag H hH hP T hT
  have hne : ∀ i, (1 - Complex.I * (t i : ℂ)) ≠ 0 := by
    intro i h
    have := congrArg Complex.re h
    simp at this
  refine ⟨b, fun i => 2 / (1 - Complex.I * (t i : ℂ)), hb, ?_, ?_⟩
  · intro i
    have h1 := hbt i
    rw [hTx] at h1
    have hw : B (b i) = ((1 - Complex.I * (t i : ℂ)) / 2) • b i := by
      linear_combination (norm := skip) (-Complex.I / 2) • h1
      match_scalars <;> (ring_nf; simp only [Complex.I_sq]; ring)
    apply Ae.symm.injective
    have hB' : Ae.symm (b i) = B (b i) := rfl
    rw [LinearEquiv.symm_apply_apply, map_smul, hB', hw, smul_smul,
      show 2 / (1 - Complex.I * (t i : ℂ)) * ((1 - Complex.I * (t i : ℂ)) / 2) = 1 by
        field_simp [hne i], one_smul]
  · intro i
    have hre : (1 - Complex.I * (t i : ℂ)).re = 1 := by simp
    have him : (1 - Complex.I * (t i : ℂ)).im = -t i := by simp
    have hns : Complex.normSq (1 - Complex.I * (t i : ℂ)) = 1 + t i ^ 2 := by
      rw [Complex.normSq_apply, hre, him]; ring
    have h2r : (2 : ℂ).re = 2 := by norm_num
    have h2i : (2 : ℂ).im = 0 := by norm_num
    rw [Complex.div_re, hre, him, hns, h2r, h2i, zero_mul, zero_div, add_zero, mul_one]
    positivity

theorem cayley_identity (H : Sesq V) (δ Ae : V ≃ₗ[ℂ] V) (hδ : IsIsom H H (δ : V →ₗ[ℂ] V))
    (hAe : ∀ x, Ae x = x - δ.symm x) (u v : V) : H (Ae u) v + H u (Ae v) = H (Ae u) (Ae v) := by
  have key : H (δ.symm u) (δ.symm v) = H u v := by
    have h := hδ (δ.symm u) (δ.symm v)
    simpa using h.symm
  simp only [hAe, map_sub, LinearMap.sub_apply]
  rw [key]
  ring

theorem unitary_diag [FiniteDimensional ℂ V] (H : Sesq V) (hH : IsHerm H) (hP : IsPosDef H) (δ Ae : V ≃ₗ[ℂ] V)
    (hδ : IsIsom H H (δ : V →ₗ[ℂ] V)) (hAe : ∀ x, Ae x = x - δ.symm x) :
    ∃ (b : Module.Basis (Fin (Module.finrank ℂ V)) ℂ V) (l : Fin (Module.finrank ℂ V) → ℂ),
      (∀ i j, H (b i) (b j) = if i = j then 1 else 0) ∧ (∀ i, Ae (b i) = l i • b i) ∧ ∀ i, 0 < (l i).re :=
  cayley_diag H hH hP Ae (cayley_identity H δ Ae hδ hAe)

theorem det_of_diag {n : Type*} [Fintype n] [DecidableEq n] (b : Module.Basis n ℂ V) (l : n → ℂ) (L : V →ₗ[ℂ] V)
    (hL : ∀ i, L (b i) = l i • b i) : LinearMap.det L = ∏ i, l i := by
  rw [← LinearMap.det_toMatrix b]
  have hM : LinearMap.toMatrix b b L = Matrix.diagonal l := by
    ext i j
    rw [LinearMap.toMatrix_apply, hL, map_smul, b.repr_self, Finsupp.smul_apply]
    rcases eq_or_ne i j with rfl | h
    · simp
    · simp [h]
  rw [hM, Matrix.det_diagonal]

theorem form_of_diag {n : Type*} [Fintype n] [DecidableEq n] (H : Sesq V) (b : Module.Basis n ℂ V) (l : n → ℂ)
    (L : V →ₗ[ℂ] V) (hb : ∀ i j, H (b i) (b j) = if i = j then 1 else 0) (hL : ∀ i, L (b i) = l i • b i)
    (w : n → ℂ) :
    H (L (b.equivFun.symm w)) (b.equivFun.symm w) = ∑ i, l i * ((‖w i‖ : ℝ) : ℂ) ^ 2 := by
  rw [Module.Basis.equivFun_symm_apply]

  simp only [map_sum, map_smul, hL, smul_smul, LinearMap.sum_apply, LinearMap.smul_apply, map_smulₛₗ, hb, smul_eq_mul, mul_ite, mul_one, mul_zero,
  Finset.sum_ite_eq', Finset.mem_univ, if_true]
  refine Finset.sum_congr rfl fun i _ => ?_
  have h := Complex.mul_conj (w i)
  rw [Complex.normSq_eq_norm_sq] at h
  push_cast at h
  linear_combination (l i) * h

end Diag

end Formalism.L2.Th1.H
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyIdentity =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyGaussianIntegral =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyGaussianIntegral", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.KerPNonzero\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\npublic import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory

namespace Formalism.L2.Th1.H

theorem gauss_plane (l : ℂ) (hl : 0 < l.re) :
    Integrable (fun z : ℂ => Complex.exp (-((Real.pi : ℂ) * l) * ((‖z‖ : ℝ) : ℂ) ^ 2)) ∧
      ∫ z : ℂ, Complex.exp (-((Real.pi : ℂ) * l) * ((‖z‖ : ℝ) : ℂ) ^ 2) = l⁻¹ := by
  have hl0 : l ≠ 0 := fun h => by simp [h] at hl
  have hπ : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hb : 0 < ((Real.pi : ℂ) * l).re := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_pos Real.pi_pos hl
  refine ⟨?_, ?_⟩
  · have := GaussianFourier.integrable_cexp_neg_mul_sq_norm_add (V := ℂ) hb 0 (0 : ℂ)
    simpa using this
  · rw [GaussianFourier.integral_cexp_neg_mul_sq_norm (V := ℂ) hb, Complex.finrank_real_complex]
    rw [show ((2 : ℕ) : ℂ) / 2 = 1 by norm_num, Complex.cpow_one]
    field_simp

theorem gauss_pi {n : Type*} [Fintype n] (l : n → ℂ) (hl : ∀ i, 0 < (l i).re) :
    Integrable (fun w : n → ℂ => Complex.exp (-(Real.pi : ℂ) * ∑ i, l i * ((‖w i‖ : ℝ) : ℂ) ^ 2)) ∧
      ∫ w : n → ℂ, Complex.exp (-(Real.pi : ℂ) * ∑ i, l i * ((‖w i‖ : ℝ) : ℂ) ^ 2) = (∏ i, l i)⁻¹ := by
  have hfun : (fun w : n → ℂ => Complex.exp (-(Real.pi : ℂ) * ∑ i, l i * ((‖w i‖ : ℝ) : ℂ) ^ 2)) =
      fun w => ∏ i, Complex.exp (-((Real.pi : ℂ) * l i) * ((‖w i‖ : ℝ) : ℂ) ^ 2) := by
    funext w
    rw [← Complex.exp_sum, Finset.mul_sum]
    congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    ring
  rw [hfun]
  refine ⟨?_, ?_⟩
  · exact Integrable.fintype_prod
      (f := fun i (z : ℂ) => Complex.exp (-((Real.pi : ℂ) * l i) * ((‖z‖ : ℝ) : ℂ) ^ 2))
      (fun i => (gauss_plane (l i) (hl i)).1)
  · rw [integral_fintype_prod_volume_eq_prod
      (fun i (z : ℂ) => Complex.exp (-((Real.pi : ℂ) * l i) * ((‖z‖ : ℝ) : ℂ) ^ 2)),
      ← Finset.prod_inv_distrib]
    exact Finset.prod_congr rfl fun i _ => (gauss_plane (l i) (hl i)).2

theorem haar_transfer {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V] [FiniteDimensional ℂ V] [MeasurableSpace V]
    [BorelSpace V] (μ : Measure V) [μ.IsAddHaarMeasure] {n : Type*} [Fintype n] (Φ : (n → ℂ) ≃ₗ[ℂ] V) :
    ∃ κ : ℝ, ∀ f : V → ℂ, (Integrable (fun w => f (Φ w)) → Integrable f μ) ∧
      ∫ z, f z ∂μ = (κ : ℂ) * ∫ w, f (Φ w) := by
  classical
  let Ψ : (n → ℂ) ≃L[ℂ] V := Φ.toContinuousLinearEquiv
  let ν : Measure V := Measure.map Ψ volume
  have hme : MeasurableEmbedding Ψ := Ψ.toHomeomorph.measurableEmbedding
  obtain ⟨c, hμ⟩ : ∃ c : NNReal, μ = c • ν := ⟨_, Measure.isAddLeftInvariant_eq_smul μ ν⟩
  subst hμ
  refine ⟨(c : ℝ), fun f => ⟨fun hf => ?_, ?_⟩⟩
  · apply Integrable.smul_measure_nnreal
    rw [hme.integrable_map_iff]
    exact hf
  · rw [integral_smul_nnreal_measure, hme.integral_map, NNReal.smul_def, Complex.real_smul]
    try rfl

theorem cayleyGaussianIntegral : GaussQuad := by
  intro V _ _ _ _ _ μ _ H hH hP δ Ae hδ hAe
  classical
  obtain ⟨b, l, hb, hbl, hl⟩ := unitary_diag H hH hP δ Ae hδ hAe
  obtain ⟨κ, hκ⟩ := haar_transfer μ b.equivFun.symm
  have hq : (fun w => gq H Ae (b.equivFun.symm w)) =
      fun w => Complex.exp (-(Real.pi : ℂ) * ∑ i, l i * ((‖w i‖ : ℝ) : ℂ) ^ 2) := by
    funext w
    have h1 := form_of_diag H b l (Ae : V →ₗ[ℂ] V) hb hbl w
    simp only [LinearEquiv.coe_coe] at h1
    unfold gq
    rw [h1]
  have hw : (fun w => ((wt H (b.equivFun.symm w) : ℝ) : ℂ)) =
      fun w => Complex.exp (-(Real.pi : ℂ) * ∑ i, (fun _ => (1 : ℂ)) i * ((‖w i‖ : ℝ) : ℂ) ^ 2) := by
    funext w
    have h1 := form_of_diag H b (fun _ => (1 : ℂ)) LinearMap.id hb (fun i => by simp) w
    simp only [LinearMap.id_apply] at h1
    have hs : (∑ i, (fun _ => (1 : ℂ)) i * ((‖w i‖ : ℝ) : ℂ) ^ 2) = ((∑ i, ‖w i‖ ^ 2 : ℝ) : ℂ) := by
      push_cast
      simp
    unfold wt
    rw [h1, hs, Complex.ofReal_re, Complex.ofReal_exp, Complex.ofReal_mul, Complex.ofReal_neg]
  have hgq := gauss_pi l hl
  have hgw := gauss_pi (n := Fin (Module.finrank ℂ V)) (fun _ => (1 : ℂ)) (fun _ => by simp)
  rw [← hq] at hgq
  rw [← hw] at hgw
  refine ⟨(hκ _).1 hgq.1, ?_⟩
  rw [(hκ (gq H Ae)).2, hgq.2, ← integral_complex_ofReal, (hκ (fun z => ((wt H z : ℝ) : ℂ))).2, hgw.2,
    det_of_diag b l (Ae : V →ₗ[ℂ] V) hbl]
  simp [div_eq_mul_inv]

end Formalism.L2.Th1.H
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyGaussianIntegral =====
