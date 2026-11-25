module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityContinuous
public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityUnique
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.StageData
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicUnitaryGroupLocallyCompact
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.BlockOneScalarPreservesNondegenerate
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CoordinateHaarMeasure
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureGeneralRankExtension
import Aesop.Main
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianMatricesLocallyCompactBorel
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GermFormPulledBackCombinationsExpandMonomials, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberConsProductUniqueness

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GermFormPulledBackCombinationsExpandMonomials =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GermFormPulledBackCombinationsExpandMonomials", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityContinuous\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Matrix
open scoped ENNReal NNReal

namespace GlobalTheory.CompanionTheory.SW.FibreJointCont

theorem continuousOn_integral_of_bounded {V X P : Type}
    [TopologicalSpace V] [T2Space V] [MeasurableSpace V] [BorelSpace V]
    [TopologicalSpace X] [LocallyCompactSpace X] [TopologicalSpace P]
    (fib : X → Measure V) (B : Set X) (hB : IsOpen B)
    (hloc : ∀ b, IsLocallyFiniteMeasure (fib b))
    (hbd : ∀ (C : Set V) (D : Set X), IsCompact C → IsCompact D → D ⊆ B →
      ∃ c : ℝ≥0, ∀ b ∈ D, fib b C ≤ c)
    (hcont : ∀ φ : V → ℝ, Continuous φ → HasCompactSupport φ →
      ContinuousOn (fun b => ∫ v, φ v ∂(fib b)) B)
    (W : Set P) (Φ : P → V → ℝ)
    (hΦ : ContinuousOn (fun p : P × V => Φ p.1 p.2) (W ×ˢ Set.univ)) (hW : IsOpen W)
    (C : Set V) (hC : IsCompact C) (hsupp : ∀ p ∈ W, ∀ v, v ∉ C → Φ p v = 0) :
    ContinuousOn (fun q : P × X => ∫ v, Φ q.1 v ∂(fib q.2)) (W ×ˢ B) := by

  have hAt : ∀ p ∈ W, ∀ v, ContinuousAt (fun p : P × V => Φ p.1 p.2) (p, v) := fun p hp v =>
    hΦ.continuousAt ((hW.prod isOpen_univ).mem_nhds ⟨hp, Set.mem_univ v⟩)
  have hslice : ∀ p ∈ W, Continuous (Φ p) := fun p hp =>
    continuous_iff_continuousAt.2 fun v =>
      ContinuousAt.comp (f := fun v : V => (p, v)) (g := fun p : P × V => Φ p.1 p.2)
        (hAt p hp v) (by fun_prop)
  have hcs : ∀ p ∈ W, HasCompactSupport (Φ p) := fun p hp =>
    HasCompactSupport.intro hC (hsupp p hp)
  have hint : ∀ p ∈ W, ∀ b, Integrable (Φ p) (fib b) := fun p hp b => by
    haveI := hloc b
    exact (hslice p hp).integrable_of_hasCompactSupport (hcs p hp)
  rintro ⟨p₀, b₀⟩ ⟨hp₀, hb₀⟩
  simp only at hp₀ hb₀ ⊢
  refine ContinuousAt.continuousWithinAt ?_
  obtain ⟨D, hDn, hDB, hDc⟩ := local_compact_nhds (hB.mem_nhds hb₀)
  obtain ⟨c, hc⟩ := hbd C D hC hDc hDB
  refine Metric.tendsto_nhds.2 fun ε hε => ?_
  set δ : ℝ := ε / (2 * ((c : ℝ) + 1)) with hδ
  have hδ0 : 0 < δ := by positivity

  have htube : ∀ᶠ p in 𝓝 p₀, ∀ v ∈ C, |Φ p v - Φ p₀ v| < δ := by
    refine hC.eventually_forall_of_forall_eventually fun v _ => ?_
    have h1 : ContinuousAt (fun z : P × V => Φ z.1 z.2 - Φ p₀ z.2) (p₀, v) :=
      (hAt p₀ hp₀ v).sub
        (ContinuousAt.comp (f := fun z : P × V => z.2) (g := Φ p₀)
          (hslice p₀ hp₀).continuousAt continuousAt_snd)
    have h2 : Filter.Tendsto (fun z : P × V => Φ z.1 z.2 - Φ p₀ z.2) (𝓝 (p₀, v)) (𝓝 0) := by
      have h3 := h1.tendsto
      simp only [sub_self] at h3
      exact h3
    have h4 := (Metric.tendsto_nhds.1 h2) δ hδ0
    filter_upwards [h4] with z hz
    simpa [Real.dist_eq] using hz
  have hb : ∀ᶠ b in 𝓝 b₀,
      |∫ v, Φ p₀ v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b₀)| < ε / 2 := by
    have h1 := ((hcont (Φ p₀) (hslice p₀ hp₀) (hcs p₀ hp₀)).continuousAt
      (hB.mem_nhds hb₀)).tendsto
    have h2 := (Metric.tendsto_nhds.1 h1) (ε / 2) (by positivity)
    filter_upwards [h2] with b hb
    simpa [Real.dist_eq] using hb
  rw [nhds_prod_eq]
  have hp : ∀ᶠ p in 𝓝 p₀, p ∈ W ∧ ∀ v ∈ C, |Φ p v - Φ p₀ v| < δ :=
    Filter.Eventually.and (hW.mem_nhds hp₀) htube
  have hbb : ∀ᶠ b in 𝓝 b₀, b ∈ D ∧
      |∫ v, Φ p₀ v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b₀)| < ε / 2 := Filter.Eventually.and hDn hb
  filter_upwards [hp.prod_mk hbb] with q hq
  obtain ⟨⟨hqW, hqt⟩, hqD, hqb⟩ := hq
  obtain ⟨p, b⟩ := q
  simp only at hqW hqt hqD hqb ⊢
  have hfin : fib b C < ∞ := (hc b hqD).trans_lt ENNReal.coe_lt_top
  have hdiff : ∫ v, Φ p v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b)
      = ∫ v in C, (Φ p v - Φ p₀ v) ∂(fib b) := by
    rw [← integral_sub (hint p hqW b) (hint p₀ hp₀ b)]
    refine (setIntegral_eq_integral_of_forall_compl_eq_zero fun v hv => ?_).symm
    rw [hsupp p hqW v hv, hsupp p₀ hp₀ v hv, sub_zero]
  have hreal : (fib b).real C ≤ c := by
    have := ENNReal.toReal_mono ENNReal.coe_ne_top (hc b hqD)
    simpa [Measure.real] using this
  have hle : |∫ v, Φ p v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b)| ≤ δ * (c : ℝ) := by
    rw [hdiff, ← Real.norm_eq_abs]
    have h5 : ‖∫ v in C, (Φ p v - Φ p₀ v) ∂(fib b)‖ ≤ δ * (fib b).real C :=
      norm_setIntegral_le_of_norm_le_const (C := δ) hfin fun v hv => by
        rw [Real.norm_eq_abs]; exact (hqt v hv).le
    exact h5.trans (mul_le_mul_of_nonneg_left hreal hδ0.le)
  have hδc : δ * (c : ℝ) ≤ ε / 2 := by
    rw [hδ, div_mul_eq_mul_div, div_le_iff₀ (by positivity)]
    nlinarith
  rw [Real.dist_eq]
  calc |∫ v, Φ p v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b₀)|
      = |(∫ v, Φ p v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b))
          + (∫ v, Φ p₀ v ∂(fib b) - ∫ v, Φ p₀ v ∂(fib b₀))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ < ε := by linarith

theorem continuousOn_fibre_integral : ∀ (V X Y : Type) [TopologicalSpace V] [LocallyCompactSpace V] [SecondCountableTopology V] [T2Space V] [MeasurableSpace V] [BorelSpace V] [TopologicalSpace X] [LocallyCompactSpace X] [SecondCountableTopology X] [T2Space X] [MeasurableSpace X] [BorelSpace X] (μ : Measure V) (ν : Measure X) [IsLocallyFiniteMeasure μ] [IsLocallyFiniteMeasure ν] [ν.IsOpenPosMeasure] (f : V → Y) (g : V → X) (ι : X → Y), Function.Injective ι → Continuous g → (∀ v, f v = ι (g v)) → ∀ (B : Set X), IsOpen B → ∀ fib : X → Measure V, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ f ι (g ⁻¹' B) ν B fib → ∀ (P : Type) [TopologicalSpace P] (W : Set P) (Φ : P → V → ℝ), ContinuousOn (fun p : P × V => Φ p.1 p.2) (W ×ˢ Set.univ) → IsOpen W → ∀ C : Set V, IsCompact C → (∀ p ∈ W, ∀ v, v ∉ C → Φ p v = 0) → ContinuousOn (fun q : P × X => ∫ v, Φ q.1 v ∂(fib q.2)) (W ×ˢ B) := by
  intro V X Y _ _ _ _ _ _ _ _ _ _ _ _ μ ν _ _ _ f g ι hι hg hfg B hB fib hF P _ W Φ hΦ hW C hC hsupp
  obtain ⟨hloc, -, -, hbd⟩ := _root_.GlobalTheory.CompanionTheory.SW.FibreFam.fibre_family_basic V X Y μ ν f g ι hι hg hfg B hB fib hF
  refine continuousOn_integral_of_bounded fib B hB hloc hbd ?_ W Φ hΦ hW C hC hsupp
  intro φ hφ hφc
  have h := (_root_.GlobalTheory.CompanionTheory.SW.FibreDensity.isContDensityOn_fibreIntegral V X Y μ ν f g ι hι hg hfg B hB fib hF (fun v => (φ v : ℂ))
    (Complex.continuous_ofReal.comp hφ) (hφc.comp_left Complex.ofReal_zero)).1.1
  have h2 : ContinuousOn (fun b => Complex.re (∫ v, ((φ v : ℝ) : ℂ) ∂(fib b))) B :=
    Complex.continuous_re.comp_continuousOn h
  refine h2.congr fun b _ => ?_
  have := integral_ofReal (μ := fib b) (𝕜 := ℂ) (f := φ)
  simp only [Complex.coe_algebraMap] at this
  show ∫ v, φ v ∂(fib b) = (∫ v, ((φ v : ℝ) : ℂ) ∂(fib b)).re
  rw [this]
  simp

end GlobalTheory.CompanionTheory.SW.FibreJointCont
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GermFormPulledBackCombinationsExpandMonomials =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberConsProductUniqueness =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberConsProductUniqueness", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.StageData\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicUnitaryGroupLocallyCompact\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.BlockOneScalarPreservesNondegenerate\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CoordinateHaarMeasure\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GermFormPulledBackCombinationsExpandMonomials\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureGeneralRankExtension\nimport Aesop.Main\nimport Formalism.UnipotentAdelicQuotients.SWXSDefs\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianMatricesLocallyCompactBorel\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PiLocalization₂.ContTwo

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW GlobalTheory.CompanionTheory.SW.PiLocalization₂ NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

def tl {K : Type} {M n : ℕ} (Y : Fin (n + 1) → Fin (M + 1) → K) : Fin n → Fin M → K :=
  fun j i => Y j.succ i.succ

theorem tl_vec {K : Type} [Zero K] {M n : ℕ} (α : K) (c : Fin n → K) (X : Fin n → Fin M → K) :
    tl (vec α c X) = X := by
  funext j i
  simp [tl, vec]

theorem continuous_tl {K : Type} [TopologicalSpace K] {M n : ℕ} :
    Continuous (tl : (Fin (n + 1) → Fin (M + 1) → K) → Fin n → Fin M → K) := by
  refine continuous_pi fun j => continuous_pi fun i => ?_
  exact (continuous_apply i.succ).comp (continuous_apply j.succ)

theorem continuous_vec {K : Type} [Zero K] [TopologicalSpace K] {M n : ℕ} :
    Continuous (fun p : K × (Fin n → K) × (Fin n → Fin M → K) => vec p.1 p.2.1 p.2.2) := by
  refine continuous_pi fun a => ?_
  refine Fin.cases ?_ (fun j => ?_) a
  · refine continuous_pi fun i => ?_
    refine Fin.cases ?_ (fun k => ?_) i
    · simpa [vec] using continuous_fst
    · simpa [vec] using continuous_const
  · refine continuous_pi fun i => ?_
    refine Fin.cases ?_ (fun k => ?_) i
    · have h : Continuous (fun p : K × (Fin n → K) × (Fin n → Fin M → K) => p.2.1 j) :=
        (continuous_apply j).comp (continuous_fst.comp continuous_snd)
      simpa [vec] using h
    · have h : Continuous (fun p : K × (Fin n → K) × (Fin n → Fin M → K) => p.2.2 j k) :=
        (continuous_apply k).comp ((continuous_apply j).comp (continuous_snd.comp continuous_snd))
      simpa [vec] using h

theorem actW_vec_zero {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {N n : ℕ}
    (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] (J' : Matrix (Fin (N + 1)) (Fin (N + 1)) E)
    (h : HA R σ J') (A : R ⊗[F] E) (c : Fin n → R ⊗[F] E) (X : Fin n → Fin N → R ⊗[F] E) (i : Fin (N + 1)) :
    actW R σ J' h (vec A c X) 0 i =
      actW R σ J' h (fun _ : Fin 1 => Fin.cons 1 (fun _ => 0)) 0 i * A := by
  have hv : (Fin.cons A (fun _ => 0) : Fin (N + 1) → R ⊗[F] E) = A • Fin.cons 1 (fun _ => 0) := by
    funext k
    refine Fin.cases ?_ (fun k => ?_) k <;> simp
  simp only [actW, actTup, vec, Fin.cons_zero]
  rw [hv, Matrix.mulVec_smul]
  simp [mul_comm]

theorem continuous_tmul_one {F E : Type} [Field F] [Field E] [Algebra F E]
    (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] :
    Continuous (fun α : R => α ⊗ₜ[F] (1 : E)) := by
  haveI : IsModuleTopology R (R ⊗[F] E) := ⟨rfl⟩
  haveI : ContinuousSMul R (R ⊗[F] E) := IsModuleTopology.toContinuousSMul R (R ⊗[F] E)
  have h : Continuous (fun α : R => α • (1 : R ⊗[F] E)) :=
    continuous_smul.comp (continuous_id.prodMk continuous_const)
  convert h using 2 with α
  rw [Algebra.TensorProduct.one_def, TensorProduct.smul_tmul', smul_eq_mul, mul_one]

theorem cont_double : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (M : ℕ) (J : Matrix (Fin M) (Fin M) E) (t : F) (n : ℕ) (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [MeasurableSpace R] [BorelSpace R] (d : ℕ) (b : Module.Basis (Fin d) F E) (lam : Measure R) (m₁ : HermR R σ 1 → Measure (Fin 1 → Fin (M + 1) → R ⊗[F] E)) (m' : HermR R σ n → Measure (Fin n → Fin M → R ⊗[F] E)) (s : (Fin 1 → Fin (M + 1) → R ⊗[F] E) → HA R σ (blockOne (algebraMap F E t) J)) (B₀ : Set R) (a : R → Rˣ) (κ₁ cm : Rˣ → ℝ≥0), StageData σ J t n b lam m₁ m' s B₀ a κ₁ cm → ∀ φ : (Fin (n + 1) → Fin (M + 1) → R ⊗[F] E) → ℝ, Continuous φ → HasCompactSupport φ → ContinuousOn (fun z : R × (Fin n → R ⊗[F] E) × HermR R σ n => Preal σ J t m₁ m' s φ z.1 z.2.1 z.2.2) ({α : R | IsUnit α} ×ˢ (Set.univ ×ˢ Unt σ R n)) := by
  open scoped Pointwise in
   intro F E _ _ _ _ _ σ M J t n R _ _ _ _ _ d b lam m₁ m' s B₀ a κ₁ cm D φ hφ hφc
   haveI iTR : IsTopologicalRing R := D.hR.1
   haveI iLC : LocallyCompactSpace R := D.hR.2.1
   haveI iSC : SecondCountableTopology R := D.hR.2.2.1
   haveI iT2 : T2Space R := D.hR.2.2.2.1
   have hval : IsOpenEmbedding (Units.val : Rˣ → R) := D.hR.2.2.2.2.2.2.1
   have hJ' := _root_.GlobalTheory.CompanionTheory.SW.PiLocalization₂.isHermND_blockOne_algebraMap F E σ M J D.hJ t D.ht
   obtain ⟨kTR, kLC, kSC, kT2, -, -, -, kB, -, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ D.hCM R
   haveI := kTR
   haveI := kLC
   haveI := kSC
   haveI := kT2
   haveI : BorelSpace (R ⊗[F] E) := ⟨rfl⟩
   obtain ⟨eLC, eSC, eT2, eB, hlift⟩ := _root_.GlobalTheory.CompanionTheory.SW.HermTop.herm_top F E σ D.hCM R n
   haveI := eLC
   haveI := eSC
   haveI := eT2
   haveI := eB
   obtain ⟨g, hgc, hg⟩ := hlift M J D.hJ
   obtain ⟨gTG, gLC, gSC, gT2, gB, hactall⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopH.topH_props F E σ D.hCM (M + 1) _ hJ' R
   haveI := gTG
   haveI := gLC
   haveI := gSC
   haveI := gT2
   haveI := gB
   obtain ⟨hact, hact1, hactm, -⟩ := hactall (n + 1)
   obtain ⟨-, hW, hH⟩ := _root_.GlobalTheory.CompanionTheory.SW.coord_measures_haar F E σ D.hCM R d b lam D.hlam
   haveI := hW n M
   haveI := hH n
   obtain ⟨hUo, -, -, -, hbd', -⟩ := _root_.GlobalTheory.CompanionTheory.SW.PiLocalization₂.gramFib_basic F E σ D.hCM M n J D.hJ R D.hR d b lam D.hlam m' D.hm'
   obtain ⟨-, hloc₁, -, -, -, hgram₁⟩ :=
     _root_.GlobalTheory.CompanionTheory.SW.PiLocalization₂.gramFib_basic F E σ D.hCM (M + 1) 1 _ hJ' R D.hR d b lam D.hlam m₁ D.hm₁
   haveI : BorelSpace (Fin n → Fin M → R ⊗[F] E) := kB n M
   haveI : BorelSpace (Fin 1 → Fin (M + 1) → R ⊗[F] E) := kB 1 (M + 1)
   have hfam : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily (coordW R b lam n M) (gramR R σ J) Subtype.val
       (g ⁻¹' Unt σ R n) (coordHerm R σ b lam n) (Unt σ R n) m' := by
     have he : g ⁻¹' Unt σ R n = {X | IsUnit (gramR R σ J X).det} := by
       ext X
       simp only [Set.mem_preimage, Unt, Set.mem_setOf_eq, hg X]
     rw [he]
     exact D.hm'

   have hCt : ∀ L : Set (HA R σ (blockOne (algebraMap F E t) J)), IsCompact L →
       ∃ C : Set (Fin n → Fin M → R ⊗[F] E), IsCompact C ∧ ∀ h ∈ L, ∀ A c X,
         φ (actW R σ _ h (vec A c X)) ≠ 0 → X ∈ C := by
     intro L hL
     refine ⟨(fun p : HA R σ (blockOne (algebraMap F E t) J) × (Fin (n + 1) → Fin (M + 1) → R ⊗[F] E) =>
       tl (actW R σ _ p.1⁻¹ p.2)) '' (L ×ˢ tsupport φ), ?_, ?_⟩
     · refine (hL.prod hφc).image ?_
       exact continuous_tl.comp (hact.comp ((continuous_inv.comp continuous_fst).prodMk continuous_snd))
     · intro h hh A c X hne
       refine ⟨(h, actW R σ _ h (vec A c X)), ⟨hh, subset_tsupport _ hne⟩, ?_⟩
       simp only
       rw [← hactm, inv_mul_cancel, hact1, tl_vec]
   have cT := continuous_tmul_one (F := F) (E := E) R

   let G : (HA R σ (blockOne (algebraMap F E t) J) × R × (Fin n → R ⊗[F] E)) × HermR R σ n → ℝ :=
     fun q => ∫ X, φ (actW R σ _ q.1.1 (vec (q.1.2.1 ⊗ₜ[F] (1 : E)) q.1.2.2 X)) ∂(m' q.2)
   have hG : ∀ q, q.2 ∈ Unt σ R n → ContinuousAt G q := by
     intro q hq
     obtain ⟨L, hLc, hLn⟩ := exists_compact_mem_nhds q.1.1
     obtain ⟨C, hC, hCv⟩ := hCt L hLc
     have hWo : IsOpen (interior L ×ˢ (Set.univ : Set (R × (Fin n → R ⊗[F] E)))) :=
       isOpen_interior.prod isOpen_univ
     have hcΦ : Continuous (fun p : (HA R σ (blockOne (algebraMap F E t) J) × R × (Fin n → R ⊗[F] E)) ×
         (Fin n → Fin M → R ⊗[F] E) =>
         φ (actW R σ _ p.1.1 (vec (p.1.2.1 ⊗ₜ[F] (1 : E)) p.1.2.2 p.2))) := by
       refine hφ.comp (hact.comp ((continuous_fst.comp continuous_fst).prodMk ?_))
       exact continuous_vec.comp ((cT.comp (continuous_fst.comp (continuous_snd.comp continuous_fst))).prodMk
         ((continuous_snd.comp (continuous_snd.comp continuous_fst)).prodMk continuous_snd))
     have hj := GlobalTheory.CompanionTheory.SW.FibreJointCont.continuousOn_fibre_integral (Fin n → Fin M → R ⊗[F] E) (HermR R σ n) _ (coordW R b lam n M)
       (coordHerm R σ b lam n) (gramR R σ J) g Subtype.val Subtype.val_injective hgc hg (Unt σ R n) hUo m' hfam
       (HA R σ (blockOne (algebraMap F E t) J) × R × (Fin n → R ⊗[F] E))
       (interior L ×ˢ Set.univ)
       (fun p X => φ (actW R σ _ p.1 (vec (p.2.1 ⊗ₜ[F] (1 : E)) p.2.2 X))) hcΦ.continuousOn hWo C hC
       (by
         intro p hp v hv
         by_contra hne
         exact hv (hCv p.1 (interior_subset hp.1) _ _ _ hne))
     have hmem : ((interior L ×ˢ Set.univ) ×ˢ Unt σ R n) ∈ 𝓝 q :=
       (hWo.prod hUo).mem_nhds ⟨⟨mem_interior_iff_mem_nhds.2 hLn, trivial⟩, hq⟩
     exact hj.continuousAt hmem
   rintro ⟨α₀, c₀, S₀⟩ ⟨hα₀, -, hS₀⟩
   refine ContinuousAt.continuousWithinAt ?_
   obtain ⟨N, hNn, hNs, hNc⟩ := local_compact_nhds (hval.isOpen_range.mem_nhds hα₀)
   have hUc : IsCompact ((Units.val : Rˣ → R) ⁻¹' N) := by
     rw [hval.isInducing.isCompact_iff, Set.image_preimage_eq_of_subset hNs]
     exact hNc
   have hNi : IsCompact ((Units.val : Rˣ → R) '' ((Units.val : Rˣ → R) ⁻¹' N)⁻¹) :=
     hUc.inv.image Units.continuous_val
   obtain ⟨Dc, hDn, hDs, hDc⟩ := local_compact_nhds (hUo.mem_nhds hS₀)
   let C₁ : Set (Fin 1 → Fin (M + 1) → R ⊗[F] E) :=
     (fun p : R × (Fin (n + 1) → Fin (M + 1) → R ⊗[F] E) =>
       scl (p.1 ⊗ₜ[F] (1 : E)) (fun _ : Fin 1 => p.2 0)) ''
         (((Units.val : Rˣ → R) '' ((Units.val : Rˣ → R) ⁻¹' N)⁻¹) ×ˢ tsupport φ)
   have hC₁c : IsCompact C₁ := by
     refine (hNi.prod hφc).image ?_
     refine continuous_pi fun _ => continuous_pi fun i => ?_
     have h1 : Continuous (fun p : R × (Fin (n + 1) → Fin (M + 1) → R ⊗[F] E) => p.2 0 i) :=
       (continuous_apply i).comp ((continuous_apply 0).comp continuous_snd)
     have h2 : Continuous (fun p : R × (Fin (n + 1) → Fin (M + 1) → R ⊗[F] E) => p.1 ⊗ₜ[F] (1 : E)) :=
       cT.comp continuous_fst
     exact h1.mul h2
   obtain ⟨C', hC'c, hC'⟩ := D.hcpt C₁ hC₁c
   obtain ⟨C₂, hC₂c, hC₂⟩ := hCt C' hC'c
   obtain ⟨cD, hcD⟩ := hbd' C₂ Dc hC₂c hDc hDs
   obtain ⟨Bd, hBd⟩ := hφ.bounded_above_of_compact_support hφc
   have hBd0 : 0 ≤ Bd := (norm_nonneg _).trans (hBd 0)
   haveI := hloc₁ (hermScal R σ (algebraMap F R t))
   have eU : ∀ᶠ z : R × (Fin n → R ⊗[F] E) × HermR R σ n in 𝓝 (α₀, c₀, S₀), z.2.2 ∈ Unt σ R n :=
     (continuous_snd.comp continuous_snd).continuousAt (hUo.mem_nhds hS₀)
   have eD : ∀ᶠ z : R × (Fin n → R ⊗[F] E) × HermR R σ n in 𝓝 (α₀, c₀, S₀), z.2.2 ∈ Dc :=
     (continuous_snd.comp continuous_snd).continuousAt hDn
   have eN : ∀ᶠ z : R × (Fin n → R ⊗[F] E) × HermR R σ n in 𝓝 (α₀, c₀, S₀), z.1 ∈ N :=
     continuous_fst.continuousAt hNn
   have hmeas : ∀ᶠ z : R × (Fin n → R ⊗[F] E) × HermR R σ n in 𝓝 (α₀, c₀, S₀),
       AEStronglyMeasurable (fun y₀ => G ((s y₀, z.1, z.2.1), z.2.2))
         (m₁ (hermScal R σ (algebraMap F R t))) := by
     filter_upwards [eU] with z hz
     have hc : Continuous (fun h : HA R σ (blockOne (algebraMap F E t) J) => G ((h, z.1, z.2.1), z.2.2)) := by
       refine continuous_iff_continuousAt.2 fun h => ?_
       refine ContinuousAt.comp (g := G) (f := fun h => ((h, z.1, z.2.1), z.2.2)) (hG _ hz) ?_
       exact (((continuous_id.prodMk continuous_const)).prodMk continuous_const).continuousAt
     exact (hc.measurable.comp D.hs).aestronglyMeasurable
   have hcont : ∀ᵐ y₀ ∂(m₁ (hermScal R σ (algebraMap F R t))),
       ContinuousAt (fun z : R × (Fin n → R ⊗[F] E) × HermR R σ n => G ((s y₀, z.1, z.2.1), z.2.2))
         (α₀, c₀, S₀) := by
     refine Filter.Eventually.of_forall fun y₀ => ?_
     refine ContinuousAt.comp (g := G)
       (f := fun z : R × (Fin n → R ⊗[F] E) × HermR R σ n => ((s y₀, z.1, z.2.1), z.2.2)) (hG _ hS₀) ?_
     exact ((continuous_const.prodMk (continuous_fst.prodMk (continuous_fst.comp continuous_snd))).prodMk
       (continuous_snd.comp continuous_snd)).continuousAt
   have hbound : ∀ᶠ z : R × (Fin n → R ⊗[F] E) × HermR R σ n in 𝓝 (α₀, c₀, S₀),
       ∀ᵐ y₀ ∂(m₁ (hermScal R σ (algebraMap F R t))),
         ‖G ((s y₀, z.1, z.2.1), z.2.2)‖ ≤ C₁.indicator (fun _ => Bd * (cD : ℝ)) y₀ := by
     filter_upwards [eN, eD] with z hzN hzD
     filter_upwards [hgram₁ (hermScal R σ (algebraMap F R t))] with y₀ hy₀
     obtain ⟨u, hu⟩ := hNs hzN
     have hsec := D.hsec y₀ hy₀
     have hvan : ∀ X, φ (actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X)) ≠ 0 → y₀ ∈ C₁ := by
       intro X hne
       refine ⟨(((u⁻¹ : Rˣ) : R), actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X)),
         ⟨⟨u⁻¹, ?_, rfl⟩, subset_tsupport _ hne⟩, ?_⟩
       · simpa [Set.mem_inv, hu] using hzN
       · funext a i
         have ha : a = 0 := Subsingleton.elim _ _
         subst ha
         simp only [scl]
         rw [actW_vec_zero, hsec, ← hu, mul_assoc, Algebra.TensorProduct.tmul_mul_tmul, Units.mul_inv,
           mul_one, ← Algebra.TensorProduct.one_def, mul_one]
     by_cases hy : y₀ ∈ C₁
     · have h2 : s y₀ ∈ C' := hC' y₀ hy hy₀
       have hvanX : ∀ X, X ∉ C₂ → φ (actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X)) = 0 :=
         fun X hX => by_contra fun hne => hX (hC₂ _ h2 _ _ _ hne)
       rw [Set.indicator_of_mem hy]
       change ‖∫ X, φ (actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X)) ∂(m' z.2.2)‖ ≤ _
       rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hvanX]
       have hfin : m' z.2.2 C₂ < ∞ := (hcD _ hzD).trans_lt ENNReal.coe_lt_top
       refine (norm_setIntegral_le_of_norm_le_const hfin (fun X _ => hBd _)).trans ?_
       refine mul_le_mul_of_nonneg_left ?_ hBd0
       have := ENNReal.toReal_mono ENNReal.coe_ne_top (hcD _ hzD)
       simpa [Measure.real] using this
     · rw [Set.indicator_of_notMem hy]
       have h0 : (fun X => φ (actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X))) = 0 :=
         funext fun X => by_contra fun hne => hy (hvan X hne)
       change ‖∫ X, φ (actW R σ _ (s y₀) (vec (z.1 ⊗ₜ[F] (1 : E)) z.2.1 X)) ∂(m' z.2.2)‖ ≤ _
       rw [h0]
       simp
   have hint : Integrable (C₁.indicator (fun _ => Bd * (cD : ℝ)))
       (m₁ (hermScal R σ (algebraMap F R t))) :=
     (integrable_indicator_iff hC₁c.isClosed.measurableSet).2 (integrableOn_const hC₁c.measure_lt_top.ne)
   exact continuousAt_of_dominated hmeas hbound hint hcont
end GlobalTheory.CompanionTheory.SW.PiLocalization₂.ContTwo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberConsProductUniqueness =====
