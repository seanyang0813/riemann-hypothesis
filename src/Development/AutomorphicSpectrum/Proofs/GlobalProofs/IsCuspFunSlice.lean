module

public import Development.AbelianVarietyTheory.Definitions.Foundations.ConstTermOnMulLeftOfNormalizer
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MeasurePreservingConj
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousConjBlockEmbedding
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WittFrameConjugateGramInv
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConstTermEqZeroOfFrame
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LinearIndependentOfIsWittFrame
public import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTSubmatrixMul
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstAlongCocompactUniqueStages
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviDecompositionGradedIsotropicFlag
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StdParEqFlag
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsContinuousAdelicUnitaryEmbedding
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousConjBlockEmbeddingStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviNormalizesUnipotentVariant
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RationalUnipotentLeParabolic
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermAlongSubset
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardParabolicUnipotentMono
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientMeasureProductGroups, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLie, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLieStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndex, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndexStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBound, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBoundStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPart, Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPartStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvariance, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvarianceStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatible, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatibleStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanish, Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanishStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCuspFunSlice

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientMeasureProductGroups =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientMeasureProductGroups", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ConstTermOnMulLeftOfNormalizer\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MeasurePreservingConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory.Cusp.SemidirectConst

theorem map_restrict_isMulRightInvariant : ∀ (N N₁ : Type) [Group N] [TopologicalSpace N] [IsTopologicalGroup N] [MeasurableSpace N] [BorelSpace N]
    [Group N₁] [TopologicalSpace N₁] [IsTopologicalGroup N₁] [MeasurableSpace N₁] [BorelSpace N₁]
    (Δ : Subgroup N) [Countable Δ] (μ : Measure N) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (D : Set N),
    IsFundamentalDomain Δ D μ → ∀ (s : N₁ →* N) (π : N →* N₁), Continuous π → (∀ u, π (s u) = u) →
    (∀ δ ∈ Δ, π δ = 1) → ((μ.restrict D).map π).IsMulRightInvariant := by
  intro N N₁ _ _ _ _ _ _ _ _ _ _ Δ _ μ _ _ D hD s π hπ hπs hπΔ
  refine ⟨fun u₀ => ?_⟩
  ext B hB
  have hP : MeasurableSet (π ⁻¹' B) := hπ.measurable hB
  rw [Measure.map_apply (measurable_mul_const u₀) hB, Measure.map_apply hπ.measurable hB,
    Measure.map_apply hπ.measurable (measurable_mul_const u₀ hB), Measure.restrict_apply hP,
    Measure.restrict_apply (hπ.measurable (measurable_mul_const u₀ hB))]
  have e1 : π ⁻¹' ((· * u₀) ⁻¹' B) ∩ D = (· * s u₀) ⁻¹' (π ⁻¹' B ∩ (· * (s u₀)⁻¹) ⁻¹' D) := by
    ext v; simp [map_mul, hπs]
  have hD' : IsFundamentalDomain Δ ((· * (s u₀)⁻¹) ⁻¹' D) μ :=
    hD.preimage_of_equiv (measurePreserving_mul_right μ (s u₀)⁻¹).quasiMeasurePreserving Function.bijective_id
      fun γ x => mul_assoc _ _ _
  rw [e1, measure_preimage_mul_right]
  exact hD'.measure_set_eq hD hP fun δ => by
    ext v; simp [Subgroup.smul_def, map_mul, hπΔ δ δ.2]


open scoped Pointwise in
theorem map_restrict_isFiniteMeasureOnCompacts : ∀ (N N₁ : Type) [Group N] [TopologicalSpace N] [IsTopologicalGroup N] [MeasurableSpace N] [BorelSpace N]
    [Group N₁] [TopologicalSpace N₁] [IsTopologicalGroup N₁] [T2Space N₁] [MeasurableSpace N₁] [BorelSpace N₁]
    (Δ : Subgroup N) [Countable Δ] (μ : Measure N) [μ.IsHaarMeasure] (D : Set N),
    IsFundamentalDomain Δ D μ → ∀ (s : N₁ →* N) (π : N →* N₁), Continuous s → Continuous π → (∀ u, π (s u) = u) →
    (∃ K : Set N, IsCompact K ∧ ∀ v, π v = 1 → ∃ δ ∈ Δ, δ * v ∈ K) →
    IsFiniteMeasureOnCompacts ((μ.restrict D).map π) := by
  intro N N₁ _ _ _ _ _ _ _ _ _ _ _ Δ _ μ _ D hD s π hs hπ hπs hK
  obtain ⟨K, hK, hKs⟩ := hK
  refine ⟨fun C hC => ?_⟩
  have hm : MeasurableSet (π ⁻¹' C) := hπ.measurable hC.measurableSet
  rw [Measure.map_apply hπ.measurable hC.measurableSet, Measure.restrict_apply hm]
  have hL : IsCompact ((fun p : N × N₁ => p.1 * s p.2) '' (K ×ˢ C)) := (hK.prod hC).image (by fun_prop)
  have hsub : π ⁻¹' C ∩ D ⊆ ⋃ g : Δ, (g • ((fun p : N × N₁ => p.1 * s p.2) '' (K ×ˢ C)) ∩ D) := by
    rintro v ⟨hv, hvD⟩
    obtain ⟨δ, hδ, hδK⟩ := hKs (v * (s (π v))⁻¹) (by rw [map_mul, map_inv, hπs, mul_inv_cancel])
    refine Set.mem_iUnion.2 ⟨⟨δ, hδ⟩⁻¹, Set.mem_smul_set.2 ⟨δ * v, ⟨(δ * (v * (s (π v))⁻¹), π v), ⟨hδK, hv⟩, ?_⟩, ?_⟩, hvD⟩
    · simp [mul_assoc]
    · simp [Subgroup.smul_def]
  calc μ (π ⁻¹' C ∩ D) ≤ μ (⋃ g : Δ, (g • ((fun p : N × N₁ => p.1 * s p.2) '' (K ×ˢ C)) ∩ D)) := measure_mono hsub
    _ ≤ ∑' g : Δ, μ (g • ((fun p : N × N₁ => p.1 * s p.2) '' (K ×ˢ C)) ∩ D) := measure_iUnion_le _
    _ = μ ((fun p : N × N₁ => p.1 * s p.2) '' (K ×ˢ C)) := (hD.measure_eq_tsum _).symm
    _ < ⊤ := hL.measure_lt_top

theorem existsUnique_inter_preimage : ∀ (G G₁ : Type) [Group G] [Group G₁] (Γ N N' : Subgroup G) (Γ₁ N₁ : Subgroup G₁) (s : N₁ →* N) (π : N →* N₁),
    (∀ u, π (s u) = u) → (∀ v, π v = 1 ↔ (v : G) ∈ N') →
    (∀ u : N₁, (u : G₁) ∈ Γ₁ → (s u : G) ∈ Γ) → (∀ v : N, (v : G) ∈ Γ → (π v : G₁) ∈ Γ₁) →
    ∀ (A : Set N) (B : Set N₁), (∀ v : N, ∃! δ : (Γ ⊓ N').subgroupOf N, (δ : N) * v ∈ A) →
    (∀ u : N₁, ∃! γ : Γ₁.subgroupOf N₁, (γ : N₁) * u ∈ B) →
    ∀ v : N, ∃! γ : Γ.subgroupOf N, (γ : N) * v ∈ A ∩ π ⁻¹' B := by
  intro G G₁ _ _ Γ N N' Γ₁ N₁ s π hπs hker hsΓ hπΓ A B hA hB v
  obtain ⟨γ₁, hγ₁, hγ₁u⟩ := hB (π v)
  obtain ⟨δ, hδ, hδu⟩ := hA (s γ₁ * v)
  have hδΓ : ((δ : N) : G) ∈ Γ := (Subgroup.mem_subgroupOf.1 δ.2).1
  have hδ1 : π δ = 1 := (hker _).2 (Subgroup.mem_subgroupOf.1 δ.2).2
  have hsγ : ((s γ₁ : N) : G) ∈ Γ := hsΓ _ (Subgroup.mem_subgroupOf.1 γ₁.2)
  refine ⟨⟨δ * s γ₁, Subgroup.mem_subgroupOf.2 (by simpa using mul_mem hδΓ hsγ)⟩, ⟨?_, ?_⟩, fun γ hγ => ?_⟩
  · simpa [mul_assoc] using hδ
  · change π (δ * s γ₁ * v) ∈ B
    rwa [map_mul, map_mul, hδ1, hπs, one_mul]
  · have hγΓ : (((γ : N)) : G) ∈ Γ := Subgroup.mem_subgroupOf.1 γ.2
    have hπγ : (⟨π γ, Subgroup.mem_subgroupOf.2 (hπΓ _ hγΓ)⟩ : Γ₁.subgroupOf N₁) = γ₁ :=
      hγ₁u _ (by simpa [map_mul] using hγ.2)
    have hπγ' : π γ = γ₁ := congrArg Subtype.val hπγ
    have hmem : (γ : N) * (s γ₁)⁻¹ ∈ (Γ ⊓ N').subgroupOf N := Subgroup.mem_subgroupOf.2
      ⟨by simpa using mul_mem hγΓ (inv_mem hsγ), (hker _).1 (by rw [map_mul, map_inv, hπs, hπγ', mul_inv_cancel])⟩
    have e : (⟨_, hmem⟩ : (Γ ⊓ N').subgroupOf N) = δ := hδu _ (by simpa [mul_assoc] using hγ.1)
    refine Subtype.ext ?_
    change (γ : N) = δ * s γ₁
    rw [← e]; simp

end GlobalTheory.Cusp.SemidirectConst

open GlobalTheory.Cusp.SemidirectConst


open GlobalTheory.AutomorphicL2Unitary in
theorem GlobalTheory.Cusp.constTermOn_eq_integral_semidirect : ∀ (G G₁ : Type) [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G]
    [Group G₁] [TopologicalSpace G₁] [IsTopologicalGroup G₁] [SecondCountableTopology G₁] [T2Space G₁] [MeasurableSpace G₁] [BorelSpace G₁]
    (Γ N N' : Subgroup G) (Γ₁ N₁ : Subgroup G₁) [DiscreteTopology Γ] [DiscreteTopology Γ₁] [LocallyCompactSpace N] [LocallyCompactSpace N₁],
    N' ≤ N → GlobalTheory.Cusp.Cocompact Γ N → GlobalTheory.Cusp.Cocompact Γ N' → GlobalTheory.Cusp.Cocompact Γ₁ N₁ →
    ∀ (s : N₁ →* N) (π : N →* N₁), Continuous s → Continuous π → (∀ u, π (s u) = u) → (∀ v, π v = 1 ↔ (v : G) ∈ N') →
    (∀ u : N₁, (u : G₁) ∈ Γ₁ → (s u : G) ∈ Γ) → (∀ v : N, (v : G) ∈ Γ → (π v : G₁) ∈ Γ₁) →
    ∀ ψ : G → ℂ, Continuous ψ → (∀ a ∈ N', ∀ y, ψ (a * y) = ψ y) → (∀ γ ∈ Γ, γ ∈ N → ∀ y, ψ (γ * y) = ψ y) →
    ∀ (μ₁ : Measure N₁) (𝓕₁ : Set N₁), μ₁.IsHaarMeasure → IsFundamentalDomain (Γ₁.subgroupOf N₁) 𝓕₁ μ₁ → μ₁ 𝓕₁ = 1 →
    ∀ x : G, GlobalTheory.Cusp.constTermOn Γ N ψ x = ∫ u in 𝓕₁, ψ ((s u : G) * x) ∂μ₁ := by
  intro G G₁ _ _ _ _ _ _ _ _ _ _ _ _ _ _ Γ N N' Γ₁ N₁ _ _ _ _ hle hc hc' hc₁ s π hs hπ hπs hker hsΓ hπΓ ψ hψc hψN' hψΓ
    μ₁ 𝓕₁ hμ₁ h𝓕₁ h1 x
  haveI := hμ₁
  have : Countable Γ := TopologicalSpace.separableSpace_iff_countable.1 inferInstance
  have : DiscreteTopology (Γ ⊓ N' : Subgroup G) :=
    .of_continuous_injective (f := Subgroup.inclusion (inf_le_left : Γ ⊓ N' ≤ Γ))
      (continuous_subtype_val.subtype_mk _) (Subgroup.inclusion_injective _)
  obtain ⟨Δ, hΔ⟩ : ∃ Δ : Subgroup N, Δ = (Γ ⊓ N').subgroupOf N := ⟨_, rfl⟩
  subst hΔ
  have : Countable ((Γ ⊓ N').subgroupOf N) := Function.Injective.countable
    (f := fun δ : (Γ ⊓ N').subgroupOf N => (⟨δ.1.1, (Subgroup.mem_subgroupOf.1 δ.2).1⟩ : Γ))
    fun a b h => Subtype.ext (Subtype.ext (congrArg (fun z : Γ => z.1) h))
  let μ : Measure N := Measure.haar
  have := hc.isMulRightInvariant μ
  have := hc₁.isMulRightInvariant μ₁
  have hD' := isFundamentalDomain_stdDom ((Γ ⊓ N').subgroupOf N) μ
  have hπΔ : ∀ δ ∈ (Γ ⊓ N').subgroupOf N, π δ = 1 := fun δ hδ => (hker δ).2 (Subgroup.mem_subgroupOf.1 hδ).2
  obtain ⟨ν, hν⟩ : ∃ ν, ν = (μ.restrict (stdDom ((Γ ⊓ N').subgroupOf N))).map π := ⟨_, rfl⟩
  have : ν.IsMulRightInvariant := hν ▸ map_restrict_isMulRightInvariant N N₁ _ μ _ hD' s π hπ hπs hπΔ
  have : IsFiniteMeasureOnCompacts ν := hν ▸ map_restrict_isFiniteMeasureOnCompacts N N₁ _ μ _ hD' s π hs hπ hπs (by
    obtain ⟨K, hK, hKs⟩ := hc'
    refine ⟨Subgroup.inclusion hle '' K, hK.image (continuous_subtype_val.subtype_mk _), fun v hv => ?_⟩
    obtain ⟨γ, hγ, hγK⟩ := hKs ⟨v, (hker v).1 hv⟩
    refine ⟨Subgroup.inclusion hle γ, Subgroup.mem_subgroupOf.2 ⟨Subgroup.mem_subgroupOf.1 hγ, γ.2⟩, ⟨_, hγK, ?_⟩⟩
    exact Subtype.ext (by simp))
  obtain ⟨c, hνc⟩ : ∃ c : NNReal, ν = c • μ₁ := by
    obtain ⟨a, e1⟩ : ∃ a : NNReal, ν.inv = a • μ₁ := ⟨_, Measure.isMulLeftInvariant_eq_smul ν.inv μ₁⟩
    obtain ⟨b, e2⟩ : ∃ b : NNReal, μ₁.inv = b • μ₁ := ⟨_, Measure.isMulLeftInvariant_eq_smul μ₁.inv μ₁⟩
    refine ⟨a * b, ?_⟩
    rw [← Measure.inv_inv ν, e1, Measure.inv_def, Measure.map_smul, ← Measure.inv_def, e2, smul_smul]
    exact measurable_inv.aemeasurable
  have hD₁ := isFundamentalDomain_stdDom (Γ₁.subgroupOf N₁) μ₁
  have hmD₁ := measurableSet_stdDom (Γ₁.subgroupOf N₁)
  have hm𝓕 : MeasurableSet (stdDom ((Γ ⊓ N').subgroupOf N) ∩ π ⁻¹' stdDom (Γ₁.subgroupOf N₁)) :=
    (measurableSet_stdDom _).inter (hπ.measurable hmD₁)
  have h𝓕 : IsFundamentalDomain (Γ.subgroupOf N) (stdDom ((Γ ⊓ N').subgroupOf N) ∩ π ⁻¹' stdDom (Γ₁.subgroupOf N₁)) μ :=
    .mk' hm𝓕.nullMeasurableSet (existsUnique_inter_preimage G G₁ Γ N N' Γ₁ N₁ s π hπs hker hsΓ hπΓ _ _ (existsUnique_stdDom _) (existsUnique_stdDom _))
  have hg : ∀ v : N, ψ (v * x) = ψ (s (π v) * x) := fun v => by
    have hm : ((v * (s (π v))⁻¹ : N) : G) ∈ N' := (hker _).1 (by rw [map_mul, map_inv, hπs, mul_inv_cancel])
    have := hψN' _ hm ((s (π v) : G) * x)
    rw [← this, Subgroup.coe_mul, Subgroup.coe_inv, mul_assoc, inv_mul_cancel_left]
  have hgc : Continuous fun u : N₁ => ψ (s u * x) := by fun_prop
  have hint : ∫ v in stdDom ((Γ ⊓ N').subgroupOf N) ∩ π ⁻¹' stdDom (Γ₁.subgroupOf N₁), ψ (v * x) ∂μ =
      ∫ u in stdDom (Γ₁.subgroupOf N₁), ψ (s u * x) ∂ν := by
    rw [hν, setIntegral_map hmD₁ hgc.aestronglyMeasurable hπ.aemeasurable, Measure.restrict_restrict (hπ.measurable hmD₁),
      Set.inter_comm (π ⁻¹' _)]
    exact integral_congr_ae (.of_forall hg)
  have hmeas : μ (stdDom ((Γ ⊓ N').subgroupOf N) ∩ π ⁻¹' stdDom (Γ₁.subgroupOf N₁)) = ν (stdDom (Γ₁.subgroupOf N₁)) := by
    rw [hν, Measure.map_apply hπ.measurable hmD₁, Measure.restrict_apply (hπ.measurable hmD₁), Set.inter_comm]
  have hinv1 : ∀ (γ : Γ₁.subgroupOf N₁) (u : N₁), ψ (s (γ • u) * x) = ψ (s u * x) := fun γ u => by
    rw [Subgroup.smul_def, smul_eq_mul, map_mul]
    simp only [Subgroup.coe_mul, mul_assoc]
    exact hψΓ _ (hsΓ _ (Subgroup.mem_subgroupOf.1 γ.2)) (s γ).2 _
  have hDe : μ₁ (stdDom (Γ₁.subgroupOf N₁)) = 1 := (hD₁.measure_eq h𝓕₁).trans h1
  rw [GlobalTheory.Cusp.Stages.constTermOn_eq' h𝓕 (fun γ hγ n => by
      simp only [Subgroup.coe_mul, mul_assoc]
      exact hψΓ _ (Subgroup.mem_subgroupOf.1 hγ) γ.2 _),
    hint, measureReal_def, hmeas, hνc, Measure.smul_apply, hDe, Measure.restrict_smul, integral_smul_nnreal_measure,
    hD₁.setIntegral_eq h𝓕₁ hinv1]
  have hc0 : c ≠ 0 := by
    have := h𝓕.measure_ne_zero (NeZero.ne μ)
    rw [hmeas, hνc, Measure.smul_apply, hDe] at this
    rintro rfl; simp at this
  first
  | (rw [ENNReal.smul_def, smul_eq_mul, mul_one, ENNReal.coe_toReal, NNReal.smul_def, smul_smul,
      inv_mul_cancel₀ (NNReal.coe_ne_zero.2 hc0), one_smul]; done)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientMeasureProductGroups =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLie =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLie", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Proj

open GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice
open scoped GlobalTheory.MixModel

variable {D : D7} {V V' : HSp D} {ι : V'.V →ₗ[D.host.E] V.V} {m : ℕ}
  {X : Matrix (Fin V.rank) (Fin m) D.host.E} {T : Finset (Fin m)}

theorem prM_kills_colSpan
    (h : ∀ i ∈ upTo T, ∀ v' : V'.V, V.hT (V.frame.equivFun.symm fun j => X j i) (ι v') = 0)
    {z : Fin V.rank → AF D.host.F ⊗[D.host.F] D.host.E} (hz : z ∈ colSpan D.host.F X (upTo T)) :
    (adMat D.host.F (prM V V' ι)) *ᵥ z = 0 := by
  have hle : colSpan D.host.F X (upTo T) ≤ LinearMap.ker (adMat D.host.F (prM V V' ι)).mulVecLin := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨i, hi, rfl⟩
    have h0 : prM V V' ι *ᵥ (fun j => X j i) = 0 := prM_mulVec_eq_zero (h i hi)
    change (adMat D.host.F (prM V V' ι)) *ᵥ ((adMat D.host.F X)ᵀ i) = 0
    have h1 : (adMat D.host.F X)ᵀ i = fun j => inclR (F := D.host.F) (AF D.host.F) (X j i) := rfl
    rw [h1]
    funext k
    have h2 := congrArg (inclR (F := D.host.F) (AF D.host.F)) (congrFun h0 k)

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, Pi.zero_apply, map_zero] at h2
    simpa [Matrix.mulVec, dotProduct] using h2
  exact hle hz

theorem frameMat_mem_colPerp
    (h : ∀ i ∈ upTo T, ∀ v' : V'.V, V.hT (V.frame.equivFun.symm fun j => X j i) (ι v') = 0)
    (y : Fin V'.rank → AF D.host.F ⊗[D.host.F] D.host.E) :
    (adMat D.host.F (frameMat V V' ι)) *ᵥ y ∈ colPerp D.sp.cm.sig V.gram X (upTo T) := by
  have h0 : ∀ i ∈ upTo T, ∀ l, (Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) X * V.gram * frameMat V V' ι) i l = 0 := by
    intro i hi l
    have h2 := h i hi (V'.frame l)
    rw [GlobalTheory.IndefiniteRowSideFullHecke.AdelicUnitaryGroups.hT_coord] at h2
    simp only [repr_symm] at h2
    simp only [Matrix.mul_apply, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Eq.trans (Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_) h2
    simp only [Formalism.UG.cT, frameMat, LinearMap.toMatrix_apply, Matrix.transpose_apply, Matrix.map_apply]
    rfl
  simp only [colPerp, Submodule.mem_iInf]
  intro i hi
  simp only [LinearMap.mem_ker, LinearMap.comp_apply, Matrix.mulVecLin_apply, LinearMap.proj_apply]
  rw [Matrix.mulVec_mulVec]
  have e : adMat D.host.F (Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) X * V.gram) * adMat D.host.F (frameMat V V' ι) =
      adMat D.host.F (Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) X * V.gram * frameMat V V' ι) := Matrix.map_mul.symm
  rw [e]
  simp [Matrix.mulVec, dotProduct, h0 i hi]

theorem prM_unip_frameMat (hι : HSpace.IsIsomEmb V' V ι)
    (h : ∀ i ∈ upTo T, ∀ v' : V'.V, V.hT (V.frame.equivFun.symm fun j => X j i) (ι v') = 0)
    {a : GA D V} (ha : a ∈ unip D.sp.cm.sig V.gram X T) :
    adMat D.host.F (prM V V' ι) * (matHom V a).1 * adMat D.host.F (frameMat V V' ι) = 1 := by
  have hPI : adMat D.host.F (prM V V' ι) * adMat D.host.F (frameMat V V' ι) = 1 := by
    rw [← Matrix.map_mul, prM_mul_frameMat hι]
    exact Matrix.map_one _ (map_zero _) (map_one _)
  refine Matrix.ext_of_mulVec_single fun j => ?_
  have h1 := ha.2.2 (adMat D.host.F (frameMat V V' ι) *ᵥ Pi.single j 1) (frameMat_mem_colPerp h _)
  have h2 := prM_kills_colSpan h h1
  rw [Matrix.mulVec_sub, Matrix.mulVec_mulVec (Pi.single j 1) (adMat D.host.F (prM V V' ι)) (adMat D.host.F (frameMat V V' ι)),
    hPI, Matrix.one_mulVec, sub_eq_zero] at h2
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  rw [Matrix.one_mulVec]
  exact h2

theorem mt_eq_of_mem (hι : HSpace.IsIsomEmb V' V ι)
    (h : ∀ i ∈ upTo T, ∀ v' : V'.V, V.hT (V.frame.equivFun.symm fun j => X j i) (ι v') = 0)
    {s : GA D V' →* GA D V} (hs : ∀ h, EmbRel V V' ι (s h) h) {v : GA D V} {u : GA D V'}
    (hvu : v * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T) :
    (matHom V' u).1 = adMat D.host.F (prM V V' ι) * (matHom V v).1 * adMat D.host.F (frameMat V V' ι) := by
  have hv : v = (v * (s u)⁻¹) * s u := by group
  have h1 : (matHom V v).1 = (matHom V (v * (s u)⁻¹)).1 * (matHom V (s u)).1 := by
    conv_lhs => rw [hv]
    exact congrArg Units.val (map_mul (matHom V) _ _)
  have h2 : (matHom V (s u)).1 * adMat D.host.F (frameMat V V' ι) = adMat D.host.F (frameMat V V' ι) * (matHom V' u).1 := (hs u).1
  rw [h1, Matrix.mul_assoc, Matrix.mul_assoc, h2, ← Matrix.mul_assoc, ← Matrix.mul_assoc,
    prM_unip_frameMat hι h hvu, Matrix.one_mul]

theorem exists_proj : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ (N : Subgroup (GA D V)) (N₁ : Subgroup (GA D V')), (∀ p ∈ N, ∀ a ∈ unip D.sp.cm.sig V.gram X T, p * a * p⁻¹ ∈ unip D.sp.cm.sig V.gram X T) → (∀ v ∈ N, ∃ u ∈ N₁, v * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T) → ∃ π : N →* N₁, Continuous π ∧ (∀ (v : N) (u : N₁), π v = u ↔ (v : GA D V) * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T) ∧ ∀ v : N, (v : GA D V) ∈ GQ V → (π v : GA D V') ∈ GQ V' := by
  intro D V m X Y hW T V' ι hι hr s hs N N₁ hN hcov
  have h : ∀ i ∈ upTo T, ∀ v' : V'.V, V.hT (V.frame.equivFun.symm fun j => X j i) (ι v') = 0 :=
    fun i hi v' => ((hr (ι v')).1 ⟨v', rfl⟩ i hi).1
  have uniq : ∀ (v : GA D V) (u u' : GA D V'), v * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T →
      v * (s u')⁻¹ ∈ unip D.sp.cm.sig V.gram X T → u = u' := fun v u u' h1 h2 =>
    GlobalTheory.MixModel.mt_injective V' ((mt_eq_of_mem hι h hs h1).trans (mt_eq_of_mem hι h hs h2).symm)
  choose f hf1 hf2 using hcov
  let π : N →* N₁ := MonoidHom.mk' (fun v => ⟨f v.1 v.2, hf1 v.1 v.2⟩) fun a b => by
    apply Subtype.ext
    refine uniq (a.1 * b.1) _ _ (hf2 _ (a * b).2) ?_
    have e : a.1 * b.1 * (s (f a.1 a.2 * f b.1 b.2))⁻¹ =
        (a.1 * (b.1 * (s (f b.1 b.2))⁻¹) * a.1⁻¹) * (a.1 * (s (f a.1 a.2))⁻¹) := by
      rw [map_mul]; group
    change a.1 * b.1 * (s (f a.1 a.2 * f b.1 b.2))⁻¹ ∈ unip D.sp.cm.sig V.gram X T
    rw [e]
    exact mul_mem (hN a.1 a.2 _ (hf2 _ b.2)) (hf2 _ a.2)
  have hmat : ∀ v : N, (matHom V' (π v : GA D V')).1 =
      adMat D.host.F (prM V V' ι) * (matHom V (v : GA D V)).1 * adMat D.host.F (frameMat V V' ι) := fun v =>
    mt_eq_of_mem hι h hs (hf2 v.1 v.2)
  refine ⟨π, ?_, fun v u => ⟨fun e => e ▸ hf2 v.1 v.2, fun e => Subtype.ext (uniq v.1 _ _ (hf2 v.1 v.2) e)⟩, ?_⟩
  · refine Continuous.subtype_mk (GlobalTheory.MixModel.continuous_of_mt V' ?_) _
    haveI := (ring_facts (F := D.host.F) (E := D.host.E)).1
    have hm : Continuous fun v : N => (matHom V (v : GA D V)).1 :=
      (GlobalTheory.MixModel.continuous_mt V).comp continuous_subtype_val
    exact ((continuous_const.matrix_mul hm).matrix_mul continuous_const).congr fun v => (hmat v).symm
  · intro v hv
    refine (GlobalTheory.MixModel.mem_GQ_iff V' _).2 ?_
    refine (congrArg (· ∈ GlobalTheory.MixModel.ratMx D V'.rank V'.rank) (hmat v)).mpr ?_
    exact GlobalTheory.MixModel.ratMx_mul (GlobalTheory.MixModel.ratMx_mul (GlobalTheory.MixModel.rat_mem _) ((GlobalTheory.MixModel.mem_GQ_iff V _).1 hv))
      (GlobalTheory.MixModel.rat_mem _)

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Proj
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLie =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLieStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLieStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLie\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.restricted_automorphic_invariance : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ (N : Subgroup (GA D V)) (N₁ : Subgroup (GA D V')), (∀ p ∈ N, ∀ a ∈ unip D.sp.cm.sig V.gram X T, p * a * p⁻¹ ∈ unip D.sp.cm.sig V.gram X T) → (∀ v ∈ N, ∃ u ∈ N₁, v * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T) → ∃ π : N →* N₁, Continuous π ∧ (∀ (v : N) (u : N₁), π v = u ↔ (v : GA D V) * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T) ∧ ∀ v : N, (v : GA D V) ∈ GQ V → (π v : GA D V') ∈ GQ V' := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Proj.exists_proj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLieStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndex =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndex", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousConjBlockEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice

open GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UEmb (hT_col)
open Formalism.UG (cT)

variable {D : D7} {V V' : HSp D} {ι : V'.V →ₗ[D.host.E] V.V}

theorem frameMat_mulVec (z : Fin V'.rank → D.host.E) :
    frameMat V V' ι *ᵥ z = ⇑(V.frame.repr (ι (V'.frame.equivFun.symm z))) := by
  have h := LinearMap.toMatrix_mulVec_repr V'.frame V.frame ι (V'.frame.equivFun.symm z)
  have hz : ⇑(V'.frame.repr (V'.frame.equivFun.symm z)) = z := funext fun i => repr_symm V' z i
  rw [hz] at h
  exact h

theorem symm_frameMat_mulVec (z : Fin V'.rank → D.host.E) :
    V.frame.equivFun.symm (frameMat V V' ι *ᵥ z) = ι (V'.frame.equivFun.symm z) := by
  rw [frameMat_mulVec]
  have h := V.frame.equivFun.symm_apply_apply (ι (V'.frame.equivFun.symm z))
  rwa [Module.Basis.equivFun_apply] at h

theorem hE_eq_hT (V : HSp D) (a b : Fin V.rank → D.host.E) :
    hE D.sp.cm.sig V.gram a b = V.hT (V.frame.equivFun.symm a) (V.frame.equivFun.symm b) := by
  rw [hT_frame]
  rfl

theorem pairing_submatrix (hι : HSpace.IsIsomEmb V' V ι) {m m' : ℕ} {e : Fin m' → Fin m}
    {A B : Matrix (Fin V.rank) (Fin m) D.host.E} {A' B' : Matrix (Fin V'.rank) (Fin m') D.host.E}
    (hA : frameMat V V' ι * A' = A.submatrix id e) (hB : frameMat V V' ι * B' = B.submatrix id e) :
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) A' * V'.gram * B' =
      (cT (D.sp.cm.sig : D.host.E →+* D.host.E) A * V.gram * B).submatrix e e := by
  have hc : cT (D.sp.cm.sig : D.host.E →+* D.host.E) (frameMat V V' ι * A') =
      cT (D.sp.cm.sig : D.host.E →+* D.host.E) A' * cT (D.sp.cm.sig : D.host.E →+* D.host.E) (frameMat V V' ι) := by
    simp only [Formalism.UG.cT, Matrix.map_mul, Matrix.transpose_mul]
  have h1 : cT (D.sp.cm.sig : D.host.E →+* D.host.E) A' * V'.gram * B' =
      cT (D.sp.cm.sig : D.host.E →+* D.host.E) (frameMat V V' ι * A') * V.gram * (frameMat V V' ι * B') := by
    rw [← _root_.Formalism.L2.Fam.ThC.frame_rel hι, hc]
    simp only [Matrix.mul_assoc]
  rw [h1, hA, hB]
  ext i j
  simp only [Formalism.UG.cT, Matrix.mul_apply, Matrix.submatrix_apply, Matrix.transpose_apply, Matrix.map_apply, id]

theorem exists_sliceFrame : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∃ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' ∧ GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' := by
  intro D V m X Y hW T V' ι hι hrange
  classical
  obtain ⟨hxx, hyy, hxy, hani⟩ := hW
  have hpair : ∀ {p q : ℕ} (A : Matrix (Fin V.rank) (Fin p) D.host.E)
      (B : Matrix (Fin V.rank) (Fin q) D.host.E) (k : Fin p) (i : Fin q),
      V.hT (V.frame.equivFun.symm fun j => A j k) (V.frame.equivFun.symm fun j => B j i) =
        (cT (D.sp.cm.sig : D.host.E →+* D.host.E) A * V.gram * B) k i := by
    intro p q A B k i
    rw [hT_col V A (fun j => B j i) k]
    rfl
  have hne : ∀ i k, i ∉ upTo T → k ∈ upTo T → i ≠ k := by
    rintro i k hi hk rfl
    exact hi hk
  have hxmem : ∀ i, i ∉ upTo T → (V.frame.equivFun.symm fun j => X j i) ∈ LinearMap.range ι := by
    intro i hi
    rw [hrange]
    intro k hk
    constructor
    · rw [hpair X X k i, hxx, Matrix.zero_apply]
    · rw [← V.herm.eq (V.frame.equivFun.symm fun j => X j i) (V.frame.equivFun.symm fun j => Y j k),
        hpair X Y i k, hxy, Matrix.one_apply_ne (hne i k hi hk), map_zero]
  have hymem : ∀ i, i ∉ upTo T → (V.frame.equivFun.symm fun j => Y j i) ∈ LinearMap.range ι := by
    intro i hi
    rw [hrange]
    intro k hk
    constructor
    · rw [hpair X Y k i, hxy, Matrix.one_apply_ne (hne i k hi hk).symm]
    · rw [hpair Y Y k i, hyy, Matrix.zero_apply]
  set S : Finset (Fin m) := Finset.univ.filter (fun i => i ∉ upTo T) with hS
  have he_mono : StrictMono (fun k => S.orderEmbOfFin rfl k) := (S.orderEmbOfFin rfl).strictMono
  have he_range : ∀ i, i ∉ upTo T ↔ i ∈ Set.range (fun k => S.orderEmbOfFin rfl k) := by
    intro i
    have h : Set.range (fun k => S.orderEmbOfFin rfl k) = (S : Set (Fin m)) :=
      Finset.range_orderEmbOfFin S rfl
    rw [h, hS]
    simp
  have he_out : ∀ k, S.orderEmbOfFin rfl k ∉ upTo T := fun k => (he_range _).2 ⟨k, rfl⟩
  have hx' : ∀ k, ∃ w : V'.V, ι w = V.frame.equivFun.symm fun j => X j (S.orderEmbOfFin rfl k) :=
    fun k => LinearMap.mem_range.1 (hxmem _ (he_out k))
  have hy' : ∀ k, ∃ w : V'.V, ι w = V.frame.equivFun.symm fun j => Y j (S.orderEmbOfFin rfl k) :=
    fun k => LinearMap.mem_range.1 (hymem _ (he_out k))
  choose wx hwx using hx'
  choose wy hwy using hy'
  have hsym : ∀ w : V'.V, V'.frame.equivFun.symm (fun a => V'.frame.repr w a) = w := by
    intro w
    have h := V'.frame.equivFun.symm_apply_apply w
    rw [Module.Basis.equivFun_apply] at h
    exact h
  have hcol : ∀ (Z : Matrix (Fin V.rank) (Fin m) D.host.E) (w : Fin S.card → V'.V),
      (∀ k, ι (w k) = V.frame.equivFun.symm fun j => Z j (S.orderEmbOfFin rfl k)) →
      frameMat V V' ι * Matrix.of (fun a k => V'.frame.repr (w k) a) =
        Z.submatrix id (fun k => S.orderEmbOfFin rfl k) := by
    intro Z w hw
    ext a k
    have h := congrFun (frameMat_mulVec (V := V) (V' := V') (ι := ι)
      (fun b => V'.frame.repr (w k) b)) a
    rw [hsym (w k), hw k, repr_symm] at h
    exact h
  refine ⟨S.card, fun k => S.orderEmbOfFin rfl k, Matrix.of (fun a k => V'.frame.repr (wx k) a),
    Matrix.of (fun a k => V'.frame.repr (wy k) a), ?_, ?_⟩
  · exact And.intro he_mono (And.intro he_range (And.intro (hcol X wx hwx) (hcol Y wy hwy)))
  have hXX := pairing_submatrix hι (hcol X wx hwx) (hcol X wx hwx)
  have hYY := pairing_submatrix hι (hcol Y wy hwy) (hcol Y wy hwy)
  have hXY := pairing_submatrix hι (hcol X wx hwx) (hcol Y wy hwy)
  refine GlobalTheory.SiegelSet.IsWittFrame.mk ?_ ?_ ?_ ?_
  · rw [hXX, hxx]
    rfl
  · rw [hYY, hyy]
    rfl
  · rw [hXY, hxy]
    exact Matrix.submatrix_one _ he_mono.injective
  · intro z' h1 h2 h3
    have hz : frameMat V V' ι *ᵥ z' = 0 := by
      apply hani
      · funext i
        rw [← hT_col, symm_frameMat_mulVec]
        by_cases hi : i ∈ upTo T
        · exact ((hrange _).1 (LinearMap.mem_range_self ι _) i hi).1
        · obtain ⟨k, rfl⟩ := (he_range i).1 hi
          rw [← hwx k, hι (wx k) (V'.frame.equivFun.symm z'), ← hsym (wx k)]
          exact (hT_col V' (Matrix.of fun a k => V'.frame.repr (wx k) a) z' k).trans (congrFun h1 k)
      · funext i
        rw [← hT_col, symm_frameMat_mulVec]
        by_cases hi : i ∈ upTo T
        · exact ((hrange _).1 (LinearMap.mem_range_self ι _) i hi).2
        · obtain ⟨k, rfl⟩ := (he_range i).1 hi
          rw [← hwy k, hι (wy k) (V'.frame.equivFun.symm z'), ← hsym (wy k)]
          exact (hT_col V' (Matrix.of fun a k => V'.frame.repr (wy k) a) z' k).trans (congrFun h2 k)
      · rw [hE_eq_hT, symm_frameMat_mulVec,
          hι (V'.frame.equivFun.symm z') (V'.frame.equivFun.symm z'), ← hE_eq_hT V' z' z']
        exact h3
    have h := congrArg (fun w => prM V V' ι *ᵥ w) hz
    simp only [Matrix.mulVec_mulVec, prM_mul_frameMat hι, Matrix.one_mulVec, Matrix.mulVec_zero] at h
    exact h

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndex =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndexStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndexStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.orthogonal_subspace_witt_frame_extension : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∃ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' ∧ GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.exists_sliceFrame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndexStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm\npublic import Mathlib.LinearAlgebra.Matrix.Rank\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WittFrameConjugateGramInv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.IsoFrameBound

open Formalism.UG (cT)

variable {E : Type} [Field E]

theorem rank_map_of_invol (s : E →+* E) (hs : ∀ x, s (s x) = x) {a b : ℕ} (A : Matrix (Fin a) (Fin b) E) :
    (A.map s).rank = A.rank := by
  have hAA : (A.map s).map s = A := by ext i j; simp [hs]
  have key : ∀ (B : Matrix (Fin a) (Fin b) E) (v : Fin a → E), v ∈ LinearMap.range B.mulVecLin →
      (fun i => s (v i)) ∈ LinearMap.range (B.map s).mulVecLin := by
    rintro B v ⟨w, rfl⟩
    refine ⟨fun i => s (w i), ?_⟩
    funext i
    simp only [Matrix.mulVecLin_apply]
    exact (RingHom.map_mulVec s B w i).symm
  let j : LinearMap.range A.mulVecLin ≃+ LinearMap.range (A.map s).mulVecLin :=
    { toFun := fun v => ⟨fun i => s (v.1 i), key A v.1 v.2⟩
      invFun := fun v => ⟨fun i => s (v.1 i), by
        have := key (A.map s) v.1 v.2
        rwa [hAA] at this⟩
      left_inv := fun v => by ext i; simp [hs]
      right_inv := fun v => by ext i; simp [hs]
      map_add' := fun v w => by ext i; simp }
  have hb : Function.Bijective s := ⟨s.injective, fun x => ⟨s x, hs x⟩⟩
  have := rank_eq_of_equiv_equiv s j hb (fun c v => Subtype.ext (funext fun i => by
    show s (c * v.1 i) = s c * s (v.1 i)
    exact map_mul s _ _))
  rw [← Matrix.finrank_range_mulVecLin, ← Matrix.finrank_range_mulVecLin]
  exact congrArg Cardinal.toNat this.symm

theorem hform_eq (s : E →+* E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (x y : Fin n → E) :
    Formalism.UG.hform s J x y = (fun i => s (x i)) ⬝ᵥ (J *ᵥ y) := by
  simp only [Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]

theorem dot_cT (s : E →+* E) {n k : ℕ} (P : Matrix (Fin n) (Fin k) E) (J : Matrix (Fin n) (Fin n) E)
    (u : Fin k → E) (v : Fin n → E) :
    (fun i => s ((P *ᵥ u) i)) ⬝ᵥ (J *ᵥ v) = (fun i => s (u i)) ⬝ᵥ ((cT s P * J) *ᵥ v) := by
  have e : (fun i => s (u i)) ᵥ* cT s P = fun i => s ((P *ᵥ u) i) := by
    show _ ᵥ* (P.map s)ᵀ = _
    rw [Matrix.vecMul_transpose]
    funext i
    exact (RingHom.map_mulVec s P u i).symm
  rw [← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec (fun i => s (u i)) (cT s P) (J *ᵥ v), e]

theorem le_of_frames (s : E →+* E) (hs : ∀ x, s (s x) = x) {n m r : ℕ} (J : Matrix (Fin n) (Fin n) E)
    (hJ : cT s J = J) (X Y : Matrix (Fin n) (Fin m) E) (C : Matrix (Fin n) (Fin r) E)
    (xx : cT s X * J * X = 0) (yx : cT s Y * J * X = 1) (cc : cT s C * J * C = 0)
    (an : ∀ z : Fin n → E, (cT s X * J) *ᵥ z = 0 → (cT s Y * J) *ᵥ z = 0 → Formalism.UG.hform s J z z = 0 → z = 0)
    (hC : LinearIndependent E Cᵀ) : r ≤ m := by
  obtain ⟨M, hM⟩ : ∃ M, M = cT s X * J * C := ⟨_, rfl⟩
  obtain ⟨Q, hQ⟩ : ∃ Q, Q = cT s Y * J * C := ⟨_, rfl⟩
  obtain ⟨M', hM'⟩ : ∃ M', M' = cT s C * J * X := ⟨_, rfl⟩
  have hXX : cT s (cT s X) = X := by ext i j; simp [cT, hs]
  have hMM : M' = cT s M := by
    rw [hM, hM', Formalism.UG.cT_mul, Formalism.UG.cT_mul, hJ, hXX, Matrix.mul_assoc]
  have step : ∀ a, M *ᵥ a = 0 → X *ᵥ (Q *ᵥ a) = C *ᵥ a := by
    intro a ha
    obtain ⟨b, hb⟩ : ∃ b, b = Q *ᵥ a := ⟨_, rfl⟩
    obtain ⟨z, hz⟩ : ∃ z, z = C *ᵥ a - X *ᵥ b := ⟨_, rfl⟩
    have hA : (cT s X * J) *ᵥ z = 0 := by
      rw [hz, Matrix.mulVec_sub, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← hM, ha, xx,
        Matrix.zero_mulVec, sub_zero]
    have hB : (cT s Y * J) *ᵥ z = 0 := by
      rw [hz, Matrix.mulVec_sub, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, yx, Matrix.one_mulVec, ← hQ, hb,
        sub_self]
    have hh : Formalism.UG.hform s J z z = 0 := by
      rw [hform_eq]
      have e1 : (fun i => s (z i)) = (fun i => s ((C *ᵥ a) i)) - (fun i => s ((X *ᵥ b) i)) := by
        funext i; simp [hz]
      have e2 : (cT s C * J) *ᵥ z = - (M' *ᵥ b) := by
        rw [hz, Matrix.mulVec_sub, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, cc, Matrix.zero_mulVec, zero_sub, hM']
      have e3 : (fun i => s (a i)) ᵥ* cT s M = 0 := by
        show _ ᵥ* (M.map s)ᵀ = 0
        rw [Matrix.vecMul_transpose]
        funext i
        have := RingHom.map_mulVec s M a i
        rw [ha] at this
        exact this.symm.trans (by simp)
      rw [e1, sub_dotProduct, dot_cT, dot_cT, hA, dotProduct_zero, sub_zero, e2, dotProduct_neg, neg_eq_zero,
        hMM, Matrix.dotProduct_mulVec, e3, zero_dotProduct]
    have h0 := an z hA hB hh
    rw [← hb]
    rw [hz] at h0
    exact (sub_eq_zero.1 h0).symm
  have hCi : Function.Injective C.mulVec := Matrix.mulVec_injective_iff.2 hC
  let φ : LinearMap.ker M.mulVecLin →ₗ[E] LinearMap.ker M'.mulVecLin :=
    (Q.mulVecLin.comp (LinearMap.ker M.mulVecLin).subtype).codRestrict _ (fun a => by
      have ha : M *ᵥ a.1 = 0 := a.2
      rw [LinearMap.mem_ker]
      show M' *ᵥ (Q *ᵥ a.1) = 0
      rw [hM', ← Matrix.mulVec_mulVec, step a.1 ha, Matrix.mulVec_mulVec, cc, Matrix.zero_mulVec])
  have hφ : Function.Injective φ := by
    refine (injective_iff_map_eq_zero φ).2 fun a h => ?_
    have h1 : Q *ᵥ a.1 = 0 := congrArg Subtype.val h
    have ha : M *ᵥ a.1 = 0 := a.2
    have h2 := step a.1 ha
    rw [h1, Matrix.mulVec_zero] at h2
    exact Subtype.ext (hCi (h2.symm.trans (Matrix.mulVec_zero C).symm))
  have h1 := LinearMap.finrank_le_finrank_of_injective hφ
  have h2 := LinearMap.finrank_range_add_finrank_ker M.mulVecLin
  have h3 := LinearMap.finrank_range_add_finrank_ker M'.mulVecLin
  have h4 : M'.rank = M.rank := by
    rw [hMM]
    simp only [cT]
    rw [Matrix.rank_transpose, rank_map_of_invol s hs]
  simp only [Module.finrank_fintype_fun_eq_card, Fintype.card_fin] at h2 h3
  have h5 : Module.finrank E (LinearMap.range M.mulVecLin) = M.rank := by rw [Matrix.finrank_range_mulVecLin]
  have h6 : Module.finrank E (LinearMap.range M'.mulVecLin) = M'.rank := by rw [Matrix.finrank_range_mulVecLin]
  omega

theorem isoFrame_le_wittFrame : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (r : ℕ) (C : Matrix (Fin V.rank) (Fin r) D.host.E),
    IsIsoFrame V C → r ≤ m := by
  intro D V m X Y hW r C hC
  have hσ : ∀ x : D.host.E, (D.sp.cm.sig : D.host.E →+* D.host.E) x = star x := fun _ => rfl
  have hJ : cT (D.sp.cm.sig : D.host.E →+* D.host.E) V.gram = V.gram := by
    ext i j
    simp only [cT, Matrix.transpose_apply, Matrix.map_apply, hσ, Formalism.BasicNotions.HSpace.gram]
    exact V.herm.eq (V.frame j) (V.frame i)
  exact le_of_frames (D.sp.cm.sig : D.host.E →+* D.host.E) (fun x => by simp only [hσ, star_star]) V.gram hJ X Y C
    hW.xx (GlobalTheory.WittFrame.yx_eq_one D V m X Y hW) hC.2.2 (fun z h1 h2 h3 => hW.aniso z h1 h2 h3) hC.2.1

end GlobalTheory.CompanionTheory.IsoFrameBound
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBoundStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBoundStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.isotropic_frame_rank_le_witt_index : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (r : ℕ) (C : Matrix (Fin V.rank) (Fin r) D.host.E), IsIsoFrame V C → r ≤ m := by
  first | exact @GlobalTheory.CompanionTheory.IsoFrameBound.isoFrame_le_wittFrame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBoundStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPart =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPart", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet
open GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Down

section Core

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

abbrev adV {n : ℕ} (v : Fin n → E) : Fin n → AF F ⊗[F] E := fun i => inclR (F := F) (AF F) (v i)

theorem adMat_mulVec {a c : ℕ} (M : Matrix (Fin a) (Fin c) E) (v : Fin c → E) :
    adMat F M *ᵥ adV (F := F) v = adV (F := F) (M *ᵥ v) :=
  funext fun i => (RingHom.map_mulVec (inclR (F := F) (AF F)) M v i).symm

theorem core (σ : E →ₐ[F] E) {n n' r r' : ℕ} {J : Matrix (Fin n) (Fin n) E} {J' : Matrix (Fin n') (Fin n') E}
    {X : Matrix (Fin n) (Fin r) E} {X' Y' : Matrix (Fin n') (Fin r') E} {T : Finset (Fin r)} {e : Fin r' → Fin r}
    {I : Matrix (Fin n) (Fin n') E} {P : Matrix (Fin n') (Fin n) E}
    (hmono : StrictMono e) (hrange : ∀ i, i ∉ upTo T ↔ i ∈ Set.range e)
    (hIX : I * X' = X.submatrix id e) (hPI : P * I = 1)
    (hg : Formalism.UG.cT (σ : E →+* E) I * J = J' * P)
    (hPl : ∀ l ∈ upTo T, P *ᵥ Xᵀ l = 0)
    (hperp : ∀ x, ∀ l ∈ upTo T, ((Formalism.UG.cT (σ : E →+* E) X * J) *ᵥ (I *ᵥ x)) l = 0)
    (hW' : IsWittFrame σ J' X' Y') (k : Fin r') (g : GAd σ J) (b : GAd σ J')
    (hmat : (matHom _ σ J g).1 = 1 + adMat F I * ((matHom _ σ J' b).1 - 1) * adMat F P)
    (hgm : g ∈ unip σ J X (insert (e k) T)) : b ∈ unip σ J' X' {k} := by
  obtain ⟨M, hM⟩ : ∃ M, M = (matHom _ σ J' b).1 - 1 := ⟨_, rfl⟩
  rw [← hM] at hmat
  have hPI' : adMat F P * adMat F I = 1 := by
    rw [← Matrix.map_mul, hPI, Matrix.map_one _ (map_zero _) (map_one _)]
  have hPIv : ∀ w, adMat F P *ᵥ (adMat F I *ᵥ w) = w := fun w => by rw [mulVec_mulVec, hPI', one_mulVec]
  have hGv : ∀ w, (matHom _ σ J g).1 *ᵥ (adMat F I *ᵥ w) - adMat F I *ᵥ w = adMat F I *ᵥ (M *ᵥ w) := fun w => by
    rw [hmat, Matrix.add_mulVec, one_mulVec, add_sub_cancel_left, ← Matrix.mulVec_mulVec, hPIv, ← Matrix.mulVec_mulVec]
  have hXe : ∀ i, (adMat F X)ᵀ (e i) = adMat F I *ᵥ (adMat F X')ᵀ i := fun i => by
    have h : adMat F I * adMat F X' = adMat F (X.submatrix id e) := by rw [← Matrix.map_mul, hIX]
    funext j
    exact (congrFun (congrFun h j) i).symm
  have hPX : ∀ l ∈ upTo T, adMat F P *ᵥ (adMat F X)ᵀ l = 0 := fun l hl => by
    change adMat F P *ᵥ adV (F := F) (Xᵀ l) = 0
    rw [adMat_mulVec, hPl l hl]
    funext i
    exact map_zero _
  have hPspan : ∀ (A : Set (Fin r)) (N : Submodule (AF F ⊗[F] E) (Fin n' → AF F ⊗[F] E)),
      (∀ i ∈ A, adMat F P *ᵥ (adMat F X)ᵀ i ∈ N) → ∀ y ∈ colSpan F X A, adMat F P *ᵥ y ∈ N := fun A N h y hy => by
    have h1 : colSpan F X A ≤ N.comap (adMat F P).mulVecLin :=
      Submodule.span_le.2 (by rintro _ ⟨i, hi, rfl⟩; exact h i hi)
    exact h1 hy
  have ha : ∀ i : Fin r', i ≤ k → M *ᵥ (adMat F X')ᵀ i = 0 := fun i hi => by
    have h1 := (Subgroup.mem_iInf.1 hgm.1 (e i)).2 ((adMat F X)ᵀ (e i)) (Submodule.subset_span ⟨e i, rfl, rfl⟩)
    rw [hXe, hGv] at h1
    have h2 := hPspan _ ⊥ (fun l hl => by
      obtain ⟨k', hk', hlk, hkj⟩ := hl
      rcases Finset.mem_insert.1 hk' with rfl | h
      · exact absurd hkj (not_lt.2 (hmono.monotone hi))
      · exact (Submodule.mem_bot _).2 (hPX l ⟨k', h, hlk⟩)) _ h1
    rw [hPIv] at h2
    exact (Submodule.mem_bot _).1 h2
  have hfix : M * adMat F (initCols X' k) = 0 := Matrix.ext_col fun i =>
    ha (i.castLE k.2) (Nat.le_of_lt_succ i.2)
  have c1 : ∀ {a c : ℕ} (Z : Matrix (Fin a) (Fin c) E), Formalism.UG.cT (sigR (AF F) σ) (adMat F Z) = adMat F (Formalism.UG.cT (σ : E →+* E) Z) :=
    fun Z => rfl
  have fix : (matHom _ σ J' b).1 * adMat F (initCols X' k) = adMat F (initCols X' k) := by
    rw [hM, Matrix.sub_mul, Matrix.one_mul, sub_eq_zero] at hfix
    exact hfix
  rw [unip_singleton hW' k]
  apply Subgroup.subset_closure
  refine ⟨hM ▸ hfix, ?_, fun x hx => ?_⟩
  · have hu : Formalism.UG.cT (sigR (AF F) σ) (matHom _ σ J' b).1 * adMat F J' * (matHom _ σ J' b).1 = adMat F J' := b.2
    rw [Matrix.mul_sub, Matrix.mul_one, sub_eq_zero, adMat, Matrix.map_mul]
    change adMat F _ * adMat F J' * _ = adMat F _ * adMat F J'
    conv_lhs => rw [← c1, ← fix, Formalism.UG.cT_mul, Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc _ (adMat F J'), hu, c1]
  · have h5 : Formalism.UG.cT (σ : E →+* E) (X.submatrix id e) * J * I = Formalism.UG.cT (σ : E →+* E) X' * J' := by
      rw [← hIX, Formalism.UG.cT_mul, Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc _ J, hg, Matrix.mul_assoc, hPI,
        Matrix.mul_one]
    have hle : ∀ l, l ∉ upTo T → (∃ k' ∈ insert (e k) T, l ≤ k') → ∃ i, i ≤ k ∧ e i = l := fun l hl ⟨k', hk', hlk⟩ => by
      obtain ⟨i, rfl⟩ := (hrange l).1 hl
      rcases Finset.mem_insert.1 hk' with rfl | h
      · exact ⟨i, hmono.le_iff_le.1 hlk, rfl⟩
      · exact absurd ⟨k', h, hlk⟩ hl
    have hz : ∀ l, (∃ k' ∈ insert (e k) T, l ≤ k') → ((Formalism.UG.cT (σ : E →+* E) X * J) *ᵥ (I *ᵥ x)) l = 0 := fun l hl => by
      by_cases h : l ∈ upTo T
      · exact hperp x l h
      · obtain ⟨i, hi, rfl⟩ := hle l h hl
        rw [mulVec_mulVec]
        have h6 : ((Formalism.UG.cT (σ : E →+* E) X * J * I) *ᵥ x) (e i) = ((Formalism.UG.cT (σ : E →+* E) (X.submatrix id e) * J * I) *ᵥ x) i := rfl
        rw [h6, h5]
        exact congrFun hx ⟨i.val, Nat.lt_succ_of_le hi⟩
    have hp : adV (F := F) (I *ᵥ x) ∈ colPerp σ J X {i | ∃ k' ∈ insert (e k) T, i ≤ k'} := by
      simp only [colPerp, Submodule.mem_iInf, LinearMap.mem_ker]
      intro l hl
      change (adMat F (Formalism.UG.cT (σ : E →+* E) X * J) *ᵥ adV (F := F) (I *ᵥ x)) l = 0
      rw [adMat_mulVec]
      change inclR (F := F) (AF F) _ = 0
      rw [hz l hl]
      exact map_zero _
    have h3 := hgm.2.2 _ hp
    rw [← adMat_mulVec, hGv] at h3
    have h4 := hPspan _ (colSpan F X' {i | i ≤ k}) (fun l hl => by
      by_cases h : l ∈ upTo T
      · rw [hPX l h]
        exact zero_mem _
      · obtain ⟨i, hi, rfl⟩ := hle l h hl
        rw [hXe, hPIv]
        exact Submodule.subset_span ⟨i, hi, rfl⟩) _ h3
    rw [hPIv] at h4
    obtain ⟨a, ha'⟩ := mem_colSpan_iff.1 h4
    exact ⟨a, by rw [← hM]; exact ha'.symm⟩

end Core

theorem mem_unip_of_image : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' → GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ k : Fin m', ∀ b : GA D V', s b ∈ unip D.sp.cm.sig V.gram X (insert (e k) T) → b ∈ unip D.sp.cm.sig V'.gram X' {k} := by
  intro D V m X Y hW T V' ι hι hR m' e X' Y' hS hW' s hs k b hb
  obtain ⟨hmono, hrange, hIX, -⟩ := hS
  refine core D.sp.cm.sig hmono hrange hIX (prM_mul_frameMat hι) cT_frameMat_mul_gram (fun l hl => ?_) (fun x l hl => ?_)
    hW' k (s b) b (mat_eq hι hs b) hb
  · exact prM_mulVec_eq_zero fun v' => ((hR (ι v')).1 ⟨v', rfl⟩ l hl).1
  · have hv : ι (V'.frame.equivFun.symm x) = V.frame.equivFun.symm (frameMat V V' ι *ᵥ x) := by
      apply V.frame.equivFun.injective
      rw [LinearEquiv.apply_symm_apply]
      have h := LinearMap.toMatrix_mulVec_repr V'.frame V.frame ι (V'.frame.equivFun.symm x)
      have h' : V'.frame.repr (V'.frame.equivFun.symm x) = x := funext fun i => repr_symm V' x i
      rw [h'] at h
      exact h.symm
    have h := ((hR (ι (V'.frame.equivFun.symm x))).1 ⟨_, rfl⟩ l hl).1
    rw [hv, hT_frame] at h
    simp only [Matrix.mulVec, dotProduct, Matrix.mul_apply, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Eq.trans (Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_) h
    rfl

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Down
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPart =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPartStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPartStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.restricted_constant_term_compatible : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' → GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ k : Fin m', ∀ b : GA D V', s b ∈ unip D.sp.cm.sig V.gram X (insert (e k) T) → b ∈ unip D.sp.cm.sig V'.gram X' {k} := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.Down.mem_unip_of_image
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPartStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvariance =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvariance", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.LeviU

open Formalism.UG (cT)

section Abstract

variable {R : Type} [CommRing R] {a b : ℕ}

theorem eq_zero_of_mem_span_cols {L : Matrix (Fin b) (Fin a) R} {C : Matrix (Fin a) (Fin b) R} (hLC : L * C = 1)
    {I : Set (Fin b)} {w : Fin a → R} (hw : w ∈ Submodule.span R ((fun i => Cᵀ i) '' I))
    (h0 : ∀ i ∈ I, (L *ᵥ w) i = 0) : w = 0 := by
  classical
  have key : ∀ v ∈ Submodule.span R ((fun i => Cᵀ i) '' I), ∃ c : Fin b → R, (∀ i, i ∉ I → c i = 0) ∧ v = C *ᵥ c := by
    intro v hv
    induction hv using Submodule.span_induction with
    | mem v h =>
      obtain ⟨i, hi, rfl⟩ := h
      refine ⟨Pi.single i 1, fun i' hi' => Pi.single_eq_of_ne (by rintro rfl; exact hi' hi) _, ?_⟩
      rw [mulVec_single_one]
      rfl
    | zero => exact ⟨0, fun _ _ => rfl, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨c, hc, rfl⟩ := hx
      obtain ⟨d, hd, rfl⟩ := hy
      exact ⟨c + d, fun i hi => by simp [hc i hi, hd i hi], by rw [mulVec_add]⟩
    | smul t x _ hx =>
      obtain ⟨c, hc, rfl⟩ := hx
      exact ⟨t • c, fun i hi => by simp [hc i hi], by rw [mulVec_smul]⟩
  obtain ⟨c, hc, rfl⟩ := key w hw
  have e : L *ᵥ (C *ᵥ c) = c := by rw [mulVec_mulVec, hLC, one_mulVec]
  rw [e] at h0
  have : c = 0 := funext fun i => by
    by_cases hi : i ∈ I
    · exact h0 i hi
    · exact hc i hi
  rw [this, mulVec_zero]

theorem mul_eq_of_conj (s : R →+* R) {G H A : Matrix (Fin a) (Fin a) R} {C : Matrix (Fin a) (Fin b) R}
    {B : Matrix (Fin b) (Fin b) R} (hHG : H * G = 1) (hU : cT s H * A * H = A) (hHC : H * C = C * B) :
    cT s C * A * G = cT s B * (cT s C * A) := by
  calc cT s C * A * G = cT s C * (cT s H * A * H) * G := by rw [hU]
    _ = cT s (H * C) * A * (H * G) := by rw [Formalism.UG.cT_mul]; simp only [Matrix.mul_assoc]
    _ = cT s B * (cT s C * A) := by
      rw [hHC, hHG, Formalism.UG.cT_mul, Matrix.mul_one]; simp only [Matrix.mul_assoc]

theorem mul_eq_self_of_pair (s : R →+* R) {G A : Matrix (Fin a) (Fin a) R} {C D : Matrix (Fin a) (Fin b) R}
    {B : Matrix (Fin b) (Fin b) R} (hU : cT s G * A * G = A) (hCD : cT s C * A * D = 1) (hGC : G * C = C)
    (hGD : G * D = D * B) : G * D = D := by
  have hB : B = 1 := by
    calc B = cT s C * A * D * B := by rw [hCD, Matrix.one_mul]
      _ = cT s (G * C) * A * (G * D) := by rw [hGC, hGD]; simp only [Matrix.mul_assoc]
      _ = cT s C * (cT s G * A * G) * D := by rw [Formalism.UG.cT_mul]; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hU, hCD]
  rw [hGD, hB, Matrix.mul_one]

end Abstract

section Frame

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {r : ℕ} {X Y : Matrix (Fin n) (Fin r) E}

theorem mat_inv_mul (g : GAd σ J) : (matHom _ σ J g⁻¹).1 * (matHom _ σ J g).1 = 1 := by
  rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one]

theorem adMat_mul_eq_one {a b : ℕ} {L : Matrix (Fin a) (Fin b) E} {C : Matrix (Fin b) (Fin a) E} (h : L * C = 1) :
    adMat F L * adMat F C = 1 := by
  rw [← Matrix.map_mul, h, Matrix.map_one _ (map_zero _) (map_one _)]

theorem cT_initCols_mul (C : Matrix (Fin n) (Fin r) E) (k : Fin r) :
    cT (sigR (AF F) σ) (adMat F (initCols C k)) * adMat F J =
      (adMat F (cT (σ : E →+* E) C * J)).submatrix (Fin.castLE k.2) id := by
  have c1 : cT (sigR (AF F) σ) (adMat F (initCols C k)) = adMat F (cT (σ : E →+* E) (initCols C k)) := rfl
  rw [c1, ← Matrix.map_mul]
  rfl

theorem exists_height_lower_bound (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {T : Finset (Fin r)} {κ : Fin r}
    (hκ : κ ∉ upTo T) {g : GAd σ J} (hl : g ∈ levi σ J X Y T) (hu : g ∈ unip σ J X (insert κ T)) {j : Fin r}
    (hj : j ∈ upTo T) : (matHom _ σ J g).1 *ᵥ (adMat F X)ᵀ j = (adMat F X)ᵀ j := by
  have hκj : j < κ := by
    obtain ⟨k, hk, hjk⟩ := hj
    by_contra hc
    exact hκ ⟨k, hk, (not_lt.1 hc).trans hjk⟩
  have h1 := (Subgroup.mem_iInf.1 hu.1 j).2 _ (Submodule.subset_span ⟨j, rfl, rfl⟩)
  have hLC : adMat F (cT (σ : E →+* E) Y * J) * adMat F X = 1 := adMat_mul_eq_one (yx h hJ hW)
  refine sub_eq_zero.1 (eq_zero_of_mem_span_cols hLC h1 ?_)
  rintro i ⟨k, hk, hik, hkj⟩
  have hkT : k ∈ T := by
    rcases Finset.mem_insert.1 hk with rfl | hk'
    · exact absurd (hkj.trans hκj) (lt_irrefl _)
    · exact hk'
  have hl' := inv_mem hl
  simp only [levi, Subgroup.mem_iInf] at hl'
  obtain ⟨B, -, e⟩ := (Subgroup.mem_inf.1 (hl' k hkT)).2
  have h2 := mul_eq_of_conj (A := adMat F J) (sigR (AF F) σ) (mat_inv_mul g) (g⁻¹).2 e
  rw [cT_initCols_mul] at h2
  set L := (adMat F (cT (σ : E →+* E) Y * J)).submatrix (Fin.castLE k.2) id with hL
  have h3 : L *ᵥ (adMat F X)ᵀ j = 0 := by
    funext p
    have hp : Fin.castLE k.2 p ≠ j := fun hc => by
      have h4 : (Fin.castLE k.2 p).val ≤ k.val := Nat.le_of_lt_succ p.2
      have h5 : k.val < j.val := hkj
      rw [hc] at h4
      omega
    exact (congrFun (congrFun hLC (Fin.castLE k.2 p)) j).trans (Matrix.one_apply_ne hp)
  have h4 : L *ᵥ ((matHom _ σ J g).1 *ᵥ (adMat F X)ᵀ j - (adMat F X)ᵀ j) = 0 := by
    rw [mulVec_sub, mulVec_mulVec, h2, ← mulVec_mulVec, h3, mulVec_zero, sub_zero]
  exact congrFun h4 ⟨i.val, Nat.lt_succ_of_le hik⟩

theorem fix_y (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {T : Finset (Fin r)} {κ : Fin r}
    (hκ : κ ∉ upTo T) {g : GAd σ J} (hl : g ∈ levi σ J X Y T) (hu : g ∈ unip σ J X (insert κ T)) {i : Fin r}
    (hi : i ∈ upTo T) : (matHom _ σ J g).1 *ᵥ (adMat F Y)ᵀ i = (adMat F Y)ᵀ i := by
  obtain ⟨k, hkT, hik⟩ := hi
  simp only [levi, Subgroup.mem_iInf] at hl
  obtain ⟨B, -, e⟩ := (Subgroup.mem_inf.1 (hl k hkT)).2
  have hGC : (matHom _ σ J g).1 * adMat F (initCols X k) = adMat F (initCols X k) :=
    Matrix.ext_col fun p => exists_height_lower_bound h hJ hW hκ (by simpa only [levi, Subgroup.mem_iInf] using hl) hu
      ⟨k, hkT, Nat.le_of_lt_succ p.2⟩
  have hCD : cT (sigR (AF F) σ) (adMat F (initCols X k)) * adMat F J * adMat F (initCols Y k) = 1 := by
    rw [cT_initCols_mul]
    have h1 : adMat F (cT (σ : E →+* E) X * J) * adMat F Y = 1 := adMat_mul_eq_one hW.xy
    exact Matrix.ext fun p q => (congrFun (congrFun h1 (Fin.castLE k.2 p)) (Fin.castLE k.2 q)).trans (by simp [Matrix.one_apply])
  have h2 := mul_eq_self_of_pair (A := adMat F J) (sigR (AF F) σ) g.2 hCD hGC e
  exact congrArg (fun M => Mᵀ ⟨i.val, Nat.lt_succ_of_le hik⟩) h2

theorem levi_inf_unip_le_uPart_general (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y)
    (T : Finset (Fin r)) {κ : Fin r} (hκ : κ ∉ upTo T) :
    levi σ J X Y T ⊓ unip σ J X (insert κ T) ≤ uPart σ J X Y T := by
  rintro g ⟨hl, hu⟩
  have key : colSpan F X (upTo T) ⊔ colSpan F Y (upTo T) ≤ LinearMap.eqLocus (matHom _ σ J g).1.mulVecLin LinearMap.id := by
    refine sup_le (Submodule.span_le.2 ?_) (Submodule.span_le.2 ?_)
    · rintro _ ⟨j, hj, rfl⟩
      exact exists_height_lower_bound h hJ hW hκ hl hu hj
    · rintro _ ⟨j, hj, rfl⟩
      exact fix_y h hJ hW hκ hl hu hj
  exact fun y hy => key hy

end Frame

theorem levi_inf_unip_le_uPart : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (κ : Fin m), κ ∉ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T → levi D.sp.cm.sig V.gram X Y T ⊓ unip D.sp.cm.sig V.gram X (insert κ T) ≤ uPart D.sp.cm.sig V.gram X Y T := by
  intro D V m X Y hW T κ hκ
  obtain ⟨h, hJ'⟩ := GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND _ _ D.sp.cm
  exact levi_inf_unip_le_uPart_general h (hJ' V) hW T hκ

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.LeviU
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvariance =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvarianceStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvarianceStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvariance\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.levi_inf_unipotent_le_hermitian_part : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (κ : Fin m), κ ∉ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T → levi D.sp.cm.sig V.gram X Y T ⊓ unip D.sp.cm.sig V.gram X (insert κ T) ≤ uPart D.sp.cm.sig V.gram X Y T := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.LeviU.levi_inf_unip_le_uPart
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvarianceStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatible", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice

section Core

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n n' : ℕ} (J : Matrix (Fin n) (Fin n) E) (J' : Matrix (Fin n') (Fin n') E) {m m' : ℕ}

theorem mulVec_col {R : Type} [CommRing R] {a b c : ℕ} (A : Matrix (Fin a) (Fin b) R) (B : Matrix (Fin b) (Fin c) R)
    (i : Fin c) : A *ᵥ Bᵀ i = (A * B)ᵀ i := by
  ext j
  rfl


omit [NumberField E] in
variable {σ J} in
theorem mem_iff_of_ptStab {A A' : Submodule (AF F ⊗[F] E) (Fin n → AF F ⊗[F] E)} {g : GAd σ J}
    (h : g ∈ ptStab σ J A) (hA : A' ≤ A) (y : Fin n → AF F ⊗[F] E) :
    y ∈ A' ↔ (matHom _ σ J g).1 *ᵥ y ∈ A' := by
  refine ⟨fun hy => by rwa [h y (hA hy)], fun hy => ?_⟩
  have h1 := (inv_mem h) _ (hA hy)
  rw [mulVec_mulVec, ← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one, one_mulVec] at h1
  rwa [h1]


omit [NumberField E] in
variable {σ J J'} in
theorem mem_unip_of_mat {T : Finset (Fin m)} {X : Matrix (Fin n) (Fin m) E} {X' : Matrix (Fin n') (Fin m') E}
    {I : Matrix (Fin n) (Fin n') E} {P : Matrix (Fin n') (Fin n) E} {e : Fin m' → Fin m}
    (he : StrictMono e) (hr : ∀ i, i ∉ upTo T ↔ i ∈ Set.range e)
    (hIX : I * X' = X.submatrix id e) (hPX : P * X.submatrix id e = X')
    (hPT : ∀ l ∈ upTo T, ∀ i, (P * X) i l = 0)
    (hG : Formalism.UG.cT (σ : E →+* E) I * J = J' * P)
    {g : GAd σ J} {b : GAd σ J'}
    (hg : (matHom _ σ J g).1 = 1 + adMat F I * ((matHom _ σ J' b).1 - 1) * adMat F P)
    {k : Fin m'} (hb : b ∈ unip σ J' X' {k}) : g ∈ unip σ J X (insert (e k) T) := by
  classical
  have c0 : ∀ {a c d : ℕ} (U : Matrix (Fin a) (Fin c) E) (W : Matrix (Fin c) (Fin d) E),
      adMat F U * adMat F W = adMat F (U * W) := fun U W => (Matrix.map_mul ..).symm
  have dM : ∀ y, (matHom _ σ J g).1 *ᵥ y - y =
      adMat F I *ᵥ ((matHom _ σ J' b).1 *ᵥ (adMat F P *ᵥ y) - adMat F P *ᵥ y) := fun y => by
    rw [hg, add_mulVec, one_mulVec, add_sub_cancel_left, ← mulVec_mulVec, ← mulVec_mulVec, sub_mulVec, one_mulVec]
  have pe : ∀ i, adMat F P *ᵥ (adMat F X)ᵀ (e i) = (adMat F X')ᵀ i := fun i => by
    rw [mulVec_col, c0]
    conv_rhs => rw [← hPX]
    rfl
  have ie : ∀ i, adMat F I *ᵥ (adMat F X')ᵀ i = (adMat F X)ᵀ (e i) := fun i => by
    rw [mulVec_col, c0, hIX]
    rfl
  have hz : ∀ l ∈ upTo T, adMat F P *ᵥ (adMat F X)ᵀ l = 0 := fun l hl => by
    rw [mulVec_col, c0]
    ext i
    change inclR (F := F) (AF F) ((P * X) i l) = 0
    rw [hPT l hl i, map_zero]
  have ip : ∀ (S : Set (Fin m')) y, y ∈ colSpan F X' S → adMat F I *ᵥ y ∈ colSpan F X (e '' S) := fun S y hy => by
    refine (Submodule.span_le (p := (colSpan F X (e '' S)).comap (adMat F I).mulVecLin)).2 ?_ hy
    rintro _ ⟨i, hi, rfl⟩
    change adMat F I *ᵥ _ ∈ colSpan F X (e '' S)
    rw [ie]
    exact Submodule.subset_span ⟨e i, ⟨i, hi, rfl⟩, rfl⟩
  have e0 : {i | ∃ k' ∈ ({k} : Finset (Fin m')), i ≤ k'} = {i | i ≤ k} := by simp
  have fixB : ∀ i ≤ k, (matHom _ σ J' b).1 *ᵥ (adMat F X')ᵀ i = (adMat F X')ᵀ i := fun i hi => by
    have h := (Subgroup.mem_iInf.1 hb.1 i).2 _ (Submodule.subset_span ⟨i, rfl, rfl⟩)
    have e3 : {l | ∃ k' ∈ ({k} : Finset (Fin m')), l ≤ k' ∧ k' < i} = ∅ := by
      ext l
      simpa using fun _ => hi
    rw [e3, colSpan, Set.image_empty, Submodule.span_empty, Submodule.mem_bot, sub_eq_zero] at h
    exact h
  have spanB : ∀ j, k < j → (matHom _ σ J' b).1 *ᵥ (adMat F X')ᵀ j - (adMat F X')ᵀ j ∈ colSpan F X' {i | i ≤ k} :=
    fun j hj => by
      have h := (Subgroup.mem_iInf.1 hb.1 j).2 _ (Submodule.subset_span ⟨j, rfl, rfl⟩)
      have e2 : {l | ∃ k' ∈ ({k} : Finset (Fin m')), l ≤ k' ∧ k' < j} = {i | i ≤ k} := by simp [hj]
      rwa [e2] at h
  have perpB : ∀ w ∈ colPerp σ J' X' {i | i ≤ k}, (matHom _ σ J' b).1 *ᵥ w - w ∈ colSpan F X' {i | i ≤ k} := fun w hw => by
    have h := hb.2.2 w (by rwa [e0])
    rwa [e0] at h
  let A : Set (Fin m) := {i | ∃ k' ∈ insert (e k) T, i ≤ k'}
  have hup : ∀ i, i ∈ upTo T → i ∈ A := fun i ⟨t, ht, hi⟩ => ⟨t, Finset.mem_insert_of_mem ht, hi⟩
  have hA : ∀ i ∈ A, i ∈ upTo T ∨ ∃ i', i' ≤ k ∧ e i' = i := fun i ⟨t, ht, hi⟩ => by
    rcases Finset.mem_insert.1 ht with rfl | ht
    · by_cases h : i ∈ upTo T
      · exact Or.inl h
      · obtain ⟨i', rfl⟩ := (hr i).1 h
        exact Or.inr ⟨i', he.le_iff_le.1 hi, rfl⟩
    · exact Or.inl ⟨t, ht, hi⟩
  have fix : ∀ i ∈ A, (matHom _ σ J g).1 *ᵥ (adMat F X)ᵀ i = (adMat F X)ᵀ i := fun i hi => by
    rw [← sub_eq_zero, dM]
    rcases hA i hi with h | ⟨i', h, rfl⟩
    · rw [hz i h, mulVec_zero, sub_zero, mulVec_zero]
    · rw [pe, fixB i' h, sub_self, mulVec_zero]
  have pt : g ∈ ptStab σ J (colSpan F X A) := fun y hy => by
    refine (Submodule.span_le (p := LinearMap.eqLocus (matHom _ σ J g).1.mulVecLin LinearMap.id)).2 ?_ hy
    rintro _ ⟨i, hi, rfl⟩
    exact fix i hi
  have pp : ∀ y ∈ colPerp σ J X A, adMat F P *ᵥ y ∈ colPerp σ J' X' {i | i ≤ k} := fun y hy => by
    simp only [colPerp, Submodule.mem_iInf, LinearMap.mem_ker] at hy ⊢
    intro i hi
    have h1 : Formalism.UG.cT (σ : E →+* E) X' * J' * P = (Formalism.UG.cT (σ : E →+* E) X * J).submatrix e id := by
      rw [Matrix.mul_assoc, ← hG, ← Matrix.mul_assoc, ← Formalism.UG.cT_mul, hIX]
      rfl
    have h2 := hy (e i) ⟨e k, Finset.mem_insert_self _ _, he.monotone hi⟩
    change (adMat F (Formalism.UG.cT (σ : E →+* E) X' * J') *ᵥ adMat F P *ᵥ y) i = 0
    rw [mulVec_mulVec, c0, h1]
    exact h2
  refine ⟨Subgroup.mem_iInf.2 fun j => ⟨mem_iff_of_ptStab pt ?_, fun y hy => ?_⟩,
    mem_iff_of_ptStab pt le_rfl, fun y hy => ?_⟩
  · exact Submodule.span_mono (Set.image_mono fun i ⟨k', h1, h2, _⟩ => ⟨k', h1, h2⟩)
  · suffices h : y ∈ (colSpan F X {i | ∃ k' ∈ insert (e k) T, i ≤ k' ∧ k' < j}).comap
        ((matHom _ σ J g).1 - 1).mulVecLin by
      rwa [Submodule.mem_comap, Matrix.mulVecLin_apply, sub_mulVec, one_mulVec] at h
    refine (Submodule.span_le (p := (colSpan F X {i | ∃ k' ∈ insert (e k) T, i ≤ k' ∧ k' < j}).comap
      ((matHom _ σ J g).1 - 1).mulVecLin)).2 ?_ hy
    rintro _ ⟨j, rfl, rfl⟩
    rw [SetLike.mem_coe, Submodule.mem_comap, Matrix.mulVecLin_apply, sub_mulVec, one_mulVec]
    by_cases hj : j ∈ A
    · rw [fix j hj, sub_self]
      exact zero_mem _
    · obtain ⟨j', rfl⟩ := (hr j).1 fun h => hj (hup j h)
      have hk : k < j' := lt_of_not_ge fun h => hj ⟨e k, Finset.mem_insert_self _ _, he.monotone h⟩
      rw [dM, pe]
      refine Submodule.span_mono (Set.image_mono ?_) (ip _ _ (spanB j' hk))
      rintro _ ⟨i, hi, rfl⟩
      exact ⟨e k, Finset.mem_insert_self _ _, he.monotone hi, he hk⟩
  · rw [dM]
    refine Submodule.span_mono (Set.image_mono ?_) (ip _ _ (perpB _ (pp y hy)))
    rintro _ ⟨i, hi, rfl⟩
    exact ⟨e k, Finset.mem_insert_self _ _, he.monotone hi⟩

end Core

theorem unip_embed : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' → GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ k : Fin m', ∀ b ∈ unip D.sp.cm.sig V'.gram X' {k}, s b ∈ unip D.sp.cm.sig V.gram X (insert (e k) T) := by
  intro D V m X Y hW T V' ι hι hR m' e X' Y' hS hW' s hs k b hb
  obtain ⟨he, hr, hX, -⟩ := hS
  refine mem_unip_of_mat he hr hX ?_ ?_ cT_frameMat_mul_gram (mat_eq hι hs b) hb
  · rw [← hX, ← Matrix.mul_assoc, prM_mul_frameMat hι, Matrix.one_mul]
  · intro l hl i
    have h := prM_mulVec_eq_zero (V' := V') (ι := ι) (x := fun j => X j l) fun v' => ((hR (ι v')).1 ⟨v', rfl⟩ l hl).1
    exact congrFun h i

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatibleStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatibleStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CTFrameMatMulGram\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.restricted_cusp_constant_term_vanish : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ (m' : ℕ) (e : Fin m' → Fin m) (X' Y' : Matrix (Fin V'.rank) (Fin m') D.host.E), GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.IsSliceFrame V V' ι X Y T e X' Y' → GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V'.gram X' Y' → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ k : Fin m', ∀ b ∈ unip D.sp.cm.sig V'.gram X' {k}, s b ∈ unip D.sp.cm.sig V.gram X (insert (e k) T) := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice.unip_embed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatibleStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanish =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanish", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConstTermEqZeroOfFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LinearIndependentOfIsWittFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.CuspOfFrame

theorem isIsoFrame_initCols {D : D7} {V : HSp D} {m : ℕ} {X Y : Matrix (Fin V.rank) (Fin m) D.host.E}
    (hW : IsWittFrame D.sp.cm.sig V.gram X Y) (k : Fin m) : IsIsoFrame V (GlobalTheory.StdPar.initCols X k) := by
  have hf := GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm
  have hli := GlobalTheory.CompanionTheory.UnipCocompact.linearIndependent_of_isWittFrame (GlobalTheory.SiegelSet.sigma_sigma hf.1) (hf.2 V) hW
  refine ⟨Nat.succ_pos _, ?_, ?_⟩
  · exact hli.comp (Fin.castLE k.2) (Fin.castLE_injective k.2)
  · have h := hW.xx
    refine Matrix.ext fun a b => ?_
    have := congrFun (congrFun h (Fin.castLE k.2 a)) (Fin.castLE k.2 b)
    simpa [GlobalTheory.StdPar.initCols, Matrix.mul_apply, Formalism.UG.cT] using this

theorem isCuspFun_of_isConstAlong : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → (∀ (r : ℕ) (C : Matrix (Fin V.rank) (Fin r) D.host.E), IsIsoFrame V C → r ≤ m) → ∀ f : GA D V → ℂ, (∀ γ ∈ GQ V, ∀ g, f (γ * g) = f g) → (∀ k : Fin m, IsConstAlong D.sp.cm.sig V.gram X {k} f 0) → IsCuspFun V f := by
  intro D V m X Y hW hmax f hl hc
  have hl' : GlobalTheory.AutomorphicL2Unitary.LeftInv (GQ V) f := hl
  refine (GlobalTheory.Cusp.isCuspFun_iff hl').2 fun W hW' => ?_
  obtain ⟨r, C, hC, rfl⟩ := (GlobalTheory.AutFunCompare.isIsotropic_iff V W).1 hW'
  have hrm := hmax r C hC
  obtain ⟨r', rfl⟩ : ∃ r', r = r' + 1 := ⟨r - 1, by have := hC.1; omega⟩
  let k : Fin m := ⟨r', by omega⟩
  have hC0 : IsIsoFrame V (GlobalTheory.StdPar.initCols X k) := isIsoFrame_initCols hW k
  have hcc : GlobalTheory.Cusp.Cocompact (GQ V) (GlobalTheory.Cusp.NA (GlobalTheory.Cusp.frameFlag hC0)) := GlobalTheory.Cusp.cocompact_single _
  haveI : LocallyCompactSpace (GlobalTheory.Cusp.NA (GlobalTheory.Cusp.frameFlag hC0)) := by
    rw [GlobalTheory.Cusp.NA_frameFlag hC0]
    exact (GlobalTheory.CuspDecay.Model.isClosed_NI V hC0).locallyCompactSpace
  have e : GlobalTheory.Cusp.NA (GlobalTheory.Cusp.frameFlag hC0) = GlobalTheory.SiegelSet.unipRad D.sp.cm.sig V.gram (GlobalTheory.StdPar.initCols X k) :=
    GlobalTheory.Cusp.NA_frameFlag hC0
  have h1 : GlobalTheory.UAut.IsConstTermOn D.sp.cm.sig V.gram (GlobalTheory.Cusp.NA (GlobalTheory.Cusp.frameFlag hC0)) f 0 := by
    rw [e]
    exact GlobalTheory.UAut.isConstTerm_iff.1 ((GlobalTheory.StdPar.isConstAlong_singleton hW k).1 (hc k))
  have h2 : GlobalTheory.UAut.IsConstTermOn D.sp.cm.sig V.gram (GlobalTheory.Cusp.NA (GlobalTheory.Cusp.frameFlag hC0)) f
      (GlobalTheory.Cusp.constTerm (GlobalTheory.Cusp.frameFlag hC0) f) := fun μ 𝓕 b1 b2 b3 g => by
    rw [GlobalTheory.Cusp.constTerm_eq b2 hl' g, MeasureTheory.Measure.real, b3]
    simp
  have h0 : GlobalTheory.Cusp.constTerm (GlobalTheory.Cusp.frameFlag hC0) f = 0 := h2.unique hcc h1
  exact GlobalTheory.CompanionTheory.ConstTermConj.constTerm_eq_zero_of_frame D V (r' + 1) _ C hC0 hC f hl h0

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.CuspOfFrame

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanish =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanishStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanishStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet


theorem _root_.GlobalTheory.T.cusp_function_of_constant_terms_vanish : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → (∀ (r : ℕ) (C : Matrix (Fin V.rank) (Fin r) D.host.E), IsIsoFrame V C → r ≤ m) → ∀ f : GA D V → ℂ, (∀ γ ∈ GQ V, ∀ g, f (γ * g) = f g) → (∀ k : Fin m, IsConstAlong D.sp.cm.sig V.gram X {k} f 0) → IsCuspFun V f := by
  first | exact @GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.CuspOfFrame.isCuspFun_of_isConstAlong
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanishStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCuspFunSlice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCuspFunSlice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTSubmatrixMul\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstAlongCocompactUniqueStages\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermAlongSubset\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviDecompositionGradedIsotropicFlag\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuotientMeasureProductGroups\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardParabolicUnipotentMono\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StdParEqFlag\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.MeasurePreservingConj\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsContinuousAdelicUnitaryEmbedding\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousConjBlockEmbeddingStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HermitianFormChangeOfBasisLieStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameRankLeWittIndexStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsotropicFrameWittBoundStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviInfUnipotentLeHermitianPartStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LeviNormalizesUnipotentVariant\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RationalUnipotentLeParabolic\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedAutomorphicInvarianceStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedConstantTermCompatibleStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RestrictedCuspConstantTermVanishStatement\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

noncomputable section
namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice

theorem unip_split : ∀ (D : D7) (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ S T : Finset (Fin m), S ⊆ T →
      ∀ p ∈ unip D.sp.cm.sig V.gram X T, ∃ u ∈ unip D.sp.cm.sig V.gram X S, ∃ l ∈ levi D.sp.cm.sig V.gram X Y S, p = u * l := by
  intro D V m X Y hW S T hST p hpT
  obtain ⟨hcm, hherm⟩ := GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm
  have hJ := hherm V
  by_cases hS : S = ∅
  · subst hS
    exact ⟨1, one_mem _, p, by simp, by simp⟩
  obtain ⟨a, ha, ha'⟩ : ∃ a ∈ S, ∀ k ∈ S, k ≤ a := ⟨S.max' (Finset.nonempty_iff_ne_empty.2 hS),
    S.max'_mem _, fun k hk => S.le_max' k hk⟩
  have hP := _root_.GlobalTheory.StdParFlag.unip_le_parFlag _ _ D.sp.cm.sig hcm _ V.gram hJ m X Y hW T S a hST ha ha' hpT
  have hdec := (GlobalTheory.LeviFlag.levi_decomposition _ _ D.sp.cm.sig hcm _ V.gram hJ (a.val + 1) (initCols X a) (initCols Y a)
    (fun i => (S.filter fun k => k.val < i.val).card)
    (by rw [initCols, GlobalTheory.TieStd.cT_submatrix_mul, hW.xx]; ext; simp)
    (by rw [initCols, GlobalTheory.TieStd.cT_submatrix_mul, hW.yy]; ext; simp)
    (by rw [initCols, initCols, GlobalTheory.TieStd.cT_submatrix_mul, hW.xy]
        exact Matrix.submatrix_one _ (Fin.castLE_injective a.2))).1
  obtain ⟨u, hu, l, hl, rfl, -⟩ := hdec p hP
  have hflag := GlobalTheory.TieStd.stdPar_eq_flag _ _ D.sp.cm.sig hcm _ V.gram hJ m X Y hW S (a.val + 1) a.2
    (fun i => ⟨fun h => ⟨a, ha, Nat.lt_succ_iff.1 h⟩, fun ⟨k, hk, hik⟩ =>
      Nat.lt_succ_iff.2 (le_trans hik (ha' k hk))⟩)
    (fun i => (S.filter fun k => k.val < i.val).card) (fun i => rfl)
  exact ⟨u, hflag.1 ▸ hu, l, hflag.2.1 ▸ hl, rfl⟩

theorem isCuspFun_slice : ∀ (D : D7) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (V : HSp D) (U : Subgroup (GA D V)) (ε : D.what₂.Tau → Fin V.rank → Bool) (fr : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ) (W : D.what₂.Tau → Type) [∀ τ, AddCommGroup (W τ)] [∀ τ, Module ℂ (W τ)] (ρ : ∀ τ, Representation ℂ (Formalism.REAL.KG (ε τ)) (W τ)) (c : D.what₂.Tau → ℕ → ℂ) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E), GlobalTheory.SiegelSet.IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (V' : HSp D) (ι : V'.V →ₗ[D.host.E] V.V), HSpace.IsIsomEmb V' V ι → (∀ v : V.V, v ∈ LinearMap.range ι ↔ ∀ i ∈ GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.upTo T, V.hT (V.frame.equivFun.symm fun j => X j i) v = 0 ∧ V.hT (V.frame.equivFun.symm fun j => Y j i) v = 0) → ∀ s : GA D V' →* GA D V, (∀ h, EmbRel V V' ι (s h) h) → ∀ ψ ∈ cuspOn θ V X Y T U ε fr ρ c, ∀ y ∈ levi D.sp.cm.sig V.gram X Y T, (∀ t ∈ uPart D.sp.cm.sig V.gram X Y T, t * y = y * t) → IsCuspFun V' fun h => ψ (s h * y) := by
  intro D θ V U ε fr W _ _ ρ c m X Y hW T V' ι hι hr s hs ψ hψ y hy hyc
  obtain ⟨hcm, hJall⟩ := GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm
  have hJ := hJall V
  have hJ' := hJall V'
  obtain ⟨s₀, hs₀c, hs₀, hs₀Q⟩ := GlobalTheory.Mem.UnitaryEmb.exists_embHom D V V' ι hι
  have es : ∀ h, s h = s₀ h := fun h => (hs₀ h (s h)).1 (hs h)
  have hsc : Continuous s := by
    have : (s : GA D V' → GA D V) = s₀ := funext es
    rw [this]; exact hs₀c
  have hsQ : ∀ γ ∈ GQ V', s γ ∈ GQ V := fun γ hγ => es γ ▸ hs₀Q γ hγ
  obtain ⟨hup, hsurj, -⟩ := GlobalTheory.T.orthogonal_subspace_unitary_embedding D V m X Y hW T V' ι hι hr s hs
  have hψl : ∀ γ ∈ leftSub V X Y T, ∀ g, ψ (γ * g) = ψ g := hψ.1.1.left
  have hψc : Continuous ψ := hψ.1.1.cont
  have hfl : ∀ γ ∈ GQ V', ∀ g, (fun h => ψ (s h * y)) (γ * g) = (fun h => ψ (s h * y)) g := fun γ hγ g => by
    have h1 : s γ ∈ leftSub V X Y T := Subgroup.mem_sup_right ⟨hsQ γ hγ,
      GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.uPart_le_levi D V m X Y T (hup γ)⟩
    change ψ (s (γ * g) * y) = ψ (s g * y)
    rw [map_mul, mul_assoc, hψl _ h1]
  obtain ⟨m', e, X', Y', hsl, hW'⟩ := GlobalTheory.T.orthogonal_subspace_witt_frame_extension D V m X Y hW T V' ι hι hr
  refine GlobalTheory.T.cusp_function_of_constant_terms_vanish D V' m' X' Y' hW' (GlobalTheory.T.isotropic_frame_rank_le_witt_index D V' m' X' Y' hW') _ hfl fun k => ?_
  have hκ : e k ∉ upTo T := (hsl.2.1 _).2 ⟨k, rfl⟩
  have hκT : e k ∉ T := fun h => hκ ⟨_, h, le_rfl⟩
  have hTT' : T ⊂ insert (e k) T := Finset.ssubset_insert hκT
  have hψ0 := hψ.2 _ hTT'
  haveI := locallyCompact_unip hcm hJ' hW' {k}
  haveI := locallyCompact_unip hcm hJ hW (insert (e k) T)
  have hle := GlobalTheory.StdPar.unip_mono_of_subset _ _ D.sp.cm.sig hcm _ V.gram hJ m X Y hW (insert (e k) T) T hTT'.1
  have hs1 := GlobalTheory.T.restricted_cusp_constant_term_vanish D V m X Y hW T V' ι hι hr m' e X' Y' hsl hW' s hs k
  have hdown := GlobalTheory.T.restricted_constant_term_compatible D V m X Y hW T V' ι hι hr m' e X' Y' hsl hW' s hs k
  have hdec : ∀ v ∈ unip D.sp.cm.sig V.gram X (insert (e k) T), ∃ u ∈ unip D.sp.cm.sig V'.gram X' {k},
      v * (s u)⁻¹ ∈ unip D.sp.cm.sig V.gram X T := fun v hv => by
    obtain ⟨u, hu, l, hl, rfl⟩ := unip_split D V m X Y hW T _ hTT'.1 v hv
    have hl' : l ∈ unip D.sp.cm.sig V.gram X (insert (e k) T) := by
      simpa using mul_mem (inv_mem (hle hu)) hv
    obtain ⟨b, rfl⟩ := hsurj l (GlobalTheory.T.levi_inf_unipotent_le_hermitian_part D V m X Y hW T _ hκ ⟨hl, hl'⟩)
    exact ⟨b, hdown b hl', by simpa using hu⟩
  have hnorm : ∀ p ∈ unip D.sp.cm.sig V.gram X (insert (e k) T), ∀ a ∈ unip D.sp.cm.sig V.gram X T,
      p * a * p⁻¹ ∈ unip D.sp.cm.sig V.gram X T := fun p hp a ha =>
    conj_mem_unip_of_subset hcm hJ hW hTT'.1 hp ha
  obtain ⟨π, hπc, hπ, hπQ⟩ := GlobalTheory.T.restricted_automorphic_invariance D V m X Y hW T V' ι hι hr s hs _ _ hnorm hdec
  let s₁ : unip D.sp.cm.sig V'.gram X' {k} →* unip D.sp.cm.sig V.gram X (insert (e k) T) :=
    (s.comp (unip D.sp.cm.sig V'.gram X' {k}).subtype).codRestrict _ fun u => hs1 _ u.2
  have hs₁c : Continuous s₁ := (hsc.comp continuous_subtype_val).subtype_mk _
  have hπs : ∀ u, π (s₁ u) = u := fun u => (hπ _ _).2 (by
    change s u * (s u)⁻¹ ∈ _
    simp [one_mem])
  have hker : ∀ v, π v = 1 ↔ (v : GA D V) ∈ unip D.sp.cm.sig V.gram X T := fun v => by
    rw [hπ v 1]
    simp
  intro μ 𝓕 hμ h𝓕 h1 g
  have cN : GlobalTheory.Cusp.Cocompact (GQ V) (unip D.sp.cm.sig V.gram X (insert (e k) T)) := cocompact_unip_std hcm hJ hW _
  have key := GlobalTheory.Cusp.constTermOn_eq_integral_semidirect (GA D V) (GA D V') (GQ V) _ _ (GQ V') _ hle cN
    (cocompact_unip_std hcm hJ hW T) (cocompact_unip_std hcm hJ' hW' {k}) s₁ π hs₁c hπc hπs hker
    (fun u hu => hsQ _ hu) (fun v hv => hπQ v hv) ψ hψc
    (fun a ha y => hψl a (Subgroup.mem_sup_left ha) y)
    (fun γ hγ hγ' y => hψl γ (ratPts_unip_le_leftSub D V m X Y hW T _ hTT'.1 ⟨hγ, hγ'⟩) y) μ 𝓕 hμ h𝓕 h1 (s g * y)
  obtain ⟨μ₀, 𝓕₀, a1, a2, a3⟩ := exists_mass_one cN
  have hz := hψ0 μ₀ 𝓕₀ a1 a2 a3 (s g * y)
  have hct : GlobalTheory.Cusp.constTermOn (GQ V) (unip D.sp.cm.sig V.gram X (insert (e k) T)) ψ (s g * y) = 0 := by
    haveI := a1
    have e1 := GlobalTheory.Cusp.Stages.constTermOn_eq' (Γ := GQ V) (φ := ψ) (x := s g * y) a2 (fun γ hγ n => by
      simp only [Subgroup.coe_mul, mul_assoc]
      exact hψl _ (ratPts_unip_le_leftSub D V m X Y hW T _ hTT'.1 ⟨hγ, (γ : unip _ _ _ _).2⟩) _)
    rw [e1, ← hz]
    simp
  rw [hct] at key
  refine key.trans (MeasureTheory.integral_congr_ae (.of_forall fun u => ?_))
  change ψ (s u * (s g * y)) = ψ (s (u * g) * y)
  rw [map_mul, mul_assoc]

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.UCore.Slice
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCuspFunSlice =====
