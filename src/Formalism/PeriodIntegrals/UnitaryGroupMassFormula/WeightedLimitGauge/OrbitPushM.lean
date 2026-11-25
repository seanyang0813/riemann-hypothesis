module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushC
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushV
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.Deriv.Pow
public import Mathlib.MeasureTheory.Function.JacobianOneDim
public import Mathlib.Analysis.SpecialFunctions.PolarCoord
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushH

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushR, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushM

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushR =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushR", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushC\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\npublic import Mathlib.Analysis.SpecialFunctions.Sqrt\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Pow\npublic import Mathlib.MeasureTheory.Function.JacobianOneDim\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section

open MeasureTheory Filter Topology Matrix
open scoped ENNReal

namespace PI.RhsWLim.W

open PI.RhsWLim

variable {k : ℕ}

theorem radial {T' : ℝ} (hT' : 0 < T') (E : Set ((Fin k → ℂ) × ℂ)) (hE : MeasurableSet E) (y : Fin k → ℂ)
    (θ : ℝ) :
    ∫⁻ R in Set.Ioi (0 : ℝ), ENNReal.ofReal R *
        (coneSh k T' E).indicator 1 (y, (R : ℂ) * Complex.exp (θ * Complex.I)) =
      ∫⁻ t in Set.Ioo (1 : ℝ) 2, ENNReal.ofReal (T' * t) * E.indicator 1 (hq k T' (t⁻¹ • y) θ) := by
  set a := ∑ i, Complex.normSq (y i) with ha_def
  have ha : 0 ≤ a := Finset.sum_nonneg fun i _ => Complex.normSq_nonneg _
  have hS := measurableSet_coneSh hT' hE
  set g : ℝ → ℝ≥0∞ := fun R => ENNReal.ofReal R *
    (coneSh k T' E).indicator 1 (y, (R : ℂ) * Complex.exp (θ * Complex.I)) with hgdef
  have hsupp : ((Set.Ioi (0 : ℝ)).indicator g).support ⊆ phiR a T' '' Set.Ioo 1 2 := by
    intro R hR
    rw [Function.mem_support] at hR
    have hR0 : R ∈ Set.Ioi (0 : ℝ) := by
      by_contra h
      exact hR (Set.indicator_of_notMem h _)
    rw [Set.indicator_of_mem hR0] at hR
    have hR0' : 0 < R := hR0
    have hmem : (y, (R : ℂ) * Complex.exp (θ * Complex.I)) ∈ coneSh k T' E := by
      by_contra h
      apply hR
      simp only [hgdef, Set.indicator_of_notMem h, mul_zero]
    rw [coneSh_eq hT'] at hmem
    obtain ⟨hneg, h1, h2, -⟩ := hmem
    refine ⟨tau k T' (y, (R : ℂ) * Complex.exp (θ * Complex.I)), ⟨h1, h2⟩, ?_⟩
    have hqv : qf k (y, (R : ℂ) * Complex.exp (θ * Complex.I)) = a - R ^ 2 := by
      unfold qf
      simp only
      rw [Complex.normSq_mul, Complex.normSq_ofReal, Complex.normSq_eq_norm_sq (Complex.exp _),
        Complex.norm_exp_ofReal_mul_I, ← ha_def]
      ring
    have htau2 : tau k T' (y, (R : ℂ) * Complex.exp (θ * Complex.I)) ^ 2 = (R ^ 2 - a) / T' := by
      unfold tau
      rw [Real.sq_sqrt (div_nonneg (by linarith) hT'.le), hqv]
      ring
    unfold phiR
    rw [htau2, div_mul_cancel₀ _ hT'.ne', show a + (R ^ 2 - a) = R ^ 2 by ring, Real.sqrt_sq hR0'.le]
  rw [← lintegral_indicator measurableSet_Ioi, ← setLIntegral_eq_of_support_subset hsupp]
  have hpos : ∀ t : ℝ, 0 < t → 0 < a + t ^ 2 * T' := fun t ht =>
    add_pos_of_nonneg_of_pos ha (mul_pos (pow_pos ht 2) hT')
  have hderiv : ∀ t ∈ Set.Ioo (1 : ℝ) 2, HasDerivWithinAt (phiR a T')
      (2 * t * T' / (2 * Real.sqrt (a + t ^ 2 * T'))) (Set.Ioo 1 2) t := by
    intro t ht
    have ht0 : 0 < t := by linarith [ht.1]
    have h1 : HasDerivAt (fun t => a + t ^ 2 * T') (2 * t * T') t := by
      have := ((hasDerivAt_pow 2 t).mul_const T').const_add a
      exact this.congr_deriv (by ring)
    exact (h1.sqrt (hpos t ht0).ne').hasDerivWithinAt
  have hinj : Set.InjOn (phiR a T') (Set.Ioo 1 2) := by
    intro t1 h1 t2 h2 he
    have h10 : 0 < t1 := by linarith [h1.1]
    have h20 : 0 < t2 := by linarith [h2.1]
    unfold phiR at he
    rw [Real.sqrt_inj (hpos t1 h10).le (hpos t2 h20).le] at he
    have e2 : t1 ^ 2 = t2 ^ 2 := mul_right_cancel₀ hT'.ne' (by linarith)
    exact (pow_left_inj₀ h10.le h20.le two_ne_zero).1 e2
  rw [lintegral_image_eq_lintegral_abs_deriv_mul measurableSet_Ioo hderiv hinj]
  refine setLIntegral_congr_fun measurableSet_Ioo (fun t ht => ?_)
  have ht0 : 0 < t := by linarith [ht.1]
  have hφpos : 0 < Real.sqrt (a + t ^ 2 * T') := Real.sqrt_pos.2 (hpos t ht0)
  have hφ : phiR a T' t = Real.sqrt (a + t ^ 2 * T') := rfl
  rw [Set.indicator_of_mem (show phiR a T' t ∈ Set.Ioi (0 : ℝ) from hφ ▸ hφpos)]
  have hm := slice_mem hT' E y θ t ht0
  have hfac : ENNReal.ofReal |2 * t * T' / (2 * Real.sqrt (a + t ^ 2 * T'))| *
      ENNReal.ofReal (phiR a T' t) = ENNReal.ofReal (T' * t) := by
    rw [← ENNReal.ofReal_mul (abs_nonneg _), abs_of_pos (div_pos (mul_pos (mul_pos two_pos ht0) hT')
      (mul_pos two_pos hφpos)), hφ]
    congr 1
    field_simp
  by_cases hE' : hq k T' (t⁻¹ • y) θ ∈ E
  · rw [Set.indicator_of_mem hE']
    simp only [hgdef]
    rw [Set.indicator_of_mem (hm.2 ⟨ht.1, ht.2, hE'⟩)]
    simp only [Pi.one_apply, mul_one]
    exact hfac
  · rw [Set.indicator_of_notMem hE']
    simp only [hgdef]
    rw [Set.indicator_of_notMem (fun h => hE' (hm.1 h).2.2)]
    simp

end PI.RhsWLim.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushR =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushM =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushM", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushC\npublic import Mathlib.Analysis.SpecialFunctions.PolarCoord\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushH\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushR\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section

open MeasureTheory Filter Topology Matrix
open scoped ENNReal

namespace PI.RhsWLim.W

open PI.RhsWLim

variable {k : ℕ}

theorem lintegral_inv_smul {t : ℝ} (ht : 0 < t) {G : (Fin k → ℂ) → ℝ≥0∞} (hG : Measurable G) :
    ∫⁻ y, G (t⁻¹ • y) = ENNReal.ofReal (t ^ Module.finrank ℝ (Fin k → ℂ)) * ∫⁻ y, G y := by
  have hH : (volume : Measure (Fin k → ℂ)).IsAddHaarMeasure := inferInstance
  set f : (Fin k → ℂ) →ₗ[ℝ] (Fin k → ℂ) := t⁻¹ • LinearMap.id with hfdef
  have hdet : LinearMap.det f = (t⁻¹) ^ Module.finrank ℝ (Fin k → ℂ) := by
    rw [hfdef, LinearMap.det_smul, LinearMap.det_id, mul_one]
  have hdet0 : LinearMap.det f ≠ 0 := by rw [hdet]; exact pow_ne_zero _ (inv_ne_zero ht.ne')
  have hmap := Measure.map_linearMap_addHaar_eq_smul_addHaar (μ := (volume : Measure (Fin k → ℂ))) hdet0
  rw [hdet, inv_pow, inv_inv, abs_of_pos (pow_pos ht _)] at hmap
  have hfm : Measurable f := f.continuous_of_finiteDimensional.measurable
  have e : (fun y : Fin k → ℂ => G (t⁻¹ • y)) = fun y => G (f y) := by
    funext y
    simp [hfdef]
  rw [e, ← lintegral_map hG hfm, hmap, lintegral_smul_measure, smul_eq_mul]

theorem polar_symm_exp (p : ℝ × ℝ) :
    Complex.polarCoord.symm p = (p.1 : ℂ) * Complex.exp (p.2 * Complex.I) := by
  rw [Complex.polarCoord_symm_apply, Complex.exp_mul_I, ← Complex.ofReal_cos, ← Complex.ofReal_sin]

theorem coneVol : ConeVol := by
  intro k T' hT'
  set d := Module.finrank ℝ (Fin k → ℂ) with hd
  set C : ℝ≥0∞ := ∫⁻ t in Set.Ioo (1 : ℝ) 2, ENNReal.ofReal (T' * t) * ENNReal.ofReal (t ^ d) with hC
  refine ⟨C, ?_, ?_, fun E hE => ?_⟩
  · apply ne_of_gt
    calc (0 : ℝ≥0∞) < ENNReal.ofReal T' * volume (Set.Ioo (1 : ℝ) 2) := by
          rw [Real.volume_Ioo]
          exact ENNReal.mul_pos (by simpa using hT') (by norm_num)
      _ = ∫⁻ t in Set.Ioo (1 : ℝ) 2, ENNReal.ofReal T' := (setLIntegral_const _ _).symm
      _ ≤ C := setLIntegral_mono' measurableSet_Ioo fun t ht => by
          have ht1 : 1 < t := ht.1
          rw [← ENNReal.ofReal_mul (by nlinarith)]
          apply ENNReal.ofReal_le_ofReal
          have h1 : 1 ≤ t ^ d := one_le_pow₀ ht1.le
          have h2 : 1 ≤ t * t ^ d := one_le_mul_of_one_le_of_one_le ht1.le h1
          calc T' = T' * 1 := (mul_one _).symm
            _ ≤ T' * (t * t ^ d) := mul_le_mul_of_nonneg_left h2 hT'.le
            _ = T' * t * t ^ d := by ring
  · apply ne_of_lt
    calc C ≤ ∫⁻ t in Set.Ioo (1 : ℝ) 2, ENNReal.ofReal (T' * 2 * 2 ^ d) :=
          setLIntegral_mono' measurableSet_Ioo fun t ht => by
            have ht1 : 1 < t := ht.1
            have ht2 : t < 2 := ht.2
            rw [← ENNReal.ofReal_mul (by nlinarith)]
            apply ENNReal.ofReal_le_ofReal
            have h1 : t ^ d ≤ 2 ^ d := pow_le_pow_left₀ (by linarith) ht2.le d
            have h2 : 0 ≤ t ^ d := pow_nonneg (by linarith) d
            have h3 : T' * t ≤ T' * 2 := by nlinarith
            calc T' * t * t ^ d ≤ T' * 2 * t ^ d := by nlinarith
              _ ≤ T' * 2 * 2 ^ d := by nlinarith
      _ < ⊤ := by
          rw [setLIntegral_const, Real.volume_Ioo]
          exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top ENNReal.ofReal_lt_top
  have hS := measurableSet_coneSh hT' hE
  have hf : Measurable (E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞)) := measurable_one.indicator hE
  set F3 : (Fin k → ℂ) → ℝ → ℝ → ℝ≥0∞ := fun y θ t =>
    ENNReal.ofReal (T' * t) * E.indicator 1 (hq k T' (t⁻¹ • y) θ) with hF3
  have hF3m : Measurable (fun p : ((Fin k → ℂ) × ℝ) × ℝ => F3 p.1.1 p.1.2 p.2) := by
    refine (ENNReal.measurable_ofReal.comp (measurable_const.mul measurable_snd)).mul ?_
    exact hf.comp ((continuous_hq k T').measurable.comp
      ((measurable_snd.inv.smul (measurable_fst.comp measurable_fst)).prodMk (measurable_snd.comp measurable_fst)))

  have hfib : ∀ y : Fin k → ℂ, volume (Prod.mk y ⁻¹' coneSh k T' E) =
      ∫⁻ θ in Set.Ioo (-Real.pi) Real.pi, ∫⁻ t in Set.Ioo (1 : ℝ) 2, F3 y θ t := by
    intro y
    have hSy : MeasurableSet (Prod.mk y ⁻¹' coneSh k T' E) := measurable_prodMk_left hS
    have hg : Measurable (fun p : ℝ × ℝ => ENNReal.ofReal p.1 •
        (Prod.mk y ⁻¹' coneSh k T' E).indicator (1 : ℂ → ℝ≥0∞) ((p.1 : ℂ) * Complex.exp (p.2 * Complex.I))) := by
      refine (ENNReal.measurable_ofReal.comp measurable_fst).smul ?_
      exact (measurable_one.indicator hSy).comp ((Complex.continuous_ofReal.comp continuous_fst).mul
        (Complex.continuous_exp.comp ((Complex.continuous_ofReal.comp continuous_snd).mul
          continuous_const))).measurable
    rw [← lintegral_indicator_one hSy, ← Complex.lintegral_comp_polarCoord_symm]
    simp_rw [polar_symm_exp]
    rw [polarCoord_target, Measure.volume_eq_prod, ← Measure.prod_restrict, lintegral_prod _ hg.aemeasurable,
      lintegral_lintegral_swap hg.aemeasurable]
    refine lintegral_congr fun θ => ?_
    rw [hF3]
    dsimp only
    rw [← radial hT' E hE y θ]
    refine lintegral_congr fun R => ?_
    rw [smul_eq_mul]
    rfl
  rw [Measure.volume_eq_prod, Measure.prod_apply hS]
  simp_rw [hfib]

  have hm2 : Measurable (fun p : (Fin k → ℂ) × ℝ => ∫⁻ t in Set.Ioo (1 : ℝ) 2, F3 p.1 p.2 t) :=
    hF3m.lintegral_prod_right'
  rw [lintegral_lintegral_swap hm2.aemeasurable]
  have hm3 : ∀ θ : ℝ, Measurable (fun p : (Fin k → ℂ) × ℝ => F3 p.1 θ p.2) := fun θ =>
    hF3m.comp (((measurable_fst).prodMk measurable_const).prodMk measurable_snd)
  have step : ∀ θ : ℝ, ∫⁻ y, ∫⁻ t in Set.Ioo (1 : ℝ) 2, F3 y θ t =
      ∫⁻ t in Set.Ioo (1 : ℝ) 2, ENNReal.ofReal (T' * t) * ENNReal.ofReal (t ^ d) *
        ∫⁻ y, E.indicator 1 (hq k T' y θ) := by
    intro θ
    rw [lintegral_lintegral_swap (hm3 θ).aemeasurable]
    refine setLIntegral_congr_fun measurableSet_Ioo fun t ht => ?_
    have ht0 : 0 < t := by linarith [ht.1]
    rw [hF3]
    dsimp only
    have hGm : Measurable (fun y : Fin k → ℂ => E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞) (hq k T' y θ)) :=
      hf.comp ((continuous_hq k T').measurable.comp (measurable_id.prodMk measurable_const))
    rw [lintegral_const_mul (ENNReal.ofReal (T' * t)) (f := fun x => E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞)
      (hq k T' (t⁻¹ • x) θ)) (hGm.comp (measurable_const_smul _))]
    have hsc := lintegral_inv_smul ht0 hGm
    rw [hsc, mul_assoc]
  simp_rw [step]
  have hP : Measurable (fun θ : ℝ => ∫⁻ y, E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞) (hq k T' y θ)) := by
    have : Measurable (fun p : (Fin k → ℂ) × ℝ => E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞) (hq k T' p.1 p.2)) :=
      hf.comp (continuous_hq k T').measurable
    exact this.lintegral_prod_left'
  have hct : Measurable (fun t : ℝ => ENNReal.ofReal (T' * t) * ENNReal.ofReal (t ^ d)) :=
    (ENNReal.measurable_ofReal.comp (measurable_const.mul measurable_id)).mul
      (ENNReal.measurable_ofReal.comp (measurable_id.pow_const d))
  have hprod : Measurable (Function.uncurry fun (θ : ℝ) (t : ℝ) =>
      ENNReal.ofReal (T' * t) * ENNReal.ofReal (t ^ d) * ∫⁻ y, E.indicator (1 : (Fin k → ℂ) × ℂ → ℝ≥0∞) (hq k T' y θ)) :=
    (hct.comp measurable_snd).mul (hP.comp measurable_fst)
  rw [lintegral_lintegral_swap hprod.aemeasurable]
  unfold hqI
  rw [hC, ← lintegral_mul_const _ hct]
  refine lintegral_congr fun t => ?_
  rw [lintegral_const_mul _ hP]

end PI.RhsWLim.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedLimitGauge.OrbitPushM =====
