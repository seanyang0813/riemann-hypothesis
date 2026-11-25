module

public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PolyVHasTemperateGrowth
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.RightBilinearApply
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ContDiffOnOfContDiffAtOne
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.LibSmoothDec
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.SSmooth
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.CentralCharacterHolds
public import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.LibFresh
import Mathlib.Tactic.Linter.Style
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ExistsDecayBoundTwo
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.FiniteSupportOfHyp
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.HasFDerivAtIntegralSchwartzBilin
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.IsFiniteMeasureRestrictFd
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PFinInfGLMulVec
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PFinModuleSectionInv
import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.SigmaFinitePosRealMeasure
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.RestrictionMemInvariantH1
import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.ConstSmall
import Development.AutomorphicArithmetic.AutomorphicVarieties.PublishedTheorems.GelfandKazhdanReal
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ChartEisIntDifferentiableAt, PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.EisensteinLowWeight

-- ===== clump member: PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ChartEisIntDifferentiableAt =====
-- clump-header: {"m": "PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ChartEisIntDifferentiableAt", "h": "module\n\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PolyVHasTemperateGrowth\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.RightBilinearApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ContDiffOnOfContDiffAtOne\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ExistsDecayBoundTwo\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.FiniteSupportOfHyp\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.HasFDerivAtIntegralSchwartzBilin\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.IsFiniteMeasureRestrictFd\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.LibSmoothDec\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PFinInfGLMulVec\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.PFinModuleSectionInv\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.SigmaFinitePosRealMeasure\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.RestrictionMemInvariantH1\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.ConstSmall\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PublishedTheorems.GelfandKazhdanReal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.MainNotions.N Polynomial
open GlobalTheory.CuspRep GlobalTheory.HeckeGal GlobalTheory.GalOfCusp UpperTheory.V.Af UpperTheory.V.Base
open scoped Matrix SchwartzMap ContDiff Topology
open MeasureTheory GroundTheory.Global GroundTheory.Global.IdeleGroup UpperTheory.V.Sd UpperTheory.V.Published

set_option linter.unusedSectionVars false

namespace UpperTheory.HilbertEisensteinWeightOne.SLowLib

open UpperTheory.HilbertEisensteinWeightOne.EisensteinSmoothness

variable {F : Type} [Field F] [NumberField F] [IsTotallyReal F]

theorem summable_row (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F) :
    ∃ k : ℕ, Summable (fun ξ : Xi F => ‖finRow c (rowv g a ξ.1)‖ * ((1 + ‖vInf (rowv g a ξ.1)‖) ^ k)⁻¹) := by
  classical
  obtain ⟨d, hd0, hd⟩ := exists_den_row c g (isCompact_singleton (x := a))
  obtain ⟨k, U, hU, hdec⟩ := exists_decay_bound_two F (isCompact_singleton (x := a)) d hd0 0
  set G' := ((g⁻¹ : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)).map (UpperTheory.V.TR.pInf F) with hG'
  set K := ∑ i, ∑ j, ‖G' i j‖ with hKdef
  have hK : 0 ≤ K := by positivity
  refine ⟨k, ?_⟩
  have hUs : Summable (fun ξ : Xi F => (K + 1) ^ k * |U ξ.1|) := by
    have hi : Function.Injective (fun x : Xi F => x.1) := fun x y h => Subtype.ext h
    exact (hU.abs.comp_injective hi).mul_left _
  refine Summable.of_nonneg_of_le (fun ξ => by positivity) (fun ξ => ?_) hUs
  obtain ⟨ξ, hξ⟩ := ξ
  by_cases hf : finRow c (rowv g a ξ) = 0
  · simp only [hf, norm_zero, zero_mul]
    positivity
  have hcond : ∀ w, Valued.v (pLoc F w (pFin F ((rowA ξ ᵥ* ((Matrix.GeneralLinearGroup.scalar (Fin 2)
      a * g : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) 0))) ≤ WithZero.exp (-(c w : ℤ)) ∧
      Valued.v (pLoc F w (pFin F ((rowA ξ ᵥ* ((Matrix.GeneralLinearGroup.scalar (Fin 2) a * g :
        GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) 1)) - 1) ≤ WithZero.exp (-(c w : ℤ)) := by
    unfold finRow at hf
    split_ifs at hf with hc
    · exact hc
    · exact absurd rfl hf
  have hden := hd a (Set.mem_singleton a) ξ hcond
  have hdecay := hdec a (Set.mem_singleton a) 1 le_rfl ξ hξ hden
  rw [map_one, one_mul] at hdecay
  simp only [pow_zero, inv_one, one_mul] at hdecay
  set P : Vr F := fun i => UpperTheory.V.TR.pInf F ((a : Ad F) * algebraMap F (Ad F) (ξ i)) with hPdef
  have hw1 : vInf (rowv g a ξ) = P ᵥ* (g : Matrix (Fin 2) (Fin 2) (Ad F)).map (UpperTheory.V.TR.pInf F) :=
    vInf_rowv g a ξ
  have hPw : ‖P‖ ≤ K * ‖vInf (rowv g a ξ)‖ := by
    have e : P = vInf (rowv g a ξ) ᵥ* G' := by
      rw [hw1, Matrix.vecMul_vecMul, hG', map_pInf_mul_inv, Matrix.vecMul_one]
    calc ‖P‖ = ‖vInf (rowv g a ξ) ᵥ* G'‖ := by rw [← e]
      _ ≤ ‖vInf (rowv g a ξ)‖ * K := norm_vecMul_le' _ _
      _ = K * ‖vInf (rowv g a ξ)‖ := mul_comm _ _
  have hw' := inv_pow_le_of_le (norm_nonneg P) (norm_nonneg _) hK hPw k
  calc ‖finRow c (rowv g a ξ)‖ * ((1 + ‖vInf (rowv g a ξ)‖) ^ k)⁻¹
      ≤ 1 * ((K + 1) ^ k * ((1 + ‖P‖) ^ k)⁻¹) :=
        mul_le_mul (norm_finRow_le c _) hw' (by positivity) zero_le_one
    _ ≤ (K + 1) ^ k * |U ξ| := by
        rw [one_mul]
        gcongr
        exact hdecay.trans (le_abs_self _)

def Srow (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F) (x : UpperTheory.V.TR.Lie F 2) : ℂ :=
  ∫ ξ, finRow c (rowv g a ξ.1) * archS F (B1 (vInf (rowv g a ξ.1)) x) ∂(Measure.count : Measure (Xi F))

theorem aesm_count {β : Type*} [TopologicalSpace β] [TopologicalSpace.PseudoMetrizableSpace β]
    [MeasurableSpace β] [BorelSpace β] [SecondCountableTopology β] (f : Xi F → β) :
    AEStronglyMeasurable f (Measure.count : Measure (Xi F)) :=
  (measurable_of_countable f).aestronglyMeasurable

theorem integrable_row_weight (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F) :
    ∃ k : ℕ, Integrable (fun ξ : Xi F => ‖finRow c (rowv g a ξ.1)‖ * ((1 + ‖vInf (rowv g a ξ.1)‖) ^ k)⁻¹)
      (Measure.count : Measure (Xi F)) := by
  obtain ⟨k, hk⟩ := summable_row c g a
  refine ⟨k, (integrable_count_iff).2 ?_⟩
  simpa [Real.norm_eq_abs] using hk.abs

theorem hasFDerivAt_Srow (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F) {x : UpperTheory.V.TR.Lie F 2}
    (hx : x ∈ Metric.ball (UpperTheory.V.TR.oneL F 2) (1 / 4)) :
    HasFDerivAt (Srow c g a)
      (∫ ξ, finRow c (rowv g a ξ.1) • fderiv ℝ (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x)) x
        ∂(Measure.count : Measure (Xi F))) x := by
  obtain ⟨k, hk⟩ := integrable_row_weight c g a
  exact hasFDerivAt_integral_schwartz_bilin (archS F) B1 Metric.isOpen_ball (by norm_num : (0 : ℝ) < 1 / 2)
    (fun x hx v => half_norm_le_norm_left_bilinear hx v) (aesm_count _) (aesm_count _) hk hx

theorem integrable_fderiv_row (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F) {x : UpperTheory.V.TR.Lie F 2}
    (hx : x ∈ Metric.ball (UpperTheory.V.TR.oneL F 2) (1 / 4)) :
    Integrable (fun ξ : Xi F => finRow c (rowv g a ξ.1) • fderiv ℝ (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x)) x)
      (Measure.count : Measure (Xi F)) := by
  obtain ⟨k, hk⟩ := integrable_row_weight c g a
  obtain ⟨C, -, hC⟩ := exists_bound_bilD (archS F) B1 (by norm_num : (0 : ℝ) < 1 / 2)
    (fun x hx v => half_norm_le_norm_left_bilinear hx v) 1 k
  refine (hk.const_mul C).mono' (aesm_count _) (ae_of_all _ fun ξ => ?_)
  have h := hC x hx (vInf (rowv g a ξ.1))
  rw [bilD, ← norm_iteratedFDeriv_fderiv, norm_iteratedFDeriv_zero] at h
  rw [norm_smul]
  calc ‖finRow c (rowv g a ξ.1)‖ * ‖fderiv ℝ (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x)) x‖
      ≤ ‖finRow c (rowv g a ξ.1)‖ * (C * ((1 + ‖vInf (rowv g a ξ.1)‖) ^ k)⁻¹) :=
        mul_le_mul_of_nonneg_left h (norm_nonneg _)
    _ = C * (‖finRow c (rowv g a ξ.1)‖ * ((1 + ‖vInf (rowv g a ξ.1)‖) ^ k)⁻¹) := by ring

theorem thetaS_eq_Srow (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F)
    (y : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) :
    thetaS (Phi c) (Matrix.GeneralLinearGroup.scalar (Fin 2) a * g * UpperTheory.V.TR.infGL F 2 y) =
      Srow c g a (UpperTheory.V.TR.toL y.val) := by
  unfold thetaS Srow
  rw [integral_count_Xi]
  refine tsum_congr fun ξ => ?_
  rw [mul_assoc, row_term, mul_comm]

theorem thetaS_curve (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2) (a : Ideles F)
    (k : ℝ → GL (Fin 2) (UpperTheory.V.TR.Rinf F)) (X : UpperTheory.V.TR.Lie F 2) (hk0 : k 0 = 1)
    (hk : HasDerivAt (fun s => UpperTheory.V.TR.toL (k s).val) X 0) :
    ∃ D : {ξ : Fin 2 → F // ξ ≠ 0} → ℂ,
      (∀ ξ, HasDerivAt (fun s => Phi c (rowA ξ.1 ᵥ* ((Matrix.GeneralLinearGroup.scalar (Fin 2) a * g *
        UpperTheory.V.TR.infGL F 2 (k s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)))) (D ξ) 0) ∧ Summable D ∧
      HasDerivAt (fun s => thetaS (Phi c) (Matrix.GeneralLinearGroup.scalar (Fin 2) a * g *
        UpperTheory.V.TR.infGL F 2 (k s))) (∑' ξ, D ξ) 0 := by
  have h1 : UpperTheory.V.TR.toL (k 0).val = UpperTheory.V.TR.oneL F 2 := by rw [hk0]; rfl
  have hball : UpperTheory.V.TR.toL (k 0).val ∈ Metric.ball (UpperTheory.V.TR.oneL F 2) (1 / 4) := by
    rw [h1]; exact Metric.mem_ball_self (by norm_num)
  have hI := integrable_fderiv_row c g a hball
  set D : {ξ : Fin 2 → F // ξ ≠ 0} → ℂ := fun ξ => finRow c (rowv g a ξ.1) *
    fderiv ℝ (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x)) (UpperTheory.V.TR.toL (k 0).val) X with hD
  refine ⟨D, fun ξ => ?_, ?_, ?_⟩
  · have e : (fun s => Phi c (rowA ξ.1 ᵥ* ((Matrix.GeneralLinearGroup.scalar (Fin 2) a * g *
        UpperTheory.V.TR.infGL F 2 (k s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)))) =
        fun s => archS F (B1 (vInf (rowv g a ξ.1)) (UpperTheory.V.TR.toL (k s).val)) * finRow c (rowv g a ξ.1) :=
      funext fun s => by rw [mul_assoc, row_term]
    rw [e]
    have hd : HasFDerivAt (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x))
        (fderiv ℝ (fun x => archS F (B1 (vInf (rowv g a ξ.1)) x)) (UpperTheory.V.TR.toL (k 0).val))
        (UpperTheory.V.TR.toL (k 0).val) :=
      (((contDiff_bil (archS F) B1 (vInf (rowv g a ξ.1))).differentiable infty_ne_zero) _).hasFDerivAt
    refine ((hd.comp_hasDerivAt 0 hk).mul_const (finRow c (rowv g a ξ.1))).congr_deriv ?_
    simp only [hD]
    ring
  · have h2 := (integrable_count_iff).1 (hI.apply_continuousLinearMap X)
    refine Summable.of_norm (h2.congr fun ξ => ?_)
    simp only [hD, ContinuousLinearMap.smul_apply, smul_eq_mul]
  · have e : (fun s => thetaS (Phi c) (Matrix.GeneralLinearGroup.scalar (Fin 2) a * g *
        UpperTheory.V.TR.infGL F 2 (k s))) = fun s => Srow c g a (UpperTheory.V.TR.toL (k s).val) :=
      funext fun s => thetaS_eq_Srow c g a (k s)
    rw [e]
    refine ((hasFDerivAt_Srow c g a hball).comp_hasDerivAt 0 hk).congr_deriv ?_
    rw [ContinuousLinearMap.integral_apply hI X, integral_count_Xi]
    rfl

theorem chart_eisInt_differentiableAt (χ : HChar F) (c : HeightOneSpectrum (𝓞 F) → ℕ) (g : GA F 2)
    (t : {r : ℝ // 0 < r}) (u : normOneSubgroup F) :
    DifferentiableAt ℝ (UpperTheory.V.TR.chart (fun g' => eisInt χ (Phi c) g' t u) g) (UpperTheory.V.TR.oneL F 2) := by
  have hS : DifferentiableAt ℝ (Srow c g (av (t, u))) (UpperTheory.V.TR.oneL F 2) :=
    (hasFDerivAt_Srow c g _ (Metric.mem_ball_self (by norm_num))).differentiableAt
  have h0 : dl g (UpperTheory.V.TR.oneL F 2) ≠ 0 := by rw [dl_one]; exact (absD_pos g).ne'
  have h1 : DifferentiableAt ℝ (fun x => dl g x ^ ((1 : ℝ) / 2)) (UpperTheory.V.TR.oneL F 2) :=
    (((contDiff_dl g).differentiable infty_ne_zero) _).rpow_const (Or.inl h0)
  have hD : DifferentiableAt ℝ (Dc g) (UpperTheory.V.TR.oneL F 2) := by
    show DifferentiableAt ℝ (fun x => ((dl g x ^ ((1 : ℝ) / 2) : ℝ) : ℂ)) _
    exact Complex.ofRealCLM.differentiableAt.comp _ h1
  have e : Sr χ c g (t, u) = fun x => (((χ.1 (av (t, u)) : ℂˣ) : ℂ)⁻¹ * ((t : ℝ) : ℂ)) * Srow c g (av (t, u)) x := by
    funext x
    unfold Sr Srow kap1 w1
    rw [← integral_const_mul]
    refine integral_congr_ae (ae_of_all _ fun ξ => ?_)
    simp only
    ring
  have hd : DifferentiableAt ℝ (fun x => Dc g x * Sr χ c g (t, u) x) (UpperTheory.V.TR.oneL F 2) := by
    rw [e]
    exact hD.mul (hS.const_mul _)
  exact hd.congr_of_eventuallyEq (chart_eisInt_row χ c g (t, u))

end UpperTheory.HilbertEisensteinWeightOne.SLowLib
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ChartEisIntDifferentiableAt =====

-- ===== clump member: PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.EisensteinLowWeight =====
-- clump-header: {"m": "PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.EisensteinLowWeight", "h": "module\n\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.SSmooth\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.Deriv.Prod\npublic import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.CentralCharacterHolds\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.ChartEisIntDifferentiableAt\npublic import PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.LibFresh\nimport PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.LibSmoothDec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.RestrictionMemInvariantH1\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.ConstSmall\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PublishedTheorems.GelfandKazhdanReal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.MainNotions.N Polynomial
open GlobalTheory.CuspRep GlobalTheory.HeckeGal GlobalTheory.GalOfCusp UpperTheory.V.Af UpperTheory.V.Base
open scoped Matrix
open MeasureTheory GroundTheory.Global GroundTheory.Global.IdeleGroup UpperTheory.V.Sd UpperTheory.V.Published

namespace UpperTheory.HilbertEisensteinWeightOne.eisensteinLowWeight

open Classical

variable {F : Type} [Field F] [NumberField F] [IsTotallyReal F]

def fac (x y : ℝ) : ℂ :=
  ((x : ℂ) + Complex.I * (y : ℂ)) * Complex.exp (-(Real.pi : ℂ) * ((x : ℂ) ^ 2 + (y : ℂ) ^ 2))

def facX (x y : ℝ) : ℂ :=
  (1 - 2 * (Real.pi : ℂ) * (x : ℂ) * ((x : ℂ) + Complex.I * (y : ℂ))) *
    Complex.exp (-(Real.pi : ℂ) * ((x : ℂ) ^ 2 + (y : ℂ) ^ 2))

def facY (x y : ℝ) : ℂ :=
  (Complex.I - 2 * (Real.pi : ℂ) * (y : ℂ) * ((x : ℂ) + Complex.I * (y : ℂ))) *
    Complex.exp (-(Real.pi : ℂ) * ((x : ℂ) ^ 2 + (y : ℂ) ^ 2))

theorem hasDerivAt_fac {X Y : ℝ → ℝ} {X' Y' s : ℝ} (hX : HasDerivAt X X' s) (hY : HasDerivAt Y Y' s) :
    HasDerivAt (fun s => fac (X s) (Y s)) (X' * facX (X s) (Y s) + Y' * facY (X s) (Y s)) s := by
  have hXc := hX.ofReal_comp
  have hYc := hY.ofReal_comp
  have h1 := hXc.add (hYc.const_mul Complex.I)
  have h2 := ((hXc.pow 2).add (hYc.pow 2)).const_mul (-(Real.pi : ℂ))
  unfold fac facX facY
  refine (h1.mul h2.cexp).congr_deriv ?_
  simp only [Pi.add_apply, Pi.pow_apply]
  norm_num
  ring

theorem low_identity (x y : ℝ) :
    (x * facX x y + (-y) * facY x y) - Complex.I * (y * facX x y + x * facY x y) =
      (x * facX x (-y) + (-y) * facY x (-y)) + fac x (-y) := by
  unfold fac facX facY
  push_cast
  simp only [neg_sq]
  set E := Complex.exp (-(Real.pi : ℂ) * ((x : ℂ) ^ 2 + (y : ℂ) ^ 2))
  linear_combination (-(x : ℂ) * E + 4 * (Real.pi : ℂ) * (x : ℂ) * (y : ℂ) ^ 2 * E) * Complex.I_sq

def atv (v : InfinitePlace F) (x d : ℝ) : UpperTheory.V.TR.Rinf F := fun w => if w = v then x else d

def kA (v : InfinitePlace F) (s : ℝ) : GL (Fin 2) (UpperTheory.V.TR.Rinf F) where
  val := !![atv v (Real.exp s) 1, 0; 0, atv v (Real.exp (-s)) 1]
  inv := !![atv v (Real.exp (-s)) 1, 0; 0, atv v (Real.exp s) 1]
  val_inv := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> simp [← Real.exp_add]
  inv_val := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> simp [← Real.exp_add]

def kB (v : InfinitePlace F) (s : ℝ) : GL (Fin 2) (UpperTheory.V.TR.Rinf F) where
  val := !![atv v (Real.cosh s) 1, atv v (Real.sinh s) 0; atv v (Real.sinh s) 0, atv v (Real.cosh s) 1]
  inv := !![atv v (Real.cosh s) 1, -atv v (Real.sinh s) 0; -atv v (Real.sinh s) 0, atv v (Real.cosh s) 1]
  val_inv := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> (try simp) <;>
      nlinarith [Real.cosh_sq_sub_sinh_sq s]
  inv_val := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> (try simp) <;>
      nlinarith [Real.cosh_sq_sub_sinh_sq s]

def kZ (v : InfinitePlace F) (s : ℝ) : GL (Fin 2) (UpperTheory.V.TR.Rinf F) where
  val := !![atv v (Real.exp s) 1, 0; 0, atv v (Real.exp s) 1]
  inv := !![atv v (Real.exp (-s)) 1, 0; 0, atv v (Real.exp (-s)) 1]
  val_inv := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> simp [← Real.exp_add]
  inv_val := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv] <;> split_ifs <;> simp [← Real.exp_add]

def eps (v : InfinitePlace F) : GL (Fin 2) (UpperTheory.V.TR.Rinf F) where
  val := !![1, 0; 0, atv v (-1) 1]
  inv := !![1, 0; 0, atv v (-1) 1]
  val_inv := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv]; split_ifs <;> simp
  inv_val := by
    rw [Matrix.mul_fin_two, Matrix.one_fin_two]
    ext i j w
    fin_cases i <;> fin_cases j <;> simp [atv]; split_ifs <;> simp

def XA (v : InfinitePlace F) : UpperTheory.V.TR.Lie F 2 :=
  UpperTheory.V.TR.toL (Matrix.single 0 0 (Pi.single v 1)) - UpperTheory.V.TR.toL (Matrix.single 1 1 (Pi.single v 1))

def XB (v : InfinitePlace F) : UpperTheory.V.TR.Lie F 2 :=
  UpperTheory.V.TR.toL (Matrix.single 0 1 (Pi.single v 1)) + UpperTheory.V.TR.toL (Matrix.single 1 0 (Pi.single v 1))

def XZ (v : InfinitePlace F) : UpperTheory.V.TR.Lie F 2 :=
  UpperTheory.V.TR.toL (Matrix.single 0 0 (Pi.single v 1)) + UpperTheory.V.TR.toL (Matrix.single 1 1 (Pi.single v 1))

theorem kA_zero (v : InfinitePlace F) : kA v 0 = 1 := by
  refine Units.ext ?_
  ext i j w
  fin_cases i <;> fin_cases j <;> simp [kA, atv]

theorem kB_zero (v : InfinitePlace F) : kB v 0 = 1 := by
  refine Units.ext ?_
  ext i j w
  fin_cases i <;> fin_cases j <;> simp [kB, atv]

theorem kZ_zero (v : InfinitePlace F) : kZ v 0 = 1 := by
  refine Units.ext ?_
  ext i j w
  fin_cases i <;> fin_cases j <;> simp [kZ, atv]

theorem kA_deriv (v : InfinitePlace F) :
    HasDerivAt (fun s : ℝ => UpperTheory.V.TR.toL (kA v s).val) (XA v) 0 := by
  refine hasDerivAt_pi.2 fun i => hasDerivAt_pi.2 fun j => hasDerivAt_pi.2 fun u => ?_
  by_cases hu : u = v
  · subst hu
    fin_cases i <;> fin_cases j
    · simpa [XA, kA, atv] using Real.hasDerivAt_exp 0
    · simp [XA, kA, atv, hasDerivAt_const]
    · simp [XA, kA, atv, hasDerivAt_const]
    · simpa [XA, kA, atv] using (hasDerivAt_neg (0 : ℝ)).exp
  · fin_cases i <;> fin_cases j <;> simp [XA, kA, atv, hu, hasDerivAt_const]

theorem kB_deriv (v : InfinitePlace F) :
    HasDerivAt (fun s : ℝ => UpperTheory.V.TR.toL (kB v s).val) (XB v) 0 := by
  refine hasDerivAt_pi.2 fun i => hasDerivAt_pi.2 fun j => hasDerivAt_pi.2 fun u => ?_
  by_cases hu : u = v
  · subst hu
    fin_cases i <;> fin_cases j
    · simpa [XB, kB, atv] using Real.hasDerivAt_cosh 0
    · simpa [XB, kB, atv] using Real.hasDerivAt_sinh 0
    · simpa [XB, kB, atv] using Real.hasDerivAt_sinh 0
    · simpa [XB, kB, atv] using Real.hasDerivAt_cosh 0
  · fin_cases i <;> fin_cases j <;> simp [XB, kB, atv, hu, hasDerivAt_const]

theorem kZ_deriv (v : InfinitePlace F) :
    HasDerivAt (fun s : ℝ => UpperTheory.V.TR.toL (kZ v s).val) (XZ v) 0 := by
  refine hasDerivAt_pi.2 fun i => hasDerivAt_pi.2 fun j => hasDerivAt_pi.2 fun u => ?_
  by_cases hu : u = v
  · subst hu
    fin_cases i <;> fin_cases j
    · simpa [XZ, kZ, atv] using Real.hasDerivAt_exp 0
    · simp [XZ, kZ, atv, hasDerivAt_const]
    · simp [XZ, kZ, atv, hasDerivAt_const]
    · simpa [XZ, kZ, atv] using Real.hasDerivAt_exp 0
  · fin_cases i <;> fin_cases j <;> simp [XZ, kZ, atv, hu, hasDerivAt_const]

def finInd (c : HeightOneSpectrum (𝓞 F) → ℕ) (a b : Af F) : ℂ :=
  if ∀ w, Valued.v (pLoc F w a) ≤ WithZero.exp (-(c w : ℤ)) ∧ Valued.v (pLoc F w b - 1) ≤ WithZero.exp (-(c w : ℤ))
  then 1 else 0

def pI (η : Fin 2 → Ad F) : Fin 2 → UpperTheory.V.TR.Rinf F := fun j => UpperTheory.V.TR.pInf F (η j)

theorem phi_eq (c : HeightOneSpectrum (𝓞 F) → ℕ) (η : Fin 2 → Ad F) :
    Phi c η = arch (pI η 0) (pI η 1) * finInd c (pFin F (η 0)) (pFin F (η 1)) := rfl

theorem phi_infGL (c : HeightOneSpectrum (𝓞 F) → ℕ) (η : Fin 2 → Ad F) (y : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) :
    Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 y : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) =
      arch ((pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) 0)
          ((pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) 1) *
        finInd c (pFin F (η 0)) (pFin F (η 1)) := by
  set M := ((UpperTheory.V.TR.infGL F 2 y : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))
  have hI : M.map (UpperTheory.V.TR.pInf F) = (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) :=
    congrArg Units.val (UpperTheory.V.TR.pInf_infGL y)
  have hF : M.map (pFin F) = 1 := congrArg Units.val (UpperTheory.V.TR.pFin_infGL y)
  have eI : ∀ i, UpperTheory.V.TR.pInf F ((η ᵥ* M) i) = (pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) i :=
    fun i => by rw [RingHom.map_vecMul, hI]; rfl
  have eF : ∀ i, pFin F ((η ᵥ* M) i) = pFin F (η i) := fun i => by
    rw [RingHom.map_vecMul, hF, Matrix.vecMul_one]; rfl
  rw [phi_eq, eF 0, eF 1]
  simp only [pI] at eI ⊢
  rw [eI 0, eI 1]

theorem arch_split (v : InfinitePlace F) (x y : UpperTheory.V.TR.Rinf F) :
    arch x y = fac (x v) (y v) * ∏ w ∈ Finset.univ.erase v, fac (x w) (y w) := by
  unfold arch
  exact (Finset.mul_prod_erase Finset.univ (fun w => fac (x w) (y w)) (Finset.mem_univ v)).symm

def rest (v : InfinitePlace F) (p : Fin 2 → UpperTheory.V.TR.Rinf F) : ℂ := ∏ w ∈ Finset.univ.erase v, fac (p 0 w) (p 1 w)

theorem vecMul_apply2 (p : Fin 2 → UpperTheory.V.TR.Rinf F) (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) (i : Fin 2)
    (w : InfinitePlace F) : (p ᵥ* y) i w = p 0 w * y 0 i w + p 1 w * y 1 i w := by
  simp [Matrix.vecMul, dotProduct, Fin.sum_univ_two]

theorem phi_curve (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F)
    (y : GL (Fin 2) (UpperTheory.V.TR.Rinf F))
    (hy : ∀ w, w ≠ v → ∀ i j, (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w =
      (1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w) :
    Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 y : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) =
      fac ((pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) 0 v)
          ((pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) 1 v) *
        (rest v (pI η) * finInd c (pFin F (η 0)) (pFin F (η 1))) := by
  rw [phi_infGL, arch_split v, mul_assoc]
  congr 2
  unfold rest
  refine Finset.prod_congr rfl fun w hw => ?_
  have hw' := Finset.ne_of_mem_erase hw
  have h : ∀ i, (pI η ᵥ* (y : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F))) i w = pI η i w := fun i => by
    rw [vecMul_apply2, hy w hw' 0 i, hy w hw' 1 i]
    fin_cases i <;> simp [Matrix.one_apply]
  rw [h 0, h 1]

def DA (x y : ℝ) : ℂ := (x : ℂ) * facX x y + (-(y : ℂ)) * facY x y

def DB (x y : ℝ) : ℂ := (y : ℂ) * facX x y + (x : ℂ) * facY x y

def DZ (x y : ℝ) : ℂ := (x : ℂ) * facX x (-y) + (-(y : ℂ)) * facY x (-y)

theorem low_identity' (x y : ℝ) : DA x y - Complex.I * DB x y = DZ x y + fac x (-y) := by
  have h := low_identity x y
  unfold DA DB DZ
  linear_combination h

theorem hyA (v : InfinitePlace F) (s : ℝ) : ∀ w, w ≠ v → ∀ i j,
    ((kA v s : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w =
      (1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w := by
  intro w hw i j
  fin_cases i <;> fin_cases j <;> simp [kA, atv, hw]

theorem hyB (v : InfinitePlace F) (s : ℝ) : ∀ w, w ≠ v → ∀ i j,
    ((kB v s : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w =
      (1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w := by
  intro w hw i j
  fin_cases i <;> fin_cases j <;> simp [kB, atv, hw]

theorem hyEZ (v : InfinitePlace F) (s : ℝ) : ∀ w, w ≠ v → ∀ i j,
    ((eps v * kZ v s : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w =
      (1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w := by
  intro w hw i j
  rw [Units.val_mul]
  fin_cases i <;> fin_cases j <;> simp [eps, kZ, atv, hw, Matrix.mul_apply, Fin.sum_univ_two]

theorem hyE (v : InfinitePlace F) : ∀ w, w ≠ v → ∀ i j,
    ((eps v : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w =
      (1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j w := by
  intro w hw i j
  fin_cases i <;> fin_cases j <;> simp [eps, atv, hw]

def Rt (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) : ℂ :=
  rest v (pI η) * finInd c (pFin F (η 0)) (pFin F (η 1))

theorem term_A (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) :
    HasDerivAt (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (kA v s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))))
      (DA (pI η 0 v) (pI η 1 v) * Rt c v η) 0 := by
  set x := pI η 0 v
  set y := pI η 1 v
  have e : (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (kA v s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)))) =
      fun s => fac (x * Real.exp s) (y * Real.exp (-s)) * Rt c v η := by
    funext s
    rw [phi_curve c v η (kA v s) (hyA v s), vecMul_apply2, vecMul_apply2]
    simp [kA, atv, x, y, Rt]
  rw [e]
  have hX : HasDerivAt (fun s => x * Real.exp s) x 0 := by simpa using (Real.hasDerivAt_exp 0).const_mul x
  have hY : HasDerivAt (fun s => y * Real.exp (-s)) (-y) 0 := by
    simpa using ((hasDerivAt_neg (0 : ℝ)).exp).const_mul y
  have h := (hasDerivAt_fac hX hY).mul_const (Rt c v η)
  refine h.congr_deriv ?_
  simp only [Real.exp_zero, mul_one, neg_zero, DA]
  push_cast
  ring

theorem term_B (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) :
    HasDerivAt (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (kB v s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))))
      (DB (pI η 0 v) (pI η 1 v) * Rt c v η) 0 := by
  set x := pI η 0 v
  set y := pI η 1 v
  have e : (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (kB v s) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)))) =
      fun s => fac (x * Real.cosh s + y * Real.sinh s) (x * Real.sinh s + y * Real.cosh s) * Rt c v η := by
    funext s
    rw [phi_curve c v η (kB v s) (hyB v s), vecMul_apply2, vecMul_apply2]
    simp [kB, atv, x, y, Rt]
  rw [e]
  have hX : HasDerivAt (fun s => x * Real.cosh s + y * Real.sinh s) y 0 := by
    refine (((Real.hasDerivAt_cosh 0).const_mul x).add ((Real.hasDerivAt_sinh 0).const_mul y)).congr_deriv ?_
    simp
  have hY : HasDerivAt (fun s => x * Real.sinh s + y * Real.cosh s) x 0 := by
    refine (((Real.hasDerivAt_sinh 0).const_mul x).add ((Real.hasDerivAt_cosh 0).const_mul y)).congr_deriv ?_
    simp
  have h := (hasDerivAt_fac hX hY).mul_const (Rt c v η)
  refine h.congr_deriv ?_
  simp only [Real.cosh_zero, Real.sinh_zero, mul_one, mul_zero, add_zero, zero_add, DB]

theorem term_Z (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) :
    HasDerivAt (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (eps v * kZ v s) : GA F 2) :
        Matrix (Fin 2) (Fin 2) (Ad F))))
      (DZ (pI η 0 v) (pI η 1 v) * Rt c v η) 0 := by
  set x := pI η 0 v
  set y := pI η 1 v
  have e : (fun s => Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (eps v * kZ v s) : GA F 2) :
        Matrix (Fin 2) (Fin 2) (Ad F)))) =
      fun s => fac (x * Real.exp s) (-y * Real.exp s) * Rt c v η := by
    funext s
    rw [phi_curve c v η (eps v * kZ v s) (hyEZ v s), vecMul_apply2, vecMul_apply2, Units.val_mul]
    simp [eps, kZ, atv, x, y, Rt, Matrix.mul_apply, Fin.sum_univ_two]
  rw [e]
  have hX : HasDerivAt (fun s => x * Real.exp s) x 0 := by simpa using (Real.hasDerivAt_exp 0).const_mul x
  have hY : HasDerivAt (fun s => -y * Real.exp s) (-y) 0 := by simpa using (Real.hasDerivAt_exp 0).const_mul (-y)
  have h := (hasDerivAt_fac hX hY).mul_const (Rt c v η)
  refine h.congr_deriv ?_
  simp only [Real.exp_zero, mul_one, DZ]
  push_cast
  ring

theorem term_eps (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) :
    Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (eps v) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) =
      fac (pI η 0 v) (-(pI η 1 v)) * Rt c v η := by
  rw [phi_curve c v η (eps v) (hyE v), vecMul_apply2, vecMul_apply2]
  simp [eps, atv, Rt]

theorem term_low (c : HeightOneSpectrum (𝓞 F) → ℕ) (v : InfinitePlace F) (η : Fin 2 → Ad F) :
    DA (pI η 0 v) (pI η 1 v) * Rt c v η - Complex.I * (DB (pI η 0 v) (pI η 1 v) * Rt c v η) =
      DZ (pI η 0 v) (pI η 1 v) * Rt c v η +
        Phi c (η ᵥ* ((UpperTheory.V.TR.infGL F 2 (eps v) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) := by
  rw [term_eps]
  linear_combination Rt c v η * low_identity' (pI η 0 v) (pI η 1 v)

theorem absD_mul_infGL (g : GA F 2) (y : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) :
    absD (g * UpperTheory.V.TR.infGL F 2 y) = absD g * ∏ w, |(Matrix.GeneralLinearGroup.det y).val w| := by
  unfold absD
  rw [map_mul, UpperTheory.V.TR.det_infGL, map_mul, Positive.val_mul, _root_.UpperTheory.HilbertEisensteinWeightOne.EisensteinSmoothness.ideleModule_infId]

theorem det_kA (v : InfinitePlace F) (s : ℝ) : ∏ w, |(Matrix.GeneralLinearGroup.det (kA v s)).val w| = 1 := by
  refine Finset.prod_eq_one fun w _ => ?_
  simp [kA, Matrix.det_fin_two, atv]
  split_ifs <;> simp [← Real.exp_add]

theorem det_kB (v : InfinitePlace F) (s : ℝ) : ∏ w, |(Matrix.GeneralLinearGroup.det (kB v s)).val w| = 1 := by
  refine Finset.prod_eq_one fun w _ => ?_
  simp [kB, Matrix.det_fin_two, atv]
  split_ifs
  · rw [← sq, ← sq, Real.cosh_sq_sub_sinh_sq, abs_one]
  · simp

theorem det_eps (v : InfinitePlace F) : ∏ w, |(Matrix.GeneralLinearGroup.det (eps v)).val w| = 1 := by
  refine Finset.prod_eq_one fun w _ => ?_
  simp [eps, Matrix.det_fin_two, atv]
  split_ifs <;> simp

theorem det_kZ (v : InfinitePlace F) (s : ℝ) :
    ∏ w, |(Matrix.GeneralLinearGroup.det (kZ v s)).val w| = Real.exp s * Real.exp s := by
  rw [Fintype.prod_eq_single v (fun w hw => by simp [kZ, Matrix.det_fin_two, atv, hw])]
  simp [kZ, Matrix.det_fin_two, atv]

def eu (v : InfinitePlace F) (s : ℝ) : (UpperTheory.V.TR.Rinf F)ˣ where
  val := atv v (Real.exp s) 1
  inv := atv v (Real.exp (-s)) 1
  val_inv := by funext w; simp only [atv, Pi.mul_apply, Pi.one_apply]; split_ifs <;> simp [← Real.exp_add]
  inv_val := by funext w; simp only [atv, Pi.mul_apply, Pi.one_apply]; split_ifs <;> simp [← Real.exp_add]

theorem infGL_kZ (v : InfinitePlace F) (s : ℝ) :
    UpperTheory.V.TR.infGL F 2 (kZ v s) = Matrix.GeneralLinearGroup.scalar (Fin 2) (UpperTheory.V.TR.infId F (eu v s)) := by
  refine Units.ext ?_
  rw [Matrix.GeneralLinearGroup.coe_scalar]
  ext i j
  change (1 : Matrix (Fin 2) (Fin 2) (Ad F)) i j - UpperTheory.V.TR.sInf F ((1 : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j) +
      UpperTheory.V.TR.sInf F (((kZ v s : GL (Fin 2) (UpperTheory.V.TR.Rinf F)) : Matrix (Fin 2) (Fin 2) (UpperTheory.V.TR.Rinf F)) i j) =
    Matrix.scalar (Fin 2) (1 - UpperTheory.V.TR.sInf F 1 + UpperTheory.V.TR.sInf F (atv v (Real.exp s) 1)) i j
  fin_cases i <;> fin_cases j <;> simp [kZ]

theorem omega_eu (ω : HChar F) (hω : IsOfFinOrder ω) (v : InfinitePlace F) (s : ℝ) :
    ((ω.1 (UpperTheory.V.TR.infId F (eu v s)) : ℂˣ) : ℂ) = 1 := by
  obtain ⟨n, hn, hpow⟩ := (isOfFinOrder_iff_pow_eq_one).1 hω
  have e : eu v s = (eu v (s / n)) ^ n := by
    refine Units.ext (funext fun w => ?_)
    rw [Units.val_pow_eq_pow_val, Pi.pow_apply]
    simp only [eu, atv]
    split_ifs
    · rw [← Real.exp_nat_mul]
      congr 1
      field_simp
    · simp
  have h := congrArg (fun χ : HChar F => χ.1 (UpperTheory.V.TR.infId F (eu v (s / n)))) hpow
  rw [e, map_pow, map_pow]
  have h' : (ω ^ n).1 (UpperTheory.V.TR.infId F (eu v (s / n))) = (ω.1 (UpperTheory.V.TR.infId F (eu v (s / n)))) ^ n := rfl
  rw [← h', h]
  rfl

theorem mul_scalar_comm (h : GA F 2) (z : Ideles F) :
    h * Matrix.GeneralLinearGroup.scalar (Fin 2) z = Matrix.GeneralLinearGroup.scalar (Fin 2) z * h := by
  refine Units.ext ?_
  rw [Units.val_mul, Units.val_mul, Matrix.GeneralLinearGroup.coe_scalar]
  exact ((Matrix.scalar_commute _ (fun r => Commute.all _ r) _).eq).symm

theorem lieD_XZ_eq_zero (hP : SPois) (hI : SInt) (hS : SSmooth) {ω : HChar F} {c : HeightOneSpectrum (𝓞 F) → ℕ}
    (H : Hyp ω c) (hs : Eis ω (Phi c) ∈ UpperTheory.V.TR.Sm F 2) (v : InfinitePlace F) (h : GA F 2) :
    UpperTheory.V.TR.lieD (XZ v) (Eis ω (Phi c)) h = 0 := by
  have h1 := UpperTheory.V.TR.hasDerivAt_curve ⟨Eis ω (Phi c), hs⟩ h (kZ v) (XZ v) (kZ_zero v) (kZ_deriv v)
  have e : (fun t => (⟨Eis ω (Phi c), hs⟩ : UpperTheory.V.TR.Sm F 2).1 (h * UpperTheory.V.TR.infGL F 2 (kZ v t))) =
      fun _ => Eis ω (Phi c) h := by
    funext t
    show Eis ω (Phi c) (h * UpperTheory.V.TR.infGL F 2 (kZ v t)) = Eis ω (Phi c) h
    rw [infGL_kZ, mul_scalar_comm, central_character_holds hP hI hS F ω c H, omega_eu ω H.fin, one_mul]
  rw [e] at h1
  exact h1.unique (hasDerivAt_const 0 _)

theorem eisInt_curve (ω : HChar F) (Ψ : (Fin 2 → Ad F) → ℂ) (g : GA F 2) (y : GL (Fin 2) (UpperTheory.V.TR.Rinf F))
    (t : {r : ℝ // 0 < r}) (u : normOneSubgroup F) :
    eisInt ω Ψ (g * UpperTheory.V.TR.infGL F 2 y) t u =
      thetaS Ψ ((Matrix.GeneralLinearGroup.scalar (Fin 2) (moduleSection (w0 F) t * (u : Ideles F)) * g) *
          UpperTheory.V.TR.infGL F 2 y) *
        ((ω.1 (moduleSection (w0 F) t * (u : Ideles F)) : ℂˣ) : ℂ)⁻¹ * ((t : ℝ) : ℂ) *
        (((absD g * ∏ w, |(Matrix.GeneralLinearGroup.det y).val w|) ^ ((1 : ℝ) / 2) : ℝ) : ℂ) := by
  unfold eisInt
  rw [absD_mul_infGL, ← mul_assoc (Matrix.GeneralLinearGroup.scalar (Fin 2) (moduleSection (w0 F) t * (u : Ideles F)))]

theorem absD_nonneg' (g : GA F 2) : 0 ≤ absD g := (IdeleGroup.ideleModule F _).2.le

theorem sqrt_exp (a s : ℝ) (ha : 0 ≤ a) :
    (a * (Real.exp s * Real.exp s)) ^ ((1 : ℝ) / 2) = a ^ ((1 : ℝ) / 2) * Real.exp s := by
  rw [Real.mul_rpow ha (by positivity), ← Real.exp_add, ← Real.exp_mul]
  congr 2
  ring

theorem rowA_vecMul_mul (ξ : Fin 2 → F) (M N : GA F 2) :
    rowA ξ ᵥ* ((M * N : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F)) =
      (rowA ξ ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) ᵥ* (N : Matrix (Fin 2) (Fin 2) (Ad F)) := by
  rw [Units.val_mul, Matrix.vecMul_vecMul]

theorem pointwise (c : HeightOneSpectrum (𝓞 F) → ℕ) (ω : HChar F) (v : InfinitePlace F) (g : GA F 2)
    (t : {r : ℝ // 0 < r}) (u : normOneSubgroup F)
    (hsum : ∀ h : GA F 2, Summable (fun ξ : {ξ : Fin 2 → F // ξ ≠ 0} =>
      Phi c (rowA ξ.1 ᵥ* (h : Matrix (Fin 2) (Fin 2) (Ad F))))) :
    UpperTheory.V.TR.lieD (XA v) (fun g' => eisInt ω (Phi c) g' t u) g -
        Complex.I * UpperTheory.V.TR.lieD (XB v) (fun g' => eisInt ω (Phi c) g' t u) g =
      UpperTheory.V.TR.lieD (XZ v) (fun g' => eisInt ω (Phi c) g' t u) (g * UpperTheory.V.TR.infGL F 2 (eps v)) := by
  set f : GA F 2 → ℂ := fun g' => eisInt ω (Phi c) g' t u with hf
  set A := moduleSection (w0 F) t * (u : Ideles F)
  set M := Matrix.GeneralLinearGroup.scalar (Fin 2) A * g with hM
  set K : ℂ := ((ω.1 A : ℂˣ) : ℂ)⁻¹ * ((t : ℝ) : ℂ) * ((absD g ^ ((1 : ℝ) / 2) : ℝ) : ℂ) with hK

  obtain ⟨DAf, hDA, sA, hθA⟩ := UpperTheory.HilbertEisensteinWeightOne.SLowLib.thetaS_curve c g A (kA v) (XA v) (kA_zero v) (kA_deriv v)
  simp only [← hM] at hDA hθA
  have dA := UpperTheory.HilbertEisensteinWeightOne.Fresh.hasDerivAt_chart_curve f g (UpperTheory.HilbertEisensteinWeightOne.SLowLib.chart_eisInt_differentiableAt ω c g t u) (kA v) (XA v) (kA_zero v) (kA_deriv v)
  have eA : (fun s => f (g * UpperTheory.V.TR.infGL F 2 (kA v s))) =
      fun s => thetaS (Phi c) (M * UpperTheory.V.TR.infGL F 2 (kA v s)) * K := by
    funext s
    simp only [hf]
    rw [eisInt_curve, det_kA, mul_one, hK]
    ring
  rw [eA] at dA
  have vA := dA.unique (hθA.mul_const K)

  obtain ⟨DBf, hDB, sB, hθB⟩ := UpperTheory.HilbertEisensteinWeightOne.SLowLib.thetaS_curve c g A (kB v) (XB v) (kB_zero v) (kB_deriv v)
  simp only [← hM] at hDB hθB
  have dB := UpperTheory.HilbertEisensteinWeightOne.Fresh.hasDerivAt_chart_curve f g (UpperTheory.HilbertEisensteinWeightOne.SLowLib.chart_eisInt_differentiableAt ω c g t u) (kB v) (XB v) (kB_zero v) (kB_deriv v)
  have eB : (fun s => f (g * UpperTheory.V.TR.infGL F 2 (kB v s))) =
      fun s => thetaS (Phi c) (M * UpperTheory.V.TR.infGL F 2 (kB v s)) * K := by
    funext s
    simp only [hf]
    rw [eisInt_curve, det_kB, mul_one, hK]
    ring
  rw [eB] at dB
  have vB := dB.unique (hθB.mul_const K)

  set M' := M * UpperTheory.V.TR.infGL F 2 (eps v) with hM'
  obtain ⟨DZf, hDZ, sZ, hθZ⟩ := UpperTheory.HilbertEisensteinWeightOne.SLowLib.thetaS_curve c (g * UpperTheory.V.TR.infGL F 2 (eps v)) A (kZ v)
    (XZ v) (kZ_zero v) (kZ_deriv v)
  have hMM : Matrix.GeneralLinearGroup.scalar (Fin 2) A * (g * UpperTheory.V.TR.infGL F 2 (eps v)) = M' := by
    rw [hM', hM, mul_assoc]
  simp only [hMM] at hDZ hθZ
  have dZ := UpperTheory.HilbertEisensteinWeightOne.Fresh.hasDerivAt_chart_curve f (g * UpperTheory.V.TR.infGL F 2 (eps v)) (UpperTheory.HilbertEisensteinWeightOne.SLowLib.chart_eisInt_differentiableAt ω c _ t u) (kZ v) (XZ v) (kZ_zero v)
    (kZ_deriv v)
  have eZ : (fun s => f (g * UpperTheory.V.TR.infGL F 2 (eps v) * UpperTheory.V.TR.infGL F 2 (kZ v s))) =
      fun s => thetaS (Phi c) (M' * UpperTheory.V.TR.infGL F 2 (kZ v s)) * (K * ((Real.exp s : ℝ) : ℂ)) := by
    funext s
    simp only [hf]
    rw [eisInt_curve, det_kZ, absD_mul_infGL, det_eps, mul_one, sqrt_exp _ _ (absD_nonneg' g), hK,
      ← mul_assoc (Matrix.GeneralLinearGroup.scalar (Fin 2) A) g]
    push_cast
    ring
  rw [eZ] at dZ
  have hE : HasDerivAt (fun s : ℝ => K * ((Real.exp s : ℝ) : ℂ)) K 0 := by
    refine ((Real.hasDerivAt_exp 0).ofReal_comp.const_mul K).congr_deriv ?_
    simp
  have vZ := dZ.unique (hθZ.mul hE)
  rw [kZ_zero, map_one, mul_one, Real.exp_zero, Complex.ofReal_one, mul_one] at vZ

  have tA : ∀ ξ, DAf ξ = DA (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 0 v)
      (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 1 v) * Rt c v (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) := by
    intro ξ
    have h := hDA ξ
    simp only [rowA_vecMul_mul] at h
    exact h.unique (term_A c v _)
  have tB : ∀ ξ, DBf ξ = DB (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 0 v)
      (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 1 v) * Rt c v (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) := by
    intro ξ
    have h := hDB ξ
    simp only [rowA_vecMul_mul] at h
    exact h.unique (term_B c v _)
  have tZ : ∀ ξ, DZf ξ = DZ (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 0 v)
      (pI (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) 1 v) * Rt c v (rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) := by
    intro ξ
    have h := hDZ ξ
    simp only [hM', mul_assoc, ← map_mul, rowA_vecMul_mul] at h
    exact h.unique (term_Z c v _)
  have tE : ∀ ξ : {ξ : Fin 2 → F // ξ ≠ 0}, Phi c (rowA ξ.1 ᵥ* (M' : Matrix (Fin 2) (Fin 2) (Ad F))) =
      Phi c ((rowA ξ.1 ᵥ* (M : Matrix (Fin 2) (Fin 2) (Ad F))) ᵥ*
        ((UpperTheory.V.TR.infGL F 2 (eps v) : GA F 2) : Matrix (Fin 2) (Fin 2) (Ad F))) := fun ξ => by
    rw [hM', rowA_vecMul_mul]

  have h1 := sA.hasSum.sub (sB.hasSum.mul_left Complex.I)
  have h2 := sZ.hasSum.add (hsum M').hasSum
  have h3 : (fun ξ => DAf ξ - Complex.I * DBf ξ) =
      fun ξ => DZf ξ + Phi c (rowA ξ.1 ᵥ* (M' : Matrix (Fin 2) (Fin 2) (Ad F))) := by
    funext ξ
    rw [tA, tB, tZ, tE]
    exact term_low c v _
  rw [h3] at h1
  have key := h1.unique h2
  rw [vA, vB, vZ]
  have hθ : thetaS (Phi c) M' = ∑' ξ : {ξ : Fin 2 → F // ξ ≠ 0}, Phi c (rowA ξ.1 ᵥ* (M' : Matrix (Fin 2) (Fin 2) (Ad F))) :=
    rfl
  rw [hθ]
  linear_combination K * key

end UpperTheory.HilbertEisensteinWeightOne.eisensteinLowWeight

open UpperTheory.HilbertEisensteinWeightOne.eisensteinLowWeight in
theorem UpperTheory.HilbertEisensteinWeightOne.low_weight_holds : SPois → SInt → SSmooth → SLow := by
  intro hP hI hS F _ _ _ ω c H hs v
  set φ : UpperTheory.V.TR.Sm F 2 := ⟨Eis ω (Phi c), hs⟩
  have hA : UpperTheory.V.TR.Eop v 0 0 φ - UpperTheory.V.TR.Eop v 1 1 φ = UpperTheory.V.TR.lie F 2 (XA v) φ := by
    unfold UpperTheory.V.TR.Eop
    rw [← LinearMap.sub_apply, ← map_sub]
    rfl
  have hB : UpperTheory.V.TR.Eop v 0 1 φ + UpperTheory.V.TR.Eop v 1 0 φ = UpperTheory.V.TR.lie F 2 (XB v) φ := by
    unfold UpperTheory.V.TR.Eop
    rw [← LinearMap.add_apply, ← map_add (f := _)]
    rfl
  rw [hA, hB]
  apply Subtype.ext
  funext g
  show UpperTheory.V.TR.lieD (XA v) (Eis ω (Phi c)) g = Complex.I * UpperTheory.V.TR.lieD (XB v) (Eis ω (Phi c)) g
  obtain ⟨iA, eA⟩ := UpperTheory.HilbertEisensteinWeightOne.lieD_Eis_eq_integral hP hI H g (XA v)
  obtain ⟨iB, eB⟩ := UpperTheory.HilbertEisensteinWeightOne.lieD_Eis_eq_integral hP hI H g (XB v)
  obtain ⟨-, eZ⟩ := UpperTheory.HilbertEisensteinWeightOne.lieD_Eis_eq_integral hP hI H (g * UpperTheory.V.TR.infGL F 2 (eps v)) (XZ v)
  have hZ0 := lieD_XZ_eq_zero hP hI hS H hs v (g * UpperTheory.V.TR.infGL F 2 (eps v))
  have hsum : ∀ h : GA F 2, Summable (fun ξ : {ξ : Fin 2 → F // ξ ≠ 0} =>
      Phi c (rowA ξ.1 ᵥ* (h : Matrix (Fin 2) (Fin 2) (Ad F)))) := fun h =>
    ((hP F ω c H).choose_spec h).1.of_norm
  have hint := integral_sub iA (iB.const_mul Complex.I)
  rw [integral_const_mul] at hint
  have hpt : (fun p : {r : ℝ // 0 < r} × normOneSubgroup F =>
      UpperTheory.V.TR.lieD (XA v) (fun g' => eisInt ω (Phi c) g' p.1 p.2) g -
        Complex.I * UpperTheory.V.TR.lieD (XB v) (fun g' => eisInt ω (Phi c) g' p.1 p.2) g) =
      fun p => UpperTheory.V.TR.lieD (XZ v) (fun g' => eisInt ω (Phi c) g' p.1 p.2) (g * UpperTheory.V.TR.infGL F 2 (eps v)) :=
    funext fun p => pointwise c ω v g p.1 p.2 hsum
  rw [hpt, ← eZ, hZ0, ← eA, ← eB] at hint
  linear_combination -hint
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: PositivityTheory.AutomorphicForms.PublishedInputs.HilbertEisenstein.EisensteinLowWeight =====
