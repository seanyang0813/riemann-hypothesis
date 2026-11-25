module

public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergman
public import Mathlib.MeasureTheory.Integral.DominatedConvergence
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsChartBergman
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsComplexTaylor
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.RingTheory.Complex
public import ReciprocityTheory.AnalyticForms.PotentialTheory.HessCIsHermitian
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar
public import Mathlib.RingTheory.Norm.Transitivity
public import Mathlib.Analysis.Calculus.FDeriv.Symmetric
public import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.BergmanNorms
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergmanIntegrable
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergmanDensIntegrable
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBergmanDensIntegrable
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBergmanIntegrable
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartTaylorCover
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PIntegralOfBergman
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PPolydiscSubmean
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PUniformBergmanBound

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ImportsBis, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartBergmanBound, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PComplexTaylorTwo, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalBergmanBound, GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.BergmanLerpSelf

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ImportsBis =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ImportsBis", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergman\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Integral.DominatedConvergence\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MeasureTheory Set Filter Topology

theorem L1Convergence.proof : L1Convergence.Statement := by
  intro Ω _ μ _ g b C hg hb hC hlim hint

  have hp_int : ∀ n, Integrable (fun x => max (g n x - b x) 0) μ :=
    fun n => ((hg n).sub hb).pos_part
  have hbound_int : Integrable (fun x => C + |b x|) μ := (integrable_const C).add hb.abs
  have hpt : Tendsto (fun n => ∫ x, max (g n x - b x) 0 ∂μ) atTop (𝓝 0) := by
    have h := tendsto_integral_of_dominated_convergence (μ := μ)
      (F := fun n x => max (g n x - b x) 0) (f := fun _ => (0 : ℝ)) (fun x => C + |b x|)
      (fun n => (hp_int n).aestronglyMeasurable) hbound_int
      (fun n => Filter.Eventually.of_forall fun x => by
        have h1 := hC n x
        rw [Real.norm_eq_abs, abs_of_nonneg (le_max_right _ _)]
        exact max_le (by linarith [neg_abs_le (b x)]) (by linarith [abs_nonneg (b x)]))
      (Filter.Eventually.of_forall fun x => by
        refine tendsto_order.2 ⟨fun a ha => Filter.Eventually.of_forall fun n =>
          lt_of_lt_of_le ha (le_max_right _ _), fun a ha => ?_⟩
        filter_upwards [hlim x (a / 2) (by linarith)] with n hn
        exact lt_of_le_of_lt (max_le (show g n x - b x ≤ a / 2 by linarith)
          (show (0 : ℝ) ≤ a / 2 by linarith)) (by linarith))
    simpa using h

  have hid : ∀ n, ∫ x, |g n x - b x| ∂μ =
      2 * ∫ x, max (g n x - b x) 0 ∂μ - (∫ x, g n x ∂μ - ∫ x, b x ∂μ) := by
    intro n
    have hpt' : ∀ x, |g n x - b x| = 2 * max (g n x - b x) 0 - (g n x - b x) := by
      intro x
      rcases le_total 0 (g n x - b x) with h | h
      · rw [abs_of_nonneg h, max_eq_left h]; ring
      · rw [abs_of_nonpos h, max_eq_right h]; ring
    simp_rw [hpt']
    have hgb : Integrable (fun x => g n x - b x) μ := (hg n).sub hb
    rw [integral_sub ((hp_int n).const_mul 2) hgb, integral_const_mul,
      integral_sub (hg n) hb]
  refine tendsto_order.2 ⟨fun a ha => Filter.Eventually.of_forall fun n =>
    lt_of_lt_of_le ha (integral_nonneg fun x => abs_nonneg _), fun a ha => ?_⟩
  filter_upwards [(tendsto_order.1 hpt).2 (a / 4) (by linarith), hint (a / 4) (by linarith)]
    with n hn1 hn2
  rw [hid n]
  linarith

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ImportsBis =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartBergmanBound =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartBergmanBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsChartBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsComplexTaylor\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Complex\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.HessCIsHermitian\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar\npublic import Mathlib.RingTheory.Norm.Transitivity\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MeasureTheory Set Filter Topology Asymptotics ReciprocityTheory.AnForm Matrix
open scoped ComplexOrder

noncomputable section

namespace ChartBergmanBound

lemma exists_diag {D : ℕ} {H : Matrix (Fin D) (Fin D) ℂ} (hH : H.PosSemidef) :
    ∃ (N : Matrix (Fin D) (Fin D) ℂ) (lam : Fin D → ℝ), Complex.normSq N.det = 1 ∧
      Function.Injective (fun w : Fin D → ℂ => N *ᵥ w) ∧ (∀ j, 0 ≤ lam j) ∧
      H.det = ∏ j, (lam j : ℂ) ∧
      ∀ w : Fin D → ℂ, ((N *ᵥ w) ⬝ᵥ (H *ᵥ star (N *ᵥ w))).re = ∑ j, lam j * ‖w j‖ ^ 2 := by
  classical
  obtain ⟨V, hVu, e, he0, hdet', hspec⟩ : ∃ V ∈ unitary (Matrix (Fin D) (Fin D) ℂ), ∃ e : Fin D → ℝ,
      (∀ j, 0 ≤ e j) ∧ H.det = ∏ j, (e j : ℂ) ∧
        H = V * Matrix.diagonal (fun j => (e j : ℂ)) * star V :=
    ⟨_, hH.1.eigenvectorUnitary.2, hH.1.eigenvalues, hH.eigenvalues_nonneg,
      by rw [hH.1.det_eq_prod_eigenvalues]; rfl, hH.1.spectral_theorem.trans (by rw [Unitary.conjStarAlgAut_apply]; rfl)⟩
  have h1 : star V * V = 1 := Unitary.star_mul_self_of_mem hVu
  refine ⟨(star V)ᵀ, e, ?_, ?_, he0, hdet', ?_⟩
  · have hd : V.det ∈ unitary ℂ := Matrix.det_of_mem_unitary hVu
    have hd1 : star V.det * V.det = 1 := Unitary.star_mul_self_of_mem hd
    rw [det_transpose, star_eq_conjTranspose, det_conjTranspose, Complex.star_def,
      Complex.normSq_conj]
    have : (Complex.normSq V.det : ℂ) = 1 := by
      rw [← Complex.mul_conj, mul_comm, ← Complex.star_def, hd1]
    exact_mod_cast this
  · intro w w' h
    have key : ∀ u : Fin D → ℂ, Vᵀ *ᵥ ((star V)ᵀ *ᵥ u) = u := fun u => by
      rw [mulVec_mulVec, ← transpose_mul, h1, transpose_one, one_mulVec]
    have h' := congrArg (fun u => Vᵀ *ᵥ u) h
    simpa only [key] using h'
  · intro w
    subst hspec
    have hz : ((star V)ᵀ *ᵥ w) ᵥ* V = w := by
      rw [mulVec_transpose, vecMul_vecMul, h1, vecMul_one]
    have hs : star V *ᵥ star ((star V)ᵀ *ᵥ w) = star w := by
      conv_rhs => rw [← hz, star_vecMul]
      rfl
    have hq : ((star V)ᵀ *ᵥ w) ⬝ᵥ ((V * Matrix.diagonal (fun j => (e j : ℂ)) * star V) *ᵥ
        star ((star V)ᵀ *ᵥ w)) = w ⬝ᵥ (Matrix.diagonal (fun j => (e j : ℂ)) *ᵥ star w) := by
      rw [← mulVec_mulVec, ← mulVec_mulVec, hs, dotProduct_mulVec, hz]
    rw [hq]
    simp only [dotProduct, mulVec_diagonal, Complex.re_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [mul_left_comm, Pi.star_apply, Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq,
      ← Complex.ofReal_mul, Complex.ofReal_re]

lemma exists_mulVec_bound {D : ℕ} (N : Matrix (Fin D) (Fin D) ℂ) :
    ∃ C : ℝ, 0 < C ∧ ∀ w : Fin D → ℂ, ‖N *ᵥ w‖ ≤ C * ‖w‖ := by
  set L := LinearMap.toContinuousLinearMap (Matrix.toLin' N) with hL
  refine ⟨‖L‖ + 1, by positivity, fun w => ?_⟩
  have h : L w = N *ᵥ w := rfl
  calc ‖N *ᵥ w‖ = ‖L w‖ := by rw [h]
    _ ≤ ‖L‖ * ‖w‖ := L.le_opNorm w
    _ ≤ (‖L‖ + 1) * ‖w‖ := by gcongr; linarith

lemma analyticAt_mulVec {D : ℕ} (N : Matrix (Fin D) (Fin D) ℂ) (w : Fin D → ℂ) :
    AnalyticAt ℂ (fun w : Fin D → ℂ => N *ᵥ w) w :=
  (LinearMap.toContinuousLinearMap (Matrix.toLin' N)).analyticAt w

lemma analyticAt_poly {D : ℕ} (a : Fin D → ℂ) (b : Matrix (Fin D) (Fin D) ℂ) (z : Fin D → ℂ) :
    AnalyticAt ℂ (fun z : Fin D → ℂ => a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)) z := by
  have hc : ∀ i, AnalyticAt ℂ (fun z : Fin D → ℂ => z i) z := fun i =>
    (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin D => ℂ) i).analyticAt z
  have hm : ∀ i, AnalyticAt ℂ (fun z : Fin D → ℂ => (b *ᵥ z) i) z := fun i =>
    ((ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin D => ℂ) i).analyticAt _).comp
      (analyticAt_mulVec b z)
  simp only [dotProduct]
  exact (Finset.analyticAt_fun_sum _ fun i _ => analyticAt_const.mul (hc i)).add
    (Finset.analyticAt_fun_sum _ fun i _ => (hc i).mul (hm i))

lemma measurePreserving_mulVec {D : ℕ} {N : Matrix (Fin D) (Fin D) ℂ}
    (hN : Complex.normSq N.det = 1) :
    MeasurePreserving (fun w : Fin D → ℂ => N *ᵥ w) volume volume := by
  set f : (Fin D → ℂ) →ₗ[ℝ] (Fin D → ℂ) := (Matrix.toLin' N).restrictScalars ℝ with hf
  have hdet : LinearMap.det f = 1 := by
    rw [hf, LinearMap.det_restrictScalars, LinearMap.det_toLin', Algebra.norm_complex_apply, hN]
  have hcoe : (f : (Fin D → ℂ) → (Fin D → ℂ)) = fun w => N *ᵥ w := rfl
  refine ⟨?_, ?_⟩
  · rw [← hcoe]
    exact f.continuous_of_finiteDimensional.measurable
  · rw [← hcoe, Measure.map_linearMap_addHaar_eq_smul_addHaar _ (by rw [hdet]; exact one_ne_zero),
      hdet]
    simp

lemma gaussDiscMass_pos {lam R : ℝ} (hl : 0 ≤ lam) (hR : 0 < R) : 0 < gaussDiscMass lam R := by
  unfold gaussDiscMass
  split_ifs with h
  · positivity
  · have hl' : 0 < lam := lt_of_le_of_ne hl (Ne.symm h)
    have : Real.exp (-lam * R ^ 2) < 1 := by
      rw [← Real.exp_zero]; exact Real.exp_lt_exp.2 (by nlinarith [sq_pos_of_pos hR])
    exact div_pos (mul_pos Real.pi_pos (by linarith)) hl'

lemma tendsto_inv_gaussDiscMass {lam : ℝ} (hl : 0 ≤ lam) :
    Tendsto (fun R => 1 / gaussDiscMass lam R) atTop (𝓝 (lam / Real.pi)) := by
  rcases hl.eq_or_lt with h | h
  · subst h
    have h0 : ∀ R, gaussDiscMass 0 R = Real.pi * R ^ 2 := fun R => if_pos rfl
    simp only [h0, zero_div, one_div]
    exact ((tendsto_pow_atTop two_ne_zero).const_mul_atTop Real.pi_pos).inv_tendsto_atTop
  · have he : Tendsto (fun R : ℝ => Real.exp (-lam * R ^ 2)) atTop (𝓝 0) :=
      Real.tendsto_exp_atBot.comp
        ((tendsto_pow_atTop two_ne_zero).const_mul_atTop_of_neg (by linarith))
    have h2 : Tendsto (fun R : ℝ => lam / (Real.pi * (1 - Real.exp (-lam * R ^ 2)))) atTop
        (𝓝 (lam / (Real.pi * (1 - 0)))) :=
      tendsto_const_nhds.div (tendsto_const_nhds.mul (tendsto_const_nhds.sub he))
        (by simp [Real.pi_ne_zero])
    rw [sub_zero, mul_one] at h2
    refine h2.congr fun R => ?_
    simp only [gaussDiscMass, h.ne', if_false, one_div_div]

lemma det_smul_re {D : ℕ} {H : Matrix (Fin D) (Fin D) ℂ} {lam : Fin D → ℝ}
    (hdet : H.det = ∏ j, (lam j : ℂ)) :
    ((((1 / Real.pi : ℝ) : ℂ) • H).det).re = ∏ j, lam j / Real.pi := by
  have : (((1 / Real.pi : ℝ) : ℂ) • H).det = ((∏ j, lam j / Real.pi : ℝ) : ℂ) := by
    rw [det_smul, hdet, Fintype.card_fin]
    push_cast
    rw [Finset.prod_div_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
    ring
  rw [this, Complex.ofReal_re]

end ChartBergmanBound


open ChartBergmanBound in
theorem ChartBergmanBound.proof (hP : PolydiscSubmean.Statement) (hT : ComplexTaylorTwo.Statement) :
    ChartBergmanBound.Statement := by
  intro D U ψ ρ y₀ hU hy₀ hψ hρ hρ0 hlevi ε hε
  have hψ' : ContDiffAt ℝ 2 ψ y₀ := hψ.contDiffAt (hU.mem_nhds hy₀)
  have hH : (hessC ψ y₀).PosSemidef := ReciprocityTheory.AnForm.M.hessC_posSemidef ψ y₀ hψ' hlevi
  obtain ⟨N, lam, hNdet, hNinj, hlam, hdet, hq⟩ := exists_diag hH
  obtain ⟨a, b, hr⟩ := hT D ψ y₀ hψ'
  rw [det_smul_re hdet]
  set Λ : ℝ := ∏ j, lam j / Real.pi with hΛ
  have hΛ0 : 0 ≤ Λ := Finset.prod_nonneg fun j _ => div_nonneg (hlam j) Real.pi_pos.le
  obtain ⟨C, hC0, hC⟩ := exists_mulVec_bound N
  set ρ₀ := ρ y₀ with hρ₀
  have hΛε : Λ < Λ + ε * ρ₀ := lt_add_of_pos_right _ (mul_pos hε hρ0)
  have hlim : Tendsto (fun R => ∏ j, 1 / gaussDiscMass (lam j) R) atTop (𝓝 Λ) :=
    tendsto_finsetProd _ fun j _ => tendsto_inv_gaussDiscMass (hlam j)
  obtain ⟨R, hRlt, hR1⟩ :=
    ((hlim.eventually_mem (Iio_mem_nhds hΛε)).and (eventually_ge_atTop (1 : ℝ))).exists
  have hR0 : 0 < R := by linarith
  set g : ℝ := ∏ j, 1 / gaussDiscMass (lam j) R with hg
  have hIpos : 0 < ∏ j, gaussDiscMass (lam j) R :=
    Finset.prod_pos fun j _ => gaussDiscMass_pos (hlam j) hR0
  have hgI : g * ∏ j, gaussDiscMass (lam j) R = 1 := by
    rw [hg, ← Finset.prod_mul_distrib]
    exact Finset.prod_eq_one fun j _ => one_div_mul_cancel (gaussDiscMass_pos (hlam j) hR0).ne'
  set K : ℝ := C ^ 2 * R ^ 2 with hK
  have hcont : ContinuousAt (fun t : ℝ => Real.exp (t * K) / (1 - t) * g) 0 :=
    ((Real.continuous_exp.comp (continuous_id.mul continuous_const)).continuousAt.div
      (continuous_const.sub continuous_id).continuousAt (by norm_num)).mul continuousAt_const
  have hev : ∀ᶠ t in 𝓝 (0 : ℝ), Real.exp (t * K) / (1 - t) * g < Λ + ε * ρ₀ :=
    hcont.eventually_mem (Iio_mem_nhds (by simpa using hRlt))
  have hev' : ∀ᶠ t in 𝓝[>] (0 : ℝ), (Real.exp (t * K) / (1 - t) * g < Λ + ε * ρ₀ ∧ t < 1) ∧
      0 < t :=
    ((hev.and (Iio_mem_nhds one_pos)).filter_mono nhdsWithin_le_nhds).and self_mem_nhdsWithin
  obtain ⟨t, ⟨htlt, ht1⟩, ht0⟩ := hev'.exists
  have h1t : 0 < 1 - t := by linarith
  have hρev : ∀ᶠ y in 𝓝 y₀, (1 - t) * ρ₀ < ρ y :=
    (hρ.continuousAt (hU.mem_nhds hy₀)).eventually_mem (Ioi_mem_nhds (by nlinarith))
  obtain ⟨δ₁, hδ₁, hδr⟩ := Metric.eventually_nhds_iff.1 (hr.def ht0)
  obtain ⟨δ₂, hδ₂, hδρ⟩ := Metric.eventually_nhds_iff.1 hρev
  obtain ⟨δ₃, hδ₃, hδU⟩ := Metric.isOpen_iff.1 hU y₀ hy₀
  set δ := min δ₁ (min δ₂ δ₃) with hδ
  have hδ0 : 0 < δ := lt_min hδ₁ (lt_min hδ₂ hδ₃)
  obtain ⟨n₀, hn₀⟩ := exists_nat_gt ((C * R / δ) ^ 2)
  filter_upwards [eventually_ge_atTop (max n₀ 1)] with n hn F hF
  have hn1 : 1 ≤ n := le_of_max_le_right hn
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn1
  have hnbig : (C * R / δ) ^ 2 < n := hn₀.trans_le (by exact_mod_cast le_of_max_le_left hn)
  have hsqrt : 0 < Real.sqrt n := Real.sqrt_pos.2 hnpos
  set s := R / Real.sqrt n with hs
  have hCs : C * s < δ := by
    have h1 : C * R / δ < Real.sqrt n := Real.lt_sqrt_of_sq_lt hnbig
    rw [div_lt_iff₀ hδ0] at h1
    rw [hs, ← mul_div_assoc, div_lt_iff₀ hsqrt]
    linarith
  have hs2 : (n : ℝ) * s ^ 2 = R ^ 2 := by
    rw [hs, div_pow, Real.sq_sqrt hnpos.le]
    field_simp
  set B := Metric.closedBall (0 : Fin D → ℂ) s with hB
  have hzB : ∀ w ∈ B, ‖N *ᵥ w‖ < δ ∧ (n : ℝ) * ‖N *ᵥ w‖ ^ 2 ≤ K := by
    intro w hw
    have hw' : ‖w‖ ≤ s := by simpa [hB] using hw
    have h1 : ‖N *ᵥ w‖ ≤ C * s := (hC w).trans (by gcongr)
    refine ⟨h1.trans_lt hCs, ?_⟩
    calc (n : ℝ) * ‖N *ᵥ w‖ ^ 2 ≤ n * (C * s) ^ 2 := by gcongr
      _ = C ^ 2 * (n * s ^ 2) := by ring
      _ = K := by rw [hs2]
  have hΦU : ∀ w ∈ B, y₀ + N *ᵥ w ∈ U := fun w hw => hδU (by
    rw [Metric.mem_ball, dist_eq_norm, add_sub_cancel_left]
    exact (hzB w hw).1.trans_le ((min_le_right _ _).trans (min_le_right _ _)))
  set G : (Fin D → ℂ) → ℂ := fun w => F (y₀ + N *ᵥ w) *
    Complex.exp (((-(n : ℝ) / 2 : ℝ) : ℂ) * (a ⬝ᵥ (N *ᵥ w) + (N *ᵥ w) ⬝ᵥ (b *ᵥ (N *ᵥ w))))
    with hGdef
  have hG0 : G 0 = F y₀ := by simp [hGdef]
  have hGan : AnalyticOnNhd ℂ G B := by
    intro w hw
    have hlin := analyticAt_mulVec N w
    have haff : AnalyticAt ℂ (fun w : Fin D → ℂ => y₀ + N *ᵥ w) w := analyticAt_const.add hlin
    have hPa : AnalyticAt ℂ
        (fun w : Fin D → ℂ => a ⬝ᵥ (N *ᵥ w) + (N *ᵥ w) ⬝ᵥ (b *ᵥ (N *ᵥ w))) w :=
      (analyticAt_poly a b (N *ᵥ w)).comp hlin
    exact ((hF _ (hΦU w hw)).comp_of_eq haff rfl).mul ((analyticAt_const.mul hPa).cexp)
  have hPn := hP D n lam R G (by omega) hR0 hlam hGan
  rw [hG0] at hPn
  set k : ℝ := (1 - t) * ρ₀ * Real.exp (-(n : ℝ) * ψ y₀) * Real.exp (-(t * K)) with hk
  have hk0 : 0 ≤ k := by positivity

  have hpt : ∀ w ∈ B, ENNReal.ofReal (k * (‖G w‖ ^ 2 *
        Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2))) ≤
      ENNReal.ofReal (‖F (y₀ + N *ᵥ w)‖ ^ 2 * Real.exp (-(n : ℝ) * ψ (y₀ + N *ᵥ w)) *
        ρ (y₀ + N *ᵥ w)) := by
    intro w hw
    apply ENNReal.ofReal_le_ofReal
    obtain ⟨hzδ, hzK⟩ := hzB w hw
    have hqw := hq w
    have hGw : ‖G w‖ ^ 2 = ‖F (y₀ + N *ᵥ w)‖ ^ 2 *
        Real.exp (-(n : ℝ) * (a ⬝ᵥ (N *ᵥ w) + (N *ᵥ w) ⬝ᵥ (b *ᵥ (N *ᵥ w))).re) := by
      simp only [hGdef]
      rw [norm_mul, Complex.norm_exp, Complex.re_ofReal_mul, mul_pow, sq (Real.exp _),
        ← Real.exp_add]
      congr 2
      ring
    set z := N *ᵥ w with hz
    have hzδ₁ : dist z 0 < δ₁ := by
      rw [dist_zero_right]; exact hzδ.trans_le (min_le_left _ _)
    have hzδ₂ : dist (y₀ + z) y₀ < δ₂ := by
      rw [dist_eq_norm, add_sub_cancel_left]
      exact hzδ.trans_le ((min_le_right _ _).trans (min_le_left _ _))
    have hrem := hδr hzδ₁
    have hρy := hδρ hzδ₂
    simp only [norm_pow, Real.norm_eq_abs, abs_norm] at hrem
    set r := ψ (y₀ + z) - ψ y₀ - (a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)).re -
      (z ⬝ᵥ (hessC ψ y₀ *ᵥ star z)).re with hrdef
    have hr1 : r ≤ t * ‖z‖ ^ 2 := (le_abs_self _).trans hrem
    have hexp : Real.exp (-(n : ℝ) * ψ (y₀ + z)) =
        Real.exp (-(n : ℝ) * (a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)).re) * Real.exp (-(n : ℝ) * ψ y₀) *
          Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2) * Real.exp (-(n : ℝ) * r) := by
      rw [← Real.exp_add, ← Real.exp_add, ← Real.exp_add, ← hqw, hrdef]
      congr 1
      ring
    have hnr : -(t * K) ≤ -(n : ℝ) * r := by
      have : (n : ℝ) * r ≤ t * K := by
        calc (n : ℝ) * r ≤ n * (t * ‖z‖ ^ 2) := by gcongr
          _ = t * (n * ‖z‖ ^ 2) := by ring
          _ ≤ t * K := by gcongr
      linarith
    rw [hexp, hGw, hk]
    set X := ‖F (y₀ + z)‖ ^ 2 * Real.exp (-(n : ℝ) * (a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)).re) *
      Real.exp (-(n : ℝ) * ψ y₀) * Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2) with hX
    have hX0 : 0 ≤ X := by positivity
    calc (1 - t) * ρ₀ * Real.exp (-(n : ℝ) * ψ y₀) * Real.exp (-(t * K)) *
          (‖F (y₀ + z)‖ ^ 2 * Real.exp (-(n : ℝ) * (a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)).re) *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2))
        = X * (Real.exp (-(t * K)) * ((1 - t) * ρ₀)) := by rw [hX]; ring
      _ ≤ X * (Real.exp (-(n : ℝ) * r) * ρ (y₀ + z)) :=
          mul_le_mul_of_nonneg_left (mul_le_mul (Real.exp_le_exp.2 hnr) hρy.le
            (by positivity) (Real.exp_pos _).le) hX0
      _ = ‖F (y₀ + z)‖ ^ 2 * (Real.exp (-(n : ℝ) * (a ⬝ᵥ z + z ⬝ᵥ (b *ᵥ z)).re) *
            Real.exp (-(n : ℝ) * ψ y₀) * Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2) *
            Real.exp (-(n : ℝ) * r)) * ρ (y₀ + z) := by rw [hX]; ring

  have hΦ : MeasurePreserving (fun w : Fin D → ℂ => y₀ + N *ᵥ w) volume volume :=
    (measurePreserving_add_left volume y₀).comp (measurePreserving_mulVec hNdet)
  have hemb : MeasurableEmbedding (fun w : Fin D → ℂ => y₀ + N *ᵥ w) := by
    have hker : LinearMap.ker (Matrix.toLin' N) = ⊥ := LinearMap.ker_eq_bot.2 hNinj
    exact ((Homeomorph.addLeft y₀).isClosedEmbedding.comp
      (LinearMap.isClosedEmbedding_of_injective hker)).measurableEmbedding
  have hint : ENNReal.ofReal (∫ w in B, ‖G w‖ ^ 2 *
        Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) ≤
      ∫⁻ w in B, ENNReal.ofReal (‖G w‖ ^ 2 * Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) := by
    calc _ ≤ ‖∫ w in B, ‖G w‖ ^ 2 * Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)‖ₑ := by
          rw [Real.enorm_eq_ofReal_abs]; exact ENNReal.ofReal_le_ofReal (le_abs_self _)
      _ ≤ ∫⁻ w in B, ‖‖G w‖ ^ 2 * Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)‖ₑ :=
          enorm_integral_le_lintegral_enorm _
      _ = _ := lintegral_congr fun w => Real.enorm_eq_ofReal (by positivity)
  have hmain : ENNReal.ofReal (k * (‖F y₀‖ ^ 2 * ((n : ℝ) ^ D)⁻¹ *
        ∏ j, gaussDiscMass (lam j) R)) ≤
      ∫⁻ y in U, ENNReal.ofReal (‖F y‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y) * ρ y) := by
    calc _ ≤ ENNReal.ofReal (k * ∫ w in B, ‖G w‖ ^ 2 *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) :=
          ENNReal.ofReal_le_ofReal (mul_le_mul_of_nonneg_left hPn hk0)
      _ = ENNReal.ofReal k * ENNReal.ofReal (∫ w in B, ‖G w‖ ^ 2 *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) := ENNReal.ofReal_mul hk0
      _ ≤ ENNReal.ofReal k * ∫⁻ w in B, ENNReal.ofReal (‖G w‖ ^ 2 *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) := by gcongr
      _ = ∫⁻ w in B, ENNReal.ofReal k * ENNReal.ofReal (‖G w‖ ^ 2 *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2)) :=
          (lintegral_const_mul' _ _ ENNReal.ofReal_ne_top).symm
      _ = ∫⁻ w in B, ENNReal.ofReal (k * (‖G w‖ ^ 2 *
            Real.exp (-(n : ℝ) * ∑ j, lam j * ‖w j‖ ^ 2))) :=
          lintegral_congr fun w => (ENNReal.ofReal_mul hk0).symm
      _ ≤ ∫⁻ w in B, ENNReal.ofReal (‖F (y₀ + N *ᵥ w)‖ ^ 2 *
            Real.exp (-(n : ℝ) * ψ (y₀ + N *ᵥ w)) * ρ (y₀ + N *ᵥ w)) :=
          setLIntegral_mono' Metric.isClosed_closedBall.measurableSet hpt
      _ = ∫⁻ y in (fun w : Fin D → ℂ => y₀ + N *ᵥ w) '' B,
            ENNReal.ofReal (‖F y‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y) * ρ y) :=
          hΦ.setLIntegral_comp_emb hemb
            (fun y => ENNReal.ofReal (‖F y‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y) * ρ y)) B
      _ ≤ _ := lintegral_mono_set (image_subset_iff.2 hΦU)

  have hkey : 1 ≤ (Λ / ρ₀ + ε) *
      ((1 - t) * ρ₀ * Real.exp (-(t * K)) * ∏ j, gaussDiscMass (lam j) R) := by
    have e1 : Real.exp (t * K) * g < (Λ + ε * ρ₀) * (1 - t) := by
      rw [div_mul_eq_mul_div, div_lt_iff₀ h1t] at htlt
      exact htlt
    have e2 : Real.exp (t * K) < (Λ + ε * ρ₀) * (1 - t) * ∏ j, gaussDiscMass (lam j) R := by
      have := mul_lt_mul_of_pos_right e1 hIpos
      rwa [mul_assoc, hgI, mul_one] at this
    have e3 : (Λ / ρ₀ + ε) * ρ₀ = Λ + ε * ρ₀ := by field_simp
    have e4 : Real.exp (t * K) * Real.exp (-(t * K)) = 1 := by
      rw [← Real.exp_add]; simp
    calc (1 : ℝ) = Real.exp (t * K) * Real.exp (-(t * K)) := e4.symm
      _ ≤ ((Λ + ε * ρ₀) * (1 - t) * ∏ j, gaussDiscMass (lam j) R) * Real.exp (-(t * K)) :=
          mul_le_mul_of_nonneg_right e2.le (Real.exp_pos _).le
      _ = (Λ / ρ₀ + ε) * ((1 - t) * ρ₀ * Real.exp (-(t * K)) * ∏ j, gaussDiscMass (lam j) R) := by
          rw [← e3]; ring
  have hKc : 0 ≤ (Λ / ρ₀ + ε) * (n : ℝ) ^ D :=
    mul_nonneg (add_nonneg (div_nonneg hΛ0 hρ0.le) hε.le) (by positivity)
  calc ENNReal.ofReal (‖F y₀‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y₀))
      ≤ ENNReal.ofReal ((Λ / ρ₀ + ε) * (n : ℝ) ^ D) *
          ENNReal.ofReal (k * (‖F y₀‖ ^ 2 * ((n : ℝ) ^ D)⁻¹ * ∏ j, gaussDiscMass (lam j) R)) := by
        rw [← ENNReal.ofReal_mul hKc]
        apply ENNReal.ofReal_le_ofReal
        have hnD : (n : ℝ) ^ D * ((n : ℝ) ^ D)⁻¹ = 1 := mul_inv_cancel₀ (by positivity)
        calc ‖F y₀‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y₀)
            = ‖F y₀‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y₀) * 1 := (mul_one _).symm
          _ ≤ ‖F y₀‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y₀) * ((Λ / ρ₀ + ε) *
              ((1 - t) * ρ₀ * Real.exp (-(t * K)) * ∏ j, gaussDiscMass (lam j) R)) :=
            mul_le_mul_of_nonneg_left hkey (by positivity)
          _ = (Λ / ρ₀ + ε) * (n : ℝ) ^ D *
              (k * (‖F y₀‖ ^ 2 * ((n : ℝ) ^ D)⁻¹ * ∏ j, gaussDiscMass (lam j) R)) := by
            rw [hk]
            linear_combination (-(‖F y₀‖ ^ 2 * Real.exp (-(n : ℝ) * ψ y₀) * ((Λ / ρ₀ + ε) *
              ((1 - t) * ρ₀ * Real.exp (-(t * K)) * ∏ j, gaussDiscMass (lam j) R)))) * hnD
    _ ≤ _ := by gcongr

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartBergmanBound =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PComplexTaylorTwo =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PComplexTaylorTwo", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsComplexTaylor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.FDeriv.Symmetric\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open Filter Topology Asymptotics ReciprocityTheory.AnForm Matrix Metric

noncomputable section

theorem taylor_two_isLittleO {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : E → ℝ} {x : E} (hf : ContDiffAt ℝ 2 f x) :
    (fun z => f (x + z) - f x - fderiv ℝ f x z - fderiv ℝ (fderiv ℝ f) x z z / 2)
      =o[𝓝 0] fun z => ‖z‖ ^ 2 := by
  set L := fderiv ℝ f x
  set H := fderiv ℝ (fderiv ℝ f) x with hHdef
  have hsymm : IsSymmSndFDerivAt ℝ f x := hf.isSymmSndFDerivAt (by simp)
  have hH : HasFDerivAt (fderiv ℝ f) H x :=
    ((hf.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)).hasFDerivAt
  have ho := hasFDerivAt_iff_isLittleO_nhds_zero.1 hH
  have htend : Tendsto (fun z : E => x + z) (𝓝 0) (𝓝 x) := by
    have : Continuous fun z : E => x + z := continuous_const.add continuous_id
    simpa using this.tendsto (0 : E)
  have hdiff : ∀ᶠ z in 𝓝 (0 : E), DifferentiableAt ℝ f (x + z) :=
    htend.eventually ((hf.eventually (by simp)).mono fun y hy => hy.differentiableAt (by simp))
  refine isLittleO_iff.2 fun ε hε => ?_
  have hb := (isLittleO_iff.1 ho hε).and hdiff
  obtain ⟨δ, hδ, hball⟩ := Metric.eventually_nhds_iff_ball.1 hb
  filter_upwards [ball_mem_nhds (0 : E) hδ] with z hz
  set g : E → ℝ := fun w => f (x + w) - f x - L w - (2 : ℝ)⁻¹ • H w w with hg
  have hderiv : ∀ w ∈ ball (0 : E) δ, HasFDerivAt g (fderiv ℝ f (x + w) - L - H w) w := by
    intro w hw
    have h1 : HasFDerivAt (fun w => f (x + w)) ((fderiv ℝ f (x + w)).comp
        (ContinuousLinearMap.id ℝ E)) w :=
      (hball w hw).2.hasFDerivAt.comp w ((hasFDerivAt_id w).const_add x)
    have h2 : HasFDerivAt (fun w => H w w) ((H w).comp (ContinuousLinearMap.id ℝ E) + H.flip w) w :=
      H.hasFDerivAt.clm_apply (hasFDerivAt_id w)
    have h3 := ((h1.sub_const (f x)).sub L.hasFDerivAt).sub (h2.const_smul (2 : ℝ)⁻¹)
    refine h3.congr_fderiv ?_
    ext v
    simp only [_root_.sub_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.id_apply, _root_.smul_apply, _root_.add_apply,
      ContinuousLinearMap.flip_apply, smul_eq_mul]
    have := hsymm v w
    rw [← hHdef] at this
    rw [this]
    ring
  have hz' : ‖z‖ < δ := by simpa using hz
  have hsub : closedBall (0 : E) ‖z‖ ⊆ ball 0 δ := closedBall_subset_ball hz'
  have hbound : ∀ w ∈ closedBall (0 : E) ‖z‖, ‖fderiv ℝ f (x + w) - L - H w‖ ≤ ε * ‖z‖ := by
    intro w hw
    have hw' := (hball w (hsub hw)).1
    have hwz : ‖w‖ ≤ ‖z‖ := by simpa using hw
    calc ‖fderiv ℝ f (x + w) - L - H w‖ ≤ ε * ‖w‖ := hw'
      _ ≤ ε * ‖z‖ := by gcongr
  have hz0 : z ∈ closedBall (0 : E) ‖z‖ := by simp
  have hmvt := (convex_closedBall (0 : E) ‖z‖).norm_image_sub_le_of_norm_hasFDerivWithin_le
    (fun w hw => (hderiv w (hsub hw)).hasFDerivWithinAt) hbound
    (mem_closedBall_self (norm_nonneg z)) hz0
  have hg0 : g 0 = 0 := by simp [hg]
  rw [hg0, sub_zero, sub_zero] at hmvt
  have : g z = f (x + z) - f x - L z - H z z / 2 := by
    simp only [hg, smul_eq_mul]; ring
  rw [← this, norm_pow, norm_norm]
  calc ‖g z‖ ≤ ε * ‖z‖ * ‖z‖ := hmvt
    _ = ε * ‖z‖ ^ 2 := by ring

def complexLinearCoeffs {D : ℕ} (L : (Fin D → ℂ) →L[ℝ] ℝ) : Fin D → ℂ :=
  fun j => (L (Pi.single j 1) : ℂ) - Complex.I * (L (Complex.I • Pi.single j 1) : ℂ)

theorem re_complexLinearCoeffs_dot {D : ℕ} (L : (Fin D → ℂ) →L[ℝ] ℝ) (z : Fin D → ℂ) :
    (complexLinearCoeffs L ⬝ᵥ z).re = L z := by
  have hz : z = ∑ j, ((z j).re • (Pi.single j 1 : Fin D → ℂ) +
      (z j).im • (Complex.I • (Pi.single j 1 : Fin D → ℂ))) := by
    ext k
    apply Complex.ext <;> simp [Finset.sum_apply, Pi.single_apply, Finset.sum_add_distrib]
  conv_rhs => rw [hz]

  simp only [map_sum, map_add (f := _), map_smul, dotProduct, Complex.re_sum, smul_eq_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  simp only [complexLinearCoeffs, Complex.mul_re, Complex.sub_re, Complex.sub_im, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
  ring

def complexQuadMatrix {D : ℕ} (H : (Fin D → ℂ) →L[ℝ] (Fin D → ℂ) →L[ℝ] ℝ) :
    Matrix (Fin D) (Fin D) ℂ :=
  fun j k =>
    let ej : Fin D → ℂ := Pi.single j 1
    let ek : Fin D → ℂ := Pi.single k 1
    ((H ej ek - H (Complex.I • ej) (Complex.I • ek) : ℝ) -
      Complex.I * ((H ej (Complex.I • ek) + H (Complex.I • ej) ek : ℝ))) / 4

theorem re_dot_complexQuadMatrix {D : ℕ} (H : (Fin D → ℂ) →L[ℝ] (Fin D → ℂ) →L[ℝ] ℝ)
    (z : Fin D → ℂ) :
    (z ⬝ᵥ (complexQuadMatrix H *ᵥ z)).re = (H z z - H (Complex.I • z) (Complex.I • z)) / 4 := by
  obtain ⟨c, hc⟩ : ∃ c : Fin D → (Fin D → ℂ), c = fun j => (z j).re • (Pi.single j 1 : Fin D → ℂ) +
      (z j).im • (Complex.I • (Pi.single j 1 : Fin D → ℂ)) := ⟨_, rfl⟩
  obtain ⟨d, hd⟩ : ∃ d : Fin D → (Fin D → ℂ), d = fun j =>
      (z j).re • (Complex.I • (Pi.single j 1 : Fin D → ℂ)) +
      (-(z j).im) • (Pi.single j 1 : Fin D → ℂ) := ⟨_, rfl⟩
  have hz : z = ∑ j, c j := by
    rw [hc]; ext k
    apply Complex.ext <;> simp [Finset.sum_apply, Pi.single_apply, Finset.sum_add_distrib]
  have hIz : Complex.I • z = ∑ j, d j := by
    rw [hd]; ext k
    apply Complex.ext <;> simp [Finset.sum_apply, Pi.single_apply, Finset.sum_add_distrib]
  have expand : ∀ c : Fin D → (Fin D → ℂ),
      H (Finset.sum Finset.univ c) (Finset.sum Finset.univ c) = ∑ i, ∑ k, H (c i) (c k) := by
    intro c

    simp only [map_sum, _root_.sum_apply]
    rw [Finset.sum_comm]
  have e1 : H z z = ∑ i, ∑ k, H (c i) (c k) := by
    calc H z z = H (∑ j, c j) (∑ j, c j) := by rw [← hz]
      _ = _ := expand c
  have e2 : H (Complex.I • z) (Complex.I • z) = ∑ i, ∑ k, H (d i) (d k) := by
    rw [hIz]; exact expand d
  have hR : (z ⬝ᵥ (complexQuadMatrix H *ᵥ z)).re =
      ∑ i, ∑ k, (z i * (complexQuadMatrix H i k * z k)).re := by
    simp only [dotProduct, Matrix.mulVec, Finset.mul_sum, Complex.re_sum]
  rw [hR, e1, e2, ← Finset.sum_sub_distrib, Finset.sum_div]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← Finset.sum_sub_distrib, Finset.sum_div]
  refine Finset.sum_congr rfl fun k _ => ?_
  subst hc hd
  simp only [map_add (f := _), map_smul, _root_.add_apply, _root_.smul_apply, smul_eq_mul]
  simp only [complexQuadMatrix, Complex.mul_re, Complex.mul_im, Complex.div_ofNat_re,
    Complex.div_ofNat_im, Complex.sub_re, Complex.sub_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im]
  ring

theorem ComplexTaylorTwo.proof : ComplexTaylorTwo.Statement := by
  intro D ψ y₀ hψ
  refine ⟨complexLinearCoeffs (fderiv ℝ ψ y₀), complexQuadMatrix (fderiv ℝ (fderiv ℝ ψ) y₀), ?_⟩
  refine (taylor_two_isLittleO hψ).congr_left fun z => ?_
  have h1 := re_complexLinearCoeffs_dot (fderiv ℝ ψ y₀) z
  have h2 := re_dot_complexQuadMatrix (fderiv ℝ (fderiv ℝ ψ) y₀) z
  have h3 := ReciprocityTheory.AnForm.M.re_star_dot_hessC ψ y₀ (star z)
  rw [star_star] at h3
  rw [Complex.add_re, h1, h2, h3]
  unfold levi
  ring

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PComplexTaylorTwo =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalBergmanBound =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalBergmanBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsChartBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.BergmanNorms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MeasureTheory Set Filter Topology ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M
open scoped ContDiff

noncomputable section

variable {D : ℕ} {X : Type} [TopologicalSpace X] {A : FinHolAtlas D X} {L : HolLineBundle A}

lemma mem_source_chartIdx (A : FinHolAtlas D X) (x : X) : x ∈ (A.chart (chartIdx A x)).source :=
  Classical.choose_spec (A.cover x)

lemma target_inter_symm_source (A : FinHolAtlas D X) (j : Fin A.n) :
    (A.chart j).target ∩ (A.chart j).symm ⁻¹' (A.chart j).source = (A.chart j).target :=
  inter_eq_left.2 fun _ hy => (A.chart j).map_target hy

theorem LocalBergmanBound.proof (hC : ChartBergmanBound.Statement) :
    LocalBergmanBound.Statement := by
  intro D X _ _ _ _ _ A L W dV hW V _ hV x ε hε
  have := dV.isProb
  set k := chartIdx A x with hk
  set e := A.chart k with he
  have hx : x ∈ e.source := mem_source_chartIdx A x
  have hy0 : e x ∈ e.target := e.map_source hx
  have hψ : ContDiffOn ℝ ∞ (W.φ k ∘ e.symm) e.target := by
    have := W.smooth k k
    rwa [target_inter_symm_source] at this
  have hmain := hC D e.target (W.φ k ∘ e.symm) (dV.dens k) (e x) e.open_target hy0
    (hψ.of_le (WithTop.coe_le_coe.2 le_top)) ((dV.smooth k).continuousOn) (dV.pos k _ hy0)
    (fun w => hW k (e x) hy0 w) ε hε
  have hb : bergmanDens W dV x =
      (((1 / Real.pi : ℝ) : ℂ) • hessC (W.φ k ∘ e.symm) (e x)).det.re / dV.dens k (e x) := by
    have hD : (D.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero D)
    exact mul_div_mul_left _ _ hD
  filter_upwards [hmain] with n hn
  rw [← hb] at hn
  set K := (bergmanDens W dV x + ε) * (n : ℝ) ^ D with hK

  have hKpos : 0 < K := by
    by_contra hle
    have h1 := hn (fun _ => 1) analyticOnNhd_const
    rw [ENNReal.ofReal_of_nonpos (not_lt.1 hle), zero_mul, nonpos_iff_eq_zero,
      ENNReal.ofReal_eq_zero] at h1
    have : 0 < ‖(1 : ℂ)‖ ^ 2 * Real.exp (-(n : ℝ) * (W.φ k ∘ e.symm) (e x)) := by
      simp [Real.exp_pos]
    linarith
  refine ciSup_le fun s => ?_
  have hs : (s : Fin A.n → X → ℂ) ∈ L.sections n := hV n s.2
  have hcont := continuous_ptNormSq W hs
  have hnn : ∀ z, 0 ≤ ptNormSq W n s z := ptNormSq_nonneg W n s
  have hint : Integrable (ptNormSq W n s) dV.μ := integrable_ptNormSq W dV hs
  have hl2 : 0 ≤ sectionL2NormSq W dV n s := sectionL2NormSq_nonneg W dV n s

  have hF : AnalyticOnNhd ℂ ((s : Fin A.n → X → ℂ) k ∘ e.symm) e.target := by
    have := hs.1 k k
    rwa [target_inter_symm_source] at this
  have h1 := hn _ hF
  have hleft : ‖((s : Fin A.n → X → ℂ) k ∘ e.symm) (e x)‖ ^ 2 *
      Real.exp (-(n : ℝ) * (W.φ k ∘ e.symm) (e x)) = ptNormSq W n s x := by
    simp only [Function.comp, e.left_inv hx]
    rfl
  have hright : ∫⁻ y in e.target, ENNReal.ofReal (‖((s : Fin A.n → X → ℂ) k ∘ e.symm) y‖ ^ 2 *
      Real.exp (-(n : ℝ) * (W.φ k ∘ e.symm) y) * dV.dens k y) ≤
        ENNReal.ofReal (sectionL2NormSq W dV n s) := by
    have hmeas : Measurable fun z => ENNReal.ofReal (ptNormSq W n s z) :=
      hcont.measurable.ennreal_ofReal
    calc _ = ∫⁻ y in e.target, ENNReal.ofReal (ptNormSq W n s (e.symm y)) *
          ENNReal.ofReal (dV.dens k y) := by
          refine setLIntegral_congr_fun e.open_target.measurableSet fun y hy => ?_
          rw [← ENNReal.ofReal_mul (hnn _), ptNormSq_eq_of_mem W hs k (e.map_target hy)]
          rfl
      _ = ∫⁻ z in e.source, ENNReal.ofReal (ptNormSq W n s z) ∂dV.μ :=
          (dV.chart_lintegral k _ hmeas).symm
      _ ≤ ∫⁻ z, ENNReal.ofReal (ptNormSq W n s z) ∂dV.μ := setLIntegral_le_lintegral _ _
      _ = ENNReal.ofReal (sectionL2NormSq W dV n s) :=
          (ofReal_integral_eq_lintegral_ofReal hint (Eventually.of_forall hnn)).symm
  rw [hleft] at h1
  have h2 : ENNReal.ofReal (ptNormSq W n s x) ≤ ENNReal.ofReal (K * sectionL2NormSq W dV n s) := by
    rw [ENNReal.ofReal_mul hKpos.le]
    exact h1.trans (by gcongr)
  have h3 : ptNormSq W n s x ≤ K * sectionL2NormSq W dV n s :=
    (ENNReal.ofReal_le_ofReal_iff (mul_nonneg hKpos.le hl2)).1 h2
  rcases hl2.eq_or_lt with h0 | hpos
  · rw [← h0, div_zero]; exact hKpos.le
  · exact (div_le_iff₀ hpos).2 h3

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalBergmanBound =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.BergmanLerpSelf =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.BergmanLerpSelf", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergmanIntegrable\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBergmanDensIntegrable\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.BergmanNorms\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ImportsBis\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBergmanDensIntegrable\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBergmanIntegrable\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartBergmanBound\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChartTaylorCover\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PComplexTaylorTwo\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PIntegralOfBergman\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalBergmanBound\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PPolydiscSubmean\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PUniformBergmanBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MeasureTheory Set Filter Topology ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M

noncomputable section

lemma bergman_lerp_self {D : ℕ} {X : Type} [TopologicalSpace X] [MeasurableSpace X]
    {A : FinHolAtlas D X} {L : HolLineBundle A} (W : Weight L) (t : ℝ) (dV : SmoothVolume A)
    (V : Submodule ℂ (Fin A.n → X → ℂ)) (n : ℕ) (x : X) :
    bergman (W.lerp W t) dV V n x = bergman W dV V n x := by
  simp only [bergman, sectionL2NormSq, ptNormSq, lerp_self_φ]

lemma bergman_nonneg {D : ℕ} {X : Type} [TopologicalSpace X] [MeasurableSpace X]
    {A : FinHolAtlas D X} {L : HolLineBundle A} (W : Weight L) (dV : SmoothVolume A)
    (V : Submodule ℂ (Fin A.n → X → ℂ)) (n : ℕ) (x : X) : 0 ≤ bergman W dV V n x :=
  Real.iSup_nonneg fun _ => div_nonneg (ptNormSq_nonneg W n _ x) (sectionL2NormSq_nonneg W dV n _)

theorem BergmanL1Convergence.proof (hL1 : L1Convergence.Statement)
    (hLoc : LocalBergmanBound.Statement) (hUnif : UniformBergmanBound.Statement)
    (hInt : IntegralOfBergman.Statement) (hBI : BergmanIntegrable.Statement)
    (hDI : BergmanDensIntegrable.Statement) : BergmanL1Convergence.Statement := by
  intro D X _ _ _ _ _ A L W dV hW V _ hV hdim
  have := dV.isProb
  obtain ⟨C, hC⟩ := hUnif A L W W dV hW hW
  have hpos : ∀ n : ℕ, (0 : ℝ) < ((n + 1 : ℕ) : ℝ) ^ D := fun n => by positivity
  set g : ℕ → X → ℝ := fun n x =>
    (((n + 1 : ℕ) : ℝ) ^ D)⁻¹ * bergman W dV (V (n + 1)) (n + 1) x with hg
  have hbound : ∀ n x, 0 ≤ g n x ∧ g n x ≤ C := fun n x => by
    refine ⟨mul_nonneg (inv_nonneg.2 (hpos n).le) (bergman_nonneg _ _ _ _ _), ?_⟩
    have h := hC (n + 1) (by omega) 0 ⟨le_rfl, zero_le_one⟩ (V (n + 1)) (hV _) x
    rw [bergman_lerp_self] at h
    show (((n + 1 : ℕ) : ℝ) ^ D)⁻¹ * bergman W dV (V (n + 1)) (n + 1) x ≤ C
    rw [inv_mul_le_iff₀ (hpos n)]
    linarith [mul_comm C (((n + 1 : ℕ) : ℝ) ^ D)]
  have hlim : ∀ (x : X) (ε : ℝ), 0 < ε → ∀ᶠ n in atTop, g n x ≤ bergmanDens W dV x + ε := by
    intro x ε hε
    have h := (tendsto_add_atTop_nat 1).eventually (hLoc A L W dV hW V hV x ε hε)
    filter_upwards [h] with n hn
    show (((n + 1 : ℕ) : ℝ) ^ D)⁻¹ * bergman W dV (V (n + 1)) (n + 1) x ≤ _
    rw [inv_mul_le_iff₀ (hpos n)]
    linarith [mul_comm (bergmanDens W dV x + ε) (((n + 1 : ℕ) : ℝ) ^ D)]
  have hmass : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ n in atTop, ∫ x, bergmanDens W dV x ∂dV.μ - ε ≤ ∫ x, g n x ∂dV.μ := by
    intro ε hε
    have h := (tendsto_add_atTop_nat 1).eventually (hdim ε hε)
    filter_upwards [h] with n hn
    have hI : ∫ x, g n x ∂dV.μ =
        (((n + 1 : ℕ) : ℝ) ^ D)⁻¹ * Module.finrank ℂ (V (n + 1)) := by
      rw [hg, integral_const_mul, hInt A L W dV (n + 1) (V (n + 1)) (hV _)]
    rw [hI, le_inv_mul_iff₀ (hpos n)]
    linarith [mul_comm (∫ x, bergmanDens W dV x ∂dV.μ - ε) (((n + 1 : ℕ) : ℝ) ^ D)]
  have hgi : ∀ n, Integrable (g n) dV.μ := fun n =>
    (hBI A L W dV (n + 1) (V (n + 1)) (hV _)).const_mul _
  have h := hL1 dV.μ g (bergmanDens W dV) C hgi (hDI A L W dV) hbound hlim hmass
  exact (tendsto_add_atTop_iff_nat 1).1 h

theorem BergmanL1Convergence.full : BergmanL1Convergence.Statement :=
  BergmanL1Convergence.proof L1Convergence.proof
    (LocalBergmanBound.proof (ChartBergmanBound.proof PolydiscSubmean.proof ComplexTaylorTwo.proof))
    (UniformBergmanBound.proof PolydiscSubmean.proof ChartTaylorCover.proof)
    IntegralOfBergman.proof BergmanIntegrable.proof BergmanDensIntegrable.proof

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.BergmanLerpSelf =====
