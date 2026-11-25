module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.EqZeroOfSetIntegral
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Aesop.Main
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace PI.VolStabS.DensGen

open MeasureTheory Topology Set Filter Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

variable {V X Y : Type} [TopologicalSpace V] [MeasurableSpace V] [OpensMeasurableSpace V]
  [TopologicalSpace X] [MeasurableSpace X] [OpensMeasurableSpace X] [T2Space X]
  {μ : Measure V} {f : V → Y} {ι : X → Y} {U : Set V} {ν : Measure X} {B : Set X}
  {fib : X → Measure V}

theorem ae_fib (hfib : IsFibreFamily μ f ι U ν B fib) {f' : V → X}
    (hff' : ∀ v, f v = ι (f' v)) (hι : Function.Injective ι) (b : X) :
    ∀ᵐ v ∂(fib b), f' v = b := by
  have h0 := hfib.1 b
  rw [ae_iff]
  refine measure_mono_null (fun v hv => ?_) h0
  intro hmem
  exact hv (hι (by rw [← hff']; exact hmem.1))

theorem fib_set_nonneg [IsFiniteMeasureOnCompacts ν]
    (hfib : IsFibreFamily μ f ι U ν B fib) {f' : V → X} (hf' : Continuous f')
    (hff' : ∀ v, f v = ι (f' v)) (hι : Function.Injective ι)
    (ρ : V → ℝ) (hρc : Continuous ρ) (hρs : HasCompactSupport ρ) (hρU : tsupport ρ ⊆ U)
    (hρ0 : ∀ v, 0 ≤ ρ v) (S : Set X) (hS : IsCompact S) (hSB : S ⊆ B) :
    ∫ v in f' ⁻¹' S, ρ v ∂μ = ∫ b in S, (∫ v, ρ v ∂(fib b)) ∂ν := by
  apply PI.AprimeInfW.DG.fib_set_nonneg <;> assumption

theorem fib_set [IsFiniteMeasureOnCompacts μ] [IsFiniteMeasureOnCompacts ν]
    (hfib : IsFibreFamily μ f ι U ν B fib) {f' : V → X} (hf' : Continuous f')
    (hff' : ∀ v, f v = ι (f' v)) (hι : Function.Injective ι)
    (ρ : V → ℝ) (hρc : Continuous ρ) (hρs : HasCompactSupport ρ) (hρU : tsupport ρ ⊆ U)
    (S : Set X) (hS : IsCompact S) (hSB : S ⊆ B) :
    ∫ v in f' ⁻¹' S, ρ v ∂μ = ∫ b in S, (∫ v, ρ v ∂(fib b)) ∂ν := by
  apply PI.AprimeInfW.DG.fib_set <;> assumption

theorem eq_zero_of_setIntegral [LocallyCompactSpace X] [ν.IsOpenPosMeasure]
    [IsFiniteMeasureOnCompacts ν] (D : X → ℝ) (W : Set X) (b0 : X) (hW : W ∈ 𝓝 b0)
    (hD : ContinuousOn D W) (h0 : ∀ S, IsCompact S → S ⊆ W → ∫ b in S, D b ∂ν = 0) :
    D b0 = 0 :=
  _root_.PI.AprimeInfW.DG.eq_zero_of_setIntegral D W b0 hW hD h0

theorem eq_zero_of_setIntegral_c [LocallyCompactSpace X] [ν.IsOpenPosMeasure]
    [IsFiniteMeasureOnCompacts ν] (D : X → ℂ) (W : Set X) (b0 : X) (hW : W ∈ 𝓝 b0)
    (hD : ContinuousOn D W) (h0 : ∀ S, IsCompact S → S ⊆ W → ∫ b in S, D b ∂ν = 0) :
    D b0 = 0 := by
  have hre := eq_zero_of_setIntegral (ν := ν) (fun b => (D b).re) W b0 hW
    (Complex.continuous_re.comp_continuousOn hD) (fun S hS hSW => by
      have hint : IntegrableOn D S ν := (hD.mono hSW).integrableOn_compact hS
      have h1 := integral_re hint
      simp only [RCLike.re_to_complex] at h1
      rw [h1, h0 S hS hSW, Complex.zero_re])
  have him := eq_zero_of_setIntegral (ν := ν) (fun b => (D b).im) W b0 hW
    (Complex.continuous_im.comp_continuousOn hD) (fun S hS hSW => by
      have hint : IntegrableOn D S ν := (hD.mono hSW).integrableOn_compact hS
      have h1 := integral_im hint
      simp only [RCLike.im_to_complex] at h1
      rw [h1, h0 S hS hSW, Complex.zero_im])
  exact Complex.ext hre him

theorem cut_props {f' : V → X} (hf' : Continuous f') (q : V → ℝ) (hq : Continuous q)
    (hqs : HasCompactSupport q) (ψ : X → ℝ) (hψ : Continuous ψ) (C : Set X) (hC : IsClosed C)
    (hψC : ∀ x, ψ x ≠ 0 → x ∈ C) (hCU : ∀ v, f' v ∈ C → v ∈ U) :
    Continuous (fun v => q v * ψ (f' v)) ∧ HasCompactSupport (fun v => q v * ψ (f' v)) ∧
      tsupport (fun v => q v * ψ (f' v)) ⊆ U := by
  refine ⟨hq.mul (hψ.comp hf'), hqs.mul_right, ?_⟩
  have hcl : IsClosed (f' ⁻¹' C) := hC.preimage hf'
  have hsub : Function.support (fun v => q v * ψ (f' v)) ⊆ f' ⁻¹' C := by
    intro v hv
    exact hψC _ (right_ne_zero_of_mul hv)
  exact (closure_minimal hsub hcl).trans (fun v hv => hCU v hv)

theorem densGen [LocallyCompactSpace X] [IsFiniteMeasureOnCompacts μ] [ν.IsOpenPosMeasure]
    [IsFiniteMeasureOnCompacts ν] {B' N : Set X} (hfib : IsFibreFamily μ f ι U ν B fib)
    {f' : V → X} (hf' : Continuous f') (hff' : ∀ v, f v = ι (f' v)) (hι : Function.Injective ι)
    (hNU : ∀ v, f' v ∈ N → v ∈ U)
    {Φ : V → ℂ} (hΦc : Continuous Φ) (hΦs : HasCompactSupport Φ) {g : X → ℂ}
    (hg : IsContDensityOn μ f ι ν B' Φ g) {b0 : X} (hB : B ∈ 𝓝 b0) (hB' : B' ∈ 𝓝 b0)
    (hN : N ∈ 𝓝 b0) :
    g b0 = ∫ v, Φ v ∂(fib b0) := by
  obtain ⟨C, hCn, hCsub, hCc⟩ := local_compact_nhds (inter_mem (inter_mem hB hB') hN)
  obtain ⟨K, hKn, hKsub, hKc⟩ := local_compact_nhds (interior_mem_nhds.2 hCn)
  obtain ⟨ψ, hψK, hψ0, -, -⟩ := exists_continuous_one_zero_of_isCompact hKc
    isOpen_interior.isClosed_compl (disjoint_compl_right_iff_subset.2 hKsub)
  have hKC : K ⊆ C := hKsub.trans interior_subset
  have hKB : K ⊆ B := fun b hb => (hCsub (hKC hb)).1.1
  have hKB' : K ⊆ B' := fun b hb => (hCsub (hKC hb)).1.2
  have hψC : ∀ x, ψ x ≠ 0 → x ∈ C := by
    intro x hx
    by_contra hxC
    exact hx (by simpa using hψ0 (fun hxi => hxC (interior_subset hxi)))
  have hCU : ∀ v, f' v ∈ C → v ∈ U := fun v hv => hNU v (hCsub hv).2
  obtain ⟨hrc, hrs, hrU⟩ := cut_props hf' (fun v => (Φ v).re) (Complex.continuous_re.comp hΦc)
    (hΦs.comp_left (g := Complex.re) Complex.zero_re) ψ ψ.continuous C hCc.isClosed hψC hCU
  obtain ⟨hic, his, hiU⟩ := cut_props hf' (fun v => (Φ v).im) (Complex.continuous_im.comp hΦc)
    (hΦs.comp_left (g := Complex.im) Complex.zero_im) ψ ψ.continuous C hCc.isClosed hψC hCU
  have hr3 := hfib.2.2 _ hrc hrs hrU
  have hi3 := hfib.2.2 _ hic his hiU
  have hcut : ∀ v, f' v ∈ K → Φ v = (((Φ v).re * ψ (f' v) : ℝ) : ℂ) +
      (((Φ v).im * ψ (f' v) : ℝ) : ℂ) * Complex.I := by
    intro v hv
    have h1 : ψ (f' v) = 1 := by simpa using hψK hv
    rw [h1, mul_one, mul_one]
    exact (Complex.re_add_im _).symm
  obtain ⟨H, hH⟩ : ∃ H : X → ℂ, H = fun b => ((∫ v, (Φ v).re * ψ (f' v) ∂(fib b) : ℝ) : ℂ) +
      ((∫ v, (Φ v).im * ψ (f' v) ∂(fib b) : ℝ) : ℂ) * Complex.I := ⟨_, rfl⟩
  have hHc : ContinuousOn H K := by
    rw [hH]
    exact (Complex.continuous_ofReal.comp_continuousOn (hr3.2.mono hKB)).add
      ((Complex.continuous_ofReal.comp_continuousOn (hi3.2.mono hKB)).mul continuousOn_const)

  have hA : ∀ b ∈ K, ∫ v, Φ v ∂(fib b) = H b := by
    intro b hb
    rw [hH]
    have hIr := hr3.1 b (hKB hb)
    have hIi := hi3.1 b (hKB hb)
    rw [integral_congr_ae (g := fun v => (((Φ v).re * ψ (f' v) : ℝ) : ℂ) +
      (((Φ v).im * ψ (f' v) : ℝ) : ℂ) * Complex.I) ?_]
    · rw [integral_add hIr.ofReal (hIi.ofReal.mul_const _), integral_mul_const, integral_complex_ofReal,
        integral_complex_ofReal]
    · filter_upwards [ae_fib hfib hff' hι b] with v hv
      exact hcut v (hv ▸ hb)

  have hBint : ∀ S, IsCompact S → S ⊆ K → ∫ b in S, g b ∂ν = ∫ b in S, H b ∂ν := by
    intro S hS hSK
    have hAm : MeasurableSet (f' ⁻¹' S) := (hS.isClosed.preimage hf').measurableSet
    have hpre : f ⁻¹' (ι '' S) = f' ⁻¹' S := by
      ext v
      simp [hff', hι.mem_set_image]
    rw [← hg.2 S hS (hSK.trans hKB'), hpre,
      setIntegral_congr_fun hAm (fun v hv => hcut v (hSK hv)),
      integral_add (hrc.integrable_of_hasCompactSupport hrs).ofReal.integrableOn.integrable
        ((hic.integrable_of_hasCompactSupport his).ofReal.mul_const _).integrableOn.integrable,
      integral_mul_const, integral_complex_ofReal, integral_complex_ofReal,
      fib_set hfib hf' hff' hι _ hrc hrs hrU S hS (hSK.trans hKB),
      fib_set hfib hf' hff' hι _ hic his hiU S hS (hSK.trans hKB), hH,
      integral_add ((hr3.2.mono (hSK.trans hKB)).integrableOn_compact hS).integrable.ofReal
        (((hi3.2.mono (hSK.trans hKB)).integrableOn_compact hS).integrable.ofReal.mul_const _),
      integral_mul_const, integral_complex_ofReal, integral_complex_ofReal]
  have hD := eq_zero_of_setIntegral_c (ν := ν) (fun b => g b - H b) K b0 hKn
    ((hg.1.mono hKB').sub hHc) (fun S hS hSK => by
      rw [integral_sub ((hg.1.mono (hSK.trans hKB')).integrableOn_compact hS)
        ((hHc.mono hSK).integrableOn_compact hS), hBint S hS hSK, sub_self])
  rw [hA b0 (mem_of_mem_nhds hKn)]
  exact sub_eq_zero.1 hD

end PI.VolStabS.DensGen
