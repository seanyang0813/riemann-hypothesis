module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTrunc
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsBasic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerExp
public import Mathlib.MeasureTheory.Function.L2Space
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Integral.Prod
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsDefs
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerConv
public import Mathlib.MeasureTheory.Integral.DominatedConvergence
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic
public import Mathlib.MeasureTheory.Group.MeasurableEquiv
public import Mathlib.MeasureTheory.Integral.Lebesgue.Markov
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.Order.CompletePartialOrder
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAbs
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SynthesizedVectorZPairing
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.FrMIsIsom
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.RealObj
public import Formalism.DoubleCosetMeasures.StatementZ
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInst
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.FrameLocX
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSD
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyCut
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.HaarDisintegrationRealHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSWire
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SchurTensInst
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInt
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ProductExactness
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.HermitianZZEqNeg
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepRealHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsBij
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative

open scoped Formalism.DoubleCosetMeasures

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEnergy, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerLim, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerSum, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolner, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEquiv, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsLower, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTail, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsPoint, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsMain, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWLoc, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWFrame, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWSec, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWGlob, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAt, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RealObjInInfinityXOfG

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEnergy =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEnergy", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTrunc\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Filter Topology
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [MeasurableSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V V' : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] [FiniteDimensional ℂ V']

theorem continuous_hsA_Xop {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) (μS ν μS' ν' : Measure G) (d : ℝ)
    (w : HH) (W : G → V) (W' : G → V') (A A' : Set G) :
    Continuous (fun g => hsA (Xop μS ν μS' ν' σ d w W W' A A' g)) := by
  have hc : ∀ a : HH, Continuous (fun g => σ g a) := hσ.2.2.2
  unfold hsA Xop sand
  refine continuous_finsetSum _ fun i _ => ?_
  refine (continuous_norm.comp ?_).pow 2
  simp only [FunLike.coe_smul, Pi.smul_apply, ContinuousLinearMap.comp_apply]
  exact ((ContinuousLinearMap.adjoint _).continuous.comp (hc _)).const_smul _

theorem lintegral_hsA_Xop {μ : Measure G} {σ : G → (HH →L[ℂ] HH)} {d : ℝ} (hSch : IsSchur μ σ d)
    (μS ν μS' ν' : Measure G) (w : HH) (W : G → V) (W' : G → V') (A A' : Set G) :
    ∫⁻ g, ENNReal.ofReal (hsA (Xop μS ν μS' ν' σ d w W W' A A' g)) ∂μ =
      ENNReal.ofReal (d * (∑ i, ‖yv μS ν σ w W A (stdOrthonormalBasis ℂ V i)‖ ^ 2) *
        (∑ j, ‖yv μS' ν' σ w W' A' (stdOrthonormalBasis ℂ V' j)‖ ^ 2)) := by
  have hd : 0 < d := hSch.1
  have h1 : ∀ g, ENNReal.ofReal (hsA (Xop μS ν μS' ν' σ d w W W' A A' g)) =
      ENNReal.ofReal (d ^ 2) *
        ENNReal.ofReal (hsA (sand σ (Yop μS ν σ w W A) (Yop μS' ν' σ w W' A') g)) := by
    intro g
    rw [Xop, hsA_smul, Complex.norm_real, Real.norm_eq_abs, sq_abs, ENNReal.ofReal_mul (sq_nonneg d)]
  simp_rw [h1]
  rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top, lintegral_hsA_sand hSch,
    ← ENNReal.ofReal_mul (sq_nonneg d)]
  congr 1
  simp only [Yop_apply_basis]
  field_simp

theorem tendsto_energy {d : ℝ} (hd : 0 < d) {a b : ℕ → ℝ≥0∞} (ha : ∀ n, 0 < a n ∧ a n < ⊤)
    (hb : ∀ n, 0 < b n ∧ b n < ⊤) {N N' : ℕ → ℝ}
    (hN : Tendsto (fun n => N n / (a n).toReal) atTop (𝓝 (1 / d)))
    (hN' : Tendsto (fun n => N' n / (b n).toReal) atTop (𝓝 (1 / d))) :
    Tendsto (fun n => (a n * b n)⁻¹ * ENNReal.ofReal (d * N n * N' n)) atTop (𝓝 (ENNReal.ofReal (1 / d))) := by
  have key : ∀ n, (a n * b n)⁻¹ * ENNReal.ofReal (d * N n * N' n) =
      ENNReal.ofReal (d * (N n / (a n).toReal) * (N' n / (b n).toReal)) := by
    intro n
    obtain ⟨ha0, hat⟩ := ha n
    obtain ⟨hb0, hbt⟩ := hb n
    have ha' : 0 < (a n).toReal := ENNReal.toReal_pos ha0.ne' hat.ne
    have hb' : 0 < (b n).toReal := ENNReal.toReal_pos hb0.ne' hbt.ne
    have hab : (a n * b n)⁻¹ = ENNReal.ofReal (((a n).toReal * (b n).toReal)⁻¹) := by
      rw [ENNReal.ofReal_inv_of_pos (mul_pos ha' hb'), ← ENNReal.toReal_mul,
        ENNReal.ofReal_toReal (ENNReal.mul_ne_top hat.ne hbt.ne)]
    rw [hab, ← ENNReal.ofReal_mul (inv_nonneg.mpr (mul_pos ha' hb').le)]
    congr 1
    field_simp
  simp_rw [key]
  apply ENNReal.tendsto_ofReal
  have hlim := (hN.const_mul d).mul hN'
  rwa [show d * (1 / d) * (1 / d) = 1 / d by field_simp] at hlim

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEnergy =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerLim =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerLim", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerExp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Integral.Prod\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

theorem Fk_enorm_le {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) (w : HH) {S : Set G}
    {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hWeq : ∀ s ∈ S, ∀ x, W (s * x) = τ s (W x)) (hτu : ∀ s ∈ S, ∀ a b, ⟪τ s a, τ s b⟫_ℂ = ⟪a, b⟫_ℂ)
    (z z' : G) {q : G} (hq : q ∈ S) :
    ‖Fk σ w W z z' q‖ₑ ≤ ‖⟪σ z w, σ q (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ := by
  unfold Fk
  rw [hWeq q hq z', hσ.2.1 q z', ContinuousLinearMap.mul_apply]
  have hn : ‖τ q (W z')‖ = ‖W z'‖ := by
    have h := hτu q hq (W z') (W z')
    rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K] at h
    have h' : ‖τ q (W z')‖ ^ 2 = ‖W z'‖ ^ 2 := by exact_mod_cast h
    exact (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1 h'
  have hA : ‖⟪τ q (W z'), W z⟫_ℂ‖ ≤ ‖W z‖ * ‖W z'‖ :=
    (norm_inner_le_norm _ _).trans (by rw [hn, mul_comm])
  have hAe : ‖⟪τ q (W z'), W z⟫_ℂ‖ₑ ≤ ‖W z‖ₑ * ‖W z'‖ₑ := by
    rw [← ofReal_norm_eq_enorm, ← ofReal_norm_eq_enorm, ← ofReal_norm_eq_enorm,
      ← ENNReal.ofReal_mul (norm_nonneg _)]
    exact ENNReal.ofReal_le_ofReal hA
  rw [enorm_mul]
  calc ‖⟪τ q (W z'), W z⟫_ℂ‖ₑ * ‖⟪σ z w, σ q (σ z' w)⟫_ℂ‖ₑ
      ≤ (‖W z‖ₑ * ‖W z'‖ₑ) * ‖⟪σ z w, σ q (σ z' w)⟫_ℂ‖ₑ := by gcongr
    _ = ‖⟪σ z w, σ q (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ := by ring

private theorem continuous_Fk_uncurry {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) (w : HH) {W : G → V}
    (hWc : Continuous W) : Continuous (fun x : G × G × G => Fk σ w W x.1 x.2.1 x.2.2) := by
  have hσc := hσ.2.2.2 w
  unfold Fk
  refine Continuous.mul ?_ ?_
  · exact (hWc.comp (continuous_snd.snd.mul continuous_snd.fst)).inner (hWc.comp continuous_fst)
  · exact (hσc.comp continuous_fst).inner (hσc.comp (continuous_snd.snd.mul continuous_snd.fst))

private theorem lintegral_enorm_Fk_lt_infty {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) (w : HH) {S : Set G}
    {μS ν : Measure G} [SFinite μS] [SFinite ν] (hS0 : μS Sᶜ = 0) {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hWeq : ∀ s ∈ S, ∀ x, W (s * x) = τ s (W x)) (hτu : ∀ s ∈ S, ∀ a b, ⟪τ s a, τ s b⟫_ℂ = ⟪a, b⟫_ℂ)
    (hmeas : Measurable (fun x : G × G × G => ‖Fk σ w W x.1 x.2.1 x.2.2‖ₑ))
    (hconv : ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪σ z w, σ s (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ ∂μS ∂ν ∂ν < ⊤) :
    ∫⁻ x, ‖Fk σ w W x.1 x.2.1 x.2.2‖ₑ ∂(ν.prod (ν.prod μS)) < ⊤ := by
  have hSae : ∀ᵐ q ∂μS, q ∈ S := by
    have h := compl_mem_ae_iff.2 hS0
    rw [compl_compl] at h
    exact h
  calc ∫⁻ x, ‖Fk σ w W x.1 x.2.1 x.2.2‖ₑ ∂(ν.prod (ν.prod μS))
      = ∫⁻ z, ∫⁻ y, ‖Fk σ w W z y.1 y.2‖ₑ ∂(ν.prod μS) ∂ν := lintegral_prod _ hmeas.aemeasurable
    _ = ∫⁻ z, ∫⁻ z', ∫⁻ q, ‖Fk σ w W z z' q‖ₑ ∂μS ∂ν ∂ν :=
        lintegral_congr fun z => lintegral_prod _ (hmeas.comp measurable_prodMk_left).aemeasurable
    _ ≤ ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪σ z w, σ s (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ ∂μS ∂ν ∂ν :=
        lintegral_mono fun z => lintegral_mono fun z' => lintegral_mono_ae (by
          filter_upwards [hSae] with q hq
          exact Fk_enorm_le hσ w hWeq hτu z z' hq)
    _ < ⊤ := hconv

theorem Fk_integrable {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) (w : HH) {S : Set G}
    {μS ν : Measure G} [SFinite μS] [SFinite ν] (hS0 : μS Sᶜ = 0) {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hWeq : ∀ s ∈ S, ∀ x, W (s * x) = τ s (W x)) (hτu : ∀ s ∈ S, ∀ a b, ⟪τ s a, τ s b⟫_ℂ = ⟪a, b⟫_ℂ)
    (hWc : Continuous W)
    (hconv : ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪σ z w, σ s (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ ∂μS ∂ν ∂ν < ⊤) :
    Integrable (fun x : G × G × G => Fk σ w W x.1 x.2.1 x.2.2) (ν.prod (ν.prod μS)) := by
  have hcont := continuous_Fk_uncurry hσ w hWc
  exact ⟨hcont.aestronglyMeasurable,
    lintegral_enorm_Fk_lt_infty hσ w hS0 hWeq hτu (continuous_enorm.measurable.comp hcont.measurable) hconv⟩

theorem integral_norm_sq_eq_one {ν : Measure G} {W : G → V} (hWc : Continuous W) (h2 : ∫⁻ x, ‖W x‖ₑ ^ 2 ∂ν = 1) :
    ∫ z, ‖W z‖ ^ 2 ∂ν = 1 := by
  rw [integral_eq_lintegral_of_nonneg_ae (ae_of_all _ fun x => sq_nonneg _)
    ((hWc.norm.pow 2).aestronglyMeasurable)]
  have h : (fun x => ENNReal.ofReal (‖W x‖ ^ 2)) = fun x => ‖W x‖ₑ ^ 2 := by
    funext x
    rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm_eq_enorm]
  rw [h, h2]
  simp

theorem integral_inner_mul_inner_eq_norm_sq_div {μ : Measure G} [μ.IsMulLeftInvariant] {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {d : ℝ}
    (hd : 0 < d) {w : HH} {S : Set G} {τ : G → (V →L[ℂ] V)} {ν : Measure G} {W : G → V}
    (hW : IsWAbs μ σ d w S τ ν W) (z : G) :
    ∫ x, ⟪W x, W z⟫_ℂ * ⟪σ z w, σ x w⟫_ℂ ∂μ = ((‖W z‖ ^ 2 / d : ℝ) : ℂ) := by
  obtain ⟨hint, heq⟩ := hW.2.2.2.2.2.1 z
  rw [← integral_mul_left_eq_self _ z]
  have hd0 : (d : ℂ) ≠ 0 := by exact_mod_cast hd.ne'
  have hpt : ∀ y, ⟪W (z * y), W z⟫_ℂ * ⟪σ z w, σ (z * y) w⟫_ℂ =
      conj (((1 / d : ℝ) : ℂ) * ⟪W z, ((d : ℂ) * conj ⟪w, σ y w⟫_ℂ) • W (z * y)⟫_ℂ) := by
    intro y
    rw [hσ.2.1 z y, ContinuousLinearMap.mul_apply, hσ.2.2.1, inner_smul_right]
    simp only [map_mul, Complex.conj_ofReal, inner_conj_symm]
    push_cast
    first | (field_simp; ring) | field_simp
  simp_rw [hpt]
  have hself : ⟪W z, W z⟫_ℂ = ((‖W z‖ ^ 2 : ℝ) : ℂ) := by
    refine Complex.ext ?_ ?_
    · first
        | simp
    · first
        | simp
  rw [integral_conj, integral_const_mul, integral_inner hint, heq, hself, ← Complex.ofReal_mul,
    Complex.conj_ofReal]
  congr 1
  ring

theorem Fk_value {μ : Measure G} [μ.IsMulLeftInvariant] {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {d : ℝ}
    (hd : 0 < d) {w : HH} {S : Set G} {μS ν : Measure G} [SFinite μS] [SFinite ν] (hq : IsQuot μ μS ν)
    {τ : G → (V →L[ℂ] V)} {W : G → V} (hW : IsWAbs μ σ d w S τ ν W)
    (hΦ : Integrable (fun x : G × G × G => Fk σ w W x.1 x.2.1 x.2.2) (ν.prod (ν.prod μS))) :
    ∫ x, Fk σ w W x.1 x.2.1 x.2.2 ∂(ν.prod (ν.prod μS)) = ((1 / d : ℝ) : ℂ) := by
  have hWc : Continuous W := hW.2.2.2.2.1
  have hL2 := hW.2.2.2.2.2.2.2
  have hm : Measurable (fun p : G × G => p.2 * p.1) := measurable_snd.mul measurable_fst
  have hmap : μ = Measure.map (fun p : G × G => p.2 * p.1) (ν.prod μS) := by
    ext s hs
    rw [Measure.map_apply hm hs, ← lintegral_indicator_one hs, hq _ (measurable_one.indicator hs),
      ← lintegral_indicator_one (hm hs),
      lintegral_prod _ ((measurable_one.indicator (hm hs)).aemeasurable)]
    first
      | rfl
  have hinner : ∀ z, ∫ y, Fk σ w W z y.1 y.2 ∂(ν.prod μS) = ((‖W z‖ ^ 2 / d : ℝ) : ℂ) := by
    intro z
    have hg := integral_inner_mul_inner_eq_norm_sq_div hσ hd hW z
    have hgc : Continuous (fun x : G => ⟪W x, W z⟫_ℂ * ⟪σ z w, σ x w⟫_ℂ) :=
      (hWc.inner continuous_const).mul (continuous_const.inner (hσ.2.2.2 w))
    rw [hmap, integral_map hm.aemeasurable hgc.aestronglyMeasurable] at hg
    exact hg
  rw [integral_prod _ hΦ]
  refine (integral_congr_ae (ae_of_all _ fun z => hinner z)).trans ?_
  first
    | rw [integral_complex_ofReal, integral_div, integral_norm_sq_eq_one hWc hL2]

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerLim =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerSum =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerSum", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsDefs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerConv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerExp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

theorem sumsq_eq {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {w : HH} (hw : ‖w‖ = 1) {S : Set G}
    {μS ν : Measure G} (hS : IsHaarSub S μS) [SFinite ν] {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hWeq : ∀ s ∈ S, ∀ x, W (s * x) = τ s (W x)) (hτu : ∀ s ∈ S, ∀ a b, ⟪τ s a, τ s b⟫_ℂ = ⟪a, b⟫_ℂ)
    (hWc : Continuous W) (hW1 : ∫⁻ x, ‖W x‖ₑ ∂ν < ⊤) {Ω : Set G} (hΩm : MeasurableSet Ω) (hΩS : Ω ⊆ S)
    (hfin : μS Ω < ⊤) :
    ((∑ i, ‖yv μS ν σ w W Ω (stdOrthonormalBasis ℂ V i)‖ ^ 2 : ℝ) : ℂ) =
      ∫ z, ∫ z', ∫ q, (cnt μS Ω q).toReal • Fk σ w W z z' q ∂μS ∂ν ∂ν := by
  have hS' := hS
  obtain ⟨-, -, hSmul, hSinv, hSig, -, -, -, -, -, -⟩ := hS'
  haveI : SigmaFinite μS := hSig
  haveI : IsFiniteMeasure (μS.restrict Ω) := isFiniteMeasure_restrict.mpr hfin.ne
  have hleft : ∀ (μ : Measure G) (f : G → PiLp 2 (fun _ : Fin (Module.finrank ℂ V) => HH)),
      Integrable f μ → ∀ c, ⟪∫ x, f x ∂μ, c⟫_ℂ = ∫ x, ⟪f x, c⟫_ℂ ∂μ := by
    intro μ f hf c
    rw [← inner_conj_symm, ← integral_inner hf, ← integral_conj]
    simp_rw [inner_conj_symm]
  set g := gvec σ w W with hg
  have hgc : Continuous g := gvec_continuous hσ w hWc
  have hWn : ∀ s ∈ S, ∀ x, ‖W (s * x)‖ = ‖W x‖ := by
    intro s hs x
    rw [hWeq s hs x]
    have h := hτu s hs (W x) (W x)
    rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K] at h
    have h' : ‖τ s (W x)‖ ^ 2 = ‖W x‖ ^ 2 := by exact_mod_cast h
    exact (pow_left_inj₀ (norm_nonneg _) (norm_nonneg _) two_ne_zero).mp h'
  have hgn : ∀ s ∈ Ω, ∀ z, ‖g (s⁻¹ * z)‖ = ‖W z‖ := by
    intro s hs z
    rw [hg, gvec_norm hσ hw]
    exact hWn s⁻¹ (hSinv s (hΩS hs)) z
  have hgint : ∀ z, Integrable (fun s => g (s⁻¹ * z)) (μS.restrict Ω) := by
    intro z
    refine Integrable.mono' (integrable_const ‖W z‖) ?_ ?_
    · exact (hgc.comp (continuous_inv.mul continuous_const)).aestronglyMeasurable
    · exact (ae_restrict_iff' hΩm).mpr (Filter.Eventually.of_forall fun s hs => (hgn s hs z).le)
  set F : G → PiLp 2 (fun _ : Fin (Module.finrank ℂ V) => HH) :=
    fun z => ∫ s in Ω, g (s⁻¹ * z) ∂μS with hF
  have hWi : Integrable W ν := ⟨hWc.aestronglyMeasurable, hW1⟩
  have hWint : Integrable (fun z => ‖W z‖) ν := hWi.norm
  have hFint : Integrable F ν := by
    refine Integrable.mono' (hWint.const_mul (μS.real Ω)) ?_ ?_
    · have hsm : StronglyMeasurable (Function.uncurry fun (z s : G) => g (s⁻¹ * z)) := by
        apply Continuous.stronglyMeasurable
        exact hgc.comp ((continuous_snd.inv).mul continuous_fst)
      exact (hsm.integral_prod_right (ν := μS.restrict Ω)).aestronglyMeasurable
    · refine Filter.Eventually.of_forall fun z => ?_
      have h1 := norm_integral_le_of_norm_le_const (μ := μS.restrict Ω) (f := fun s => g (s⁻¹ * z))
        (C := ‖W z‖) ((ae_restrict_iff' hΩm).mpr (Filter.Eventually.of_forall fun s hs => (hgn s hs z).le))
      calc ‖F z‖ ≤ ‖W z‖ * (μS.restrict Ω).real Set.univ := h1
        _ = μS.real Ω * ‖W z‖ := by
          simp only [Measure.real, Measure.restrict_apply_univ]
          ring
  have hY : ∀ i, (∫ z, F z ∂ν).ofLp i = yv μS ν σ w W Ω (stdOrthonormalBasis ℂ V i) := by
    intro i
    have h1 := (PiLp.proj 2 (𝕜 := ℂ) (fun _ : Fin (Module.finrank ℂ V) => HH) i).integral_comp_comm hFint
    simp only [PiLp.proj_apply] at h1
    rw [← h1]
    unfold yv
    refine integral_congr_ae (Filter.Eventually.of_forall fun z => ?_)
    have h2 := (PiLp.proj 2 (𝕜 := ℂ) (fun _ : Fin (Module.finrank ℂ V) => HH) i).integral_comp_comm
      (hgint z)
    simp only [PiLp.proj_apply] at h2
    simp only [hF]
    rw [← h2]
    simp [hg, gvec]
  have hr : (∑ i, ‖yv μS ν σ w W Ω (stdOrthonormalBasis ℂ V i)‖ ^ 2) = ‖∫ z, F z ∂ν‖ ^ 2 := by
    rw [PiLp.norm_sq_eq_of_L2]
    simp only [hY]
  rw [hr]
  push_cast
  refine (inner_self_eq_norm_sq_to_K (𝕜 := ℂ) (∫ z, F z ∂ν)).symm.trans ?_
  calc ⟪∫ z, F z ∂ν, ∫ z, F z ∂ν⟫_ℂ = ∫ z, ⟪F z, ∫ z', F z' ∂ν⟫_ℂ ∂ν := hleft ν F hFint _
    _ = ∫ z, ∫ z', ⟪F z, F z'⟫_ℂ ∂ν ∂ν := by
        congr 1
        funext z
        exact (integral_inner hFint _).symm
    _ = ∫ z, ∫ z', ∫ q, (cnt μS Ω q).toReal • Fk σ w W z z' q ∂μS ∂ν ∂ν := by
        congr 1
        funext z
        congr 1
        funext z'
        have hae : ∀ᵐ p ∂((μS.restrict Ω).prod (μS.restrict Ω)), p ∈ Ω ×ˢ Ω := by
          rw [Measure.prod_restrict]
          exact ae_restrict_mem (hΩm.prod hΩm)
        have hint : Integrable (fun p : G × G => Fk σ w W z z' (p.1 * p.2⁻¹))
            ((μS.restrict Ω).prod (μS.restrict Ω)) := by
          refine Integrable.mono' (integrable_const (‖W z‖ * ‖W z'‖)) ?_ ?_
          · exact (Fk_continuous hσ w hWc (a := fun _ => z) (b := fun _ => z')
              (c := fun p : G × G => p.1 * p.2⁻¹) continuous_const continuous_const
              (continuous_fst.mul continuous_snd.inv)).aestronglyMeasurable
          · exact hae.mono fun p hp =>
              Fk_bound hσ hw hWeq hτu z z' (hSmul _ (hΩS hp.1) _ (hSinv _ (hΩS hp.2)))
        calc ⟪F z, F z'⟫_ℂ = ∫ s in Ω, ⟪g (s⁻¹ * z), F z'⟫_ℂ ∂μS := hleft _ _ (hgint z) _
          _ = ∫ s in Ω, ∫ t in Ω, ⟪g (s⁻¹ * z), g (t⁻¹ * z')⟫_ℂ ∂μS ∂μS := by
              congr 1
              funext s
              exact (integral_inner (hgint z') _).symm
          _ = ∫ s in Ω, ∫ t in Ω, Fk σ w W z z' (s * t⁻¹) ∂μS ∂μS := by
              refine setIntegral_congr_fun hΩm fun s hs => ?_
              congr 1
              funext t
              rw [hg, gvec_inner]
              exact kF hσ w hSinv hWeq hτu z z' (hΩS hs)
          _ = _ := conv_integral hS hΩm hΩS hfin _
              (Fk_continuous hσ w hWc (a := fun _ => z) (b := fun _ => z') (c := fun q => q)
                continuous_const continuous_const continuous_id).stronglyMeasurable hint

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerSum =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolner =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolner", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsDefs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerConv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerExp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerLim\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolnerSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.MeasureTheory.Integral.DominatedConvergence\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Filter Topology
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

section Folner

variable {G : Type} [Group G] [TopologicalSpace G] [MeasurableSpace G]

theorem ratio_le_one {μS : Measure G} {Ω A : Set G} (hA : A ⊆ Ω) (hfin : μS Ω < ⊤) :
    (μS A).toReal / (μS Ω).toReal ≤ 1 := by
  apply div_le_one_of_le₀ _ ENNReal.toReal_nonneg
  exact ENNReal.toReal_mono hfin.ne (measure_mono hA)

theorem ratio_nonneg {μS : Measure G} {Ω A : Set G} : 0 ≤ (μS A).toReal / (μS Ω).toReal := div_nonneg ENNReal.toReal_nonneg ENNReal.toReal_nonneg

theorem folner_seq [LocallyCompactSpace G] [SecondCountableTopology G] {S : Set G} {μS : Measure G}
    (hS : IsHaarSub S μS) (hF : IsFolner S μS) :
    ∃ Ω : ℕ → Set G, (∀ n, MeasurableSet (Ω n) ∧ Ω n ⊆ S ∧ 0 < μS (Ω n) ∧ μS (Ω n) < ⊤) ∧
      ∀ K : Set G, IsCompact K → K ⊆ S →
        Tendsto (fun n => (μS {t | t ∈ Ω n ∧ ∀ k ∈ K, k * t ∈ Ω n}).toReal / (μS (Ω n)).toReal) atTop (𝓝 1) := by
  let Kx := CompactExhaustion.choice G
  have hε : ∀ n : ℕ, (0 : ℝ≥0∞) < ENNReal.ofReal (1 / ((n : ℝ) + 1)) := fun n =>
    ENNReal.ofReal_pos.mpr (by positivity)
  choose Ω hΩm hΩS hpos hfin hle using fun n : ℕ =>
    hF (Kx n ∩ S) ((Kx.isCompact n).inter_right hS.1) Set.inter_subset_right _ (hε n)
  refine ⟨Ω, fun n => ⟨hΩm n, hΩS n, hpos n, hfin n⟩, ?_⟩
  intro K hK hKS
  obtain ⟨N, hN⟩ := Kx.exists_superset_of_isCompact hK
  have hlow : Tendsto (fun n : ℕ => 1 / (1 + 1 / ((n : ℝ) + 1))) atTop (𝓝 1) := by
    have h1 := tendsto_one_div_add_atTop_nhds_zero_nat.const_add (1 : ℝ)
    have h2 : Tendsto (fun n : ℕ => (1 : ℝ) / (1 + 1 / ((n : ℝ) + 1))) atTop (𝓝 (1 / (1 + 0))) :=
      tendsto_const_nhds.div h1 (by norm_num)
    rwa [add_zero, div_one] at h2
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' hlow tendsto_const_nhds ?_ ?_
  · filter_upwards [Filter.eventually_ge_atTop N] with n hn
    have hsub : {t | t ∈ Ω n ∧ ∀ k ∈ Kx n ∩ S, k * t ∈ Ω n} ⊆ {t | t ∈ Ω n ∧ ∀ k ∈ K, k * t ∈ Ω n} :=
      fun t ht => ⟨ht.1, fun k hk => ht.2 k ⟨Kx.subset hn (hN hk), hKS hk⟩⟩
    have hAB := measure_mono (μ := μS) hsub
    have hBΩ : μS {t | t ∈ Ω n ∧ ∀ k ∈ K, k * t ∈ Ω n} ≤ μS (Ω n) := measure_mono (fun t ht => ht.1)
    have hBfin := (hBΩ.trans_lt (hfin n)).ne
    have hAfin := ((hAB.trans hBΩ).trans_lt (hfin n)).ne
    have hΩpos : 0 < (μS (Ω n)).toReal := ENNReal.toReal_pos (hpos n).ne' (hfin n).ne
    have hkey := ENNReal.toReal_mono (ENNReal.mul_ne_top (by simp) hAfin) (hle n)
    rw [ENNReal.toReal_mul, ENNReal.toReal_add (by simp) (by simp), ENNReal.toReal_ofReal (by positivity),
      ENNReal.toReal_one] at hkey
    have hAB' := ENNReal.toReal_mono hBfin hAB
    have hc : 0 < 1 + 1 / ((n : ℝ) + 1) := by positivity
    rw [div_le_div_iff₀ hc hΩpos]
    nlinarith [mul_le_mul_of_nonneg_left hAB' hc.le]
  · exact Filter.Eventually.of_forall fun n => ratio_le_one (fun t ht => ht.1) (hfin n)

end Folner

section Limit

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

def rat (μS : Measure G) (Ω : Set G) (q : G) : ℝ := (cnt μS Ω q).toReal / (μS Ω).toReal

theorem sumsq_div_eq {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {w : HH} (hw : ‖w‖ = 1) {S : Set G}
    {μS ν : Measure G} (hS : IsHaarSub S μS) [SFinite ν] {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hWeq : ∀ s ∈ S, ∀ x, W (s * x) = τ s (W x)) (hτu : ∀ s ∈ S, ∀ a b, ⟪τ s a, τ s b⟫_ℂ = ⟪a, b⟫_ℂ)
    (hWc : Continuous W) (hW1 : ∫⁻ x, ‖W x‖ₑ ∂ν < ⊤) {Ω : Set G} (hΩm : MeasurableSet Ω) (hΩS : Ω ⊆ S)
    (hfin : μS Ω < ⊤)
    (hint : Integrable (fun x : G × G × G => rat μS Ω x.2.2 • Fk σ w W x.1 x.2.1 x.2.2) (ν.prod (ν.prod μS))) :
    (((∑ i, ‖yv μS ν σ w W Ω (stdOrthonormalBasis ℂ V i)‖ ^ 2) / (μS Ω).toReal : ℝ) : ℂ) =
      ∫ x, rat μS Ω x.2.2 • Fk σ w W x.1 x.2.1 x.2.2 ∂(ν.prod (ν.prod μS)) := by
  have : SigmaFinite μS := hS.2.2.2.2.1
  by_cases hm : (μS Ω).toReal = 0
  · simp [rat, hm]
  · have hI := ‹Integrable (fun x : G × G × G => rat μS Ω x.2.2 • Fk σ w W x.1 x.2.1 x.2.2)
      (ν.prod (ν.prod μS))›
    have hfI : Integrable (fun x : G × G × G => (cnt μS Ω x.2.2).toReal • Fk σ w W x.1 x.2.1 x.2.2)
        (ν.prod (ν.prod μS)) := by
      refine (hI.smul (μS Ω).toReal).congr (ae_of_all _ fun x => ?_)
      simp only [Pi.smul_apply, rat, smul_smul]
      congr 1
      first
        | rw [mul_div_assoc', mul_div_cancel_left₀ _ hm]
    have hprod : ∫ x, (cnt μS Ω x.2.2).toReal • Fk σ w W x.1 x.2.1 x.2.2 ∂(ν.prod (ν.prod μS)) =
        ∫ z, ∫ z', ∫ q, (cnt μS Ω q).toReal • Fk σ w W z z' q ∂μS ∂ν ∂ν := by
      rw [integral_prod _ hfI]
      refine integral_congr_ae ?_
      filter_upwards [hfI.prod_right_ae] with z hz
      exact integral_prod _ hz
    have hrhs : ∫ x, rat μS Ω x.2.2 • Fk σ w W x.1 x.2.1 x.2.2 ∂(ν.prod (ν.prod μS)) =
        ∫ x, ((μS Ω).toReal⁻¹ : ℝ) • ((cnt μS Ω x.2.2).toReal • Fk σ w W x.1 x.2.1 x.2.2)
          ∂(ν.prod (ν.prod μS)) := by
      refine integral_congr_ae (ae_of_all _ fun x => ?_)
      simp only [rat, smul_smul, div_eq_inv_mul]
    rw [hrhs, integral_smul, hprod, ← sumsq_eq hσ hw hS hWeq hτu hWc hW1 hΩm hΩS hfin,
      Complex.real_smul]
    push_cast
    ring

theorem folner_limit {μ : Measure G} [μ.IsHaarMeasure] {σ : G → (HH →L[ℂ] HH)} {d : ℝ} {w : HH}
    {S : Set G} {μS ν : Measure G} {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hσ : IsUnitRep σ) (hSch : IsSchur μ σ d) (hw : ‖w‖ = 1) (hS : IsHaarSub S μS) (hν : SFinite ν)
    (hq : IsQuot μ μS ν) (hW : IsWAbs μ σ d w S τ ν W)
    (hconv : ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪σ z w, σ s (σ z' w)⟫_ℂ‖ₑ * ‖W z‖ₑ * ‖W z'‖ₑ ∂μS ∂ν ∂ν < ⊤)
    (Ω : ℕ → Set G) (hΩ : ∀ n, MeasurableSet (Ω n) ∧ Ω n ⊆ S ∧ 0 < μS (Ω n) ∧ μS (Ω n) < ⊤)
    (hF : ∀ K : Set G, IsCompact K → K ⊆ S →
      Tendsto (fun n => (μS {t | t ∈ Ω n ∧ ∀ k ∈ K, k * t ∈ Ω n}).toReal / (μS (Ω n)).toReal) atTop (𝓝 1)) :
    Tendsto (fun n => (∑ i, ‖yv μS ν σ w W (Ω n) (stdOrthonormalBasis ℂ V i)‖ ^ 2) / (μS (Ω n)).toReal)
      atTop (𝓝 (1 / d)) := by
  have : SFinite ν := hν
  have : SigmaFinite μS := hS.2.2.2.2.1
  have hd : 0 < d := hSch.1
  have hWeq := hW.2.2.2.1
  have hτu := hW.2.2.1
  have hWc := hW.2.2.2.2.1
  have hW1 := hW.2.2.2.2.2.2.1
  have hS0 : μS Sᶜ = 0 := hS.2.2.2.2.2.2.1
  have hΦ := Fk_integrable hσ w hS0 hWeq hτu hWc hconv
  have hmeas : ∀ n, Measurable (fun x : G × G × G => rat μS (Ω n) x.2.2) := fun n =>
    (((cnt_measurable (μS := μS) (hΩ n).1).ennreal_toReal).div_const _).comp measurable_snd.snd
  have hr : ∀ n q, 0 ≤ rat μS (Ω n) q ∧ rat μS (Ω n) q ≤ 1 := by
    intro n q
    unfold rat cnt
    exact ⟨ratio_nonneg, ratio_le_one (fun t ht => ht.1) (hΩ n).2.2.2⟩
  have hbound : ∀ n (x : G × G × G), ‖rat μS (Ω n) x.2.2 • Fk σ w W x.1 x.2.1 x.2.2‖ ≤
      ‖Fk σ w W x.1 x.2.1 x.2.2‖ := by
    intro n x
    rw [norm_smul, Real.norm_of_nonneg (hr n x.2.2).1]
    exact mul_le_of_le_one_left (norm_nonneg _) (hr n x.2.2).2
  have hint_r : ∀ n, Integrable (fun x : G × G × G => rat μS (Ω n) x.2.2 • Fk σ w W x.1 x.2.1 x.2.2)
      (ν.prod (ν.prod μS)) := fun n =>
    hΦ.mono ((hmeas n).aestronglyMeasurable.smul hΦ.aestronglyMeasurable) (ae_of_all _ (hbound n))
  have hS_ae : ∀ᵐ x ∂(ν.prod (ν.prod μS)), x.2.2 ∈ S := by
    rw [ae_iff]
    have hset : {x : G × G × G | ¬ x.2.2 ∈ S} = Set.univ ×ˢ (Set.univ ×ˢ Sᶜ) := by
      ext x; simp
    rw [hset, Measure.prod_prod, Measure.prod_prod, hS0, mul_zero, mul_zero]
  have hlim : Tendsto (fun n => ∫ x, rat μS (Ω n) x.2.2 • Fk σ w W x.1 x.2.1 x.2.2
      ∂(ν.prod (ν.prod μS))) atTop (𝓝 (∫ x, Fk σ w W x.1 x.2.1 x.2.2 ∂(ν.prod (ν.prod μS)))) := by
    refine tendsto_integral_of_dominated_convergence (fun x => ‖Fk σ w W x.1 x.2.1 x.2.2‖)
      (fun n => (hint_r n).aestronglyMeasurable) hΦ.norm (fun n => ae_of_all _ (hbound n)) ?_
    filter_upwards [hS_ae] with x hx
    have h1 : Tendsto (fun n => rat μS (Ω n) x.2.2) atTop (𝓝 1) := by
      have h0 := hF {x.2.2} isCompact_singleton (Set.singleton_subset_iff.mpr hx)
      simpa [rat, cnt] using h0
    have h2 := h1.smul_const (Fk σ w W x.1 x.2.1 x.2.2)
    rwa [one_smul] at h2
  rw [Fk_value hσ hd hq hW hΦ] at hlim
  have hlim' : Tendsto (fun n => (((∑ i, ‖yv μS ν σ w W (Ω n) (stdOrthonormalBasis ℂ V i)‖ ^ 2) /
      (μS (Ω n)).toReal : ℝ) : ℂ)) atTop (𝓝 ((1 / d : ℝ) : ℂ)) :=
    hlim.congr fun n => (sumsq_div_eq hσ hw hS hWeq hτu hWc hW1 (hΩ n).1 (hΩ n).2.1
      (hΩ n).2.2.2 (hint_r n)).symm
  have h3 := (Complex.continuous_re.tendsto _).comp hlim'
  simpa only [Function.comp_def, Complex.ofReal_re] using h3

end Limit

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolner =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEquiv =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEquiv", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTrunc\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V V' : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] [FiniteDimensional ℂ V']

omit [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G] [CompleteSpace HH] in
theorem fY_linear (σ : G → (HH →L[ℂ] HH)) (w : HH) (W : G → V) (e : V) (p : G × G) :
    ∑ i, ⟪stdOrthonormalBasis ℂ V i, e⟫_ℂ • fY σ w W (stdOrthonormalBasis ℂ V i) p = fY σ w W e p := by
  simp only [fY]
  simp_rw [smul_smul, ← Finset.sum_smul]
  congr 1
  rw [← (stdOrthonormalBasis ℂ V).sum_inner_mul_inner (W (p.2⁻¹ * p.1)) e]
  refine Finset.sum_congr rfl fun i _ => ?_
  ring

theorem Yop_apply_integral {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {μ μS ν : Measure G} [SFinite ν]
    [SFinite μS] {d : ℝ} {w : HH} {S : Set G} {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hW : IsWAbs μ σ d w S τ ν W) (hinv : ∀ a ∈ S, a⁻¹ ∈ S) {A : Set G} (hA : MeasurableSet A) (hAS : A ⊆ S)
    (hAf : μS A < ⊤) (e : V) :
    Yop μS ν σ w W A e = ∫ p, fY σ w W e p ∂(ν.prod (μS.restrict A)) := by
  rw [Yop_apply]
  simp_rw [yv_eq_integral hσ hW hinv hA hAS hAf]
  have hint : ∀ i, Integrable (fun p => ⟪stdOrthonormalBasis ℂ V i, e⟫_ℂ •
      fY σ w W (stdOrthonormalBasis ℂ V i) p) (ν.prod (μS.restrict A)) :=
    fun i => (integrable_fY hσ hW hinv hA hAS hAf _).smul _
  symm
  calc ∫ p, fY σ w W e p ∂(ν.prod (μS.restrict A))
      = ∫ p, ∑ i, ⟪stdOrthonormalBasis ℂ V i, e⟫_ℂ • fY σ w W (stdOrthonormalBasis ℂ V i) p
          ∂(ν.prod (μS.restrict A)) := by
        congr 1
        funext p
        exact (fY_linear σ w W e p).symm
    _ = ∑ i, ∫ p, ⟪stdOrthonormalBasis ℂ V i, e⟫_ℂ • fY σ w W (stdOrthonormalBasis ℂ V i) p
          ∂(ν.prod (μS.restrict A)) := integral_finsetSum _ fun i _ => hint i
    _ = _ := by simp_rw [integral_smul]

omit [SecondCountableTopology G] in
theorem prod_restrict_translate {μS : Measure G} [SFinite μS] (ν : Measure G) [SFinite ν] {s0 : G}
    (hmap : μS.map (fun x => x * s0⁻¹) = μS) (A : Set G) :
    ν.prod (μS.restrict A) =
      (ν.prod (μS.restrict ((fun v => v * s0⁻¹) ⁻¹' A))).map (Prod.map id (fun v => v * s0⁻¹)) := by
  have hE := (MeasurableEquiv.mulRight (s0⁻¹ : G)).measurableEmbedding.restrict_map μS A
  rw [MeasurableEquiv.coe_mulRight, hmap] at hE
  rw [← Measure.map_prod_map ν _ measurable_id (measurable_mul_const s0⁻¹), Measure.map_id, ← hE]

theorem sigma_Yop {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {μ μS ν : Measure G} [SFinite ν] {S : Set G}
    (hS : IsHaarSub S μS) {d : ℝ} {w : HH} {τ : G → (V →L[ℂ] V)} {W : G → V}
    (hW : IsWAbs μ σ d w S τ ν W) {A : Set G} (hA : MeasurableSet A) (hAS : A ⊆ S) (hAf : μS A < ⊤)
    {s0 : G} (hs0 : s0 ∈ S) (e : V) :
    σ s0⁻¹ (Yop μS ν σ w W A e) =
      Yop μS ν σ w W ((fun v => v * s0⁻¹) ⁻¹' A) (ContinuousLinearMap.adjoint (τ s0) e) := by
  obtain ⟨-, -, hmulS, hinvS, hsig, -, -, -, -, hright, -⟩ := hS
  have : SFinite μS := by have := hsig; infer_instance
  have hmap : μS.map (fun x => x * s0⁻¹) = μS := hright _ (hinvS s0 hs0)
  have hA'm : MeasurableSet ((fun v => v * s0⁻¹) ⁻¹' A) := measurable_mul_const s0⁻¹ hA
  have hA'S : (fun v => v * s0⁻¹) ⁻¹' A ⊆ S := by
    intro v hv
    have h1 := hmulS _ (hAS hv) s0 hs0
    simpa [mul_assoc] using h1
  have hA'f : μS ((fun v => v * s0⁻¹) ⁻¹' A) < ⊤ := by
    rw [← Measure.map_apply (measurable_mul_const s0⁻¹) hA, hmap]
    exact hAf
  have hemb : MeasurableEmbedding (Prod.map id (fun v : G => v * s0⁻¹)) :=
    (MeasurableEquiv.prodCongr (MeasurableEquiv.refl G) (MeasurableEquiv.mulRight s0⁻¹)).measurableEmbedding

  rw [Yop_apply_integral hσ hW hinvS hA hAS hAf, Yop_apply_integral hσ hW hinvS hA'm hA'S hA'f,
    ← ContinuousLinearMap.integral_comp_comm _ (integrable_fY hσ hW hinvS hA hAS hAf e),
    prod_restrict_translate ν hmap A, hemb.integral_map]
  congr 1
  funext p
  have hq : (p.2 * s0⁻¹)⁻¹ * p.1 = s0 * (p.2⁻¹ * p.1) := by group
  simp only [fY, Prod.map, id_eq, ContinuousLinearMap.map_smul]
  rw [hq, rep_mul_apply hσ, inv_mul_cancel_left, hW.2.2.2.1 s0 hs0,
    ContinuousLinearMap.adjoint_inner_right]

theorem sand_translate {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {μ μS ν μS' ν' : Measure G} [SFinite ν]
    [SFinite ν'] {S S' : Set G} (hS : IsHaarSub S μS) (hS' : IsHaarSub S' μS') {d : ℝ} {w : HH}
    {τ : G → (V →L[ℂ] V)} {τ' : G → (V' →L[ℂ] V')} {W : G → V} {W' : G → V'}
    (hW : IsWAbs μ σ d w S τ ν W) (hW' : IsWAbs μ σ d w S' τ' ν' W')
    {Ω Ω' : Set G} (hΩm : MeasurableSet Ω) (hΩS : Ω ⊆ S) (hΩf : μS Ω < ⊤)
    (hΩm' : MeasurableSet Ω') (hΩS' : Ω' ⊆ S') (hΩf' : μS' Ω' < ⊤)
    {s0 s0' : G} (hs0 : s0 ∈ S) (hs0' : s0' ∈ S') (γ : G) :
    sand σ (Yop μS ν σ w W Ω) (Yop μS' ν' σ w W' Ω') (s0 * γ * s0'⁻¹) =
      (τ s0).comp ((sand σ (Yop μS ν σ w W ((fun v => v * s0⁻¹) ⁻¹' Ω))
        (Yop μS' ν' σ w W' ((fun v => v * s0'⁻¹) ⁻¹' Ω')) γ).comp (ContinuousLinearMap.adjoint (τ' s0'))) := by
  ext b
  refine ext_inner_left ℂ fun a => ?_
  rw [inner_sand]
  conv_rhs => rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply,
    ← ContinuousLinearMap.adjoint_inner_left, inner_sand]
  rw [← sigma_Yop hσ hS hW hΩm hΩS hΩf hs0 a, ← sigma_Yop hσ hS' hW' hΩm' hΩS' hΩf' hs0' b]
  have hmove : ∀ u : HH, σ γ (σ s0'⁻¹ u) = σ s0⁻¹ (σ (s0 * γ * s0'⁻¹) u) := by
    intro u
    rw [rep_mul_apply hσ, rep_mul_apply hσ, show s0⁻¹ * (s0 * γ * s0'⁻¹) = γ * s0'⁻¹ by group]
  rw [hmove, hσ.2.2.1]

theorem hsA_Xop_translate {μ : Measure G} {σ : G → (HH →L[ℂ] HH)} {d : ℝ} {w : HH} {S S' : Set G}
    {μS ν μS' ν' : Measure G} {τ : G → (V →L[ℂ] V)} {τ' : G → (V' →L[ℂ] V')} {W : G → V} {W' : G → V'}
    [SFinite ν] [SFinite ν'] (hσ : IsUnitRep σ) (hS : IsHaarSub S μS) (hS' : IsHaarSub S' μS')
    (hW : IsWAbs μ σ d w S τ ν W) (hW' : IsWAbs μ σ d w S' τ' ν' W')
    {Ω Ω' : Set G} (hΩm : MeasurableSet Ω) (hΩS : Ω ⊆ S) (hΩf : μS Ω < ⊤)
    (hΩm' : MeasurableSet Ω') (hΩS' : Ω' ⊆ S') (hΩf' : μS' Ω' < ⊤)
    {s0 s0' : G} (hs0 : s0 ∈ S) (hs0' : s0' ∈ S') (γ : G) :
    hsA (Xop μS ν μS' ν' σ d w W W' Ω Ω' (s0 * γ * s0'⁻¹)) =
      hsA (Xop μS ν μS' ν' σ d w W W' ((fun v => v * s0⁻¹) ⁻¹' Ω) ((fun v => v * s0'⁻¹) ⁻¹' Ω') γ) := by
  simp only [Xop]
  rw [hsA_smul, hsA_smul, sand_translate hσ hS hS' hW hW' hΩm hΩS hΩf hΩm' hΩS' hΩf' hs0 hs0' γ,
    hsA_conj (τ s0) (τ' s0') (hW.2.2.1 s0 hs0) (hW'.2.2.1 s0' hs0')]

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEquiv =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsLower =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsLower", "h": "module\n\npublic import Mathlib.Analysis.Real.Sqrt\npublic import Mathlib.MeasureTheory.Integral.Lebesgue.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Group.MeasurableEquiv\npublic import Mathlib.MeasureTheory.Integral.Lebesgue.Markov\npublic import Mathlib.MeasureTheory.Measure.Prod\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section

open MeasureTheory Measure Filter Topology
open scoped ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

variable {G : Type} [Group G] [MeasurableSpace G]

theorem lintegral_ge_rect {μS μS' : Measure G} [SFinite μS'] (f : G → G → ℝ≥0∞)
    (hf : Measurable (fun p : G × G => f p.1 p.2)) (E E' : Set G) (c : ℝ≥0∞)
    (h : ∀ s ∈ E, ∀ s' ∈ E', c ≤ f s s') : c * μS' E' * μS E ≤ ∫⁻ s, ∫⁻ s', f s s' ∂μS' ∂μS := by
  have hsec : ∀ s, Measurable (f s) := fun s =>
    hf.comp (by fun_prop : Measurable (fun s' : G => (s, s')))
  have hin : ∀ s ∈ E, c * μS' E' ≤ ∫⁻ s', f s s' ∂μS' := by
    intro s hs
    calc c * μS' E' ≤ c * μS' {s' | c ≤ f s s'} :=
          mul_le_mul' le_rfl (measure_mono fun s' hs' => h s hs s' hs')
      _ ≤ _ := mul_meas_ge_le_lintegral₀ (hsec s).aemeasurable c
  have hg : Measurable (fun s => ∫⁻ s', f s s' ∂μS') := hf.lintegral_prod_right'
  calc c * μS' E' * μS E ≤ c * μS' E' * μS {s | c * μS' E' ≤ ∫⁻ s', f s s' ∂μS'} :=
        mul_le_mul' le_rfl (measure_mono fun s hs => hin s hs)
    _ ≤ _ := mul_meas_ge_le_lintegral₀ hg.aemeasurable _

def folInt (Ω K : Set G) : Set G := {t | t ∈ Ω ∧ ∀ k ∈ K, k * t ∈ Ω}

theorem measure_inv_preimage {μS : Measure G} [MeasurableInv G] (hinv : μS.map (fun x => x⁻¹) = μS)
    (B : Set G) : μS {s | s⁻¹ ∈ B} = μS B := by
  have e : (μS.map (MeasurableEquiv.inv G)) B = μS ((MeasurableEquiv.inv G) ⁻¹' B) :=
    MeasurableEquiv.map_apply _ _
  have hm : μS.map (MeasurableEquiv.inv G) = μS := hinv
  rw [hm] at e
  exact e.symm

theorem tendsto_ratio_ennreal {a b : ℕ → ℝ≥0∞} (hb0 : ∀ n, 0 < b n) (hbt : ∀ n, b n < ⊤)
    (hab : ∀ n, a n ≤ b n) (h : Tendsto (fun n => (a n).toReal / (b n).toReal) atTop (𝓝 1)) :
    Tendsto (fun n => a n / b n) atTop (𝓝 1) := by
  have hfin : ∀ n, a n / b n ≠ ⊤ := fun n =>
    ENNReal.div_ne_top (ne_top_of_le_ne_top (hbt n).ne (hab n)) (hb0 n).ne'
  have hfun : (fun n => a n / b n) = fun n => ENNReal.ofReal ((a n).toReal / (b n).toReal) := by
    funext n
    rw [← ENNReal.toReal_div, ENNReal.ofReal_toReal (hfin n)]
  rw [hfun, ← ENNReal.ofReal_one]
  exact ENNReal.tendsto_ofReal h

theorem liminf_lower {μS μS' : Measure G} [SFinite μS'] [MeasurableInv G]
    (hinv : μS.map (fun x => x⁻¹) = μS) (hinv' : μS'.map (fun x => x⁻¹) = μS')
    (Ω Ω' : ℕ → Set G) (hΩ0 : ∀ n, 0 < μS (Ω n)) (hΩt : ∀ n, μS (Ω n) < ⊤)
    (hΩ0' : ∀ n, 0 < μS' (Ω' n)) (hΩt' : ∀ n, μS' (Ω' n) < ⊤)
    (f : ℕ → G → G → ℝ≥0∞) (hf : ∀ n, Measurable (fun p : G × G => f n p.1 p.2)) (h : ℝ) (hh : 0 ≤ h)
    (key : ∀ ε : ℝ, 0 < ε → ∃ K K' : Set G,
      Tendsto (fun n => μS (folInt (Ω n) K) / μS (Ω n)) atTop (𝓝 1) ∧
      Tendsto (fun n => μS' (folInt (Ω' n) K') / μS' (Ω' n)) atTop (𝓝 1) ∧
      ∀ n s s', s⁻¹ ∈ folInt (Ω n) K → s'⁻¹ ∈ folInt (Ω' n) K' →
        ENNReal.ofReal ((max (Real.sqrt h - ε) 0) ^ 2) ≤ f n s s') :
    ENNReal.ofReal h ≤
      liminf (fun n => (μS (Ω n) * μS' (Ω' n))⁻¹ * ∫⁻ s, ∫⁻ s', f n s s' ∂μS' ∂μS) atTop := by
  set L := liminf (fun n => (μS (Ω n) * μS' (Ω' n))⁻¹ * ∫⁻ s, ∫⁻ s', f n s s' ∂μS' ∂μS) atTop
    with hL
  have step : ∀ ε : ℝ, 0 < ε → ENNReal.ofReal ((max (Real.sqrt h - ε) 0) ^ 2) ≤ L := by
    intro ε hε
    obtain ⟨K, K', hK, hK', hf'⟩ := key ε hε
    set c := ENNReal.ofReal ((max (Real.sqrt h - ε) 0) ^ 2) with hc
    have hlim : Tendsto (fun n => c * ((μS (folInt (Ω n) K) / μS (Ω n)) *
        (μS' (folInt (Ω' n) K') / μS' (Ω' n)))) atTop (𝓝 c) := by
      have h1 := ENNReal.Tendsto.mul hK (Or.inl one_ne_zero) hK' (Or.inl one_ne_zero)
      have h2 := ENNReal.Tendsto.const_mul h1 (a := c) (Or.inr ENNReal.ofReal_ne_top)
      rw [mul_one, mul_one] at h2
      exact h2
    rw [hL, ← hlim.liminf_eq]
    refine liminf_le_liminf (Eventually.of_forall fun n => ?_)
    have hA0 := (hΩ0 n).ne'
    have hAt := (hΩt n).ne
    have hmain := lintegral_ge_rect (μS := μS) (μS' := μS') (f n) (hf n)
      {s | s⁻¹ ∈ folInt (Ω n) K} {s' | s'⁻¹ ∈ folInt (Ω' n) K'} c
      (fun s hs s' hs' => hf' n s s' hs hs')
    rw [measure_inv_preimage hinv, measure_inv_preimage hinv'] at hmain
    rw [ENNReal.mul_inv (Or.inl hA0) (Or.inl hAt), div_eq_mul_inv, div_eq_mul_inv]
    calc c * (μS (folInt (Ω n) K) * (μS (Ω n))⁻¹ *
          (μS' (folInt (Ω' n) K') * (μS' (Ω' n))⁻¹))
        = (μS (Ω n))⁻¹ * (μS' (Ω' n))⁻¹ *
          (c * μS' (folInt (Ω' n) K') * μS (folInt (Ω n) K)) := by ring
      _ ≤ _ := mul_le_mul' le_rfl hmain
  have hcont : Continuous (fun ε : ℝ => ENNReal.ofReal ((max (Real.sqrt h - ε) 0) ^ 2)) :=
    ENNReal.continuous_ofReal.comp (((continuous_const.sub continuous_id).max continuous_const).pow 2)
  have h0 : ENNReal.ofReal ((max (Real.sqrt h - 0) 0) ^ 2) = ENNReal.ofReal h := by
    rw [sub_zero, max_eq_left (Real.sqrt_nonneg h), Real.sq_sqrt hh]
  have hg : Tendsto (fun ε : ℝ => ENNReal.ofReal ((max (Real.sqrt h - ε) 0) ^ 2)) (𝓝[>] 0)
      (𝓝 (ENNReal.ofReal h)) := by
    rw [← h0]
    exact (hcont.tendsto 0).mono_left nhdsWithin_le_nhds
  exact le_of_tendsto hg (eventually_nhdsWithin_of_forall fun ε hε => step ε hε)

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsLower =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTail =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTail", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTrunc\npublic import Mathlib.Order.CompletePartialOrder\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.MeasureTheory.Measure.HasOuterApproxClosedProd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Measure Filter Topology
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [SecondCountableTopology G]
  [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V V' : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] [FiniteDimensional ℂ V']

def K4 (σ : G → (HH →L[ℂ] HH)) (d : ℝ) (w : HH) (W : G → V) (W' : G → V') (γ : G)
    (q : (G × G) × (G × G)) : V' →L[ℂ] V :=
  kG σ d w W W' γ (φinv q.1, φinv q.2)

section Hyp

variable {μ ν μS ν' μS' : Measure G} [SFinite ν] [SFinite μS] [SFinite ν'] [SFinite μS']
  {σ : G → (HH →L[ℂ] HH)} {d : ℝ} {w : HH} {S S' : Set G} {τ : G → (V →L[ℂ] V)}
  {τ' : G → (V' →L[ℂ] V')} {W : G → V} {W' : G → V'}

theorem integrable_liftedRankOneKernel (hσ : IsUnitRep σ) (hW : IsWAbs μ σ d w S τ ν W) (hW' : IsWAbs μ σ d w S' τ' ν' W')
    (hinv : ∀ a ∈ S, a⁻¹ ∈ S) (hinv' : ∀ a ∈ S', a⁻¹ ∈ S') (h0 : μS Sᶜ = 0) (h0' : μS' S'ᶜ = 0)
    (hm : μ = (ν.prod μS).map φinv) (hm' : μ = (ν'.prod μS').map φinv) (γ : G)
    (hB : ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', bInt σ w W W' γ z z' s s' ∂μS' ∂μS ∂ν' ∂ν < ⊤) :
    Integrable (K4 σ d w W W' γ) ((ν.prod μS).prod (ν'.prod μS')) := by
  have hi := integrable_kG hσ hW hW' hinv hinv' h0 h0' hm hm' γ hB
  rw [prod_map_φinv hm hm'] at hi
  exact hi.comp_measurable (Measurable.prodMap (measurable_φinv (G := G)) (measurable_φinv (G := G)))

theorem integral_liftedRankOneKernel [μ.IsMulLeftInvariant] [SFinite μ] (hσ : IsUnitRep σ) (hW : IsWAbs μ σ d w S τ ν W)
    (hW' : IsWAbs μ σ d w S' τ' ν' W') (hinv : ∀ a ∈ S, a⁻¹ ∈ S) (hinv' : ∀ a ∈ S', a⁻¹ ∈ S')
    (h0 : μS Sᶜ = 0) (h0' : μS' S'ᶜ = 0)
    (hm : μ = (ν.prod μS).map φinv) (hm' : μ = (ν'.prod μS').map φinv) (γ : G)
    (hB : ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', bInt σ w W W' γ z z' s s' ∂μS' ∂μS ∂ν' ∂ν < ⊤) :
    ∫ q, K4 σ d w W W' γ q ∂((ν.prod μS).prod (ν'.prod μS')) = ∫ x, rk1A (W x) (W' (γ⁻¹ * x)) ∂μ := by
  have hi := integrable_kG hσ hW hW' hinv hinv' h0 h0' hm hm' γ hB
  have hF : Measurable (Prod.map (φinv : G × G → G) (φinv : G × G → G)) :=
    Measurable.prodMap (measurable_φinv (G := G)) (measurable_φinv (G := G))
  have hi' := hi
  rw [prod_map_φinv hm hm'] at hi'
  rw [← integral_kG hσ hW W' γ hi, prod_map_φinv hm hm',
    integral_map hF.aemeasurable hi'.aestronglyMeasurable]
  rfl

theorem prod_restrict_four (A A' : Set G) :
    (ν.prod (μS.restrict A)).prod (ν'.prod (μS'.restrict A')) =
      ((ν.prod μS).prod (ν'.prod μS')).restrict ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A')) := by
  have e1 : ν.prod (μS.restrict A) = (ν.prod μS).restrict (Set.univ ×ˢ A) := by
    rw [← Measure.prod_restrict, Measure.restrict_univ]
  have e2 : ν'.prod (μS'.restrict A') = (ν'.prod μS').restrict (Set.univ ×ˢ A') := by
    rw [← Measure.prod_restrict, Measure.restrict_univ]
  rw [e1, e2, Measure.prod_restrict]

end Hyp

section Approx

variable {μ ν μS ν' μS' : Measure G} [SFinite ν] [SFinite μS] [SFinite ν'] [SFinite μS']
  {σ : G → (HH →L[ℂ] HH)} {d : ℝ} {w : HH} {S S' : Set G} {τ : G → (V →L[ℂ] V)}
  {τ' : G → (V' →L[ℂ] V')} {W : G → V} {W' : G → V'}

theorem approx_OO [μ.IsMulLeftInvariant] [SFinite μ] (hσ : IsUnitRep σ) (hW : IsWAbs μ σ d w S τ ν W)
    (hW' : IsWAbs μ σ d w S' τ' ν' W') (hinv : ∀ a ∈ S, a⁻¹ ∈ S) (hinv' : ∀ a ∈ S', a⁻¹ ∈ S')
    (h0 : μS Sᶜ = 0) (h0' : μS' S'ᶜ = 0)
    (hm : μ = (ν.prod μS).map φinv) (hm' : μ = (ν'.prod μS').map φinv) (γ : G)
    (hB : ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', bInt σ w W W' γ z z' s s' ∂μS' ∂μS ∂ν' ∂ν < ⊤)
    (C C' : ℕ → Set G) (hCm : ∀ n, MeasurableSet (C n)) (hC'm : ∀ n, MeasurableSet (C' n))
    (hCmono : Monotone C) (hC'mono : Monotone C') (hCS : S ⊆ ⋃ n, C n) (hC'S : S' ⊆ ⋃ n, C' n)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ n₀, ∀ A A' : Set G, MeasurableSet A → A ⊆ S → μS A < ⊤ → MeasurableSet A' → A' ⊆ S' → μS' A' < ⊤ →
      C n₀ ⊆ A → C' n₀ ⊆ A' →
      Real.sqrt (hsA (∫ x, rk1A (W x) (W' (γ⁻¹ * x)) ∂μ - Xop μS ν μS' ν' σ d w W W' A A' γ)) ≤ ε := by
  set P := (ν.prod μS).prod (ν'.prod μS') with hP
  have hK4 := integrable_liftedRankOneKernel hσ hW hW' hinv hinv' h0 h0' hm hm' γ hB
  obtain ⟨c, hc0, hc⟩ : ∃ c : ℝ, 0 ≤ c ∧ ∀ X : V' →L[ℂ] V, Real.sqrt (hsA X) ≤ c * ‖X‖ :=
    ⟨‖hsC (V := V) (V' := V')‖, norm_nonneg _, fun X => by
      rw [← norm_hsC]
      exact ContinuousLinearMap.le_opNorm _ _⟩
  let Rn : ℕ → Set ((G × G) × (G × G)) := fun n => (Set.univ ×ˢ C n) ×ˢ (Set.univ ×ˢ C' n)
  have hRm : ∀ n, MeasurableSet (Rn n) := fun n =>
    (MeasurableSet.univ.prod (hCm n)).prod (MeasurableSet.univ.prod (hC'm n))
  have hanti : Antitone fun n => (Rn n)ᶜ := fun n m hnm =>
    Set.compl_subset_compl.mpr
      (Set.prod_mono (Set.prod_mono subset_rfl (hCmono hnm)) (Set.prod_mono subset_rfl (hC'mono hnm)))
  have hnull : P (⋂ n, (Rn n)ᶜ) = 0 := by
    have hae := ae_mem_four (ν := ν) (μS := μS) (ν' := ν') (μS' := μS') h0 h0'
    rw [ae_iff] at hae
    refine measure_mono_null (fun p hp => ?_) hae
    simp only [Set.mem_iInter, Set.mem_compl_iff] at hp
    rintro ⟨h1, h2⟩
    obtain ⟨n1, hn1⟩ := Set.mem_iUnion.mp (hCS h1)
    obtain ⟨n2, hn2⟩ := Set.mem_iUnion.mp (hC'S h2)
    exact hp (max n1 n2)
      ⟨⟨trivial, hCmono (le_max_left _ _) hn1⟩, ⟨trivial, hC'mono (le_max_right _ _) hn2⟩⟩
  have hT := tendsto_setIntegral_of_antitone (μ := P) (f := fun q => ‖K4 σ d w W W' γ q‖)
    (fun n => (hRm n).compl) hanti ⟨0, hK4.norm.integrableOn⟩
  rw [setIntegral_measure_zero _ hnull] at hT
  have hT' := hT.const_mul c
  rw [mul_zero] at hT'
  obtain ⟨n₀, hn₀⟩ := (hT'.eventually (gt_mem_nhds hε)).exists
  refine ⟨n₀, fun A A' hA hAS hAf hA' hAS' hAf' hCA hC'A => ?_⟩
  have hR : MeasurableSet (((Set.univ : Set G) ×ˢ A) ×ˢ ((Set.univ : Set G) ×ˢ A')) :=
    (MeasurableSet.univ.prod hA).prod (MeasurableSet.univ.prod hA')
  have hX : Xop μS ν μS' ν' σ d w W W' A A' γ =
      ∫ q in (Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'), K4 σ d w W W' γ q ∂P := by
    rw [Xop_eq_integral hσ hW hW' hinv hinv' hA hAS hAf hA' hAS' hAf' γ
      (by rw [prod_restrict_four]; exact hK4.restrict), prod_restrict_four]
    rfl
  have hdiff : ∫ x, rk1A (W x) (W' (γ⁻¹ * x)) ∂μ - Xop μS ν μS' ν' σ d w W W' A A' γ =
      ∫ q in ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ, K4 σ d w W W' γ q ∂P := by
    rw [← integral_liftedRankOneKernel hσ hW hW' hinv hinv' h0 h0' hm hm' γ hB, hX, setIntegral_compl hR hK4]
  have hsub : ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ ⊆ (Rn n₀)ᶜ :=
    Set.compl_subset_compl.mpr
      (Set.prod_mono (Set.prod_mono subset_rfl hCA) (Set.prod_mono subset_rfl hC'A))
  rw [hdiff]
  calc Real.sqrt (hsA (∫ q in ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ, K4 σ d w W W' γ q ∂P))
      ≤ ∫ q in ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ, Real.sqrt (hsA (K4 σ d w W W' γ q)) ∂P :=
        sqrt_hsA_integral_le _ hK4.restrict
    _ ≤ ∫ q in ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ, c * ‖K4 σ d w W W' γ q‖ ∂P :=
        integral_mono_of_nonneg (Filter.Eventually.of_forall fun q => Real.sqrt_nonneg _)
          (hK4.norm.const_mul c).restrict (Filter.Eventually.of_forall fun q => hc _)
    _ = c * ∫ q in ((Set.univ ×ˢ A) ×ˢ (Set.univ ×ˢ A'))ᶜ, ‖K4 σ d w W W' γ q‖ ∂P :=
        integral_const_mul c _
    _ ≤ c * ∫ q in (Rn n₀)ᶜ, ‖K4 σ d w W W' γ q‖ ∂P :=
        mul_le_mul_of_nonneg_left (setIntegral_mono_set hK4.norm.integrableOn
          (Filter.Eventually.of_forall fun q => norm_nonneg _) (Filter.Eventually.of_forall hsub)) hc0
    _ ≤ ε := hn₀.le

end Approx

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTail =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsPoint =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsPoint", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTrunc\npublic import Mathlib.Order.CompletePartialOrder\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsBasic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEquiv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsLower\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsTail\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.MeasureTheory.Measure.HasOuterApproxClosedProd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Measure Filter Topology
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G] [T2Space G]
  [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]
variable {HH : Type} [NormedAddCommGroup HH] [InnerProductSpace ℂ HH] [CompleteSpace HH]
variable {V V' : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] [FiniteDimensional ℂ V']

def cpiece (S : Set G) (n : ℕ) : Set G := CompactExhaustion.choice G n ∩ S

theorem cpiece_compact {S : Set G} (hS : IsClosed S) (n : ℕ) : IsCompact (cpiece S n) :=
  ((CompactExhaustion.choice G).isCompact n).inter_right hS

theorem cpiece_mono (S : Set G) : Monotone (cpiece S) := by
  intro m n hmn
  exact Set.inter_subset_inter_left _ ((CompactExhaustion.choice G).subset hmn)

theorem cpiece_cover (S : Set G) : S ⊆ ⋃ n, cpiece S n := by
  intro x hx
  obtain ⟨n, hn⟩ := (CompactExhaustion.choice G).exists_mem x
  exact Set.mem_iUnion.2 ⟨n, hn, hx⟩

theorem translate_props {μS : Measure G} {S : Set G} (hS : IsHaarSub S μS) {Ω : Set G} (hΩm : MeasurableSet Ω)
    (hΩS : Ω ⊆ S) (hΩt : μS Ω < ⊤) {s : G} (hs : s ∈ S) :
    MeasurableSet ((fun v => v * s⁻¹) ⁻¹' Ω) ∧ (fun v => v * s⁻¹) ⁻¹' Ω ⊆ S ∧
      μS ((fun v => v * s⁻¹) ⁻¹' Ω) < ⊤ := by
  obtain ⟨-, -, hmul, hinv, -, -, -, -, -, hr, -⟩ := hS
  refine ⟨hΩm.preimage (measurable_mul_const s⁻¹), fun v hv => ?_, ?_⟩
  · have h1 : v * s⁻¹ * s ∈ S := hmul _ (@hΩS (v * s⁻¹) hv) _ hs
    simpa using h1
  · rw [← Measure.map_apply (measurable_mul_const s⁻¹) hΩm, hr _ (hinv _ hs)]
    exact hΩt

private theorem hilbertSchmidtSq_nonneg_aux_lemma (A : V' →L[ℂ] V) : 0 ≤ Formalism.L2.SG.Pf.EnergyAbs.hsA A := by
  unfold Formalism.L2.SG.Pf.EnergyAbs.hsA
  exact Finset.sum_nonneg fun i _ => sq_nonneg _

private theorem sq_max_le_hilbertSchmidtSq_lemma_2 (A B : V' →L[ℂ] V) {ε : ℝ}
    (h : Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA (A - B)) ≤ ε) :
    max (Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA A) - ε) 0 ^ 2 ≤ Formalism.L2.SG.Pf.EnergyAbs.hsA B := by
  have hB := hilbertSchmidtSq_nonneg_aux_lemma B
  have htri := sqrt_hsA_le_add_sub A B
  have hmax : max (Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA A) - ε) 0 ≤ Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA B) :=
    max_le (by linarith) (Real.sqrt_nonneg _)
  calc max (Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA A) - ε) 0 ^ 2 ≤ Real.sqrt (Formalism.L2.SG.Pf.EnergyAbs.hsA B) ^ 2 :=
        pow_le_pow_left₀ (le_max_right _ _) hmax 2
    _ = Formalism.L2.SG.Pf.EnergyAbs.hsA B := Real.sq_sqrt hB

theorem point_lower {μ : Measure G} [μ.IsHaarMeasure] {σ : G → (HH →L[ℂ] HH)} (hσ : IsUnitRep σ) {d : ℝ}
    {w : HH} {S S' : Set G} {μS μS' ν ν' : Measure G} {τ : G → (V →L[ℂ] V)} {τ' : G → (V' →L[ℂ] V')}
    {W : G → V} {W' : G → V'} [SFinite ν] [SFinite ν'] (hS : IsHaarSub S μS) (hS' : IsHaarSub S' μS')
    (hq : IsQuot μ μS ν) (hq' : IsQuot μ μS' ν')
    (hW : IsWAbs μ σ d w S τ ν W) (hW' : IsWAbs μ σ d w S' τ' ν' W')
    (Ω Ω' : ℕ → Set G) (hΩ : ∀ n, MeasurableSet (Ω n) ∧ Ω n ⊆ S ∧ 0 < μS (Ω n) ∧ μS (Ω n) < ⊤)
    (hΩ' : ∀ n, MeasurableSet (Ω' n) ∧ Ω' n ⊆ S' ∧ 0 < μS' (Ω' n) ∧ μS' (Ω' n) < ⊤)
    (hF : ∀ K : Set G, IsCompact K → K ⊆ S → Tendsto (fun n =>
      (μS {t | t ∈ Ω n ∧ ∀ k ∈ K, k * t ∈ Ω n}).toReal / (μS (Ω n)).toReal) atTop (𝓝 1))
    (hF' : ∀ K : Set G, IsCompact K → K ⊆ S' → Tendsto (fun n =>
      (μS' {t | t ∈ Ω' n ∧ ∀ k ∈ K, k * t ∈ Ω' n}).toReal / (μS' (Ω' n)).toReal) atTop (𝓝 1))
    (hXc : ∀ n, Continuous (fun g => hsA (Xop μS ν μS' ν' σ d w W W' (Ω n) (Ω' n) g)))
    (γ : G) (hB : ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', bInt σ w W W' γ z z' s s' ∂μS' ∂μS ∂ν' ∂ν < ⊤) :
    ENNReal.ofReal (hsA (∫ x, rk1A (W x) (W' (γ⁻¹ * x)) ∂μ)) ≤
      liminf (fun n => (μS (Ω n) * μS' (Ω' n))⁻¹ *
        ∫⁻ s, ∫⁻ s', ENNReal.ofReal (hsA (Xop μS ν μS' ν' σ d w W W' (Ω n) (Ω' n) (s * γ * s'⁻¹)))
          ∂μS' ∂μS) atTop := by
  have hS₀ := hS
  have hS'₀ := hS'
  obtain ⟨hSc, -, -, hinvS, hσS, -, h0S, -, -, -, hinvmS⟩ := hS₀
  obtain ⟨hSc', -, -, hinvS', hσS', -, h0S', -, -, -, hinvmS'⟩ := hS'₀
  have : SigmaFinite μS := hσS
  have : SigmaFinite μS' := hσS'
  have hm : μ = (ν.prod μS).map φinv := (quot_map_inv hq) hinvmS
  have hm' : μ = (ν'.prod μS').map φinv := (quot_map_inv hq') hinvmS'
  refine liminf_lower hinvmS hinvmS' Ω Ω'
    (fun n => (hΩ n).2.2.1) (fun n => (hΩ n).2.2.2) (fun n => (hΩ' n).2.2.1) (fun n => (hΩ' n).2.2.2)
    (fun n s s' => ENNReal.ofReal (Formalism.L2.SG.Pf.EnergyAbs.hsA
      (Xop μS ν μS' ν' σ d w W W' (Ω n) (Ω' n) (s * γ * s'⁻¹))))
    (fun n => ?_) (Formalism.L2.SG.Pf.EnergyAbs.hsA (∫ x, Formalism.L2.SG.Pf.EnergyAbs.rk1A (W x) (W' (γ⁻¹ * x)) ∂μ))
    (hilbertSchmidtSq_nonneg_aux_lemma _) (fun ε hε => ?_)
  · exact ENNReal.measurable_ofReal.comp ((hXc n).measurable.comp
      ((continuous_fst.mul continuous_const).mul continuous_snd.inv).measurable)
  · obtain ⟨n₀, hn₀⟩ := approx_OO hσ hW hW' hinvS hinvS' h0S h0S' hm hm' γ hB
      (cpiece S) (cpiece S')
      (fun n => (cpiece_compact hSc n).isClosed.measurableSet)
      (fun n => (cpiece_compact hSc' n).isClosed.measurableSet)
      (cpiece_mono S) (cpiece_mono S')
      (cpiece_cover S) (cpiece_cover S') ε hε
    refine ⟨cpiece S n₀, cpiece S' n₀, ?_, ?_, ?_⟩
    · refine tendsto_ratio_ennreal (fun n => (hΩ n).2.2.1) (fun n => (hΩ n).2.2.2)
        (fun n => measure_mono fun t ht => (show t ∈ Ω n ∧ _ from ht).1) ?_
      exact hF _ (cpiece_compact hSc n₀) Set.inter_subset_right
    · refine tendsto_ratio_ennreal (fun n => (hΩ' n).2.2.1) (fun n => (hΩ' n).2.2.2)
        (fun n => measure_mono fun t ht => (show t ∈ Ω' n ∧ _ from ht).1) ?_
      exact hF' _ (cpiece_compact hSc' n₀) Set.inter_subset_right
    · intro n s s' hs hs'
      have hs2 : s⁻¹ ∈ Ω n ∧ ∀ k ∈ cpiece S n₀, k * s⁻¹ ∈ Ω n := hs
      have hs2' : s'⁻¹ ∈ Ω' n ∧ ∀ k ∈ cpiece S' n₀, k * s'⁻¹ ∈ Ω' n := hs'
      have hsS : s ∈ S := by simpa using hinvS _ ((hΩ n).2.1 hs2.1)
      have hsS' : s' ∈ S' := by simpa using hinvS' _ ((hΩ' n).2.1 hs2'.1)
      obtain ⟨hAm, hAS, hAt⟩ := translate_props hS (hΩ n).1 (hΩ n).2.1 (hΩ n).2.2.2 hsS
      obtain ⟨hAm', hAS', hAt'⟩ :=
        translate_props hS' (hΩ' n).1 (hΩ' n).2.1 (hΩ' n).2.2.2 hsS'
      have happrox := hn₀ _ _ hAm hAS hAt hAm' hAS' hAt' (fun k hk => hs2.2 k hk)
        (fun k hk => hs2'.2 k hk)
      rw [hsA_Xop_translate hσ hS hS' hW hW' (hΩ n).1 (hΩ n).2.1
        (hΩ n).2.2.2 (hΩ' n).1 (hΩ' n).2.1 (hΩ' n).2.2.2 hsS hsS' γ]
      exact ENNReal.ofReal_le_ofReal (sq_max_le_hilbertSchmidtSq_lemma_2 _ _ happrox)

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsPoint =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsMain =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsMain", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAbs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsEnergy\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsFolner\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsDefs\nimport Mathlib.MeasureTheory.Measure.HasOuterApproxClosedProd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Measure Filter Topology
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.S.Pv.EnergyAbs

open Formalism.L2.SG.Pf.EnergyAbs

theorem energyAbs_holds : EnergyAbs := by
  intro G _ _ _ _ _ _ _ _ μ _ _ HH _ _ _ σ d w V V' _ _ _ _ _ _ S S' μS μS' ν ν' τ τ' W W' C _ m h
    hσ hSch hw hS hS' hF hF' hν hν' hq hq' hW hW' hD hhm hOOi hB hC hC'
  haveI := hν
  haveI := hν'
  haveI : SigmaFinite μS := hS.2.2.2.2.1
  haveI : SigmaFinite μS' := hS'.2.2.2.2.1
  obtain ⟨Ω, hΩ, hΩF⟩ := folner_seq hS hF
  obtain ⟨Ω', hΩ', hΩF'⟩ := folner_seq hS' hF'
  have hlim := folner_limit hσ hSch hw hS hν hq hW hC Ω hΩ hΩF
  have hlim' := folner_limit hσ hSch hw hS' hν' hq' hW' hC' Ω' hΩ' hΩF'
  have hd : 0 < d := hSch.1
  set φn : ℕ → G → ℝ≥0∞ := fun n g => ENNReal.ofReal (hsA (Xop μS ν μS' ν' σ d w W W' (Ω n) (Ω' n) g))
    with hφn
  have hφm : ∀ n, Measurable (φn n) := fun n =>
    ENNReal.measurable_ofReal.comp (continuous_hsA_Xop hσ μS ν μS' ν' d w W W' (Ω n) (Ω' n)).measurable
  set Fn : ℕ → C → ℝ≥0∞ := fun n c => (μS (Ω n) * μS' (Ω' n))⁻¹ *
    ∫⁻ s, ∫⁻ s', φn n (s * h c * s'⁻¹) ∂μS' ∂μS with hFn
  have hpt : ∀ c, ENNReal.ofReal (hsA (∫ x, rk1A (W x) (W' ((h c)⁻¹ * x)) ∂μ)) ≤ liminf (fun n => Fn n c) atTop :=
    fun c => point_lower hσ hS hS' hq hq' hW hW' Ω Ω' hΩ hΩ' hΩF hΩF'
      (fun n => continuous_hsA_Xop hσ μS ν μS' ν' d w W W' (Ω n) (Ω' n)) (h c) (hB c)
  have hinner : ∀ n, Measurable (fun c => ∫⁻ s, ∫⁻ s', φn n (s * h c * s'⁻¹) ∂μS' ∂μS) := by
    intro n
    have h3 : Measurable (fun r : (C × G) × G => φn n (r.1.2 * h r.1.1 * r.2⁻¹)) :=
      (hφm n).comp (((measurable_snd.comp measurable_fst).mul (hhm.comp (measurable_fst.comp measurable_fst))).mul
        measurable_snd.inv)
    exact h3.lintegral_prod_right'.lintegral_prod_right'
  have hmeasF : ∀ n, Measurable (Fn n) := fun n => (hinner n).const_mul _
  have hint : ∀ n, ∫⁻ c, Fn n c ∂m = (μS (Ω n) * μS' (Ω' n))⁻¹ *
      ENNReal.ofReal (d * (∑ i, ‖yv μS ν σ w W (Ω n) (stdOrthonormalBasis ℂ V i)‖ ^ 2) *
        (∑ j, ‖yv μS' ν' σ w W' (Ω' n) (stdOrthonormalBasis ℂ V' j)‖ ^ 2)) := by
    intro n
    rw [lintegral_const_mul _ (hinner n), ← hD (φn n) (hφm n), lintegral_hsA_Xop hSch]
  have htend := tendsto_energy hd (fun n => ⟨(hΩ n).2.2.1, (hΩ n).2.2.2⟩)
    (fun n => ⟨(hΩ' n).2.2.1, (hΩ' n).2.2.2⟩) hlim hlim'
  calc ∫⁻ c, ENNReal.ofReal (hsA (∫ x, rk1A (W x) (W' ((h c)⁻¹ * x)) ∂μ)) ∂m
      ≤ ∫⁻ c, liminf (fun n => Fn n c) atTop ∂m := lintegral_mono hpt
    _ ≤ liminf (fun n => ∫⁻ c, Fn n c ∂m) atTop := lintegral_liminf_le hmeasF
    _ = ENNReal.ofReal (1 / d) := by
        simp only [hint]
        exact htend.liminf_eq

end Formalism.L2.S.Pv.EnergyAbs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsMain =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWLoc =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWLoc", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SynthesizedVectorZPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped ComplexConjugate

namespace Formalism.L2.S.Pv.SecW

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.RealObj.InfCut.NilradicalHermitianFrames.NH

variable {n r k : ℕ}

def sfv (sc : ℝ) (b : Fin r) : ℂ := ((sc : ℂ) ^ (r - b.1))⁻¹

def lamv (sc : ℝ) (c : Fin (r + 1) → ℂ) (b : Fin r) : ℂ := c (Fin.castSucc b) / (sfv sc b * sfv sc b)

def alv (T : ℝ) (c : Fin (r + 1) → ℂ) : ℂ := -c (Fin.last r) / (T : ℂ)

def bev (T T' : ℝ) (c : Fin (r + 1) → ℂ) : ℂ := ((Real.sqrt (‖c (Fin.last r)‖ ^ 2 / T - T') : ℝ) : ℂ)

def svv (T T' : ℝ) : ℂ := (((Real.sqrt (T * T'))⁻¹ : ℝ) : ℂ)

def e2 (sc : ℝ) (c : Fin (r + 1) → ℂ) (f : Fin r → Fin n → ℂ) : Fin r → Fin n → ℂ :=
  fun b => lamv sc c b • f b

def p2 (sc : ℝ) (c : Fin (r + 1) → ℂ) (e : Fin r → Fin n → ℂ) : Fin r → Fin n → ℂ :=
  fun b => (conj (lamv sc c b))⁻¹ • e b

def z2 (T T' : ℝ) (c : Fin (r + 1) → ℂ) (z : Fin n → ℂ) (w : Fin k → Fin n → ℂ) (i0 : Fin k) : Fin n → ℂ :=
  alv T c • z + bev T T' c • w i0

def w2 (T T' : ℝ) (c : Fin (r + 1) → ℂ) (z : Fin n → ℂ) (w : Fin k → Fin n → ℂ) (i0 : Fin k) :
    Fin k → Fin n → ℂ :=
  fun j => if j = i0 then svv T T' • (bev T T' c • z + (conj (alv T c) * (T : ℂ)) • w i0) else w j

section Facts

variable {sc T T' : ℝ} {c : Fin (r + 1) → ℂ}

theorem conj_sfv (sc : ℝ) (b : Fin r) : conj (sfv sc b) = sfv sc b := by
  simp only [sfv, map_inv₀, map_pow, Complex.conj_ofReal]

theorem sfv_ne (hsc : 0 < sc) (b : Fin r) : sfv sc b ≠ 0 :=
  inv_ne_zero (pow_ne_zero _ (by exact_mod_cast hsc.ne'))

theorem lamv_ne (hsc : 0 < sc) (hc : ∀ l, c l ≠ 0) (b : Fin r) : lamv sc c b ≠ 0 :=
  div_ne_zero (hc _) (mul_ne_zero (sfv_ne hsc b) (sfv_ne hsc b))

theorem conj_bev (T T' : ℝ) (c : Fin (r + 1) → ℂ) : conj (bev T T' c) = bev T T' c := Complex.conj_ofReal _

theorem bev_sq (hT : 0 < T) (hg : 0 < ‖c (Fin.last r)‖ ^ 2 - T * T') :
    conj (bev T T' c) * bev T T' c = ((‖c (Fin.last r)‖ ^ 2 / T - T' : ℝ) : ℂ) := by
  have hq0 : 0 ≤ ‖c (Fin.last r)‖ ^ 2 / T - T' := by
    rw [div_sub' hT.ne']
    exact div_nonneg (by nlinarith) hT.le
  rw [conj_bev, bev, ← Complex.ofReal_mul, Real.mul_self_sqrt hq0]

theorem alv_sq (T : ℝ) (c : Fin (r + 1) → ℂ) :
    conj (alv T c) * alv T c = ((‖c (Fin.last r)‖ ^ 2 / T ^ 2 : ℝ) : ℂ) := by
  rw [mul_comm, alv, map_div₀, map_neg, Complex.conj_ofReal, neg_div, neg_div, neg_mul_neg, div_mul_div_comm,
    Complex.mul_conj, Complex.normSq_eq_norm_sq]
  push_cast
  ring

theorem svv_sq (hT : 0 < T) (hT' : 0 < T') : conj (svv T T') * svv T T' = ((1 / (T * T') : ℝ) : ℂ) := by
  rw [svv, Complex.conj_ofReal, ← Complex.ofReal_mul, ← mul_inv, Real.mul_self_sqrt (by positivity), one_div]

end Facts

section Frame

variable {ε : Fin n → Bool} {e f : Fin r → Fin n → ℂ} {z : Fin n → ℂ} {w : Fin k → Fin n → ℂ}
  {sc T T' : ℝ} {c : Fin (r + 1) → ℂ}

theorem frm2 (F0 : Frm ε e f z w T) (hT : 0 < T) (hT' : 0 < T') (hsc : 0 < sc) (hc : ∀ l, c l ≠ 0)
    (hg : 0 < ‖c (Fin.last r)‖ ^ 2 - T * T') (i0 : Fin k) :
    Frm ε (e2 sc c f) (p2 sc c e) (z2 T T' c z w i0) (w2 T T' c z w i0) T' := by
  have hfe : ∀ a b, hJ ε (f a) (e b) = if a = b then 1 else 0 := by
    intro a b
    rw [hJ_swapδ F0.ep b a]
    by_cases h : a = b
    · subst h; simp
    · simp [h, Ne.symm h]
  have hwz : ∀ j, hJ ε (w j) z = 0 := fun j => hJ_swap0 (F0.zw j)
  have hTc : (T : ℂ) ≠ 0 := by exact_mod_cast hT.ne'
  have hT'c : (T' : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
  have hlam := lamv_ne hsc hc
  have hcb := conj_bev T T' c
  have hβ := bev_sq (T' := T') hT hg
  rw [hcb] at hβ
  have hα := alv_sq T c
  have hs := svv_sq hT hT'
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, hT'.ne'⟩
  · intro a b
    simp only [e2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, F0.pp, mul_zero]
  · intro a b
    simp only [e2, p2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, hfe]
    split_ifs with h
    · subst h
      rw [mul_one, inv_mul_cancel₀ ((map_ne_zero _).2 (hlam a))]
    · simp
  · intro a b
    simp only [p2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, F0.ee, mul_zero]
  · intro a
    simp only [e2, z2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_right, F0.pz, F0.pw, mul_zero,
      add_zero]
  · intro a
    simp only [p2, z2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_right, F0.ez, F0.ew, mul_zero,
      add_zero]
  · simp only [z2, UnitaryIsometries.hJ_add_left, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, F0.zz,
      F0.zw, hwz, F0.ww, if_true, mul_zero, add_zero, zero_add, mul_one, hcb]
    linear_combination (norm := skip) (-(T : ℂ)) * hα + hβ
    push_cast
    field_simp
    ring
  · intro a j
    by_cases hj : j = i0
    · simp only [e2, w2, if_pos hj, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, UnitaryIsometries.hJ_add_right, F0.pz, F0.pw,
        mul_zero, add_zero]
    · simp only [e2, w2, if_neg hj, UnitaryIsometries.hJ_smul_left, F0.pw, mul_zero]
  · intro a j
    by_cases hj : j = i0
    · simp only [p2, w2, if_pos hj, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, UnitaryIsometries.hJ_add_right, F0.ez, F0.ew,
        mul_zero, add_zero]
    · simp only [p2, w2, if_neg hj, UnitaryIsometries.hJ_smul_left, F0.ew, mul_zero]
  · intro j
    by_cases hj : j = i0
    · simp only [z2, w2, if_pos hj, UnitaryIsometries.hJ_smul_right, UnitaryIsometries.hJ_add_left, UnitaryIsometries.hJ_add_right,
        UnitaryIsometries.hJ_smul_left, F0.zz, F0.zw, hwz, F0.ww, if_true, mul_zero, add_zero, zero_add, mul_one, hcb]
      ring
    · have hne : i0 ≠ j := fun h => hj h.symm
      simp only [z2, w2, if_neg hj, UnitaryIsometries.hJ_add_left, UnitaryIsometries.hJ_smul_left, F0.zw, F0.ww, if_neg hne, mul_zero,
        add_zero]
  · intro i j
    by_cases hi : i = i0 <;> by_cases hj : j = i0
    · subst hi; subst hj
      simp only [w2, if_true, UnitaryIsometries.hJ_smul_right, UnitaryIsometries.hJ_add_left, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_left,
        F0.zz, F0.zw, hwz, F0.ww, mul_zero, add_zero, zero_add, mul_one, hcb, map_mul, Complex.conj_conj,
        Complex.conj_ofReal]
      linear_combination (norm := skip) ((T : ℂ) ^ 2 * (conj (alv T c) * alv T c) - (T : ℂ) * (bev T T' c * bev T T' c)) * hs +
        (((1 / (T * T') : ℝ) : ℂ) * (T : ℂ) ^ 2) * hα - (((1 / (T * T') : ℝ) : ℂ) * (T : ℂ)) * hβ
      push_cast
      field_simp
      ring
    · subst hi
      have hne : i ≠ j := fun h => hj h.symm
      simp only [w2, if_true, if_neg hj, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_add_left, F0.zw, F0.ww, if_neg hne,
        mul_zero, add_zero]
    · subst hj
      have hne : i ≠ j := hi
      simp only [w2, if_true, if_neg hi, UnitaryIsometries.hJ_smul_right, UnitaryIsometries.hJ_add_right, hwz, F0.ww, mul_zero, add_zero]
    · simp only [w2, if_neg hi, if_neg hj]
      exact F0.ww i j

end Frame

end Formalism.L2.S.Pv.SecW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWLoc =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWFrame =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWFrame", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SynthesizedVectorZPairing\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.FrMIsIsom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped ComplexConjugate

namespace Formalism.L2.S.Pv.SecW

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.RealObj.InfCut.NilradicalHermitianFrames.NH

variable {n r k : ℕ} (ε : Fin n → Bool)

def fr2L (e p : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (w : Fin k → Fin n → ℂ)
    (e' p' : Fin r → Fin n → ℂ) (z' : Fin n → ℂ) (w' : Fin k → Fin n → ℂ) (T : ℝ) :
    (Fin n → ℂ) →ₗ[ℂ] (Fin n → ℂ) where
  toFun v := syn e' p' z' w' T (fun a => hJ ε (p a) v) (fun a => hJ ε (e a) v) (hJ ε z v) (fun j => hJ ε (w j) v)
  map_add' v v' := by
    simp only [syn, UnitaryIsometries.hJ_add_right, add_smul, Finset.sum_add_distrib, neg_add, add_div]
    abel
  map_smul' c v := by
    simp only [syn, UnitaryIsometries.hJ_smul_right, RingHom.id_apply, smul_add, Finset.smul_sum, smul_smul]
    rw [show -(c * hJ ε z v) / (T : ℂ) = c * (-hJ ε z v / T) by ring]

def fr2M (e p : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (w : Fin k → Fin n → ℂ)
    (e' p' : Fin r → Fin n → ℂ) (z' : Fin n → ℂ) (w' : Fin k → Fin n → ℂ) (T : ℝ) : Matrix (Fin n) (Fin n) ℂ :=
  LinearMap.toMatrix' (fr2L ε e p z w e' p' z' w' T)

variable {ε} {e p : Fin r → Fin n → ℂ} {z : Fin n → ℂ} {w : Fin k → Fin n → ℂ}
  {e' p' : Fin r → Fin n → ℂ} {z' : Fin n → ℂ} {w' : Fin k → Fin n → ℂ} {T : ℝ}

theorem frameChangeMatrix_mulVec (v : Fin n → ℂ) :
    fr2M ε e p z w e' p' z' w' T *ᵥ v =
      syn e' p' z' w' T (fun a => hJ ε (p a) v) (fun a => hJ ε (e a) v) (hJ ε z v) (fun j => hJ ε (w j) v) := by
  unfold fr2M
  rw [LinearMap.toMatrix'_mulVec]
  rfl

theorem frameChangeMatrix_entry (i j : Fin n) :
    fr2M ε e p z w e' p' z' w' T i j =
      syn e' p' z' w' T (fun a => hJ ε (p a) (Pi.single j 1)) (fun a => hJ ε (e a) (Pi.single j 1))
        (hJ ε z (Pi.single j 1)) (fun l => hJ ε (w l) (Pi.single j 1)) i := by
  have h : fr2M ε e p z w e' p' z' w' T *ᵥ Pi.single j 1 = _ := frameChangeMatrix_mulVec _
  rw [Matrix.mulVec_single_one] at h
  exact congrFun h i

theorem frameChangeMatrix_isometry (F : Frm ε e p z w T) (F' : Frm ε e' p' z' w' T) (hdim : n = 2 * r + 1 + k) :
    UnitaryIsometries.IsIsom ε (fr2M ε e p z w e' p' z' w' T) := by
  intro x y
  rw [frameChangeMatrix_mulVec, frameChangeMatrix_mulVec, hJ_syn_syn F']
  conv_rhs => rw [recon F hdim x, recon F hdim y, hJ_syn_syn F]

theorem frameChangeMatrix_isotropic (F : Frm ε e p z w T) (b : Fin r) : fr2M ε e p z w e' p' z' w' T *ᵥ e b = e' b := by
  rw [frameChangeMatrix_mulVec]
  have h1 : (fun a => hJ ε (p a) (e b)) = fun a => if a = b then (1 : ℂ) else 0 := by
    funext a
    rw [UnitaryIsometries.hJ_conj, F.ep b a]
    by_cases hab : a = b
    · subst hab
      simp
    · simp [hab, Ne.symm hab]
  have h2 : (fun a => hJ ε (e a) (e b)) = fun _ => (0 : ℂ) := by
    funext a
    exact F.ee a b
  have h3 : hJ ε z (e b) = 0 := by rw [UnitaryIsometries.hJ_conj, F.ez b, map_zero]
  have h4 : (fun j => hJ ε (w j) (e b)) = fun _ => (0 : ℂ) := by
    funext j
    rw [UnitaryIsometries.hJ_conj, F.ew b j, map_zero]
  rw [h1, h2, h3, h4]
  simp [syn]

theorem fr2M_mulVec_z (F : Frm ε e p z w T) : fr2M ε e p z w e' p' z' w' T *ᵥ z = z' := by
  rw [frameChangeMatrix_mulVec]
  have h1 : (fun a => hJ ε (p a) z) = fun _ => (0 : ℂ) := by
    funext a
    exact F.pz a
  have h2 : (fun a => hJ ε (e a) z) = fun _ => (0 : ℂ) := by
    funext a
    exact F.ez a
  have h4 : (fun j => hJ ε (w j) z) = fun _ => (0 : ℂ) := by
    funext j
    rw [UnitaryIsometries.hJ_conj, F.zw j, map_zero]
  rw [h1, h2, F.zz, h4]
  have hT : (T : ℂ) ≠ 0 := by exact_mod_cast F.T_ne
  simp [syn, hT]

end Formalism.L2.S.Pv.SecW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWFrame =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWSec =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWSec", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWLoc\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.RealObj\npublic import Formalism.DoubleCosetMeasures.StatementZ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWFrame\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped ComplexConjugate

namespace Formalism.L2.S.Pv.SecW

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.RealObj.InfCut.NilradicalHermitianFrames.NH

variable {n r k : ℕ} {ε : Fin n → Bool} {e f : Fin r → Fin n → ℂ} {z z' : Fin n → ℂ}
  {w w' : Fin k → Fin n → ℂ} {sc T T' : ℝ}

def Mv (ε : Fin n → Bool) (e f : Fin r → Fin n → ℂ) (z z' : Fin n → ℂ) (w w' : Fin k → Fin n → ℂ)
    (sc T T' : ℝ) (i0 : Fin k) (c : Fin (r + 1) → ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  fr2M ε e f z' w' (e2 sc c f) (p2 sc c e) (z2 T T' c z w i0) (w2 T T' c z w i0) T'

theorem famSc_castSucc (sc : ℝ) (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (b : Fin r) :
    famSc sc e z (Fin.castSucc b) = sfv sc b • e b := by
  simp only [famSc, fam, Fin.snoc_castSucc, Fin.coe_castSucc, sfv]

theorem zhat_Mv (F0 : Frm ε e f z w T) (F1 : Frm ε e f z' w' T') (hsc : 0 < sc) {c : Fin (r + 1) → ℂ} (i0 : Fin k) :
    Zhat ε (famSc sc e z) (famSc sc e z') (Mv ε e f z z' w w' sc T T' i0 c) = Matrix.diagonal c := by
  have hMe : ∀ b, Mv ε e f z z' w w' sc T T' i0 c *ᵥ e b = e2 sc c f b := fun b => frameChangeMatrix_isotropic F1 b
  have hMz : Mv ε e f z z' w w' sc T T' i0 c *ᵥ z' = z2 T T' c z w i0 := fr2M_mulVec_z F1
  have hTc : (T : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 F0.T_ne
  have hfe : ∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0 := F0.ep
  ext a b
  simp only [Zhat]
  induction a using Fin.lastCases with
  | last =>
    induction b using Fin.lastCases with
    | last =>
      rw [_root_.Formalism.L2.SG.RealObj.InfCut.UnitaryIsometries.famSc_last', _root_.Formalism.L2.SG.RealObj.InfCut.UnitaryIsometries.famSc_last', hMz]
      simp only [z2, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_right, F0.zz, F0.zw, mul_zero, add_zero, diagonal_apply_eq,
        alv]
      field_simp
    | cast b =>
      rw [_root_.Formalism.L2.SG.RealObj.InfCut.UnitaryIsometries.famSc_last', famSc_castSucc, mulVec_smul, hMe]
      simp only [e2, UnitaryIsometries.hJ_smul_right, hJ_swap0 (F0.pz b), mul_zero]
      rw [diagonal_apply_ne]
      exact fun h => (Fin.castSucc_lt_last b).ne h.symm
  | cast a =>
    induction b using Fin.lastCases with
    | last =>
      rw [famSc_castSucc, _root_.Formalism.L2.SG.RealObj.InfCut.UnitaryIsometries.famSc_last', hMz]
      simp only [z2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_add_right, UnitaryIsometries.hJ_smul_right, F0.ez, F0.ew, mul_zero,
        add_zero]
      rw [diagonal_apply_ne]
      exact (Fin.castSucc_lt_last a).ne
    | cast b =>
      rw [famSc_castSucc, famSc_castSucc, mulVec_smul, hMe]
      simp only [e2, UnitaryIsometries.hJ_smul_left, UnitaryIsometries.hJ_smul_right, hfe, conj_sfv]
      by_cases h : a = b
      · subst h
        rw [diagonal_apply_eq, if_pos rfl, lamv]
        have hs : sfv sc a ≠ 0 := sfv_ne hsc a
        field_simp
      · rw [if_neg h, diagonal_apply_ne _ (fun h' => h (Fin.castSucc_injective _ h'))]
        ring

theorem measurable_Mv (i0 : Fin k) :
    Measurable (fun c : Fin (r + 1) → ℂ => Mv ε e f z z' w w' sc T T' i0 c) := by
  have hlam : ∀ a, Measurable (fun c : Fin (r + 1) → ℂ => lamv sc c a) := fun a =>
    (measurable_pi_apply _).div_const _
  have hinv : ∀ a, Measurable (fun c : Fin (r + 1) → ℂ => (conj (lamv sc c a))⁻¹) := fun a =>
    (Complex.continuous_conj.measurable.comp (hlam a)).inv
  have hal : Measurable (fun c : Fin (r + 1) → ℂ => alv T c) := (measurable_pi_apply _).neg.div_const _
  have hbe : Measurable (fun c : Fin (r + 1) → ℂ => bev T T' c) := by
    unfold bev
    exact Complex.measurable_ofReal.comp (Real.continuous_sqrt.measurable.comp
      ((((measurable_pi_apply _).norm.pow_const 2).div_const _).sub_const _))
  have hcal : Measurable (fun c : Fin (r + 1) → ℂ => conj (alv T c)) := Complex.continuous_conj.measurable.comp hal
  refine Measurable.of_eval fun i => Measurable.of_eval fun j => ?_
  simp only [Mv, frameChangeMatrix_entry, syn, Finset.sum_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  refine ((Finset.measurable_sum _ fun a _ => ?_).add (Finset.measurable_sum _ fun a _ => ?_)).add ?_ |>.add
    (Finset.measurable_sum _ fun l _ => ?_)
  · simp only [e2, Pi.smul_apply, smul_eq_mul]
    exact measurable_const.mul ((hlam a).mul measurable_const)
  · simp only [p2, Pi.smul_apply, smul_eq_mul]
    exact measurable_const.mul ((hinv a).mul measurable_const)
  · simp only [z2, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    exact measurable_const.mul ((hal.mul measurable_const).add (hbe.mul measurable_const))
  · simp only [w2]
    by_cases hl : l = i0
    · simp only [if_pos hl, Pi.smul_apply, Pi.add_apply, smul_eq_mul]
      exact measurable_const.mul (measurable_const.mul ((hbe.mul measurable_const).add
        ((hcal.mul measurable_const).mul measurable_const)))
    · simp only [if_neg hl]
      exact measurable_const

instance matrix_borel (m : ℕ) : BorelSpace (Matrix (Fin m) (Fin m) ℂ) :=
  inferInstanceAs (BorelSpace (Fin m → Fin m → ℂ))

theorem measurableEmbedding_uMat (ε : Fin n → Bool) :
    MeasurableEmbedding (fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.uMat g) :=
  (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.measurableEmbedding

def secV (F0 : Frm ε e f z w T) (F1 : Frm ε e f z' w' T') (hdim : n = 2 * r + 1 + k) (hT : 0 < T) (hT' : 0 < T')
    (hsc : 0 < sc) (i0 : Fin k) (c : Fin (r + 1) → ℂ) : Formalism.REAL.UJ ε :=
  if h : (∀ l, c l ≠ 0) ∧ 0 < ‖c (Fin.last r)‖ ^ 2 - T * T' then
    UnitaryIsometries.toUJ ε (frameChangeMatrix_isometry F1 (frm2 (sc := sc) F0 hT hT' hsc h.1 h.2 i0) hdim)
  else 1

theorem uMat_secV (F0 : Frm ε e f z w T) (F1 : Frm ε e f z' w' T') (hdim : n = 2 * r + 1 + k) (hT : 0 < T)
    (hT' : 0 < T') (hsc : 0 < sc) (i0 : Fin k) (c : Fin (r + 1) → ℂ) :
    Formalism.MainNotions.S.uMat (secV F0 F1 hdim hT hT' hsc i0 c) =
      if (∀ l, c l ≠ 0) ∧ 0 < ‖c (Fin.last r)‖ ^ 2 - T * T' then Mv ε e f z z' w w' sc T T' i0 c else 1 := by
  unfold secV
  split_ifs with h
  · rfl
  · simp [Formalism.MainNotions.S.uMat]

theorem measurable_secV (F0 : Frm ε e f z w T) (F1 : Frm ε e f z' w' T') (hdim : n = 2 * r + 1 + k)
    (hT : 0 < T) (hT' : 0 < T') (hsc : 0 < sc) (i0 : Fin k) :
    Measurable (secV F0 F1 hdim hT hT' hsc i0) := by
  rw [← (measurableEmbedding_uMat ε).measurable_comp_iff]
  have he : (fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.uMat g) ∘ secV F0 F1 hdim hT hT' hsc i0 =
      fun c => if (∀ l, c l ≠ 0) ∧ 0 < ‖c (Fin.last r)‖ ^ 2 - T * T' then Mv ε e f z z' w w' sc T T' i0 c
        else 1 := by
    funext c
    exact uMat_secV F0 F1 hdim hT hT' hsc i0 c
  rw [he]
  have hm1 : MeasurableSet {c : Fin (r + 1) → ℂ | ∀ l, c l ≠ 0} := by
    rw [Set.setOf_forall]
    exact MeasurableSet.iInter fun l => (measurableSet_singleton 0).compl.preimage (measurable_pi_apply l)
  have hm2 : MeasurableSet {c : Fin (r + 1) → ℂ | 0 < ‖c (Fin.last r)‖ ^ 2 - T * T'} :=
    measurableSet_lt measurable_const ((((measurable_pi_apply _).norm.pow_const 2)).sub_const _)
  have hm : MeasurableSet {c : Fin (r + 1) → ℂ | (∀ l, c l ≠ 0) ∧ 0 < ‖c (Fin.last r)‖ ^ 2 - T * T'} :=
    hm1.inter hm2
  exact Measurable.ite hm (measurable_Mv i0) measurable_const

theorem zhat_secV (F0 : Frm ε e f z w T) (F1 : Frm ε e f z' w' T') (hdim : n = 2 * r + 1 + k) (hT : 0 < T)
    (hT' : 0 < T') (hsc : 0 < sc) (i0 : Fin k) {c : Fin (r + 1) → ℂ} (hc : ∀ l, c l ≠ 0)
    (hg : 0 < ‖c (Fin.last r)‖ ^ 2 - T * T') :
    Zhat ε (famSc sc e z) (famSc sc e z') (Formalism.MainNotions.S.uMat (secV F0 F1 hdim hT hT' hsc i0 c)) =
      Matrix.diagonal c := by
  rw [uMat_secV, if_pos ⟨hc, hg⟩]
  exact zhat_Mv F0 F1 hsc i0

end Formalism.L2.S.Pv.SecW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWSec =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWGlob =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWGlob", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInst\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.FrameLocX\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ProductExactness\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSD\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWSec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S

namespace Formalism.L2.S.Pv.SecW

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.RealObj.InfCut

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem stepSection_holds : Formalism.L2.SG.RealObj.EnergyInst.StepSection := by
  intro D X u u' sc hsc
  have hk : 0 < D.R.k := by have := D.R.m_add_three_le_k; omega
  let i0 : Fin D.R.k := ⟨0, hk⟩
  choose w Fw using fun v => Formalism.L2.S.Pv.HaarSubS.frm_at X u v
  choose w' Fw' using fun v => Formalism.L2.S.Pv.HaarSubS.frm_at X u' v
  have hdim : ∀ v, X.B.I.n = 2 * D.R.rS + 1 + D.R.k := fun v => (ProductExactness.frameLoc_X X u u v).dim
  have hT : 0 < Tw (D := D) u := ProductExactness.Tw_pos u
  have hT' : 0 < Tw (D := D) u' := ProductExactness.Tw_pos u'
  refine ⟨fun c v => secV (Fw v) (Fw' v) (hdim v) hT hT' hsc i0 (c v), ?_, ?_⟩
  · exact Measurable.of_eval fun v => (measurable_secV (Fw v) (Fw' v) (hdim v) hT hT' hsc i0).comp
      (measurable_pi_apply v)
  · intro c hc v
    have hcv := hc v
    have hg := ProductExactness.normSq_last_sub_pos_of_Gv_diagonal_pos (Tw (D := D) u) (Tw (D := D) u') (c v) hcv.2
    exact zhat_secV (Fw v) (Fw' v) (hdim v) hT hT' hsc i0 hcv.1 hg

end Formalism.L2.S.Pv.SecW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWGlob =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInst\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyCut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.HaarDisintegrationRealHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.HermitianZZEqNeg\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepRealHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsBij\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.EnergyAbsMain\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSWire\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SchurTensInst\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SecWGlob\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace Formalism.L2.SG.RealObj.EnergyInst

open Formalism.L2.SG.RealObj Formalism.L2.SG.Pf.EnergyAbs

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def StepIntAt (D : D7) : Prop :=
  ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ), 0 < sc →
    ∀ c ∈ Good X u u', ∀ γ, HasDiag X u u' sc c γ →
      TermOp.OOInt (Formalism.L2.SG.ProjRows.muInf X.B.I) Set.univ (X.Wu u) (X.Wu u') γ

def StepConvAt (D : D7) : Prop :=
  ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ), 0 < sc →
    (∀ c ∈ Good X u u', ∀ γ, HasDiag X u u' sc c γ →
      ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', ‖⟪X.B.σs z (X.B.tens X.B.w),
          X.B.σs (s * γ * s'⁻¹) (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ * ‖X.Wu u z‖ₑ * ‖X.Wu u' z'‖ₑ
        ∂(muS X u') ∂(muS X u) ∂(X.nuQ u') ∂(X.nuQ u) < ⊤) ∧
    ∀ w : D.what₂.Word,
      ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs s (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ *
        ‖X.Wu w z‖ₑ * ‖X.Wu w z'‖ₑ ∂(muS X w) ∂(X.nuQ w) ∂(X.nuQ w) < ⊤

def StepEnergyAt (D : D7) : Prop :=
  ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ), 0 < sc →
    DisintegrationConstantPositive X u u' sc → CoordOK X u u' sc → intOOe X u u' sc ≤ ENNReal.ofReal (1 / degX X)

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

theorem stepEnergyAt_of_inst (D : D7) (hE : EnergyAbs) (hS : StepSchurG) (hG : StepSubG) (hSec : StepSection)
    (hC : StepConvAt D) (hI : StepIntAt D) : StepEnergyAt D := by
  classical
  intro X u u' sc hsc h27 _
  obtain ⟨hUR, hSch, hw, -⟩ := hS D X
  obtain ⟨hHu, hFu, -, -, hSFu⟩ := hG D X u
  obtain ⟨hHu', hFu', -, -, hSFu'⟩ := hG D X u'
  obtain ⟨hh, hhm, hhd⟩ := hSec D X u u' sc hsc
  have hGood : MeasurableSet (Good X u u') := by
    rw [Formalism.L2.SG.RealObj.EnergyCut.good_eq_pi X u u']
    exact MeasurableSet.univ_pi fun _ => Formalism.L2.SG.RealObj.EnergyCut.goodV_meas u u'
  by_cases hne : (Good X u u').Nonempty
  swap
  · have h0 : Good X u u' = ∅ := Set.not_nonempty_iff_eq_empty.mp hne
    simp [intOOe, nuM, h0]
  obtain ⟨c₀, hc₀⟩ := hne
  let g : Cinf X → X.B.I.Ginf := (Good X u u').piecewise hh (fun _ => hh c₀)
  have hgm : Measurable g := Measurable.piecewise hGood hhm measurable_const
  have hgG : ∀ c ∈ Good X u u', g c = hh c := fun c hc => Set.piecewise_eq_of_mem _ _ _ hc
  have hgd : ∀ c, ∃ c' ∈ Good X u u', HasDiag X u u' sc c' (g c) := by
    intro c
    by_cases hc : c ∈ Good X u u'
    · exact ⟨c, hc, by rw [hgG c hc]; exact hhd c hc⟩
    · refine ⟨c₀, hc₀, ?_⟩
      have : g c = hh c₀ := Set.piecewise_eq_of_notMem _ _ _ hc
      rw [this]; exact hhd c₀ hc₀
  have hgD : ∀ c ∈ Good X u u', HasDiag X u u' sc c (g c) := fun c hc => by
    rw [hgG c hc]; exact hhd c hc
  have hOfD : ∀ c ∈ Good X u u', HasDiag X u u' sc c (hOf X u u' sc c) := by
    intro c hc
    have hex : ∃ γ, HasDiag X u u' sc c γ := ⟨hh c, hhd c hc⟩
    have e : hOf X u u' sc c = hex.choose := dif_pos hex
    rw [e]
    exact hex.choose_spec
  have hD : Disint X u u' sc (DisintegrationConstant X u u' sc) := by
    have e : DisintegrationConstant X u u' sc = h27.choose := dif_pos h27
    rw [e]
    exact h27.choose_spec.2
  have hm : Measurable fun c => ENNReal.ofReal (DisintegrationConstant X u u' sc * wt X u u' c) :=
    ENNReal.measurable_ofReal.comp ((Formalism.L2.SG.RealObj.InfCut.wt_cont X u u').measurable.const_mul _)
  have hDis : Formalism.L2.SG.Pf.EnergyAbs.IsDisint (Formalism.L2.SG.ProjRows.muInf X.B.I) (muS X u) (muS X u')
      (nuM X u u' sc) g := by
    intro φ hφ
    rw [hD φ hφ, nuM, lintegral_withDensity_eq_lintegral_mul_non_measurable _ hm
      (Filter.Eventually.of_forall fun _ => ENNReal.ofReal_lt_top)]
    refine lintegral_congr_ae (ae_restrict_of_forall_mem hGood fun c hc => ?_)
    simp only [Pi.mul_apply]
    congr 1
    obtain ⟨a, ha, b, hb, hab⟩ :=
      InfCut.UnitaryIsometries.StepDiagDC_holds D X u u' sc c hc _ _ (hOfD c hc) (hgD c hc)
    exact (inner_transfer X hG u u' φ hφ _ _ a ha b hb hab).symm
  have key := hE X.B.I.Ginf (Formalism.L2.SG.ProjRows.muInf X.B.I) _ X.B.σs (degX X) (X.B.tens X.B.w)
    (X.Vpi u) (X.Vpi u') (X.SinfU u) (X.SinfU u') (muS X u) (muS X u') (X.nuQ u) (X.nuQ u')
    (tauU X u) (tauU X u') (X.Wu u) (X.Wu u') (Cinf X) inferInstance (nuM X u u' sc) g
    hUR hSch hw hHu hHu' hFu hFu' hSFu hSFu' (fun f hf => X.nuQ_weil u f hf)
    (fun f hf => X.nuQ_weil u' f hf) (isWAbs_of X hS hG u) (isWAbs_of X hS hG u') hDis hgm
    (fun c => by
      obtain ⟨c', hc', hd⟩ := hgd c
      exact integrableOn_univ.mp (hI X u u' sc hsc c' hc' (g c) hd))
    (fun c => by
      obtain ⟨c', hc', hd⟩ := hgd c
      exact (hC X u u' sc hsc).1 c' hc' (g c) hd)
    ((hC X u u' sc hsc).2 u) ((hC X u u' sc hsc).2 u')
  refine le_trans (le_of_eq ?_) key
  have hae : ∀ᵐ c ∂(nuM X u u' sc), c ∈ Good X u u' := by
    rw [nuM]
    exact withDensity_absolutelyContinuous _ _ (ae_restrict_mem hGood)
  have hIndep : OOIndep X u u' sc := InfCut.ooIndep_of_step X InfCut.UnitaryIsometries.StepDiagDC_holds u u' sc
  unfold intOOe
  refine lintegral_congr_ae ?_
  filter_upwards [hae] with c hc
  rw [hilbertSchmidtSqGram, hIndep c hc _ _ (hOfD c hc) (hgD c hc)]
  simp only [OOinf, TermOp.OO, Measure.restrict_univ]
  rfl

theorem inInfinityXAt (hI : StepIntAt D) (hC : StepConvAt D) (u u' : D.what₂.Word) (sc : ℝ) (hsc : 0 < sc) :
    InInfinityX X u u' sc := by
  have h27 : DisintegrationConstantPositive X u u' sc := InfCut.ProductExactness.haar_disintegration_real_holds D X u u' sc hsc
  have hR := InfCut.ProductExactness.StepReal_holds D X u u' sc hsc
  have hco : CoordOK X u u' sc := by
    refine ⟨hR, fun c hc => ?_⟩
    have hex := hR c hc
    refine hI X u u' sc hsc c hc _ ?_
    have e : hOf X u u' sc c = hex.choose := dif_pos hex
    rw [e]
    exact hex.choose_spec
  exact ⟨h27, hco, stepEnergyAt_of_inst D S.Pv.EnergyAbs.energyAbs_holds S.Pv.SchurTens.stepSchurG_holds
    S.Pv.HaarSubS.stepSubG_holds S.Pv.SecW.stepSection_holds hC hI X u u' sc hsc h27 hco⟩

end Formalism.L2.SG.RealObj.EnergyInst
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RealObjInInfinityXOfG =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RealObjInInfinityXOfG", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.L2.SG.RealObj

namespace Formalism.L2.SG.Pf

theorem realObj_inInfinityX_ofG (hI : Formalism.L2.SG.RealObj.EnergyInt.StepIntG) (hC : Formalism.L2.S.Pv.ConvG.StepConvG)
    {D : D7}
    (hg : Formalism.L2.SG.ConcreteSettingExists.GapHyp D) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ)
    (hsc : 0 < sc) : InInfinityX X u u' sc := Formalism.L2.SG.RealObj.EnergyInst.inInfinityXAt (X := X) (hI D hg) (hC D hg) u u' sc hsc

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RealObjInInfinityXOfG =====
