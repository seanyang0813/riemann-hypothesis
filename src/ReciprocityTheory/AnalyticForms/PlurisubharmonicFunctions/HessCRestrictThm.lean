module

public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsSt
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsAlg
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsPiola
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsCalc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsIbp, ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.HessCRestrictThm

-- ===== clump member: ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsIbp =====
-- clump-header: {"m": "ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsIbp", "h": "module\n\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsAlg\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsPiola\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.FDeriv.Mul\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\npublic import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsCalc\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.AnForm.A

open MeasureTheory ReciprocityTheory.AnForm Matrix Filter Topology

noncomputable section

theorem contDiff_of_zero_outside {D : ℕ} {f : (Fin D → ℂ) → ℂ} {U K : Set (Fin D → ℂ)}
    {m : WithTop ℕ∞} (hU : IsOpen U) (hK : IsClosed K) (hKU : K ⊆ U) (hf : ContDiffOn ℝ m f U)
    (h0 : ∀ y ∉ K, f y = 0) : ContDiff ℝ m f := by
  rw [contDiff_iff_contDiffAt]
  intro y
  by_cases hy : y ∈ U
  · exact hf.contDiffAt (hU.mem_nhds hy)
  · have hyK : y ∈ Kᶜ := (Set.mem_compl_iff _ _).2 fun h => hy (hKU h)
    have hev : f =ᶠ[𝓝 y] fun _ => 0 := by
      filter_upwards [hK.isOpen_compl.mem_nhds hyK] with z hz
      exact h0 z ((Set.mem_compl_iff _ _).1 hz)
    exact contDiffAt_const.congr_of_eventuallyEq hev

theorem contDiffOn_dz {D : ℕ} {f : (Fin D → ℂ) → ℂ} {U : Set (Fin D → ℂ)} {n m : WithTop ℕ∞}
    (hU : IsOpen U) (hf : ContDiffOn ℝ n f U) (hmn : m + 1 ≤ n) (j : Fin D) :
    ContDiffOn ℝ m (dz j f) U := by
  have hd : ContDiffOn ℝ m (fun y => fderiv ℝ f y) U := hf.fderiv_of_isOpen hU hmn
  have h1 : ContDiffOn ℝ m (fun y => fderiv ℝ f y (Pi.single j 1)) U :=
    hd.clm_apply contDiffOn_const
  have h2 : ContDiffOn ℝ m (fun y => fderiv ℝ f y (Complex.I • Pi.single j 1)) U :=
    hd.clm_apply contDiffOn_const
  exact (h1.sub ((contDiffOn_const (c := Complex.I)).mul h2)).div_const 2

theorem contDiffOn_dzb {D : ℕ} {f : (Fin D → ℂ) → ℂ} {U : Set (Fin D → ℂ)} {n m : WithTop ℕ∞}
    (hU : IsOpen U) (hf : ContDiffOn ℝ n f U) (hmn : m + 1 ≤ n) (j : Fin D) :
    ContDiffOn ℝ m (dzb j f) U := by
  have hd : ContDiffOn ℝ m (fun y => fderiv ℝ f y) U := hf.fderiv_of_isOpen hU hmn
  have h1 : ContDiffOn ℝ m (fun y => fderiv ℝ f y (Pi.single j 1)) U :=
    hd.clm_apply contDiffOn_const
  have h2 : ContDiffOn ℝ m (fun y => fderiv ℝ f y (Complex.I • Pi.single j 1)) U :=
    hd.clm_apply contDiffOn_const
  exact (h1.add ((contDiffOn_const (c := Complex.I)).mul h2)).div_const 2

theorem contDiffOn_cplx {D : ℕ} {a : (Fin D → ℂ) → ℝ} {U : Set (Fin D → ℂ)} {n : WithTop ℕ∞}
    (ha : ContDiffOn ℝ n a U) : ContDiffOn ℝ n (cplx a) U := by
    have h := Complex.ofRealCLM.contDiff.comp_contDiffOn ha
    refine h.congr fun z _ => ?_
    simp [cplx]

theorem integration_by_parts_complex {n : ℕ} (φ : Fin n → (Fin (n + 1) → ℂ) → ℝ) (a b : (Fin (n + 1) → ℂ) → ℝ)
    (U K : Set (Fin (n + 1) → ℂ)) (hU : IsOpen U) (hK : IsCompact K) (hKU : K ⊆ U)
    (ha : ContDiffOn ℝ 3 a U) (hb : ContDiffOn ℝ 3 b U) (hφ : ∀ i, ContDiffOn ℝ 3 (φ i) U)
    (h0 : ∀ y ∉ K, ∀ j k, (fun y => cplx a y * dzb k (cplx b) y) =ᶠ[𝓝 y] (fun _ => 0) ∧
      dz j (cplx a) y * dzb k (cplx b) y = 0 ∧ cplx a y * dz j (dzb k (cplx b)) y = 0) :
    Integrable (fun y => ∑ j, ∑ k, dz j (cplx a) y * dzb k (cplx b) y * hessCof φ y j k) ∧
    Integrable (fun y => cplx a y * ∑ j, ∑ k, hessCof φ y j k * dz j (dzb k (cplx b)) y) ∧
    (∫ y, ∑ j, ∑ k, dz j (cplx a) y * dzb k (cplx b) y * hessCof φ y j k) +
      (∫ y, cplx a y * ∑ j, ∑ k, hessCof φ y j k * dz j (dzb k (cplx b)) y) = 0 := by
  set X := fun y => ∑ j, ∑ k, dz j (cplx a) y * dzb k (cplx b) y * hessCof φ y j k with hX
  set Y := fun y => cplx a y * ∑ j, ∑ k, hessCof φ y j k * dz j (dzb k (cplx b)) y with hY
  set g : Fin (n + 1) → Fin (n + 1) → (Fin (n + 1) → ℂ) → ℂ :=
    fun j k y => cplx a y * dzb k (cplx b) y * hessCof φ y j k with hg
  have hA : ContDiffOn ℝ 3 (cplx a) U := contDiffOn_cplx ha
  have hB : ContDiffOn ℝ 3 (cplx b) U := contDiffOn_cplx hb
  have hdA : ∀ j, ContDiffOn ℝ 2 (dz j (cplx a)) U := fun j => contDiffOn_dz hU hA (by norm_num) j
  have hdB : ∀ k, ContDiffOn ℝ 2 (dzb k (cplx b)) U := fun k => contDiffOn_dzb hU hB (by norm_num) k
  have hddB : ∀ j k, ContDiffOn ℝ 1 (dz j (dzb k (cplx b))) U :=
    fun j k => contDiffOn_dz hU (hdB k) (by norm_num) j
  have hC : ∀ j k, ContDiffOn ℝ 1 (fun y => hessCof φ y j k) U :=
    fun j k => hessCof_contDiffOn φ U hU 1 (fun i => (hφ i).of_le (by norm_num)) j k
  have hg0 : ∀ j k, ∀ y ∉ K, g j k y = 0 := by
    intro j k y hy
    have h1 := (h0 y hy j k).1.self_of_nhds
    simp only at h1
    simp only [hg, h1, zero_mul]
  have hgC : ∀ j k, ContDiff ℝ 1 (g j k) := fun j k =>
    contDiff_of_zero_outside hU hK.isClosed hKU
      (((hA.of_le (by norm_num)).mul ((hdB k).of_le (by norm_num))).mul (hC j k)) (hg0 j k)
  have hgs : ∀ j k, HasCompactSupport (g j k) := fun j k => HasCompactSupport.intro hK (hg0 j k)
  have hint : ∀ j k, ∫ y, dz j (g j k) y = 0 := fun j k =>
    (integral_dz_formula _ j _ (hgC j k) (hgs j k)).1
  have hdzint : ∀ j k, Integrable (dz j (g j k)) := by
    intro j k
    have hi := integrable_fderiv_apply_of_cs (hgC j k) (hgs j k)
    unfold dz
    exact ((hi _).sub ((hi _).const_mul Complex.I)).div_const 2
  have hXz : ∀ y ∉ K, X y = 0 := by
    intro y hy
    simp only [hX]
    exact Finset.sum_eq_zero fun j _ => Finset.sum_eq_zero fun k _ => by
      rw [(h0 y hy j k).2.1, zero_mul]
  have hYz : ∀ y ∉ K, Y y = 0 := by
    intro y hy
    simp only [hY]
    rw [Finset.mul_sum]
    refine Finset.sum_eq_zero fun j _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_eq_zero fun k _ => ?_
    rw [mul_left_comm, (h0 y hy j k).2.2, mul_zero]
  have hpt : ∀ y, X y + Y y = ∑ j, ∑ k, dz j (g j k) y := by
    intro y
    by_cases hy : y ∈ K
    · have hyU := hKU hy
      have hnh := hU.mem_nhds hyU
      have hAd : DifferentiableAt ℝ (cplx a) y :=
        (hA.contDiffAt hnh).differentiableAt (by norm_num)
      have hBd : ∀ k, DifferentiableAt ℝ (dzb k (cplx b)) y :=
        fun k => ((hdB k).contDiffAt hnh).differentiableAt (by norm_num)
      have hCd : ∀ j k, DifferentiableAt ℝ (fun y => hessCof φ y j k) y :=
        fun j k => ((hC j k).contDiffAt hnh).differentiableAt (by norm_num)
      have hexp : ∀ j k, dz j (g j k) y =
          dz j (cplx a) y * dzb k (cplx b) y * hessCof φ y j k +
            cplx a y * dz j (dzb k (cplx b)) y * hessCof φ y j k +
              cplx a y * dzb k (cplx b) y * dz j (fun y => hessCof φ y j k) y := by
        intro j k
        show dz j (fun y => (cplx a y * dzb k (cplx b) y) * hessCof φ y j k) y = _
        rw [dz_mul (hAd.fun_mul (hBd k)) (hCd j k), dz_mul hAd (hBd k)]
        ring
      have hpiola := (piolaStatement_statement n φ U hU hφ y hyU).1
      simp only [hexp, Finset.sum_add_distrib]
      have h3 : ∑ j, ∑ k, cplx a y * dzb k (cplx b) y * dz j (fun y => hessCof φ y j k) y = 0 := by
        rw [Finset.sum_comm]
        refine Finset.sum_eq_zero fun k _ => ?_
        rw [← Finset.mul_sum, hpiola k, mul_zero]
      rw [h3, add_zero]
      simp only [hX, hY, Finset.mul_sum]
      congr 1
      exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => by ring
    · have hev : ∀ j k, g j k =ᶠ[𝓝 y] fun _ => 0 := fun j k =>
        (h0 y hy j k).1.mono fun x hx => by
          simp only at hx
          simp only [hg, hx, zero_mul]
      rw [hXz y hy, hYz y hy, add_zero]
      exact (Finset.sum_eq_zero fun j _ => Finset.sum_eq_zero fun k _ =>
        dz_of_eventually_zero (hev j k)).symm
  have hXi : Integrable X := by
    have hc : ContDiff ℝ 0 X := contDiff_of_zero_outside hU hK.isClosed hKU
      (ContDiffOn.sum fun j _ => ContDiffOn.sum fun k _ =>
        (((hdA j).of_le (by norm_num)).mul ((hdB k).of_le (by norm_num))).mul
          ((hC j k).of_le (by norm_num))) hXz
    exact (contDiff_zero.1 hc).integrable_of_hasCompactSupport (HasCompactSupport.intro hK hXz)
  have hYi : Integrable Y := by
    have hc : ContDiff ℝ 0 Y := contDiff_of_zero_outside hU hK.isClosed hKU
      ((hA.of_le (by norm_num)).mul (ContDiffOn.sum fun j _ => ContDiffOn.sum fun k _ =>
        ((hC j k).of_le (by norm_num)).mul ((hddB j k).of_le (by norm_num)))) hYz
    exact (contDiff_zero.1 hc).integrable_of_hasCompactSupport (HasCompactSupport.intro hK hYz)
  refine ⟨hXi, hYi, ?_⟩
  rw [← integral_add hXi hYi]
  have hfun : (fun y => X y + Y y) = fun y => ∑ j, ∑ k, dz j (g j k) y := funext hpt
  rw [hfun, MeasureTheory.integral_finsetSum _ (fun j _ => MeasureTheory.integrable_finsetSum _ fun k _ => hdzint j k)]
  refine Finset.sum_eq_zero fun j _ => ?_
  rw [MeasureTheory.integral_finsetSum _ fun k _ => hdzint j k]
  exact Finset.sum_eq_zero fun k _ => hint j k

theorem vanish_outside_tsupport {D : ℕ} {v : (Fin D → ℂ) → ℝ} {y : Fin D → ℂ}
    (hy : y ∉ tsupport v) :
    cplx v =ᶠ[𝓝 y] (fun _ => 0) ∧ (∀ k, dzb k (cplx v) =ᶠ[𝓝 y] fun _ => 0) ∧
      fderiv ℝ (fderiv ℝ v) y = 0 := by
  have hWo : IsOpen (tsupport v)ᶜ := (isClosed_tsupport v).isOpen_compl
  have hy' : y ∈ (tsupport v)ᶜ := (Set.mem_compl_iff _ _).2 hy
  have hv0 : ∀ z ∈ (tsupport v)ᶜ, v z = 0 := fun z hz => by
    by_contra h
    exact (Set.mem_compl_iff _ _).1 hz (subset_tsupport v (Function.mem_support.2 h))
  have hc : ∀ z ∈ (tsupport v)ᶜ, cplx v =ᶠ[𝓝 z] fun _ => (0 : ℂ) := fun z hz => by
    filter_upwards [hWo.mem_nhds hz] with x hx
    simp [cplx, hv0 x hx]
  have hr : ∀ z ∈ (tsupport v)ᶜ, v =ᶠ[𝓝 z] fun _ => (0 : ℝ) := fun z hz => by
    filter_upwards [hWo.mem_nhds hz] with x hx using hv0 x hx
  refine ⟨hc y hy', fun k => ?_, ?_⟩
  · filter_upwards [hWo.mem_nhds hy'] with z hz
    have hfz := (hc z hz).fderiv_eq (𝕜 := ℝ)
    simp [dzb, hfz]
  · have h1 : fderiv ℝ v =ᶠ[𝓝 y] fun _ => (0 : (Fin D → ℂ) →L[ℝ] ℝ) := by
      filter_upwards [hWo.mem_nhds hy'] with z hz
      rw [(hr z hz).fderiv_eq (𝕜 := ℝ)]
      simp
    rw [h1.fderiv_eq (𝕜 := ℝ)]
    simp

theorem mulVec_one_sub_idempotent_of_split_sum_identity : PartsStatement := by
  intro n φ v w U ⟨hU, hv, hvc, hKU, hw, hφ⟩
  have hK : IsCompact (tsupport v) := hvc
  have hout : ∀ y ∉ tsupport v, _ := fun y hy => vanish_outside_tsupport (v := v) (y := y) hy
  obtain ⟨hX1, hY1, hI1⟩ := integration_by_parts_complex φ v w U (tsupport v) hU hK hKU hv hw hφ (fun y hy j k => ⟨
      (hout y hy).1.mono fun x hx => by simp only at hx ⊢; rw [hx, zero_mul],
      by rw [dz_of_eventually_zero (hout y hy).1, zero_mul],
      by simp only [(hout y hy).1.self_of_nhds, zero_mul]⟩)
  obtain ⟨hX2, hY2, hI2⟩ := integration_by_parts_complex φ w v U (tsupport v) hU hK hKU hw hv hφ (fun y hy j k => ⟨
      ((hout y hy).2.1 k).mono fun x hx => by simp only at hx ⊢; rw [hx, mul_zero],
      by simp only [((hout y hy).2.1 k).self_of_nhds, mul_zero],
      by rw [dz_of_eventually_zero ((hout y hy).2.1 k), mul_zero]⟩)
  set c : ℝ := ((n + 1).factorial : ℝ) * (2 / Real.pi) ^ (n + 1) with hc
  have hvz : ∀ y ∉ U, v y = 0 := fun y hy => image_eq_zero_of_notMem_tsupport fun h => hy (hKU h)
  have e1 : ∀ y, v y * maDens (Fin.cons w φ) y =
      c * (cplx v y * ∑ j, ∑ k, hessCof φ y j k * dz j (dzb k (cplx w)) y).re := by
    intro y
    by_cases hy : y ∈ U
    · rw [monge_ampere_density_cofactor n φ w U hU (hw.of_le (by norm_num)) y hy]
      simp only [cplx, Complex.re_ofReal_mul]; ring
    · simp [cplx, hvz y hy]
  have e2 : ∀ y, w y * maDens (Fin.cons v φ) y =
      c * (cplx w y * ∑ j, ∑ k, hessCof φ y j k * dz j (dzb k (cplx v)) y).re := by
    intro y
    by_cases hy : y ∈ U
    · rw [monge_ampere_density_cofactor n φ v U hU (hv.of_le (by norm_num)) y hy]
      simp only [cplx, Complex.re_ofReal_mul]; ring
    · have hyK : y ∉ tsupport v := fun h => hy (hKU h)
      have h1 : maDens (Fin.cons v φ) y = 0 := by
        rw [maDens_cons_eq, _root_.ReciprocityTheory.AnForm.A.mdisc_cons_eq_sum, hessC_eq_hessMat, (hout y hyK).2.2]; simp
      have h2 : ∀ j k, dz j (dzb k (cplx v)) y = 0 :=
        fun j k => dz_of_eventually_zero ((hout y hyK).2.1 k)
      simp [h1, h2]
  have e3 : ∀ y, gradDens φ v w y =
      c * (∑ j, ∑ k, dz j (cplx v) y * dzb k (cplx w) y * hessCof φ y j k).re := by
    intro y; simp only [gradDens, _root_.ReciprocityTheory.AnForm.A.mdisc_cons_eq_sum]; rfl
  have e4 : ∀ y, gradDens φ w v y =
      c * (∑ j, ∑ k, dz j (cplx w) y * dzb k (cplx v) y * hessCof φ y j k).re := by
    intro y; simp only [gradDens, _root_.ReciprocityTheory.AnForm.A.mdisc_cons_eq_sum]; rfl
  have hgz : ∀ y ∉ U, gradDens φ v w y = 0 := by
    intro y hy
    rw [e3]
    simp [dz_of_eventually_zero ((hout y fun h => hy (hKU h)).1)]
  have hsym : ∀ y, gradDens φ v w y = gradDens φ w v y := by
    intro y
    by_cases hy : y ∈ U
    · exact gradDensSymm_thm n φ v w U hU (fun i => (hφ i).of_le (by norm_num)) y hy
    · rw [hgz y hy, e4]
      simp [dzb_of_eventually_zero ((hout y fun h => hy (hKU h)).1)]
  have i1 : Integrable (fun y => v y * maDens (Fin.cons w φ) y) := by
    simp only [e1]; exact hY1.re.const_mul c
  have i2 : Integrable (fun y => w y * maDens (Fin.cons v φ) y) := by
    simp only [e2]; exact hY2.re.const_mul c
  have i3 : Integrable (gradDens φ v w) := by
    have : gradDens φ v w = fun y => c * (∑ j, ∑ k, dz j (cplx v) y * dzb k (cplx w) y *
        hessCof φ y j k).re := funext e3
    rw [this]; exact hX1.re.const_mul c
  have g1 : ∫ y, gradDens φ v w y = c * (∫ y, ∑ j, ∑ k, dz j (cplx v) y * dzb k (cplx w) y *
      hessCof φ y j k).re := by
    simp only [e3]; rw [integral_const_mul]; congr 1; exact integral_re hX1
  have g2 : ∫ y, gradDens φ w v y = c * (∫ y, ∑ j, ∑ k, dz j (cplx w) y * dzb k (cplx v) y *
      hessCof φ y j k).re := by
    simp only [e4]; rw [integral_const_mul]; congr 1; exact integral_re hX2
  have s1 : maInt (Fin.cons w φ) v U = c * (∫ y, cplx v y * ∑ j, ∑ k, hessCof φ y j k *
      dz j (dzb k (cplx w)) y).re := by
    unfold maInt
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero fun y hy => by simp [hvz y hy]]
    simp only [e1]; rw [integral_const_mul]; congr 1; exact integral_re hY1
  have s3 : maInt (Fin.cons v φ) w U = c * (∫ y, cplx w y * ∑ j, ∑ k, hessCof φ y j k *
      dz j (dzb k (cplx v)) y).re := by
    unfold maInt
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero fun y hy => by
      rw [e2]
      have hyK : y ∉ tsupport v := fun h => hy (hKU h)
      simp [dz_of_eventually_zero ((hout y hyK).2.1 _)]]
    simp only [e2]; rw [integral_const_mul]; congr 1; exact integral_re hY2
  have s2 : gradInt φ v w U = ∫ y, gradDens φ v w y := by
    unfold gradInt
    exact setIntegral_eq_integral_of_forall_compl_eq_zero hgz
  have r1 := congrArg Complex.re hI1
  have r2 := congrArg Complex.re hI2
  simp only [Complex.add_re, Complex.zero_re] at r1 r2
  have hs : ∫ y, gradDens φ v w y = ∫ y, gradDens φ w v y := by
    congr 1; exact funext hsym
  refine ⟨i1.integrableOn, i2.integrableOn, i3.integrableOn, ?_, ?_⟩
  · rw [s1, s2, g1]; linear_combination c * r1
  · rw [s3, s1]
    rw [g1, g2] at hs
    linear_combination c * r2 - c * r1 + hs

end

end ReciprocityTheory.AnForm.A
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsIbp =====

-- ===== clump member: ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.HessCRestrictThm =====
-- clump-header: {"m": "ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.HessCRestrictThm", "h": "module\n\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsIbp\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.AnForm.A

alias parts_thm := _root_.ReciprocityTheory.AnForm.A.mulVec_one_sub_idempotent_of_split_sum_identity

theorem hessCRestrict_thm : HessCRestrictStatement := by
  intro n φ U j hU hφ y hy
  obtain ⟨Lc, hLc⟩ : ∃ Lc : (Fin n → ℂ) →L[ℝ] (Fin (n + 1) → ℂ),
      ∀ y, Lc y = Fin.insertNth (α := fun _ => ℂ) j 0 y := by
    refine ⟨ContinuousLinearMap.pi fun i => Fin.insertNth
      (α := fun _ => (Fin n → ℂ) →L[ℝ] ℂ) j 0
      (fun k => ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin n => ℂ) k) i, ?_⟩
    intro y
    funext m
    by_cases hm : m = j
    · rw [hm]; simp
    · obtain ⟨k, rfl⟩ := Fin.exists_succAbove_eq hm
      simp
  have hs : ∀ (c : ℂ) (i : Fin n), Lc (c • Pi.single i 1) = c • Pi.single (j.succAbove i) 1 := by
    intro c i
    rw [hLc]
    funext m
    by_cases hm : m = j
    · rw [hm]; simp [(Fin.succAbove_ne j i).symm]
    · obtain ⟨k, rfl⟩ := Fin.exists_succAbove_eq hm
      simp [Pi.single_apply]
  have hs1 : ∀ i : Fin n, Lc (Pi.single i 1) = Pi.single (j.succAbove i) 1 := by
    intro i; simpa using hs 1 i
  have hfun : (fun y' => φ (Fin.insertNth (α := fun _ => ℂ) j 0 y')) = φ ∘ Lc := by
    funext y'; simp only [Function.comp_apply, hLc]
  rw [hfun, ← hLc y]
  rw [← hLc y] at hy
  have hφa : ∀ x ∈ U, ContDiffAt ℝ 2 φ x := fun x hx => hφ.contDiffAt (hU.mem_nhds hx)
  have hev : fderiv ℝ (φ ∘ Lc) =ᶠ[nhds y] fun y' => (fderiv ℝ φ (Lc y')).comp Lc := by
    have hU' : ∀ᶠ y' in nhds y, Lc y' ∈ U :=
      Lc.continuous.continuousAt.preimage_mem_nhds (hU.mem_nhds hy)
    filter_upwards [hU'] with y' hy'
    rw [fderiv_comp y' ((hφa _ hy').differentiableAt
      (by first | exact two_ne_zero)) Lc.differentiableAt,
      Lc.fderiv]
  have hd1 : DifferentiableAt ℝ (fderiv ℝ φ) (Lc y) :=
    ((hφa _ hy).fderiv_right (m := 1)
      (by first | exact le_rfl)).differentiableAt
      (by first | exact one_ne_zero)
  have hc : DifferentiableAt ℝ (fun y' => fderiv ℝ φ (Lc y')) y :=
    hd1.comp y Lc.differentiableAt
  have hH : ∀ v w, fderiv ℝ (fderiv ℝ (φ ∘ Lc)) y v w =
      fderiv ℝ (fderiv ℝ φ) (Lc y) (Lc v) (Lc w) := by
    intro v w
    rw [hev.fderiv_eq, fderiv_clm_comp (c := fun y' => fderiv ℝ φ (Lc y')) (d := fun _ => Lc) hc
      (differentiableAt_const Lc), fderiv_fun_comp y hd1 Lc.differentiableAt, Lc.fderiv]
    simp
  refine Matrix.ext fun a b => ?_
  simp only [hessC, Matrix.submatrix_apply, hH, hs, hs1]

end ReciprocityTheory.AnForm.A
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.HessCRestrictThm =====
