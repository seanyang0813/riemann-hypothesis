module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass
public import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfAutomorphicEmbedding
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed
public import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ContinuousSetIntegralConstTermOn
public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemLpLiftL2DiscreteQuotientOnCompact
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SetIntegralNormRmulLe
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralMulEqZeroOfCosetIntegralEqZero
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.UniformSpace.Uniformizable
import Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv
import Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Mathlib.Topology.Compactness.Paracompact
import Development.AbelianVarietyTheory.Definitions.Foundations.WittIndexEqZeroIff
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMapInfFinEquivEqProd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IntegrableDescendOrbitSum
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCompOfIsTraceClass
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTrace, Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTraceStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrable, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrableStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuous, Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuousStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadica, Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadicaStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitary, Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitarStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTrace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTrace", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfAutomorphicEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

noncomputable section

namespace GlobalTheory.CuspTraceSum

open GlobalTheory.OpTrace GlobalTheory.DiscreteSum ContinuousLinearMap
open scoped InnerProductSpace

theorem hasSum_trace_restrict {K : Type} [NormedAddCommGroup K] [InnerProductSpace ℂ K] [CompleteSpace K] {ι : Type}
    {W : ι → Submodule ℂ K} [hW : ∀ i, CompleteSpace (W i)]
    (hs : IsHilbertSum ℂ (fun i => W i) fun i => (W i).subtypeₗᵢ) {T : K →L[ℂ] K} (hT : IsTraceClass T)
    (hTW : ∀ i, ∀ x ∈ W i, T x ∈ W i) :
    (∀ i, IsTraceClass (T.restrict (hTW i))) ∧ Summable (fun i => ‖trace (T.restrict (hTW i))‖) ∧
      HasSum (fun i => trace (T.restrict (hTW i))) (trace T) := by
  let b : ∀ i, HilbertBasis (stdIndex (W i)) ℂ (W i) := fun i => stdBasis (H := W i)
  let v : (Σ i, stdIndex (W i)) → K := fun a => (W a.1).subtypeₗᵢ (b a.1 a.2)
  have ho : Orthonormal ℂ v := hs.OrthogonalFamily.orthonormal_sigma_orthonormal fun i => (b i).orthonormal
  have hsp : (Submodule.span ℂ (Set.range v))ᗮ = ⊥ := by
    rw [Submodule.eq_bot_iff]
    intro x hx
    refine eq_zero_of_isHilbertSum hs fun i y hy => ?_
    have h1 := ((b i).hasSum_repr ⟨y, hy⟩).mapL ((innerSL ℂ x).comp (W i).subtypeL)
    have h2 : ∀ j, ((innerSL ℂ x).comp (W i).subtypeL) ((b i).repr ⟨y, hy⟩ j • b i j) = 0 := fun j => by
      have h3 : ⟪v ⟨i, j⟩, x⟫_ℂ = 0 :=
        (Submodule.mem_orthogonal _ _).1 hx _ (Submodule.subset_span ⟨⟨i, j⟩, rfl⟩)
      have h4 : ⟪x, (b i j : K)⟫_ℂ = 0 := inner_eq_zero_symm.1 h3
      simp [h4]
    have h5 : ⟪x, y⟫_ℂ = 0 := by
      have := h1.unique (hasSum_zero.congr_fun fun j => (h2 j))
      simpa using this
    exact inner_eq_zero_symm.1 h5
  let e : HilbertBasis (Σ i, stdIndex (W i)) ℂ K := HilbertBasis.mkOfOrthogonalEqBot ho hsp
  have he : ∀ a, e a = v a := fun a => by simp [e]
  have hR : ∀ i, (T.restrict (hTW i)) = (W i).orthogonalProjection ∘L T ∘L (W i).subtypeL := fun i => by
    ext x
    simp [Submodule.orthogonalProjection_mem_subspace_eq_self (K := W i) ⟨_, hTW i x x.2⟩]
  have htc : ∀ i, IsTraceClass (T.restrict (hTW i)) := fun i => by
    rw [hR i]; exact hT.comp_comp _ _
  have hterm : ∀ a : Σ i, stdIndex (W i), ⟪e a, T (e a)⟫_ℂ = ⟪b a.1 a.2, T.restrict (hTW a.1) (b a.1 a.2)⟫_ℂ :=
    fun a => by rw [he]; rfl
  have hsum := hT.hasSum_trace e
  have hnorm := hT.summable_norm e
  simp only [hterm] at hsum hnorm
  refine ⟨htc, ?_, hsum.sigma fun i => (htc i).hasSum_trace (b i)⟩
  refine Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun i => ?_) hnorm.sigma
  rw [← ((htc i).hasSum_trace (b i)).tsum_eq]
  exact norm_tsum_le_tsum_norm ((htc i).summable_norm (b i))

end GlobalTheory.CuspTraceSum

namespace GlobalTheory.CuspTraceSum

open GlobalTheory.OpTrace GlobalTheory.DiscreteSum GlobalTheory.AutMult GlobalTheory.AutomorphicL2Unitary MeasureTheory

theorem hasSum_multIn_repTrace {G K : Type} [Group G] [TopologicalSpace G] [MeasurableSpace G]
    [OpensMeasurableSpace G] [NormedAddCommGroup K] [InnerProductSpace ℂ K] [CompleteSpace K]
    {ρ : G →* (K →L[ℂ] K)} (hρ : IsUnitaryRep ρ) (hD : IsDiscreteSum ρ) (μ : Measure G)
    [IsFiniteMeasureOnCompacts μ] {f : G → ℂ} (hf : Continuous f) (hfs : HasCompactSupport f)
    (hT : IsTraceClass (repOp ρ μ f)) :
    (∀ c : UDual G, multIn c.rep.π ρ ⊤ ≠ 0 → IsTraceClass (repOp c.rep.π μ f)) ∧
      (Summable fun c : UDual G => ‖((multIn c.rep.π ρ ⊤).toNat : ℂ) * repTrace c.rep.π μ f‖) ∧
      HasSum (fun c : UDual G => ((multIn c.rep.π ρ ⊤).toNat : ℂ) * repTrace c.rep.π μ f) (trace (repOp ρ μ f)) := by
  obtain ⟨⟨ι, W, hWi, hs⟩, hfin⟩ := hD
  haveI : ∀ i, CompleteSpace (W i) := fun i => (hWi i).1.completeSpace
  have hR : IsRepOp ρ μ f (repOp ρ μ f) := hρ.isRepOp hf hfs
  have hTW : ∀ i, ∀ x ∈ W i, repOp ρ μ f x ∈ W i := fun i x hx => (hWi i).1.map_mem_of_isRepOp hR hx
  obtain ⟨htc, hsn, hsum⟩ := hasSum_trace_restrict hs hT hTW
  have hrest : ∀ i, repOp (hWi i).1.rep μ f = (repOp ρ μ f).restrict (hTW i) := fun i =>
    ContinuousLinearMap.ext fun x => Subtype.ext (((hWi i).1.coe_repOp_rep hR).2 x)
  let cls : ι → UDual G := fun i => (⟨W i, (hWi i).1.rep, isIrrUnitary_rep hρ (hWi i)⟩ : IrrU G).cl
  have hcls : ∀ c i, cls i = c ↔ IsCopy c.rep.π ρ (W i) := fun c i => by
    conv_lhs => rw [← UDual.cl_rep c]
    rw [IrrU.cl_eq_iff]
    exact ⟨fun h => ⟨(hWi i).1, h.symm⟩, fun ⟨_, h⟩ => h.symm⟩
  have htr : ∀ c i, cls i = c →
      IsTraceClass (repOp c.rep.π μ f) ∧ repTrace c.rep.π μ f = trace ((repOp ρ μ f).restrict (hTW i)) := by
    intro c i hi
    obtain ⟨_, e, he⟩ := (hcls c i).1 hi
    have h2 : IsTraceClass (repOp (hWi i).1.rep μ f) := by rw [hrest]; exact htc i
    obtain ⟨h3, h4⟩ := ((hWi i).1.isUnitaryRep hρ).repTrace_eq_of_equiv c.rep.isIrr.unitary hf hfs
      e.symm.toContinuousLinearEquiv (fun g x => by
        apply e.injective
        rw [LinearIsometryEquiv.coe_toContinuousLinearEquiv, he, LinearIsometryEquiv.apply_symm_apply,
          LinearIsometryEquiv.apply_symm_apply]) h2
    refine ⟨h3, h4.trans ?_⟩
    rw [repTrace, hrest]
  have hmult : ∀ c : UDual G, (cls ⁻¹' {c}).Finite ∧ multIn c.rep.π ρ ⊤ = (cls ⁻¹' {c}).ncard := by
    intro c
    obtain ⟨h1, h2⟩ := multIn_eq_ncard hρ c.rep.isIrr (hfin c.rep) hWi hs
    have e : cls ⁻¹' {c} = {i | IsCopy c.rep.π ρ (W i)} := Set.ext fun i => hcls c i
    rw [e]
    exact ⟨h1, h2⟩
  have hfib : ∀ c : UDual G, ∑' b : ↑(cls ⁻¹' {c}), trace ((repOp ρ μ f).restrict (hTW b)) =
      ((multIn c.rep.π ρ ⊤).toNat : ℂ) * repTrace c.rep.π μ f := by
    intro c
    rw [tsum_congr fun b : ↑(cls ⁻¹' {c}) => (htr c b b.2).2.symm, tsum_const, nsmul_eq_mul, (hmult c).2,
      Cardinal.toNat_natCast, Nat.card_coe_set_eq]
  refine ⟨fun c hc => ?_, ?_, ?_⟩
  · rw [(hmult c).2] at hc
    obtain ⟨i, hi⟩ := Set.nonempty_of_ncard_ne_zero (by exact_mod_cast hc)
    exact (htr c i hi).1
  · refine Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun c => ?_)
      (hsn.hasSum.tsum_fiberwise cls).summable
    rw [← hfib]
    exact norm_tsum_le_tsum_norm (hsn.subtype _)
  · exact (hsum.tsum_fiberwise cls).congr_fun fun c => (hfib c).symm

end GlobalTheory.CuspTraceSum

namespace GlobalTheory.CuspTraceSum

open GlobalTheory.DiscreteSum

theorem hasSum_mCusp_repTrace : GlobalTheory.Published.CuspTraceClass → ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], ∀ f ∈ CcGA V, (∀ c : UDual (GA D V), mCusp V μ c.rep.π ≠ 0 → IsTraceClass (repOp c.rep.π μ f)) ∧ (Summable fun c : UDual (GA D V) => ‖((mCusp V μ c.rep.π).toNat : ℂ) * repTrace c.rep.π μ f‖) ∧ HasSum (fun c : UDual (GA D V) => ((mCusp V μ c.rep.π).toNat : ℂ) * repTrace c.rep.π μ f) (trace (RcuspOp V μ f)) := by
  intro hP D V μ _ _ f hf
  have hfc := continuous_of_mem_ccAd hf
  have h := hasSum_multIn_repTrace (isUnitaryRep_Rcusp V μ)
    (Published.cuspDiscreteDecomposition_of_traceClass hP D V μ) μ hfc.1 hfc.2 (hP D V μ f hf)
  have e : ∀ c : UDual (GA D V), mCusp V μ c.rep.π = multIn c.rep.π (Rcusp V μ) ⊤ := fun c =>
    (multIn_rep (isSubrep_L2cusp V μ)).symm
  simp only [e]
  exact h

end GlobalTheory.CuspTraceSum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTrace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTraceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTraceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfAutomorphicEmbedding\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTrace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

theorem _root_.GlobalTheory.T.hasSum_cuspidalMultiplicity_trace : GlobalTheory.Published.CuspTraceClass → ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], ∀ f ∈ CcGA V, (∀ c : UDual (GA D V), mCusp V μ c.rep.π ≠ 0 → IsTraceClass (repOp c.rep.π μ f)) ∧ (Summable fun c : UDual (GA D V) => ‖((mCusp V μ c.rep.π).toNat : ℂ) * repTrace c.rep.π μ f‖) ∧ HasSum (fun c : UDual (GA D V) => ((mCusp V μ c.rep.π).toNat : ℂ) * repTrace c.rep.π μ f) (trace (RcuspOp V μ f)) := by
  first | exact @GlobalTheory.CuspTraceSum.hasSum_mCusp_repTrace
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTraceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrable =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrable", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ContinuousSetIntegralConstTermOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

namespace GlobalTheory.ConstantTermL2

theorem main : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (W : Submodule D.host.E V.V) (hW : GlobalTheory.IndefiniteRowSideFullHecke.AdelicUnitaryGroups.IsIsotropic V W) (F : DividedPowerChartLift V μ), LocallyIntegrable (constTerm (.single hW) (lift (GQ V) F)) μ ∧ (∀ u ∈ NA (.single hW), (fun g => constTerm (.single hW) (lift (GQ V) F) (u * g)) =ᵐ[μ] constTerm (.single hW) (lift (GQ V) F)) ∧ ∀ f : GA D V → ℂ, Continuous f → HasCompactSupport f → ∀ x, constTerm (.single hW) (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) x = ∫ y, f (x⁻¹ * y) * constTerm (.single hW) (lift (GQ V) F) y ∂μ := by
  intro D V μ _ _ W hW F
  have hc := cocompact_single hW
  have hl := leftInv_lift (Γ := GQ V) F
  have hm : StronglyMeasurable (lift (GQ V) F) := (Lp.stronglyMeasurable F).comp_measurable measurable_mk
  have hi := GlobalTheory.CuspAE.locallyIntegrable_lift (Γ := GQ V) (μ := μ) F
  refine ⟨GlobalTheory.CuspAE.locallyIntegrable_constTermOn hc hl hm hi, fun u hu => .of_forall fun g =>
    hc.constTermOn_mul_left hl hu g, fun f hf hs x => ?_⟩
  have e1 : (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) = convR μ f (lift (GQ V) F) :=
    funext fun x => (convR_eq (μ := μ) f _ x).symm
  rw [e1, ← convR_eq (μ := μ)]
  exact GlobalTheory.CuspAE.constTermOn_convR hc hl hm hi hf hs x

end GlobalTheory.ConstantTermL2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrable =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrableStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrableStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

theorem _root_.GlobalTheory.T.constant_term_locally_integrable : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (W : Submodule D.host.E V.V) (hW : GlobalTheory.IndefiniteRowSideFullHecke.AdelicUnitaryGroups.IsIsotropic V W) (F : DividedPowerChartLift V μ), LocallyIntegrable (constTerm (.single hW) (lift (GQ V) F)) μ ∧ (∀ u ∈ NA (.single hW), (fun g => constTerm (.single hW) (lift (GQ V) F) (u * g)) =ᵐ[μ] constTerm (.single hW) (lift (GQ V) F)) ∧ ∀ f : GA D V → ℂ, Continuous f → HasCompactSupport f → ∀ x, constTerm (.single hW) (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) x = ∫ y, f (x⁻¹ * y) * constTerm (.single hW) (lift (GQ V) F) y ∂μ := by
  first | exact @GlobalTheory.ConstantTermL2.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrableStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuous =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuous", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemLpLiftL2DiscreteQuotientOnCompact\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SetIntegralNormRmulLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.WittIndexEqZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed
open scoped Pointwise

namespace GlobalTheory.RopRep

theorem rop_rep : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], ∀ f ∈ CcGA V, ∀ F : DividedPowerChartLift V μ, (∀ x, Integrable (fun y => f (x⁻¹ * y) * lift (GQ V) F y) μ) ∧ Continuous (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) ∧ LeftInv (GQ V) (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) ∧ lift (GQ V) (RopG V μ f F) =ᵐ[μ] fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ := by
  intro D V μ _ _ f hf F
  obtain ⟨hfc, hfs⟩ := GlobalTheory.Orb.continuous_of_mem_ccAd hf
  have hloc : LocallyIntegrable (lift (GQ V) F) μ :=
    (locallyIntegrable_iff).2 fun C hC => (GlobalTheory.AutomorphicL2Local.memLp_restrict_compact _ (GQ V) μ F C hC).2
  have hint : ∀ x, Integrable (fun y => f (x⁻¹ * y) * lift (GQ V) F y) μ := fun x =>
    hloc.integrable_smul_left_of_hasCompactSupport (hfc.comp (continuous_const_mul _))
      (hfs.comp_homeomorph (Homeomorph.mulLeft x⁻¹))
  have hconv : (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) = convR μ f (lift (GQ V) F) :=
    funext fun x => (convR_eq f _ x).symm
  refine ⟨hint, ?_, ?_, ?_⟩
  · refine continuous_iff_continuousAt.2 fun x₀ => ?_
    obtain ⟨K, hK, hKx⟩ := exists_compact_mem_nhds x₀
    obtain ⟨M, hM⟩ := hfc.bounded_above_of_compact_support hfs
    have hC : IsCompact (K * tsupport f) := hK.mul hfs
    have hCi : IntegrableOn (lift (GQ V) F) (K * tsupport f) μ :=
      (GlobalTheory.AutomorphicL2Local.memLp_restrict_compact _ (GQ V) μ F _ hC).2
    refine continuousAt_of_dominated
      (bound := (K * tsupport f).indicator fun y => M * ‖lift (GQ V) F y‖)
      (.of_forall fun x => (hint x).1) ?_ ?_ (.of_forall fun y => ?_)
    · filter_upwards [hKx] with x hx
      refine .of_forall fun y => ?_
      by_cases hy : f (x⁻¹ * y) = 0
      · rw [hy, zero_mul, norm_zero]
        exact Set.indicator_nonneg (fun _ _ => mul_nonneg ((norm_nonneg _).trans (hM 1)) (norm_nonneg _)) _
      · have hmem : y ∈ K * tsupport f :=
          ⟨x, hx, x⁻¹ * y, subset_tsupport f hy, by simp⟩
        rw [Set.indicator_of_mem hmem, norm_mul]
        exact mul_le_mul_of_nonneg_right (hM _) (norm_nonneg _)
    · exact (integrable_indicator_iff hC.isClosed.measurableSet).2 (hCi.norm.const_mul M)
    · exact ((hfc.comp (continuous_inv.mul continuous_const)).mul continuous_const).continuousAt
  · rw [hconv]
    exact (leftInv_lift _).convR f
  · rw [hconv]
    exact (GlobalTheory.AutomorphicL2Pointwise.lift_Rop_eq_convR _ (GQ V) μ f
      (hfc.integrable_of_hasCompactSupport hfs) F).2

end GlobalTheory.RopRep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuous =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuousStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuousStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.WittIndexEqZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

theorem _root_.GlobalTheory.T.rightRegularOperator_represented_continuous : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], ∀ f ∈ CcGA V, ∀ F : DividedPowerChartLift V μ, (∀ x, Integrable (fun y => f (x⁻¹ * y) * lift (GQ V) F y) μ) ∧ Continuous (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) ∧ LeftInv (GQ V) (fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ) ∧ lift (GQ V) (RopG V μ f F) =ᵐ[μ] fun x => ∫ y, f (x⁻¹ * y) * lift (GQ V) F y ∂μ := by
  first | exact @GlobalTheory.RopRep.rop_rep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuousStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadica =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadica", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConstantTermLocallyIntegrableStatement\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralMulEqZeroOfCosetIntegralEqZero\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RightRegularOperatorRepresentedContinuousStatement\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

namespace GlobalTheory.RopCusp

theorem ropG_mem_L2cusp : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant],
    ∀ f ∈ CcGA V, RadicalIntegralsVanish V f → ∀ F : DividedPowerChartLift V μ, RopG V μ f F ∈ L2cusp V μ := by
  intro D V μ _ _ f hf hR F
  obtain ⟨hfc, hfs⟩ := GlobalTheory.Orb.continuous_of_mem_ccAd hf
  obtain ⟨-, hc, hl, he⟩ := GlobalTheory.T.rightRegularOperator_represented_continuous D V μ f hf F
  refine mem_L2cusp_of_ae_eq ⟨hc, hl, (isCuspFun_iff hl).2 fun W hW => funext fun x => ?_⟩ he
  obtain ⟨hw1, hw2, hw3⟩ := GlobalTheory.T.constant_term_locally_integrable D V μ W hW F
  rw [hw3 f hfc hfs x, Pi.zero_apply]
  haveI := GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField D.host.F
  have hcl : IsClosed ((NA (.single hW) : Subgroup (GA D V)) : Set (GA D V)) :=
    IsoFlag.isClosed_unip (IsoFlag.single hW) D.sp.cm _
  exact _root_.GlobalTheory.CosetIntegralZero.integral_mul_eq_zero_of_coset_integral_eq_zero (GA D V) (NA (.single hW)) hcl (Measure.haar) μ (fun y => f (x⁻¹ * y)) _
    (hfc.comp (continuous_const_mul x⁻¹)) (hfs.comp_homeomorph (Homeomorph.mulLeft x⁻¹)) hw1 hw2
    fun g => by simpa only [mul_assoc] using hR _ (IsoFlag.proper_single hW) Measure.haar inferInstance x⁻¹ g

end GlobalTheory.RopCusp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadica =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadicaStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadicaStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadica\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

theorem _root_.GlobalTheory.T.unitaryAutomorphicConvolution_mem_cuspidal_of_radical_zero : ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], ∀ f ∈ CcGA V, RadicalIntegralsVanish V f → ∀ F : DividedPowerChartLift V μ, RopG V μ f F ∈ L2cusp V μ := by
  first | exact @GlobalTheory.RopCusp.ropG_mem_L2cusp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadicaStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitary", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMapInfFinEquivEqProd\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IntegrableDescendOrbitSum\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.SetIntegralNormRmulLe\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsCompOfIsTraceClass\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasSumCuspidalMultiplicityTraceStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryAutomorphicConvolutionMemCuspidalOfRadicaStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open scoped InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

namespace GlobalTheory.CuspidalOpAssembly

section Compress

variable {H K : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
  [NormedAddCommGroup K] [InnerProductSpace ℂ K] [CompleteSpace K]

theorem trace_comp_comp_of_comp_eq_id (S : K →L[ℂ] H) (P : H →L[ℂ] K) (hPS : ∀ y, P (S y) = y)
    {T : K →L[ℂ] K} (hT : IsTraceClass T) : trace (S ∘L T ∘L P) = trace T := by
  obtain ⟨n, B, C, hB, hC, rfl⟩ := hT
  have e : S ∘L (∑ i, B i ∘L C i) ∘L P = ∑ i, (S ∘L B i) ∘L (C i ∘L P) := by
    ext x; simp
  have t : ∀ i, trace ((S ∘L B i) ∘L (C i ∘L P)) = trace (B i ∘L C i) := fun i => by
    rw [trace_comp_comm ((hB i).comp_left S) ((hC i).comp_right P), trace_comp_comm (hB i) (hC i)]
    congr 1
    ext x; simp [hPS]
  have h1 : HasSum (fun j => ⟪stdBasis (H := H) j, (S ∘L (∑ i, B i ∘L C i) ∘L P) (stdBasis (H := H) j)⟫_ℂ)
      (∑ i, trace (B i ∘L C i)) := by
    rw [e]
    simpa only [ContinuousLinearMap.sum_apply, inner_sum, t] using
      hasSum_sum fun i (_ : i ∈ Finset.univ) =>
        hasSum_trace_comp (stdBasis (H := H)) ((hB i).comp_left S) ((hC i).comp_right P)
  have h2 : HasSum (fun j => ⟪stdBasis (H := K) j, (∑ i, B i ∘L C i) (stdBasis (H := K) j)⟫_ℂ) (∑ i, trace (B i ∘L C i)) := by
    simpa only [ContinuousLinearMap.sum_apply, inner_sum] using
      hasSum_sum fun i (_ : i ∈ Finset.univ) => hasSum_trace_comp (stdBasis (H := K)) (hB i) (hC i)
  exact h1.tsum_eq.trans h2.tsum_eq.symm

end Compress

theorem cuspidalOperators : GlobalTheory.Published.CuspTraceClass → ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V))
    [μ.IsHaarMeasure] [μ.IsMulRightInvariant], CuspidalOperators V μ := by
  intro hCT D V μ _ _ f hf _ h2
  have c := GlobalTheory.Orb.continuous_of_mem_ccAd hf
  have m2 : GlobalTheory.IndefiniteRowSideFullHecke.TraceKernelDecomposition.MapsIntoCusp V μ (starFn f) :=
    GlobalTheory.T.unitaryAutomorphicConvolution_mem_cuspidal_of_radical_zero D V μ (starFn f) (GlobalTheory.Orb.starFn_mem_ccAd hf) h2
  have hd := GlobalTheory.CuspSpectrum.traceIsDiagonal (μ := μ) hCT hf m2
  obtain ⟨t1, -, t3⟩ := GlobalTheory.T.hasSum_cuspidalMultiplicity_trace hCT D V μ f hf
  have etr : trace (RopG V μ f) = trace (RcuspOp V μ f) := by
    rw [GlobalTheory.TraceDiagonal.RopG_eq_comp c.1 c.2 m2]
    exact trace_comp_comp_of_comp_eq_id _ _
      (fun y => Submodule.orthogonalProjection_mem_subspace_eq_self y) (hCT D V μ f hf)
  exact ⟨hd.1, hd.2.2, t1, etr ▸ t3⟩

end GlobalTheory.CuspidalOpAssembly

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitarStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitarStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Cusp GlobalTheory.IndefiniteRowSideFullHecke.CuspidalNoRadicalFixed

theorem _root_.GlobalTheory.T.cuspidalOperators_vanishingRadicalIntegrals_unitaryGroup : GlobalTheory.Published.CuspTraceClass → ∀ (D : D7) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant], CuspidalOperators V μ := by
  first | exact @GlobalTheory.CuspidalOpAssembly.cuspidalOperators
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitarStatement =====
