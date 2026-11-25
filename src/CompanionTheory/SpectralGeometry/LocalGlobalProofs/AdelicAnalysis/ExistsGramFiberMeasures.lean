module

public import Mathlib.MeasureTheory.Group.Measure
public import Mathlib.MeasureTheory.Measure.Haar.Unique
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramRightActionIdentities
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HaarModularCharacterOfContinuousAction
public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianMatricesLocallyCompactBorel
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianOrbitLocalSectionSubgroup
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityExists
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.UnitsOpenEmbeddingLocalTensor
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MeasureEqHaarProdOfLeftInvariant, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityFormula, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureDisintegrationFormula, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RestrFamily, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsGramFiberMeasures

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MeasureEqHaarProdOfLeftInvariant =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MeasureEqHaarProdOfLeftInvariant", "h": "module\n\npublic import Mathlib.MeasureTheory.Group.Measure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Matrix
open scoped ENNReal NNReal

namespace GlobalTheory.CompanionTheory.SW.InvariantProduct

theorem exists_const_rect {Q Z : Type} [Group Q] [TopologicalSpace Q] [LocallyCompactSpace Q]
    [SecondCountableTopology Q] [T2Space Q] [MeasurableSpace Q] [BorelSpace Q]
    [IsTopologicalGroup Q] [TopologicalSpace Z] [T2Space Z]
    [MeasurableSpace Z] [BorelSpace Z] (η : Measure Q) [η.IsHaarMeasure]
    (ρ : Measure (Q × Z)) [IsLocallyFiniteMeasure ρ]
    (hinv : ∀ q : Q, ρ.map (fun p => (q * p.1, p.2)) = ρ)
    {A C : Set Z} (hA : MeasurableSet A) (hC : IsCompact C) (hAC : A ⊆ C) :
    ∃ c : ℝ≥0, ∀ U : Set Q, MeasurableSet U → ρ (U ×ˢ A) = c * η U := by
  let μ : Measure Q := (ρ.restrict (Set.univ ×ˢ A)).map Prod.fst
  have hμ : ∀ U : Set Q, MeasurableSet U → μ U = ρ (U ×ˢ A) := by
    intro U hU
    rw [Measure.map_apply measurable_fst hU, Measure.restrict_apply (measurable_fst hU)]
    congr 1
    ext ⟨x, z⟩
    simp
  haveI : μ.IsMulLeftInvariant := ⟨fun q => by
    ext U hU
    have hT : Measurable (fun p : Q × Z => (q * p.1, p.2)) :=
      (measurable_fst.const_mul q).prodMk measurable_snd
    rw [Measure.map_apply (measurable_const_mul q) hU, hμ _ (measurable_const_mul q hU), hμ U hU]
    conv_rhs => rw [← hinv q]
    rw [Measure.map_apply hT (hU.prod hA)]
    rfl⟩
  haveI : IsFiniteMeasureOnCompacts μ := ⟨fun L hL => by
    rw [hμ L hL.isClosed.measurableSet]
    exact (measure_mono (Set.prod_mono subset_rfl hAC)).trans_lt (hL.prod hC).measure_lt_top⟩
  refine ⟨Measure.haarScalarFactor μ η, fun U hU => ?_⟩
  have h := congrArg (fun ν : Measure Q => ν U) (Measure.isMulLeftInvariant_eq_smul μ η)
  simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at h
  rw [← hμ U hU]
  exact h

end GlobalTheory.CompanionTheory.SW.InvariantProduct

namespace GlobalTheory.CompanionTheory.SW

theorem measure_eq_haar_prod_of_left_invariant :
    ∀ (Q Z : Type) [Group Q] [TopologicalSpace Q] [LocallyCompactSpace Q]
      [SecondCountableTopology Q] [T2Space Q] [MeasurableSpace Q] [BorelSpace Q]
      [IsTopologicalGroup Q] [TopologicalSpace Z] [LocallyCompactSpace Z]
      [SecondCountableTopology Z] [T2Space Z] [MeasurableSpace Z] [BorelSpace Z]
      (η : Measure Q) [η.IsHaarMeasure] (ρ : Measure (Q × Z)) [IsLocallyFiniteMeasure ρ],
      (∀ q : Q, ρ.map (fun p => (q * p.1, p.2)) = ρ) →
        ∃ m : Measure Z, IsLocallyFiniteMeasure m ∧ ρ = η.prod m := by
  intro Q Z _ _ _ _ _ _ _ _ _ _ _ _ _ _ η _ ρ _ hinv
  obtain ⟨K, hKc, hK1⟩ := exists_compact_mem_nhds (1 : Q)
  have hKpos : η K ≠ 0 := (lt_of_lt_of_le (isOpen_interior.measure_pos η ⟨1, mem_interior_iff_mem_nhds.2 hK1⟩)
    (measure_mono interior_subset)).ne'
  have hKfin : η K ≠ ∞ := hKc.measure_lt_top.ne
  have hKm : MeasurableSet K := hKc.isClosed.measurableSet
  let m : Measure Z := (η K)⁻¹ • (ρ.restrict (K ×ˢ Set.univ)).map Prod.snd
  have hm : ∀ A : Set Z, MeasurableSet A → m A = (η K)⁻¹ * ρ (K ×ˢ A) := by
    intro A hA
    have hset : Prod.snd ⁻¹' A ∩ (K ×ˢ (Set.univ : Set Z)) = K ×ˢ A := by
      ext ⟨x, z⟩
      simp [and_comm]
    simp only [m, Measure.smul_apply, smul_eq_mul]
    rw [Measure.map_apply measurable_snd hA, Measure.restrict_apply (measurable_snd hA), hset]
  have hrect : ∀ (U : Set Q) (A C : Set Z), MeasurableSet U → MeasurableSet A → IsCompact C →
      A ⊆ C → ρ (U ×ˢ A) = η U * m A := by
    intro U A C hU hA hC hAC
    obtain ⟨c, hc⟩ := InvariantProduct.exists_const_rect η ρ hinv hA hC hAC
    rw [hc U hU, hm A hA, hc K hKm, ← mul_assoc (η K)⁻¹, mul_comm (η K)⁻¹,
      mul_assoc (c : ℝ≥0∞), ENNReal.inv_mul_cancel hKpos hKfin, mul_one, mul_comm]
  have hmC : ∀ C : Set Z, IsCompact C → m C < ∞ := by
    intro C hC
    rw [hm C hC.isClosed.measurableSet]
    exact ENNReal.mul_lt_top (ENNReal.inv_lt_top.2 (pos_iff_ne_zero.2 hKpos))
      (hKc.prod hC).measure_lt_top
  haveI hmfc : IsFiniteMeasureOnCompacts m := ⟨fun C hC => hmC C hC⟩
  refine ⟨m, inferInstance, ?_⟩
  symm
  have genAux : ∀ (X : Type) [TopologicalSpace X] [SigmaCompactSpace X] [T2Space X]
      [MeasurableSpace X] [BorelSpace X],
      MeasurableSpace.generateFrom {U : Set X | MeasurableSet U ∧ ∃ L, IsCompact L ∧ U ⊆ L} =
        ‹MeasurableSpace X› := by
    intro X _ _ _ M _
    apply le_antisymm
    · exact MeasurableSpace.generateFrom_le fun U hU => hU.1
    · intro B hB
      have : B = ⋃ n, B ∩ compactCovering X n := by
        rw [← Set.inter_iUnion, iUnion_compactCovering, Set.inter_univ]
      rw [this]
      exact MeasurableSet.iUnion fun n => MeasurableSpace.measurableSet_generateFrom
        ⟨hB.inter (isCompact_compactCovering X n).isClosed.measurableSet,
          _, isCompact_compactCovering X n, Set.inter_subset_right⟩
  have piAux : ∀ (X : Type) [TopologicalSpace X] [MeasurableSpace X],
      IsPiSystem {U : Set X | MeasurableSet U ∧ ∃ L, IsCompact L ∧ U ⊆ L} := by
    intro X _ _ U hU V hV _
    obtain ⟨hUm, L, hL, hUL⟩ := hU
    exact ⟨hUm.inter hV.1, L, hL, Set.inter_subset_left.trans hUL⟩
  have spanAux : ∀ (X : Type) [TopologicalSpace X] [SigmaCompactSpace X] [T2Space X]
      [MeasurableSpace X] [BorelSpace X] (μ : Measure X) [IsFiniteMeasureOnCompacts μ],
      μ.FiniteSpanningSetsIn {U : Set X | MeasurableSet U ∧ ∃ L, IsCompact L ∧ U ⊆ L} := by
    intro X _ _ _ _ _ μ _
    exact ⟨compactCovering X,
      fun n => ⟨(isCompact_compactCovering X n).isClosed.measurableSet, _,
        isCompact_compactCovering X n, subset_rfl⟩,
      fun n => (isCompact_compactCovering X n).measure_lt_top,
      iUnion_compactCovering X⟩
  refine Measure.prod_eq_generateFrom (genAux Q) (genAux Z) (piAux Q) (piAux Z)
    (spanAux Q η) (spanAux Z m) ?_
  rintro U ⟨hU, -⟩ A ⟨hA, L, hL, hAL⟩
  exact (hrect U A L hU hA hL hAL)

end GlobalTheory.CompanionTheory.SW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MeasureEqHaarProdOfLeftInvariant =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityFormula =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityFormula", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MeasureEqHaarProdOfLeftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Matrix
open scoped ENNReal NNReal

namespace GlobalTheory.CompanionTheory.SW.Slice

theorem comap_map_of_intertwine {W V : Type} [MeasurableSpace W] [MeasurableSpace V]
    {T : W → V} (hT : MeasurableEmbedding T) {L L' : W → W} {A A' : V → V}
    (hL : Measurable L) (hA : Measurable A) (hLL' : ∀ w, L (L' w) = w)
    (hAA' : ∀ v, A' (A v) = v)
    (hint : ∀ w, T (L w) = A (T w)) (hint' : ∀ w, T (L' w) = A' (T w))
    (μ : Measure V) (c : ℝ≥0∞) (hμ : μ.map A = c • μ) :
    (μ.comap T).map L = c • μ.comap T := by
  ext s hs
  have himg : T '' (L ⁻¹' s) = A ⁻¹' (T '' s) := by
    ext v
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact ⟨L w, hw, hint w⟩
    · rintro ⟨y, hy, hyv⟩
      refine ⟨L' y, ?_, ?_⟩
      · change L (L' y) ∈ s
        rwa [hLL']
      · rw [hint', hyv, hAA']
  rw [Measure.map_apply hL hs, Measure.smul_apply, hT.comap_apply, hT.comap_apply, himg,
    ← Measure.map_apply hA (hT.measurableSet_image.2 hs), hμ, Measure.smul_apply]

theorem withDensity_map_of_scale {W : Type} [MeasurableSpace W] {L : W → W} (hL : Measurable L)
    (ρ : Measure W) (c k : ℝ≥0∞) (hρ : ρ.map L = c • ρ) {d : W → ℝ≥0∞} (hd : Measurable d)
    (hk : ∀ w, d w = k * d (L w)) (hck : k * c = 1) :
    (ρ.withDensity d).map L = ρ.withDensity d := by
  ext s hs
  rw [Measure.map_apply hL hs, withDensity_apply _ (hL hs), withDensity_apply _ hs]
  calc ∫⁻ w in L ⁻¹' s, d w ∂ρ = ∫⁻ w, (L ⁻¹' s).indicator d w ∂ρ :=
        (lintegral_indicator (hL hs) _).symm
    _ = ∫⁻ w, k * s.indicator d (L w) ∂ρ := by
        refine lintegral_congr fun w => ?_
        by_cases hw : L w ∈ s
        · rw [Set.indicator_of_mem (show w ∈ L ⁻¹' s from hw), Set.indicator_of_mem hw, ← hk]
        · rw [Set.indicator_of_notMem (show w ∉ L ⁻¹' s from hw), Set.indicator_of_notMem hw,
            mul_zero]
    _ = k * ∫⁻ w, s.indicator d (L w) ∂ρ :=
        lintegral_const_mul _ ((hd.indicator hs).comp hL)
    _ = k * ∫⁻ w, s.indicator d w ∂(ρ.map L) := by
        rw [lintegral_map (hd.indicator hs) hL]
    _ = ∫⁻ w in s, d w ∂ρ := by
        rw [hρ, lintegral_smul_measure, smul_eq_mul, ← mul_assoc, hck, one_mul,
          lintegral_indicator hs]

theorem comap_isLocallyFinite {W V : Type} [TopologicalSpace W] [MeasurableSpace W]
    [TopologicalSpace V] [MeasurableSpace V] [BorelSpace W] [BorelSpace V] {T : W → V}
    (hT : IsOpenEmbedding T) (μ : Measure V) [IsLocallyFiniteMeasure μ] :
    IsLocallyFiniteMeasure (μ.comap T) := by
  refine ⟨fun x => ?_⟩
  obtain ⟨s, hxs, hs, hfin⟩ := μ.exists_isOpen_measure_lt_top (T x)
  have hme : MeasurableEmbedding T := hT.measurableEmbedding
  refine ⟨T ⁻¹' s, (hs.preimage hT.continuous).mem_nhds hxs, ?_⟩
  rw [hme.comap_apply]
  exact lt_of_le_of_lt (measure_mono (Set.image_preimage_subset _ _)) hfin

section Theta

variable {V X Q : Type} [TopologicalSpace V] [TopologicalSpace X] [Group Q] [TopologicalSpace Q]
  [IsTopologicalGroup Q] [MulAction Q V] [ContinuousSMul Q V] [MulAction Q X] [ContinuousSMul Q X]

def theta (g : V → X) (b₀ : X) (p : Q × (g ⁻¹' {b₀})) : V := p.1 • (p.2 : V)

theorem continuous_theta (g : V → X) (b₀ : X) : Continuous (theta (Q := Q) g b₀) :=
  continuous_fst.smul (continuous_subtype_val.comp continuous_snd)

theorem theta_isOpenEmbedding [T2Space X] {g : V → X} (hg : Continuous g)
    (heq : ∀ (q : Q) (v : V), g (q • v) = q • g v) {b₀ : X}
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) :
    IsOpenEmbedding (theta (Q := Q) g b₀) ∧
      Set.range (theta (Q := Q) g b₀) = g ⁻¹' Set.range (fun q : Q => q • b₀) := by
  classical
  set o : Q → X := fun q : Q => q • b₀ with ho_def
  have hB : IsOpen (Set.range o) := ho.isOpen_range
  have hU : IsOpen (g ⁻¹' Set.range o) := hB.preimage hg
  let he : Q ≃ₜ Set.range o := ho.isEmbedding.toHomeomorph
  let s : (g ⁻¹' Set.range o) → Q := fun v => he.symm ⟨g v, v.2⟩
  have hs_cont : Continuous s :=
    he.symm.continuous.comp ((hg.comp continuous_subtype_val).subtype_mk _)
  have hs : ∀ v, s v • b₀ = g v := fun v => by
    have := he.apply_symm_apply ⟨g v, v.2⟩
    exact congrArg Subtype.val this
  have hmem : ∀ v : (g ⁻¹' Set.range o), (s v)⁻¹ • (v : V) ∈ g ⁻¹' {b₀} := fun v => by
    change g ((s v)⁻¹ • (v : V)) = b₀
    rw [heq, ← hs v, inv_smul_smul]
  let t : (g ⁻¹' Set.range o) → Q × (g ⁻¹' {b₀}) := fun v => (s v, ⟨(s v)⁻¹ • (v : V), hmem v⟩)
  have ht_cont : Continuous t :=
    hs_cont.prodMk ((hs_cont.inv.smul continuous_subtype_val).subtype_mk _)
  have hgθ : ∀ p : Q × (g ⁻¹' {b₀}), g (theta g b₀ p) = o p.1 := fun p => by
    have hz : g (p.2 : V) = b₀ := p.2.2
    simp only [theta, heq, hz, ho_def]
  have hθU : ∀ p : Q × (g ⁻¹' {b₀}), theta g b₀ p ∈ g ⁻¹' Set.range o := fun p =>
    ⟨p.1, (hgθ p).symm⟩
  have hθt : ∀ v : (g ⁻¹' Set.range o), theta g b₀ (t v) = v := fun v => by
    simp only [theta, t, smul_inv_smul]
  have htθ : ∀ p : Q × (g ⁻¹' {b₀}), t ⟨theta g b₀ p, hθU p⟩ = p := fun p => by
    have h1 : s ⟨theta g b₀ p, hθU p⟩ = p.1 := ho.injective (by
      change s _ • b₀ = _
      rw [hs]
      exact hgθ p)
    refine Prod.ext h1 (Subtype.ext ?_)
    change (s ⟨theta g b₀ p, hθU p⟩)⁻¹ • theta g b₀ p = (p.2 : V)
    rw [h1]
    simp only [theta, inv_smul_smul]
  have hinj : Function.Injective (theta (Q := Q) g b₀) := fun p p' h => by
    rw [← htθ p, ← htθ p']
    congr 2
  have hopen : IsOpenMap (theta (Q := Q) g b₀) := fun W hW => by
    have : theta g b₀ '' W = Subtype.val '' (t ⁻¹' W) := by
      ext v
      constructor
      · rintro ⟨p, hp, rfl⟩
        exact ⟨⟨theta g b₀ p, hθU p⟩, by simpa [htθ p] using hp, rfl⟩
      · rintro ⟨u, hu, rfl⟩
        exact ⟨t u, hu, hθt u⟩
    rw [this]
    exact hU.isOpenMap_subtype_val _ (hW.preimage ht_cont)
  refine ⟨.of_continuous_injective_isOpenMap (continuous_theta g b₀) hinj hopen, ?_⟩
  ext v
  constructor
  · rintro ⟨p, rfl⟩
    exact hθU p
  · intro hv
    exact ⟨t ⟨v, hv⟩, hθt ⟨v, hv⟩⟩

end Theta

section Core

variable {V X Q : Type} [TopologicalSpace V] [SecondCountableTopology V]
  [MeasurableSpace V] [BorelSpace V]
  [TopologicalSpace X] [T2Space X] [MeasurableSpace X] [BorelSpace X]
  [Group Q] [TopologicalSpace Q] [IsTopologicalGroup Q] [LocallyCompactSpace Q]
  [SecondCountableTopology Q] [T2Space Q] [MeasurableSpace Q] [BorelSpace Q]
  [MulAction Q V] [ContinuousSMul Q V] [MulAction Q X] [ContinuousSMul Q X]

noncomputable def fibFam (g : V → X) (b₀ : X) (w : Q → ℝ≥0) (m : Measure (g ⁻¹' {b₀})) (b : X) :
    Measure V :=
  open Classical in
  if b ∈ Set.range (fun q : Q => q • b₀) then
    (w (Function.invFun (fun q : Q => q • b₀) b) : ℝ≥0∞) •
      m.map (fun z : (g ⁻¹' {b₀}) => Function.invFun (fun q : Q => q • b₀) b • (z : V))
  else 0

theorem fibFam_orbit {g : V → X} {b₀ : X} (w : Q → ℝ≥0) (m : Measure (g ⁻¹' {b₀}))
    (ho : Function.Injective (fun q : Q => q • b₀)) (q : Q) :
    fibFam g b₀ w m (q • b₀) = (w q : ℝ≥0∞) • m.map (fun z : (g ⁻¹' {b₀}) => q • (z : V)) := by
  have h : Function.invFun (fun q : Q => q • b₀) (q • b₀) = q :=
    Function.leftInverse_invFun ho q
  rw [fibFam, if_pos ⟨q, rfl⟩, h]

theorem fibFam_off {g : V → X} {b₀ : X} (w : Q → ℝ≥0) (m : Measure (g ⁻¹' {b₀})) {b : X}
    (hb : b ∉ Set.range (fun q : Q => q • b₀)) : fibFam g b₀ w m b = 0 := by
  rw [fibFam, if_neg hb]

theorem continuous_smul_fib (g : V → X) (b₀ : X) (q : Q) :
    Continuous (fun z : (g ⁻¹' {b₀}) => q • (z : V)) :=
  continuous_const.smul continuous_subtype_val

theorem fibFam_support {Y : Type} {f : V → Y} {g : V → X} {ι : X → Y} (hι : Function.Injective ι)
    (hg : Continuous g) (hf : ∀ v, f v = ι (g v))
    (heq : ∀ (q : Q) (v : V), g (q • v) = q • g v) {b₀ : X}
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) (w : Q → ℝ≥0) (m : Measure (g ⁻¹' {b₀}))
    (b : X) :
    fibFam g b₀ w m b (f ⁻¹' {ι b} ∩ g ⁻¹' Set.range (fun q : Q => q • b₀))ᶜ = 0 := by
  by_cases hb : b ∈ Set.range (fun q : Q => q • b₀)
  · obtain ⟨q, rfl⟩ := hb
    have hfib : f ⁻¹' {ι (q • b₀)} = g ⁻¹' {q • b₀} := by
      ext v
      simp only [Set.mem_preimage, Set.mem_singleton_iff, hf]
      exact hι.eq_iff
    have hBm : MeasurableSet (Set.range (fun q : Q => q • b₀)) :=
      ho.isOpen_range.measurableSet
    have hS : MeasurableSet (f ⁻¹' {ι (q • b₀)} ∩ g ⁻¹' Set.range (fun q : Q => q • b₀))ᶜ := by
      rw [hfib]
      exact ((hg.measurable (measurableSet_singleton _)).inter (hg.measurable hBm)).compl
    change fibFam g b₀ w m ((fun q : Q => q • b₀) q) _ = 0
    change fibFam g b₀ w m (q • b₀) _ = 0
    rw [fibFam_orbit w m ho.injective, Measure.smul_apply,
      Measure.map_apply (continuous_smul_fib g b₀ q).measurable hS]
    have : (fun z : (g ⁻¹' {b₀}) => q • (z : V)) ⁻¹'
        (f ⁻¹' {ι (q • b₀)} ∩ g ⁻¹' Set.range (fun q : Q => q • b₀))ᶜ = ∅ := by
      ext z
      have hz : g (z : V) = b₀ := z.2
      simp only [Set.mem_preimage, Set.mem_compl_iff, Set.mem_inter_iff, Set.mem_singleton_iff,
        hf, heq, hz, Set.mem_empty_iff_false, iff_false, not_not]
      exact ⟨trivial, ⟨q, rfl⟩⟩
    rw [this]
    simp
  · rw [fibFam_off w m hb]
    simp

theorem exists_compact_fib [T2Space V] {g : V → X} (hg : Continuous g) (b₀ : X) {K : Set Q}
    (hK : IsCompact K) {S : Set V} (hS : IsCompact S) :
    ∃ k : Set (g ⁻¹' {b₀}), IsCompact k ∧ ∀ q ∈ K, ∀ z : (g ⁻¹' {b₀}), q • (z : V) ∈ S → z ∈ k := by
  have hcl : IsClosed (g ⁻¹' {b₀}) := isClosed_singleton.preimage hg
  have hc : IsCompact ((fun p : Q × V => p.1⁻¹ • p.2) '' (K ×ˢ S)) :=
    (hK.prod hS).image (continuous_fst.inv.smul continuous_snd)
  refine ⟨Subtype.val ⁻¹' ((fun p : Q × V => p.1⁻¹ • p.2) '' (K ×ˢ S)),
    hcl.isClosedEmbedding_subtypeVal.isCompact_preimage hc, fun q hq z hz => ?_⟩
  exact ⟨(q, q • (z : V)), ⟨hq, hz⟩, by simp⟩

theorem integrable_and_continuous [T2Space V] {g : V → X} (hg : Continuous g) {b₀ : X}
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) {w : Q → ℝ≥0} (hw : Continuous w)
    (m : Measure (g ⁻¹' {b₀})) [IsLocallyFiniteMeasure m] {φ : V → ℝ} (hφ : Continuous φ)
    (hφc : HasCompactSupport φ) :
    (∀ b ∈ Set.range (fun q : Q => q • b₀), Integrable φ (fibFam g b₀ w m b)) ∧
      ContinuousOn (fun b => ∫ v, φ v ∂(fibFam g b₀ w m b))
        (Set.range (fun q : Q => q • b₀)) := by
  have hvan : ∀ {K : Set Q} {k : Set (g ⁻¹' {b₀})},
      (∀ q ∈ K, ∀ z : (g ⁻¹' {b₀}), q • (z : V) ∈ tsupport φ → z ∈ k) →
      ∀ q, ∀ z : (g ⁻¹' {b₀}), q ∈ K → z ∉ k → φ (q • (z : V)) = 0 := by
    intro K k hk q z hq hz
    by_contra hne
    exact hz (hk q hq z (subset_tsupport _ hne))
  have hint : ∀ q : Q, Integrable (fun z : (g ⁻¹' {b₀}) => φ (q • (z : V))) m := by
    intro q
    obtain ⟨k, hk, hkz⟩ := exists_compact_fib hg b₀ (isCompact_singleton (x := q)) hφc
    refine (hφ.comp (continuous_smul_fib g b₀ q)).integrable_of_hasCompactSupport ?_
    refine HasCompactSupport.intro hk fun z hz => ?_
    exact hvan hkz q z rfl hz
  have hval : ∀ q : Q, ∫ v, φ v ∂(fibFam g b₀ w m (q • b₀)) =
      (w q : ℝ) * ∫ z, φ (q • (z : V)) ∂m := by
    intro q
    rw [fibFam_orbit w m ho.injective, integral_smul_measure,
      integral_map (continuous_smul_fib g b₀ q).aemeasurable hφ.aestronglyMeasurable]
    simp
  have hG : Continuous (fun q : Q => ∫ z, φ (q • (z : V)) ∂m) := by
    refine continuous_iff_continuousAt.2 fun q₀ => ?_
    obtain ⟨K, hK, hKn⟩ := exists_compact_mem_nhds q₀
    obtain ⟨k, hk, hkz⟩ := exists_compact_fib hg b₀ hK hφc
    have hcont : ContinuousOn (fun q : Q => ∫ z, φ (q • (z : V)) ∂m) K := by
      refine continuousOn_integral_of_compact_support
        (f := fun (q : Q) (z : (g ⁻¹' {b₀})) => φ (q • (z : V))) hk ?_ ?_
      · exact (hφ.comp (continuous_fst.smul
          (continuous_subtype_val.comp continuous_snd))).continuousOn
      · intro q z hq hz
        exact hvan hkz q z hq hz
    exact hcont.continuousAt hKn
  constructor
  · rintro b ⟨q, rfl⟩
    change Integrable φ (fibFam g b₀ w m (q • b₀))
    rw [fibFam_orbit w m ho.injective]
    refine Integrable.smul_measure ?_ ENNReal.coe_ne_top
    exact (integrable_map_measure hφ.aestronglyMeasurable
      (continuous_smul_fib g b₀ q).aemeasurable).2 (hint q)
  · rintro b ⟨q, rfl⟩
    refine ContinuousAt.continuousWithinAt ?_
    refine (ho.continuousAt_iff).1 ?_
    have : ((fun b => ∫ v, φ v ∂(fibFam g b₀ w m b)) ∘ fun q : Q => q • b₀) =
        fun q : Q => (w q : ℝ) * ∫ z, φ (q • (z : V)) ∂m := funext hval
    rw [this]
    exact ((NNReal.continuous_coe.comp hw).mul hG).continuousAt

theorem exists_slice_measure [T2Space V] [LocallyCompactSpace V] {g : V → X} (hg : Continuous g)
    (heq : ∀ (q : Q) (v : V), g (q • v) = q • g v) {b₀ : X}
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) (μ : Measure V) (ν : Measure X)
    [IsLocallyFiniteMeasure μ] [IsLocallyFiniteMeasure ν] [ν.IsOpenPosMeasure]
    (χ χ' : Q →* ℝ≥0) (hχ : Continuous χ) (hχ' : Continuous χ')
    (hμ : ∀ q : Q, μ.map (fun v => q • v) = χ q • μ)
    (hν : ∀ q : Q, ν.map (fun x => q • x) = χ' q • ν) :
    ∃ m : Measure (g ⁻¹' {b₀}), IsLocallyFiniteMeasure m ∧
      (μ.comap (theta (Q := Q) g b₀)).withDensity (fun p => (χ p.1 : ℝ≥0∞)) =
        ((ν.comap (fun q : Q => q • b₀)).withDensity (fun q => (χ' q : ℝ≥0∞))).prod m := by
  have hcl : IsClosed (g ⁻¹' {b₀}) := isClosed_singleton.preimage hg
  haveI : LocallyCompactSpace (g ⁻¹' {b₀}) :=
    hcl.isClosedEmbedding_subtypeVal.locallyCompactSpace
  obtain ⟨hΘ, -⟩ := theta_isOpenEmbedding (Q := Q) hg heq ho
  have hΘm := hΘ.measurableEmbedding
  have hom := ho.measurableEmbedding
  have hinvmul : ∀ (c : Q →* ℝ≥0) (a : Q), ((c a⁻¹ : ℝ≥0) : ℝ≥0∞) * (c a : ℝ≥0) = 1 := by
    intro c a
    rw [← ENNReal.coe_mul, ← map_mul, inv_mul_cancel, map_one, ENNReal.coe_one]
  have hsc : ∀ (c : Q →* ℝ≥0) (a q : Q), ((c q : ℝ≥0) : ℝ≥0∞) =
      (c a⁻¹ : ℝ≥0) * (c (a * q) : ℝ≥0) := by
    intro c a q
    rw [← ENNReal.coe_mul, ← map_mul, inv_mul_cancel_left]
  haveI := comap_isLocallyFinite hΘ μ
  haveI := comap_isLocallyFinite ho ν
  set η := (ν.comap (fun q : Q => q • b₀)).withDensity (fun q => (χ' q : ℝ≥0∞)) with hη
  haveI hηf : IsLocallyFiniteMeasure η := IsLocallyFiniteMeasure.withDensity_coe hχ'
  have hηinv : η.IsMulLeftInvariant := by
    refine ⟨fun a => ?_⟩
    refine withDensity_map_of_scale (measurable_const_mul a) _ (χ' a) (χ' a⁻¹) ?_
      (measurable_coe_nnreal_ennreal.comp hχ'.measurable) (hsc χ' a) (hinvmul χ' a)
    refine comap_map_of_intertwine hom (measurable_const_mul a) (L' := fun q => a⁻¹ * q)
      (A := fun x => a • x) (A' := fun x => a⁻¹ • x) (measurable_const_smul a)
      (fun q => mul_inv_cancel_left a q) (fun x => inv_smul_smul a x)
      (fun q => mul_smul _ _ _) (fun q => mul_smul _ _ _) ν _ ?_
    rw [hν a, ENNReal.smul_def]
  have hν₀ : (ν.comap (fun q : Q => q • b₀)).IsOpenPosMeasure := by
    refine ⟨fun s hs hne h0 => ?_⟩
    rw [hom.comap_apply] at h0
    exact (ho.isOpenMap s hs).measure_pos ν (hne.image _) |>.ne' h0
  have hηpos : η.IsOpenPosMeasure := by
    have hac : (ν.comap (fun q : Q => q • b₀)) ≪ η := by
      refine withDensity_absolutelyContinuous'
        (measurable_coe_nnreal_ennreal.comp hχ'.measurable).aemeasurable
        (Filter.Eventually.of_forall fun q => ?_)
      intro h0
      have := hinvmul χ' q
      rw [ENNReal.coe_eq_zero.1 h0] at this
      simp at this
    exact hac.isOpenPosMeasure
  haveI : η.IsHaarMeasure :=
    { toIsFiniteMeasureOnCompacts := inferInstance
      toIsMulLeftInvariant := hηinv
      toIsOpenPosMeasure := hηpos }
  haveI : IsLocallyFiniteMeasure
      ((μ.comap (theta (Q := Q) g b₀)).withDensity (fun p => (χ p.1 : ℝ≥0∞))) :=
    IsLocallyFiniteMeasure.withDensity_coe (f := fun p : Q × (g ⁻¹' {b₀}) => χ p.1)
      (hχ.comp continuous_fst)
  refine GlobalTheory.CompanionTheory.SW.measure_eq_haar_prod_of_left_invariant Q (g ⁻¹' {b₀}) η _ fun a => ?_
  have hLm : Measurable (fun p : Q × (g ⁻¹' {b₀}) => (a * p.1, p.2)) :=
    (continuous_const.mul continuous_fst).measurable.prodMk measurable_snd
  refine withDensity_map_of_scale hLm _ (χ a) (χ a⁻¹) ?_
    (measurable_coe_nnreal_ennreal.comp (hχ.measurable.comp measurable_fst))
    (fun p => hsc χ a p.1) (hinvmul χ a)
  refine comap_map_of_intertwine hΘm hLm (L' := fun p => (a⁻¹ * p.1, p.2))
    (A := fun x => a • x) (A' := fun x => a⁻¹ • x) (measurable_const_smul a)
    (fun p => by simp) (fun x => inv_smul_smul a x)
    (fun p => mul_smul _ _ _) (fun p => mul_smul _ _ _) μ _ ?_
  rw [hμ a, ENNReal.smul_def]

theorem lintegral_fibFam [T2Space V] {g : V → X} (hg : Continuous g)
    (heq : ∀ (q : Q) (v : V), g (q • v) = q • g v) {b₀ : X}
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) (μ : Measure V) (ν : Measure X)
    (χ χ' : Q →* ℝ≥0) (hχ : Continuous χ) (hχ' : Continuous χ')
    (m : Measure (g ⁻¹' {b₀})) [SFinite m]
    [SFinite ((ν.comap (fun q : Q => q • b₀)).withDensity (fun q => (χ' q : ℝ≥0∞)))]
    (hm : (μ.comap (theta (Q := Q) g b₀)).withDensity (fun p => (χ p.1 : ℝ≥0∞)) =
        ((ν.comap (fun q : Q => q • b₀)).withDensity (fun q => (χ' q : ℝ≥0∞))).prod m)
    {φ : V → ℝ≥0∞} (hφ : Measurable φ) :
    ∫⁻ v in g ⁻¹' Set.range (fun q : Q => q • b₀), φ v ∂μ =
      ∫⁻ b, ∫⁻ v, φ v ∂(fibFam g b₀ (fun q => χ' q * χ q⁻¹) m b) ∂ν := by
  obtain ⟨hΘ, hr⟩ := theta_isOpenEmbedding (Q := Q) hg heq ho
  have hΘm := hΘ.measurableEmbedding
  have hom := ho.measurableEmbedding
  have hχm : Measurable (fun q : Q => (χ q : ℝ≥0∞)) :=
    measurable_coe_nnreal_ennreal.comp hχ.measurable
  have hχim : Measurable (fun q : Q => (χ q⁻¹ : ℝ≥0∞)) :=
    measurable_coe_nnreal_ennreal.comp (hχ.comp continuous_inv).measurable
  have hχ'm : Measurable (fun q : Q => (χ' q : ℝ≥0∞)) :=
    measurable_coe_nnreal_ennreal.comp hχ'.measurable
  have hF : Measurable (fun p : Q × (g ⁻¹' {b₀}) => (χ p.1⁻¹ : ℝ≥0∞) * φ (theta g b₀ p)) :=
    (hχim.comp measurable_fst).mul (hφ.comp hΘm.measurable)

  have hleft : ∫⁻ v in g ⁻¹' Set.range (fun q : Q => q • b₀), φ v ∂μ =
      ∫⁻ q, (χ' q : ℝ≥0∞) * ∫⁻ z : (g ⁻¹' {b₀}), (χ q⁻¹ : ℝ≥0∞) * φ (q • (z : V)) ∂m
        ∂(ν.comap (fun q : Q => q • b₀)) := by
    have h1 : ∫⁻ v in g ⁻¹' Set.range (fun q : Q => q • b₀), φ v ∂μ =
        ∫⁻ p, φ (theta g b₀ p) ∂(μ.comap (theta (Q := Q) g b₀)) := by
      rw [← hr, ← hΘm.map_comap μ, lintegral_map hφ hΘm.measurable]
    have h2 : ∫⁻ p, φ (theta g b₀ p) ∂(μ.comap (theta (Q := Q) g b₀)) =
        ∫⁻ p, (χ p.1⁻¹ : ℝ≥0∞) * φ (theta g b₀ p)
          ∂((μ.comap (theta (Q := Q) g b₀)).withDensity (fun p => (χ p.1 : ℝ≥0∞))) := by
      have hd : Measurable (fun p : Q × (g ⁻¹' {b₀}) => (χ p.1 : ℝ≥0∞)) :=
        hχm.comp measurable_fst
      rw [lintegral_withDensity_eq_lintegral_mul _ hd hF]
      refine lintegral_congr fun p => ?_
      simp only [Pi.mul_apply]
      rw [← mul_assoc, ← ENNReal.coe_mul, ← map_mul, mul_inv_cancel, map_one, ENNReal.coe_one,
        one_mul]
    rw [h1, h2, hm, lintegral_prod _ hF.aemeasurable,
      lintegral_withDensity_eq_lintegral_mul _ hχ'm hF.lintegral_prod_right']
    rfl

  have hright : ∫⁻ b, ∫⁻ v, φ v ∂(fibFam g b₀ (fun q => χ' q * χ q⁻¹) m b) ∂ν =
      ∫⁻ q, ∫⁻ v, φ v ∂(fibFam g b₀ (fun q => χ' q * χ q⁻¹) m (q • b₀))
        ∂(ν.comap (fun q : Q => q • b₀)) := by
    have hB : MeasurableSet (Set.range (fun q : Q => q • b₀)) := ho.isOpen_range.measurableSet
    have hoff : ∫⁻ b in (Set.range (fun q : Q => q • b₀))ᶜ,
        ∫⁻ v, φ v ∂(fibFam g b₀ (fun q => χ' q * χ q⁻¹) m b) ∂ν = 0 := by
      rw [setLIntegral_congr_fun (g := fun _ => 0) hB.compl]
      · simp
      · intro b hb
        simp only
        rw [fibFam_off _ m hb]
        simp
    have hmap := hom.lintegral_map (μ := ν.comap (fun q : Q => q • b₀))
      (fun b => ∫⁻ v, φ v ∂(fibFam g b₀ (fun q => χ' q * χ q⁻¹) m b))
    rw [hom.map_comap] at hmap
    rw [← lintegral_add_compl _ hB, hoff, add_zero]
    exact hmap
  rw [hleft, hright]
  refine lintegral_congr fun q => ?_
  have hc : ∫⁻ z : (g ⁻¹' {b₀}), (χ q⁻¹ : ℝ≥0∞) * φ (q • (z : V)) ∂m =
      (χ q⁻¹ : ℝ≥0∞) * ∫⁻ z : (g ⁻¹' {b₀}), φ (q • (z : V)) ∂m :=
    lintegral_const_mul _ (hφ.comp (continuous_smul_fib g b₀ q).measurable)
  rw [fibFam_orbit _ m ho.injective, lintegral_smul_measure,
    lintegral_map hφ (continuous_smul_fib g b₀ q).measurable, hc, smul_eq_mul,
    ENNReal.coe_mul, mul_assoc]

end Core

theorem exists_isFibreFamily_openOrbit : ∀ (V X Y : Type) [TopologicalSpace V] [LocallyCompactSpace V] [SecondCountableTopology V] [T2Space V] [MeasurableSpace V] [BorelSpace V] [TopologicalSpace X] [LocallyCompactSpace X] [SecondCountableTopology X] [T2Space X] [MeasurableSpace X] [BorelSpace X] (μ : Measure V) (ν : Measure X) [IsLocallyFiniteMeasure μ] [IsLocallyFiniteMeasure ν] [ν.IsOpenPosMeasure] (f : V → Y) (g : V → X) (ι : X → Y), Function.Injective ι → Continuous g → (∀ v, f v = ι (g v)) → ∀ (Q : Type) [Group Q] [TopologicalSpace Q] [IsTopologicalGroup Q] [LocallyCompactSpace Q] [SecondCountableTopology Q] [T2Space Q] [MulAction Q V] [ContinuousSMul Q V] [MulAction Q X] [ContinuousSMul Q X], (∀ (q : Q) (v : V), g (q • v) = q • g v) → ∀ (χ χ' : Q →* ℝ≥0), Continuous χ → Continuous χ' → (∀ q : Q, μ.map (fun v => q • v) = χ q • μ) → (∀ q : Q, ν.map (fun x => q • x) = χ' q • ν) → ∀ b₀ : X, IsOpenEmbedding (fun q : Q => q • b₀) → ∃ fib : X → Measure V, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ f ι (g ⁻¹' (Set.range fun q : Q => q • b₀)) ν (Set.range fun q : Q => q • b₀) fib := by
  intro V X Y _ _ _ _ _ _ _ _ _ _ _ _ μ ν _ _ _ f g ι hι hg hf Q _ _ _ _ _ _ _ _ _ _ heq χ χ' hχ hχ'
    hμ hν b₀ ho
  letI : MeasurableSpace Q := borel Q
  haveI : BorelSpace Q := ⟨rfl⟩
  obtain ⟨m, hmf, hm⟩ := exists_slice_measure hg heq ho μ ν χ χ' hχ hχ' hμ hν
  haveI := comap_isLocallyFinite ho ν
  haveI : IsLocallyFiniteMeasure
      ((ν.comap (fun q : Q => q • b₀)).withDensity (fun q => (χ' q : ℝ≥0∞))) :=
    IsLocallyFiniteMeasure.withDensity_coe hχ'
  have hw : Continuous (fun q : Q => χ' q * χ q⁻¹) := hχ'.mul (hχ.comp continuous_inv)
  refine ⟨fibFam g b₀ (fun q => χ' q * χ q⁻¹) m, fibFam_support hι hg hf heq ho _ m, ?_, ?_⟩
  · exact fun φ hφ => lintegral_fibFam hg heq ho μ ν χ χ' hχ hχ' m hm hφ
  · exact fun φ hφ hφc _ => integrable_and_continuous hg ho hw m hφ hφc

end GlobalTheory.CompanionTheory.SW.Slice
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityFormula =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureDisintegrationFormula =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureDisintegrationFormula", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityFormula\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramRightActionIdentities\npublic import Mathlib.MeasureTheory.Group.Measure\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HaarModularCharacterOfContinuousAction\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianMatricesLocallyCompactBorel\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianOrbitLocalSectionSubgroup\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.GramNear

theorem fibre_on_orbit (V X Y : Type) [AddCommGroup V] [TopologicalSpace V] [LocallyCompactSpace V]
    [SecondCountableTopology V] [T2Space V] [MeasurableSpace V] [BorelSpace V] [IsTopologicalAddGroup V]
    [AddCommGroup X] [TopologicalSpace X] [LocallyCompactSpace X]
    [SecondCountableTopology X] [T2Space X] [MeasurableSpace X] [BorelSpace X] [IsTopologicalAddGroup X]
    (μ : Measure V) (ν : Measure X) [μ.IsAddHaarMeasure] [ν.IsAddHaarMeasure]
    (f : V → Y) (g : V → X) (ι : X → Y) (hι : Function.Injective ι) (hg : Continuous g)
    (hf : ∀ v, f v = ι (g v))
    (Q : Type) [Group Q] [TopologicalSpace Q] [IsTopologicalGroup Q] [LocallyCompactSpace Q]
    [SecondCountableTopology Q] [T2Space Q] [DistribMulAction Q V] [ContinuousSMul Q V]
    [DistribMulAction Q X] [ContinuousSMul Q X]
    (heq : ∀ (q : Q) (v : V), g (q • v) = q • g v) (b₀ : X)
    (ho : IsOpenEmbedding (fun q : Q => q • b₀)) :
    ∃ fib : X → Measure V, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ f ι (g ⁻¹' (Set.range fun q : Q => q • b₀)) ν
      (Set.range fun q : Q => q • b₀) fib := by
  obtain ⟨χ, hχ, hμ⟩ := _root_.GlobalTheory.CompanionTheory.SW.exists_continuous_modulus_of_continuous_action V μ Q
  obtain ⟨χ', hχ', hν⟩ := _root_.GlobalTheory.CompanionTheory.SW.exists_continuous_modulus_of_continuous_action X ν Q
  exact _root_.GlobalTheory.CompanionTheory.SW.Slice.exists_isFibreFamily_openOrbit V X Y μ ν f g ι hι hg hf Q heq χ χ' hχ hχ' hμ hν b₀ ho

theorem exists_fibre_near : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [MeasurableSpace R] [BorelSpace R], IsLocR R → ∀ (n : ℕ) (μ : Measure (Fin n → Fin M → R ⊗[F] E)) (ν : Measure (HermR R σ n)), μ.IsAddHaarMeasure → ν.IsAddHaarMeasure → ∀ S : HermR R σ n, IsUnit (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det → ∃ B : Set (HermR R σ n), IsOpen B ∧ S ∈ B ∧ (∀ S' ∈ B, IsUnit (S' : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det) ∧ ∃ fib, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ (gramR R σ J) Subtype.val (gramR R σ J ⁻¹' (Subtype.val '' B)) ν B fib := by
  intro F E _ _ _ _ _ σ hσ M J hJ R _ _ _ _ _ hR n μ ν hμ hν S hS
  have hR' := hR
  obtain ⟨_, _, _, _, -, -, -, -⟩ := hR'
  obtain ⟨_, _, _, _, hsig, -, -, hbor, -, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ hσ R
  have hbor' := hbor n M
  obtain ⟨_, _, _, _, hlift⟩ := _root_.GlobalTheory.CompanionTheory.SW.HermTop.herm_top F E σ hσ R n
  obtain ⟨g, hgc, hgf⟩ := hlift M J hJ
  obtain ⟨hgram, hmul, hone, hherm, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.GramAlg.gram_algebra F E σ hσ M J hJ R n
  obtain ⟨Q, o, _, _, hoe, ho⟩ := _root_.GlobalTheory.CompanionTheory.SW.tri_slice F E σ hσ R hR n S hS

  let c : Q → Matrix (Fin n) (Fin n) (R ⊗[F] E) := fun q => (((q⁻¹ : Q) : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E))
  have hc1 : c 1 = 1 := by simp [c]
  have hcm : ∀ a b : Q, c (a * b) = c b * c a := by
    intro a b
    simp only [c, mul_inv_rev]
    rfl
  have hcc : Continuous c := Units.continuous_val.comp (continuous_subtype_val.comp continuous_inv)
  letI actV : DistribMulAction Q (Fin n → Fin M → R ⊗[F] E) :=
    { smul := fun q X => rmul R X (c q)
      one_smul := fun X => by
        change rmul R X (c 1) = X
        rw [hc1, hone]
      mul_smul := fun a b X => by
        change rmul R X (c (a * b)) = rmul R (rmul R X (c b)) (c a)
        rw [hcm, hmul]
      smul_zero := fun q => by
        change rmul R 0 (c q) = 0
        funext a i; simp [rmul]
      smul_add := fun q X Y => by
        change rmul R (X + Y) (c q) = rmul R X (c q) + rmul R Y (c q)
        funext a i; simp [rmul, add_mul, Finset.sum_add_distrib] }
  have hsmulV : ∀ (q : Q) (X : Fin n → Fin M → R ⊗[F] E), q • X = rmul R X (c q) := fun _ _ => rfl
  letI actH : DistribMulAction Q (HermR R σ n) :=
    { smul := fun q T => ⟨cT (sigR R σ) (c q) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c q, hherm T (c q)⟩
      one_smul := fun T => by
        apply Subtype.ext
        change cT (sigR R σ) (c 1) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c 1 = T
        rw [hc1]; simp [cT]
      mul_smul := fun a b T => by
        apply Subtype.ext
        change cT (sigR R σ) (c (a * b)) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c (a * b) =
          cT (sigR R σ) (c a) * (cT (sigR R σ) (c b) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c b) * c a
        rw [hcm]
        simp only [cT, Matrix.map_mul, Matrix.transpose_mul, Matrix.mul_assoc]
      smul_zero := fun q => by
        apply Subtype.ext
        change cT (sigR R σ) (c q) * (0 : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c q = 0
        simp
      smul_add := fun q T T' => by
        apply Subtype.ext
        change cT (sigR R σ) (c q) * ((T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) + T') * c q =
          cT (sigR R σ) (c q) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c q +
            cT (sigR R σ) (c q) * (T' : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c q
        rw [Matrix.mul_add, Matrix.add_mul] }
  have hsmulH : ∀ (q : Q) (T : HermR R σ n), ((q • T : HermR R σ n) : Matrix (Fin n) (Fin n) (R ⊗[F] E)) =
      cT (sigR R σ) (c q) * (T : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c q := fun _ _ => rfl
  have hcontV : ContinuousSMul Q (Fin n → Fin M → R ⊗[F] E) := by
    refine ⟨?_⟩
    change Continuous fun p : Q × (Fin n → Fin M → R ⊗[F] E) => rmul R p.2 (c p.1)
    refine continuous_pi fun a => continuous_pi fun i => ?_
    simp only [rmul]
    refine continuous_finsetSum _ fun b _ => Continuous.mul ?_ ?_
    · exact (continuous_apply i).comp ((continuous_apply b).comp continuous_snd)
    · exact (hcc.comp continuous_fst).matrix_elem b a
  have hcontH : ContinuousSMul Q (HermR R σ n) := by
    refine ⟨?_⟩
    refine Continuous.subtype_mk (f := fun p : Q × HermR R σ n => cT (sigR R σ) (c p.1) * (p.2 : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * c p.1) ?_ _
    have h1 : Continuous fun p : Q × HermR R σ n => c p.1 := hcc.comp continuous_fst
    have h2 : Continuous fun p : Q × HermR R σ n => cT (sigR R σ) (c p.1) :=
      (h1.matrix_map hsig).matrix_transpose
    exact (h2.matrix_mul (continuous_subtype_val.comp continuous_snd)).matrix_mul h1
  have heq : ∀ (q : Q) (X : Fin n → Fin M → R ⊗[F] E), g (q • X) = q • g X := by
    intro q X
    apply Subtype.ext
    rw [hsmulV, hsmulH, ← hgf, ← hgf, hgram]
  have horb : IsOpenEmbedding (fun q : Q => q • S) := by
    have : (fun q : Q => q • S) = o ∘ (Homeomorph.inv Q) := by
      funext q
      apply Subtype.ext
      rw [hsmulH]
      exact (ho q⁻¹).symm
    rw [this]
    exact hoe.comp (Homeomorph.inv Q).isOpenEmbedding
  obtain ⟨fib, hfib⟩ := fibre_on_orbit (Fin n → Fin M → R ⊗[F] E) (HermR R σ n) (Matrix (Fin n) (Fin n) (R ⊗[F] E))
    μ ν (gramR R σ J) g Subtype.val Subtype.val_injective hgc hgf Q heq S horb
  refine ⟨Set.range fun q : Q => q • S, horb.isOpen_range, ⟨1, one_smul _ _⟩, ?_, fib, ?_⟩
  · rintro _ ⟨q, rfl⟩
    change IsUnit ((q • S : HermR R σ n) : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det
    rw [hsmulH]
    have hdc : IsUnit (c q).det := Matrix.isUnits_det_units _
    have hdc' : IsUnit (cT (sigR R σ) (c q)).det := by
      simp only [cT, Matrix.det_transpose]
      have := hdc.map (sigR R σ)
      rwa [RingHom.map_det] at this
    rw [Matrix.det_mul, Matrix.det_mul]
    exact (hdc'.mul hS).mul hdc
  · have hpre : gramR R σ J ⁻¹' (Subtype.val '' (Set.range fun q : Q => q • S)) = g ⁻¹' (Set.range fun q : Q => q • S) := by
      ext X
      simp only [Set.mem_preimage, hgf X]
      exact Subtype.val_injective.mem_set_image
    rw [hpre]
    exact hfib

end GlobalTheory.CompanionTheory.SW.GramNear
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureDisintegrationFormula =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RestrFamily =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RestrFamily", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.DisintegrationDensityExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Topology Matrix
open scoped ENNReal NNReal

namespace GlobalTheory.CompanionTheory.SW.FibreGlue

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

section Local

variable {V X Y : Type} [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [TopologicalSpace X] [MeasurableSpace X] [BorelSpace X]
  {μ : Measure V} {ν : Measure X} {f : V → Y} {g : V → X} {ι : X → Y}

lemma ae_g_eq (hι : Function.Injective ι) (hf : ∀ v, f v = ι (g v)) {U : Set V} {m : Measure V}
    {b : X} (h : m (f ⁻¹' {ι b} ∩ U)ᶜ = 0) : ∀ᵐ v ∂m, g v = b := by
  have h' : ∀ᵐ v ∂m, v ∈ f ⁻¹' {ι b} ∩ U := by
    rw [ae_iff]; exact h
  refine h'.mono fun v hv => ?_
  apply hι
  rw [← hf v]
  exact hv.1

lemma piece (hι : Function.Injective ι) (hg : Continuous g) (hf : ∀ v, f v = ι (g v))
    {s D : Set X} (hD : MeasurableSet D) (hDs : D ⊆ s) {F : X → Measure V}
    (h : IsFibreFamily μ f ι (g ⁻¹' s) ν s F) {φ : V → ℝ≥0∞} (hφ : Measurable φ) :
    ∫⁻ v in g ⁻¹' D, φ v ∂μ = ∫⁻ b in D, ∫⁻ v, φ v ∂(F b) ∂ν := by
  have hm : MeasurableSet (g ⁻¹' D) := hg.measurable hD
  have e1 : ∫⁻ v in g ⁻¹' D, φ v ∂μ = ∫⁻ v in g ⁻¹' s, (g ⁻¹' D).indicator φ v ∂μ := by
    rw [setLIntegral_indicator hm, Set.inter_eq_left.2 (Set.preimage_mono hDs)]
  rw [e1, h.2.1 _ (hφ.indicator hm), ← lintegral_indicator hD]
  refine lintegral_congr fun b => ?_
  have hae := ae_g_eq hι hf (h.1 b)
  by_cases hb : b ∈ D
  · rw [Set.indicator_of_mem hb]
    refine lintegral_congr_ae (hae.mono fun v hv => ?_)
    have : v ∈ g ⁻¹' D := by
      show g v ∈ D
      rw [hv]; exact hb
    simp only [Set.indicator_of_mem this]
  · rw [Set.indicator_of_notMem hb]
    have e : ∫⁻ v, (g ⁻¹' D).indicator φ v ∂(F b) = ∫⁻ _, 0 ∂(F b) := by
      refine lintegral_congr_ae (hae.mono fun v hv => ?_)
      have : v ∉ g ⁻¹' D := by
        show g v ∉ D
        rw [hv]; exact hb
      simp only [Set.indicator_of_notMem this]
    simpa using e


open Classical in
noncomputable def restr (B : Set X) (fam : X → Measure V) : X → Measure V := by
  classical
  exact fun b => if b ∈ B then fam b else 0

lemma restr_family (hι : Function.Injective ι) (hg : Continuous g) (hf : ∀ v, f v = ι (g v))
    {B B₂ : Set X} (hB₂ : IsOpen B₂) (hsub : B₂ ⊆ B) {fam : X → Measure V}
    (h : IsFibreFamily μ f ι (g ⁻¹' B) ν B fam) :
    IsFibreFamily μ f ι (g ⁻¹' B₂) ν B₂ (restr B₂ fam) := by
  refine ⟨?_, ?_, ?_⟩
  · intro b
    by_cases hb : b ∈ B₂
    · simp only [restr, if_pos hb]
      refine measure_mono_null ?_ (h.1 b)
      intro v hv hv2
      apply hv
      refine ⟨hv2.1, ?_⟩
      show g v ∈ B₂
      have : g v = b := by
        apply hι
        rw [← hf v]
        exact hv2.1
      rw [this]; exact hb
    · simp [restr, hb]
  · intro φ hφ
    rw [piece hι hg hf hB₂.measurableSet hsub h hφ, ← lintegral_indicator hB₂.measurableSet]
    refine lintegral_congr fun b => ?_
    by_cases hb : b ∈ B₂
    · simp [restr, hb]
    · simp [restr, hb]
  · intro φ hφ hφc hφs
    have H := h.2.2 φ hφ hφc (hφs.trans (Set.preimage_mono hsub))
    refine ⟨fun b hb => ?_, ?_⟩
    · simp only [restr, if_pos hb]
      exact H.1 b (hsub hb)
    · refine (H.2.mono hsub).congr fun b hb => ?_
      simp only [restr, if_pos hb]

end Local

theorem glue : ∀ (V X Y : Type) [TopologicalSpace V] [LocallyCompactSpace V] [SecondCountableTopology V] [T2Space V] [MeasurableSpace V] [BorelSpace V] [TopologicalSpace X] [LocallyCompactSpace X] [SecondCountableTopology X] [T2Space X] [MeasurableSpace X] [BorelSpace X] (μ : Measure V) (ν : Measure X) [IsLocallyFiniteMeasure μ] [IsLocallyFiniteMeasure ν] [ν.IsOpenPosMeasure] (f : V → Y) (g : V → X) (ι : X → Y), Function.Injective ι → Continuous g → (∀ v, f v = ι (g v)) → ∀ (B : Set X), IsOpen B → (∀ b ∈ B, ∃ B' : Set X, IsOpen B' ∧ b ∈ B' ∧ B' ⊆ B ∧ ∃ fib' : X → Measure V, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ f ι (g ⁻¹' B') ν B' fib') → ∃ fib : X → Measure V, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsFibreFamily μ f ι (g ⁻¹' B) ν B fib := by
  intro V X Y _ _ _ _ _ _ _ _ _ _ _ _ μ ν _ _ _ f g ι hι hg hf B hB hloc
  classical
  choose! C hCo hbC hCB F hF using hloc
  let fib : X → Measure V := fun b => if b ∈ B then F b b else 0
  have hfibB : ∀ c ∈ B, fib c = F c c := fun c hc => by simp only [fib, if_pos hc]
  have hagree : ∀ a ∈ B, ∀ c ∈ C a, fib c = F a c := by
    intro a ha c hc
    have hcB : c ∈ B := hCB a ha hc
    have hI : IsOpen (C c ∩ C a) := (hCo c hcB).inter (hCo a ha)
    have r1 := restr_family hι hg hf hI Set.inter_subset_right (hF a ha)
    have u := _root_.GlobalTheory.CompanionTheory.SW.FibreUniq.fibreFamily_eq V X Y μ ν f g ι hι hg hf (C c) (C c ∩ C a) (hCo c hcB) hI
      Set.inter_subset_left (F c) (restr (C c ∩ C a) (F a)) (hF c hcB) r1 c ⟨hbC c hcB, hc⟩
    have hm : c ∈ C c ∩ C a := ⟨hbC c hcB, hc⟩
    simp only [restr, if_pos hm] at u
    rw [hfibB c hcB, u]
  refine ⟨fib, ?_, ?_, ?_⟩
  · intro b
    by_cases hb : b ∈ B
    · rw [hfibB b hb]
      refine measure_mono_null (Set.compl_subset_compl.2 ?_) ((hF b hb).1 b)
      intro v hv
      exact ⟨hv.1, hCB b hb hv.2⟩
    · simp [fib, hb]
  · intro φ hφ
    rcases B.eq_empty_or_nonempty with rfl | hne
    · simp [fib]
    obtain ⟨T, hTc, hTU⟩ := TopologicalSpace.isOpen_iUnion_countable (fun b : B => C b)
      (fun b => hCo b b.2)
    have hall : ⋃ b : B, C b = B := by
      apply Set.Subset.antisymm
      · exact Set.iUnion_subset fun b => hCB b b.2
      · intro b hb
        exact Set.mem_iUnion.2 ⟨⟨b, hb⟩, hbC b hb⟩
    have hTne : T.Nonempty := by
      by_contra hT
      rw [Set.not_nonempty_iff_eq_empty] at hT
      subst hT
      rw [hall] at hTU
      simp only [Set.mem_empty_iff_false, Set.iUnion_of_empty, Set.iUnion_empty] at hTU
      exact hne.ne_empty hTU.symm
    obtain ⟨e, he⟩ := hTc.exists_eq_range hTne
    let s : ℕ → Set X := fun n => C (e n)
    have hsU : ⋃ n, s n = B := by
      rw [← hall, ← hTU, he]
      simp [s]
    have hDm : ∀ n, MeasurableSet (disjointed s n) :=
      MeasurableSet.disjointed fun n => (hCo (e n) (e n).2).measurableSet
    have hDd : Pairwise (Function.onFun Disjoint (disjointed s)) := disjoint_disjointed s
    have hDU : ⋃ n, disjointed s n = B := by rw [iUnion_disjointed, hsU]
    calc ∫⁻ v in g ⁻¹' B, φ v ∂μ
        = ∫⁻ v in ⋃ n, g ⁻¹' (disjointed s n), φ v ∂μ := by
          rw [← Set.preimage_iUnion, hDU]
      _ = ∑' n, ∫⁻ v in g ⁻¹' (disjointed s n), φ v ∂μ :=
          lintegral_iUnion (fun n => hg.measurable (hDm n))
            (fun i j hij => (hDd hij).preimage g) _
      _ = ∑' n, ∫⁻ b in disjointed s n, ∫⁻ v, φ v ∂(fib b) ∂ν := by
          refine tsum_congr fun n => ?_
          rw [piece hι hg hf (hDm n) (disjointed_subset s n) (hF (e n) (e n).2) hφ]
          refine setLIntegral_congr_fun (hDm n) fun b hb => ?_
          rw [hagree (e n) (e n).2 b (disjointed_subset s n hb)]
      _ = ∫⁻ b in ⋃ n, disjointed s n, ∫⁻ v, φ v ∂(fib b) ∂ν :=
          (lintegral_iUnion hDm hDd _).symm
      _ = ∫⁻ b in B, ∫⁻ v, φ v ∂(fib b) ∂ν := by rw [hDU]
      _ = ∫⁻ b, ∫⁻ v, φ v ∂(fib b) ∂ν := by
          rw [← lintegral_indicator hB.measurableSet]
          refine lintegral_congr fun b => ?_
          by_cases hb : b ∈ B
          · simp [hb]
          · simp [hb, fib]
  · intro φ hφ hφc hφs
    have key : ∀ b ∈ B, Integrable φ (fib b) ∧
        ContinuousAt (fun c => ∫ v, φ v ∂(fib c)) b := by
      intro b hb
      obtain ⟨L₁, hL₁c, hbL₁, hL₁C⟩ := exists_compact_between (isCompact_singleton (x := b))
        (hCo b hb) (Set.singleton_subset_iff.2 (hbC b hb))
      obtain ⟨L₂, hL₂c, hbL₂, hL₂C⟩ := exists_compact_between (isCompact_singleton (x := b))
        isOpen_interior hbL₁
      have hclos : IsCompact (closure (interior L₁)) :=
        hL₁c.closure_of_subset interior_subset
      obtain ⟨χ, hχs, hχ1, -⟩ := exists_tsupport_one_of_isOpen_isClosed isOpen_interior hclos
        hL₂c.isClosed hL₂C
      have hK : L₂ ∈ 𝓝 b := mem_interior_iff_mem_nhds.1 (hbL₂ rfl)
      let ψ : V → ℝ := φ * (χ ∘ g)
      have hψ : Continuous ψ := hφ.mul (χ.continuous.comp hg)
      have hψc : HasCompactSupport ψ := hφc.mul_right
      have hψs : tsupport ψ ⊆ g ⁻¹' (C b) := by
        refine (tsupport_mul_subset_right).trans ?_
        refine (tsupport_comp_subset_preimage _ hg).trans ?_
        exact Set.preimage_mono (hχs.trans (interior_subset.trans hL₁C))
      have H := (hF b hb).2.2 ψ hψ hψc hψs
      have hCsub : L₂ ⊆ C b := hL₂C.trans (interior_subset.trans hL₁C)
      have hae : ∀ c ∈ L₂, ∀ᵐ v ∂(F b c), ψ v = φ v := by
        intro c hc
        refine (ae_g_eq hι hf ((hF b hb).1 c)).mono fun v hv => ?_
        simp [ψ, hv, hχ1 hc]
      have hbK : b ∈ L₂ := mem_of_mem_nhds hK
      refine ⟨?_, ?_⟩
      · rw [hagree b hb b (hbC b hb)]
        exact (H.1 b (hbC b hb)).congr (hae b hbK)
      · refine (H.2.continuousAt ((hCo b hb).mem_nhds (hbC b hb))).congr ?_
        filter_upwards [hK] with c hc
        rw [hagree b hb c (hCsub hc)]
        exact integral_congr_ae (hae c hc)
    exact ⟨fun b hb => (key b hb).1, fun b hb => (key b hb).2.continuousWithinAt⟩

end GlobalTheory.CompanionTheory.SW.FibreGlue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RestrFamily =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsGramFiberMeasures =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsGramFiberMeasures", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GramFiberMeasureDisintegrationFormula\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RestrFamily\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.UnitsOpenEmbeddingLocalTensor\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HermitianMatricesLocallyCompactBorel\nimport Formalism.UnipotentAdelicQuotients.SWXSDefs\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

namespace GlobalTheory.CompanionTheory.SW.GramExist

theorem exists_gramFib : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [MeasurableSpace R] [BorelSpace R], IsLocR R → ∀ (n : ℕ) (μ : Measure (Fin n → Fin M → R ⊗[F] E)) (ν : Measure (HermR R σ n)), μ.IsAddHaarMeasure → ν.IsAddHaarMeasure → ∃ m, IsGramFib R σ J n μ ν m := by
  intro F E _ _ _ _ _ σ hCM M J hJ R _ _ _ _ _ hR n μ ν hμ hν
  have hR' := hR
  obtain ⟨htr, hlc, hsc, ht2, -, -, -, -⟩ := hR'
  obtain ⟨hKtr, hKlc, hKsc, hKt2, -, -, -, hKb, -, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.TopK.topTens_props F E σ hCM R
  have hKu := _root_.GlobalTheory.CompanionTheory.SW.KUnits.units_val_isOpenEmbedding F E σ hCM R hR
  obtain ⟨hXlc, hXsc, hXt2, hXb, hlift⟩ := GlobalTheory.CompanionTheory.SW.HermTop.herm_top F E σ hCM R n
  obtain ⟨g, hg, hgf⟩ := hlift M J hJ
  have := hKb n M
  have hinj : Function.Injective (Subtype.val : HermR R σ n → Matrix (Fin n) (Fin n) (R ⊗[F] E)) :=
    Subtype.val_injective
  have hBo : IsOpen {S : HermR R σ n | IsUnit (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det} := by
    have hc : Continuous fun S : HermR R σ n => (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det :=
      Continuous.matrix_det continuous_subtype_val
    have : {S : HermR R σ n | IsUnit (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det} =
        (fun S : HermR R σ n => (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det) ⁻¹'
          Set.range (Units.val : (R ⊗[F] E)ˣ → R ⊗[F] E) := by
      ext S
      simp only [Set.mem_ofPred_eq, Set.mem_preimage, Set.mem_range]
      rfl
    rw [this]
    exact hKu.isOpen_range.preimage hc
  have hpre : ∀ B' : Set (HermR R σ n), gramR R σ J ⁻¹' (Subtype.val '' B') = g ⁻¹' B' := by
    intro B'
    ext X
    simp only [Set.mem_preimage, Set.mem_image, hgf X]
    exact hinj.mem_set_image
  have hglue := GlobalTheory.CompanionTheory.SW.FibreGlue.glue (Fin n → Fin M → R ⊗[F] E) (HermR R σ n)
    (Matrix (Fin n) (Fin n) (R ⊗[F] E)) μ ν (gramR R σ J) g Subtype.val hinj hg hgf
    {S | IsUnit (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det} hBo ?_
  · obtain ⟨fib, hfib⟩ := hglue
    refine ⟨fib, ?_⟩
    have hU : {X | IsUnit (gramR R σ J X).det} =
        g ⁻¹' {S | IsUnit (S : Matrix (Fin n) (Fin n) (R ⊗[F] E)).det} := by
      ext X
      simp only [Set.mem_ofPred_eq, Set.mem_preimage, hgf X]
    unfold IsGramFib
    rw [hU]
    exact hfib
  · intro S hS
    obtain ⟨B, hB, hSB, hBu, fib, hfib⟩ :=
      _root_.GlobalTheory.CompanionTheory.SW.GramNear.exists_fibre_near F E σ hCM M J hJ R hR n μ ν hμ hν S hS
    refine ⟨B, hB, hSB, fun S' hS' => hBu S' hS', fib, ?_⟩
    rw [← hpre]
    exact hfib

end GlobalTheory.CompanionTheory.SW.GramExist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsGramFiberMeasures =====
