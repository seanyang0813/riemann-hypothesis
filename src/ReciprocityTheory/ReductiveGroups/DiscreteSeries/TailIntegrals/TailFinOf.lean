module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt
public import Mathlib.Analysis.SpecialFunctions.JapaneseBracket
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.VolumeUnivFinZero, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.GaugeSplittingAlgebra, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.CriticalExponentSucc, ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailFinOf

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.VolumeUnivFinZero =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.VolumeUnivFinZero", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.JapaneseBracket\npublic import Mathlib.MeasureTheory.Integral.IntegrableOn\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open MeasureTheory Module
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Xi
namespace J2

instance xpBorel (p m : ℕ) : BorelSpace (Xp p m) := by
  have : BorelSpace ((Fin m → ℂ) × ℝ) := Prod.borelSpace
  have : BorelSpace ((Fin p → ℂ) × (Fin m → ℂ) × ℝ) := Prod.borelSpace
  exact Prod.borelSpace

instance xpHaar (p m : ℕ) : (volume : Measure (Xp p m)).IsAddHaarMeasure := by
  have : (volume : Measure ((Fin m → ℂ) × ℝ)).IsAddHaarMeasure := Measure.prod.instIsAddHaarMeasure _ _
  have : (volume : Measure ((Fin p → ℂ) × (Fin m → ℂ) × ℝ)).IsAddHaarMeasure :=
    Measure.prod.instIsAddHaarMeasure _ _
  exact Measure.prod.instIsAddHaarMeasure _ _

lemma lint_smul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E]
    [FiniteDimensional ℝ E] (μ : Measure E) [μ.IsAddHaarMeasure] {f : E → ℝ≥0∞} (hf : Measurable f)
    {t : ℝ} (ht : t ≠ 0) :
    ∫⁻ x, f (t • x) ∂μ = ENNReal.ofReal |(t ^ finrank ℝ E)⁻¹| * ∫⁻ x, f x ∂μ := by
  have hdet : LinearMap.det (t • LinearMap.id : E →ₗ[ℝ] E) = t ^ finrank ℝ E := by
    rw [LinearMap.det_smul, LinearMap.det_id, mul_one]
  have hne : LinearMap.det (t • LinearMap.id : E →ₗ[ℝ] E) ≠ 0 := by
    rw [hdet]
    exact pow_ne_zero _ ht
  have hmap := MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar μ hne
  have hf' : (fun x => f (t • x)) = fun x => f ((t • LinearMap.id : E →ₗ[ℝ] E) x) := rfl
  rw [hf', ← MeasureTheory.lintegral_map hf (LinearMap.continuous_of_finiteDimensional _).measurable, hmap,
    MeasureTheory.lintegral_smul_measure, hdet, smul_eq_mul]

def kc (s : ℝ) : ℝ≥0∞ := ∫⁻ z : ℂ, ENNReal.ofReal ((1 + ‖z‖ ^ 2) ^ (-s / 2))

lemma kc_lt_top {s : ℝ} (hs : 2 < s) : kc s < ∞ := by
  unfold kc
  have hi := integrable_rpow_neg_one_add_norm_sq (E := ℂ) (μ := (volume : Measure ℂ)) (r := s)
    (by rw [Complex.finrank_real_complex]; exact_mod_cast hs)
  exact hi.lintegral_lt_top

lemma kernel (Q D : ℝ) (hQ : 0 < Q) (hD : 0 < D) (c : ℂ) (s : ℝ) :
    ∫⁻ w : ℂ, ENNReal.ofReal ((Q * ‖w - c‖ ^ 2 + D) ^ (-s / 2)) =
      ENNReal.ofReal (Q⁻¹ * D ^ (1 - s / 2)) * kc s := by
  have h1 : ∫⁻ w : ℂ, ENNReal.ofReal ((Q * ‖w - c‖ ^ 2 + D) ^ (-s / 2)) =
      ∫⁻ w : ℂ, ENNReal.ofReal ((Q * ‖w‖ ^ 2 + D) ^ (-s / 2)) := by
    rw [← MeasureTheory.lintegral_add_right_eq_self (μ := (volume : Measure ℂ))
      (fun w : ℂ => ENNReal.ofReal ((Q * ‖w - c‖ ^ 2 + D) ^ (-s / 2))) c]
    simp only [add_sub_cancel_right]
  rw [h1]
  obtain ⟨t, ht⟩ : ∃ t : ℝ, t = Real.sqrt (D / Q) := ⟨_, rfl⟩
  have htpos : 0 < t := by
    rw [ht]
    exact Real.sqrt_pos.mpr (div_pos hD hQ)
  have ht2 : t ^ 2 = D / Q := by
    rw [ht]
    exact Real.sq_sqrt (div_pos hD hQ).le
  have hmeas : Measurable (fun w : ℂ => ENNReal.ofReal ((Q * ‖w‖ ^ 2 + D) ^ (-s / 2))) := by
    first
    | fun_prop
  have hmeas2 : Measurable (fun w : ℂ => ENNReal.ofReal ((1 + ‖w‖ ^ 2) ^ (-s / 2))) := by
    first
    | fun_prop
  have h2 := lint_smul (volume : Measure ℂ) hmeas htpos.ne'
  beta_reduce at h2
  rw [Complex.finrank_real_complex] at h2
  have h3 : ∀ z : ℂ, ENNReal.ofReal ((Q * ‖t • z‖ ^ 2 + D) ^ (-s / 2)) =
      ENNReal.ofReal (D ^ (-s / 2)) * ENNReal.ofReal ((1 + ‖z‖ ^ 2) ^ (-s / 2)) := by
    intro z
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos htpos, mul_pow, ht2,
      ← ENNReal.ofReal_mul (Real.rpow_nonneg hD.le _)]
    congr 1
    rw [← Real.mul_rpow hD.le (by positivity)]
    congr 1
    field_simp
    ring
  simp_rw [h3] at h2
  rw [MeasureTheory.lintegral_const_mul _ hmeas2] at h2
  have hinv : 0 < (t ^ 2)⁻¹ := inv_pos.mpr (pow_pos htpos 2)
  have h4 : ∫⁻ w : ℂ, ENNReal.ofReal ((Q * ‖w‖ ^ 2 + D) ^ (-s / 2)) =
      ENNReal.ofReal (t ^ 2) * (ENNReal.ofReal (D ^ (-s / 2)) * kc s) := by
    unfold kc
    rw [h2, ← mul_assoc, ← ENNReal.ofReal_mul (pow_nonneg htpos.le 2), abs_of_pos hinv,
      mul_inv_cancel₀ (pow_pos htpos 2).ne', ENNReal.ofReal_one, one_mul]
  rw [h4, ← mul_assoc, ← ENNReal.ofReal_mul (pow_nonneg htpos.le 2), ht2]
  congr 2
  rw [show (1 : ℝ) - s / 2 = 1 + (-s / 2) by ring, Real.rpow_add hD, Real.rpow_one, div_eq_mul_inv]
  ring

lemma cons_symm {p : ℕ} (q : ℂ × (Fin p → ℂ)) :
    (MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p + 1) => ℂ) 0).symm q = Fin.cons q.1 q.2 := by
  rw [MeasurableEquiv.piFinSuccAbove_symm_apply]
  first
  | exact Fin.insertNth_zero' q.1 q.2

lemma split_cons {p : ℕ} {R : Type*} [MeasureSpace R] [SFinite (volume : Measure R)]
    (G : (Fin (p + 1) → ℂ) × R → ℝ≥0∞) (hG : Measurable G) :
    ∫⁻ z, G z = ∫⁻ w : ℂ, ∫⁻ q : (Fin p → ℂ) × R, G (Fin.cons w q.1, q.2) := by
  have hpi := (MeasureTheory.measurePreserving_piFinSuccAbove (fun _ : Fin (p + 1) => (volume : Measure ℂ)) 0).symm
  have hF : Measurable fun x : Fin (p + 1) → ℂ => ∫⁻ r : R, G (x, r) := hG.lintegral_prod_right'
  have hcons : ∀ w : ℂ, Measurable (fun q : (Fin p → ℂ) × R => ((Fin.cons w q.1 : Fin (p + 1) → ℂ), q.2)) := by
    intro w
    have hm : Measurable (fun q : (Fin p → ℂ) × R =>
        ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p + 1) => ℂ) 0).symm (w, q.1), q.2)) := by
      first
      | exact ((MeasurableEquiv.measurable _).comp (measurable_const.prodMk measurable_fst)).prodMk measurable_snd
    simpa only [cons_symm] using hm
  calc ∫⁻ z, G z = ∫⁻ x : Fin (p + 1) → ℂ, ∫⁻ r : R, G (x, r) := MeasureTheory.lintegral_prod _ hG.aemeasurable
    _ = ∫⁻ y : ℂ × (Fin p → ℂ), (∫⁻ r : R, G ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p + 1) => ℂ) 0).symm y, r))
          ∂((volume : Measure ℂ).prod (volume : Measure (Fin p → ℂ))) := (hpi.lintegral_comp hF).symm
    _ = ∫⁻ w : ℂ, ∫⁻ q : Fin p → ℂ, ∫⁻ r : R, G (Fin.cons w q, r) := by
          rw [MeasureTheory.lintegral_prod (fun y : ℂ × (Fin p → ℂ) =>
            ∫⁻ r : R, G ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p + 1) => ℂ) 0).symm y, r))
            (hF.comp (MeasurableEquiv.measurable _)).aemeasurable]
          simp only [cons_symm]
    _ = ∫⁻ w : ℂ, ∫⁻ q : (Fin p → ℂ) × R, G (Fin.cons w q.1, q.2) := by
          refine MeasureTheory.lintegral_congr fun w => ?_
          exact (MeasureTheory.lintegral_prod (fun q : (Fin p → ℂ) × R => G (Fin.cons w q.1, q.2))
            (hG.comp (hcons w)).aemeasurable).symm

lemma split_cons' {p : ℕ} {R : Type*} [MeasureSpace R] [SFinite (volume : Measure R)]
    (G : (Fin (p + 1) → ℂ) × R → ℝ≥0∞) (hG : Measurable G) :
    ∫⁻ z, G z = ∫⁻ q : (Fin p → ℂ) × R, ∫⁻ w : ℂ, G (Fin.cons w q.1, q.2) := by
  rw [split_cons G hG]
  apply MeasureTheory.lintegral_lintegral_swap
  apply Measurable.aemeasurable
  have hm : Measurable (fun x : ℂ × ((Fin p → ℂ) × R) =>
      ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p + 1) => ℂ) 0).symm (x.1, x.2.1), x.2.2)) := by
    first
    | exact ((MeasurableEquiv.measurable _).comp (measurable_fst.prodMk (measurable_fst.comp measurable_snd))).prodMk
        (measurable_snd.comp measurable_snd)
  have h2 := hG.comp hm
  simp only [cons_symm] at h2
  exact h2

def sclL (p m : ℕ) (t : ℝ) : Xp p m →ₗ[ℝ] Xp p m :=
  (t • LinearMap.id).prodMap ((t • LinearMap.id).prodMap ((t • LinearMap.id).prodMap ((t ^ 2) • LinearMap.id)))

lemma sclL_apply (p m : ℕ) (t : ℝ) (x : Xp p m) :
    sclL p m t x = (t • x.1, t • x.2.1, t • x.2.2.1, t ^ 2 * x.2.2.2) := rfl

lemma det_sclL (p m : ℕ) (t : ℝ) : LinearMap.det (sclL p m t) = t ^ (4 * p + 2 * m + 2) := by
  unfold sclL
  rw [LinearMap.det_prodMap, LinearMap.det_prodMap, LinearMap.det_prodMap]
  simp only [LinearMap.det_smul, LinearMap.det_id, mul_one, Module.finrank_pi_fintype, Complex.finrank_real_complex,
    Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul, Module.finrank_self]
  ring

lemma lint_scl {p m : ℕ} {G : Xp p m → ℝ≥0∞} (hG : Measurable G) {t : ℝ} (ht : 0 < t) :
    ∫⁻ x, G x = ENNReal.ofReal (t ^ (4 * p + 2 * m + 2)) * ∫⁻ x, G (sclL p m t x) := by
  have hdet : LinearMap.det (sclL p m t) ≠ 0 := by
    rw [det_sclL]
    exact pow_ne_zero _ ht.ne'
  have hmap := MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar (volume : Measure (Xp p m)) hdet
  have htp : 0 < t ^ (4 * p + 2 * m + 2) := pow_pos ht _
  rw [← MeasureTheory.lintegral_map hG (LinearMap.continuous_of_finiteDimensional (sclL p m t)).measurable, hmap,
    MeasureTheory.lintegral_smul_measure, det_sclL, smul_eq_mul, ← mul_assoc, ← ENNReal.ofReal_mul htp.le,
    abs_of_pos (inv_pos.mpr htp), mul_inv_cancel₀ htp.ne', ENNReal.ofReal_one, one_mul]

lemma base_pt (m : ℕ) (v : ℝ) (hv : 0 < v) (x : Xp 0 m) :
    de x 0 ^ (-(s0N 0 m 0 + v)) ≤ 2 ^ (m + v / 2 : ℝ) *
      ((1 + ‖x.2.2.1‖ ^ 2) ^ (-(2 * (m + v / 2 : ℝ)) / 2) * (1 + ‖x.2.2.2‖ ^ 2) ^ (-(1 + v / 2) / 2)) := by
  set u := x.2.2.1 with hu
  set β := x.2.2.2 with hβ
  set S : ℝ := ∑ i, ‖u i‖ ^ 2 with hS
  have hS0 : 0 ≤ S := Finset.sum_nonneg fun i _ => by positivity
  have ha : ‖u‖ ^ 2 ≤ S := by
    have h1 : ‖u‖ ≤ Real.sqrt S := by
      rw [pi_norm_le_iff_of_nonneg (Real.sqrt_nonneg _)]
      intro i
      rw [Real.le_sqrt (norm_nonneg _) hS0]
      exact Finset.single_le_sum (f := fun i => ‖u i‖ ^ 2) (fun i _ => by positivity) (Finset.mem_univ i)
    calc ‖u‖ ^ 2 ≤ (Real.sqrt S) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h1 2
      _ = S := Real.sq_sqrt hS0
  have hL : ∀ l : Fin 1, Lsq x l = 1 := by
    intro l
    simp [Lsq]
  have hrho : rhoSq x 0 = 1 + S := by
    simp [rhoSq, hL, hS, hu]
  have hbco : ‖bco x 0‖ ^ 2 = (S / 2) ^ 2 + β ^ 2 := by
    have h1 : bco x 0 = ((-S / 2 : ℝ) : ℂ) + (β : ℂ) * Complex.I := by
      simp [bco, hS, hu, hβ]
    rw [h1, Complex.sq_norm, Complex.normSq_add_mul_I]
    ring
  have hpos : 0 < (1 + S / 2) ^ 2 + β ^ 2 := by positivity
  have hAq : de x 0 = Real.sqrt ((1 + S / 2) ^ 2 + β ^ 2) := by
    unfold de
    rw [hL, hrho, hbco]
    congr 1
    ring
  have hs0 : s0N 0 m 0 = (m : ℝ) + 1 := by simp [s0N]
  rw [hAq, hs0, Real.sqrt_eq_rpow, ← Real.rpow_mul hpos.le]
  have hsplit : (1 / 2 : ℝ) * -((m : ℝ) + 1 + v) = -((m : ℝ) + v / 2) / 2 + -(1 + v / 2) / 2 := by ring
  rw [hsplit, Real.rpow_add hpos]
  have he1 : 0 ≤ (m : ℝ) + v / 2 := by positivity
  have hb1 : ((1 + S / 2) ^ 2 + β ^ 2) ^ (-((m : ℝ) + v / 2) / 2) ≤
      2 ^ ((m : ℝ) + v / 2) * (1 + ‖u‖ ^ 2) ^ (-(2 * ((m : ℝ) + v / 2)) / 2) := by
    have hh : (1 + ‖u‖ ^ 2) / 2 ≤ 1 + S / 2 := by linarith
    have h0 : 0 ≤ (1 + ‖u‖ ^ 2) / 2 := by positivity
    have hq : ((1 + ‖u‖ ^ 2) / 2) ^ 2 ≤ (1 + S / 2) ^ 2 + β ^ 2 := by
      nlinarith [mul_le_mul hh hh h0 (by linarith), sq_nonneg β]
    have hq0 : 0 < ((1 + ‖u‖ ^ 2) / 2) ^ 2 := by positivity
    calc ((1 + S / 2) ^ 2 + β ^ 2) ^ (-((m : ℝ) + v / 2) / 2)
        ≤ (((1 + ‖u‖ ^ 2) / 2) ^ 2) ^ (-((m : ℝ) + v / 2) / 2) :=
          Real.rpow_le_rpow_of_nonpos hq0 hq (by linarith)
      _ = 2 ^ ((m : ℝ) + v / 2) * (1 + ‖u‖ ^ 2) ^ (-(2 * ((m : ℝ) + v / 2)) / 2) := by
          have hy : ((1 + ‖u‖ ^ 2) / 2) ^ 2 = ((1 + ‖u‖ ^ 2) / 2) ^ (2 : ℝ) := (Real.rpow_two _).symm
          rw [hy, ← Real.rpow_mul h0, Real.div_rpow (by positivity) (by norm_num)]
          rw [show (2 : ℝ) * (-((m : ℝ) + v / 2) / 2) = -((m : ℝ) + v / 2) by ring,
            show -(2 * ((m : ℝ) + v / 2)) / 2 = -((m : ℝ) + v / 2) by ring,
            Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), div_inv_eq_mul]
          ring
  have hb2 : ((1 + S / 2) ^ 2 + β ^ 2) ^ (-(1 + v / 2) / 2) ≤ (1 + ‖β‖ ^ 2) ^ (-(1 + v / 2) / 2) := by
    have hq : 1 + ‖β‖ ^ 2 ≤ (1 + S / 2) ^ 2 + β ^ 2 := by
      rw [Real.norm_eq_abs, sq_abs]
      nlinarith
    exact Real.rpow_le_rpow_of_nonpos (by positivity) hq (by linarith)
  calc ((1 + S / 2) ^ 2 + β ^ 2) ^ (-((m : ℝ) + v / 2) / 2) * ((1 + S / 2) ^ 2 + β ^ 2) ^ (-(1 + v / 2) / 2)
      ≤ (2 ^ ((m : ℝ) + v / 2) * (1 + ‖u‖ ^ 2) ^ (-(2 * ((m : ℝ) + v / 2)) / 2)) *
          (1 + ‖β‖ ^ 2) ^ (-(1 + v / 2) / 2) :=
        mul_le_mul hb1 hb2 (Real.rpow_nonneg hpos.le _) (by positivity)
    _ = _ := by ring

lemma volume_univ_fin_zero : (volume : Measure (Fin 0 → ℂ)) Set.univ = 1 := by
  first
  | simp [MeasureTheory.volume_pi]

lemma ch_base (m : ℕ) (ν : Fin 1 → ℝ) (hν : 0 < ν 0) : CHInt 0 m ν < ∞ := by
  have hv := hν
  have hf1 : MeasureTheory.Integrable
      (fun u : Fin m → ℂ => (1 + ‖u‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) := by
    apply integrable_rpow_neg_one_add_norm_sq
    simp only [Module.finrank_pi_fintype, Complex.finrank_real_complex, Finset.sum_const, Finset.card_univ,
      Fintype.card_fin, smul_eq_mul]
    push_cast
    linarith
  have hf2 : MeasureTheory.Integrable (fun b : ℝ => (1 + ‖b‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) := by
    apply integrable_rpow_neg_one_add_norm_sq
    rw [Module.finrank_self]
    push_cast
    linarith
  have hm1 : Measurable fun u : Fin m → ℂ => ENNReal.ofReal ((1 + ‖u‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) := by
    first
    | fun_prop
  have hm2 : Measurable fun b : ℝ => ENNReal.ofReal ((1 + ‖b‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) := by
    first
    | fun_prop
  have hprod : ∫⁻ y : (Fin m → ℂ) × ℝ, ENNReal.ofReal ((1 + ‖y.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
      ENNReal.ofReal ((1 + ‖y.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) < ∞ := by
    rw [MeasureTheory.Measure.volume_eq_prod, MeasureTheory.lintegral_prod_mul hm1.aemeasurable hm2.aemeasurable]
    exact ENNReal.mul_lt_top hf1.lintegral_lt_top hf2.lintegral_lt_top
  have hpeel : ∀ {β : Type} [MeasureSpace β] [SFinite (volume : Measure β)] (g : β → ℝ≥0∞), Measurable g →
      ∫⁻ x : (Fin 0 → ℂ) × β, g x.2 = ∫⁻ y, g y := by
    intro β _ _ g hg
    rw [MeasureTheory.Measure.volume_eq_prod,
      MeasureTheory.lintegral_prod (fun x : (Fin 0 → ℂ) × β => g x.2) (hg.comp measurable_snd).aemeasurable]
    simp only [MeasureTheory.lintegral_const, volume_univ_fin_zero, mul_one]
  have hbound : CHInt 0 m ν ≤ ∫⁻ x : Xp 0 m, ENNReal.ofReal (2 ^ ((m : ℝ) + ν 0 / 2)) *
      (ENNReal.ofReal ((1 + ‖x.2.2.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖x.2.2.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2))) := by
    unfold CHInt
    refine MeasureTheory.lintegral_mono fun x => ?_
    rw [Fin.prod_univ_one,
      ← ENNReal.ofReal_mul (Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ 1 + ‖x.2.2.1‖ ^ 2) _),
      ← ENNReal.ofReal_mul (by positivity : (0 : ℝ) ≤ 2 ^ ((m : ℝ) + ν 0 / 2))]
    exact ENNReal.ofReal_le_ofReal (base_pt m (ν 0) hν x)
  refine lt_of_le_of_lt hbound ?_
  rw [MeasureTheory.lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
  refine ENNReal.mul_lt_top ENNReal.ofReal_lt_top ?_
  have hg1 : Measurable fun z : (Fin m → ℂ) × ℝ => ENNReal.ofReal ((1 + ‖z.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
      ENNReal.ofReal ((1 + ‖z.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) :=
    (hm1.comp measurable_fst).mul (hm2.comp measurable_snd)
  have e1 : ∫⁻ x : Xp 0 m, ENNReal.ofReal ((1 + ‖x.2.2.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
      ENNReal.ofReal ((1 + ‖x.2.2.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) =
      ∫⁻ y : (Fin 0 → ℂ) × ((Fin m → ℂ) × ℝ), ENNReal.ofReal ((1 + ‖y.2.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖y.2.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) :=
    hpeel (fun y : (Fin 0 → ℂ) × ((Fin m → ℂ) × ℝ) =>
      ENNReal.ofReal ((1 + ‖y.2.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖y.2.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2))) (hg1.comp measurable_snd)
  have e2 : ∫⁻ y : (Fin 0 → ℂ) × ((Fin m → ℂ) × ℝ), ENNReal.ofReal ((1 + ‖y.2.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖y.2.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) =
      ∫⁻ z : (Fin m → ℂ) × ℝ, ENNReal.ofReal ((1 + ‖z.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖z.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2)) :=
    hpeel (fun z : (Fin m → ℂ) × ℝ => ENNReal.ofReal ((1 + ‖z.1‖ ^ 2) ^ (-(2 * ((m : ℝ) + ν 0 / 2)) / 2)) *
        ENNReal.ofReal ((1 + ‖z.2‖ ^ 2) ^ (-(1 + ν 0 / 2) / 2))) hg1
  rw [e1, e2]
  exact hprod

end J2
end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.VolumeUnivFinZero =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.GaugeSplittingAlgebra =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.GaugeSplittingAlgebra", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open MeasureTheory
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Xi
namespace J2

lemma lsq_zero {p m : ℕ} (x : Xp p m) : Lsq x 0 = 1 := by simp [Lsq]

lemma lsq_one {p m : ℕ} (x : Xp (p + 1) m) : Lsq x 1 = 1 + ‖x.1 0‖ ^ 2 := by
  simp [Lsq]

lemma rhoSq_zero {p m : ℕ} (x : Xp (p + 1) m) : rhoSq x 0 = rhoSq x 1 + ‖x.2.1 0‖ ^ 2 := by
  simp only [rhoSq, Fin.sum_univ_succ]
  simp
  ring_nf

lemma bco_zero {p m : ℕ} (x : Xp (p + 1) m) : bco x 0 = bco x 1 - x.2.1 0 * star (x.1 0) := by
  simp only [bco, Fin.sum_univ_succ]
  simp
  ring_nf

lemma one_le_lsq {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) : 1 ≤ Lsq x l := by
  unfold Lsq
  have : 0 ≤ ∑ j : Fin p, (if j.val < l.val then ‖x.1 j‖ ^ 2 else 0) :=
    Finset.sum_nonneg fun j _ => by split_ifs <;> positivity
  linarith

lemma rhoSq_nonneg {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) : 0 ≤ rhoSq x l := by
  unfold rhoSq
  have h1 := one_le_lsq x (Fin.last p)
  have : 0 ≤ ∑ j : Fin p, (if l.val ≤ j.val then ‖x.2.1 j‖ ^ 2 else 0) :=
    Finset.sum_nonneg fun j _ => by split_ifs <;> positivity
  have : 0 ≤ ∑ i, ‖x.2.2.1 i‖ ^ 2 := Finset.sum_nonneg fun _ _ => by positivity
  linarith

lemma de_sq {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) :
    de x l ^ 2 = Lsq x l * rhoSq x l + ‖bco x l‖ ^ 2 := by
  unfold de
  rw [Real.sq_sqrt]
  have := one_le_lsq x l; have := rhoSq_nonneg x l
  positivity

lemma de_nonneg {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) : 0 ≤ de x l := Real.sqrt_nonneg _

lemma one_le_rhoSq {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) : 1 ≤ rhoSq x l := by
  unfold rhoSq
  have h1 := one_le_lsq x (Fin.last p)
  have : 0 ≤ ∑ j : Fin p, (if l.val ≤ j.val then ‖x.2.1 j‖ ^ 2 else 0) :=
    Finset.sum_nonneg fun j _ => by split_ifs <;> positivity
  have : 0 ≤ ∑ i, ‖x.2.2.1 i‖ ^ 2 := Finset.sum_nonneg fun _ _ => by positivity
  linarith

lemma de_pos {p m : ℕ} (x : Xp p m) (l : Fin (p + 1)) : 0 < de x l := by
  unfold de
  apply Real.sqrt_pos.2
  have h1 := one_le_lsq x l; have h2 := one_le_rhoSq x l
  have : 0 ≤ ‖bco x l‖ ^ 2 := by positivity
  nlinarith

lemma rhoSq_cons {p m : ℕ} (a : Fin (p + 1) → ℂ) (w : ℂ) (b : Fin p → ℂ) (r : (Fin m → ℂ) × ℝ)
    (i : Fin (p + 1)) :
    rhoSq ((a, Fin.cons w b, r) : Xp (p + 1) m) i.succ = rhoSq ((a, Fin.cons 0 b, r) : Xp (p + 1) m) i.succ := by
  simp [rhoSq, Lsq, Fin.sum_univ_succ]

lemma bco_cons {p m : ℕ} (a : Fin (p + 1) → ℂ) (w : ℂ) (b : Fin p → ℂ) (r : (Fin m → ℂ) × ℝ)
    (i : Fin (p + 1)) :
    bco ((a, Fin.cons w b, r) : Xp (p + 1) m) i.succ = bco ((a, Fin.cons 0 b, r) : Xp (p + 1) m) i.succ := by
  simp [bco, Fin.sum_univ_succ]

lemma de_cons {p m : ℕ} (a : Fin (p + 1) → ℂ) (w : ℂ) (b : Fin p → ℂ) (r : (Fin m → ℂ) × ℝ)
    (i : Fin (p + 1)) :
    de ((a, Fin.cons w b, r) : Xp (p + 1) m) i.succ = de ((a, Fin.cons 0 b, r) : Xp (p + 1) m) i.succ := by
  simp only [de, rhoSq_cons, bco_cons]
  rfl

def sclPt {p m : ℕ} (a0 : ℂ) (r : ℝ) (x : Xp p m) :
    (Fin (p + 1) → ℂ) × (Fin p → ℂ) × (Fin m → ℂ) × ℝ :=
  (Fin.cons a0 (r • x.1), r • x.2.1, r • x.2.2.1, r ^ 2 * x.2.2.2)

lemma lsq_scl_one {p m : ℕ} (a0 : ℂ) (r : ℝ) (x : Xp p m) :
    Lsq (tailPt (sclPt a0 r x)) 1 = 1 + ‖a0‖ ^ 2 := by
  simp [Lsq, tailPt, sclPt]

lemma lsq_scl {p m : ℕ} (a0 : ℂ) (r : ℝ) (hr : 1 + ‖a0‖ ^ 2 = r ^ 2) (x : Xp p m) (i : Fin (p + 1)) :
    Lsq (tailPt (sclPt a0 r x)) i.succ = r ^ 2 * Lsq x i := by
  simp only [Lsq, tailPt, sclPt, Fin.sum_univ_succ, Fin.cons_zero, Fin.cons_succ, Fin.val_zero,
    Fin.val_succ, Pi.smul_apply, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]
  simp only [Nat.zero_lt_succ, if_true, add_lt_add_iff_right, mul_add, Finset.mul_sum, mul_ite, mul_zero]
  linarith

lemma rhoSq_scl {p m : ℕ} (a0 : ℂ) (r : ℝ) (hr : 1 + ‖a0‖ ^ 2 = r ^ 2) (x : Xp p m) (i : Fin (p + 1)) :
    rhoSq (tailPt (sclPt a0 r x)) i.succ = r ^ 2 * rhoSq x i := by
  have hl := lsq_scl a0 r hr x (Fin.last p)
  rw [Fin.succ_last] at hl
  unfold rhoSq
  rw [hl]
  simp only [tailPt, sclPt, Fin.sum_univ_succ, Fin.cons_zero, Fin.cons_succ, Fin.val_zero,
    Fin.val_succ, Pi.smul_apply, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]
  simp only [add_le_add_iff_right, mul_add, Finset.mul_sum, mul_ite, mul_zero]
  simp

lemma bco_scl {p m : ℕ} (a0 : ℂ) (r : ℝ) (x : Xp p m) (i : Fin (p + 1)) :
    bco (tailPt (sclPt a0 r x)) i.succ = ((r ^ 2 : ℝ) : ℂ) * bco x i := by
  simp only [bco, tailPt, sclPt, Fin.sum_univ_succ, Fin.cons_zero, Fin.cons_succ, Fin.val_zero,
    Fin.val_succ, Pi.smul_apply, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]
  simp only [add_le_add_iff_right, Complex.real_smul, star_mul',
    Complex.star_def, Complex.conj_ofReal]
  push_cast
  simp
  have s1 : ∑ j, (r : ℂ) ^ 2 * ((‖x.2.2.1 j‖ : ℂ)) ^ 2 = (r : ℂ) ^ 2 * ∑ j, ((‖x.2.2.1 j‖ : ℂ)) ^ 2 := by
    rw [Finset.mul_sum]
  have s2 : (∑ j : Fin p, if (i : ℕ) ≤ (j : ℕ) then (r : ℂ) * x.2.1 j * ((r : ℂ) * (starRingEnd ℂ) (x.1 j)) else 0)
      = (r : ℂ) ^ 2 * ∑ j : Fin p, if (i : ℕ) ≤ (j : ℕ) then x.2.1 j * (starRingEnd ℂ) (x.1 j) else 0 := by
    rw [Finset.mul_sum]; refine Finset.sum_congr rfl fun j _ => ?_; split_ifs <;> ring
  rw [s1, s2]; ring

lemma de_scl {p m : ℕ} (a0 : ℂ) (r : ℝ) (hr : 1 + ‖a0‖ ^ 2 = r ^ 2) (x : Xp p m) (i : Fin (p + 1)) :
    de (tailPt (sclPt a0 r x)) i.succ = r ^ 2 * de x i := by
  have h := de_sq (tailPt (sclPt a0 r x)) i.succ
  rw [lsq_scl a0 r hr, rhoSq_scl a0 r hr, bco_scl, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (sq_nonneg r)] at h
  have h2 := de_sq x i
  have : de (tailPt (sclPt a0 r x)) i.succ ^ 2 = (r ^ 2 * de x i) ^ 2 := by rw [h, mul_pow (r ^ 2) (de x i), h2]; ring
  have p1 := de_nonneg (tailPt (sclPt a0 r x)) i.succ
  have p2 := de_nonneg x i
  exact (pow_left_inj₀ p1 (by positivity) two_ne_zero).1 this

lemma cont_lsq {p m : ℕ} (l : Fin (p + 1)) : Continuous fun x : Xp p m => Lsq x l := by
  unfold Lsq
  exact continuous_const.add (continuous_finsetSum (Finset.univ : Finset (Fin _)) fun j _ => by split_ifs <;> fun_prop)

lemma cont_rhoSq {p m : ℕ} (l : Fin (p + 1)) : Continuous fun x : Xp p m => rhoSq x l := by
  unfold rhoSq
  refine ((cont_lsq _).add (continuous_finsetSum _ fun j _ => by fun_prop)).add
    (continuous_finsetSum _ fun j _ => by split_ifs <;> fun_prop)

lemma cont_bco {p m : ℕ} (l : Fin (p + 1)) : Continuous fun x : Xp p m => bco x l := by
  unfold bco
  refine Continuous.sub ?_ (continuous_finsetSum _ fun j _ => by split_ifs <;> fun_prop)
  fun_prop

lemma cont_de {p m : ℕ} (l : Fin (p + 1)) : Continuous fun x : Xp p m => de x l :=
  Real.continuous_sqrt.comp (((cont_lsq l).mul (cont_rhoSq l)).add ((cont_bco l).norm.pow 2))

lemma cont_cons {p : ℕ} : Continuous fun q : ℂ × (Fin p → ℂ) => (Fin.cons q.1 q.2 : Fin (p + 1) → ℂ) := by
  refine continuous_pi fun j => ?_
  refine Fin.cases ?_ (fun i => ?_) j
  · simpa using continuous_fst
  · simp only [Fin.cons_succ]
    exact (continuous_apply i).comp continuous_snd

lemma cont_tailPt {p m : ℕ} :
    Continuous (tailPt : (Fin (p + 1) → ℂ) × (Fin p → ℂ) × (Fin m → ℂ) × ℝ → Xp (p + 1) m) := by
  unfold tailPt
  exact continuous_fst.prodMk ((cont_cons.comp (continuous_const.prodMk
    (continuous_fst.comp continuous_snd))).prodMk (continuous_snd.comp continuous_snd))

end J2
end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.GaugeSplittingAlgebra =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.CriticalExponentSucc =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.CriticalExponentSucc", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.VolumeUnivFinZero\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.GaugeSplittingAlgebra\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open MeasureTheory Module
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Xi
namespace J2

abbrev TDom (p m : ℕ) := (Fin (p + 1) → ℂ) × (Fin p → ℂ) × (Fin m → ℂ) × ℝ

def chF (p m : ℕ) (ν : Fin (p + 1) → ℝ) (x : Xp p m) : ℝ≥0∞ :=
  ∏ l, ENNReal.ofReal (de x l ^ (-(s0N p m l + ν l)))

def tailF (p m : ℕ) (α : ℝ) (ν : Fin (p + 1) → ℝ) (x : TDom p m) : ℝ≥0∞ :=
  ENNReal.ofReal (Lsq (tailPt x) 1 ^ ((-2 + α) / 2)) * ENNReal.ofReal (de (tailPt x) 1 ^ (-α)) *
    ∏ i : Fin (p + 1), ENNReal.ofReal (de (tailPt x) i.succ ^ (-(s0N (p + 1) m i.succ + ν i)))

lemma chF_meas (p m : ℕ) (ν : Fin (p + 1) → ℝ) : Measurable (chF p m ν) := by
  unfold chF
  exact Finset.measurable_prod _ fun l _ =>
    ENNReal.measurable_ofReal.comp ((cont_de l).measurable.pow_const _)

lemma tailF_meas (p m : ℕ) (α : ℝ) (ν : Fin (p + 1) → ℝ) : Measurable (tailF p m α ν) := by
  unfold tailF
  have h := cont_tailPt (p := p) (m := m)
  exact ((ENNReal.measurable_ofReal.comp (((cont_lsq 1).comp h).measurable.pow_const _)).mul
    (ENNReal.measurable_ofReal.comp (((cont_de 1).comp h).measurable.pow_const _))).mul
    (Finset.measurable_prod _ fun i _ =>
      ENNReal.measurable_ofReal.comp (((cont_de i.succ).comp h).measurable.pow_const _))

lemma criticalExponent_succ (p m : ℕ) (i : Fin (p + 1)) : s0N (p + 1) m i.succ = s0N p m i := by
  simp [s0N, Fin.val_succ]

lemma sum_s0N (p m : ℕ) : ∑ i, s0N p m i = 2 * p + m + 1 := by
  rw [Fin.sum_univ_castSucc]
  simp [s0N]
  ring

lemma prod_update {p : ℕ} (d s ν : Fin (p + 1) → ℝ) (hd : ∀ l, 0 < d l) (α : ℝ) :
    ∏ l, d l ^ (-(s l + Function.update ν 0 (α + ν 0) l)) = d 0 ^ (-α) * ∏ l, d l ^ (-(s l + ν l)) := by
  rw [Fin.prod_univ_succ, Fin.prod_univ_succ]
  simp only [Function.update_self, Function.update_of_ne (Fin.succ_ne_zero _)]
  rw [show -(s 0 + (α + ν 0)) = -α + -(s 0 + ν 0) by ring, Real.rpow_add (hd 0)]
  ring

lemma tail_pt (p m : ℕ) (α : ℝ) (ν : Fin (p + 1) → ℝ) (a0 : ℂ) (t : ℝ) (hr : 1 + ‖a0‖ ^ 2 = t ^ 2)
    (q : Xp p m) :
    tailF p m α ν (sclPt a0 t q) =
      ENNReal.ofReal ((1 + ‖a0‖ ^ 2) ^ ((-2 + α) / 2 - α - ∑ i, (s0N p m i + ν i))) *
        chF p m (Function.update ν 0 (α + ν 0)) q := by
  have hL : 0 < 1 + ‖a0‖ ^ 2 := by positivity
  unfold tailF chF
  rw [lsq_scl_one, ← Fin.succ_zero_eq_one, de_scl a0 t hr q 0]
  simp only [de_scl a0 t hr q, criticalExponent_succ]
  rw [← hr, ← ENNReal.ofReal_prod_of_nonneg
      (fun i _ => Real.rpow_nonneg (mul_nonneg hL.le (de_pos q i).le) _),
    ← ENNReal.ofReal_prod_of_nonneg (fun l _ => Real.rpow_nonneg (de_pos q l).le _),
    ← ENNReal.ofReal_mul (Real.rpow_nonneg hL.le _),
    ← ENNReal.ofReal_mul (mul_nonneg (Real.rpow_nonneg hL.le _)
      (Real.rpow_nonneg (mul_nonneg hL.le (de_pos q 0).le) _)),
    ← ENNReal.ofReal_mul (Real.rpow_nonneg hL.le _)]
  congr 1
  rw [prod_update (de q) (s0N p m) ν (de_pos q) α,
    Finset.prod_congr rfl fun i _ => Real.mul_rpow hL.le (de_pos q i).le, Finset.prod_mul_distrib,
    ← Real.rpow_sum_of_pos hL, Real.mul_rpow hL.le (de_pos q 0).le]
  rw [show (-2 + α) / 2 - α - ∑ i, (s0N p m i + ν i) = (-2 + α) / 2 + -α + ∑ i, -(s0N p m i + ν i) by
    rw [Finset.sum_neg_distrib]; ring, Real.rpow_add hL, Real.rpow_add hL]
  ring

lemma tail_inner (p m : ℕ) (α : ℝ) (ν : Fin (p + 1) → ℝ) (a0 : ℂ) :
    ∫⁻ q : Xp p m, tailF p m α ν (Fin.cons a0 q.1, q.2) =
      ENNReal.ofReal ((1 + ‖a0‖ ^ 2) ^ (-(2 + α + 2 * ∑ i, ν i) / 2)) *
        CHInt p m (Function.update ν 0 (α + ν 0)) := by
  have hL : 0 < 1 + ‖a0‖ ^ 2 := by positivity
  set t := Real.sqrt (1 + ‖a0‖ ^ 2) with ht_def
  have ht : 0 < t := Real.sqrt_pos.2 hL
  have htt : 1 + ‖a0‖ ^ 2 = t ^ 2 := (Real.sq_sqrt hL.le).symm
  have hc : Continuous fun q : Xp p m => ((Fin.cons a0 q.1, q.2) : TDom p m) :=
    (cont_cons.comp (continuous_const.prodMk continuous_fst)).prodMk continuous_snd
  have hG : Measurable fun q : Xp p m => tailF p m α ν (Fin.cons a0 q.1, q.2) :=
    (tailF_meas p m α ν).comp hc.measurable
  have hpt : ∀ x : Xp p m, tailF p m α ν (Fin.cons a0 (sclL p m t x).1, (sclL p m t x).2) =
      tailF p m α ν (sclPt a0 t x) := fun x => by rw [sclL_apply]; rfl
  rw [lint_scl hG ht]
  simp only [hpt, tail_pt p m α ν a0 t htt]
  rw [lintegral_const_mul _ (chF_meas _ _ _), ← mul_assoc, ← ENNReal.ofReal_mul (by positivity)]
  have hreal : t ^ (4 * p + 2 * m + 2) * (1 + ‖a0‖ ^ 2) ^ ((-2 + α) / 2 - α - ∑ i, (s0N p m i + ν i)) =
      (1 + ‖a0‖ ^ 2) ^ (-(2 + α + 2 * ∑ i, ν i) / 2) := by
    rw [show 4 * p + 2 * m + 2 = 2 * (2 * p + m + 1) by ring, pow_mul, ← htt, ← Real.rpow_natCast,
      ← Real.rpow_add hL, Finset.sum_add_distrib, sum_s0N]
    congr 1
    push_cast
    ring
  rw [hreal]
  rfl

lemma tail_eq (p m : ℕ) (α : ℝ) (ν : Fin (p + 1) → ℝ) :
    TailInt p m α ν = kc (2 + α + 2 * ∑ i, ν i) * CHInt p m (Function.update ν 0 (α + ν 0)) := by
  show ∫⁻ x : TDom p m, tailF p m α ν x = _
  rw [split_cons _ (tailF_meas p m α ν), lintegral_congr fun w => tail_inner p m α ν w,
    lintegral_mul_const _ (by fun_prop)]
  rfl

private lemma norm_sq_add_norm_sq_sub_eq_complete_square (w B a : ℂ) :
    ‖w‖ ^ 2 + ‖B - w * star a‖ ^ 2 =
      (1 + ‖a‖ ^ 2) * ‖w - B * a / ((1 + ‖a‖ ^ 2 : ℝ) : ℂ)‖ ^ 2 + ‖B‖ ^ 2 / (1 + ‖a‖ ^ 2) := by
  have key : ∀ z : ℂ, ‖z‖ ^ 2 = z.re ^ 2 + z.im ^ 2 := fun z => by
    rw [Complex.sq_norm, Complex.normSq_apply]; ring
  have hL : (1 + (a.re ^ 2 + a.im ^ 2)) ≠ 0 := by positivity
  simp only [key, Complex.sub_re, Complex.sub_im, Complex.mul_re, Complex.mul_im, Complex.div_ofReal_re,
    Complex.div_ofReal_im, Complex.star_def, Complex.conj_re, Complex.conj_im]
  field_simp
  ring

lemma ch_pt (p m : ℕ) (ν : Fin (p + 2) → ℝ) (y : TDom p m) :
    ∫⁻ w : ℂ, chF (p + 1) m ν (y.1, Fin.cons w y.2.1, y.2.2) =
      kc (2 + ν 0) * tailF p m (ν 0) (Fin.tail ν) y := by
  rcases y with ⟨a, b, r⟩
  dsimp only
  have hlsq0 : ∀ w : ℂ, Lsq ((a, Fin.cons w b, r) : Xp (p + 1) m) 0 = 1 := by
    intro w; simp [Lsq]
  have hrho : ∀ w : ℂ, rhoSq ((a, Fin.cons w b, r) : Xp (p + 1) m) 0 =
      rhoSq (tailPt ((a, b, r) : TDom p m)) 1 + ‖w‖ ^ 2 := by
    intro w
    simp [rhoSq, Lsq, tailPt, Fin.sum_univ_succ]
    ring
  have hbco : ∀ w : ℂ, bco ((a, Fin.cons w b, r) : Xp (p + 1) m) 0 =
      bco (tailPt ((a, b, r) : TDom p m)) 1 - w * star (a 0) := by
    intro w
    simp [bco, tailPt, Fin.sum_univ_succ]
    ring
  have hL1 : Lsq (tailPt ((a, b, r) : TDom p m)) 1 = 1 + ‖a 0‖ ^ 2 := by
    simp [Lsq, tailPt]
  have hd1 : de (tailPt ((a, b, r) : TDom p m)) 1 ^ 2 =
      (1 + ‖a 0‖ ^ 2) * rhoSq (tailPt ((a, b, r) : TDom p m)) 1 + ‖bco (tailPt ((a, b, r) : TDom p m)) 1‖ ^ 2 := by
    rw [de, Real.sq_sqrt (add_nonneg (mul_nonneg (by linarith [one_le_lsq (tailPt ((a, b, r) : TDom p m)) 1])
      (rhoSq_nonneg _ _)) (sq_nonneg _)), hL1]
  have hM := one_le_rhoSq (tailPt ((a, b, r) : TDom p m)) 1
  have hd1p := de_pos (tailPt ((a, b, r) : TDom p m)) 1
  set M := rhoSq (tailPt ((a, b, r) : TDom p m)) 1
  set B := bco (tailPt ((a, b, r) : TDom p m)) 1
  set d1 := de (tailPt ((a, b, r) : TDom p m)) 1
  set L := 1 + ‖a 0‖ ^ 2 with hL_def
  have hL : 0 < L := by positivity
  set D := M + ‖B‖ ^ 2 / L with hD_def
  have hD : 0 < D := add_pos_of_pos_of_nonneg (by linarith) (by positivity)
  set c : ℂ := B * a 0 / ((L : ℝ) : ℂ) with hc_def
  have hquad : ∀ w : ℂ, de ((a, Fin.cons w b, r) : Xp (p + 1) m) 0 ^ 2 = L * ‖w - c‖ ^ 2 + D := by
    intro w
    rw [de, Real.sq_sqrt (add_nonneg (mul_nonneg (by linarith [one_le_lsq ((a, Fin.cons w b, r) : Xp (p + 1) m) 0])
      (rhoSq_nonneg _ _)) (sq_nonneg _)), hlsq0, hrho, hbco, one_mul, add_assoc, norm_sq_add_norm_sq_sub_eq_complete_square, hD_def, hc_def, hL_def]
    ring
  have hzero : ∀ w : ℂ, de ((a, Fin.cons w b, r) : Xp (p + 1) m) 0 ^ (-(s0N (p + 1) m 0 + ν 0)) =
      (L * ‖w - c‖ ^ 2 + D) ^ (-(2 + ν 0) / 2) := by
    intro w
    have hs : s0N (p + 1) m 0 = 2 := by simp [s0N]
    rw [hs, ← hquad w, ← Real.rpow_natCast, ← Real.rpow_mul (de_pos _ _).le]
    congr 1
    push_cast
    ring
  have htp : tailPt ((a, b, r) : TDom p m) = (a, Fin.cons 0 b, r) := rfl
  unfold chF tailF
  simp only [Fin.prod_univ_succ, de_cons, hzero]
  rw [lintegral_mul_const _ (by fun_prop), kernel L D hL hD c (2 + ν 0), hL1]
  have hkey : ENNReal.ofReal (L⁻¹ * D ^ (1 - (2 + ν 0) / 2)) =
      ENNReal.ofReal (L ^ ((-2 + ν 0) / 2)) * ENNReal.ofReal (d1 ^ (-ν 0)) := by
    rw [← ENNReal.ofReal_mul (by positivity)]
    congr 1
    have e1 : D = d1 ^ 2 / L := by
      rw [hd1, hD_def]
      field_simp
    rw [e1, Real.div_rpow (sq_nonneg _) hL.le, ← Real.rpow_natCast d1 2, ← Real.rpow_mul hd1p.le,
      show (1 - (2 + ν 0) / 2) = -ν 0 / 2 by ring,
      show ((2 : ℕ) : ℝ) * (-ν 0 / 2) = -ν 0 by push_cast; ring,
      show (-2 + ν 0) / 2 = -1 - (-ν 0 / 2) by ring, Real.rpow_sub hL, Real.rpow_neg_one]
    field_simp
  rw [hkey, htp, show de ((a, Fin.cons 0 b, r) : Xp (p + 1) m) 1 = d1 from rfl]
  simp only [Fin.tail]
  ring

lemma ch_step (p m : ℕ) (ν : Fin (p + 2) → ℝ) :
    CHInt (p + 1) m ν = kc (2 + ν 0) * TailInt p m (ν 0) (Fin.tail ν) := by
  have hF := chF_meas (p + 1) m ν
  have hT := tailF_meas p m (ν 0) (Fin.tail ν)
  have step : ∀ a : Fin (p + 1) → ℂ,
      ∫⁻ z : (Fin (p + 1) → ℂ) × ((Fin m → ℂ) × ℝ), chF (p + 1) m ν (a, z) =
        ∫⁻ q : (Fin p → ℂ) × ((Fin m → ℂ) × ℝ), kc (2 + ν 0) * tailF p m (ν 0) (Fin.tail ν) (a, q) := by
    intro a
    rw [split_cons' (fun z => chF (p + 1) m ν (a, z)) (hF.comp measurable_prodMk_left)]
    exact lintegral_congr fun q => ch_pt p m ν (a, q)
  show ∫⁻ x : Xp (p + 1) m, chF (p + 1) m ν x =
    kc (2 + ν 0) * ∫⁻ y : TDom p m, tailF p m (ν 0) (Fin.tail ν) y
  rw [Measure.volume_eq_prod, lintegral_prod _ hF.aemeasurable,
    lintegral_congr fun a => (step a).trans (lintegral_const_mul _ (hT.comp measurable_prodMk_left)),
    lintegral_const_mul _ hT.lintegral_prod_right']
  congr 1
  rw [Measure.volume_eq_prod (Fin (p + 1) → ℂ), lintegral_prod _ hT.aemeasurable]

end J2
end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.CriticalExponentSucc =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailFinOf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailFinOf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.CriticalExponentSucc\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Xi

namespace J2

lemma sum_Iic {n : ℕ} (g : Fin (n + 1) → ℝ) (l : Fin (n + 1)) :
    ∑ j ∈ Finset.Iic l, g j = ∑ j, if j ≤ l then g j else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext j
  simp

lemma sum_Ioi {n : ℕ} (g : Fin (n + 1) → ℝ) (l : Fin (n + 1)) :
    ∑ j ∈ Finset.Ioi l, g j = ∑ j, if l < j then g j else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext j
  simp

lemma iic_zero {n : ℕ} (g : Fin (n + 1) → ℝ) : ∑ j ∈ Finset.Iic 0, g j = g 0 := by
  rw [sum_Iic]
  simp

lemma upd_eq {p : ℕ} (ν : Fin (p + 2) → ℝ) :
    Function.update (Fin.tail ν) 0 (ν 0 + Fin.tail ν 0) = fun j => ν j.succ + if j = 0 then ν 0 else 0 := by
  funext j
  refine Fin.cases ?_ (fun i => ?_) j
  · simp [Fin.tail, add_comm]
  · simp [Fin.tail]

lemma iic_succ {p : ℕ} (ν : Fin (p + 2) → ℝ) (l : Fin (p + 1)) :
    ∑ j ∈ Finset.Iic l.succ, ν j = ν 0 + ∑ j ∈ Finset.Iic l, ν j.succ := by
  rw [sum_Iic, sum_Iic (fun j => ν j.succ), Fin.sum_univ_succ (n := p + 1)]
  simp [Fin.succ_le_succ_iff]

lemma ioi_succ {p : ℕ} (ν : Fin (p + 2) → ℝ) (l : Fin (p + 1)) :
    ∑ j ∈ Finset.Ioi l.succ, ν j = ∑ j ∈ Finset.Ioi l, ν j.succ := by
  rw [sum_Ioi, sum_Ioi (fun j => ν j.succ), Fin.sum_univ_succ (n := p + 1)]
  simp [Fin.succ_lt_succ_iff]

lemma cond_step {p : ℕ} (ν : Fin (p + 2) → ℝ) (h : CHCond (p + 1) ν) :
    0 < ν 0 ∧ 0 < ν 0 + 2 * ∑ i, Fin.tail ν i ∧
      CHCond p (Function.update (Fin.tail ν) 0 (ν 0 + Fin.tail ν 0)) := by
  obtain ⟨h1, h2⟩ := h
  have hI : ∑ j ∈ Finset.Ioi (0 : Fin (p + 2)), ν j = ∑ i, Fin.tail ν i := by
    rw [sum_Ioi, Fin.sum_univ_succ (n := p + 1)]
    simp [Fin.tail, Fin.succ_pos]
  have e0 := h1 0
  rw [iic_zero] at e0
  refine ⟨e0, ?_, ?_⟩
  · have := h2 0 (by simp)
    rw [iic_zero, hI] at this
    exact this
  · rw [upd_eq]
    have hA : ∀ l : Fin (p + 1), ∑ j ∈ Finset.Iic l, (ν j.succ + if j = 0 then ν 0 else 0) =
        ∑ j ∈ Finset.Iic l.succ, ν j := by
      intro l
      rw [Finset.sum_add_distrib, Finset.sum_ite_eq', if_pos (Finset.mem_Iic.2 (Fin.zero_le l)),
        iic_succ]
      ring
    have hB : ∀ l : Fin (p + 1), ∑ j ∈ Finset.Ioi l, (ν j.succ + if j = 0 then ν 0 else 0) =
        ∑ j ∈ Finset.Ioi l.succ, ν j := by
      intro l
      rw [Finset.sum_add_distrib, Finset.sum_ite_eq', if_neg (by simp), ioi_succ, add_zero]
    refine ⟨fun l => ?_, fun l hl => ?_⟩
    · beta_reduce
      rw [hA]
      exact h1 l.succ
    · beta_reduce
      rw [hA, hB]
      exact h2 l.succ (by rw [Fin.val_succ]; omega)

end J2

theorem c1 : C1 := by
  intro p m x
  rw [J2.de_sq, J2.de_sq, J2.lsq_zero, J2.rhoSq_zero, J2.bco_zero, J2.lsq_one]
  have hL : (0 : ℝ) < 1 + ((x.1 0).re * (x.1 0).re + (x.1 0).im * (x.1 0).im) := by
    nlinarith [mul_self_nonneg (x.1 0).re, mul_self_nonneg (x.1 0).im]
  simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im, Complex.mul_re,
    Complex.mul_im, Complex.star_def, Complex.conj_re, Complex.conj_im, Complex.div_ofReal_re,
    Complex.div_ofReal_im]
  field_simp
  ring

theorem tailFin_of (hCH : CH) : TailFin := by
  intro p m α ν hc hpos
  rw [J2.tail_eq]
  exact ENNReal.mul_lt_top (J2.kc_lt_top (by linarith)) (hCH p m _ hc)

theorem ch_of (hC1 : C1) : CH := by
  intro p
  induction p with
  | zero =>
    intro m ν hν
    exact J2.ch_base m ν (by have := hν.1 0; rwa [J2.iic_zero] at this)
  | succ p ih =>
    intro m ν hν
    obtain ⟨h0, hs, hc⟩ := J2.cond_step ν hν
    rw [J2.ch_step, J2.tail_eq]
    exact ENNReal.mul_lt_top (J2.kc_lt_top (by linarith))
      (ENNReal.mul_lt_top (J2.kc_lt_top (by linarith)) (ih m _ hc))

end ReciprocityTheory.ChartRestriction.DS.Xi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.TailFinOf =====
