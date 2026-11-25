module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.MeasureTheory.Integral.CircleIntegral
public import Mathlib.Analysis.Calculus.Deriv.Polynomial
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianCharacterContinuousUnit
public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.HeckeEta
public import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.LeftInvOfIsSection
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContinuousLeviBlock
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SiegelParabolicUnnMatrixBlockUpperTriangular
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Group.FundamentalDomain
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainFourierUnfolding
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ModerateGrowthSchwartz
public import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.CoefDataExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCharacterCellFactorization
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousHalfTr
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousHermPart
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCellInvariantUnipotent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeisenbergCentreRationalFormStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeisenbergCosetsParamRationalStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingHolds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHolds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixInjective
public import Development.AbelianVarietyTheory.BlockTheory.SiegelEisenstein.GramMatrixAdjoint
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RationalAdelicMatricesSelfAnnihilatorStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BruhatImpliesFieldGeneration
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinBruhatDecomposition
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinRationalPoints
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HalfTrAddSwap
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RationalGroupInductionGenerators
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaSumInvariantWeylInvolution
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TraceInnerMul
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiEisenstein
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightFunctionsExist
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacobiMapsExist
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PolarPartIdentity
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RegularSectionOfHeights
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Topology.Compactness.Paracompact
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.AdelicConjTransposeBlockMatrixTwoByTwoFin
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.EisCellsDefs
import Formalism.LocalRingCardinality.DataHost
import Mathlib.Topology.UniformSpace.Uniformizable
import Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift
import Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.BigCellDefs
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.ThetaOrbits
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.RedLem
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE
import Mathlib.RingTheory.PiTensorProduct
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientDataExistsStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeckeCharacterEtaCondition
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PartialConstantFourierCoefficient
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PartialConstantTermBound
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueMeasureIdentity
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SphericalBoundOfHeights
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTotalOfHeckeEta

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CircleZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiCoefficientOfBound, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PoleReality, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RightIdentityStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHolomorphyOfHeights, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummable, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummableStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSums, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSumsStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCell, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCellStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiUnfolding, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHoldsStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTwistIdentity, Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.SphBound

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CircleZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CircleZero", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.MeasureTheory.Integral.CircleIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Polynomial\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Metric Set Filter Topology

namespace GlobalTheory.CompanionTheory.CfFJ

structure Fam {X : Type*} [TopologicalSpace X] (U : Set ℂ) (f : ℂ → X → ℂ) : Prop where
  cont : ContinuousOn (fun q : ℂ × X => f q.1 q.2) (U ×ˢ univ)
  hol : ∀ x, DifferentiableOn ℂ (f · x) U
  bd : ∀ K : Set ℂ, K ⊆ U → IsCompact K → ∃ B : ℝ, ∀ w ∈ K, ∀ x, ‖f w x‖ ≤ B

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z] {U : Set ℂ}

theorem Fam.comp {f : ℂ → X → ℂ} (h : Fam U f) {φ : Z → X} (hφ : Continuous φ) : Fam U (fun w z => f w (φ z)) := by
  refine ⟨?_, fun z => h.hol (φ z), ?_⟩
  · exact h.cont.comp (continuous_fst.prodMk (hφ.comp continuous_snd)).continuousOn
      (fun q hq => ⟨hq.1, mem_univ _⟩)
  · intro K hK hc
    obtain ⟨B, hB⟩ := h.bd K hK hc
    exact ⟨B, fun w hw z => hB w hw (φ z)⟩

theorem Fam.slice {f : ℂ → X → ℂ} (h : Fam U f) {w : ℂ} (hw : w ∈ U) : Continuous (f w) :=
  h.cont.comp_continuous (f := fun x => (w, x)) (by fun_prop) (fun _ => ⟨hw, mem_univ _⟩)

variable [MeasurableSpace Y] [OpensMeasurableSpace Y] {ν : Measure Y} {κ : Y → ℂ}

theorem Fam.swap [SFinite ν] {g : ℂ → Y → ℂ} (h : Fam U g) (hκ : Integrable κ ν) {c : ℂ} {R : ℝ} (hR : 0 < R)
    (hS : sphere c R ⊆ U) {a : ℂ → ℂ} (ha : ContinuousOn a (sphere c R)) :
    ∫ y, (∮ w in C(c, R), a w * g w y) * κ y ∂ν = ∮ w in C(c, R), a w * ∫ y, g w y * κ y ∂ν := by
  have cm : ∀ θ, circleMap c R θ ∈ sphere c R := circleMap_mem_sphere c hR.le
  have hcm : Continuous (circleMap c R) := continuous_circleMap c R
  obtain ⟨A, hA⟩ := (isCompact_sphere c R).exists_bound_of_continuousOn ha
  obtain ⟨B, hB⟩ := h.bd _ hS (isCompact_sphere c R)
  set Φ : ℝ → Y → ℂ := fun θ y => deriv (circleMap c R) θ • (a (circleMap c R θ) * g (circleMap c R θ) y) with hΦ
  have hΦc : Continuous fun q : Y × ℝ => Φ q.2 q.1 := by
    have h1 : Continuous fun q : Y × ℝ => g (circleMap c R q.2) q.1 :=
      h.cont.comp_continuous (f := fun q : Y × ℝ => (circleMap c R q.2, q.1))
        ((hcm.comp continuous_snd).prodMk continuous_fst) (fun q => ⟨hS (cm _), mem_univ _⟩)
    have h2 : Continuous fun θ => a (circleMap c R θ) := ha.comp_continuous hcm cm
    have h3 : Continuous fun θ => deriv (circleMap c R) θ := by
      simp only [deriv_circleMap]
      exact (continuous_circleMap 0 R).mul continuous_const
    simp only [hΦ, smul_eq_mul]
    exact (h3.comp continuous_snd).mul ((h2.comp continuous_snd).mul h1)
  have hΦb : ∀ θ y, ‖Φ θ y‖ ≤ |R| * (A * B) := by
    intro θ y
    simp only [hΦ, smul_eq_mul, norm_mul, deriv_circleMap, norm_circleMap_zero, Complex.norm_I, mul_one]
    have hb := hB _ (cm θ) y
    gcongr
    · exact (norm_nonneg _).trans (hA _ (cm θ))
    · exact hA _ (cm θ)
  have hint : Integrable (Function.uncurry fun (y : Y) (θ : ℝ) => Φ θ y * κ y)
      (ν.prod (volume.restrict (Ioc 0 (2 * Real.pi)))) := by
    have h0 : Integrable (fun q : Y × ℝ => κ q.1 * (1 : ℂ)) (ν.prod (volume.restrict (Ioc 0 (2 * Real.pi)))) :=
      hκ.mul_prod (integrable_const (1 : ℂ))
    have h1 := h0.bdd_mul (f := fun q : Y × ℝ => Φ q.2 q.1) (c := |R| * (A * B)) hΦc.aestronglyMeasurable
      (Eventually.of_forall fun q => hΦb _ _)
    refine h1.congr (Eventually.of_forall fun q => ?_)
    simp [Function.uncurry]
  have hpos : (0 : ℝ) ≤ 2 * Real.pi := by positivity
  calc ∫ y, (∮ w in C(c, R), a w * g w y) * κ y ∂ν
      = ∫ y, ∫ θ in Ioc 0 (2 * Real.pi), Φ θ y * κ y ∂volume ∂ν := by
        refine integral_congr_ae (Eventually.of_forall fun y => ?_)
        simp only [circleIntegral, intervalIntegral.integral_of_le hpos, integral_mul_const, hΦ]
    _ = ∫ θ in Ioc 0 (2 * Real.pi), ∫ y, Φ θ y * κ y ∂ν := integral_integral_swap hint
    _ = ∮ w in C(c, R), a w * ∫ y, g w y * κ y ∂ν := by
        simp only [circleIntegral, intervalIntegral.integral_of_le hpos]
        refine integral_congr_ae (Eventually.of_forall fun θ => ?_)
        simp only [hΦ, smul_eq_mul, mul_assoc, integral_const_mul]

theorem Fam.stage [FirstCountableTopology X] [SFinite ν] (hU : IsOpen U) {f : ℂ → X × Y → ℂ} (h : Fam U f)
    (hκ : Integrable κ ν) : Fam U (fun w x => ∫ y, f w (x, y) * κ y ∂ν) := by
  have hsl : ∀ {w : ℂ}, w ∈ U → ∀ x, Continuous fun y => f w (x, y) := fun hw x =>
    (h.slice hw).comp (by fun_prop)
  have hcont : ContinuousOn (fun q : ℂ × X => ∫ y, f q.1 (q.2, y) * κ y ∂ν) (U ×ˢ univ) := by
    intro q hq
    have hqU : q.1 ∈ U := hq.1
    obtain ⟨r, hr, hrU⟩ := nhds_basis_closedBall.mem_iff.1 (hU.mem_nhds hqU)
    obtain ⟨B, hB⟩ := h.bd _ hrU (isCompact_closedBall _ _)
    have hnear : ∀ᶠ u : ℂ × X in 𝓝 q, u.1 ∈ ball q.1 r :=
      continuous_fst.continuousAt.eventually (isOpen_ball.mem_nhds (mem_ball_self hr))
    refine ContinuousAt.continuousWithinAt (continuousAt_of_dominated (bound := fun y => B * ‖κ y‖) ?_ ?_ ?_ ?_)
    · filter_upwards [hnear] with u hu
      exact (hsl (hrU (ball_subset_closedBall hu)) u.2).aestronglyMeasurable.mul hκ.aestronglyMeasurable
    · filter_upwards [hnear] with u hu
      refine Eventually.of_forall fun y => ?_
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_right (hB _ (ball_subset_closedBall hu) _) (norm_nonneg _)
    · exact hκ.norm.const_mul B
    · refine Eventually.of_forall fun y => ?_
      have h1 : ContinuousAt (fun q : ℂ × (X × Y) => f q.1 q.2) (q.1, (q.2, y)) :=
        h.cont.continuousAt ((hU.prod isOpen_univ).mem_nhds ⟨hqU, mem_univ _⟩)
      have h2 : ContinuousAt (fun u : ℂ × X => (u.1, (u.2, y))) q := by fun_prop
      exact (ContinuousAt.comp (f := fun u : ℂ × X => (u.1, (u.2, y))) h1 h2).mul continuousAt_const
  refine ⟨hcont, ?_, ?_⟩
  · intro x w₀ hw₀
    refine DifferentiableAt.differentiableWithinAt ?_
    obtain ⟨r, hr, hrU⟩ := nhds_basis_closedBall.mem_iff.1 (hU.mem_nhds hw₀)
    have hg : Fam U fun w y => f w (x, y) := h.comp (φ := fun y => (x, y)) (by fun_prop)
    have hS : sphere w₀ r ⊆ U := sphere_subset_closedBall.trans hrU
    have hQc : ContinuousOn (fun w => ∫ y, f w (x, y) * κ y ∂ν) U :=
      hcont.comp (Continuous.continuousOn (f := fun w : ℂ => (w, x)) (by fun_prop)) (fun w hw => ⟨hw, mem_univ _⟩)
    set Q : ℂ → ℂ := fun w => ∫ y, f w (x, y) * κ y ∂ν with hQ
    have hci : CircleIntegrable Q w₀ ((⟨r, hr.le⟩ : NNReal) : ℝ) := (hQc.mono hS).circleIntegrable hr.le
    have hps := hasFPowerSeriesOn_cauchy_integral hci (show (0 : NNReal) < ⟨r, hr.le⟩ from hr)
    refine hps.analyticAt.differentiableAt.congr_of_eventuallyEq ?_
    filter_upwards [isOpen_ball.mem_nhds (mem_ball_self hr)] with w hw
    have hwS : ∀ v ∈ sphere w₀ r, v ≠ w := by
      rintro v hv rfl
      exact (ne_of_lt (mem_ball.1 hw)) (mem_sphere.1 hv)
    have hcauchy : ∀ y, ∮ v in C(w₀, r), ((2 * Real.pi * Complex.I)⁻¹ * (v - w)⁻¹) * f v (x, y) = f w (x, y) := by
      intro y
      have h1 := Complex.circleIntegral_sub_inv_smul_of_differentiable_on_off_countable (s := ∅) countable_empty hw
        (f := fun v => f v (x, y)) ((hg.hol y).continuousOn.mono hrU)
        (fun v hv => (hg.hol y).differentiableAt (hU.mem_nhds (hrU (ball_subset_closedBall hv.1))))
      simp only [smul_eq_mul] at h1
      simp only [mul_assoc ((2 * (Real.pi : ℂ) * Complex.I)⁻¹), circleIntegral.integral_const_mul]
      rw [h1, ← mul_assoc, inv_mul_cancel₀ Complex.two_pi_I_ne_zero, one_mul]
    have hsw := hg.swap hκ hr hS (a := fun v => (2 * Real.pi * Complex.I)⁻¹ * (v - w)⁻¹)
      (continuousOn_const.mul ((continuousOn_id.sub continuousOn_const).inv₀ fun v hv => sub_ne_zero.2 (hwS v hv)))
    simp only [hcauchy] at hsw
    simp only [smul_eq_mul]
    change Q w = _
    rw [hQ]
    simp only
    rw [hsw]
    simp only [mul_assoc ((2 * (Real.pi : ℂ) * Complex.I)⁻¹), circleIntegral.integral_const_mul]
    rfl
  · intro K hK hc
    obtain ⟨B, hB⟩ := h.bd K hK hc
    refine ⟨∫ y, B * ‖κ y‖ ∂ν, fun w hw x => ?_⟩
    refine norm_integral_le_of_norm_le (hκ.norm.const_mul B) (Eventually.of_forall fun y => ?_)
    rw [norm_mul]
    exact mul_le_mul_of_nonneg_right (hB w hw _) (norm_nonneg _)

theorem circle_cont {e : ℂ → Z → ℂ} (hc : ContinuousOn (fun q : ℂ × Z => e q.1 q.2) (U ×ˢ univ)) {c : ℂ} {R : ℝ} (hR : 0 ≤ R)
    (hS : sphere c R ⊆ U) {a : ℂ → ℂ} (ha : ContinuousOn a (sphere c R)) :
    Continuous fun z => ∮ w in C(c, R), a w * e w z := by
  have cm : ∀ θ, circleMap c R θ ∈ sphere c R := circleMap_mem_sphere c hR
  have hcm : Continuous (circleMap c R) := continuous_circleMap c R
  have h1 : Continuous fun q : Z × ℝ => e (circleMap c R q.2) q.1 :=
    hc.comp_continuous (f := fun q : Z × ℝ => (circleMap c R q.2, q.1))
      ((hcm.comp continuous_snd).prodMk continuous_fst) (fun q => ⟨hS (cm _), mem_univ _⟩)
  have h2 : Continuous fun θ => a (circleMap c R θ) := ha.comp_continuous hcm cm
  have h3 : Continuous fun θ => deriv (circleMap c R) θ := by
    simp only [deriv_circleMap]
    exact (continuous_circleMap 0 R).mul continuous_const
  simp only [circleIntegral]
  refine intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' ?_ _ _
  simp only [Function.uncurry_def, smul_eq_mul]
  exact (h3.comp continuous_snd).mul ((h2.comp continuous_snd).mul h1)

theorem circle_zero {e : ℂ → ℂ} (hU : IsOpen U) (he : DifferentiableOn ℂ e U) {d : Polynomial ℂ} (hd : d ≠ 0) {s₀ : ℂ} {ε : ℝ}
    (hε : 0 < ε) (hB : closedBall s₀ ε ⊆ U) (hroot : ∀ z ∈ closedBall s₀ ε, z ≠ s₀ → d.eval z ≠ 0) {j : ℕ}
    (hj : d.rootMultiplicity s₀ ≤ j) : ∮ z in C(s₀, ε), (z - s₀) ^ j * (e z / d.eval z) = 0 := by
  obtain ⟨q, hq, hnd⟩ := Polynomial.exists_eq_pow_rootMultiplicity_mul_and_not_dvd d hd s₀
  set m := d.rootMultiplicity s₀ with hm
  have hev : ∀ z, d.eval z = (z - s₀) ^ m * q.eval z := fun z => by
    conv_lhs => rw [hq]
    simp
  have hq0 : ∀ z ∈ closedBall s₀ ε, q.eval z ≠ 0 := by
    intro z hz h0
    by_cases hzs : z = s₀
    · subst hzs
      exact hnd (Polynomial.dvd_iff_isRoot.2 h0)
    · exact hroot z hz hzs (by rw [hev, h0, mul_zero])
  have hsub : ∀ z ∈ sphere s₀ ε, z ≠ s₀ := by
    rintro z hz rfl
    simp [hε.ne] at hz
  have hcongr : ∮ z in C(s₀, ε), (z - s₀) ^ j * (e z / d.eval z) =
      ∮ z in C(s₀, ε), (z - s₀) ^ (j - m) * (e z / q.eval z) := by
    refine circleIntegral.integral_congr hε.le fun z hz => ?_
    have h1 : z - s₀ ≠ 0 := sub_ne_zero.2 (hsub z hz)
    have h2 := hq0 z (sphere_subset_closedBall hz)
    rw [hev, show j = (j - m) + m by omega, pow_add, Nat.add_sub_cancel]
    field_simp
  rw [hcongr]
  have hdiff : ∀ z ∈ closedBall s₀ ε, DifferentiableAt ℂ (fun z => (z - s₀) ^ (j - m) * (e z / q.eval z)) z := by
    intro z hz
    have h1 : DifferentiableAt ℂ e z := he.differentiableAt (hU.mem_nhds (hB hz))
    have h2 : DifferentiableAt ℂ (fun z => q.eval z) z := q.differentiable.differentiableAt
    exact ((differentiableAt_id.sub_const s₀).pow _).mul (h1.div h2 (hq0 z hz))
  exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable hε.le countable_empty
    (fun z hz => (hdiff z hz).continuousAt.continuousWithinAt)
    (fun z hz => hdiff z (ball_subset_closedBall hz.1))

end GlobalTheory.CompanionTheory.CfFJ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CircleZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiCoefficientOfBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiCoefficientOfBound", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CircleZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianCharacterContinuousUnit\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.CfFJ

open Metric Set

variable {D : D7} {n ρ p : ℕ}

theorem conj_chz (ψ : AddChar (AF D.host.F) ℂ) (hψ : IsCharAF D.host.F ψ) (b₀ : HermE D ρ) :
    Continuous (fun z : hermA D ρ => conj (chz ψ b₀ z)) ∧ ∀ z : hermA D ρ, ‖conj (chz ψ b₀ z)‖ = 1 := by
  obtain ⟨hc, -⟩ := GlobalTheory.CompanionTheory.CoefWeight.continuous_norm_coefChar D ρ ψ hψ b₀
  have h1 : ∀ z : hermA D ρ, conj (chz ψ b₀ z) =
      ψ (-halfTr (Matrix.trace (HMul.hMul (b₀.1.map (incA D)) z.1 : Mx D ρ ρ))) := by
    intro z
    rw [AddChar.map_neg_eq_inv, Complex.inv_eq_conj (hψ.2.1 _)]
    rfl
  refine ⟨by simpa only [h1] using hc, fun z => ?_⟩
  rw [RCLike.norm_conj]
  exact hψ.2.1 _

theorem cf_eq (d : Polynomial ℂ) (E : ℂ → G D n → ℂ) (s₀ : ℂ) (ε : ℝ) (k : ℕ) (g : G D n) :
    cf d E s₀ ε k g = ∮ w in C(s₀, ε),
      ((2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) / d.eval w)) * E w g := by
  have h : ∀ w : ℂ, ((2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) / d.eval w)) * E w g =
      (2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) * (E w g / d.eval w)) := fun w => by ring
  simp only [h, circleIntegral.integral_const_mul, cf]

theorem ker_eq (d : Polynomial ℂ) (F : ℂ → ℂ) (s₀ : ℂ) (ε : ℝ) (k : ℕ) :
    ∮ w in C(s₀, ε), ((2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) / d.eval w)) * F w =
      (2 * Real.pi * Complex.I)⁻¹ * ∮ w in C(s₀, ε), (w - s₀) ^ (k - 1) * (F w / d.eval w) := by
  have h : ∀ w : ℂ, ((2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) / d.eval w)) * F w =
      (2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) * (F w / d.eval w)) := fun w => by ring
  simp only [h, circleIntegral.integral_const_mul]


set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 1000000 in
theorem cfFJ_of_pcBound : PcBound → CfFJ := by
  intro hPc D n H φ s₀ U d E σ hC ε hR
  obtain ⟨hε, hB, hroot⟩ := hR
  have hU := hC.isOpen
  have hS : sphere s₀ ε ⊆ U := sphere_subset_closedBall.trans hB
  have hsne : ∀ z ∈ sphere s₀ ε, z ≠ s₀ := by
    rintro z hz rfl
    simp [hε.ne] at hz
  set a : ℕ → ℂ → ℂ := fun k w => (2 * Real.pi * Complex.I)⁻¹ * ((w - s₀) ^ (k - 1) / d.eval w) with ha_def
  have ha : ∀ k, ContinuousOn (a k) (sphere s₀ ε) := fun k =>
    continuousOn_const.mul (((continuousOn_id.sub continuousOn_const).pow _).div
      d.continuous.continuousOn (fun z hz => hroot z (sphere_subset_closedBall hz) (hsne z hz)))
  have hcf : ∀ k g, cf d E s₀ ε k g = ∮ w in C(s₀, ε), a k w * E w g := fun k g => cf_eq d E s₀ ε k g
  refine ⟨fun k => ⟨?_, ?_⟩, ⟨d.rootMultiplicity s₀ + 1, fun k hk => funext fun g => ?_⟩, ?_⟩
  · have : cf d E s₀ ε k = fun g => ∮ w in C(s₀, ε), a k w * E w g := funext (hcf k)
    rw [this]
    exact circle_cont hC.cont hε.le hS (ha k)
  · intro γ hγ g
    rw [hcf, hcf]
    exact circleIntegral.integral_congr hε.le fun w hw => by
      simp only [hC.inv w (hS hw) γ hγ g]
  · have h0 := circle_zero hU (hC.hol g) hC.ne hε hB hroot (j := k - 1) (by omega)
    simp only [cf, h0, mul_zero, Pi.zero_apply]
  · intro ρ p hn M m ψ hψ b₀ g η hη
    obtain ⟨-, hcov⟩ := hPc D n ρ p hn M m ψ hψ b₀
    obtain ⟨C, hCc, hcover, -⟩ := hcov g
    obtain ⟨i1, i2, i3, i4, -, -⟩ := lattice_Mx D ρ p
    haveI : BorelSpace (Mx D ρ p) := ⟨rfl⟩
    haveI : BorelSpace (Mx D ρ ρ) := ⟨rfl⟩
    haveI : BorelSpace (hermA D ρ) := Subtype.borelSpace _
    haveI : FirstCountableTopology (Mx D ρ p) := inferInstance
    haveI : FirstCountableTopology (Mx D ρ p × Mx D ρ p) := inferInstance
    obtain ⟨hμh, -, hμ1⟩ := m.hμ
    obtain ⟨-, -, hl1⟩ := m.hz
    haveI : SFinite m.μ := inferInstance
    haveI : IsFiniteMeasure (m.lz.restrict m.𝓖) := ⟨by rw [Measure.restrict_apply_univ, hl1]; exact ENNReal.one_lt_top⟩
    haveI : IsFiniteMeasure (m.μ.restrict m.𝓕) := ⟨by rw [Measure.restrict_apply_univ, hμ1]; exact ENNReal.one_lt_top⟩
    obtain ⟨hχc, hχ1⟩ := conj_chz ψ hψ b₀
    have hκ1 : Integrable (fun z : hermA D ρ => conj (chz ψ b₀ z)) (m.lz.restrict m.𝓖) :=
      Integrable.of_bound hχc.aestronglyMeasurable 1 (Eventually.of_forall fun z => (hχ1 z).le)
    have hκ2 : Integrable (fun _ : Mx D ρ p => (1 : ℂ)) (m.μ.restrict m.𝓕) := integrable_const _
    have hκ3 : Integrable (fun y => conj (η y)) m.μ :=
      Complex.conjCLE.toContinuousLinearMap.integrable_comp hη
    set pt : (Mx D ρ p × Mx D ρ p) × hermA D ρ → G D n :=
      fun u => M.nzx u.2 0 * (M.nzx 0 u.1.2 * (M.sh u.1.1 * g)) with hpt_def
    have hpt : Continuous pt :=
      (M.nzx_cont.comp (f := fun u : (Mx D ρ p × Mx D ρ p) × hermA D ρ => (u.2, (0 : Mx D ρ p))) (by fun_prop)).mul
        ((M.nzx_cont.comp (f := fun u : (Mx D ρ p × Mx D ρ p) × hermA D ρ => ((0 : hermA D ρ), u.1.2)) (by fun_prop)).mul
          ((M.sh_cont.comp (f := fun u : (Mx D ρ p × Mx D ρ p) × hermA D ρ => u.1.1) (by fun_prop)).mul continuous_const))
    have h0 : Fam U (fun w u => E w (pt u)) := by
      refine ⟨hC.cont.comp (continuous_fst.prodMk (hpt.comp continuous_snd)).continuousOn
        (fun q hq => ⟨hq.1, mem_univ _⟩), fun u => hC.hol _, fun K hK hKc => ?_⟩
      obtain ⟨B, hBd⟩ := (hKc.prod hCc).exists_bound_of_continuousOn
        (hC.cont.mono (prod_mono hK (subset_univ _)))
      refine ⟨B, fun w hw u => ?_⟩
      obtain ⟨γ, hγ, hmem⟩ := hcover u.2 u.1.2 u.1.1
      rw [show E w (pt u) = E w (γ * pt u) from (hC.inv w (hK hw) γ hγ _).symm]
      exact hBd (w, γ * pt u) ⟨hw, hmem⟩
    have h1 : Fam U (fun w (u : Mx D ρ p × Mx D ρ p) => zc M m ψ b₀ (E w) (M.nzx 0 u.2 * (M.sh u.1 * g))) :=
      h0.stage hU hκ1
    have h2 : Fam U (fun w (y : Mx D ρ p) => pc M m ψ b₀ (E w) (M.sh y * g)) := by
      have := h1.stage hU hκ2
      simp only [mul_one] at this
      exact this
    have h3 : Fam U (fun w (_ : Unit) => FJ M m ψ b₀ (E w) g η) :=
      (h2.comp (φ := fun u : Unit × Mx D ρ p => u.2) continuous_snd).stage hU hκ3
    refine ⟨h3.hol (), fun k => ?_⟩
    have e1 : ∀ y x, zc M m ψ b₀ (cf d E s₀ ε k) (M.nzx 0 x * (M.sh y * g)) =
        ∮ w in C(s₀, ε), a k w * zc M m ψ b₀ (E w) (M.nzx 0 x * (M.sh y * g)) := by
      intro y x
      have := (h0.comp (φ := fun z : hermA D ρ => ((y, x), z)) (by fun_prop)).swap hκ1 hε hS (ha k)
      simp only [zc, hcf, pt] at this ⊢
      exact this
    have e2 : ∀ y, pc M m ψ b₀ (cf d E s₀ ε k) (M.sh y * g) =
        ∮ w in C(s₀, ε), a k w * pc M m ψ b₀ (E w) (M.sh y * g) := by
      intro y
      have := (h1.comp (φ := fun x : Mx D ρ p => (y, x)) (by fun_prop)).swap hκ2 hε hS (ha k)
      simp only [mul_one] at this
      simp only [PositivityTheory.Rg.Rsw.pc, e1]
      exact this
    have e3 : FJ M m ψ b₀ (cf d E s₀ ε k) g η = ∮ w in C(s₀, ε), a k w * FJ M m ψ b₀ (E w) g η := by
      have := h2.swap hκ3 hε hS (ha k)
      simp only [FJ, e2]
      exact this
    rw [e3]
    exact ker_eq d _ s₀ ε k

end GlobalTheory.CompanionTheory.CfFJ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiCoefficientOfBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PoleReality =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PoleReality", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.HeckeEta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\n\n"}
section -- clump:auto
@[expose] public section

open Filter Topology Metric
open PositivityTheory.Rg.Rsw

namespace GlobalTheory.CompanionTheory.PoleBound

theorem factor_of_real_bound (s₀ ε : ℝ) (hε : 0 < ε) :
    ∀ (r : ℕ) (u : ℂ → ℂ), ContinuousOn u (closedBall (s₀ : ℂ) ε) →
      DifferentiableOn ℂ u (ball (s₀ : ℂ) ε) →
      (∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀, ‖u (σ : ℂ) / ((σ : ℂ) - s₀) ^ r‖ ≤ B) →
      ∃ w : ℂ → ℂ, ContinuousOn w (closedBall (s₀ : ℂ) ε) ∧
        DifferentiableOn ℂ w (ball (s₀ : ℂ) ε) ∧
        ∀ z ∈ closedBall (s₀ : ℂ) ε, z ≠ s₀ → u z = (z - s₀) ^ r * w z := by
  intro r
  induction r with
  | zero =>
    intro u hc hd _
    exact ⟨u, hc, hd, fun z _ _ => by simp⟩
  | succ r ih =>
    intro u hc hd hb
    obtain ⟨B, hB⟩ := hb
    have hdiff : DifferentiableAt ℂ u (s₀ : ℂ) := hd.differentiableAt (ball_mem_nhds _ hε)
    have hu0 : u (s₀ : ℂ) = 0 := by
      have hlim₁ : Tendsto (fun σ : ℝ => u (σ : ℂ)) (𝓝[>] s₀) (𝓝 (u (s₀ : ℂ))) :=
        ((hdiff.continuousAt.tendsto).comp (Complex.continuous_ofReal.tendsto s₀)).mono_left
          nhdsWithin_le_nhds
      have hsmall : Tendsto (fun σ : ℝ => B * ‖(σ : ℂ) - s₀‖ ^ (r + 1)) (𝓝[>] s₀) (𝓝 0) := by
        have hcont : Continuous (fun σ : ℝ => B * ‖(σ : ℂ) - s₀‖ ^ (r + 1)) := by fun_prop
        simpa using (hcont.tendsto s₀).mono_left nhdsWithin_le_nhds
      have hlim₂ : Tendsto (fun σ : ℝ => u (σ : ℂ)) (𝓝[>] s₀) (𝓝 0) := by
        refine squeeze_zero_norm' ?_ hsmall
        filter_upwards [hB, self_mem_nhdsWithin] with σ hσB hσ
        have hne : ((σ : ℂ) - s₀) ^ (r + 1) ≠ 0 :=
          pow_ne_zero _ (sub_ne_zero.mpr (Complex.ofReal_injective.ne (show s₀ < σ from hσ).ne'))
        calc ‖u (σ : ℂ)‖ = ‖u (σ : ℂ) / ((σ : ℂ) - s₀) ^ (r + 1)‖ * ‖(σ : ℂ) - s₀‖ ^ (r + 1) := by
              rw [← norm_pow, ← norm_mul, div_mul_cancel₀ _ hne]
          _ ≤ B * ‖(σ : ℂ) - s₀‖ ^ (r + 1) :=
              mul_le_mul_of_nonneg_right hσB (pow_nonneg (norm_nonneg _) _)
      exact tendsto_nhds_unique hlim₁ hlim₂
    have huv : ∀ z, u z = (z - s₀) * dslope u (s₀ : ℂ) z := by
      intro z
      have h := sub_smul_dslope u (s₀ : ℂ) z
      rw [hu0, sub_zero, smul_eq_mul] at h
      exact h.symm
    have hvc : ContinuousOn (dslope u (s₀ : ℂ)) (closedBall (s₀ : ℂ) ε) := by
      intro z hz
      by_cases hzs : z = s₀
      · subst hzs
        exact (continuousAt_dslope_same.mpr hdiff).continuousWithinAt
      · exact (continuousWithinAt_dslope_of_ne hzs).mpr (hc z hz)
    have hvd : DifferentiableOn ℂ (dslope u (s₀ : ℂ)) (ball (s₀ : ℂ) ε) :=
      (Complex.differentiableOn_dslope (ball_mem_nhds _ hε)).mpr hd
    have hvb : ∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀,
        ‖dslope u (s₀ : ℂ) (σ : ℂ) / ((σ : ℂ) - s₀) ^ r‖ ≤ B := by
      refine ⟨B, ?_⟩
      filter_upwards [hB, self_mem_nhdsWithin] with σ hσB hσ
      have hne : (σ : ℂ) - s₀ ≠ 0 :=
        sub_ne_zero.mpr (Complex.ofReal_injective.ne (show s₀ < σ from hσ).ne')
      rwa [huv (σ : ℂ), pow_succ, mul_comm ((σ : ℂ) - s₀) (dslope u (s₀ : ℂ) (σ : ℂ)),
        mul_div_mul_right _ _ hne] at hσB
    obtain ⟨w, hwc, hwd, hw⟩ := ih (dslope u (s₀ : ℂ)) hvc hvd hvb
    refine ⟨w, hwc, hwd, fun z hz hzs => ?_⟩
    rw [huv z, hw z hz hzs, pow_succ]
    ring

theorem extend_of_real_bound (h : ℂ → ℂ) (d : Polynomial ℂ) (s₀ ε : ℝ) (hε : 0 < ε) (hd0 : d ≠ 0)
    (hh : DifferentiableOn ℂ h (closedBall (s₀ : ℂ) ε))
    (hne : ∀ z ∈ closedBall (s₀ : ℂ) ε, z ≠ s₀ → d.eval z ≠ 0) (n : ℕ)
    (hb : ∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀,
      ‖((σ : ℂ) - s₀) ^ n * (h (σ : ℂ) / d.eval (σ : ℂ))‖ ≤ B) :
    ∃ w : ℂ → ℂ, ContinuousOn w (closedBall (s₀ : ℂ) ε) ∧
      DifferentiableOn ℂ w (ball (s₀ : ℂ) ε) ∧
      ∀ z ∈ closedBall (s₀ : ℂ) ε, z ≠ s₀ → (z - s₀) ^ n * (h z / d.eval z) = w z := by
  obtain ⟨q, hdq, hndvd⟩ :=
    Polynomial.exists_eq_pow_rootMultiplicity_mul_and_not_dvd d hd0 (s₀ : ℂ)
  set m := Polynomial.rootMultiplicity (s₀ : ℂ) d
  have hdeval : ∀ z, d.eval z = (z - s₀) ^ m * q.eval z := by
    intro z
    conv_lhs => rw [hdq]
    simp
  have hq : ∀ z ∈ closedBall (s₀ : ℂ) ε, q.eval z ≠ 0 := by
    intro z hz
    by_cases hzs : z = s₀
    · subst hzs
      intro h0
      exact hndvd (Polynomial.dvd_iff_isRoot.mpr h0)
    · intro h0
      exact hne z hz hzs (by rw [hdeval, h0, mul_zero])
  have hkey : ∀ z, (z - s₀) ^ n * (h z / d.eval z) =
      ((z - s₀) ^ n * h z / q.eval z) / (z - s₀) ^ m := by
    intro z
    rw [hdeval]
    simp only [div_eq_mul_inv, mul_inv]
    ring
  have hud : DifferentiableOn ℂ (fun z => (z - s₀) ^ n * h z / q.eval z)
      (closedBall (s₀ : ℂ) ε) := by
    have hnum : DifferentiableOn ℂ (fun z => (z - s₀) ^ n * h z) (closedBall (s₀ : ℂ) ε) := by
      fun_prop
    exact hnum.div q.differentiable.differentiableOn hq
  obtain ⟨B, hB⟩ := hb
  have hub : ∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀,
      ‖((σ : ℂ) - s₀) ^ n * h (σ : ℂ) / q.eval (σ : ℂ) / ((σ : ℂ) - s₀) ^ m‖ ≤ B :=
    ⟨B, hB.mono fun σ hσ => by rwa [hkey] at hσ⟩
  obtain ⟨w, hwc, hwd, hw⟩ := GlobalTheory.CompanionTheory.PoleBound.factor_of_real_bound s₀ ε hε m
    (fun z => (z - s₀) ^ n * h z / q.eval z) hud.continuousOn
    (hud.mono ball_subset_closedBall) hub
  refine ⟨w, hwc, hwd, fun z hz hzs => ?_⟩
  rw [hkey z, hw z hz hzs, mul_div_cancel_left₀ _ (pow_ne_zero _ (sub_ne_zero.mpr hzs))]

theorem circle_zero (c : ℂ) (ε : ℝ) (hε : 0 < ε) (g : ℂ → ℂ) (hc : ContinuousOn g (closedBall c ε))
    (hd : DifferentiableOn ℂ g (ball c ε)) : (∮ z in C(c, ε), g z) = 0 :=
  Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable hε.le Set.countable_empty hc
    fun _ hz => hd.differentiableAt (isOpen_ball.mem_nhds hz.1)

theorem sphere_facts {c z : ℂ} {ε : ℝ} (hε : 0 < ε) (hz : z ∈ sphere c ε) :
    z ∈ closedBall c ε ∧ z ≠ c := by
  refine ⟨sphere_subset_closedBall hz, ?_⟩
  rintro rfl
  rw [mem_sphere, dist_self] at hz
  exact hε.ne hz

theorem moment_zero (f w : ℂ → ℂ) (s₀ : ℂ) (ε : ℝ) (hε : 0 < ε) (n j : ℕ)
    (hwc : ContinuousOn w (closedBall s₀ ε)) (hwd : DifferentiableOn ℂ w (ball s₀ ε))
    (hw : ∀ z ∈ closedBall s₀ ε, z ≠ s₀ → (z - s₀) ^ n * f z = w z) :
    (∮ z in C(s₀, ε), (z - s₀) ^ (j + n) * f z) = 0 := by
  have hcongr : (∮ z in C(s₀, ε), (z - s₀) ^ (j + n) * f z) =
      ∮ z in C(s₀, ε), (z - s₀) ^ j * w z := by
    refine circleIntegral.integral_congr hε.le fun z hz => ?_
    obtain ⟨hzc, hzs⟩ := GlobalTheory.CompanionTheory.PoleBound.sphere_facts hε hz
    show (z - s₀) ^ (j + n) * f z = (z - s₀) ^ j * w z
    rw [pow_add, mul_assoc, hw z hzc hzs]
  rw [hcongr]
  refine GlobalTheory.CompanionTheory.PoleBound.circle_zero s₀ ε hε _ ?_ ?_
  · fun_prop
  · fun_prop

theorem poleReal : PoleReal := by
  intro h d s₀ ε hε hd0 hh _ hne
  refine ⟨fun hb => ?_, fun hb => ?_⟩
  · have hb' : ∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀,
        ‖((σ : ℂ) - s₀) ^ 1 * (h (σ : ℂ) / d.eval (σ : ℂ))‖ ≤ B := by
      obtain ⟨B, hB⟩ := hb
      exact ⟨B, hB.mono fun σ hσ => by rwa [pow_one, ← Complex.ofReal_sub]⟩
    obtain ⟨w, hwc, hwd, hw⟩ := GlobalTheory.CompanionTheory.PoleBound.extend_of_real_bound h d s₀ ε hε hd0 hh hne 1 hb'
    refine ⟨fun k hk => ?_, ?_⟩
    · obtain ⟨j, rfl⟩ : ∃ j, k = j + 2 := ⟨k - 2, by omega⟩
      have hj : j + 2 - 1 = j + 1 := by omega
      rw [hj]
      exact GlobalTheory.CompanionTheory.PoleBound.moment_zero (fun z => h z / d.eval z) w (s₀ : ℂ) ε hε 1 j
        hwc hwd hw
    · have hint : (∮ z in C((s₀ : ℂ), ε), (z - s₀) ^ (1 - 1) * (h z / d.eval z)) =
          ∮ z in C((s₀ : ℂ), ε), (z - s₀)⁻¹ • w z := by
        refine circleIntegral.integral_congr hε.le fun z hz => ?_
        obtain ⟨hzc, hzs⟩ := GlobalTheory.CompanionTheory.PoleBound.sphere_facts hε hz
        show (z - s₀) ^ (1 - 1) * (h z / d.eval z) = (z - s₀)⁻¹ • w z
        rw [← hw z hzc hzs, smul_eq_mul, pow_one, ← mul_assoc,
          inv_mul_cancel₀ (sub_ne_zero.mpr hzs), one_mul, Nat.sub_self, pow_zero, one_mul]
      have hcauchy : (∮ z in C((s₀ : ℂ), ε), (z - s₀)⁻¹ • w z) =
          (2 * Real.pi * Complex.I : ℂ) • w s₀ :=
        Complex.circleIntegral_sub_inv_smul_of_differentiable_on_off_countable
          Set.countable_empty (mem_ball_self hε) hwc
          fun x hx => hwd.differentiableAt (isOpen_ball.mem_nhds hx.1)
      have h2pi : (2 * Real.pi * Complex.I : ℂ) ≠ 0 :=
        mul_ne_zero (mul_ne_zero two_ne_zero (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero))
          Complex.I_ne_zero
      rw [hint, hcauchy, smul_eq_mul, ← mul_assoc, inv_mul_cancel₀ h2pi, one_mul]
      have hlim : Tendsto (fun σ : ℝ => w (σ : ℂ)) (𝓝[>] s₀) (𝓝 (w (s₀ : ℂ))) :=
        (((hwc.continuousAt (closedBall_mem_nhds _ hε)).tendsto).comp
          (Complex.continuous_ofReal.tendsto s₀)).mono_left nhdsWithin_le_nhds
      refine Tendsto.congr' ?_ hlim
      have hball : ∀ᶠ σ : ℝ in 𝓝[>] s₀, (σ : ℂ) ∈ closedBall (s₀ : ℂ) ε :=
        nhdsWithin_le_nhds
          ((Complex.continuous_ofReal.tendsto s₀).eventually_mem (closedBall_mem_nhds _ hε))
      filter_upwards [hball, self_mem_nhdsWithin] with σ hσb hσ
      rw [← hw (σ : ℂ) hσb (Complex.ofReal_injective.ne (show s₀ < σ from hσ).ne'), pow_one,
        Complex.ofReal_sub]
  · have hb' : ∃ B : ℝ, ∀ᶠ σ : ℝ in 𝓝[>] s₀,
        ‖((σ : ℂ) - s₀) ^ 0 * (h (σ : ℂ) / d.eval (σ : ℂ))‖ ≤ B := by
      obtain ⟨B, hB⟩ := hb
      exact ⟨B, hB.mono fun σ hσ => by rwa [pow_zero, one_mul]⟩
    obtain ⟨w, hwc, hwd, hw⟩ := GlobalTheory.CompanionTheory.PoleBound.extend_of_real_bound h d s₀ ε hε hd0 hh hne 0 hb'
    intro k _
    exact GlobalTheory.CompanionTheory.PoleBound.moment_zero (fun z => h z / d.eval z) w (s₀ : ℂ) ε hε 0
      (k - 1) hwc hwd hw

end GlobalTheory.CompanionTheory.PoleBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PoleReality =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RightIdentityStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RightIdentityStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.HeckeEta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.Rg.Rsw GlobalTheory.Cont

namespace GlobalTheory.CompanionTheory.Dblock

theorem rightId : RightId := by
  intro U h g c σ hUo hU hh hg hhg z hzU hzc
  obtain ⟨⟨σ₀, hσ₀⟩, htr⟩ := hU
  set M : ℝ := max (max σ₀ σ) c
  set V : Set ℂ := U ∩ {w : ℂ | c < w.re}
  have hVo : IsOpen V := hUo.inter (isOpen_lt continuous_const Complex.continuous_re)
  have hHV : {w : ℂ | M < w.re} ⊆ V := by
    intro w hw
    have hw' : M < w.re := hw
    refine ⟨hσ₀ ?_, ?_⟩
    · show σ₀ < w.re
      exact lt_of_le_of_lt (le_trans (le_max_left _ _) (le_max_left _ _)) hw'
    · show c < w.re
      exact lt_of_le_of_lt (le_max_right _ _) hw'
  set x₀ : ℂ := ((M + 1 : ℝ) : ℂ)
  have hx₀ : M < x₀.re := by
    show M < ((M + 1 : ℝ) : ℂ).re
    rw [Complex.ofReal_re]
    linarith
  have hVconn : IsPreconnected V := by
    refine isPreconnected_of_forall x₀ fun y hy => ?_
    have hyc : c < y.re := hy.2
    set T : ℝ := |M - y.re| + 1
    have hT : 0 ≤ T := by positivity
    refine ⟨(fun s : ℝ => y + (s : ℂ)) '' Set.Icc 0 T ∪ {w : ℂ | M < w.re}, ?_, ?_, ?_, ?_⟩
    · rintro w (⟨s, ⟨hs0, _⟩, rfl⟩ | hw)
      · refine ⟨htr y hy.1 s hs0, ?_⟩
        show c < (y + (s : ℂ)).re
        rw [Complex.add_re, Complex.ofReal_re]
        linarith
      · exact hHV hw
    · exact Or.inr hx₀
    · exact Or.inl ⟨0, ⟨le_refl 0, hT⟩, by simp⟩
    · refine IsPreconnected.union (y + (T : ℂ)) ⟨T, ⟨hT, le_refl T⟩, rfl⟩ ?_ ?_ ?_
      · show M < (y + (T : ℂ)).re
        rw [Complex.add_re, Complex.ofReal_re]
        have := le_abs_self (M - y.re)
        linarith
      · exact isPreconnected_Icc.image _
          (continuous_const.add Complex.continuous_ofReal).continuousOn
      · exact (convex_halfSpace_re_gt M).isPreconnected
  have hhA : AnalyticOnNhd ℂ h V := (hh.mono Set.inter_subset_left).analyticOnNhd hVo
  have hgA : AnalyticOnNhd ℂ g V := (hg.mono Set.inter_subset_right).analyticOnNhd hVo
  have hσx : σ < x₀.re := lt_of_le_of_lt (le_trans (le_max_right _ _) (le_max_left _ _)) hx₀
  have hev : h =ᶠ[nhds x₀] g := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds hσx] with w hw
    exact hhg w hw
  exact hhA.eqOn_of_preconnected_of_eventuallyEq hgA hVconn (hHV hx₀) hev ⟨hzU, hzc⟩

end GlobalTheory.CompanionTheory.Dblock
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RightIdentityStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHolomorphyOfHeights =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHolomorphyOfHeights", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.LeftInvOfIsSection\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContinuousLeviBlock\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct ENNReal Matrix NNReal
open MeasureTheory NumberField IsDedekindDomain Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Doubling GlobalTheory.Eis GlobalTheory GlobalTheory.SiegelFormula
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.AdelicU GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open PositivityTheory.Rg.Rsw

noncomputable section

namespace GlobalTheory.CompanionTheory.EisHolFam

open GlobalTheory.StdUnn.HeightExists GlobalTheory.StdUnn.PolesModel

theorem eisHol_of_htExist : HtExist → EisHol := by
  intro _ D p χ _ c f hc hd hl h
  haveI := t2Space_adeleRing' (F := D.host.F)
  have hsub : rightOf (max c ((p : ℝ) / 2)) ⊆ {z : ℂ | c < z.re} := fun z hz =>
    lt_of_le_of_lt (le_max_left _ _) (mem_rightOf.1 hz)
  have key := analyticOnNhd_cosetSum (P := P D p) (Γ := GF D p) (K := K D p) (δ := modP (D := D) (n := p))
    (χ := χ.comp detP) (ρ := (p : ℝ) / 2) (σ := max c ((p : ℝ) / 2)) (Φ := f) isIwasawa isCompact_K
    (hc.mono (Set.prod_mono hsub (Set.subset_univ _)))
    (fun z hz q g => by
      have := hl z (hsub hz) q q.2 (leviBlock (D := D) (n := p) q) rfl g
      push_cast
      exact this)
    (fun τ hτ => summable_spherical τ (lt_of_le_of_lt (le_max_right _ _) hτ))
    (fun g => (hd g).mono hsub) h
  refine key.differentiableOn.mono fun z hz => ?_
  exact mem_rightOf.2 (max_lt hz.1 hz.2)

end GlobalTheory.CompanionTheory.EisHolFam

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHolomorphyOfHeights =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummable =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummable", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SiegelParabolicUnnMatrixBlockUpperTriangular\nimport Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.AdelicConjTransposeBlockMatrixTwoByTwoFin\npublic import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.LeftInvOfIsSection\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContinuousLeviBlock\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.EisCellsDefs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis

namespace GlobalTheory.CompanionTheory.ZUnf

theorem law_facts : ∀ {D : D7} {n : ℕ} {χ : (AE D)ˣ →* Circle} {s : ℂ} {f : G D n → ℂ}, IsHeckeChar D χ → Continuous f → IsLaw χ s f → (n : ℝ) / 2 < s.re →
    LeftInv (P D n ⊓ GF D n) f ∧
    (∀ q ∈ P D n, ∀ a : GL (Fin n) (AE D), blkA (mat q) = a.1 → Matrix.GeneralLinearGroup.det a = 1 → ∀ g, f (q * g) = f g) ∧
    ∀ C : Set (G D n), IsCompact C → ∃ u : Cosets (P D n) (GF D n) → ℝ, Summable u ∧ ∀ q, ∀ g ∈ C, ‖term (P D n) (GF D n) f g q‖ ≤ u q := by
  intro D n χ s f hχ hc hl hs
  haveI := t2Space_adeleRing' (F := D.host.F)
  refine ⟨fun γ hγ g => ?_, fun q hq a ha h1 g => ?_, fun C hC => ?_⟩
  · obtain ⟨hp, hr⟩ := Subgroup.mem_inf.1 hγ
    obtain ⟨a, ha⟩ := exists_blkA hp
    obtain ⟨u, hu⟩ := det_rat hr a ha
    have h1 : absA D (Matrix.GeneralLinearGroup.det a) = 1 := by
      rw [hu]; exact absE_inclR u
    have h2 : χ (Matrix.GeneralLinearGroup.det a) = 1 := by
      rw [hu]; exact hχ.2 u
    rw [hl γ hp a ha g, h1, h2]
    simp [npow]
  · rw [hl q hq a ha g, h1]
    simp [npow]
  · have hlaw : IndLaw (GlobalTheory.StdUnn.PolesModel.modP (D := D) (n := n))
        (χ.comp GlobalTheory.StdUnn.PolesModel.detP) (s + (n : ℂ) / 2) f := fun p g =>
      hl p p.2 (GlobalTheory.StdUnn.HeightExists.leviBlock (D := D) (n := n) p) rfl g
    have h1 : Continuous (iwAbs (PolesModel.modP (D := D) (n := n)) (K D n)) :=
      PolesModel.isIwasawa.continuous_iwAbs GlobalTheory.StdUnn.Model.isClosed_P PolesModel.continuous_modP GlobalTheory.StdUnn.Model.isCompact_K
    have h2 : Continuous fun g => Real.log (iwAbs (PolesModel.modP (D := D) (n := n)) (K D n) g) :=
      (NNReal.continuous_coe.comp h1).log fun g => (NNReal.coe_pos.2 (iwAbs_pos _ _ g)).ne'
    have hcf : Continuous fun x : ℂ × G D n => flatSec (PolesModel.modP (D := D) (n := n)) (K D n) f s x.1 x.2 := by
      simp only [flatSec, npow_eq_exp (iwAbs_pos _ _ _)]
      exact (hc.comp continuous_snd).mul (((Complex.continuous_ofReal.comp (h2.comp continuous_snd)).mul
        (continuous_fst.sub continuous_const)).cexp)
    obtain ⟨u, hu, hb⟩ := exists_majorant (Φ := fun z => flatSec (PolesModel.modP (D := D) (n := n)) (K D n) f s z)
      (χ := χ.comp PolesModel.detP) (ρ := (n : ℝ) / 2) (σ := (n : ℝ) / 2) PolesModel.isIwasawa GlobalTheory.StdUnn.Model.isCompact_K
      hcf.continuousOn
      (fun z _ => by
        have := (PolesModel.isIwasawa (D := D) (n := n)).indLaw_flatSec hlaw z
        push_cast
        exact this) PolesModel.summable_spherical (S := {s}) isCompact_singleton (Set.singleton_subset_iff.2 hs) hC
    have e : flatSec (PolesModel.modP (D := D) (n := n)) (K D n) f s s = f := funext fun x => by
      simp [flatSec, npow_eq_exp (iwAbs_pos _ _ _)]
    refine ⟨u, hu, fun q g hg => ?_⟩
    have := hb q s rfl g hg
    rwa [e] at this

end GlobalTheory.CompanionTheory.ZUnf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummable =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummableStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummableStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.EisCellsDefs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis


theorem _root_.GlobalTheory.T.eisenstein_terms_uniformly_summable : ∀ {D : D7} {n : ℕ} {χ : (AE D)ˣ →* Circle} {s : ℂ} {f : G D n → ℂ}, IsHeckeChar D χ → Continuous f → IsLaw χ s f → (n : ℝ) / 2 < s.re →
    LeftInv (P D n ⊓ GF D n) f ∧
    (∀ q ∈ P D n, ∀ a : GL (Fin n) (AE D), blkA (mat q) = a.1 → Matrix.GeneralLinearGroup.det a = 1 → ∀ g, f (q * g) = f g) ∧
    ∀ C : Set (G D n), IsCompact C → ∃ u : Cosets (P D n) (GF D n) → ℝ, Summable u ∧ ∀ q, ∀ g ∈ C, ‖term (P D n) (GF D n) f g q‖ ≤ u q := by
  first | exact @GlobalTheory.CompanionTheory.ZUnf.law_facts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummableStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSums =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSums", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Group.FundamentalDomain\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainFourierUnfolding\nimport Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ModerateGrowthSchwartz\nimport Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.CoefDataExists\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.BigCellDefs\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.EisCellsDefs\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.ThetaOrbits\nimport Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis

namespace GlobalTheory.CompanionTheory.UnfoldFam

open GlobalTheory.CompanionTheory.UnfoldAbs

theorem unfold_fam : ∀ {A X Y U : Type} [AddCommGroup A] [MeasurableSpace A] [MeasurableAdd A]
    (lam : Measure A) [lam.IsAddLeftInvariant] (Λ : AddSubgroup A) [Countable Λ] (𝓖 : Set A)
    (_ : IsAddFundamentalDomain Λ 𝓖 lam) (_ : lam 𝓖 = 1) [Countable X] [Countable U] (c : X → Y) (y0 : Y)
    (F : X → A → ℂ) (F0 : U → A → ℂ) (ch : A → ℂ) (_ : ∀ q, AEStronglyMeasurable (F q) lam)
    (_ : AEStronglyMeasurable ch lam) (_ : ∀ b, ‖ch b‖ = 1)
    (_ : ∀ a b, ch (a + b) = ch a * ch b) (_ : ∀ l : Λ, ch l = 1)
    (Um : X → ℝ) (_ : Summable Um) (τ : Λ → X ≃ X)
    (_ : ∀ (l : Λ) q b, F q ((l : A) + b) = F (τ l q) b) (_ : ∀ (l : Λ) q, c (τ l q) = c q)
    (_ : ∀ b, ∃ l : Λ, ∀ q, ‖F q b‖ ≤ Um (τ l q))
    (e : Λ × U → X) (_ : Function.Injective e) (_ : ∀ q, c q = y0 ↔ q ∈ Set.range e)
    (_ : ∀ (l l' : Λ) u, τ l' (e (l, u)) = e (l' + l, u))
    (_ : ∀ (l : Λ) u b, F (e (l, u)) b = F0 u ((l : A) + b))
    (_ : ∀ y, y ≠ y0 → ∃ ν, ch ν ≠ 1 ∧ ∀ q, c q = y → ∀ b, F q (ν + b) = F q b),
    (∀ u, Integrable (F0 u) lam ∧ ∫ b, ‖F0 u b‖ ∂lam ≤ ∑' l : Λ, Um (e (l, u))) ∧
    HasSum (fun u => ∫ b, F0 u b * ch b ∂lam) (∫ b in 𝓖, (∑' q, F q b) * ch b ∂lam) := by
  intro A X Y U _ _ _ lam _ Λ _ 𝓖 h𝓖 h1 _ _ c y0 F F0 ch hF hch hnorm hmul hΛ Um hUm τ hτ hcτ hbd
    e he hfib hτe hF0 hν
  haveI : IsFiniteMeasure (lam.restrict 𝓖) := ⟨by simp [h1]⟩

  have hUm0 : ∀ q, 0 ≤ Um q := by
    intro q
    obtain ⟨l, hl⟩ := hbd 0
    have := hl ((τ l).symm q)
    rw [Equiv.apply_symm_apply] at this
    exact (norm_nonneg _).trans this

  have hb : ∀ b, Summable (fun q => ‖F q b‖) ∧ ∑' q, ‖F q b‖ ≤ ∑' q, Um q := by
    intro b
    obtain ⟨l, hl⟩ := hbd b
    have hs : Summable (fun q => Um (τ l q)) := (τ l).summable_iff.mpr hUm
    have hs1 : Summable (fun q => ‖F q b‖) :=
      Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hl hs
    refine ⟨hs1, ?_⟩
    calc ∑' q, ‖F q b‖ ≤ ∑' q, Um (τ l q) := hs1.tsum_le_tsum hl hs
      _ = ∑' q, Um q := (τ l).tsum_eq Um
  have hsub : ∀ {Z : Type} (j : Z → X), Function.Injective j → ∀ b,
      Summable (fun z => ‖F (j z) b‖) ∧ ∑' z, ‖F (j z) b‖ ≤ ∑' q, Um q := by
    intro Z j hj b
    refine ⟨(hb b).1.comp_injective hj, ?_⟩
    exact (tsum_comp_le_tsum_of_inj (hb b).1 (fun _ => norm_nonneg _) hj).trans (hb b).2
  have key : ∀ {Z : Type} [Countable Z] (j : Z → X), Function.Injective j →
      HasSum (fun z => ∫ b in 𝓖, F (j z) b * ch b ∂lam)
        (∫ b in 𝓖, (∑' z, F (j z) b) * ch b ∂lam) := by
    intro Z _ j hj
    have := hasSum_integral_of_norm_bound (lam.restrict 𝓖) (fun z b => F (j z) b * ch b)
      (fun z => ((hF (j z)).mul hch).restrict) (∑' q, Um q) (fun b => by
        simpa [hnorm] using hsub j hj b)
    simpa only [tsum_mul_right] using this

  have heu : ∀ u, Function.Injective (fun l : Λ => e (l, u)) := fun u a b h =>
    (Prod.mk.inj (he h)).1
  have hF0e : ∀ u, F0 u = F (e (0, u)) := by
    intro u
    funext b
    have := hF0 0 u b
    simpa using this.symm
  have hm0 : ∀ u, AEStronglyMeasurable (F0 u) lam := fun u => hF0e u ▸ hF (e (0, u))
  have hSs : ∀ u, Summable (fun l : Λ => Um (e (l, u))) := fun u => hUm.comp_injective (heu u)
  have hS0 : ∀ u, 0 ≤ ∑' l : Λ, Um (e (l, u)) := fun u => tsum_nonneg fun _ => hUm0 _
  have horb : ∀ u b, Summable (fun l : Λ => ‖F0 u ((l : A) + b)‖) ∧
      ∑' l : Λ, ‖F0 u ((l : A) + b)‖ ≤ ∑' l : Λ, Um (e (l, u)) := by
    intro u b
    obtain ⟨l0, hl0⟩ := hbd b
    have hle : ∀ l : Λ, ‖F0 u ((l : A) + b)‖ ≤ Um (e (l0 + l, u)) := by
      intro l
      rw [← hF0 l u b, ← hτe l l0 u]
      exact hl0 _
    have hs : Summable (fun l : Λ => Um (e (l0 + l, u))) :=
      (Equiv.addLeft l0).summable_iff.mpr (hSs u)
    have hs1 : Summable (fun l : Λ => ‖F0 u ((l : A) + b)‖) :=
      Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hle hs
    refine ⟨hs1, ?_⟩
    calc ∑' l : Λ, ‖F0 u ((l : A) + b)‖ ≤ ∑' l : Λ, Um (e (l0 + l, u)) :=
          hs1.tsum_le_tsum hle hs
      _ = ∑' l : Λ, Um (e (l, u)) :=
          (Equiv.addLeft l0).tsum_eq (fun l : Λ => Um (e (l, u)))
  have hint0 : ∀ u, Integrable (F0 u) lam := fun u =>
    integrable_of_lattice_bound lam Λ 𝓖 h𝓖 h1 (F0 u) (hm0 u) _ (horb u)
  have hnb : ∀ u, ∫ b, ‖F0 u b‖ ∂lam ≤ ∑' l : Λ, Um (e (l, u)) := by
    intro u
    rw [integral_norm_eq_lintegral_enorm (hm0 u)]
    refine ENNReal.toReal_le_of_le_ofReal (hS0 u) ?_
    have ee : ∫⁻ b, ‖F0 u b‖ₑ ∂lam = ∑' l : Λ, ∫⁻ b in 𝓖, ‖F0 u ((l : A) + b)‖ₑ ∂lam :=
      h𝓖.lintegral_eq_tsum'' _
    have hmeas : ∀ l : Λ, AEMeasurable (fun b => ‖F0 u ((l : A) + b)‖ₑ) (lam.restrict 𝓖) :=
      fun l => (((hm0 u).comp_measurePreserving
        (measurePreserving_add_left lam (l : A))).enorm).restrict
    rw [ee, ← lintegral_tsum hmeas]
    calc ∫⁻ b in 𝓖, ∑' l : Λ, ‖F0 u ((l : A) + b)‖ₑ ∂lam
        ≤ ∫⁻ _ in 𝓖, ENNReal.ofReal (∑' l : Λ, Um (e (l, u))) ∂lam := by
          refine lintegral_mono (fun b => ?_)
          simp_rw [← ofReal_norm_eq_enorm]
          rw [← ENNReal.ofReal_tsum_of_nonneg (fun _ => norm_nonneg _) (horb u b).1]
          exact ENNReal.ofReal_le_ofReal (horb u b).2
      _ = ENNReal.ofReal (∑' l : Λ, Um (e (l, u))) := by simp [h1]
  refine ⟨fun u => ⟨hint0 u, hnb u⟩, ?_⟩

  have hT := key (Z := X) id Function.injective_id
  simp only [id] at hT
  have hsig := (Equiv.sigmaFiberEquiv c).hasSum_iff.mpr hT
  have hg : HasSum (fun y => ∫ b in 𝓖, (∑' z : {x // c x = y}, F z b) * ch b ∂lam)
      (∫ b in 𝓖, (∑' q, F q b) * ch b ∂lam) :=
    hsig.sigma (fun y => key (Z := {x // c x = y}) Subtype.val Subtype.val_injective)

  have hzero : ∀ y, y ≠ y0 → ∫ b in 𝓖, (∑' z : {x // c x = y}, F z b) * ch b ∂lam = 0 := by
    intro y hy
    obtain ⟨ν, hν1, hνq⟩ := hν y hy
    refine setIntegral_eq_zero_of_translate lam Λ 𝓖 h𝓖 _ ν (ch ν) hν1 (fun l b => ?_) (fun b => ?_)
    · have hs : ∑' z : {x // c x = y}, F z ((l : A) + b) = ∑' z : {x // c x = y}, F z b := by
        calc ∑' z : {x // c x = y}, F z ((l : A) + b)
            = ∑' z : {x // c x = y}, F (τ l z) b := tsum_congr fun z => hτ l z b
          _ = ∑' z : {x // c x = y}, F z b :=
            ((τ l).subtypeEquiv (p := fun x => c x = y) (q := fun x => c x = y)
              (fun a => by rw [hcτ])).tsum_eq (fun z : {x // c x = y} => F z b)
      rw [hs, hmul, hΛ, one_mul]
    · have hs : ∑' z : {x // c x = y}, F z (ν + b) = ∑' z : {x // c x = y}, F z b :=
        tsum_congr fun z => hνq z z.2 b
      rw [hs, hmul]
      ring
  have hT' := hg.unique (hasSum_single y0 (fun y hy => hzero y hy))
  rw [hT']

  let ee : Λ × U ≃ {x // c x = y0} := Equiv.ofBijective
    (fun p => ⟨e p, (hfib _).2 ⟨p, rfl⟩⟩)
    ⟨fun a b h => he (congrArg Subtype.val h), fun q => by
      obtain ⟨p, hp⟩ := (hfib q).1 q.2
      exact ⟨p, Subtype.ext hp⟩⟩
  have hsum : ∀ b, ∑' z : {x // c x = y0}, F z b = ∑' p : Λ × U, F (e p) b := fun b =>
    (ee.tsum_eq (fun z => F z b)).symm
  simp_rw [hsum]
  have hK := key e he
  have hK' : HasSum (fun p : U × Λ => ∫ b in 𝓖, F (e (p.2, p.1)) b * ch b ∂lam)
      (∫ b in 𝓖, (∑' p : Λ × U, F (e p) b) * ch b ∂lam) :=
    (Equiv.prodComm U Λ).hasSum_iff.mpr hK
  refine hK'.prod_fiberwise (fun u => ?_)
  have hs := hK'.summable.prod_factor u
  have hint1 : Integrable (fun b => F0 u b * ch b) lam :=
    (hint0 u).mono ((hint0 u).aestronglyMeasurable.mul hch) (ae_of_all _ fun b => by simp [hnorm])
  have hval : ∫ b, F0 u b * ch b ∂lam = ∑' l : Λ, ∫ b in 𝓖, F (e (l, u)) b * ch b ∂lam := by
    rw [h𝓖.integral_eq_tsum'' _ hint1]
    refine tsum_congr fun l => ?_
    refine integral_congr_ae (ae_of_all _ fun b => ?_)
    change F0 u ((l : A) + b) * ch ((l : A) + b) = F (e (l, u)) b * ch b
    rw [hF0, hmul, hΛ, one_mul]
  rw [hval]
  exact hs.hasSum

end GlobalTheory.CompanionTheory.UnfoldFam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSums =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSumsStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSumsStatement", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Group.FundamentalDomain\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSums\nimport Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ModerateGrowthSchwartz\nimport Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.CoefDataExists\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.BigCellDefs\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.EisCellsDefs\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.WeilSiegelTheta.ThetaOrbits\nimport Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis


theorem _root_.GlobalTheory.T.fundamental_domain_unfolding_two_sums : ∀ {A X Y U : Type} [AddCommGroup A] [MeasurableSpace A] [MeasurableAdd A]
    (lam : Measure A) [lam.IsAddLeftInvariant] (Λ : AddSubgroup A) [Countable Λ] (𝓖 : Set A)
    (_ : IsAddFundamentalDomain Λ 𝓖 lam) (_ : lam 𝓖 = 1) [Countable X] [Countable U] (c : X → Y) (y0 : Y)
    (F : X → A → ℂ) (F0 : U → A → ℂ) (ch : A → ℂ) (_ : ∀ q, AEStronglyMeasurable (F q) lam)
    (_ : AEStronglyMeasurable ch lam) (_ : ∀ b, ‖ch b‖ = 1)
    (_ : ∀ a b, ch (a + b) = ch a * ch b) (_ : ∀ l : Λ, ch l = 1)
    (Um : X → ℝ) (_ : Summable Um) (τ : Λ → X ≃ X)
    (_ : ∀ (l : Λ) q b, F q ((l : A) + b) = F (τ l q) b) (_ : ∀ (l : Λ) q, c (τ l q) = c q)
    (_ : ∀ b, ∃ l : Λ, ∀ q, ‖F q b‖ ≤ Um (τ l q))
    (e : Λ × U → X) (_ : Function.Injective e) (_ : ∀ q, c q = y0 ↔ q ∈ Set.range e)
    (_ : ∀ (l l' : Λ) u, τ l' (e (l, u)) = e (l' + l, u))
    (_ : ∀ (l : Λ) u b, F (e (l, u)) b = F0 u ((l : A) + b))
    (_ : ∀ y, y ≠ y0 → ∃ ν, ch ν ≠ 1 ∧ ∀ q, c q = y → ∀ b, F q (ν + b) = F q b),
    (∀ u, Integrable (F0 u) lam ∧ ∫ b, ‖F0 u b‖ ∂lam ≤ ∑' l : Λ, Um (e (l, u))) ∧
    HasSum (fun u => ∫ b, F0 u b * ch b ∂lam) (∫ b in 𝓖, (∑' q, F q b) * ch b ∂lam) := by
  first | exact @GlobalTheory.CompanionTheory.UnfoldFam.unfold_fam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSumsStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCell =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCell", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCharacterCellFactorization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis

namespace GlobalTheory.CompanionTheory.ZUnf.SmallZ
open GlobalTheory.CompanionTheory.SwUnf.SmallCell

variable {D : D7} {n ρ p : ℕ}

theorem zinc_inl {K : Type} [Field K] (hn : ρ + p = n) (u : Fin ρ → K) (a : Fin ρ) :
    zinc hn u ((finSumFinEquiv.trans (finCongr hn)) (Sum.inl a)) = u a := by
  change Sum.elim u (fun _ : Fin p => (0 : K)) ((finSumFinEquiv.trans (finCongr hn)).symm _) = u a
  rw [Equiv.symm_apply_apply, Sum.elim_inl]

theorem zinc_inr {K : Type} [Field K] (hn : ρ + p = n) (u : Fin ρ → K) (a : Fin p) :
    zinc hn u ((finSumFinEquiv.trans (finCongr hn)) (Sum.inr a)) = 0 := by
  change Sum.elim u (fun _ : Fin p => (0 : K)) ((finSumFinEquiv.trans (finCongr hn)).symm _) = 0
  rw [Equiv.symm_apply_apply, Sum.elim_inr]

theorem blockMatrix_inl_inl {R : Type} [Zero R] (hn : ρ + p = n) (a : Matrix (Fin ρ) (Fin ρ) R) (i j : Fin ρ) :
    bl hn a 0 0 0 ((finSumFinEquiv.trans (finCongr hn)) (Sum.inl i))
      ((finSumFinEquiv.trans (finCongr hn)) (Sum.inl j)) = a i j := by
  simp only [bl, Matrix.submatrix_apply, Equiv.symm_apply_apply, Matrix.fromBlocks_apply₁₁]

theorem blockMatrix_inl_inr {R : Type} [Zero R] (hn : ρ + p = n) (a : Matrix (Fin ρ) (Fin ρ) R) (i : Fin ρ) (j : Fin p) :
    bl hn a 0 0 0 ((finSumFinEquiv.trans (finCongr hn)) (Sum.inl i))
      ((finSumFinEquiv.trans (finCongr hn)) (Sum.inr j)) = 0 := by
  simp only [bl, Matrix.submatrix_apply, Equiv.symm_apply_apply, Matrix.fromBlocks_apply₁₂, Matrix.zero_apply]

theorem blockMatrix_inr_inl {R : Type} [Zero R] (hn : ρ + p = n) (a : Matrix (Fin ρ) (Fin ρ) R) (i : Fin p) (j : Fin ρ) :
    bl hn a 0 0 0 ((finSumFinEquiv.trans (finCongr hn)) (Sum.inr i))
      ((finSumFinEquiv.trans (finCongr hn)) (Sum.inl j)) = 0 := by
  simp only [bl, Matrix.submatrix_apply, Equiv.symm_apply_apply, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply]

theorem blockMatrix_inr_inr {R : Type} [Zero R] (hn : ρ + p = n) (a : Matrix (Fin ρ) (Fin ρ) R) (i j : Fin p) :
    bl hn a 0 0 0 ((finSumFinEquiv.trans (finCongr hn)) (Sum.inr i))
      ((finSumFinEquiv.trans (finCongr hn)) (Sum.inr j)) = 0 := by
  simp only [bl, Matrix.submatrix_apply, Equiv.symm_apply_apply, Matrix.fromBlocks_apply₂₂, Matrix.zero_apply]

def rk2 {m : ℕ} (τ : AE D) (v r : Fin m → D.host.E) : Mx D m m :=
  τ • ((rat (Matrix.replicateCol (Fin 1) v) : Mx D m 1) ⬝ (rat (Matrix.replicateRow (Fin 1) r) : Mx D 1 m) +
    adj (rat (Matrix.replicateRow (Fin 1) r) : Mx D 1 m) ⬝ adj (rat (Matrix.replicateCol (Fin 1) v) : Mx D m 1))

theorem rank_two_matrix_apply {m : ℕ} (τ : AE D) (v r : Fin m → D.host.E) (i j : Fin m) :
    rk2 τ v r i j = τ * (incA D (v i) * incA D (r j) + cA D (incA D (r i)) * cA D (incA D (v j))) := by
  simp only [rk2, Matrix.smul_apply, Matrix.add_apply, Matrix.mul_apply, Finset.univ_unique, Finset.sum_singleton, smul_eq_mul]
  rfl

theorem rk_term (τ : AE D) (a b c d : D.host.E) (h1 : a = 0 ∨ b = 0) (h2 : c = 0 ∨ d = 0) :
    τ * (incA D a * incA D b + cA D (incA D c) * cA D (incA D d)) = 0 := by
  have e1 : incA D a * incA D b = 0 := by
    rcases h1 with rfl | rfl
    · rw [map_zero (incA D), zero_mul]
    · rw [map_zero (incA D), mul_zero]
  have e2 : cA D (incA D c) * cA D (incA D d) = 0 := by
    rcases h2 with rfl | rfl
    · rw [map_zero (incA D), map_zero (cA D), zero_mul]
    · rw [map_zero (incA D), map_zero (cA D), mul_zero]
  rw [e1, e2, add_zero, mul_zero]

theorem rank_two_embedding_small (hn : ρ + p = n) (τ : AE D) (v r : Fin ρ → D.host.E) :
    rk2 τ (zinc hn v) (zinc hn r) = bl hn (rk2 τ v r) 0 0 0 := by
  ext i j
  obtain ⟨i, rfl⟩ := (finSumFinEquiv.trans (finCongr hn)).surjective i
  obtain ⟨j, rfl⟩ := (finSumFinEquiv.trans (finCongr hn)).surjective j
  rcases i with i | i <;> rcases j with j | j
  · rw [blockMatrix_inl_inl, rank_two_matrix_apply, rank_two_matrix_apply, zinc_inl, zinc_inl, zinc_inl, zinc_inl]
  · rw [blockMatrix_inl_inr, rank_two_matrix_apply]
    exact rk_term _ _ _ _ _ (Or.inr (zinc_inr hn r j)) (Or.inr (zinc_inr hn v j))
  · rw [blockMatrix_inr_inl, rank_two_matrix_apply]
    exact rk_term _ _ _ _ _ (Or.inl (zinc_inr hn v i)) (Or.inl (zinc_inr hn r i))
  · rw [blockMatrix_inr_inr, rank_two_matrix_apply]
    exact rk_term _ _ _ _ _ (Or.inl (zinc_inr hn v i)) (Or.inl (zinc_inr hn r i))

theorem small : ∀ {D : D7} {n ρ p : ℕ} (hn : ρ + p = n) {ψ : AddChar (AF D.host.F) ℂ}, IsCharAF D.host.F ψ → ∀ (b₀ : HermE D ρ), b₀.1.det ≠ 0 →
    ∀ (W : Submodule D.host.E (Fin ρ → D.host.E)), W ≠ ⊥ → ∃ ν : hermA D ρ, chz ψ b₀ ν ≠ 1 ∧
    ∀ (γ u : G D n), γ ∈ GF D n → ∀ x : Matrix (Fin (n + n)) (Fin (n + n)) D.host.E, mat γ = x.map (incA D) → zKer hn x = W →
      mat u = blk4 1 (bl hn ν.1 0 0 0) 0 1 →
      ∃ q ∈ P D n, ∃ a : GL (Fin n) (AE D), blkA (mat q) = a.1 ∧ Matrix.GeneralLinearGroup.det a = 1 ∧ γ * u = q * γ := by
  intro D n ρ p hn ψ hψ β hβ W hW
  obtain ⟨v, hvW, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hW
  have hw : β.1 *ᵥ v ≠ 0 := fun h => hv0 (Matrix.eq_zero_of_mulVec_eq_zero hβ h)
  obtain ⟨i0, hi0⟩ := Function.ne_iff.1 hw
  let r : Fin ρ → D.host.E := Pi.single i0 ((β.1 *ᵥ v) i0)⁻¹
  let V0 : Matrix (Fin ρ) (Fin 1) D.host.E := Matrix.replicateCol _ v
  let R0 : Matrix (Fin 1) (Fin ρ) D.host.E := Matrix.replicateRow _ r
  have hbV : β.1 ⬝ V0 = Matrix.replicateCol _ (β.1 *ᵥ v) := by
    ext i j
    simp [V0, Matrix.mul_apply, Matrix.mulVec, dotProduct]
  have hS0 : R0 ⬝ β.1 ⬝ V0 = (1 : Matrix (Fin 1) (Fin 1) D.host.E) := by
    rw [Matrix.mul_assoc, hbV]
    ext a b
    obtain rfl : a = b := Subsingleton.elim _ _
    simp [R0, r, Matrix.mul_apply, Pi.single_apply, inv_mul_cancel₀ (show (β.1 *ᵥ v) i0 ≠ 0 from hi0)]
  have hS : (rat R0 : Mx D 1 ρ) ⬝ (rat β.1 : Mx D ρ ρ) ⬝ (rat V0 : Mx D ρ 1) = 1 := by
    rw [← rat_mul, ← rat_mul, hS0]
    ext a b
    obtain rfl : a = b := Subsingleton.elim _ _
    simp [rat]
  obtain ⟨x0, hx0⟩ := hψ.2.2.2
  obtain ⟨t, ht⟩ := exists_scalar (D := D) x0
  have hν : adj (rk2 (algebraMap (AF D.host.F) (AE D) t) v r) = rk2 (algebraMap (AF D.host.F) (AE D) t) v r := by
    unfold rk2
    rw [adj_smul, cA_algebraMap', adj_add, adj_mul, adj_mul, adj_adj, adj_adj, add_comm]
  refine ⟨⟨_, hν⟩, ?_, ?_⟩
  · have h := trace_val (rat β.1) (adj_rat_herm β) (rat V0) (rat R0) (algebraMap (AF D.host.F) (AE D) t) hS
    change ψ (halfTr (Matrix.trace ((rat β.1 : Mx D ρ ρ) ⬝ _))) ≠ 1
    change ψ (halfTr (Matrix.trace ((rat β.1 : Mx D ρ ρ) ⬝ (algebraMap (AF D.host.F) (AE D) t • _)))) ≠ 1
    rw [h, ht]
    exact hx0
  · intro γ u hγ x hx hW' hu
    refine cell_absorb (rat (Matrix.replicateCol (Fin 1) (zinc hn v))) (rat (Matrix.replicateRow (Fin 1) (zinc hn r)))
      (algebraMap (AF D.host.F) (AE D) t) ((rank_two_embedding_small hn _ v r).symm) γ u hu ?_
    have hv : lowerC x *ᵥ zinc hn v = 0 := by
      rw [← hW'] at hvW
      exact hvW
    have h0 : (HMul.hMul (lowerC x) (Matrix.replicateCol (Fin 1) (zinc hn v)) : Matrix (Fin n) (Fin 1) D.host.E) = 0 := by
      refine Matrix.ext fun i j => ?_
      have := congrFun hv i
      simpa [Matrix.mul_apply, Matrix.mulVec, dotProduct] using this
    rw [hx, lowerC_map]
    change (rat (lowerC x) : Mx D n n) ⬝ (rat (Matrix.replicateCol (Fin 1) (zinc hn v)) : Mx D n 1) = 0
    rw [← rat_mul, h0]
    ext i j
    simp [rat]

end GlobalTheory.CompanionTheory.ZUnf.SmallZ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCell =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCellStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCellStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RowD\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCell\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ValueFormula\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis


theorem _root_.GlobalTheory.T.nondegenerate_centre_character_cell : ∀ {D : D7} {n ρ p : ℕ} (hn : ρ + p = n) {ψ : AddChar (AF D.host.F) ℂ}, IsCharAF D.host.F ψ → ∀ (b₀ : HermE D ρ), b₀.1.det ≠ 0 →
    ∀ (W : Submodule D.host.E (Fin ρ → D.host.E)), W ≠ ⊥ → ∃ ν : hermA D ρ, chz ψ b₀ ν ≠ 1 ∧
    ∀ (γ u : G D n), γ ∈ GF D n → ∀ x : Matrix (Fin (n + n)) (Fin (n + n)) D.host.E, mat γ = x.map (incA D) → zKer hn x = W →
      mat u = blk4 1 (bl hn ν.1 0 0 0) 0 1 →
      ∃ q ∈ P D n, ∃ a : GL (Fin n) (AE D), blkA (mat q) = a.1 ∧ Matrix.GeneralLinearGroup.det a = 1 ∧ γ * u = q * γ := by
  first | exact @GlobalTheory.CompanionTheory.ZUnf.SmallZ.small
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCellStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiUnfolding =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiUnfolding", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousHalfTr\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousHermPart\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCellInvariantUnipotent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinTermsUniformlySummableStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FundamentalDomainUnfoldingTwoSumsStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeisenbergCentreRationalFormStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeisenbergCosetsParamRationalStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NondegenerateCentreCharacterCellStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnfoldingHolds\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.RedLem\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetCell\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS GlobalTheory.Eis GlobalTheory.CompanionTheory.SwUnf
open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.StdUnn.Model GlobalTheory.StdUnn.LeftInvSect GlobalTheory.CompanionTheory.Hypotheses₂.WeilU
open PositivityTheory.Rg.Rsw
open GlobalTheory.CompanionTheory.ZUnf GlobalTheory.Eis

namespace GlobalTheory.CompanionTheory.ZUnf

variable {D : D7} {n ρ p : ℕ}

theorem chz_add (ψ : AddChar (AF D.host.F) ℂ) (b₀ : HermE D ρ) (a b : hermA D ρ) :
    chz ψ b₀ (a + b) = chz ψ b₀ a * chz ψ b₀ b := by
  simp only [chz, AddSubgroup.coe_add]
  rw [Matrix.mul_add, Matrix.trace_add, GlobalTheory.CompanionTheory.HermPoisson.halfTr_add', AddChar.map_add_eq_mul]

theorem chz_rat {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (b₀ : HermE D ρ) (l : ratHerm D ρ) :
    chz ψ b₀ l.1 = 1 :=
  GlobalTheory.CompanionTheory.HermPoisson.chi_rat hψ (m := (b₀.1.map (incA D) : Mx D ρ ρ)) ⟨b₀.1, rfl⟩ l

theorem unfold_on {hn : ρ + p = n} (M : Maps D hn) (m : Meas D ρ p) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ)
    {b₀ : HermE D ρ} (hb₀ : b₀.1.det ≠ 0) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) {s : ℂ} {f : G D n → ℂ}
    (hf : Continuous f) (hl : IsLaw χ s f) (hs : (n : ℝ) / 2 < s.re) (C : Set (G D n)) (hC : IsCompact C) :
    ∃ Um : Cosets (P D n) (GF D n) → ℝ, Summable Um ∧
    ∃ e : ratHerm D ρ × (Cosets (P D p) (GF D p) × Matrix (Fin ρ) (Fin p) D.host.E) → Cosets (P D n) (GF D n),
      Function.Injective e ∧ ∀ g ∈ C,
      (∀ u, ‖Wz M m ψ b₀ f (M.sh (u.2.map (incA D)) * M.emb (u.1.out : GF D p) * g)‖ ≤ ∑' l : ratHerm D ρ, Um (e (l, u))) ∧
      HasSum (fun u : Cosets (P D p) (GF D p) × Matrix (Fin ρ) (Fin p) D.host.E =>
        Wz M m ψ b₀ f (M.sh (u.2.map (incA D)) * M.emb (u.1.out : GF D p) * g)) (zc M m ψ b₀ (eisS f) g) := by
  obtain ⟨hinv, hdet, hmaj⟩ := GlobalTheory.T.eisenstein_terms_uniformly_summable hχ hf hl hs
  obtain ⟨hHaar, hFD, hvol⟩ := m.hz
  obtain ⟨hadd, hcsh, hcem, hrat⟩ := GlobalTheory.T.heisenberg_centre_rational_form M
  have hcolat := GlobalTheory.CompanionTheory.HermVol.isCoLat_herm (D := D) (r := ρ)
  haveI : Countable (ratHerm D ρ) := countable_ratHerm
  haveI : Countable (Cosets (P D n) (GF D n)) := countable_cosets
  haveI : Countable (Cosets (P D p) (GF D p)) := countable_cosets
  haveI : Countable (Matrix (Fin ρ) (Fin p) D.host.E) := countable_mat ρ p
  obtain ⟨e, he, hfib, hτe, hterm⟩ := GlobalTheory.T.heisenberg_cosets_param_rational hn M
  obtain ⟨K0, hK0, hKc⟩ := hcolat.2
  have hcn := _root_.GlobalTheory.CompanionTheory.PcB.continuous_nz M
  obtain ⟨Um, hUm, hub⟩ := hmaj ((fun d : hermA D ρ × G D n => M.nzx d.1 0 * d.2) '' (K0 ×ˢ C))
    ((hK0.prod hC).image ((hcn.comp continuous_fst).mul continuous_snd))
  refine ⟨Um, hUm, e, he, fun g hg => ?_⟩
  let F : Cosets (P D n) (GF D n) → hermA D ρ → ℂ := fun q b => term (P D n) (GF D n) f (M.nzx b 0 * g) q
  let F0 : Cosets (P D p) (GF D p) × Matrix (Fin ρ) (Fin p) D.host.E → hermA D ρ → ℂ := fun u z =>
    f (M.w * M.nzx z 0 * (M.sh (u.2.map (incA D)) * M.emb (u.1.out : GF D p) * g))
  let ch : hermA D ρ → ℂ := fun b => conj (chz ψ b₀ b)
  let τ : ratHerm D ρ → Cosets (P D n) (GF D n) ≃ Cosets (P D n) (GF D n) := fun l =>
    rmulEquiv _ _ ⟨M.nzx l.1 0, (hrat l).1⟩
  have hτ : ∀ (l : ratHerm D ρ) q b, F q ((l : hermA D ρ) + b) = F (τ l q) b := fun l q b => by
    simp only [F]
    rw [hadd, mul_assoc]
    exact term_mul_left hinv ⟨M.nzx l.1 0, (hrat l).1⟩ _ q
  have hchc : Continuous ch := Complex.continuous_conj.comp (_root_.GlobalTheory.CompanionTheory.PcB.continuous_chz hψ b₀)
  have hF : ∀ q, Continuous (F q) := fun q =>
    hf.comp (continuous_const.mul (hcn.mul continuous_const))
  have hF0 : ∀ (l : ratHerm D ρ) u b, F (e (l, u)) b = F0 u ((l : hermA D ρ) + b) := fun l u b => by
    simp only [F, F0]
    rw [hterm f hinv, hadd]
    congr 1
    have h1 : M.sh (u.2.map (incA D)) * M.emb (u.1.out : GF D p) * (M.nzx b 0 * g) =
        M.nzx b 0 * (M.sh (u.2.map (incA D)) * M.emb (u.1.out : GF D p) * g) := by
      rw [← mul_assoc, mul_assoc (M.sh _), ← hcem, ← mul_assoc, ← hcsh]
      simp only [mul_assoc]
    simp only [mul_assoc] at h1 ⊢
    rw [h1]
  have key := GlobalTheory.T.fundamental_domain_unfolding_two_sums m.lz (ratHerm D ρ) m.𝓖 hFD hvol
    (fun q : Cosets (P D n) (GF D n) => zKer hn (ratOf q.out)) (⊥ : Submodule D.host.E (Fin ρ → D.host.E)) F F0 ch
    (fun q => (hF q).aestronglyMeasurable) hchc.aestronglyMeasurable
    (fun b => by simp only [ch, RCLike.norm_conj]; exact _root_.GlobalTheory.CompanionTheory.PcB.chz_norm hψ b₀ b)
    (fun a b => by simp only [ch]; rw [chz_add, map_mul])
    (fun l => by simp only [ch]; rw [chz_rat hψ b₀ l, map_one])
    Um hUm τ hτ
    (fun l q => by
      obtain ⟨ζ, -, hζ⟩ := (hrat l).2
      have := GlobalTheory.CompanionTheory.SwUnf.cosetCell_rmulEquiv (D := D) (n := n) q ⟨M.nzx l.1 0, (hrat l).1⟩ (bl hn ζ 0 0 0) hζ
      change (cosetCell (τ l q)).comap (zinc hn) = (cosetCell q).comap (zinc hn)
      rw [show cosetCell (τ l q) = cosetCell q from this])
    (fun b => by
      obtain ⟨γ, hγ, hb⟩ := hKc b
      refine ⟨-⟨γ, hγ⟩, fun q => ?_⟩
      have h1 := hτ (-⟨γ, hγ⟩) q (γ + b)
      have h2 : (((-⟨γ, hγ⟩ : ratHerm D ρ) : hermA D ρ) + (γ + b)) = b := by simp
      rw [h2] at h1
      rw [h1]
      exact hub _ _ ⟨(γ + b, g), ⟨hb, hg⟩, rfl⟩)
    e he hfib (fun l l' u => hτe l l' u (hrat l').1) hF0
    (fun y hy => by
      obtain ⟨ν, hν1, hν⟩ := GlobalTheory.T.nondegenerate_centre_character_cell hn hψ b₀ hb₀ y hy
      refine ⟨ν, ?_, fun q hq b => ?_⟩
      · intro h
        apply hν1
        have := congrArg (starRingEnd ℂ) h
        simpa [ch] using this
      · obtain ⟨x, hxP, a, ha, hd, hpe⟩ : ∃ x ∈ P D n, ∃ a : GL (Fin n) (AE D), blkA (mat x) = a.1 ∧
            Matrix.GeneralLinearGroup.det a = 1 ∧ (q.out : G D n) * M.nzx ν 0 = x * (q.out : G D n) := by
          obtain ⟨x, hx, a, ha, hd, hpe⟩ := hν (q.out : GF D n) (M.nzx ν 0) (q.out : GF D n).2 (ratOf q.out) (mat_ratOf _) hq
            (by rw [M.nzx_mat, adj_zero])
          exact ⟨x, hx, a, ha, hd, hpe⟩
        simp only [F, term]
        rw [hadd, mul_assoc (M.nzx ν 0), ← mul_assoc _ (M.nzx ν 0), hpe, mul_assoc, hdet x hxP a ha hd])
  refine ⟨fun u => ?_, ?_⟩
  · obtain ⟨hi, hle⟩ := key.1 u
    refine le_trans ?_ hle
    refine (norm_integral_le_integral_norm _).trans (le_of_eq ?_)
    refine integral_congr_ae (ae_of_all _ fun z => ?_)
    simp only [F0, norm_mul, RCLike.norm_conj, _root_.GlobalTheory.CompanionTheory.PcB.chz_norm hψ b₀, mul_one]
  · exact key.2

theorem zUnfold : ZUnfold := by
  intro D n ρ p hn M m ψ hψ b₀ hb₀ χ hχ s f hf hl hs g
  refine ⟨?_, fun C hC => ?_⟩
  · obtain ⟨Um, -, e, -, h⟩ := unfold_on M m hψ hb₀ hχ hf hl hs {g} isCompact_singleton
    exact (h g rfl).2
  · obtain ⟨Um, hUm, e, he, h⟩ := unfold_on M m hψ hb₀ hχ hf hl hs C hC
    refine ⟨fun u => ∑' l : ratHerm D ρ, Um (e (l, u)), ?_, fun g hg u => (h g hg).1 u⟩
    have h1 : Summable (fun x : (Cosets (P D p) (GF D p) × Matrix (Fin ρ) (Fin p) D.host.E) × ratHerm D ρ => Um (e (x.2, x.1))) :=
      hUm.comp_injective (he.comp Prod.swap_injective)
    exact h1.prod

end GlobalTheory.CompanionTheory.ZUnf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiUnfolding =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHoldsStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHoldsStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.CoefDataExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.fourier_zero_holds : PositivityTheory.PfSWUS.FourierZero := by
  first | exact @GlobalTheory.CompanionTheory.FourierN.fourierZero
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHoldsStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTwistIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTwistIdentity", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixInjective\npublic import Development.AbelianVarietyTheory.BlockTheory.SiegelEisenstein.GramMatrixAdjoint\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RationalAdelicMatricesSelfAnnihilatorStatement\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BruhatImpliesFieldGeneration\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousHalfTr\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinBruhatDecomposition\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinRationalPoints\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HalfTrAddSwap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RationalGroupInductionGenerators\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaSumInvariantWeylInvolution\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TraceInnerMul\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw GlobalTheory.CompanionTheory.EisCovar PositivityTheory.GramSchwartzFunctions.EC

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.ThTw

variable {D : D7} {n ρ p : ℕ} {hn : ρ + p = n}

theorem pr_def (b₀ : HermE D ρ) (u v : Mx D ρ p) : pr b₀ u v = adj u ⬝ (b₀.1.map (incA D) ⬝ v) := rfl

theorem pr_add_left (b₀ : HermE D ρ) (u u' v : Mx D ρ p) : pr b₀ (u + u') v = pr b₀ u v + pr b₀ u' v := by
  simp only [pr_def, adj_add, Matrix.add_mul]

theorem pr_add_right (b₀ : HermE D ρ) (u v v' : Mx D ρ p) : pr b₀ u (v + v') = pr b₀ u v + pr b₀ u v' := by
  simp only [pr_def, Matrix.mul_add]

theorem pr_neg_left (b₀ : HermE D ρ) (u v : Mx D ρ p) : pr b₀ (-u) v = -pr b₀ u v := by
  simp only [pr_def, adj_neg, Matrix.neg_mul]

theorem adj_pr (b₀ : HermE D ρ) (u v : Mx D ρ p) : adj (pr b₀ u v) = pr b₀ v u := by
  simp only [pr_def, adj_mul, adj_adj, GlobalTheory.CompanionTheory.FJE.adj_herm, Matrix.mul_assoc]

theorem trace_pr_swap (b₀ : HermE D ρ) (u v : Mx D ρ p) :
    Matrix.trace (pr b₀ v u) = cA D (Matrix.trace (pr b₀ u v)) := by
  rw [← trace_adj, adj_pr]

theorem trA_pr_comm (b₀ : HermE D ρ) (u v : Mx D ρ p) :
    trA (Matrix.trace (pr b₀ v u)) = trA (Matrix.trace (pr b₀ u v)) := by
  rw [trace_pr_swap, trA, GlobalTheory.DualPairCheck.trace_cA]

theorem trace_mul_pr (b₀ : HermE D ρ) (b : Mx D p p) (u v : Mx D ρ p) :
    Matrix.trace (pr b₀ u (v ⬝ b)) = Matrix.trace (b ⬝ pr b₀ u v) := by
  have : pr b₀ u (v ⬝ b) = pr b₀ u v ⬝ b := by simp only [pr_def, Matrix.mul_assoc]
  rw [this, Matrix.trace_mul_comm]

theorem trace_swap_pr (b₀ : HermE D ρ) {b : Mx D p p} (hb : adj b = b) (u v : Mx D ρ p) :
    Matrix.trace (b ⬝ pr b₀ v u) = cA D (Matrix.trace (b ⬝ pr b₀ u v)) := by
  rw [← trace_adj, adj_mul, hb, adj_pr, Matrix.trace_mul_comm]

theorem quad_shift_pr (b₀ : HermE D ρ) {b : Mx D p p} (hb : adj b = b) (u v : Mx D ρ p) :
    halfTr (Matrix.trace (b ⬝ pr b₀ (u + v) (u + v))) =
      halfTr (Matrix.trace (b ⬝ pr b₀ u u)) + trA (Matrix.trace (pr b₀ u (v ⬝ b))) +
        halfTr (Matrix.trace (pr b₀ v (v ⬝ b))) := by
  rw [pr_add_left, pr_add_right, pr_add_right, Matrix.mul_add, Matrix.mul_add, Matrix.mul_add, Matrix.trace_add,
    Matrix.trace_add, Matrix.trace_add, _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_add', _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_add', _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_add', trace_swap_pr b₀ hb u v,
    trace_mul_pr, trace_mul_pr, ← Unip.halfTr_add_cA (Matrix.trace (b ⬝ pr b₀ u v))]
  abel

theorem psi_halfTr_rat {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (e : D.host.E) :
    ψ (halfTr (incA D e)) = 1 := by
  rw [GlobalTheory.CompanionTheory.HermPoisson.halfTr_incA']
  exact hψ.2.2.1 _

theorem chz_add (ψ : AddChar (AF D.host.F) ℂ) (b₀ : HermE D ρ) (z : hermA D ρ) (w : Mx D ρ ρ) (h : z.1 + w ∈ hermA D ρ) :
    chz ψ b₀ ⟨z.1 + w, h⟩ = chz ψ b₀ z * ψ (halfTr (Matrix.trace (b₀.1.map (incA D) ⬝ w))) := by
  simp only [chz]
  rw [Matrix.mul_add, Matrix.trace_add, _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_add', AddChar.map_add_eq_mul]

theorem trace_rat {k : ℕ} (N : Matrix (Fin k) (Fin k) D.host.E) :
    Matrix.trace (rat N : Mx D k k) = incA D (Matrix.trace N) := by
  simp only [Matrix.trace, Matrix.diag, rat, Matrix.map_apply]
  exact (map_sum (incA D) _ _).symm

theorem character_phase_identity {A : Type} [AddCommGroup A] (ψ : AddChar A ℂ) (a c q u : A) (hq : ψ q = 1) :
    ψ (a - c) * ψ (q + c + u) = ψ u * ψ a := by
  rw [← AddChar.map_add_eq_mul, show a - c + (q + c + u) = q + (u + a) by abel, AddChar.map_add_eq_mul, hq, one_mul,
    AddChar.map_add_eq_mul]

theorem trA_pr_sub (b₀ : HermE D ρ) (x w X : Mx D ρ p) :
    trA (Matrix.trace (pr b₀ (x - w) X)) = trA (Matrix.trace (pr b₀ x X)) - trA (Matrix.trace (pr b₀ X w)) := by
  rw [sub_eq_add_neg, pr_add_left, pr_neg_left, Matrix.trace_add, Matrix.trace_neg, Weyl.trA_add, Weyl.trA_neg,
    sub_eq_add_neg, trA_pr_comm b₀ X w]

theorem term_unip {ψ : AddChar (AF D.host.F) ℂ} {b₀ : HermE D ρ}
    {χ : (AE D)ˣ →* Circle} {θ : InfFam D} {μ : Measure (Mx D ρ p)} {Ω : G D p → Mx D ρ p → ℂ}
    (hΩ : IsTh ψ χ θ b₀ μ Ω) (g : G D p) {b : Mx D p p} (hb : adj b = b)
    (hg : mat g = blk4 1 b 0 1) (h : G D p) (x y X : Mx D ρ p)
    (hq : ψ (halfTr (Matrix.trace (b ⬝ pr b₀ X X))) = 1) :
    ψ (trA (Matrix.trace (pr b₀ (x - y ⬝ b) X))) * Ω (g * h) (X + y) =
      ψ (halfTr (Matrix.trace (pr b₀ y (y ⬝ b)))) * (ψ (trA (Matrix.trace (pr b₀ x X))) * Ω h (X + y)) := by
  rw [hΩ.unip g b hg h, quad_shift_pr b₀ hb, trA_pr_sub, ← mul_assoc, character_phase_identity ψ _ _ _ _ hq, mul_assoc]

theorem rat_quad (b₀ : HermE D ρ) (b : Matrix (Fin p) (Fin p) D.host.E) (ξ : Matrix (Fin ρ) (Fin p) D.host.E) :
    Matrix.trace (rat b ⬝ pr b₀ (rat ξ) (rat ξ) : Mx D p p) = incA D (Matrix.trace (b * (ξᴴ * (b₀.1 * ξ)))) := by
  have e : rat b ⬝ pr b₀ (rat ξ) (rat ξ) = (rat (b * (ξᴴ * (b₀.1 * ξ))) : Mx D p p) := by
    rw [rat_mul, rat_mul, rat_mul, rat_conjTranspose]
    rfl
  rw [e, trace_rat]

theorem th_unip {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {b₀ : HermE D ρ}
    {χ : (AE D)ˣ →* Circle} {θ : InfFam D} {μ : Measure (Mx D ρ p)} {Ω : G D p → Mx D ρ p → ℂ}
    (hΩ : IsTh ψ χ θ b₀ μ Ω) (g : G D p) (b : Matrix (Fin p) (Fin p) D.host.E) (hb : adj (rat b : Mx D p p) = rat b)
    (hg : mat g = blk4 1 (rat b) 0 1) (h : G D p) (z : hermA D ρ) (x y : Mx D ρ p) :
    th ψ b₀ (Ω h) z x y = th ψ b₀ (Ω (g * h)) (zU z y (rat b) hb) (x - y ⬝ rat b) y := by
  set u := halfTr (Matrix.trace (pr b₀ y (y ⬝ rat b))) with hu
  have hz : chz ψ b₀ (zU z y (rat b) hb) = chz ψ b₀ z * ψ (-u) := by
    have e : (zU z y (rat b) hb : hermA D ρ) = ⟨z.1 + -(y ⬝ (rat b ⬝ adj y)), by
      have := (zU z y (rat b) hb).2
      simpa [zU, sub_eq_add_neg] using this⟩ := Subtype.ext (sub_eq_add_neg _ _)
    have e2 : Matrix.trace (b₀.1.map (incA D) ⬝ (y ⬝ (rat b ⬝ adj y))) = Matrix.trace (pr b₀ y (y ⬝ rat b)) := by
      rw [pr_def, ← Matrix.mul_assoc y, ← Matrix.mul_assoc (b₀.1.map (incA D)) (y ⬝ rat b) (adj y), Matrix.trace_mul_comm]
    rw [e, chz_add, Matrix.mul_neg, Matrix.trace_neg, _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_neg', e2]
  have ht : ∀ ξ : Matrix (Fin ρ) (Fin p) D.host.E,
      ψ (trA (Matrix.trace (pr b₀ (x - y ⬝ rat b) (ξ.map (incA D))))) * Ω (g * h) (ξ.map (incA D) + y) =
        ψ u * (ψ (trA (Matrix.trace (pr b₀ x (ξ.map (incA D))))) * Ω h (ξ.map (incA D) + y)) := by
    intro ξ
    refine term_unip hΩ g hb hg h x y _ ?_
    have := rat_quad b₀ b ξ
    rw [show ξ.map (incA D) = rat ξ from rfl, this]
    exact psi_halfTr_rat hψ _
  simp only [th, ht, tsum_mul_left, hz]
  have e1 : ψ (-u) * ψ u = 1 := by
    rw [← AddChar.map_add_eq_mul, neg_add_cancel, AddChar.map_zero_eq_one]
  linear_combination (-(chz ψ b₀ z * ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E, ψ (trA (Matrix.trace (pr b₀ x (ξ.map (incA D))))) * Ω h (ξ.map (incA D) + y))) * e1

def Pp (b₀ : HermE D ρ) (u v : Mx D ρ p) : AF D.host.F := trA (Matrix.trace (pr b₀ u v))

theorem Pp_comm (b₀ : HermE D ρ) (u v : Mx D ρ p) : Pp b₀ u v = Pp b₀ v u := (trA_pr_comm b₀ v u)

theorem Pp_add_left (b₀ : HermE D ρ) (u u' v : Mx D ρ p) : Pp b₀ (u + u') v = Pp b₀ u v + Pp b₀ u' v := by
  simp only [Pp, pr_add_left, Matrix.trace_add, Weyl.trA_add]

theorem Pp_add_right (b₀ : HermE D ρ) (u v v' : Mx D ρ p) : Pp b₀ u (v + v') = Pp b₀ u v + Pp b₀ u v' := by
  simp only [Pp, pr_add_right, Matrix.trace_add, Weyl.trA_add]

theorem Pp_neg_left (b₀ : HermE D ρ) (u v : Mx D ρ p) : Pp b₀ (-u) v = -Pp b₀ u v := by
  simp only [Pp, pr_neg_left, Matrix.trace_neg, Weyl.trA_neg]

theorem phase_weyl {A : Type} [AddCommGroup A] (ψ : AddChar A ℂ) (a b c : A) :
    ψ a * ψ b = ψ (-c) * ψ (a + b + c) := by
  rw [← AddChar.map_add_eq_mul, ← AddChar.map_add_eq_mul, show -c + (a + b + c) = a + b by abel]

theorem pairing_eq (b₀ : HermE D ρ) (ψ : AddChar (AF D.host.F) ℂ) (u v : Mx D ρ p) :
    GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing b₀.1 ψ u v = ψ (Pp b₀ u v) := by
  simp only [GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing, GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.gramQ, GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.mmul, Pp, pr_def]
  rw [Matrix.mul_assoc]
  rfl

theorem continuous_psi_Pp {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (b₀ : HermE D ρ) (x : Mx D ρ p) :
    Continuous fun u : Mx D ρ p => ψ (Pp b₀ x u) := by
  haveI := isTopologicalRing_tens (F := D.host.F) (E := D.host.E) (R := AF D.host.F)
  haveI : IsModuleTopology (AF D.host.F) (AE D) := ⟨rfl⟩
  have ht : Continuous (trA (D := D)) :=
    IsModuleTopology.continuous_of_linearMap (Algebra.trace (AF D.host.F) (AE D))
  exact hψ.1.comp (ht.comp (continuous_const.matrix_mul (continuous_const.matrix_mul continuous_id)).matrix_trace)

theorem poisson_step {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {b₀ : HermE D ρ} (hb : b₀.1.det ≠ 0)
    {χ : (AE D)ˣ →* Circle} {θ : InfFam D} (hθ : IsInfFam θ) (m : Meas D ρ p) {Ω : G D p → Mx D ρ p → ℂ}
    (hΩ : IsTh ψ χ θ b₀ m.μ Ω) (g : G D p) (hg : mat g = blk4 0 1 (-1) 0) (h : G D p) (x y : Mx D ρ p) :
    ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E, ψ (Pp b₀ x (ξ.map (incA D))) * Ω h (ξ.map (incA D) + y) =
      ψ (-Pp b₀ x y) * ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E,
        ψ (Pp b₀ (-y) (ξ.map (incA D))) * Ω (g * h) (ξ.map (incA D) + x) := by
  obtain ⟨i1, i2, i3, i4, i5, K, hK, hKc⟩ := lattice_Mx D ρ p
  haveI : BorelSpace (Mx D ρ p) := ⟨rfl⟩
  have hT : IsHermND (D.sp.cm.sig) b₀.1 := ⟨fun i j => congrFun (congrFun b₀.2 i) j, hb⟩
  obtain ⟨h1, h2⟩ := GlobalTheory.T.rationalAdelicMatrices_self_annihilator D ρ p b₀.1 hT ψ hψ
  have hs := ThetaPoisson.pairing_symm (n := p) hT ψ
  have hμ := m.hμ
  haveI := hμ.1
  have hn1 : ∀ a, ‖ψ a‖ = 1 := hψ.2.1
  let f : Mx D ρ p → ℂ := fun u => Ω h (u + y) * ψ (Pp b₀ x u)
  have hfc : Continuous f :=
    (hΩ.cont.comp (continuous_const.prodMk (continuous_id.add continuous_const))).mul (continuous_psi_Pp hψ b₀ x)
  have hval : ∀ γ : Mx D ρ p, ∫ u, f u * GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing b₀.1 ψ u γ ∂m.μ =
      ψ (-Pp b₀ (γ + x) y) * Ω (g * h) (γ + x) := by
    intro γ
    rw [hΩ.weyl g hg h (γ + x),
      ← integral_add_right_eq_self (μ := m.μ) (fun t => Ω h t * ψ (trA (Matrix.trace (pr b₀ (γ + x) t)))) y,
      ← integral_const_mul]
    refine integral_congr_ae (Filter.Eventually.of_forall fun u => ?_)
    have e : Pp b₀ (γ + x) (u + y) = Pp b₀ x u + Pp b₀ u γ + Pp b₀ (γ + x) y := by
      rw [Pp_add_right, Pp_add_left b₀ γ x u, Pp_comm b₀ γ u]
      abel
    have e2 := phase_weyl ψ (Pp b₀ x u) (Pp b₀ u γ) (Pp b₀ (γ + x) y)
    rw [← e] at e2
    show Ω h (u + y) * ψ (Pp b₀ x u) * GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing b₀.1 ψ u γ =
      ψ (-Pp b₀ (γ + x) y) * (Ω h (u + y) * ψ (Pp b₀ (γ + x) (u + y)))
    rw [pairing_eq]
    linear_combination (Ω h (u + y)) * e2
  have key := ThetaPoisson.poisson_translates (ratMx D ρ p) K hK hKc (GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing (n := p) b₀.1 ψ)
    (fun w => ?_) hs (fun a a' w => ?_) (fun a w => ?_) h1 h2 m.μ m.𝓕 hμ.2.1 hμ.2.2 (f := f) hfc ?_ ?_
  · simp only [hval] at key
    rw [ThetaPoisson.tsum_ratMx f,
      ThetaPoisson.tsum_ratMx (fun γ => ψ (-Pp b₀ (γ + x) y) * Ω (g * h) (γ + x))] at key
    calc ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E, ψ (Pp b₀ x (ξ.map (incA D))) * Ω h (ξ.map (incA D) + y)
        = ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E, f (ξ.map (incA D)) := tsum_congr fun ξ => mul_comm _ _
      _ = _ := key
      _ = _ := by
        rw [← tsum_mul_left]
        refine tsum_congr fun ξ => ?_
        have e : -Pp b₀ (ξ.map (incA D) + x) y = -Pp b₀ x y + Pp b₀ (-y) (ξ.map (incA D)) := by
          rw [Pp_add_left, Pp_neg_left, Pp_comm b₀ y]
          abel
        rw [e, AddChar.map_add_eq_mul, mul_assoc]
  · simp only [hs _ w, pairing_eq]
    exact continuous_psi_Pp hψ b₀ w
  · rw [pairing_eq, pairing_eq, pairing_eq, Pp_add_left, AddChar.map_add_eq_mul]
  · rw [pairing_eq]
    exact hn1 _
  · intro Q hQ
    have hcy : Continuous fun u : Mx D ρ p => u + y := continuous_id.add continuous_const
    obtain ⟨b, hb1, hb2⟩ := ThetaPoisson.translates_bound hθ ⟨Ω h, hΩ.mem h⟩ ((· + y) '' Q) (hQ.image hcy)
    refine ⟨b, hb1, fun u hu ξ => ?_⟩
    have h3 := hb2 (u + y) ⟨u, hu, rfl⟩ ξ
    simp only [f]
    rw [norm_mul, hn1, mul_one, add_assoc]
    exact h3
  · obtain ⟨b, hb1, hb2⟩ := ThetaPoisson.translates_bound hθ ⟨Ω (g * h), hΩ.mem _⟩ {x} isCompact_singleton
    refine Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun γ => ?_) hb1
    rw [hval, norm_mul, hn1, one_mul]
    exact hb2 x rfl γ

theorem chz_zW (ψ : AddChar (AF D.host.F) ℂ) (b₀ : HermE D ρ) (z : hermA D ρ) (x y : Mx D ρ p) :
    chz ψ b₀ (zW z x y) = chz ψ b₀ z * ψ (-Pp b₀ x y) := by
  have e : (zW z x y : hermA D ρ) = ⟨z.1 + -(x ⬝ adj y + y ⬝ adj x), by
      have := (zW z x y).2
      have e' : z.1 + -(x ⬝ adj y + y ⬝ adj x) = (zW z x y).1 := by simp only [zW]; abel
      rw [e']
      exact this⟩ := Subtype.ext (by simp only [zW]; abel)
  have e1 : Matrix.trace (b₀.1.map (incA D) ⬝ (y ⬝ adj x)) = Matrix.trace (pr b₀ x y) := by
    rw [pr_def, ← Matrix.mul_assoc (b₀.1.map (incA D)) y (adj x), Matrix.trace_mul_comm]
  have e2 : Matrix.trace (b₀.1.map (incA D) ⬝ (x ⬝ adj y)) = cA D (Matrix.trace (pr b₀ x y)) := by
    rw [← trace_pr_swap, pr_def, ← Matrix.mul_assoc (b₀.1.map (incA D)) x (adj y), Matrix.trace_mul_comm]
  rw [e, chz_add, Matrix.mul_neg, Matrix.mul_add, Matrix.trace_neg, Matrix.trace_add, e1, e2, _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_neg', _root_.GlobalTheory.CompanionTheory.HermPoisson.halfTr_add',
    add_comm (halfTr (cA D _)), Unip.halfTr_add_cA]
  rfl

theorem th_weyl {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {b₀ : HermE D ρ} (hb : b₀.1.det ≠ 0)
    {χ : (AE D)ˣ →* Circle} {θ : InfFam D} (hθ : IsInfFam θ) (m : Meas D ρ p) {Ω : G D p → Mx D ρ p → ℂ}
    (hΩ : IsTh ψ χ θ b₀ m.μ Ω) (g : G D p) (hg : mat g = blk4 0 1 (-1) 0) (h : G D p) (z : hermA D ρ) (x y : Mx D ρ p) :
    th ψ b₀ (Ω h) z x y = th ψ b₀ (Ω (g * h)) (zW z x y) (-y) x := by
  have key := poisson_step hψ hb hθ m hΩ g hg h x y
  show chz ψ b₀ z * ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E, ψ (Pp b₀ x (ξ.map (incA D))) * Ω h (ξ.map (incA D) + y) =
    chz ψ b₀ (zW z x y) * ∑' ξ : Matrix (Fin ρ) (Fin p) D.host.E,
      ψ (Pp b₀ (-y) (ξ.map (incA D))) * Ω (g * h) (ξ.map (incA D) + x)
  rw [key, chz_zW, mul_assoc]

def glR (a : Matrix (Fin p) (Fin p) D.host.E) (ha : IsUnit a.det) : GL (Fin p) (AE D) :=
  ⟨rat a, rat a⁻¹, by rw [← rat_mul, Matrix.mul_nonsing_inv _ ha, rat_one],
    by rw [← rat_mul, Matrix.nonsing_inv_mul _ ha, rat_one]⟩

theorem det_glR (a : Matrix (Fin p) (Fin p) D.host.E) (ha : IsUnit a.det) :
    ((Matrix.GeneralLinearGroup.det (glR a ha) : (AE D)ˣ) : AE D) = incA D (ha.unit : D.host.Eˣ) := by
  rw [Matrix.GeneralLinearGroup.val_det_apply, IsUnit.unit_spec]
  exact ((incA D).map_det a).symm

theorem chi_rat {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (v : (AE D)ˣ) (u : D.host.Eˣ)
    (hv : (v : AE D) = incA D u) : χ v = 1 := by
  rw [← hχ.2 u]
  exact congrArg χ (Units.ext hv)

theorem absA_rat (v : (AE D)ˣ) (u : D.host.Eˣ) (hv : (v : AE D) = incA D u) : absA D v = 1 := by
  rw [← absE_inclR (F := D.host.F) u]
  exact congrArg _ (Units.ext hv)

theorem trace_pr_levi (b₀ : HermE D ρ) (x X : Mx D ρ p) (a : Mx D p p) :
    Matrix.trace (pr b₀ (x ⬝ adj a) X) = Matrix.trace (pr b₀ x (X ⬝ a)) := by
  simp only [pr_def, adj_mul, adj_adj]
  rw [Matrix.mul_assoc, Matrix.trace_mul_comm]
  simp only [Matrix.mul_assoc]

theorem th_levi {ψ : AddChar (AF D.host.F) ℂ} {b₀ : HermE D ρ}
    {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) {θ : InfFam D} {μ : Measure (Mx D ρ p)} {Ω : G D p → Mx D ρ p → ℂ}
    (hΩ : IsTh ψ χ θ b₀ μ Ω) (g : G D p) (a : Matrix (Fin p) (Fin p) D.host.E) (ha : IsUnit a.det)
    (hg : mat g = blk4 (glR a ha).1 0 0 (adj ((glR a ha)⁻¹).1)) (h : G D p) (z : hermA D ρ) (x y : Mx D ρ p) :
    th ψ b₀ (Ω h) z x y = th ψ b₀ (Ω (g * h)) z (x ⬝ adj (glR a ha).1) (y ⬝ ((glR a ha)⁻¹).1) := by
  have h1 : (((glR a ha)⁻¹).1 : Mx D p p) ⬝ (glR a ha).1 = 1 := by
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  let e : Matrix (Fin ρ) (Fin p) D.host.E ≃ Matrix (Fin ρ) (Fin p) D.host.E :=
    { toFun := fun ξ => ξ * a
      invFun := fun ξ => ξ * a⁻¹
      left_inv := fun ξ => by simp only [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ ha, Matrix.mul_one]
      right_inv := fun ξ => by simp only [Matrix.mul_assoc, Matrix.nonsing_inv_mul _ ha, Matrix.mul_one] }
  have hc : (χ (Matrix.GeneralLinearGroup.det (glR a ha)) : ℂ) = 1 := by
    rw [chi_rat hχ _ ha.unit (det_glR a ha)]
    simp
  have hA : absA D (Matrix.GeneralLinearGroup.det (glR a ha)) = 1 := by
    exact absA_rat _ ha.unit (det_glR a ha)
  simp only [th]
  congr 1
  rw [← e.tsum_eq]
  refine tsum_congr fun ξ => ?_
  rw [hΩ.levi g (glR a ha) hg h, hc, hA, trace_pr_levi]
  have e1 : ((ξ.map (incA D) + y ⬝ ((glR a ha)⁻¹).1) ⬝ (glR a ha).1 : Mx D ρ p) = (e ξ).map (incA D) + y := by
    rw [Matrix.add_mul, Matrix.mul_assoc, h1, Matrix.mul_one]
    congr 1
    exact (rat_mul ξ a).symm
  have e2 : (ξ.map (incA D) ⬝ (glR a ha).1 : Mx D ρ p) = (e ξ).map (incA D) := (rat_mul ξ a).symm
  rw [e1, e2]
  simp [npow]

def St (M : Maps D hn) (ψ : AddChar (AF D.host.F) ℂ) (b₀ : HermE D ρ) (Ω : G D p → Mx D ρ p → ℂ) (γ : G D p) : Prop :=
  ∀ (h : G D p) (z : hermA D ρ) (x y : Mx D ρ p), ∃ (z' : hermA D ρ) (x' y' : Mx D ρ p),
    M.emb γ * (M.nzx z x * M.sh y) = M.nzx z' x' * M.sh y' * M.emb γ ∧
    th ψ b₀ (Ω h) z x y = th ψ b₀ (Ω (γ * h)) z' x' y'

theorem St_mul {M : Maps D hn} {ψ : AddChar (AF D.host.F) ℂ} {b₀ : HermE D ρ} {Ω : G D p → Mx D ρ p → ℂ} {γ₁ γ₂ : G D p}
    (h₁ : St M ψ b₀ Ω γ₁) (h₂ : St M ψ b₀ Ω γ₂) : St M ψ b₀ Ω (γ₁ * γ₂) := by
  intro h z x y
  obtain ⟨z2, x2, y2, e2, t2⟩ := h₂ h z x y
  obtain ⟨z3, x3, y3, e3, t3⟩ := h₁ (γ₂ * h) z2 x2 y2
  refine ⟨z3, x3, y3, ?_, ?_⟩
  · rw [map_mul, mul_assoc, e2, ← mul_assoc, e3, mul_assoc]
  · rw [t2, t3, mul_assoc]

theorem ratGen (D : D7) (p : ℕ) (S : G D p → Prop) (hmul : ∀ g h, S g → S h → S (g * h))
    (hm : ∀ (g : G D p) (a : Matrix (Fin p) (Fin p) D.host.E) (ha : IsUnit a.det),
      mat g = blk4 (glR a ha).1 0 0 (adj ((glR a ha)⁻¹).1) → S g)
    (hn : ∀ (g : G D p) (b : Matrix (Fin p) (Fin p) D.host.E), adj (rat b : Mx D p p) = rat b →
      mat g = blk4 1 (rat b) 0 1 → S g)
    (hw : ∀ g : G D p, mat g = blk4 0 1 (-1) 0 → S g) : ∀ γ ∈ GF D p, S γ := by
  intro γ hγ
  have hF : FieldGen D.host.E (D.sp.cm.sig : D.host.E →+* D.host.E) p :=
    FieldGenPf.fieldGen_of_bruhat GlobalTheory.CompanionTheory.BruhatCell.bruhat D.host.E _ (fun x => star_star x) two_ne_zero p
  obtain ⟨h1, h2, -⟩ := GlobalTheory.CompanionTheory.RatPtsUnn.ratPtsUnn D p
  obtain ⟨g, hgu, hgU, hg⟩ := h1 γ hγ
  let T : Matrix (Fin (p + p)) (Fin (p + p)) D.host.E → Prop := fun N =>
    IsUnit N.det ∧ IsUnitary (D.sp.cm.sig : D.host.E →+* D.host.E) (EC.Jm D.host.E p) N ∧
      ∀ γ' : G D p, mat γ' = N.map (incA D) → S γ'
  have hprod : ∀ M₁ M₂, T M₁ → T M₂ → T (M₁ * M₂) := by
    rintro M₁ M₂ ⟨u₁, U₁, s₁⟩ ⟨u₂, U₂, s₂⟩
    refine ⟨by rw [Matrix.det_mul]; exact u₁.mul u₂, Transfer.isUnitary_mul U₁ U₂, fun γ' e => ?_⟩
    obtain ⟨γ₁, -, e₁⟩ := h2 M₁ u₁ U₁
    obtain ⟨γ₂, -, e₂⟩ := h2 M₂ u₂ U₂
    have e' : γ' = γ₁ * γ₂ := mat_injective' (by rw [e, mat_mul', e₁, e₂, Matrix.map_mul])
    rw [e']
    exact hmul _ _ (s₁ _ e₁) (s₂ _ e₂)
  have hmA : ∀ a : Matrix (Fin p) (Fin p) D.host.E, IsUnit a.det →
      T (mA (D.sp.cm.sig : D.host.E →+* D.host.E) a) := fun a ha =>
    ⟨Transfer.mA_isUnit_det _ ha, Transfer.mA_isUnitary Transfer.sig_sig ha, fun γ' e =>
      hm γ' a ha (e.trans (Transfer.map_mA a))⟩
  have hnB : ∀ b : Matrix (Fin p) (Fin p) D.host.E, cT (D.sp.cm.sig : D.host.E →+* D.host.E) b = b → T (nB b) := by
    intro b hb
    refine ⟨Transfer.nB_isUnit_det b, Transfer.nB_isUnitary hb, fun γ' e => hn γ' b ?_ (e.trans (Transfer.map_nB b))⟩
    rw [← rat_conjTranspose]
    exact congrArg rat hb
  have hJ : T (EC.Jm D.host.E p) :=
    ⟨Transfer.Jm_isUnit_det, Transfer.Jm_isUnitary _, fun γ' e => hw γ' (e.trans Transfer.map_Jm)⟩
  exact (hF T hprod hmA hnB hJ g hgu hgU).2.2 γ hg

theorem thTwist : ThTwist := by
  intro D n ρ p hn M m ψ hψ b₀ hb χ hχ θ hθ Ω hΩ γ hγ z x y z' x' y' e
  have hS : St M ψ b₀ Ω γ := by
    refine ratGen D p (St M ψ b₀ Ω) (fun _ _ => St_mul) ?_ ?_ ?_ γ hγ
    · intro g a ha hg h z x y
      exact ⟨z, _, _, gl_levi M g (glR a ha) hg z x y, th_levi hχ hΩ g a ha hg h z x y⟩
    · intro g b hb' hg h z x y
      exact ⟨_, _, y, gl_unip M g (rat b) hb' hg z x y, th_unip hψ hΩ g b hb' hg h z x y⟩
    · intro g hg h z x y
      exact ⟨_, _, _, gl_weyl M g hg z x y, th_weyl hψ hb hθ m hΩ g hg h z x y⟩
  obtain ⟨z2, x2, y2, e2, t2⟩ := hS 1 z x y
  have e3 : M.nzx z' x' * M.sh y' = M.nzx z2 x2 * M.sh y2 := mul_right_cancel (e.symm.trans e2)
  obtain ⟨rfl, rfl, rfl⟩ := nzx_sh_inj M e3
  rw [t2, mul_one]

end GlobalTheory.CompanionTheory.ThTw
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTwistIdentity =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.SphBound =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.SphBound", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.HeckeEta\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.MapsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiCoefficientOfBound\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiEisenstein\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightFunctionsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacobiMapsExist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PolarPartIdentity\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PoleReality\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RegularSectionOfHeights\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RightIdentityStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientDataExistsStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHolomorphyOfHeights\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierJacobiUnfolding\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierZeroHoldsStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeckeCharacterEtaCondition\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PartialConstantFourierCoefficient\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PartialConstantTermBound\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueMeasureIdentity\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SphericalBoundOfHeights\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTotalOfHeckeEta\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaTwistIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.Rg.Rsw

theorem mapsExist : MapsExist := _root_.GlobalTheory.CompanionTheory.JacobiMaps.mapsExist
theorem htExist : HtExist := _root_.GlobalTheory.CompanionTheory.HtEx.htExist
theorem heckeEta : HeckeEta := _root_.GlobalTheory.CompanionTheory.HeckeEtaExist.heckeEta
theorem fjEis : FJEis := _root_.GlobalTheory.CompanionTheory.FJE.fjEis _root_.GlobalTheory.CompanionTheory.ZUnf.zUnfold _root_.GlobalTheory.CompanionTheory.ThTw.thTwist
theorem pcBound : PcBound := _root_.GlobalTheory.CompanionTheory.PcB.pcBound
theorem rSec : RSec := _root_.GlobalTheory.CompanionTheory.RSecPf.rSec_of_htExist htExist
theorem eisHol : EisHol := _root_.GlobalTheory.CompanionTheory.EisHolFam.eisHol_of_htExist htExist
theorem thTotal : ThTotal := _root_.GlobalTheory.CompanionTheory.ThTot.thTotal heckeEta
theorem cfFJ : CfFJ := _root_.GlobalTheory.CompanionTheory.CfFJ.cfFJ_of_pcBound pcBound
theorem pcFc : PcFc := _root_.GlobalTheory.CompanionTheory.PcFc.target mapsExist GlobalTheory.T.fourier_zero_holds
theorem sphBound : SphBound := _root_.GlobalTheory.CompanionTheory.SphPole.sphBound_of_htExist htExist
theorem resMu : ResMu :=
  _root_.GlobalTheory.CompanionTheory.ResMu.resMu_main mapsExist htExist heckeEta fjEis pcBound rSec eisHol thTotal pcFc sphBound GlobalTheory.T.fourier_zero_holds GlobalTheory.T.coefficient_data_exists
theorem polar : Polar :=
  _root_.GlobalTheory.CompanionTheory.RswPolar.polar mapsExist htExist heckeEta _root_.GlobalTheory.CompanionTheory.Dblock.rightId _root_.GlobalTheory.CompanionTheory.PoleBound.poleReal fjEis pcBound rSec eisHol thTotal cfFJ pcFc sphBound

end PositivityTheory.Rg.Rsw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.SphBound =====
