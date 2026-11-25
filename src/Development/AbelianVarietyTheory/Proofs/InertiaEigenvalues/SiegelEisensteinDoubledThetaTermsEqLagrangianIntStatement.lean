module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst
public import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CartFrSgn
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HermitianAdjointLawsStandardCharacter
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DblApply
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.WeilSiegelFormulaUnitary
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntegrandPeriodic
import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.PicardGroup
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LintegralNormSqEqToL2
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubledLagrangianEqIffSiegelParabolicCoset, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDoubledLagrangianOfRationalUnitaryFrame, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalUnitaryDoubledLagrangianFrameWitt, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralHermitianAdjointCovolOnePeriodicEq, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilDoublingProductRationalTranslateEqFram, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianInt, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianIntStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubledLagrangianEqIffSiegelParabolicCoset =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubledLagrangianEqIffSiegelParabolicCoset", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift GlobalTheory.SWLagTerms
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.SWLagSame

open GlobalTheory.RawLift GlobalTheory.SWLagTerms GlobalTheory.Doubling

variable {D : D7}

theorem hAdj_eq (W : HSp D) (M : Matrix (Fin W.rank) (Fin W.rank) D.host.E) :
    hAdj W M = W.gram⁻¹ * Mᴴ * W.gram := rfl

theorem hAdj_mul (W : HSp D) (M N : Matrix (Fin W.rank) (Fin W.rank) D.host.E) :
    hAdj W (M * N) = hAdj W N * hAdj W M := by
  simp only [hAdj_eq, Matrix.conjTranspose_mul, Matrix.mul_assoc]
  rw [← Matrix.mul_assoc W.gram W.gram⁻¹, Matrix.mul_nonsing_inv _ (_root_.GlobalTheory.MixModel.gram_isUnit_det W), Matrix.one_mul]

theorem hAdj_hAdj (W : HSp D) (M : Matrix (Fin W.rank) (Fin W.rank) D.host.E) : hAdj W (hAdj W M) = M := by
  simp only [hAdj_eq, Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv, _root_.GlobalTheory.MixModel.gram_conjTranspose,
    Matrix.conjTranspose_conjTranspose, Matrix.mul_assoc]
  rw [Matrix.nonsing_inv_mul_cancel_left _ _ (_root_.GlobalTheory.MixModel.gram_isUnit_det W), Matrix.nonsing_inv_mul _ (_root_.GlobalTheory.MixModel.gram_isUnit_det W),
    Matrix.mul_one]

def rowD₁ (W : HSp D) (g : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    Matrix (Fin W.rank) (Fin W.rank) D.host.E :=
  (GlobalTheory.SWLagTerms.blk W g).toBlocks₁₁ - (GlobalTheory.SWLagTerms.blk W g).toBlocks₂₁

def rowD₂ (W : HSp D) (g : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    Matrix (Fin W.rank) (Fin W.rank) D.host.E :=
  (GlobalTheory.SWLagTerms.blk W g).toBlocks₂₂ - (GlobalTheory.SWLagTerms.blk W g).toBlocks₁₂

theorem frameOf_eq (W : HSp D) (g : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    frameOf W g = (hAdj W (rowD₂ W g), hAdj W (rowD₁ W g)) := rfl

theorem blk_mul (W : HSp D) (h g : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    GlobalTheory.SWLagTerms.blk W (h * g) = GlobalTheory.SWLagTerms.blk W h * GlobalTheory.SWLagTerms.blk W g := by
  simp only [GlobalTheory.SWLagTerms.blk, Matrix.submatrix_mul_equiv]

section Blocks

variable {K : Type} [Field K] {r : ℕ}

theorem toBlocks_mul_parts (X Y : Matrix (Fin r ⊕ Fin r) (Fin r ⊕ Fin r) K) :
    (X * Y).toBlocks₁₁ = X.toBlocks₁₁ * Y.toBlocks₁₁ + X.toBlocks₁₂ * Y.toBlocks₂₁ ∧
    (X * Y).toBlocks₁₂ = X.toBlocks₁₁ * Y.toBlocks₁₂ + X.toBlocks₁₂ * Y.toBlocks₂₂ ∧
    (X * Y).toBlocks₂₁ = X.toBlocks₂₁ * Y.toBlocks₁₁ + X.toBlocks₂₂ * Y.toBlocks₂₁ ∧
    (X * Y).toBlocks₂₂ = X.toBlocks₂₁ * Y.toBlocks₁₂ + X.toBlocks₂₂ * Y.toBlocks₂₂ := by
  refine ⟨?_, ?_, ?_, ?_⟩ <;> ext i j <;>
    simp [Matrix.toBlocks₁₁, Matrix.toBlocks₁₂, Matrix.toBlocks₂₁, Matrix.toBlocks₂₂, Matrix.mul_apply,
      Fintype.sum_sum_type]

theorem keeps_iff_common (H G : Matrix (Fin r ⊕ Fin r) (Fin r ⊕ Fin r) K) (hG : IsUnit G.det) :
    H.toBlocks₂₁ + H.toBlocks₂₂ = H.toBlocks₁₁ + H.toBlocks₁₂ ↔
      ∃ Q, (H * G).toBlocks₁₁ - (H * G).toBlocks₂₁ = Q * (G.toBlocks₁₁ - G.toBlocks₂₁) ∧
        (H * G).toBlocks₂₂ - (H * G).toBlocks₁₂ = Q * (G.toBlocks₂₂ - G.toBlocks₁₂) := by
  obtain ⟨e11, e12, e21, e22⟩ := toBlocks_mul_parts H G
  rw [e11, e12, e21, e22]
  constructor
  · intro kd
    have h22 : H.toBlocks₂₂ = H.toBlocks₁₁ + H.toBlocks₁₂ - H.toBlocks₂₁ := by rw [← kd]; abel
    refine ⟨H.toBlocks₁₁ - H.toBlocks₂₁, ?_, ?_⟩ <;> rw [h22] <;> noncomm_ring
  · rintro ⟨Q, h1, h2⟩
    set X := H.toBlocks₁₁ - H.toBlocks₂₁ - Q
    set Y := H.toBlocks₂₂ - H.toBlocks₁₂ - Q
    have hm : Matrix.fromBlocks X (-Y) (0 : Matrix (Fin r) (Fin r) K) 0 * G = 0 := by
      conv_lhs => rw [← Matrix.fromBlocks_toBlocks G]
      rw [Matrix.fromBlocks_multiply]
      have a1 : X * G.toBlocks₁₁ + -Y * G.toBlocks₂₁ = 0 := by
        simp only [X, Y]; rw [← sub_eq_zero] at h1; rw [← h1]; noncomm_ring
      have a2 : X * G.toBlocks₁₂ + -Y * G.toBlocks₂₂ = 0 := by
        simp only [X, Y]; rw [← sub_eq_zero] at h2; rw [← neg_eq_zero, ← h2]; noncomm_ring
      rw [a1, a2]
      simp
    have h0 : Matrix.fromBlocks X (-Y) (0 : Matrix (Fin r) (Fin r) K) 0 = 0 := by
      have := Matrix.mul_nonsing_inv_cancel_right G (Matrix.fromBlocks X (-Y) (0 : Matrix (Fin r) (Fin r) K) 0) hG
      rw [hm, Matrix.zero_mul] at this
      exact this.symm
    rw [← Matrix.fromBlocks_zero, Matrix.fromBlocks_inj] at h0
    have hX : X = 0 := h0.1
    have hY : Y = 0 := neg_eq_zero.1 h0.2.1
    have e1 : H.toBlocks₁₁ = H.toBlocks₂₁ + Q := sub_eq_zero.1 (by rw [← sub_sub]; exact hX)
    have e2 : H.toBlocks₂₂ = H.toBlocks₁₂ + Q := sub_eq_zero.1 (by rw [← sub_sub]; exact hY)
    rw [e1, e2]; abel

end Blocks

theorem lag_eq_iff (W : HSp D) {Y Y' : Lag W}
    {C C' : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E}
    (hY : IsLagFrame W Y C) (hY' : IsLagFrame W Y' C') :
    Y = Y' ↔ ∃ B, C'.1 = C.1 * B ∧ C'.2 = C.2 * B := by
  have hcol : ∀ (C : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E)
      (B : Matrix (Fin W.rank) (Fin W.rank) D.host.E) (j : Fin W.rank),
      ((fun a => (C.1 * B) a j), (fun a => (C.2 * B) a j)) = ∑ k, B k j • ((fun a => C.1 a k), (fun a => C.2 a k)) := by
    intro C B j
    ext a <;> simp [Matrix.mul_apply, Prod.fst_sum, Prod.snd_sum, Finset.sum_apply, mul_comm]
  constructor
  · rintro rfl
    have hmem : ∀ j, ((fun a => C'.1 a j), (fun a => C'.2 a j)) ∈
        Submodule.span D.host.E (Set.range fun k => ((fun a => C.1 a k), (fun a => C.2 a k))) := by
      intro j
      rw [IsLagFrame] at hY hY'
      rw [hY, ← hY']
      exact Submodule.subset_span ⟨j, rfl⟩
    choose c hc using fun j => (Submodule.mem_span_range_iff_exists_fun D.host.E).1 (hmem j)
    refine ⟨Matrix.of fun k j => c j k, ?_, ?_⟩
    · refine Matrix.ext fun a j => ?_
      have := congrArg (fun p => p.1 a) (hc j)
      simp [Prod.fst_sum, Finset.sum_apply] at this
      rw [Matrix.mul_apply]; simpa [mul_comm] using this.symm
    · refine Matrix.ext fun a j => ?_
      have := congrArg (fun p => p.2 a) (hc j)
      simp [Prod.snd_sum, Finset.sum_apply] at this
      rw [Matrix.mul_apply]; simpa [mul_comm] using this.symm
  · rintro ⟨B, h1, h2⟩
    have hle : Y'.1 ≤ Y.1 := by
      rw [IsLagFrame] at hY hY'
      rw [← hY, ← hY', Submodule.span_le]
      rintro _ ⟨j, rfl⟩
      simp only [h1, h2]
      rw [hcol]
      exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
    exact Subtype.ext (Submodule.eq_of_le_of_finrank_eq hle (Y'.2.1.trans Y.2.1.symm)).symm

theorem frame_iff (W : HSp D) (g g' : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    (∃ B, (frameOf W g').1 = (frameOf W g).1 * B ∧ (frameOf W g').2 = (frameOf W g).2 * B) ↔
      ∃ Q, rowD₁ W g' = Q * rowD₁ W g ∧ rowD₂ W g' = Q * rowD₂ W g := by
  simp only [frameOf_eq]
  constructor
  · rintro ⟨B, h1, h2⟩
    refine ⟨hAdj W B, ?_, ?_⟩
    · rw [← hAdj_hAdj W (rowD₁ W g'), h2, hAdj_mul, hAdj_hAdj]
    · rw [← hAdj_hAdj W (rowD₂ W g'), h1, hAdj_mul, hAdj_hAdj]
  · rintro ⟨Q, h1, h2⟩
    exact ⟨hAdj W Q, by rw [h2, hAdj_mul], by rw [h1, hAdj_mul]⟩

theorem keeps_iff_rows (W : HSp D) (g g' : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E)
    (hg : IsUnit g.det) :
    KeepsDiag finSumFinEquiv (g' * g⁻¹) ↔ ∃ Q, rowD₁ W g' = Q * rowD₁ W g ∧ rowD₂ W g' = Q * rowD₂ W g := by
  have hb : IsUnit (GlobalTheory.SWLagTerms.blk W g).det := by
    rw [GlobalTheory.SWLagTerms.blk, Matrix.det_submatrix_equiv_self]; exact hg
  have := keeps_iff_common (GlobalTheory.SWLagTerms.blk W (g' * g⁻¹)) (GlobalTheory.SWLagTerms.blk W g) hb
  rw [← blk_mul, Matrix.nonsing_inv_mul_cancel_right _ _ hg] at this
  exact this

theorem keeps_map_iff {K A : Type} [CommRing K] [CommRing A] (f : K →+* A) (hf : Function.Injective f) {n ι : Type}
    (e : n ⊕ n ≃ ι) (M : Matrix ι ι K) : KeepsDiag e (M.map f) ↔ KeepsDiag e M := by
  rw [GlobalTheory.Doubling.keepsDiag_iff e, GlobalTheory.Doubling.keepsDiag_iff e]
  simp only [Matrix.map_apply, ← map_add (f := _), hf.eq_iff]

theorem sameClass : ∀ (D : D7) (W : HSp D) (γ γ' : GA D (GlobalTheory.Doubling.dblSp W)) (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) (g₀' : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E), Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D) → Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ' = g₀'.map (incA D) → ∀ (Y Y' : Lag W), IsLagFrame W Y (frameOf W g₀) → IsLagFrame W Y' (frameOf W g₀') → (Y = Y' ↔ γ' * γ⁻¹ ∈ GlobalTheory.Doubling.siegel W) := by
  intro D W γ γ' g₀ g₀' hγ hγ' Y Y' hY hY'
  have hinj : Function.Injective (incA D) :=
    Algebra.TensorProduct.includeRight_injective (NumberField.AdeleRing.algebraMap_injective (𝓞 D.host.F) D.host.F)
  haveI := hinj.nontrivial
  have hu : IsUnit (g₀.map (incA D)).det := by
    rw [← hγ, ← Matrix.isUnit_iff_isUnit_det]
    exact (matHom (GlobalTheory.Doubling.dblSp W) γ).isUnit
  have hg₀ : IsUnit g₀.det := by
    refine isUnit_iff_ne_zero.2 fun h0 => ?_
    have h := hu
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det, h0, map_zero] at h
    exact not_isUnit_zero h
  have h1 : mt _ γ⁻¹ * mt _ γ = 1 := by
    show (matHom (GlobalTheory.Doubling.dblSp W) γ⁻¹).val * (matHom (GlobalTheory.Doubling.dblSp W) γ).val = 1
    rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one]
  have h2 : (g₀⁻¹).map (incA D) * g₀.map (incA D) = 1 := by
    rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ hg₀, Matrix.map_one _ (map_zero _) (map_one _)]
  rw [hγ] at h1
  have hinv : mt _ γ⁻¹ = (g₀⁻¹).map (incA D) := by
    rw [← Matrix.mul_nonsing_inv_cancel_right _ (mt _ γ⁻¹) hu, h1, ← h2, Matrix.mul_nonsing_inv_cancel_right _ _ hu]
  have hmt : mt _ (γ' * γ⁻¹) = (g₀' * g₀⁻¹).map (incA D) := by
    rw [Matrix.map_mul, ← hγ', ← hinv]
    show (matHom (GlobalTheory.Doubling.dblSp W) (γ' * γ⁻¹)).val = (matHom (GlobalTheory.Doubling.dblSp W) γ').val * (matHom (GlobalTheory.Doubling.dblSp W) γ⁻¹).val
    rw [map_mul, Units.val_mul]
  rw [lag_eq_iff W hY hY', frame_iff, ← keeps_iff_rows W g₀ g₀' hg₀, ← keeps_map_iff (incA D) hinj, ← hmt]
  exact GlobalTheory.Doubling.mem_siegelOf.symm

end GlobalTheory.SWLagSame

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubledLagrangianEqIffSiegelParabolicCoset =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDoubledLagrangianOfRationalUnitaryFrame =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDoubledLagrangianOfRationalUnitaryFrame", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift GlobalTheory.SWLagTerms
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.SWLagTerms.LagrangianFrames

section Blocks

variable {K : Type} [Field K] [StarRing K] {n : Type} [Fintype n] [DecidableEq n]

theorem row_rel (G : Matrix n n K) (hG : G.det ≠ 0) (B : Matrix (n ⊕ n) (n ⊕ n) K)
    (hB : Bᴴ * fromBlocks G 0 0 (-G) * B = fromBlocks G 0 0 (-G)) :
    B * fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ = fromBlocks G⁻¹ 0 0 (-G⁻¹) := by
  have hu : IsUnit G.det := isUnit_iff_ne_zero.2 hG
  have h1 : fromBlocks G 0 0 (-G) * fromBlocks G⁻¹ 0 0 (-G⁻¹) = 1 := by
    rw [fromBlocks_multiply]; simp [Matrix.mul_nonsing_inv _ hu, fromBlocks_one]
  have h2 : fromBlocks G⁻¹ 0 0 (-G⁻¹) * fromBlocks G 0 0 (-G) = 1 := by
    rw [fromBlocks_multiply]; simp [Matrix.nonsing_inv_mul _ hu, fromBlocks_one]
  have hL : (fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ * fromBlocks G 0 0 (-G)) * B = 1 := by
    calc (fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ * fromBlocks G 0 0 (-G)) * B
        = fromBlocks G⁻¹ 0 0 (-G⁻¹) * (Bᴴ * fromBlocks G 0 0 (-G) * B) := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hB, h2]
  have hR : B * (fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ * fromBlocks G 0 0 (-G)) = 1 := mul_eq_one_comm.1 hL
  calc B * fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ
      = B * (fromBlocks G⁻¹ 0 0 (-G⁻¹) * Bᴴ * fromBlocks G 0 0 (-G)) * fromBlocks G⁻¹ 0 0 (-G⁻¹) := by
        simp only [Matrix.mul_assoc, h1, Matrix.mul_one]
    _ = fromBlocks G⁻¹ 0 0 (-G⁻¹) := by rw [hR, Matrix.one_mul]

theorem blocks_rel (G : Matrix n n K) (hG : G.det ≠ 0) (B : Matrix (n ⊕ n) (n ⊕ n) K)
    (hB : Bᴴ * fromBlocks G 0 0 (-G) * B = fromBlocks G 0 0 (-G)) :
    B.toBlocks₁₁ * G⁻¹ * B.toBlocks₁₁ᴴ - B.toBlocks₁₂ * G⁻¹ * B.toBlocks₁₂ᴴ = G⁻¹ ∧
    B.toBlocks₁₁ * G⁻¹ * B.toBlocks₂₁ᴴ - B.toBlocks₁₂ * G⁻¹ * B.toBlocks₂₂ᴴ = 0 ∧
    B.toBlocks₂₁ * G⁻¹ * B.toBlocks₁₁ᴴ - B.toBlocks₂₂ * G⁻¹ * B.toBlocks₁₂ᴴ = 0 ∧
    B.toBlocks₂₁ * G⁻¹ * B.toBlocks₂₁ᴴ - B.toBlocks₂₂ * G⁻¹ * B.toBlocks₂₂ᴴ = -G⁻¹ := by
  have h := row_rel G hG B hB
  rw [← fromBlocks_toBlocks B, fromBlocks_conjTranspose, fromBlocks_multiply, fromBlocks_multiply,
    fromBlocks_inj] at h
  simp only [Matrix.mul_zero, add_zero, Matrix.mul_neg, Matrix.neg_mul, zero_sub, ← sub_eq_add_neg] at h
  exact h

end Blocks

section Blocks2

variable {K : Type} [Field K] [StarRing K] {n : Type} [Fintype n] [DecidableEq n]

theorem form_eq (G : Matrix n n K) (hG : G.det ≠ 0) (B : Matrix (n ⊕ n) (n ⊕ n) K)
    (hB : Bᴴ * fromBlocks G 0 0 (-G) * B = fromBlocks G 0 0 (-G)) :
    (B.toBlocks₁₁ - B.toBlocks₂₁) * G⁻¹ * (B.toBlocks₁₁ - B.toBlocks₂₁)ᴴ =
      (B.toBlocks₂₂ - B.toBlocks₁₂) * G⁻¹ * (B.toBlocks₂₂ - B.toBlocks₁₂)ᴴ := by
  obtain ⟨h11, h12, h21, h22⟩ := blocks_rel G hG B hB
  set a := B.toBlocks₁₁
  set b := B.toBlocks₁₂
  set c := B.toBlocks₂₁
  set d := B.toBlocks₂₂
  rw [← sub_eq_zero, Matrix.conjTranspose_sub, Matrix.conjTranspose_sub]
  have : (a - c) * G⁻¹ * (aᴴ - cᴴ) - (d - b) * G⁻¹ * (dᴴ - bᴴ) =
      (a * G⁻¹ * aᴴ - b * G⁻¹ * bᴴ) + (c * G⁻¹ * cᴴ - d * G⁻¹ * dᴴ) - (a * G⁻¹ * cᴴ - b * G⁻¹ * dᴴ) -
        (c * G⁻¹ * aᴴ - d * G⁻¹ * bᴴ) := by
    simp only [Matrix.mul_sub, Matrix.sub_mul]; abel
  rw [this, h11, h12, h21, h22]; abel

theorem adj_form (G : Matrix n n K) (hG : G.det ≠ 0) (hH : Gᴴ = G) (M : Matrix n n K) :
    (G⁻¹ * Mᴴ * G)ᴴ * G * (G⁻¹ * Mᴴ * G) = G * (M * G⁻¹ * Mᴴ) * G := by
  have hu : IsUnit G.det := isUnit_iff_ne_zero.2 hG
  simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, Matrix.conjTranspose_nonsing_inv, hH,
    Matrix.mul_assoc, Matrix.nonsing_inv_mul_cancel_left _ _ hu]

theorem ker_trivial (G : Matrix n n K) (hG : G.det ≠ 0) (B : Matrix (n ⊕ n) (n ⊕ n) K)
    (hB : Bᴴ * fromBlocks G 0 0 (-G) * B = fromBlocks G 0 0 (-G)) (v : n → K)
    (h1 : (G⁻¹ * (B.toBlocks₂₂ - B.toBlocks₁₂)ᴴ * G) *ᵥ v = 0)
    (h2 : (G⁻¹ * (B.toBlocks₁₁ - B.toBlocks₂₁)ᴴ * G) *ᵥ v = 0) : v = 0 := by
  have hu : IsUnit G.det := isUnit_iff_ne_zero.2 hG
  have hrow := row_rel G hG B hB
  set w := G *ᵥ v
  have k1 : (B.toBlocks₂₂ - B.toBlocks₁₂)ᴴ *ᵥ w = 0 := by
    have := congrArg (G *ᵥ ·) h1
    simpa [w, Matrix.mulVec_mulVec, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu] using this
  have k2 : (B.toBlocks₁₁ - B.toBlocks₂₁)ᴴ *ᵥ w = 0 := by
    have := congrArg (G *ᵥ ·) h2
    simpa [w, Matrix.mulVec_mulVec, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu] using this
  have hx : Bᴴ *ᵥ Sum.elim w (-w) = 0 := by
    rw [← fromBlocks_toBlocks B, fromBlocks_conjTranspose, fromBlocks_mulVec]
    simp only [Matrix.conjTranspose_sub, Matrix.sub_mulVec] at k1 k2
    ext (i | i)
    · have := congrFun k2 i
      simp only [Pi.sub_apply, Pi.zero_apply] at this
      simp only [Sum.elim_inl, Pi.zero_apply, Sum.elim_comp_inl, Sum.elim_comp_inr, Matrix.mulVec_neg, Pi.add_apply,
        Pi.neg_apply]
      linear_combination this
    · have := congrFun k1 i
      simp only [Pi.sub_apply, Pi.zero_apply] at this
      simp only [Sum.elim_inr, Pi.zero_apply, Sum.elim_comp_inl, Sum.elim_comp_inr, Matrix.mulVec_neg, Pi.add_apply,
        Pi.neg_apply]
      linear_combination -this
  have hK : fromBlocks G⁻¹ 0 0 (-G⁻¹) *ᵥ Sum.elim w (-w) = 0 := by
    rw [← hrow, ← Matrix.mulVec_mulVec, hx, Matrix.mulVec_zero]
  have hw : w = 0 := by
    have := congrArg (fun x => fromBlocks G 0 0 (-G) *ᵥ x) hK
    simp only [Matrix.mulVec_mulVec, Matrix.mulVec_zero, fromBlocks_multiply] at this
    simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, Matrix.mul_neg, Matrix.neg_mul, neg_neg,
      Matrix.mul_nonsing_inv _ hu, neg_zero, fromBlocks_one, Matrix.one_mulVec] at this
    funext i; exact congrFun this (Sum.inl i)
  have : G⁻¹ *ᵥ w = v := by simp [w, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hu]
  rw [← this, hw, Matrix.mulVec_zero]

end Blocks2

variable {D : D7}

theorem unitary_of_mt (W : HSp D) (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E)
    (h : Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D)) :
    g₀ᴴ * (GlobalTheory.Doubling.dblSp W).gram * g₀ = (GlobalTheory.Doubling.dblSp W).gram := by
  have hγ : Formalism.UG.cT (sigR (AF D.host.F) D.sp.cm.sig) (Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ) *
      (GlobalTheory.Doubling.dblSp W).gram.map (incA D) * Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ =
      (GlobalTheory.Doubling.dblSp W).gram.map (incA D) := γ.2
  have hc : Formalism.UG.cT (sigR (AF D.host.F) D.sp.cm.sig) (g₀.map (incA D)) = g₀ᴴ.map (incA D) := by
    ext i j
    simp only [Formalism.UG.cT, Matrix.map_apply, Matrix.transpose_apply, Matrix.conjTranspose_apply]
    simp [sigR, CMData.sig, inclR]; rfl
  rw [h, hc, ← Matrix.map_mul, ← Matrix.map_mul] at hγ
  exact Matrix.map_injective
    (Algebra.TensorProduct.includeRight_injective (AdeleRing.algebraMap_injective (𝓞 D.host.F) D.host.F)) hγ

theorem star_dot' (W : HSp D) (c : Matrix (Fin W.rank) (Fin W.rank) D.host.E) (x x' : Fin W.rank → D.host.E) :
    star (c *ᵥ x) ⬝ᵥ W.gram *ᵥ (c *ᵥ x') = star x ⬝ᵥ (cᴴ * W.gram * c) *ᵥ x' := by
  rw [Matrix.star_mulVec]
  conv_rhs => rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec]

theorem blk_unitary (W : HSp D) (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E)
    (h : Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D)) :
    (blk W g₀)ᴴ * fromBlocks W.gram 0 0 (-W.gram) * blk W g₀ = fromBlocks W.gram 0 0 (-W.gram) := by
  have hU := unitary_of_mt W γ g₀ h
  rw [show (GlobalTheory.Doubling.dblSp W).gram = GlobalTheory.Doubling.dblGram finSumFinEquiv W.gram from GlobalTheory.Doubling.gram_hdbl W]
    at hU
  have := congrArg (fun X => X.submatrix finSumFinEquiv finSumFinEquiv) hU
  simp only [← Matrix.submatrix_mul_equiv _ _ _ finSumFinEquiv _, GlobalTheory.Doubling.dblGram, GlobalTheory.Doubling.submatrix_blkMat] at this
  exact this

theorem exists_lag_isLagFrame_frameOf (D : D7) (W : HSp D) (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D) → ∃ Y : Lag W, IsLagFrame W Y (frameOf W g₀) := by
  intro h
  have hB := blk_unitary W γ g₀ h
  have hG : (HSpace.gram W).det ≠ 0 := Formalism.L2.Theta.gram_det_ne W
  have hH : (HSpace.gram W)ᴴ = HSpace.gram W := Matrix.ext fun i j => W.herm.eq _ _
  set C := frameOf W g₀ with hC
  have h1 : C.1 = (HSpace.gram W)⁻¹ * ((blk W g₀).toBlocks₂₂ - (blk W g₀).toBlocks₁₂)ᴴ * HSpace.gram W := rfl
  have h2 : C.2 = (HSpace.gram W)⁻¹ * ((blk W g₀).toBlocks₁₁ - (blk W g₀).toBlocks₂₁)ᴴ * HSpace.gram W := rfl
  let φ : (Fin W.rank → D.host.E) →ₗ[D.host.E] (Fin W.rank → D.host.E) × (Fin W.rank → D.host.E) :=
    LinearMap.prod (Matrix.mulVecLin C.1) (Matrix.mulVecLin C.2)
  have hinj : Function.Injective φ := by
    refine (injective_iff_map_eq_zero φ).2 fun v hv => ?_
    have e1 : C.1 *ᵥ v = 0 := congrArg Prod.fst hv
    have e2 : C.2 *ᵥ v = 0 := congrArg Prod.snd hv
    rw [h1] at e1
    rw [h2] at e2
    exact ker_trivial _ hG _ hB v e1 e2
  let Y : Lag W := ⟨LinearMap.range φ, by
    rw [LinearMap.finrank_range_of_inj hinj]
    simp, by
    rintro _ ⟨x, rfl⟩ _ ⟨y, rfl⟩
    show star (C.1 *ᵥ x) ⬝ᵥ W.gram *ᵥ (C.1 *ᵥ y) = star (C.2 *ᵥ x) ⬝ᵥ W.gram *ᵥ (C.2 *ᵥ y)
    rw [star_dot', star_dot', h1, h2, adj_form _ hG hH, adj_form _ hG hH, form_eq _ hG _ hB]⟩
  refine ⟨Y, ?_⟩
  have hs := congrArg (Submodule.map φ) (Pi.basisFun D.host.E (Fin W.rank)).span_eq
  rw [Submodule.map_span, Submodule.map_top, ← Set.range_comp] at hs
  refine Eq.trans ?_ hs
  congr 2
  funext j
  ext a <;> simp [φ]

end GlobalTheory.SWLagTerms.LagrangianFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDoubledLagrangianOfRationalUnitaryFrame =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalUnitaryDoubledLagrangianFrameWitt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalUnitaryDoubledLagrangianFrameWitt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift GlobalTheory.SWLagTerms
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.LagWitt

open Matrix Formalism.UG

variable {K : Type} [Field K] (σ : K →+* K)

theorem cT_sub {m p : Type} (M N : Matrix m p K) : cT σ (M - N) = cT σ M - cT σ N := by
  unfold cT; ext i j; simp

theorem cT_smul {m p : Type} (c : K) (M : Matrix m p K) : cT σ (c • M) = σ c • cT σ M := by
  unfold cT; ext i j; simp

theorem cT_cT (hσ : ∀ x, σ (σ x) = x) {m p : Type} (M : Matrix m p K) : cT σ (cT σ M) = M := by
  unfold cT; ext i j; simp [hσ]

theorem cT_fromCols {m p q : Type} (M : Matrix m p K) (N : Matrix m q K) :
    cT σ (fromCols M N) = fromRows (cT σ M) (cT σ N) := by
  unfold cT; ext (i | i) j <;> simp

theorem cT_fromRows {m p q : Type} (M : Matrix p m K) (N : Matrix q m K) :
    cT σ (fromRows M N) = fromCols (cT σ M) (cT σ N) := by
  unfold cT; ext i (j | j) <;> simp

theorem cT_fromBlocks {m n p q : Type} (A : Matrix m p K) (B : Matrix m q K) (C : Matrix n p K) (D : Matrix n q K) :
    cT σ (fromBlocks A B C D) = fromBlocks (cT σ A) (cT σ C) (cT σ B) (cT σ D) := by
  unfold cT; ext (i | i) (j | j) <;> simp

theorem cT_form (hσ : ∀ x, σ (σ x) = x) {m ι κ : Type} [Fintype m] (J : Matrix m m K) (hJ : cT σ J = J)
    (Z : Matrix m ι K) (X : Matrix m κ K) : cT σ (cT σ Z * J * X) = cT σ X * J * Z := by
  rw [cT_mul, cT_mul, cT_cT σ hσ, hJ, Matrix.mul_assoc]

theorem exists_hyperbolic_complement (hσ : ∀ x, σ (σ x) = x) (h2 : (2 : K) ≠ 0) {m ι : Type} [Fintype m] [DecidableEq m]
    [Fintype ι] [DecidableEq ι] (J : Matrix m m K) (hJ : cT σ J = J) (hJu : IsUnit J.det) (Z : Matrix m ι K)
    (L : Matrix ι m K) (hL : L * Z = 1) (hZ : cT σ Z * J * Z = 0) :
    ∃ Z' : Matrix m ι K, cT σ Z * J * Z' = 1 ∧ cT σ Z' * J * Z' = 0 := by
  obtain ⟨X, hX⟩ : ∃ X : Matrix m ι K, cT σ Z * J * X = 1 := ⟨J⁻¹ * cT σ L, by
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc J, Matrix.mul_nonsing_inv _ hJu, Matrix.one_mul, ← cT_mul, hL, cT_one]⟩
  have hX' : cT σ X * J * Z = 1 := by
    rw [← cT_form σ hσ J hJ, hX, cT_one]
  obtain ⟨T, hT, h2T⟩ : ∃ T : Matrix ι ι K, cT σ T = T ∧ T + T = cT σ X * J * X := by
    refine ⟨(2 : K)⁻¹ • (cT σ X * J * X), ?_, ?_⟩
    · rw [cT_smul, cT_form σ hσ J hJ, map_inv₀, map_ofNat]
    · rw [← add_smul, ← two_mul, mul_inv_cancel₀ h2, one_smul]
  refine ⟨X - Z * T, ?_, ?_⟩
  · rw [Matrix.mul_sub, ← Matrix.mul_assoc, hZ, Matrix.zero_mul, sub_zero, hX]
  · rw [cT_sub, cT_mul, hT, Matrix.sub_mul, Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_sub]
    have e1 : cT σ X * J * (Z * T) = T := by rw [← Matrix.mul_assoc, hX', Matrix.one_mul]
    have e2 : T * cT σ Z * J * X = T := by
      rw [Matrix.mul_assoc T, Matrix.mul_assoc T, hX, Matrix.mul_one]
    have e3 : T * cT σ Z * J * (Z * T) = 0 := by
      rw [Matrix.mul_assoc T, Matrix.mul_assoc T, ← Matrix.mul_assoc (cT σ Z * J), hZ]
      simp
    rw [e1, e2, e3, ← h2T]; abel

theorem hyperbolic_fromCols (hσ : ∀ x, σ (σ x) = x) {ι : Type} [Fintype ι] [DecidableEq ι]
    (J : Matrix (ι ⊕ ι) (ι ⊕ ι) K) (hJ : cT σ J = J) (Z Z' : Matrix (ι ⊕ ι) ι K) (h : cT σ Z * J * Z = 0)
    (a : cT σ Z * J * Z' = 1) (b : cT σ Z' * J * Z' = 0) :
    cT σ (fromCols Z Z') * J * fromCols Z Z' = fromBlocks 0 1 1 0 := by
  have c : cT σ Z' * J * Z = 1 := by rw [← cT_form σ hσ J hJ, a, cT_one]
  rw [cT_fromCols, fromRows_mul, fromRows_mul_fromCols, h, a, b, c]

theorem exists_unitary_mul_eq (hσ : ∀ x, σ (σ x) = x) (h2 : (2 : K) ≠ 0) {ι : Type} [Fintype ι] [DecidableEq ι]
    (J : Matrix (ι ⊕ ι) (ι ⊕ ι) K) (hJ : cT σ J = J) (hJu : IsUnit J.det) (Z₁ Z₂ : Matrix (ι ⊕ ι) ι K)
    (L₁ L₂ : Matrix ι (ι ⊕ ι) K) (hL₁ : L₁ * Z₁ = 1) (hL₂ : L₂ * Z₂ = 1)
    (h₁ : cT σ Z₁ * J * Z₁ = 0) (h₂ : cT σ Z₂ * J * Z₂ = 0) :
    ∃ g : Matrix (ι ⊕ ι) (ι ⊕ ι) K, cT σ g * J * g = J ∧ g * Z₁ = Z₂ := by
  obtain ⟨Z₁', a₁, b₁⟩ := exists_hyperbolic_complement σ hσ h2 J hJ hJu Z₁ L₁ hL₁ h₁
  obtain ⟨Z₂', a₂, b₂⟩ := exists_hyperbolic_complement σ hσ h2 J hJ hJu Z₂ L₂ hL₂ h₂
  have k₁ := hyperbolic_fromCols σ hσ J hJ Z₁ Z₁' h₁ a₁ b₁
  have k₂ := hyperbolic_fromCols σ hσ J hJ Z₂ Z₂' h₂ a₂ b₂
  have HH : (fromBlocks 0 1 1 0 : Matrix (ι ⊕ ι) (ι ⊕ ι) K) * fromBlocks 0 1 1 0 = 1 := by
    rw [fromBlocks_multiply]; simp [fromBlocks_one]
  obtain ⟨Q, QP⟩ : ∃ Q, Q * fromCols Z₁ Z₁' = 1 :=
    ⟨fromBlocks 0 1 1 0 * cT σ (fromCols Z₁ Z₁') * J, by rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc (cT σ _) J, k₁, HH]⟩
  have PQ : fromCols Z₁ Z₁' * Q = 1 := mul_eq_one_comm.1 QP
  refine ⟨fromCols Z₂ Z₂' * Q, ?_, ?_⟩
  · calc cT σ (fromCols Z₂ Z₂' * Q) * J * (fromCols Z₂ Z₂' * Q)
          = cT σ Q * (cT σ (fromCols Z₂ Z₂') * J * fromCols Z₂ Z₂') * Q := by
            rw [cT_mul]; simp only [Matrix.mul_assoc]
      _ = cT σ Q * (cT σ (fromCols Z₁ Z₁') * J * fromCols Z₁ Z₁') * Q := by rw [k₁, k₂]
      _ = cT σ (fromCols Z₁ Z₁' * Q) * J * (fromCols Z₁ Z₁' * Q) := by
            rw [cT_mul]; simp only [Matrix.mul_assoc]
      _ = J := by rw [PQ, cT_one, Matrix.one_mul, Matrix.mul_one]
  · have e₁ : Z₁ = (fromCols Z₁ Z₁' : Matrix (ι ⊕ ι) (ι ⊕ ι) K) * (fromRows (1 : Matrix ι ι K) (0 : Matrix ι ι K)) := by
      rw [fromCols_mul_fromRows]; simp
    have e₂ : Z₂ = (fromCols Z₂ Z₂' : Matrix (ι ⊕ ι) (ι ⊕ ι) K) * (fromRows (1 : Matrix ι ι K) (0 : Matrix ι ι K)) := by
      rw [fromCols_mul_fromRows]; simp
    conv_lhs => rw [e₁]
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc Q, QP, Matrix.one_mul, ← e₂]

end GlobalTheory.LagWitt

namespace GlobalTheory.SWLagTerms

open Matrix Formalism.UG GlobalTheory.LagWitt

variable {D : D7}

theorem cT_mul_mul_apply {n ι : Type} [Fintype n] (M : Matrix n n D.host.E) (X : Matrix n ι D.host.E) (j k : ι) :
    (cT (D.sp.cm.sig : D.host.E →+* D.host.E) X * M * X) j k = star (fun i => X i j) ⬝ᵥ M *ᵥ (fun i => X i k) := by
  simp only [cT, Matrix.mul_apply, dotProduct, mulVec, transpose_apply, map_apply, Finset.sum_mul, Finset.mul_sum,
    Pi.star_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun l _ => ?_
  rw [mul_assoc]; rfl

theorem frame_ker_eq_bot (W : HSp D) (Y : Lag W)
    (C : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E) (h : IsLagFrame W Y C) :
    (LinearMap.prod (Matrix.mulVecLin C.1) (Matrix.mulVecLin C.2)).ker = ⊥ := by
  have hf : LinearMap.prod (Matrix.mulVecLin C.1) (Matrix.mulVecLin C.2) =
      Fintype.linearCombination D.host.E (fun j => ((fun a => C.1 a j), (fun a => C.2 a j))) := by
    refine LinearMap.ext fun v => Prod.ext (funext fun a => ?_) (funext fun a => ?_) <;>
      simp [Fintype.linearCombination_apply, mulVec, dotProduct, Finset.sum_apply, mul_comm, Prod.fst_sum, Prod.snd_sum]
  have hr : LinearMap.range (LinearMap.prod (Matrix.mulVecLin C.1) (Matrix.mulVecLin C.2)) = Y.1 := by
    rw [hf, Fintype.range_linearCombination]; exact h
  have := LinearMap.finrank_range_add_finrank_ker (LinearMap.prod (Matrix.mulVecLin C.1) (Matrix.mulVecLin C.2))
  rw [hr, Y.2.1, Module.finrank_fin_fun] at this
  exact Submodule.finrank_eq_zero.1 (by omega)

end GlobalTheory.SWLagTerms

namespace GlobalTheory.SWLagTerms

open Matrix Formalism.UG GlobalTheory.LagWitt

variable {D : D7}

theorem exists_left_inv_fromRows (W : HSp D) (Y : Lag W)
    (C : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E) (h : IsLagFrame W Y C) :
    ∃ L : Matrix (Fin W.rank) (Fin W.rank ⊕ Fin W.rank) D.host.E, L * fromRows C.2 C.1 = 1 := by
  have hk := frame_ker_eq_bot W Y C h
  have hker : (Matrix.mulVecLin (fromRows C.2 C.1)).ker = ⊥ := by
    rw [LinearMap.ker_eq_bot'] at hk ⊢
    intro v hv
    apply hk v
    refine Prod.ext (funext fun a => ?_) (funext fun a => ?_)
    · have := congrFun hv (Sum.inr a)
      simpa [mulVec, dotProduct] using this
    · have := congrFun hv (Sum.inl a)
      simpa [mulVec, dotProduct] using this
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective _ hker
  refine ⟨LinearMap.toMatrix' g, ?_⟩
  have := congrArg LinearMap.toMatrix' hg
  rwa [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_id, ← Matrix.toLin'_apply', LinearMap.toMatrix'_toLin'] at this

end GlobalTheory.SWLagTerms

namespace GlobalTheory.SWLagTerms

open Matrix Formalism.UG GlobalTheory.LagWitt

variable {D : D7}

theorem dbl_herm (W : HSp D) :
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) (fromBlocks W.gram 0 0 (-W.gram)) = fromBlocks W.gram 0 0 (-W.gram) := by
  have hG := (GlobalTheory.Doubling.isHermND_gram W).1
  unfold cT; ext (i | i) (j | j) <;> simp [hG]

theorem dbl_det (W : HSp D) : IsUnit (fromBlocks W.gram 0 0 (-W.gram) : Matrix (Fin W.rank ⊕ Fin W.rank) _ D.host.E).det := by
  have hG := (GlobalTheory.Doubling.isHermND_gram W).2
  rw [det_fromBlocks_zero₂₁, det_neg, isUnit_iff_ne_zero]
  simp [hG]

theorem exists_unitary_frame (W : HSp D) (Y : Lag W)
    (C : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E) (h : IsLagFrame W Y C) :
    ∃ g : Matrix (Fin W.rank ⊕ Fin W.rank) (Fin W.rank ⊕ Fin W.rank) D.host.E,
      cT (D.sp.cm.sig : D.host.E →+* D.host.E) g * fromBlocks W.gram 0 0 (-W.gram) * g = fromBlocks W.gram 0 0 (-W.gram) ∧
      g * fromRows C.2 C.1 = fromRows 1 1 := by
  have hσ : ∀ x : D.host.E, (D.sp.cm.sig : D.host.E →+* D.host.E) ((D.sp.cm.sig : D.host.E →+* D.host.E) x) = x :=
    fun x => star_star x
  obtain ⟨L₁, hL₁⟩ := exists_left_inv_fromRows W Y C h
  refine exists_unitary_mul_eq _ hσ two_ne_zero _ (dbl_herm W) (dbl_det W) _ _ L₁ (fromCols 1 0) hL₁
    (by rw [fromCols_mul_fromRows]; simp) ?_ ?_
  · have hY := Y.2.2
    ext j k
    rw [cT_fromRows, fromCols_mul_fromBlocks, fromCols_mul_fromRows]
    have e1 := cT_mul_mul_apply W.gram C.1 j k
    have e2 := cT_mul_mul_apply W.gram C.2 j k
    have hm := hY (((fun a => C.1 a j), (fun a => C.2 a j))) (h ▸ Submodule.subset_span ⟨j, rfl⟩)
      (((fun a => C.1 a k), (fun a => C.2 a k))) (h ▸ Submodule.subset_span ⟨k, rfl⟩)
    simp only [Matrix.mul_zero, add_zero, zero_add, Matrix.mul_neg, Matrix.neg_mul, Matrix.add_apply, Matrix.neg_apply,
      Matrix.zero_apply] at *
    rw [e1, e2, hm]; simp
  · rw [cT_fromRows, cT_one, fromCols_mul_fromBlocks, fromCols_mul_fromRows]; simp

end GlobalTheory.SWLagTerms

namespace GlobalTheory.SWLagTerms

open Matrix Formalism.UG GlobalTheory.LagWitt

variable {D : D7}

theorem blk_submatrix (W : HSp D) (g : Matrix (Fin W.rank ⊕ Fin W.rank) (Fin W.rank ⊕ Fin W.rank) D.host.E) :
    blk W (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) = g := by
  simp [blk, submatrix_submatrix]

theorem frameOf_submatrix (W : HSp D)
    (C : Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E)
    (g : Matrix (Fin W.rank ⊕ Fin W.rank) (Fin W.rank ⊕ Fin W.rank) D.host.E)
    (hu : cT (D.sp.cm.sig : D.host.E →+* D.host.E) g * fromBlocks W.gram 0 0 (-W.gram) * g = fromBlocks W.gram 0 0 (-W.gram))
    (hg : g * fromRows C.2 C.1 = fromRows 1 1) :
    frameOf W (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) = C := by
  have hG := (GlobalTheory.Doubling.isHermND_gram W).2
  have key : fromBlocks W.gram 0 0 (-W.gram) * fromRows C.2 C.1 =
      cT (D.sp.cm.sig : D.host.E →+* D.host.E) g * fromBlocks W.gram 0 0 (-W.gram) *
        (fromRows (1 : Matrix (Fin W.rank) (Fin W.rank) D.host.E) 1 : Matrix (Fin W.rank ⊕ Fin W.rank) (Fin W.rank) D.host.E) := by
    rw [← hg, ← Matrix.mul_assoc]; conv_lhs => rw [← hu]
  rw [frameOf, blk_submatrix]
  rw [← fromBlocks_toBlocks g, cT_fromBlocks, fromBlocks_multiply, fromBlocks_mul_fromRows,
    fromBlocks_mul_fromRows] at key
  simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, Matrix.mul_one, Matrix.mul_neg, Matrix.neg_mul] at key
  obtain ⟨k1, k2⟩ := fromRows_inj key
  have a1 : cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.toBlocks₂₂ - g.toBlocks₁₂) * W.gram = W.gram * C.1 := by
    rw [cT_sub, Matrix.sub_mul, ← neg_neg (W.gram * C.1), k2]; abel
  have a2 : cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.toBlocks₁₁ - g.toBlocks₂₁) * W.gram = W.gram * C.2 := by
    rw [cT_sub, Matrix.sub_mul, k1, sub_eq_add_neg]
  refine Prod.ext ?_ ?_
  · change (W.gram)⁻¹ * cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.toBlocks₂₂ - g.toBlocks₁₂) * W.gram = C.1
    rw [Matrix.mul_assoc, a1, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 hG), Matrix.one_mul]
  · change (W.gram)⁻¹ * cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.toBlocks₁₁ - g.toBlocks₂₁) * W.gram = C.2
    rw [Matrix.mul_assoc, a2, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 hG), Matrix.one_mul]

end GlobalTheory.SWLagTerms

namespace GlobalTheory.SWLagTerms

open Matrix Formalism.UG GlobalTheory.LagWitt

theorem exists_rat_unitary_lagFrame : ∀ (D : D7) (W : HSp D) (Y : Lag W), ∃ γ : GA D (GlobalTheory.Doubling.dblSp W),
    γ ∈ GQ (GlobalTheory.Doubling.dblSp W) ∧ ∃ (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E),
      Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D) ∧ IsLagFrame W Y (frameOf W g₀) := by
  intro D W Y
  obtain ⟨C, hC⟩ := exists_lagFrame W Y
  obtain ⟨g, hu, hg⟩ := exists_unitary_frame W Y C hC
  have hJ : (GlobalTheory.Doubling.dblSp W).gram =
      (fromBlocks W.gram 0 0 (-W.gram)).submatrix finSumFinEquiv.symm finSumFinEquiv.symm := by
    rw [GlobalTheory.Doubling.gram_hdbl]; rfl
  have hu₀ : cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) *
      (GlobalTheory.Doubling.dblSp W).gram * g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm = (GlobalTheory.Doubling.dblSp W).gram := by
    have e : cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) =
        (cT (D.sp.cm.sig : D.host.E →+* D.host.E) g).submatrix finSumFinEquiv.symm finSumFinEquiv.symm := rfl
    rw [hJ, e, submatrix_mul_equiv, submatrix_mul_equiv, hu]
  have hdet : IsUnit (GlobalTheory.Doubling.dblSp W).gram.det := by
    rw [hJ, det_submatrix_equiv_self]; exact dbl_det W
  have hQ : ((GlobalTheory.Doubling.dblSp W).gram⁻¹ * cT (D.sp.cm.sig : D.host.E →+* D.host.E)
      (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) * (GlobalTheory.Doubling.dblSp W).gram) *
      g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm = 1 := by
    rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc (cT _ _), hu₀, Matrix.nonsing_inv_mul _ hdet]
  let u : GL (Fin (W.rank + W.rank)) D.host.E := ⟨_, _, mul_eq_one_comm.1 hQ, hQ⟩
  have hu' : u ∈ UJ (D.sp.cm.sig : D.host.E →+* D.host.E) (GlobalTheory.Doubling.dblSp W).gram := hu₀
  have hmem : bc (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F)) u ∈ HR (AF D.host.F) D.sp.cm.sig (GlobalTheory.Doubling.dblSp W).gram := by
    show cT _ _ * _ * _ = _
    have e1 : (bc (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F)) u).val =
        (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm).map (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F)) := rfl
    have e2 : cT (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (AF D.host.F) D.sp.cm.sig)
        ((g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm).map (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F))) =
        (cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm)).map
          (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F)) := by
      unfold cT; ext i j; simp [Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR, inclR]
    rw [e1, e2, JR, ← Matrix.map_mul, ← Matrix.map_mul, hu₀]
  let γ : GA D (GlobalTheory.Doubling.dblSp W) := (⟨bc (inclR (F := D.host.F) (E := D.host.E) (AF D.host.F)) u, hmem⟩ : HR (AF D.host.F) D.sp.cm.sig _)
  have hmt : Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ =
      (g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm).map (incA D) := rfl
  refine ⟨γ, ?_, g.submatrix finSumFinEquiv.symm finSumFinEquiv.symm, hmt, ?_⟩
  · exact Subgroup.mem_subgroupOf.2 ⟨u, hu', rfl⟩
  · rw [frameOf_submatrix W C g hu hg]; exact hC

end GlobalTheory.SWLagTerms

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalUnitaryDoubledLagrangianFrameWitt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralHermitianAdjointCovolOnePeriodicEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralHermitianAdjointCovolOnePeriodicEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CartFrSgn\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.LintegralNormSqEqToL2\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HermitianAdjointLawsStandardCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift GlobalTheory.SWLagTerms
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.SWChangeVar

theorem integral_adjO_eq : ∀ (D : D7) (V W : HSp D) (ν : Measure (Mx D V.rank W.rank)) (𝓖' : Set (Mx D V.rank W.rank)) (μ : Measure (WO V W)) (𝓕 : Set (WO V W)), IsCovolOne (ratL V W) ν 𝓖' → IsCovolOne (ratL W V) μ 𝓕 → ∀ (Φ : WO V W → ℂ), (∀ (γ : Matrix (Fin W.rank) (Fin V.rank) D.host.E) (u : WO V W), Φ (ratW W V γ + u) = Φ u) → ∫ y in 𝓖', Φ (GlobalTheory.PairLift.adjO V W y) ∂ν = ∫ u in 𝓕, Φ u ∂μ := by
  intro D V W ν 𝓖' μ 𝓕 hν hμ Φ hΦ
  haveI : BorelSpace (Mx D V.rank W.rank) := ⟨rfl⟩
  haveI : BorelSpace (Mx D W.rank V.rank) := ⟨rfl⟩
  let A : Mx D V.rank W.rank ≃+ Mx D W.rank V.rank :=
    { toFun := GlobalTheory.PairLift.adjO V W
      invFun := GlobalTheory.PairLift.adjO W V
      left_inv := GlobalTheory.AdjLawPf.adj_invol W V
      right_inv := GlobalTheory.AdjLawPf.adj_invol V W
      map_add' := GlobalTheory.AdjLawPf.adj_add V W }
  let L : Mx D V.rank W.rank ≃ₜ+ Mx D W.rank V.rank :=
    { A with
      continuous_toFun := GlobalTheory.AdjLawPf.adj_cont V W
      continuous_invFun := GlobalTheory.AdjLawPf.adj_cont W V }
  let e : Mx D V.rank W.rank ≃ᵐ Mx D W.rank V.rank := L.toHomeomorph.toMeasurableEquiv
  have he : ∀ y, e y = GlobalTheory.PairLift.adjO V W y := fun _ => rfl
  haveI := hν.1
  have hH : (ν.map e).IsAddHaarMeasure := L.isAddHaarMeasure_map ν
  have hmp : MeasurePreserving e ν (ν.map e) := e.measurable.measurePreserving ν
  let r : ratL W V ≃ ratL V W :=
    { toFun := fun g => ⟨GlobalTheory.PairLift.adjO W V g, GlobalTheory.AdjLawPf.adj_rat_of W V g g.2⟩
      invFun := fun g => ⟨GlobalTheory.PairLift.adjO V W g, GlobalTheory.AdjLawPf.adj_rat_of V W g g.2⟩
      left_inv := fun g => Subtype.ext (GlobalTheory.AdjLawPf.adj_invol V W g)
      right_inv := fun g => Subtype.ext (GlobalTheory.AdjLawPf.adj_invol W V g) }
  have hcov : IsCovolOne (ratL W V) (ν.map e) (e '' 𝓖') := by
    refine ⟨hH, ?_, ?_⟩
    · refine hν.2.1.image_of_equiv e.toEquiv (hmp.symm e).quasiMeasurePreserving r fun g a => ?_
      show GlobalTheory.PairLift.adjO V W (GlobalTheory.PairLift.adjO W V (g : Mx D W.rank V.rank) + a) =
        (g : Mx D W.rank V.rank) + GlobalTheory.PairLift.adjO V W a
      rw [GlobalTheory.AdjLawPf.adj_add, GlobalTheory.AdjLawPf.adj_invol]
    · rw [e.map_apply, e.preimage_image]; exact hν.2.2
  have hφ : ∀ γ ∈ GlobalTheory.MixModel.ratMx D W.rank V.rank, ∀ a, Φ (γ + a) = Φ a := by
    rintro _ ⟨γ, rfl⟩ a
    exact hΦ γ a
  have h := GlobalTheory.MixModel.covolOne_integral_eq (μ := μ) (μ' := ν.map e) (𝓕 := 𝓕) (𝓕' := e '' 𝓖') hμ hcov Φ hφ
  rw [setIntegral_map_equiv, e.preimage_image] at h
  exact h

end GlobalTheory.SWChangeVar

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralHermitianAdjointCovolOnePeriodicEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilDoublingProductRationalTranslateEqFram =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilDoublingProductRationalTranslateEqFram", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DblApply\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.WeilSiegelFormulaUnitary\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HermitianAdjointLawsStandardCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift GlobalTheory.SWLagTerms
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SWLagTerms
variable {D : D7}

theorem cA_incA_loc (e : D.host.E) : cA D (incA D e) = incA D (star e) := rfl

theorem adjO_mul_rat (V W : HSp D) (y : Mx D V.rank W.rank) (M : Matrix (Fin W.rank) (Fin W.rank) D.host.E) :
    GlobalTheory.PairLift.adjO V W (HMul.hMul (y : Matrix (Fin V.rank) (Fin W.rank) (AE D)) (M.map (incA D))) =
      ratMul (hAdj W M) (GlobalTheory.PairLift.adjO V W y) := by
  have e : ((M.map (incA D)).map (cA D))ᵀ = ((M.map star)ᵀ).map (incA D) := by
    ext i j; simp [cA_incA_loc]
  rw [GlobalTheory.AdjLawPf.adjO_eq, GlobalTheory.AdjLawPf.adjO_eq, GlobalTheory.AdjLawPf.conjT_mul, e]
  unfold ratMul hAdj
  rw [Matrix.map_mul, Matrix.map_mul]
  have g1 : (HSpace.gram W).map (incA D) * (HSpace.gram W)⁻¹.map (incA D) = 1 :=
    mul_eq_one_comm.1 (GlobalTheory.AdjLawPf.inv_mul_gram W)
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc ((HSpace.gram W).map (incA D)), g1, Matrix.one_mul]

theorem act_lagr (V W : HSp D) (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E)
    (hg : Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D)) (y : Mx D V.rank W.rank) :
    actO (GlobalTheory.Doubling.dblSp W) V γ⁻¹ 1 (GlobalTheory.SiegelFormula.lagr W V y) =
      HMul.hMul (GlobalTheory.SiegelFormula.lagr W V y : Matrix (Fin V.rank) (Fin (W.rank + W.rank)) (AE D)) (g₀.map (incA D)) := by
  unfold actO
  rw [inv_inv, hg, GlobalTheory.AdjLawPf.mt_one, Matrix.one_mul]

theorem resL_lagr (V W : HSp D) (y : Mx D V.rank W.rank)
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero.resL W V (HMul.hMul (GlobalTheory.SiegelFormula.lagr W V y : Matrix (Fin V.rank) (Fin (W.rank + W.rank)) (AE D)) (g₀.map (incA D))) =
      HMul.hMul (y : Matrix (Fin V.rank) (Fin W.rank) (AE D)) (((blk W g₀).toBlocks₁₁ - (blk W g₀).toBlocks₂₁).map (incA D)) := by
  ext i j
  simp only [GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero.resL, Matrix.of_apply, Matrix.mul_apply, Matrix.map_apply]
  rw [← finSumFinEquiv.sum_comp, Fintype.sum_sum_type]
  simp only [GlobalTheory.SiegelFormula.lagr, Matrix.of_apply, GlobalTheory.Doubling.pairVec_inl, GlobalTheory.Doubling.pairVec_inr, blk,
    Matrix.toBlocks₁₁, Matrix.toBlocks₂₁, Matrix.submatrix_apply, Matrix.sub_apply, map_sub, mul_sub,
    Finset.sum_sub_distrib, Pi.neg_apply, neg_mul, Finset.sum_neg_distrib]
  abel

theorem resR_lagr (V W : HSp D) (y : Mx D V.rank W.rank)
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E) :
    -GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero.resR W V (HMul.hMul (GlobalTheory.SiegelFormula.lagr W V y : Matrix (Fin V.rank) (Fin (W.rank + W.rank)) (AE D)) (g₀.map (incA D))) =
      HMul.hMul (y : Matrix (Fin V.rank) (Fin W.rank) (AE D)) (((blk W g₀).toBlocks₂₂ - (blk W g₀).toBlocks₁₂).map (incA D)) := by
  ext i j
  simp only [Matrix.neg_apply, GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero.resR, Matrix.of_apply, Matrix.mul_apply, Matrix.map_apply]
  rw [← finSumFinEquiv.sum_comp, Fintype.sum_sum_type]
  simp only [GlobalTheory.SiegelFormula.lagr, Matrix.of_apply, GlobalTheory.Doubling.pairVec_inl, GlobalTheory.Doubling.pairVec_inr, blk,
    Matrix.toBlocks₂₂, Matrix.toBlocks₁₂, Matrix.submatrix_apply, Matrix.sub_apply, map_sub, mul_sub,
    Finset.sum_sub_distrib, Pi.neg_apply, neg_mul, Finset.sum_neg_distrib]
  abel

theorem dbl_actO_lagr : ∀ (D : D7) (V W : HSp D) (f₁ f₂ : WO V W → ℂ) (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E),
    Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D) → ∀ (y : Mx D V.rank W.rank),
    GlobalTheory.SWPairProof.dbl V W f₁ f₂ (actO (GlobalTheory.Doubling.dblSp W) V γ⁻¹ 1 (GlobalTheory.SiegelFormula.lagr W V y)) =
      f₁ (ratMul (frameOf W g₀).1 (GlobalTheory.PairLift.adjO V W y)) * star (f₂ (ratMul (frameOf W g₀).2 (GlobalTheory.PairLift.adjO V W y))) := by
  intro D V W f₁ f₂ γ g₀ hg y
  rw [act_lagr V W γ g₀ hg y, GlobalTheory.SWPairProof.dbl_apply, resL_lagr, resR_lagr, adjO_mul_rat, adjO_mul_rat,
    frameOf_fst, frameOf_snd, starRingEnd_apply, mul_comm]

end GlobalTheory.SWLagTerms
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilDoublingProductRationalTranslateEqFram =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianInt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianInt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DblApply\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.WeilSiegelFormulaUnitary\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameOfFst\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntegrandPeriodic\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubledLagrangianEqIffSiegelParabolicCoset\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDoubledLagrangianOfRationalUnitaryFrame\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalUnitaryDoubledLagrangianFrameWitt\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CartFrSgn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralHermitianAdjointCovolOnePeriodicEq\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilDoublingProductRationalTranslateEqFram\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SWLagTerms

variable {D : D7}

theorem rat_of_mem (V : HSp D) (γ : GA D V) (h : γ ∈ GQ V) :
    ∃ g₀ : Matrix (Fin V.rank) (Fin V.rank) D.host.E, Formalism.L2.Theta.mt V γ = g₀.map (incA D) := by
  obtain ⟨g, -, hg⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 h)
  exact ⟨g.1, (congrArg Units.val hg).symm⟩

theorem integral_eq {ψ : AddChar (AF D.host.F) ℂ} {V W : HSp D} {χV χW : (AE D)ˣ →* Circle}
    {om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)} {νV : Measure (GA D V)} {𝓗 : Set (GA D V)}
    {νW : Measure (GA D W)} {𝓖 : Set (GA D W)} {μ : Measure (WO V W)} {𝓕 : Set (WO V W)}
    {fr : Lag W → Matrix (Fin W.rank) (Fin W.rank) D.host.E × Matrix (Fin W.rank) (Fin W.rank) D.host.E}
    (hS : SWSetup ψ V W χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr) {f₁ f₂ : WO V W → ℂ}
    (h₁ : IsThetaFunO ψ V W f₁) (h₂ : IsThetaFunO ψ V W f₂) (ν : Measure (Mx D V.rank W.rank))
    (𝓖' : Set (Mx D V.rank W.rank)) (hν : IsCovolOne (ratL V W) ν 𝓖') (γ : GA D (GlobalTheory.Doubling.dblSp W))
    (g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E)
    (hγ : Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) γ = g₀.map (incA D)) (Y : Lag W)
    (hY : IsLagFrame W Y (frameOf W g₀)) :
    ∫ y in 𝓖', GlobalTheory.SWPairProof.dbl V W f₁ f₂ (actO (GlobalTheory.Doubling.dblSp W) V γ⁻¹ 1 (GlobalTheory.SiegelFormula.lagr W V y)) ∂ν =
      lagTerm μ 𝓕 (frameOf W g₀) f₁ f₂ := by
  have hψ : ∀ x, ‖ψ x‖ = 1 := hS.weil.std.1.2.1
  simp_rw [_root_.GlobalTheory.SWLagTerms.dbl_actO_lagr D V W f₁ f₂ γ g₀ hγ]
  unfold lagTerm
  exact _root_.GlobalTheory.SWChangeVar.integral_adjO_eq D V W ν 𝓖' μ 𝓕 hν hS.covol
    (fun u => f₁ (ratMul (frameOf W g₀).1 u) * star (f₂ (ratMul (frameOf W g₀).2 u)))
    (fun c u => GlobalTheory.RawLift.Model.integrand_periodic hψ hY h₁ h₂ c u)

theorem classes (W : HSp D) :
    ∃ e : GlobalTheory.Eis.Cosets (GlobalTheory.Doubling.siegel W) (GQ (GlobalTheory.Doubling.dblSp W)) ≃ Lag W, ∀ q,
      ∃ g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E,
        Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) ((q.out : GQ (GlobalTheory.Doubling.dblSp W)) : GA D (GlobalTheory.Doubling.dblSp W)) =
          g₀.map (incA D) ∧ IsLagFrame W (e q) (frameOf W g₀) := by
  classical
  have hg : ∀ γ : GQ (GlobalTheory.Doubling.dblSp W), ∃ g₀ : Matrix (Fin (W.rank + W.rank)) (Fin (W.rank + W.rank)) D.host.E,
      Formalism.L2.Theta.mt (GlobalTheory.Doubling.dblSp W) (γ : GA D (GlobalTheory.Doubling.dblSp W)) = g₀.map (incA D) :=
    fun γ => rat_of_mem (GlobalTheory.Doubling.dblSp W) γ γ.2
  choose g₀ hg₀ using hg
  have hY : ∀ γ : GQ (GlobalTheory.Doubling.dblSp W), ∃ Y : Lag W, IsLagFrame W Y (frameOf W (g₀ γ)) :=
    fun γ => _root_.GlobalTheory.SWLagTerms.LagrangianFrames.exists_lag_isLagFrame_frameOf D W γ (g₀ γ) (hg₀ γ)
  choose Y hY using hY
  have key : ∀ a b : GQ (GlobalTheory.Doubling.dblSp W), Y a = Y b ↔
      ((b : GA D (GlobalTheory.Doubling.dblSp W)) * (a : GA D (GlobalTheory.Doubling.dblSp W))⁻¹ ∈ GlobalTheory.Doubling.siegel W) :=
    fun a b => _root_.GlobalTheory.SWLagSame.sameClass D W a b (g₀ a) (g₀ b) (hg₀ a) (hg₀ b) (Y a) (Y b) (hY a) (hY b)
  let f : GlobalTheory.Eis.Cosets (GlobalTheory.Doubling.siegel W) (GQ (GlobalTheory.Doubling.dblSp W)) → Lag W :=
    Quotient.lift Y (fun a b hab => (key a b).2 (by
      have := QuotientGroup.rightRel_apply.1 hab
      rw [Subgroup.mem_subgroupOf] at this
      simpa using this))
  have hf : ∀ a, f (Quotient.mk _ a) = Y a := fun a => rfl
  have inj : Function.Injective f := by
    intro p q hpq
    induction p using Quotient.inductionOn
    induction q using Quotient.inductionOn
    rename_i a b
    rw [hf, hf] at hpq
    apply Quotient.sound
    refine QuotientGroup.rightRel_apply.2 ?_
    rw [Subgroup.mem_subgroupOf]
    simpa using (key a b).1 hpq
  have surj : Function.Surjective f := by
    intro Z
    obtain ⟨γ, hγQ, g₁, hg₁, hZ⟩ := _root_.GlobalTheory.SWLagTerms.exists_rat_unitary_lagFrame D W Z
    refine ⟨Quotient.mk _ ⟨γ, hγQ⟩, ?_⟩
    rw [hf]
    have := (_root_.GlobalTheory.SWLagSame.sameClass D W γ γ (g₀ ⟨γ, hγQ⟩) g₁ (hg₀ ⟨γ, hγQ⟩) hg₁ (Y ⟨γ, hγQ⟩) Z (hY ⟨γ, hγQ⟩) hZ).2
    exact this (by simpa using (GlobalTheory.Doubling.siegel W).one_mem)
  refine ⟨Equiv.ofBijective f ⟨inj, surj⟩, fun q => ⟨g₀ q.out, hg₀ q.out, ?_⟩⟩
  show IsLagFrame W (f q) _
  conv_lhs => rw [← Quotient.out_eq q]
  exact hY q.out

theorem lagTerms_eq : ∀ (D : D7) ψ (V W : HSp D) χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr, SWSetup ψ V W χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr → ∀ f₁ f₂, IsThetaFunO ψ V W f₁ → IsThetaFunO ψ V W f₂ → ∀ (ν : Measure (Mx D V.rank W.rank)) (𝓖' : Set (Mx D V.rank W.rank)), IsCovolOne (ratL V W) ν 𝓖' → ∃ e : GlobalTheory.Eis.Cosets (GlobalTheory.Doubling.siegel W) (GQ (GlobalTheory.Doubling.dblSp W)) ≃ Lag W, ∀ q, ∃ C, IsLagFrame W (e q) C ∧ ∫ y in 𝓖', GlobalTheory.SWPairProof.dbl V W f₁ f₂ (actO (GlobalTheory.Doubling.dblSp W) V ((q.out : GQ (GlobalTheory.Doubling.dblSp W)) : GA D (GlobalTheory.Doubling.dblSp W))⁻¹ 1 (GlobalTheory.SiegelFormula.lagr W V y)) ∂ν = lagTerm μ 𝓕 C f₁ f₂ := by
  intro D ψ V W χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr hS f₁ f₂ h₁ h₂ ν 𝓖' hν
  obtain ⟨e, he⟩ := classes W
  refine ⟨e, fun q => ?_⟩
  obtain ⟨g₀, hg₀, hY⟩ := he q
  exact ⟨frameOf W g₀, hY, integral_eq hS h₁ h₂ ν 𝓖' hν _ g₀ hg₀ (e q) hY⟩

end GlobalTheory.SWLagTerms

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianInt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianIntStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianIntStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DblApply\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.WeilSiegelFormulaUnitary\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open GlobalTheory.RawLift
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.siegelEisenstein_doubledTheta_terms_eq_lagrangianIntegrals : ∀ (D : D7) ψ (V W : HSp D) χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr, SWSetup ψ V W χV χW om νV 𝓗 νW 𝓖 μ 𝓕 fr → ∀ f₁ f₂, IsThetaFunO ψ V W f₁ → IsThetaFunO ψ V W f₂ → ∀ (ν : Measure (Mx D V.rank W.rank)) (𝓖' : Set (Mx D V.rank W.rank)), IsCovolOne (ratL V W) ν 𝓖' → ∃ e : GlobalTheory.Eis.Cosets (GlobalTheory.Doubling.siegel W) (GQ (GlobalTheory.Doubling.dblSp W)) ≃ Lag W, ∀ q, ∃ C, IsLagFrame W (e q) C ∧ ∫ y in 𝓖', GlobalTheory.SWPairProof.dbl V W f₁ f₂ (actO (GlobalTheory.Doubling.dblSp W) V ((q.out : GQ (GlobalTheory.Doubling.dblSp W)) : GA D (GlobalTheory.Doubling.dblSp W))⁻¹ 1 (GlobalTheory.SiegelFormula.lagr W V y)) ∂ν = lagTerm μ 𝓕 C f₁ f₂ := by
  first | exact @GlobalTheory.SWLagTerms.lagTerms_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelEisensteinDoubledThetaTermsEqLagrangianIntStatement =====
