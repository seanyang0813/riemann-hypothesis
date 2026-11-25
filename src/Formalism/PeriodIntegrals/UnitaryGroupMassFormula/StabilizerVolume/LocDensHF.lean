module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.LocDensHSt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.HenselCountHolds
import Aesop.Main
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace PI.VolStabS

open MeasureTheory Topology Filter Set Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

section Core

variable {V X Y : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [T2Space V] [LocallyCompactSpace V] [SecondCountableTopology V]
  [MeasurableSpace V] [BorelSpace V] [AddCommGroup X] [TopologicalSpace X]
  [IsTopologicalAddGroup X] [T2Space X] [LocallyCompactSpace X] [SecondCountableTopology X]
  [MeasurableSpace X] [BorelSpace X]

private lemma module_finite_F_E {W : Type} [MeasurableSpace W] (m : Measure W) (s : Set W)
    (hs : MeasurableSet s) (h : Integrable (s.indicator (1 : W → ℝ)) m) : m s ≠ ⊤ := by
  have h1 := h.lintegral_lt_top
  have e : (fun x => ENNReal.ofReal (s.indicator (1 : W → ℝ) x)) = s.indicator 1 := by
    funext x
    by_cases hx : x ∈ s <;> simp [hx]
  rw [e, lintegral_indicator_one hs] at h1
  exact h1.ne

theorem fib_of_ratio (μ : Measure V) (ν : Measure X) [ν.IsAddHaarMeasure]
    (f : V → Y) (ι : X → Y) (hι : Function.Injective ι) (G : V → X) (hGc : Continuous G)
    (hfG : ∀ x, f x = ι (G x)) (U : Set V) (B : Set X) (fib : X → Measure V)
    (hfib : IsFibreFamily μ f ι U ν B fib) (T : X) (hB : B ∈ 𝓝 T) (Nb : Set X) (hNb : Nb ∈ 𝓝 T)
    (hNbU : ∀ x, G x ∈ Nb → x ∈ U) (Q : Set V) (hQo : IsOpen Q) (hQcl : IsClosed Q)
    (hQc : IsCompact Q) (H : ℕ → AddSubgroup X) (hHo : ∀ n, IsOpen (H n : Set X))
    (hHc : ∀ n, IsCompact (H n : Set X)) (hHb : ∀ N' ∈ 𝓝 (0 : X), ∃ n, (H n : Set X) ⊆ N')
    (κ : ℝ) (hratio : ∀ n, μ.real (Q ∩ G ⁻¹' {z | z - T ∈ H n}) = κ * ν.real (H n)) :
    ∫ x, Q.indicator (1 : V → ℂ) x ∂(fib T) = (κ : ℂ) := by
  classical
  obtain ⟨hconc, hdis, hcont⟩ := hfib
  obtain ⟨S, hSdef⟩ : ∃ S : ℕ → Set X, S = fun n => {z | z - T ∈ H n} := ⟨_, rfl⟩
  have hmemS : ∀ n z, z ∈ S n ↔ z - T ∈ H n := by
    intro n z
    rw [hSdef]
    rfl
  have hSo : ∀ n, IsOpen (S n) := by
    intro n
    rw [hSdef]
    exact (hHo n).preimage (continuous_id.sub continuous_const)
  have hScl : ∀ n, IsClosed (S n) := by
    intro n
    rw [hSdef]
    exact (AddSubgroup.isClosed_of_isOpen (H n) (hHo n)).preimage
      (continuous_id.sub continuous_const)
  have hSm : ∀ n, MeasurableSet (S n) := fun n => (hSo n).measurableSet
  have hSc : ∀ n, IsCompact (S n) := by
    intro n
    have e : S n = (fun z => z + T) '' (H n : Set X) := by
      ext z
      constructor
      · intro hz
        exact ⟨z - T, (hmemS n z).1 hz, sub_add_cancel z T⟩
      · rintro ⟨w, hw, rfl⟩
        rw [hmemS]
        simpa using hw
    rw [e]
    exact (hHc n).image (continuous_add_const T)
  have hνS : ∀ n, ν (S n) = ν (H n) := by
    intro n
    have e : S n = (fun z => -T + z) ⁻¹' (H n : Set X) := by
      ext z
      rw [hmemS]
      simp [neg_add_eq_sub]
    rw [e]
    exact measure_preimage_add ν (-T) (H n : Set X)
  have hTS : ∀ n, T ∈ S n := fun n => (hmemS n T).2 (by rw [sub_self]; exact (H n).zero_mem)
  have hsmall : ∀ N ∈ 𝓝 T, ∃ n, S n ⊆ N := by
    intro N hN
    have h0 : (fun x : X => T + x) ⁻¹' N ∈ 𝓝 (0 : X) :=
      (continuous_const.add continuous_id).continuousAt.preimage_mem_nhds (by simpa using hN)
    obtain ⟨n, hn⟩ := hHb _ h0
    refine ⟨n, fun z hz => ?_⟩
    have h := hn ((hmemS n z).1 hz)
    simpa using h
  obtain ⟨n₀, hn₀⟩ := hsmall (Nb ∩ B) (Filter.inter_mem hNb hB)
  have hQ'o : IsOpen (Q ∩ G ⁻¹' S n₀) := hQo.inter ((hSo n₀).preimage hGc)
  have hQ'cl : IsClosed (Q ∩ G ⁻¹' S n₀) := hQcl.inter ((hScl n₀).preimage hGc)
  have hQ'c : IsCompact (Q ∩ G ⁻¹' S n₀) := hQc.of_isClosed_subset hQ'cl Set.inter_subset_left
  have hQ'm : MeasurableSet (Q ∩ G ⁻¹' S n₀) := hQ'o.measurableSet
  have hQ'U : Q ∩ G ⁻¹' S n₀ ⊆ U := fun x hx => hNbU x (hn₀ hx.2).1
  have hS0B : S n₀ ⊆ B := fun z hz => (hn₀ hz).2
  have hfr : frontier (Q ∩ G ⁻¹' S n₀) = ∅ := by
    rw [frontier, hQ'cl.closure_eq, hQ'o.interior_eq, Set.diff_self]
  have hφc : Continuous ((Q ∩ G ⁻¹' S n₀).indicator (1 : V → ℝ)) := by
    rw [← Set.piecewise_eq_indicator]
    exact continuous_one.piecewise (fun a ha => by rw [hfr] at ha; simp at ha) continuous_zero
  have hts : tsupport ((Q ∩ G ⁻¹' S n₀).indicator (1 : V → ℝ)) ⊆ Q ∩ G ⁻¹' S n₀ :=
    closure_minimal Set.support_indicator_subset hQ'cl
  have hφcs : HasCompactSupport ((Q ∩ G ⁻¹' S n₀).indicator (1 : V → ℝ)) :=
    hQ'c.of_isClosed_subset (isClosed_tsupport _) hts
  obtain ⟨hint, hFc0⟩ := hcont _ hφc hφcs (hts.trans hQ'U)
  obtain ⟨F, hFdef⟩ : ∃ F : X → ℝ,
      F = fun b => ∫ v, (Q ∩ G ⁻¹' S n₀).indicator (1 : V → ℝ) v ∂(fib b) := ⟨_, rfl⟩
  have hFc : ContinuousOn F B := by
    rw [hFdef]
    exact hFc0
  have hFval : ∀ b, F b = (fib b (Q ∩ G ⁻¹' S n₀)).toReal := by
    intro b
    simp only [hFdef]
    rw [integral_indicator_one hQ'm, measureReal_def]
  have hF0 : ∀ b, 0 ≤ F b := fun b => by
    rw [hFval]
    exact ENNReal.toReal_nonneg
  have hGb : ∀ b x, x ∈ f ⁻¹' {ι b} ∩ U → G x = b := fun b x hx =>
    hι ((hfG x).symm.trans (Set.mem_singleton_iff.1 hx.1))
  have hfibS : ∀ b (R : Set V), fib b R = fib b (R ∩ (f ⁻¹' {ι b} ∩ U)) :=
    fun b R => (measure_inter_conull (hconc b)).symm
  have hcut : ∀ b m, b ∈ S m →
      (Q ∩ G ⁻¹' S m) ∩ (f ⁻¹' {ι b} ∩ U) = Q ∩ (f ⁻¹' {ι b} ∩ U) := by
    intro b m hb
    ext x
    constructor
    · rintro ⟨⟨hxQ, _⟩, hxA⟩
      exact ⟨hxQ, hxA⟩
    · rintro ⟨hxQ, hxA⟩
      refine ⟨⟨hxQ, ?_⟩, hxA⟩
      show G x ∈ S m
      rw [hGb b x hxA]
      exact hb
  have hfin : ∀ b ∈ B, fib b (Q ∩ G ⁻¹' S n₀) ≠ ⊤ := fun b hb => module_finite_F_E (fib b) _ hQ'm (hint b hb)
  have hmain : ∀ n, S n ⊆ S n₀ → ∫ b in S n, F b ∂ν = κ * ν.real (H n) := by
    intro n hn
    have hSvm : MeasurableSet (Q ∩ G ⁻¹' S n) := (hQo.inter ((hSo n).preimage hGc)).measurableSet
    have hSvU : Q ∩ G ⁻¹' S n ⊆ U := fun x hx => hQ'U ⟨hx.1, hn hx.2⟩
    have h1 := hdis ((Q ∩ G ⁻¹' S n).indicator 1) (measurable_one.indicator hSvm)
    rw [lintegral_indicator_one hSvm, Measure.restrict_apply hSvm, Set.inter_eq_left.2 hSvU] at h1
    simp_rw [lintegral_indicator_one hSvm] at h1
    have hpt : ∀ b, fib b (Q ∩ G ⁻¹' S n) =
        (S n).indicator (fun b => ENNReal.ofReal (F b)) b := by
      intro b
      simp only [Set.indicator_apply]
      split_ifs with hb
      · rw [hfibS b, hcut b n hb, ← hcut b n₀ (hn hb), ← hfibS b, hFval,
          ENNReal.ofReal_toReal (hfin b (hS0B (hn hb)))]
      · rw [hfibS b]
        have e : (Q ∩ G ⁻¹' S n) ∩ (f ⁻¹' {ι b} ∩ U) = ∅ := Set.subset_empty_iff.1 fun x hx =>
          hb (by rw [← hGb b x hx.2]; exact hx.1.2)
        rw [e, measure_empty]
    have h2 : μ (Q ∩ G ⁻¹' S n) = ∫⁻ b in S n, ENNReal.ofReal (F b) ∂ν := by
      rw [h1, lintegral_congr hpt, lintegral_indicator (hSm n)]
    have hFint : IntegrableOn F (S n) ν :=
      (hFc.mono fun z hz => hS0B (hn hz)).integrableOn_compact (hSc n)
    rw [← ofReal_integral_eq_lintegral_ofReal hFint (ae_of_all _ hF0)] at h2
    have hr : μ.real (Q ∩ G ⁻¹' S n) = κ * ν.real (H n) := by
      rw [hSdef]
      exact hratio n
    rw [measureReal_def, h2, ENNReal.toReal_ofReal (integral_nonneg hF0)] at hr
    exact hr
  have hcT : ContinuousAt F T := hFc.continuousAt hB
  have hrpos : ∀ n, 0 < ν.real (H n) := by
    intro n
    rw [measureReal_def]
    exact ENNReal.toReal_pos ((hHo n).measure_ne_zero ν ⟨0, (H n).zero_mem⟩)
      (hHc n).measure_lt_top.ne
  have key : ∀ ε > 0, |κ - F T| ≤ ε := by
    intro ε hε
    have hW : F ⁻¹' Metric.ball (F T) ε ∈ 𝓝 T := hcT (Metric.ball_mem_nhds _ hε)
    obtain ⟨n, hnW⟩ := hsmall _ (Filter.inter_mem hW ((hSo n₀).mem_nhds (hTS n₀)))
    have hsub : S n ⊆ S n₀ := fun z hz => (hnW hz).2
    have hI := hmain n hsub
    have hFint : IntegrableOn F (S n) ν :=
      (hFc.mono fun z hz => hS0B (hsub hz)).integrableOn_compact (hSc n)
    have hclose : ∀ b ∈ S n, |F b - F T| < ε := fun b hb => by
      have h := (hnW hb).1
      rwa [Set.mem_preimage, Metric.mem_ball, Real.dist_eq] at h
    have hup : ∫ b in S n, F b ∂ν ≤ ∫ b in S n, (F T + ε) ∂ν :=
      setIntegral_mono_on hFint (continuousOn_const.integrableOn_compact (hSc n)) (hSm n)
        fun b hb => by linarith [(abs_sub_lt_iff.1 (hclose b hb)).1]
    have hlo : ∫ b in S n, (F T - ε) ∂ν ≤ ∫ b in S n, F b ∂ν :=
      setIntegral_mono_on (continuousOn_const.integrableOn_compact (hSc n)) hFint (hSm n)
        fun b hb => by linarith [(abs_sub_lt_iff.1 (hclose b hb)).2]
    rw [setIntegral_const, hI] at hup
    rw [setIntegral_const, hI] at hlo
    simp only [smul_eq_mul, measureReal_def, hνS n] at hup hlo
    have hr := hrpos n
    rw [measureReal_def] at hr
    rw [abs_le]
    constructor <;> nlinarith
  have hk : κ = F T := by
    by_contra hne
    have hpos : 0 < |κ - F T| := abs_pos.2 (sub_ne_zero.2 hne)
    have := key (|κ - F T| / 2) (half_pos hpos)
    linarith
  have hQQ : fib T Q = fib T (Q ∩ G ⁻¹' S n₀) := by
    rw [hfibS T (Q ∩ G ⁻¹' S n₀), hcut T n₀ (hTS n₀), ← hfibS T Q]
  have hint' : ∫ x, Q.indicator (1 : V → ℂ) x ∂(fib T) =
      ∫ x, ((Q.indicator (1 : V → ℝ) x : ℝ) : ℂ) ∂(fib T) :=
    integral_congr_ae (ae_of_all _ fun x => by by_cases hx : x ∈ Q <;> simp [hx])
  rw [hint', integral_complex_ofReal, integral_indicator_one hQo.measurableSet, measureReal_def, hQQ,
    ← hFval, ← hk]

end Core

section Lat

variable {V X : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [MeasurableSpace V] [BorelSpace V] [AddCommGroup X] [TopologicalSpace X]
  [IsTopologicalAddGroup X] [MeasurableSpace X] [BorelSpace X]

omit [TopologicalSpace V] [IsTopologicalAddGroup V] [MeasurableSpace V] [BorelSpace V]
  [TopologicalSpace X] [IsTopologicalAddGroup X] [MeasurableSpace X] [BorelSpace X] in
theorem cos_inter_eq (Λ0 : AddSubgroup V) (Hn : AddSubgroup X) (G : V → X) (y : V) (T : X) :
    {x | x - y ∈ Λ0} ∩ G ⁻¹' {z | z - T ∈ Hn} = (fun x => -y + x) ⁻¹' hlev Λ0 Hn G y T := by
  ext x
  simp only [mem_inter_iff, mem_setOf_eq, mem_preimage, hlev, neg_add_eq_sub, add_sub_cancel]

theorem cos_ratio (μ : Measure V) (ν : Measure X) [μ.IsAddHaarMeasure] [ν.IsAddHaarMeasure]
    (Λ : ℕ → AddSubgroup V) (H : ℕ → AddSubgroup X) (hΛo : ∀ n, IsOpen (Λ n : Set V))
    (hΛa : Antitone Λ) (hHo : ∀ n, IsOpen (H n : Set X)) (hHc : ∀ n, IsCompact (H n : Set X))
    (D : V →+ X) (hD : ∀ n, (Λ n).map D = H n) (G : V → X) (y : V)
    (hG : ∀ n, ∀ Z ∈ Λ 0, ∀ W ∈ Λ n, G (y + Z + W) - G (y + Z) - D W ∈ H (n + 1))
    (T : X) (hyT : G y - T ∈ H 0) (n : ℕ) :
    μ ({x | x - y ∈ Λ 0} ∩ G ⁻¹' {z | z - T ∈ H n}) * ν (H 0) = μ (Λ 0) * ν (H n) := by
  rw [cos_inter_eq, measure_preimage_add]
  have hh : T - G y ∈ H 0 := by
    have := (H 0).neg_mem hyT
    rwa [neg_sub] at this
  exact hensel_main μ ν Λ H hΛo hΛa hHo hHc D hD G y hG T hh n

end Lat

section Fin

variable {V X Y : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [T2Space V] [LocallyCompactSpace V] [SecondCountableTopology V]
  [MeasurableSpace V] [BorelSpace V] [AddCommGroup X] [TopologicalSpace X]
  [IsTopologicalAddGroup X] [T2Space X] [LocallyCompactSpace X] [SecondCountableTopology X]
  [MeasurableSpace X] [BorelSpace X]

theorem fibCos (μ : Measure V) (ν : Measure X) [μ.IsAddHaarMeasure] [ν.IsAddHaarMeasure]
    (f : V → Y) (ι : X → Y) (hι : Function.Injective ι) (G : V → X) (hGc : Continuous G)
    (hfG : ∀ x, f x = ι (G x)) (U : Set V) (B : Set X) (fib : X → Measure V)
    (hfib : IsFibreFamily μ f ι U ν B fib) (T : X) (hB : B ∈ 𝓝 T) (Nb : Set X) (hNb : Nb ∈ 𝓝 T)
    (hNbU : ∀ x, G x ∈ Nb → x ∈ U)
    (Λ : ℕ → AddSubgroup V) (H : ℕ → AddSubgroup X) (hΛo : ∀ n, IsOpen (Λ n : Set V))
    (hΛc : ∀ n, IsCompact (Λ n : Set V)) (hΛa : Antitone Λ) (hHo : ∀ n, IsOpen (H n : Set X))
    (hHc : ∀ n, IsCompact (H n : Set X)) (hHb : ∀ N' ∈ 𝓝 (0 : X), ∃ n, (H n : Set X) ⊆ N')
    (D : V →+ X) (hD : ∀ n, (Λ n).map D = H n) (y : V)
    (hG : ∀ n, ∀ Z ∈ Λ 0, ∀ W ∈ Λ n, G (y + Z + W) - G (y + Z) - D W ∈ H (n + 1))
    (hyT : G y - T ∈ H 0) :
    ∫ x, {x | x - y ∈ Λ 0}.indicator (1 : V → ℂ) x ∂(fib T) =
      (((μ (Λ 0 : Set V)) / ν (H 0)).toReal : ℂ) := by
  have hQe : {x | x - y ∈ Λ 0} = (fun x => x + -y) ⁻¹' (Λ 0 : Set V) := by
    ext x; simp [sub_eq_add_neg]
  have hQo : IsOpen {x | x - y ∈ Λ 0} := (hΛo 0).preimage (continuous_id.sub continuous_const)
  have hQcl : IsClosed {x | x - y ∈ Λ 0} :=
    (AddSubgroup.isClosed_of_isOpen _ (hΛo 0)).preimage (continuous_id.sub continuous_const)
  have hQc : IsCompact {x | x - y ∈ Λ 0} := by
    have : {x | x - y ∈ Λ 0} = (fun w => w + y) '' (Λ 0 : Set V) := by
      ext z
      simp only [mem_setOf_eq, mem_image, SetLike.mem_coe]
      constructor
      · intro hz
        exact ⟨z - y, hz, by abel⟩
      · rintro ⟨w, hw, rfl⟩
        simpa using hw
    rw [this]
    exact (hΛc 0).image (continuous_id.add continuous_const)
  have hν0 : 0 < ν.real (H 0) := by
    rw [measureReal_def]
    exact ENNReal.toReal_pos ((hHo 0).measure_pos ν ⟨0, (H 0).zero_mem⟩).ne'
      (hHc 0).measure_lt_top.ne
  have hratio : ∀ n, μ.real ({x | x - y ∈ Λ 0} ∩ G ⁻¹' {z | z - T ∈ H n}) =
      μ.real (Λ 0 : Set V) / ν.real (H 0) * ν.real (H n) := by
    intro n
    have e := cos_ratio μ ν Λ H hΛo hΛa hHo hHc D hD G y hG T hyT n
    have e' := congrArg ENNReal.toReal e
    rw [ENNReal.toReal_mul, ENNReal.toReal_mul] at e'
    simp only [← measureReal_def] at e'
    field_simp
    linarith
  rw [fib_of_ratio μ ν f ι hι G hGc hfG U B fib hfib T hB Nb hNb hNbU _ hQo hQcl hQc H hHo hHc
    hHb _ hratio, ENNReal.toReal_div, measureReal_def, measureReal_def]

end Fin

theorem fibLat_holds : FibLat := by
  intro V X Y _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ μ ν hμ hν f ι hι G hGc hfG U B fib hfib T hB Nb hNb
    hNbU L hLo hLc Λ H hΛL hΛo hΛc hΛa hHo hHc hHb hyp
  have := hμ
  have := hν
  have hLcl : IsClosed (L : Set V) := AddSubgroup.isClosed_of_isOpen _ hLo
  have hScl : ∀ n, IsClosed {z | z - T ∈ H n} := fun n =>
    (AddSubgroup.isClosed_of_isOpen _ (hHo n)).preimage (continuous_id.sub continuous_const)
  set Pn : ℕ → Set V := fun n => (L : Set V) ∩ G ⁻¹' {z | z - T ∈ H n} with hPndef
  have hPcl : ∀ n, IsClosed (Pn n) := fun n => hLcl.inter ((hScl n).preimage hGc)
  have hPo : ∀ n, IsOpen (Pn n) := fun n =>
    hLo.inter (((hHo n).preimage (continuous_id.sub continuous_const)).preimage hGc)
  have hPc : ∀ n, IsCompact (Pn n) := fun n => hLc.of_isClosed_subset (hPcl n) inter_subset_left
  have hν0 : 0 < ν.real (H 0) := by
    rw [measureReal_def]
    exact ENNReal.toReal_pos ((hHo 0).measure_pos ν ⟨0, (H 0).zero_mem⟩).ne'
      (hHc 0).measure_lt_top.ne
  by_cases hne : (Pn 0).Nonempty
  · obtain ⟨y0, hy0⟩ := hne
    obtain ⟨D0, hD0, _⟩ := hyp y0 hy0.1 hy0.2
    have hHa : ∀ n, H n ≤ H 0 := by
      intro n
      rw [← hD0, ← hD0]
      exact AddSubgroup.map_mono (hΛa (Nat.zero_le n))
    have hsat : ∀ y ∈ Pn 0, ∀ Z ∈ Λ 0, y + Z ∈ Pn 0 := by
      rintro y ⟨hyL, hyS⟩ Z hZ
      obtain ⟨D, hD, hG⟩ := hyp y hyL hyS
      refine ⟨L.add_mem hyL (hΛL hZ), ?_⟩
      have h1 := hG 0 0 (Λ 0).zero_mem Z hZ
      simp only [add_zero] at h1
      have h2 : D Z ∈ H 0 := hD 0 ▸ AddSubgroup.mem_map_of_mem D hZ
      have hyS' : G y - T ∈ H 0 := hyS
      show G (y + Z) - T ∈ H 0
      have e : G (y + Z) - T = (G (y + Z) - G y - D Z) + D Z + (G y - T) := by abel
      rw [e]
      exact (H 0).add_mem ((H 0).add_mem (hHa 1 h1) h2) hyS'
    have : DiscreteTopology (V ⧸ Λ 0) := QuotientAddGroup.discreteTopology (hΛo 0)
    let q : V → V ⧸ Λ 0 := QuotientAddGroup.mk
    have hq : Continuous q := continuous_quot_mk
    have hfin : (q '' Pn 0).Finite := ((hPc 0).image hq).finite_of_discrete
    set Tf := hfin.toFinset with hTf
    have hmemT : ∀ p, p ∈ Tf ↔ ∃ y ∈ Pn 0, q y = p := by
      intro p
      simp [hTf]
    have hcos : ∀ y, q ⁻¹' {q y} = {x | x - y ∈ Λ 0} := by
      intro y
      ext x
      simp only [mem_preimage, mem_singleton_iff, mem_setOf_eq, q]
      exact QuotientAddGroup.eq_iff_sub_mem
    have hcount : ∀ n, μ (Pn n) * ν (H 0) = (Tf.card : ENNReal) * (μ (Λ 0) * ν (H n)) := by
      intro n
      have hdec : Pn n = ⋃ p ∈ Tf, (Pn n ∩ q ⁻¹' {p}) := by
        ext x
        simp only [mem_iUnion, exists_prop]
        constructor
        · intro hx
          refine ⟨q x, (hmemT _).2 ⟨x, ⟨hx.1, hHa n hx.2⟩, rfl⟩, hx, rfl⟩
        · rintro ⟨_, _, hx, _⟩
          exact hx
      have hdisj : PairwiseDisjoint (↑Tf : Set (V ⧸ Λ 0)) (fun p => Pn n ∩ q ⁻¹' {p}) :=
        fun p _ p' _ hne => ((disjoint_singleton.2 hne).preimage q).mono inter_subset_right
          inter_subset_right
      have hmeas : ∀ p ∈ Tf, MeasurableSet (Pn n ∩ q ⁻¹' {p}) := fun p _ =>
        (hPo n).measurableSet.inter
          ((isOpen_discrete ({p} : Set (V ⧸ Λ 0))).preimage hq).measurableSet
      have hval : ∀ p ∈ Tf, μ (Pn n ∩ q ⁻¹' {p}) * ν (H 0) = μ (Λ 0) * ν (H n) := by
        intro p hp
        obtain ⟨y, hy, rfl⟩ := (hmemT p).1 hp
        obtain ⟨D, hD, hG⟩ := hyp y hy.1 hy.2
        have e : Pn n ∩ q ⁻¹' {q y} = {x | x - y ∈ Λ 0} ∩ G ⁻¹' {z | z - T ∈ H n} := by
          rw [hcos]
          ext x
          simp only [hPndef, mem_inter_iff, mem_setOf_eq, mem_preimage]
          constructor
          · rintro ⟨⟨_, hxS⟩, hxy⟩
            exact ⟨hxy, hxS⟩
          · rintro ⟨hxy, hxS⟩
            refine ⟨⟨?_, hxS⟩, hxy⟩
            have := L.add_mem hy.1 (hΛL hxy)
            rwa [add_sub_cancel] at this
        rw [e]
        exact cos_ratio μ ν Λ H hΛo hΛa hHo hHc D hD G y hG T hy.2 n
      conv_lhs => rw [hdec]
      rw [measure_biUnion_finset hdisj hmeas, Finset.sum_mul, Finset.sum_congr rfl hval,
        Finset.sum_const, nsmul_eq_mul]
    have hreal : ∀ n, μ.real (Pn n) * ν.real (H 0) = (Tf.card : ℝ) * (μ.real (Λ 0 : Set V) * ν.real (H n)) := by
      intro n
      have e' := congrArg ENNReal.toReal (hcount n)
      simp only [ENNReal.toReal_mul, ENNReal.toReal_natCast, ← measureReal_def] at e'
      exact e'
    have hratio : ∀ n, μ.real ((L : Set V) ∩ G ⁻¹' {z | z - T ∈ H n}) =
        μ.real (Pn 0) / ν.real (H 0) * ν.real (H n) := by
      intro n
      have h0 := hreal 0
      have hn := hreal n
      show μ.real (Pn n) = _
      have e0 : μ.real (Pn 0) = (Tf.card : ℝ) * μ.real (Λ 0 : Set V) := by
        have h' : μ.real (Pn 0) * ν.real (H 0) =
            ((Tf.card : ℝ) * μ.real (Λ 0 : Set V)) * ν.real (H 0) := by
          rw [h0]
          ring
        exact mul_right_cancel₀ hν0.ne' h'
      rw [e0]
      field_simp
      linarith
    rw [fib_of_ratio μ ν f ι hι G hGc hfG U B fib hfib T hB Nb hNb hNbU _ hLo hLcl hLc H hHo hHc
      hHb _ hratio, ENNReal.toReal_div, measureReal_def, measureReal_def]
  · have hP0 : Pn 0 = ∅ := not_nonempty_iff_eq_empty.1 hne
    have hP0' : (L : Set V) ∩ G ⁻¹' {z | z - T ∈ H 0} = ∅ := hP0
    rw [hP0', measure_empty, ENNReal.zero_div, ENNReal.toReal_zero, Complex.ofReal_zero]
    have hpre : f ⁻¹' {ι T} = G ⁻¹' {T} := by
      ext x
      simp [hfG, hι.eq_iff]
    have hm : G ⁻¹' {T} ∩ U ∈ ae (fib T) := by
      rw [mem_ae_iff, ← hpre]
      exact hfib.1 T
    have hae : ∀ᵐ x ∂(fib T), (L : Set V).indicator (1 : V → ℂ) x = 0 := by
      filter_upwards [hm] with x hx
      have hxT : G x = T := hx.1
      by_cases hxL : x ∈ (L : Set V)
      · exfalso
        have : x ∈ Pn 0 := ⟨hxL, by
          show G x - T ∈ H 0
          rw [hxT, sub_self]
          exact (H 0).zero_mem⟩
        rw [hP0] at this
        exact this
      · exact indicator_of_notMem hxL _
    rw [integral_congr_ae hae, integral_zero]

end PI.VolStabS
