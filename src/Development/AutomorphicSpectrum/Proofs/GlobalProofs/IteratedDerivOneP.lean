module

public import Formalism.LocalToGlobal.BesselHermitianTheta.IsAutFunDef
public import Development.AbelianVarietyTheory.Definitions.Foundations.OfInfProjInfMulOfFinProjFin
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdelicDataRowMeasureScaleTrivialTuple
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MeanValueIneqRightTranslateRealPointNearOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalSobolevInequalityAdelicUnitary
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRealCoord
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IoInjective
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.Analysis.Normed.Operator.Compact.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.Analysis.InnerProductSpace.Continuous
public import Mathlib.Analysis.Normed.Module.FiniteDimension
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.UnifModGrowthOfIsUnifModerate
public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset
public import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspDiscreteDecompositionOfDecay
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DifferentiableOneP
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivativeSkewAdjointCuspFormsStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LieAlgebraSpannedByCompactAndFrameStatement
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOperatorBoundedByPolynomialRoots
public import Development.WeilBound.CoreStatements.MeasureExistence.ExistsMeas
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces
import Development.AbelianVarietyTheory.Proofs.HeightProofs.RightDerivativeAlongLieSmoothAndLinear
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOneP
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicOpenNeighbourhoodProduct, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjective, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjectiveStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivative, Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivativeStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteCoefficientSpaceAnnihilatingPolynomial, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfCompactCoercive, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfEmbedding, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOfCommute, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IteratedDerivOneP

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicOpenNeighbourhoodProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicOpenNeighbourhoodProduct", "h": "module\n\npublic import Formalism.LocalToGlobal.BesselHermitianTheta.IsAutFunDef\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.OfInfProjInfMulOfFinProjFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.IndefR.Mult MeasureTheory NumberField Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.CuspNbhd

open GlobalTheory.AdelicU

theorem real_mul_level_mem_nhds : ∀ (D : D7) (V : HSp D) (U : Subgroup (GA D V)), IsOpen (U : Set (GA D V)) → ∀ N ∈ 𝓝 (1 : GA D V), {g : GA D V | ∃ r k : GA D V, r ∈ GinfC V ∧ r ∈ N ∧ k ∈ U ∧ k ∈ GfC V ∧ g = r * k} ∈ 𝓝 (1 : GA D V) := by
  intro D V U hU N hN
  have hr : Continuous fun g : GA D V =>
      ofInf D.sp.cm.sig V.gram (projInf D.sp.cm.sig V.gram g) :=
    (continuous_ofInf _ _).comp (continuous_projInf _ _)
  have hk : Continuous fun g : GA D V =>
      ofFin D.sp.cm.sig V.gram (projFin D.sp.cm.sig V.gram g) :=
    (continuous_ofFin _ _).comp (continuous_projFin _ _)
  have h1 : ∀ᶠ g : GA D V in 𝓝 1, ofInf D.sp.cm.sig V.gram (projInf D.sp.cm.sig V.gram g) ∈ N := by
    have := hr.continuousAt (x := (1 : GA D V))
    simp only [ContinuousAt, map_one] at this
    exact this hN
  have h2 : ∀ᶠ g : GA D V in 𝓝 1, ofFin D.sp.cm.sig V.gram (projFin D.sp.cm.sig V.gram g) ∈ U := by
    have := hk.continuousAt (x := (1 : GA D V))
    simp only [ContinuousAt, map_one] at this
    exact this (hU.mem_nhds U.one_mem)
  filter_upwards [h1, h2] with g hg1 hg2
  exact ⟨_, _, mem_infPts.2 (by simp), hg1, hg2, mem_finPts.2 (by simp),
    (ofInf_projInf_mul_ofFin_projFin D.sp.cm.sig V.gram g).symm⟩

end GlobalTheory.CompanionTheory.CuspNbhd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicOpenNeighbourhoodProduct =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdelicDataRowMeasureScaleTrivialTuple\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MeanValueIneqRightTranslateRealPointNearOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalSobolevInequalityAdelicUnitary\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRealCoord\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.HCCusp.RealLog

theorem exists_small_log : ∀ (D : D7) (θ : GlobalTheory.Mem.Th.InfF D), IsInfFam θ → ∀ (V : HSp D) (δ : ℝ), 0 < δ →
    ∃ N ∈ 𝓝 (1 : GA D V), ∀ r ∈ N, r ∈ GinfC V →
      ∃ X : GlobalTheory.SmoothForms.LieN V, ‖X‖ < δ ∧ GlobalTheory.SmoothForms.expInf θ V X = r := by
  intro D θ hθ V δ hδ
  have R : GlobalTheory.SmoothForms.RealPoints θ V := (GlobalTheory.T.adelicUnitary_realPoints_structure_realPlaces D).2 θ hθ V
  obtain ⟨δ₁, C, hδ₁, hC, hlog⟩ := GlobalTheory.CuspGeo.MeanValue.exists_log hθ R
  set ε : ℝ := min δ₁ (δ / (2 * (C + 1))) with hε
  have hε0 : 0 < ε := lt_min hδ₁ (by positivity)
  have hCε : C * ε < δ := by
    have h1 : ε ≤ δ / (2 * (C + 1)) := min_le_right _ _
    have h2 : C * ε ≤ C * (δ / (2 * (C + 1))) := mul_le_mul_of_nonneg_left h1 hC
    have h3 : C * (δ / (2 * (C + 1))) < δ := by
      rw [mul_div_assoc', div_lt_iff₀ (by positivity)]
      nlinarith
    exact lt_of_le_of_lt h2 h3
  have hcont : ∀ τ, Continuous fun g : GA D V => infMat D.sp.cm.sig V.gram (θ τ) g := by
    intro τ
    have hc := GlobalTheory.SobLoc.continuous_arch (θ := θ) hθ V τ
    simpa only [Formalism.IndefR.FWT.archM_eq] using hc
  have hone : ∀ τ, infMat D.sp.cm.sig V.gram (θ τ) (1 : GA D V) = 1 :=
    fun τ => R.2.2.2.2.1 1 (one_mem _) τ
  refine ⟨⋂ τ, ⋂ i, ⋂ j, {g : GA D V | ‖(infMat D.sp.cm.sig V.gram (θ τ) g - 1) i j‖ < ε}, ?_, ?_⟩
  · refine Filter.iInter_mem.2 fun τ => Filter.iInter_mem.2 fun i => Filter.iInter_mem.2 fun j => ?_
    refine IsOpen.mem_nhds ?_ ?_
    · exact isOpen_lt (((hcont τ).sub continuous_const).matrix_elem i j).norm continuous_const
    · simp only [Set.mem_ofPred_eq, hone, sub_self, Matrix.zero_apply, norm_zero]
      exact hε0
  · intro r hr hrinf
    simp only [Set.mem_iInter, Set.mem_ofPred_eq] at hr
    have hclose : GlobalTheory.CuspGeo.CloseR θ V r ε := ⟨hrinf, fun τ i j => (hr τ i j).le⟩
    obtain ⟨Z, hZ, hn⟩ := hlog r ε hε0.le (min_le_left _ _) hclose
    exact ⟨Z, lt_of_le_of_lt hn hCε, hZ⟩

end GlobalTheory.CompanionTheory.HCCusp.RealLog

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjectiveStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjectiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdelicDataRowMeasureScaleTrivialTuple\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
theorem _root_.GlobalTheory.T.archimedean_neighbourhood_exp_surjective : ∀ (D : D7) (θ : GlobalTheory.Mem.Th.InfF D), IsInfFam θ → ∀ (V : HSp D) (δ : ℝ), 0 < δ → ∃ N ∈ 𝓝 (1 : GA D V), ∀ r ∈ N, r ∈ GinfC V → ∃ X : GlobalTheory.SmoothForms.LieN V, ‖X‖ < δ ∧ GlobalTheory.SmoothForms.expInf θ V X = r :=
  GlobalTheory.CompanionTheory.HCCusp.RealLog.exists_small_log
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjectiveStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivative =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivative", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IoInjective\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MeanValueIneqRightTranslateRealPointNearOne\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.RightDerivativeAlongLieSmoothAndLinear\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.HCCusp.Transl

open GlobalTheory.AutomorphicL2Unitary

theorem enorm_sub_sq_le {c f : ℝ → ℂ} (hf : Continuous f) (hd : ∀ t, HasDerivAt c (f t) t) :
    ‖c 1 - c 0‖ₑ ^ (2 : ℝ) ≤ ∫⁻ t in Set.Ioc (0 : ℝ) 1, ‖f t‖ₑ ^ (2 : ℝ) := by
  have e : c 1 - c 0 = ∫ t in (0 : ℝ)..1, f t :=
    (intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) (hf.intervalIntegrable _ _)).symm
  have n1 : ‖c 1 - c 0‖ ≤ ∫ t in (0 : ℝ)..1, ‖f t‖ := by
    rw [e]
    exact intervalIntegral.norm_integral_le_integral_norm zero_le_one
  have hn : Continuous fun t => ‖f t‖ := hf.norm
  set A := ∫ t in (0 : ℝ)..1, ‖f t‖ with hA
  set B := ∫ t in (0 : ℝ)..1, ‖f t‖ ^ 2 with hB
  have hA0 : 0 ≤ A := intervalIntegral.integral_nonneg zero_le_one fun _ _ => norm_nonneg _
  have hAB : A ^ 2 ≤ B := by
    have h0 : 0 ≤ ∫ t in (0 : ℝ)..1, (‖f t‖ - A) ^ 2 :=
      intervalIntegral.integral_nonneg zero_le_one fun _ _ => sq_nonneg _
    have h1 : (∫ t in (0 : ℝ)..1, (‖f t‖ - A) ^ 2) = B - 2 * A * A + A ^ 2 := by
      have : ∀ t, (‖f t‖ - A) ^ 2 = ‖f t‖ ^ 2 - 2 * A * ‖f t‖ + A ^ 2 := fun t => by ring
      simp only [this]
      have i1 : IntervalIntegrable (fun t => ‖f t‖ ^ 2) volume 0 1 := (hn.pow 2).intervalIntegrable _ _
      have i2 : IntervalIntegrable (fun t => 2 * A * ‖f t‖) volume 0 1 :=
        (continuous_const.mul hn).intervalIntegrable _ _
      rw [intervalIntegral.integral_add (f := fun t => ‖f t‖ ^ 2 - 2 * A * ‖f t‖) (g := fun _ => A ^ 2) (i1.sub i2)
        (continuous_const.intervalIntegrable _ _),
        intervalIntegral.integral_sub i1 i2, intervalIntegral.integral_const_mul]
      simp [← hA, ← hB]
    nlinarith
  have hle : ‖c 1 - c 0‖ ^ 2 ≤ B := (pow_le_pow_left₀ (norm_nonneg _) n1 2).trans hAB
  have hBi : B = ∫ t in Set.Ioc (0 : ℝ) 1, ‖f t‖ ^ 2 := intervalIntegral.integral_of_le zero_le_one
  have hint : IntegrableOn (fun t => ‖f t‖ ^ 2) (Set.Ioc (0 : ℝ) 1) :=
    ((hn.pow 2).intervalIntegrable 0 1).1
  have hL : ENNReal.ofReal B = ∫⁻ t in Set.Ioc (0 : ℝ) 1, ‖f t‖ₑ ^ (2 : ℝ) := by
    rw [hBi, ofReal_integral_eq_lintegral_ofReal hint (.of_forall fun _ => sq_nonneg _)]
    refine lintegral_congr fun t => ?_
    rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm, ENNReal.rpow_ofNat]
  rw [← hL, ENNReal.rpow_ofNat, ← ofReal_norm, ← ENNReal.ofReal_pow (norm_nonneg _)]
  exact ENNReal.ofReal_le_ofReal hle

section Abstract

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G] {Γ : Subgroup G} [DiscreteTopology Γ] {μ : Measure G} [μ.IsMulLeftInvariant]
  {φ ψ : G → ℂ}

theorem ofReal_norm_sq (h : MemL2Quotient Γ μ φ) :
    ENNReal.ofReal (‖h.toL2‖ ^ 2) = ∫⁻ g in stdDom Γ, ‖φ g‖ₑ ^ (2 : ℝ) ∂μ := by
  have hE : eLpNorm (descend Γ φ) 2 (AutomorphicL2Unitary.quotMeasure Γ μ) ≠ ⊤ := h.2.ne
  have h1 : ‖h.toL2‖ = (eLpNorm (descend Γ φ) 2 (AutomorphicL2Unitary.quotMeasure Γ μ)).toReal := Lp.norm_toLp _ _
  have h2 := eLpNorm_nnreal_pow_eq_lintegral (f := descend Γ φ) (μ := AutomorphicL2Unitary.quotMeasure Γ μ) (p := 2) (by norm_num) h.2.aestronglyMeasurable
  have h3 := lintegral_quotMeasure (isFundamentalDomain_stdDom Γ μ) (fun q => ‖descend Γ φ q‖ₑ ^ (2 : ℝ))
  simp only [h.1.descend_mk] at h3
  rw [← h3, h1, ENNReal.ofReal_pow ENNReal.toReal_nonneg, ENNReal.ofReal_toReal hE]
  simpa using h2

theorem memL2_sub (h : MemL2Quotient Γ μ φ) (h' : MemL2Quotient Γ μ ψ) : MemL2Quotient Γ μ fun x => φ x - ψ x := by
  have hd := isFundamentalDomain_stdDom Γ μ
  exact (memL2_iff_fundamental_domain hd).2 ⟨fun γ hγ g => by simp only [h.1 γ hγ, h'.1 γ hγ], ((memL2_iff_fundamental_domain hd).1 h).2.sub ((memL2_iff_fundamental_domain hd).1 h').2⟩

theorem toL2_sub (h : MemL2Quotient Γ μ φ) (h' : MemL2Quotient Γ μ ψ) : (memL2_sub h h').toL2 = h.toL2 - h'.toL2 := by
  refine l2DiscreteQuotient_ext_iff_lift_ae_eq.2 ?_
  have e1 := (memL2_sub h h').lift_toL2_ae_eq
  have e2 : lift Γ (h.toL2 - h'.toL2) =ᵐ[μ] lift Γ h.toL2 - lift Γ h'.toL2 :=
    ae_quotMeasure_iff.1 (Lp.coeFn_sub h.toL2 h'.toL2)
  exact e1.trans ((h.lift_toL2_ae_eq.sub h'.lift_toL2_ae_eq).symm.trans e2.symm)

variable [μ.IsMulRightInvariant]

theorem norm_R_sub_le [SFinite μ] {a : ℝ → G} {u : G} (ha : Continuous a) (h0 : a 0 = 1) (h1 : a 1 = u) (hφ : MemL2Quotient Γ μ φ) (hψ : MemL2Quotient Γ μ ψ)
    (hψc : Continuous ψ) (hd : ∀ g t, HasDerivAt (fun s => φ (g * a s)) (ψ (g * a t)) t) :
    ‖R Γ μ u hφ.toL2 - hφ.toL2‖ ≤ ‖hψ.toL2‖ := by
  subst h1
  have hm := hφ.mul_right (a 1)
  have hs := memL2_sub hm hφ
  rw [right_translate_toL2, ← toL2_sub hm hφ]
  have key : ∫⁻ g in stdDom Γ, ‖φ (g * a 1) - φ g‖ₑ ^ (2 : ℝ) ∂μ ≤ ∫⁻ g in stdDom Γ, ‖ψ g‖ₑ ^ (2 : ℝ) ∂μ := by
    have hpt : ∀ g, ‖φ (g * a 1) - φ g‖ₑ ^ (2 : ℝ) ≤ ∫⁻ t in Set.Ioc (0 : ℝ) 1, ‖ψ (g * a t)‖ₑ ^ (2 : ℝ) := fun g => by
      have := enorm_sub_sq_le (c := fun s => φ (g * a s)) (f := fun t => ψ (g * a t)) (by fun_prop) (hd g)
      simpa [h0] using this
    have hmeas : Measurable fun p : G × ℝ => ‖ψ (p.1 * a p.2)‖ₑ ^ (2 : ℝ) :=
      (Continuous.measurable (by fun_prop : Continuous fun p : G × ℝ => ψ (p.1 * a p.2))).enorm.pow_const _
    calc _ ≤ ∫⁻ g in stdDom Γ, (∫⁻ t in Set.Ioc (0 : ℝ) 1, ‖ψ (g * a t)‖ₑ ^ (2 : ℝ)) ∂μ := lintegral_mono hpt
      _ = ∫⁻ t in Set.Ioc (0 : ℝ) 1, (∫⁻ g in stdDom Γ, ‖ψ (g * a t)‖ₑ ^ (2 : ℝ) ∂μ) :=
        lintegral_lintegral_swap hmeas.aemeasurable
      _ = ∫⁻ t in Set.Ioc (0 : ℝ) 1, (∫⁻ g in stdDom Γ, ‖ψ g‖ₑ ^ (2 : ℝ) ∂μ) := by
        refine lintegral_congr fun t => ?_
        rw [← ofReal_norm_sq (hψ.mul_right (a t)), ← ofReal_norm_sq hψ, ← right_translate_toL2, norm_R]
      _ = _ := by simp
  have h1 := (ofReal_norm_sq hs).le.trans (key.trans (ofReal_norm_sq hψ).ge)
  have h2 : ‖hs.toL2‖ ^ 2 ≤ ‖hψ.toL2‖ ^ 2 := (ENNReal.ofReal_le_ofReal_iff (by positivity)).1 h1
  exact (pow_le_pow_iff_left₀ (norm_nonneg _) (norm_nonneg _) two_ne_zero).1 h2

end Abstract

end GlobalTheory.CompanionTheory.HCCusp.Transl

namespace GlobalTheory.CompanionTheory.HCCusp.Transl

open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.Mem.AutSpace GlobalTheory.SmoothForms

variable {D : D7} {θ : GlobalTheory.Mem.Th.InfF D} {V : HSp D}

theorem coe_derInf (hθ : IsInfFam θ) (X : LieN V) (φ : Mc θ V) :
    (derInf hθ X φ : GA D V → ℂ) = Der (expInf θ V) X φ.1 := by
  have R := (RealPts.realPoints D).2 θ hθ V
  have hs : Sm (expInf θ V) φ.1 := (smooth_iff R φ.1).1 (mem_Mc_iff.1 φ.2).1.smooth
  funext g
  have e1 : (derInf hθ X φ : GA D V → ℂ) g = ∑ τ, Rder θ V τ (X τ).1 φ.1 g := by
    simp only [derInf, LinearMap.sum_apply, Submodule.coe_sum, Finset.sum_apply]
    exact Finset.sum_congr rfl fun τ _ => rfl
  rw [e1]
  have e2 : ∀ τ, Rder θ V τ (X τ).1 φ.1 g = Der (expInf θ V) (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.atPlace V τ (X τ)) φ.1 g := fun τ =>
    congrFun (Rder_eq R τ (X τ) φ.1) g
  have hX : ∑ τ, (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.atPlace V τ (X τ) : LieN V) = X := sum_atPlace X
  rw [Finset.sum_congr rfl fun τ _ => (e2 τ).trans (DerLinear.der_eq_fderiv hs _ g), DerLinear.der_eq_fderiv hs X g]
  exact (map_sum (fderiv ℝ (fun Z : LieN V => φ.1 (g * expInf θ V Z)) 0) (fun τ => (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.atPlace V τ (X τ) : LieN V))
    Finset.univ).symm.trans (congrArg _ hX)

end GlobalTheory.CompanionTheory.HCCusp.Transl

theorem GlobalTheory.CompanionTheory.HCCusp.norm_Rcusp_expInf_sub_le : ∀ (D : D7) (θ : GlobalTheory.Mem.Th.InfF D) (hθ : IsInfFam θ) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (X : GlobalTheory.SmoothForms.LieN V) (φ : GlobalTheory.CompanionTheory.HCCusp.Mc θ V), ‖GlobalTheory.Cusp.Rcusp V μ (GlobalTheory.SmoothForms.expInf θ V X) (GlobalTheory.CompanionTheory.HCCusp.io μ hθ φ) - GlobalTheory.CompanionTheory.HCCusp.io μ hθ φ‖ ≤ ‖GlobalTheory.CompanionTheory.HCCusp.io μ hθ (GlobalTheory.CompanionTheory.HCCusp.derInf hθ X φ)‖ := by
  intro D θ hθ V μ _ _ X φ
  have R := (GlobalTheory.SmoothForms.RealPts.realPoints D).2 θ hθ V
  let a : ℝ → GA D V := fun t => GlobalTheory.SmoothForms.expInf θ V (t • X)
  have ha : Continuous a := (GlobalTheory.CuspGeo.MeanValue.continuous_expInf hθ R).comp (continuous_id.smul continuous_const)
  have h0 : a 0 = 1 := by
    simpa [a] using GlobalTheory.CuspGeo.MeanValue.expInf_zero R
  have h1 : a 1 = GlobalTheory.SmoothForms.expInf θ V X := by simp [a]
  have hP := GlobalTheory.Grow.cuspRapidDecay_of_bound GlobalTheory.CuspGeo.cuspDecayBound
  have hφc := (GlobalTheory.Cusp.mem_cuspForms.1 φ.2).1
  set ψ := GlobalTheory.CompanionTheory.HCCusp.derInf hθ X φ with hψdef
  have hψf := (GlobalTheory.Cusp.mem_cuspForms.1 ψ.2).1
  have hs : GlobalTheory.SmoothForms.Sm (GlobalTheory.SmoothForms.expInf θ V) φ.1 :=
    (GlobalTheory.SmoothForms.smooth_iff R φ.1).1 (GlobalTheory.CompanionTheory.HCCusp.mem_Mc_iff.1 φ.2).1.smooth
  have d0 : ∀ h, HasDerivAt (fun t : ℝ => φ.1 (h * a t)) (ψ.1 h) 0 := fun h => by
    rw [hψdef, GlobalTheory.CompanionTheory.HCCusp.Transl.coe_derInf]
    exact DifferentiableAt.hasDerivAt
      ((((hs h).differentiable (by simp)).comp (differentiable_id.smul_const X)) 0)
  have hd : ∀ g t, HasDerivAt (fun s => φ.1 (g * a s)) (ψ.1 (g * a t)) t := fun g t => by
    have h2 := HasDerivAt.comp_sub_const t t (by rw [sub_self]; exact d0 (g * a t))
    refine h2.congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
    simp only [a, mul_assoc, ← GlobalTheory.CuspGeo.MeanValue.expInf_add R, add_sub_cancel]
  have := GlobalTheory.CompanionTheory.HCCusp.Transl.norm_R_sub_le ha h0 h1 (GlobalTheory.Cusp.memL2_of_cusp_form (μ := μ) hP hθ hφc)
    (GlobalTheory.Cusp.memL2_of_cusp_form (μ := μ) hP hθ hψf) hψf.1.cont hd
  exact this

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivative =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivativeStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivativeStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IoInjective\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
theorem _root_.GlobalTheory.T.cusp_translate_bounded_by_derivative : ∀ (D : D7) (θ : GlobalTheory.Mem.Th.InfF D) (hθ : IsInfFam θ) (V : HSp D) (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (X : GlobalTheory.SmoothForms.LieN V) (φ : GlobalTheory.CompanionTheory.HCCusp.Mc θ V), ‖GlobalTheory.Cusp.Rcusp V μ (GlobalTheory.SmoothForms.expInf θ V X) (GlobalTheory.CompanionTheory.HCCusp.io μ hθ φ) - GlobalTheory.CompanionTheory.HCCusp.io μ hθ φ‖ ≤ ‖GlobalTheory.CompanionTheory.HCCusp.io μ hθ (GlobalTheory.CompanionTheory.HCCusp.derInf hθ X φ)‖ :=
  @GlobalTheory.CompanionTheory.HCCusp.norm_Rcusp_expInf_sub_le
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivativeStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteCoefficientSpaceAnnihilatingPolynomial =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteCoefficientSpaceAnnihilatingPolynomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped Topology

namespace GlobalTheory.CompanionTheory.HcFinite.OneParam

theorem hasDerivAt_of_oneParam {E : Type*} [NormedRing E] [NormedAlgebra ℝ E] [CompleteSpace E] (φ : ℝ → E)
    (hc : Continuous φ) (h0 : φ 0 = 1) (hadd : ∀ a b, φ (a + b) = φ a * φ b) :
    ∃ D : E, ∀ t, HasDerivAt φ (φ t * D) t := by
  set I : ℝ → E := fun u => ∫ x in (0:ℝ)..u, φ x with hI
  have hId : ∀ b, HasDerivAt I (φ b) b := fun b => (hc.integral_hasStrictDerivAt 0 b).hasDerivAt
  have hslope := hasDerivAt_iff_tendsto_slope.mp (hId 0)
  rw [h0] at hslope
  have hev : ∀ᶠ r in 𝓝[≠] (0:ℝ), ‖slope I 0 r - 1‖ < 1 :=
    (tendsto_iff_norm_sub_tendsto_zero.mp hslope).eventually (gt_mem_nhds one_pos)
  obtain ⟨r, hr, hne⟩ := (hev.and self_mem_nhdsWithin).exists
  have hlt : ‖1 - slope I 0 r‖ < 1 := by rw [norm_sub_rev]; exact hr
  obtain ⟨u, hu⟩ : IsUnit (slope I 0 r) := by
    have e : slope I 0 r = 1 - (1 - slope I 0 r) := by abel
    rw [e]
    exact ⟨Units.oneSub (1 - slope I 0 r) hlt, rfl⟩
  have key : ∀ t, φ t * I r = I (t + r) - I t := by
    intro t
    have h1 : φ t * I r = ∫ x in (0:ℝ)..r, φ (t + x) := by
      have hcomm := (ContinuousLinearMap.mul ℝ E (φ t)).intervalIntegral_comp_comm
        (hc.intervalIntegrable (μ := MeasureTheory.volume) 0 r)
      simp only [ContinuousLinearMap.mul_apply'] at hcomm
      rw [hI, ← hcomm]
      simp only [hadd]
    rw [h1, intervalIntegral.integral_comp_add_left (fun x => φ x) t, add_zero, hI,
      intervalIntegral.integral_interval_sub_left (hc.intervalIntegrable _ _) (hc.intervalIntegrable _ _)]
  have hI0 : I 0 = 0 := by simp [hI]
  have hφ : φ = fun t => (r⁻¹ • (I (t + r) - I t)) * ((u⁻¹ : Eˣ) : E) := by
    funext t
    have e : φ t * slope I 0 r = r⁻¹ • (I (t + r) - I t) := by
      rw [slope_def_module, sub_zero, hI0, sub_zero, mul_smul_comm, key]
    rw [← e, ← hu, mul_assoc, Units.mul_inv, mul_one]
  refine ⟨r⁻¹ • (φ r - 1) * ((u⁻¹ : Eˣ) : E), fun t => ?_⟩
  have h2 : HasDerivAt (fun t => I (t + r)) (φ (t + r)) t := HasDerivAt.comp_add_const t r (hId (t + r))
  have hd : HasDerivAt (fun t => (r⁻¹ • (I (t + r) - I t)) * ((u⁻¹ : Eˣ) : E))
      ((r⁻¹ • (φ (t + r) - φ t)) * ((u⁻¹ : Eˣ) : E)) t :=
    ((h2.sub (hId t)).const_smul r⁻¹).mul_const _
  rw [← hφ] at hd
  convert hd using 1
  rw [hadd, ← mul_assoc, mul_smul_comm, mul_sub, mul_one]


attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra in
theorem exists_generator {K W : Type} [Group K] [TopologicalSpace K] [AddCommGroup W] [Module ℂ W]
    [FiniteDimensional ℂ W] (ρ : Representation ℂ K W) (hρ : GlobalTheory.Published.AutFin.IsContRep ρ) (s : ℝ → K)
    (hs : Continuous s) (h0 : s 0 = 1) (hadd : ∀ a b, s (a + b) = s a * s b) :
    ∃ D : Module.End ℂ W, ∀ (L : Module.End ℂ W →ₗ[ℂ] ℂ) (t : ℝ),
      HasDerivAt (fun t => L (ρ (s t))) (L (ρ (s t) * D)) t := by
  let b := Module.finBasis ℂ W
  let M : ℝ → Matrix (Fin (Module.finrank ℂ W)) (Fin (Module.finrank ℂ W)) ℂ :=
    fun t => LinearMap.toMatrix b b (ρ (s t))
  have hM0 : M 0 = 1 := by simp [M, h0]
  have hMadd : ∀ a c, M (a + c) = M a * M c := by
    intro a c
    simp only [M, hadd, map_mul, LinearMap.toMatrix_mul]
  have hMc : Continuous M := by
    refine continuous_matrix fun i j => ?_
    simp only [M, LinearMap.toMatrix_apply]
    exact (hρ (b.coord i) (b j)).comp hs
  obtain ⟨D₀, hD₀⟩ := hasDerivAt_of_oneParam M hMc hM0 hMadd
  refine ⟨Matrix.toLin b b D₀, fun L t => ?_⟩
  let L' : Matrix (Fin (Module.finrank ℂ W)) (Fin (Module.finrank ℂ W)) ℂ →L[ℝ] ℂ :=
    LinearMap.toContinuousLinearMap ((L ∘ₗ (Matrix.toLin b b).toLinearMap).restrictScalars ℝ)
  have hL' : ∀ X, L' X = L (Matrix.toLin b b X) := fun X => rfl
  have hk := L'.hasFDerivAt.comp_hasDerivAt t (hD₀ t)
  have e1 : (fun t => L (ρ (s t))) = L' ∘ M := by
    funext t
    simp [hL', M, Matrix.toLin_toMatrix]
  rw [e1]
  convert hk using 1
  show L (ρ (s t) * Matrix.toLin b b D₀) = L (Matrix.toLin b b (LinearMap.toMatrix b b (ρ (s t)) * D₀))
  rw [Matrix.toLin_mul b b b, Matrix.toLin_toMatrix, Module.End.mul_eq_comp]

theorem iteratedDeriv_eq {K W : Type} [Group K] [AddCommGroup W] [Module ℂ W] (ρ : Representation ℂ K W) (s : ℝ → K)
    (D : Module.End ℂ W)
    (hD : ∀ (L : Module.End ℂ W →ₗ[ℂ] ℂ) (t : ℝ), HasDerivAt (fun t => L (ρ (s t))) (L (ρ (s t) * D)) t) (j : ℕ) :
    ∀ L : Module.End ℂ W →ₗ[ℂ] ℂ, iteratedDeriv j (fun t => L (ρ (s t))) = fun t => L (ρ (s t) * D ^ j) := by
  induction j with
  | zero =>
    intro L
    funext t
    simp
  | succ j ih =>
    intro L
    rw [iteratedDeriv_succ, ih L]
    funext t
    have h := hD (L ∘ₗ LinearMap.mulRight ℂ (D ^ j)) t
    simp only [LinearMap.comp_apply, LinearMap.mulRight_apply] at h
    rw [h.deriv, mul_assoc, ← pow_succ']

theorem coeffSpan_factor {K W : Type} [Group K] [AddCommGroup W] [Module ℂ W] (ρ : Representation ℂ K W)
    (f : K → ℂ) (hf : f ∈ GlobalTheory.Published.AutFin.coeffSpan ρ) :
    ∃ Λ : Module.End ℂ W →ₗ[ℂ] ℂ, ∀ x, f x = Λ (ρ x) := by
  induction hf using Submodule.span_induction with
  | mem g hg =>
    obtain ⟨ℓ, w, rfl⟩ := hg
    exact ⟨ℓ ∘ₗ (LinearMap.applyₗ w : Module.End ℂ W →ₗ[ℂ] W), fun x => rfl⟩
  | zero => exact ⟨0, fun x => by simp⟩
  | add g h _ _ hg hh =>
    obtain ⟨Λ₁, h₁⟩ := hg
    obtain ⟨Λ₂, h₂⟩ := hh
    exact ⟨Λ₁ + Λ₂, fun x => by simp [h₁, h₂]⟩
  | smul c g _ hg =>
    obtain ⟨Λ, hΛ⟩ := hg
    exact ⟨c • Λ, fun x => by simp [hΛ]⟩

theorem coeff_ode : ∀ (K W : Type) [Group K] [TopologicalSpace K] [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] (ρ : Representation ℂ K W), GlobalTheory.Published.AutFin.IsContRep ρ → ∀ s : ℝ → K, Continuous s → s 0 = 1 → (∀ a b, s (a + b) = s a * s b) → ∃ m : Polynomial ℂ, m ≠ 0 ∧ ∀ f ∈ GlobalTheory.Published.AutFin.coeffSpan ρ, ∀ k : K, ∑ j ∈ Finset.range (m.natDegree + 1), m.coeff j * iteratedDeriv j (fun t : ℝ => f (k * s t)) 0 = 0 := by
  intro K W _ _ _ _ _ ρ hρ s hs h0 hadd
  obtain ⟨D, hD⟩ := exists_generator ρ hρ s hs h0 hadd
  refine ⟨LinearMap.charpoly D, (LinearMap.charpoly_monic D).ne_zero, ?_⟩
  intro f hf k
  obtain ⟨Λ, hΛ⟩ := coeffSpan_factor ρ f hf
  let L : Module.End ℂ W →ₗ[ℂ] ℂ := Λ ∘ₗ LinearMap.mulLeft ℂ (ρ k)
  have hfun : (fun t : ℝ => f (k * s t)) = fun t => L (ρ (s t)) := by
    funext t
    simp [L, hΛ, map_mul]
  have hit := iteratedDeriv_eq ρ s D hD
  simp only [hfun, hit]
  simp only [h0, map_one, one_mul]
  have hc := LinearMap.aeval_self_charpoly D
  rw [Polynomial.aeval_eq_sum_range] at hc
  calc ∑ j ∈ Finset.range ((LinearMap.charpoly D).natDegree + 1), (LinearMap.charpoly D).coeff j * L (D ^ j)
      = L (∑ j ∈ Finset.range ((LinearMap.charpoly D).natDegree + 1), (LinearMap.charpoly D).coeff j • D ^ j) := by
        set_option synthInstance.maxHeartbeats 100000 in
          simp [map_sum, smul_eq_mul]
    _ = 0 := by rw [hc, map_zero]

end GlobalTheory.CompanionTheory.HcFinite.OneParam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteCoefficientSpaceAnnihilatingPolynomial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfCompactCoercive =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfCompactCoercive", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.Analysis.Normed.Operator.Compact.Basic\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.InnerProductSpace.Continuous\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace

namespace GlobalTheory.CompanionTheory.Glob

theorem finiteDimensional_of_compact_coercive :
    ∀ (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] (A : H →L[ℂ] H),
      IsCompactOperator A → ∀ (S : Submodule ℂ H) (c : ℝ), 0 < c →
        (∀ u ∈ S, c * ‖u‖ ^ 2 ≤ (⟪u, A u⟫_ℂ).re) → FiniteDimensional ℂ S := by
  intro H _ _ _ A hA S c hc hS
  have hS' : ∀ u ∈ S.topologicalClosure, c * ‖u‖ ^ 2 ≤ (⟪u, A u⟫_ℂ).re := by
    intro u hu
    have hcl : IsClosed {u : H | c * ‖u‖ ^ 2 ≤ (⟪u, A u⟫_ℂ).re} :=
      isClosed_le (continuous_const.mul (continuous_norm.pow 2))
        (Complex.continuous_re.comp (continuous_id.inner A.continuous))
    have hsub : (S : Set H) ⊆ {u : H | c * ‖u‖ ^ 2 ≤ (⟪u, A u⟫_ℂ).re} := fun u hu ↦ hS u hu
    have h := closure_minimal hsub hcl
    rw [← Submodule.topologicalClosure_coe] at h
    exact h hu
  have hbd : ∀ u ∈ S.topologicalClosure, ‖u‖ ≤ c⁻¹ * ‖A u‖ := by
    intro u hu
    have h1 := hS' u hu
    have h2 : (⟪u, A u⟫_ℂ).re ≤ ‖u‖ * ‖A u‖ :=
      (Complex.re_le_norm _).trans (norm_inner_le_norm _ _)
    have h3 : c * ‖u‖ ≤ ‖A u‖ := by
      rcases (norm_nonneg u).eq_or_lt with h0 | hpos
      · rw [← h0, mul_zero]
        exact norm_nonneg _
      · nlinarith
    rw [inv_mul_eq_div, le_div_iff₀ hc]
    linarith
  let T : S.topologicalClosure →L[ℂ] H := A.comp S.topologicalClosure.subtypeL
  have hT : IsCompactOperator T := hA.comp_clm S.topologicalClosure.subtypeL
  have hanti : AntilipschitzWith (Real.toNNReal c⁻¹) T := by
    refine ContinuousLinearMap.antilipschitz_of_bound T fun x ↦ ?_
    rw [Real.coe_toNNReal _ (inv_nonneg.mpr hc.le)]
    exact hbd x x.2
  have hemb : Topology.IsClosedEmbedding T := hanti.isClosedEmbedding T.uniformContinuous
  have hK := IsCompactOperator.isCompact_closure_image_closedBall
    (f := (T : S.topologicalClosure →ₗ[ℂ] H)) hT 1
  have hball : IsCompact (Metric.closedBall (0 : S.topologicalClosure) 1) := by
    refine (hemb.isCompact_preimage hK).of_isClosed_subset Metric.isClosed_closedBall ?_
    intro x hx
    exact subset_closure ⟨x, hx, rfl⟩
  have : FiniteDimensional ℂ S.topologicalClosure :=
    FiniteDimensional.of_isCompact_closedBall₀ ℂ zero_lt_one hball
  exact Submodule.finiteDimensional_of_le S.le_topologicalClosure

end GlobalTheory.CompanionTheory.Glob
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfCompactCoercive =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfEmbedding =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfEmbedding", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.UnifModGrowthOfIsUnifModerate\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.MemL2OfBoundedContinuousInvariant\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspDiscreteDecompositionOfDecay\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.Analysis.Normed.Operator.Compact.Basic\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfCompactCoercive\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.IndefR.Mult MeasureTheory NumberField Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.CuspFin

open GlobalTheory.AutomorphicL2Unitary GlobalTheory.OpTrace GlobalTheory.Cusp GlobalTheory.AutMult GlobalTheory.DiscreteSum GlobalTheory.Orb GlobalTheory.AdelicU GlobalTheory.SplitWeil

theorem le_re_inner_of_isRepOp {G H : Type} [Group G] [MeasurableSpace G] [TopologicalSpace G] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] {π : G →* (H →L[ℂ] H)} {μ : Measure G} {φ : G → ℝ} {T : H →L[ℂ] H}
    (hT : IsRepOp π μ (fun g => (φ g : ℂ)) T) (hφ : Integrable φ μ) (h0 : 0 ≤ φ) {N : Set G}
    (hs : Function.support φ ⊆ N) (u : H) (c : ℝ) (hc : ∀ g ∈ N, c ≤ (⟪u, π g u⟫_ℂ).re) :
    c * ∫ g, φ g ∂μ ≤ (⟪u, T u⟫_ℂ).re := by
  have hi := (hT u).1
  have hin : Integrable (fun g => ⟪u, (φ g : ℂ) • π g u⟫_ℂ) μ := hi.const_inner u
  have e : (⟪u, T u⟫_ℂ).re = ∫ g, (⟪u, (φ g : ℂ) • π g u⟫_ℂ).re ∂μ := by
    rw [(hT u).2, ← integral_inner hi u]
    exact (integral_re hin).symm
  rw [e, ← integral_const_mul]
  refine integral_mono (hφ.const_mul c) hin.re fun g => ?_
  simp only [inner_smul_right, Complex.re_ofReal_mul]
  by_cases hg : φ g = 0
  · simp [hg]
  · rw [mul_comm]
    exact mul_le_mul_of_nonneg_left (hc g (hs hg)) (h0 g)

variable {D : D7} {V : HSp D}

theorem exists_bump (μ : Measure (GA D V)) [μ.IsHaarMeasure] {N : Set (GA D V)} (hN : N ∈ 𝓝 (1 : GA D V)) :
    ∃ φ : GA D V → ℝ, (fun g => (φ g : ℂ)) ∈ CcGA V ∧ 0 ≤ φ ∧ Function.support φ ⊆ N ∧ Integrable φ μ ∧
      0 < ∫ g, φ g ∂μ := by
  obtain ⟨φ, hφ, h0, h1, hs⟩ : ∃ φ : GA D V → ℝ, (fun g => (φ g : ℂ)) ∈ CcGA V ∧ 0 ≤ φ ∧ φ 1 = 1 ∧
      Function.support φ ⊆ N := GlobalTheory.CuspSpectrum.exists_bump_ccAd (isCMExt_host D) hN
  have hc := continuous_of_mem_ccAd hφ
  have hφc : Continuous φ := Complex.continuous_re.comp hc.1
  have hφs : HasCompactSupport φ := hc.2.comp_left (g := Complex.re) rfl
  exact ⟨φ, hφ, h0, hs, hφc.integrable_of_hasCompactSupport hφs,
    hφc.integral_pos_of_hasCompactSupport_nonneg_nonzero hφs h0 (x := 1) (by rw [h1]; exact one_ne_zero)⟩

theorem finiteDimensional_of_coercive (hP : GlobalTheory.Published.CuspDecayBound) (μ : Measure (GA D V)) [μ.IsHaarMeasure]
    [μ.IsMulRightInvariant] (Sb : Submodule ℂ (L2cusp V μ)) {N : Set (GA D V)} (hN : N ∈ 𝓝 (1 : GA D V))
    (h : ∀ g ∈ N, ∀ u ∈ Sb, (1 / 2 : ℝ) * ‖u‖ ^ 2 ≤ (⟪u, Rcusp V μ g u⟫_ℂ).re) : FiniteDimensional ℂ Sb := by
  obtain ⟨φ, hf, h0, hs, hi, hpos⟩ := exists_bump μ hN
  have hrep := GlobalTheory.CuspSpectrum.isRepOp_RcuspOp (μ := μ) hf
  refine _root_.GlobalTheory.CompanionTheory.Glob.finiteDimensional_of_compact_coercive (L2cusp V μ) (RcuspOp V μ _)
    (isCompactOperator_of_isHilbertSchmidt (GlobalTheory.CuspHS.isHilbertSchmidt_RcuspOp hP hf)) Sb
    ((1 / 2) * ∫ g, φ g ∂μ) (by positivity) fun u hu => ?_
  have := le_re_inner_of_isRepOp hrep hi h0 hs u ((1 / 2 : ℝ) * ‖u‖ ^ 2) fun g hg => h g hg u hu
  calc _ = (1 / 2 : ℝ) * ‖u‖ ^ 2 * ∫ g, φ g ∂μ := by ring
    _ ≤ _ := this

end GlobalTheory.CompanionTheory.CuspFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfEmbedding =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOfCommute =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOfCommute", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.REAL
open GlobalTheory.SmoothGlob (lieSet)

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.KStable

variable {n : ℕ} {ε : Fin n → Bool}

theorem skew_of_commute {X : Matrix (Fin n) (Fin n) ℂ} (hX : X ∈ lieSet ε) (hc : X * Jm ε = Jm ε * X) :
    Xᴴ = -X := by
  have h : Xᴴ * Jm ε + Jm ε * X = 0 := hX
  have h1 : Xᴴ * Jm ε = -(X * Jm ε) := by
    rw [hc]; exact eq_neg_of_add_eq_zero_left h
  calc Xᴴ = Xᴴ * (Jm ε * Jm ε) := by rw [Formalism.REAL.Jm_mul_self, Matrix.mul_one]
    _ = (Xᴴ * Jm ε) * Jm ε := by rw [Matrix.mul_assoc]
    _ = -(X * (Jm ε * Jm ε)) := by rw [h1, Matrix.neg_mul, Matrix.mul_assoc]
    _ = -X := by rw [Formalism.REAL.Jm_mul_self, Matrix.mul_one]

theorem exp_mem_Kset {X : Matrix (Fin n) (Fin n) ℂ} (hX : X ∈ lieSet ε) (hc : X * Jm ε = Jm ε * X) (t : ℝ) :
    NormedSpace.exp (t • X) ∈ Kset ε := by
  have hs := skew_of_commute hX hc
  constructor
  · rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, ← Matrix.exp_conjTranspose,
      Matrix.conjTranspose_smul, hs]
    have hneg : star t • -X = -(t • X) := by simp
    have hcm : Commute (t • X) (-(t • X)) := (Commute.refl _).neg_right
    rw [hneg, ← Matrix.exp_add_of_commute _ _ hcm]
    simp
  · exact ((show Commute X (Jm ε) from hc).smul_left t).exp_left

end GlobalTheory.CompanionTheory.Hypotheses₂.KStable

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOfCommute =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IteratedDerivOneP =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IteratedDerivOneP", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IoInjective\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DifferentiableOneP\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicOpenNeighbourhoodProduct\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanNeighbourhoodExpSurjectiveStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CuspTranslateBoundedByDerivativeStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivativeSkewAdjointCuspFormsStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteCoefficientSpaceAnnihilatingPolynomial\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfEmbedding\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LieAlgebraSpannedByCompactAndFrameStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOfCommute\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SkewOperatorBoundedByPolynomialRoots\npublic import Development.WeilBound.CoreStatements.MeasureExistence.ExistsMeas\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOneP\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory Matrix
open scoped TensorProduct Topology InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
attribute [local instance 100] LieRing.ofAssociativeRing

noncomputable section

namespace GlobalTheory.CompanionTheory.HCCusp

open GlobalTheory.Cusp GlobalTheory.Mem.AutSpace GlobalTheory.Published.AutFin GlobalTheory.SmoothForms

variable {D : D7} {θ : GlobalTheory.Mem.Th.InfF D} {V : HSp D}

theorem smooth_of_mem (φ : Mc θ V) : φ.1 ∈ SmFun θ V := (mem_Mc_iff.1 φ.2).1.smooth

theorem der_congr (hθ : IsInfFam θ) {τ : D.what₂.Tau} {X Y : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (hX : X ∈ lieAt V τ) (hY : Y ∈ lieAt V τ) (h : X = Y) : der hθ τ hX = der hθ τ hY := by
  subst h; rfl

theorem der_comb (hθ : IsInfFam θ) {τ : D.what₂.Tau} {X Y : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (hX : X ∈ lieAt V τ) (hY : Y ∈ lieAt V τ) (r s : ℝ) (h : r • X + s • Y ∈ lieAt V τ) :
    der hθ τ h = (r : ℂ) • der hθ τ hX + (s : ℂ) • der hθ τ hY :=
  LinearMap.ext fun φ => Subtype.ext (GlobalTheory.Mem.RealTranslate.Rder_comb hθ (smooth_of_mem φ) hX hY r s)

def Bd (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) (E : Set (Mc θ V))
    (T : Module.End ℂ (Mc θ V)) : Prop :=
  ∃ Λ : ℝ, 0 ≤ Λ ∧ ∀ φ ∈ E, ‖io μ hθ (T φ)‖ ≤ Λ * ‖io μ hθ φ‖

section Bd

variable {μ : Measure (GA D V)} [μ.IsHaarMeasure] {hθ : IsInfFam θ} {E : Set (Mc θ V)}

theorem Bd.add {S T : Module.End ℂ (Mc θ V)} (hS : Bd μ hθ E S) (hT : Bd μ hθ E T) : Bd μ hθ E (S + T) := by
  obtain ⟨a, ha, h⟩ := hS
  obtain ⟨b, hb, k⟩ := hT
  refine ⟨a + b, add_nonneg ha hb, fun φ hφ => ?_⟩
  rw [LinearMap.add_apply, map_add (io μ hθ), add_mul]
  exact (norm_add_le _ _).trans (add_le_add (h φ hφ) (k φ hφ))

theorem Bd.smul {T : Module.End ℂ (Mc θ V)} (c : ℂ) (hT : Bd μ hθ E T) : Bd μ hθ E (c • T) := by
  obtain ⟨a, ha, h⟩ := hT
  refine ⟨‖c‖ * a, mul_nonneg (norm_nonneg _) ha, fun φ hφ => ?_⟩
  rw [LinearMap.smul_apply, map_smul, norm_smul, mul_assoc]
  exact mul_le_mul_of_nonneg_left (h φ hφ) (norm_nonneg _)

theorem Bd.sum {ι : Type} (s : Finset ι) {T : ι → Module.End ℂ (Mc θ V)} (hT : ∀ i ∈ s, Bd μ hθ E (T i)) :
    Bd μ hθ E (∑ i ∈ s, T i) := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨0, le_rfl, fun φ _ => by simp⟩
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact (hT a (Finset.mem_insert_self _ _)).add (ih fun i hi => hT i (Finset.mem_insert_of_mem hi))

end Bd

theorem inner_der_der (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) {τ : D.what₂.Tau}
    {X : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hX : X ∈ lieAt V τ) (φ : Mc θ V) :
    ⟪io μ hθ φ, io μ hθ (der hθ τ hX (der hθ τ hX φ))⟫_ℂ = -((‖io μ hθ (der hθ τ hX φ)‖ ^ 2 : ℝ) : ℂ) := by
  have h := GlobalTheory.T.derivative_skew_adjoint_cusp_forms D θ hθ V μ τ X hX φ (der hθ τ hX φ)
  have h' : ⟪io μ hθ φ, io μ hθ (der hθ τ hX (der hθ τ hX φ))⟫_ℂ =
      -⟪io μ hθ (der hθ τ hX φ), io μ hθ (der hθ τ hX φ)⟫_ℂ := by rw [h, neg_neg]
  rw [h', inner_self_eq_norm_sq_to_K]
  push_cast
  rfl

theorem bd_of_casimir (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) {τ : D.what₂.Tau}
    (E : Set (Mc θ V)) {n₁ n₂ : ℕ} {X : Fin n₁ → Matrix (Fin V.rank) (Fin V.rank) ℂ}
    {Y : Fin n₂ → Matrix (Fin V.rank) (Fin V.rank) ℂ} (hX : ∀ a, X a ∈ lieAt V τ) (hY : ∀ b, Y b ∈ lieAt V τ)
    (c : ℂ) (hE : ∀ φ ∈ E, c • φ = ∑ a, der hθ τ (hX a) (der hθ τ (hX a) φ) -
      ∑ b, der hθ τ (hY b) (der hθ τ (hY b) φ))
    (hK : ∀ b, Bd μ hθ E (der hθ τ (hY b))) (a : Fin n₁) : Bd μ hθ E (der hθ τ (hX a)) := by
  choose κ hκ0 hκ using hK
  set B : ℝ := ‖c‖ + ∑ b, κ b ^ 2 with hB
  have hB0 : 0 ≤ B := add_nonneg (norm_nonneg _) (Finset.sum_nonneg fun b _ => sq_nonneg _)
  refine ⟨Real.sqrt B, Real.sqrt_nonneg _, fun φ hφ => ?_⟩
  have h2 := congrArg (fun w => ⟪io μ hθ φ, io μ hθ w⟫_ℂ) (hE φ hφ)

  simp only [map_smul, map_sub, map_sum, inner_smul_right, inner_sub_right, inner_sum, inner_der_der,
  inner_self_eq_norm_sq_to_K] at h2
  have e : ((‖io μ hθ φ‖ : ℂ) ^ 2) = ((‖io μ hθ φ‖ ^ 2 : ℝ) : ℂ) := by push_cast; rfl
  rw [show ((RCLike.ofReal ‖io μ hθ φ‖ : ℂ) ^ 2) = ((‖io μ hθ φ‖ ^ 2 : ℝ) : ℂ) from e] at h2
  have h3 := congrArg Complex.re h2
  simp only [Complex.re_sum, Complex.neg_re, Complex.ofReal_re, Complex.re_mul_ofReal,
    Finset.sum_neg_distrib, sub_neg_eq_add, Complex.add_re] at h3
  have h4 : ‖io μ hθ (der hθ τ (hX a) φ)‖ ^ 2 ≤ ∑ x, ‖io μ hθ (der hθ τ (hX x) φ)‖ ^ 2 :=
    Finset.single_le_sum (f := fun x => ‖io μ hθ (der hθ τ (hX x) φ)‖ ^ 2) (fun _ _ => sq_nonneg _)
      (Finset.mem_univ a)
  have h5 : ∑ b, ‖io μ hθ (der hθ τ (hY b) φ)‖ ^ 2 ≤ (∑ b, κ b ^ 2) * ‖io μ hθ φ‖ ^ 2 := by
    rw [Finset.sum_mul]
    refine Finset.sum_le_sum fun b _ => ?_
    rw [← mul_pow]
    exact pow_le_pow_left₀ (norm_nonneg _) (hκ b φ hφ) 2
  have h6 : -(c.re * ‖io μ hθ φ‖ ^ 2) ≤ ‖c‖ * ‖io μ hθ φ‖ ^ 2 := by
    rw [← neg_mul]
    exact mul_le_mul_of_nonneg_right ((neg_le_abs _).trans (Complex.abs_re_le_norm c)) (sq_nonneg _)
  have h7 : ‖io μ hθ (der hθ τ (hX a) φ)‖ ^ 2 ≤ B * ‖io μ hθ φ‖ ^ 2 := by
    rw [hB, add_mul]
    linarith
  have h8 := Real.sqrt_le_sqrt h7
  rwa [Real.sqrt_sq (norm_nonneg _), Real.sqrt_mul hB0, Real.sqrt_sq (norm_nonneg _)] at h8

theorem bd_span (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) {τ : D.what₂.Tau}
    (E : Set (Mc θ V)) (S : Set (Matrix (Fin V.rank) (Fin V.rank) ℂ))
    (hS : ∀ Z ∈ S, ∃ h : Z ∈ lieAt V τ, Bd μ hθ E (der hθ τ h))
    {Z : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hZ : Z ∈ Submodule.span ℝ S) :
    ∃ h : Z ∈ lieAt V τ, Bd μ hθ E (der hθ τ h) := by
  have h0 : (0 : Matrix (Fin V.rank) (Fin V.rank) ℂ) ∈ lieAt V τ :=
    (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).zero_mem
  induction hZ using Submodule.span_induction with
  | mem x hx => exact hS x hx
  | zero =>
    refine ⟨h0, ?_⟩
    have e : der hθ τ h0 = 0 := by
      have h00 : (0 : ℝ) • (0 : Matrix (Fin V.rank) (Fin V.rank) ℂ) + (0 : ℝ) • 0 ∈ lieAt V τ := by
        simpa using h0
      rw [der_congr hθ h0 h00 (by simp), der_comb hθ h0 h0 0 0 h00]
      simp
    rw [e]
    exact ⟨0, le_rfl, fun φ _ => by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨h1, b1⟩ := hx
    obtain ⟨h2, b2⟩ := hy
    have h12 : x + y ∈ lieAt V τ := (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).add_mem h1 h2
    have h12' : (1 : ℝ) • x + (1 : ℝ) • y ∈ lieAt V τ := by simpa using h12
    refine ⟨h12, ?_⟩
    rw [der_congr hθ h12 h12' (by simp), der_comb hθ h1 h2 1 1 h12']
    exact (b1.smul _).add (b2.smul _)
  | smul r x _ hx =>
    obtain ⟨h1, b1⟩ := hx
    have h12 : r • x ∈ lieAt V τ := (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).smul_mem r h1
    have h12' : r • x + (0 : ℝ) • x ∈ lieAt V τ := by simpa using h12
    refine ⟨h12, ?_⟩
    rw [der_congr hθ h12 h12' (by simp), der_comb hθ h1 h1 r 0 h12']
    simpa using b1.smul (r : ℂ)

theorem iteratedDeriv_oneP (hθ : IsInfFam θ) {τ : D.what₂.Tau} {X : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (hX : X ∈ lieAt V τ) (j : ℕ) (φ : Mc θ V) (x : GA D V) :
    iteratedDeriv j (fun t : ℝ => φ.1 (x * oneP θ V τ X t)) =
      fun t => ((der hθ τ hX ^ j) φ).1 (x * oneP θ V τ X t) := by
  induction j generalizing φ with
  | zero => simp
  | succ j ih =>
    have e : deriv (fun t : ℝ => φ.1 (x * oneP θ V τ X t)) =
        fun t => (der hθ τ hX φ).1 (x * oneP θ V τ X t) := funext fun t =>
      (GlobalTheory.Mem.Lift.hasDerivAt_oneP hθ hX (GlobalTheory.Mem.Lift.hasDerivAt_Rder (smooth_of_mem φ) hX) x t).deriv
    rw [iteratedDeriv_succ', e, ih (der hθ τ hX φ), pow_succ]
    rfl

theorem exists_oneParam {n : ℕ} {e : Fin n → Bool} {y : Matrix (Fin n) (Fin n) ℂ} (hy : IsKLie e y) :
    ∃ s : ℝ → Formalism.REAL.KG e, Continuous s ∧ s 0 = 1 ∧ (∀ a b, s (a + b) = s a * s b) ∧
      ∀ t, Formalism.REAL.toMK (s t) = NormedSpace.exp (t • y) := by
  have hin : y ∈ GlobalTheory.SmoothGlob.lieSet e := by
    change yᴴ * Formalism.REAL.Jm e + Formalism.REAL.Jm e * y = 0
    rw [hy.1, Matrix.neg_mul, hy.2, neg_add_cancel]
  have hm : ∀ t : ℝ, Formalism.REAL.toM (Formalism.REAL.expG e y t) = NormedSpace.exp (t • y) := fun t => by
    rw [Formalism.REAL.toM_expG e y t hin, Complex.coe_smul]
  let s : ℝ → Formalism.REAL.KG e := fun t => ⟨Formalism.REAL.expG e y t, by
    rw [Formalism.REAL.mem_KG, hm]
    exact GlobalTheory.CompanionTheory.Hypotheses₂.KStable.exp_mem_Kset hin hy.2 t⟩
  have hs : ∀ t, Formalism.REAL.toMK (s t) = NormedSpace.exp (t • y) := hm
  have hemb : Topology.IsEmbedding (fun k : Formalism.REAL.KG e => Formalism.REAL.toMK k) :=
    (Formalism.REAL.isClosedEmbeddingMatrix n e).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal
  refine ⟨s, hemb.continuous_iff.2 ?_, hemb.injective ?_, fun a b => hemb.injective ?_, hs⟩
  · change Continuous fun t => Formalism.REAL.toMK (s t)
    simp only [hs]
    open scoped Matrix.Norms.Operator in
    exact continuous_iff_continuousAt.2 fun t => (hasDerivAt_exp_smul_const (𝕂 := ℝ) y t).continuousAt
  · change Formalism.REAL.toMK (s 0) = 1
    rw [hs, zero_smul, NormedSpace.exp_zero]
  · change Formalism.REAL.toMK (s (a + b)) = Formalism.REAL.toMK (s a) * Formalism.REAL.toMK (s b)
    rw [hs, hs, hs, add_smul, Matrix.exp_add_of_commute _ _ (((Commute.refl y).smul_left a).smul_right b)]

theorem kAt_eq_oneP (θ : GlobalTheory.Mem.Th.InfF D) {τ : D.what₂.Tau} {e : Fin V.rank → Bool}
    {P y : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hP : IsUnit P) {k : Formalism.REAL.KG e} {t : ℝ}
    (h : Formalism.REAL.toMK k = NormedSpace.exp (t • y)) :
    kAt θ V τ e P k = oneP θ V τ (P⁻¹ * y * P) t := by
  have hu : IsUnit P⁻¹ := by
    rw [Matrix.isUnit_nonsing_inv_iff]; exact hP
  have hd : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).1 hP
  have e1 : t • (P⁻¹ * y * P) = P⁻¹ * (t • y) * (P⁻¹)⁻¹ := by
    rw [Matrix.nonsing_inv_nonsing_inv _ hd]; simp
  rw [kAt, oneP, h, e1, Matrix.exp_conj _ _ hu, Matrix.nonsing_inv_nonsing_inv _ hd]

theorem bd_ktype (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) {τ : D.what₂.Tau}
    {e : Fin V.rank → Bool} {P y : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hP : IsUnit P)
    {W : Type} [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W]
    (ρ : Representation ℂ (Formalism.REAL.KG e) W) (hρ : IsContRep ρ) (hy : IsKLie e y)
    (hY : P⁻¹ * y * P ∈ lieAt V τ) :
    Bd μ hθ {φ | HasTypeAt θ V τ e P ρ φ.1} (der hθ τ hY) := by
  classical
  obtain ⟨s, hc, h0, ha, hs⟩ := exists_oneParam hy
  obtain ⟨m, hm0, hm⟩ := _root_.GlobalTheory.CompanionTheory.HcFinite.OneParam.coeff_ode (Formalism.REAL.KG e) W ρ hρ s hc h0 ha
  have hκ0 : 0 ≤ ∑ r ∈ m.roots.toFinset, ‖r‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
  refine ⟨_, hκ0, fun φ hφ => _root_.GlobalTheory.CompanionTheory.SkewSpec.norm_le_of_aeval_eq_zero _ _ (io μ hθ) (io_injective μ hθ) (der hθ τ hY)
    (fun a b => GlobalTheory.T.derivative_skew_adjoint_cusp_forms D θ hθ V μ τ _ hY a b) m hm0 _ hκ0
    (fun r hr => Finset.single_le_sum (f := fun r : ℂ => ‖r‖) (fun _ _ => norm_nonneg _)
      (Multiset.mem_toFinset.2 hr)) φ ?_⟩
  refine Subtype.ext (funext fun x => ?_)
  have h1 := hm _ (hφ x) 1
  rw [Polynomial.aeval_eq_sum_range]
  simp only [LinearMap.sum_apply, LinearMap.smul_apply]
  rw [Submodule.coe_sum, Finset.sum_apply]
  refine Eq.trans (Finset.sum_congr rfl fun j _ => ?_) h1
  have e2 : (fun t : ℝ => φ.1 (x * kAt θ V τ e P (1 * s t))) = fun t => φ.1 (x * oneP θ V τ (P⁻¹ * y * P) t) :=
    funext fun t => by rw [one_mul, kAt_eq_oneP θ hP (hs t)]
  rw [e2, iteratedDeriv_oneP hθ hY j φ x]
  have : oneP θ V τ (P⁻¹ * y * P) 0 = 1 := GlobalTheory.Mem.Lift.oneP_zero hθ
  simp [this]

theorem Bd.mono {μ : Measure (GA D V)} [μ.IsHaarMeasure] {hθ : IsInfFam θ} {E E' : Set (Mc θ V)}
    {T : Module.End ℂ (Mc θ V)} (hT : Bd μ hθ E' T) (h : E ⊆ E') : Bd μ hθ E T :=
  let ⟨a, ha, k⟩ := hT
  ⟨a, ha, fun φ hφ => k φ (h hφ)⟩

theorem derInf_add (hθ : IsInfFam θ) (X Y : LieN V) : derInf hθ (X + Y) = derInf hθ X + derInf hθ Y := by
  rw [derInf, derInf, derInf, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun τ _ => ?_
  have h12 : (1 : ℝ) • (X τ).1 + (1 : ℝ) • (Y τ).1 ∈ lieAt V τ := by
    simp only [one_smul]
    exact (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).add_mem (X τ).2 (Y τ).2
  rw [der_congr hθ ((X + Y) τ).2 h12 (by simp only [one_smul]; rfl), der_comb hθ (X τ).2 (Y τ).2 1 1 h12]
  simp

theorem derInf_smul (hθ : IsInfFam θ) (r : ℝ) (X : LieN V) : derInf hθ (r • X) = (r : ℂ) • derInf hθ X := by
  rw [derInf, derInf, Finset.smul_sum]
  refine Finset.sum_congr rfl fun τ _ => ?_
  have h12 : r • (X τ).1 + (0 : ℝ) • (X τ).1 ∈ lieAt V τ := by
    simp only [zero_smul, add_zero]
    exact (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).smul_mem r (X τ).2
  rw [der_congr hθ ((r • X) τ).2 h12 (by simp only [zero_smul, add_zero]; rfl), der_comb hθ (X τ).2 (X τ).2 r 0 h12]
  simp

theorem derInf_sum (hθ : IsInfFam θ) {ι : Type} (s : Finset ι) (a : ι → ℝ) (b : ι → LieN V) :
    derInf hθ (∑ i ∈ s, a i • b i) = ∑ i ∈ s, (a i : ℂ) • derInf hθ (b i) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    have := derInf_smul hθ 0 (0 : LieN V)
    simpa using this
  | insert i s hi ih => rw [Finset.sum_insert hi, Finset.sum_insert hi, derInf_add, derInf_smul, ih]

theorem bd_inf (μ : Measure (GA D V)) [μ.IsHaarMeasure] (hθ : IsInfFam θ) (E : Set (Mc θ V))
    (h : ∀ (τ : D.what₂.Tau) (Z : Matrix (Fin V.rank) (Fin V.rank) ℂ) (hZ : Z ∈ lieAt V τ),
      Bd μ hθ E (der hθ τ hZ)) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ X : LieN V, ∀ φ ∈ E, ‖io μ hθ (derInf hθ X φ)‖ ≤ C * ‖X‖ * ‖io μ hθ φ‖ := by
  haveI : FiniteDimensional ℝ (LieN V) :=
    inferInstanceAs (FiniteDimensional ℝ (∀ τ : D.what₂.Tau, (GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies.lieU (gramAt D V τ)).toSubmodule))
  let b := Module.finBasis ℝ (LieN V)
  have hb : ∀ i, Bd μ hθ E (derInf hθ (b i)) := fun i => Bd.sum _ fun τ _ => h τ _ _
  choose Λ hΛ0 hΛ using hb
  let f := fun i => LinearMap.toContinuousLinearMap (b.coord i)
  refine ⟨∑ i, ‖f i‖ * Λ i, Finset.sum_nonneg fun i _ => mul_nonneg (norm_nonneg _) (hΛ0 i), fun X φ hφ => ?_⟩
  have e : derInf hθ X = ∑ i, ((f i X : ℝ) : ℂ) • derInf hθ (b i) := by
    conv_lhs => rw [← b.sum_repr X]
    rw [derInf_sum]
    rfl

  rw [e, LinearMap.sum_apply, map_sum, Finset.sum_mul, Finset.sum_mul]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [LinearMap.smul_apply, map_smul, norm_smul, Complex.norm_real]
  calc ‖f i X‖ * ‖io μ hθ (derInf hθ (b i) φ)‖ ≤ (‖f i‖ * ‖X‖) * (Λ i * ‖io μ hθ φ‖) :=
        mul_le_mul ((f i).le_opNorm X) (hΛ i φ hφ) (norm_nonneg _) (by positivity)
    _ = _ := by ring

theorem Rcusp_io_of_fixed (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (hθ : IsInfFam θ)
    (φ : Mc θ V) (k : GA D V) (hk : ∀ g, φ.1 (g * k) = φ.1 g) : Rcusp V μ k (io μ hθ φ) = io μ hθ φ := by
  have hL : ∀ {f g : GA D V → ℂ} (hf : GlobalTheory.AutomorphicL2Unitary.MemL2Quotient (GQ V) μ f) (hg : GlobalTheory.AutomorphicL2Unitary.MemL2Quotient (GQ V) μ g), f = g →
      hf.toL2 = hg.toL2 := by
    rintro f g hf hg rfl
    rfl
  have h := memL2_of_cusp_form (μ := μ) (GlobalTheory.Grow.cuspRapidDecay_of_bound GlobalTheory.CuspGeo.cuspDecayBound) hθ
    (mem_cuspForms.1 φ.2).1
  refine Subtype.ext ?_
  exact (GlobalTheory.AutomorphicL2Unitary.right_translate_toL2 h k).trans (hL _ h (funext hk))

theorem half_le_re_inner {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] {u v : H} (h1 : ‖v‖ = ‖u‖)
    (h2 : ‖v - u‖ ≤ ‖u‖) : (1 / 2 : ℝ) * ‖u‖ ^ 2 ≤ (⟪u, v⟫_ℂ).re := by
  have e := norm_sub_sq (𝕜 := ℂ) v u
  have e2 : RCLike.re ⟪v, u⟫_ℂ = (⟪u, v⟫_ℂ).re := inner_re_symm (𝕜 := ℂ) v u
  rw [e2, h1] at e
  have := pow_le_pow_left₀ (norm_nonneg _) h2 2
  nlinarith

theorem lie_conj {τ : D.what₂.Tau} {e : Fin V.rank → Bool} {P y : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hP : IsUnit P)
    (hfr : Pᴴ * Formalism.REAL.Jm e * P = gramAt D V τ) (hy : IsKLie e y) : P⁻¹ * y * P ∈ lieAt V τ := by
  have hd : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).1 hP
  have h1 : (P⁻¹)ᴴ * Pᴴ = 1 := by rw [← conjTranspose_mul, mul_nonsing_inv _ hd, conjTranspose_one]
  have h0 : yᴴ * Formalism.REAL.Jm e + Formalism.REAL.Jm e * y = 0 := by
    rw [hy.1, Matrix.neg_mul, hy.2, neg_add_cancel]
  change (P⁻¹ * y * P)ᴴ * gramAt D V τ + gramAt D V τ * (P⁻¹ * y * P) = 0
  calc _ = Pᴴ * (yᴴ * ((P⁻¹)ᴴ * Pᴴ) * Formalism.REAL.Jm e + Formalism.REAL.Jm e * (P * P⁻¹) * y) * P := by
        rw [← hfr]; simp only [conjTranspose_mul, Matrix.mul_assoc, Matrix.add_mul, Matrix.mul_add]
    _ = 0 := by rw [h1, mul_nonsing_inv _ hd, Matrix.mul_one, Matrix.mul_one, h0, Matrix.mul_zero, Matrix.zero_mul]

theorem Rcusp_mul_apply (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (a b : GA D V)
    (u : L2cusp V μ) : Rcusp V μ (a * b) u = Rcusp V μ a (Rcusp V μ b u) :=
  congrArg (fun T : L2cusp V μ →L[ℂ] L2cusp V μ => T u) ((Rcusp V μ).map_mul a b)

theorem half_of_bound (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (hθ : IsInfFam θ) (φ : Mc θ V)
    (X : LieN V) (k : GA D V) (hk : ∀ g, φ.1 (g * k) = φ.1 g)
    (hb : ‖io μ hθ (derInf hθ X φ)‖ ≤ ‖io μ hθ φ‖) :
    (1 / 2 : ℝ) * ‖io μ hθ φ‖ ^ 2 ≤ (⟪io μ hθ φ, Rcusp V μ (expInf θ V X * k) (io μ hθ φ)⟫_ℂ).re := by
  have e : Rcusp V μ (expInf θ V X * k) (io μ hθ φ) = Rcusp V μ (expInf θ V X) (io μ hθ φ) :=
    (Rcusp_mul_apply μ _ _ _).trans (congrArg _ (Rcusp_io_of_fixed μ hθ φ k hk))
  rw [e]
  exact half_le_re_inner ((GlobalTheory.Cusp.isUnitaryRep_Rcusp V μ).1 _ _) ((GlobalTheory.T.cusp_translate_bounded_by_derivative D θ hθ V μ X φ).trans hb)

theorem finite_of_bound (μ : Measure (GA D V)) [μ.IsHaarMeasure] [μ.IsMulRightInvariant] (hθ : IsInfFam θ)
    (U : Subgroup (GA D V)) (hU : IsOpen (U : Set (GA D V))) (E : Submodule ℂ (Mc θ V))
    (hfix : ∀ φ ∈ E, ∀ k ∈ U, k ∈ GfC V → ∀ g, φ.1 (g * k) = φ.1 g) {C : ℝ} (hC0 : 0 ≤ C)
    (hC : ∀ X : LieN V, ∀ φ ∈ E, ‖io μ hθ (derInf hθ X φ)‖ ≤ C * ‖X‖ * ‖io μ hθ φ‖) :
    FiniteDimensional ℂ E := by
  have hδ : (0 : ℝ) < 1 / (C + 1) := by positivity
  obtain ⟨N, hN, hlog⟩ := GlobalTheory.T.archimedean_neighbourhood_exp_surjective D θ hθ V _ hδ
  have hM := GlobalTheory.CompanionTheory.CuspNbhd.real_mul_level_mem_nhds D V U hU N hN
  have hfd : FiniteDimensional ℂ (E.map (io μ hθ)) := by
    refine GlobalTheory.CompanionTheory.CuspFin.finiteDimensional_of_coercive GlobalTheory.CuspGeo.cuspDecayBound μ _ hM ?_
    intro g hg u hu
    obtain ⟨r, k, hr, hrN, hk, hkf, hgr⟩ := hg
    obtain ⟨φ, hφ, hφu⟩ := hu
    obtain ⟨X, hX, hXr⟩ := hlog r hrN hr
    rw [hgr, ← hXr, ← hφu]
    refine half_of_bound μ hθ φ X k (hfix φ hφ k hk hkf) ((hC X φ hφ).trans ?_)
    have h1 : C * ‖X‖ ≤ 1 := by
      have h2 : ‖X‖ * (C + 1) ≤ 1 := by
        have := mul_lt_mul_of_pos_right hX (show 0 < C + 1 by positivity)
        rw [one_div, inv_mul_cancel₀ (by positivity)] at this
        exact this.le
      nlinarith [norm_nonneg X]
    exact (mul_le_of_le_one_left (norm_nonneg _) h1)
  exact LinearEquiv.finiteDimensional (Submodule.equivMapOfInjective (io μ hθ) (io_injective μ hθ) E).symm

theorem cuspFinite : ∀ (D : D7) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)), IsInfFam θ → ∀ (V : HSp D) (U : Subgroup (GA D V)), IsOpen (U : Set (GA D V)) → ∀ (ε : D.what₂.Tau → Fin V.rank → Bool) (fr : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ), GlobalTheory.Published.AutFin.IsFrameFam V ε fr → ∀ (W : D.what₂.Tau → Type) [∀ τ, AddCommGroup (W τ)] [∀ τ, Module ℂ (W τ)] [∀ τ, FiniteDimensional ℂ (W τ)] (ρ : ∀ τ, Representation ℂ (Formalism.REAL.KG (ε τ)) (W τ)), (∀ τ, GlobalTheory.Published.AutFin.IsContRep (ρ τ)) → ∀ c : D.what₂.Tau → ℕ → ℂ, FiniteDimensional ℂ (Submodule.span ℂ {φ | φ ∈ GlobalTheory.Published.AutFin.forms θ V U ε fr ρ c ∧ IsCuspFun V φ}) := by
  intro D θ hθ V U hU ε fr hfr W _ _ _ ρ hρ c
  obtain ⟨μ, -, hμ, -⟩ := PositivityTheory.MatrixIdentityOffBase.exists_meas V
  haveI := hμ
  haveI := GlobalTheory.AdelicPointsUnimod.isMulRightInvariant_of_isHaarMeasure D V μ hμ
  let E : Submodule ℂ (Mc θ V) :=
    { carrier := {φ | φ.1 ∈ forms θ V U ε fr ρ c}
      add_mem' := by
        intro f g hf hg
        obtain ⟨-, f2, f3, f4⟩ := hf
        obtain ⟨-, g2, g3, g4⟩ := hg
        refine ⟨(mem_Mc_iff.1 (f + g).2).1, fun u hu hu' x => ?_, fun τ x => ?_, fun τ k => ?_⟩
        · simp only [Submodule.coe_add, Pi.add_apply, f2 u hu hu' x, g2 u hu hu' x]
        · exact (coeffSpan (ρ τ)).add_mem (f3 τ x) (g3 τ x)
        · rw [Submodule.coe_add, (linOnSm_gelf (θ := θ) (V := V) τ k).add f.1 (smooth_of_mem f) g.1 (smooth_of_mem g),
            f4, g4, smul_add]
      zero_mem' := by
        refine ⟨(mem_Mc_iff.1 (0 : Mc θ V).2).1, fun _ _ _ _ => rfl, fun τ x => (coeffSpan (ρ τ)).zero_mem, fun τ k => ?_⟩
        have := (linOnSm_gelf (θ := θ) (V := V) τ k).smul 0 0
        simpa using this
      smul_mem' := by
        intro a f hf
        obtain ⟨-, f2, f3, f4⟩ := hf
        refine ⟨(mem_Mc_iff.1 (a • f).2).1, fun u hu hu' x => ?_, fun τ x => ?_, fun τ k => ?_⟩
        · simp only [Submodule.coe_smul, Pi.smul_apply, f2 u hu hu' x]
        · exact (coeffSpan (ρ τ)).smul_mem a (f3 τ x)
        · rw [Submodule.coe_smul, (linOnSm_gelf (θ := θ) (V := V) τ k).smul, f4, smul_comm] }
  have hgr : ∀ (τ : D.what₂.Tau) (Z : Matrix (Fin V.rank) (Fin V.rank) ℂ) (hZ : Z ∈ lieAt V τ),
      Bd μ hθ (E : Set (Mc θ V)) (der hθ τ hZ) := by
    intro τ Z hZ
    obtain ⟨hPu, hPg⟩ := hfr τ
    obtain ⟨n₁, n₂, X, y, hX, hy, hspan, hg⟩ := GlobalTheory.T.lie_algebra_spanned_by_compact_and_frame D θ hθ V τ (ε τ) (fr τ) hPu hPg
    have hYl : ∀ b, (fr τ)⁻¹ * y b * fr τ ∈ lieAt V τ := fun b => lie_conj hPu hPg (hy b)
    have bK : ∀ b, Bd μ hθ (E : Set (Mc θ V)) (der hθ τ (hYl b)) := fun b =>
      (bd_ktype μ hθ hPu (ρ τ) (hρ τ) (hy b) (hYl b)).mono fun φ hφ => hφ.2.2.1 τ
    have bX := bd_of_casimir μ hθ (E : Set (Mc θ V)) hX hYl (c τ 1) (fun φ hφ => by
      have h1 := hφ.2.2.2 τ 1
      rw [hg φ.1 (smooth_of_mem φ)] at h1
      refine Subtype.ext ?_
      rw [Submodule.coe_smul, ← h1]
      simp [Submodule.coe_sum, der]) bK
    obtain ⟨_, b'⟩ := bd_span μ hθ (E : Set (Mc θ V))
      (Set.range X ∪ Set.range fun b => (fr τ)⁻¹ * y b * fr τ) (by
        rintro _ (⟨a, rfl⟩ | ⟨b, rfl⟩)
        · exact ⟨hX a, bX a⟩
        · exact ⟨hYl b, bK b⟩) (hspan Z hZ)
    exact b'
  obtain ⟨C, hC0, hC⟩ := bd_inf μ hθ (E : Set (Mc θ V)) hgr
  have hfE : FiniteDimensional ℂ E := finite_of_bound μ hθ U hU E (fun φ hφ => hφ.2.1) hC0 hC
  have hle : Submodule.span ℂ {φ | φ ∈ forms θ V U ε fr ρ c ∧ IsCuspFun V φ} ≤ E.map (Mc θ V).subtype :=
    Submodule.span_le.2 fun x hx => ⟨⟨x, mem_Mc_iff.2 ⟨hx.1.1, hx.2⟩⟩, hx.1, rfl⟩
  exact Submodule.finiteDimensional_of_le hle

end GlobalTheory.CompanionTheory.HCCusp

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IteratedDerivOneP =====
