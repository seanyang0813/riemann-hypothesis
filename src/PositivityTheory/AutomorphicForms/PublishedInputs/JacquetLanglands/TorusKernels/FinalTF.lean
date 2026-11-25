module

public import PositivityTheory.AutomorphicForms.PublishedInputs.JacquetLanglands.TorusKernels.MultivariableReproducingFormula
public import PositivityTheory.AutomorphicForms.PublishedInputs.JacquetLanglands.TorusKernels.FiniteSystemProof
public import PositivityTheory.AutomorphicForms.PublishedInputs.JacquetLanglands.TorusKernels.RSubPowApply
public import PositivityTheory.AutomorphicForms.PublishedInputs.JacquetLanglands.TorusKernels.HolomorphicOnHalfPlaneFinsetSum
import Mathlib.Analysis.Calculus.DiffContOnCl
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction
import Mathlib.Analysis.Complex.MeanValue
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.PolarCoord
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Basic
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.FinTwo
import Mathlib.MeasureTheory.Function.Jacobian
import Mathlib.MeasureTheory.Integral.Bochner.SumMeasure
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.Pi
import Mathlib.MeasureTheory.Measure.Haar.Unique
import Mathlib.MeasureTheory.Measure.Lebesgue.Complex
import Mathlib.MeasureTheory.Order.Group.Lattice
import Mathlib.RingTheory.Complex
import Mathlib.RingTheory.Norm.Transitivity
import Mathlib.Tactic

/-!
# The trace formula for torus kernels

Construct the invariant measures and reproducing kernels, establish convergence of the
kernel series, and combine the elliptic and nonelliptic orbital contributions.
-/

@[expose] public section

noncomputable section
open MeasureTheory Matrix Complex Set Real MeasureTheory.MeasureSpace MeasureTheory.Measure Fin Max MulAction
  QuotientGroup Function Fintype MulZeroClass Metric SemigroupAction ENNReal MeasurableEquiv Filter.Eventually
  Filter Or Prod Module Submodule MeasurableSet MeasurableMul MeasurableSingletonClass
  MeasureTheory.SigmaFinite
open scoped ENNReal NNReal ComplexConjugate Real Topology
namespace UpperTheory.Esk

/-! ## Invariant integration -/

private lemma cut_tsum_eq_one {G Y : Type} [Group G] [MeasurableSpace Y] [MulAction G Y] {c : Y → ℝ} (hc :
  IsCut G c) (y : Y) :
    ∑' g : G, ENNReal.ofReal (c (g • y)) = 1 ∧ ∑' g : G, ENNReal.ofReal (c (g⁻¹ • y)) = 1 := by
  refine ⟨?_, ((Equiv.inv G).tsum_eq fun g => ENNReal.ofReal (c (g • y))).trans ?_⟩ <;>
    simp [← ofReal_tsum_of_nonneg (fun g => hc.2 _) (hc.3 y).summable, (hc.3 y).tsum_eq]

private theorem lintegral_cut_le_of_cover {G Y : Type} [Group G] [Countable G]
    [MeasurableSpace Y] [MulAction G Y] (μ : Measure Y) (hP : Pres G μ)
    (b : Y → ℝ) (hb : IsCut G b) (S : Set Y) (hS : MeasurableSet S)
    (hc : ∀ y, ∃ g : G, g • y ∈ S) : ∫⁻ y, ENNReal.ofReal (b y) ∂μ ≤ μ S := by
  have hm := fun g => (hP g).1
  have := hb.1
  calc _ ≤ ∑' g : G, ∫⁻ y in S, ENNReal.ofReal (b (g⁻¹ • y)) ∂μ := by
          rw [← setLIntegral_univ, ← iUnion_eq_univ_iff.2 (show ∀ y, ∃ g : G, y ∈ {y | g • y ∈ S} from hc)]
          exact (lintegral_iUnion_le _ _).trans_eq (tsum_congr fun g => by
            rw [← (hP g).setLIntegral_comp_preimage hS (by fun_prop)]
            aesop)
    _ = μ S := by
      rw [← lintegral_tsum fun g => by fun_prop]
      simp [cut_tsum_eq_one hb]

theorem action_integral_swap_proof : Esk.C1 := by
  intro G Y _ _ _ _ μ hP b b' hb hb'
  have hm := fun g => (hP g).1
  have := hb.1
  have := hb'.1
  refine (fun h1 => ⟨h1, fun u hu hinv hi => ?_⟩) fun u hu hinv => ?_
  · have : ∑' g : G, _ = ∑' g : G, _ := tsum_congr fun g => (hP g).lintegral_comp (f := fun y =>
    ENNReal.ofReal (b (g⁻¹ • y)) * (ENNReal.ofReal (b' y) * u y)) (by
    fun_prop)
    simpa (disch := intro
                    fun_prop) [← lintegral_tsum, hinv, ENNReal.tsum_mul_left, ENNReal.tsum_mul_right,
                      cut_tsum_eq_one hb, cut_tsum_eq_one hb'] using this
  let M := fun c : Y → ℝ => (μ.withDensity fun y => (c y).toNNReal).map u
  have e : M b = M b' := ext_of_lintegral _ fun f hf => by
    simpa (disch := fun_prop) [M, lintegral_map, lintegral_withDensity_eq_lintegral_mul, ENNReal.ofReal] using
      h1 _ (hf.comp hu) (by
      simp_all)
  have P2 : ∀ c : Y → ℝ, IsCut G c → (Integrable (fun y => c y • u y) μ ↔ Integrable id (M c)) ∧ ∫ y, c y • u
    y ∂μ = ∫ x, x ∂M c := fun c hc => by
    rw [integrable_map_measure aestronglyMeasurable_id hu.aemeasurable, integral_map hu.aemeasurable (by
      fun_prop),
      integral_withDensity_eq_integral_smul hc.1.real_toNNReal, integrable_withDensity_iff_integrable_smul
        hc.1.real_toNNReal]
    simp [NNReal.smul_def, hc.2]
  simp_all

private theorem pres_count_prod {G Ω κ : Type} [Group G] [MeasurableSpace Ω] [DiscreteMeasurableSpace Ω]
  [Countable Ω] [MeasurableSpace κ] [MulAction G Ω] [MulAction G κ]
    (μ : Measure κ) [SigmaFinite μ] (hμ : Pres G μ) : Pres G ((count : Measure Ω).prod μ) := fun g =>
  MeasurePreserving.prod ⟨.of_discrete, by ext s hs
                                           rw [Measure.map_apply .of_discrete hs, count_apply hs, count_apply
                                             .of_discrete, encard_preimage_of_bijective (MulAction.bijective
                                             g)]⟩ (hμ g)

theorem actions_preserve_measures_proof : B1a → B1b → B1c → E0a := by
  rintro ⟨_, _, H⟩ ⟨-, -, -, hk, -⟩ ⟨-, h1, -, -, hc, ht⟩ F I Gf _ _ _ D ⟨_, _⟩
  have : Countable D.Cj := by
    have := @Injective.countable (GL (Fin 2) F) (Fin 2 → Fin 2 → F) _ (·.1) fun a b h => Units.ext h
    exact mk_surjective.countable
  have hXs : SigmaFinite (volume : Measure D.Xs) := pi.sigmaFinite _
  have presX : Pres (PG F) (volume : Measure D.Xs) := mk_surjective.forall.2 fun g => measurePreserving_pi _ _
    fun v => (H _).2
  refine ⟨this, hXs, presX, pres_count_prod _ presX, pres_count_prod _ presX, mk_surjective.forall.2 fun g =>
    continuous_pi fun v => (H _).1.comp (continuous_apply v), Pi.borelSpace, fun δ hδ => ?_⟩
  have hk1 : ∀ z : P, Continuous (kap z) := by
    fun_prop
  obtain ⟨c0, hc0, hc0U⟩ := lt_iff_exists_nnreal_btwn.1 ((isOpen_lt continuous_const (hk1 iP)).measure_pos volume ⟨iP, show δ < _ by simp_all⟩)
  refine ⟨c0 ^ card I, pow_pos (by
    simp_all) _, fun z => ?_⟩
  rw [show {w : X I | Near δ z w} = univ.pi fun v => {w | δ ≤ kap (z v) w} by aesop, volume_pi, pi_pi, coe_pow]
  refine ⟨.univ_pi fun v => measurableSet_le measurable_const (by
    fun_prop), Finset.pow_card_le_prod _ _ _ fun v _ => ?_⟩
  obtain ⟨g, -, -, hg⟩ := ht (z v)
  have hsub : {w : P | δ < kap iP w} ⊆
      (fun w : P => g • w) ⁻¹' {w | δ ≤ kap (g • iP) w} := by
    intro w hw
    change δ ≤ kap (g • iP) (g • w)
    rw [hk]
    exact hw.le
  rw [← hg]
  exact hc0U.le.trans ((measure_mono hsub).trans_eq
    ((H g).2.measure_preimage
      (measurableSet_le measurable_const (hk1 _).measurable).nullMeasurableSet))

/-! ## Automorphy factors and kernels -/

private theorem sub_conj_ne_of_im_mul_pos (z w : ℂ) (h : 0 < z.im * w.im) : z - conj w ≠ 0 := fun h0 => by
  have := congrArg im h0
  simp at this
  nlinarith [sq_nonneg z.im, sq_nonneg w.im]

private theorem im_smul (g : GL (Fin 2) ℝ) (z : P) :
    (g • z).1.im = g.val.det * z.1.im / normSq (den g z.1) :=
  im_div g z.1

private theorem smul_sub_conj (g : GL (Fin 2) ℝ) (z w : P) :
    (g • z).1 - conj (g • w).1 = (g.val.det : ℂ) * (z.1 - conj w.1) / (den g z.1 * conj (den g w.1)) := by
  rw [coe_smul, coe_smul, map_div₀]
  field_simp [den_ne g z.2, den_ne g w.2]
  simp [num, den, det_eq]
  ring

private theorem im_mul_smul_pos_iff (g : GL (Fin 2) ℝ) (z w : P) : 0 < (g • z).1.im * (g • w).1.im ↔ 0 <
  z.1.im * w.1.im := by
  rw [im_smul, im_smul, div_mul_div_comm, mul_mul_mul_comm, ← sq]
  have := g.det_ne_zero
  have := normSq_pos.2 (den_ne g z.2)
  have := normSq_pos.2 (den_ne g w.2)
  rw [div_pos_iff_of_pos_right (by
    positivity), mul_pos_iff_of_pos_left (by
      positivity)]

private theorem rpow_sq_natCast_div_two {n : ℝ} (hn : 0 ≤ n) (k : ℕ) : (n ^ 2) ^ ((k : ℝ) / 2) = n ^ k := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul hn, ← Real.rpow_natCast]
  ring_nf

theorem automorphy_factor_kernel_algebra_proof : B1b := by
  refine ⟨fun k g h z => ?_, fun k g z => ?_, fun k g z w => ?_, fun g z w => ?_, fun k g z => ?_, fun k z w
    hk => ?_, fun k g => ?_, fun k => ?_, fun k w => ?_⟩
  · have : den (g * h) z.1 = den g (h • z).1 * den h z.1 := by
      have := den_ne h z.2
      simp [coe_smul, num, den, Matrix.mul_apply] at *
      grind
    simp [j1, this, mul_rpow]
    ring
  · simp [j1, den_ne g z.2, g.det_ne_zero, rpow_eq_zero_iff_of_nonneg]
  · simp [q1, im_mul_smul_pos_iff]
    split_ifs
    · have hr : ((g • w).1 - conj (g • w).1) / ((g • z).1 - conj (g • w).1) = (w.1 - conj w.1) / (z.1 - conj
      w.1) * (den g z.1 / den g w.1) := by
        have := ofReal_ne_zero.2 g.det_ne_zero
        have := (map_ne_zero (starRingEnd ℂ)).2 (den_ne g w.2)
        rw [smul_sub_conj, smul_sub_conj]
        field_simp
      have := pow_ne_zero k (den_ne g w.2)
      simp [hr, j1, mul_pow, div_pow (den g z.1)]
      field_simp
    simp
  · simp [kap, im_mul_smul_pos_iff]
    · have := g.det_ne_zero
      have := normSq_pos.2 (den_ne g z.2)
      have := normSq_pos.2 (den_ne g w.2)
      simp [im_smul, smul_sub_conj, div_pow, mul_pow, Complex.sq_norm]
      field_simp
  · have := den_ne g z.2
    have := g.det_ne_zero
    simp (disch := positivity) [im_smul, j1, abs_div, normSq_eq_norm_sq, div_rpow, mul_rpow,
      rpow_sq_natCast_div_two, neg_div, Real.rpow_neg, Real.abs_rpow_of_nonneg]
    field_simp
  · unfold q1 kap
    split_ifs with h
    · obtain ⟨n, rfl⟩ : ∃ n, k = n + 1 := by simpa
      rw [mul_assoc, ← mul_rpow (by positivity) (abs_nonneg _),
        show 4 * (z.1.im * w.1.im) / ‖z.1 - conj w.1‖ ^ 2 * |w.1.im| =
          (2 * |w.1.im| / ‖z.1 - conj w.1‖) ^ 2 * |z.1.im| by
            rw [← abs_of_pos h, abs_mul]
            ring,
        mul_rpow (by positivity) (abs_nonneg _), rpow_sq_natCast_div_two (by positivity)]
      simp [sub_conj, mul_assoc]
    · simp [zero_rpow (by positivity : (k : ℝ) / 2 ≠ 0)]
  · unfold j1 den
    fun_prop
  · refine continuous_iff_continuousAt.2 fun p => ?_
    have hf : Continuous fun p : P × P => p.1.1.im * p.2.1.im := by fun_prop
    rcases lt_or_gt_of_ne (mul_ne_zero p.1.2 p.2.2) with hp | hp
    · exact continuousAt_const.congr (by
        filter_upwards [(hf.tendsto p).eventually_lt_const hp] with q hq
        exact (ite_eq_right (lt_asymm hq)).symm)
    · refine ContinuousAt.congr ?_ (by
        filter_upwards [(hf.tendsto p).eventually_const_lt hp] with q hq
        exact (ite_eq_left hq).symm)
      fun_prop (disch := exact sub_conj_ne_of_im_mul_pos _ _ hp)
  · intro t ht
    apply DifferentiableAt.differentiableWithinAt
    have hf : Continuous fun s : ℂ => s.im * w.1.im := by fun_prop
    rcases lt_or_gt_of_ne (mul_ne_zero ht w.2) with hp | hp
    · refine (differentiableAt_const (0 : ℂ)).congr_of_eventuallyEq ?_
      filter_upwards [(hf.tendsto t).eventually_lt_const hp] with s hs
      by_cases hs' : s.im = 0 <;> simp [ext1, q1, hs', lt_asymm hs]
    · refine DifferentiableAt.congr_of_eventuallyEq ?_ (by
        filter_upwards [(hf.tendsto t).eventually_const_lt hp] with s hs
        simp only [ext1, dite_eq_left (show s.im ≠ 0 from fun h0 => by simp_all), q1, ite_eq_left hs]
        rfl)
      fun_prop (disch := exact sub_conj_ne_of_im_mul_pos _ _ hp)

/-! ## Cayley coordinates -/

private def cayley (w : ℂ) : ℂ := I * (1 + w) / (1 - w)

private theorem cayley_im (w : ℂ) : (cayley w).im = (1 - normSq w) / normSq (1 - w) := by
  simp [cayley, div_im, normSq_apply]
  ring

private theorem image_cayley_ball : cayley '' ball (0 : ℂ) 1 = {t : ℂ | 0 < t.im} := by
  ext t
  constructor
  · rintro ⟨w, hw, rfl⟩
    rw [mem_ofPred, cayley_im w]
    exact div_pos (sub_pos.2 (by
      simpa [normSq_eq_norm_sq] using hw)) (normSq_pos.2 (sub_ne_zero.2 (by
        aesop)))
  · intro (ht : 0 < t.im)
    have hd : t + I ≠ 0 := ne_of_apply_ne im (by
      simp
      positivity)
    refine ⟨(t - I) / (t + I), ?_, ?_⟩
    · rw [mem_ball_zero_iff, norm_div, div_lt_one (norm_pos_iff.2 hd)]
      apply (sq_lt_sq₀ (norm_nonneg (t - I)) (norm_nonneg (t + I))).mp
      simp only [Complex.sq_norm, normSq_apply, sub_re, sub_im, add_re, add_im,
        I_re, I_im, sub_zero, add_zero]
      nlinarith
    · simp [cayley]
      field_simp
      ring

private theorem cayley_injOn_ball : InjOn cayley (ball (0 : ℂ) 1) := fun a ha b hb hab => by
  have h1 : 1 - a ≠ 0 := sub_ne_zero.2 (by
    aesop)
  have h2 : 1 - b ≠ 0 := sub_ne_zero.2 (by
    aesop)
  simp [cayley] at hab
  field_simp at hab
  grind

private theorem hasDerivAt_cayley (w : ℂ) (hw : w ≠ 1) : HasDerivAt cayley (2 * Complex.I / (1 - w) ^ 2) w :=
  by
  have := (((hasDerivAt_id w).const_add 1).const_mul Complex.I).div ((hasDerivAt_id w).const_sub 1)
    (sub_ne_zero.2 hw.symm)
  have hf : cayley = (fun y => Complex.I * (1 + id y)) / (fun x => 1 - id x) := rfl
  grind

private theorem ne_one_of_mem_unit_ball (w : ℂ) (hw : w ∈ ball (0 : ℂ) 1) : w ≠ 1 := by
  aesop

theorem cayley_transform_proof : B2 := by
  intro h h0 hi
  have hS : MeasurableSet {t : ℂ | t.im ≠ 0} := by measurability
  have i1 : IntegrableOn (fun t : ℂ => ((1 / t.im ^ 2 : ℝ) : ℂ) * ext1 h t) {t | t.im ≠ 0} := by
    rw [integrableOn_iff_comap_subtypeVal hS, Function.comp_def]
    exact ((integrable_withDensity_iff_integrable_smul (by fun_prop)).1 hi).congr
      (ae_of_all _ fun z => by
        simp [NNReal.smul_def, ext1, z.2, sq_nonneg]
        rfl)
  have hsub : {t : ℂ | 0 < t.im} ⊆ {t | t.im ≠ 0} := by aesop
  have e1 : ∫ z, h z = ∫ t in {t : ℂ | 0 < t.im}, ((1 / t.im ^ 2 : ℝ) : ℂ) * ext1 h t := by
    rw [← setIntegral_eq_of_subset_of_forall_sdiff_eq_zero hS hsub fun t ⟨ht1, ht2⟩ => by simp [ext1, h0 ⟨t, ht1⟩ (by grind)], ← integral_subtype_comap hS]
    exact (integral_withDensity_eq_integral_smul (by fun_prop) h).trans
      (integral_congr_ae (ae_of_all _ fun z => by
        simp [NNReal.smul_def, ext1, z.2, sq_nonneg]
        rfl))
  replace i1 := i1.mono_set hsub
  rw [← image_cayley_ball] at i1 e1
  have hf' := fun w (hw : w ∈ ball (0 : ℂ) 1) =>
    ((hasDerivAt_cayley w (ne_one_of_mem_unit_ball w hw)).hasFDerivAt.restrictScalars ℝ).hasFDerivWithinAt
      (s := ball 0 1)
  rw [integral_image_eq_integral_abs_det_fderiv_smul volume measurableSet_ball hf' cayley_injOn_ball] at e1
  replace i1 := (integrableOn_image_iff_integrableOn_abs_det_fderiv_smul volume measurableSet_ball hf'
    cayley_injOn_ball _).1 i1
  set S := Ioo (0 : ℝ) 1 ×ˢ Ioo (-π) π
  have hSm : MeasurableSet S := by measurability
  have hae : polarCoord.symm '' S =ᵐ[volume] measurableEquivRealProd.symm ⁻¹' ball 0 1 := by
    filter_upwards [polarCoord_source_ae_eq_univ] with q hq
    replace hq := hq.mpr (mem_univ q)
    have hm := polarCoord.map_source hq
    refine ⟨?_, fun hqT => ⟨polarCoord q, ⟨⟨hm.1, ?_⟩, hm.2⟩, polarCoord.left_inv hq⟩⟩
    · rintro ⟨p, hp, rfl⟩
      simp only [mem_preimage, mem_ball_zero_iff, measurableEquivRealProd_symm_polarCoord_symm_apply,
        norm_polarCoord_symm]
      grind
    · simp_all [Complex.norm_def, sq]
  have hinj : InjOn polarCoord.symm S := polarCoord.symm.injOn.mono (prod_mono Ioo_subset_Ioi_self subset_rfl)
  rw [← volume_preserving_equiv_real_prod.symm.setIntegral_preimage_emb
    measurableEquivRealProd.symm.measurableEmbedding _ (ball 0 1), ← setIntegral_congr_set hae,
    integral_image_eq_integral_abs_det_fderiv_smul volume hSm (fun p _ => (hasFDerivAt_polarCoord_symm
    p).hasFDerivWithinAt) hinj] at e1
  replace i1 := (integrableOn_image_iff_integrableOn_abs_det_fderiv_smul volume hSm (fun p _ =>
    (hasFDerivAt_polarCoord_symm p).hasFDerivWithinAt) hinj _).1
    ((volume_preserving_equiv_real_prod.symm.integrableOn_comp_preimage
    measurableEquivRealProd.symm.measurableEmbedding).2 i1 |>.congr_set_ae hae)
  refine ⟨i1.congr_fun ?_ hSm, e1.trans (setIntegral_congr_fun hSm ?_)⟩ <;> rintro p ⟨⟨h0, h1⟩, -⟩
  all_goals
    have hc : measurableEquivRealProd.symm (polarCoord.symm p) = circleMap 0 p.1 p.2 := by
      simp [Complex.ext_iff, circleMap_zero_re, circleMap_zero_im]
    have hn : normSq (circleMap 0 p.1 p.2) = p.1 ^ 2 := by simp [normSq_eq_norm_sq, abs_of_pos h0]
    have hne : circleMap 0 p.1 p.2 ≠ 1 := fun h => by
      simp [h] at hn
      nlinarith
    simp only [Function.comp_apply, hc]
    simp [det_fderivPolarCoordSymm, abs_of_pos h0, ContinuousLinearMap.det, LinearMap.det_restrictScalars,
      Algebra.norm_complex_eq, cayley_im, hn, abs_div]
    simp only [cayley]
    have := ofReal_ne_zero.2 (normSq_pos.2 (sub_ne_zero.2 hne.symm)).ne'
    grind

theorem counting_measure_invariance_proof : Esk.C1 → C4 := by
  intro hC1 G Ω X _ _ _ _ _ _ _ _ μ _ hμ b hb u hu hinv hint R hR β hβ
  let c := fun p : Ω × X => R.indicator (β · p.2) p.1
  obtain ⟨hI', hE⟩ := (hC1 _ _ _ (pres_count_prod μ hμ) b c hb (by
    refine ⟨measurable_from_prod_countable_right fun ω => ?_, fun p => indicator_nonneg (fun r hr => (hβ r
      hr).2 _) _, fun ⟨ω, x⟩ => ?_⟩
    · by_cases h : ω ∈ R <;> simp [c, h]
      exact (hβ ω h).1
    obtain ⟨_, ⟨hrR, g₀, rfl⟩, hu⟩ := hR ω
    refine (((mul_left_injective g₀).comp (stabilizer G (g₀ • ω)).subtype_injective).hasSum_iff fun g hg => ite_eq_right fun hgR => hg ⟨⟨g * g₀⁻¹, ?_⟩, by simp⟩).1 ?_
    · simpa [mul_smul] using hu _ ⟨hgR, mem_orbit ω g⟩
    · convert (hβ _ hrR).3 (g₀ • x) using 2 with s
      simp [mul_smul, mem_stabilizer_iff.1 s.2, hrR, Subgroup.smul_def])).2 u hu hinv hint
  refine ⟨fun r hr => by simpa [c, hr] using ae_count_iff.1 hI'.prod_right_ae r, ?_⟩
  rw [hE, integral_prod _ hI']
  convert (hasSum_subtype_iff_of_support_subset (s := R) fun ω hω => by_contra fun h => hω (by
    aesop)).2 (hasSum_integral_measure (μ := dirac) hI'.integral_prod_left) using 1
  · aesop
  rfl

/-! ## Cusp volume and diagonal contributions -/

private def cusp_region (C c : ℝ) : Set {z : ℂ // z.im ≠ 0} := {w | |w.1.re| ≤ C ∧ c ≤ |w.1.im|}

private theorem measurableSet_cusp_region (C c : ℝ) : MeasurableSet (cusp_region C c) := by
  unfold cusp_region
  measurability

private theorem cusp_density_bound (C c : ℝ) (hc : 0 < c) (t : ℂ) (h1 : |t.re| ≤ C) (h2 : c ≤ |t.im|) :
    1 / t.im ^ 2 ≤ (1 + C ^ 2) * (1 + 1 / c ^ 2) * ((1 + t.re ^ 2)⁻¹ * (1 + t.im ^ 2)⁻¹) := by
  rw [← sq_abs t.re, ← sq_abs t.im]
  have := (hc.trans_le h2).ne'
  calc 1 / |t.im| ^ 2 = (1 + |t.re| ^ 2) * (1 + 1 / |t.im| ^ 2) *
      ((1 + |t.re| ^ 2)⁻¹ * (1 + |t.im| ^ 2)⁻¹) := by
        field_simp
        ring
    _ ≤ _ := by gcongr

private theorem lintegral_cusp_bound_lt_top : ∫⁻ t : ℂ, ENNReal.ofReal ((1 + t.re ^ 2)⁻¹ * (1 + t.im ^ 2)⁻¹) <
  ⊤ := by
  have h := integrable_inv_one_add_sq.mul_prod integrable_inv_one_add_sq
  exact ((volume_preserving_equiv_real_prod.integrable_comp h.1).2 h).lintegral_lt_top

theorem cusp_region_volume_finite_proof : B1a → UpperHalfPlaneMeasureCoordinates → C2 → E0a → E0d → E3 := by
  intro hB1a _ _ hE0a hE0d F I Gf _ _ _ D hD b hb
  obtain ⟨hcnt, hsf, -, hPY, -⟩ := hE0a F I Gf D hD
  obtain ⟨-, hsm, -, -, -, -, -, -, -, hsurj, -⟩ := hE0d F I Gf D hD
  have := hB1a.1
  obtain ⟨c₀, hc₀, hmink⟩ := hD.mink
  obtain ⟨S, C, c, hc, hnorm⟩ := hD.normal c₀ hc₀
  refine (lintegral_cut_le_of_cover _ hPY b hb ((mk '' S : Set D.Om) ×ˢ univ.pi fun _ => cusp_region C c)
    (.prod .of_discrete (.univ_pi fun _ => measurableSet_cusp_region C c)) fun y => ?_).trans_lt ((prod_prod _
    _).trans_lt (mul_lt_top (count_apply_lt_top.2 (S.finite_toSet.image _)) ((volume_pi_pi _).trans_lt
    (prod_lt_top fun _ _ => ?_))))
  · obtain ⟨s, hs0, hs⟩ := hmink y.2 (D.rep y.1)
    obtain ⟨γ, rfl⟩ := hsurj s hs0
    obtain ⟨bb, -, ⟨x', hx'S, h, hhH, hjx⟩, hSg⟩ := hnorm _ _ (hs.trans_eq (hsm _ (by
      simp) γ y).symm)
    exists bb * (γ : PG F)
    rw [mul_smul]
    refine ⟨⟨x', hx'S, ?_⟩, fun v _ => (hSg v).imp_right And.left⟩
    rw [← mk_mul_of_mem x' hhH, ← hjx]
    exact congrArg ((bb : PG F) • · : D.Om → _) (Quotient.out_eq _)
  · exact (withDensity_apply _ (measurableSet_cusp_region C c)).trans_lt ((setLIntegral_mono'
    (measurableSet_cusp_region C c) fun z hz => (ofReal_le_ofReal (cusp_density_bound C c hc _ hz.1
    hz.2)).trans_eq (ofReal_mul (by
    positivity))).trans_lt ((lintegral_const_mul' _ _ ofReal_ne_top).trans_lt (mul_lt_top ofReal_lt_top
      (((setLIntegral_le_lintegral _ _).trans ((lintegral_subtype_comap (measurable_im
      (measurableSet_singleton 0).compl) _).trans_le (setLIntegral_le_lintegral _ _))).trans_lt
      lintegral_cusp_bound_lt_top))))

private def diagonal_denominator (r x : ℝ) : ℂ := (1 - r) * x + (1 + r) * I

private theorem diagonal_smul {g : GL (Fin 2) ℝ} (hb : g 0 1 = 0) (hc : g 1 0 = 0) (z : P) :
    (g • z).1 = ((g 0 0 / g 1 1 : ℝ) : ℂ) * z.1 := by
  rw [coe_smul]
  simp only [num, den, hb, hc, Complex.ofReal_zero, ofReal_div]
  ring

theorem diagonal_integrand_vanishes_proof : DiagonalIntegrandVanishes := by
  intro k hk g hb hc hne
  obtain ⟨n, rfl⟩ := Nat.exists_eq_add_of_le' hk
  by_cases hr : 0 < g 0 0 / g 1 1
  · set r := g 0 0 / g 1 1
    have hA : 1 - r ≠ 0 := by
      grind
    have hN (x : ℝ) : ‖diagonal_denominator r x‖ ^ 2 = ((1 - r) * x) ^ 2 + (1 + r) ^ 2 := by
      rw [← normSq_eq_norm_sq, normSq_apply]
      simp [diagonal_denominator]
      ring
    have h1 (x : ℝ) : 1 ≤ ‖diagonal_denominator r x‖ := by
      nlinarith [hN x, norm_nonneg (diagonal_denominator r x)]
    have h0 (x : ℝ) : diagonal_denominator r x ≠ 0 := norm_pos_iff.1 (by
      grind)
    have hDc : Continuous (diagonal_denominator r) := by
      unfold diagonal_denominator
      fun_prop
    have hI (m : ℕ) : Integrable fun x => (diagonal_denominator r x)⁻¹ ^ (m + 2) := by
      refine (integrable_inv_one_add_sq.comp_mul_left' hA).mono' (by
        fun_prop) (ae_of_all _ fun x => ?_)
      rw [norm_pow, norm_inv, inv_pow]
      gcongr
      nlinarith [hN x, pow_le_pow_right₀ (h1 x) (by
        lia : 2 ≤ m + 2)]
    set E := ((n : ℂ) + 3) / (4 * π) * (2 * r * I) ^ (n + 4) * j1 (n + 4) g iP
    refine ⟨fun x => E * (diagonal_denominator r x)⁻¹ ^ (n + 4), continuous_const.mul ((hDc.inv₀ h0).pow _), fun x y hy => ?_, (hI _).const_mul E, ?_, integral_eq_zero_of_hasDerivAt_of_integrable (fun x => ?_) ((hI _).const_mul E) ((hI (n + 1)).const_mul (-E / ((n + 3) * (1 - r)))), (em (E = 0)).imp (fun h => by aesop) fun h x => by simp_all⟩
    · have hpos : 0 < (pt x y hy).1.im * (g • pt x y hy).1.im := by
        rw [diagonal_smul hb hc, im_ofReal_mul]
        nlinarith [mul_self_pos.2 (pt x y hy).2]
      rw [q1, ite_eq_left hpos, j1,
        (div_eq_div_iff (c := 2 * r * I) (sub_conj_ne_of_im_mul_pos _ _ hpos) (h0 x)).2 (by
          rw [diagonal_smul hb hc]
          simp [pt, diagonal_denominator, r]
          ring), div_pow]
      simp [den, hc, E, j1]
      ring
    · refine ((hI n).norm.const_mul (‖E‖ / (1 - r) ^ 2)).mono' (Measurable.aestronglyMeasurable (by
      fun_prop)) (ae_of_all _ fun x => ?_)
      have h2 := Real.log_le_sub_one_of_pos (by
        positivity : (0:ℝ) < 1 + x ^ 2)
      have := one_pos.trans_le (h1 x)
      have := sq_pos_iff.2 hA
      simp only [norm_mul, norm_inv, norm_pow, norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.log_nonneg
        (le_add_of_nonneg_right (sq_nonneg x))), pow_add]
      field_simp
      rw [le_div_iff₀ this]
      nlinarith [hN x, norm_nonneg E, mul_nonneg (norm_nonneg E) (mul_nonneg (sq_nonneg (1 - r)) (sub_nonneg.2
        h2))]
    · have hD : HasDerivAt (diagonal_denominator r) ((1 - r) * 1) x := (((hasDerivAt_id _).const_mul
      _).add_const _).comp_ofReal
      refine ((hD.inv (h0 x)).pow _).const_mul _ |>.congr_deriv ?_
      have : (1 - r : ℂ) ≠ 0 := by
        exact_mod_cast hA
      simp
      grind
  · refine ⟨0, continuous_const, fun x y hy => ?_, by simp, by simp, by simp, inl rfl⟩
    simp [q1, diagonal_smul hb hc]
    intro h
    nlinarith [mul_self_nonneg (pt x y hy).1.im]

private theorem exists_diagonal_conjugate (g : GL (Fin 2) ℝ)
    (h : 4 * (g 0 0 * g 1 1 - g 0 1 * g 1 0) < (g 0 0 + g 1 1) ^ 2) :
    ∃ g0 : GL (Fin 2) ℝ, (g0⁻¹ * g * g0) 0 1 = 0 ∧ (g0⁻¹ * g * g0) 1 0 = 0 ∧
      (g0⁻¹ * g * g0) 0 0 ≠ (g0⁻¹ * g * g0) 1 1 := by
  obtain ⟨g0, p, q, hg, hpq⟩ : ∃ (g0 : GL (Fin 2) ℝ) (p q : ℝ),
      g.val * g0 = g0 * !![p, 0; 0, q] ∧ p ≠ q := by
    by_cases hb : g 0 1 = 0
    · have hne : g 0 0 ≠ g 1 1 := fun e => by
        rw [e, hb] at h
        nlinarith
      refine ⟨.mkOfDetNeZero !![g 0 0 - g 1 1, 0; g 1 0, 1] (by
        rw [det_fin_two_of]
        grind), g 0 0, g 1 1, ?_, hne⟩
      ext i j
      fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, sum_univ_two, hb] <;> ring
    · obtain ⟨s, hs⟩ : ∃ s, s * s =
          (g 0 0 + g 1 1) ^ 2 - 4 * (g 0 0 * g 1 1 - g 0 1 * g 1 0) :=
        ⟨_, mul_self_sqrt (by linarith)⟩
      refine ⟨.mkOfDetNeZero
        !![2 * g 0 1, 2 * g 0 1; g 1 1 - g 0 0 + s, g 1 1 - g 0 0 - s] (by
          rw [det_fin_two_of]
          grind), (g 0 0 + g 1 1 + s) / 2, (g 0 0 + g 1 1 - s) / 2, ?_, by grind⟩
      ext i j
      fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, sum_univ_two] <;> linarith
  refine ⟨g0, ?_⟩
  simp [mul_assoc, hg, hpq]

private theorem entries_of_commute_diagonal {m d : GL (Fin 2) ℝ} (h : m * d = d * m) (h01 : d 0 1 = 0) (h10 :
  d 1 0 = 0) (hne : d 0 0 ≠ d 1 1) :
    m 0 1 = 0 ∧ m 1 0 = 0 := by
  have := congrArg (fun x : GL (Fin 2) ℝ => (x 0 1, x 1 0)) h
  simp [Matrix.mul_apply] at this
  grind

theorem diagonal_terms_contribution_proof :
    B1a → B1b → UpperHalfPlaneMeasureCoordinates → DiagonalIntegrandVanishes → Esk.C1 → E0a →
      KernelTermsInvariantBounded → Ecut → Fcen → F2 := by
  classical
  intro hB1a _ hB5a _ _ hE0a hE0c hEcut hFcen F I Gf ι _ _ _ _ D k a hyp γ ω hTE β hβ hint
  obtain ⟨hcount, -, hpres, -⟩ := hE0a F I Gf D hyp.ax
  obtain ⟨-, hconj, hmeas, -, hsupp, hreg⟩ := hE0c F I Gf ι D k a hyp
  have := hB1a.1
  by_cases hT : D.Te a γ.out (D.rep ω) = 0
  · simp [Dat.kk, Dat.kt, hT]
  obtain ⟨htr, htr2⟩ := hreg γ ω _ (hsupp γ ω hT).choose_spec
  obtain ⟨v, hv⟩ := not_forall.1 hTE
  have := (D.σ v).injective.ne htr2
  simp [trace_fin_two, det_fin_two, map_ofNat] at hv this
  obtain ⟨g0, h01, h10, hne⟩ := exists_diagonal_conjugate (D.r v γ.out) (hv.lt_of_ne' this)
  obtain ⟨φ, -, hφeq, -, -, hφ0, -⟩ := diagonal_integrand_vanishes_proof (k v) (hyp.four v) _ h01 h10 hne
  let fac i w := q1 (k i) w (D.r i γ.out • w) * j1 (k i) (D.r i γ.out) w
  have hu (z : X I) : D.kk k a γ (ω, z) = D.Te a γ.out (D.rep ω) * ∏ i, fac i (z i) := by
    simp [Dat.kk, Dat.kt, qq, Dat.J, Dat.act, Finset.prod_mul_distrib, fac]
  let E (p : ℝ × {y : ℝ // y ≠ 0}) := g0 • pt p.1 p.2.1 p.2.2
  have hgd : D.r v γ.out * g0 = g0 * (g0⁻¹ * D.r v γ.out * g0) := by
    group
  have hfac : ∀ q, fac v (E q) = φ q.1 := fun ⟨x, y, hy⟩ => by
    rw [← hφeq x y hy]
    apply mul_right_cancel₀ (automorphy_factor_kernel_algebra_proof.2.1 (k v) g0 (pt x y hy))
    rw [mul_assoc, ← automorphy_factor_kernel_algebra_proof.1, hgd, automorphy_factor_kernel_algebra_proof.1,
      ← mul_assoc, smul_smul, hgd, mul_smul, automorphy_factor_kernel_algebra_proof.2.2.1]
    ring
  let fpr (w : P) := E (0, ⟨(g0⁻¹ • w).1.im, (g0⁻¹ • w).2⟩)
  let proj (z : X I) := update z v (fpr (z v))
  set S := stabilizer (PG F) ((γ, ω) : D.Cj × D.Om)
  obtain ⟨β0, hβ0⟩ := (hEcut F I Gf D hyp.ax).2 ω S fun δ hδ => congrArg Prod.snd hδ
  have hkey (δ : S) (z : D.Xs) : proj (δ • z) = δ • (show D.Xs from proj z) := by
    obtain ⟨⟨g⟩, hδ⟩ := δ
    set m := g0⁻¹ * D.r v g * g0
    obtain ⟨h1, h2⟩ := entries_of_commute_diagonal (m := m) ((Commute.map (hFcen F γ.out g htr ((out_eq'
      γ).symm ▸ congrArg Prod.fst hδ)) (D.r v)).map (MulAut.conj g0⁻¹)) h01 h10 hne
    have K (u : P) : pt 0 (m • u).1.im (m • u).2 = m • pt 0 u.1.im u.2 := Subtype.ext (by
      simp [diagonal_smul h1 h2]
      simp [pt, mul_assoc])
    have hc : fpr (D.r v g • z v) = D.r v g • fpr (z v) := by
      simp [fpr, E]
      rw [show g0⁻¹ • D.r v g • z v = m • g0⁻¹ • z v by simp [m, smul_smul], K]
      simp [m, smul_smul, mul_assoc]
    exact (congrArg (update _ v) hc).trans (funext (apply_update (fun i x => D.r i g • x) z v _)).symm
  have hproj : ∀ z q, proj (update z v (E q)) = update z v (E (0, q.2)) := fun z q => by
    simp [proj, fpr, E]
    simp [pt]
  have : PolishSpace {y : ℝ // y ≠ 0} := isOpen_compl_singleton.polishSpace
  have : LocallyCompactSpace {y : ℝ // y ≠ 0} := isOpen_compl_singleton.locallyCompactSpace
  have : IsFiniteMeasureOnCompacts (Measure.comap (Subtype.val : {y : ℝ // y ≠ 0} → ℝ) volume) := .comap' _
    continuous_subtypeVal (.subtypeVal isOpen_compl_singleton.measurableSet)
  have hinj : Injective E := (MulAction.injective g0).comp hB5a.2.1.1
  have hEmC : MeasurableEmbedding (fun q => (E q).1) :=
    (continuous_subtypeVal.comp ((hB1a.2.2 g0).1.comp hB5a.2.2)).measurableEmbedding
      (Subtype.val_injective.comp hinj)
  have hval : MeasurableEmbedding (fun z : P => z.1) :=
    .subtypeVal (isOpen_ne_fun continuous_im continuous_const).measurableSet
  have hEm : MeasurableEmbedding E := ⟨hinj, hEmC.measurable.subtype_mk, fun s hs => by
    apply hval.measurableSet_image.mp
    rw [image_image]
    exact hEmC.measurableSet_image.mpr hs⟩
  have hf : Measurable fpr := hEm.measurable.comp (measurable_const.prodMk (measurable_im.comp
    (measurable_subtypeVal.comp (hB1a.2.2 g0⁻¹).1.measurable)).subtype_mk)
  have hβ' : IsCut S (fun z : D.Xs => β0 (proj z)) := ⟨hβ0.meas.comp ((measurable_update' (a := v)).comp (measurable_id.prodMk (hf.comp (measurable_pi_apply v)))), fun _ => hβ0.nonneg _, fun z => by simpa only [hkey] using hβ0.sum (proj z)⟩
  obtain ⟨hint', heq⟩ := (action_integral_swap_proof _ _ _ (fun δ => hpres δ.1) _ _ hβ hβ').2 (fun z => D.kk k
    a γ (ω, z)) ((hmeas γ).comp (measurable_const.prodMk measurable_id)) (fun δ z => (congrArg (fun p : D.Cj ×
    D.Om => D.kk k a p.1 (p.2, δ • z)) δ.2).symm.trans (hconj δ γ (ω, z))) hint
  refine heq.trans ?_
  let Φ := (piEquivPiSubtypeProd (fun _ : I => P) (· = v)).trans (prodCongr (funUnique _ P) (.refl _))
  have hΦ := (((measurePreserving_funUnique volume _).prod (.id volume)).comp (by
    convert measurePreserving_piEquivPiSubtypeProd (fun _ => (volume : Measure P)) (· = v))).symm Φ
  have h2 := (hΦ.integrable_comp_emb Φ.symm.measurableEmbedding).2 hint'
  refine (hΦ.integral_comp' _).symm.trans ?_
  rw [integral_prod_symm]
  swap
  · simpa
  refine integral_eq_zero_of_ae (h2.prod_left_ae.mono fun r hr => ?_)
  simp only [Pi.zero_apply]
  have hE : MeasurePreserving E _ volume := (hB1a.2.2 g0).2.comp hB5a.1
  rw [← hE.integral_comp hEm, integral_prod_symm]
  swap
  · exact (hE.integrable_comp_emb hEm).2 hr
  obtain ⟨z0, hz0⟩ : ∃ z0, ∀ w, Φ.symm (w, r) = update z0 v w := ⟨Φ.symm (iP, r), fun w => Φ.injective <| by aesop⟩
  simp [hz0, hu, apply_update fac, Finset.prod_update_of_mem, hfac, hproj, integral_const_mul,
    integral_mul_const, hφ0]

section
variable {G Y : Type} [Group G] [MeasurableSpace Y] [MulAction G Y] {μ : Measure Y}
private def action_measurableEquiv (hP : Pres G μ) (g : G) : Y ≃ᵐ Y where
  toEquiv := toPerm g
  measurable_toFun := (hP g).measurable
  measurable_invFun := (hP g⁻¹).measurable
end

section
variable {G Y : Type} [Group G] [MeasurableSpace Y] [MulAction G Y] {μ : Measure Y}
private lemma action_measurableEmbedding (hP : Pres G μ) (g : G) : MeasurableEmbedding (fun y : Y => g • y) :=
  (action_measurableEquiv hP g).measurableEmbedding
end

private theorem diagonal_truncated_integral_zero :
    B1a → UpperHalfPlaneMeasureCoordinates → DiagonalIntegrandVanishes → Esk.C1 → E0a →
      KernelTermsInvariantBounded → E0d → Ecut → Fcen → ConstantTermVanishingAlt →
      DiagonalTruncatedIntegralZero := by
  intro _ _ hB5b hC1 hE0a hE0c hE0d hEcut hFcen hF6c F I Gf ι _ _ _ _ D k a hH T hT γ ω h01 h10 β hβ hint
  obtain ⟨_, hinv, hmeas, _, hsupp, htr⟩ := hE0c F I Gf ι D k a hH
  obtain ⟨hax, h4⟩ := hH
  obtain ⟨_, _, hpres, _, _, _, _, _⟩ := hE0a F I Gf D hax
  obtain ⟨_, e2, e3, e4, _, e6, _, e8, _⟩ := hE0d F I Gf D hax
  have := hax.two
  have ⟨g01, g10⟩ : (γ : PG F).out 0 1 = 0 ∧ (γ : PG F).out 1 0 = 0 := by
    obtain ⟨z, hz⟩ := mk_out_eq_mul (Subgroup.center (GL (Fin 2) F)) γ
    simp [hz, Matrix.mul_apply, h01, h10, center_entries z.2]
  set g := (γ : PG F).out with hg
  by_cases hc : D.Te a g (D.rep ω) = 0
  · exact integral_eq_zero_of_ae (of_forall fun z => by simp [Dat.kk, Dat.kt, ← hg, hc])
  obtain ⟨htr0, htr1⟩ := htr γ ω _ (hsupp γ ω hc).choose_spec
  have hne : g 0 0 ≠ g 1 1 := fun h => htr1 (by
    rw [trace_fin_two, det_fin_two, g01, g10, h]
    ring)
  choose φ hφc hφe hφi hφl hφ0 hφn using fun v =>
    hB5b (k v) (h4 v) (D.r v g) (by
      simp [Dat.r, g01]) (by
        simp [Dat.r, g10]) fun h => hne ((D.σ v).injective h)
  have hkk (z : D.Xs) : D.kk k a γ (ω, z) = D.Te a g (D.rep ω) * ∏ v, φ v ((z v).1.re / (z v).1.im) := by
    simp [Dat.kk, Dat.kt, qq, Dat.J, Dat.act, ← Finset.prod_mul_distrib]
    congr 1
    exact Finset.prod_congr rfl fun v _ => by
      rw [← hφe v _ _ (z v).2]
      congr <;> exact Subtype.ext (by
        simp [pt, Complex.ext_iff, mul_div_cancel₀ _ (z v).2])
  by_cases hz : ∃ v, φ v = 0
  · obtain ⟨v, hv⟩ := hz
    exact integral_eq_zero_of_ae (of_forall fun z => by simp [hkk, hv, Finset.prod_eq_zero (Finset.mem_univ v)])
  push Not at hz
  have h1pos := hax.pos ![0, 1] (by
    simp) (D.rep ω)
  have h12 := hax.prod ![0, 1] ![1, 0] (by
    simp) (D.rep ω)
  simp at h12
  have hLam (z : D.Xs) : (ω, z) ∈ D.LamF T γ ↔ D.HtY ![1, 0] (ω, z) ≤ T ∧ D.HtY ![0, 1] (ω, z) ≤ T := by
    simp [Dat.LamF, Fix, ← hg, funext_iff, vecMul, g01, g10]
    refine ⟨fun h => ⟨h _ (by
      simp) _ (mul_comm _ _) (by
        simp), h _ (by
          simp) _ (by
            simp) (mul_comm _ _)⟩, ?_⟩
    rintro ⟨h2, h1⟩ s hs c e0 e1
    by_cases hs1 : s 1 = 0
    · rw [show s = s 0 • ![1, 0] by simp [funext_iff, hs1], e3 _ (by
      simp) _ (by
        simp_all)]
      linarith
    · rw [show s = s 1 • ![0, 1] by simp [funext_iff]
                                    grind, e3 _ (by
                                      simp) _ hs1]
      linarith
  set S := stabilizer (PG F) (((γ : PG F), ω) : D.Cj × D.Om)
  have hstab (δ : PG F) (hδ : δ ∈ S) : δ * (γ : PG F) * δ⁻¹ = γ ∧ δ • ω = ω :=
    ⟨congrArg Prod.fst hδ, congrArg Prod.snd hδ⟩
  obtain ⟨β0, hβ0⟩ := (hEcut F I Gf D hax).2 ω S fun δ hδ => (hstab δ hδ).2
  let N (z : D.Xs) := D.HtY ![0, 1] (ω, z) ^ (card I : ℝ)⁻¹
  let p (z : D.Xs) : D.Xs := fun v => pt 0 ((z v).1.im / N z) (div_ne_zero (z v).2 (rpow_pos_of_pos (e4 _ (by
    simp) _) _).ne')
  have hNm : Measurable N := by
    fun_prop
  have hpm : Measurable p := by
    simp [p, pt]
    fun_prop
  have hβ' : IsCut S (fun z : D.Xs => β0 (p z)) := by
    refine ⟨hβ0.meas.comp hpm, fun _ => hβ0.nonneg _, fun z => ?_⟩
    convert hβ0.sum (p z) using 3 with ⟨δ, hδ⟩
    obtain ⟨d, rfl⟩ := QuotientGroup.mk_surjective δ
    obtain ⟨h3, h2⟩ := hstab _ hδ
    have := congrArg (fun m : GL (Fin 2) F => (m 0 1, m 1 0)) (hFcen F g d htr0 (by
      simp [hg, h3]))
    simp [Matrix.mul_apply] at this
    obtain ⟨d01, d10⟩ : d 0 1 = 0 ∧ d 1 0 = 0 := by
      grind
    have key := e2 ![0, 1] (by
      simp) d (ω, z)
    rw [show ![0, 1] ᵥ* d.val = d 1 1 • ![0, 1] by simp [funext_iff, vecMul, dotProduct, d10],
      e3 _ (by
        simp) _ (fun h => d.det_ne_zero (by
          rw [det_fin_two, h, d01]
          ring)), smul_mk, h2, Dat.mk_smulX] at key
    funext v
    apply Subtype.ext
    simp only [Subgroup.mk_smul, Dat.mk_smulX, Dat.act]
    rw [coe_smul]
    simp [p, N, key, pt, Dat.act, coe_smul, num, den, Dat.r, d01, d10]
    ring
  let u (z : D.Xs) := (D.LamF T γ).indicator (D.kk k a γ) (ω, z)
  have hC := (hC1 S D.Xs volume (fun δ => hpres δ) β (fun z => β0 (p z)) hβ hβ').2
    u (((hmeas _).indicator (e8 T _).1).comp measurable_prodMk_left) (fun δ z => by
      obtain ⟨h3, h2⟩ := hstab δ.1 δ.2
      have hm := (e8 T γ).2 δ.1 (ω, z)
      have hk := hinv δ.1 γ (ω, z)
      rw [h3, smul_mk, h2] at hm hk
      classical
      simp [u, indicator_apply, Subgroup.smul_def, hm, hk]) hint
  rw [hC.2]
  have hF := hF6c I φ (fun v => ⟨hφc v, hφi v, hφl v, hφ0 v, by grind⟩) (fun z => β0 (p z))
    hβ'.meas hβ'.nonneg (fun x x' y hy t ht => by
      congr 1
      funext v
      apply Subtype.ext
      simp [p, N, pt, Dat.HtY, Dat.Ht, Finset.prod_mul_distrib, abs_of_pos ht]
      rw [mul_assoc, mul_rpow (pow_nonneg ht.le _) (by
        positivity), pow_rpow_inv_natCast ht.le card_ne_zero]
      push_cast
      field_simp [ht.ne']) (D.hf ![1, 0] (D.rep ω) / T) (T / D.hf ![0, 1] (D.rep ω)) (div_pos (hax.pos _ (by
        simp) _) (by
          linarith))
    (by
      rw [div_lt_div_iff₀ (by
        linarith) h1pos]
      nlinarith)
    (fun z => (D.Te a g (D.rep ω))⁻¹ * u z) (fun x y hy => by
      classical
      have hP : 0 < ∏ v, |y v| := Finset.prod_pos fun v _ => abs_pos.2 (hy v)
      simp [u, indicator_apply, hLam, hkk, Dat.HtY, Dat.Ht, pt, hy]
      simp [mul_pow, Complex.sq_norm, normSq_apply, Finset.prod_mul_distrib, Finset.prod_pow, -sq_abs]
      field_simp
      ring_nf)
    ((hC.1.const_mul _).congr (of_forall fun _ => mul_smul_comm _ _ _))
  simp only [← mul_smul_comm, integral_const_mul] at hF
  exact (mul_eq_zero.1 hF).resolve_left (inv_ne_zero hc)

private theorem e5_of_reproducing_formula : B1b → C3 → E0a → faceMap_zero_comp_eq_one →
  MultivariableReproducingFormula → E5 := by
  intro _ hC3 hE0 _ hB3 F I Gf _ _ _ D hAx k hk _ b hb f hf ⟨z, x⟩
  obtain ⟨_, _, -, hpres, -⟩ := hE0 F I Gf D hAx
  have := hAx.cO
  let ω₀ : D.Om := (x : Gf ⧸ D.H)
  let a := ({ω₀} : Set D.Om).indicator fun _ => (1 : ℂ)
  let h0 (w : D.Xs) := qq k z w * f (w, x)
  have hG (g : Gf) (w : D.Xs) : D.ee (g⁻¹ * x) * (qq k z w * f (w, g)) = a (g : Gf ⧸ D.H) * h0 w := by
    by_cases hu : g⁻¹ * x ∈ D.H
    · have := hf.lev w g ⟨_, hu⟩
      simp at this
      simp [a, h0, Dat.ee, hu, this, show (g : Gf ⧸ D.H) = ω₀ from QuotientGroup.eq.2 hu]
      ring
    · simp [Dat.ee, hu]
      exact .inl (indicator_of_notMem (s := {ω₀}) (fun h => hu (QuotientGroup.eq.1 h)) _)
  have hKf (y : D.Y) : D.Kern k y (z, x) * f (y.2, D.rep y.1) = ∑' γ : PG F, a (γ • y).1 * h0 (γ • y).2 := by
    rw [Dat.Kern, ← tsum_mul_right]
    refine tsum_congr fun γ => ?_
    rw [show γ • y = (((D.j γ.out * D.rep y.1 : Gf) : Gf ⧸ D.H), D.act γ.out y.2) from Prod.ext (by
      simp [← Dat.mk_smulO]
      exact congrArg _ (out_eq' _).symm) (by
        simp [← Dat.mk_smulX])]
    erw [← hG, hf.aut, _root_.mul_inv_rev]
    ring
  have hqc : Continuous fun w : X I => qq k z w := continuous_finsetProd _ fun v _ =>
    (automorphy_factor_kernel_algebra_proof.2.2.2.2.2.2.2.1 (k v)).comp (continuous_const.prodMk
    (continuous_apply v))
  have hB := hB3 I k hk (fun w => f (w, x)) (hf.hol x) (hf.bdd.imp fun C hC w => hC w x) z
  have hai : Integrable a count := by
    simp [a, integrable_indicator_iff]
  simp [hKf]
  exact (hC3 (PG F) D.Y D.μY hpres b hb (fun y => a y.1 * h0 y.2)
    (((Measurable.of_discrete (f := a)).comp measurable_fst).mul ((hqc.mul (hf.hol x).1).measurable.comp
      measurable_snd))
    (hai.mul_prod hB.1)).2.trans ((integral_prod_mul _ _).trans (by
      simp [a]
      aesop))

/-! ## Elliptic contributions and reproduction -/

private theorem exists_common_fixed_point (h : GL (Fin 2) ℝ) (hh : h.val.trace ^ 2 < 4 * h.val.det) : ∃ z : P,
  ∀ g : GL (Fin 2) ℝ, g * h = h * g → g • z = z := by
  have hs2 := Real.sq_sqrt (sub_nonneg.2 hh.le)
  have hs := Real.sqrt_pos.2 (sub_pos.2 hh)
  set s := √(4 * h.val.det - h.val.trace ^ 2)
  rw [trace_fin_two, det_fin_two] at hh hs2
  have hc : h 1 0 ≠ 0 := fun hc => by rw [hc] at hh
                                      nlinarith [sq_nonneg (h 0 0 - h 1 1)]
  refine ⟨⟨⟨(h 0 0 - h 1 1) / (2 * h 1 0), s / (2 * h 1 0)⟩, by positivity⟩, fun g hg => Subtype.ext ((div_eq_iff (den_ne g (by
    positivity))).2 ?_)⟩
  simp [Units.ext_iff, ← Matrix.ext_iff, Matrix.mul_apply] at hg
  simp [num, den, Complex.ext_iff]
  grind

private theorem exists_fixed_point (g : GL (Fin 2) ℝ) (h : g.val.trace ^ 2 < 4 * g.val.det) : ∃ z : P, g • z =
  z :=
  (exists_common_fixed_point g h).imp fun _ hz => hz g rfl

theorem elliptic_terms_contribution_proof : B1a → B1b → B1c → B4 → Esk.C1 → E0a → KernelTermsInvariantBounded
  → E0d → Mult → Fcen → F3 := by
  intro hB1a _ hB1c hB4 hC1 hE0a hE0c _ hMult hFcen F I Gf ι _ _ _ _ D k a hyp γ ω hT hTe
  have := hB1a.1
  obtain ⟨_, c2, c3, _, c5, c6⟩ := hE0c F I Gf ι D k a hyp
  obtain ⟨hax, h4⟩ := hyp
  have hTv (v) : (D.r v γ.out).val.trace ^ 2 < 4 * (D.r v γ.out).val.det := by
    simpa [Dat.r, trace_fin_two, det_fin_two] using hT v
  choose z0 hz0 using fun v => exists_common_fixed_point _ (hTv v)
  set S := stabilizer (PG F) ((γ, ω) : D.Cj × D.Om)
  have memS (g : PG F) (hg : g ∈ S) : g * γ * g⁻¹ = γ ∧ g • ω = ω := ⟨congrArg Prod.fst hg, congrArg Prod.snd
    hg⟩
  obtain ⟨c₀, hc₀, hmink⟩ := hax.mink
  obtain ⟨s, hs, hsc⟩ := hmink z0 (D.rep ω)
  obtain ⟨C, hC⟩ := hMult F I Gf D hax 1 c₀ one_pos hc₀
  have := ((hC (ω, z0) s hs hsc).1.subset fun g hg => ⟨(memS g hg).2, fun v => by
      have c := hFcen F γ.out g.out (by
        grind) (by
          simp_all)
      rw [← out_eq' g]
      show 1 ≤ kap (z0 v) (D.r v g.out • z0 v)
      rw [hz0 v _ (by
        rw [← map_mul, ← map_mul, c]), hB1c.2.1]⟩).to_subtype
  refine ⟨this, fun β hβ => ?_⟩
  let f := fun v w => q1 (k v) w (D.r v γ.out • w) * j1 (k v) (D.r v γ.out) w
  have hu (z : D.Xs) : D.kk k a γ (ω, z) = D.Te a γ.out (D.rep ω) * ∏ v, f v (z v) :=
    congrArg (D.Te a γ.out (D.rep ω) * ·) Finset.prod_mul_distrib.symm
  have hint := Integrable.fintype_prod fun v => (hB4 (k v) (h4 v) _ (hTv v)).1
  have := ofFinite S
  let c := (card S : ℝ)⁻¹
  have hcut : IsCut S (fun _ : D.Xs => c) := ⟨measurable_const, fun _ => by positivity,
    fun _ => by simpa [c] using hasSum_fintype fun _ : S => c⟩
  rw [← ((hC1 S D.Xs volume (fun g => (hE0a F I Gf D hax).2.2.1 g)
    (fun _ => c) β hcut hβ).2 (fun z => D.kk k a γ (ω, z))
    ((c3 γ).comp measurable_prodMk_left) (fun g z => by
      simpa [(memS g g.2).1, (memS g g.2).2, Subgroup.smul_def] using c2 g γ (ω, z)) (by
      simp_rw [hu]
      fun_prop)).2]
  simp [hu, integral_const_mul, show ∫ z : D.Xs, ∏ v, f v (z v) = D.orb k γ.out from
    (integral_fintype_prod_volume_eq_prod f).trans (Finset.prod_congr rfl fun v _ => (hB4 (k v) (h4 v) _ (hTv
    v)).2.trans (by
    simp [Dat.r, trace_fin_two, det_fin_two]))]
  simp [c]

private theorem kap_rotation_bound (m : GL (Fin 2) ℝ) (a b : ℝ) (h00 : m 0 0 = a) (h01 : m 0 1 = b)
    (h10 : m 1 0 = -b) (h11 : m 1 1 = a) (hb : b ≠ 0) (z : P) (hz : 0 < z.1.im) :
    kap z (m • z) ≤ (a ^ 2 + b ^ 2) / b ^ 2 * kap iP z := by
  have hden := den_ne m z.2
  have hwim : (m • z).1.im = (a ^ 2 + b ^ 2) * z.1.im / normSq (den m z.1) := by
    rw [coe_smul, im_div, det_eq, h00, h01, h10, h11]
    ring
  rw [kap, kap, ite_eq_left (by
      rw [hwim]
      have := normSq_pos.2 hden
      positivity), ite_eq_left (by
        simpa [iP] using hz), hwim, coe_smul, map_div₀, sub_div' ((map_ne_zero _).2 hden), norm_div, div_pow,
          norm_conj]
  simp [Complex.sq_norm, normSq_apply]
  simp [iP, num, den, h00, h01, h10, h11]
  field_simp
  exact div_le_of_le_mul₀ (by
    positivity) (by
      positivity) (by
        rw [one_div_mul_eq_div, le_div_iff₀ (by
          positivity)]
        nlinarith [mul_nonneg (mul_nonneg (sq_nonneg b) (add_nonneg (sq_nonneg z.1.re) (sq_nonneg (z.1.im -
          1)))) (by
          positivity : (0:ℝ) ≤ z.1.re ^ 2 + z.1.im ^ 2 + 1 + z.1.im)])

private def halfPlane_mk (t : ℂ) (h : t.im ≠ 0) : P := ⟨t, h⟩

private theorem ext1_coe (f : P → ℂ) (z : P) : ext1 f z.1 = f z := dite_eq_left z.2

private theorem ext1_of_im_ne_zero (f : P → ℂ) {t : ℂ} (h : t.im ≠ 0) : ext1 f t = f (halfPlane_mk t h) :=
  dite_eq_left h

private theorem continuous_of_hol1 {f : P → ℂ} (hf : Hol1 f) : Continuous f :=
  (hf.continuousOn.comp_continuous continuous_subtypeVal fun z => z.2).congr fun z => ext1_coe f z

private theorem integrable_q1_mul (_B1b : B1b) (B1c' : B1c) (B6' : B6) {k : ℕ} (hk : 4 ≤ k) {f : P → ℂ}
    (hc : Continuous f) {C : ℝ} (hC : ∀ z : P, ‖f z‖ * |z.1.im| ^ ((k : ℝ) / 2) ≤ C) (z : P) :
    Integrable (fun w => q1 k z w * f w) := by
  obtain ⟨C6, hC6⟩ := B6' k hk
  have hK (w) : 0 ≤ kap z w ^ ((k : ℝ) / 2) := rpow_nonneg (B1c'.1 z w).1 _
  have hA : 0 ≤ ((k : ℝ) - 1) / (4 * π) := by
    bound
  have := automorphy_factor_kernel_algebra_proof.2.2.2.2.2.2.2.1 k
  have := B1c'.2.2.2.2.1
  refine (Integrable.const_mul ⟨by fun_prop (disch := positivity), (hasFiniteIntegral_iff_ofReal (of_forall hK)).2 ((hC6 z).1.trans_lt coe_lt_top)⟩ (((k : ℝ) - 1) / (4 * π) * C / |z.1.im| ^ ((k : ℝ) / 2))).mono' (by
    fun_prop) (of_forall fun w => ?_)
  have h6 := automorphy_factor_kernel_algebra_proof.2.2.2.2.2.1 k z w (by
    lia)
  rw [norm_mul, div_mul_eq_mul_div, le_div_iff₀ (rpow_pos_of_pos (abs_pos.mpr z.2) _)]
  nlinarith [mul_le_mul_of_nonneg_left (hC w) (mul_nonneg hA (hK w)), norm_nonneg (f w)]

private theorem hol1_comp_smul_div_j1 (g : GL (Fin 2) ℝ) (k : ℕ) {f : P → ℂ} (hf : Hol1 f) :
    Hol1 (fun w => f (g • w) / j1 k g w) := by
  have hden : Differentiable ℂ (den g) := by
    unfold den
    fun_prop
  refine ((hf.comp (DifferentiableOn.div (by
    unfold num
    fun_prop) hden.differentiableOn fun t ht => den_ne g ht) fun t ht => (g • halfPlane_mk t ht).2).div
      ((hden.pow k).mul_const _).differentiableOn fun t ht => automorphy_factor_kernel_algebra_proof.2.1 k g
      (halfPlane_mk t ht)).congr fun t ht => ?_
  rw [ext1_of_im_ne_zero _ ht, ← ext1_coe f (g • halfPlane_mk t ht)]
  rfl

private theorem halfPlane_action_measurableEmbedding (B1a' : B1a) (g : GL (Fin 2) ℝ) : MeasurableEmbedding
  (fun z : P => g • z) :=
  action_measurableEmbedding (fun g => (B1a'.2.2 g).2) g

private theorem cayley_disk_properties (s : ℂ) (hs : ‖s‖ < 1) : (1 - s) ≠ 0 ∧ 0 < (Complex.I * (1 + s) / (1 -
  s)).im :=
  ⟨sub_ne_zero.2 (by
    aesop), image_cayley_ball.le (mem_image_of_mem cayley (mem_ball_zero_iff.2 hs))⟩

section
variable {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf)
private theorem rep_eq_mul_of_quotient_eq (ω : D.Om) (u : Gf) (hu : (u : Gf ⧸ D.H) = ω) : ∃ h : D.H, D.rep ω =
  u * h := by

  refine ⟨⟨u⁻¹ * D.rep ω, QuotientGroup.eq.1 (hu.trans (out_eq' _).symm)⟩, ?_⟩
  simp
end

private def transformed_holomorphic_function (f) (m : ℕ) (s) := ext1 f (cayley s) / (1 - s) ^ (m + 2)

private theorem reproducing_formula_at_iP (B1b' : B1b) (B1c' : B1c) (B2' : B2) (B6' : B6) {k : ℕ} (hk : 4 ≤ k)
  {f}
    (hf : Hol1 f) {C} (hC : ∀ z, ‖f z‖ * |z.1.im| ^ ((k : ℝ) / 2) ≤ C) :
    ∫ w, q1 k iP w * f w = f iP := by
  obtain ⟨m, rfl⟩ : ∃ m, k = m + 2 := ⟨k - 2, by lia⟩
  obtain ⟨hIO, heq⟩ := B2' (fun w => q1 (m + 2) iP w * f w) (fun w hw => by simp [q1, iP, not_lt_of_gt hw]) (integrable_q1_mul B1b' B1c' B6' hk (continuous_of_hol1 hf) hC iP)
  rw [heq, setIntegral_congr_fun (measurableSet_Ioo.prod measurableSet_Ioo) (g := fun p => ((m + 1) / π * p.1
    * (1 - p.1 ^ 2) ^ m : ℝ) * transformed_holomorphic_function f m (circleMap 0 p.1 p.2)) ?h, volume_eq_prod,
    setIntegral_prod _ (hIO.congr_fun ?h (measurableSet_Ioo.prod measurableSet_Ioo)), setIntegral_congr_fun
    measurableSet_Ioo (g := fun r => ((m + 1) / π * r * (1 - r ^ 2) ^ m : ℝ) * (2 * π * f iP)) ?_,
    integral_mul_const, integral_complex_ofReal, ← integral_Ioc_eq_integral_Ioo, ←
    intervalIntegral.integral_of_le zero_le_one, intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ =>
    ((((hasDerivAt_pow 2 x).const_sub 1).pow (m + 1)).neg.div_const (2 * π)).congr_deriv ?_)
    (Continuous.intervalIntegrable ?_ _ _)]
  · simp
    field_simp
  · fun_prop
  · grind

  · intro r hr
    have h1 := (DifferentiableOn.diffContOnCl_ball (f := transformed_holomorphic_function f m) ((hf.comp (fun
      s hs => (hasDerivAt_cayley s (ne_one_of_mem_unit_ball s hs)).differentiableAt.differentiableWithinAt)
      fun s hs => (cayley_disk_properties s (mem_ball_zero_iff.1 hs)).2.ne').div (by
      fun_prop) fun s hs => pow_ne_zero _ (sub_ne_zero.2 (ne_one_of_mem_unit_ball s hs).symm))
        (closedBall_subset_ball ((abs_of_pos hr.1).trans_lt hr.2))).circleAverage
    have h2 := ((periodic_circleMap 0 r).comp (transformed_holomorphic_function f m)).intervalIntegral_add_eq
      (-π) 0
    rw [show -π + 2 * π = π by ring, zero_add] at h2
    have h0 : transformed_holomorphic_function f m 0 = f iP := by
      simp [transformed_holomorphic_function, cayley, ext1, iP]
    rw [circleAverage_def, real_smul, h0] at h1
    simp only [integral_const_mul, ← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le
      (neg_le_self pi_pos.le)]
    erw [h2, ← h1]
    push_cast
    grind

  rintro ⟨r, θ⟩ ⟨⟨hr0, hr1⟩, -⟩
  dsimp only
  obtain ⟨h1s, hwim⟩ := cayley_disk_properties (circleMap 0 r θ) (by
    simp [abs_of_pos hr0, hr1])
  have hcs : conj (circleMap 0 r θ) * circleMap 0 r θ = r ^ 2 := by
    rw [conj_mul', norm_circleMap_zero, abs_of_pos hr0]
  generalize circleMap 0 r θ = s at *
  have : (1 - r ^ 2 : ℂ) ≠ 0 := by
    norm_cast
    nlinarith
  simp [transformed_holomorphic_function, cayley, ext1, hwim.ne', q1, iP, hwim]
  rw [show (I * (1 + s) / (1 - s) - -(I * (1 + conj s)) / (1 - conj s)) / (I - -(I * (1 + conj s)) / (1 - conj
    s)) = (1 - r ^ 2) / (1 - s) by
    field_simp
    grind, div_pow]
  field_simp
  ring

theorem reproducing_formula_proof : B1a → B1b → B1c → B2 → B6 → B3 := by
  intro hB1a hB1b hB1c hB2 hB6 k hk f hf ⟨C, hC⟩ z
  refine ⟨integrable_q1_mul hB1b hB1c hB6 hk (continuous_of_hol1 hf) hC z, ?_⟩
  obtain ⟨g, -, -, rfl⟩ := hB1c.2.2.2.2.2 z
  rw [← (hB1a.2.2 g).2.integral_comp (halfPlane_action_measurableEmbedding hB1a g)]
  simp [eq_div_of_mul_eq (hB1b.2.1 k g _) (hB1b.2.2.1 k g iP _), div_mul_eq_mul_div, mul_div_assoc, mul_assoc]
  rw [integral_const_mul, reproducing_formula_at_iP hB1b hB1c hB2 hB6 hk (hol1_comp_smul_div_j1 g k hf) (C :=
    C) fun w => ?_]
  · field_simp [hB1b.2.1 k g iP]
  · rw [← hB1b.2.2.2.2.1 k g w, norm_div]
    field_simp [norm_ne_zero_iff.2 (hB1b.2.1 k g w)]
    simp_all

/-! ## Invariant half-plane measure and quotient heights -/

private theorem measure_Icc_eq_mul_sub (m : Measure ℝ) (hinv : ∀ c : ℝ, ∀ S : Set ℝ, MeasurableSet S → m ((fun
  x => c + x) ⁻¹' S) = m S)
    (a0 ℓ : ℝ) (hℓ : 0 < ℓ) (hfin : m (Icc a0 (a0 + ℓ)) ≠ ⊤) :
    ∃ R : ℝ, ∀ a c : ℝ, a ≤ c → (m (Icc a c)).toReal = R * (c - a) := by
  have := (forall_measure_preimage_add_iff m).1 hinv
  have : IsFiniteMeasureOnCompacts m := ⟨fun K hK => measure_lt_top_of_isCompact_of_isAddLeftInvariant' (by
    simp_all) hfin hK⟩
  refine ⟨addHaarScalarFactor m volume, fun a c hac => ?_⟩
  nth_rw 1 [isAddLeftInvariant_eq_smul m volume]
  simp [hac, toReal_smul, NNReal.smul_def]

private def nonreal := {z : ℂ | z.im ≠ 0}

private theorem isOpen_nonreal : IsOpen nonreal := isOpen_ne_fun continuous_im continuous_const

private def halfPlane_val (z : P) := z.1

private theorem halfPlane_isOpenEmbedding : Topology.IsOpenEmbedding halfPlane_val :=
  isOpen_nonreal.isOpenEmbedding_subtypeVal

private def halfPlane_density (z : ℂ) := ENNReal.ofReal (1 / z.im ^ 2)

private def moebius (g z) := num g z / den g z

private theorem hasDerivAt_moebius (g) {z : ℂ} (hz : z.im ≠ 0) :
    HasDerivAt (moebius g) (g.val.det / den g z ^ 2) z := by
  refine ((hasDerivAt_id z).const_mul _ |>.add_const _).div ((hasDerivAt_id z).const_mul _ |>.add_const _)
    (den_ne g hz) |>.congr_deriv ?_
  simp [den, det_eq]
  ring

private theorem volume_halfPlane_def : (volume : Measure P) = (Measure.comap halfPlane_val volume).withDensity
  fun z => halfPlane_density (halfPlane_val z) := rfl

private theorem volume_halfPlane_eq_lintegral (s) (hs : MeasurableSet s) : volume s = ∫⁻ z in halfPlane_val ''
  s, halfPlane_density z :=
  (withDensity_apply _ hs).trans (setLIntegral_subtype isOpen_nonreal.measurableSet s halfPlane_density)

private theorem continuous_halfPlane_smul (g : GL (Fin 2) ℝ) : Continuous (fun z : P => g • z) :=
  continuous_induced_rng.2 (Continuous.div (by
    unfold num
    fun_prop) (by
    unfold den
    fun_prop) fun z => den_ne g z.2)

theorem half_plane_measure_invariant_proof : B1a := by
  have := halfPlane_isOpenEmbedding.locallyCompactSpace
  have := IsFiniteMeasureOnCompacts.comap' volume halfPlane_isOpenEmbedding.continuous
    halfPlane_isOpenEmbedding.measurableEmbedding
  have := IsOpenPosMeasure.comap volume halfPlane_isOpenEmbedding
  refine ⟨volume_halfPlane_def ▸ withDensity_ofReal _, volume_halfPlane_def ▸
    (withDensity_absolutelyContinuous' (by
    unfold halfPlane_density halfPlane_val
    fun_prop) (ae_of_all _ fun z => by
      simp [halfPlane_density, halfPlane_val, z.2])).isOpenPosMeasure,
    fun g => ⟨continuous_halfPlane_smul g, (continuous_halfPlane_smul g).measurable,
      Measure.ext fun s hs => ?_⟩⟩
  have H : halfPlane_val '' s ⊆ nonreal := image_subset_iff.2 fun p _ => p.2
  have hs' := halfPlane_isOpenEmbedding.measurableEmbedding.measurableSet_image.2 hs
  rw [map_apply (continuous_halfPlane_smul g).measurable hs, volume_halfPlane_eq_lintegral _
    ((continuous_halfPlane_smul g).measurable hs), volume_halfPlane_eq_lintegral _ hs,
    show halfPlane_val '' ((g • ·) ⁻¹' s) = moebius g⁻¹ '' (halfPlane_val '' s) by
      rw [preimage_smul, ← image_smul, image_image, image_image]
      rfl]
  generalize g⁻¹ = g
  rw [lintegral_image_eq_lintegral_abs_det_fderiv_mul volume hs'
    (fun x hx => ((hasDerivAt_moebius g (H hx)).hasFDerivAt.restrictScalars ℝ).hasFDerivWithinAt)
    fun x hx y hy hxy => congrArg halfPlane_val (smul_left_cancel g (Subtype.ext hxy : g • halfPlane_mk x (H
      hx) = g • halfPlane_mk y (H hy)))]
  refine setLIntegral_congr_fun hs' fun x hx => ?_
  have := (normSq_pos.2 (den_ne g (H hx))).ne'
  have hdet := g.det_ne_zero
  simp [ContinuousLinearMap.det, LinearMap.det_restrictScalars, Algebra.norm_complex_eq, halfPlane_density,
    moebius, im_div, abs_div]
  rw [← ofReal_mul (div_nonneg (mul_self_nonneg _) (sq_nonneg _))]
  grind

section
variable {F I Gf : Type} [Field F] [Group Gf] [Fintype I]

private theorem vecMul_ne_zero {s} (hs : s ≠ 0) (γ : GL (Fin 2) F) : s ᵥ* γ.val ≠ 0 :=
  fun h => γ.det_ne_zero (exists_vecMul_eq_zero_iff.1 ⟨s, hs, h⟩)

private theorem height_product_le_one (a b a' b' : ℝ) (z : ℂ) :
    |z.im| / ‖a * z + b‖ ^ 2 * (|z.im| / ‖a' * z + b'‖ ^ 2) * (a * b' - b * a') ^ 2 ≤ 1 := by
  rw [div_mul_div_comm, div_mul_eq_mul_div]
  refine div_le_one_of_le₀ ?_ (by
    positivity)
  simp [Complex.sq_norm, normSq_apply]
  nlinarith [sq_nonneg ((a * z.re + b) * (a' * z.re + b') + a * z.im * (a' * z.im))]

private theorem fix_mk_iff_eigenvector (t) (g : GL (Fin 2) F) : Fix t (g : PG F) ↔ ∃ c : F, t ᵥ* g.val = c • t
  := by
  obtain ⟨⟨ζ, hζ⟩, e⟩ := mk_out_eq_mul (Subgroup.center (GL (Fin 2) F)) g
  rw [GeneralLinearGroup.center_eq_range_scalar] at hζ
  obtain ⟨u, rfl⟩ := hζ
  unfold Fix
  simp [e, ← vecMul_vecMul]
  exact ⟨fun ⟨c, hc⟩ => ⟨↑u⁻¹ * c, by simp [mul_smul, ← hc]⟩, fun ⟨c, hc⟩ => ⟨u * c, by simp [hc, smul_smul]⟩⟩

private theorem fix_conj_iff (s : Fin 2 → F) (γ δ : GL (Fin 2) F) :
    Fix s ((δ : PG F) * γ * (δ : PG F)⁻¹) ↔ ∃ c : F, (s ᵥ* δ.val) ᵥ* γ.val = c • (s ᵥ* δ.val) :=
  (fix_mk_iff_eigenvector s (δ * γ * δ⁻¹)).trans (exists_congr fun c => by
    rw [← (vecMul_injective_of_isUnit δ.isUnit).eq_iff]
    simp [smul_vecMul])

variable {D : Dat F I Gf} (hA : D.Ax)
include hA

private theorem height_mk (s) (hs : s ≠ 0) (z) (x : Gf) :
    D.HtY s ((x : Gf ⧸ D.H), z) = D.Ht s z x := by
  obtain ⟨h, e⟩ := rep_eq_mul_of_quotient_eq D _ x rfl
  simp [Dat.HtY, Dat.Ht, e, hA.lev s hs]

private theorem height_smul (s) (hs : s ≠ 0) (γ : GL (Fin 2) F) (y) :
    D.HtY s ((γ : PG F) • y) = D.HtY (s ᵥ* γ.val) y := by
  obtain ⟨⟨x⟩, z⟩ := y
  refine ((height_mk hA s hs _ _).trans ?_).trans (height_mk hA _ (vecMul_ne_zero hs γ) z x).symm
  simp only [Dat.Ht, Dat.mk_smulX, Dat.act, ← hA.rat s hs γ x, mul_comm (D.hf s _), ← mul_assoc, ←
    Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun v _ => ?_
  have h0 := den_ne (D.r v γ) (z v).2
  rw [im_smul, coe_smul, mul_div_assoc', div_add' _ _ _ h0, norm_div, abs_div, abs_mul, normSq_eq_norm_sq]
  field_simp
  simp [Dat.r, vecMul, RingHom.map_det, num, den]
  ring_nf

private theorem height_smul_scalar (s) (hs : s ≠ 0) (c : F) (hc : c ≠ 0) : D.HtY (c • s) = D.HtY s := by
  funext y
  simp only [Dat.HtY, Dat.Ht, hA.smul s hs c hc, mul_comm (D.hf s _), ← mul_assoc, ← Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun v _ => ?_
  have := (map_ne_zero (D.σ v)).2 hc
  simp [mul_assoc, ← mul_add, mul_pow]
  field_simp

private theorem height_product_bound (s s') (hd : s 0 * s' 1 - s 1 * s' 0 ≠ 0) (y) :
    D.HtY s y * D.HtY s' y ≤ 1 := by
  simp only [Dat.HtY, Dat.Ht]
  rw [mul_mul_mul_comm]
  refine (mul_le_mul_of_nonneg_left (hA.prod s s' hd _) (by
    positivity)).trans ?_
  rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_le_one₀ (fun v _ => by positivity) fun v _ => ?_
  rw [map_sub, map_mul, map_mul]
  exact height_product_le_one _ _ _ _ _

private theorem truncated_region_smul (T) (δ : PG F) (y) (h : y ∈ D.abelian₂ T) : δ • y ∈ D.abelian₂ T := by
  obtain ⟨d, rfl⟩ := mk_surjective δ
  exact fun s hs => (height_smul hA s hs d y).trans_le (h _ (vecMul_ne_zero hs d))

private theorem truncated_class_region_smul (T γ δ y) (h : y ∈ D.LamF T γ) :
    δ • y ∈ D.LamF T (δ * γ * δ⁻¹) := by
  obtain ⟨d, rfl⟩ := mk_surjective δ
  obtain ⟨g, rfl⟩ := mk_surjective γ
  exact fun s hs hf => (height_smul hA s hs d y).trans_le (h _ (vecMul_ne_zero hs d) ((fix_mk_iff_eigenvector
    _ g).2 ((fix_conj_iff s g d).1 hf)))
end

theorem heights_on_quotient_proof : B1a → E0d := by
  intro _ F I Gf _ _ _ D hA
  have := hA.cF
  have := hA.cO
  have hm (s : Fin 2 → F) : Measurable (D.HtY s) := measurable_from_prod_countable_right fun ω => by
    simp [Dat.HtY, Dat.Ht]
    fun_prop
  have HP (s) (hs : s ≠ 0) (y) : 0 < D.HtY s y := _root_.mul_pos (Finset.prod_pos fun v _ => by
      have := UpperHalfPlane.linear_ne_zero_of_im (cd := fun i => D.σ v (s i)) (y.2 v).2 fun h => hs (funext fun i => by simpa using congrFun h i)
      have := (y.2 v).2
      positivity) (hA.pos s hs _)
  refine ⟨height_mk hA, height_smul hA, height_smul_scalar hA, HP, height_product_bound hA, hm,
    fun T => ⟨measurableSet_setOfPred.2 (by
      fun_prop), fun δ y => ⟨fun h => by simpa using truncated_region_smul hA T δ⁻¹ _ h, truncated_region_smul hA T δ y⟩⟩,
    fun T γ => ⟨measurableSet_setOfPred.2 (by
      fun_prop), fun δ y => ⟨fun h => by simpa [mul_assoc] using truncated_class_region_smul hA T _ δ⁻¹ _ h, truncated_class_region_smul hA T γ δ y⟩⟩,
    fun y => ?_, fun s hs => ?_, fix_conj_iff⟩
  · refine ⟨max (D.HtY ![0, 1] y) (1 / D.HtY ![0, 1] y), fun T hT s hs => ?_⟩
    have h01 : ![(0 : F), 1] ≠ 0 := by
      simp
    by_cases h0 : s 0 = 0
    · rw [show s = s 1 • ![0, 1] by
        ext i
        fin_cases i
        all_goals simp [h0], height_smul_scalar hA _ h01 _ fun h => hs (by
        ext i
        fin_cases i
        all_goals simp_all)]
      simp_all
    · have := height_product_bound hA ![0, 1] s (by
      simp_all) y
      exact ((le_div_iff₀ (HP _ h01 y)).2 (by
        linarith)).trans ((le_max_right _ _).trans hT)
  · obtain ⟨i, hi⟩ := ne_iff.1 hs
    fin_cases i
    · exact ⟨.mkOfDetNeZero !![0, 1; s 0, s 1] (by
      simp_all), by simp [← List.ofFn_inj]⟩
    · exact ⟨.mkOfDetNeZero !![1, 0; s 0, s 1] (by
      simp_all), by simp [← List.ofFn_inj]⟩

private theorem e6_of_linear_trace_identity : E3 → E4 → faceMap_zero_comp_eq_one → E5 → LinTr → E6 := by
  intro hE3 hE4 hE4b hE5 hLin F I Gf ι _ _ _ _ D k a ⟨ax, four, compat, _, _⟩ hfd h b hb
  have hM (f) (h : f ∈ D.M k) : D.IsForm k f := span_induction (fun _ => id) ⟨fun _ => ⟨continuous_const, fun
    _ _ => by
    unfold Hol1 ext1
    simp⟩, by simp, by simp, ⟨0, by simp⟩⟩
    (fun f g _ _ hf hg => ⟨fun x => ⟨(hf.hol x).1.add (hg.hol x).1, fun z v =>
      ((hf.hol x).2 z v |>.add ((hg.hol x).2 z v)).congr fun t _ => by simp_all [ext1]⟩,
      by simp [hf.aut, hg.aut, mul_add], by simp [hf.lev, hg.lev, mul_add],
      let ⟨C₁, h₁⟩ := hf.bdd
      let ⟨C₂, h₂⟩ := hg.bdd
      ⟨C₁ + C₂, fun z x => by
        simp
        nlinarith [norm_add_le (f (z, x)) (g (z, x)), h₁ z x, h₂ z x, (by
          unfold nrm
          positivity : 0 ≤ nrm k z)]⟩⟩)
    (fun c f _ hf => ⟨fun x => ⟨continuous_const.mul (hf.hol x).1, fun z v =>
      ((hf.hol x).2 z v |>.const_mul c).congr fun t _ => by simp_all [ext1]⟩,
      by simp [hf.aut, mul_left_comm], by simp [hf.lev, mul_left_comm],
      let ⟨C, h⟩ := hf.bdd
      ⟨‖c‖ * C, fun z x => by simpa [mul_assoc] using mul_le_mul_of_nonneg_left (h z x) (norm_nonneg c)⟩⟩) h
  have hE4b' := hE4b F I Gf D ax k four compat
  have hE5' := hE5 F I Gf D ax k four compat b hb
  have hbm := hb.meas.real_toNNReal
  set ν := D.μY.withDensity fun y => (b y).toNNReal with hν
  have : IsFiniteMeasure ν := isFiniteMeasure_withDensity (hE3 F I Gf D ax b hb).ne
  have hint (g : D.Y → ℂ) : ∫ y, g y ∂ν = ∫ y, b y • g y ∂D.μY := by
    simp [hν, integral_withDensity_eq_integral_smul hbm, NNReal.smul_def, hb.nonneg]
  have := ax.cO
  obtain ⟨hmeas, ⟨C, hC⟩, htr⟩ := hLin (X I × Gf) D.Y ν (D.M k) ((Dat.Op a).restrict h) (fun y => ⟨D.Kern k y,
    subset_span (hE4 F I Gf D ax k four compat y)⟩)
    (fun y => (y.2, D.rep y.1)) (fun y => nrm k y.2) (by
      unfold nrm
      fun_prop)
    (fun y => Finset.prod_pos fun v _ => rpow_pos_of_pos (abs_pos.mpr (y.2 v).2) _) (by
      simp_all)
    (fun f => measurable_from_prod_countable_right fun ω => ((hM _ f.2).hol (D.rep ω)).1.measurable) (by
      simp_all)
    (fun f => (hM _ f.2).bdd.imp fun C hC y => hC _ _) (by
      simp_all)
  have hval (y) : Dat.Op a (D.Kern k y) (y.2, D.rep y.1) = ∑' γ, D.kk k a γ y := by
    simp [Dat.Op, Dat.Kern, Dat.kk, Dat.kt, Dat.Te, ← Summable.tsum_finsetSum fun i _ => ((hE4b' (y.2, D.rep
      y.1 * a i)).1 y).of_norm]
    simp [Finset.sum_mul, mul_assoc]
  refine ⟨((integrable_withDensity_iff_integrable_smul hbm).1 ((integrable_const C).mono' hmeas.aestronglyMeasurable (of_forall hC))).congr (of_forall fun y => ?_), by simp_all⟩
  simp [NNReal.smul_def, hb.nonneg, hval]

/-! ## Hyperbolic kernel estimates -/

private def tail_bound (y : ℝ) : ℝ := (1 + y ^ (-(1 / 2 : ℝ))) / (1 + y) ^ 2

private theorem lintegral_halfPlane_comap_le (f : ℂ → ℝ≥0∞) :
    ∫⁻ z : {z : ℂ // z.im ≠ 0}, f z.1 ∂(Measure.comap Subtype.val volume) ≤ ∫⁻ t, f t := by
  calc ∫⁻ z : {z : ℂ // z.im ≠ 0}, f z.1 ∂(Measure.comap Subtype.val volume)
      = ∫⁻ t in {z : ℂ | z.im ≠ 0}, f t := lintegral_subtype_comap ((isOpen_ne_fun continuous_im
        continuous_const).measurableSet) f
    _ ≤ ∫⁻ t, f t := setLIntegral_le_lintegral _ _

section
variable {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf)
private theorem smulX_eq_act_out (γ : PG F) (w : D.Xs) : γ • w = D.act γ.out w := by
  conv_lhs => rw [← out_eq' γ]
  rfl
end

private theorem trace_archimedean {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf) (v : I) (g : GL (Fin
  2) F) :
    (D.r v g).val.trace = D.σ v g.val.trace := by
  rw [trace_fin_two, trace_fin_two, map_add]
  rfl

private theorem det_archimedean {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf) (v : I) (g : GL (Fin 2)
  F) :
    (D.r v g).val.det = D.σ v g.val.det := by
  rw [det_fin_two, det_fin_two, map_sub, map_mul, map_mul]
  rfl

private theorem halfPlane_measurableEmbedding : MeasurableEmbedding halfPlane_val :=
  halfPlane_isOpenEmbedding.measurableEmbedding

private theorem measurable_halfPlane_density : Measurable (fun z : P => halfPlane_density (halfPlane_val z))
  :=
  ENNReal.measurable_ofReal.comp (measurable_const.div ((measurable_im.comp
    halfPlane_measurableEmbedding.measurable).pow_const 2))

private theorem integrable_tail_bound : IntegrableOn tail_bound (Ioi 0) := by
  refine (integrableOn_Ioi_comp_rpow_iff' tail_bound two_ne_zero).1 (((integrable_inv_one_add_sq.const_mul
    2).integrableOn).mono' (by
    unfold tail_bound
    fun_prop) ((ae_restrict_iff' measurableSet_Ioi).2 (of_forall fun x (hx : 0 < x) => ?_)))
  unfold tail_bound
  rw [← rpow_mul hx.le]
  norm_num [Real.rpow_neg_one, abs_of_pos hx]
  rw [abs_of_pos (by
    positivity)]
  field_simp
  nlinarith

private theorem norm_sub_conj_sq (z w : ℂ) : ‖z - conj w‖ ^ 2 = (z.re - w.re) ^ 2 + (z.im + w.im) ^ 2 := by
  simp [Complex.sq_norm, normSq_apply]
  ring

private def tail_majorant (w : P) : ℝ≥0∞ := ENNReal.ofReal (kap iP w ^ 2 * (1 + |w.1.im| ^ (-(1 / 2 : ℝ))))

private theorem lintegral_tail_majorant_lt_top : ∫⁻ w, tail_majorant w < ∞ := by
  refine ((lintegral_withDensity_le_lintegral_mul _ measurable_halfPlane_density _).trans ((lintegral_mono fun
    w => ?_).trans (lintegral_halfPlane_comap_le _))).trans_lt
    (volume_preserving_equiv_real_prod.integrable_comp_of_integrable (integrable_inv_one_add_sq.mul_prod
    (IntegrableOn.integrable_indicator (integrable_tail_bound.const_mul 16)
    measurableSet_Ioi))).lintegral_lt_top
  rcases lt_or_gt_of_ne w.2 with h | h
  · simp [tail_majorant, kap, iP, lt_asymm h]
  · simp [tail_majorant, kap, iP, h, halfPlane_density, halfPlane_val, norm_sub_conj_sq, tail_bound,
    abs_of_pos h]
    rw [← ofReal_inv_of_pos (by
      positivity), ← ofReal_mul (by
        positivity)]
    apply ofReal_le_ofReal
    field_simp
    nlinarith [mul_pos h h]

theorem hyperbolic_ball_volume_proof : B1a → B1b → B1c → UpperHalfPlaneMeasureCoordinates → B6 := by
  intro h1a _ h1c _ k hk
  refine ⟨(∫⁻ w, tail_majorant w).toNNReal, fun z => ?_⟩
  rw [ENNReal.coe_toNNReal lintegral_tail_majorant_lt_top.ne]
  obtain ⟨g, hg0, hg1, rfl⟩ := h1c.2.2.2.2.2 z
  constructor <;>
    refine ((h1a.2.2 g).2.lintegral_comp_emb (halfPlane_action_measurableEmbedding h1a g) _).symm.trans_le
      (lintegral_mono fun w => ofReal_le_ofReal ?_) <;>
    rw [automorphy_factor_kernel_algebra_proof.2.2.2.1] <;>
    obtain ⟨h0, h1, -⟩ := h1c.1 iP w <;>
    have := (rpow_le_rpow_of_exponent_ge' h0 h1 zero_le_two (show (2 : ℝ) ≤ k / 2 by
      linarith [show (4 : ℝ) ≤ k by simp_all])).trans_eq (rpow_two _) <;>
    have : 0 ≤ |w.1.im| ^ (-(1 / 2 : ℝ)) := by positivity
  · nlinarith
  · rw [show |(g • iP).1.im| / |(g • w).1.im| = |w.1.im|⁻¹ by
      rw [coe_smul, coe_smul, im_div, im_div]
      simp [den, hg0, hg1, g.det_ne_zero, iP, div_mul_cancel_left₀],
      Real.inv_rpow (abs_nonneg _), ← Real.rpow_neg (abs_nonneg _)]
    nlinarith

private theorem kap_nonneg (z w : P) : 0 ≤ kap z w := by
  unfold kap
  bound

private theorem kap_eq_abs_formula (z w : P) : kap z w = 2 * (z.1.im * w.1.im + |z.1.im * w.1.im|) / ((z.1.re
  - w.1.re) ^ 2 + z.1.im ^ 2 + w.1.im ^ 2 + 2 * |z.1.im * w.1.im|) := by
  simp only [kap, norm_sub_conj_sq]
  split_ifs with h
  · rw [abs_of_pos h]
    ring
  grind

theorem hyperbolic_kappa_properties_proof : B1c := by
  refine ⟨fun z w => ⟨kap_nonneg z w, ?_, ?_⟩, fun z => ?_, ?_, ?_, ?_, fun z => ?_⟩
  · rw [kap_eq_abs_formula, div_le_one (by
      have := z.2
      positivity)]
    nlinarith [sq_nonneg (z.1.im - w.1.im)]
  · simp [kap_eq_abs_formula]
    ring_nf
  · rw [kap_eq_abs_formula, abs_mul_self]
    grind
  · rintro ⟨⟨a, b⟩, -⟩ ⟨⟨c, d⟩, -⟩ ⟨⟨e, f⟩, -⟩
    simp only [kap, norm_sub_conj_sq]
    split_ifs with h1 h2 h3
    · have key : d ^ 2 * ((a - e) ^ 2 + (b + f) ^ 2) ≤
          ((a - c) ^ 2 + (b + d) ^ 2) * ((c - e) ^ 2 + (d + f) ^ 2) := by
        nlinarith [sq_nonneg ((a - c) * (c - e) - d ^ 2), sq_nonneg f, sq_nonneg b]
      rw [div_mul_div_comm, mul_div_assoc',
        div_le_div_iff₀ (mul_pos (by nlinarith) (by nlinarith)) (by nlinarith)]
      nlinarith
    · nlinarith [sq_nonneg d]
    all_goals simp
    all_goals exact div_nonneg (by linarith) (by positivity)
  · rintro ⟨⟨a, b⟩, -⟩ ⟨⟨c, d⟩, -⟩
    simp [kap, norm_sub_conj_sq]
    split_ifs with h
    · rw [div_mul_eq_mul_div, div_le_iff₀ (by nlinarith [sq_nonneg (b - d)])]
      cases abs_cases b <;> cases abs_cases d <;> nlinarith [sq_nonneg (a - c), sq_nonneg b]
    simp
  · simp_rw [kap_eq_abs_formula]
    exact Continuous.div (by fun_prop) (by fun_prop) fun p => by
      have := p.1.2
      positivity
  · refine ⟨GeneralLinearGroup.mkOfDetNeZero !![z.1.im, z.1.re; 0, 1] (by simp [z.2]),
      rfl, rfl, Subtype.ext ?_⟩
    rw [coe_smul]
    simp [num, den, iP, Complex.ext_iff]

theorem imaginary_part_bound_proof :
    B1b → B1c → E0d → Mult → F4 := by
  intro _ hC hE _ F I Gf _ _ _ D hD a
  have := hD.two
  obtain ⟨v0⟩ : Nonempty I := inferInstance
  obtain ⟨c0, hc0, hmink⟩ := hD.mink
  obtain ⟨S0, C, c, hc, hnorm⟩ := hD.normal c0 hc0
  obtain ⟨Cm, hCm⟩ := hD.mul a⁻¹
  have he : ![(0:F), 1] ≠ 0 := by
    simp
  have hrep (ω : D.Om) : QuotientGroup.mk (D.rep ω) = ω := Quotient.out_eq ω
  have hk (γ : PG F) (z w : D.Xs) v : kap ((γ • z) v) ((γ • w) v) = kap (z v) (w v) := by
    rw [smulX_eq_act_out, smulX_eq_act_out]
    apply automorphy_factor_kernel_algebra_proof.2.2.2.1
  let W : Set D.Om := QuotientGroup.mk '' S0
  let T (ω : D.Om) : Set D.Om := {ω3 | ∃ h ∈ D.H, ω3 = QuotientGroup.mk (D.rep ω * h * a)}
  let Good (q : (D.Cj × D.Om) × D.Xs) :=
    D.el q.1.1 • q.2 = q.2 ∧ Sg C c q.2 ∧ q.1.2 ∈ W ∧ D.Ht ![0, 1] q.2 (D.rep q.1.2) ^ 2 ≤ Cm ∧ D.el q.1.1 •
      q.1.2 ∈ T q.1.2
  let key (q : (D.Cj × D.Om) × D.Xs) :=
    (q.1.2, D.el q.1.1 • q.1.2, fun v => 0 < (q.2 v).1.im)
  refine ⟨Prod.fst '' {q | Good q}, ?_, ?_⟩
  · have hW : W.Finite := S0.finite_toSet.image _
    have hT := hW.biUnion (t := T) fun ω _ =>
      ((hD.dbl a).image (D.rep ω • ·)).subset fun _ ⟨h, hh, e⟩ => ⟨_, ⟨h, hh, rfl⟩, by
        rw [e, mul_assoc]
        rfl⟩
    refine ((hW.prod (hT.prod finite_univ)).biUnion
      (t := fun k => Prod.fst '' {q | Good q ∧ key q = k}) fun k _ => ?_).subset
        fun _ ⟨q, hq, e⟩ => mem_biUnion (x := key q)
          ⟨hq.2.2.1, mem_biUnion hq.2.2.1 hq.2.2.2.2, trivial⟩ ⟨q, ⟨hq, rfl⟩, e⟩
    rcases eq_empty_or_nonempty {q | Good q ∧ key q = k} with h0 | ⟨q0, hq0⟩
    · simp_all
    set U := C * max 1 (√Cm / D.hf ![0, 1] (D.rep q0.1.2))
    have hbox : ∀ q ∈ {q | Good q ∧ key q = k}, q.1.2 = q0.1.2 ∧ D.el q.1.1 • q.1.2 = D.el q0.1.1 • q0.1.2 ∧
        ∀ v, |(q.2 v).1.im| ≤ U ∧
          0 < (q0.2 v).1.im * (q.2 v).1.im := by
      rintro q ⟨⟨-, hsg, -, hht, -⟩, hk⟩
      have hkk := hk.trans hq0.2.symm
      simp only [key, Prod.mk.injEq] at hkk
      obtain ⟨e1, e2, e3⟩ := hkk
      refine ⟨e1, e2, fun v => ⟨?_, ?_⟩⟩
      · obtain ⟨u0, hu0⟩ := Finite.exists_min fun u => |(q.2 u).1.im|
        exact ((hsg v).2.2 u0).trans (mul_le_mul_of_nonneg_left (le_max_iff.2 (or_iff_not_imp_left.2 fun hle
          => (le_self_pow₀ (le_of_not_ge hle) Fintype.card_ne_zero).trans
            (((Finset.prod_const _).symm.trans_le (Finset.prod_le_prod₀ (fun _ _ => abs_nonneg _) fun u _ =>
              hu0 u)).trans ((le_div_iff₀ (hD.pos _ he _)).2 (Real.le_sqrt_of_sq_le (by
              simpa [Dat.Ht, e1] using hht)))))) (le_trans (abs_nonneg _) (hsg v).1))
      · have := congrFun e3 v
        rcases lt_or_gt_of_ne (q0.2 v).2 with a | a <;> rcases lt_or_gt_of_ne (q.2 v).2 with b | b <;>
          simp_all [mul_pos_of_neg_of_neg]
    have hδ0 : 0 < c ^ 2 / (4 * (1 + C ^ 2 + U ^ 2)) := by
      positivity
    obtain ⟨C', hC'⟩ := hD.count q0.1.2 ((c ^ 2 / (4 * (1 + C ^ 2 + U ^ 2))) ^ 2 / 4) C c (by
      positivity) hc
    refine ((hC' q0.2 hq0.1.2.1).1.image fun g => (D.el q0.1.1 * g, q0.1.2)).subset ?_
    rintro _ ⟨q, hq, rfl⟩
    obtain ⟨e1, e2, hv⟩ := hbox q hq
    refine ⟨(D.el q0.1.1)⁻¹ * D.el q.1.1, ⟨?_, fun v => ?_⟩, Prod.ext (mul_inv_cancel_left _ _) e1.symm⟩
    · rw [mul_smul, ← e1, e2, inv_smul_smul, e1]
    · have hk1 : c ^ 2 / (4 * (1 + C ^ 2 + U ^ 2)) ≤ kap (q0.2 v) (q.2 v) := by
        obtain ⟨h1, h2, -⟩ := hq0.1.2.1 v
        obtain ⟨h4, h5, -⟩ := hq.1.2.1 v
        have h3 := ((hbox q0 hq0).2.2 v).1
        obtain ⟨h6, hzw⟩ := hv v
        rw [kap, ite_eq_left hzw, norm_sub_conj_sq]
        generalize (q0.2 v).1.re = a, (q0.2 v).1.im = b, (q.2 v).1.re = d, (q.2 v).1.im = e at *
        exact div_le_div₀ (by
          positivity) (by
            nlinarith [abs_mul b e, abs_of_pos hzw]) (by
              nlinarith [sq_nonneg (b - e)]) (by
                nlinarith [abs_le.1 h1, abs_le.1 h4, abs_le.1 h3, abs_le.1 h6])
      have hk2 := hk1
      rw [← (hC.1 _ _).2.2, ← hk (D.el q.1.1), hq.1.1] at hk2
      rw [← hk (D.el q0.1.1), hq0.1.1, ← mul_smul, mul_inv_cancel_left]
      nlinarith [hC.2.2.1 (q0.2 v) (q.2 v) ((D.el q.1.1 • q0.2) v)]
  · intro γ ω hell hs
    obtain ⟨e1, e2, -, e4, e5, -, -, -, -, e10, -⟩ := hE F I Gf D hD
    choose z0 hz0 using fun v => exists_fixed_point (D.r v γ.out) (by
      rw [trace_archimedean, det_archimedean]
      aesop)
    let z : D.Xs := z0
    obtain ⟨s, hs0, hsz⟩ := hmink z (D.rep ω)
    obtain ⟨g, hg⟩ := e10 s hs0
    set gg : PG F := ↑g
    obtain ⟨b, -, ⟨x', hx', h, hh, hbx⟩, hsg⟩ := hnorm (gg • z) (D.rep (gg • ω)) ((hg ▸ hsz).trans (e2 _ he g
      (ω, z)).ge)
    set δG : GL (Fin 2) F := b * g
    set δ : PG F := (δG : PG F)
    have hδz : δ • z = D.act b (gg • z) := mul_smul (b : PG F) gg z
    have hδω : δ • ω = QuotientGroup.mk x' := (mul_smul (b : PG F) gg ω).trans (by
      rw [← hrep (gg • ω), Dat.mk_smulO, hbx, QuotientGroup.mk_mul_of_mem _ hh])
    have hfixδ : (δ * γ * δ⁻¹) • (δ • z) = δ • z := by
      rw [mul_smul, mul_smul, inv_smul_smul, (smulX_eq_act_out D γ z).trans (funext hz0)]
    have h10' : (δ * γ * δ⁻¹).out 1 0 ≠ 0 := fun h0 => by
      obtain ⟨c', hc'⟩ := (fix_conj_iff ![0, 1] γ.out δG).1 (show Fix ![0, 1] (δ * (γ.out : PG F) * δ⁻¹) by exact ⟨_, funext fun i => by fin_cases i <;> simp [vecMul, dotProduct, h0]; rfl⟩)
      have h1 := congrArg (D.σ v0) (exists_vecMul_eq_zero_iff.1 ⟨_, vecMul_ne_zero he δG, by rw [vecMul_sub, hc', vecMul_smul, vecMul_one, sub_self]⟩ : (γ.out.val - c' • 1).det = 0)
      have h2 := hell v0
      simp [det_fin_two, trace_fin_two] at h1 h2
      nlinarith [sq_nonneg (2 * D.σ v0 c' - D.σ v0 (γ.out 0 0) - D.σ v0 (γ.out 1 1))]
    have hT : (δ * γ * δ⁻¹) • (δ • ω) ∈ T (δ • ω) := by
      have hω' : δ • ω = QuotientGroup.mk (D.j δG * D.rep ω) := by
        rw [← Dat.mk_smulO, hrep]
      refine ⟨_, QuotientGroup.eq.1 ((hrep _).trans hω'), ?_⟩
      rw [mul_smul, mul_smul, inv_smul_smul, hs, Dat.mk_smulO, mul_inv_cancel_left, mul_assoc]
    exact ⟨δ, (δ • ((γ, ω) : D.Cj × D.Om), δ • z), ⟨hfixδ, hδz ▸ hsg, ⟨x', hx', hδω.symm⟩, (by
      set γ' := δ * γ * δ⁻¹
      set ω' := δ • ω
      set z' := δ • z
      have hprod := e5 (![0, 1] ᵥ* γ'.out.val) ![0, 1] (by
        simpa [vecMul, dotProduct] using h10') (ω', z')
      rw [← e2 _ he, out_eq', smul_mk, hfixδ] at hprod
      have hp1 := e4 _ he (ω', z')
      have hp2 := e4 _ he (γ' • ω', z')
      obtain ⟨h', hh', hω'⟩ := hT
      rw [hω', e1 _ he] at hprod hp2
      simp [Dat.HtY, Dat.Ht] at hprod hp1 hp2 ⊢
      nlinarith [mul_le_mul_of_nonneg_left (by
        simpa [hD.lev _ he _ h' hh'] using hCm _ he (D.rep ω' * h' * a)) (by
          positivity : 0 ≤ ∏ v, |(z' v).1.im|)]), hT⟩, rfl⟩

/-! ## Radial kernels and convergence -/

private def radial_kernel (k : ℕ) (g : GL (Fin 2) ℝ) (z : P) : ℂ := q1 k z (g • z) * j1 k g z

private def positive_radial_kernel (k : ℕ) (g : GL (Fin 2) ℝ) (z : P) : ℂ := if 0 < z.1.im then radial_kernel
  k g z else 0

private def rotation_eigenvalue (a b : ℝ) : ℂ := ((a : ℂ) - b * Complex.I) / (Real.sqrt (a ^ 2 + b ^ 2) : ℂ)

private theorem cayley_rotation_identity {α β u ub s : ℂ} (hu : 1 - u ≠ 0) (h1 : β - α * u ≠ 0) (h2 : α - β *
  ub ≠ 0)
    (hs : s ≠ 0) (hs2 : s ^ 2 = α * β) :
    (I * (β + α * u) / (β - α * u) - -I * (α + β * ub) / (α - β * ub)) /
      (I * (1 + u) / (1 - u) - -I * (α + β * ub) / (α - β * ub)) * ((β - α * u) / (1 - u) * s⁻¹) =
      β / s * (1 - u * ub) / (1 - (β / s) ^ 2 * (u * ub)) := by
  have hα : α ≠ 0 := by
    grind
  rw [div_sub_div _ _ hu h2, show I * (1 + u) * (α - β * ub) - (1 - u) * (-I * (α + β * ub)) = 2 * I * (α - β * u * ub) by ring, div_pow, hs2, show 1 - β ^ 2 / (α * β) * (u * ub) = (α - β * u * ub) / α by field_simp]
  by_cases hA : α - β * u * ub = 0
  · simp_all
  field_simp
  ring

private theorem radial_kernel_cayley (k : ℕ) (m : GL (Fin 2) ℝ) (a b : ℝ) (h00 : m 0 0 = a) (h01 : m 0 1 = b)
    (h10 : m 1 0 = -b) (h11 : m 1 1 = a) (hb : b ≠ 0) (r θ : ℝ) (hr0 : 0 < r) (hr1 : r < 1) :
    ext1 (positive_radial_kernel k m) (Complex.I * (1 + circleMap 0 r θ) / (1 - circleMap 0 r θ)) =
      ((k : ℂ) - 1) / (4 * Real.pi) * (rotation_eigenvalue a b * (1 - (r : ℂ) ^ 2) / (1 - rotation_eigenvalue
        a b ^ 2 * (r : ℂ) ^ 2)) ^ k := by
  obtain ⟨hu1, hz⟩ := cayley_disk_properties (circleMap 0 r θ) (by
    simp [abs_of_pos hr0, hr1])
  set u := circleMap 0 r θ
  have huu : u * conj u = r ^ 2 := by
    simp [u, mul_conj, normSq_eq_norm_sq]
  obtain ⟨zP, hzP⟩ : ∃ zP : P, zP.1 = I * (1 + u) / (1 - u) := ⟨⟨_, hz.ne'⟩, rfl⟩
  rw [← hzP] at hz
  have hdet : m.val.det = a ^ 2 + b ^ 2 := by
    rw [det_eq, h00, h01, h10, h11]
    ring
  have hpos : 0 < a ^ 2 + b ^ 2 := by
    positivity
  have hD : den m zP.1 = ((a:ℂ) - b * I - (a + b * I) * u) / (1 - u) := by
    rw [eq_div_iff hu1, den, h10, h11, hzP]
    push_cast
    grind
  have h1 := (div_ne_zero_iff.1 (hD ▸ den_ne m hz.ne')).1
  have hW : (m • zP).1 = I * ((a:ℂ) - b * I + (a + b * I) * u) / ((a:ℂ) - b * I - (a + b * I) * u) := by
    rw [coe_smul, hD, num, h00, h01, hzP]
    field_simp
    grind [I_sq]
  have h2 := (map_ne_zero (starRingEnd ℂ)).2 h1
  rw [← hzP, ext1_coe, positive_radial_kernel, ite_eq_left hz, radial_kernel, q1, ite_eq_left (mul_pos hz ?_),
    j1, hdet, abs_of_pos hpos, rpow_div_two_eq_sqrt _ hpos.le, rpow_neg (sqrt_nonneg _), Real.rpow_natCast]
  · push_cast
    rw [mul_assoc, ← inv_pow, ← mul_pow, ← mul_pow, hW, hD, hzP, rotation_eigenvalue, ← huu]
    simp only [map_div₀, map_mul, map_add, map_sub, conj_I, conj_ofReal, mul_neg, sub_neg_eq_add, ←
      sub_eq_add_neg] at h2 ⊢
    rw [cayley_rotation_identity hu1 h1 h2 (ofReal_ne_zero.2 (sqrt_ne_zero'.2 hpos)) (by
      rw [← Complex.ofReal_pow, sq_sqrt hpos.le]
      push_cast
      linear_combination (b : ℂ) ^ 2 * I_sq)]
  rw [im_smul, hdet]
  simp_all

section
variable {G Y : Type} [Group G] [MeasurableSpace Y] [MulAction G Y] {μ : Measure Y}
private lemma eNorm_cut_smul {b : Y → ℝ} (hb : IsCut G b) (y : Y) (x : ℂ) :
    ‖b y • x‖ₑ = ENNReal.ofReal (b y) * ‖x‖ₑ := by
  rw [eNorm_smul, eNorm_eq_ofReal (hb.nonneg y)]
end

section
variable {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf)
private theorem weight_inv_mul (h : D.H) (u : Gf) : D.ee ((h : Gf)⁻¹ * u) * (D.χ h : ℂ) = D.ee u := by
  unfold Dat.ee
  by_cases hu : u ∈ D.H
  · have hu' := D.H.mul_mem (D.H.inv_mem h.2) hu
    rw [dite_eq_left hu', dite_eq_left hu, mul_comm, ← Units.val_mul, ← map_mul]
    bound

  · have hu' : (h : Gf)⁻¹ * u ∉ D.H := fun hh => hu (by
    simpa using D.H.mul_mem h.2 hh)
    simp_all
end

section
variable {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf)
private theorem smul_quotient_eq_out (γ : PG F) (ω : D.Om) : γ • ω = (((D.j γ.out * D.rep ω : Gf)) : Gf ⧸ D.H)
  := by
  have h2 : ((D.rep ω : Gf) : Gf ⧸ D.H) = ω := out_eq' _
  conv_lhs => rw [← out_eq' γ, ← h2]
  rfl
end

private theorem integral_product_log_eq_zero {I : Type} [Fintype I] [Nontrivial I] (φ : I → ℝ → ℂ)
    (h : ∀ v, Integrable (φ v) ∧ Integrable (fun x => (Real.log (1 + x ^ 2) : ℂ) * φ v x) ∧ ∫ x, φ v x = 0)
    (R C : ℝ) :
    ∫ x : I → ℝ, (∏ v, φ v (x v)) * ((R * (C + ∑ v, Real.log (1 + x v ^ 2)) : ℝ) : ℂ) = 0 := by
  classical
  let ψ w v t := (if v = w then (C / card I + Real.log (1 + t ^ 2) : ℂ) else 1) * φ v t
  trans ∫ x : I → ℝ, R * ∑ w, ∏ v, ψ w v (x v)
  · congr 1
    funext x
    simp [ψ, Finset.prod_mul_distrib, ← Finset.sum_mul, Finset.sum_add_distrib, -ite_mul]
    field_simp
  rw [integral_const_mul, integral_finsetSum _ fun w _ => ?_, Finset.sum_eq_zero fun w _ => ?_, mul_zero]
  · obtain ⟨u, hu⟩ := exists_ne w
    rw [integral_fintype_prod_volume_eq_prod]
    exact Finset.prod_eq_zero (Finset.mem_univ u) (by
      aesop)
  refine Integrable.fintype_prod fun v => ?_
  unfold ψ
  split_ifs
  · simpa [add_mul, Pi.add_def] using ((h v).1.const_mul _).add (h v).2.1
  simp_all

private theorem inverse_series_summable : C3 := by
  intro G Y _ _ _ _ μ hμ b hb f hf hfi
  have hs y : HasSum (fun g : G => b (g⁻¹ • y)) 1 := (Equiv.inv G).hasSum_iff.mpr (hb.sum y)
  have hm g : Measurable fun y => b y • f (g • y) := hb.meas.smul (hf.comp (hμ g).measurable)
  have hm' g : Measurable fun y => b (g⁻¹ • y) • f y := (hb.meas.comp (hμ g⁻¹).measurable).smul hf
  have hl (g : G) : ∫⁻ y, ‖b (g⁻¹ • y) • f y‖ₑ ∂μ = ∫⁻ y, ‖b y • f (g • y)‖ₑ ∂μ := by
    rw [← (hμ g).lintegral_comp_emb (action_measurableEmbedding hμ g)]
    simp
  have hi (g : G) : ∫ y, b (g⁻¹ • y) • f y ∂μ = ∫ y, b y • f (g • y) ∂μ := by
    rw [← (hμ g).integral_comp (action_measurableEmbedding hμ g)]
    simp
  have hΨ : ∑' g : G, ∫⁻ y, ‖b (g⁻¹ • y) • f y‖ₑ ∂μ ≠ ⊤ := by
    rw [← lintegral_tsum fun g => (hm' g).eNorm.aemeasurable]
    simp_rw [eNorm_cut_smul hb, ENNReal.tsum_mul_right, ← ofReal_tsum_of_nonneg (fun _ => hb.nonneg _) (hs
      _).summable, (hs _).tsum_eq]
    simpa using hfi.2.ne
  have hΦ := tsum_congr hl ▸ hΨ
  simp_rw [← tsum_const_smul'']
  refine ⟨⟨.tsum fun g => (hm g).aestronglyMeasurable, (lintegral_mono fun y =>
    eNorm_tsum_le_tsum_eNorm).trans_lt ((lintegral_tsum fun g => (hm g).eNorm.aemeasurable).trans_lt
    hΦ.lt_top)⟩, ?_⟩
  rw [integral_tsum (fun g => (hm g).aestronglyMeasurable) hΦ, ← tsum_congr hi, ← integral_tsum (fun g => (hm'
    g).aestronglyMeasurable) hΨ]
  simp_rw [((hs _).smul_const _).tsum_eq, one_smul]

section
variable {F I Gf ι : Type} [Field F] [Group Gf] [Fintype I] [Fintype ι]

private theorem Kap_nonneg (k : I → ℕ) (z w : X I) : 0 ≤ Kap k z w :=
  Finset.prod_nonneg fun _ _ => rpow_nonneg (kap_nonneg _ _) _

private theorem row_zero_one_ne_zero : (![0, 1] : Fin 2 → F) ≠ 0 := fun h => by simp_all

private theorem fiber_kernel_bound {k : I → ℕ} {D : Dat F I Gf} {a : ι → Gf} {y : D.Y} {S : Set (PG F)} (H : D.Xs → ℝ) (K
  : ℝ) (B : ENNReal)
    (h0c : KernelTermsInvariantBounded) (hyp : D.Hyp k a) (hH : ∀ w, 0 ≤ H w)
    (hk : ∀ γ ∈ S, ∀ i, γ • y.1 = ((D.rep y.1 * a i : Gf) : Gf ⧸ D.H) → ‖D.kk k a γ y‖ ≤ K * H (γ • y.2))
    (hB : ∀ ω', ∑' γ : {γ : PG F // γ • y.1 = ω'}, ENNReal.ofReal (H (γ.1 • y.2)) ≤ B) :
    ∑' γ : S, ‖D.kk k a γ y‖ₑ ≤ card ι * (ENNReal.ofReal K * B) := by
  let g := fun γ : PG F => ENNReal.ofReal K * ENNReal.ofReal (H (γ • y.2))
  refine (tsum_le_tsum fun γ => ?_).trans ((tsum_comp_le_tsum_of_injective Subtype.val_injective _).trans
    ((tsum_subtype _ _).symm.trans_le ((tsum_iUnion_le g fun i => {γ : PG F | γ • y.1 = ((D.rep y.1 * a i :
    Gf) : Gf ⧸ D.H)}).trans ((Finset.sum_le_sum fun i _ => ENNReal.tsum_mul_left.trans_le (mul_le_mul_right
    (hB _) _)).trans_eq (by
    simp)))))
  by_cases h0 : D.Te a γ.1.out (D.rep y.1) = 0
  · simp [Dat.kk, Dat.kt, h0]
  obtain ⟨i, hi⟩ := (h0c F I Gf ι D k a hyp).2.2.2.2.1 γ _ h0
  rw [indicator_of_mem (mem_iUnion.2 ⟨i, hi⟩)]
  simp [g, ← ENNReal.ofReal_mul' (hH _), ← ofReal_norm]
  bound

theorem kernel_series_converges_proof : B1b → KernelTermsInvariantBounded → E0d → Pack → Mult → KapInt → E1 :=
  by
  intro _ hE0c hE hPack hMult hKI F I Gf ι _ _ _ _ D k a hyp c₀ hc₀
  obtain ⟨e1, e2, -, -, e5, -, -, -, -, e10, -⟩ := hE F I Gf D hyp.ax
  obtain ⟨-, h2c, -, ⟨CE, hCE⟩, -⟩ := hE0c F I Gf ι D k a hyp
  obtain ⟨Cp, hCp⟩ := hPack F I Gf D hyp.ax
  obtain ⟨CM, hCM⟩ := hMult F I Gf D hyp.ax (1 / 16) c₀ (by
    norm_num) hc₀
  obtain ⟨CK, A, hK⟩ := hKI I k hyp.four
  choose Cm hCm using fun i => hyp.ax.mul (a i)⁻¹
  obtain ⟨C', hC'⟩ := Finite.exists_le Cm
  have hC (y : D.Y) (hy : c₀ ≤ D.HtY ![0, 1] y) : ∑' γ : {γ : PG F | ¬ Fix ![0, 1] γ}, ‖D.kk k a γ y‖ₑ ≤
    ↑(card ι * ((|CE| * √C' * |CM| * (1 / c₀ + 1)).toNNReal * (Cp * A * CK))) := by
    obtain ⟨hfin, hcard⟩ := hCM y _ row_zero_one_ne_zero hy
    set t := D.HtY ![0, 1] y with ht
    have hHt := hc₀.trans_le hy
    refine (fiber_kernel_bound (fun w => Kap k y.2 w * ∏ v, (|(y.2 v).1.im| / |(w v).1.im|) ^ (1 / 2 : ℝ))
      (|CE| * √C' / t) (ENNReal.ofReal (|CM| * (1 + t)) * (Cp * A * CK)) hE0c hyp (fun w => mul_nonneg
      (Kap_nonneg ..) (by
      positivity)) (fun γ hγ i hi => ?_) fun ω' => ?_).trans ?_
    · have hq := hyp.ax.pos _ row_zero_one_ne_zero (D.rep y.1 * a i)
      simp [Dat.HtY, Dat.Ht] at ht
      have e4 : D.Ht ![0, 1] (γ • y.2) (D.rep y.1 * a i) * t ≤ 1 := by
        rw [← e1 _ row_zero_one_ne_zero, ← hi, ← out_eq' γ]
        exact (congrArg (· * t) (e2 _ row_zero_one_ne_zero _ y)).trans_le (e5 _ _ (by
          simp [vecMul, dotProduct]
          exact fun h => hγ ⟨γ.out 1 1, by ext j
                                           fin_cases j <;> simp [vecMul, dotProduct, h]⟩) y)
      simp [Dat.Ht] at e4
      have e5 := hCm i _ row_zero_one_ne_zero (D.rep y.1 * a i)
      simp at e5
      have hb : 1 ≤ √C' / t * ∏ v, (|(y.2 v).1.im| / |((γ • y.2) v).1.im|) ^ (1 / 2 : ℝ) := by
        rw [finsetProd_rpow _ _ (fun v _ => by positivity), Finset.prod_div_distrib, ← sqrt_eq_rpow, ← sqrt_sq hHt.le, ← sqrt_div' _ (by
          positivity), ← sqrt_mul' _ (by
            positivity), one_le_sqrt, div_mul_div_comm]
        refine (one_le_div (mul_pos (pow_pos hHt 2) (Finset.prod_pos fun v _ => abs_pos.2 (_ : P).2))).2 ?_
        nlinarith [mul_le_mul_of_nonneg_left (e5.trans (mul_le_mul_of_nonneg_right (hC' i) hq.le)) (by
          positivity : (0:ℝ) ≤ ∏ v, |(y.2 v).1.im|)]
      linear_combination hCE γ y + mul_le_mul_of_nonneg_right (le_abs_self CE) (Kap_nonneg k y.2 (γ • y.2)) +
        mul_le_mul_of_nonneg_left hb (mul_nonneg (abs_nonneg CE) (Kap_nonneg k y.2 (γ • y.2)))
    · refine (hCp y ω' _ A ?_ (fun w w' hn => ?_) hfin).trans ((mul_le_mul' (mul_le_mul_right
      ((ENNReal.ofReal_natCast _).symm.trans_le (ofReal_le_ofReal (hcard.trans ?_))) _) (hK
      y.2).2.2.1).trans_eq (by
      ring))
      · have := (hK y.2).1
        fun_prop
      · simpa using ofReal_le_ofReal ((hK y.2).2.2.2 w w' hn).2
      bound
    · rw [← mul_assoc (ENNReal.ofReal _), ← ENNReal.ofReal_mul (by
      positivity)]
      refine mul_le_mul_right (mul_le_mul_left (ENNReal.ofReal_le_ofReal ?_) _) _
      trans |CE| * √C' * |CM| * (1 / t + 1)
      · field_simp
        rfl
      gcongr
  exact ⟨_, fun y s hs hy => by
    obtain ⟨δ, hδ⟩ := e10 s hs
    have := (Equiv.tsum_eq ((MulAut.conj (δ : PG F)).toEquiv.subtypeEquiv (p := (¬ Fix s ·)) fun γ => ?_)
      _).trans_le (hC _ (by
      rwa [e2 _ row_zero_one_ne_zero, hδ]))
    · exact (tsum_congr fun γ => by simp [h2c]).trans_le this
    have := fix_conj_iff ![0, 1] γ.out δ
    rw [out_eq', hδ] at this
    exact not_congr this.symm⟩

theorem kernel_sum_bounded_proof : KernelTermsInvariantBounded → E0d → KapSum → E2 := by
  intro h0c hE hks F I Gf ι _ _ _ _ D k a hyp
  obtain ⟨-, -, -, ⟨C₀, hC₀⟩, -⟩ := h0c F I Gf ι D k a hyp
  obtain ⟨c₀, hc₀, hmink⟩ := hyp.ax.mink
  obtain ⟨C, hC⟩ := hks F I Gf D hyp.ax k hyp.four c₀ hc₀
  have key (T : ℝ) (y) (hy : y ∈ D.abelian₂ T) : ∑' γ : PG F, ‖D.kk k a γ y‖ₑ ≤ ↑(card ι * (C₀.toNNReal * (max
    C 0 * (1 + T)).toNNReal)) := by
    obtain ⟨s, hs, hcs : c₀ ≤ D.HtY s y⟩ := hmink y.2 (D.rep y.1)
    rw [← tsum_univ]
    exact (fiber_kernel_bound _ _ _ h0c hyp (Kap_nonneg k y.2) (fun γ _ _ _ => hC₀ γ y) fun ω' => (hC y s hs
      hcs ω' y.2).trans (ofReal_le_ofReal (mul_le_mul (le_max_left C 0) (by
      bound) (by
        linarith) (le_max_right C 0)))).trans_eq rfl
  refine ⟨fun y => ?_, fun T => ⟨_, key T⟩⟩
  obtain ⟨T₀, hT₀⟩ := (hE F I Gf D hyp.ax).2.2.2.2.2.2.2.2.1 y
  exact tsum_eNorm_ne_top_iff_summable_norm.1 (ne_top_of_le_ne_top coe_ne_top (key T₀ y (hT₀ _ le_rfl)))
end

section
private theorem j1_scalar {k : ℕ} {z : P} (g : GL (Fin 2) ℝ) (hb : g 0 1 = 0) (hc : g 1 0 = 0) (h : g 0 0 = g 1 1) :
    j1 k g z = ((SignType.sign (g 0 0) : ℝ) : ℂ) ^ k := by
  have ha : g 0 0 ≠ 0 := fun h0 => g.det_ne_zero (by
    simp [det_eq, hc, h0])
  rw [j1, den, hc, ← h, det_eq, hb, hc, ← h]
  simp [← sq, neg_div]
  rw [Real.rpow_neg (sq_nonneg _), ← sq_abs, rpow_sq_natCast_div_two (abs_nonneg _)]
  nth_rw 1 [← sign_mul_abs (g 0 0)]
  push_cast [mul_pow]
  simp_all

private def kernel_constant {I : Type} [Fintype I] (k : I → ℕ) : ℝ := ∏ v, ((k v : ℝ) - 1) / (4 * Real.pi)

private theorem kernel_constant_nonneg {I : Type} [Fintype I] (k : I → ℕ) (hk : ∀ v, 1 ≤ k v) : 0 ≤
  kernel_constant k :=
  Finset.prod_nonneg fun v _ => div_nonneg (by
    simp_all) (by
      positivity)

private theorem nrm_pos {I : Type} [Fintype I] (k : I → ℕ) (z : X I) : 0 < nrm k z :=
  Finset.prod_pos fun v _ => rpow_pos_of_pos (abs_pos.2 (z v).2) _

private theorem Kap_symm {I : Type} [Fintype I] (hC : B1c) (k : I → ℕ) (z w : X I) : Kap k z w = Kap k w z :=
  by simp [Kap, (hC.1 _ _).2.2]

variable {F I Gf : Type} [Field F] [Group Gf] (D : Dat F I Gf)

private theorem weight_mul_left (h : D.H) (u : Gf) : D.ee (h * u) = D.χ h * D.ee u := by
  simpa [mul_comm, mul_inv_eq_iff_eq_mul₀] using weight_inv_mul D h⁻¹ u

private theorem weight_mul_right (u : Gf) (h : D.H) : D.ee (u * h) = D.ee u * D.χ h := by
  by_cases hu : u ∈ D.H <;> simp [Dat.ee, hu, D.H.mul_mem_cancel_right h.2]
  rw [← Units.val_mul, ← map_mul]
  rfl

private theorem norm_weight_le_one [Fintype I] (hx : D.Ax) (u : Gf) : ‖D.ee u‖ ≤ 1 := by
  unfold Dat.ee
  split_ifs <;> simp [hx.χn]

private theorem smulX_out (γ : PG F) (w : D.Xs) : (γ • w : D.Xs) = D.act γ.out w :=
  smulX_eq_act_out D γ w

private theorem act_center (c : GL (Fin 2) F) (hc : c ∈ Subgroup.center (GL (Fin 2) F)) (w : X I) : D.act c w
  = w := by
  show (c : PG F) • (show D.Xs from w) = w
  rw [(QuotientGroup.eq_one_iff c).2 hc, one_smul]

private theorem act_mul (g h : GL (Fin 2) F) (w : X I) : D.act (g * h) w = D.act g (D.act h w) :=
  mul_smul (g : PG F) (h : PG F) (show D.Xs from w)

private theorem J_mul [Fintype I] (hB : B1b) (k : I → ℕ) (g h : GL (Fin 2) F) (w : X I) :
    D.J k (g * h) w = D.J k g (D.act h w) * D.J k h w := by
  simp [Dat.J, ← Finset.prod_mul_distrib, hB.1]
  rfl

private theorem J_center [Fintype I] (k : I → ℕ) (hc : D.Compat k) (c : GL (Fin 2) F) (hcc : c ∈
  Subgroup.center (GL (Fin 2) F)) (w : X I) :
    D.J k c w = D.χ ⟨D.j c, D.cenH c hcc⟩ := by
  rw [hc c hcc]
  refine Finset.prod_congr rfl fun v _ => j1_scalar _ ?_ ?_ ?_ <;> simp [Dat.r, center_entries hcc]

private theorem norm_qq_mul_J [Fintype I] (hB : B1b) (k : I → ℕ) (hk : ∀ v, 1 ≤ k v) (g : GL (Fin 2) F) (z w :
  X I) :
    ‖qq k z (D.act g w) * D.J k g w‖ * nrm k z = kernel_constant k * Kap k z (D.act g w) * nrm k w := by
  simp only [qq, Dat.J, nrm, Kap, kernel_constant, Dat.act, norm_mul, norm_prod, ← Finset.prod_mul_distrib]
  grind [hB.2.2.2.2.2.1, hB.2.2.2.2.1]

private theorem weight_eq_zero_of_quotient_ne (γ : PG F) (ω : D.Om) (x : Gf) (h : ¬ γ • ω = ((x : Gf) : Gf ⧸
  D.H)) :
    D.ee ((D.rep ω)⁻¹ * (D.j γ.out)⁻¹ * x) = 0 :=
  dite_eq_right fun hm => h <| by
    rw [smul_quotient_eq_out]
    exact QuotientGroup.eq.2 (by
      simp_all)

theorem kernel_terms_invariant_bounded_proof :
    B1a → B1b → KernelTermsInvariantBounded := by
  intro hA hB F I Gf ι _ _ _ _ D k a hH
  have ee_inv (h : D.H) (u : Gf) : D.ee ((h : Gf)⁻¹ * u) = (D.χ h : ℂ)⁻¹ * D.ee u := by
    simpa using weight_mul_left D h⁻¹ u
  have kt_center (γ c : GL (Fin 2) F) (hc : c ∈ Subgroup.center (GL (Fin 2) F)) (z : X I) (x : Gf) :
      D.kt k a (γ * c) z x = D.kt k a γ z x := by
    have hT : D.Te a (γ * c) x = (D.χ ⟨D.j c, D.cenH c hc⟩ : ℂ)⁻¹ * D.Te a γ x := by
      simp [Dat.Te, Finset.mul_sum, ← ee_inv, map_mul, ← mul_assoc, (Subgroup.mem_center_iff.1 (inv_mem
        (D.cenC c hc)) x⁻¹)]
    simp [Dat.kt, act_mul, act_center D c hc, hT, J_mul D hB, J_center D k hH.compat c hc]
    field_simp

  have kt_H (γ : GL (Fin 2) F) (z : X I) (x : Gf) (h : D.H) : D.kt k a γ z (x * h) = D.kt k a γ z x := by
    unfold Dat.kt Dat.Te
    have := hH.good (fun y => D.ee (x⁻¹ * (D.j γ)⁻¹ * y)) (fun y h' => by rw [← mul_assoc, weight_mul_right, mul_comm]) x h
    simp_all [mul_assoc, ← Finset.mul_sum]
  have kk_mk (g : GL (Fin 2) F) (z : D.Xs) (x : Gf) : D.kk k a g ((x : Gf ⧸ D.H), z) = D.kt k a g z x := by
    obtain ⟨c, hc⟩ := mk_out_eq_mul (Subgroup.center (GL (Fin 2) F)) g
    obtain ⟨h, hh⟩ := mk_out_eq_mul D.H x
    change D.kt k a (g : PG F).out z (Quotient.out _) = _
    grind
  refine ⟨kk_mk, ?_, ?_, ?_, ?_, ?_⟩
  · rintro ⟨d⟩ ⟨g⟩ ⟨⟨x⟩, y2⟩
    refine (kk_mk (d * g * d⁻¹) (D.act d y2) _).trans ((kk_mk _ _ _).trans ?_).symm
    unfold Dat.kt
    congr 1
    · simp [Dat.Te, mul_assoc]
    · simp [qq, Dat.J, ← Finset.prod_mul_distrib]
      grind [Dat.act, mul_smul, hB.1, hB.2.1, hB.2.2.1, inv_mul_cancel_right, inv_smul_smul]
  · intro γ
    have := hH.ax.cO
    refine measurable_from_prod_countable_right fun ω => (?_ : Continuous fun z : X I => D.kk k a γ (ω,
      z)).measurable
    obtain ⟨-, -, -, -, -, -, hj, hq, -⟩ := hB
    have := fun g => (hA.2.2 g).1
    unfold Dat.kk Dat.kt qq Dat.J Dat.act
    fun_prop
  · refine ⟨card ι * kernel_constant k, fun γ y => ?_⟩
    have hQJ := mul_right_cancel₀ (nrm_pos k y.2).ne' (norm_qq_mul_J D hB k (fun v => Nat.one_le_of_lt
      (hH.four v)) γ.out y.2 y.2)
    unfold Dat.kk Dat.kt
    rw [smulX_out, norm_mul, mul_assoc, hQJ]
    exact mul_le_mul_of_nonneg_right ((norm_sum_le _ _).trans ((Finset.sum_le_sum fun i _ =>
      norm_weight_le_one D hH.ax _).trans (by
      simp))) (hQJ ▸ norm_nonneg _)
  · exact fun γ y hT => by_contra fun hn => hT (Finset.sum_eq_zero fun i _ => by simpa [mul_assoc] using weight_eq_zero_of_quotient_ne D γ y _ fun h => hn ⟨i, h⟩)
  · intro γ y i hγ
    rw [smul_quotient_eq_out] at hγ
    exact hH.reg _ _ i (by
      simpa [mul_assoc] using D.H.inv_mem (QuotientGroup.eq.1 hγ))
end

private theorem tsum_le_fiber_bound {G Ω : Type} (φ : G → Ω) (w : Ω → ℝ≥0∞) (K : G → ℝ≥0∞) (M : ℝ≥0∞)
    (hK : ∀ ω', ∑' g : {g // φ g = ω'}, K g.1 ≤ M) : ∑' g, w (φ g) * K g ≤ (∑' ω', w ω') * M := by
  rw [← tsum_fiberwise _ φ, ← ENNReal.tsum_mul_right]
  gcongr with ω'
  exact (tsum_congr fun b => by grind).trans_le (ENNReal.tsum_mul_left.trans_le (mul_le_mul_right (hK ω') _))

private def kernel_level_term {F ι Gf : Type} [Field F] [Group Gf] [Fintype ι] (D : Dat F ι Gf)
    k (y : D.Y) (p : X ι × Gf) (g : PG F) :=
  D.ee ((D.rep y.1)⁻¹ * (D.j g.out)⁻¹ * p.2) * (qq k p.1 (D.act g.out y.2) * D.J k g.out y.2)

theorem kernel_level_transform_proof :
    B1a → B1b → B1c → E0d → KapSum → KapInt → E4 := by
  classical
  intro _ hB hC _ hS hI F I Gf _ _ _ D hD k hk hc y
  obtain ⟨c₀, hc₀, hm⟩ := hD.mink
  obtain ⟨s, hs, hsy⟩ := hm y.2 (D.rep y.1)
  obtain ⟨C, hC'⟩ := hS F I Gf D hD k hk c₀ hc₀
  obtain ⟨_, A, hA⟩ := hI I k hk
  have := hC.2.2.2.2.1
  have := hB.2.2.2.2.2.2.2.1
  let S (x : Gf) := {δ : PG F | δ • y.1 = (x : Gf ⧸ D.H)}
  have hc0 := mul_nonneg (kernel_constant_nonneg k (by
    grind)) (nrm_pos k y.2).le
  let B := max (C * (1 + D.HtY s y)) 0
  have hks x z : Summable ((S x).indicator fun δ => Kap k z (δ • y.2)) ∧ tsum ((S x).indicator fun δ => Kap k
    z (δ • y.2)) ≤ B := by
    have hb := hC' y s hs hsy (x : Gf ⧸ D.H) z
    have hsum := (summable_toReal (ne_top_of_le_ne_top ofReal_ne_top hb)).congr fun γ => toReal_ofReal
      (Kap_nonneg ..)
    exact ⟨summable_subtype_iff_indicator.1 hsum, (tsum_subtype _ _).symm.trans_le (le_max_iff.2
      (ofReal_le_ofReal_iff'.1 ((ofReal_tsum_of_nonneg (fun _ => Kap_nonneg ..) hsum).trans_le hb)))⟩
  have hnear x z₀ : ∃ U, IsOpen U ∧ z₀ ∈ U ∧ ∀ γ, ∀ z ∈ U,
      ‖kernel_level_term D k y (z, x) γ‖ ≤ (S x).indicator (fun δ => Kap k z₀ (δ • y.2)) γ * (A *
        (kernel_constant k * nrm k y.2 / (nrm k z₀ / 2))) := by
    refine ⟨(⋂ v, {z | 1 / 2 < kap (z v) (z₀ v)}) ∩ {z | nrm k z₀ / 2 < nrm k z}, (isOpen_iInter_of_finite fun
      v => isOpen_lt continuous_const (by
      fun_prop)).inter (isOpen_lt continuous_const (by
        unfold nrm
        fun_prop (disch := positivity))), ⟨mem_iInter.2 fun v => by norm_num [hC.2.1], half_lt_self (nrm_pos k z₀)⟩, fun γ z ⟨hz1, hz2⟩ => ?_⟩
    by_cases hγ : γ ∈ S x
    · rw [indicator_of_mem hγ, kernel_level_term, norm_mul]
      refine (mul_le_of_le_one_left (norm_nonneg _) (norm_weight_le_one D hD _)).trans ?_
      rw [eq_div_of_mul_eq (nrm_pos k z).ne' (norm_qq_mul_J D hB k (by
        grind) γ.out z y.2), mul_comm (kernel_constant k), mul_assoc, mul_div_assoc, ← smulX_out, Kap_symm hC
          k z (γ • y.2), Kap_symm hC k z₀ (γ • y.2)]
      nlinarith [mul_le_mul ((hA (γ • y.2)).2.2.2 z z₀ fun v => (mem_iInter.1 hz1 v).le).1
        (div_le_div_of_nonneg_left hc0 (half_pos (nrm_pos k z₀)) hz2.le) (div_nonneg hc0 (nrm_pos k z).le)
        (mul_nonneg A.2 (Kap_nonneg ..))]
    · simp_all [kernel_level_term, weight_eq_zero_of_quotient_ne D _ _ _ hγ]
  refine ⟨fun x => ⟨continuous_iff_continuousAt.2 fun z₀ => ?_, fun z v t₀ ht₀ => ?_⟩, fun γ z x => ?_, ?_,
    ⟨B * (A * (kernel_constant k * nrm k y.2 * 2)), fun z x => ?_⟩⟩
  · obtain ⟨U, hU, hz₀, hM⟩ := hnear x z₀
    exact (continuousOn_tsum (fun γ => by
      dsimp [kernel_level_term, qq]
      fun_prop) ((hks x z₀).1.mul_right _) hM).continuousAt (hU.mem_nhds
                                            hz₀)
  · obtain ⟨U, hU, hz₀, hM⟩ := hnear x (update z v ⟨t₀, ht₀⟩)
    have hV : IsOpen (Subtype.val '' (update z v ⁻¹' U)) := (isOpen_ne_fun continuous_im
      continuous_const).isOpenMap_subtypeVal _ (hU.preimage (by
      fun_prop))
    have hhol γ : Hol1 fun t => kernel_level_term D k y (update z v t, x) γ :=
      ((hB.2.2.2.2.2.2.2.2 (k v) (D.act γ.out y.2 v)).const_mul (D.ee ((D.rep y.1)⁻¹ * (D.j γ.out)⁻¹ * x) * (∏
        u ∈ Finset.univ.erase v, q1 (k u) (z u) (D.act γ.out y.2 u)) * D.J k γ.out y.2)).congr fun t ht => by
        simp [ext1_of_im_ne_zero _ ht, kernel_level_term, qq, ← Finset.mul_prod_erase _ _ (Finset.mem_univ v)]
        rw [Finset.prod_congr rfl fun u hu => by rw [update_of_ne (Finset.ne_of_mem_erase hu)]]
        ring
    refine (DifferentiableOn.differentiableAt ?_ (hV.mem_nhds ⟨_, hz₀, rfl⟩)).differentiableWithinAt
    exact DifferentiableOn.congr (differentiableOn_tsum_of_summable_norm
      ((hks x _).1.mul_right _) (fun γ => (hhol γ).mono fun _ ⟨s, _, e⟩ => e ▸ s.2)
      hV fun γ _ ⟨s, hs, e⟩ => by
        subst e
        simpa [ext1, s.2] using hM γ _ hs) fun t ⟨s, _, e⟩ => by
          subst e
          simp [ext1, s.2, Dat.Kern, kernel_level_term]
  · unfold Dat.Kern
    rw [← (Equiv.mulLeft (γ : PG F)).tsum_eq, ← tsum_mul_left]
    refine tsum_congr fun δ => ?_
    obtain ⟨c, hc'⟩ := mk_out_eq_mul (Subgroup.center (GL (Fin 2) F)) (γ * δ.out)
    rw [show Equiv.mulLeft (γ : PG F) δ = ↑(γ * δ.out) by simp, hc']
    have hqJ w : qq k (D.act γ z) (D.act γ w) * D.J k γ w = D.J k γ z * qq k z w := by
      simp [qq, Dat.J, Dat.act, ← Finset.prod_mul_distrib, hB.2.2.1]
    have hee u : D.ee ((D.rep y.1)⁻¹ * u) = D.χ ⟨D.j c, D.cenH c c.2⟩ * D.ee ((D.rep y.1)⁻¹ * ((D.j c)⁻¹ * u))
      := by
      rw [← weight_mul_left]
      simp [← mul_assoc, ← Subgroup.mem_center_iff.1 (D.cenC c c.2) (D.rep y.1)⁻¹]
    simp [act_mul D _ _ y.2, act_center D c c.2 y.2, J_mul D hB k _ _ y.2, J_center D k hc c c.2 y.2,
      mul_assoc]
    grind
  · simp [Dat.Kern, ← mul_assoc, weight_mul_right, ← tsum_mul_left]
    grind
  · obtain ⟨U, -, hz, hM⟩ := hnear x z
    rw [← le_div_iff₀ (nrm_pos k z)]
    exact ((tsum_of_norm_bounded ((hks x z).1.hasSum.mul_right _) fun γ => hM γ z hz).trans
      (mul_le_mul_of_nonneg_right (hks x z).2 (mul_nonneg A.2 (div_nonneg hc0 (half_pos (nrm_pos k
      z)).le)))).trans_eq (by
      ring)

private theorem kernel_inverse_symmetry :
    B1a → B1b → B1c → E0a → E0d → KapSum → faceMap_zero_comp_eq_one := by
  classical
  intro hA hB hC hE0a _ hKS F I Gf _ _ _ D hD k hk _ (p : D.Xs × Gf)
  have := (hE0a F I Gf D hD).1
  have := hD.cO
  obtain ⟨c₀, hc₀, hm⟩ := hD.mink
  obtain ⟨C, hCb⟩ := hKS F I Gf D hD k hk c₀ hc₀
  let y₀ : D.Y := ((p.2 : Gf ⧸ D.H), p.1)
  obtain ⟨s, hs, hsle⟩ := hm y₀.2 (D.rep y₀.1)
  have hc0 := div_nonneg (kernel_constant_nonneg k (by
    grind)) (nrm_pos k p.1).le
  have hT y : ∑' γ, ‖kernel_level_term D k y p γ‖ₑ ≤ ENNReal.ofReal (kernel_constant k / nrm k p.1 * nrm k
    y.2) * ENNReal.ofReal (C * (1 + D.HtY s y₀)) := by
    rw [← (Equiv.inv (PG F)).tsum_eq]
    refine (tsum_le_tsum fun δ => ?_).trans ((tsum_le_fiber_bound (· • y₀.1) (Pi.single y.1 (ENNReal.ofReal
      (kernel_constant k / nrm k p.1 * nrm k y.2))) (fun δ => ENNReal.ofReal (Kap k y.2 (δ • p.1 : D.Xs))) _
      (hCb y₀ s hs hsle · y.2)).trans_eq (by
      simp))
    by_cases h : δ • y₀.1 = y.1
    · rw [h, Pi.single_eq_same, ← ENNReal.ofReal_mul (mul_nonneg hc0 (nrm_pos k y.2).le), ← ofReal_norm]
      gcongr
      unfold kernel_level_term
      rw [Equiv.inv_apply, norm_mul]
      refine (mul_le_of_le_one_left (norm_nonneg _) (norm_weight_le_one D hD _)).trans_eq ?_
      have hinv (g : PG F) (a b : D.Xs) : Kap k (g • a) (g • b) = Kap k a b := by
        simp [smulX_out, Kap, Dat.act, hB.2.2.2.1]
      rw [eq_div_of_mul_eq (nrm_pos k p.1).ne' (norm_qq_mul_J D hB k (by
        grind) δ⁻¹.out p.1 y.2), ← smulX_out, Kap_symm hC k p.1 (δ⁻¹ • y.2 : D.Xs), ← hinv δ, smul_inv_smul]
      ring
    · simp_all [kernel_level_term, weight_eq_zero_of_quotient_ne D δ⁻¹ y.1 p.2 fun e => h (inv_smul_eq_iff.1
      e).symm]
  have hsumm y :=
    summable_toReal (ne_top_of_le_ne_top (mul_ne_top ofReal_ne_top ofReal_ne_top) (hT y))
  refine ⟨hsumm, Measurable.tsum fun γ => measurable_from_prod_countable_right fun ω => ?_, kernel_constant k
    / nrm k p.1 * (ENNReal.ofReal (C * (1 + D.HtY s y₀))).toReal, fun y => (norm_tsum_le_tsum_norm (hsumm
    y)).trans ?_⟩
  · have := fun g => (hA.2.2 g).1
    have := hB.2.2.2.2.2.2.2.1
    have := hB.2.2.2.2.2.2.1
    dsimp [qq, Dat.J, Dat.act]
    fun_prop
  · simpa [tsum_toReal_eq, toReal_ofReal (mul_nonneg hc0 (nrm_pos k y.2).le), mul_right_comm] using
    toReal_mono (mul_ne_top ofReal_ne_top ofReal_ne_top) (hT y)

theorem kernel_trace_bound_proof : E0d → E1 → F5 := by
  intro _ hE1 F I Gf ι _ _ _ _ D k a hH
  obtain ⟨C, hC⟩ := hE1 F I Gf ι D k a hH 1 one_pos
  refine ⟨C, fun T hT y => ⟨fun hy γ s hs _ => hy s hs, fun hy => ?_⟩⟩
  simp [Dat.abelian₂] at hy
  obtain ⟨s, hs, hsT⟩ := hy
  refine (tsum_le_tsum fun γ => ?_).trans ((tsum_subtype {γ | ¬ Fix s γ} fun γ => ‖D.kk k a γ
    y‖ₑ).symm.trans_le (hC y s hs (by
    linarith)))
  by_cases hf : Fix s γ
  · simp_all
    exact fun h => by linarith [h s hs hf]
  · simp_all [eNorm_indicator_eq_indicator_eNorm]
    exact indicator_le_self _ _ _

private theorem integrable_qq_smul {ι : Type} [Fintype ι] (hK : KapInt) {k}
    (hk : ∀ v, 4 ≤ k v) {f : X ι → ℂ} (hf : Continuous f) {C} (hC : ∀ z, ‖f z‖ * nrm k z ≤ C)
    z : Integrable (fun w => qq k z w * f w) := by
  obtain ⟨C1, A, h⟩ := hK ι k hk
  have := automorphy_factor_kernel_algebra_proof.2.2.2.2.2.2.2.1
  refine (Integrable.const_mul ⟨(h z).1.aestronglyMeasurable, (hasFiniteIntegral_iff_ofReal (of_forall
    (Kap_nonneg k z))).2 ((h z).2.1.trans_lt coe_lt_top)⟩ (kernel_constant k * C / nrm k z)).mono' (by
    unfold qq
    fun_prop) (of_forall fun w => ?_)
  rw [norm_mul, div_mul_eq_mul_div, le_div_iff₀ (nrm_pos k z)]
  have : ‖qq k z w‖ * nrm k z = kernel_constant k * Kap k z w * nrm k w := by
    simp only [qq, nrm, Kap, kernel_constant, norm_prod, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun v _ => automorphy_factor_kernel_algebra_proof.2.2.2.2.2.1 _ _ _ (by
      grind)
  nlinarith [mul_le_mul_of_nonneg_left (hC w) (mul_nonneg (kernel_constant_nonneg k (by
    grind)) (Kap_nonneg k z w)), norm_nonneg (f w)]

private theorem reproducing_formula_fin (h3 : B3) (hK : KapInt) (n : ℕ) k
    (hk : ∀ v, 4 ≤ k v) (f : X (Fin n) → ℂ) (hf : Continuous f)
    (hu : ∀ z v, Hol1 fun t => f (update z v t)) C (hC : ∀ z, ‖f z‖ * nrm k z ≤ C) z :
    ∫ w, qq k z w * f w = f z := by
  have := half_plane_measure_invariant_proof.1
  induction n generalizing C with
  | zero => simp [qq, Subsingleton.elim _ z, measureReal_def, volume_pi]
  | succ n ih =>
    have hmp := (volume_preserving_piFinSuccAbove (fun _ : Fin (n + 1) => P) 0).symm
    rw [← hmp.integral_comp']
    refine (integral_prod_symm _
      (hmp.integrable_comp_of_integrable (integrable_qq_smul hK hk hf hC z))).trans ?_
    have hb t w : ‖f (cons t w)‖ * |t.1.im| ^ ((k 0 : ℝ) / 2) * nrm (tail k) w ≤ C := by
      convert hC (cons t w) using 1
      simp [nrm, prod_univ_succ, tail, mul_assoc]
    convert ih (tail k) (fun v => hk _) (fun w => f (cons (z 0) w)) (by fun_prop)
      (fun w v => by simp_all) (C / |(z 0).1.im| ^ ((k 0 : ℝ) / 2)) (fun w => by
        rw [le_div_iff₀ (rpow_pos_of_pos (abs_pos.2 (z 0).2) _), mul_right_comm]
        simp_all) (tail z) using 3 with w
    · rw [← (h3 _ (hk 0) (fun t => f (cons t w)) (by simpa using hu (cons (z 0) w) 0)
        ⟨C / nrm (tail k) w, fun t => (le_div_iff₀ (nrm_pos _ _)).2 (hb t w)⟩ (z 0)).2,
        ← integral_const_mul]
      congr! with x
      simp [qq, prod_univ_succ, consEquiv, tail]
      ring
    simp

theorem multivariable_reproducing_formula_proof : B1a → B1b → B3 → KapInt → MultivariableReproducingFormula :=
  by
  intro _ _ h3 hK I _ k hk f ⟨hf, hu⟩ ⟨C, hC⟩ z
  refine ⟨integrable_qq_smul hK hk hf hC z, ?_⟩
  have := half_plane_measure_invariant_proof.1
  let σ := equivFin I
  rw [← (volume_measurePreserving_piCongrLeft (fun _ => P) σ).symm.integral_comp']
  convert reproducing_formula_fin h3 hK _ (k ∘ σ.symm) (fun _ => hk _) (fun x => f (x ∘ σ)) (by
    fun_prop) (fun x j => ?_) C (fun x => ?_) (z ∘ σ.symm) using 3 with x
  · simp [qq, ← σ.prod_comp]
    rfl
  · grind
  · convert hu (x ∘ σ) (σ.symm j) using 3 with t
    grind
  · convert hC (x ∘ σ) using 2
    simp [nrm, ← σ.prod_comp]

theorem orbit_cover_proof : C2 := by
  refine fun G Y _ _ _ _ => ⟨fun _ u hu h0 hpos hs => ⟨fun y => u y / ∑' g : G, u (g • y), hu.div (by
    fun_prop), fun y => div_nonneg (h0 y) (tsum_nonneg fun _ => h0 _), fun y => ?_⟩,
      lintegral_cut_le_of_cover⟩
  obtain ⟨g, hg⟩ := hpos y
  rw [← div_self ((hs y).tsum_pos (fun _ => h0 _) g hg).ne']
  convert (hs y).hasSum.div_const _ using 3 with g
  simpa [mul_smul] using (Equiv.mulRight g).tsum_eq fun h => u (h • y)

private def negative_base_point : P := ⟨-I, by simp⟩

private def base_points {I : Type} (e : I → Bool) : X I := fun v => if e v then iP else negative_base_point

private theorem Kap_nonneg_of_kap_nonneg {I : Type} [Fintype I] (_hk0 : ∀ z w : P, 0 ≤ kap z w) (k : I → ℕ) (z
  w : X I) : 0 ≤ Kap k z w :=
  Kap_nonneg ..

open Classical in

private def cut_majorant {I : Type} [Fintype I] (z : X I) : ℝ := ∑ e : I → Bool, Kap (fun _ => 4) (base_points
  e) z

private theorem cut_majorant_pos {I : Type} [Fintype I] (_hk0 : ∀ z w : P, 0 ≤ kap z w) (z : X I) : 0 <
  cut_majorant z := by
  classical
  refine Finset.sum_pos' (fun _ _ => Kap_nonneg ..) ⟨fun v => 0 < (z v).1.im, Finset.mem_univ _,
    Finset.prod_pos fun v _ => rpow_pos_of_pos ((kap_nonneg ..).lt_of_ne' ?_) _⟩
  rcases lt_or_gt_of_ne (z v).2 with h | h <;> simp_all [base_points, h.not_gt, kap, iP, negative_base_point,
    Complex.ext_iff] <;> grind

private theorem cut_majorant_nonneg {I : Type} [Fintype I] (hk0 : ∀ z w : P, 0 ≤ kap z w) (z : X I) : 0 ≤
  cut_majorant z :=
  (cut_majorant_pos hk0 z).le

private theorem cut_majorant_continuous {I : Type} [Fintype I] (hkc : Continuous fun p : P × P => kap p.1 p.2)
  :
    Continuous (cut_majorant : X I → ℝ) := by
  unfold cut_majorant Kap
  fun_prop (disch := positivity)

open Classical in
private theorem pf_Ecut : B1b → B1c → C2 → E0a → E0d → KapSum → Ecut := by
  intro _ hB hC hE _ hK F I Gf _ _ _ D hax
  obtain ⟨hcount, -, hpres, -⟩ := hE F I Gf D hax
  have := hax.cO
  obtain ⟨hk0', -, -, -, hkc, -⟩ := hB
  have hk0 := fun z w => (hk0' z w).1
  obtain ⟨c₀, hc₀, hmk⟩ := hax.mink
  obtain ⟨C, hCK⟩ := hK F I Gf D hax (fun _ => 4) (fun _ => le_rfl) c₀ hc₀
  have hmX := fun g => (hpres g).measurable
  have hfib : ∀ y : D.Y, ∃ M : ℝ≥0∞, M ≠ ⊤ ∧ ∀ (e : I → Bool) (ω' : D.Om),
      ∑' γ : {γ : PG F // γ • y.1 = ω'}, ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (γ.1 • y.2 : D.Xs))
        ≤ M := by
    intro y
    obtain ⟨s, hs, hsy⟩ := hmk y.2 (D.rep y.1)
    exact ⟨_, ofReal_ne_top, fun e ω' => hCK y s hs hsy ω' (base_points e)⟩
  have hucont : Continuous (cut_majorant : X I → ℝ) := cut_majorant_continuous hkc
  have hsplit : ∀ z : X I, ENNReal.ofReal (cut_majorant z) =
      ∑ e : I → Bool, ENNReal.ofReal (Kap (fun _ => 4) (base_points e) z) := by
    intro z
    rw [cut_majorant, ofReal_sum_of_nonneg (fun e _ => Kap_nonneg_of_kap_nonneg hk0 _ _ _)]
  obtain ⟨f, hf⟩ := Countable.exists_injective_nat D.Om
  set w := fun ω => (1 / 2 : ℝ) ^ f ω with hw
  have hW : ∑' ω, ENNReal.ofReal (w ω) ≠ ⊤ := by
    refine ne_top_of_le_ne_top (ofReal_ne_top (r := ∑' n : ℕ, (1 / 2 : ℝ) ^ n))
      ((tsum_comp_le_tsum_of_injective hf (fun n => ENNReal.ofReal ((1 / 2 : ℝ) ^ n))).trans (le_of_eq ?_))
    exact (ofReal_tsum_of_nonneg (fun n => by positivity) summable_geometric_two).symm
  refine ⟨?_, ?_⟩
  · refine (hC (PG F) D.Y).1 ?_ (fun y => w y.1 * cut_majorant y.2) ?_ ?_ ?_ ?_
    · intro g
      exact (Measurable.of_discrete.comp measurable_fst).prodMk ((hmX g).comp measurable_snd)
    · have h2 : Measurable fun y : D.Y => cut_majorant (y.2 : X I) := hucont.measurable.comp measurable_snd
      fun_prop
    · exact fun y => mul_nonneg (by
      positivity) (cut_majorant_nonneg hk0 _)
    · exact fun y => ⟨1, by simpa using _root_.mul_pos (by
      positivity : (0 : ℝ) < w y.1) (cut_majorant_pos hk0 y.2)⟩
    · intro y
      obtain ⟨M, hM, hMb⟩ := hfib y
      refine (summable_toReal (ne_top_of_le_ne_top (sum_lt_top.2 fun e _ => mul_lt_top hW.lt_top hM.lt_top).ne
        (by
        calc ∑' g : PG F, ENNReal.ofReal (w (g • y).1 * cut_majorant (g • y).2)
            = ∑' g : PG F, ∑ e : I → Bool, ENNReal.ofReal (w (g • y.1)) *
                ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (g • y.2 : D.Xs)) := by
              refine tsum_congr fun g => ?_
              exact (ENNReal.ofReal_mul (by
                positivity)).trans
                ((congrArg (fun t => ENNReal.ofReal (w (g • y.1)) * t) (hsplit _)).trans (by
                  rw [Finset.mul_sum]
                  rfl))
          _ = ∑ e : I → Bool, ∑' g : PG F, ENNReal.ofReal (w (g • y.1)) *
                ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (g • y.2 : D.Xs)) :=
              Summable.tsum_finsetSum (fun _ _ => CompleteLattice.summable)
          _ ≤ _ := Finset.sum_le_sum fun e _ => tsum_le_fiber_bound (fun g : PG F => g • y.1)
                (fun ω => ENNReal.ofReal (w ω))
                (fun g : PG F => ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (g • y.2 : D.Xs))) M (hMb
                  e)))).congr fun g => ?_
      exact toReal_ofReal (mul_nonneg (by
        positivity) (cut_majorant_nonneg hk0 _))
  · intro ω S hS
    refine (hC S D.Xs).1 ?_ cut_majorant ?_ ?_ ?_ ?_
    · bound
    · exact hucont.measurable
    · exact cut_majorant_nonneg hk0
    · exact fun z => ⟨1, by simpa using cut_majorant_pos hk0 z⟩
    · intro z
      obtain ⟨M, hM, hMb⟩ := hfib ((ω, z) : D.Y)
      have hinj : Function.Injective (fun g : S => (⟨(g : PG F), hS g.2⟩ : {γ : PG F // γ • ((ω, z) : D.Y).1 =
        ω})) :=
by
        intro a b h
        grind

      refine (summable_toReal (ne_top_of_le_ne_top (sum_lt_top.2 fun e _ => hM.lt_top).ne (by
        calc ∑' g : S, ENNReal.ofReal (cut_majorant (g • z : D.Xs))
            = ∑' g : S, ∑ e : I → Bool, ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (g • z : D.Xs)) :=
              tsum_congr fun g => hsplit _
          _ = ∑ e : I → Bool, ∑' g : S, ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (g • z : D.Xs)) :=
              Summable.tsum_finsetSum (fun _ _ => CompleteLattice.summable)
          _ ≤ _ := Finset.sum_le_sum fun e _ =>
              (tsum_comp_le_tsum_of_injective hinj
                (fun γ : {γ : PG F // γ • ((ω, z) : D.Y).1 = ω} =>
                  ENNReal.ofReal (Kap (fun _ => 4) (base_points e) (γ.1 • ((ω, z) : D.Y).2 : D.Xs)))).trans
                    (hMb e ω)))).congr fun g => ?_
      exact toReal_ofReal (cut_majorant_nonneg hk0 _)

private theorem trace_conj {F : Type} [Field F] (γ δ : GL (Fin 2) F) :
    ((δ * γ * δ⁻¹ : GL (Fin 2) F) : Matrix (Fin 2) (Fin 2) F).trace = (γ : Matrix (Fin 2) (Fin 2) F).trace :=
      by
  simp only [Units.val_mul]
  rw [trace_mul_cycle, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mul]

private theorem pf_Fcen : Fcen := by
  intro F _ γ δ htr h
  have h' : ((δ * γ * δ⁻¹ : GL (Fin 2) F) : Esk.PG F) = (γ : Esk.PG F) := by
    simp_all
  rw [QuotientGroup.eq] at h'
  set c := (δ * γ * δ⁻¹)⁻¹ * γ with hc
  obtain ⟨h1, h2, h3⟩ := center_entries h'
  have hcv : (c : Matrix (Fin 2) (Fin 2) F) = c 0 0 • (1 : Matrix (Fin 2) (Fin 2) F) := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [h1, h2, h3]
  have hγ : γ = (δ * γ * δ⁻¹) * c := by
    rw [hc]
    group
  have hv : (γ : Matrix (Fin 2) (Fin 2) F) = ((δ * γ * δ⁻¹ : GL (Fin 2) F) : Matrix (Fin 2) (Fin 2) F) * (c :
    Matrix (Fin 2) (Fin 2) F) := by
    conv_lhs => rw [hγ]
    rfl
  have htr2 : c 0 0 * (γ : Matrix (Fin 2) (Fin 2) F).trace = 1 * (γ : Matrix (Fin 2) (Fin 2) F).trace := by
    conv_rhs => rw [hv, hcv, Matrix.mul_smul, Matrix.mul_one, trace_smul, smul_eq_mul, trace_conj]
    ring
  have hc1 : c = 1 := by
    ext : 1
    rw [hcv, (mul_right_cancel₀ htr htr2), one_smul, Units.val_one]
  calc δ * γ = δ * γ * δ⁻¹ * δ := by group
    _ = γ * δ := by grind

section
variable {F I Gf : Type} [Field F] [Group Gf]

private theorem fix_conj_data_iff [Fintype I] (D : Dat F I Gf) (hD : D.Ax) (hE : E0d) (s : Fin 2 → F) (γ δ :
  GL (Fin 2) F) :
    Fix s ((δ : PG F) * γ * (δ : PG F)⁻¹) ↔ ∃ c : F, (s ᵥ* δ.val) ᵥ* γ.val = c • (s ᵥ* δ.val) :=
  (hE F I Gf D hD).2.2.2.2.2.2.2.2.2.2 s γ δ

private theorem fix_data_mk_iff [Fintype I] (D : Dat F I Gf) (hD : D.Ax) (hE : E0d) (s : Fin 2 → F) (γ : GL
  (Fin 2) F) :
    Fix s (γ : PG F) ↔ ∃ c : F, s ᵥ* γ.val = c • s := by
  simpa using (fix_conj_data_iff D hD hE s γ 1)

private theorem isEll_conj [Fintype I] (D : Dat F I Gf) (hD : D.Ax) (hE : E0d) (γ δ : GL (Fin 2) F) :
    IsEll ((δ : PG F) * (γ : PG F) * (δ : PG F)⁻¹) ↔ IsEll (γ : PG F) := by
  simp only [IsEll, fix_conj_data_iff D hD hE, fix_data_mk_iff D hD hE]
  constructor
  · intro h t ht hc
    refine h (t ᵥ* (δ⁻¹).val) ?_ ?_
    · intro h0
      apply ht
      have := congrArg (· ᵥ* δ.val) h0
      simpa
    simp_all
  · intro h s hs hc
    refine h (s ᵥ* δ.val) ?_ hc
    intro h0
    apply hs
    have := congrArg (· ᵥ* (δ⁻¹).val) h0
    simpa

private theorem isEll_conj' [Fintype I] (D : Dat F I Gf) (hD : D.Ax) (hE : E0d) (δ γ : PG F) :
    IsEll (δ * γ * δ⁻¹) ↔ IsEll γ := by
  have h := isEll_conj D hD hE γ.out δ.out
  simp_all

private theorem isEll_of_totEll (D : Dat F I Gf) [Nonempty I] (γ : PG F) (h : D.TotEll γ.out) : IsEll γ := by
  intro s hs ⟨c, hc⟩
  set M := γ.out.val with hM
  have e0 := congrFun hc 0
  have e1 := congrFun hc 1
  simp [vecMul, dotProduct, sum_univ_two] at e0 e1
  have q0 : (c ^ 2 - M.trace * c + M.det) * s 0 = 0 := by
    rw [trace_fin_two, det_fin_two]
    grind
  have q1 : (c ^ 2 - M.trace * c + M.det) * s 1 = 0 := by
    rw [trace_fin_two, det_fin_two]
    grind
  have hq : c ^ 2 - M.trace * c + M.det = 0 := by
    by_contra hne
    apply hs
    funext i
    fin_cases i
    · simp_all
    simp_all
  have key : (2 * c - M.trace) ^ 2 = M.trace ^ 2 - 4 * M.det := by
    grind
  obtain ⟨v⟩ := ‹Nonempty I›
  have hv := h v
  have k2 := congrArg (D.σ v) key
  simp [map_sub, map_ofNat] at k2
  nlinarith

private theorem kernel_support_stabilizer (D : Dat F I Gf) {ι : Type} [Fintype ι] (a : ι → Gf) (γ : PG F) (ω :
  D.Om)
    (h : D.Te a γ.out (D.rep ω) ≠ 0) : ∃ i, γ • ω = ((D.rep ω * a i : Gf) : Gf ⧸ D.H) := by
  obtain ⟨i, -, hi⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
  refine ⟨i, ?_⟩
  have hm : (D.rep ω)⁻¹ * (D.j γ.out)⁻¹ * D.rep ω * a i ∈ D.H := by
    by_contra hn
    exact hi (by
      simp [Dat.ee, hn])
  have e1 := Quotient.out_eq γ
  have e2 : (show D.Om from ((D.rep ω : Gf) : Gf ⧸ D.H)) = ω := Quotient.out_eq ω
  have h2 : γ • ω = ((D.j γ.out * D.rep ω : Gf) : Gf ⧸ D.H) := by
    have h3 := D.mk_smulO γ.out (D.rep ω)
    grind

  rw [h2]
  refine QuotientGroup.eq.2 ?_
  simpa [mul_assoc] using hm

private theorem pf_Fell : C4 → E0a → KernelTermsInvariantBounded → E0d → E1 → E3 → Ecut → Fsum → F2 → F3 → F4
  → Fell := by
  intro hC4 hE0a hE0c hE0d hE1 hE3 hEcut hFsum hF2 hF3 hF4 F I Gf _ _ _ D hD ι _ a
  classical
  have : Nonempty I := by
    have := hD.two
    infer_instance

  obtain ⟨f, hf1, hf2⟩ : ∃ f : D.Cj × D.Om → D.Cj × D.Om, (∀ p, f p ∈ orbit (PG F) p) ∧
      (∀ p q, q ∈ orbit (PG F) p → f q = f p) :=
    ⟨fun p => Quotient.out (Quotient.mk (orbitRel (PG F) (D.Cj × D.Om)) p),
      fun p => orbitRel_apply.1 (Quotient.mk_out p),
      fun p q h => congrArg Quotient.out (Quotient.sound (orbitRel_apply.2 h))⟩
  have hff := fun p => hf2 p (f p) (hf1 p)

  choose Sa hSa using fun i => hF4 F I Gf D hD (a i)
  let Sset := {p | p ∈ range f ∧ D.TotEll (D.el p.1).out ∧
    D.Te a (D.el p.1).out (D.rep p.2) ≠ 0 ∧ Finite (stabilizer (PG F) p)}
  have hSfin : Sset.Finite := by
    refine (finite_iUnion fun i => (hSa i).1.image f).subset ?_
    rintro p ⟨⟨q, rfl⟩, htot, hte, -⟩
    obtain ⟨i, hi⟩ := kernel_support_stabilizer D a (D.el (f q).1) (f q).2 hte
    obtain ⟨δ, hδ⟩ := (hSa i).2 (D.el (f q).1) (f q).2 htot hi
    refine mem_iUnion.2 ⟨i, δ • f q, hδ, ?_⟩
    rw [hf2 (f q) (δ • f q) (mem_orbit _ δ), hff]
  refine ⟨hSfin.toFinset, fun p hp => ?_, ?_⟩
  · aesop
  intro k hk b hb
  have hc := hE0c F I Gf ι D k a hk
  let u : PG F → D.Y → ℂ := fun γ y => if IsEll γ then D.kk k a γ y else 0
  have hu_meas : ∀ γ, Measurable (u γ) := by
    intro γ
    by_cases h : IsEll γ
    · aesop
    · simp only [u, h, ite_false]
      exact measurable_const
  obtain ⟨c₀, hc₀, hmink⟩ := hD.mink
  obtain ⟨C, hC⟩ := hE1 F I Gf ι D k a hk c₀ hc₀
  have hbd : ∀ y, ∑' γ, ‖u γ y‖ₑ ≤ (C : ℝ≥0∞) := by
    intro y
    obtain ⟨s, hs, hsy⟩ := hmink y.2 (D.rep y.1)
    calc ∑' γ, ‖u γ y‖ₑ ≤ ∑' γ, {γ : PG F | ¬ Fix s γ}.indicator (fun γ => ‖D.kk k a γ y‖ₑ) γ :=
          CompleteLattice.summable.tsum_le_tsum (fun γ => by
            by_cases h : IsEll γ
            · have hm : γ ∈ {γ : PG F | ¬ Fix s γ} := h s hs
              simp [u, h, indicator_of_mem hm]
            · simp [u, h]) CompleteLattice.summable
      _ = ∑' γ : {γ : PG F | ¬ Fix s γ}, ‖D.kk k a γ.1 y‖ₑ := (tsum_subtype _ _).symm
      _ ≤ C := hC y s hs hsy
  obtain ⟨hb', hFs⟩ := hFsum F I Gf D hD b hb
  obtain ⟨hmeas', hint', hintY, heq⟩ := hFs u hu_meas (by
    calc ∫⁻ y, ENNReal.ofReal (b y) * ∑' γ, ‖u γ y‖ₑ ∂D.μY ≤ ∫⁻ y, ENNReal.ofReal (b y) * (C : ℝ≥0∞) ∂D.μY :=
          lintegral_mono fun y => by bound
      _ = (∫⁻ y, ENNReal.ofReal (b y) ∂D.μY) * C := lintegral_mul_const' _ _ coe_ne_top
      _ < ⊤ := mul_lt_top (hE3 F I Gf D hD b hb) coe_lt_top)
  refine ⟨hintY, heq.trans ?_⟩
  obtain ⟨hcount, hsig, hpres, -⟩ := hE0a F I Gf D hD
  have : Countable D.Cj := hcount
  have := hD.cO
  have stab_le : ∀ p : D.Cj × D.Om, stabilizer (PG F) p ≤ stabilizer (PG F) p.2 := by
    intro p g hg
    exact congrArg Prod.snd hg
  choose β hβ using fun p : D.Cj × D.Om => (hEcut F I Gf D hD).2 p.2 (stabilizer (PG F) p) (stab_le p)
  obtain ⟨hintR, hsum⟩ := hC4 (PG F) (D.Cj × D.Om) D.Xs volume hpres (fun p => b (p.1.2, p.2)) hb'
    (fun p => u (D.el p.1.1) (p.1.2, p.2)) hmeas' (by
    rintro g ⟨⟨γ, ω⟩, z⟩
    show u (g * D.el γ * g⁻¹) (g • ((ω, z) : D.Y)) = u (D.el γ) (ω, z)
    simp only [u, isEll_conj' D hD hE0d, hc.2.1]) hint' (range f) (by
      intro ω
      refine ⟨f ω, ⟨⟨ω, rfl⟩, hf1 ω⟩, ?_⟩
      grind) β (fun r _ => hβ r)
  let g' := fun r => ∫ x, β r x • u (D.el r.1) (r.2, x)
  let h' : D.Cj × D.Om → ℂ := fun p => (Nat.card (stabilizer (PG F) p) : ℂ)⁻¹ *
    (D.Te a ((D.el p.1).out) (D.rep p.2) * D.orb k ((D.el p.1).out))
  have hind : (range f).indicator g' = Sset.indicator h' := by
    funext p
    by_cases hpR : p ∈ range f
    · rw [indicator_of_mem hpR]
      obtain ⟨γ, ω⟩ := p
      by_cases hS : (γ, ω) ∈ Sset
      · rw [indicator_of_mem hS]
        obtain ⟨-, htot, hte, -⟩ := hS
        have := (hF3 F I Gf ι D k a hk (D.el γ) ω htot hte).2 (β (γ, ω)) (hβ (γ, ω))
        simp only [g', u, (isEll_of_totEll D (D.el γ) htot)]
        simpa
      · rw [indicator_of_notMem hS]
        simp only [g', u]
        by_cases hell : IsEll (D.el γ)
        · simp only [hell]
          by_cases htot : D.TotEll (D.el γ).out
          · by_cases hte : D.Te a (D.el γ).out (D.rep ω) = 0
            · simp [Dat.kk, Dat.kt, hte]
            · exfalso
              exact hS ⟨hpR, htot, hte, (hF3 F I Gf ι D k a hk (D.el γ) ω htot hte).1⟩
          · refine hF2 F I Gf ι D k a hk (D.el γ) ω htot (β (γ, ω)) (hβ (γ, ω)) ?_
            grind
        · simp [hell]
    · rw [indicator_of_notMem hpR, indicator_of_notMem (fun h : p ∈ Sset => hpR h.1)]
  have h1 :=
    (hasSum_subtype_iff_indicator (f := g')).1 hsum
  rw [hind] at h1
  have h3 : ∑ p ∈ hSfin.toFinset, Sset.indicator h' p = geo D k a hSfin.toFinset := by
    refine Finset.sum_congr rfl fun p hp => ?_
    rw [indicator_of_mem (by
      simpa using hp)]
  rw [← h3]
  exact h1.unique (hasSum_sum_of_ne_finset_zero fun p hp => indicator_of_notMem (by
    simpa using hp) _)
end

section
private theorem vecMul_inv_ne_zero {F : Type} [Field F] (s : Fin 2 → F) (hs : s ≠ 0) (δ : GL (Fin 2) F) : s ᵥ*
  δ.val ≠ 0 := by
  intro h
  apply hs
  simpa using (congrArg (fun v => v ᵥ* (δ⁻¹ : GL (Fin 2) F).val) h)

private theorem isEll_conj_of_ax {F : Type} [Field F]
    (hfix : ∀ (s : Fin 2 → F) (γ δ : GL (Fin 2) F), Fix s ((δ : PG F) * γ * (δ : PG F)⁻¹) ↔
      ∃ c : F, (s ᵥ* δ.val) ᵥ* γ.val = c • (s ᵥ* δ.val)) (g γ : PG F) :
    IsEll (g * γ * g⁻¹) ↔ IsEll γ := by
  obtain ⟨δ, rfl⟩ := mk_surjective g
  obtain ⟨γ, rfl⟩ := mk_surjective γ
  have h1 : ∀ s : Fin 2 → F, Fix s (γ : PG F) ↔ ∃ c : F, s ᵥ* γ.val = c • s := by
    intro s
    have := hfix s γ 1
    simp_all
  constructor
  · intro h s hs hf
    have hs' : s ᵥ* (δ⁻¹ : GL (Fin 2) F).val ≠ 0 := vecMul_inv_ne_zero s hs _
    apply h _ hs'
    simp_all

  · intro h s hs hf
    obtain ⟨c, hc⟩ := (hfix s γ δ).1 hf
    exact h _ (vecMul_inv_ne_zero s hs δ) ((h1 _).2 ⟨c, hc⟩)

variable {F I Gf ι : Type} [Field F] [Group Gf] [Fintype I] [Fintype ι]

open Classical in

private def truncated_nonelliptic_kernel (D : Dat F I Gf) (k : I → ℕ) (a : ι → Gf) (T : ℝ) (γ : PG F) (y :
  D.Y) : ℂ :=
  if IsEll γ then 0 else (D.LamF T γ).indicator (D.kk k a γ) y

private theorem eNorm_truncated_nonelliptic_kernel_le (D : Dat F I Gf) (k : I → ℕ) (a : ι → Gf) (T : ℝ) (γ :
  PG F) (y : D.Y) :
    ‖truncated_nonelliptic_kernel D k a T γ y‖ₑ ≤ ‖(D.LamF T γ).indicator (D.kk k a γ) y‖ₑ := by
  unfold truncated_nonelliptic_kernel
  aesop

private theorem eNorm_cut_truncated_kernel_le (D : Dat F I Gf) (k : I → ℕ) (a : ι → Gf) (T : ℝ) (γ : PG F) (y
  : D.Y) :
    ‖(D.LamF T γ).indicator (D.kk k a γ) y‖ₑ ≤ ‖D.kk k a γ y‖ₑ := by
  classical
  rw [indicator_apply]
  aesop

open Classical in
private theorem nonelliptic_terms_contribution (hC4 : C4) (hE0a : E0a) (hE0c : KernelTermsInvariantBounded)
  (hE0d : E0d) (hE2 : E2) (hE3 : E3) (hEcut : Ecut)
    (hFsum : Fsum) (hF5 : F5) (hF6 : F6) (D : Dat F I Gf) (k : I → ℕ) (a : ι → Gf) (hyp : D.Hyp k a)
    (b : D.Y → ℝ) (hb : IsCut (PG F) b)
    (hint : Integrable (fun y => b y • ∑' γ : PG F, if IsEll γ then 0 else D.kk k a γ y) D.μY) :
    ∫ y, b y • (∑' γ : PG F, if IsEll γ then 0 else D.kk k a γ y) ∂D.μY = 0 := by
  have hax := hyp.ax
  obtain ⟨hcnt, hsf, hpres, -, -, -, -, -⟩ := hE0a F I Gf D hax
  obtain ⟨-, hkkc, hkkm, -, -, -⟩ := hE0c F I Gf ι D k a hyp
  obtain ⟨-, -, -, -, -, -, -, hLamF, hev, -, hfix⟩ := hE0d F I Gf D hax
  obtain ⟨-, hE2'⟩ := hE2 F I Gf ι D k a hyp
  have hb3 := hE3 F I Gf D hax b hb
  obtain ⟨-, hcut⟩ := hEcut F I Gf D hax
  obtain ⟨C, hC⟩ := hF5 F I Gf ι D k a hyp
  have hF6' := hF6 F I Gf ι D k a hyp
  have : Countable D.Cj := hcnt
  have := hax.cO

  have hbI : Integrable b D.μY := by
    refine ⟨hb.meas.aestronglyMeasurable, ?_⟩
    refine lt_of_le_of_lt (le_of_eq ?_) hb3
    refine lintegral_congr fun y => ?_
    exact eNorm_eq_ofReal (hb.nonneg y)

  have hum : ∀ T γ, Measurable (truncated_nonelliptic_kernel D k a T γ) := by
    intro T γ
    by_cases h : IsEll γ
    · unfold truncated_nonelliptic_kernel
      bound
    · unfold truncated_nonelliptic_kernel
      simp only [h]
      exact (hkkm γ).indicator (hLamF T γ).1

  have hsumle : ∀ T : ℝ, 1 < T → ∀ y, y ∉ D.abelian₂ T → ∑' γ, ‖truncated_nonelliptic_kernel D k a T γ y‖ₑ ≤ C
    := by
    intro T hT y hy
    exact le_trans (tsum_le_tsum fun γ => eNorm_truncated_nonelliptic_kernel_le D k a T γ y) ((hC T hT y).2
      hy)
  have hon : ∀ T : ℝ, 1 < T → ∀ y, y ∈ D.abelian₂ T → ∀ γ, truncated_nonelliptic_kernel D k a T γ y = if IsEll
    γ then 0 else D.kk k a γ y := by
    intro T hT y hy γ
    unfold truncated_nonelliptic_kernel
    split_ifs
    · rfl
    · exact indicator_of_mem ((hC T hT y).1 hy γ) _

  have hinv : ∀ T (g γ : PG F) (y : D.Y), truncated_nonelliptic_kernel D k a T (g * γ * g⁻¹) (g • y) =
    truncated_nonelliptic_kernel D k a T γ y := by
    intro T g γ y
    unfold truncated_nonelliptic_kernel
    rw [isEll_conj_of_ax hfix g γ]
    · rw [indicator_apply, indicator_apply, hkkc]
      grind

  have step1 : ∀ T : ℝ, 1 < T → Integrable (fun y => b y • ∑' γ, truncated_nonelliptic_kernel D k a T γ y)
    D.μY ∧
      ∫ y, b y • ∑' γ, truncated_nonelliptic_kernel D k a T γ y ∂D.μY = 0 := by
    intro T hT
    obtain ⟨CT, hCT⟩ := hE2' T
    obtain ⟨hb', hFs⟩ := hFsum F I Gf D hax b hb
    obtain ⟨hm', hi', hiY, heq⟩ := hFs (truncated_nonelliptic_kernel D k a T) (hum T) (by
      have hle : ∀ y, ∑' γ, ‖truncated_nonelliptic_kernel D k a T γ y‖ₑ ≤ (CT : ℝ≥0∞) + C := by
        intro y
        by_cases hy : y ∈ D.abelian₂ T
        · refine le_trans ?_ le_self_add
          refine le_trans (tsum_le_tsum fun γ => ?_) (hCT y hy)
          exact (eNorm_truncated_nonelliptic_kernel_le D k a T γ y).trans (eNorm_cut_truncated_kernel_le D k a
            T γ y)
        · exact (hsumle T hT y hy).trans le_add_self
      calc ∫⁻ y, ENNReal.ofReal (b y) * ∑' γ, ‖truncated_nonelliptic_kernel D k a T γ y‖ₑ ∂D.μY
          ≤ ∫⁻ y, ENNReal.ofReal (b y) * ((CT : ℝ≥0∞) + C) ∂D.μY :=
            lintegral_mono fun y => by bound
        _ = (∫⁻ y, ENNReal.ofReal (b y) ∂D.μY) * ((CT : ℝ≥0∞) + C) :=
            lintegral_mul_const' _ _ (by
              simp)
        _ < ⊤ := mul_lt_top hb3 (by
          simp))
    refine ⟨hiY, ?_⟩
    rw [heq]

    let R := range (fun q : orbitRel.Quotient (PG F) (D.Cj × D.Om) => q.out)
    have hβ : ∀ r : D.Cj × D.Om, ∃ β : D.Xs → ℝ, IsCut (stabilizer (PG F) r) β := by
      intro r
      refine hcut r.2 _ ?_
      intro g hg
      have := congrArg Prod.snd hg
      simpa
    choose β hβ using hβ
    obtain ⟨hI, hS⟩ := hC4 (PG F) (D.Cj × D.Om) D.Xs volume hpres _ hb' _ hm' (by
      intro g p
      have e : ((g • p).1.2, (g • p).2) = g • ((p.1.2, p.2) : D.Y) := rfl
      rw [e, show D.el (g • p).1.1 = g * D.el p.1.1 * g⁻¹ from D.smulC g p.1.1, hinv]) hi' R (by
      intro ω
      refine ⟨(Quotient.mk (orbitRel (PG F) (D.Cj × D.Om)) ω).out, ⟨⟨_, rfl⟩, ?_⟩, ?_⟩
      · exact orbitRel_apply.1 (Quotient.mk_out ω)
      · rintro r ⟨⟨q, rfl⟩, hq⟩
        have e1 : q = Quotient.mk (orbitRel (PG F) (D.Cj × D.Om)) ω := by
          rw [← Quotient.out_eq q]
          exact Quotient.sound (orbitRel_apply.2 hq)
        simpa) β (fun r _ => hβ r)
    have hz : ∀ r : R, ∫ x, β r x • truncated_nonelliptic_kernel D k a T (D.el r.1.1) (r.1.2, x) = 0 := by
      intro r
      by_cases he : IsEll (D.el r.1.1)
      · simp [truncated_nonelliptic_kernel, he]
      · have hI' := hI r.1 r.2
        simp only [truncated_nonelliptic_kernel, he, ite_false] at hI' ⊢
        bound
    have hS' := hS
    simp only [hz] at hS'
    exact hS'.unique hasSum_zero

  have hT2 : ∀ n : ℕ, (1 : ℝ) < (n : ℝ) + 2 := by
    grind
  exact tendsto_nhds_unique (by
    refine tendsto_integral_of_dominated_convergence
      (fun y => ‖b y • ∑' γ : PG F, (if IsEll γ then 0 else D.kk k a γ y)‖ + b y * C)
      (fun n => (step1 _ (hT2 n)).1.aestronglyMeasurable) (hint.norm.add (hbI.mul_const _)) ?_ ?_
    · intro n
      refine of_forall fun y => ?_
      have hT := hT2 n
      rw [norm_smul, norm_smul, norm_of_nonneg (hb.nonneg y), ← mul_add]
      refine mul_le_mul_of_nonneg_left ?_ (hb.nonneg y)
      by_cases hy : y ∈ D.abelian₂ ((n : ℝ) + 2)
      · rw [tsum_congr (hon _ hT y hy)]
        simp
      · have h2 : ‖∑' γ, truncated_nonelliptic_kernel D k a ((n : ℝ) + 2) γ y‖ ≤ C := by
          have := toReal_mono coe_ne_top (eNorm_tsum_le_tsum_eNorm.trans (hsumle _ hT y hy))
          exact this
        exact h2.trans (le_add_of_nonneg_left (norm_nonneg _))
    · refine of_forall fun y => ?_
      obtain ⟨T₀, hT₀⟩ := hev y
      obtain ⟨N, hN⟩ := exists_nat_ge T₀
      refine tendsto_const_nhds.congr' ?_
      refine eventually_atTop.2 ⟨N, fun n hn => ?_⟩
      have hT := hT2 n
      dsimp only
      rw [tsum_congr (hon _ hT y (hT₀ _ (by
        have : (N : ℝ) ≤ n := by
          exact_mod_cast hn
        linarith)))]) (by
    refine tendsto_const_nhds.congr' (of_forall fun n => ?_)
    exact ((step1 _ (hT2 n)).2).symm)

private theorem pf_Fhyp : C4 → E0a → KernelTermsInvariantBounded → E0d → E2 → E3 → Ecut → Fsum → F5 → F6 →
  Fhyp := by
  intro hC4 hE0a hE0c hE0d hE2 hE3 hEcut hFsum hF5 hF6 F I Gf ι _ _ _ _ D k a hyp b hb hint
  exact nonelliptic_terms_contribution hC4 hE0a hE0c hE0d hE2 hE3 hEcut hFsum hF5 hF6 D k a hyp b hb hint
end

section
variable {α β : Type*} [MeasurableSpace α] [MeasurableSpace β] [MeasurableSingletonClass α]

private theorem measurable_count_pair [Countable α] {E : Type*} [MeasurableSpace E] {f : α → β → E} (hf : ∀ a,
  Measurable (f a)) :
    Measurable (fun q : α × β => f q.1 q.2) := by
  intro s hs
  have e : (fun q : α × β => f q.1 q.2) ⁻¹' s = ⋃ a : α, ({a} : Set α) ×ˢ (f a ⁻¹' s) := by
    aesop

  rw [e]
  exact MeasurableSet.iUnion fun a => (measurableSet_singleton a).prod (hf a hs)

private theorem lintegral_count_prod (μ : Measure β) [SFinite μ] (f : α × β → ℝ≥0∞) (hf : Measurable f) :
    ∫⁻ q, f q ∂(count.prod μ) = ∑' a, ∫⁻ y, f (a, y) ∂μ := by
  rw [lintegral_prod f hf.aemeasurable, lintegral_count]

private theorem count_prod {A B : Type*} [MeasurableSpace A] [MeasurableSpace B] [Countable A] [Countable B]
    [MeasurableSingletonClass A] [MeasurableSingletonClass B] :
    (count : Measure A).prod (count : Measure B) = count := by
  refine ext_iff_singleton.2 fun p => ?_
  rw [count_singleton, ← singleton_prod_singleton, prod_prod,
    count_singleton, count_singleton, one_mul]

private theorem pf_Fsum : E0a → Fsum := by
  intro h0 F I Gf _ _ _ D hax
  obtain ⟨hcG, hsig, -⟩ := h0 F I Gf D hax
  have : Countable D.Cj := hcG
  have := hax.cO
  have : SFinite D.μY := by
    unfold Dat.μY
    infer_instance
  intro b hb
  refine ⟨⟨hb.meas.comp (measurable_fst.snd.prodMk measurable_snd), fun p => hb.nonneg _,
    fun p => hb.sum (p.1.2, p.2)⟩, ?_⟩
  intro u hu hfin
  have hgm :=
    measurable_count_pair (f := fun (c : D.Cj) (y : D.Y) => b y • u (D.el c) y) fun c => hb.meas.smul (hu
      (D.el c))
  have hlin : ∫⁻ q, ‖b q.2 • u (D.el q.1) q.2‖ₑ ∂(count.prod D.μY) =
      ∫⁻ y, ENNReal.ofReal (b y) * ∑' γ, ‖u γ y‖ₑ ∂D.μY := by
    calc ∫⁻ q, ‖b q.2 • u (D.el q.1) q.2‖ₑ ∂(count.prod D.μY)
        = ∑' c : D.Cj, ∫⁻ y, ‖b y • u (D.el c) y‖ₑ ∂D.μY :=
          lintegral_count_prod D.μY (fun q : D.Cj × D.Y => ‖b q.2 • u (D.el q.1) q.2‖ₑ) hgm.eNorm
      _ = ∫⁻ y, ∑' c : D.Cj, ‖b y • u (D.el c) y‖ₑ ∂D.μY :=
          (lintegral_tsum fun c => ((hb.meas.smul (hu (D.el c))).eNorm).aemeasurable).symm
      _ = ∫⁻ y, ENNReal.ofReal (b y) * ∑' γ, ‖u γ y‖ₑ ∂D.μY := by
          refine lintegral_congr fun y => ?_
          simp only [eNorm_smul, eNorm_of_nonneg (hb.nonneg y)]
          exact ENNReal.tsum_mul_left
  have hgi : Integrable (fun q : D.Cj × D.Y => b q.2 • u (D.el q.1) q.2) (count.prod D.μY) := by
    refine ⟨hgm.aestronglyMeasurable, ?_⟩
    show ∫⁻ q, ‖b q.2 • u (D.el q.1) q.2‖ₑ ∂(count.prod D.μY) < ⊤
    simp_all

  have hae : ∀ᵐ y ∂D.μY, ∫ c, b y • u (D.el c) y ∂(count : Measure D.Cj) = b y • ∑' γ, u γ y := by
    filter_upwards [hgi.prod_left_ae] with y hy
    rw [integral_countable hy]
    simp
    exact tsum_const_smul'' (b y)
  have hP := hgi.integral_prod_right.congr hae
  have hm1 :=
    measurable_count_pair (α := D.Cj × D.Om) (β := D.Xs) (f := fun a z => u (D.el a.1) (a.2, z))
      fun a => (hu (D.el a.1)).comp measurable_prodMk_left
  have hmp : MeasurePreserving (prodAssoc : (D.Cj × D.Om) × D.Xs ≃ᵐ D.Cj × D.Om × D.Xs)
      D.μC (count.prod D.μY) := by
    have e : D.μC = (count.prod count).prod volume := by
      unfold Dat.μC
      rw [count_prod]
    rw [e]
    exact measurePreserving_prodAssoc _ _ _
  have hC : Integrable (fun p : (D.Cj × D.Om) × D.Xs => b (p.1.2, p.2) • u (D.el p.1.1) (p.1.2, p.2)) D.μC :=
    (hmp.integrable_comp_emb (MeasurableEquiv.measurableEmbedding _)).2 hgi
  have hint : ∫ y, b y • ∑' γ, u γ y ∂D.μY =
      ∫ p, b (p.1.2, p.2) • u (D.el p.1.1) (p.1.2, p.2) ∂D.μC := by
    calc ∫ y, b y • ∑' γ, u γ y ∂D.μY
        = ∫ y, ∫ c, b y • u (D.el c) y ∂(count : Measure D.Cj) ∂D.μY := (integral_congr_ae hae).symm
      _ = ∫ q, b q.2 • u (D.el q.1) q.2 ∂(count.prod D.μY) := (integral_prod_symm _ hgi).symm
      _ = ∫ p, b (p.1.2, p.2) • u (D.el p.1.1) (p.1.2, p.2) ∂D.μC :=
          (hmp.integral_comp' (fun q : D.Cj × D.Y => b q.2 • u (D.el q.1) q.2)).symm
  simp_all
end

private theorem lintegral_fintype_prod_le {I : Type} [Fintype I] (hσ : SigmaFinite (volume : Measure P))
    (f : I → P → ℝ) (hf0 : ∀ v x, 0 ≤ f v x) (hm : ∀ v, Measurable (f v))
    (C : I → ℝ≥0) (hC : ∀ v, ∫⁻ x, ENNReal.ofReal (f v x) ≤ C v) :
    ∫⁻ w : I → P, ENNReal.ofReal (∏ v, f v (w v)) ≤ ((∏ v, C v : ℝ≥0) : ℝ≥0∞) := by
  have := hσ
  have hint : ∀ v, Integrable (f v) := by
    intro v
    refine ⟨(hm v).aestronglyMeasurable, ?_⟩
    rw [hasFiniteIntegral_iff_ofReal (ae_of_all _ (hf0 v))]
    exact lt_of_le_of_lt (hC v) coe_lt_top
  rw [← ofReal_integral_eq_lintegral_ofReal (by
    exact Integrable.fintype_prod hint) (ae_of_all _ (fun w => Finset.prod_nonneg fun v _ => hf0 v (w v))),
    integral_fintype_prod_volume_eq_prod,
    ofReal_prod_of_nonneg (fun v _ => integral_nonneg (hf0 v)), ofNNReal_finsetProd]
  refine Finset.prod_le_prod fun v _ => ?_
  rw [ofReal_integral_eq_lintegral_ofReal (hint v) (ae_of_all _ (hf0 v))]
  simp_all

private theorem kap_rpow_bound_of_near (hB : B1c) (z w w' : P) (h : 1 / 2 ≤ kap w w') (e : ℝ) (he : 0 ≤ e) :
    kap z w ^ e ≤ (8 : ℝ) ^ e * kap z w' ^ e := by
  obtain ⟨h1, -, h3, -⟩ := hB
  have hzw := (h1 z w).1
  have hzw' := (h1 z w').1

  calc kap z w ^ e ≤ (8 * kap z w') ^ e := Real.rpow_le_rpow hzw (by
    nlinarith [h3 z w w']) he
    _ = (8 : ℝ) ^ e * kap z w' ^ e := mul_rpow (by
      norm_num) hzw'

private theorem im_ratio_bound_of_near (hB : B1c) (z w w' : P) (h : 1 / 2 ≤ kap w w') :
    (|z.1.im| / |w.1.im|) ^ ((1 : ℝ) / 2) ≤ (8 : ℝ) ^ ((1 : ℝ) / 2) * (|z.1.im| / |w'.1.im|) ^ ((1 : ℝ) / 2)
      := by
  obtain ⟨-, -, -, h4, -⟩ := hB
  have hw := abs_pos.mpr w.2
  have hw' := abs_pos.mpr w'.2
  have hz : 0 ≤ |z.1.im| := abs_nonneg _
  have hww : |w'.1.im| ≤ 8 * |w.1.im| := by
    nlinarith [h4 w w']
  calc (|z.1.im| / |w.1.im|) ^ ((1 : ℝ) / 2) ≤ (8 * (|z.1.im| / |w'.1.im|)) ^ ((1 : ℝ) / 2) :=
        Real.rpow_le_rpow (div_nonneg hz hw.le) (by
    rw [mul_div_assoc', div_le_div_iff₀ hw hw']
    nlinarith) (by
      norm_num)
    _ = (8 : ℝ) ^ ((1 : ℝ) / 2) * (|z.1.im| / |w'.1.im|) ^ ((1 : ℝ) / 2) :=
        mul_rpow (by
          norm_num) (div_nonneg hz hw'.le)

private theorem pf_KapInt : B1a → B1b → B1c → B6 → KapInt := by
  rintro ⟨hσ, -⟩ _ hB h6 I _ k hk
  have h0 a b (e : ℝ) := rpow_nonneg (hB.1 a b).1 e
  have hm a : Measurable (kap a) := hB.2.2.2.2.1.measurable.comp measurable_prodMk_left
  choose C hC using fun v => h6 (k v) (hk v)
  refine ⟨∏ v, C v, ∏ v, (8 : ℝ≥0) ^ (k v / 2 : ℝ) * 8 ^ (1 / 2 : ℝ), fun z => ⟨(by
    unfold Kap
    fun_prop), lintegral_fintype_prod_le hσ (fun v t => kap (z v) t ^ (k v / 2 : ℝ)) (fun v t => h0 _ _ _) (fun v => by fun_prop) C fun v => (hC v (z v)).1, ?_, fun w w' hn => ⟨?_, ?_⟩⟩⟩
  · simp only [Kap, ← Finset.prod_mul_distrib]
    exact lintegral_fintype_prod_le hσ (fun v t => kap (z v) t ^ (k v / 2 : ℝ) * (|(z v).1.im| / |t.1.im|) ^
      (1 / 2 : ℝ)) (fun v t => mul_nonneg (h0 _ _ _) (by
      positivity)) (fun v => by fun_prop) C fun v => (hC v (z v)).2
  all_goals
    push_cast [Kap, ← Finset.prod_mul_distrib]
    refine Finset.prod_le_prod₀ (fun v _ => by
      have := h0 (z v) (w v) (k v / 2 : ℝ)
      positivity) fun v _ => ?_
  · exact (kap_rpow_bound_of_near hB _ _ _ (hn v) _ (by
    positivity)).trans (mul_le_mul_of_nonneg_right (le_mul_of_one_le_right (by
      positivity) (one_le_rpow (by
        norm_num) (by
          norm_num))) (h0 _ _ _))
  · rw [mul_mul_mul_comm]
    exact mul_le_mul (kap_rpow_bound_of_near hB _ _ _ (hn v) _ (by
      positivity)) (im_ratio_bound_of_near hB _ _ _ (hn v)) (by
        positivity) (mul_nonneg (by
          positivity) (h0 _ _ _))

private theorem pf_KapSum : Pack → Mult → KapInt → KapSum := by
  intro hP hM hK F I Gf _ _ _ D hD k hk c₀ hc₀
  obtain ⟨C₁, hC₁⟩ := hP F I Gf D hD
  obtain ⟨C₃, A₃, hK⟩ := hK I k hk
  obtain ⟨C₂, hC₂⟩ := hM F I Gf D hD (1 / 16) c₀ (by
    norm_num) hc₀
  refine ⟨C₁ * A₃ * C₂ * C₃, fun y s hs hy ω' z => ?_⟩
  obtain ⟨hfin, hcard⟩ := hC₂ y s hs hy
  obtain ⟨hmeas, hint, -, hnear⟩ := hK z
  refine (hC₁ y ω' _ A₃ (by
    fun_prop) (fun w w' h => (ofReal_le_ofReal (hnear w w' h).1).trans_eq (by
      simp)) hfin).trans ((mul_le_mul_right hint _).trans ((ofReal_toReal (by
        finiteness)).symm.trans_le (ofReal_le_ofReal ?_)))
  simp
  nlinarith [mul_nonneg (mul_nonneg C₁.coe_nonneg A₃.coe_nonneg) C₃.coe_nonneg]

theorem linear_trace_identity_proof : LinTr := by
  intro A Y _ ν _ V _ T K ev n _ hn hK hev hKb hevb hrep
  choose CK hCK using hKb
  choose CD hCD using hevb
  have key (φ : Dual ℂ V) (f : V) : Measurable (fun y => φ (K y) * f.1 (ev y)) ∧ ∫ y, φ (K y) * f.1 (ev y) ∂ν
    = φ f ∧ ∃ C, ∀ y, ‖φ (K y) * f.1 (ev y)‖ ≤ C := by
    induction (FiniteDimensional.mem_span_of_iInf_ker_le_ker (L := fun a => LinearMap.proj a ∘ₗ V.subtype) (K
      := φ) (by
      simp [LinearMap.ker_comp, ← Submodule.comap_iInf, LinearMap.iInf_ker_proj])) using span_induction with
    | mem _ h =>
      obtain ⟨a, rfl⟩ := h
      refine ⟨(hK a).mul (hev f), hrep f a, CK a * CD f, fun y => ?_⟩
      simp
      nlinarith [hCK a y, hCD f y, hn y, norm_nonneg ((K y).1 a), mul_nonneg (hn y).le (norm_nonneg (f.1 (ev
        y)))]
    | zero => aesop
    | add φ ψ _ _ h₁ h₂ =>
      obtain ⟨m₁, e₁, C₁, b₁⟩ := h₁
      obtain ⟨m₂, e₂, C₂, b₂⟩ := h₂
      simp [add_mul]
      exact ⟨m₁.add m₂, by rw [integral_add (.of_bound m₁.aestronglyMeasurable C₁ (ae_of_all _ b₁)) (.of_bound m₂.aestronglyMeasurable C₂ (ae_of_all _ b₂)), e₁, e₂], C₁ + C₂, fun y => (norm_add_le _ _).trans (add_le_add (b₁ y) (b₂ y))⟩
    | smul c φ _ h =>
      obtain ⟨m, e, C, b⟩ := h
      simp [mul_assoc]
      exact ⟨m.const_mul c, by rw [integral_const_mul, e], ‖c‖ * C, fun y => by
        gcongr
        simp_all⟩
  let b := finBasis ℂ V
  have hexp y : (T (K y)).1 (ev y) = ∑ i, b.coord i (K y) * (T (b i)).1 (ev y) := by
    conv_lhs => rw [← b.sum_repr (K y), _root_.map_sum]
    simp
  choose C hC using fun i => (key (b.coord i) (T (b i))).2.2
  simp only [hexp]
  refine ⟨Finset.measurable_sum _ fun i _ => (key _ _).1, ⟨∑ i, C i, fun y => (norm_sum_le _ _).trans
    (Finset.sum_le_sum fun i _ => hC i y)⟩, ?_⟩
  rw [LinearMap.trace_eq_matrix_trace ℂ b T, trace, integral_finsetSum _ fun i _ => .of_bound (key _
    _).1.aestronglyMeasurable _ (ae_of_all _ (hC i))]
  simp only [fun φ f => (key φ f).2.1]
  simp [LinearMap.toMatrix_apply]

section
variable {F ι Gf : Type} [Field F] [Group Gf] (D : Dat F ι Gf)

private theorem kap_smul (hb : B1b) (δ : PG F) (a b : D.Xs) v :
    kap ((δ • a) v) ((δ • b) v) = kap (a v) (b v) := by
  induction δ using induction_on
  exact hb.2.2.2.1 _ _ _

private def near_stabilizer (δ : ℝ) (y : D.Y) : Set (PG F) := {γ | γ • y.1 = y.1 ∧ Near δ y.2 (γ • y.2)}

private theorem near_stabilizer_conj (hB : B1b) δ (g : PG F) (y y' : D.Y) (e : g • y = y') (hf :
  (near_stabilizer D δ y').Finite) :
    (near_stabilizer D δ y).Finite ∧ (near_stabilizer D δ y).ncard ≤ (near_stabilizer D δ y').ncard := by
  have hm : MapsTo (fun γ => g * γ * g⁻¹) (near_stabilizer D δ y) (near_stabilizer D δ y') := fun γ _ => by
    subst e
    simp_all [near_stabilizer, mul_smul, Near, kap_smul D hB]
  exact ⟨hf.of_injOn hm fun a _ b _ h => by simp_all, ncard_le_ncard_of_injOn _ hm (fun a _ b _ h => by simp_all) hf⟩

private theorem pf_Mult : B1b → E0d → Mult := by
  intro hB hE F I Gf _ _ _ D hD δ c₀ hδ hc₀
  obtain ⟨-, h2, h3, -, -, -, -, -, -, h10, -⟩ := hE F I Gf D hD
  obtain ⟨S, C, c, hc, hnorm⟩ := hD.normal c₀ hc₀
  choose C' hC' using fun x => hD.count (x : Gf ⧸ D.H) δ C c hδ hc
  refine ⟨∑ x ∈ S, |C' x| * (1 + 1 / D.hf ![0, 1] (D.rep (x : Gf ⧸ D.H))), fun y s hs hy => ?_⟩
  obtain ⟨γ₀, rfl⟩ := h10 s hs
  rw [← h2 _ row_zero_one_ne_zero] at hy ⊢
  set y₀ := (γ₀ : PG F) • y
  obtain ⟨b, hb10, ⟨x', hx'S, h, hh, hbx⟩, hsg⟩ := hnorm _ _ hy
  have hy'' : (b : PG F) • y₀ = ((x' : Gf ⧸ D.H), D.act b y₀.2) := Prod.ext (by
    rw [Prod.smul_fst, ← out_eq' y₀.1]
    exact (congrArg _ hbx).trans (mk_mul_of_mem x' hh)) rfl
  obtain ⟨hfin, hle⟩ := hC' x' _ hsg
  obtain ⟨f, c⟩ := near_stabilizer_conj D hB δ _ y _ ((mul_smul _ _ _).trans hy'') hfin
  have ha := hD.pos _ row_zero_one_ne_zero (D.rep (x' : Gf ⧸ D.H))
  have hPa : (∏ v, |(D.act b y₀.2 v).1.im|) = D.HtY ![0, 1] y₀ / D.hf ![0, 1] (D.rep (x' : Gf ⧸ D.H)) := by
    rw [eq_div_iff ha.ne', ← h3 _ row_zero_one_ne_zero (b 1 1) fun h0 => b.det_ne_zero (by simp [det_fin_two, hb10, h0]), ← show ![0, 1] ᵥ* b.val = b 1 1 • ![0, 1] by
        ext i
        fin_cases i <;> simp [vecMul, dotProduct, hb10],
      ← h2 _ row_zero_one_ne_zero, hy'']
    simp [Dat.HtY, Dat.Ht]
  rw [hPa, div_eq_mul_one_div] at hle
  refine ⟨f, ((Nat.cast_le.2 c).trans hle).trans (le_trans ?_ (mul_le_mul_of_nonneg_right (Finset.single_le_sum (fun x _ => ?_) hx'S) (by linarith)))⟩
  · nlinarith [le_abs_self (C' x'), abs_nonneg (C' x'), one_div_nonneg.2 ha.le,
      mul_nonneg (hc₀.le.trans hy) (one_div_nonneg.2 ha.le)]
  · have := hD.pos _ row_zero_one_ne_zero (D.rep (x : Gf ⧸ D.H))
    positivity

private theorem pf_Pack : B1b → B1c → E0a → Pack := by
  intro hb hc hE F I Gf _ _ _ D hax
  obtain ⟨_, -, -, -, -, -, -, hnear⟩ := hE F I Gf D hax
  obtain ⟨c, hc0, hcz⟩ := hnear (1 / 2) (by
    norm_num)
  refine ⟨c⁻¹, fun y ω' h A hh hA hfin => ?_⟩
  set S0 := near_stabilizer D (1 / 16) y
  have hfin : S0.Finite := hfin
  let Sg (γ : {γ : PG F // γ • y.1 = ω'}) := {w : D.Xs | Near (1 / 2) (γ.1 • y.2) w}
  have hSm γ : MeasurableSet (Sg γ) := (hcz _).1
  have one γ : c * h (γ.1 • y.2) ≤ A * ∫⁻ w, (Sg γ).indicator h w := by
    rw [lintegral_indicator (hSm γ), ← lintegral_const_mul _ hh, mul_comm (c : ℝ≥0∞)]
    exact (mul_le_mul_right (hcz _).2 _).trans ((setLIntegral_const _ _).symm.trans_le (setLIntegral_mono'
      (hSm γ) fun w => hA _ _))
  have cnt w : ∑' γ, (Sg γ).indicator h w ≤ S0.ncard * h w := by
    rcases em (∃ γ₁, w ∈ Sg γ₁) with ⟨γ₁, hγ₁⟩ | hT
    · refine (tsum_le_tsum fun γ => ?_).trans ((tsum_comp_le_tsum_of_injective (f := fun γ => γ₁.1⁻¹ * γ.1)
      (fun a b hab => Subtype.ext (mul_left_cancel hab)) (S0.indicator fun _ => h w)).trans_eq ?_)
      · refine indicator_apply_le' (fun hw => (indicator_of_mem (s := S0) ⟨by rw [mul_smul, γ.2, inv_smul_eq_iff, γ₁.2], fun v => ?_⟩ fun _ => h w).ge) fun _ => by simp
        have := kap_smul D hb γ₁.1 y.2 ((γ₁.1⁻¹ * γ.1) • y.2) v
        rw [smul_smul, mul_inv_cancel_left] at this
        nlinarith [hγ₁ v, hw v, (hc.1 ((γ.1 • y.2) v) (w v)).2.2, hc.2.2.1 ((γ₁.1 • y.2) v) (w v) ((γ.1 • y.2)
          v)]
      · simp [← tsum_subtype, ← hfin.cast_ncard_eq]
    simp_all
  rw [coe_inv hc0.ne', mul_assoc, mul_assoc, ← ENNReal.mul_le_iff_le_inv (coe_ne_zero.2 hc0.ne') coe_ne_top, ←
    ENNReal.tsum_mul_left]
  refine (tsum_le_tsum one).trans ?_
  rw [ENNReal.tsum_mul_left, ← lintegral_tsum fun γ => (hh.indicator (hSm γ)).aemeasurable, ←
    lintegral_const_mul _ hh]
  exact mul_le_mul_right (lintegral_mono cnt) _

end

private theorem radial_kernel_conj (h2 : B1b) (k : ℕ) (g h : GL (Fin 2) ℝ) (z : P) :
    radial_kernel k (h⁻¹ * g * h) z = radial_kernel k g (h • z) := by
  obtain ⟨hj, hjne, hq, -⟩ := h2
  have := hj k h (h⁻¹ * g * h) z
  have := hq k h z ((h⁻¹ * g * h) • z)
  simp [radial_kernel, mul_smul, mul_assoc] at *
  grind

private theorem integral_comp_halfPlane_smul (h1 : B1a) (h : GL (Fin 2) ℝ) (f : P → ℂ) :
    (Integrable (fun z => f (h • z)) ↔ Integrable f) ∧ ∫ z, f (h • z) = ∫ z, f z := by
  have : ContinuousConstSMul (GL (Fin 2) ℝ) P := ⟨fun g => (h1.2.2 g).1⟩
  exact ⟨(h1.2.2 h).2.integrable_comp_emb (Homeomorph.smul h).measurableEmbedding, (h1.2.2 h).2.integral_comp
    (Homeomorph.smul h).measurableEmbedding f⟩

private def reflection : GL (Fin 2) ℝ := GeneralLinearGroup.mkOfDetNeZero !![1, 0; 0, -1] (by
  simp)

private theorem reflection_mul_self : reflection * reflection = 1 := Units.ext (by
  simp [reflection, Matrix.one_fin_two])

private theorem reflection_smul (z : P) : (reflection • z).1 = -z.1 := by
  simp [coe_smul, num, den, reflection, div_neg]

private theorem radial_integral_at_rotation (h1 : B1a) (h2 : B1b) (h3 : B1c) (h22 : B2) (h6 : B6) (k : ℕ) (hk
  : 4 ≤ k)
    (m : GL (Fin 2) ℝ) (a b : ℝ)
    (h00 : m 0 0 = a) (h01 : m 0 1 = b) (h10 : m 1 0 = -b) (h11 : m 1 1 = a) (hb : b ≠ 0) :
    Integrable (radial_kernel k m) ∧ ∫ z, radial_kernel k m z = rotation_eigenvalue a b ^ k / (1 -
      rotation_eigenvalue a b ^ 2) + rotation_eigenvalue a (-b) ^ k / (1 - rotation_eigenvalue a (-b) ^ 2) :=
      by
  obtain ⟨C, hC⟩ := h6 k hk
  have hF z := radial_kernel_conj h2 k (reflection * m * reflection) reflection z
  obtain ⟨-, -, -, -, hj, hq, hjc, hqc, -⟩ := h2
  have hkn z w := (h3.1 z w).1
  have key (m : GL (Fin 2) ℝ) a b (h00 : m 0 0 = a) (h01 : m 0 1 = b) (h10 : m 1 0 = -b) (h11 : m 1 1 = a) (hb
    : b ≠ 0) : Integrable (positive_radial_kernel k m) ∧ ∫ z, positive_radial_kernel k m z =
    rotation_eigenvalue a b ^ k / (1 - rotation_eigenvalue a b ^ 2) := by
    have hI : Integrable (positive_radial_kernel k m) := by
      have : (1 : ℝ) ≤ k := by
        bound
      refine (Integrable.const_mul ⟨(Measurable.pow_const (f := kap iP) (h3.2.2.2.2.1.measurable.comp
        measurable_prodMk_left) _).aestronglyMeasurable, (hasFiniteIntegral_iff_ofReal (ae_of_all _ fun w =>
        rpow_nonneg (hkn iP w) _)).2 ((hC iP).1.trans_lt coe_lt_top)⟩ ((k - 1 : ℝ) / (4 * π) * ((a ^ 2 + b ^
        2) / b ^ 2) ^ (k / 2 : ℝ))).mono' ((Measurable.ite (measurableSet_lt measurable_const (by
        fun_prop)) (((hqc k).comp (continuous_id.prodMk (h1.2.2 m).1)).mul (hjc k m)).measurable
          measurable_const).aestronglyMeasurable) (ae_of_all _ fun z => ?_)
      have := hkn iP z
      simp [positive_radial_kernel]
      split_ifs with hz
      · have := hkn z (m • z)
        have := kap_rotation_bound m a b h00 h01 h10 h11 hb z hz
        rw [show ‖radial_kernel k m z‖ =
            (k - 1 : ℝ) / (4 * π) * kap z (m • z) ^ (k / 2 : ℝ) by
              simp [radial_kernel]
              grind [rpow_pos_of_pos (abs_pos.2 z.2) (k / 2 : ℝ)],
            mul_assoc, ← mul_rpow (by positivity) (by positivity)]
        gcongr
      · simp
        positivity
    have hp := sqrt_ne_zero'.2 (by
      positivity : 0 < a ^ 2 + b ^ 2)
    have hζ1 : rotation_eigenvalue a b ^ 2 ≠ 1 := fun h => by simp [rotation_eigenvalue, Complex.ext_iff, hb, hp] at h
    have hne (r : ℝ) : 1 - rotation_eigenvalue a b ^ 2 * r ^ 2 ≠ 0 := fun h => by
      have := congrArg norm (eq_of_sub_eq_zero h).symm
      simp [rotation_eigenvalue, Complex.norm_eq_sqrt_sq_add_sq, hp, abs_of_nonneg (sqrt_nonneg _)] at this
      rcases this with rfl | rfl <;> exact hζ1 (by
        simpa using (sub_eq_zero.1 h).symm)
    refine ⟨hI, (h22 (positive_radial_kernel _ m) (fun z hz => ite_eq_right (lt_asymm hz)) hI).2.trans ?_⟩
    obtain ⟨n, rfl⟩ := Nat.exists_eq_add_of_le' (by
      lia : 2 ≤ k)
    rw [setIntegral_congr_fun (by
      measurability) fun p hp => ?_, volume_eq_prod, setIntegral_prod_mul (fun r : ℝ => 4 * r * (1 - r ^ 2) ^
        n / (1 - rotation_eigenvalue a b ^ 2 * r ^ 2) ^ (n + 2)) fun _ => (n + 1) / (4 * π) *
        rotation_eigenvalue a b ^ (n + 2), ← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le
        zero_le_one, intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun r : ℝ => -2 / ((n + 1) * (1 -
        rotation_eigenvalue a b ^ 2)) * ((1 - r ^ 2) / (1 - rotation_eigenvalue a b ^ 2 * r ^ 2)) ^ (n + 1))
        (fun x _ => ?_) ?_, setIntegral_const, volume_real_Ioo_of_le (neg_le_self pi_pos.le)]
    · simp
      field_simp
      ring
    · apply Continuous.intervalIntegrable
      fun_prop (disch := simp_all)
    · have d := hasDerivAt_pow 2 (x : ℂ)
      refine (((((d.const_sub 1).div ((d.const_mul _).const_sub 1) (hne x)).pow (n + 1)).const_mul
        _).comp_ofReal).congr_deriv ?_
      push_cast [Pi.div_apply, div_pow]
      field_simp
      ring
    obtain ⟨⟨h0, h1⟩, -⟩ := hp
    rw [radial_kernel_cayley _ _ _ _ h00 h01 h10 h11 hb _ _ h0 h1]
    have : (1 - (p.1 : ℂ) ^ 2) ≠ 0 := sub_ne_zero.2 (by
      exact_mod_cast (pow_lt_one₀ h0.le h1 two_ne_zero).ne')
    push_cast [div_pow, mul_pow]
    field_simp
    ring
  obtain ⟨hI1, hJ1⟩ := key m a b h00 h01 h10 h11 hb
  obtain ⟨hc1, hc2⟩ := integral_comp_halfPlane_smul h1 reflection (positive_radial_kernel k (reflection * m *
    reflection))
  simp [mul_assoc, reflection_mul_self] at hF
  rw [show radial_kernel k m = fun z => positive_radial_kernel k m z + positive_radial_kernel k (reflection *
    m * reflection) (reflection • z) from funext fun z => by
    simp [positive_radial_kernel, reflection_smul]
    grind]
  refine (key (reflection * m * reflection) a (-b) ?_ ?_ ?_ ?_ (neg_ne_zero.2 hb)).elim fun hI2 hJ2 => ⟨hI1.add (hc1.2 hI2), by rw [integral_add hI1 (hc1.2 hI2), hc2, hJ1, hJ2]⟩
  all_goals simp [reflection, Matrix.mul_apply, vecMul, dotProduct, h00, h01, h10, h11]

private theorem rotation_entries_of_fix_iP (m : GL (Fin 2) ℝ) (hm : m • iP = iP) : m 1 1 = m 0 0 ∧ m 1 0 = -(m
  0 1) := by
  have h := congrArg Subtype.val hm
  rw [coe_smul, div_eq_iff (den_ne m iP.2)] at h
  simp [Complex.ext_iff, num, den, iP] at h
  grind

private theorem ch_mul_sub {R : Type*} [CommRing R] (x y : R) : ∀ n, ch (x + y) (x * y) n * (x - y) = x ^ n -
  y ^ n
  | 0 | 1 => by simp [ch]
  | n + 2 => by grind [ch, ch_mul_sub x y n, ch_mul_sub x y (n + 1)]

private theorem ch_ofReal (t d : ℝ) : ∀ n, ((ch t d n : ℝ) : ℂ) = ch (t : ℂ) (d : ℂ) n
  | 0 | 1 => rfl
  | n + 2 => by simp [ch, ch_ofReal t d n, ch_ofReal t d (n + 1)]

section
variable {F I Gf : Type} [Field F] [Group Gf] [Fintype I] (D : Dat F I Gf)
private theorem exists_matrix_with_last_row (s : Fin 2 → F) (hs : s ≠ 0) : ∃ γ : GL (Fin 2) F, ![0, 1] ᵥ*
  γ.val = s := by
  by_cases h0 : s 0 = 0
  · have h1 : s 1 ≠ 0 := fun h1 => hs (by
    funext i
    fin_cases i <;> simp_all)
    refine ⟨GeneralLinearGroup.mkOfDetNeZero !![1, 0; s 0, s 1] (by
      simp_all), ?_⟩
    funext i
    fin_cases i <;> simp
  · refine ⟨GeneralLinearGroup.mkOfDetNeZero !![0, 1; s 0, s 1] (by
    simp_all), ?_⟩
    funext i
    fin_cases i <;> simp
end

private theorem exists_upper_triangular_map_iP (z : P) : ∃ g : GL (Fin 2) ℝ, g 1 0 = 0 ∧ g 1 1 = 1 ∧ g • iP =
  z := by
  have hdet : (!![z.1.im, z.1.re; 0, 1] : Matrix (Fin 2) (Fin 2) ℝ).det ≠ 0 := by
    rw [det_fin_two_of]
    grind
  refine ⟨GeneralLinearGroup.mkOfDetNeZero _ hdet, rfl, rfl, Subtype.ext ?_⟩
  show num (GeneralLinearGroup.mkOfDetNeZero _ hdet) Complex.I /
    den (GeneralLinearGroup.mkOfDetNeZero _ hdet) Complex.I = z.1
  have h00 : (GeneralLinearGroup.mkOfDetNeZero _ hdet) 0 0 = z.1.im := rfl
  have h01 : (GeneralLinearGroup.mkOfDetNeZero _ hdet) 0 1 = z.1.re := rfl
  have h10 : (GeneralLinearGroup.mkOfDetNeZero _ hdet) 1 0 = 0 := rfl
  have h11 : (GeneralLinearGroup.mkOfDetNeZero _ hdet) 1 1 = 1 := rfl
  rw [num, den, h00, h01, h10, h11]
  apply Complex.ext <;> simp

private theorem rotation_eigenvalue_sq_properties (a b : ℝ) (hb : b ≠ 0) : ‖rotation_eigenvalue a b ^ 2‖ = 1 ∧
  rotation_eigenvalue a b ^ 2 ≠ 1 := by
  have hp : 0 < a ^ 2 + b ^ 2 := by
    positivity
  constructor
  · rw [norm_pow, Complex.sq_norm, rotation_eigenvalue, normSq_div, normSq_ofReal,
      mul_self_sqrt hp.le, normSq_apply]
    simp
    field_simp
  · intro h
    have h' : ((a : ℂ) - b * Complex.I) ^ 2 = ((Real.sqrt (a ^ 2 + b ^ 2) ^ 2 : ℝ) : ℂ) := by
      rw [rotation_eigenvalue, div_pow, div_eq_one_iff_eq (pow_ne_zero 2 (by
        aesop))] at h
      simp_all
    have h2 := congrArg re h'
    simp [sq] at h2
    grind

theorem radial_integral_formula_proof : B6 → B4 := by
  intro h6 k hk g hg
  obtain ⟨z0, hz0⟩ := exists_fixed_point g hg
  obtain ⟨h, -, -, hh⟩ := exists_upper_triangular_map_iP z0
  obtain ⟨e11, e10⟩ := rotation_entries_of_fix_iP (h⁻¹ * g * h) (by
    simp [mul_smul, hh, hz0, inv_smul_eq_iff])
  rw [← trace_units_conj' h, ← det_units_conj' h, ← Units.val_mul, ← Units.val_mul, trace_fin_two,
    det_fin_two, e11, e10] at hg ⊢
  have hb : (h⁻¹ * g * h) 0 1 ≠ 0 := by
    nlinarith
  obtain ⟨hI, hJ⟩ := radial_integral_at_rotation half_plane_measure_invariant_proof
    automorphy_factor_kernel_algebra_proof hyperbolic_kappa_properties_proof cayley_transform_proof h6 k hk _
    _ _ rfl rfl e10 e11 hb
  obtain ⟨hc1, hc2⟩ := integral_comp_halfPlane_smul half_plane_measure_invariant_proof h (radial_kernel k g)
  have e := funext (radial_kernel_conj automorphy_factor_kernel_algebra_proof k g h)
  refine ⟨hc1.1 (e ▸ hI), ?_⟩
  obtain ⟨n, rfl⟩ : ∃ n, k = n + 2 := ⟨k - 2, by lia⟩
  refine hc2.symm.trans ((congrArg _ e).symm.trans (hJ.trans ?_))
  generalize (h⁻¹ * g * h).1 0 0 = a at hb ⊢
  generalize (h⁻¹ * g * h).1 0 1 = b at hb ⊢
  have hp : 0 < a ^ 2 + b ^ 2 := by
    positivity
  rw [show a * a - b * -b = a ^ 2 + b ^ 2 by ring,
    show (a ^ 2 + b ^ 2) ^ (1 - ((n + 2 : ℕ) : ℝ) / 2) = (√(a ^ 2 + b ^ 2) ^ n)⁻¹ by
      rw [sqrt_eq_rpow, ← rpow_mul_natCast hp.le, ← rpow_neg hp.le]
      grind]
  have hss := congrArg ((↑) : ℝ → ℂ) (sq_sqrt hp.le)
  have hsc := Complex.ofReal_ne_zero.2 (sqrt_ne_zero'.2 hp)
  have key := ch_mul_sub ((a:ℂ) + b * I) (a - b * I) (n + 1)
  rw [show (a : ℂ) + b * I + (a - b * I) = ((a + a : ℝ) : ℂ) by simp,
    show ((a : ℂ) + b * I) * (a - b * I) = ((a ^ 2 + b ^ 2 : ℝ) : ℂ) by
      push_cast
      grind [I_sq], ← ch_ofReal] at key
  have hv : (a:ℂ) + b * I = √(a^2+b^2) * rotation_eigenvalue a (-b) := by
    simp [rotation_eigenvalue]
    field_simp
  have hu : (a:ℂ) - b * I = √(a^2+b^2) * rotation_eigenvalue a b := by
    simp [rotation_eigenvalue]
    field_simp
  rw [hu, hv, mul_pow, mul_pow] at key
  push_cast at *
  have huv : rotation_eigenvalue a b * rotation_eigenvalue a (-b) = 1 := by
    simp [rotation_eigenvalue]
    field_simp
    linear_combination -hss - (b:ℂ)^2 * I_sq
  have h1 := sub_ne_zero.2 (rotation_eigenvalue_sq_properties a b hb).2.symm
  have h2 := sub_ne_zero.2 (rotation_eigenvalue_sq_properties a (-b) (neg_ne_zero.2 hb)).2.symm
  have := pow_ne_zero n hsc
  grind

/-! ## Logarithmic coordinates and unipotent vanishing -/

private abbrev nonzero_real : Type := {y : ℝ // y ≠ 0}

private def logarithmic_measure : Measure nonzero_real := (Measure.comap Subtype.val volume).withDensity fun y
  => ENNReal.ofReal (1 / |y.1|)

private def scale_nonzero (t : ℝ) (ht : t ≠ 0) (y : nonzero_real) : nonzero_real := ⟨t * y.1, mul_ne_zero ht
  y.2⟩

private theorem measurableEmbedding_nonzero_val : MeasurableEmbedding (Subtype.val : nonzero_real → ℝ) :=
  .subtypeVal (measurableSet_singleton 0).compl

private theorem map_logarithmic_measure :
    Measure.map Subtype.val logarithmic_measure = volume.withDensity fun y => ENNReal.ofReal (1 / |y|) := by
  refine ext_of_lintegral _ fun f hf => ?_
  rw [lintegral_map hf measurable_subtypeVal, logarithmic_measure, lintegral_withDensity_eq_lintegral_mul _
    (by
    fun_prop) (by
      fun_prop), lintegral_withDensity_eq_lintegral_mul _ (by
        fun_prop) hf]
  exact (lintegral_subtype_comap (measurableSet_singleton 0).compl (fun y => ENNReal.ofReal (1 / |y|) * f
    y)).trans (by
    simp)

private instance sigmaFinite_inverse_abs_density : SigmaFinite logarithmic_measure :=
  of_map logarithmic_measure measurable_subtypeVal.aemeasurable (by
    rw [map_logarithmic_measure]
    infer_instance)

private theorem map_coordinate_measure : Measure.map (fun p : ℝ × ℝ => (p.2 : ℂ) * (p.1 + I)) (volume.prod
  (Measure.map Subtype.val logarithmic_measure)) = volume.withDensity fun z : ℂ => ENNReal.ofReal (1 / z.im ^
  2) := by
  rw [map_logarithmic_measure]
  refine ext_of_lintegral _ fun f hf => ?_
  rw [lintegral_map hf (by
    fun_prop), prod_withDensity_right (by
      fun_prop), lintegral_withDensity_eq_lintegral_mul _ ?_ ?_, lintegral_withDensity_eq_lintegral_mul _ (by
        fun_prop) hf, MeasurePreserving.lintegral_map_equiv _ _ volume_preserving_equiv_real_prod.symm,
          volume_eq_prod, lintegral_prod_symm _ ?_, lintegral_prod_symm _ ?_]
  · refine lintegral_congr fun y => ?_
    rcases eq_or_ne y 0 with rfl | hy
    · simp
    have := lintegral_map (μ := volume) (f := fun u : ℝ => f (u + y * I)) (by
      fun_prop) (measurable_const_mul y)
    rw [map_volume_mul_left hy, lintegral_smul_measure] at this
    push_cast at this
    simp [mul_add, lintegral_const_mul', ← this, mk_eq_add_mul_I, ← mul_assoc]
    rw [← ENNReal.ofReal_mul (by
      positivity)]
    grind
  all_goals fun_prop

private def halfPlane_coordinates : ℝ × nonzero_real ≃ᵐ P where
  toFun p := pt p.1 p.2.1 p.2.2
  invFun z := (z.1.re / z.1.im, ⟨z.1.im, z.2⟩)
  left_inv := fun ⟨x, y, hy⟩ => by simp [pt]
                                   field_simp
  right_inv z := Subtype.ext (by
    have := z.2
    apply Complex.ext <;> simp [pt]; field_simp)
  measurable_toFun := Measurable.subtype_mk (by
    fun_prop)
  measurable_invFun := Measurable.prodMk (by
    fun_prop) (by
      fun_prop)

private theorem halfPlane_coordinates_measurePreserving : MeasurePreserving halfPlane_coordinates (volume.prod
  logarithmic_measure) volume := by
  refine ⟨halfPlane_coordinates.measurable, Measure.ext fun s hs => ?_⟩
  have hS := halfPlane_measurableEmbedding.measurableSet_image.2 hs
  have hΨ : Measurable fun p : ℝ × ℝ => (p.2 : ℂ) * (p.1 + I) := by
    fun_prop
  rw [halfPlane_coordinates.map_apply, volume_halfPlane_eq_lintegral s hs, ← withDensity_apply _ hS]
  unfold halfPlane_density
  rw [← map_coordinate_measure, Measure.map_apply hΨ hS, ← ((MeasurePreserving.id volume).prod
    (measurable_subtypeVal.measurePreserving logarithmic_measure)).measure_preimage (hΨ hS).nullMeasurableSet]
  congr 1
  ext p
  exact halfPlane_measurableEmbedding.injective.mem_set_image.symm

private theorem upper_half_plane_measure_coordinates : UpperHalfPlaneMeasureCoordinates :=
  ⟨halfPlane_coordinates_measurePreserving, halfPlane_coordinates.bijective, by
    unfold pt
    fun_prop⟩

private theorem measurePreserving_scale_nonzero (t : ℝ) (ht : t ≠ 0) : MeasurePreserving (scale_nonzero t ht)
  logarithmic_measure logarithmic_measure := by
  have hm : Measurable (scale_nonzero t ht) := (measurable_subtypeVal.const_mul t).subtype_mk
  refine ⟨hm, ?_⟩
  rw [← measurableEmbedding_nonzero_val.comap_map (Measure.map (scale_nonzero t ht) logarithmic_measure),
    Measure.map_map measurable_subtypeVal hm, show Subtype.val ∘ scale_nonzero t ht = (t * ·) ∘ Subtype.val
    from rfl, ← Measure.map_map (measurable_const_mul t) measurable_subtypeVal]
  convert measurableEmbedding_nonzero_val.comap_map logarithmic_measure using 2
  rw [map_logarithmic_measure]
  refine ext_of_lintegral _ fun f hf => ?_
  have := lintegral_map (μ := volume) (f := fun u => ENNReal.ofReal (1 / |u|) * f u) (by
    fun_prop) (measurable_const_mul t)
  rw [map_volume_mul_left ht, lintegral_smul_measure] at this
  rw [lintegral_map hf (measurable_const_mul t), lintegral_withDensity_eq_lintegral_mul _ (by
    fun_prop) (by
      fun_prop), lintegral_withDensity_eq_lintegral_mul _ (by
        fun_prop) hf]
  simp only [abs_mul, one_div, mul_inv, ENNReal.ofReal_mul (inv_nonneg.2 (abs_nonneg t)), mul_assoc,
    lintegral_const_mul' _ _ ENNReal.ofReal_ne_top, abs_inv] at this
  simp
  exact ((ENNReal.mul_right_inj (by
    positivity) ENNReal.ofReal_ne_top).1 this).symm

private theorem pf_TF : E2 → Ecut → E6 → Fell → Fhyp → TF := by
  intro hE2 hcut hE6 hFell hFhyp F I Gf _ _ _ D hAx ι _ a
  classical
  obtain ⟨S, hFam, hS⟩ := hFell F I Gf D hAx ι a
  refine ⟨S, hFam, fun k hH hfd h => ?_⟩
  obtain ⟨⟨b, hb⟩, -⟩ := hcut F I Gf D hAx
  obtain ⟨hi, htr⟩ := hE6 F I Gf ι D k a hH hfd h b hb
  obtain ⟨hie, hge⟩ := hS k hH b hb
  have e : ∀ y, b y • ∑' γ : PG F, D.kk k a γ y - b y • (∑' γ : PG F, if IsEll γ then D.kk k a γ y else 0) = b
    y • ∑' γ : PG F, if IsEll γ then 0 else D.kk k a γ y := fun y => by
    have hs := (hE2 F I Gf ι D k a hH).1 y
    rw [← smul_sub, ← hs.of_norm.tsum_sub (hs.of_norm_bounded fun γ => by aesop)]
    grind

  rw [htr, ← hge, ← sub_eq_zero, ← integral_sub hi hie]
  exact (integral_congr_ae (ae_of_all _ e)).trans (hFhyp F I Gf ι D k a hH b hb ((hi.sub hie).congr (ae_of_all
    _ e)))

theorem unipotent_integrand_vanishes_proof : ConstantTermVanishingAlt := by
  intro I _ _ φ hφ β hβ hβ0 hβinv A B hA hAB u hu hint
  have := half_plane_measure_invariant_proof.1
  set ν := Measure.pi fun _ : I => logarithmic_measure
  set Φ := (arrowProdEquivProdArrow ℝ nonzero_real I).symm.trans (piCongrRight fun _ => halfPlane_coordinates)
  have hΦ : MeasurePreserving Φ (volume.prod ν) volume := (measurePreserving_pi _ _ fun _ =>
    halfPlane_coordinates_measurePreserving).comp (measurePreserving_arrowProdEquivProdArrow ℝ nonzero_real I
    _ _).symm
  have hΦ' : ∀ x y, Φ (x, y) = fun v => pt (x v) (y v).1 (y v).2 := by
    bound
  set b := fun y => β (Φ (0, y))
  have hβΦ : ∀ x y, β (Φ (x, y)) = b y := fun x y => (hβinv x 0 (fun v => (y v).1) (fun v => (y v).2) 1
    one_pos).trans (by
    grind)
  set L := fun y : I → nonzero_real => Real.log (∏ v, |(y v).1|)
  have hLm : Measurable L := by
    fun_prop
  set J := fun x : I → ℝ => Icc (Real.log A - ∑ v, Real.log (1 + x v ^ 2)) (Real.log B)
  set T := fun x => L ⁻¹' J x
  have hcond : ∀ (x : I → ℝ) (y : I → nonzero_real), (A / ∏ v, (1 + x v ^ 2) ≤ ∏ v, |(y v).1| ∧ ∏ v, |(y v).1|
    ≤ B) ↔ y ∈ T x := fun x y => by
    have hp : 0 < ∏ v, |(y v).1| := Finset.prod_pos fun v _ => abs_pos.2 (y v).2
    have hq : 0 < ∏ v, (1 + x v ^ 2) := by
      positivity
    rw [mem_preimage, mem_Icc, ← Real.log_prod fun v _ => by positivity, ← Real.log_div hA.ne' hq.ne', Real.log_le_log_iff (div_pos hA hq) hp, Real.log_le_log_iff hp (hA.trans hAB)]
  have key : ∀ p : (I → ℝ) × (I → nonzero_real), β (Φ p) • u (Φ p) = (∏ v, φ v (p.1 v)) * ↑((T p.1).indicator
    b p.2) := fun ⟨x, y⟩ => by
    rw [hβΦ, hΦ', hu]
    by_cases h : y ∈ T x <;> simp [hcond, h, mul_comm]
  have hint' := ((hΦ.integrable_comp_emb Φ.measurableEmbedding).2 hint).congr (ae_of_all _ key)
  have hb : Measurable b := by
    fun_prop
  set m := Measure.map L (ν.withDensity fun y => ENNReal.ofReal (b y)) with hm
  have hmT : ∀ x, m (J x) = ∫⁻ y in T x, ENNReal.ofReal (b y) ∂ν := fun x => by
    rw [hm, Measure.map_apply hLm measurableSet_Icc, withDensity_apply' _ _]
  have hlt : ∀ x : I → ℝ, Real.log A - ∑ v, Real.log (1 + x v ^ 2) < Real.log B := fun x => by
    linarith [Real.log_lt_log hA hAB, Finset.sum_nonneg fun v (_ : v ∈ Finset.univ) => Real.log_nonneg
      (le_add_of_nonneg_right (sq_nonneg (x v)))]
  obtain ⟨x0, hx0⟩ := hint'.prod_right_ae.exists
  obtain ⟨R, hR⟩ := measure_Icc_eq_mul_sub m (fun c S hS => by
      obtain ⟨t, ht, rfl⟩ : ∃ t, 0 < t ∧ card I * Real.log t = c :=
        ⟨_, exp_pos (c / card I), by
          rw [Real.log_exp]
          field_simp⟩
      have hbscl : ∀ y, b (fun v => ⟨t * (y v).1, mul_ne_zero ht.ne' (y v).2⟩) = b y := fun y => (hβinv 0 0
        (fun v => (y v).1) (fun v => (y v).2) t ht).symm
      rw [hm, Measure.map_apply hLm (measurable_const_add _ hS), Measure.map_apply hLm hS, withDensity_apply'
        _ _, withDensity_apply' _ _, ← (measurePreserving_pi _ _ fun _ => measurePreserving_scale_nonzero t
        ht.ne').setLIntegral_comp_preimage (hLm hS) hb.ennreal_ofReal]
      simp [preimage, L, scale_nonzero, Real.log_mul, ht.ne', Finset.prod_mul_distrib,
        Finset.prod_ne_zero_iff, hbscl, ν, fun y : nonzero_real => y.2]) _ _ (sub_pos.2 (hlt x0)) (by
        rw [add_sub_cancel, hmT]
        exact ((integrable_indicator_iff (hLm measurableSet_Icc)).1 ((integrable_const_mul_iff
          (isUnit_iff_ne_zero.2 (Finset.prod_ne_zero_iff.2 fun v _ => (hφ v).2.2.2.2 _)) _).1
          hx0).re).lintegral_lt_top.ne)
  rw [← hΦ.integral_comp', integral_congr_ae (ae_of_all _ key), integral_prod _ hint']
  refine (integral_congr_ae (ae_of_all _ fun x => ?_)).trans (integral_product_log_eq_zero φ (fun v => (hφ
    v).2.imp_right (And.imp_right And.left)) R (Real.log B - Real.log A))
  dsimp only
  rw [integral_const_mul, integral_complex_ofReal, integral_indicator (hLm measurableSet_Icc),
    integral_eq_lintegral_of_nonneg_ae (ae_of_all _ fun y => hβ0 _) hb.aestronglyMeasurable, ← hmT, hR _ _
    (hlt x).le]
  ring_nf

theorem unipotent_terms_contribution_proof : E0a → DiagonalTruncatedIntegralZero → F6 := by
  intro hE0a hF6b F I Gf ι _ _ _ _ D k a hH T hT γ ω hγ β hβ hint
  classical
  by_cases hTe : D.Te a γ.out (D.rep ω) = 0
  · simp [indicator, Dat.kk, Dat.kt, hTe]
  obtain ⟨-, -, hP, -⟩ := hE0a F I Gf D hH.ax
  obtain ⟨-, hkk, -, -, h5, h6⟩ := kernel_terms_invariant_bounded_proof half_plane_measure_invariant_proof
    automorphy_factor_kernel_algebra_proof F I Gf ι D k a hH
  obtain ⟨-, -, -, -, -, -, -, hLamF, -⟩ := heights_on_quotient_proof half_plane_measure_invariant_proof F I
    Gf D hH.ax
  obtain ⟨-, hdisc⟩ := h6 γ ω _ (h5 γ ω hTe).choose_spec
  simp [IsEll] at hγ
  obtain ⟨s, hs0, c, hc⟩ := hγ
  obtain ⟨δ1, hδ1⟩ := exists_matrix_with_last_row s hs0
  have hv : ![0, 1] ᵥ* (δ1 * γ.out * δ1⁻¹).1 = c • ![0, 1] := by
    rw [Units.val_mul, Units.val_mul, ← vecMul_vecMul, ← vecMul_vecMul, hδ1, hc, smul_vecMul, ← hδ1,
      vecMul_vecMul]
    simp
  have e10 : (δ1 * γ.out * δ1⁻¹) 1 0 = 0 := by
    simpa [vecMul, dotProduct] using congrFun hv 0
  rw [← trace_units_conj δ1, ← det_units_conj δ1, ← Units.val_mul, ← Units.val_mul, trace_fin_two,
    det_fin_two, e10] at hdisc
  generalize hh : δ1 * γ.out * δ1⁻¹ = h at e10 hdisc
  set u := GeneralLinearGroup.upperRightHom (h 0 1 / (h 0 0 - h 1 1))
  set δ : PG F := ↑(u * δ1)
  have hγ' : δ * γ * δ⁻¹ = ↑(u * h * u⁻¹) := by
    simp [δ, ← hh]
    group
  have emb := (⟨toPerm δ, (hP δ).measurable, (hP δ⁻¹).measurable⟩ : D.Xs ≃ᵐ D.Xs).measurableEmbedding
  have key := hF6b F I Gf ι D k a hH T hT (u * h * u⁻¹) (δ • ω) (by
    simp [u, vecMul, dotProduct, Matrix.mul_apply, e10]
    grind) (by
      simp [u, vecMul, dotProduct, Matrix.mul_apply, e10])
  rw [← hγ'] at key
  have := key (fun w => β (δ⁻¹ • w)) ⟨hβ.meas.comp (hP δ⁻¹).measurable, fun _ => hβ.nonneg _, fun w =>
    (stabilizerEquivStabilizer (rfl : _ = δ • ((γ, ω) : D.Cj × D.Om))).toEquiv.hasSum_iff.1 (by
    convert hβ.sum (δ⁻¹ • w) using 2 with x
    show β (δ⁻¹ • (δ * x * δ⁻¹) • w) = _
    simp [Subgroup.smul_def, smul_smul, mul_assoc])⟩ (((hP δ).integrable_comp_emb emb).1 (by
      simpa [Function.comp_def, indicator, ← Prod.smul_mk, (hLamF T γ).2, hkk] using hint))
  rw [← (hP δ).integral_comp emb] at this
  simpa [indicator, ← Prod.smul_mk, (hLamF T γ).2, hkk] using this

/-! ## Assembling the trace formula -/

private theorem kernel_terms_invariant_bounded_holds : KernelTermsInvariantBounded :=
  kernel_terms_invariant_bounded_proof _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
private theorem heights_on_quotient_holds : E0d := heights_on_quotient_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
private theorem actions_preserve_measures_holds : E0a := actions_preserve_measures_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof
private theorem s_Pack : Pack := pf_Pack _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof actions_preserve_measures_holds
private theorem s_Mult : Mult := pf_Mult _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  heights_on_quotient_holds
private theorem hyperbolic_ball_volume_holds : B6 := hyperbolic_ball_volume_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof
  _root_.UpperTheory.Esk.upper_half_plane_measure_coordinates
private theorem s_KapInt : KapInt := pf_KapInt _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof hyperbolic_ball_volume_holds
private theorem s_KapSum : KapSum := pf_KapSum s_Pack s_Mult s_KapInt
private theorem kernel_sum_bounded_holds : E2 := kernel_sum_bounded_proof kernel_terms_invariant_bounded_holds
  heights_on_quotient_holds s_KapSum
private theorem s_Ecut : Ecut := pf_Ecut _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof _root_.UpperTheory.Esk.orbit_cover_proof
  actions_preserve_measures_holds heights_on_quotient_holds s_KapSum
private theorem cusp_region_volume_finite_holds : E3 := cusp_region_volume_finite_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.upper_half_plane_measure_coordinates _root_.UpperTheory.Esk.orbit_cover_proof
  actions_preserve_measures_holds heights_on_quotient_holds
private theorem kernel_level_transform_holds : E4 := kernel_level_transform_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof heights_on_quotient_holds s_KapSum s_KapInt
private theorem kernel_inverse_symmetry_holds : faceMap_zero_comp_eq_one := kernel_inverse_symmetry
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof actions_preserve_measures_holds
  heights_on_quotient_holds s_KapSum
private theorem reproducing_formula_holds_alt : B3 := reproducing_formula_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof _root_.UpperTheory.Esk.cayley_transform_proof
  hyperbolic_ball_volume_holds
private theorem multivariable_reproducing_formula_holds : MultivariableReproducingFormula :=
  multivariable_reproducing_formula_proof _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof reproducing_formula_holds_alt s_KapInt
private theorem reproducing_kernel_expansion_holds : E5 := e5_of_reproducing_formula
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof _root_.UpperTheory.Esk.inverse_series_summable
  actions_preserve_measures_holds kernel_inverse_symmetry_holds multivariable_reproducing_formula_holds
private theorem linear_trace_identity_holds : E6 := e6_of_linear_trace_identity
  cusp_region_volume_finite_holds kernel_level_transform_holds kernel_inverse_symmetry_holds
  reproducing_kernel_expansion_holds linear_trace_identity_proof
private theorem counting_measure_invariance_holds : C4 := counting_measure_invariance_proof
  _root_.UpperTheory.Esk.action_integral_swap_proof
private theorem kernel_series_converges_holds : E1 := kernel_series_converges_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof kernel_terms_invariant_bounded_holds
  heights_on_quotient_holds s_Pack s_Mult s_KapInt
private theorem s_Fsum : Fsum := pf_Fsum actions_preserve_measures_holds
private theorem diagonal_terms_contribution_holds : F2 := diagonal_terms_contribution_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.upper_half_plane_measure_coordinates
  _root_.UpperTheory.Esk.diagonal_integrand_vanishes_proof _root_.UpperTheory.Esk.action_integral_swap_proof
  actions_preserve_measures_holds kernel_terms_invariant_bounded_holds s_Ecut _root_.UpperTheory.Esk.pf_Fcen
private theorem radial_integral_formula_holds : B4 := radial_integral_formula_proof
  hyperbolic_ball_volume_holds
private theorem elliptic_terms_contribution_holds : F3 := elliptic_terms_contribution_proof
  _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof radial_integral_formula_holds
  _root_.UpperTheory.Esk.action_integral_swap_proof actions_preserve_measures_holds
  kernel_terms_invariant_bounded_holds heights_on_quotient_holds s_Mult _root_.UpperTheory.Esk.pf_Fcen
private theorem imaginary_part_bound_holds : F4 := imaginary_part_bound_proof
  _root_.UpperTheory.Esk.automorphy_factor_kernel_algebra_proof
  _root_.UpperTheory.Esk.hyperbolic_kappa_properties_proof heights_on_quotient_holds s_Mult
private theorem s_Fell : Fell := pf_Fell counting_measure_invariance_holds actions_preserve_measures_holds
  kernel_terms_invariant_bounded_holds heights_on_quotient_holds kernel_series_converges_holds
  cusp_region_volume_finite_holds s_Ecut s_Fsum diagonal_terms_contribution_holds
  elliptic_terms_contribution_holds imaginary_part_bound_holds
private theorem kernel_trace_bound_holds : F5 := kernel_trace_bound_proof heights_on_quotient_holds
  kernel_series_converges_holds
private theorem unipotent_integrand_vanishes_holds : ConstantTermVanishingAlt :=
  unipotent_integrand_vanishes_proof
private theorem unipotent_truncated_integral_holds : DiagonalTruncatedIntegralZero :=
  diagonal_truncated_integral_zero _root_.UpperTheory.Esk.half_plane_measure_invariant_proof
  _root_.UpperTheory.Esk.upper_half_plane_measure_coordinates
  _root_.UpperTheory.Esk.diagonal_integrand_vanishes_proof _root_.UpperTheory.Esk.action_integral_swap_proof
  actions_preserve_measures_holds kernel_terms_invariant_bounded_holds heights_on_quotient_holds s_Ecut
  _root_.UpperTheory.Esk.pf_Fcen unipotent_integrand_vanishes_holds
private theorem unipotent_terms_contribution_holds : F6 := unipotent_terms_contribution_proof
  actions_preserve_measures_holds unipotent_truncated_integral_holds
private theorem s_Fhyp : Fhyp := pf_Fhyp counting_measure_invariance_holds actions_preserve_measures_holds
  kernel_terms_invariant_bounded_holds heights_on_quotient_holds kernel_sum_bounded_holds
  cusp_region_volume_finite_holds s_Ecut s_Fsum kernel_trace_bound_holds unipotent_terms_contribution_holds
theorem s_TF : TF := pf_TF kernel_sum_bounded_holds s_Ecut linear_trace_identity_holds s_Fell s_Fhyp
theorem finite_system_holds : Fin0 := finite_system_proof _root_.UpperTheory.Esk.pf_Sys

end UpperTheory.Esk
