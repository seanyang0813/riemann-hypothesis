module

public import Formalism.UnipotentAdelicQuotients.EllReg
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSmoothOfRegularity
public import Formalism.UnipotentAdelicQuotients.EllRegStep
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.Analysis.Calculus.MeanValue
public import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDecay
public import Mathlib.Analysis.Calculus.ContDiff.Bounds
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Fourier.FourierTransform
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
public import Formalism.UnipotentAdelicQuotients.EllRegCut
public import Mathlib.Analysis.Calculus.BumpFunction.Basic
public import Mathlib.Analysis.Fourier.FourierTransformDeriv
public import Mathlib.Analysis.Fourier.Inversion
public import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
public import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts
public import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
public import Formalism.UnipotentAdelicQuotients.EllipticRegularity.BaseLevel
public import Formalism.UnipotentAdelicQuotients.EllipticRegularity.ConvolutionBound
public import Formalism.UnipotentAdelicQuotients.EllipticRegularity.StepCore
public import Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeakFourier
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.Fourier.Notation
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.Algebra.Order.Archimedean.Real.Hom

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegBridge, Formalism.UnipotentAdelicQuotients.EllipticRegularity.Decompose, Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernGr, Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDer, Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDil, Formalism.UnipotentAdelicQuotients.EllipticRegularity.ExistsSmoothExt, Formalism.UnipotentAdelicQuotients.EllipticRegularity.IteratedPartialFourierChar, Formalism.UnipotentAdelicQuotients.EllipticRegularity.Moments, Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingFourier, Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingLocal, Formalism.UnipotentAdelicQuotients.EllipticRegularity.SmoothOfLocallySmooth, Formalism.UnipotentAdelicQuotients.EllipticRegularity.SymbLower, Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightDiff, Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightedNormFinite, Formalism.UnipotentAdelicQuotients.EllRegCheck, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegW

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegBridge =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegBridge", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllReg\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSmoothOfRegularity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

open MeasureTheory
open scoped ContDiff

def EllRegBridge : Prop := ZetaZeros.D.EllReg.Internal → EllRegW

section bridge

variable {d : ℕ}

noncomputable abbrev brT (d : ℕ) : ZetaZeros.D.EllReg.E d ≃L[ℝ] (Fin d → ℝ) := EuclideanSpace.equiv (Fin d) ℝ

lemma brT_ev (j : Fin d) : brT d (ZetaZeros.D.EllReg.ev j) = Pi.single j 1 := by
  unfold ZetaZeros.D.EllReg.ev
  rfl

lemma dw_comp_brT (w : List (Fin d)) (f : (Fin d → ℝ) → ℂ) :
    ZetaZeros.D.EllReg.dw w (f ∘ brT d) = pdc w f ∘ brT d := by
  induction w with
  | nil => rfl
  | cons j w ih =>
    funext x
    show fderiv ℝ (ZetaZeros.D.EllReg.dw w (f ∘ brT d)) x (ZetaZeros.D.EllReg.ev j) =
      fderiv ℝ (pdc w f) (brT d x) (Pi.single j 1)
    rw [ih, (brT d).comp_right_fderiv]
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe, brT_ev]

noncomputable def brSys {ι : Type} (P : ι → SOp d) : ZetaZeros.D.EllReg.Sys d ι where
  ord i := (P i).ord
  a i n w := if h : n < (P i).ord + 1 then (P i).a ⟨n, h⟩ w ∘ brT d else 0

lemma brSys_tr {ι : Type} (P : ι → SOp d) (i : ι) (φ : (Fin d → ℝ) → ℂ) (x : ZetaZeros.D.EllReg.E d) :
    (brSys P).tr i (φ ∘ brT d) x = (P i).tr φ (brT d x) := by
  unfold ZetaZeros.D.EllReg.Sys.tr ZetaZeros.D.EllReg.trOp SOp.tr
  rw [Finset.sum_range]
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun w _ => ?_
  congr 1
  have e : (fun y => (brSys P).a i k w y * (φ ∘ brT d) y) =
      (fun y' => (P i).a k w y' * φ y') ∘ brT d := by
    funext y
    simp only [brSys, Function.comp_apply]
    rw [dif_pos (show (k : ℕ) < (P i).ord + 1 from k.isLt)]
    rfl
  rw [e, dw_comp_brT]
  rfl

lemma brSys_symb {ι : Type} (P : ι → SOp d) (i : ι) (x ξ : ZetaZeros.D.EllReg.E d) :
    (brSys P).symb i x ξ = (P i).symb (brT d x) (brT d ξ) := by
  unfold ZetaZeros.D.EllReg.Sys.symb SOp.symb
  refine Finset.sum_congr rfl fun w _ => ?_
  simp only [brSys, dif_pos (Nat.lt_succ_self _)]
  rw [mul_comm]
  rfl

end bridge

theorem elliptic_regularity_transfer_holds : EllRegBridge := by
  intro hI d ι _ P U u hU ha hu hweak hsymb
  have hHyp : ZetaZeros.D.EllReg.Hyp (brSys P) (brT d ⁻¹' U) (u ∘ brT d) := by
    refine ⟨hU.preimage (brT d).continuous, ?_, ?_, hu.comp (brT d).continuous.continuousOn (fun x hx => hx), ?_⟩
    · intro i n w
      simp only [brSys]
      split_ifs with h
      · exact (ha i ⟨n, h⟩ w).comp_continuousLinearMap ((brT d : ZetaZeros.D.EllReg.E d →L[ℝ] (Fin d → ℝ)))
      · exact contDiffOn_const
    · intro x hx ξ hξ
      have hξ' : brT d ξ ≠ 0 := fun h => hξ ((brT d).injective (h.trans (map_zero (brT d)).symm))
      obtain ⟨i, hi⟩ := hsymb (brT d x) hx (brT d ξ) hξ'
      exact ⟨i, by rw [brSys_symb]; exact hi⟩
    · intro i φ hφ hφc hφU
      have hψ : ContDiff ℝ ∞ (φ ∘ (brT d).symm) := hφ.comp (brT d).symm.contDiff
      have hψc : HasCompactSupport (φ ∘ (brT d).symm) := hφc.comp_homeomorph (brT d).symm.toHomeomorph
      have hψU : tsupport (φ ∘ (brT d).symm) ⊆ U := by
        intro y hy
        have hy' : y ∈ tsupport (φ ∘ (brT d).symm.toHomeomorph) := hy
        rw [tsupport_comp_eq_preimage φ (brT d).symm.toHomeomorph] at hy'
        have h1 := hφU hy'
        have h2 : brT d ((brT d).symm y) ∈ U := h1
        rwa [ContinuousLinearEquiv.apply_symm_apply] at h2
      have hφeq : φ = (φ ∘ (brT d).symm) ∘ brT d := by
        funext x
        simp
      have h1 := hweak i (φ ∘ (brT d).symm) hψ hψc hψU
      rw [hφeq]
      simp_rw [brSys_tr]
      rw [← h1]
      exact (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin d)).integral_comp
        (MeasurableEquiv.toLp 2 (Fin d → ℝ)).symm.measurableEmbedding
        (fun y => u y * (P i).tr (φ ∘ (brT d).symm) y)
  have key := hI d ι (brSys P) (brT d ⁻¹' U) (u ∘ brT d) hHyp
  have h2 := key.comp_continuousLinearMap (((brT d).symm : (Fin d → ℝ) →L[ℝ] ZetaZeros.D.EllReg.E d))
  have e1 : (u ∘ brT d) ∘ (((brT d).symm : (Fin d → ℝ) →L[ℝ] ZetaZeros.D.EllReg.E d)) = u := by
    funext x
    show u (brT d ((brT d).symm x)) = u x
    rw [ContinuousLinearEquiv.apply_symm_apply]
  have e2 : (((brT d).symm : (Fin d → ℝ) →L[ℝ] ZetaZeros.D.EllReg.E d)) ⁻¹' (brT d ⁻¹' U) = U := by
    ext x
    show brT d ((brT d).symm x) ∈ U ↔ x ∈ U
    rw [ContinuousLinearEquiv.apply_symm_apply]
  rw [e1, e2] at h2
  exact h2

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegBridge =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.Decompose =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.Decompose", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.FDeriv.Mul\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

namespace Dec

variable {d : ℕ}

lemma contDiff_dw {f : E d → ℂ} (hf : ContDiff ℝ ∞ f) (w : List (Fin d)) : ContDiff ℝ ∞ (dw w f) := by
  induction w with
  | nil => exact hf
  | cons j w ih =>
    show ContDiff ℝ ∞ (fun x => fderiv ℝ (dw w f) x (ev j))
    exact (contDiff_infty_iff_fderiv.mp ih).2.clm_apply contDiff_const

lemma dw_add {f g : E d → ℂ} (hf : ContDiff ℝ ∞ f) (hg : ContDiff ℝ ∞ g) (w : List (Fin d)) :
    dw w (fun y => f y + g y) = fun y => dw w f y + dw w g y := by
  induction w with
  | nil => rfl
  | cons j w ih =>
    funext x
    show fderiv ℝ (dw w (fun y => f y + g y)) x (ev j) =
      fderiv ℝ (dw w f) x (ev j) + fderiv ℝ (dw w g) x (ev j)
    have h1 := (contDiff_dw hf w).differentiable (by simp) x
    have h2 := (contDiff_dw hg w).differentiable (by simp) x
    rw [ih]
    first
      | rw [show (fun y => dw w f y + dw w g y) = dw w f + dw w g from rfl, fderiv_add h1 h2]; rfl
      | rw [fderiv_fun_add h1 h2]; rfl

lemma dw_zero (w : List (Fin d)) : dw w (fun _ : E d => (0 : ℂ)) = fun _ => 0 := by
  induction w with
  | nil => rfl
  | cons j w ih =>
    funext x
    show fderiv ℝ (dw w (fun _ : E d => (0 : ℂ))) x (ev j) = 0
    rw [ih]
    simp

lemma dw_const_mul {f : E d → ℂ} (hf : ContDiff ℝ ∞ f) (c : ℂ) (w : List (Fin d)) :
    dw w (fun y => c * f y) = fun y => c * dw w f y := by
  induction w with
  | nil => rfl
  | cons j w ih =>
    funext x
    show fderiv ℝ (dw w (fun y => c * f y)) x (ev j) = c * fderiv ℝ (dw w f) x (ev j)
    have h1 := (contDiff_dw hf w).differentiable (by simp) x
    rw [ih]
    first
      | rw [fderiv_const_mul h1]; simp
      | rw [fderiv_fun_const_mul h1]; simp
      | rw [show (fun y => c * dw w f y) = c • dw w f from rfl, fderiv_const_smul h1]; simp

lemma trOp_add (m : ℕ) (b1 b2 : (n : ℕ) → (Fin n → Fin d) → E d → ℂ) (φ : E d → ℂ)
    (h1 : ∀ n w, ContDiff ℝ ∞ (b1 n w)) (h2 : ∀ n w, ContDiff ℝ ∞ (b2 n w)) (hφ : ContDiff ℝ ∞ φ) (x : E d) :
    trOp m (fun n w y => b1 n w y + b2 n w y) φ x = trOp m b1 φ x + trOp m b2 φ x := by
  simp only [trOp]
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun n _ => ?_
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun w _ => ?_
  have e : (fun y => (b1 n w y + b2 n w y) * φ y) = fun y => b1 n w y * φ y + b2 n w y * φ y := by
    funext y
    ring
  rw [e, dw_add ((h1 n w).mul hφ) ((h2 n w).mul hφ)]
  simp only [mul_add]

lemma continuous_trOp (m : ℕ) (b : (n : ℕ) → (Fin n → Fin d) → E d → ℂ) (φ : E d → ℂ)
    (hb : ∀ n w, ContDiff ℝ ∞ (b n w)) (hφ : ContDiff ℝ ∞ φ) : Continuous (trOp m b φ) := by
  show Continuous (fun x => ∑ n ∈ Finset.range (m + 1), ∑ w : Fin n → Fin d,
    (-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * φ y) x)
  refine continuous_finsetSum _ fun n _ => continuous_finsetSum _ fun w _ => continuous_const.mul ?_
  exact (contDiff_dw ((hb n w).mul hφ) _).continuous

lemma contDiff_eF (ξ : E d) : ContDiff ℝ ∞ (eF ξ) := by
  have h1 : ContDiff ℝ ∞ (fun y : E d => ((inner ℝ y ξ : ℝ) : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp (contDiff_id.inner ℝ contDiff_const)
  exact Complex.contDiff_exp.comp ((contDiff_const.mul h1).neg)

lemma contDiff_mul_of_tsupport {U : Set (E d)} (hU : IsOpen U) {g f : E d → ℂ} (hg : ContDiff ℝ ∞ g)
    (hgU : tsupport g ⊆ U) (hf : ContDiffOn ℝ ∞ f U) : ContDiff ℝ ∞ (fun x => g x * f x) := by
  refine contDiff_iff_contDiffAt.mpr fun x => ?_
  by_cases hx : x ∈ U
  · exact hg.contDiffAt.mul (hf.contDiffAt (hU.mem_nhds hx))
  · have hx' : x ∉ tsupport g := fun h => hx (hgU h)
    have hev : g =ᶠ[𝓝 x] 0 := by
      first
        | exact notMem_tsupport_iff_eventuallyEq.mp hx'
    refine (contDiffAt_const (c := (0 : ℂ))).congr_of_eventuallyEq ?_
    filter_upwards [hev] with y hy
    simp [hy]

lemma cut_cont {U : Set (E d)} (hU : IsOpen U) {u : E d → ℂ} (hu : ContinuousOn u U) {χ : E d → ℝ}
    (hχ : ContDiff ℝ ∞ χ) (hχc : HasCompactSupport χ) (hχU : tsupport χ ⊆ U) :
    Continuous (cut χ u) ∧ HasCompactSupport (cut χ u) := by
  have hχU' : ∀ x, x ∉ U → cut χ u =ᶠ[𝓝 x] 0 := by
    intro x hx
    have hx' : x ∉ tsupport χ := fun h => hx (hχU h)
    have hev : χ =ᶠ[𝓝 x] 0 := by
      first
        | exact notMem_tsupport_iff_eventuallyEq.mp hx'
    filter_upwards [hev] with y hy
    simp [cut, hy]
  refine ⟨continuous_iff_continuousAt.mpr fun x => ?_, ?_⟩
  · by_cases hx : x ∈ U
    · exact (Complex.continuous_ofReal.comp hχ.continuous).continuousAt.mul
        (hu.continuousAt (hU.mem_nhds hx))
    · exact continuousAt_const.congr (hχU' x hx).symm
  · exact (hχc.comp_left Complex.ofReal_zero).mul_right

lemma tsupport_cut (χ : E d → ℝ) (u : E d → ℂ) : tsupport (cut χ u) ⊆ tsupport χ := by
  exact (tsupport_mul_subset_left).trans (tsupport_comp_subset Complex.ofReal_zero χ)

lemma psi_props (x0 : E d) (ψ0 : E d → ℝ) (r : ℝ) (hψ : ContDiff ℝ ∞ ψ0) (hψc : HasCompactSupport ψ0)
    (hψ1 : ∀ y ∈ ball (0 : E d) 1, ψ0 y = 1) (hψs : tsupport ψ0 ⊆ ball 0 2) (hr : 0 < r) :
    ContDiff ℝ ∞ (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ)) ∧
    HasCompactSupport (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ)) ∧
    tsupport (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ)) ⊆ ball x0 (2 * r) ∧
    ∀ x ∈ ball x0 r, ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ) = 1 := by
  have hcont : Continuous (fun x : E d => r⁻¹ • (x - x0)) :=
    (continuous_id.sub continuous_const).const_smul r⁻¹
  have hnorm : ∀ x : E d, ‖r⁻¹ • (x - x0)‖ = r⁻¹ * dist x x0 := by
    intro x
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hr), dist_eq_norm]
  have h3 : tsupport (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ)) ⊆ ball x0 (2 * r) := by
    have hsub : tsupport (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ)) ⊆
        (fun x : E d => r⁻¹ • (x - x0)) ⁻¹' tsupport ψ0 := by
      apply closure_minimal _ ((isClosed_tsupport ψ0).preimage hcont)
      intro x hx
      apply subset_tsupport
      intro h0
      apply hx
      simp [h0]
    refine hsub.trans fun x hx => ?_
    have h2 : r⁻¹ • (x - x0) ∈ ball (0 : E d) 2 := hψs hx
    rw [mem_ball_zero_iff, hnorm] at h2
    rw [mem_ball]
    calc dist x x0 = r * (r⁻¹ * dist x x0) := by field_simp
      _ < r * 2 := by gcongr
      _ = 2 * r := by ring
  refine ⟨Complex.ofRealCLM.contDiff.comp (hψ.comp ((contDiff_id.sub contDiff_const).const_smul r⁻¹)),
    ?_, h3, ?_⟩
  · exact IsCompact.of_isClosed_subset (isCompact_closedBall x0 (2 * r)) (isClosed_tsupport _)
      (h3.trans ball_subset_closedBall)
  · intro x hx
    have h1 : r⁻¹ • (x - x0) ∈ ball (0 : E d) 1 := by
      rw [mem_ball_zero_iff, hnorm]
      rw [mem_ball] at hx
      calc r⁻¹ * dist x x0 < r⁻¹ * r := by gcongr
        _ = 1 := inv_mul_cancel₀ hr.ne'
    rw [hψ1 _ h1]
    simp

lemma prod_neg_eq (n : ℕ) (w : Fin n → Fin d) (ξ : E d) :
    ((List.ofFn w).map fun j => -(2 * Real.pi * Complex.I * ((ξ j : ℝ) : ℂ))).prod = (-1 : ℂ) ^ n * mono w ξ := by
  rw [List.map_ofFn, List.prod_ofFn]
  simp only [Function.comp_def]
  rw [Finset.prod_neg, Finset.card_univ, Fintype.card_fin]
  rfl

end Dec

theorem frozenDecompositionOfParts : DecomposeOf := by
  intro hPF hDw hFP hPL hWF d ι _ P U u hyp x0 ψ0 r hψ hψc hψ1 hψs hr hball χ χ' hχ hχc hχs
    hχ' hχ'c hχ's hχχ' i
  obtain ⟨hUo, hA, -, hu, -⟩ := id hyp
  have hχU : tsupport χ ⊆ U := hχs.trans ((ball_subset_ball (by linarith)).trans hball)
  obtain ⟨c, hc, hcw⟩ := hWF d ι P U u hyp i χ χ' hχ hχc hχU hχ' hχ'c hχ's hχχ'
  obtain ⟨hψC, hψH, hψT, hψ1'⟩ := Dec.psi_props x0 ψ0 r hψ hψc hψ1 hψs hr
  obtain ⟨hgc, hgs⟩ := Dec.cut_cont hUo hu hχ hχc hχU
  obtain ⟨hg'c, hg's⟩ := Dec.cut_cont hUo hu hχ' hχ'c hχ's
  set m := P.ord i with hm
  have hψU := hψT.trans hball
  let lo : (n : ℕ) → (Fin n → Fin d) → E d → ℂ := fun n w x =>
    ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ) * (P.a i n w x - if n = m then P.a i n w x0 else 0)
  let b2 : (n : ℕ) → (Fin n → Fin d) → E d → ℂ := fun n w _ => if n = m then P.a i n w x0 else 0
  have hlo : ∀ n w, ContDiff ℝ ∞ (lo n w) ∧ HasCompactSupport (lo n w) := fun n w =>
    ⟨Dec.contDiff_mul_of_tsupport hUo hψC hψU ((hA i n w).sub contDiffOn_const), hψH.mul_right⟩
  have hb2 : ∀ n w, ContDiff ℝ ∞ (b2 n w) := fun n w => contDiff_const
  refine ⟨lo, c, hlo, hc, fun ξ => ?_⟩
  have hφ := Dec.contDiff_eF ξ
  have hterm : ∀ n (w : Fin n → Fin d), ∫ y, cut χ' u y * c n w y * dw (List.ofFn w) (eF ξ) y =
      (-1 : ℂ) ^ n * mono w ξ * conv (𝓕 (c n w)) (𝓕 (cut χ' u)) ξ := by
    intro n w
    have hpf := hPF d 0 (fun _ _ => c n w) (cut χ' u) (fun _ _ => hc n w) hg'c hg's ξ
    have htr0 : ∀ y, trOp 0 (fun _ _ => c n w) (eF ξ) y = c n w y * eF ξ y := by
      intro y
      simp [trOp, dw]
    have hmono0 : ∀ (w' : Fin 0 → Fin d) (η : E d), mono w' η = 1 := by
      intro w' η
      simp [mono]
    simp only [htr0] at hpf
    have e1 : (fun y => cut χ' u y * c n w y * dw (List.ofFn w) (eF ξ) y) =
        fun y => ((-1 : ℂ) ^ n * mono w ξ) * (cut χ' u y * (c n w y * eF ξ y)) := by
      funext y
      simp only [hDw d ξ (List.ofFn w), Dec.prod_neg_eq]
      ring
    rw [e1, integral_const_mul, hpf]
    simp [hmono0]
  have hR : ∫ y, cut χ u y * P.tr i (eF ξ) y = ∑ n ∈ Finset.range m, ∑ w : Fin n → Fin d,
      (-1 : ℂ) ^ n * mono w ξ * conv (𝓕 (c n w)) (𝓕 (cut χ' u)) ξ := by
    rw [hcw ξ]
    exact Finset.sum_congr rfl fun n _ => Finset.sum_congr rfl fun w _ => hterm n w
  have hloc := hPL d m (P.a i) (fun n w y => lo n w y + b2 n w y) (cut χ u) (eF ξ) (ball x0 r)
    isOpen_ball ((Dec.tsupport_cut χ u).trans hχs) (by
      intro n w x hx
      have h1 := hψ1' x hx
      simp only [lo, b2, h1]
      split_ifs <;> ring)
  have hsplit : ∀ y, trOp m (fun n w y => lo n w y + b2 n w y) (eF ξ) y =
      trOp m lo (eF ξ) y + trOp m b2 (eF ξ) y :=
    fun y => Dec.trOp_add m lo b2 (eF ξ) (fun n w => (hlo n w).1) hb2 hφ y
  have hb2e : ∀ y, trOp m b2 (eF ξ) y =
      (∑ w : Fin m → Fin d, P.a i m w x0 * mono w ξ) * eF ξ y := by
    intro y
    simp only [trOp]
    rw [Finset.sum_range_succ, Finset.sum_eq_zero, zero_add, Finset.sum_mul]
    · refine Finset.sum_congr rfl fun w _ => ?_
      simp only [b2, if_true]
      rw [Dec.dw_const_mul hφ, hDw d ξ (List.ofFn w), Dec.prod_neg_eq]
      beta_reduce
      have hsq : ((-1 : ℂ) ^ m) * (-1) ^ m = 1 := by
        rw [← mul_pow]
        norm_num
      linear_combination (P.a i m w x0 * mono w ξ * eF ξ y) * hsq
    · intro n hn
      have hne : n ≠ m := (Finset.mem_range.mp hn).ne
      refine Finset.sum_eq_zero fun w _ => ?_
      simp only [b2, if_neg hne, zero_mul]
      rw [Dec.dw_zero]
      simp
  have hint1 : Integrable (fun y => cut χ u y * trOp m lo (eF ξ) y) :=
    (hgc.mul (Dec.continuous_trOp m lo (eF ξ) (fun n w => (hlo n w).1) hφ)).integrable_of_hasCompactSupport
      hgs.mul_right
  have hint2 : Integrable (fun y => cut χ u y * trOp m b2 (eF ξ) y) :=
    (hgc.mul (Dec.continuous_trOp m b2 (eF ξ) hb2 hφ)).integrable_of_hasCompactSupport hgs.mul_right
  have hconst : ∫ y, cut χ u y * trOp m b2 (eF ξ) y =
      (∑ w : Fin m → Fin d, P.a i m w x0 * mono w ξ) * 𝓕 (cut χ u) ξ := by
    simp_rw [hb2e]
    rw [← hFP d (cut χ u) hgc hgs ξ, ← integral_const_mul]
    congr 1
    funext y
    ring
  have key : ∫ y, cut χ u y * P.tr i (eF ξ) y =
      (∑ w : Fin m → Fin d, P.a i m w x0 * mono w ξ) * 𝓕 (cut χ u) ξ +
        ∑ n ∈ Finset.range (m + 1), ∑ w : Fin n → Fin d,
          conv (𝓕 (lo n w)) (fun η => mono w η * 𝓕 (cut χ u) η) ξ := by
    calc ∫ y, cut χ u y * P.tr i (eF ξ) y
        = ∫ y, cut χ u y * trOp m (fun n w y => lo n w y + b2 n w y) (eF ξ) y := hloc
      _ = ∫ y, (cut χ u y * trOp m lo (eF ξ) y + cut χ u y * trOp m b2 (eF ξ) y) := by
          congr 1
          funext y
          rw [hsplit y, mul_add]
      _ = (∫ y, cut χ u y * trOp m lo (eF ξ) y) + ∫ y, cut χ u y * trOp m b2 (eF ξ) y :=
          integral_add hint1 hint2
      _ = _ := by
          rw [hPF d m lo (cut χ u) hlo hgc hgs ξ, hconst, add_comm]
  have hlom : ∀ w : Fin m → Fin d,
      lo m w = fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ) * (P.a i m w x - P.a i m w x0) := by
    intro w
    funext x
    simp only [lo, if_true]
  rw [← hR, key, Finset.sum_range_succ]
  simp only [hlom]
  ring

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.Decompose =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernGr =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernGr", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllReg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.MeanValue\nimport Mathlib.Analysis.Fourier.Notation\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

lemma gr_zero {d : ℕ} (b : E d → ℂ) (hb : ContDiff ℝ ∞ b) (L : ℝ) (hL : ∀ x, ‖fderiv ℝ b x‖ ≤ L)
    (x0 y : E d) (r : ℝ) (hr : 0 < r) : ‖b (x0 + r • y) - b x0‖ ≤ L * (r * ‖y‖) := by
  have hd : Differentiable ℝ b := hb.differentiable (by simp)
  have := Convex.norm_image_sub_le_of_norm_fderiv_le (fun x _ => hd x) (fun x _ => hL x)
    convex_univ (Set.mem_univ x0) (Set.mem_univ (x0 + r • y))
  rwa [add_sub_cancel_left, norm_smul, Real.norm_of_nonneg hr.le] at this

lemma gr_pos {d : ℕ} (b : E d → ℂ) (hb : ContDiff ℝ ∞ b) (k : ℕ) (hk0 : 0 < k) (M : ℝ)
    (hM : ∀ x, ‖iteratedFDeriv ℝ k b x‖ ≤ M) (x0 y : E d) (r : ℝ) (hr : 0 < r) :
    ‖iteratedFDeriv ℝ k (fun y => b (x0 + r • y) - b x0) y‖ ≤ M * r ^ k := by
  have hk : k ≠ 0 := hk0.ne'
  have hkle : (k : ℕ∞ω) ≤ ((⊤ : ℕ∞) : ℕ∞ω) := by exact_mod_cast (ENat.natCast_lt_top k).le
  obtain ⟨g, hg⟩ : ∃ g : E d →L[ℝ] E d, g = r • ContinuousLinearMap.id ℝ (E d) := ⟨_, rfl⟩
  have hshift : ContDiff ℝ ∞ (fun z => b (x0 + z)) := hb.comp (contDiff_const.add contDiff_id)
  have hfun : (fun y => b (x0 + r • y) - b x0) = ((fun z => b (x0 + z)) ∘ g) - fun _ => b x0 := by
    funext y; simp [hg]
  rw [hfun, iteratedFDeriv_sub_apply (((hshift.comp g.contDiff).of_le hkle).contDiffAt)
    contDiffAt_const, iteratedFDeriv_const_of_ne hk, Pi.zero_apply, sub_zero,
    g.iteratedFDeriv_comp_right hshift y hkle, iteratedFDeriv_comp_add_left]
  have hgn : ‖g‖ ≤ r := by
    rw [hg]
    refine (norm_smul_le r _).trans ?_
    rw [Real.norm_of_nonneg hr.le]
    exact mul_le_of_le_one_right hr.le ContinuousLinearMap.norm_id_le
  calc _ ≤ ‖iteratedFDeriv ℝ k b (x0 + g y)‖ * ∏ _i : Fin k, ‖g‖ :=
        ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _
    _ ≤ M * r ^ k := by
      rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
      exact mul_le_mul (hM _) (pow_le_pow_left₀ (norm_nonneg _) hgn k) (by positivity)
        ((norm_nonneg _).trans (hM 0))

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernGr =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDer =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDer", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDecay\npublic import Formalism.UnipotentAdelicQuotients.EllReg\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernGr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section



lemma derivL1Norm_rescaled_difference_le {d : ℕ} (ψ : E d → ℂ) (hψ : ContDiff ℝ ∞ ψ) (hψc : HasCompactSupport ψ)
    (b : E d → ℂ) (hb : ContDiff ℝ ∞ b) (hbc : HasCompactSupport b) (x0 : E d) (r0 : ℝ) (n : ℕ) :
    ∃ K : ℝ, ∀ r : ℝ, 0 < r → r ≤ r0 →
      derivL1Norm (fun y => ψ y * (b (x0 + r • y) - b x0)) n ≤ K * r := by
  classical
  have hinf : ∀ m : ℕ, (m : WithTop ℕ∞) ≤ ((⊤ : ℕ∞) : WithTop ℕ∞) := fun m => by exact_mod_cast le_top
  have hbnd : ∀ k : ℕ, ∃ M : ℝ, 0 ≤ M ∧ ∀ x, ‖iteratedFDeriv ℝ k b x‖ ≤ M := by
    intro k
    obtain ⟨M, hM⟩ := (hb.continuous_iteratedFDeriv (hinf k)).norm.bddAbove_range_of_hasCompactSupport
      (hbc.iteratedFDeriv (𝕜 := ℝ) k).norm
    exact ⟨max M 0, le_max_right _ _, fun x => (hM ⟨x, rfl⟩).trans (le_max_left _ _)⟩
  choose M hM0 hM using hbnd
  obtain ⟨L0, hL0⟩ := (hb.continuous_fderiv (by simp)).norm.bddAbove_range_of_hasCompactSupport
    (hbc.fderiv (𝕜 := ℝ)).norm
  have hL : ∀ x, ‖fderiv ℝ b x‖ ≤ max L0 0 := fun x => (hL0 ⟨x, rfl⟩).trans (le_max_left _ _)
  have hLn : 0 ≤ max L0 0 := le_max_right _ _
  have hR1 : 1 ≤ max 1 r0 := le_max_left _ _
  have hsumn : 0 ≤ ∑ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k :=
    Finset.sum_nonneg fun k _ => mul_nonneg (hM0 k) (by positivity)
  have hAL : max L0 0 ≤ max L0 0 + ∑ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k :=
    le_add_of_nonneg_right hsumn
  have hAk : ∀ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k ≤
      max L0 0 + ∑ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k := fun k hk =>
    (Finset.single_le_sum (f := fun k => M k * (max 1 r0) ^ k)
      (fun k _ => mul_nonneg (hM0 k) (by positivity)) hk).trans (le_add_of_nonneg_left hLn)
  have hA0 : 0 ≤ max L0 0 + ∑ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k := hLn.trans hAL
  set A := max L0 0 + ∑ k ∈ Finset.range (n + 1), M k * (max 1 r0) ^ k with hA
  let h : ℕ → E d → ℝ := fun j y =>
    ∑ i ∈ Finset.range (j + 1), (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ * (1 + ‖y‖)
  have hhi : ∀ j, Integrable (h j) := by
    intro j
    show Integrable (fun y =>
      ∑ i ∈ Finset.range (j + 1), (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ * (1 + ‖y‖))
    refine MeasureTheory.integrable_finsetSum _ fun i _ => ?_
    have h0 := integrable_iteratedFDeriv hψ hψc 0 i
    have h1 := integrable_iteratedFDeriv hψ hψc 1 i
    have he : (fun y => (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ * (1 + ‖y‖)) = fun y =>
        (j.choose i : ℝ) * (‖y‖ ^ 0 * ‖iteratedFDeriv ℝ i ψ y‖ + ‖y‖ ^ 1 * ‖iteratedFDeriv ℝ i ψ y‖) := by
      funext y
      ring
    rw [he]
    exact (h0.add h1).const_mul _
  refine ⟨A * ∑ j ∈ Finset.range (n + 1), ∫ y, h j y, fun r hr hr0 => ?_⟩
  have hg : ContDiff ℝ ∞ (fun y => b (x0 + r • y) - b x0) := by
    have h1 : ContDiff ℝ ∞ (fun y : E d => x0 + r • y) := by fun_prop
    exact (hb.comp h1).sub contDiff_const
  have hgb : ∀ k ∈ Finset.range (n + 1), ∀ y,
      ‖iteratedFDeriv ℝ k (fun y => b (x0 + r • y) - b x0) y‖ ≤ r * A * (1 + ‖y‖) := by
    intro k hk y
    have hy : 0 ≤ ‖y‖ := norm_nonneg _
    rcases Nat.eq_zero_or_pos k with hk0 | hk0
    · subst hk0
      rw [norm_iteratedFDeriv_zero]
      have h1 := gr_zero b hb (max L0 0) hL x0 y r hr
      linarith [mul_le_mul_of_nonneg_left hAL (mul_nonneg hr.le hy), mul_nonneg hr.le hA0]
    · have h1 := gr_pos b hb k hk0 (M k) (hM k) x0 y r hr
      have hrk : r ^ k ≤ r * (max 1 r0) ^ k := by
        calc r ^ k = r * r ^ (k - 1) := by rw [← pow_succ', Nat.sub_add_cancel hk0]
          _ ≤ r * (max 1 r0) ^ (k - 1) :=
            mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hr.le (hr0.trans (le_max_right _ _)) _) hr.le
          _ ≤ r * (max 1 r0) ^ k :=
            mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hR1 (Nat.sub_le _ _)) hr.le
      have h2 : M k * r ^ k ≤ r * A := by
        calc M k * r ^ k ≤ M k * (r * (max 1 r0) ^ k) := mul_le_mul_of_nonneg_left hrk (hM0 k)
          _ = r * (M k * (max 1 r0) ^ k) := by ring
          _ ≤ r * A := mul_le_mul_of_nonneg_left (hAk k hk) hr.le
      exact (h1.trans h2).trans (le_mul_of_one_le_right (mul_nonneg hr.le hA0) (by linarith))
  have hpt : ∀ j ∈ Finset.range (n + 1), ∀ y,
      ‖iteratedFDeriv ℝ j (fun y => ψ y * (b (x0 + r • y) - b x0)) y‖ ≤ r * A * h j y := by
    intro j hj y
    refine (norm_iteratedFDeriv_mul_le hψ hg y (hinf j)).trans ?_
    simp only [h, Finset.mul_sum]
    refine Finset.sum_le_sum fun i hi => ?_
    have hji : j - i ∈ Finset.range (n + 1) :=
      Finset.mem_range.mpr (by have := Finset.mem_range.mp hj; omega)
    have h3 := hgb (j - i) hji y
    have hc : (0 : ℝ) ≤ (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ := by positivity
    calc (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ *
          ‖iteratedFDeriv ℝ (j - i) (fun y => b (x0 + r • y) - b x0) y‖
        ≤ (j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ * (r * A * (1 + ‖y‖)) :=
          mul_le_mul_of_nonneg_left h3 hc
      _ = r * A * ((j.choose i : ℝ) * ‖iteratedFDeriv ℝ i ψ y‖ * (1 + ‖y‖)) := by ring
  unfold derivL1Norm
  calc ∑ j ∈ Finset.range (n + 1), ∫ y, ‖iteratedFDeriv ℝ j (fun y => ψ y * (b (x0 + r • y) - b x0)) y‖
      ≤ ∑ j ∈ Finset.range (n + 1), ∫ y, r * A * h j y := by
        refine Finset.sum_le_sum fun j hj => ?_
        exact integral_mono_of_nonneg (Filter.Eventually.of_forall fun y => norm_nonneg _)
          ((hhi j).const_mul _) (Filter.Eventually.of_forall fun y => hpt j hj y)
    _ = (A * ∑ j ∈ Finset.range (n + 1), ∫ y, h j y) * r := by
        rw [Finset.mul_sum, Finset.sum_mul]
        refine Finset.sum_congr rfl fun j _ => ?_
        rw [integral_const_mul]
        ring

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDer =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDil =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDil", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Fourier.FourierTransform\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Measure.Haar.NormedSpace\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
  [MeasurableSpace V] [BorelSpace V]

lemma norm_fourier_comp_dil (c : V → ℂ) (r : ℝ) (hr : 0 < r) (x0 w : V) :
    ‖𝓕 (fun x => c (r⁻¹ • (x - x0))) w‖ = r ^ Module.finrank ℝ V * ‖𝓕 c (r • w)‖ := by
  have hrw : ∀ y : V, Complex.exp (↑(-2 * Real.pi * inner ℝ (r • y + x0) w) * Complex.I) • c y =
      Complex.exp (↑(-2 * Real.pi * inner ℝ x0 w) * Complex.I) *
        (Complex.exp (↑(-2 * Real.pi * inner ℝ y (r • w)) * Complex.I) • c y) := by
    intro y
    rw [smul_eq_mul, smul_eq_mul, ← mul_assoc, ← Complex.exp_add]
    congr 2
    rw [inner_add_left, real_inner_smul_left, real_inner_smul_right]
    push_cast
    ring
  rw [Real.fourier_eq', Real.fourier_eq']
  have h1 : (∫ v : V, Complex.exp (↑(-2 * Real.pi * inner ℝ v w) * Complex.I) • c (r⁻¹ • (v - x0))) =
      ∫ v : V, (fun y => Complex.exp (↑(-2 * Real.pi * inner ℝ (r • y + x0) w) * Complex.I) • c y)
        (r⁻¹ • v) := by
    rw [← MeasureTheory.integral_add_right_eq_self _ x0]
    congr 1
    funext v
    simp only [add_sub_cancel_right, smul_inv_smul₀ hr.ne']
  have h2 := MeasureTheory.Measure.integral_comp_inv_smul_of_nonneg (MeasureTheory.volume : MeasureTheory.Measure V)
    (fun y => Complex.exp (↑(-2 * Real.pi * inner ℝ (r • y + x0) w) * Complex.I) • c y) hr.le
  rw [h1.trans h2]
  simp only [hrw]
  rw [MeasureTheory.integral_const_mul, norm_smul, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul,
    Real.norm_eq_abs, abs_of_nonneg (by positivity)]

lemma lintegral_dil_weight (r : ℝ) (hr : 0 < r) (D : ℝ) (hD : (Module.finrank ℝ V : ℝ) < D) :
    (∫⁻ w : V, ENNReal.ofReal (r ^ Module.finrank ℝ V * (1 + ‖r • w‖) ^ (-D))) =
      ∫⁻ w : V, ENNReal.ofReal ((1 + ‖w‖) ^ (-D)) := by
  have hr0 : r ≠ 0 := hr.ne'
  have hmeas : Measurable (fun w : V => r • w) := measurable_const_smul r
  have hg : Measurable (fun u : V => ENNReal.ofReal ((1 + ‖u‖) ^ (-D))) := by fun_prop
  have h1 : ∀ w : V, ENNReal.ofReal (r ^ Module.finrank ℝ V * (1 + ‖r • w‖) ^ (-D)) =
      ENNReal.ofReal (r ^ Module.finrank ℝ V) * ENNReal.ofReal ((1 + ‖r • w‖) ^ (-D)) :=
    fun w => ENNReal.ofReal_mul (by positivity)
  simp_rw [h1]
  have hg' : Measurable (fun w : V => ENNReal.ofReal ((1 + ‖r • w‖) ^ (-D))) := hg.comp hmeas
  rw [MeasureTheory.lintegral_const_mul _ hg']
  rw [← MeasureTheory.lintegral_map hg hmeas, MeasureTheory.Measure.map_addHaar_smul _ hr0,
    MeasureTheory.lintegral_smul_measure, smul_eq_mul, ← mul_assoc, ← ENNReal.ofReal_mul (by positivity),
    abs_of_pos (by positivity), mul_inv_cancel₀ (by positivity), ENNReal.ofReal_one, one_mul]

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDil =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.ExistsSmoothExt =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.ExistsSmoothExt", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDer\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.KernDecay\npublic import Mathlib.Analysis.Calculus.BumpFunction.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

lemma exists_smooth_ext {d : ℕ} {U : Set (E d)} {a : E d → ℂ} {x0 : E d} (hU : IsOpen U) (hx0 : x0 ∈ U)
    (ha : ContDiffOn ℝ ∞ a U) :
    ∃ r0 > 0, ball x0 (2 * r0) ⊆ U ∧ ∃ b : E d → ℂ, ContDiff ℝ ∞ b ∧ HasCompactSupport b ∧
      ∀ x ∈ closedBall x0 (2 * r0), b x = a x := by
  obtain ⟨R, hR, hRU⟩ := Metric.isOpen_iff.1 hU x0 hx0
  let χ : ContDiffBump x0 := ⟨R / 2, 3 * R / 4, by positivity, by linarith⟩
  refine ⟨R / 4, by positivity, ?_, fun x => ((χ x : ℝ) : ℂ) * a x, ?_, ?_, ?_⟩
  · exact (Metric.ball_subset_ball (by linarith)).trans hRU
  · have hsub : tsupport χ ⊆ U := by
      rw [χ.tsupport_eq]
      exact (Metric.closedBall_subset_ball (by show 3 * R / 4 < R; linarith)).trans hRU
    refine contDiff_iff_contDiffAt.2 fun x => ?_
    by_cases hx : x ∈ U
    · exact ((Complex.ofRealCLM.contDiff.comp χ.contDiff).contDiffAt).mul
        ((ha x hx).contDiffAt (hU.mem_nhds hx))
    · have hx' : x ∉ tsupport χ := fun h => hx (hsub h)
      have hev : (fun x => ((χ x : ℝ) : ℂ) * a x) =ᶠ[nhds x] fun _ => 0 := by
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hx'] with y hy
        simp [hy]
      exact contDiffAt_const.congr_of_eventuallyEq hev
  · exact (χ.hasCompactSupport.comp_left Complex.ofReal_zero).mul_right
  · intro x hx
    have hx' : x ∈ Metric.closedBall x0 χ.rIn := by
      show x ∈ Metric.closedBall x0 (R / 2)
      exact Metric.closedBall_subset_closedBall (by linarith) hx
    simp [χ.one_of_mem_closedBall hx']

lemma norm_lt_of_psi_ne {d : ℕ} {ψ0 : E d → ℝ} (hψ0s : tsupport ψ0 ⊆ ball 0 2) {r : ℝ} (hr : 0 < r)
    {x x0 : E d} (hz : ψ0 (r⁻¹ • (x - x0)) ≠ 0) : ‖x - x0‖ < 2 * r := by
  have hmem : r⁻¹ • (x - x0) ∈ ball (0 : E d) 2 := hψ0s (subset_tsupport _ hz)
  rw [mem_ball_zero_iff, norm_smul, Real.norm_eq_abs, abs_inv, abs_of_pos hr] at hmem
  rw [inv_mul_lt_iff₀ hr] at hmem
  linarith

theorem frozenKernelSmall : KernelSmall := by
  intro d U a x0 ψ0 hU hx0 ha hψ hψc hψs
  obtain ⟨r0, hr0, hball, b, hb, hbc, hab⟩ := exists_smooth_ext hU hx0 ha
  have hψC : ContDiff ℝ ∞ (fun y : E d => ((ψ0 y : ℝ) : ℂ)) := Complex.ofRealCLM.contDiff.comp hψ
  have hψCc : HasCompactSupport (fun y : E d => ((ψ0 y : ℝ) : ℂ)) := hψc.comp_left Complex.ofReal_zero
  set n := Module.finrank ℝ (E d) + 1 with hn
  obtain ⟨K, hK⟩ := derivL1Norm_rescaled_difference_le (fun y => ((ψ0 y : ℝ) : ℂ)) hψC hψCc b hb hbc x0 r0 n
  set I := ∫⁻ w : E d, ENNReal.ofReal ((1 + ‖w‖) ^ (-((n : ℕ) : ℝ))) with hIdef
  have hI : I < ⊤ := finite_integral_one_add_norm (by rw [hn]; push_cast; linarith)
  let c : ℝ → E d → ℂ := fun r y => ((ψ0 y : ℝ) : ℂ) * (b (x0 + r • y) - b x0)
  have hcs : ∀ r, ContDiff ℝ ∞ (c r) := fun r =>
    hψC.mul ((hb.comp (contDiff_const.add (contDiff_id.const_smul r))).sub contDiff_const)
  have hcc : ∀ r, HasCompactSupport (c r) := fun r => hψCc.mul_right
  have hf_eq : ∀ r : ℝ, 0 < r → r ≤ r0 →
      (fun x => ((ψ0 (r⁻¹ • (x - x0)) : ℝ) : ℂ) * (a x - a x0)) = fun x => c r (r⁻¹ • (x - x0)) := by
    intro r hr hrr
    funext x
    have hx : x0 + r • (r⁻¹ • (x - x0)) = x := by
      rw [smul_smul, mul_inv_cancel₀ hr.ne', one_smul, add_sub_cancel]
    simp only [c, hx]
    by_cases hz : ψ0 (r⁻¹ • (x - x0)) = 0
    · simp [hz]
    · have hlt := norm_lt_of_psi_ne hψs hr hz
      have hxm : x ∈ closedBall x0 (2 * r0) := by
        rw [mem_closedBall, dist_eq_norm]; linarith
      rw [hab x hxm, hab x0 (mem_closedBall_self (by linarith))]
  refine ⟨r0, hr0, (2 ^ n * (1 + 2 ^ n)) * K * I.toReal, hball, fun r hr hrr => ⟨?_, fun N => ?_⟩⟩
  · rw [hf_eq r hr hrr]
    have h2 := hK r hr hrr
    have hKr : 0 ≤ K * r := (derivL1Norm_nonneg _ _).trans h2
    have hA : (0 : ℝ) ≤ 2 ^ n * (1 + 2 ^ n) := by positivity
    have hAKr : 0 ≤ 2 ^ n * (1 + 2 ^ n) * K * r := by
      rw [mul_assoc]; exact mul_nonneg hA hKr
    have hpt : ∀ ζ : E d, ‖𝓕 (fun x => c r (r⁻¹ • (x - x0))) ζ‖ₑ ≤
        ENNReal.ofReal (2 ^ n * (1 + 2 ^ n) * K * r) *
          ENNReal.ofReal (r ^ Module.finrank ℝ (E d) * (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ))) := by
      intro ζ
      rw [← ofReal_norm, norm_fourier_comp_dil _ r hr x0 ζ, ← ENNReal.ofReal_mul hAKr]
      apply ENNReal.ofReal_le_ofReal
      have h1 := norm_fourier_le_rpow (hcs r) (hcc r) n (r • ζ)
      have hW : 0 ≤ (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ)) := Real.rpow_nonneg (by positivity) _
      have hrd : 0 ≤ r ^ Module.finrank ℝ (E d) := by positivity
      calc r ^ Module.finrank ℝ (E d) * ‖𝓕 (c r) (r • ζ)‖
          ≤ r ^ Module.finrank ℝ (E d) *
              (2 ^ n * (1 + 2 ^ n) * derivL1Norm (c r) n * (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ))) :=
            mul_le_mul_of_nonneg_left h1 hrd
        _ ≤ r ^ Module.finrank ℝ (E d) *
              (2 ^ n * (1 + 2 ^ n) * (K * r) * (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ))) := by
            gcongr
        _ = 2 ^ n * (1 + 2 ^ n) * K * r *
              (r ^ Module.finrank ℝ (E d) * (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ))) := by ring
    calc (∫⁻ ζ, ‖𝓕 (fun x => c r (r⁻¹ • (x - x0))) ζ‖ₑ)
        ≤ ∫⁻ ζ : E d, ENNReal.ofReal (2 ^ n * (1 + 2 ^ n) * K * r) *
          ENNReal.ofReal (r ^ Module.finrank ℝ (E d) * (1 + ‖r • ζ‖) ^ (-((n : ℕ) : ℝ))) :=
          lintegral_mono hpt
      _ = ENNReal.ofReal (2 ^ n * (1 + 2 ^ n) * K * r) * I := by
          rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top,
            lintegral_dil_weight r hr _ (by rw [hn]; push_cast; linarith)]
      _ = ENNReal.ofReal (2 ^ n * (1 + 2 ^ n) * K * I.toReal * r) := by
          rw [← ENNReal.ofReal_toReal hI.ne, ← ENNReal.ofReal_mul hAKr, ENNReal.toReal_ofReal
            ENNReal.toReal_nonneg]
          ring_nf
  · rw [hf_eq r hr hrr]
    have hsm : ContDiff ℝ ∞ (fun x => c r (r⁻¹ • (x - x0))) :=
      (hcs r).comp ((contDiff_id.sub contDiff_const).const_smul r⁻¹)
    have hsc : HasCompactSupport (fun x => c r (r⁻¹ • (x - x0))) :=
      (hcc r).comp_homeomorph ((Homeomorph.subRight x0).trans (Homeomorph.smulOfNeZero r⁻¹ (inv_ne_zero hr.ne')))
    refine lt_of_le_of_lt (lintegral_mono fun ζ => ?_) (lintegral_weight_fourier_lt_top hsm hsc ⌈N + 1⌉₊)
    gcongr
    have h1 : 1 ≤ 1 + ‖ζ‖ := by linarith [norm_nonneg ζ]
    calc ‖ζ‖ * (1 + ‖ζ‖) ^ N ≤ (1 + ‖ζ‖) ^ (1 : ℝ) * (1 + ‖ζ‖) ^ N := by
          rw [Real.rpow_one]; gcongr; linarith
      _ = (1 + ‖ζ‖) ^ (N + 1) := by rw [← Real.rpow_add (by linarith)]; ring_nf
      _ ≤ (1 + ‖ζ‖) ^ ((⌈N + 1⌉₊ : ℕ) : ℝ) := Real.rpow_le_rpow_of_exponent_le h1 (Nat.le_ceil _)
      _ = (1 + ‖ζ‖) ^ ⌈N + 1⌉₊ := Real.rpow_natCast _ _

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.ExistsSmoothExt =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.IteratedPartialFourierChar =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.IteratedPartialFourierChar", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.FDeriv.Mul\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable def eL {d : ℕ} (ξ : E d) : E d →L[ℝ] ℂ :=
  (-(2 * (Real.pi : ℂ) * Complex.I)) • (Complex.ofRealCLM.comp (innerSL ℝ ξ))

lemma eF_eq_exp {d : ℕ} (ξ : E d) : eF ξ = fun y => Complex.exp (eL ξ y) := by
  funext y
  simp only [eF, eL, ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply,
    innerSL_apply_apply, Complex.ofRealCLM_apply, smul_eq_mul, real_inner_comm y ξ]
  ring_nf

lemma hasFDerivAt_eF {d : ℕ} (ξ y : E d) :
    HasFDerivAt (eF ξ) (Complex.exp (eL ξ y) • eL ξ) y := by
  rw [eF_eq_exp]
  exact (eL ξ).hasFDerivAt.cexp

lemma eL_ev {d : ℕ} (ξ : E d) (j : Fin d) : eL ξ (ev j) = -(2 * Real.pi * Complex.I * ((ξ j : ℝ) : ℂ)) := by
  simp only [eL, ev, ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply,
    innerSL_apply_apply, Complex.ofRealCLM_apply, smul_eq_mul, EuclideanSpace.inner_single_right]
  simp

theorem iteratedPartialFourierChar : DwExp := by
  intro d ξ w
  induction w with
  | nil => funext y; simp [dw]
  | cons j w ih =>
    funext x
    have hfun : dw w (eF ξ) =
        fun y => (w.map fun j => -(2 * Real.pi * Complex.I * ((ξ j : ℝ) : ℂ))).prod * eF ξ y := ih
    show fderiv ℝ (dw w (eF ξ)) x (ev j) = _
    rw [hfun, ((hasFDerivAt_eF ξ x).const_mul _).fderiv]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul, eL_ev, List.map_cons, List.prod_cons,
      eF_eq_exp]
    ring

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.IteratedPartialFourierChar =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.Moments =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.Moments", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Fourier.FourierTransformDeriv\npublic import Mathlib.Analysis.Fourier.Inversion\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

theorem moments_integrable_of_nrm {d : ℕ} (F : E d → ℂ) (hF : Continuous F)
    (h : ∀ s : ℕ, nrm (s : ℝ) 0 0 F < ⊤) (n : ℕ) :
    Integrable (fun v : E d => ‖v‖ ^ n * ‖F v‖) := by
  set m : ℕ := n + (d + 1) with hm
  let A : E d → ℝ := fun v => (1 + ‖v‖ ^ 2) ^ m * ‖F v‖ ^ 2
  let B : E d → ℝ := fun v => (1 + ‖v‖ ^ 2) ^ (-(2 * ((d : ℝ) + 1)) / 2)
  have hAm : Continuous A := by
    have : Continuous fun v : E d => (1 + ‖v‖ ^ 2) := by fun_prop
    exact (this.pow m).mul ((continuous_norm.comp hF).pow 2)
  have hA : Integrable A := by
    refine ⟨hAm.aestronglyMeasurable, ?_⟩
    have hs := h m
    unfold nrm om at hs
    rw [HasFiniteIntegral]
    refine lt_of_le_of_lt (lintegral_mono fun v => le_of_eq ?_) hs
    have ht0 : (0 : ℝ) ≤ 1 + ‖v‖ ^ 2 := by positivity
    rw [Real.enorm_eq_ofReal (by positivity), ← ofReal_norm, ← ENNReal.ofReal_pow (by positivity),
      ← ENNReal.ofReal_pow (by positivity), ← ENNReal.ofReal_mul (by positivity)]
    congr 1
    simp only [A]
    congr 1
    simp only [ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow, zero_mul, add_zero, zero_div, neg_zero,
      Real.rpow_zero, mul_one]
    rw [← Real.rpow_natCast ((1 + ‖v‖ ^ 2) ^ ((m : ℝ) / 2)), ← Real.rpow_mul ht0, ← Real.rpow_natCast]
    congr 1
    push_cast
    ring
  have hB : Integrable B := by
    apply integrable_rpow_neg_one_add_norm_sq
    rw [finrank_euclideanSpace_fin]
    linarith
  refine (hA.add hB).mono' ((continuous_norm.pow n).mul (continuous_norm.comp hF)).aestronglyMeasurable ?_
  refine Filter.Eventually.of_forall (fun v => ?_)
  have ht1 : (1 : ℝ) ≤ 1 + ‖v‖ ^ 2 := by linarith [sq_nonneg ‖v‖]
  have ht0 : (0 : ℝ) < 1 + ‖v‖ ^ 2 := by linarith
  have hBv : B v = ((1 + ‖v‖ ^ 2) ^ (d + 1))⁻¹ := by
    simp only [B]
    rw [show -(2 * ((d : ℝ) + 1)) / 2 = -(((d + 1 : ℕ) : ℝ)) by push_cast; ring, Real.rpow_neg ht0.le,
      Real.rpow_natCast]
  have hAB : A v * B v = (1 + ‖v‖ ^ 2) ^ n * ‖F v‖ ^ 2 := by
    rw [hBv]
    simp only [A, hm, pow_add]
    field_simp
  have hx : (‖v‖ ^ n * ‖F v‖) ^ 2 ≤ A v * B v := by
    rw [hAB, mul_pow, ← pow_mul, mul_comm n 2, pow_mul]
    gcongr
    linarith
  have hA0 : 0 ≤ A v := by positivity
  have hB0 : 0 ≤ B v := by simp only [B]; positivity
  have hx0 : 0 ≤ ‖v‖ ^ n * ‖F v‖ := by positivity
  rw [Real.norm_of_nonneg hx0]
  show ‖v‖ ^ n * ‖F v‖ ≤ A v + B v
  exact le_of_sq_le_sq (by linarith [sq_nonneg (A v - B v), mul_nonneg hA0 hB0] : (‖v‖ ^ n * ‖F v‖) ^ 2 ≤ (A v + B v) ^ 2) (add_nonneg hA0 hB0)

theorem smoothOfSobolevAll : MomentsSmooth := by
  intro d g hg hgc hs
  have hgi : Integrable g := hg.integrable_of_hasCompactSupport hgc
  have hFc : Continuous (𝓕 g) :=
    VectorFourier.fourierIntegral_continuous (L := innerₗ (E d)) Real.continuous_fourierChar
      (by simpa using continuous_inner) hgi
  have hmom := moments_integrable_of_nrm (𝓕 g) hFc hs
  have hFi : Integrable (𝓕 g) := by
    have h0 := hmom 0
    simp only [pow_zero, one_mul] at h0
    exact (integrable_norm_iff hFc.aestronglyMeasurable).mp h0
  have hinv := hg.fourierInv_fourier_eq hgi hFi
  have hsm : ContDiff ℝ ∞ (𝓕 (𝓕 g)) :=
    VectorFourier.contDiff_fourierIntegral (L := innerSL ℝ) (μ := volume) (N := ⊤) (f := 𝓕 g)
      (fun n _ => hmom n)
  have hg' : g = fun w => 𝓕 (𝓕 g) (-w) := by
    conv_lhs => rw [← hinv]
    ext w
    exact Real.fourierInv_eq_fourier_neg _ w
  rw [hg']
  exact hsm.comp contDiff_neg

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.Moments =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingFourier =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingFourier", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

variable {d : ℕ}

private theorem norm_eF_eq_one (ξ y : E d) : ‖eF ξ y‖ = 1 := by
  unfold eF
  have h : -(2 * (Real.pi : ℂ) * Complex.I * ((inner ℝ y ξ : ℝ) : ℂ)) =
      ((-(2 * Real.pi * inner ℝ y ξ) : ℝ) : ℂ) * Complex.I := by push_cast; ring
  rw [h]
  exact Complex.norm_exp_ofReal_mul_I _

private theorem fourier_eq_integral_eF_mul (f : E d → ℂ) (ζ : E d) :
    𝓕 f ζ = ∫ x, eF ζ x * f x := by
  rw [Real.fourier_eq']
  refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
  try dsimp only
  rw [smul_eq_mul]
  unfold eF
  congr 1; congr 1; push_cast; ring

private theorem fourierInv_eq_integral_eF_neg_mul (F : E d → ℂ) (y : E d) :
    𝓕⁻ F y = ∫ η, eF (-η) y * F η := by
  rw [Real.fourierInv_eq']
  refine integral_congr_ae (Filter.Eventually.of_forall fun η => ?_)
  try dsimp only
  rw [smul_eq_mul]
  unfold eF
  rw [inner_neg_right, real_inner_comm]
  congr 1; congr 1; push_cast; ring

theorem pf_parseval (g k : E d → ℂ) (hg : Integrable g) (hkc : Continuous k)
    (hk : Integrable k) (hK : Integrable (𝓕 k)) :
    ∫ y, g y * k y = ∫ η, 𝓕 k (-η) * 𝓕 g η := by
  have hinv : ∀ y, k y = ∫ η, eF (-η) y * 𝓕 k η := by
    intro y
    rw [← fourierInv_eq_integral_eF_neg_mul]
    exact (congrFun (hkc.fourierInv_fourier_eq hk hK) y).symm
  have hcχ : Continuous fun p : E d × E d => eF (-p.2) p.1 := by
    unfold eF
    fun_prop
  have hint_r : Integrable (fun p : E d × E d => g p.1 * (eF (-p.2) p.1 * 𝓕 k p.2))
      (volume.prod volume) := by
    have hprod : Integrable (fun p : E d × E d => g p.1 * 𝓕 k p.2) (volume.prod volume) := by
      exact hg.mul_prod hK
    refine hprod.mono ?_ (Filter.Eventually.of_forall fun p => le_of_eq ?_)
    · first
      | exact hg.1.comp_fst.mul (hcχ.aestronglyMeasurable.mul hK.1.comp_snd)
    · try dsimp only
      rw [norm_mul, norm_mul, norm_mul, norm_eF_eq_one, one_mul]
  calc ∫ y, g y * k y = ∫ y, ∫ η, g y * (eF (-η) y * 𝓕 k η) := by
        refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
        try dsimp only
        rw [integral_const_mul, ← hinv y]
    _ = ∫ η, ∫ y, g y * (eF (-η) y * 𝓕 k η) := integral_integral_swap hint_r
    _ = ∫ η, 𝓕 k η * 𝓕 g (-η) := by
        refine integral_congr_ae (Filter.Eventually.of_forall fun η => ?_)
        try dsimp only
        rw [fourier_eq_integral_eF_mul g (-η), ← integral_const_mul]
        refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
        try dsimp only
        ring
    _ = ∫ η, 𝓕 k (-η) * 𝓕 g η := by
        exact ((integral_neg_eq_self (fun η => 𝓕 k η * 𝓕 g (-η)) volume).symm).trans (by simp only [neg_neg])

private theorem contDiff_infty_fderiv_of_contDiff_infty {f : E d → ℂ} (hf : ContDiff ℝ ∞ f) : ContDiff ℝ ∞ (fderiv ℝ f) := by
  exact (contDiff_infty_iff_fderiv.1 hf).2

theorem pf_dw_smooth (L : List (Fin d)) (k : E d → ℂ) (hk : ContDiff ℝ ∞ k) (hkc : HasCompactSupport k) :
    ContDiff ℝ ∞ (dw L k) ∧ HasCompactSupport (dw L k) := by
  induction L with
  | nil => exact ⟨hk, hkc⟩
  | cons j w ih =>
    obtain ⟨h1, h2⟩ := ih
    refine ⟨?_, ?_⟩
    · show ContDiff ℝ ∞ (fun x => fderiv ℝ (dw w k) x (ev j))
      exact (contDiff_infty_fderiv_of_contDiff_infty h1).clm_apply contDiff_const
    · show HasCompactSupport (fun x => fderiv ℝ (dw w k) x (ev j))
      refine (h2.fderiv ℝ).mono ?_
      intro x hx
      simp only [Function.mem_support] at hx ⊢
      intro h0
      apply hx
      rw [h0]
      simp

private theorem differentiable_of_contDiff_infty {f : E d → ℂ} (hf : ContDiff ℝ ∞ f) : Differentiable ℝ f := by
  exact (contDiff_infty_iff_fderiv.1 hf).1

private theorem exists_clm_eq_neg_two_pi_I_inner (ζ : E d) :
    ∃ L : E d →L[ℝ] ℂ, ∀ x, L x = -(2 * (Real.pi : ℂ) * Complex.I * ((inner ℝ x ζ : ℝ) : ℂ)) := by
  refine ⟨(-(2 * (Real.pi : ℂ) * Complex.I)) • (Complex.ofRealCLM.comp (innerSL ℝ ζ)), fun x => ?_⟩
  rw [ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply, Complex.ofRealCLM_apply, smul_eq_mul]
  rw [innerSL_apply_apply, real_inner_comm]; ring

private theorem eF_eq_exp_comp_of_clm (ζ : E d) (L : E d →L[ℝ] ℂ)
    (hL : ∀ x, L x = -(2 * (Real.pi : ℂ) * Complex.I * ((inner ℝ x ζ : ℝ) : ℂ))) :
    eF ζ = fun x => Complex.exp (L x) := by
  funext x; rw [hL]; rfl



theorem pf_fourier_fderiv (k : E d → ℂ) (hk : ContDiff ℝ ∞ k) (hkc : HasCompactSupport k) (v ζ : E d) :
    𝓕 (fun x => fderiv ℝ k x v) ζ = (2 * Real.pi * Complex.I * ((inner ℝ ζ v : ℝ) : ℂ)) * 𝓕 k ζ := by
  obtain ⟨L, hL⟩ := exists_clm_eq_neg_two_pi_I_inner ζ
  have hχ := eF_eq_exp_comp_of_clm ζ L hL
  have hχd : ∀ x, HasFDerivAt (eF ζ) (Complex.exp (L x) • L) x := by
    intro x; rw [hχ]; exact L.hasFDerivAt.cexp
  have hχfd : ∀ x, fderiv ℝ (eF ζ) x v = eF ζ x * L v := by
    intro x
    rw [(hχd x).fderiv, ContinuousLinearMap.smul_apply, smul_eq_mul, hχ]
  have hχc : Continuous (eF ζ) := by rw [hχ]; exact Complex.continuous_exp.comp L.continuous
  have hkd : Differentiable ℝ k := differentiable_of_contDiff_infty hk
  have hχdiff : Differentiable ℝ (eF ζ) := fun x => (hχd x).differentiableAt
  have hDc : Continuous (fun x => fderiv ℝ k x v) := (contDiff_infty_fderiv_of_contDiff_infty hk).continuous.clm_apply continuous_const
  have hDs : HasCompactSupport (fun x => fderiv ℝ k x v) := by
    refine (hkc.fderiv ℝ).mono ?_
    intro x hx
    simp only [Function.mem_support] at hx ⊢
    intro h0
    apply hx
    rw [h0]
    simp
  have i1 : Integrable (fun x => fderiv ℝ (eF ζ) x v * k x) := by
    have e : (fun x => fderiv ℝ (eF ζ) x v * k x) = fun x => eF ζ x * L v * k x := by
      funext x; rw [hχfd]
    rw [e]
    exact ((hχc.mul continuous_const).mul hk.continuous).integrable_of_hasCompactSupport hkc.mul_left
  have i2 : Integrable (fun x => eF ζ x * fderiv ℝ k x v) :=
    (hχc.mul hDc).integrable_of_hasCompactSupport hDs.mul_left
  have i3 : Integrable (fun x => eF ζ x * k x) :=
    (hχc.mul hk.continuous).integrable_of_hasCompactSupport hkc.mul_left
  have hibp : ∫ x, eF ζ x * fderiv ℝ k x v = -∫ x, fderiv ℝ (eF ζ) x v * k x := by
    exact integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable i1 i2 i3 (fun x _ => hχdiff x) (fun x _ => hkd x)
  rw [fourier_eq_integral_eF_mul, fourier_eq_integral_eF_mul, hibp]
  have e2 : (fun x => fderiv ℝ (eF ζ) x v * k x) = fun x => L v * (eF ζ x * k x) := by
    funext x; rw [hχfd]; ring
  rw [e2, integral_const_mul, hL v, real_inner_comm]
  ring

theorem pf_fourier_dw (L : List (Fin d)) (k : E d → ℂ) (hk : ContDiff ℝ ∞ k) (hkc : HasCompactSupport k)
    (ζ : E d) :
    𝓕 (dw L k) ζ = (L.map fun j => 2 * Real.pi * Complex.I * ((ζ j : ℝ) : ℂ)).prod * 𝓕 k ζ := by
  induction L with
  | nil => simp [dw]
  | cons j w ih =>
    obtain ⟨h1, h2⟩ := pf_dw_smooth w k hk hkc
    show 𝓕 (fun x => fderiv ℝ (dw w k) x (ev j)) ζ = _
    rw [pf_fourier_fderiv _ h1 h2, ih, List.map_cons, List.prod_cons]
    have hb : inner ℝ ζ (ev j) = ζ j := by
      simp [ev, EuclideanSpace.inner_single_right]
    rw [hb]; ring

theorem pf_modulate (b : E d → ℂ) (ξ ζ : E d) : 𝓕 (fun y => b y * eF ξ y) ζ = 𝓕 b (ζ + ξ) := by
  rw [fourier_eq_integral_eF_mul, fourier_eq_integral_eF_mul]
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  try dsimp only
  have h : eF ζ y * eF ξ y = eF (ζ + ξ) y := by
    simp only [eF, ← Complex.exp_add, inner_add_right]
    congr 1; push_cast; ring
  rw [← h]; ring

theorem pf_fourier_integrable (k : E d → ℂ) (hk : ContDiff ℝ ∞ k) (hkc : HasCompactSupport k) :
    Integrable (𝓕 k) := by
  have hdecay : ∀ m n : ℕ, ∃ C : ℝ, ∀ x, ‖x‖ ^ m * ‖iteratedFDeriv ℝ n k x‖ ≤ C := by
    intro m n
    have hcn : Continuous fun x => iteratedFDeriv ℝ n k x := by
      exact hk.continuous_iteratedFDeriv (by exact_mod_cast (le_top : (n : ℕ∞) ≤ ⊤))
    have hc : Continuous fun x : E d => ‖x‖ ^ m * ‖iteratedFDeriv ℝ n k x‖ :=
      (continuous_norm.pow m).mul hcn.norm
    have hs : HasCompactSupport fun x : E d => ‖x‖ ^ m * ‖iteratedFDeriv ℝ n k x‖ :=
      ((hkc.iteratedFDeriv (𝕜 := ℝ) n).norm).mul_left
    obtain ⟨C, hC⟩ := hc.bounded_above_of_compact_support hs
    exact ⟨C, fun x => (le_abs_self _).trans (by simpa only [Real.norm_eq_abs] using hC x)⟩
  let S : SchwartzMap (E d) ℂ := ⟨k, hk, hdecay⟩
  exact (SchwartzMap.fourierTransformCLM ℂ S).integrable

theorem pf_eF_smooth (ξ : E d) : ContDiff ℝ ∞ (eF ξ) := by
  obtain ⟨L, hL⟩ := exists_clm_eq_neg_two_pi_I_inner ξ
  rw [eF_eq_exp_comp_of_clm ξ L hL]
  exact Complex.contDiff_exp.comp L.contDiff

theorem pf_sign (n : ℕ) (w : Fin n → Fin d) (η : E d) :
    (-1 : ℂ) ^ n * ∏ l, (2 * Real.pi * Complex.I * (((-η) (w l) : ℝ) : ℂ)) = mono w η := by
  unfold mono
  have h : ∀ l, (2 * (Real.pi : ℂ) * Complex.I * (((-η) (w l) : ℝ) : ℂ)) =
      (-1) * (2 * Real.pi * Complex.I * ((η (w l) : ℝ) : ℂ)) := by
    intro l
    rw [PiLp.neg_apply]; push_cast; ring
  rw [Finset.prod_congr rfl (fun l _ => h l), Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ,
    Fintype.card_fin, ← mul_assoc, ← mul_pow]
  norm_num

theorem adjointPairingFourier : PairingFourier := by
  intro d m b g hb hg hgc ξ
  have hgi : Integrable g := hg.integrable_of_hasCompactSupport hgc
  have term : ∀ n (w : Fin n → Fin d),
      ∫ y, g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y) =
        conv (𝓕 (b n w)) (fun η => mono w η * 𝓕 g η) ξ := by
    intro n w
    have hs : ContDiff ℝ ∞ (fun y => b n w y * eF ξ y) := (hb n w).1.mul (pf_eF_smooth ξ)
    have hc : HasCompactSupport (fun y => b n w y * eF ξ y) := (hb n w).2.mul_right
    obtain ⟨D1, D2⟩ := pf_dw_smooth (List.ofFn w) _ hs hc
    have hD := pf_parseval g _ hgi D1.continuous (D1.continuous.integrable_of_hasCompactSupport D2)
      (pf_fourier_integrable _ D1 D2)
    calc ∫ y, g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y)
        = (-1 : ℂ) ^ n * ∫ y, g y * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y := by
          rw [← integral_const_mul]
          congr 1
          ext y
          ring
      _ = ∫ η, (-1 : ℂ) ^ n * (𝓕 (dw (List.ofFn w) (fun y => b n w y * eF ξ y)) (-η) * 𝓕 g η) := by
          rw [hD, integral_const_mul]
      _ = conv (𝓕 (b n w)) (fun η => mono w η * 𝓕 g η) ξ := by
          unfold conv
          congr 1
          ext η
          rw [pf_fourier_dw _ _ hs hc, pf_modulate, List.map_ofFn, List.prod_ofFn, neg_add_eq_sub]
          simp only [Function.comp_apply]
          rw [← pf_sign n w η]
          ring
  have hint : ∀ n (w : Fin n → Fin d),
      Integrable (fun y => g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y)) := by
    intro n w
    obtain ⟨D1, D2⟩ := pf_dw_smooth (List.ofFn w) _ ((hb n w).1.mul (pf_eF_smooth ξ)) (hb n w).2.mul_right
    exact (hg.mul (continuous_const.mul D1.continuous)).integrable_of_hasCompactSupport hgc.mul_right
  calc ∫ y, g y * trOp m b (eF ξ) y
      = ∫ y, ∑ n ∈ Finset.range (m + 1), ∑ w : Fin n → Fin d,
          g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y) := by
        congr 1
        ext y
        simp only [trOp, Finset.mul_sum]
    _ = ∑ n ∈ Finset.range (m + 1), ∫ y, ∑ w : Fin n → Fin d,
          g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y) :=
        integral_finsetSum _ (fun n _ => integrable_finsetSum _ (fun w _ => hint n w))
    _ = ∑ n ∈ Finset.range (m + 1), ∑ w : Fin n → Fin d,
          ∫ y, g y * ((-1 : ℂ) ^ n * dw (List.ofFn w) (fun y => b n w y * eF ξ y) y) := by
        refine Finset.sum_congr rfl fun n _ => ?_
        exact integral_finsetSum _ (fun w _ => hint n w)
    _ = ∑ n ∈ Finset.range (m + 1), ∑ w : Fin n → Fin d, conv (𝓕 (b n w)) (fun η => mono w η * 𝓕 g η) ξ := by
        refine Finset.sum_congr rfl fun n _ => Finset.sum_congr rfl fun w _ => ?_
        exact term n w

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingFourier =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingLocal =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingLocal", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

lemma dw_eventuallyEq {d : ℕ} (w : List (Fin d)) {f f' : E d → ℂ} {y : E d} (h : f =ᶠ[𝓝 y] f') :
    dw w f =ᶠ[𝓝 y] dw w f' := by
  induction w with
  | nil => simpa [dw] using h
  | cons j w ih =>
    filter_upwards [ih.fderiv (𝕜 := ℝ)] with x hx
    show fderiv ℝ (dw w f) x (ev j) = fderiv ℝ (dw w f') x (ev j)
    rw [hx]

theorem adjointPairingLocal : PairingLocal := by
  intro d m b b' g φ V hV hg hb
  congr 1
  funext y
  by_cases hy : y ∈ V
  · congr 1
    unfold trOp
    refine Finset.sum_congr rfl fun n _ => Finset.sum_congr rfl fun w _ => ?_
    congr 1

    have hev : (fun y => b n w y * φ y) =ᶠ[𝓝 y] (fun y => b' n w y * φ y) := by
      filter_upwards [hV.mem_nhds hy] with z hz
      rw [hb n w z hz]
    exact (dw_eventuallyEq _ hev).eq_of_nhds
  · have hg0 : g y = 0 := by
      first
        | exact image_eq_zero_of_notMem_tsupport (fun h => hy (hg h))
    rw [hg0, zero_mul, zero_mul]

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingLocal =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.SmoothOfLocallySmooth =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.SmoothOfLocallySmooth", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.BumpFunction.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

theorem integralFourierChar : FourierPair := by
  intro d g _ _ ξ
  rw [Real.fourier_eq']
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  show g y * eF ξ y = Complex.exp (((-2 * Real.pi * inner ℝ y ξ : ℝ) : ℂ) * Complex.I) • g y
  rw [smul_eq_mul, mul_comm (Complex.exp _)]
  congr 1
  simp only [eF]
  congr 1
  push_cast
  ring

theorem existsBump : Bump := by
  intro d x0 r hr
  let f : ContDiffBump x0 := ⟨r / 4, r / 2, by positivity, by linarith⟩
  refine ⟨f, f.contDiff, f.hasCompactSupport, ?_, ?_⟩
  · rw [f.tsupport_eq]
    exact closedBall_subset_ball (show r / 2 < r by linarith)
  · filter_upwards [ball_mem_nhds x0 (show (0 : ℝ) < r / 4 by positivity)] with y hy
    exact f.one_of_mem_closedBall (ball_subset_closedBall hy)

theorem cutoffContinuous : CutCont := by
  intro d U u χ hU hu hχs hχc hχt
  have hχ' : Continuous (fun x => (χ x : ℂ)) := Complex.continuous_ofReal.comp hχs.continuous
  have hsub : tsupport (cut χ u) ⊆ tsupport χ := by
    apply closure_mono
    intro x hx
    by_contra h0
    apply hx
    have h0' : χ x = 0 := by simpa using h0
    simp [cut, h0']
  have hcont : ContinuousOn (cut χ u) U := hχ'.continuousOn.mul hu
  exact ⟨hcont.continuous_of_tsupport_subset hU (hsub.trans hχt),
    IsCompact.of_isClosed_subset hχc (isClosed_tsupport _) hsub⟩

theorem smoothOfLocallySmooth : LocalGlobal := by
  intro d U f _ h x hx
  obtain ⟨χ, hχ1, hχf⟩ := h x hx
  have heq : cut χ f =ᶠ[𝓝 x] f := by
    filter_upwards [hχ1] with y hy
    simp [cut, hy]
  exact (hχf.contDiffAt.congr_of_eventuallyEq heq.symm).contDiffWithinAt

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.SmoothOfLocallySmooth =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.SymbLower =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.SymbLower", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

private theorem symb_smul_covector_eq_pow_ord_mul {d : ℕ} {ι : Type} (P : Sys d ι) (i : ι)
    (x ξ : E d) (t : ℝ) :
    P.symb i x (t • ξ) = (t : ℂ) ^ (P.ord i) * P.symb i x ξ := by
  unfold ZetaZeros.D.EllReg.Sys.symb
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun w _ => ?_
  have hc : ∀ l, (((t • ξ) (w l) : ℝ) : ℂ) = (t : ℂ) * ((ξ (w l) : ℝ) : ℂ) := fun l => by simp
  simp only [hc, Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  ring

private theorem continuous_symb_covector {d : ℕ} {ι : Type} (P : Sys d ι) (i : ι)
    (x : E d) : Continuous fun ξ : E d => P.symb i x ξ := by
  unfold ZetaZeros.D.EllReg.Sys.symb
  fun_prop

theorem symbolLowerBound : SymbLower := by
  intro d ι _ P x0 k hk hell
  obtain ⟨f, hf⟩ : ∃ f : E d → ℝ,
      f = fun ξ => ∑ i, ‖ξ‖ ^ (2 * (k - P.ord i)) * ‖P.symb i x0 ξ‖ ^ 2 := ⟨_, rfl⟩
  have hfξ : ∀ ξ, f ξ = ∑ i, ‖ξ‖ ^ (2 * (k - P.ord i)) * ‖P.symb i x0 ξ‖ ^ 2 := by
    intro ξ; rw [hf]
  have hcont : Continuous f := by
    rw [hf]
    refine continuous_finsetSum _ fun i _ => ?_
    exact (continuous_norm.pow _).mul
      ((continuous_symb_covector P i x0).norm.pow 2)
  have hhom : ∀ t : ℝ, 0 ≤ t → ∀ ξ : E d, f (t • ξ) = t ^ (2 * k) * f ξ := by
    intro t ht ξ
    rw [hfξ, hfξ, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    have h1 : ‖t • ξ‖ = t * ‖ξ‖ := by rw [norm_smul, Real.norm_of_nonneg ht]
    have h2 : ‖(t : ℂ) ^ (P.ord i) * P.symb i x0 ξ‖
        = t ^ (P.ord i) * ‖P.symb i x0 ξ‖ := by
      rw [norm_mul, norm_pow, Complex.norm_of_nonneg ht]
    rw [symb_smul_covector_eq_pow_ord_mul, h1, h2]
    have hk' : 2 * k = 2 * (k - P.ord i) + 2 * P.ord i := by have := hk i; omega
    rw [hk', pow_add]
    ring
  rcases (sphere (0 : E d) 1).eq_empty_or_nonempty with hS | hS
  · refine ⟨1, one_pos, fun ξ hξ => ?_⟩
    exfalso
    have hmem : ‖ξ‖⁻¹ • ξ ∈ sphere (0 : E d) 1 := by
      rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
        inv_mul_cancel₀ (norm_ne_zero_iff.mpr hξ)]
    rw [hS] at hmem
    exact hmem
  · obtain ⟨η0, hη0S, hmin⟩ := (isCompact_sphere (0 : E d) 1).exists_isMinOn hS hcont.continuousOn
    have hη0n : ‖η0‖ = 1 := mem_sphere_zero_iff_norm.mp hη0S
    have hne : η0 ≠ 0 := by
      intro h
      rw [h, norm_zero] at hη0n
      exact zero_ne_one hη0n
    obtain ⟨i, hi⟩ := hell η0 hne
    have hpos : 0 < f η0 := by
      have hle : ‖η0‖ ^ (2 * (k - P.ord i)) * ‖P.symb i x0 η0‖ ^ 2 ≤ f η0 := by
        rw [hfξ]
        exact Finset.single_le_sum
          (f := fun j => ‖η0‖ ^ (2 * (k - P.ord j)) * ‖P.symb j x0 η0‖ ^ 2)
          (fun j _ => by positivity) (Finset.mem_univ i)
      have hlt : 0 < ‖η0‖ ^ (2 * (k - P.ord i)) * ‖P.symb i x0 η0‖ ^ 2 := by
        rw [hη0n, one_pow, one_mul]
        exact pow_pos (norm_pos_iff.mpr hi) 2
      linarith
    refine ⟨f η0, hpos, fun ξ hξ => ?_⟩
    have ht : 0 < ‖ξ‖ := norm_pos_iff.mpr hξ
    have hηS : ‖ξ‖⁻¹ • ξ ∈ sphere (0 : E d) 1 := by
      rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ ht.ne']
    have hξη : ξ = ‖ξ‖ • (‖ξ‖⁻¹ • ξ) := by
      rw [smul_smul, mul_inv_cancel₀ ht.ne', one_smul]
    have hle : f η0 ≤ f (‖ξ‖⁻¹ • ξ) := hmin hηS
    have hfx : f ξ = ‖ξ‖ ^ (2 * k) * f (‖ξ‖⁻¹ • ξ) := by
      conv_lhs => rw [hξη]
      exact hhom _ ht.le _
    rw [← hfξ, hfx, mul_comm]
    exact mul_le_mul_of_nonneg_left hle (by positivity)

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.SymbLower =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightDiff =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightDiff", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.MeanValue\npublic import Mathlib.Analysis.SpecialFunctions.Pow.Deriv\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

noncomputable section

namespace WD

variable {d : ℕ}

lemma pow_cmp {X Y K : ℝ} (p : ℝ) (hX : 0 < X) (hY : 0 < Y) (hK : 1 ≤ K)
    (h1 : X ≤ K * Y) (h2 : Y ≤ K * X) : X ^ p ≤ K ^ |p| * Y ^ p := by
  have hK0 : 0 < K := lt_of_lt_of_le one_pos hK
  rcases le_or_gt 0 p with hp | hp
  · rw [abs_of_nonneg hp, ← Real.mul_rpow hK0.le hY.le]
    exact Real.rpow_le_rpow hX.le h1 hp
  · rw [abs_of_neg hp]
    have h3 : K⁻¹ * Y ≤ X := by
      calc K⁻¹ * Y ≤ K⁻¹ * (K * X) := mul_le_mul_of_nonneg_left h2 (inv_nonneg.2 hK0.le)
        _ = X := by rw [← mul_assoc, inv_mul_cancel₀ hK0.ne', one_mul]
    have hKY : 0 < K⁻¹ * Y := mul_pos (inv_pos.2 hK0) hY
    have h4 : X ^ p ≤ (K⁻¹ * Y) ^ p := by
      exact Real.rpow_le_rpow_of_nonpos hKY h3 hp.le
    calc X ^ p ≤ (K⁻¹ * Y) ^ p := h4
      _ = K ^ (-p) * Y ^ p := by
        rw [Real.mul_rpow (inv_nonneg.2 hK0.le) hY.le, Real.inv_rpow hK0.le, ← Real.rpow_neg hK0.le]

lemma base (c : ℝ) (x y : E d) :
    1 + c ^ 2 * ‖x‖ ^ 2 ≤ 2 * (1 + c ^ 2 * ‖x - y‖ ^ 2) * (1 + c ^ 2 * ‖y‖ ^ 2) := by
  have h1 : ‖x‖ ≤ ‖x - y‖ + ‖y‖ := by
    calc ‖x‖ = ‖(x - y) + y‖ := by rw [sub_add_cancel]
      _ ≤ ‖x - y‖ + ‖y‖ := norm_add_le _ _
  have ha := norm_nonneg (x - y)
  have hb := norm_nonneg y
  have hx := norm_nonneg x
  have hc := sq_nonneg c
  have hsq : ‖x‖ ^ 2 ≤ 2 * ‖x - y‖ ^ 2 + 2 * ‖y‖ ^ 2 := by
    linarith [pow_le_pow_left₀ hx h1 2, sq_nonneg (‖x - y‖ - ‖y‖)]
  linarith [mul_le_mul_of_nonneg_left hsq hc, mul_nonneg (mul_nonneg hc hc) (mul_nonneg (sq_nonneg ‖x - y‖) (sq_nonneg ‖y‖))]

lemma cmp1 (c : ℝ) (hc : c ^ 2 ≤ 1) (x y v : E d) (hv : ‖x - y‖ ≤ ‖v‖) :
    1 + c ^ 2 * ‖x‖ ^ 2 ≤ (2 * (1 + ‖v‖ ^ 2)) * (1 + c ^ 2 * ‖y‖ ^ 2) := by
  have h := base c x y
  have ha := norm_nonneg (x - y)
  have hv2 : ‖x - y‖ ^ 2 ≤ ‖v‖ ^ 2 := pow_le_pow_left₀ ha hv 2
  have h3 : c ^ 2 * ‖x - y‖ ^ 2 ≤ ‖v‖ ^ 2 := (mul_le_of_le_one_left (sq_nonneg _) hc).trans hv2
  have hy : 0 ≤ 1 + c ^ 2 * ‖y‖ ^ 2 := by positivity
  calc 1 + c ^ 2 * ‖x‖ ^ 2 ≤ 2 * (1 + c ^ 2 * ‖x - y‖ ^ 2) * (1 + c ^ 2 * ‖y‖ ^ 2) := h
    _ ≤ (2 * (1 + ‖v‖ ^ 2)) * (1 + c ^ 2 * ‖y‖ ^ 2) := by
      apply mul_le_mul_of_nonneg_right _ hy
      linarith

lemma om_shift (s M ε : ℝ) (hM : 0 ≤ M) (hε0 : 0 ≤ ε) (hε1 : ε ≤ 1) (ζ η v : E d)
    (hv : ‖ζ - η‖ ≤ ‖v‖) :
    om s M ε ζ ≤ (2 * (1 + ‖v‖ ^ 2)) ^ (|s / 2| + M / 2) * om s M ε η := by
  have hA1 : (1 : ℝ) ≤ 2 * (1 + ‖v‖ ^ 2) := by linarith [sq_nonneg ‖v‖]
  have hA0 : (0 : ℝ) < 2 * (1 + ‖v‖ ^ 2) := by linarith
  have hv' : ‖η - ζ‖ ≤ ‖v‖ := by rw [norm_sub_rev]; exact hv
  have hε2 : ε ^ 2 ≤ 1 := by simpa using pow_le_pow_left₀ hε0 hε1 2
  have hone : (1 : ℝ) ^ 2 ≤ 1 := by norm_num
  have P1 := cmp1 1 hone ζ η v hv
  have P2 := cmp1 1 hone η ζ v hv'
  have Q1 := cmp1 ε hε2 ζ η v hv
  have Q2 := cmp1 ε hε2 η ζ v hv'
  simp only [one_pow, one_mul] at P1 P2
  have hζ : (0 : ℝ) < 1 + ‖ζ‖ ^ 2 := by positivity
  have hη : (0 : ℝ) < 1 + ‖η‖ ^ 2 := by positivity
  have hζε : (0 : ℝ) < 1 + ε ^ 2 * ‖ζ‖ ^ 2 := by positivity
  have hηε : (0 : ℝ) < 1 + ε ^ 2 * ‖η‖ ^ 2 := by positivity
  have F1 := pow_cmp (s / 2) hζ hη hA1 P1 P2
  have F2 := pow_cmp (-(M / 2)) hζε hηε hA1 Q1 Q2
  rw [abs_neg, abs_of_nonneg (by linarith : (0 : ℝ) ≤ M / 2)] at F2
  unfold ZetaZeros.D.EllReg.om
  calc _ ≤ ((2 * (1 + ‖v‖ ^ 2)) ^ |s / 2| * (1 + ‖η‖ ^ 2) ^ (s / 2)) *
        ((2 * (1 + ‖v‖ ^ 2)) ^ (M / 2) * (1 + ε ^ 2 * ‖η‖ ^ 2) ^ (-(M / 2))) :=
        mul_le_mul F1 F2 (by positivity) (by positivity)
    _ = _ := by rw [Real.rpow_add hA0]; ring

private theorem abs_mul_sub_le_of_sq_eq_one_add_sq (g t s M e r b V : ℝ) (hg : 0 ≤ g) (hV : 0 ≤ V) (ht : |t| ≤ g * V)
    (hM : 0 ≤ M) (he0 : 0 ≤ e) (he1 : e ≤ 1) (hr0 : 0 < r) (hr2 : r ^ 2 = 1 + g ^ 2)
    (hb : b = 1 + e * g ^ 2) :
    |t * (s * r⁻¹ - M * e * r * b⁻¹)| ≤ (|s| + M) * V := by
  subst hb
  have hb0 : 0 < 1 + e * g ^ 2 := add_pos_of_pos_of_nonneg one_pos (mul_nonneg he0 (sq_nonneg g))
  have hgr : g ≤ r := le_of_sq_le_sq (by linarith [hr2]) hr0.le
  have hgr' : g * r⁻¹ ≤ 1 := by
    calc g * r⁻¹ ≤ r * r⁻¹ := mul_le_mul_of_nonneg_right hgr (inv_nonneg.2 hr0.le)
      _ = 1 := mul_inv_cancel₀ hr0.ne'
  have hsq : (g * e * r) ^ 2 ≤ (1 + e * g ^ 2) ^ 2 := by
    have h := mul_nonneg (mul_nonneg he0 (sq_nonneg g)) (by linarith : (0 : ℝ) ≤ 2 - e)
    have h' : (g * e * r) ^ 2 = g ^ 2 * e ^ 2 * r ^ 2 := by ring
    rw [h', hr2]
    linarith
  have hX : g * e * r ≤ 1 + e * g ^ 2 := le_of_sq_le_sq hsq hb0.le
  have hgb : g * (e * r * (1 + e * g ^ 2)⁻¹) ≤ 1 := by
    calc g * (e * r * (1 + e * g ^ 2)⁻¹) = (g * e * r) * (1 + e * g ^ 2)⁻¹ := by ring
      _ ≤ (1 + e * g ^ 2) * (1 + e * g ^ 2)⁻¹ := mul_le_mul_of_nonneg_right hX (inv_nonneg.2 hb0.le)
      _ = 1 := mul_inv_cancel₀ hb0.ne'
  have hpos : 0 ≤ M * e * r * (1 + e * g ^ 2)⁻¹ :=
    mul_nonneg (mul_nonneg (mul_nonneg hM he0) hr0.le) (inv_nonneg.2 hb0.le)
  have h1 : |s * r⁻¹ - M * e * r * (1 + e * g ^ 2)⁻¹| ≤ |s| * r⁻¹ + M * (e * r * (1 + e * g ^ 2)⁻¹) := by
    have h := norm_sub_le (s * r⁻¹) (M * e * r * (1 + e * g ^ 2)⁻¹)
    simp only [Real.norm_eq_abs] at h
    rw [abs_mul, abs_of_pos (inv_pos.2 hr0), abs_of_nonneg hpos] at h
    have e' : M * e * r * (1 + e * g ^ 2)⁻¹ = M * (e * r * (1 + e * g ^ 2)⁻¹) := by ring
    linarith
  have hsum : |s| * (g * r⁻¹) + M * (g * (e * r * (1 + e * g ^ 2)⁻¹)) ≤ |s| + M := add_le_add (mul_le_of_le_one_right (abs_nonneg s) hgr') (mul_le_of_le_one_right hM hgb)
  rw [abs_mul]
  calc |t| * |s * r⁻¹ - M * e * r * (1 + e * g ^ 2)⁻¹|
      ≤ (g * V) * (|s| * r⁻¹ + M * (e * r * (1 + e * g ^ 2)⁻¹)) :=
        mul_le_mul ht h1 (abs_nonneg _) (mul_nonneg hg hV)
    _ = V * (|s| * (g * r⁻¹) + M * (g * (e * r * (1 + e * g ^ 2)⁻¹))) := by ring
    _ ≤ V * (|s| + M) := mul_le_mul_of_nonneg_left hsum hV
    _ = (|s| + M) * V := by ring

lemma deriv_bound (s M ε : ℝ) (hM : 0 ≤ M) (hε0 : 0 ≤ ε) (hε1 : ε ≤ 1) (γ v : E d) :
    |(2 * inner ℝ γ v) * (s / 2) * (1 + ‖γ‖ ^ 2) ^ (s / 2 - 1) * (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2)) +
      (1 + ‖γ‖ ^ 2) ^ (s / 2) *
        ((ε ^ 2 * (2 * inner ℝ γ v)) * (-(M / 2)) * (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2) - 1))|
    ≤ (|s| + M) * ‖v‖ * om (s - 1) M ε γ := by
  have ha : (0 : ℝ) < 1 + ‖γ‖ ^ 2 := by positivity
  have hb : (0 : ℝ) < 1 + ε ^ 2 * ‖γ‖ ^ 2 := by positivity
  have hε2 : ε ^ 2 ≤ 1 := by simpa using pow_le_pow_left₀ hε0 hε1 2
  obtain ⟨r, hr⟩ : ∃ r : ℝ, r = Real.sqrt (1 + ‖γ‖ ^ 2) := ⟨_, rfl⟩
  have hr0 : 0 < r := by rw [hr]; exact Real.sqrt_pos.2 ha
  have hr2 : r ^ 2 = 1 + ‖γ‖ ^ 2 := by rw [hr]; exact Real.sq_sqrt ha.le
  have e1 : (1 + ‖γ‖ ^ 2) ^ (s / 2 - 1) = (1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) * r⁻¹ := by
    rw [hr, Real.sqrt_eq_rpow, ← Real.rpow_neg ha.le, ← Real.rpow_add ha]
    congr 1
    ring
  have e2 : (1 + ‖γ‖ ^ 2) ^ (s / 2) = (1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) * r := by
    rw [hr, Real.sqrt_eq_rpow, ← Real.rpow_add ha]
    congr 1
    ring
  have e3 : (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2) - 1) =
      (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2)) * (1 + ε ^ 2 * ‖γ‖ ^ 2)⁻¹ := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hb]
    congr 1
  have hP : 0 < (1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) := by positivity
  have hQ : 0 < (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2)) := by positivity
  have key := abs_mul_sub_le_of_sq_eq_one_add_sq ‖γ‖ (inner ℝ γ v) s M (ε ^ 2) r (1 + ε ^ 2 * ‖γ‖ ^ 2) ‖v‖
    (norm_nonneg _) (norm_nonneg _) (abs_real_inner_le_norm γ v) hM (sq_nonneg ε) hε2 hr0 hr2 rfl
  rw [e1, e2, e3]
  unfold ZetaZeros.D.EllReg.om
  calc _ = |((1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) * (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2))) *
        (inner ℝ γ v * (s * r⁻¹ - M * ε ^ 2 * r * (1 + ε ^ 2 * ‖γ‖ ^ 2)⁻¹))| := by
          congr 1
          ring
    _ = ((1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) * (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2))) *
        |inner ℝ γ v * (s * r⁻¹ - M * ε ^ 2 * r * (1 + ε ^ 2 * ‖γ‖ ^ 2)⁻¹)| := by
          rw [abs_mul, abs_of_pos (mul_pos hP hQ)]
    _ ≤ ((1 + ‖γ‖ ^ 2) ^ ((s - 1) / 2) * (1 + ε ^ 2 * ‖γ‖ ^ 2) ^ (-(M / 2))) * ((|s| + M) * ‖v‖) :=
          mul_le_mul_of_nonneg_left key (mul_pos hP hQ).le
    _ = _ := by ring

end WD

open WD in
theorem sobolevWeightLipschitz : WeightDiff := by
  intro d s M hM
  have hN0 : 0 ≤ |(s - 1) / 2| + M / 2 := add_nonneg (abs_nonneg _) (by linarith)
  refine ⟨(|s| + M) * 2 ^ (|(s - 1) / 2| + M / 2), 2 * (|(s - 1) / 2| + M / 2),
    mul_nonneg (add_nonneg (abs_nonneg s) hM) (Real.rpow_nonneg (by norm_num) _), by linarith, ?_⟩
  intro ε hε0 hε1 ξ η
  have hderiv : ∀ t : ℝ, HasDerivAt (fun t : ℝ => om s M ε (η + t • (ξ - η)))
      ((2 * inner ℝ (η + t • (ξ - η)) (ξ - η)) * (s / 2) * (1 + ‖η + t • (ξ - η)‖ ^ 2) ^ (s / 2 - 1) *
          (1 + ε ^ 2 * ‖η + t • (ξ - η)‖ ^ 2) ^ (-(M / 2)) +
        (1 + ‖η + t • (ξ - η)‖ ^ 2) ^ (s / 2) *
          ((ε ^ 2 * (2 * inner ℝ (η + t • (ξ - η)) (ξ - η))) * (-(M / 2)) *
            (1 + ε ^ 2 * ‖η + t • (ξ - η)‖ ^ 2) ^ (-(M / 2) - 1))) t := by
    intro t
    have hγ : HasDerivAt (fun t : ℝ => η + t • (ξ - η)) (ξ - η) t := by
      have := ((hasDerivAt_id' t).smul_const (ξ - η)).const_add η
      rwa [one_smul] at this
    have h1 : HasDerivAt (fun t : ℝ => 1 + ‖η + t • (ξ - η)‖ ^ 2)
        (2 * inner ℝ (η + t • (ξ - η)) (ξ - η)) t :=
      hγ.norm_sq.const_add 1
    have h2 : HasDerivAt (fun t : ℝ => 1 + ε ^ 2 * ‖η + t • (ξ - η)‖ ^ 2)
        (ε ^ 2 * (2 * inner ℝ (η + t • (ξ - η)) (ξ - η))) t :=
      (hγ.norm_sq.const_mul (ε ^ 2)).const_add 1
    have hp1 : (1 + ‖η + t • (ξ - η)‖ ^ 2) ≠ 0 := by positivity
    have hp2 : (1 + ε ^ 2 * ‖η + t • (ξ - η)‖ ^ 2) ≠ 0 := by positivity
    exact (h1.rpow_const (Or.inl hp1)).mul (h2.rpow_const (Or.inl hp2))
  obtain ⟨D, hD⟩ : ∃ D : ℝ → ℝ, ∀ t : ℝ,
      HasDerivAt (fun t : ℝ => om s M ε (η + t • (ξ - η))) (D t) t ∧
      |D t| ≤ (|s| + M) * ‖ξ - η‖ * om (s - 1) M ε (η + t • (ξ - η)) :=
    ⟨_, fun t => ⟨hderiv t, ZetaZeros.D.EllReg.WD.deriv_bound s M ε hM hε0 hε1 _ _⟩⟩
  have hW : ∀ t ∈ Set.Icc (0 : ℝ) 1, om (s - 1) M ε (η + t • (ξ - η)) ≤
      (2 * (1 + ‖ξ - η‖ ^ 2)) ^ (|(s - 1) / 2| + M / 2) * om (s - 1) M ε η := by
    intro t ht
    apply ZetaZeros.D.EllReg.WD.om_shift (s - 1) M ε hM hε0 hε1
    have e : η + t • (ξ - η) - η = t • (ξ - η) := by abel
    rw [e, norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1]
    exact mul_le_of_le_one_left (norm_nonneg _) ht.2
  have hcoef : 0 ≤ (|s| + M) * ‖ξ - η‖ := mul_nonneg (add_nonneg (abs_nonneg s) hM) (norm_nonneg _)
  have hbd : ∀ t ∈ Set.Ico (0 : ℝ) 1, ‖D t‖ ≤ (|s| + M) * ‖ξ - η‖ *
      ((2 * (1 + ‖ξ - η‖ ^ 2)) ^ (|(s - 1) / 2| + M / 2) * om (s - 1) M ε η) := by
    intro t ht
    rw [Real.norm_eq_abs]
    exact (hD t).2.trans (mul_le_mul_of_nonneg_left (hW t (Set.Ico_subset_Icc_self ht)) hcoef)
  have hmvt : ‖om s M ε (η + (1 : ℝ) • (ξ - η)) - om s M ε (η + (0 : ℝ) • (ξ - η))‖ ≤
      (|s| + M) * ‖ξ - η‖ *
        ((2 * (1 + ‖ξ - η‖ ^ 2)) ^ (|(s - 1) / 2| + M / 2) * om (s - 1) M ε η) * (1 - 0) :=
    norm_image_sub_le_of_norm_deriv_le_segment' (fun t _ => (hD t).1.hasDerivWithinAt) hbd 1
      (Set.right_mem_Icc.2 zero_le_one)
  have e1 : η + (1 : ℝ) • (ξ - η) = ξ := by rw [one_smul]; abel
  have e0 : η + (0 : ℝ) • (ξ - η) = η := by rw [zero_smul, add_zero]
  rw [e1, e0, Real.norm_eq_abs, sub_zero, mul_one] at hmvt
  have hx := norm_nonneg (ξ - η)
  have hA : (2 * (1 + ‖ξ - η‖ ^ 2)) ^ (|(s - 1) / 2| + M / 2) ≤
      2 ^ (|(s - 1) / 2| + M / 2) * (1 + ‖ξ - η‖) ^ (2 * (|(s - 1) / 2| + M / 2)) := by
    rw [Real.rpow_mul (by linarith : (0 : ℝ) ≤ 1 + ‖ξ - η‖), Real.rpow_two,
      ← Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) (by positivity : (0 : ℝ) ≤ (1 + ‖ξ - η‖) ^ 2)]
    exact Real.rpow_le_rpow (by positivity) (by linarith [norm_nonneg (ξ - η)]) hN0
  have hW0 : 0 ≤ om (s - 1) M ε η := by unfold om; positivity
  calc |om s M ε ξ - om s M ε η|
      ≤ (|s| + M) * ‖ξ - η‖ *
        ((2 * (1 + ‖ξ - η‖ ^ 2)) ^ (|(s - 1) / 2| + M / 2) * om (s - 1) M ε η) := hmvt
    _ ≤ (|s| + M) * ‖ξ - η‖ *
        ((2 ^ (|(s - 1) / 2| + M / 2) * (1 + ‖ξ - η‖) ^ (2 * (|(s - 1) / 2| + M / 2))) *
          om (s - 1) M ε η) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hA hW0) hcoef
    _ = _ := by ring

end

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightDiff =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightedNormFinite =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightedNormFinite", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllRegStep\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.BaseLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

open MeasureTheory Metric Filter Topology
open scoped ContDiff FourierTransform ENNReal

lemma om_nonneg {d : ℕ} (s M ε : ℝ) (ξ : E d) : 0 ≤ om s M ε ξ := by
  unfold om
  exact mul_nonneg (Real.rpow_nonneg (add_nonneg zero_le_one (sq_nonneg _)) _)
    (Real.rpow_nonneg (add_nonneg zero_le_one (mul_nonneg (sq_nonneg _) (sq_nonneg _))) _)

lemma om_continuous_eps {d : ℕ} (s M : ℝ) (ξ : E d) : Continuous fun ε : ℝ => om s M ε ξ := by
  unfold om
  exact continuous_const.mul
    ((continuous_const.add ((continuous_pow 2).mul continuous_const)).rpow_const
      fun ε => Or.inl (add_pos_of_pos_of_nonneg one_pos (mul_nonneg (sq_nonneg _) (sq_nonneg _))).ne')

lemma om_eps_zero {d : ℕ} (s M : ℝ) (ξ : E d) : om s M 0 ξ = om s 0 0 ξ := by
  unfold om
  simp

lemma om_continuous {d : ℕ} (s M ε : ℝ) : Continuous fun ξ : E d => om s M ε ξ := by
  unfold om
  exact ((continuous_const.add (continuous_norm.pow 2)).rpow_const
      fun ξ => Or.inl (add_pos_of_pos_of_nonneg one_pos (sq_nonneg _)).ne').mul
    ((continuous_const.add (continuous_const.mul (continuous_norm.pow 2))).rpow_const
      fun ξ => Or.inl (add_pos_of_pos_of_nonneg one_pos (mul_nonneg (sq_nonneg _) (sq_nonneg _))).ne')

theorem weightedNormLimit : EpsLimit := by
  unfold EpsLimit
  intro d s M F B hM hF hB
  unfold nrm at hB ⊢
  have he0 : Tendsto (fun n : ℕ => 1 / ((n : ℝ) + 1)) atTop (𝓝 0) :=
    tendsto_one_div_add_atTop_nhds_zero_nat
  have hpos : ∀ n : ℕ, 0 < 1 / ((n : ℝ) + 1) := fun n => by positivity
  have hle1 : ∀ n : ℕ, 1 / ((n : ℝ) + 1) ≤ 1 := fun n => by
    rw [div_le_one (by positivity)]
    linarith [(Nat.cast_nonneg n : (0 : ℝ) ≤ n)]
  have hlim : ∀ ξ : E d, Tendsto
      (fun n : ℕ => ENNReal.ofReal (om s M (1 / ((n : ℝ) + 1)) ξ) ^ 2 * ‖F ξ‖ₑ ^ 2) atTop
      (𝓝 (ENNReal.ofReal (om s 0 0 ξ) ^ 2 * ‖F ξ‖ₑ ^ 2)) := by
    intro ξ
    have h1 : Tendsto (fun n : ℕ => om s M (1 / ((n : ℝ) + 1)) ξ) atTop
        (𝓝 (om s 0 0 ξ)) := by
      rw [← om_eps_zero s M ξ]
      exact ((om_continuous_eps s M ξ).tendsto 0).comp he0
    have h2 : Tendsto (fun n : ℕ => ENNReal.ofReal (om s M (1 / ((n : ℝ) + 1)) ξ) ^ 2) atTop
        (𝓝 (ENNReal.ofReal (om s 0 0 ξ) ^ 2)) := by
      exact ((ENNReal.continuous_pow 2).tendsto _).comp ((ENNReal.continuous_ofReal.tendsto _).comp h1)
    have hfin : ‖F ξ‖ₑ ^ 2 ≠ ⊤ := ENNReal.pow_ne_top enorm_ne_top
    exact ENNReal.Tendsto.mul_const h2 (Or.inr hfin)
  have hmeas : ∀ n : ℕ, Measurable fun ξ : E d =>
      ENNReal.ofReal (om s M (1 / ((n : ℝ) + 1)) ξ) ^ 2 * ‖F ξ‖ₑ ^ 2 := fun n => by
    have hc := om_continuous (d := d) s M (1 / ((n : ℝ) + 1))
    exact ((ENNReal.measurable_ofReal.comp hc.measurable).pow_const 2).mul
      (hF.measurable.enorm.pow_const 2)
  calc ∫⁻ ξ, ENNReal.ofReal (om s 0 0 ξ) ^ 2 * ‖F ξ‖ₑ ^ 2
      = ∫⁻ ξ, liminf (fun n : ℕ =>
          ENNReal.ofReal (om s M (1 / ((n : ℝ) + 1)) ξ) ^ 2 * ‖F ξ‖ₑ ^ 2) atTop :=
        lintegral_congr fun ξ => ((hlim ξ).liminf_eq).symm
    _ ≤ liminf (fun n : ℕ => ∫⁻ ξ,
          ENNReal.ofReal (om s M (1 / ((n : ℝ) + 1)) ξ) ^ 2 * ‖F ξ‖ₑ ^ 2) atTop :=
        lintegral_liminf_le hmeas
    _ ≤ B := by
        refine Filter.liminf_le_of_le (by isBoundedDefault) fun b hb => ?_
        obtain ⟨n, hn⟩ := hb.exists
        exact hn.trans (hB _ (hpos n) (hle1 n))

private theorem sq_one_add_rpow_mul_rpow_le_max_mul_rpow (s M ε t : ℝ) (hε : 0 < ε) (ht : 0 ≤ t) :
    ((1 + t) ^ (s / 2) * (1 + ε ^ 2 * t) ^ (-(M / 2))) ^ 2 ≤
      max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + t) ^ (s - M) := by
  have hA : 0 < 1 + t := by linarith
  have hε2 : 0 < ε ^ 2 := by positivity
  have hB : 0 < 1 + ε ^ 2 * t := add_pos_of_pos_of_nonneg one_pos (mul_nonneg hε2.le ht)
  have ha : 0 < min 1 (ε ^ 2) := lt_min one_pos hε2
  have hb : 0 < max 1 (ε ^ 2) := lt_of_lt_of_le one_pos (le_max_left _ _)
  have h1 : ((1 + t) ^ (s / 2)) ^ 2 = (1 + t) ^ s := by
    rw [sq ((1 + t) ^ (s / 2)), ← Real.rpow_add hA]
    congr 1
    ring
  have h2 : ((1 + ε ^ 2 * t) ^ (-(M / 2))) ^ 2 = (1 + ε ^ 2 * t) ^ (-M) := by
    rw [sq ((1 + ε ^ 2 * t) ^ (-(M / 2))), ← Real.rpow_add hB]
    congr 1
    ring
  have hAp : 0 ≤ (1 + t) ^ (-M) := Real.rpow_nonneg hA.le _
  have key : (1 + ε ^ 2 * t) ^ (-M) ≤
      max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + t) ^ (-M) := by
    rcases le_total 0 M with hM | hM
    · have hle : min 1 (ε ^ 2) * (1 + t) ≤ 1 + ε ^ 2 * t := by
        rw [mul_add, mul_one]; exact add_le_add (min_le_left _ _) (mul_le_mul_of_nonneg_right (min_le_right _ _) ht)
      calc (1 + ε ^ 2 * t) ^ (-M) ≤ (min 1 (ε ^ 2) * (1 + t)) ^ (-M) :=
            Real.rpow_le_rpow_of_nonpos (mul_pos ha hA) hle (by linarith)
        _ = (min 1 (ε ^ 2)) ^ (-M) * (1 + t) ^ (-M) := Real.mul_rpow ha.le hA.le
        _ ≤ max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + t) ^ (-M) :=
            mul_le_mul_of_nonneg_right (le_max_left _ _) hAp
    · have hle : 1 + ε ^ 2 * t ≤ max 1 (ε ^ 2) * (1 + t) := by
        rw [mul_add, mul_one]; exact add_le_add (le_max_left _ _) (mul_le_mul_of_nonneg_right (le_max_right _ _) ht)
      calc (1 + ε ^ 2 * t) ^ (-M) ≤ (max 1 (ε ^ 2) * (1 + t)) ^ (-M) :=
            Real.rpow_le_rpow hB.le hle (by linarith)
        _ = (max 1 (ε ^ 2)) ^ (-M) * (1 + t) ^ (-M) := Real.mul_rpow hb.le hA.le
        _ ≤ max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + t) ^ (-M) :=
            mul_le_mul_of_nonneg_right (le_max_right _ _) hAp
  rw [mul_pow, h1, h2, sub_eq_add_neg, Real.rpow_add hA]
  calc (1 + t) ^ s * (1 + ε ^ 2 * t) ^ (-M)
      ≤ (1 + t) ^ s * (max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + t) ^ (-M)) :=
        mul_le_mul_of_nonneg_left key (Real.rpow_nonneg hA.le _)
    _ = max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * ((1 + t) ^ s * (1 + t) ^ (-M)) := by
        ring

lemma om_sq_le {d : ℕ} (s M ε : ℝ) (hε : 0 < ε) (ξ : E d) :
    om s M ε ξ ^ 2 ≤ max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + ‖ξ‖ ^ 2) ^ (s - M) := by
  unfold om
  exact sq_one_add_rpow_mul_rpow_le_max_mul_rpow s M ε _ hε (by positivity)

theorem weightedNormFinite : FiniteWeighted := by
  unfold FiniteWeighted
  intro d g hg hgc s M ε hε hsM
  unfold nrm
  have hint0 : Integrable (fun ξ : E d => ((1 : ℝ) + ‖ξ‖ ^ 2) ^ (-(2 * (M - s)) / 2)) := by
    apply integrable_rpow_neg_one_add_norm_sq
    rw [finrank_euclideanSpace_fin]
    linarith
  have hexp : -(2 * (M - s)) / 2 = s - M := by ring
  rw [hexp] at hint0
  have hint_r := (hint0.const_mul (max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)))).mul_const
    ((∫ x, ‖g x‖) ^ 2)
  refine lt_of_le_of_lt (lintegral_mono fun ξ => ?_) hint_r.lintegral_lt_top
  have hK : 0 ≤ max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) :=
    le_max_of_le_right (Real.rpow_nonneg (zero_le_one.trans (le_max_left _ _)) _)
  have hw := om_nonneg s M ε ξ
  have hreal : om s M ε ξ ^ 2 * ‖𝓕 g ξ‖ ^ 2 ≤
      max ((min 1 (ε ^ 2)) ^ (-M)) ((max 1 (ε ^ 2)) ^ (-M)) * (1 + ‖ξ‖ ^ 2) ^ (s - M) *
        (∫ x, ‖g x‖) ^ 2 := by
    refine mul_le_mul (om_sq_le s M ε hε ξ) ?_ (sq_nonneg _)
      (mul_nonneg hK (Real.rpow_nonneg (by positivity) _))
    rw [sq, sq]
    exact mul_self_le_mul_self (norm_nonneg _) (norm_fourier_le_integral_norm g ξ)
  have heq : ENNReal.ofReal (om s M ε ξ) ^ 2 * ‖𝓕 g ξ‖ₑ ^ 2 =
      ENNReal.ofReal (om s M ε ξ ^ 2 * ‖𝓕 g ξ‖ ^ 2) := by
    rw [ENNReal.ofReal_mul (sq_nonneg _), ENNReal.ofReal_pow hw, ENNReal.ofReal_pow (norm_nonneg _),
      ofReal_norm]
  exact heq.trans_le (ENNReal.ofReal_le_ofReal hreal)

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightedNormFinite =====

-- ===== clump member: Formalism.UnipotentAdelicQuotients.EllRegCheck =====
-- clump-header: {"m": "Formalism.UnipotentAdelicQuotients.EllRegCheck", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.EllReg\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.BaseLevel\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.ConvolutionBound\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.Decompose\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.ExistsSmoothExt\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.IteratedPartialFourierChar\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.Moments\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingFourier\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.PairingLocal\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.SmoothOfLocallySmooth\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.StepCore\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.SymbLower\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeakFourier\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightDiff\npublic import Formalism.UnipotentAdelicQuotients.EllipticRegularity.WeightedNormFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.UnipotentAdelicQuotients.EllRegCut\npublic import Formalism.UnipotentAdelicQuotients.EllRegStep\n\n"}
section -- clump:auto
@[expose] public section

namespace ZetaZeros.D.EllReg

theorem elliptic_regularity_of_parts : Internal := by
  have hSP : StepOfParts :=
    stepOfParts_of frozenDecompositionOfParts weightedNormFinite weightedNormLimit regularity_inductive_step
  exact internal_of_all smoothOfSobolevAll existsBump cutoffContinuous smoothOfLocallySmooth
    sobolevOfCompactSupport symbolLowerBound sobolevWeightLipschitz convolution_bound frozenKernelSmall
    adjointPairingFourier iteratedPartialFourierChar integralFourierChar adjointPairingLocal weakEquationFourier hSP

end ZetaZeros.D.EllReg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.UnipotentAdelicQuotients.EllRegCheck =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegW =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegW", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSmoothOfRegularity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegBridge\npublic import Formalism.UnipotentAdelicQuotients.EllRegCheck\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

theorem elliptic_regularity_weighted : EllRegW := elliptic_regularity_transfer_holds ZetaZeros.D.EllReg.elliptic_regularity_of_parts

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEllRegW =====
