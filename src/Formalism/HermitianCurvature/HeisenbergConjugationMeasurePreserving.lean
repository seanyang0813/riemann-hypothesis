module

public import Formalism.HermitianCurvature.WeylElementCommutesLevelOne
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Formalism.HermitianCurvature.LevelRecursionCondNeeded
public import Formalism.LatticeTheta.LatticeThetaProofs.LatticeFourierSeries
public import Formalism.LatticeTheta.LatticeThetaProofs.UnfoldCoeff
public import Mathlib.MeasureTheory.Integral.Pi
public import Mathlib.Analysis.SpecialFunctions.JapaneseBracket
public import Formalism.HermitianCurvature.StatementJ
public import Formalism.HermitianCurvature.StatementSz
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaFactorisation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CriticalThresholdLowerBound
public import Formalism.HermitianCurvature.StatementJF
public import Formalism.HermitianCurvature.StatementPN
public import Formalism.HermitianCurvature.StatementTBB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AddedBlockKernelSupport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AxiomsFromFamilies
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellDiagonalMap
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensitySumsAndDomination
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationScalesHeisenbergMeasure
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DualCovolumeChangeOfVariables
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelProperties
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalVolumePositivity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MassRatioFormula
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OutsideSystemsBound
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonJointFirstReduction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingExistence
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupremumAIsMajorant
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentBlockMeasure
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselScaling
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CorollaryAOfPropositionA
import Mathlib.Analysis.Complex.ExponentialBounds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChebyshevToThreshold
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelPropertiesOfHypotheses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JointInstanceTheoremA
import Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelNonzeroModulusDeterminantEq
import Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelQuotientFinite
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalConditionsAndQuotientSplitting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsdFormConjRewrite
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PullLatticeTypedUnit
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarScaling, Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay, Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm, Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary, Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity, Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic, Formalism.HermitianCurvature.HermitianCurvatureProofs.SixteenMulLeTwoPow, Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarScaling =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarScaling", "h": "module\n\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselScaling\npublic import Formalism.HermitianCurvature.WeylElementCommutesLevelOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ComplexConjugate ENNReal NNReal

noncomputable section

namespace Formalism.FourierDecayAlt.P.HaarScaling

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

theorem haar_smul {k r : ℕ} {U : Set (Mat k r)} {μ : Measure (Mt k r)} (h : IsHaarOn U μ) (c : ℝ≥0) (hc : 0 < c) :
    IsHaarOn U (c • μ) := by
  apply Formalism.FourierDecayAlt.P.BesselScaling.haar_smul <;> assumption

section
variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

def scaleG (D : RealPlaceData k r Wp Wq) (c : ℝ≥0) (hc : 0 < c) : RealPlaceData k r Wp Wq :=
  { D with μG := c • D.μG, haarG := haar_smul D.haarG c hc }

theorem iteratedDeriv_two_const_mul (c : ℂ) (f : ℝ → ℂ) :
    iteratedDeriv 2 (fun x => c * f x) = fun x => c * iteratedDeriv 2 f x := by
  have h2 : ∀ g : ℝ → ℂ, iteratedDeriv 2 g = deriv (deriv g) := by
    intro g
    rw [iteratedDeriv_succ, iteratedDeriv_one]
  rw [h2, h2, deriv_const_mul_field', deriv_const_mul_field']

theorem oneMinusDD_const_mul (c : ℂ) (h : ℝ → ℝ → ℂ) (t₁ t₂ : ℝ) :
    oneMinusDD (fun a b => c * h a b) t₁ t₂ = c * oneMinusDD h t₁ t₂ := by
  simp only [oneMinusDD, iteratedDeriv_two_const_mul, ← mul_sub]

variable [FiniteDimensional ℂ Wq]

theorem ph_scale (D : RealPlaceData k r Wp Wq) (c : ℝ≥0) (hc : 0 < c) (F F' : Mat k r → (Wq →L[ℂ] Wp)) (p : SS k r) :
    Ph (scaleG D c hc) F F' p = ((c : ℝ) : ℂ) * Ph D F F' p := by
  have hμ : (scaleG D c hc).μG = c • D.μG := rfl
  unfold Ph
  rw [hμ, integral_smul_nnreal_measure, NNReal.smul_def, Complex.real_smul]
  rfl

theorem betaInf_scale (D : RealPlaceData k r Wp Wq) (c : ℝ≥0) (hc : 0 < c) (F F' : Mat k r → (Wq →L[ℂ] Wp)) :
    betaInf (scaleG D c hc) F F' = ((c : ℝ) : ℂ) * betaInf D F F' := by
  apply Formalism.FourierDecayAlt.P.BesselScaling.betaInf_scale <;> assumption

theorem beta_scale (D : RealPlaceData k r Wp Wq) (c : ℝ≥0) (hc : 0 < c) (F F' : Mat k r → (Wq →L[ℂ] Wp)) :
    beta (scaleG D c hc) F F' = beta D F F' := rfl

end

end Formalism.FourierDecayAlt.P.HaarScaling

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 Formalism.FourierDecayAlt.P.HaarScaling

theorem lemma_b_normalised_of_parts : Formalism.FourierDecayAlt.B2.LemmaBNormFromParts := by
  intro hC hJ hD hI k r Wp Wq _ _ _ _ _ _ D A hA hF
  exact hC k r Wp Wq D A hA hF (hJ k r Wp Wq D) (hD k r Wp Wq D) (hI k r Wp Wq D A hA)

theorem lemma_b_any_measure_from_normalised : Formalism.FourierDecayAlt.B2.LemmaBAnyFromNorm := by
  intro hN hB k r Wp Wq _ _ _ _ _ _ D A hA
  obtain ⟨c, ⟨hc, hF⟩, -⟩ := hB k r Wp Wq D
  have hF' : IntFormula (scaleG D c hc) := hF
  obtain ⟨h1, h2, h3, h4⟩ := hN k r Wp Wq (scaleG D c hc) A hA hF'
  refine ⟨c, hc, hF, h1, ?_, ?_, h4⟩
  · intro F F' hF1 hF2
    rw [← beta_scale D c hc F F', h2 F F' hF1 hF2, betaInf_scale]
  · intro UU Θ hU hS hC F F' hF1 hF2 hs1 hs2 hI1 hI2 hI3 hI4 hIC
    exact h3 UU Θ hU hS hC F F' hF1 hF2 hs1 hs2 hI1 hI2 hI3 hI4
      (fun p hp T hT i j hij hj => (hIC p hp T hT i j hij hj).smul_measure_nnreal)

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.HaarScaling

open Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

end Formalism.FourierDecayAlt.P.HaarScaling
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarScaling =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay", "h": "module\n\npublic import Formalism.HermitianCurvature.LevelRecursionCondNeeded\npublic import Formalism.LatticeTheta.LatticeThetaProofs.LatticeFourierSeries\npublic import Formalism.LatticeTheta.LatticeThetaProofs.UnfoldCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.JapaneseBracket\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PoissonSummationDecay

open Formalism.FourierDecayAlt.F7
open Finset Polynomial
open MeasureTheory Formalism.H
open scoped FourierTransform RealInnerProductSpace ENNReal

theorem poissonStep : PoissonStep := by
  intro V _ _ _ _ _ Λ _ _ φ x hPA hnn S
  obtain ⟨hs, hsum⟩ := hPA
  have hre := Complex.hasSum_re hsum
  have h1 := sum_le_hasSum S (fun l _ => by simpa using hnn l) hre
  simp only [Complex.ofReal_re] at h1
  refine h1.trans ?_
  rw [← Complex.ofReal_inv, Complex.re_ofReal_mul]
  unfold poissonBound
  refine mul_le_mul_of_nonneg_left ?_ (inv_nonneg.mpr (ZLattice.covolume_pos Λ volume).le)
  have hexp : ∀ μ : dual Λ, ‖Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ))‖ = 1 := fun μ => by
    simp [Complex.norm_exp]
  set a : dual Λ → ℂ := fun μ => (𝓕 (fun v => (φ v : ℂ)) : V → ℂ) μ *
      Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ)) with ha
  have hsn := summable_norm_iff.mpr hs
  rw [← Summable.tsum_add_tsum_compl (s := ({0} : Set (dual Λ))) (hs.subtype _) (hs.subtype _), tsum_singleton,
    Complex.add_re]
  have h0 : a 0 = (𝓕 (fun v => (φ v : ℂ)) : V → ℂ) 0 := by
    simp [ha]
  rw [h0]
  gcongr
  refine (Complex.re_le_norm _).trans ((norm_tsum_le_tsum_norm (hsn.subtype _)).trans (le_of_eq ?_))
  refine tsum_congr fun μ => ?_
  simp only [ha, norm_mul, hexp, mul_one]

section Summable

variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V] [BorelSpace V]
  [FiniteDimensional ℝ V]

omit [MeasurableSpace V] [BorelSpace V] [FiniteDimensional ℝ V] [InnerProductSpace ℝ V] in
theorem loc_summable_pt (Λ : Submodule ℤ V) (φ : V → ℂ) (h : LocSummable Λ φ) (x : V) :
    Summable (fun l : Λ => φ ((l:V) + x)) := by
  obtain ⟨b, hb, hbd⟩ := h {x} isCompact_singleton
  exact Summable.of_norm_bounded hb (fun l => hbd l x rfl)

omit [MeasurableSpace V] [BorelSpace V] in
theorem loc_cont (Λ : Submodule ℤ V) (φ : V → ℂ) (hc : Continuous φ) (h : LocSummable Λ φ) :
    Continuous (fun x : V => ∑' l : Λ, φ ((l:V) + x)) := by
  refine continuous_iff_continuousAt.mpr fun x₀ => ?_
  obtain ⟨b, hb, hbd⟩ := h (Metric.closedBall x₀ 1) (isCompact_closedBall x₀ 1)
  have hon : ContinuousOn (fun x : V => ∑' l : Λ, φ ((l : V) + x)) (Metric.closedBall x₀ 1) :=
    continuousOn_tsum (fun l => (hc.comp (continuous_const.add continuous_id)).continuousOn) hb
      (fun l x hx => hbd l x hx)
  exact hon.continuousAt (Metric.closedBall_mem_nhds x₀ one_pos)

omit [MeasurableSpace V] [BorelSpace V] [FiniteDimensional ℝ V] [InnerProductSpace ℝ V] in
theorem loc_per (Λ : Submodule ℤ V) (φ : V → ℂ) (l₀ : Λ) (x : V) :
    ∑' l : Λ, φ ((l:V) + ((l₀:V) + x)) = ∑' l : Λ, φ ((l:V) + x) := by
  simpa only [Equiv.coe_addRight, Submodule.coe_add, add_assoc] using
    (Equiv.addRight l₀).tsum_eq (fun l : Λ => φ ((l : V) + x))

theorem loc_integrable (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (φ : V → ℂ)
    (hc : Continuous φ) (h : LocSummable Λ φ) : Integrable φ := by
  let b := Module.Free.chooseBasis ℤ Λ
  have hD := ZLattice.isAddFundamentalDomain b (volume : Measure V)
  have hDb := ZSpan.fundamentalDomain_isBounded (b.ofZLatticeBasis ℝ Λ)
  have hDm := ZSpan.fundamentalDomain_measurableSet (b.ofZLatticeBasis ℝ Λ)
  obtain ⟨c, hcs, hcb⟩ := h (closure (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ))) hDb.isCompact_closure
  haveI : VAddInvariantMeasure Λ V (volume : Measure V) := ⟨fun c s _ => measure_preimage_add volume (c : V) s⟩
  refine ⟨hc.aestronglyMeasurable, ?_⟩
  unfold HasFiniteIntegral
  rw [hD.lintegral_eq_tsum'']
  have hle : ∀ l : Λ, ∫⁻ x in ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ), ‖φ (l +ᵥ x)‖ₑ ≤
      ENNReal.ofReal |c l| * volume (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ)) := by
    intro l
    rw [← setLIntegral_const]
    refine setLIntegral_mono' hDm fun x hx => ?_
    rw [← ofReal_norm_eq_enorm]
    exact ENNReal.ofReal_le_ofReal ((hcb l x (subset_closure hx)).trans (le_abs_self _))
  calc ∑' l : Λ, ∫⁻ x in ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ), ‖φ (l +ᵥ x)‖ₑ
      ≤ ∑' l : Λ, ENNReal.ofReal |c l| * volume (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ)) :=
        ENNReal.tsum_le_tsum hle
    _ = ENNReal.ofReal (∑' l, |c l|) * volume (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ)) := by
        rw [ENNReal.tsum_mul_right, ENNReal.ofReal_tsum_of_nonneg (fun _ => abs_nonneg _) hcs.abs]
    _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hDb.measure_lt_top

theorem poissonSummable : PoissonSummable := by
  intro V _ _ _ _ _ Λ _ _ φ hc hloc hsum x
  have hint := loc_integrable Λ φ hc hloc
  let b := Module.Free.chooseBasis ℤ Λ
  have hD := ZLattice.isAddFundamentalDomain b (volume : Measure V)
  have hGc : Continuous (fun y : V => ∑' l : Λ, φ ((l : V) + y)) := loc_cont Λ φ hc hloc
  have hGp : ∀ (l : Λ) (y : V), (fun y : V => ∑' l : Λ, φ ((l : V) + y)) ((l : V) + y) =
      (fun y : V => ∑' l : Λ, φ ((l : V) + y)) y := fun l y => loc_per Λ φ l y
  have hcoef : ∀ μ : dual Λ, ∫ y in ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ),
      (fun y : V => ∑' l : Λ, φ ((l : V) + y)) y *
        Complex.exp (-(2 * Real.pi * Complex.I * (⟪(μ : V), y⟫ : ℝ))) = (𝓕 φ : V → ℂ) μ :=
    fun μ => unfoldCoeff_main Λ φ hint _ hD μ μ.2
  have hsumF : Summable (fun μ : dual Λ => (𝓕 φ : V → ℂ) μ) := summable_norm_iff.mp hsum
  have hLFS := lattice_fourier_series V Λ _ hGc hGp _ hD (by simpa only [hcoef] using hsumF) x
  simp only [hcoef] at hLFS
  have hexp : ∀ μ : dual Λ, ‖Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ))‖ = 1 := fun μ => by
    simp [Complex.norm_exp]
  refine ⟨Summable.of_norm_bounded hsum (fun μ => by rw [norm_mul, hexp, mul_one]), ?_⟩
  have hG : (∑' l : Λ, φ ((l : V) + x)) = (ZLattice.covolume Λ : ℂ)⁻¹ * ∑' μ : dual Λ,
      (𝓕 φ : V → ℂ) μ * Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ)) := by
    rw [← hLFS.tsum_eq, ← tsum_mul_left]
    exact tsum_congr fun μ => mul_assoc _ _ _
  rw [← hG]
  exact (loc_summable_pt Λ φ hloc x).hasSum

end Summable

section
variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
  {ι : Type} [Fintype ι]

noncomputable def gP (π : ι → V →L[ℝ] ℂ) (c : V) : ℝ := ∏ v, ((1 + ‖π v c‖) ^ 3)⁻¹

theorem gP_pos (π : ι → V →L[ℝ] ℂ) (c : V) : 0 < gP π c :=
  Finset.prod_pos fun v _ => by positivity

theorem gP_mul_le_gP_add (π : ι → V →L[ℝ] ℂ) (c u : V) : gP π c * gP π u ≤ gP π (c + u) := by
  unfold gP
  rw [← Finset.prod_mul_distrib]
  refine Finset.prod_le_prod₀ (fun v _ => by positivity) (fun v _ => ?_)
  rw [← mul_inv, ← mul_pow]
  apply inv_anti₀ (by positivity)
  apply pow_le_pow_left₀ (by positivity)
  have := norm_add_le (π v c) (π v u)
  rw [map_add (f := _)]
  linarith [norm_nonneg (π v c), norm_nonneg (π v u), mul_nonneg (norm_nonneg (π v c)) (norm_nonneg (π v u))]

theorem le_gP_of_norm_le (π : ι → V →L[ℝ] ℂ) (R : ℝ) (x : V) (hx : ‖x‖ ≤ R) :
    ∏ v, ((1 + ‖π v‖ * R)^3)⁻¹ ≤ gP π x := by
  have hR0 : 0 ≤ R := (norm_nonneg x).trans hx
  unfold gP
  refine Finset.prod_le_prod₀ (fun v _ => inv_nonneg.mpr (pow_nonneg (by positivity) 3)) (fun v _ => ?_)
  apply inv_anti₀ (pow_pos (by positivity) 3)
  apply pow_le_pow_left₀ (by positivity)
  have h1 := (π v).le_opNorm x
  have h2 : ‖π v‖ * ‖x‖ ≤ ‖π v‖ * R := mul_le_mul_of_nonneg_left hx (norm_nonneg _)
  linarith

theorem gP_integrable [MeasurableSpace V] [BorelSpace V] (π : ι → V →L[ℝ] ℂ)
    (hπ : Function.Bijective fun (c : V) (v : ι) => π v c) : Integrable (gP π) := by
  let L : V →ₗ[ℝ] (ι → ℂ) := LinearMap.pi fun v => (π v).toLinearMap
  let T : V ≃L[ℝ] (ι → ℂ) := (LinearEquiv.ofBijective L hπ).toContinuousLinearEquiv
  have h1 : Integrable (fun w : ℂ => ((1 + ‖w‖) ^ 3)⁻¹) := by
    have := integrable_one_add_norm (E := ℂ) (μ := volume) (r := 3) (by simp; norm_num)
    refine this.congr (Filter.Eventually.of_forall fun w => ?_)
    simp only
    rw [Real.rpow_neg (by positivity)]
    norm_cast
  have hg : Integrable (fun z : ι → ℂ => ∏ v, ((1 + ‖z v‖) ^ 3)⁻¹) :=
    Integrable.fintype_prod (f := fun _ w => ((1 + ‖w‖) ^ 3)⁻¹) (μ := fun _ => volume) fun _ => h1
  haveI : (Measure.map T (volume : Measure V)).IsAddHaarMeasure := T.isAddHaarMeasure_map _
  have hmap := Measure.isAddLeftInvariant_eq_smul (Measure.map T (volume : Measure V)) (volume : Measure (ι → ℂ))
  have hg' : Integrable (fun z : ι → ℂ => ∏ v, ((1 + ‖z v‖) ^ 3)⁻¹) (Measure.map T (volume : Measure V)) := by
    rw [hmap]
    exact hg.smul_measure_nnreal
  have := (integrable_map_equiv T.toHomeomorph.toMeasurableEquiv _).mp hg'
  exact this

theorem gP_summable [MeasurableSpace V] [BorelSpace V] (π : ι → V →L[ℝ] ℂ)
    (hπ : Function.Bijective fun (c : V) (v : ι) => π v c)
    (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] :
    Summable (fun l : Λ => gP π l) := by
  let b := Module.Free.chooseBasis ℤ Λ
  have hD := ZLattice.isAddFundamentalDomain b (volume : Measure V)
  have hDb := ZSpan.fundamentalDomain_isBounded (b.ofZLatticeBasis ℝ Λ)
  have hDm := ZSpan.fundamentalDomain_measurableSet (b.ofZLatticeBasis ℝ Λ)
  obtain ⟨R, hR0, hR⟩ := hDb.subset_closedBall_lt 0 0
  have hm : 0 < ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ :=
    Finset.prod_pos fun v _ => inv_pos.mpr (pow_pos (by positivity) 3)
  have hvol : volume (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ)) ≠ 0 := by
    intro h0
    have h1 := ZLattice.covolume_eq_measure_fundamentalDomain Λ volume hD
    have h2 := ZLattice.covolume_pos Λ volume
    rw [h1, Measure.real, h0, ENNReal.toReal_zero] at h2
    exact lt_irrefl _ h2
  haveI : VAddInvariantMeasure Λ V (volume : Measure V) := ⟨fun c s _ => measure_preimage_add volume (c : V) s⟩
  have hint := (gP_integrable π hπ).lintegral_lt_top
  rw [hD.lintegral_eq_tsum''] at hint
  have hge : ∀ l : Λ, ENNReal.ofReal (gP π l) *
      (ENNReal.ofReal (∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹) * volume (ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ))) ≤
      ∫⁻ x in ZSpan.fundamentalDomain (b.ofZLatticeBasis ℝ Λ), ENNReal.ofReal (gP π (l +ᵥ x)) := by
    intro l
    rw [← mul_assoc, ← ENNReal.ofReal_mul (gP_pos π l).le, ← setLIntegral_const]
    refine setLIntegral_mono' hDm fun x hx => ENNReal.ofReal_le_ofReal ?_
    have hx' : ‖x‖ ≤ R := by simpa using hR hx
    exact (mul_le_mul_of_nonneg_left (le_gP_of_norm_le π R x hx') (gP_pos π l).le).trans (gP_mul_le_gP_add π l x)
  have htop : ∑' l : Λ, ENNReal.ofReal (gP π l) ≠ ⊤ := by
    intro htop
    have hle := ENNReal.tsum_le_tsum hge
    rw [ENNReal.tsum_mul_right, htop, ENNReal.top_mul (mul_ne_zero (ENNReal.ofReal_pos.mpr hm).ne' hvol)] at hle
    exact absurd (lt_of_le_of_lt hle hint) (lt_irrefl _)
  have := ENNReal.summable_toReal htop
  refine this.congr fun l => ?_
  exact ENNReal.toReal_ofReal (gP_pos π l).le
end

private theorem nonneg_of_norm_le_mul_gP {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] {ι : Type} [Fintype ι] (π : ι → V →L[ℝ] ℂ) (φ : V → ℂ) (C : ℝ)
    (hφ' : ∀ c, ‖φ c‖ ≤ C * gP π c) : 0 ≤ C := by
  by_contra hneg
  have hneg' : C < 0 := lt_of_not_ge hneg
  have h1 : C * gP π 0 < 0 := mul_neg_of_neg_of_pos hneg' (gP_pos π 0)
  linarith [hφ' 0, h1, norm_nonneg (φ 0)]

private theorem gP_add_mul_prod_inv_le_gP_of_norm_le {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] {ι : Type} [Fintype ι] (π : ι → V →L[ℝ] ℂ) (R : ℝ) (y x : V)
    (hx : ‖-x‖ ≤ R) : gP π (y + x) * ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ ≤ gP π y := by
  calc gP π (y + x) * ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹
      ≤ gP π (y + x) * gP π (-x) :=
        mul_le_mul_of_nonneg_left (le_gP_of_norm_le π R (-x) hx) (gP_pos _ _).le
    _ ≤ gP π (y + x + -x) := gP_mul_le_gP_add π _ _
    _ = gP π y := by rw [add_neg_cancel_right]

private theorem norm_add_le_mul_gP_div_prod_of_norm_le {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] {ι : Type} [Fintype ι] (π : ι → V →L[ℝ] ℂ) (φ : V → ℂ) (C R : ℝ)
    (hC : 0 ≤ C) (hR0 : 0 < R) (hφ' : ∀ c, ‖φ c‖ ≤ C * gP π c) (y x : V) (hx : ‖x‖ ≤ R) :
    ‖φ (y + x)‖ ≤ C * gP π y / ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ := by
  have hm : 0 < ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ := by
    refine Finset.prod_pos fun v _ => inv_pos.mpr (pow_pos ?_ 3)
    have := mul_nonneg (norm_nonneg (π v)) hR0.le
    linarith
  have hx' : ‖-x‖ ≤ R := by rw [norm_neg]; exact hx
  have h1 := gP_add_mul_prod_inv_le_gP_of_norm_le π R y x hx'
  have h3 : gP π (y + x) ≤ gP π y / ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ := (le_div_iff₀ hm).mpr h1
  calc ‖φ (y + x)‖ ≤ C * gP π (y + x) := hφ' _
    _ ≤ C * (gP π y / ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹) := mul_le_mul_of_nonneg_left h3 hC
    _ = C * gP π y / ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹ := (mul_div_assoc _ _ _).symm

private theorem locSummable_of_norm_le_mul_gP {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V] {ι : Type} [Fintype ι]
    (π : ι → V →L[ℝ] ℂ) (hπ : Function.Bijective fun (c : V) (v : ι) => π v c)
    (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (φ : V → ℂ) (C : ℝ)
    (hφ' : ∀ c, ‖φ c‖ ≤ C * gP π c) : LocSummable Λ φ := by
  have hC : 0 ≤ C := nonneg_of_norm_le_mul_gP π φ C hφ'
  intro Kc hK
  obtain ⟨R, hR0, hR⟩ := hK.isBounded.subset_closedBall_lt 0 0
  have hs : Summable (fun l : Λ => C * gP π (l : V) / ∏ v, ((1 + ‖π v‖ * R) ^ 3)⁻¹) :=
    ((gP_summable π hπ Λ).mul_left C).div_const _
  refine ⟨_, hs, fun l x hx => ?_⟩
  have hxR : ‖x‖ ≤ R := by
    simpa [Metric.mem_closedBall, dist_zero_right] using hR hx
  exact norm_add_le_mul_gP_div_prod_of_norm_le π φ C R hC hR0 hφ' (l : V) x hxR

theorem productDecay : ProductDecaySummable := by
  intro V _ _ _ ι _ π hπ Λ _ _ φ C hφ
  letI : MeasurableSpace V := borel V
  haveI : BorelSpace V := ⟨rfl⟩
  exact locSummable_of_norm_le_mul_gP π hπ Λ φ C hφ

theorem stepText (h : PoissonStep) (h2 : PoissonSummable) (h3 : ProductDecaySummable) :
    PoissonStepText := by
  intro V _ _ _ _ _ ι _ π hπ Λ _ _ φ C x hc hφ hsum hnn
  have hloc : LocSummable Λ (fun v => (φ v : ℂ)) :=
    h3 V ι π hπ Λ (fun v => (φ v : ℂ)) C (fun c => by simpa [Complex.norm_real] using hφ c)
  have hPA := h2 V Λ (fun v => (φ v : ℂ)) (Complex.continuous_ofReal.comp hc) hloc hsum x
  exact ⟨hPA, h V Λ φ x hPA hnn⟩

end Formalism.FourierDecayAlt.P.PoissonSummationDecay

namespace Formalism.FourierDecayAlt.P

theorem poisson_summation_level_statement : Formalism.FourierDecayAlt.F7.PoissonStepText :=
  PoissonSummationDecay.stepText PoissonSummationDecay.poissonStep PoissonSummationDecay.poissonSummable PoissonSummationDecay.productDecay

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementJ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset NumberField Formalism.FourierDecayAlt Formalism.FourierDecayAlt.J
open scoped ComplexConjugate ComplexOrder Matrix

namespace Formalism.FourierDecayAlt.P.Jx6

end Formalism.FourierDecayAlt.P.Jx6

namespace Formalism.FourierDecayAlt.P

open Jx6

theorem form_gives_theorem_A : Formalism.FourierDecayAlt.J.FormGivesMain := by
  intro hM P _ B hPos he hKV h2A hF hMass hform hJ hNu hInf hVol hLev hMas hCol hOrd hTyp hInd
  obtain ⟨a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19,
    a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35⟩ := hPos
  have hn : 0 < B.n0c := a33
  have hen : 0 < B.e1 * B.n0c := mul_pos he hn
  have key := hM P { B with supdens := B.e1, KtopV := B.KV / (B.e1 * B.n0c) }
    ⟨a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20,
      a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, he.le, a35⟩ h2A hF
    (by
      constructor
      · show B.KV ≤ B.e1 * B.n0c * (B.KV / (B.e1 * B.n0c))
        rw [mul_div_cancel₀ _ hen.ne']
      · show 0 ≤ B.KV / (B.e1 * B.n0c)
        exact div_nonneg hKV hen.le)
    hMass
    (by show B.e1 ≤ B.e1; exact le_refl _)
    (by
      show B.c0 * B.c0' * (B.KV / (B.e1 * B.n0c)) ≤ (1 + B.δ) * B.IntN
      rw [← mul_div_assoc, div_le_iff₀ hen]
      linarith)
    hJ hNu hInf hVol hLev hMas hCol hOrd hTyp hInd
  exact key

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementSz\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaFactorisation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CriticalThresholdLowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.Sz7

open Finset Formalism.FourierDecayAlt.Sz

private lemma vthp_nonneg_of_ok (c : Cfg) (h : c.Ok) : 0 ≤ c.vthp := by
  unfold Cfg.vthp
  split_ifs with ht
  · obtain ⟨h1, _⟩ := h.htop ht
    have hbp : 0 < c.bp := by linarith
    have hD : (1:ℝ) ≤ c.Del := h.hDel
    exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num) (Nat.cast_nonneg _)) (by linarith)) hbp.le
  · exact le_refl _

private lemma vthp_le_one_tenth_of_small (c : Cfg) (h : c.Ok) (bb : ℝ) (hs : c.Small bb) : c.vthp ≤ 1 / 10 := by
  unfold Cfg.vthp
  split_ifs with ht
  · obtain ⟨h1, _⟩ := h.htop ht
    have hbp : 0 < c.bp := by linarith
    have hm : (2:ℝ) ≤ c.m := by exact_mod_cast h.hm
    have hk : (0:ℝ) ≤ c.k := Nat.cast_nonneg _
    have hD : (1:ℝ) ≤ c.Del := h.hDel
    have hv := hs.hvth
    unfold Cfg.vth at hv
    rw [div_le_iff₀ (by linarith)] at hv
    rw [div_le_iff₀ hbp]
    have hkD : 0 ≤ (c.k:ℝ) * c.Del := mul_nonneg hk (by linarith)
    linarith [mul_le_mul_of_nonneg_left hm hkD]
  · norm_num

theorem aZeroBound : AZeroBound := by
  intro c bb h hs
  have hv0 := vthp_nonneg_of_ok c h
  have hv1 := vthp_le_one_tenth_of_small c h bb hs
  have hW : 0 < 1 + c.vthp := by linarith
  have hE2 : (9:ℝ) / 10 ≤ Real.exp (-(2 * c.m * Real.log bb / c.k)) := by
    have := Real.add_one_le_exp (-(2 * c.m * Real.log bb / c.k))
    linarith [hs.hmu]
  have hE1 : Real.exp c.vth ≤ 10 / 9 := by
    have h1 := Real.add_one_le_exp (-c.vth)
    have h2 : Real.exp c.vth * Real.exp (-c.vth) = 1 := by rw [← Real.exp_add]; simp
    have h3 := Real.exp_pos c.vth
    have h4 := hs.hvth
    linarith [mul_le_mul_of_nonneg_left h1 h3.le, mul_nonneg h3.le (by linarith : (0:ℝ) ≤ 1 / 10 - c.vth)]
  have hS : Real.sqrt (14 / 5) ≤ 1.6734 := by
    exact (Real.sqrt_le_left (by norm_num)).2 (by norm_num)
  have hSE : Real.sqrt (14 / 5) * Real.exp c.vth ≤ 1.6734 * (10 / 9) :=
    mul_le_mul hS hE1 (Real.exp_pos _).le (by norm_num)
  have hcOne : 0 < cOne c bb := by
    unfold cOne
    exact div_pos (by positivity) hW
  have hcLow : 0.38 * (9 / 10) / (11 / 10) ≤ cOne c bb := by
    unfold cOne
    rw [le_div_iff₀ hW]
    have : 0.38 * (9 / 10) / (11 / 10) * (1 + c.vthp) ≤ 0.38 * (9 / 10) := by
      have : (1 + c.vthp) ≤ 11 / 10 := by linarith
      linarith
    linarith
  refine ⟨?_, ?_⟩
  · unfold AZero
    exact div_pos (by positivity) hcOne
  · unfold AZero
    rw [div_le_iff₀ hcOne]
    linarith [hSE, hcLow]

lemma rho_nonneg (c : Cfg) (de de' : ℕ → ℝ) (Y : ℝ) (l i : ℕ) (h : c.Ok)
    (hlk : l + 2 ≤ c.k) (hY : Y ∈ c.cutI l) : 0 ≤ c.rho de de' (-Y) i := by
  unfold Cfg.rho
  split_ifs with ht
  · obtain ⟨h1, _⟩ := h.htop ht.1
    have hY' : 5 / 2 ≤ c.v l + Y ∧ c.v l + Y ≤ c.Del / 2 := hY
    have hv : 4 * c.Del ≤ c.v l := by
      unfold Cfg.v
      have hkl : (l:ℝ) + 2 ≤ c.k := by exact_mod_cast hlk
      linarith [h.hv0, mul_nonneg (by linarith : (0:ℝ) ≤ c.Del) (by linarith : (0:ℝ) ≤ (c.k:ℝ) - 2 - l)]
    exact div_nonneg (Real.sqrt_nonneg _) (by linarith [hY'.2])
  · exact div_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)

lemma prodb_pos (c : Cfg) (h : c.Ok) : 0 < c.prodb := by
  unfold Cfg.prodb
  exact Finset.prod_pos (fun j hj => by
    rw [Finset.mem_Icc] at hj
    linarith [_root_.Formalism.FourierDecayAlt.P.Sz5.b_ge_one c h j hj.1 hj.2])

lemma edge_bound (c : Cfg) (de de' : ℕ → ℝ) (Y : ℝ) (l : ℕ) (h : c.Ok) (hw : IsWord c.k de)
    (hw' : IsWord c.k de') (hl : 1 ≤ l) (hlk : l + 2 ≤ c.k) (hY : Y ∈ c.cutI l) :
    0 < c.aeff ∧ c.U1 (-Y) * c.rho de de' (-Y) (c.k - 1) ≤ 8 / c.aeff := by
  obtain ⟨hU0, hU1, hU2⟩ := edgeFactorBound c Y l h hl hlk hY
  have hr0 := rho_nonneg c de de' Y l (c.k - 1) h hlk hY
  have hD : (1:ℝ) ≤ c.Del := h.hDel
  have hkR : (4:ℝ) ≤ c.k := by exact_mod_cast h.hk
  have hv1 : 0 ≤ c.v 1 := by
    unfold Cfg.v
    push_cast
    linarith [h.hv0, mul_nonneg (by linarith : (0:ℝ) ≤ c.Del) (by linarith : (0:ℝ) ≤ (c.k:ℝ) - 2)]
  have ha : 4 * c.k * c.Del ≤ c.a - c.v 1 := h.ha
  have h4 : 0 < 4 * (c.k:ℝ) * c.Del := mul_pos (mul_pos (by norm_num) (by linarith)) (by linarith)
  have hapos : 0 < c.a - c.v 1 := by linarith
  have hapos' : 0 < c.a := by linarith
  cases htop : c.top
  · have haeff : c.aeff = c.a - c.v 1 := by simp [Cfg.aeff, htop]
    rw [haeff]
    refine ⟨hapos, ?_⟩
    have hr1 := positionAfter c de de' Y l (c.k - 1) h hw hw' hl (by omega) (by omega)
      (Or.inr htop) hY
    have hx : 0 < 1 / (c.a - c.v 1) := one_div_pos.mpr hapos
    have e : 8 / (c.a - c.v 1) = 8 * (1 / (c.a - c.v 1)) := by ring
    calc c.U1 (-Y) * c.rho de de' (-Y) (c.k - 1) ≤ (1 / (c.a - c.v 1)) * 1 :=
          mul_le_mul hU1 hr1 hr0 hx.le
      _ ≤ 8 / (c.a - c.v 1) := by rw [e]; linarith
  · obtain ⟨hbp1, _⟩ := h.htop htop
    have hbp : 0 < c.bp := by linarith
    have hk0 : (c.k:ℝ) ≠ 0 := (by linarith : (0:ℝ) < c.k).ne'
    have hD0 : c.Del ≠ 0 := (by linarith : (0:ℝ) < c.Del).ne'
    have hkD : 0 < (c.k:ℝ) * c.Del := mul_pos (by linarith) (by linarith)
    have haeff : c.aeff = c.a * c.bp / (c.k * c.Del) := by simp [Cfg.aeff, htop]
    rw [haeff]
    refine ⟨div_pos (mul_pos hapos' hbp) hkD, ?_⟩
    have hr1 := positionTop c de de' Y l h htop hl hlk hY
    have ha0 := hapos'.ne'
    have hb0 := hbp.ne'
    calc c.U1 (-Y) * c.rho de de' (-Y) (c.k - 1) ≤ (2 / c.a) * (4 * c.k * c.Del / c.bp) :=
          mul_le_mul (hU1.trans hU2) hr1 hr0 (div_nonneg (by norm_num) hapos'.le)
      _ = 8 / (c.a * c.bp / (c.k * c.Del)) := by
          field_simp
          ring

lemma prod_split (f : ℕ → ℝ) (k l : ℕ) (hl : 1 ≤ l) (hlk : l + 2 ≤ k) :
    ∏ i ∈ Icc 1 (k - 1), f i =
      (∏ i ∈ Ico 1 l, f i) * (f l * ((∏ i ∈ Ico (l + 1) (k - 1), f i) * f (k - 1))) := by
  obtain ⟨n, rfl⟩ : ∃ n, k = n + 1 := ⟨k - 1, by omega⟩
  have e1 : n + 1 - 1 = n := by omega
  rw [e1]
  have e2 : Icc 1 n = Ico 1 (n + 1) := by
    ext x
    simp only [Finset.mem_Icc, Finset.mem_Ico]
    omega
  rw [e2, ← Finset.prod_Ico_consecutive f hl (by omega : l ≤ n + 1),
    Finset.prod_eq_prod_Ico_succ_bot (by omega : l < n + 1),
    Finset.prod_Ico_succ_top (by omega : l + 1 ≤ n)]

theorem betaOnCut_of_tcritLower (HT : TcritLower) : BetaOnCut := by
  intro c r bb de de' ka rd g VV T T' Y l h hm hs hw hw' hrd hka hg hFD hT hT' hl hlk hne hY
  have hka0 : 0 < ka := by rw [hka]; exact div_pos (by positivity) (by linarith)
  have hg0 : 0 < g := by linarith [Real.pi_pos]
  have hA : 0 < (ka ^ (c.m - 1))⁻¹ := inv_pos.mpr (pow_pos hka0 _)
  have hB : 0 < (Real.sqrt (T * T'))⁻¹ := inv_pos.mpr (Real.sqrt_pos.mpr (mul_pos hT hT'))
  have hgm : 0 < g ^ c.m := pow_pos hg0 _
  obtain ⟨haeff, hUR⟩ := edge_bound c de de' Y l h hw hw' hl hlk hY
  have hP := prodb_pos c h
  have hv0 := vthp_nonneg_of_ok c h
  have hcOne : 0 < cOne c bb := by
    unfold cOne
    exact div_pos (by positivity) (by linarith)
  have hfac := (betaFactorisation c de de' ka T T' Y l h hw hw' hT hT' hl hlk hne hY).2.2.2
  have hsplit := prod_split (c.rho de de' (-Y)) c.k l hl hlk
  have hR0 := positionsBefore c de de' Y l h hw hw' hl hlk hY
  have hRl := (slotAt_true c de de' Y l h hw hw' hl hlk hne hY).2
  have hN := nodeBound c Y l h hl hlk hY
  have hRm : ∏ i ∈ Ico (l + 1) (c.k - 1), c.rho de de' (-Y) i ≤ 1 :=
    Finset.prod_le_one₀ (fun i _ => rho_nonneg c de de' Y l i h hlk hY)
      (fun i hi => by
        rw [Finset.mem_Ico] at hi
        exact positionAfter c de de' Y l i h hw hw' hl (by omega) (by omega)
          (Or.inl (by omega)) hY)
  have hR00 : 0 ≤ ∏ i ∈ Ico 1 l, c.rho de de' (-Y) i :=
    Finset.prod_nonneg (fun i _ => rho_nonneg c de de' Y l i h hlk hY)
  have hRm0 : 0 ≤ ∏ i ∈ Ico (l + 1) (c.k - 1), c.rho de de' (-Y) i :=
    Finset.prod_nonneg (fun i _ => rho_nonneg c de de' Y l i h hlk hY)
  have hRl0 := rho_nonneg c de de' Y l l h hlk hY
  have hRk0 := rho_nonneg c de de' Y l (c.k - 1) h hlk hY
  have hU0 : 0 < c.U1 (-Y) := (edgeFactorBound c Y l h hl hlk hY).1
  have hsq : Real.sqrt (14 * (c.v l + Y) / (5 * c.Del)) =
      Real.sqrt (14 / 5) * Real.sqrt ((c.v l + Y) / c.Del) := by
    rw [← Real.sqrt_mul (show (0:ℝ) ≤ 14 / 5 by norm_num) ((c.v l + Y) / c.Del)]
    congr 1
    ring
  rw [hsq] at hRl
  have hT1 := HT c r bb de ka rd g VV h hm hs hw hrd hka hg hFD
  have hT2 := HT c r bb de' ka rd g VV h hm hs hw' hrd hka hg hFD
  have hQ0 : 0 < cOne c bb * g ^ c.m * (ka ^ (c.m - 1))⁻¹ * c.prodb / c.aeff :=
    div_pos (mul_pos (mul_pos (mul_pos hcOne hgm) hA) hP) haeff
  have htv : cOne c bb * g ^ c.m * (ka ^ (c.m - 1))⁻¹ * c.prodb / c.aeff *
      (Real.sqrt (T * T'))⁻¹ ≤ tv c de de' ka rd g VV T T' := by
    unfold tv
    rw [Real.le_sqrt' (mul_pos hQ0 hB), mul_pow, inv_pow, Real.sq_sqrt (mul_pos hT hT').le,
      div_eq_mul_inv (Tcrit c.k c.m ka rd g VV (Vand c.k (c.u de)) *
        Tcrit c.k c.m ka rd g VV (Vand c.k (c.u de')))]
    refine mul_le_mul_of_nonneg_right ?_ (inv_nonneg.mpr (mul_pos hT hT').le)
    rw [pow_two]
    exact mul_le_mul hT1 hT2 hQ0.le (hQ0.le.trans hT1)
  have hEP : 0 < Real.exp c.vth * c.prodb := mul_pos (Real.exp_pos _) hP
  have hsk : 0 ≤ Real.sqrt c.k := Real.sqrt_nonneg _
  have hsx : 0 ≤ Real.sqrt ((c.v l + Y) / c.Del) := Real.sqrt_nonneg _
  have hs5 : 0 ≤ Real.sqrt (14 / 5) := Real.sqrt_nonneg _
  have b1 := mul_le_mul hN hR0 hR00 hEP.le
  have b2 := mul_le_mul b1 hRl hRl0 (mul_nonneg hEP.le (mul_nonneg (by norm_num) hsk))
  have b3 := mul_le_mul b2 hRm hRm0
    (mul_nonneg (mul_nonneg hEP.le (mul_nonneg (by norm_num) hsk)) (mul_nonneg hs5 hsx))
  have b4 := mul_le_mul b3 hUR (mul_nonneg hU0.le hRk0)
    (mul_nonneg (mul_nonneg (mul_nonneg hEP.le (mul_nonneg (by norm_num) hsk))
      (mul_nonneg hs5 hsx)) (by norm_num))
  have hK : 0 ≤ g ^ c.m * (ka ^ (c.m - 1))⁻¹ * (Real.sqrt (T * T'))⁻¹ :=
    (mul_pos (mul_pos hgm hA) hB).le
  have hAZ : 0 ≤ 8 * 3.3 * Real.sqrt (14 / 5) * Real.exp c.vth / cOne c bb :=
    div_nonneg (by positivity) hcOne.le
  have hae := haeff.ne'
  have hco := hcOne.ne'
  rw [hfac, hsplit]
  calc g ^ c.m * ((ka ^ (c.m - 1))⁻¹ * (Real.sqrt (T * T'))⁻¹ * c.Nd (-Y) * c.U1 (-Y) *
        ((∏ i ∈ Ico 1 l, c.rho de de' (-Y) i) * (c.rho de de' (-Y) l *
          ((∏ i ∈ Ico (l + 1) (c.k - 1), c.rho de de' (-Y) i) * c.rho de de' (-Y) (c.k - 1)))))
      = g ^ c.m * (ka ^ (c.m - 1))⁻¹ * (Real.sqrt (T * T'))⁻¹ *
        (c.Nd (-Y) * (∏ i ∈ Ico 1 l, c.rho de de' (-Y) i) * c.rho de de' (-Y) l *
          (∏ i ∈ Ico (l + 1) (c.k - 1), c.rho de de' (-Y) i) *
          (c.U1 (-Y) * c.rho de de' (-Y) (c.k - 1))) := by ring
    _ ≤ g ^ c.m * (ka ^ (c.m - 1))⁻¹ * (Real.sqrt (T * T'))⁻¹ *
        (Real.exp c.vth * c.prodb * (3.3 * Real.sqrt c.k) *
          (Real.sqrt (14 / 5) * Real.sqrt ((c.v l + Y) / c.Del)) * 1 * (8 / c.aeff)) :=
        mul_le_mul_of_nonneg_left b4 hK
    _ = 8 * 3.3 * Real.sqrt (14 / 5) * Real.exp c.vth / cOne c bb *
        (cOne c bb * g ^ c.m * (ka ^ (c.m - 1))⁻¹ * c.prodb / c.aeff * (Real.sqrt (T * T'))⁻¹) *
        Real.sqrt c.k * Real.sqrt ((c.v l + Y) / c.Del) := by
        field_simp
    _ ≤ 8 * 3.3 * Real.sqrt (14 / 5) * Real.exp c.vth / cOne c bb *
        tv c de de' ka rd g VV T T' * Real.sqrt c.k * Real.sqrt ((c.v l + Y) / c.Del) :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left htv hAZ) hsk) hsx
    _ = AZero c bb * tv c de de' ka rd g VV T T' * Real.sqrt c.k *
        Real.sqrt ((c.v l + Y) / c.Del) := rfl

end Formalism.FourierDecayAlt.P.Sz7

namespace Formalism.FourierDecayAlt.P

alias a_zero_le_one_sixty := _root_.Formalism.FourierDecayAlt.P.Sz7.aZeroBound

theorem beta_bound_on_boundary : Formalism.FourierDecayAlt.Sz.BetaOnCut := Sz7.betaOnCut_of_tcritLower critical_threshold_lower_bound

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementSz\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt.Sz Finset

namespace Formalism.FourierDecayAlt.P

namespace Sz8

lemma prodBound {ι : Type} [Fintype ι] (F t : ι → ℝ) (K Ct : ℝ) (hK : 0 ≤ K)
    (hF : ∀ w, 0 ≤ F w ∧ F w ≤ K * t w) (ht : ∏ w, t w ≤ Ct) :
    ∏ w, F w ≤ Ct * K ^ Fintype.card ι := by
  have h1 : ∏ w, F w ≤ ∏ w, (K * t w) :=
    Finset.prod_le_prod₀ (fun w _ => (hF w).1) (fun w _ => (hF w).2)
  rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ] at h1
  have h2 : K ^ Fintype.card ι * ∏ w, t w ≤ K ^ Fintype.card ι * Ct :=
    mul_le_mul_of_nonneg_left ht (pow_nonneg hK _)
  linarith

lemma cmRing_idempotent_unitRatio_identity (f : ℕ) (hf : 1 ≤ f) (Ct Z Th : ℝ) (hCt : 1 ≤ Ct) (hZ : 0 ≤ Z) (hTh : 0 < Th)
    (h : (Th ^ f)⁻¹ ≤ Ct * Z ^ f) : Th⁻¹ ≤ Ct * Z := by
  have hTh' : 0 < Th⁻¹ := inv_pos.mpr hTh
  have hf0 : f ≠ 0 := by omega
  have hCtf : Ct ≤ Ct ^ f := by
    calc Ct = Ct ^ 1 := (pow_one Ct).symm
      _ ≤ Ct ^ f := pow_le_pow_right₀ hCt hf
  have hZf : 0 ≤ Z ^ f := pow_nonneg hZ f
  have key : Th⁻¹ ^ f ≤ (Ct * Z) ^ f := by
    rw [inv_pow, mul_pow]
    calc (Th ^ f)⁻¹ ≤ Ct * Z ^ f := h
      _ ≤ Ct ^ f * Z ^ f := mul_le_mul_of_nonneg_right hCtf hZf
  exact (pow_le_pow_iff_left₀ hTh'.le (mul_nonneg (by linarith) hZ) hf0).mp key

lemma delLower (k f : ℕ) (lb CDel Del : ℝ) (hk : 1 ≤ k) (hf : 1 ≤ f) (hlb : 1 ≤ lb)
    (hC : 4 < CDel) (h : ((k : ℝ) * f * lb) ^ CDel ≤ Del) :
    (k : ℝ) ^ 4 * (f : ℝ) ^ 4 * (k : ℝ) ^ (CDel - 4) ≤ Del := by
  have hk0 : (1:ℝ) ≤ k := by exact_mod_cast hk
  have hf0 : (1:ℝ) ≤ f := by exact_mod_cast hf
  have hkpos : (0:ℝ) < k := by linarith
  have hfl : 1 ≤ (f:ℝ) * lb := one_le_mul_of_one_le_of_one_le hf0 hlb
  have e1 : ((k : ℝ) * f * lb) ^ CDel = (k:ℝ) ^ CDel * ((f:ℝ) * lb) ^ CDel := by
    rw [mul_assoc, Real.mul_rpow hkpos.le (by positivity)]
  have e2 : (k : ℝ) ^ 4 * (k : ℝ) ^ (CDel - 4) = (k:ℝ) ^ CDel := by
    have : (k:ℝ) ^ (4:ℝ) * (k:ℝ) ^ (CDel - 4) = (k:ℝ) ^ CDel := by
      rw [← Real.rpow_add hkpos]; ring_nf
    rw [← this]; norm_cast
  have e3 : (f:ℝ) ^ 4 ≤ ((f:ℝ) * lb) ^ CDel := by
    calc (f:ℝ) ^ 4 ≤ ((f:ℝ) * lb) ^ 4 := by
          apply pow_le_pow_left₀ (by linarith); exact le_mul_of_one_le_right (by linarith) hlb
      _ = ((f:ℝ) * lb) ^ (4:ℝ) := by norm_cast
      _ ≤ ((f:ℝ) * lb) ^ CDel := Real.rpow_le_rpow_of_exponent_le hfl hC.le
  have hkC : 0 ≤ (k:ℝ) ^ CDel := by positivity
  calc (k : ℝ) ^ 4 * (f : ℝ) ^ 4 * (k : ℝ) ^ (CDel - 4)
      = (k:ℝ) ^ CDel * (f:ℝ) ^ 4 := by rw [← e2]; ring
    _ ≤ (k:ℝ) ^ CDel * ((f:ℝ) * lb) ^ CDel := mul_le_mul_of_nonneg_left e3 hkC
    _ = ((k : ℝ) * f * lb) ^ CDel := e1.symm
    _ ≤ Del := h

lemma sqrtTTLower (x bb cT Cb mr TT : ℝ) (hx : 1 ≤ x) (hcT : 0 < cT) (hCb : 0 < Cb) (hm : 2 ≤ mr)
    (hbb : x ^ (Cb / 2) ≤ bb) (hTT : (bb ^ (cT * mr)) ^ 2 ≤ TT) :
    x * x ^ (cT * Cb - 1) ≤ Real.sqrt TT := by
  have hx0 : 0 < x := by linarith
  have e1 : x * x ^ (cT * Cb - 1) = x ^ (cT * Cb) := by
    conv_lhs => arg 1; rw [← Real.rpow_one x]
    rw [← Real.rpow_add hx0]; ring_nf
  rw [e1]
  have hs : bb ^ (cT * mr) ≤ Real.sqrt TT := by
    apply Real.le_sqrt_of_sq_le; exact hTT
  have h2 : (x ^ (Cb / 2)) ^ (cT * mr) ≤ bb ^ (cT * mr) :=
    Real.rpow_le_rpow (by positivity) hbb (by positivity)
  have h3 : (x ^ (Cb / 2)) ^ (cT * mr) = x ^ (Cb / 2 * (cT * mr)) := by
    rw [← Real.rpow_mul hx0.le]
  have h4 : x ^ (cT * Cb) ≤ x ^ (Cb / 2 * (cT * mr)) := by
    apply Real.rpow_le_rpow_of_exponent_le hx
    have : cT * Cb * 2 ≤ cT * Cb * mr := mul_le_mul_of_nonneg_left hm (by positivity)
    linarith
  linarith

lemma quantOne (x fr mr K P W Del : ℝ) (hx : 1 ≤ x) (hm : 0 < mr) (hmf : mr ≤ fr) (hf : 1 ≤ fr)
    (hPK : P ^ 2 ≤ K) (hW : 0 < W) (hWx : 1000 * W ^ 2 ≤ x)
    (hDel : x ^ 4 * fr ^ 4 * K ≤ Del) :
    P ≤ Real.sqrt (Del / (x * (10 * mr) ^ 3)) / W := by
  have hx0 : 0 < x := by linarith
  rcases le_or_gt P 0 with hP | hP
  · have : 0 ≤ Real.sqrt (Del / (x * (10 * mr) ^ 3)) / W := by positivity
    linarith
  rw [le_div_iff₀ hW]
  apply Real.le_sqrt_of_sq_le
  rw [le_div_iff₀ (by positivity)]
  have hK : 0 ≤ K := le_trans (sq_nonneg P) hPK
  have hm3 : mr ^ 3 ≤ fr ^ 4 := by
    calc mr ^ 3 ≤ fr ^ 3 := pow_le_pow_left₀ hm.le hmf 3
      _ ≤ fr ^ 4 := pow_le_pow_right₀ hf (by norm_num)
  have hx3 : x ≤ x ^ 3 := by
    calc x = x ^ 1 := (pow_one x).symm
      _ ≤ x ^ 3 := pow_le_pow_right₀ hx (by norm_num)
  have A1 : (P * W) ^ 2 * (x * (10 * mr) ^ 3) = P ^ 2 * (1000 * W ^ 2) * x * mr ^ 3 := by ring
  rw [A1]
  have B1 : P ^ 2 * (1000 * W ^ 2) * x * mr ^ 3 ≤ P ^ 2 * x * x * fr ^ 4 := by
    have := mul_le_mul hWx hm3 (by positivity) hx0.le
    have hp2 : 0 ≤ P ^ 2 := sq_nonneg P
    linarith [mul_le_mul_of_nonneg_left this (mul_nonneg hp2 hx0.le)]
  have B2 : P ^ 2 * x * x * fr ^ 4 ≤ x ^ 4 * fr ^ 4 * K := by
    have hxx : x * x ≤ x ^ 4 := by rw [← sq]; exact pow_le_pow_right₀ hx (by norm_num)
    have : P ^ 2 * (x * x) * fr ^ 4 ≤ K * x ^ 4 * fr ^ 4 := by
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      exact mul_le_mul hPK hxx (by positivity) hK
    linarith
  linarith

lemma quantitative_fourth_power_bound (x fr mr K P V s Del : ℝ) (hx : 1 ≤ x) (hm : 0 < mr) (hmf : mr ≤ fr)
    (hf : 1 ≤ fr) (hP : 0 ≤ P) (hPK : P ≤ K) (hV : 0 < V) (hVx : 40 * V ≤ x) (hs0 : 0 ≤ s)
    (hs : s ≤ x) (hDel : x ^ 4 * fr ^ 4 * K ≤ Del) :
    P * (V * s * (10 * mr)) ≤ Del / 4 := by
  have hK : 0 ≤ K := le_trans hP hPK
  have hV' : V ≤ x / 40 := by linarith
  have h1 : V * s ≤ x / 40 * x := mul_le_mul hV' hs hs0 (by linarith)
  have h2 : V * s * (10 * mr) ≤ x / 40 * x * (10 * fr) :=
    mul_le_mul h1 (by linarith) (by linarith) (by positivity)
  have h3 : P * (V * s * (10 * mr)) ≤ K * (x / 40 * x * (10 * fr)) :=
    mul_le_mul hPK h2 (by positivity) hK
  have hx2 : x ^ 2 ≤ x ^ 4 := pow_le_pow_right₀ hx (by norm_num)
  have hf1 : fr ≤ fr ^ 4 := by
    calc fr = fr ^ 1 := (pow_one fr).symm
      _ ≤ fr ^ 4 := pow_le_pow_right₀ hf (by norm_num)
  have h4 : K * (x / 40 * x * (10 * fr)) ≤ x ^ 4 * fr ^ 4 * K / 4 := by
    have : x ^ 2 * fr ≤ x ^ 4 * fr ^ 4 := mul_le_mul hx2 hf1 (by linarith) (by positivity)
    have := mul_le_mul_of_nonneg_left this hK
    linarith
  linarith

lemma quantThree (x E P M sT : ℝ) (hx : 1 ≤ x) (hPE : P ^ 2 ≤ E) (hM : 0 < M)
    (hMx : M ^ 2 ≤ x) (hsT : x * E ≤ sT) :
    P ≤ Real.sqrt (sT / (M * Real.sqrt x)) := by
  have hx0 : 0 < x := by linarith
  rcases le_or_gt P 0 with hP | hP
  · have : 0 ≤ Real.sqrt (sT / (M * Real.sqrt x)) := Real.sqrt_nonneg _
    linarith
  apply Real.le_sqrt_of_sq_le
  have hsx : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  rw [le_div_iff₀ (by positivity)]
  have hMs : M ≤ Real.sqrt x := Real.le_sqrt_of_sq_le hMx
  have hMsx : M * Real.sqrt x ≤ x := by
    calc M * Real.sqrt x ≤ Real.sqrt x * Real.sqrt x := mul_le_mul_of_nonneg_right hMs hsx.le
      _ = x := Real.mul_self_sqrt hx0.le
  have hE : 0 ≤ E := le_trans (sq_nonneg P) hPE
  have := mul_le_mul hPE hMsx (by positivity) hE
  linarith

end Sz8

theorem threshold_products : ThresholdProducts := by
  intro ι _ t B1 B k C A0 Ct ka N I g Del TT i s hC hA0 hCt hka hkapi hN hI hg hDel hTT hCN ht htp hB1 hB hi
  have hC0 : 0 ≤ C := by linarith
  have hbase0 : 0 ≤ C * ka * N / (g * I) := by positivity
  have hbase : C * ka * N / (g * I) ≤ C * Real.pi * N / I := by
    rw [div_le_div_iff₀ (by positivity) hI]
    have h1 : C * ka * N ≤ C * Real.pi * N := by
      apply mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hkapi hC0) hN.le
    have h2 : C * Real.pi * N ≤ C * Real.pi * N * g := le_mul_of_one_le_right (by positivity) hg
    have h3 : C * ka * N * I ≤ C * Real.pi * N * g * I :=
      mul_le_mul_of_nonneg_right (le_trans h1 h2) hI.le
    linarith
  have hbase1 : C * ka * N / (g * I) ≤ 1 := le_trans hbase hCN
  have hCB : ∀ w, C * B w ≤ C * A0 * Real.sqrt k * t w := fun w => by
    have := mul_le_mul_of_nonneg_left (hB w).2 hC0
    linarith
  refine ⟨?_, ?_, ?_, ?_⟩
  · have e : ∀ b, xHat 1 C ka N I g b = C * b := fun b => by simp [xHat]
    have hs : Real.sqrt (k * N ^ 3 / Del) = Real.sqrt k * Real.sqrt (N ^ 3 / Del) := by
      rw [mul_div_assoc, Real.sqrt_mul (Nat.cast_nonneg k)]
    have := Sz8.prodBound (fun w => xHat 1 C ka N I g (B1 w)) t
      (C * A0 * Real.sqrt (k * N ^ 3 / Del)) Ct (by positivity) (fun w => by
        simp only [e]
        refine ⟨mul_nonneg hC0 (hB1 w).1, ?_⟩
        have := mul_le_mul_of_nonneg_left (hB1 w).2 hC0
        rw [hs]; linarith) htp
    calc _ ≤ _ := this
      _ = _ := by rw [mul_pow, mul_assoc]
  · intro hi2
    have hex : 2 ≤ 2 * i - 2 := by omega
    have := Sz8.prodBound (fun w => xHat i C ka N I g (B w)) t
      (C * A0 * Real.sqrt k * (C * Real.pi * N / I) ^ 2) Ct (by positivity) (fun w => by
        simp only [xHat]
        have hp1 : (C * ka * N / (g * I)) ^ (2 * i - 2) ≤ (C * ka * N / (g * I)) ^ 2 :=
          pow_le_pow_of_le_one hbase0 hbase1 hex
        have hp2 : (C * ka * N / (g * I)) ^ 2 ≤ (C * Real.pi * N / I) ^ 2 :=
          pow_le_pow_left₀ hbase0 hbase 2
        have hCB0 : 0 ≤ C * B w := mul_nonneg hC0 (hB w).1
        refine ⟨mul_nonneg hCB0 (pow_nonneg hbase0 _), ?_⟩
        calc C * B w * (C * ka * N / (g * I)) ^ (2 * i - 2)
            ≤ (C * A0 * Real.sqrt k * t w) * (C * Real.pi * N / I) ^ 2 :=
              mul_le_mul (hCB w) (le_trans hp1 hp2) (pow_nonneg hbase0 _) (hCB0.trans (hCB w))
          _ = _ := by ring) htp
    calc _ ≤ _ := this
      _ = _ := by rw [mul_pow, ← pow_mul]; ring
  · intro hs2
    have hex : 1 ≤ 2 * (i - 1) + s - 1 := by omega
    have := Sz8.prodBound (fun w => lamHat i s C ka N I g (B w)) t
      (C * A0 * Real.sqrt k * (C * Real.pi * N / I)) Ct (by positivity) (fun w => by
        simp only [lamHat]
        have hp1 : (C * ka * N / (g * I)) ^ (2 * (i - 1) + s - 1) ≤ (C * ka * N / (g * I)) ^ 1 :=
          pow_le_pow_of_le_one hbase0 hbase1 hex
        rw [pow_one] at hp1
        have hCB0 : 0 ≤ C * B w := mul_nonneg hC0 (hB w).1
        refine ⟨mul_nonneg hCB0 (pow_nonneg hbase0 _), ?_⟩
        calc C * B w * (C * ka * N / (g * I)) ^ (2 * (i - 1) + s - 1)
            ≤ (C * A0 * Real.sqrt k * t w) * (C * Real.pi * N / I) :=
              mul_le_mul (hCB w) (le_trans hp1 hbase) (pow_nonneg hbase0 _) (hCB0.trans (hCB w))
          _ = _ := by ring) htp
    calc _ ≤ _ := this
      _ = _ := by rw [mul_pow]; ring
  · have hsT : 0 < Real.sqrt TT := Real.sqrt_pos.mpr hTT
    have hst : ∏ w, Real.sqrt (t w) ≤ Real.sqrt Ct := by
      apply Real.le_sqrt_of_sq_le
      rw [← Finset.prod_pow]
      have e : ∀ w, Real.sqrt (t w) ^ 2 = t w := fun w => Real.sq_sqrt (ht w)
      simp only [e]; exact htp
    have hQ : 0 ≤ Real.pi * C * A0 * Real.sqrt k / Real.sqrt TT := by positivity
    have := Sz8.prodBound (fun w => lamPrimeHat i C ka N I g (B w) TT) (fun w => Real.sqrt (t w))
      (Real.sqrt (Real.pi * C * A0 * Real.sqrt k / Real.sqrt TT)) (Real.sqrt Ct) (Real.sqrt_nonneg _)
      (fun w => by
        simp only [lamPrimeHat]
        refine ⟨Real.sqrt_nonneg _, ?_⟩
        rw [← Real.sqrt_mul hQ]
        apply Real.sqrt_le_sqrt
        have e : C * B w * (g ^ (2 * i - 2))⁻¹ * ka * (C * ka * N / I) ^ (2 * (i - 1)) * (Real.sqrt TT)⁻¹
            = (C * B w * ka * (Real.sqrt TT)⁻¹) * (C * ka * N / (g * I)) ^ (2 * (i - 1)) := by
          rw [show 2 * i - 2 = 2 * (i - 1) by omega, div_pow, div_pow, mul_pow]; ring
        rw [e]
        have hCB0 : 0 ≤ C * B w := mul_nonneg hC0 (hB w).1
        have hX0 : 0 ≤ C * B w * ka * (Real.sqrt TT)⁻¹ := by positivity
        have hp : (C * ka * N / (g * I)) ^ (2 * (i - 1)) ≤ 1 := pow_le_one₀ hbase0 hbase1
        have h1 : C * B w * ka * (Real.sqrt TT)⁻¹ ≤ (C * A0 * Real.sqrt k * t w) * Real.pi * (Real.sqrt TT)⁻¹ := by
          apply mul_le_mul_of_nonneg_right _ (inv_nonneg.mpr hsT.le)
          exact mul_le_mul (hCB w) hkapi hka.le (hCB0.trans (hCB w))
        calc (C * B w * ka * (Real.sqrt TT)⁻¹) * (C * ka * N / (g * I)) ^ (2 * (i - 1))
            ≤ (C * B w * ka * (Real.sqrt TT)⁻¹) * 1 := mul_le_mul_of_nonneg_left hp hX0
          _ ≤ (C * A0 * Real.sqrt k * t w) * Real.pi * (Real.sqrt TT)⁻¹ := by rw [mul_one]; exact h1
          _ = _ := by ring) hst
    exact this

theorem theta_lower_bound : ThetaLower := by
  intro f k C A0 Ct N I Del TT Th hf hk hC hA0 hCt hN hI hDel hTT hTh hCN h
  have hk0 : (0:ℝ) < k := by have : (1:ℝ) ≤ k := by exact_mod_cast hk
                             linarith
  have hCt0 : 0 < Ct := by linarith
  have hinv : ∀ X : ℝ, 0 < X → Th⁻¹ ≤ X → X⁻¹ ≤ Th := fun X hX hX' => by
    have := inv_anti₀ (inv_pos.mpr hTh) hX'; rwa [inv_inv] at this
  have hq0 : 0 < C * Real.pi * N / I := by positivity
  have hmin1 : min (min (Real.sqrt (Del / (k * N ^ 3)) / (Ct * C * A0))
        (I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N)))
      (Real.sqrt (Real.sqrt TT / (Real.pi * Ct * C * A0 * Real.sqrt k))) ≤
      Real.sqrt (Del / (k * N ^ 3)) / (Ct * C * A0) := le_trans (min_le_left _ _) (min_le_left _ _)
  have hmin2 : min (min (Real.sqrt (Del / (k * N ^ 3)) / (Ct * C * A0))
        (I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N)))
      (Real.sqrt (Real.sqrt TT / (Real.pi * Ct * C * A0 * Real.sqrt k))) ≤
      I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N) := le_trans (min_le_left _ _) (min_le_right _ _)
  have hmin3 : min (min (Real.sqrt (Del / (k * N ^ 3)) / (Ct * C * A0))
        (I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N)))
      (Real.sqrt (Real.sqrt TT / (Real.pi * Ct * C * A0 * Real.sqrt k))) ≤
      Real.sqrt (Real.sqrt TT / (Real.pi * Ct * C * A0 * Real.sqrt k)) := min_le_right _ _
  have c23 : Th⁻¹ ≤ Ct * (C * A0 * Real.sqrt k * (C * Real.pi * N / I)) →
      I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N) ≤ Th := fun h' => by
    have e : I / (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N) =
        (Ct * (C * A0 * Real.sqrt k * (C * Real.pi * N / I)))⁻¹ := by
      field_simp
    rw [e]; exact hinv _ (by positivity) h'
  rcases h with h | h | h | h
  · have h' := Sz8.cmRing_idempotent_unitRatio_identity f hf Ct (C * A0 * Real.sqrt (k * N ^ 3 / Del)) Th hCt (by positivity) hTh
      (by rw [mul_pow, ← mul_assoc]; exact h)
    have e : Real.sqrt (Del / (k * N ^ 3)) / (Ct * C * A0) =
        (Ct * (C * A0 * Real.sqrt (k * N ^ 3 / Del)))⁻¹ := by
      rw [show Del / (k * N ^ 3) = (k * N ^ 3 / Del)⁻¹ from (inv_div _ _).symm, Real.sqrt_inv]
      field_simp
    exact le_trans hmin1 (by rw [e]; exact hinv _ (by positivity) h')
  · have h' := Sz8.cmRing_idempotent_unitRatio_identity f hf Ct (C * A0 * Real.sqrt k * (C * Real.pi * N / I) ^ 2) Th hCt
      (by positivity) hTh (by rw [mul_pow, ← pow_mul, ← mul_assoc]; exact h)
    have hq2 : (C * Real.pi * N / I) ^ 2 ≤ C * Real.pi * N / I := by
      rw [sq]; exact mul_le_of_le_one_left hq0.le hCN
    have h'' : Th⁻¹ ≤ Ct * (C * A0 * Real.sqrt k * (C * Real.pi * N / I)) := by
      refine le_trans h' (mul_le_mul_of_nonneg_left ?_ hCt0.le)
      exact mul_le_mul_of_nonneg_left hq2 (by positivity)
    exact le_trans hmin2 (c23 h'')
  · have h' := Sz8.cmRing_idempotent_unitRatio_identity f hf Ct (C * A0 * Real.sqrt k * (C * Real.pi * N / I)) Th hCt
      (by positivity) hTh (by rw [mul_pow, ← mul_assoc]; exact h)
    exact le_trans hmin2 (c23 h')
  · have hsCt : 1 ≤ Real.sqrt Ct := Real.one_le_sqrt.mpr hCt
    have h' := Sz8.cmRing_idempotent_unitRatio_identity f hf (Real.sqrt Ct) (Real.sqrt (Real.pi * C * A0 * Real.sqrt k / Real.sqrt TT))
      Th hsCt (Real.sqrt_nonneg _) hTh h
    have e : Real.sqrt (Real.sqrt TT / (Real.pi * Ct * C * A0 * Real.sqrt k)) =
        (Real.sqrt Ct * Real.sqrt (Real.pi * C * A0 * Real.sqrt k / Real.sqrt TT))⁻¹ := by
      rw [← Real.sqrt_mul hCt0.le, ← Real.sqrt_inv]; congr 1; field_simp
    have hpos : 0 < Real.sqrt Ct * Real.sqrt (Real.pi * C * A0 * Real.sqrt k / Real.sqrt TT) := by
      apply mul_pos (Real.sqrt_pos.mpr hCt0) (Real.sqrt_pos.mpr (by positivity))
    exact le_trans hmin3 (by rw [e]; exact hinv _ hpos h')



theorem theta_power_bound : ThetaPower := by
  intro C A0 Ct CDel cT Cb hC hA0 hCt hCDel hcT hCb hcb
  obtain ⟨k0, hk0⟩ : ∃ k0 : ℕ, max (max (max (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0)))
      (max ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi))) (Real.exp (2 / Cb)) + 4 ≤ k0 :=
    exists_nat_ge _
  refine ⟨k0, ?_⟩
  intro k m f bb N I Del TT hk hm hmf hfk hN hI hbb hDel hTT
  have hkR : (k0:ℝ) ≤ k := by exact_mod_cast hk
  have m1 := le_max_left (max (max (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0)))
      (max ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi))) (Real.exp (2 / Cb))
  have m2 := le_max_right (max (max (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0)))
      (max ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi))) (Real.exp (2 / Cb))
  have m3 := le_max_left (max (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0)))
      (max ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi))
  have m4 := le_max_right (max (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0)))
      (max ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi))
  have m5 := le_max_left (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0))
  have m6 := le_max_right (1000 * (Ct * C * A0) ^ 2) (40 * (Real.pi * Ct * C ^ 2 * A0))
  have m7 := le_max_left ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi)
  have m8 := le_max_right ((Real.pi * Ct * C * A0) ^ 2) (40 * C * Real.pi)
  have hexp := Real.exp_pos (2 / Cb)
  have hkW : 1000 * (Ct * C * A0) ^ 2 ≤ k := by linarith
  have hkV : 40 * (Real.pi * Ct * C ^ 2 * A0) ≤ k := by linarith
  have hkM : (Real.pi * Ct * C * A0) ^ 2 ≤ k := by linarith
  have hkC : 40 * C * Real.pi ≤ k := by linarith
  have hke : Real.exp (2 / Cb) ≤ k := by linarith
  have hk4 : (4:ℝ) ≤ k := by grind
  have hk1 : (1:ℝ) ≤ k := by linarith
  have hkpos : (0:ℝ) < k := by linarith
  have hk1N : 1 ≤ k := by exact_mod_cast hk1
  have hm2 : (2:ℝ) ≤ m := by exact_mod_cast hm
  have hmf' : (m:ℝ) ≤ f := by exact_mod_cast hmf
  have hfk' : (f:ℝ) ≤ k := by exact_mod_cast hfk
  have hf1 : (1:ℝ) ≤ f := by linarith
  have hf1N : 1 ≤ f := by omega
  have hlogk : 2 / Cb ≤ Real.log k := by
    rw [← Real.log_exp (2 / Cb)]; exact Real.log_le_log (Real.exp_pos _) hke
  have hlb : 1 ≤ Real.log bb := by
    have h1 : Real.log ((k:ℝ) ^ (Cb / 2)) ≤ Real.log bb :=
      Real.log_le_log (Real.rpow_pos_of_pos hkpos _) hbb
    rw [Real.log_rpow hkpos] at h1
    have h3 : Cb / 2 * (2 / Cb) = 1 := by field_simp
    have h2 : Cb / 2 * (2 / Cb) ≤ Cb / 2 * Real.log k := mul_le_mul_of_nonneg_left hlogk (by positivity)
    linarith
  have hD := Sz8.delLower k f (Real.log bb) CDel Del hk1N hf1N hlb hCDel hDel
  have hf4 : 1 ≤ (f:ℝ) ^ 4 := one_le_pow₀ hf1
  have hK1 : 1 ≤ (k:ℝ) ^ (CDel - 4) := Real.one_le_rpow hk1 (by linarith)
  have hk4D : (k:ℝ) ^ 4 ≤ Del := by
    have h1 : (1:ℝ) * 1 ≤ (f:ℝ) ^ 4 * (k:ℝ) ^ (CDel - 4) := mul_le_mul hf4 hK1 zero_le_one (by positivity)
    have h2 := mul_le_mul_of_nonneg_left h1 (pow_nonneg hkpos.le 4)
    have e : (k:ℝ) ^ 4 * ((f:ℝ) ^ 4 * (k:ℝ) ^ (CDel - 4)) = (k:ℝ) ^ 4 * (f:ℝ) ^ 4 * (k:ℝ) ^ (CDel - 4) := by ring
    linarith
  have hk2 : 16 * (k:ℝ) ^ 2 ≤ (k:ℝ) ^ 4 := by
    have h16 : (16:ℝ) ≤ (k:ℝ) ^ 2 := by have := mul_le_mul hk4 hk4 (by norm_num) hkpos.le; linarith
    calc 16 * (k:ℝ) ^ 2 ≤ (k:ℝ) ^ 2 * (k:ℝ) ^ 2 := mul_le_mul_of_nonneg_right h16 (sq_nonneg _)
      _ = (k:ℝ) ^ 4 := by ring
  have hk256 : (256:ℝ) ≤ (k:ℝ) ^ 4 := by
    have := pow_le_pow_left₀ (by norm_num) hk4 4; norm_num at this; linarith
  have hIpos : 0 < I := by linarith
  have he2a : 2 * cExp CDel cT Cb ≤ CDel - 4 := by
    unfold cExp; have := min_le_left ((CDel - 4) / 2) ((cT * Cb - 1) / 4); linarith
  have he2b : 2 * cExp CDel cT Cb ≤ cT * Cb - 1 := by
    unfold cExp; have := min_le_right ((CDel - 4) / 2) ((cT * Cb - 1) / 4); linarith
  have hP2 : ((k:ℝ) ^ cExp CDel cT Cb) ^ 2 = (k:ℝ) ^ (2 * cExp CDel cT Cb) := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul hkpos.le]; congr 1; push_cast; ring
  have hNk : N ≤ 10 * k := by rw [hN]; linarith
  refine ⟨?_, ?_⟩
  · rw [div_le_one hIpos]
    have h1 : C * Real.pi * N ≤ C * Real.pi * (10 * k) := mul_le_mul_of_nonneg_left hNk (by positivity)
    have h2 : 40 * C * Real.pi * k ≤ (k:ℝ) * k := mul_le_mul_of_nonneg_right hkC hkpos.le
    linarith
  · refine le_min (le_min ?_ ?_) ?_
    · have := Sz8.quantOne k f m ((k:ℝ) ^ (CDel - 4)) ((k:ℝ) ^ cExp CDel cT Cb) (Ct * C * A0) Del
        hk1 (by linarith) hmf' hf1 (by rw [hP2]; exact Real.rpow_le_rpow_of_exponent_le hk1 he2a)
        (by positivity) hkW hD
      rw [hN]; exact this
    · have hsk : Real.sqrt k ≤ k := by
        calc Real.sqrt k ≤ Real.sqrt ((k:ℝ) ^ 2) := Real.sqrt_le_sqrt (le_self_pow₀ hk1 (by norm_num))
          _ = k := Real.sqrt_sq hkpos.le
      have := Sz8.quantitative_fourth_power_bound k f m ((k:ℝ) ^ (CDel - 4)) ((k:ℝ) ^ cExp CDel cT Cb)
        (Real.pi * Ct * C ^ 2 * A0) (Real.sqrt k) Del hk1 (by linarith) hmf' hf1 (by positivity)
        (Real.rpow_le_rpow_of_exponent_le hk1 (by linarith)) (by positivity) hkV (Real.sqrt_nonneg _) hsk hD
      rw [le_div_iff₀ (by rw [hN]; positivity)]
      have e : (k:ℝ) ^ cExp CDel cT Cb * (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * N) =
          (k:ℝ) ^ cExp CDel cT Cb * (Real.pi * Ct * C ^ 2 * A0 * Real.sqrt k * (10 * m)) := by rw [hN]
      rw [e]; linarith
    · have hS := Sz8.sqrtTTLower k bb cT Cb m TT hk1 hcT hCb hm2 hbb hTT
      exact Sz8.quantThree k ((k:ℝ) ^ (cT * Cb - 1)) ((k:ℝ) ^ cExp CDel cT Cb) (Real.pi * Ct * C * A0)
        (Real.sqrt TT) hk1 (by rw [hP2]; exact Real.rpow_le_rpow_of_exponent_le hk1 he2b)
        (by positivity) hkM hS

theorem final_smallness : FinalSmall := by
  intro C c hC hc
  obtain ⟨k0, hk0⟩ : ∃ k0 : ℕ, (2 * C) ^ (16 / c) + 1 ≤ k0 := exists_nat_ge _
  refine ⟨k0, ?_⟩
  intro k r f bb Cf Th hk hrf hbb hcf hlog hTh
  have h2C : 0 < 2 * C := by linarith
  have hrp := Real.rpow_nonneg h2C.le (16 / c)
  have hkR : (2 * C) ^ (16 / c) + 1 ≤ (k:ℝ) := le_trans hk0 (by exact_mod_cast hk)
  have hkpos : (0:ℝ) < k := by linarith
  have hk1 : (1:ℝ) ≤ k := by linarith
  obtain ⟨T, hT⟩ : ∃ T : ℝ, T = (k:ℝ) ^ (c / 16) := ⟨_, rfl⟩
  have hT2C : 2 * C ≤ T := by
    have h1 : ((2 * C) ^ (16 / c)) ^ (c / 16) ≤ (k:ℝ) ^ (c / 16) :=
      Real.rpow_le_rpow hrp (by linarith) (by positivity)
    rw [← Real.rpow_mul h2C.le, show 16 / c * (c / 16) = 1 by field_simp, Real.rpow_one] at h1
    rw [hT]; exact h1
  have hT1 : 1 ≤ T := by linarith
  have hkc : (k:ℝ) ^ c = T ^ 16 := by
    rw [hT, ← Real.rpow_natCast, ← Real.rpow_mul hkpos.le]; congr 1; push_cast; field_simp
  have hThpos : 0 < Th := lt_of_lt_of_le (by rw [hkc]; positivity) hTh
  have hu : C / Th ≤ (2 * T ^ 15)⁻¹ := by
    rw [div_le_iff₀ hThpos]
    calc C ≤ T / 2 := by linarith
      _ = (2 * T ^ 15)⁻¹ * T ^ 16 := by field_simp
      _ ≤ (2 * T ^ 15)⁻¹ * Th := mul_le_mul_of_nonneg_left (by rw [← hkc]; exact hTh) (by positivity)
  have hu0 : 0 ≤ C / Th := by positivity
  have huf : (C / Th) ^ f ≤ ((2 * T ^ 15)⁻¹) ^ f := pow_le_pow_left₀ hu0 hu f
  have hlogbb : Real.log bb ≤ f * Real.log T := by
    rw [hT, Real.log_rpow hkpos]
    have hlb0 : 0 ≤ Real.log bb := Real.log_nonneg hbb
    have h1 : 16 * Real.log bb ≤ c * Cf * Real.log bb := mul_le_mul_of_nonneg_right hcf hlb0
    have h2 : c * (Cf * Real.log bb) ≤ c * (f * Real.log k) := mul_le_mul_of_nonneg_left hlog hc.le
    linarith
  have hbbT : bb ≤ T ^ f := by
    have : Real.log bb ≤ Real.log (T ^ f) := by rw [Real.log_pow]; exact hlogbb
    exact (Real.log_le_log_iff (by linarith) (by positivity)).mp this
  have hf2 : 2 ≤ f := by omega
  have hr1 : ((r:ℝ) + 1) ≤ 2 ^ f := by
    have : r + 1 < 2 ^ f := lt_of_le_of_lt (by omega) Nat.lt_two_pow_self
    exact_mod_cast this.le
  have hCT : C ≤ T := by linarith
  have hTf : T ≤ T ^ (8 * f) := le_self_pow₀ hT1 (by omega)
  have hCr : C * ((r:ℝ) + 1) ≤ T ^ (8 * f) * 2 ^ f :=
    mul_le_mul (le_trans hCT hTf) hr1 (by linarith) (by positivity)
  have hbb7 : (bb ^ 7)⁻¹ ≥ ((T ^ f) ^ 7)⁻¹ :=
    inv_anti₀ (by positivity) (pow_le_pow_left₀ (by linarith) hbbT 7)
  have hmain : C * ((r:ℝ) + 1) * (C / Th) ^ f ≤ (bb ^ 7)⁻¹ := by
    calc C * ((r:ℝ) + 1) * (C / Th) ^ f ≤ (T ^ (8 * f) * 2 ^ f) * ((2 * T ^ 15)⁻¹) ^ f :=
          mul_le_mul hCr huf (by positivity) (by positivity)
      _ = ((T ^ f) ^ 7)⁻¹ := by
          rw [inv_pow, mul_pow, ← pow_mul, ← pow_mul]; field_simp; ring
      _ ≤ (bb ^ 7)⁻¹ := hbb7
  refine ⟨?_, hmain⟩
  have h1 : (bb ^ 7)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (one_le_pow₀ hbb)
  have h2 : (r:ℝ) * (C / Th) ^ f ≤ C * ((r:ℝ) + 1) * (C / Th) ^ f := by
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    exact le_trans (by linarith) (le_mul_of_one_le_left (by positivity) hC)
  linarith

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementSz\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.Sz3

open Finset Formalism.FourierDecayAlt.Sz

lemma b_lt (c : Cfg) (hc : c.Ok) (j : ℕ) (hj : 1 ≤ j) :
    ∀ j' : ℕ, j < j' → j' ≤ c.m → c.b j < c.b j' := by
  intro j' hjj'
  induction j', hjj' using Nat.le_induction with
  | base =>
    intro h
    have := hc.hgap j hj (by omega)
    linarith
  | succ n hn ih =>
    intro h
    have h1 := ih (by omega)
    have h2 := hc.hgap n (by omega) (by omega)
    linarith

lemma b_ge_one (c : Cfg) (hc : c.Ok) (j : ℕ) (hj : 1 ≤ j) (hjm : j ≤ c.m) : 1 ≤ c.b j := by
  rcases Nat.eq_or_lt_of_le hj with h | h
  · rw [← h]; exact hc.hb1
  · have := b_lt c hc 1 le_rfl j h hjm
    linarith [hc.hb1]

end Formalism.FourierDecayAlt.P.Sz3

namespace Formalism.FourierDecayAlt.P

open Finset Formalism.FourierDecayAlt.Sz

theorem interlacing : Formalism.FourierDecayAlt.Sz.Interlacing := by
  intro c de hc hw
  obtain ⟨hk, hm, hDel, hv0, hv1, hb1, hgap, ha, htop⟩ := hc
  have hkR : (4 : ℝ) ≤ c.k := by exact_mod_cast hk
  refine ⟨?_, ?_⟩
  · intro i hi1 hik
    have hl : c.lam i = c.v i := by simp [Cfg.lam, hik]
    rw [hl]
    constructor
    · by_cases h1 : i = 1
      · subst h1
        have : c.u de 1 = c.a := by simp [Cfg.u]
        have h4 : (16 : ℝ) ≤ 4 * (c.k : ℝ) * c.Del := by
          have := mul_le_mul hkR hDel (by norm_num) (by linarith); linarith
        rw [this]; linarith [ha, h4]
      · have hne : i ≠ c.k := by omega
        have : c.u de i = c.v (i - 1) - 1 / 2 - de (i - 1) * c.Del := by simp [Cfg.u, h1, hne]
        rw [this]
        have hc1 : ((i - 1 : ℕ) : ℝ) = (i : ℝ) - 1 := by
          rw [Nat.cast_sub hi1]; simp
        unfold Cfg.v; rw [hc1]
        rcases hw.1 (i - 1) with h | h <;> rw [h] <;> linarith [hDel]
    · have h1 : i + 1 ≠ 1 := by omega
      by_cases hlast : i + 1 = c.k
      · have : c.u de (i + 1) = c.ulast := by
          unfold Cfg.u; rw [if_neg h1, if_pos hlast]
        rw [this]
        have hiR : (i : ℝ) + 1 = c.k := by exact_mod_cast hlast
        have hvi : c.v i = c.vlast := by unfold Cfg.v; rw [← hiR]; ring
        rw [hvi]; unfold Cfg.ulast
        by_cases ht : c.top = true
        · have := htop ht; simp [ht]; linarith [this.1]
        · simp [ht]
      · have : c.u de (i + 1) = c.v i - 1 / 2 - de i * c.Del := by
          unfold Cfg.u; rw [if_neg h1, if_neg hlast]; simp
        rw [this]
        rcases hw.1 i with h | h <;> rw [h] <;> linarith [hDel]
  · have hl : c.lam c.k = -c.b 1 := by simp [Cfg.lam]
    have hu : c.u de c.k = c.ulast := by
      have : c.k ≠ 1 := by omega
      simp [Cfg.u, this]
    rw [hl, hu]; unfold Cfg.ulast
    by_cases ht : c.top = true
    · have := htop ht; simp [ht]; linarith [this.2]
    · simp [ht]; linarith

theorem lamStrictAnti : Formalism.FourierDecayAlt.Sz.LamAnti := by
  intro c hc s t hs hst ht
  have hDel := hc.hDel
  have hstR : (s : ℝ) + 1 ≤ (t : ℝ) := by exact_mod_cast hst
  by_cases htk : t < c.k
  · have hsk : s < c.k := by omega
    have h1 : c.lam t = c.v t := by simp [Cfg.lam, htk]
    have h2 : c.lam s = c.v s := by simp [Cfg.lam, hsk]
    rw [h1, h2]; unfold Cfg.v
    have := mul_le_mul_of_nonneg_right hstR (by linarith [hc.hDel] : (0:ℝ) ≤ 2 * c.Del); linarith
  · have h1 : c.lam t = -c.b (t + 1 - c.k) := by simp [Cfg.lam, htk]
    rw [h1]
    by_cases hsk : s < c.k
    · have h2 : c.lam s = c.v s := by simp [Cfg.lam, hsk]
      rw [h2]
      have hb := Sz3.b_ge_one c hc (t + 1 - c.k) (by omega) (by omega)
      have hskR : (s : ℝ) + 1 ≤ (c.k : ℝ) := by exact_mod_cast hsk
      have hv0 := hc.hv0
      unfold Cfg.v
      have := mul_nonneg (by linarith [hc.hDel] : (0:ℝ) ≤ c.Del) (by linarith : (0:ℝ) ≤ (c.k : ℝ) - 1 - s); linarith
    · have h2 : c.lam s = -c.b (s + 1 - c.k) := by simp [Cfg.lam, hsk]
      rw [h2]
      have := Sz3.b_lt c hc (s + 1 - c.k) (by omega) (t + 1 - c.k) (by omega) (by omega)
      linarith

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Sz3

open Finset Formalism.FourierDecayAlt.Sz

end Formalism.FourierDecayAlt.P.Sz3

namespace Formalism.FourierDecayAlt.P.Sz3

open Finset Formalism.FourierDecayAlt.Sz

noncomputable def hs (n : ℕ) : ℝ := ∑ d ∈ Ioc 0 n, 1 / (d : ℝ)

end Formalism.FourierDecayAlt.P.Sz3

namespace Formalism.FourierDecayAlt.P

open Finset Formalism.FourierDecayAlt.Sz Sz3

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SixteenMulLeTwoPow =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SixteenMulLeTwoPow", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementSz\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CorollaryAOfPropositionA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.Sz9

open Finset Formalism.FourierDecayAlt.Sz

lemma sixteen_mul_le_two_pow (n : ℕ) (hn : 7 ≤ n) : n * 16 ≤ 2 ^ n := by
  induction n, hn using Nat.le_induction with
  | base => norm_num
  | succ k hk ih =>
    rw [pow_succ]
    linarith

lemma small_f (f k : ℕ) (hfk : f ≤ k) (hk : 7 ≤ k) : (f : ℝ) * (8 / 2 ^ k) ≤ Real.log 2 := by
  have h1 := sixteen_mul_le_two_pow k hk
  have h2 : (k : ℝ) * 16 ≤ (2 : ℝ) ^ k := by exact_mod_cast h1
  have hpos : (0 : ℝ) < 2 ^ k := by positivity
  have hf : (f : ℝ) ≤ k := by exact_mod_cast hfk
  have hlog := Real.log_two_gt_d9
  rw [mul_div_assoc', div_le_iff₀ hpos]
  linarith [mul_lt_mul_of_pos_right hlog hpos]

alias vand_pos := _root_.Formalism.FourierDecayAlt.P.Sz4.vand_pos

lemma anti_of_step (p : ℕ) (x : ℕ → ℝ) (h : ∀ i, 1 ≤ i → i < p → x (i + 1) < x i) :
    ∀ s t, 1 ≤ s → s < t → t ≤ p → x t < x s := by
  intro s t hs hst htp
  obtain ⟨d, rfl⟩ : ∃ d, t = s + 1 + d := ⟨t - (s + 1), by omega⟩
  induction d with
  | zero => simpa using h s hs (by omega)
  | succ d ih =>
    have h1 := ih (by omega) (by omega)
    have h2 := h (s + 1 + d) (by omega) (by omega)
    have e : s + 1 + (d + 1) = s + 1 + d + 1 := by omega
    rw [e]
    linarith

lemma vand_word_pos (hIL : Interlacing) (c : Cfg) (de : ℕ → ℝ) (hOk : c.Ok)
    (hde : IsWord c.k de) : 0 < Vand c.k (c.u de) := by
  unfold Interlacing at hIL
  obtain ⟨h1, -⟩ := hIL c de hOk hde
  refine vand_pos _ _ (anti_of_step _ _ (fun i hi1 hi2 => ?_))
  have hx := h1 i hi1 hi2
  linarith [hx.1, hx.2]

lemma sfac_pos (p : ℕ) : 0 < sfac p := by
  unfold sfac
  exact Finset.prod_pos (fun i _ => Nat.factorial_pos i)

lemma tcrit_nonneg (k m : ℕ) (ka rd g VV Vu : ℝ) (hka : 0 < ka) (hrd : 0 < rd) (hg : 0 < g)
    (hVV : 0 < VV) (hVu : 0 < Vu) : 0 ≤ Tcrit k m ka rd g VV Vu := by
  unfold Tcrit
  apply Real.rpow_nonneg
  unfold TcritPow
  positivity

lemma beta_bound (hBeta : BetaOnCut) (hAZ : AZeroBound) (c : Cfg) (r : ℕ) (bb : ℝ)
    (de de' : ℕ → ℝ) (ka rd g VV T T' : ℝ) (l : ℕ)
    (hOk : c.Ok) (hm : c.m = 2 * r + 2) (hSm : c.Small bb) (hde : IsWord c.k de)
    (hde' : IsWord c.k de') (hrd : 1 ≤ rd) (hka : ka = 2 * Real.pi / rd) (hg : 2 * Real.pi ≤ g)
    (hFD : FormalDegreeLower c (1 / 2) VV) (hT : 0 < T) (hT' : 0 < T') (hl1 : 1 ≤ l)
    (hl2 : l + 2 ≤ c.k) (hdl : de l ≠ de' l) (D : ℝ) (hD : D ≤ c.Del / 2) (Y : ℝ)
    (hY1 : 5 / 2 ≤ c.v l + Y) (hY2 : c.v l + Y ≤ D) :
    0 ≤ g ^ c.m * c.be ka de de' T T' Y ∧
      g ^ c.m * c.be ka de de' T T' Y ≤
        160 * tv c de de' ka rd g VV T T' * Real.sqrt c.k * Real.sqrt (D / c.Del) := by
  have hpi := Real.pi_pos
  have hg0 : 0 < g := by linarith
  have hka0 : 0 < ka := by rw [hka]; positivity
  have hDel : 0 < c.Del := by linarith [hOk.hDel]
  constructor
  · unfold Cfg.be Cfg.core
    positivity
  · have hYI : Y ∈ c.cutI l := ⟨hY1, hY2.trans hD⟩
    have h := hBeta c r bb de de' ka rd g VV T T' Y l hOk hm hSm hde hde' hrd hka hg hFD hT hT'
      hl1 hl2 hdl hYI
    have hA := (hAZ c bb hOk hSm).2
    have ht : 0 ≤ tv c de de' ka rd g VV T T' := by unfold tv; exact Real.sqrt_nonneg _
    have hs : Real.sqrt ((c.v l + Y) / c.Del) ≤ Real.sqrt (D / c.Del) := by
      apply Real.sqrt_le_sqrt
      gcongr
    calc g ^ c.m * c.be ka de de' T T' Y
        ≤ AZero c bb * tv c de de' ka rd g VV T T' * Real.sqrt c.k *
          Real.sqrt ((c.v l + Y) / c.Del) := h
      _ ≤ 160 * tv c de de' ka rd g VV T T' * Real.sqrt c.k * Real.sqrt (D / c.Del) := by
          gcongr

end Formalism.FourierDecayAlt.P.Sz9

namespace Formalism.FourierDecayAlt.P

open Finset Formalism.FourierDecayAlt.Sz Formalism.FourierDecayAlt.P.Sz9



theorem sz_sizesMain_of (hCorA : CorA) (hBeta : BetaOnCut) (hAZ : AZeroBound)
    (hIL : Interlacing) (hLA : LamAnti) (hTP : ThresholdProducts) (hTL : ThetaLower) (hThP : ThetaPower)
    (hFS : FinalSmall) : SizesMain := by
  intro CA C0 CG CDel cT Cb hCA hC0 hCG hCDel hcT hCb hcTCb
  have hc : 0 < cExp CDel cT Cb := by
    unfold cExp
    have : 0 < min ((CDel - 4) / 2) ((cT * Cb - 1) / 4) := lt_min (by linarith) (by linarith)
    positivity
  obtain ⟨Ct, hCt⟩ : ∃ Ct : ℝ, Ct = 2 * C0 * Real.exp (1 / 4) := ⟨_, rfl⟩
  have hCt1 : 1 ≤ Ct := by
    have : 1 ≤ Real.exp (1 / 4) := Real.one_le_exp (by norm_num)
    rw [hCt]; exact le_trans (by linarith) (le_mul_of_one_le_right (by linarith) this)
  obtain ⟨k1, hk1⟩ := hThP CA 160 Ct CDel cT Cb hCA (by norm_num) hCt1 hCDel hcT hCb hcTCb
  obtain ⟨k2, hk2⟩ := hFS CA (cExp CDel cT Cb) hCA hc
  refine ⟨max 7 (max k1 k2), ?_⟩
  intro ι _ G bb C' Cf Th de de' T T' du du' l hk H hde hde' hl1 hl2 hdl hT hT' hC' hkbig hMR hLB
    hCC hCC' hCh hCh' hFD hTh hGr
  have hk7 : 7 ≤ G.k := le_trans (le_max_left _ _) hk
  have hkk1 : k1 ≤ G.k := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hk
  have hkk2 : k2 ≤ G.k := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hk
  have hkR : (7 : ℝ) ≤ G.k := by exact_mod_cast hk7
  have hm2 : 2 ≤ G.m := by unfold Glob.m; omega
  have hf2 : 2 ≤ G.f := le_trans hm2 H.hmf
  have hbb := H.hbb
  have hv := H.hv
  have hpi := Real.pi_pos
  have hne : Nonempty ι := by
    have : 0 < Fintype.card ι := lt_of_lt_of_le (by norm_num) hf2
    exact Fintype.card_pos_iff.1 this
  obtain ⟨w0⟩ := hne

  have hbbk : (G.k : ℝ) ^ (Cb / 2) ≤ bb := by
    have h1 : (G.k : ℝ) ^ Cb ≤ G.b w0 1 := H.hnode w0 1 le_rfl (by omega)
    have h2 : G.b w0 1 ≤ bb ^ 2 := (H.hsmall w0).hbj 1 le_rfl (by show 1 ≤ 2 * G.r + 2; omega)
    have h3 : ((G.k : ℝ) ^ (Cb / 2)) ^ 2 = (G.k : ℝ) ^ Cb := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul (by positivity)]
      congr 1
      push_cast; ring
    have h4 : ((G.k : ℝ) ^ (Cb / 2)) ^ 2 ≤ bb ^ 2 := by rw [h3]; exact h1.trans h2
    exact (pow_le_pow_iff_left₀ (by positivity) (by linarith) (by norm_num)).1 h4
  have hpw : 1 < bb ^ (cT * (G.m : ℝ)) := by
    apply Real.one_lt_rpow hbb
    have : (0 : ℝ) < G.m := by exact_mod_cast (lt_of_lt_of_le (by norm_num) hm2)
    positivity
  have hTR : (1 : ℝ) < T := lt_of_lt_of_le hpw hT
  have hTR' : (1 : ℝ) < T' := lt_of_lt_of_le hpw hT'
  have hT2 : 2 ≤ T := by
    have : 1 < T := by exact_mod_cast hTR
    omega
  have hT2' : 2 ≤ T' := by
    have : 1 < T' := by exact_mod_cast hTR'
    omega
  have hTT : (bb ^ (cT * (G.m : ℝ))) ^ 2 ≤ (T : ℝ) * T' := by
    rw [sq]
    exact mul_le_mul hT hT' (by linarith) (by linarith)
  have hTTpos : (0 : ℝ) < (T : ℝ) * T' := mul_pos (by linarith) (by linarith)
  have hNm : G.N = 10 * (G.m : ℝ) := by
    unfold Glob.N Glob.m; push_cast; ring
  have hN20 : 20 ≤ G.N := by
    unfold Glob.N
    have : (0 : ℝ) ≤ G.r := Nat.cast_nonneg _
    linarith
  have hN : 0 < G.N := by linarith
  obtain ⟨hCpi, hmin⟩ := hk1 G.k G.m G.f bb G.N G.lenI G.Del ((T : ℝ) * T') hkk1 hm2 H.hmf H.hfk
    hNm rfl hbbk H.hDel hTT
  have hkc1 : 1 ≤ (G.k : ℝ) ^ cExp CDel cT Cb := Real.one_le_rpow (by linarith) hc.le

  have hDelBig : 160 ^ 2 * ((G.k : ℝ) * G.N ^ 3) ≤ G.Del := by
    have h1 : (G.k : ℝ) ^ cExp CDel cT Cb ≤
        Real.sqrt (G.Del / (G.k * G.N ^ 3)) / (Ct * CA * 160) :=
      le_trans hmin (le_trans (min_le_left _ _) (min_le_left _ _))
    have hpos : 0 < Ct * CA * 160 := by positivity
    have h2 : Ct * CA * 160 ≤ Real.sqrt (G.Del / (G.k * G.N ^ 3)) := by
      have := (le_div_iff₀ hpos).1 (le_trans hkc1 h1)
      linarith
    have h3 : (160 : ℝ) ≤ Real.sqrt (G.Del / (G.k * G.N ^ 3)) := by
      have : 1 ≤ Ct * CA := one_le_mul_of_one_le_of_one_le hCt1 hCA
      linarith
    have h4 := (Real.le_sqrt' (by norm_num : (0 : ℝ) < 160)).1 h3
    have hkN : 0 < (G.k : ℝ) * G.N ^ 3 := by positivity
    exact (le_div_iff₀ hkN).1 h4
  have hN3 : 1 ≤ G.N ^ 3 := one_le_pow₀ (by linarith)
  have hkN3 : G.N ^ 3 ≤ (G.k : ℝ) * G.N ^ 3 := le_mul_of_one_le_left (by linarith) (by linarith)
  have hN3Del : G.N ^ 3 ≤ G.Del / 2 := by linarith
  have hDelpos : 0 < G.Del := by linarith
  have hI : 0 < G.lenI := by unfold Glob.lenI; linarith

  have hkb : (4 : ℝ) ≤ ((G.k : ℝ) * bb) ^ 8 := by
    have h1 : (4 : ℝ) ≤ (G.k : ℝ) * bb := by
      have := mul_le_mul hkR hbb.le zero_le_one (by linarith)
      linarith
    exact le_trans h1 (le_self_pow₀ (by linarith) (by norm_num))
  have hg1R : (4 : ℝ) ≤ G.g1 := le_trans hkb H.hg1
  have hg2R : (4 : ℝ) ≤ G.g2 := le_trans hkb H.hg2
  have hg1N : 4 ≤ G.g1 := by exact_mod_cast hg1R
  have hg2N : 4 ≤ G.g2 := by exact_mod_cast hg2R
  have hg16 : 16 ≤ G.g := by
    have := mul_le_mul hg1R hg2R (by norm_num) (by linarith)
    unfold Glob.g; linarith
  have h2pig : 2 * Real.pi ≤ G.g := by linarith [Real.pi_le_four]
  have hgpos : 0 < G.g := by linarith
  have hka : G.ka = 2 * Real.pi / (2 * G.v) := by
    unfold Glob.ka; field_simp
  have hkapos : 0 < G.ka := by unfold Glob.ka; positivity
  have hkapi : G.ka ≤ Real.pi := by
    unfold Glob.ka
    exact div_le_self hpi.le hv

  have hVu : ∀ w, 0 < Vand G.k ((G.place w).u de) := fun w =>
    vand_word_pos hIL (G.place w) de (H.hplace w) hde
  have hVu' : ∀ w, 0 < Vand G.k ((G.place w).u de') := fun w =>
    vand_word_pos hIL (G.place w) de' (H.hplace w) hde'
  have hVV : ∀ w, 0 < (G.size de T du).VV w := by
    intro w
    have h1 : 0 < Vand ((G.place w).k + (G.place w).m - 1) (G.place w).lam :=
      vand_pos _ _ (hLA (G.place w) (H.hplace w))
    have h2 := hFD w
    unfold FormalDegreeLower at h2
    linarith
  have hdsig : ∀ w, 0 < G.dsig w := by
    intro w
    have h1 : 0 < G.dsig w * (sfac (G.size de T du).n : ℝ) := hVV w
    have h2 : (0 : ℝ) < (sfac (G.size de T du).n : ℝ) := by exact_mod_cast sfac_pos _
    exact (mul_pos_iff_of_pos_right h2).1 h1

  have hsm := small_f G.f G.k H.hfk hk7
  have hlogbb : 0 ≤ Real.log bb := Real.log_nonneg hbb.le
  have hOkS : (G.size de T du).Ok :=
    ⟨(by omega : 1 ≤ G.k), (by linarith : 0 < G.v), H.hdF, (by omega : 2 ≤ G.g1),
      (by omega : 2 ≤ G.g2), hT2, H.hvol, hVu⟩
  have hOkS' : (G.size de' T' du').Ok :=
    ⟨(by omega : 1 ≤ G.k), (by linarith : 0 < G.v), H.hdF, (by omega : 2 ≤ G.g1),
      (by omega : 2 ≤ G.g2), hT2', H.hvol, hVu'⟩
  have hA := hCorA ι (G.size de T du) C0 CG C' (Real.log bb) hOkS hMR hLB hCC hdsig
    (by omega : 2 ≤ G.k) hg1N hg2N hC0 hCG hlogbb hC' hkbig hsm hCh
  have hA' := hCorA ι (G.size de' T' du') C0 CG C' (Real.log bb) hOkS' hMR hLB hCC' hdsig
    (by omega : 2 ≤ G.k) hg1N hg2N hC0 hCG hlogbb hC' hkbig hsm hCh'
  have hP : ∏ w, ((G.size de T du).Tcrit w / (T : ℝ)) ≤ Ct := by
    rw [hCt]; exact le_trans hA.2.1 hA.2.2
  have hP' : ∏ w, ((G.size de' T' du').Tcrit w / (T' : ℝ)) ≤ Ct := by
    rw [hCt]; exact le_trans hA'.2.1 hA'.2.2
  have hTc : ∀ w, 0 ≤ (G.size de T du).Tcrit w := fun w =>
    tcrit_nonneg _ _ _ _ _ _ _ hkapos (by show 0 < 2 * G.v; linarith) hgpos (hVV w) (hVu w)
  have hTc' : ∀ w, 0 ≤ (G.size de' T' du').Tcrit w := fun w =>
    tcrit_nonneg _ _ _ _ _ _ _ hkapos (by show 0 < 2 * G.v; linarith) hgpos (hVV w) (hVu' w)
  obtain ⟨t, ht⟩ : ∃ t : ι → ℝ, t = fun w =>
      tv (G.place w) de de' G.ka (2 * G.v) G.g ((G.size de T du).VV w) T T' := ⟨_, rfl⟩
  have ht0 : ∀ w, 0 ≤ t w := by
    intro w; rw [ht]; exact Real.sqrt_nonneg _
  have htsq : ∀ w, t w ^ 2 =
      ((G.size de T du).Tcrit w / (T : ℝ)) * ((G.size de' T' du').Tcrit w / (T' : ℝ)) := by
    intro w
    rw [ht]
    show (Real.sqrt ((G.size de T du).Tcrit w * (G.size de' T' du').Tcrit w /
      ((T : ℝ) * T'))) ^ 2 = _
    rw [Real.sq_sqrt (div_nonneg (mul_nonneg (hTc w) (hTc' w)) hTTpos.le), div_mul_div_comm]
  have htprod : ∏ w, t w ≤ Ct := by
    have h1 : (∏ w, t w) ^ 2 ≤ Ct ^ 2 := by
      rw [← prod_pow, prod_congr rfl (fun w _ => htsq w), prod_mul_distrib, sq]
      apply mul_le_mul hP hP' _ (by linarith)
      exact prod_nonneg fun w _ => div_nonneg (hTc' w) (by linarith)
    exact (pow_le_pow_iff_left₀ (prod_nonneg fun w _ => ht0 w) (by linarith) (by norm_num)).1 h1

  have hbd : ∀ (w : ι) (D : ℝ), D ≤ G.Del / 2 → ∀ Y : ℝ, 5 / 2 ≤ (G.place w).v l + Y →
      (G.place w).v l + Y ≤ D →
      0 ≤ G.g ^ G.m * (G.place w).be G.ka de de' T T' Y ∧
        G.g ^ G.m * (G.place w).be G.ka de de' T T' Y ≤
          160 * t w * Real.sqrt G.k * Real.sqrt (D / G.Del) := by
    intro w D hD Y hY1 hY2
    rw [ht]
    exact beta_bound hBeta hAZ (G.place w) G.r bb de de' G.ka (2 * G.v) G.g
      ((G.size de T du).VV w) T T' l (H.hplace w) rfl (H.hsmall w) hde hde' (by linarith) hka h2pig
      (hFD w) (by linarith) (by linarith) hl1 hl2 hdl D hD Y hY1 hY2
  have hB1 : ∀ w, 0 ≤ G.cutSupLong de de' T T' l w ∧ G.cutSupLong de de' T T' l w ≤
      160 * t w * Real.sqrt G.k * Real.sqrt (G.N ^ 3 / G.Del) := by
    intro w
    unfold Glob.cutSupLong
    constructor
    · apply Real.sSup_nonneg
      rintro _ ⟨Y, ⟨hY1, hY2⟩, rfl⟩
      exact (hbd w _ hN3Del Y hY1 hY2).1
    · apply Real.sSup_le
      · rintro _ ⟨Y, ⟨hY1, hY2⟩, rfl⟩
        exact (hbd w _ hN3Del Y hY1 hY2).2
      · have := ht0 w
        positivity
  have hB : ∀ w, 0 ≤ G.supI de de' T T' l w ∧ G.supI de de' T T' l w ≤
      160 * t w * Real.sqrt G.k := by
    intro w
    have hs1 : Real.sqrt (G.Del / 2 / G.Del) ≤ 1 := by
      apply Real.sqrt_le_one.2
      rw [div_le_one hDelpos]; linarith
    have h0 : 0 ≤ 160 * t w * Real.sqrt G.k := by
      have := ht0 w
      positivity
    unfold Glob.supI
    constructor
    · apply Real.sSup_nonneg
      rintro _ ⟨Y, ⟨hY1, hY2⟩, rfl⟩
      exact (hbd w _ le_rfl Y hY1 hY2).1
    · apply Real.sSup_le
      · rintro _ ⟨Y, ⟨hY1, hY2⟩, rfl⟩
        exact le_trans (hbd w _ le_rfl Y hY1 hY2).2 (mul_le_of_le_one_right h0 hs1)
      · exact h0

  have key := fun i s : ℕ => hTP ι t (G.cutSupLong de de' T T' l) (G.supI de de' T T' l) G.k CA 160 Ct
    G.ka G.N G.lenI G.g G.Del ((T : ℝ) * T') i s hCA (by norm_num) (by linarith) hkapos hkapi hN hI
    (by linarith) hDelpos hTTpos hCpi ht0 htprod hB1 hB
  have hTheta : (G.k : ℝ) ^ cExp CDel cT Cb ≤ Th := by
    refine le_trans hmin ?_
    apply hTL G.f G.k CA 160 Ct G.N G.lenI G.Del ((T : ℝ) * T') Th (by omega) (by omega) hCA
      (by norm_num) hCt1 hN hI hDelpos hTTpos hTh hCpi
    obtain ⟨i, hi1, hi2, hcase⟩ := hGr.1
    rcases hcase with ⟨_, hx⟩ | ⟨h2i, hx⟩ | ⟨s, hs2, _, hx⟩ | hx
    · left; rw [hx]; exact (key 1 1 le_rfl).1
    · right; left; rw [hx]; exact (key i 1 hi1).2.1 h2i
    · right; right; left; rw [hx]; exact (key i s hi1).2.2.1 hs2
    · right; right; right; rw [hx]; exact (key i 1 hi1).2.2.2
  refine ⟨hTheta, ?_⟩
  intro h16 hCf
  exact hk2 G.k G.r G.f bb Cf Th hkk2 H.hmf hbb.le h16 hCf hTheta

theorem size_bounds_conclusion : Formalism.FourierDecayAlt.Sz.SizesMain :=
  sz_sizesMain_of corollary_a_of_proposition_a beta_bound_on_boundary a_zero_le_one_sixty interlacing
    lamStrictAnti threshold_products theta_lower_bound theta_power_bound final_smallness

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SixteenMulLeTwoPow =====

-- ===== clump member: Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementJF\npublic import Formalism.HermitianCurvature.StatementPN\npublic import Formalism.HermitianCurvature.StatementTBB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AddedBlockKernelSupport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AxiomsFromFamilies\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellDiagonalMap\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ChebyshevToThreshold\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CorollaryAOfPropositionA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CriticalThresholdLowerBound\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensitySumsAndDomination\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationScalesHeisenbergMeasure\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DualCovolumeChangeOfVariables\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelProperties\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstKernelPropertiesOfHypotheses\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarScaling\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.JointInstanceTheoremA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelNonzeroModulusDeterminantEq\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.KernelQuotientFinite\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalConditionsAndQuotientSplitting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalVolumePositivity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MassRatioFormula\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.MinLeTruncatedExponential\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OutsideSystemsBound\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonJointFirstReduction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PoissonSummationDecay\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PsdFormConjRewrite\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PullLatticeTypedUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionGivesUniformBoundsForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RecursionWithDensities\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingExistence\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SixteenMulLeTwoPow\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupremumAIsMajorant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentBlockMeasure\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.Final

alias sz_propA := _root_.Formalism.FourierDecayAlt.P.massRatioFormula
alias sz_eaSize := _root_.Formalism.FourierDecayAlt.P.Sz2.eaSize
alias sz_tcritLower := _root_.Formalism.FourierDecayAlt.P.critical_threshold_lower_bound
theorem lemma_b_norm_of_parts : Formalism.FourierDecayAlt.B2.LemmaBNormFromParts := Formalism.FourierDecayAlt.P.lemma_b_normalised_of_parts
theorem lemma_b_from_norm_bound : Formalism.FourierDecayAlt.B2.LemmaBAnyFromNorm := Formalism.FourierDecayAlt.P.lemma_b_any_measure_from_normalised
theorem compact_conjugation : Formalism.FourierDecayAlt.B2.CompactConj := Formalism.FourierDecayAlt.P.compact_subgroup_conjugation
theorem dilation_jacobian_formula : Formalism.FourierDecayAlt.B2.DilJacRaw := Formalism.FourierDecayAlt.P.dilation_jacobian_unipotent
theorem dilation_jacobian_all : Formalism.FourierDecayAlt.B2.DilJacAll := Formalism.FourierDecayAlt.P.dilation_jacobian_every_setting
theorem closed_subgroup_general_linear : Formalism.FourierDecayAlt.B2.ClosedG := Formalism.FourierDecayAlt.P.unitary_group_closed
theorem closed_subgroup_unipotent_radical : Formalism.FourierDecayAlt.B2.ClosedN := Formalism.FourierDecayAlt.P.unipotent_radical_closed
theorem conjugation_invariance_all : Formalism.FourierDecayAlt.B2.ConjInvAll := Formalism.FourierDecayAlt.P.conjugation_invariance_every_setting
theorem integral_norm_bound_variant_b : Formalism.FourierDecayAlt.B2.IntNormB := Formalism.FourierDecayAlt.P.normalisation_unique_every_setting
theorem integral_bound_all : Formalism.FourierDecayAlt.B2.CCIntAll := Formalism.FourierDecayAlt.P.matrix_coefficient_integrable_all
theorem jf_jqSmooth : Formalism.FourierDecayAlt.JF.JqSmooth := Formalism.FourierDecayAlt.P.jacquet_smooth_coordinates
theorem d_ptRelevant : Formalism.FourierDecayAlt.D.PtRelevant := Formalism.FourierDecayAlt.P.relevant_points_holds
theorem tbb_stepOne : Formalism.FourierDecayAlt.TBB.StepOne := Formalism.FourierDecayAlt.P.lemma_s_induction_base
theorem tbb_stepUp : Formalism.FourierDecayAlt.TBB.StepUp := Formalism.FourierDecayAlt.P.lemma_s_induction_up
theorem tbb_lemmaSOfSteps : Formalism.FourierDecayAlt.TBB.LemmaSOfSteps := Formalism.FourierDecayAlt.P.lemma_s_of_parts
theorem tbb_ptBoundOfCorS : Formalism.FourierDecayAlt.TBB.PtBoundOfCorS := Formalism.FourierDecayAlt.P.point_bound_of_corollary_s
theorem tbb_thmBpOfParts : Formalism.FourierDecayAlt.TBB.ThmBpOfParts := Formalism.FourierDecayAlt.P.theorem_b_of_parts

end Formalism.FourierDecayAlt.Final
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving =====
