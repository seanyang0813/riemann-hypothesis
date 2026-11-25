module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.FDeriv.Defs
public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.Analysis.Matrix.Hermitian
public import Mathlib.Analysis.Analytic.IsolatedZeros
public import Mathlib.Analysis.Complex.CauchyIntegral
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousConjProjection
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiP
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivGA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.Deriv.Shift
public import Mathlib.Analysis.Calculus.ParametricIntegral
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiFacts
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.Analysis.Calculus.Deriv.ZPow
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmA
public import Mathlib.Analysis.Calculus.FDeriv.Mul
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFactsA
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiCasA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmB, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRightA, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ByParts, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivG, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiM, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiPart, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.TauPart, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.LowMinusUpExpand, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRight, ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PsMInfNhd

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmB", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Hermitian\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Analytic.IsolatedZeros\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped ComplexOrder

namespace ReciprocityTheory.ChartRestriction.DS.S7

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

namespace IdB

lemma quad_norm_le (H : Matrix (Fin n) (Fin n) ℂ) (v : Fin n → ℂ) :
    ‖star v ⬝ᵥ (H *ᵥ v)‖ ≤ (n : ℝ) * n * (‖v‖ * ‖H‖ * ‖v‖) := by
  have hvi : ∀ i, ‖v i‖ ≤ ‖v‖ := fun i => norm_le_pi_norm v i
  have hH : ∀ i j, ‖H i j‖ ≤ ‖H‖ := fun i j => norm_entry_le_entrywise_sup_norm H
  have key : ∀ i, ‖star (v i) * ∑ j, H i j * v j‖ ≤ ∑ _j : Fin n, ‖v‖ * ‖H‖ * ‖v‖ := by
    intro i
    rw [norm_mul, norm_star]
    refine (mul_le_mul_of_nonneg_left (norm_sum_le _ _) (norm_nonneg _)).trans ?_
    rw [Finset.mul_sum]
    refine Finset.sum_le_sum fun j _ => ?_
    rw [norm_mul]
    have h1 := mul_le_mul (hH i j) (hvi j) (norm_nonneg _) (norm_nonneg _)
    calc ‖v i‖ * (‖H i j‖ * ‖v j‖) ≤ ‖v‖ * (‖H‖ * ‖v‖) :=
          mul_le_mul (hvi i) h1 (by positivity) (norm_nonneg _)
      _ = ‖v‖ * ‖H‖ * ‖v‖ := by ring
  have e : star v ⬝ᵥ (H *ᵥ v) = ∑ i, star (v i) * ∑ j, H i j * v j := by
    simp only [dotProduct, mulVec, Pi.star_apply]
  rw [e]
  refine (norm_sum_le _ _).trans ((Finset.sum_le_sum fun i _ => key i).trans (le_of_eq ?_))
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  ring

lemma quad_scale (x : Matrix (Fin n) (Fin n) ℂ) (v : Fin n → ℂ) (t : ℝ) :
    (star ((t : ℂ) • v) ⬝ᵥ (x *ᵥ ((t : ℂ) • v))).re = t ^ 2 * (star v ⬝ᵥ (x *ᵥ v)).re := by
  rw [star_smul, Matrix.mulVec_smul, dotProduct_smul, smul_dotProduct, smul_eq_mul, smul_eq_mul,
    ← mul_assoc]
  have : (t : ℂ) * star (t : ℂ) = ((t ^ 2 : ℝ) : ℂ) := by
    rw [Complex.star_def, Complex.conj_ofReal]; push_cast; ring
  rw [this, Complex.re_ofReal_mul]

lemma quad_lower {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) :
    ∃ c > 0, ∀ v : Fin n → ℂ, c * ‖v‖ ^ 2 ≤ (star v ⬝ᵥ (x *ᵥ v)).re := by
  have hq : Continuous fun v : Fin n → ℂ => (star v ⬝ᵥ (x *ᵥ v)).re :=
    Complex.continuous_re.comp (continuous_id.star.dotProduct (continuous_const.matrix_mulVec continuous_id))
  have hpos : ∀ v : Fin n → ℂ, v ≠ 0 → 0 < (star v ⬝ᵥ (x *ᵥ v)).re := fun v hv => by
    have h := (Complex.lt_def.mp (hx.dotProduct_mulVec_pos hv)).1
    simpa using h
  have hnorm : ∀ v : Fin n → ℂ, v ≠ 0 → ‖((‖v‖⁻¹ : ℝ) : ℂ) • v‖ = 1 := fun v hv => by
    rw [norm_smul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity),
      inv_mul_cancel₀ (norm_ne_zero_iff.mpr hv)]
  have hback : ∀ v : Fin n → ℂ, v ≠ 0 → ((‖v‖ : ℝ) : ℂ) • (((‖v‖⁻¹ : ℝ) : ℂ) • v) = v := fun v hv => by
    rw [smul_smul, ← Complex.ofReal_mul, mul_inv_cancel₀ (norm_ne_zero_iff.mpr hv), Complex.ofReal_one,
      one_smul]
  by_cases hS : ∃ u : Fin n → ℂ, ‖u‖ = 1
  · obtain ⟨u, hu⟩ := hS
    have hne : (Metric.sphere (0 : Fin n → ℂ) 1).Nonempty := ⟨u, by simpa using hu⟩
    obtain ⟨u0, hu0, hmin⟩ := (isCompact_sphere (0 : Fin n → ℂ) 1).exists_isMinOn hne hq.continuousOn
    have hu0n : ‖u0‖ = 1 := by simpa using hu0
    have hu00 : u0 ≠ 0 := by
      intro h
      rw [h, norm_zero] at hu0n
      exact zero_ne_one hu0n
    refine ⟨_, hpos u0 hu00, fun v => ?_⟩
    by_cases hv : v = 0
    · subst hv
      simp
    · set u := ((‖v‖⁻¹ : ℝ) : ℂ) • v
      have hum : u ∈ Metric.sphere (0 : Fin n → ℂ) 1 := by
        rw [mem_sphere_zero_iff_norm]
        exact hnorm v hv
      have h1 := hmin hum
      rw [← hback v hv, quad_scale]
      have : ‖((‖v‖ : ℝ) : ℂ) • u‖ = ‖v‖ := by rw [hback v hv]
      rw [this, mul_comm]
      exact mul_le_mul_of_nonneg_left h1 (by positivity)
  · refine ⟨1, one_pos, fun v => ?_⟩
    by_cases hv : v = 0
    · subst hv
      simp
    · exact absurd ⟨_, hnorm v hv⟩ hS

theorem posDef_nhd {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) :
    ∃ δ > 0, ∀ H : Matrix (Fin n) (Fin n) ℂ, H.IsHermitian → ‖H‖ < δ → (x + H).PosDef := by
  obtain ⟨c, hc, hq⟩ := quad_lower hx
  refine ⟨c / ((n : ℝ) * n + 1), by positivity, fun H hH hHn => ?_⟩
  rw [posDef_iff_dotProduct_mulVec]
  refine ⟨hx.isHermitian.add hH, fun v hv => ?_⟩
  rw [Complex.lt_def]
  have him := (hx.isHermitian.add hH).im_star_dotProduct_mulVec_self v
  have e : star v ⬝ᵥ ((x + H) *ᵥ v) = star v ⬝ᵥ (x *ᵥ v) + star v ⬝ᵥ (H *ᵥ v) := by
    rw [add_mulVec, dotProduct_add]
  refine ⟨?_, ?_⟩
  · rw [e, Complex.add_re, Complex.zero_re]
    have h1 := hq v
    have h2 := quad_norm_le H v
    have h3 : -‖star v ⬝ᵥ (H *ᵥ v)‖ ≤ (star v ⬝ᵥ (H *ᵥ v)).re := by
      have := Complex.abs_re_le_norm (star v ⬝ᵥ (H *ᵥ v))
      linarith [neg_abs_le (star v ⬝ᵥ (H *ᵥ v)).re]
    have hv2 : 0 < ‖v‖ ^ 2 := by have := norm_pos_iff.mpr hv; positivity
    have hN : (0 : ℝ) ≤ (n : ℝ) * n := by positivity
    have hHpos : 0 ≤ ‖H‖ := norm_nonneg _
    have hδ : ((n : ℝ) * n + 1) * ‖H‖ < c := by
      rw [lt_div_iff₀ (by positivity)] at hHn
      linarith
    have h4 : 0 < (c - (n : ℝ) * n * ‖H‖) * ‖v‖ ^ 2 := mul_pos (by nlinarith) hv2
    nlinarith
  · rw [Complex.zero_im]
    simpa using him.symm

theorem line_zero {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F] (g : ℂ → F)
    (hg : ∀ s : ℂ, ‖s‖ < 2 → DifferentiableAt ℂ g s) (hr : ∀ t : ℝ, |t| < 2 → g t = 0) :
    g Complex.I = 0 := by
  have hDO : DifferentiableOn ℂ g (Metric.ball 0 2) := fun s hs =>
    (hg s (by simpa using hs)).differentiableWithinAt
  have han := hDO.analyticOnNhd Metric.isOpen_ball
  have ht : Filter.Tendsto (fun t : ℝ => (t : ℂ)) (nhdsWithin 0 {0}ᶜ) (nhdsWithin 0 {0}ᶜ) := by
    refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ ?_ ?_
    · simpa using (Complex.continuous_ofReal.tendsto 0).mono_left nhdsWithin_le_nhds
    · exact eventually_nhdsWithin_of_forall fun t ht => by simpa using ht
  have hev : ∀ᶠ t : ℝ in nhdsWithin (0 : ℝ) {0}ᶜ, g (t : ℂ) = 0 := by
    have h2 : ∀ᶠ t in nhds (0 : ℝ), |t| < 2 := by
      filter_upwards [Metric.ball_mem_nhds (0 : ℝ) two_pos] with t ht
      simpa [Real.dist_eq] using ht
    exact (Filter.Eventually.filter_mono nhdsWithin_le_nhds h2).mono fun t h => hr t h
  have hfreq : ∃ᶠ s in nhdsWithin (0 : ℂ) {0}ᶜ, g s = 0 := ht.frequently hev.frequently
  have hz := han.eqOn_zero_of_preconnected_of_frequently_eq_zero (convex_ball (0 : ℂ) 2).isPreconnected
    (Metric.mem_ball_self two_pos) hfreq
  have hI : Complex.I ∈ Metric.ball (0 : ℂ) 2 := by
    rw [Metric.mem_ball, dist_zero_right, Complex.norm_I]
    norm_num
  simpa using hz hI

end IdB

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRightA =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRightA", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousConjProjection\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiP\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivGA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ} {ε : Fin n → Bool} {Λ : Fin n → ℝ}

lemma infR_hasFDerivAt (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) :
    HasFDerivAt (psM T μ) (fderiv ℂ (psM T μ) x) x := by
  haveI : CompactSpace (KG ε) := compactSpace_KG ε
  have hU : x ∈ Ps1.Uset ε := by
    intro k
    have hk : toMK k⁻¹ = (toMK k)ᴴ := Ps1.toMK_inv_eq k
    have hinv : toMK k⁻¹ * toMK k = 1 := by
      unfold toMK toM
      simp
    have hinj : Function.Injective (toMK k).mulVec := by
      intro v w hvw
      have := congrArg (toMK k⁻¹).mulVec hvw
      simpa [Matrix.mulVec_mulVec, hinv] using this
    have hpd : (toMK k⁻¹ * x * toMK k).PosDef := by
      rw [hk]
      exact hx.conjTranspose_mul_mul_same hinj
    intro i
    unfold lead
    rw [dite_eq_left (by omega)]
    exact ((hpd.submatrix (Fin.castLE_injective _)).det_pos).ne'
  exact (Ps1.hasFDerivAt_psM T μ hU).differentiableAt.hasFDerivAt

lemma infR_conj (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef)
    {A : Matrix (Fin n) (Fin n) ℂ} (hA : inK ε A) :
    fderiv ℂ (psM T μ) x (x * A - A * x) = psM T μ x * T.dτ A - T.dτ A * psM T μ x := by
  obtain ⟨γ, -, hγ, hγm⟩ := exists_oneParam ε hA
  have h0 : γ 0 = 1 := by simpa using hγm 0 0
  have hinv : ∀ t, (γ (-t))⁻¹ = γ t := fun t =>
    inv_eq_of_mul_eq_one_right (by rw [← hγm, neg_add_cancel, h0])

  have heq : ∀ t : ℝ, psM T μ (NormedSpace.exp (-((t : ℂ) • A)) * x * NormedSpace.exp ((t : ℂ) • A))
      = T.op (γ (-t)) * psM T μ x * T.op (γ t) := by
    intro t
    have h1 := psM_conj T μ (γ (-t)) x
    rw [hinv, hγ, hγ] at h1
    simpa [Complex.ofReal_neg, neg_smul] using h1

  have hL : HasDerivAt (fun t : ℝ => psM T μ (NormedSpace.exp (-((t : ℂ) • A)) * x *
      NormedSpace.exp ((t : ℂ) • A))) (fderiv ℂ (psM T μ) x (x * A - A * x)) 0 := by
    have hc := dga_path A x
    have hψ := infR_hasFDerivAt T μ hx
    exact (hψ.restrictScalars ℝ).comp_hasDerivAt_of_eq (0 : ℝ) hc (by simp)

  have hR1 := T.hasDeriv A hA γ hγ
  have hR1' : HasDerivAt (fun t => ((T.τ (γ t) : unitary (T.V →L[ℂ] T.V)) : T.V →L[ℂ] T.V))
      (T.dτ A) (-(0 : ℝ)) := by
    rw [neg_zero]
    exact hR1
  have hR2 := hR1'.scomp (0 : ℝ) (hasDerivAt_neg (0 : ℝ))
  have hR := (hR2.mul (hasDerivAt_const (0 : ℝ) (psM T μ x))).mul hR1
  have hL' : HasDerivAt (fun t : ℝ => ((T.τ (γ (-t)) : unitary (T.V →L[ℂ] T.V)) : T.V →L[ℂ] T.V) *
      psM T μ x * ((T.τ (γ t) : unitary (T.V →L[ℂ] T.V)) : T.V →L[ℂ] T.V))
      (fderiv ℂ (psM T μ) x (x * A - A * x)) 0 := by
    have hfun : (fun t : ℝ => psM T μ (NormedSpace.exp (-((t : ℂ) • A)) * x *
        NormedSpace.exp ((t : ℂ) • A))) = fun t : ℝ => ((T.τ (γ (-t)) : unitary (T.V →L[ℂ] T.V)) :
          T.V →L[ℂ] T.V) * psM T μ x * ((T.τ (γ t) : unitary (T.V →L[ℂ] T.V)) : T.V →L[ℂ] T.V) := by
      funext t
      exact heq t
    rw [hfun] at hL
    exact hL
  rw [hL'.unique hR]
  simp [h0]
  abel

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRightA =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ByParts =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ByParts", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\npublic import Mathlib.Analysis.Calculus.Deriv.Shift\npublic import Mathlib.Analysis.Calculus.ParametricIntegral\npublic import Mathlib.MeasureTheory.Group.Integral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

theorem kByParts {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (ε : Fin n → Bool) (F D : KG ε → E) {Z : Matrix (Fin n) (Fin n) ℂ} (hZ : inK ε Z) (γ : ℝ → KG ε)
    (hγ : ∀ t, toMK (γ t) = NormedSpace.exp ((t : ℂ) • Z)) (hF : Continuous F) (hD : Continuous D)
    (hder : ∀ k, HasDerivAt (fun t => F (k * γ t)) (D k) 0) :
    ∫ k, D k ∂(muK ε) = 0 := by
  haveI := muK_rightInvariant ε
  haveI := compactSpace_KG ε
  obtain ⟨γ', -, hγ', hadd'⟩ := exists_oneParam ε hZ
  have hinj : ∀ a b : KG ε, toMK a = toMK b → a = b := by
    intro a b h
    exact Subtype.ext (Subtype.ext (Units.ext h))
  have hγγ : ∀ t, γ t = γ' t := fun t => hinj _ _ (by rw [hγ, hγ'])
  have hadd : ∀ s t, γ (s + t) = γ s * γ t := by
    intro s t
    rw [hγγ, hγγ, hγγ, hadd']
  have h0 : γ 0 = 1 := by
    have h00 := hadd 0 0
    rw [add_zero] at h00
    exact mul_left_cancel (a := γ 0) (by rw [mul_one]; exact h00.symm)

  have hderiv : ∀ k t, HasDerivAt (fun u => F (k * γ u)) (D (k * γ t)) t := by
    intro k t
    have h1 := hder (k * γ t)
    have h2 : (fun s => F (k * γ t * γ s)) = fun s => F (k * γ (t + s)) := by
      funext s
      rw [hadd, mul_assoc]
    rw [h2] at h1
    have h3 := HasDerivAt.comp_sub_const t t (by rw [sub_self]; exact h1)
    have h4 : (fun x => F (k * γ (t + (x - t)))) = fun u => F (k * γ u) := by
      funext x
      rw [show t + (x - t) = x by ring]
    rw [h4] at h3
    exact h3
  obtain ⟨C, hC⟩ : ∃ C, ∀ k, ‖D k‖ ≤ C := by
    obtain ⟨C, hC⟩ := (isCompact_range hD.norm).bddAbove
    exact ⟨C, fun k => hC ⟨k, rfl⟩⟩
  have hFm : ∀ t, Continuous fun k : KG ε => F (k * γ t) := fun t =>
    hF.comp (continuous_mul_const _)
  have hDm : Continuous fun k : KG ε => D (k * γ 0) := hD.comp (continuous_mul_const _)
  have key := hasDerivAt_integral_of_dominated_loc_of_deriv_le (μ := muK ε)
    (F := fun t k => F (k * γ t)) (F' := fun t k => D (k * γ t)) (x₀ := (0 : ℝ))
    (bound := fun _ => C) (s := Set.univ) Filter.univ_mem
    (Filter.Eventually.of_forall fun t =>
      ((hFm t).stronglyMeasurable_of_hasCompactSupport (isClosed_tsupport _).isCompact).aestronglyMeasurable)
    ((hFm 0).integrable_of_hasCompactSupport (isClosed_tsupport _).isCompact)
    ((hDm.stronglyMeasurable_of_hasCompactSupport (isClosed_tsupport _).isCompact).aestronglyMeasurable)
    (ae_of_all _ fun k t _ => hC _) (integrable_const C)
    (ae_of_all _ fun k t _ => hderiv k t)
  have key2 : HasDerivAt (fun t => ∫ k, F (k * γ t) ∂(muK ε)) (∫ k, D (k * γ 0) ∂(muK ε)) 0 :=
    key.2
  have hconst : (fun t => ∫ k, F (k * γ t) ∂(muK ε)) = fun _ => ∫ k, F k ∂(muK ε) := by
    funext t
    exact integral_mul_right_eq_self (fun k => F k) (γ t)
  rw [hconst] at key2
  have huniq := key2.unique (hasDerivAt_const (0 : ℝ) (∫ k, F k ∂(muK ε)))
  simpa [h0] using huniq

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ByParts =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivG =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivG", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivGA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiFacts\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

variable {n : ℕ}

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem hasDerivAt_Gint {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : KType ε Λ) (μ : Fin n → ℤ)
    {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) (k : KG ε) {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inK ε Y)
    (γ : ℝ → KG ε) (hγ : ∀ t, toMK (γ t) = NormedSpace.exp ((t : ℂ) • Y)) :
    HasDerivAt (fun t => Gint T μ x (k * γ t))
      (fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k)
          (toMK k⁻¹ * x * toMK k * Y - Y * (toMK k⁻¹ * x * toMK k)) •
          (T.op k * projW T * T.op k⁻¹) +
        PhiM μ (toMK k⁻¹ * x * toMK k) •
          (T.op k * (T.dτ Y * projW T - projW T * T.dτ Y) * T.op k⁻¹)) 0 := by
  have hm : ∀ a b : KG ε, toMK (a * b) = toMK a * toMK b := by
    intro a b
    simp [toMK, toM]
  have hi : ∀ a : KG ε, toMK a⁻¹ * toMK a = 1 := by
    intro a
    simp [toMK, toM]
  have hop : ∀ a b : KG ε, T.op (a * b) = T.op a * T.op b := by
    intro a b
    simp [KType.op]
  have hγ0 : γ 0 = 1 := by
    ext i j
    have h00 := congrFun (congrFun (hγ 0) i) j
    simpa [toMK, toM] using h00
  have hk2 : toMK k ∈ Matrix.unitaryGroup (Fin n) ℂ ∧ toMK k * Jm ε = Jm ε * toMK k := by
    simpa [KG, Kset, toM, toMK] using k.2
  have hst : star (toMK k) * toMK k = 1 := Matrix.mem_unitaryGroup_iff'.1 hk2.1
  have hst' : toMK k * star (toMK k) = 1 := Matrix.mem_unitaryGroup_iff.1 hk2.1
  have hkinv : toMK k⁻¹ = (toMK k)ᴴ := by
    rw [← Matrix.star_eq_conjTranspose]
    calc toMK k⁻¹ = toMK k⁻¹ * (toMK k * star (toMK k)) := by rw [hst', mul_one]
      _ = (toMK k⁻¹ * toMK k) * star (toMK k) := by rw [mul_assoc]
      _ = star (toMK k) := by rw [hi, one_mul]
  have hinjk : Function.Injective (toMK k).mulVec := by
    intro v w hvw
    have h2 := congrArg (star (toMK k)).mulVec hvw
    simpa [Matrix.mulVec_mulVec, hst] using h2
  have hzP : toMK k⁻¹ * x * toMK k ∈ OmegaSet n := by
    apply posSet_subset_omega
    show (toMK k⁻¹ * x * toMK k).PosDef
    rw [hkinv]
    exact hx.conjTranspose_mul_mul_same hinjk
  have hexp : ∀ A : Matrix (Fin n) (Fin n) ℂ, NormedSpace.exp A * NormedSpace.exp (-A) = 1 := by
    intro A
    rw [← Matrix.exp_add_of_commute _ _ (Commute.neg_right (Commute.refl A)), add_neg_cancel,
      NormedSpace.exp_zero]
  have hinvγ : ∀ t : ℝ, toMK (γ t)⁻¹ = NormedSpace.exp (-((t : ℂ) • Y)) := by
    intro t
    calc toMK (γ t)⁻¹
        = toMK (γ t)⁻¹ * (NormedSpace.exp ((t : ℂ) • Y) * NormedSpace.exp (-((t : ℂ) • Y))) := by
          rw [hexp, mul_one]
      _ = (toMK (γ t)⁻¹ * toMK (γ t)) * NormedSpace.exp (-((t : ℂ) • Y)) := by
          rw [hγ t, mul_assoc]
      _ = _ := by rw [hi, one_mul]
  have hf : ∀ t : ℝ, toMK (k * γ t)⁻¹ * x * toMK (k * γ t) =
      NormedSpace.exp (-((t : ℂ) • Y)) * (toMK k⁻¹ * x * toMK k) * NormedSpace.exp ((t : ℂ) • Y) := by
    intro t
    rw [_root_.mul_inv_rev, hm, hm, hinvγ, hγ]
    simp only [mul_assoc]
  have hQe : ∀ t : ℝ, T.op (1 * (γ t)⁻¹) * T.op k⁻¹ = T.op (k * γ t)⁻¹ := by
    intro t
    rw [one_mul, _root_.mul_inv_rev, hop]
  have hfun : (fun t : ℝ => Gint T μ x (k * γ t)) = fun t : ℝ =>
      PhiM μ (NormedSpace.exp (-((t : ℂ) • Y)) * (toMK k⁻¹ * x * toMK k) *
        NormedSpace.exp ((t : ℂ) • Y)) •
        (T.op (k * γ t) * projW T * (T.op (1 * (γ t)⁻¹) * T.op k⁻¹)) := by
    funext t
    simp only [Gint]
    rw [hf t, hQe t]
  have hP := hasDerivAt_op T k hY γ hγ
  have hδ : ∀ t : ℝ, toMK ((fun s : ℝ => (γ s)⁻¹) t) = NormedSpace.exp ((t : ℂ) • (-Y)) := by
    intro t
    rw [smul_neg]
    exact hinvγ t
  have hQ := (hasDerivAt_op T 1 (inK_neg hY) (fun s : ℝ => (γ s)⁻¹) hδ).mul_const (T.op k⁻¹)
  have hM := (hP.mul_const (projW T)).mul hQ
  have hφ : HasDerivAt (fun t : ℝ => PhiM μ (NormedSpace.exp (-((t : ℂ) • Y)) *
      (toMK k⁻¹ * x * toMK k) * NormedSpace.exp ((t : ℂ) • Y)))
      (fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k)
        (toMK k⁻¹ * x * toMK k * Y - Y * (toMK k⁻¹ * x * toMK k))) 0 := by
    have hd := ((phiM_differentiableOn μ).differentiableAt (isOpen_omega.mem_nhds hzP)).hasFDerivAt
    have h0 : toMK k⁻¹ * x * toMK k = NormedSpace.exp (-(((0 : ℝ) : ℂ) • Y)) *
        (toMK k⁻¹ * x * toMK k) * NormedSpace.exp (((0 : ℝ) : ℂ) • Y) := by
      simp
    exact (hd.restrictScalars ℝ).comp_hasDerivAt_of_eq (0 : ℝ) (dga_path Y _) h0
  have hop1' : T.op 1 = 1 := by simp [KType.op]
  rw [hfun]
  convert hφ.smul hM using 1
  all_goals try rfl
  simp only [hγ0, mul_one, one_mul, inv_one, hop1', map_neg, Complex.ofReal_zero, zero_smul,
    neg_zero, NormedSpace.exp_zero]
  rw [add_comm]
  simp only [Pi.mul_apply, hγ0, mul_one, inv_one, hop1', one_mul]
  refine congrArg₂ (· + ·) (congrArg _ ?_) rfl
  noncomm_ring
end ReciprocityTheory.ChartRestriction.DS.S7 -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivG =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiM =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiM", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ByParts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivG\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DerivGA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFactsA\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ} {ε : Fin n → Bool} {Λ : Fin n → ℝ}

namespace InfKA

lemma contDiffAt_zpow {f : Matrix (Fin n) (Fin n) ℂ → ℂ} {x : Matrix (Fin n) (Fin n) ℂ}
    (hf : ContDiffAt ℂ 1 f x) (hx : f x ≠ 0) (m : ℤ) : ContDiffAt ℂ 1 (fun y => f y ^ m) x := by
  cases m with
  | ofNat k =>
    have e : (fun y => f y ^ (Int.ofNat k)) = fun y => f y ^ k :=
      funext fun y => by rw [Int.ofNat_eq_coe, zpow_natCast]
    rw [e]
    exact hf.pow k
  | negSucc k =>
    have e : (fun y => f y ^ (Int.negSucc k)) = fun y => (f y ^ (k + 1))⁻¹ :=
      funext fun y => zpow_negSucc _ _
    rw [e]
    exact (hf.pow (k + 1)).inv (pow_ne_zero _ hx)

lemma contDiff_lead (i : ℕ) : ContDiff ℂ 1 (fun z : Matrix (Fin n) (Fin n) ℂ => lead i z) := by
  have he : ∀ a b : Fin n, ContDiff ℂ 1 (fun z : Matrix (Fin n) (Fin n) ℂ => z a b) := by
    intro a b
    first
    | fun_prop
  unfold lead
  by_cases h : i ≤ n
  · simp only [dif_pos h, Matrix.det_apply, Matrix.submatrix_apply, Units.smul_def, zsmul_eq_mul]
    exact ContDiff.sum fun σ _ => contDiff_const.mul (contDiff_prod fun j _ => he _ _)
  · simp only [dif_neg h]
    exact contDiff_const

lemma contDiffAt_phiM (μ : Fin n → ℤ) {z : Matrix (Fin n) (Fin n) ℂ} (hz : z ∈ OmegaSet n) :
    ContDiffAt ℂ 1 (PhiM μ) z := by
  show ContDiffAt ℂ 1 (fun z => ∏ i : Fin n, lead ((i : ℕ) + 1) z ^ (-(μ i - muNext μ i))) z
  first
  | exact contDiffAt_prod fun i _ => InfKA.contDiffAt_zpow (contDiff_lead _).contDiffAt (hz i) _

alias isOpen_omega' := _root_.ReciprocityTheory.ChartRestriction.DS.S7.isOpen_omega

lemma continuousOn_fderiv_phiM (μ : Fin n → ℤ) : ContinuousOn (fderiv ℂ (PhiM μ)) (OmegaSet n) := by
  exact ContDiffOn.continuousOn_fderiv_of_isOpen
    (fun z hz => (contDiffAt_phiM μ hz).contDiffWithinAt) isOpen_omega' le_rfl

lemma continuousOn_phiM (μ : Fin n → ℤ) : ContinuousOn (PhiM μ) (OmegaSet n) := by
  exact fun z hz => (contDiffAt_phiM μ hz).continuousAt.continuousWithinAt

lemma continuous_toMK' : Continuous fun k : KG ε => toMK k := by
  first
    | fun_prop

lemma continuous_toMK_inv : Continuous fun k : KG ε => toMK k⁻¹ := by
  exact continuous_toMK'.comp continuous_inv

lemma continuous_P (T : KType ε Λ) : Continuous fun k : KG ε => T.op k * projW T * T.op k⁻¹ := by
  have hop : Continuous fun k : KG ε => T.op k := continuous_subtype_val.comp T.cont
  exact (hop.mul continuous_const).mul (hop.comp continuous_inv)

private lemma toMK_conjTranspose_mul_self (k : KG ε) : (toMK k)ᴴ * toMK k = 1 := by
  have h : toM (k : UJ ε) ∈ Kset ε := k.2
  obtain ⟨hU, -⟩ := h
  first
  | exact Unitary.star_mul_self_of_mem hU

lemma toMK_inv_eq (k : KG ε) : toMK k⁻¹ = (toMK k)ᴴ := by
  have hu : star (toMK k) * toMK k = 1 := toMK_conjTranspose_mul_self k
  have hv : toMK k * toMK k⁻¹ = 1 := by
    first
    | exact Units.mul_inv _
  calc toMK k⁻¹ = (star (toMK k) * toMK k) * toMK k⁻¹ := by rw [hu, Matrix.one_mul]
    _ = star (toMK k) * (toMK k * toMK k⁻¹) := by rw [Matrix.mul_assoc]
    _ = (toMK k)ᴴ := by rw [hv, Matrix.mul_one]; rfl

lemma conj_mem_omega {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) (k : KG ε) :
    toMK k⁻¹ * x * toMK k ∈ OmegaSet n := by
  rw [toMK_inv_eq]
  have hinj : Function.Injective (toMK k).mulVec := fun v w h => by
    have h2 := congrArg (toMK k)ᴴ.mulVec h
    simpa [Matrix.mulVec_mulVec, toMK_conjTranspose_mul_self] using h2
  have hP : ((toMK k)ᴴ * x * toMK k).PosDef := hx.conjTranspose_mul_mul_same hinj
  show ∀ i : Fin n, lead ((i : ℕ) + 1) ((toMK k)ᴴ * x * toMK k) ≠ 0
  intro i
  unfold lead
  rw [dif_pos (show (i : ℕ) + 1 ≤ n from i.isLt)]
  first
  | exact (hP.submatrix (Fin.castLE_injective _)).det_pos.ne'

def entryCLM (a b : Fin n) : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ :=
  LinearMap.toContinuousLinearMap
    { toFun := fun M => M a b
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }

def DkL (T : KType ε Λ) (μ : Fin n → ℤ) (x : Matrix (Fin n) (Fin n) ℂ) (k : KG ε) :
    Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] (T.V →L[ℂ] T.V) where
  toFun Y := fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k)
        (toMK k⁻¹ * x * toMK k * Y - Y * (toMK k⁻¹ * x * toMK k)) • (T.op k * projW T * T.op k⁻¹) +
      PhiM μ (toMK k⁻¹ * x * toMK k) • (T.op k * (T.dτ Y * projW T - projW T * T.dτ Y) * T.op k⁻¹)
  map_add' Y Y' := by
    simp only [map_add (f := _), map_sub, add_mul, mul_add, sub_mul, mul_sub,
      add_smul, sub_smul, smul_add, smul_sub]
    abel
  map_smul' c Y := by
    simp only [map_smul, map_sub, smul_mul_assoc, mul_smul_comm,
      mul_sub, sub_mul, smul_sub, smul_eq_mul, RingHom.id_apply, smul_add]
    module

lemma DkL_apply (T : KType ε Λ) (μ : Fin n → ℤ) (x : Matrix (Fin n) (Fin n) ℂ) (k : KG ε)
    (Y : Matrix (Fin n) (Fin n) ℂ) : DkL T μ x k Y =
      fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k)
        (toMK k⁻¹ * x * toMK k * Y - Y * (toMK k⁻¹ * x * toMK k)) • (T.op k * projW T * T.op k⁻¹) +
      PhiM μ (toMK k⁻¹ * x * toMK k) • (T.op k * (T.dτ Y * projW T - projW T * T.dτ Y) * T.op k⁻¹) :=
  rfl

def Ek (T : KType ε Λ) (μ : Fin n → ℤ) (x : Matrix (Fin n) (Fin n) ℂ)
    (φ : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ) (A M : Matrix (Fin n) (Fin n) ℂ) (k : KG ε) : T.V →L[ℂ] T.V :=
  φ (toMK k⁻¹ * A * toMK k) • DkL T μ x k M +
    φ (toMK k⁻¹ * A * toMK k * M - M * (toMK k⁻¹ * A * toMK k)) • Gint T μ x k

lemma continuous_B (A : Matrix (Fin n) (Fin n) ℂ) : Continuous fun k : KG ε => toMK k⁻¹ * A * toMK k := by
  first
    | exact (continuous_toMK_inv.matrix_mul continuous_const).matrix_mul continuous_toMK'

lemma continuous_Gint (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) : Continuous (Gint T μ x) := by
  have hphi : Continuous fun k : KG ε => PhiM μ (toMK k⁻¹ * x * toMK k) :=
    (continuousOn_phiM μ).comp_continuous (continuous_B x) (fun k => conj_mem_omega hx k)
  show Continuous fun k => PhiM μ (toMK k⁻¹ * x * toMK k) • (T.op k * projW T * T.op k⁻¹)
  exact hphi.smul (continuous_P T)

lemma continuous_DkL (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef)
    (Y : Matrix (Fin n) (Fin n) ℂ) : Continuous fun k => DkL T μ x k Y := by
  have hB : Continuous fun k : KG ε => toMK k⁻¹ * x * toMK k := continuous_B x
  have hmem : ∀ k : KG ε, toMK k⁻¹ * x * toMK k ∈ OmegaSet n := fun k => conj_mem_omega hx k
  have hop : Continuous fun k : KG ε => T.op k := continuous_subtype_val.comp T.cont
  have hphi : Continuous fun k : KG ε => PhiM μ (toMK k⁻¹ * x * toMK k) :=
    (continuousOn_phiM μ).comp_continuous hB hmem
  have hd : Continuous fun k : KG ε => fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k) :=
    (continuousOn_fderiv_phiM μ).comp_continuous hB hmem
  have harg : Continuous fun k : KG ε => toMK k⁻¹ * x * toMK k * Y - Y * (toMK k⁻¹ * x * toMK k) :=
    (hB.matrix_mul continuous_const).sub (continuous_const.matrix_mul hB)
  simp only [DkL_apply]
  exact ((hd.clm_apply harg).smul (continuous_P T)).add
    (hphi.smul ((hop.mul continuous_const).mul (hop.comp continuous_inv)))

lemma continuous_Ek (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef)
    (φ : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ) (A M : Matrix (Fin n) (Fin n) ℂ) : Continuous (Ek T μ x φ A M) := by
  have hBA : Continuous fun k : KG ε => toMK k⁻¹ * A * toMK k := continuous_B A
  show Continuous fun k => φ (toMK k⁻¹ * A * toMK k) • DkL T μ x k M +
    φ (toMK k⁻¹ * A * toMK k * M - M * (toMK k⁻¹ * A * toMK k)) • Gint T μ x k
  exact ((φ.continuous.comp hBA).smul (continuous_DkL T μ hx M)).add
    ((φ.continuous.comp ((hBA.matrix_mul continuous_const).sub (continuous_const.matrix_mul hBA))).smul
      (continuous_Gint T μ hx))

lemma integrable_of_cont [CompactSpace (KG ε)] {E : Type*} [NormedAddCommGroup E] {f : KG ε → E}
    (hf : Continuous f) : Integrable f (muK ε) := by
  first
    | exact hf.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace f)

lemma integral_Ek_inK [CompactSpace (KG ε)] (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) (φ : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ) (A : Matrix (Fin n) (Fin n) ℂ)
    {Z : Matrix (Fin n) (Fin n) ℂ} (hZ : inK ε Z) : ∫ k, Ek T μ x φ A Z k ∂(muK ε) = 0 := by
  obtain ⟨γ, -, hγ, hmul⟩ := exists_oneParam ε hZ
  have hγ0 : γ 0 = 1 := gamma_zero hmul
  have hmk : ∀ a b : KG ε, toMK (a * b) = toMK a * toMK b := fun _ _ => rfl
  have hinv_t : ∀ t : ℝ, toMK (γ t)⁻¹ = NormedSpace.exp (-((t : ℂ) • Z)) := by
    intro t
    have h1 : toMK (γ t)⁻¹ * toMK (γ t) = 1 := by rw [← hmk, inv_mul_cancel]; rfl
    calc toMK (γ t)⁻¹ = toMK (γ t)⁻¹ * (toMK (γ t) * NormedSpace.exp (-((t : ℂ) • Z))) := by
          rw [hγ, kfa_exp_mul_neg, Matrix.mul_one]
      _ = NormedSpace.exp (-((t : ℂ) • Z)) := by rw [← Matrix.mul_assoc, h1, Matrix.one_mul]
  refine kByParts ε (fun k => φ (toMK k⁻¹ * A * toMK k) • Gint T μ x k) (Ek T μ x φ A Z) hZ γ hγ
    ((φ.continuous.comp (continuous_B A)).smul (continuous_Gint T μ hx)) (continuous_Ek T μ hx φ A Z) ?_
  intro k
  set Bk := toMK k⁻¹ * A * toMK k with hBk
  have hφ : HasDerivAt
      (fun t : ℝ => φ (NormedSpace.exp (-((t : ℂ) • Z)) * Bk * NormedSpace.exp ((t : ℂ) • Z)))
      (φ (Bk * Z - Z * Bk)) 0 :=
    (φ.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt (0 : ℝ) (dga_path Z Bk)
  have h := hφ.smul (hasDerivAt_Gint T μ hx k hZ γ hγ)
  convert (preTransparency := .reducible) h using 1
  · funext t
    congr 2
    rw [_root_.mul_inv_rev, hmk, hmk, hinv_t, hγ, hBk]
    simp only [Matrix.mul_assoc]
  · simp only [Ek, DkL_apply, hγ0, mul_one, Complex.ofReal_zero, zero_smul, neg_zero, NormedSpace.exp_zero,
      Matrix.one_mul, hBk]

lemma Ek_decomp (T : KType ε Λ) (μ : Fin n → ℤ) (x : Matrix (Fin n) (Fin n) ℂ)
    (φ : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ) (A P Q : Matrix (Fin n) (Fin n) ℂ) (k : KG ε) :
    Ek T μ x φ A (P + Complex.I • Q) k = Ek T μ x φ A P k + Complex.I • Ek T μ x φ A Q k := by
  have h1 : toMK k⁻¹ * A * toMK k * (P + Complex.I • Q) - (P + Complex.I • Q) * (toMK k⁻¹ * A * toMK k) =
      (toMK k⁻¹ * A * toMK k * P - P * (toMK k⁻¹ * A * toMK k)) +
        Complex.I • (toMK k⁻¹ * A * toMK k * Q - Q * (toMK k⁻¹ * A * toMK k)) := by
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul, smul_sub]
    abel
  simp only [Ek, h1, map_add (f := _), map_smul, smul_eq_mul]
  first
  | module

lemma integral_Ek_block [CompactSpace (KG ε)] (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) (φ : Matrix (Fin n) (Fin n) ℂ →L[ℂ] ℂ) (A : Matrix (Fin n) (Fin n) ℂ)
    {M : Matrix (Fin n) (Fin n) ℂ} (hM : IsBlock ε M) : ∫ k, Ek T μ x φ A M k ∂(muK ε) = 0 := by
  have key : ∀ X : Matrix (Fin n) (Fin n) ℂ, IsBlock ε X → Xᴴ = -X → inK ε X := by
    intro X hX hs
    have hc : X * Jm ε = Jm ε * X := by
      ext a b
      simp only [Jm, Matrix.mul_diagonal, Matrix.diagonal_mul]
      by_cases h : ε a = ε b
      · rw [h]; ring
      · rw [hX a b h]; ring
    show inG ε X ∧ X * Jm ε = Jm ε * X
    refine ⟨?_, hc⟩
    show Xᴴ * Jm ε + Jm ε * X = 0
    rw [hs, Matrix.neg_mul, hc]
    abel
  have hMh : ∀ a b, ε a ≠ ε b → Mᴴ a b = 0 := fun a b h => by
    simp [Matrix.conjTranspose_apply, hM b a (Ne.symm h)]
  obtain ⟨P, Q, hP, hQ, rfl⟩ : ∃ P Q : Matrix (Fin n) (Fin n) ℂ,
      inK ε P ∧ inK ε Q ∧ M = P + Complex.I • Q := by
    refine ⟨(1 / 2 : ℂ) • (M - Mᴴ), (-Complex.I / 2) • (M + Mᴴ), key _ ?_ ?_, key _ ?_ ?_, ?_⟩
    · intro a b h
      first
      | simp only [Matrix.smul_apply, Matrix.sub_apply, hM a b h, hMh a b h, sub_zero, smul_zero]
    · ext a b
      first
      | (simp [Matrix.conjTranspose_apply]; ring)
    · intro a b h
      first
      | simp only [Matrix.smul_apply, Matrix.add_apply, hM a b h, hMh a b h, add_zero, smul_zero]
    · ext a b
      first
      | (simp [Matrix.conjTranspose_apply]; ring)
    · ext a b
      simp only [Matrix.add_apply, Matrix.smul_apply, Matrix.sub_apply, smul_eq_mul]
      linear_combination (M a b + Mᴴ a b) / 2 * Complex.I_sq
  have hIP : Integrable (Ek T μ x φ A P) (muK ε) := integrable_of_cont (continuous_Ek T μ hx φ A P)
  have hIQ : Integrable (fun k => Complex.I • Ek T μ x φ A Q k) (muK ε) :=
    (integrable_of_cont (continuous_Ek T μ hx φ A Q)).smul Complex.I
  simp_rw [Ek_decomp]
  rw [integral_add hIP hIQ, integral_smul, integral_Ek_inK T μ hx φ A hP, integral_Ek_inK T μ hx φ A hQ,
    smul_zero, add_zero]

end InfKA

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiM =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiPart =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiPart", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.ZPow\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiCasA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

private theorem fderiv_PhiM_of_lead_curve (μ : Fin n → ℤ) {z V : Matrix (Fin n) (Fin n) ℂ} (hz : z ∈ OmegaSet n)
    (D : ℕ → ℂ) (hlead : ∀ (t : ℂ) (i : Fin n), lead ((i : ℕ) + 1) (z + t • V) =
      (∏ a ∈ Finset.range ((i : ℕ) + 1), (1 + t * D a)) * lead ((i : ℕ) + 1) z) :
    fderiv ℂ (PhiM μ) z V = -(∑ a ∈ Finset.range n,
      (if h : a < n then (μ ⟨a, h⟩ : ℂ) else 0) * D a) * PhiM μ z := by
  set m : ℕ → ℂ := fun k => if h : k < n then (μ ⟨k, h⟩ : ℂ) else 0 with hm
  have hc : HasDerivAt (fun t : ℂ => z + t • V) V 0 := by
    exact (((hasDerivAt_id (0 : ℂ)).smul_const V).const_add z).congr_deriv (one_smul ℂ V)
  have hΦ : HasFDerivAt (PhiM μ) (fderiv ℂ (PhiM μ) z) (z + (0 : ℂ) • V) := by
    rw [zero_smul, add_zero]
    exact (_root_.ReciprocityTheory.ChartRestriction.DS.S7.differentiableAt_phiM μ hz).hasFDerivAt
  have h1 := hΦ.comp_hasDerivAt (0 : ℂ) hc
  set p : Fin n → ℂ → ℂ := fun i t => ∏ a ∈ Finset.range ((i : ℕ) + 1), (1 + t * D a) with hp
  have hfun : (PhiM μ ∘ fun t : ℂ => z + t • V) =
      fun t => (∏ i : Fin n, p i t ^ (-(μ i - muNext μ i))) * PhiM μ z := by
    funext t
    simp only [Function.comp_apply, PhiM, hlead, mul_zpow, Finset.prod_mul_distrib, hp]
  have hpd : ∀ i : Fin n, HasDerivAt (p i) (∑ a ∈ Finset.range ((i : ℕ) + 1), D a) 0 := by
    intro i
    have h := HasDerivAt.finsetProd (u := Finset.range ((i : ℕ) + 1)) (x := (0 : ℂ))
      (f := fun a t => 1 + t * D a) (f' := fun a => D a)
      (fun a _ => by simpa using ((hasDerivAt_id (0 : ℂ)).mul_const (D a)).const_add 1)
    refine (h.congr_deriv (by simp [Finset.prod_apply])).congr_of_eventuallyEq
      (Filter.Eventually.of_forall fun t => ?_)
    simp [hp, Finset.prod_apply]
  have hp0 : ∀ i : Fin n, p i 0 = 1 := fun i => by simp [hp]
  have hfd : ∀ i : Fin n, HasDerivAt (fun t => p i t ^ (-(μ i - muNext μ i)))
      ((((-(μ i - muNext μ i)) : ℤ) : ℂ) * ∑ a ∈ Finset.range ((i : ℕ) + 1), D a) 0 := by
    intro i
    have h := (hasDerivAt_zpow (-(μ i - muNext μ i)) (p i 0)
      (Or.inl (by rw [hp0]; exact one_ne_zero))).comp (0 : ℂ) (hpd i)
    exact h.congr_deriv (by rw [hp0]; simp)
  have h2 : HasDerivAt (fun t => (∏ i : Fin n, p i t ^ (-(μ i - muNext μ i))) * PhiM μ z)
      ((∑ i : Fin n, (((-(μ i - muNext μ i)) : ℤ) : ℂ) * ∑ a ∈ Finset.range ((i : ℕ) + 1), D a) *
        PhiM μ z) 0 := by
    have h := (HasDerivAt.finsetProd (u := Finset.univ) (fun i _ => hfd i)).mul_const (PhiM μ z)
    refine (h.congr_deriv (by simp [hp0, Finset.prod_apply])).congr_of_eventuallyEq
      (Filter.Eventually.of_forall fun t => ?_)
    simp [Finset.prod_apply]
  have htel : ∀ N : ℕ, ∑ k ∈ Finset.range N, (m (k + 1) - m k) * ∑ a ∈ Finset.range (k + 1), D a =
      m N * ∑ a ∈ Finset.range N, D a - ∑ a ∈ Finset.range N, m a * D a := by
    intro N
    induction N with
    | zero => simp
    | succ N ih =>
      rw [Finset.sum_range_succ (fun k => (m (k + 1) - m k) * ∑ a ∈ Finset.range (k + 1), D a), ih,
        Finset.sum_range_succ (fun a => m a * D a), Finset.sum_range_succ D]
      ring
  have hmn : m n = 0 := by simp [hm]
  have hm0 : ∀ i : Fin n, m i = (μ i : ℂ) := fun i => by simp [hm, i.2]
  have hmN : ∀ i : Fin n, ((muNext μ i : ℤ) : ℂ) = m ((i : ℕ) + 1) := fun i => by
    simp only [muNext, hm]
    split_ifs <;> simp
  have hterm : ∀ i : Fin n, (((-(μ i - muNext μ i)) : ℤ) : ℂ) * ∑ a ∈ Finset.range ((i : ℕ) + 1), D a =
      (m ((i : ℕ) + 1) - m i) * ∑ a ∈ Finset.range ((i : ℕ) + 1), D a := fun i => by
    rw [hm0 i, ← hmN i]
    push_cast
    ring
  have hsumeq : ∑ i : Fin n, (((-(μ i - muNext μ i)) : ℤ) : ℂ) * ∑ a ∈ Finset.range ((i : ℕ) + 1), D a =
      -∑ a ∈ Finset.range n, m a * D a := by
    rw [Finset.sum_congr rfl fun i _ => hterm i,
      Fin.sum_univ_eq_sum_range (fun k => (m (k + 1) - m k) * ∑ a ∈ Finset.range (k + 1), D a) n,
      htel n, hmn]
    ring
  rw [hfun] at h1
  have hu := h1.unique h2
  rw [hsumeq] at hu
  exact hu

private theorem lead_add_smul_mul_of_isLowerTri {X z : Matrix (Fin n) (Fin n) ℂ} (hX : IsLowerTri X) (t : ℂ)
    (i : Fin n) : lead ((i : ℕ) + 1) (z + t • (X * z)) =
      (∏ a ∈ Finset.range ((i : ℕ) + 1), (1 + t * (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0))) *
        lead ((i : ℕ) + 1) z := by
  have hi : (i : ℕ) + 1 ≤ n := i.2
  set e : Fin ((i : ℕ) + 1) → Fin n := Fin.castLE hi with he
  set A : Matrix (Fin n) (Fin n) ℂ := 1 + t • X with hA
  have hAz : z + t • (X * z) = A * z := by
    rw [hA, Matrix.add_mul, Matrix.one_mul, Matrix.smul_mul]
  have hzero : ∀ a c : Fin n, a < c → A a c = 0 := fun a c hac => by
    rw [hA, Matrix.add_apply, Matrix.one_apply_ne (ne_of_lt hac), Matrix.smul_apply, hX _ _ hac,
      smul_zero, zero_add]
  have hsub : (A * z).submatrix e e = A.submatrix e e * z.submatrix e e := by
    ext p q
    simp only [Matrix.submatrix_apply, Matrix.mul_apply]
    symm
    refine Fintype.sum_of_injective e (Fin.castLE_injective hi) _ _ ?_ (fun r => rfl)
    intro c hc
    have hc' : (i : ℕ) + 1 ≤ c := by
      by_contra hlt
      push_neg at hlt
      exact hc ⟨⟨c, hlt⟩, Fin.ext rfl⟩
    have hlt : e p < c := by
      show (p : ℕ) < c
      exact lt_of_lt_of_le p.2 hc'
    show A (e p) c * z c (e q) = 0
    rw [hzero _ _ hlt, zero_mul]
  have htri : (A.submatrix e e).BlockTriangular OrderDual.toDual := by
    intro p q hpq
    have hpq' : p < q := OrderDual.toDual_lt_toDual.1 hpq
    have hlt : e p < e q := by
      show (p : ℕ) < q
      exact hpq'
    exact hzero _ _ hlt
  simp only [lead, dif_pos hi]
  rw [hAz, hsub, Matrix.det_mul, Matrix.det_of_lowerTriangular _ htri]
  congr 1
  rw [← Fin.prod_univ_eq_prod_range (fun a => 1 + t * (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0))]
  refine Finset.prod_congr rfl fun p _ => ?_
  have hp : (p : ℕ) < n := lt_of_lt_of_le p.2 hi
  have hep : (⟨(p : ℕ), hp⟩ : Fin n) = e p := Fin.ext rfl
  simp only [dif_pos hp, hep, Matrix.submatrix_apply, hA, Matrix.add_apply, Matrix.one_apply_eq,
    Matrix.smul_apply, smul_eq_mul]

private theorem lead_add_smul_mul_of_isUpperTri {X z : Matrix (Fin n) (Fin n) ℂ} (hX : IsUpperTri X) (t : ℂ)
    (i : Fin n) : lead ((i : ℕ) + 1) (z + t • (z * X)) =
      (∏ a ∈ Finset.range ((i : ℕ) + 1), (1 + t * (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0))) *
        lead ((i : ℕ) + 1) z := by
  have hi : (i : ℕ) + 1 ≤ n := i.2
  set e : Fin ((i : ℕ) + 1) → Fin n := Fin.castLE hi with he
  set A : Matrix (Fin n) (Fin n) ℂ := 1 + t • X with hA
  have hAz : z + t • (z * X) = z * A := by
    rw [hA, Matrix.mul_add, Matrix.mul_one, Matrix.mul_smul]
  have hzero : ∀ a c : Fin n, c < a → A a c = 0 := fun a c hca => by
    rw [hA, Matrix.add_apply, Matrix.one_apply_ne (ne_of_lt hca).symm, Matrix.smul_apply, hX _ _ hca,
      smul_zero, zero_add]
  have hsub : (z * A).submatrix e e = z.submatrix e e * A.submatrix e e := by
    ext p q
    simp only [Matrix.submatrix_apply, Matrix.mul_apply]
    symm
    refine Fintype.sum_of_injective e (Fin.castLE_injective hi) _ _ ?_ (fun r => rfl)
    intro c hc
    have hc' : (i : ℕ) + 1 ≤ c := by
      by_contra hlt
      push_neg at hlt
      exact hc ⟨⟨c, hlt⟩, Fin.ext rfl⟩
    have hlt : e q < c := by
      show (q : ℕ) < c
      exact lt_of_lt_of_le q.2 hc'
    show z (e p) c * A c (e q) = 0
    rw [hzero _ _ hlt, mul_zero]
  have htri : (A.submatrix e e).BlockTriangular id := by
    intro p q hpq
    have hlt : e q < e p := by
      show (q : ℕ) < p
      exact hpq
    exact hzero _ _ hlt
  simp only [lead, dif_pos hi]
  rw [hAz, hsub, Matrix.det_mul, Matrix.det_of_upperTriangular htri, mul_comm]
  congr 1
  rw [← Fin.prod_univ_eq_prod_range (fun a => 1 + t * (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0))]
  refine Finset.prod_congr rfl fun p _ => ?_
  have hp : (p : ℕ) < n := lt_of_lt_of_le p.2 hi
  have hep : (⟨(p : ℕ), hp⟩ : Fin n) = e p := Fin.ext rfl
  simp only [dif_pos hp, hep, Matrix.submatrix_apply, hA, Matrix.add_apply, Matrix.one_apply_eq,
    Matrix.smul_apply, smul_eq_mul]

lemma fderiv_phiM_lower (μ : Fin n → ℤ) {z X : Matrix (Fin n) (Fin n) ℂ} (hz : z ∈ OmegaSet n)
    (hX : IsLowerTri X) :
    fderiv ℂ (PhiM μ) z (X * z) = -(∑ a, (μ a : ℂ) * X a a) * PhiM μ z := by
  have hs : ∑ a ∈ Finset.range n, (if h : a < n then (μ ⟨a, h⟩ : ℂ) else 0) *
      (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0) = ∑ a, (μ a : ℂ) * X a a := by
    rw [← Fin.sum_univ_eq_sum_range (fun a => (if h : a < n then (μ ⟨a, h⟩ : ℂ) else 0) *
      (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0)) n]
    simp
  rw [fderiv_PhiM_of_lead_curve μ hz _ (fun t i => lead_add_smul_mul_of_isLowerTri hX t i), hs]

lemma fderiv_phiM_upper (μ : Fin n → ℤ) {z X : Matrix (Fin n) (Fin n) ℂ} (hz : z ∈ OmegaSet n)
    (hX : IsUpperTri X) :
    fderiv ℂ (PhiM μ) z (z * X) = -(∑ a, (μ a : ℂ) * X a a) * PhiM μ z := by
  have hs : ∑ a ∈ Finset.range n, (if h : a < n then (μ ⟨a, h⟩ : ℂ) else 0) *
      (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0) = ∑ a, (μ a : ℂ) * X a a := by
    rw [← Fin.sum_univ_eq_sum_range (fun a => (if h : a < n then (μ ⟨a, h⟩ : ℂ) else 0) *
      (if h : a < n then X ⟨a, h⟩ ⟨a, h⟩ else 0)) n]
    simp
  rw [fderiv_PhiM_of_lead_curve μ hz _ (fun t i => lead_add_smul_mul_of_isUpperTri hX t i), hs]

theorem phiM_part (μ : Fin n → ℤ) {z B : Matrix (Fin n) (Fin n) ℂ} (hz : z ∈ OmegaSet n) :
    fderiv ℂ (PhiM μ) z (B * z + z * B) =
      fderiv ℂ (PhiM μ) z (z * lowMinusUp B - lowMinusUp B * z) -
        2 * (∑ a, (μ a : ℂ) * B a a) * PhiM μ z := by
  set X1 : Matrix (Fin n) (Fin n) ℂ :=
    Matrix.of fun a b => if b < a then 2 * B a b else if a = b then B a b else 0 with hX1
  set X2 : Matrix (Fin n) (Fin n) ℂ :=
    Matrix.of fun a b => if a < b then 2 * B a b else if a = b then B a b else 0 with hX2
  have e1 : B + lowMinusUp B = X1 := by
    ext a b
    rcases lt_trichotomy a b with h | rfl | h
    · simp [lowMinusUp, hX1, h, lt_asymm h, ne_of_lt h]
    · simp [lowMinusUp, hX1]
    · simp [lowMinusUp, hX1, h] <;> ring
  have e2 : B - lowMinusUp B = X2 := by
    ext a b
    rcases lt_trichotomy a b with h | rfl | h
    · simp [lowMinusUp, hX2, h, lt_asymm h] <;> ring
    · simp [lowMinusUp, hX2]
    · simp [lowMinusUp, hX2, h, lt_asymm h, (ne_of_lt h).symm]
  have hL : IsLowerTri X1 := fun a b hab => by simp [hX1, lt_asymm hab, ne_of_lt hab]
  have hU : IsUpperTri X2 := fun a b hab => by simp [hX2, lt_asymm hab, (ne_of_lt hab).symm]
  have hsplit : B * z + z * B = (z * lowMinusUp B - lowMinusUp B * z) + (X1 * z + z * X2) := by
    rw [← e1, ← e2, Matrix.add_mul, Matrix.mul_sub]
    abel
  have d1 : ∑ a, (μ a : ℂ) * X1 a a = ∑ a, (μ a : ℂ) * B a a := by simp [hX1]
  have d2 : ∑ a, (μ a : ℂ) * X2 a a = ∑ a, (μ a : ℂ) * B a a := by simp [hX2]
  rw [hsplit, map_add (f := _), map_add (f := _), fderiv_phiM_lower μ hz hL, fderiv_phiM_upper μ hz hU, d1, d2]
  ring

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiPart =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.TauPart =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.TauPart", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

def upPart (B : Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  Matrix.of fun a b => if a < b then B a b else 0

def lowPart (B : Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  Matrix.of fun a b => if b < a then B a b else 0

def diagPart (B : Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  Matrix.diagonal fun a => B a a

lemma decomp_up (B : Matrix (Fin n) (Fin n) ℂ) :
    B = lowMinusUp B + (2 : ℂ) • upPart B + diagPart B := by
  ext a b
  simp only [Matrix.add_apply, Matrix.smul_apply, lowMinusUp, upPart, diagPart, Matrix.of_apply,
    Matrix.diagonal_apply, smul_eq_mul]
  rcases lt_trichotomy a b with h | rfl | h
  · rw [if_neg (lt_asymm h), if_pos h, if_pos h, if_neg h.ne]
    ring
  · simp
  · rw [if_pos h, if_neg (lt_asymm h), if_neg h.ne']
    ring

lemma decomp_low (B : Matrix (Fin n) (Fin n) ℂ) :
    B = -lowMinusUp B + (2 : ℂ) • lowPart B + diagPart B := by
  ext a b
  simp only [Matrix.add_apply, Matrix.neg_apply, Matrix.smul_apply, lowMinusUp, lowPart, diagPart,
    Matrix.of_apply, Matrix.diagonal_apply, smul_eq_mul]
  rcases lt_trichotomy a b with h | rfl | h
  · rw [if_neg (lt_asymm h), if_pos h, if_neg (lt_asymm h), if_neg h.ne]
    ring
  · simp
  · rw [if_pos h, if_pos h, if_neg h.ne']
    ring

lemma single_eq_smul (a b : Fin n) (c : ℂ) :
    Matrix.single a b c = c • Matrix.single a b (1 : ℂ) := by
  rw [Matrix.smul_single, smul_eq_mul, mul_one]

variable {ε : Fin n → Bool} {Λ : Fin n → ℝ}

lemma dtau_upPart_w (T : KType ε Λ) {B : Matrix (Fin n) (Fin n) ℂ} (hB : IsBlock ε B) :
    T.dτ (upPart B) T.w = 0 := by

  rw [Matrix.matrix_eq_sum_single (upPart B), map_sum, _root_.sum_apply]
  refine Finset.sum_eq_zero (fun a _ => ?_)

  rw [map_sum, _root_.sum_apply]
  refine Finset.sum_eq_zero (fun b _ => ?_)
  rw [single_eq_smul, map_smul, ContinuousLinearMap.smul_apply]
  simp only [upPart, Matrix.of_apply]
  split_ifs with h
  · by_cases he : ε a = ε b
    · rw [T.w_hw a b h he, smul_zero]
    · rw [hB a b he, zero_smul]
  · rw [zero_smul]

lemma dtau_diagPart_w (T : KType ε Λ) (B : Matrix (Fin n) (Fin n) ℂ) :
    T.dτ (diagPart B) T.w = (∑ a, ((Λ a : ℝ) : ℂ) * B a a) • T.w := by

  rw [Matrix.matrix_eq_sum_single (diagPart B), map_sum, _root_.sum_apply, Finset.sum_smul]
  refine Finset.sum_congr rfl (fun a _ => ?_)

  rw [map_sum, _root_.sum_apply, Finset.sum_eq_single a]
  · rw [single_eq_smul, map_smul, ContinuousLinearMap.smul_apply, T.w_wt, smul_smul]
    simp only [diagPart, Matrix.diagonal_apply_eq]
    rw [mul_comm]
  · intro b _ hb
    rw [single_eq_smul, map_smul, ContinuousLinearMap.smul_apply]
    simp only [diagPart, Matrix.diagonal_apply_ne _ (Ne.symm hb)]
    rw [zero_smul]
  · intro h
    exact absurd (Finset.mem_univ a) h

lemma isBlock_lowPart {B : Matrix (Fin n) (Fin n) ℂ} (hB : IsBlock ε B) : IsBlock ε (lowPart B) := by
  intro a b h
  simp only [lowPart, Matrix.of_apply]
  split_ifs
  · exact hB a b h
  · rfl

lemma isBlock_diagPart (B : Matrix (Fin n) (Fin n) ℂ) : IsBlock ε (diagPart B) := by
  intro a b h
  have hab : a ≠ b := by
    rintro rfl
    exact h rfl
  simp only [diagPart]
  exact Matrix.diagonal_apply_ne _ hab

lemma lowPart_conjTranspose {B : Matrix (Fin n) (Fin n) ℂ} (hBh : Bᴴ = B) :
    (lowPart B)ᴴ = upPart B := by
  ext a b
  simp only [Matrix.conjTranspose_apply, lowPart, upPart, Matrix.of_apply]
  split_ifs
  · have h := congrFun (congrFun hBh a) b
    rw [Matrix.conjTranspose_apply] at h
    exact h
  · exact star_zero _

lemma diagPart_conjTranspose {B : Matrix (Fin n) (Fin n) ℂ} (hBh : Bᴴ = B) :
    (diagPart B)ᴴ = diagPart B := by
  ext a b
  rw [Matrix.conjTranspose_apply]
  simp only [diagPart]
  by_cases h : a = b
  · subst h
    rw [Matrix.diagonal_apply_eq]
    have h' := congrFun (congrFun hBh a) a
    rw [Matrix.conjTranspose_apply] at h'
    exact h'
  · rw [Matrix.diagonal_apply_ne _ (Ne.symm h), Matrix.diagonal_apply_ne _ h, star_zero]

theorem tau_part {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : KType ε Λ) {B : Matrix (Fin n) (Fin n) ℂ}
    (hB : IsBlock ε B) (hBh : Bᴴ = B) :
    T.dτ B * projW T + projW T * T.dτ B =
      (T.dτ (lowMinusUp B) * projW T - projW T * T.dτ (lowMinusUp B)) +
        (2 * ∑ a, ((Λ a : ℝ) : ℂ) * B a a) • projW T := by
  have hP : ∀ v, projW T v = inner ℂ T.w v • T.w := fun v => by
    simp only [projW, ContinuousLinearMap.smulRight_apply, innerSL_apply_apply]
  have hBaa : ∀ a, (starRingEnd ℂ) (B a a) = B a a := fun a => by
    have h := congrFun (congrFun hBh a) a
    rw [Matrix.conjTranspose_apply] at h
    exact h
  have hc : (starRingEnd ℂ) (∑ a, ((Λ a : ℝ) : ℂ) * B a a) = ∑ a, ((Λ a : ℝ) : ℂ) * B a a := by

    simp only [map_sum, map_mul, Complex.conj_ofReal, hBaa]
  have h1 : T.dτ (upPart B) * projW T = 0 := by
    ext v
    rw [ContinuousLinearMap.mul_apply, hP, map_smul, dtau_upPart_w T hB, smul_zero,
      ContinuousLinearMap.zero_apply]
  have h2 : T.dτ (diagPart B) * projW T = (∑ a, ((Λ a : ℝ) : ℂ) * B a a) • projW T := by
    ext v
    rw [ContinuousLinearMap.mul_apply, hP, map_smul, dtau_diagPart_w, ContinuousLinearMap.smul_apply,
      hP, smul_comm]
  have h3 : projW T * T.dτ (lowPart B) = 0 := by
    ext v
    rw [ContinuousLinearMap.mul_apply, hP, ← ContinuousLinearMap.adjoint_inner_left,
      dtau_adj T (isBlock_lowPart hB), lowPart_conjTranspose hBh, dtau_upPart_w T hB, inner_zero_left,
      zero_smul, ContinuousLinearMap.zero_apply]
  have h4 : projW T * T.dτ (diagPart B) = (∑ a, ((Λ a : ℝ) : ℂ) * B a a) • projW T := by
    ext v
    rw [ContinuousLinearMap.mul_apply, hP, ← ContinuousLinearMap.adjoint_inner_left,
      dtau_adj T (isBlock_diagPart B), diagPart_conjTranspose hBh, dtau_diagPart_w, inner_smul_left, hc,
      ContinuousLinearMap.smul_apply, hP, mul_smul]
  have eB1 : T.dτ B = T.dτ (lowMinusUp B) + (2 : ℂ) • T.dτ (upPart B) + T.dτ (diagPart B) := by
    conv_lhs => rw [decomp_up B]
    rw [map_add (f := _), map_add (f := _), map_smul]
  have eB2 : T.dτ B = -T.dτ (lowMinusUp B) + (2 : ℂ) • T.dτ (lowPart B) + T.dτ (diagPart B) := by
    conv_lhs => rw [decomp_low B]
    rw [map_add (f := _), map_add (f := _), map_smul, map_neg]
  have hL : T.dτ B * projW T =
      T.dτ (lowMinusUp B) * projW T + (∑ a, ((Λ a : ℝ) : ℂ) * B a a) • projW T := by
    rw [eB1, add_mul, add_mul, smul_mul_assoc, h1, smul_zero, add_zero, h2]
  have hR : projW T * T.dτ B =
      -(projW T * T.dτ (lowMinusUp B)) + (∑ a, ((Λ a : ℝ) : ℂ) * B a a) • projW T := by
    rw [eB2, mul_add, mul_add, mul_smul_comm, h3, smul_zero, add_zero, h4, mul_neg]
  rw [hL, hR, two_mul, add_smul]
  abel

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.TauPart =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.LowMinusUpExpand =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.LowMinusUpExpand", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiP\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFactsA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PhiPart\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.TauPart\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

variable {ε : Fin n → Bool} {lam : Fin n → ℝ}

namespace InfKH

variable {Λ : Fin n → ℝ}

lemma lowMinusUp_expand {B : Matrix (Fin n) (Fin n) ℂ} (hB : IsBlock ε B) :
    lowMinusUp B = ∑ a, ∑ b ∈ univ.filter (fun b => ε b = ε a ∧ b ≠ a),
      ((if b < a then (1 : ℂ) else -1) * B a b) • Matrix.single a b (1 : ℂ) := by
  ext i j
  have hsum : (∑ a, ∑ b ∈ univ.filter (fun b => ε b = ε a ∧ b ≠ a),
      ((if b < a then (1 : ℂ) else -1) * B a b) • Matrix.single a b (1 : ℂ)) i j =
      ∑ a, ∑ b ∈ univ.filter (fun b => ε b = ε a ∧ b ≠ a),
        if a = i ∧ b = j then (if b < a then (1 : ℂ) else -1) * B a b else 0 := by
    first
    | simp only [Matrix.sum_apply, Matrix.smul_apply, Matrix.single_apply, smul_eq_mul, mul_ite,
        mul_one, mul_zero]
  rw [hsum]
  rw [Finset.sum_eq_single i (fun a _ ha => Finset.sum_eq_zero fun b _ => if_neg fun h => ha h.1)
    (fun h => absurd (Finset.mem_univ i) h)]
  by_cases hj : ε j = ε i ∧ j ≠ i
  · rw [Finset.sum_eq_single j (fun b _ hb => if_neg fun h => hb h.2)
      (fun h => (h (Finset.mem_filter.2 ⟨Finset.mem_univ _, hj⟩)).elim)]
    rw [if_pos ⟨rfl, rfl⟩]
    simp only [lowMinusUp, Matrix.of_apply]
    rcases lt_trichotomy j i with h | h | h
    · simp [h]
    · exact absurd h hj.2
    · simp [h, not_lt.2 h.le]
  · rw [Finset.sum_eq_zero fun b hb => if_neg fun h => hj (by
      obtain ⟨-, rfl⟩ := h
      exact (Finset.mem_filter.1 hb).2)]
    simp only [lowMinusUp, Matrix.of_apply]
    by_cases he : j = i
    · subst he
      simp
    · have hne : ε i ≠ ε j := fun h => hj ⟨h.symm, he⟩
      simp [hB i j hne]

lemma isBlock_single {a b : Fin n} (h : ε b = ε a) : IsBlock ε (Matrix.single a b (1 : ℂ)) := by
  intro a' b' hne
  by_cases h' : a = a' ∧ b = b'
  · obtain ⟨rfl, rfl⟩ := h'
    exact absurd h.symm hne
  · first
    | rw [Matrix.single_apply, if_neg h']

lemma scal (μ : Fin n → ℤ) (hμ : IsMu lam μ) (B : Matrix (Fin n) (Fin n) ℂ) :
    2 * ∑ a, (μ a : ℂ) * B a a =
      2 * ∑ a, ((lowK ε lam a : ℝ) : ℂ) * B a a + 4 * ∑ a, ((rhoC ε a : ℝ) : ℂ) * B a a := by
  have key : ∀ a, ((μ a : ℤ) : ℂ) = ((lowK ε lam a : ℝ) : ℂ) + 2 * ((rhoC ε a : ℝ) : ℂ) := by
    intro a
    have hgt1 : (univ.filter (fun b => a < b ∧ ε b = ε a)).card +
        (univ.filter (fun b => a < b ∧ ε b ≠ ε a)).card = (univ.filter (fun b => a < b)).card := by
      first
      | (have h1 := Finset.card_filter_add_card_filter_not
            (s := univ.filter (fun b => a < b)) (fun b => ε b = ε a)
         simpa only [Finset.filter_filter, ne_eq] using h1)
    have hlt1 : (univ.filter (fun b => b < a ∧ ε b = ε a)).card +
        (univ.filter (fun b => b < a ∧ ε b ≠ ε a)).card = (univ.filter (fun b => b < a)).card := by
      first
      | (have h1 := Finset.card_filter_add_card_filter_not
            (s := univ.filter (fun b => b < a)) (fun b => ε b = ε a)
         simpa only [Finset.filter_filter, ne_eq] using h1)
    have hc1 : (univ.filter (fun b : Fin n => a < b)).card + (a : ℕ) + 1 = n := by
      have ha := a.isLt
      first
      | (rw [Finset.filter_lt_eq_Ioi, Fin.card_Ioi]
         omega)
    have hc2 : (univ.filter (fun b : Fin n => b < a)).card = (a : ℕ) := by
      first
      | rw [Finset.filter_gt_eq_Iio, Fin.card_Iio]
    have hr : ((μ a : ℤ) : ℝ) = lowK ε lam a + 2 * rhoC ε a := by
      rw [hμ a]
      delta lowK rhoC rhoN rho
      simp only [Pi.add_apply, Pi.sub_apply]
      have e1 : ((univ.filter (fun b => a < b ∧ ε b = ε a)).card : ℝ) +
          (univ.filter (fun b => a < b ∧ ε b ≠ ε a)).card + (a : ℕ) + 1 = n := by
        exact_mod_cast (hgt1.symm ▸ hc1 : _)
      have e2 : ((univ.filter (fun b => b < a ∧ ε b = ε a)).card : ℝ) +
          (univ.filter (fun b => b < a ∧ ε b ≠ ε a)).card = (a : ℕ) := by
        exact_mod_cast (hlt1.trans hc2)
      linarith
    have h2 := congrArg (fun r : ℝ => (r : ℂ)) hr
    push_cast at h2 ⊢
    linear_combination h2
  have e : ∑ a, (μ a : ℂ) * B a a = ∑ a, ((lowK ε lam a : ℝ) : ℂ) * B a a +
      2 * ∑ a, ((rhoC ε a : ℝ) : ℂ) * B a a := by
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [key a]
    ring
  rw [e]
  ring

def Ssum (T : KType ε Λ) (μ : Fin n → ℤ) (x A : Matrix (Fin n) (Fin n) ℂ) (k : KG ε) : T.V →L[ℂ] T.V :=
  ∑ a, ∑ b ∈ univ.filter (fun b => ε b = ε a ∧ b ≠ a),
    (if b < a then (1 : ℂ) else -1) • InfKA.Ek T μ x (InfKA.entryCLM a b) A (Matrix.single a b 1) k

lemma integral_Ssum [CompactSpace (KG ε)] (T : KType ε Λ) (μ : Fin n → ℤ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) (A : Matrix (Fin n) (Fin n) ℂ) :
    Integrable (Ssum T μ x A) (muK ε) ∧ ∫ k, Ssum T μ x A k ∂(muK ε) = 0 := by
  have hI : ∀ a b : Fin n, Integrable (fun k => (if b < a then (1 : ℂ) else -1) •
      InfKA.Ek T μ x (InfKA.entryCLM a b) A (Matrix.single a b 1) k) (muK ε) := fun a b =>
    InfKA.integrable_of_cont ((InfKA.continuous_Ek T μ hx (InfKA.entryCLM a b) A
      (Matrix.single a b 1)).const_smul (if b < a then (1 : ℂ) else -1))
  refine ⟨MeasureTheory.integrable_finsetSum _ fun a _ => MeasureTheory.integrable_finsetSum _ fun b _ => hI a b, ?_⟩
  unfold Ssum
  rw [MeasureTheory.integral_finsetSum _ fun a _ => MeasureTheory.integrable_finsetSum _ fun b _ => hI a b]
  refine sum_eq_zero fun a _ => ?_
  rw [MeasureTheory.integral_finsetSum _ fun b _ => hI a b]
  refine sum_eq_zero fun b hb => ?_
  rw [integral_smul (if b < a then (1 : ℂ) else -1)
    (fun k => InfKA.Ek T μ x (InfKA.entryCLM a b) A (Matrix.single a b 1) k), InfKA.integral_Ek_block T μ hx _ A (isBlock_single (mem_filter.mp hb).2.1), smul_zero]

lemma Ssum_eq (T : KType ε Λ) (μ : Fin n → ℤ) (x A : Matrix (Fin n) (Fin n) ℂ) (k : KG ε)
    (hB : IsBlock ε (toMK k⁻¹ * A * toMK k)) :
    Ssum T μ x A k = InfKA.DkL T μ x k (lowMinusUp (toMK k⁻¹ * A * toMK k)) +
      (-4 * ∑ a, ((rhoC ε a : ℝ) : ℂ) * (toMK k⁻¹ * A * toMK k) a a) • Gint T μ x k := by
  have hφ : ∀ (a b : Fin n) (M : Matrix (Fin n) (Fin n) ℂ), InfKA.entryCLM a b M = M a b :=
    fun _ _ _ => rfl
  simp only [Ssum, InfKA.Ek, smul_add, Finset.sum_add_distrib, smul_smul, hφ]
  set A' := toMK k⁻¹ * A * toMK k with hA'
  have hl : ∀ a b, (A' * Matrix.single a b (1 : ℂ) - Matrix.single a b (1 : ℂ) * A') a b =
      A' a a - A' b b := by
    intro a b
    simp [Matrix.sub_apply, Matrix.mul_apply, Matrix.single_apply]
  congr 1
  · rw [lowMinusUp_expand hB, map_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [map_sum]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [map_smul]
  · simp only [← Finset.sum_smul]
    congr 1
    simp only [hl, Finset.sum_filter]
    have hsplit : ∀ a b : Fin n,
        (if ε b = ε a ∧ b ≠ a then (if b < a then (1 : ℂ) else -1) * (A' a a - A' b b) else 0) =
          (if ε b = ε a ∧ b ≠ a then (if b < a then (1 : ℂ) else -1) * A' a a else 0) +
          (if ε a = ε b ∧ a ≠ b then (if a < b then (1 : ℂ) else -1) * A' b b else 0) := by
      intro a b
      by_cases h : ε b = ε a ∧ b ≠ a
      · have h' : ε a = ε b ∧ a ≠ b := ⟨h.1.symm, Ne.symm h.2⟩
        rw [if_pos h, if_pos h, if_pos h']
        rcases lt_or_gt_of_ne h.2 with hab | hab
        · simp only [if_pos hab, if_neg (not_lt.2 hab.le)]
          ring
        · simp only [if_pos hab, if_neg (not_lt.2 hab.le)]
          ring
      · have h' : ¬ (ε a = ε b ∧ a ≠ b) := fun h' => h ⟨h'.1.symm, Ne.symm h'.2⟩
        rw [if_neg h, if_neg h, if_neg h', add_zero]
    simp only [hsplit, Finset.sum_add_distrib]
    conv_lhs => arg 2; rw [Finset.sum_comm]
    rw [← two_mul]
    have hc : ∀ a, ∑ b, (if ε b = ε a ∧ b ≠ a then (if b < a then (1 : ℂ) else -1) * A' a a else 0) =
        -2 * ((rhoC ε a : ℝ) : ℂ) * A' a a := by
      intro a
      have hp : ∀ b, (if ε b = ε a ∧ b ≠ a then (if b < a then (1 : ℂ) else -1) * A' a a else 0) =
          ((if b < a ∧ ε b = ε a then (1 : ℂ) else 0) - (if a < b ∧ ε b = ε a then (1 : ℂ) else 0)) *
            A' a a := by
        intro b
        rcases lt_trichotomy b a with h | rfl | h
        · by_cases he : ε b = ε a <;> simp [h, he, ne_of_lt h, not_lt.2 h.le]
        · simp
        · by_cases he : ε b = ε a <;> simp [h, he, ne_of_gt h, not_lt.2 h.le]
      simp only [hp]
      rw [← Finset.sum_mul, Finset.sum_sub_distrib, Finset.sum_boole, Finset.sum_boole]
      delta rhoC
      push_cast
      ring
    simp only [hc]
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    ring

lemma pt (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) {A : Matrix (Fin n) (Fin n) ℂ} (hA : IsBlock ε A) (hAh : Aᴴ = A) (k : KG ε) :
    fderiv ℂ (PhiM μ) (toMK k⁻¹ * x * toMK k) (toMK k⁻¹ * (A * x + x * A) * toMK k) •
        (T.op k * projW T * T.op k⁻¹) =
      Ssum T μ x A k - (T.dτ A * Gint T μ x k + Gint T μ x k * T.dτ A) := by
  have hmk : ∀ a b : KG ε, toMK (a * b) = toMK a * toMK b := fun _ _ => rfl
  have hop : ∀ a b : KG ε, T.op (a * b) = T.op a * T.op b := fun a b => by simp [KType.op, map_mul]
  have hop1 : T.op 1 = 1 := by simp [KType.op]
  have hkk : toMK k * toMK k⁻¹ = 1 := by rw [← hmk, mul_inv_cancel]; rfl
  have hok : T.op k * T.op k⁻¹ = 1 := by rw [← hop, mul_inv_cancel, hop1]
  have hok' : T.op k⁻¹ * T.op k = 1 := by rw [← hop, inv_mul_cancel, hop1]
  have hAJ : A * Jm ε = Jm ε * A := (kfa_comm_iff_block ε A).mpr hA
  have hk1 : toMK k * Jm ε = Jm ε * toMK k := (show toMK k ∈ Kset ε from k.2).2
  have hk2 : toMK k⁻¹ * Jm ε = Jm ε * toMK k⁻¹ := (show toMK k⁻¹ ∈ Kset ε from (k⁻¹).2).2
  have hH : toMK k⁻¹ * (A * x + x * A) * toMK k =
      (toMK k⁻¹ * A * toMK k) * (toMK k⁻¹ * x * toMK k) + (toMK k⁻¹ * x * toMK k) * (toMK k⁻¹ * A * toMK k) := by
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]
    simp only [← Matrix.mul_assoc (toMK k) (toMK k⁻¹), hkk, Matrix.one_mul]
  have hBJ : (toMK k⁻¹ * A * toMK k) * Jm ε = Jm ε * (toMK k⁻¹ * A * toMK k) := by
    calc toMK k⁻¹ * A * toMK k * Jm ε = toMK k⁻¹ * (A * (toMK k * Jm ε)) := by simp only [Matrix.mul_assoc]
      _ = toMK k⁻¹ * (A * Jm ε) * toMK k := by rw [hk1]; simp only [Matrix.mul_assoc]
      _ = toMK k⁻¹ * Jm ε * (A * toMK k) := by rw [hAJ]; simp only [Matrix.mul_assoc]
      _ = Jm ε * (toMK k⁻¹ * A * toMK k) := by rw [hk2]; simp only [Matrix.mul_assoc]
  have hBb : IsBlock ε (toMK k⁻¹ * A * toMK k) := (kfa_comm_iff_block ε _).mp hBJ
  have hBh : (toMK k⁻¹ * A * toMK k)ᴴ = toMK k⁻¹ * A * toMK k := by
    rw [InfKA.toMK_inv_eq]; simp [Matrix.conjTranspose_mul, hAh, Matrix.mul_assoc]
  have hdB : T.dτ (toMK k⁻¹ * A * toMK k) = T.op k⁻¹ * T.dτ A * T.op k := by
    have h := dtau_conj T k⁻¹ hA
    rw [inv_inv] at h
    exact h.symm
  have hk3 : ∀ X, T.op k * (T.op k⁻¹ * X) = X := fun X => by rw [← mul_assoc, hok, one_mul]
  have hdA : T.dτ A * (T.op k * projW T * T.op k⁻¹) + (T.op k * projW T * T.op k⁻¹) * T.dτ A =
      T.op k * (T.dτ (toMK k⁻¹ * A * toMK k) * projW T + projW T * T.dτ (toMK k⁻¹ * A * toMK k)) *
        T.op k⁻¹ := by
    rw [hdB]
    simp only [mul_assoc, mul_add, add_mul, hk3, hok, mul_one]
  have hconj : T.dτ A * Gint T μ x k + Gint T μ x k * T.dτ A =
      PhiM μ (toMK k⁻¹ * x * toMK k) • (T.op k * (T.dτ (lowMinusUp (toMK k⁻¹ * A * toMK k)) * projW T -
          projW T * T.dτ (lowMinusUp (toMK k⁻¹ * A * toMK k))) * T.op k⁻¹) +
        ((2 * ∑ a, ((lowK ε lam a : ℝ) : ℂ) * (toMK k⁻¹ * A * toMK k) a a) * PhiM μ (toMK k⁻¹ * x * toMK k)) •
          (T.op k * projW T * T.op k⁻¹) := by
    simp only [Gint]
    rw [mul_smul_comm, smul_mul_assoc, ← smul_add, hdA, tau_part T hBb hBh]
    simp only [mul_add, add_mul, mul_smul_comm, smul_mul_assoc]
    module
  rw [hH, phiM_part μ (InfKA.conj_mem_omega hx k), Ssum_eq T μ x A k hBb, InfKA.DkL_apply, hconj, scal (ε := ε) μ hμ]
  simp only [Gint]
  module

end InfKH

theorem psM_inf_herm (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) {A : Matrix (Fin n) (Fin n) ℂ} (hA : IsBlock ε A) (hAh : Aᴴ = A) :
    fderiv ℂ (psM T μ) x (A * x + x * A) = -(T.dτ A * psM T μ x + psM T μ x * T.dτ A) := by
  have := compactSpace_KG ε
  obtain ⟨U, -, hPU, -, -, hder⟩ := psM_holo T μ
  rw [hder x (hPU hx)]
  have hGI : Integrable (Gint T μ x) (muK ε) := InfKA.integrable_of_cont (InfKA.continuous_Gint T μ hx)
  have hL : ∫ k, T.dτ A * Gint T μ x k ∂(muK ε) = T.dτ A * ∫ k, Gint T μ x k ∂(muK ε) :=
    (ContinuousLinearMap.mul ℂ (T.V →L[ℂ] T.V) (T.dτ A)).integral_comp_comm hGI
  have hR : ∫ k, Gint T μ x k * T.dτ A ∂(muK ε) = (∫ k, Gint T μ x k ∂(muK ε)) * T.dτ A :=
    ((ContinuousLinearMap.mul ℂ (T.V →L[ℂ] T.V)).flip (T.dτ A)).integral_comp_comm hGI
  have hLI : Integrable (fun k => T.dτ A * Gint T μ x k) (muK ε) :=
    (ContinuousLinearMap.mul ℂ (T.V →L[ℂ] T.V) (T.dτ A)).integrable_comp hGI
  have hRI : Integrable (fun k => Gint T μ x k * T.dτ A) (muK ε) :=
    ((ContinuousLinearMap.mul ℂ (T.V →L[ℂ] T.V)).flip (T.dτ A)).integrable_comp hGI
  obtain ⟨hSI, hS0⟩ := InfKH.integral_Ssum T μ hx A
  have hLR : Integrable (fun k => T.dτ A * Gint T μ x k + Gint T μ x k * T.dτ A) (muK ε) := hLI.add hRI
  rw [integral_congr_ae (Filter.Eventually.of_forall (InfKH.pt T μ hμ hx hA hAh)),
    integral_sub hSI hLR, hS0, zero_sub, integral_add hLI hRI, hL, hR]
  have hps : psM T μ x = ((Module.finrank ℂ T.V : ℂ) / ((muK ε Set.univ).toReal : ℂ)) •
      ∫ k, Gint T μ x k ∂(muK ε) := rfl
  rw [hps]
  simp only [smul_neg, smul_add, mul_smul_comm, smul_mul_assoc]

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.LowMinusUpExpand =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRight =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRight", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.DTauFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRightA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.KFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.LowMinusUpExpand\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

variable {ε : Fin n → Bool} {lam : Fin n → ℝ}

private lemma smul_cancel_lemma {E : Type*} [AddCommGroup E] [Module ℂ E] {c : ℂ} (hc : c ≠ 0)
    {u v : E} (h : c • u = c • v) : u = v := by
  have h' := congrArg (fun w => c⁻¹ • w) h
  simpa [smul_smul, inv_mul_cancel₀ hc] using h'

lemma infR_skew (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ)
    {x : Matrix (Fin n) (Fin n) ℂ} (hx : x.PosDef) {A : Matrix (Fin n) (Fin n) ℂ} (hA : inK ε A) :
    fderiv ℂ (psM T μ) x (x * A) = -(T.dτ A * psM T μ x) ∧
      fderiv ℂ (psM T μ) x (A * x) = -(psM T μ x * T.dτ A) := by
  obtain ⟨hAs, hAb⟩ := (_root_.ReciprocityTheory.ChartRestriction.DS.S7.kfa_inK_iff ε A).1 hA
  have hH : IsBlock ε (Complex.I • A) := by
    intro i j hij
    rw [Matrix.smul_apply, hAb i j hij, smul_zero]
  have hI : star Complex.I = -Complex.I := Complex.conj_I
  have hHh : (Complex.I • A)ᴴ = Complex.I • A := by
    rw [Matrix.conjTranspose_smul, hAs, hI, neg_smul_neg]
  have h1 := psM_inf_herm T μ hμ hx hH hHh
  have e1 : Complex.I • A * x + x * (Complex.I • A) = Complex.I • (A * x + x * A) := by
    rw [smul_mul_assoc, mul_smul_comm, smul_add]
  rw [e1] at h1

  have hs : fderiv ℂ (psM T μ) x (A * x) + fderiv ℂ (psM T μ) x (x * A) =
      -(T.dτ A * psM T μ x + psM T μ x * T.dτ A) := by
    apply smul_cancel_lemma Complex.I_ne_zero
    simpa only [map_smul, map_add (f := _), smul_mul_assoc, mul_smul_comm, smul_add, smul_neg] using h1

  have hd : fderiv ℂ (psM T μ) x (x * A) - fderiv ℂ (psM T μ) x (A * x) =
      psM T μ x * T.dτ A - T.dτ A * psM T μ x := by
    rw [← map_sub]
    exact infR_conj T μ hx hA
  constructor
  · apply smul_cancel_lemma (two_ne_zero : (2 : ℂ) ≠ 0)
    rw [two_smul, two_smul]
    calc fderiv ℂ (psM T μ) x (x * A) + fderiv ℂ (psM T μ) x (x * A)
        = (fderiv ℂ (psM T μ) x (A * x) + fderiv ℂ (psM T μ) x (x * A)) +
          (fderiv ℂ (psM T μ) x (x * A) - fderiv ℂ (psM T μ) x (A * x)) := by abel
      _ = -(T.dτ A * psM T μ x + psM T μ x * T.dτ A) +
          (psM T μ x * T.dτ A - T.dτ A * psM T μ x) := by rw [hs, hd]
      _ = -(T.dτ A * psM T μ x) + -(T.dτ A * psM T μ x) := by abel
  · apply smul_cancel_lemma (two_ne_zero : (2 : ℂ) ≠ 0)
    rw [two_smul, two_smul]
    calc fderiv ℂ (psM T μ) x (A * x) + fderiv ℂ (psM T μ) x (A * x)
        = (fderiv ℂ (psM T μ) x (A * x) + fderiv ℂ (psM T μ) x (x * A)) -
          (fderiv ℂ (psM T μ) x (x * A) - fderiv ℂ (psM T μ) x (A * x)) := by abel
      _ = -(T.dτ A * psM T μ x + psM T μ x * T.dτ A) -
          (psM T μ x * T.dτ A - T.dτ A * psM T μ x) := by rw [hs, hd]
      _ = -(psM T μ x * T.dτ A) + -(psM T μ x * T.dτ A) := by abel

theorem psM_inf_right (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ) {x : Matrix (Fin n) (Fin n) ℂ}
    (hx : x.PosDef) {Y : Matrix (Fin n) (Fin n) ℂ} (hY : IsBlock ε Y) :
    fderiv ℂ (psM T μ) x (x * Y) = -(T.dτ Y * psM T μ x) ∧
      fderiv ℂ (psM T μ) x (Y * x) = -(psM T μ x * T.dτ Y) := by

  obtain ⟨A, B, hA, hB, rfl, -⟩ := block_decomp hY
  have hA' := infR_skew T μ hμ hx hA
  have hB' := infR_skew T μ hμ hx hB
  constructor
  · simp only [mul_add, add_mul, mul_smul_comm, smul_mul_assoc, map_add (f := _), map_smul, hA'.1, hB'.1,
      neg_add, smul_neg]
  · simp only [mul_add, add_mul, mul_smul_comm, smul_mul_assoc, map_add (f := _), map_smul, hA'.2, hB'.2,
      neg_add, smul_neg]

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRight =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PsMInfNhd =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PsMInfNhd", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IsClosedKset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ContinuousOnFderivPhiP\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.IdThmB\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.InfRight\npublic import Mathlib.Analysis.Calculus.FDeriv.Mul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory Matrix
open scoped ComplexOrder ContDiff ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.S7

open ReciprocityTheory.ChartRestriction.DS

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

variable {ε : Fin n → Bool} {lam : Fin n → ℝ}

theorem psM_inf_nhd (T : KType ε (lowK ε lam)) (μ : Fin n → ℤ) (hμ : IsMu lam μ) :
    ∃ U : Set (Matrix (Fin n) (Fin n) ℂ), IsOpen U ∧ posSet n ⊆ U ∧ DifferentiableOn ℂ (psM T μ) U ∧
      ∀ z ∈ U, ∀ Y : Matrix (Fin n) (Fin n) ℂ, IsBlock ε Y →
        fderiv ℂ (psM T μ) z (z * Y) = -(T.dτ Y * psM T μ z) ∧
          fderiv ℂ (psM T μ) z (Y * z) = -(psM T μ z * T.dτ Y) := by
  obtain ⟨U0, hU0o, hpos0, hΩ, hdiff, hfd⟩ := psM_holo (μ := μ) T
  refine ⟨{z | ∃ x : Matrix (Fin n) (Fin n) ℂ, x.PosDef ∧ ∃ r : ℝ, 0 < r ∧ ‖z - x‖ < r ∧
      (∀ w : Matrix (Fin n) (Fin n) ℂ, ‖w - x‖ < 3 * r → w ∈ U0) ∧
      (∀ H : Matrix (Fin n) (Fin n) ℂ, H.IsHermitian → ‖H‖ < 3 * r → (x + H).PosDef)},
      ?_, ?_, ?_, ?_⟩
  · refine Metric.isOpen_iff.mpr ?_
    rintro z ⟨x, hx, r, hr, hzx, hU, hP⟩
    refine ⟨r - ‖z - x‖, sub_pos.mpr hzx, fun z' hz' => ⟨x, hx, r, hr, ?_, hU, hP⟩⟩
    rw [Metric.mem_ball, dist_eq_norm] at hz'
    have h1 : z' - x = (z' - z) + (z - x) := by abel
    rw [h1]
    have h2 := norm_add_le (z' - z) (z - x)
    linarith
  · intro x hx
    have hx' : x.PosDef := hx
    obtain ⟨δ, hδ, hδP⟩ := IdB.posDef_nhd hx'
    obtain ⟨e, he, heU⟩ := Metric.isOpen_iff.mp hU0o x (hpos0 hx)
    have hm : 0 < min δ e / 3 := div_pos (lt_min hδ he) (by norm_num)
    refine ⟨x, hx', min δ e / 3, hm, by rw [sub_self, norm_zero]; exact hm, ?_, ?_⟩
    · intro w hw
      apply heU
      rw [Metric.mem_ball, dist_eq_norm]
      have : min δ e ≤ e := min_le_right δ e
      linarith
    · intro H hH hHn
      apply hδP H hH
      have : min δ e ≤ δ := min_le_left δ e
      linarith
  · refine hdiff.mono ?_
    intro z hz
    obtain ⟨x, hx, r, hr, hzx, hU, hP⟩ := hz
    exact hU z (by linarith)
  · rintro z ⟨x, hx, r, hr, hzx, hU, hP⟩ Y hY
    have hxH : xᴴ = x := hx.1.eq
    have h12 : star (1 / 2 : ℂ) = 1 / 2 := by
      have h := Complex.conj_ofReal (1 / 2 : ℝ)
      push_cast at h
      exact h
    have hsI : star Complex.I = -Complex.I := Complex.conj_I
    have hn12 : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by simp
    obtain ⟨A, hA⟩ : ∃ A : Matrix (Fin n) (Fin n) ℂ, A = (1 / 2 : ℂ) • (z + zᴴ) := ⟨_, rfl⟩
    obtain ⟨B, hB⟩ : ∃ B : Matrix (Fin n) (Fin n) ℂ,
        B = (1 / 2 : ℂ) • (Complex.I • (zᴴ - z)) := ⟨_, rfl⟩
    have hAH : A.IsHermitian := by
      rw [Matrix.IsHermitian, hA]
      ext i j
      simp only [Matrix.conjTranspose_apply, Matrix.smul_apply, Matrix.add_apply, smul_eq_mul,
        star_mul', star_add, star_star, h12]
      ring
    have hBH : B.IsHermitian := by
      rw [Matrix.IsHermitian, hB]
      ext i j
      simp only [Matrix.conjTranspose_apply, Matrix.smul_apply, Matrix.sub_apply, smul_eq_mul,
        star_mul', star_sub, star_star, h12, hsI]
      ring
    have hAB : A + Complex.I • B = z := by
      rw [hA, hB]
      ext i j
      simp only [Matrix.add_apply, Matrix.smul_apply, Matrix.sub_apply, Matrix.conjTranspose_apply,
        smul_eq_mul]
      linear_combination ((1 / 2 : ℂ) * (star (z j i) - z i j)) * Complex.I_sq
    have hAx : A - x = (1 / 2 : ℂ) • ((z - x) + (z - x)ᴴ) := by
      rw [hA, Matrix.conjTranspose_sub, hxH]; module
    have hBx : B = (1 / 2 : ℂ) • (Complex.I • ((z - x)ᴴ - (z - x))) := by
      rw [hB, Matrix.conjTranspose_sub, hxH]; module
    have hAn : ‖A - x‖ ≤ ‖z - x‖ := by
      have h := norm_add_le (z - x) (z - x)ᴴ
      rw [Matrix.norm_conjTranspose] at h
      rw [hAx, norm_smul, hn12]
      linarith
    have hBn : ‖B‖ ≤ ‖z - x‖ := by
      have h := norm_sub_le (z - x)ᴴ (z - x)
      rw [Matrix.norm_conjTranspose] at h
      rw [hBx, norm_smul, norm_smul, hn12, Complex.norm_I]
      linarith
    have hbound : ∀ s : ℂ, ‖s‖ < 2 → ‖A + s • B - x‖ < 3 * r := by
      intro s hs
      have e1 : A + s • B - x = (A - x) + s • B := by abel
      rw [e1]
      have h1 := norm_add_le (A - x) (s • B)
      rw [norm_smul] at h1
      have h2 : ‖s‖ * ‖B‖ ≤ 2 * ‖z - x‖ := mul_le_mul hs.le hBn (norm_nonneg _) (by norm_num)
      linarith
    have key : ∀ s : ℂ, ‖s‖ < 2 → A + s • B ∈ U0 := fun s hs => hU _ (hbound s hs)
    have hposR : ∀ t : ℝ, |t| < 2 → (A + (t : ℂ) • B).PosDef := by
      intro t ht
      have hs : ‖(t : ℂ)‖ < 2 := by rwa [Complex.norm_real, Real.norm_eq_abs]
      have hBt : ((t : ℂ) • B).IsHermitian := by
        rw [Matrix.IsHermitian, Matrix.conjTranspose_smul, hBH.eq]
        rw [show star (t : ℂ) = (t : ℂ) from Complex.conj_ofReal t]
      have hH : (A + (t : ℂ) • B - x).IsHermitian := (hAH.add hBt).sub hx.1
      have := hP _ hH (hbound _ hs)
      simpa using this
    have hI : ‖Complex.I‖ < 2 := by rw [Complex.norm_I]; norm_num
    constructor
    · let g : ℂ → (T.V →L[ℂ] T.V) := fun s =>
        ((Module.finrank ℂ T.V : ℂ) / ((muK ε Set.univ).toReal : ℂ)) •
          (∫ k, IdA.dPhi2 μ (toMK k⁻¹ * (A + s • B) * toMK k,
            toMK k⁻¹ * (A * Y + s • (B * Y)) * toMK k) • (T.op k * projW T * T.op k⁻¹) ∂(muK ε))
          + T.dτ Y * psM T μ (A + s • B)
      have hgeq : ∀ s : ℂ, A + s • B ∈ U0 →
          g s = fderiv ℂ (psM T μ) (A + s • B) ((A + s • B) * Y) + T.dτ Y * psM T μ (A + s • B) := by
        intro s hs
        rw [hfd _ hs]
        simp only [g, add_mul, Matrix.smul_mul] <;> rfl
      have hgd : ∀ s : ℂ, ‖s‖ < 2 → DifferentiableAt ℂ g s := by
        intro s hs
        have hw : DifferentiableAt ℂ (fun y : ℂ => A + y • B) s :=
          (differentiableAt_const A).add (differentiableAt_id.smul_const B)
        have hψ := (hdiff.differentiableAt (hU0o.mem_nhds (key s hs))).comp s hw
        exact ((line_int_differentiableAt T μ hU0o hΩ A B (A * Y) (B * Y) (key s hs)).const_smul
          ((Module.finrank ℂ T.V : ℂ) / ((muK ε Set.univ).toReal : ℂ))).add (hψ.const_mul (T.dτ Y))
      have hgr : ∀ t : ℝ, |t| < 2 → g t = 0 := by
        intro t ht
        have hs : ‖(t : ℂ)‖ < 2 := by rwa [Complex.norm_real, Real.norm_eq_abs]
        rw [hgeq _ (key _ hs), (psM_inf_right T μ hμ (hposR t ht) hY).1]
        simp
      have h0 := IdB.line_zero g hgd hgr
      rw [hgeq _ (key _ hI), hAB] at h0
      exact eq_neg_of_add_eq_zero_left h0
    · let g : ℂ → (T.V →L[ℂ] T.V) := fun s =>
        ((Module.finrank ℂ T.V : ℂ) / ((muK ε Set.univ).toReal : ℂ)) •
          (∫ k, IdA.dPhi2 μ (toMK k⁻¹ * (A + s • B) * toMK k,
            toMK k⁻¹ * (Y * A + s • (Y * B)) * toMK k) • (T.op k * projW T * T.op k⁻¹) ∂(muK ε))
          + psM T μ (A + s • B) * T.dτ Y
      have hgeq : ∀ s : ℂ, A + s • B ∈ U0 →
          g s = fderiv ℂ (psM T μ) (A + s • B) (Y * (A + s • B)) + psM T μ (A + s • B) * T.dτ Y := by
        intro s hs
        rw [hfd _ hs]
        simp only [g, mul_add, Matrix.mul_smul] <;> rfl
      have hgd : ∀ s : ℂ, ‖s‖ < 2 → DifferentiableAt ℂ g s := by
        intro s hs
        have hw : DifferentiableAt ℂ (fun y : ℂ => A + y • B) s :=
          (differentiableAt_const A).add (differentiableAt_id.smul_const B)
        have hψ := (hdiff.differentiableAt (hU0o.mem_nhds (key s hs))).comp s hw
        exact ((line_int_differentiableAt T μ hU0o hΩ A B (Y * A) (Y * B) (key s hs)).const_smul
          ((Module.finrank ℂ T.V : ℂ) / ((muK ε Set.univ).toReal : ℂ))).add (hψ.mul_const (T.dτ Y))
      have hgr : ∀ t : ℝ, |t| < 2 → g t = 0 := by
        intro t ht
        have hs : ‖(t : ℂ)‖ < 2 := by rwa [Complex.norm_real, Real.norm_eq_abs]
        rw [hgeq _ (key _ hs), (psM_inf_right T μ hμ (hposR t ht) hY).2]
        simp
      have h0 := IdB.line_zero g hgd hgr
      rw [hgeq _ (key _ hI), hAB] at h0
      exact eq_neg_of_add_eq_zero_left h0

end ReciprocityTheory.ChartRestriction.DS.S7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.PsMInfNhd =====
