module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GelfandFlags.IntSmooth
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LengthFunctionCompact
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.SymZeroCommFrame
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeStructure
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LengthFunctionFactsHold
public import Mathlib.MeasureTheory.Measure.Haar.MulEquivHaarChar
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundFacts
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeHomotopy
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.GelfandReading
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Topology.Algebra.Group.Units
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.Compactness.Paracompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ConjTransposeMemGLs, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ContinuousCoords, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.TwMemGLs, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.UnitaryMemGLs, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.LOfOfKChain

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ConjTransposeMemGLs =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ConjTransposeMemGLs", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GelfandFlags.IntSmooth\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LengthFunctionCompact\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.SymZeroCommFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeStructure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Finset Filter
open scoped ContDiff ComplexConjugate Topology ComplexOrder

namespace PositivityTheory.RgBcC.LfSt.UnitaryConjTransposeTrace

open PositivityTheory.RgBcC PositivityTheory.RgBcC.LfSt
open PositivityTheory.RgTw (Mat G th tw hb)

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

theorem contOn_inv : ContinuousOn (fun y : Mat n => y⁻¹) (GLs n) := by
  have h : ∀ y ∈ GLs n, y⁻¹ = (y.det)⁻¹ • y.adjugate := fun y _ => by
    rw [Matrix.inv_def, Ring.inverse_eq_inv']
  refine ContinuousOn.congr ?_ h
  exact ContinuousOn.smul ((continuous_id.matrix_det).continuousOn.inv₀ fun y hy => hy)
    (continuous_id.matrix_adjugate).continuousOn

theorem mem_GLs_mul {x y : Mat n} (hx : x ∈ GLs n) (hy : y ∈ GLs n) : x * y ∈ GLs n := by
  simp only [GLs, Set.mem_ofPred_eq, Matrix.det_mul] at *
  exact mul_ne_zero hx hy

theorem inv_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : x⁻¹ ∈ GLs n :=
  (Matrix.isUnit_nonsing_inv_det x (isUnit_iff_ne_zero.2 hx)).ne_zero

theorem conjTranspose_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : xᴴ ∈ GLs n := by
  simp only [GLs, Set.mem_ofPred_eq, Matrix.det_conjTranspose, star_ne_zero] at *
  exact hx

theorem tw_mem {x d : Mat n} (hx : x ∈ GLs n) (hd : d ∈ GLs n) : x⁻¹ * d * xᴴ⁻¹ ∈ GLs n :=
  mem_GLs_mul (mem_GLs_mul (inv_mem_GLs hx) hd) (inv_mem_GLs (conjTranspose_mem_GLs hx))

theorem tw_val (x d : G n) : ((tw x d : G n) : Mat n) = (x : Mat n)⁻¹ * d * (x : Mat n)ᴴ⁻¹ := by
  simp only [tw, th, Units.val_mul, Matrix.coe_units_inv, Units.coe_star, Matrix.star_eq_conjTranspose]

def trL (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] : (V →L[ℂ] V) →ₗ[ℂ] ℂ :=
  (LinearMap.trace ℂ V).comp (ContinuousLinearMap.coeLM ℂ)

theorem trL_apply {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] (A : V →L[ℂ] V) :
    trL V A = LinearMap.trace ℂ V (A : V →ₗ[ℂ] V) := rfl

theorem trL_cont (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] : Continuous (trL V) :=
  LinearMap.continuous_of_finiteDimensional _

theorem trL_mul_comm {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
    (A B : V →L[ℂ] V) : trL V (A * B) = trL V (B * A) := by
  simp only [trL_apply, ContinuousLinearMap.toLinearMap_mul]
  exact LinearMap.trace_mul_comm ℂ _ _

theorem end1 : End1 := by
  intro n lam E Fr ε ι S Γ T hCx _ _ μ _ σ c hσ hσ2 hform k hk hkeq hkΓ d R hR
  set Fm : Mat n → ℂ := fun y => trL E.V (k (y⁻¹ * d.val * yᴴ⁻¹) * T) with hFm
  have hdG := _root_.GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val d
  have harg : ContinuousOn (fun y : Mat n => y⁻¹ * d.val * yᴴ⁻¹) (GLs n) :=
    (contOn_inv.mul continuousOn_const).mul
      (contOn_inv.comp (continuous_id.matrix_conjTranspose).continuousOn fun y hy => conjTranspose_mem_GLs hy)
  have hFmcont : ContinuousOn Fm (GLs n) :=
    (trL_cont E.V).comp_continuousOn ((hk.comp harg fun y hy => tw_mem hy hdG).mul continuousOn_const)
  have hFmsupp : ∃ R, ∀ y ∈ GLs n, R < lg y → Fm y = 0 :=
    ⟨R, fun y hy h => by simp only [hFm, hR y hy h, zero_mul, map_zero]⟩
  have hFmK : ∀ y ∈ GLs n, ∀ kk : Matrix.unitaryGroup (Fin n) ℂ, Fm (y * kk.1) = Fm y := by
    intro y hy kk
    have hu : kk.1ᴴ * kk.1 = 1 := Matrix.UnitaryGroup.star_mul_self kk
    have hu' : kk.1 * kk.1ᴴ = 1 := by
      have := Matrix.mem_unitaryGroup_iff.mp kk.2
      simpa [Matrix.star_eq_conjTranspose] using this
    have hinv : kk.1⁻¹ = kk.1ᴴ := Matrix.inv_eq_left_inv hu
    have hinvH : kk.1ᴴ⁻¹ = kk.1 := Matrix.inv_eq_left_inv hu'
    have e : (y * kk.1)⁻¹ * d.val * (y * kk.1)ᴴ⁻¹ = (kk⁻¹ : Matrix.unitaryGroup (Fin n) ℂ).1 * (y⁻¹ * d.val * yᴴ⁻¹) * kk.1 := by
      rw [Matrix.mul_inv_rev, Matrix.conjTranspose_mul, Matrix.mul_inv_rev, hinvH, hinv]
      have : (kk⁻¹ : Matrix.unitaryGroup (Fin n) ℂ).1 = kk.1ᴴ := by
        rw [Matrix.UnitaryGroup.inv_val, Matrix.star_eq_conjTranspose]
      rw [this]
      simp only [Matrix.mul_assoc]
    simp only [hFm]
    rw [e, hkeq _ (tw_mem hy hdG)]
    rw [show E.ρ kk⁻¹ * k (y⁻¹ * d.val * yᴴ⁻¹) * E.ρ kk * T = E.ρ kk⁻¹ * (k (y⁻¹ * d.val * yᴴ⁻¹) * T) * E.ρ kk by
      rw [mul_assoc (E.ρ kk⁻¹ * k _) (E.ρ kk) T, ← hCx.TK kk]; simp only [mul_assoc]]
    rw [trL_mul_comm, ← mul_assoc, ← map_mul, mul_inv_cancel, map_one, one_mul]
  have hcone : ∀ v ∈ cone n, trL E.V (Γ * S 1 * Kc σ c Fr k Γ T d.val (v, v)) =
      ((c : ℂ) * ((hOf v).det ^ n)⁻¹) * Fm (σ v) := by
    intro v hv
    have hx := PositivityTheory.RgBcC.LfSt.GelfandReading.cone_mem_GLs hσ2 hv
    simp only [Kc, Kf, hCx.S1, mul_one, mul_smul_comm, map_smul, smul_eq_mul, hFm]
    congr 1
    have hw := tw_mem hx hdG
    have h1 : Fr (σ v)⁻¹ * Fr (σ v) = 1 := by
      rw [← hCx.mul _ (inv_mem_GLs hx) _ hx, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 hx), hCx.one]
    calc trL E.V (Γ * (Fr (σ v) * k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹))
        = trL E.V (Fr (σ v) * (Γ * k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹)) := by
          rw [show Γ * (Fr (σ v) * k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹) =
              (Γ * Fr (σ v)) * (k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹) by simp only [mul_assoc],
            hCx.ΓFr _ hx]
          simp only [mul_assoc]
      _ = trL E.V ((Γ * k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹) * Fr (σ v)) := trL_mul_comm _ _
      _ = trL E.V (k ((σ v)⁻¹ * d.val * (σ v)ᴴ⁻¹) * T) := by
          rw [mul_assoc _ (Fr (σ v)⁻¹), h1, mul_one, hkΓ _ hw, mul_assoc (k _) Γ Γ, hCx.Γsq, mul_one]
  have hcontTw : Continuous (fun x : G n => (x : Mat n)⁻¹ * d.val * (x : Mat n)ᴴ⁻¹) :=
    ((contOn_inv.comp_continuous Units.continuous_val _root_.GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val).mul continuous_const).mul
      (contOn_inv.comp_continuous (Units.continuous_val.matrix_conjTranspose) fun x => conjTranspose_mem_GLs (_root_.GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val x))
  have hphi : (fun x : G n => phiOf E T k (tw x d)) = fun x : G n => Fm (x : Mat n) := by
    funext x
    simp only [phiOf, hFm, trL_apply, tw_val]
  have hcont : Continuous (fun x : G n => Fm (x : Mat n)) :=
    (trL_cont E.V).comp ((hk.comp_continuous hcontTw fun x => tw_mem (_root_.GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val x) hdG).mul continuous_const)
  have hcs : HasCompactSupport (fun x : G n => Fm (x : Mat n)) := by
    refine HasCompactSupport.intro (_root_.GlobalTheory.CompanionTheory.LgBound.lgCpt n R) fun x hx => ?_
    simp only [Set.mem_ofPred_eq, not_le] at hx
    simp only [hFm, hR _ (_root_.GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val x) hx, zero_mul, map_zero]
  refine ⟨hphi ▸ hcont.integrable_of_hasCompactSupport hcs, ?_⟩
  rw [hphi, hform Fm hFmcont hFmsupp hFmK, ← integral_const_mul]
  refine setIntegral_congr_fun (_root_.GlobalTheory.CompanionTheory.ConeHaar.coneSt n).1.measurableSet (fun v hv => ?_)
  rw [show Γ * S 1 * Kc σ c Fr k Γ T d.val (v, v) = Γ * S 1 * Kc σ c Fr k Γ T d.val (v, v) from rfl]
  have := hcone v hv
  simp only [trL_apply] at this
  rw [this]; ring

end PositivityTheory.RgBcC.LfSt.UnitaryConjTransposeTrace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ConjTransposeMemGLs =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ContinuousCoords =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ContinuousCoords", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Finset Filter Topology
open scoped ContDiff ComplexConjugate ComplexOrder

namespace PositivityTheory.RgBcC.LfSt.KSuppPf

open PositivityTheory.RgBcC PositivityTheory.RgBcC.LfSt
open PositivityTheory.RgTw (Mat G th tw hb)

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

theorem inv_contAt (A : Mat n) (hA : A.det ≠ 0) : ContinuousAt (fun B : Mat n => B⁻¹) A := by
  apply continuousAt_matrix_inv
  rw [Ring.inverse_eq_inv']
  exact continuousAt_inv₀ hA

theorem lg_contAt (A : Mat n) (hA : A.det ≠ 0) : ContinuousAt lg A := by
  have hi := inv_contAt A hA
  unfold lg
  refine ContinuousAt.log ?_ ?_
  · refine continuousAt_const.add ?_
    refine tendsto_finsetSum _ fun a _ => tendsto_finsetSum _ fun b _ => ?_
    refine ContinuousAt.add (f := fun y : Mat n => ‖y a b‖ ^ 2) (g := fun y : Mat n => ‖y⁻¹ a b‖ ^ 2) ?_ ?_
    · exact ((continuous_norm.comp ((continuous_apply b).comp (continuous_apply a))).continuousAt).pow 2
    · exact (continuous_norm.continuousAt.comp
        (((continuous_apply b).comp (continuous_apply a)).continuousAt.comp hi)).pow 2
  · have : 0 ≤ ∑ a, ∑ b, (‖A a b‖ ^ 2 + ‖A⁻¹ a b‖ ^ 2) :=
      Finset.sum_nonneg fun a _ => Finset.sum_nonneg fun b _ => by positivity
    positivity

theorem det_ne_of_posDef (x : Mat n) (h : (x * xᴴ).PosDef) : x.det ≠ 0 := by
  intro h0
  have hu := (Matrix.isUnit_iff_isUnit_det _).1 h.isUnit
  rw [Matrix.det_mul, h0, zero_mul] at hu
  exact not_isUnit_zero hu

theorem det_inv_ne (A : Mat n) (h : A.det ≠ 0) : (A⁻¹).det ≠ 0 := by
  rw [Matrix.det_nonsing_inv, Ring.inverse_eq_inv']; exact inv_ne_zero h

theorem det_ct_ne (A : Mat n) (h : A.det ≠ 0) : (Aᴴ).det ≠ 0 := by
  rw [Matrix.det_conjTranspose]; exact star_ne_zero.2 h

theorem hOf_comb (hb : HbFacts) (s : ℝ) (v : Fin n × Fin n → ℝ) :
    hOf (s • v + (1 - s) • oPt n) = (s : ℂ) • hOf v + (((1 - s : ℝ)) : ℂ) • (1 : Mat n) := by
  have h1 : hOf (oPt n) = 1 := (hb n).2.2.1 1 Matrix.isHermitian_one
  rw [← h1]
  unfold hOf
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Complex.ofReal_add, Complex.ofReal_mul, add_smul, mul_smul,
    Finset.sum_add_distrib, Finset.smul_sum]

def Kset (n : ℕ) (B : ℝ) : Set (Mat n × Mat n) :=
  {p | p.1 * p.2 = 1} ∩ {p | ∑ a, ∑ b, (‖p.1 a b‖ ^ 2 + ‖p.2 a b‖ ^ 2) ≤ B}

theorem isCompact_Kset (B : ℝ) : IsCompact (Kset n B) := by
  apply Metric.isCompact_of_isClosed_isBounded
  · apply IsClosed.inter
    · exact isClosed_eq (continuous_fst.matrix_mul continuous_snd) continuous_const
    · refine isClosed_le (continuous_finsetSum _ fun a _ => continuous_finsetSum _ fun b _ => ?_) continuous_const
      exact ((continuous_norm.comp ((continuous_apply b).comp ((continuous_apply a).comp continuous_fst))).pow 2).add
        ((continuous_norm.comp ((continuous_apply b).comp ((continuous_apply a).comp continuous_snd))).pow 2)
  · rw [Metric.isBounded_iff_subset_closedBall 0]
    refine ⟨|B| + 1, fun p hp => ?_⟩
    rw [Metric.mem_closedBall, dist_zero_right]
    have hent : ∀ a b, ‖p.1 a b‖ ≤ |B| + 1 ∧ ‖p.2 a b‖ ≤ |B| + 1 := by
      intro a b
      have hle : ‖p.1 a b‖ ^ 2 + ‖p.2 a b‖ ^ 2 ≤ B := by
        refine le_trans ?_ hp.2
        refine le_trans ?_ (Finset.single_le_sum (f := fun a => ∑ b, (‖p.1 a b‖ ^ 2 + ‖p.2 a b‖ ^ 2))
          (fun a _ => Finset.sum_nonneg fun b _ => by positivity) (Finset.mem_univ a))
        exact Finset.single_le_sum (f := fun b => ‖p.1 a b‖ ^ 2 + ‖p.2 a b‖ ^ 2)
          (fun b _ => by positivity) (Finset.mem_univ b)
      have h1 : ‖p.1 a b‖ ^ 2 ≤ |B| := le_trans (by nlinarith [sq_nonneg ‖p.2 a b‖]) (le_abs_self B)
      have h2 : ‖p.2 a b‖ ^ 2 ≤ |B| := le_trans (by nlinarith [sq_nonneg ‖p.1 a b‖]) (le_abs_self B)
      constructor
      · nlinarith [norm_nonneg (p.1 a b), abs_nonneg B, sq_nonneg (‖p.1 a b‖ - 1)]
      · nlinarith [norm_nonneg (p.2 a b), abs_nonneg B, sq_nonneg (‖p.2 a b‖ - 1)]
    have hB : 0 ≤ |B| + 1 := by positivity
    rw [Prod.norm_def, max_le_iff]
    exact ⟨(Matrix.norm_le_iff hB).2 fun a b => (hent a b).1, (Matrix.norm_le_iff hB).2 fun a b => (hent a b).2⟩

theorem continuous_coords : Continuous (coords : Mat n → Fin n × Fin n → ℝ) := by
  apply continuous_pi
  intro p
  unfold coords
  exact Complex.continuous_re.comp ((continuous_id.matrix_mul continuous_const).matrix_trace)

theorem ksupp_of (hb : HbFacts) (hc : ConeSt) : KSupp := by
  intro hS n V _ _ σ hσ hσ2 Fr k Γ T R hk z hz hinj c
  obtain ⟨hopen, hconv, -⟩ := hc n
  obtain ⟨R', hR'⟩ := hS n z hz hinj R
  set C : Set (Fin n × Fin n → ℝ) := (fun p : Mat n × Mat n => coords (p.1 * p.1ᴴ)) '' Kset n (Real.exp R') with hCdef
  have hdet : ∀ v ∈ cone n, (σ v).det ≠ 0 := fun v hv =>
    det_ne_of_posDef _ (by rw [hσ2 v hv]; exact hv)
  have hdz : (diagonal z).det ≠ 0 := by
    rw [Matrix.det_diagonal]
    exact Finset.prod_ne_zero_iff.2 fun a _ => fun h0 => by have := hz a; rw [h0, norm_zero] at this; exact zero_ne_one this
  refine ⟨C, ?_, ?_, ?_⟩
  · rintro _ ⟨p, hp, rfl⟩
    have hd1 : p.1.det ≠ 0 := by
      intro h0
      have := congrArg Matrix.det hp.1
      rw [Matrix.det_mul, h0, zero_mul, Matrix.det_one] at this
      exact zero_ne_one this
    have hu : IsUnit p.1 := (Matrix.isUnit_iff_isUnit_det _).2 (Ne.isUnit hd1)
    show (hOf (coords (p.1 * p.1ᴴ))).PosDef
    rw [(hb n).2.2.1 _ (Matrix.isHermitian_mul_conjTranspose_self _)]
    have := (Matrix.IsUnit.posDef_star_right_conjugate_iff (x := (1 : Mat n)) hu).2 Matrix.PosDef.one
    simpa [Matrix.star_eq_conjTranspose] using this
  · exact (isCompact_Kset _).image (continuous_coords.comp (continuous_fst.matrix_mul continuous_fst.matrix_conjTranspose))
  · intro s hs v hv hvC
    have ho : oPt n ∈ cone n := (hb n).2.2.2.2.2.2.2
    have hP1 : s • v + (1 - s) • oPt n ∈ cone n := hconv hv ho hs.1 (by linarith [hs.2]) (by ring)

    have hgt : R < lg ((σ (s • v + (1 - s) • oPt n))⁻¹ * diagonal z * (σ v)ᴴ⁻¹) := by
      by_contra hle
      push Not at hle
      have hyR := hR' s hs (σ (s • v + (1 - s) • oPt n)) (hdet _ hP1) (σ v) (hdet v hv)
        (by rw [hσ2 _ hP1, hσ2 v hv, hOf_comb hb]) hle
      apply hvC
      refine ⟨(σ v, (σ v)⁻¹), ⟨Matrix.mul_nonsing_inv _ (Ne.isUnit (hdet v hv)), ?_⟩, ?_⟩
      · have h1 : 0 ≤ ∑ a, ∑ b, (‖σ v a b‖ ^ 2 + ‖(σ v)⁻¹ a b‖ ^ 2) :=
          Finset.sum_nonneg fun a _ => Finset.sum_nonneg fun b _ => by positivity
        have h2 : Real.log (1 + ∑ a, ∑ b, (‖σ v a b‖ ^ 2 + ‖(σ v)⁻¹ a b‖ ^ 2)) ≤ R' := hyR
        have h3 := (Real.log_le_iff_le_exp (by positivity)).1 h2
        show ∑ a, ∑ b, (‖σ v a b‖ ^ 2 + ‖(σ v)⁻¹ a b‖ ^ 2) ≤ Real.exp R'
        linarith
      · show coords (σ v * (σ v)ᴴ) = v
        rw [hσ2 v hv]; exact (hb n).2.2.2.1 v

    have hσc : ∀ w ∈ cone n, ContinuousAt σ w := fun w hw =>
      (hσ.continuousOn).continuousAt (hopen.mem_nhds hw)
    have hA : ((σ (s • v + (1 - s) • oPt n))⁻¹ * diagonal z * (σ v)ᴴ⁻¹).det ≠ 0 := by
      rw [Matrix.det_mul, Matrix.det_mul]
      exact mul_ne_zero (mul_ne_zero (det_inv_ne _ (hdet _ hP1)) hdz) (det_inv_ne _ (det_ct_ne _ (hdet v hv)))
    have hf1 : ContinuousAt (fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => (σ w.1)⁻¹)
        (s • v + (1 - s) • oPt n, v) :=
      ContinuousAt.comp (g := fun B : Mat n => B⁻¹) (f := fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => σ w.1)
        (inv_contAt _ (hdet _ hP1))
        (ContinuousAt.comp (g := σ) (f := Prod.fst) (x := (s • v + (1 - s) • oPt n, v)) (hσc _ hP1) continuousAt_fst)
    have hf2 : ContinuousAt (fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => (σ w.2)ᴴ⁻¹)
        (s • v + (1 - s) • oPt n, v) :=
      ContinuousAt.comp (g := fun B : Mat n => B⁻¹) (f := fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => (σ w.2)ᴴ)
        (inv_contAt _ (det_ct_ne _ (hdet v hv)))
        (ContinuousAt.comp (g := fun B : Mat n => Bᴴ) (f := fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => σ w.2)
          (continuous_id.matrix_conjTranspose).continuousAt
          (ContinuousAt.comp (g := σ) (f := Prod.snd) (x := (s • v + (1 - s) • oPt n, v)) (hσc v hv) continuousAt_snd))
    have hΦ : ContinuousAt (fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) =>
        lg ((σ w.1)⁻¹ * diagonal z * (σ w.2)ᴴ⁻¹)) (s • v + (1 - s) • oPt n, v) :=
      ContinuousAt.comp (g := lg) (f := fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) =>
          (σ w.1)⁻¹ * diagonal z * (σ w.2)ᴴ⁻¹) (lg_contAt _ hA) (by
        have h3 : ContinuousAt (fun w : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) => (σ w.1)⁻¹ * diagonal z)
            (s • v + (1 - s) • oPt n, v) := hf1.mul continuousAt_const
        exact h3.mul hf2)
    have e1 := hΦ.eventually (Ioi_mem_nhds hgt)
    have e2 : ∀ᶠ w in nhds (s • v + (1 - s) • oPt n, v), w ∈ cone n ×ˢ cone n :=
      (hopen.prod hopen).mem_nhds ⟨hP1, hv⟩
    filter_upwards [e1, e2] with w hw1 hw2
    have hGL : ((σ w.1)⁻¹ * diagonal z * (σ w.2)ᴴ⁻¹) ∈ GLs n := by
      show ((σ w.1)⁻¹ * diagonal z * (σ w.2)ᴴ⁻¹).det ≠ 0
      rw [Matrix.det_mul, Matrix.det_mul]
      exact mul_ne_zero (mul_ne_zero (det_inv_ne _ (hdet _ hw2.1)) hdz) (det_inv_ne _ (det_ct_ne _ (hdet _ hw2.2)))
    have hk0 := hk _ hGL hw1
    simp only [Kc, Kf, hk0, mul_zero, zero_mul, smul_zero]

end PositivityTheory.RgBcC.LfSt.KSuppPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ContinuousCoords =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.TwMemGLs =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.TwMemGLs", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Finset Filter
open scoped ContDiff ComplexConjugate Topology

namespace PositivityTheory.RgBcC.LfSt

open PositivityTheory.RgBcC
open PositivityTheory.RgTw (Mat G th tw hb)

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

theorem isBump_zero_of_neg {g : ℝ → ℝ} {T : ℝ} (h : IsBump g T) (hT : T < 0) : IsBump g 0 := by
  refine ⟨h.1, h.2.1, fun t ht => h.2.2 t (lt_trans hT ht)⟩

theorem isMult_nonneg [MeasurableSpace (G n)] {μ : Measure (G n)} {E : KMod n} {k : Mat n → (E.V →L[ℂ] E.V)}
    {val : Inf n → ℂ} {T : ℝ} (h : IsMult μ E k val T) : IsMult μ E k val (max T 0) := by
  obtain ⟨m, c, w, g, ks, hks, hk, hv⟩ := h
  refine ⟨m, c, w, g, ks, fun i => ⟨?_, (hks i).2⟩, hk, hv⟩
  rcases le_or_gt 0 T with hT | hT
  · rw [max_eq_left hT]; exact (hks i).1
  · rw [max_eq_right hT.le]; exact isBump_zero_of_neg (hks i).1 hT

theorem mem_GLs_mul {x y : Mat n} (hx : x ∈ GLs n) (hy : y ∈ GLs n) : x * y ∈ GLs n := by
  simp only [GLs, Set.mem_setOf_eq, Matrix.det_mul] at *
  exact mul_ne_zero hx hy

theorem unitary_mem_GLs (k : Matrix.unitaryGroup (Fin n) ℂ) : k.1 ∈ GLs n := by
  have h := Matrix.UnitaryGroup.det_isUnit k
  exact h.ne_zero

theorem isMult_props [MeasurableSpace (G n)] {μ : Measure (G n)} {E : KMod n} {k : Mat n → (E.V →L[ℂ] E.V)}
    {val : Inf n → ℂ} {T : ℝ} (h : IsMult μ E k val T) :
    ContDiffOn ℝ ∞ k (GLs n) ∧
      ∀ y ∈ GLs n, ∀ k₁ k₂ : Matrix.unitaryGroup (Fin n) ℂ, k (k₁.1 * y * k₂.1) = E.ρ k₁ * k y * E.ρ k₂ := by
  obtain ⟨m, c, w, g, ks, hks, hk, -⟩ := h
  refine ⟨?_, fun y hy k₁ k₂ => ?_⟩
  · have hs : ContDiffOn ℝ ∞ (fun y => ∑ i, c i • ks i y) (GLs n) :=
      ContDiffOn.sum fun i _ => ((hks i).2.1).const_smul (c i)
    exact hs.congr fun y hy => hk y hy
  · have hy' : k₁.1 * y * k₂.1 ∈ GLs n := mem_GLs_mul (mem_GLs_mul (unitary_mem_GLs k₁) hy) (unitary_mem_GLs k₂)
    rw [hk _ hy', hk y hy, Finset.mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [(hks i).2.2.2.1 y hy k₁ k₂, mul_smul_comm, smul_mul_assoc]

theorem inv_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : x⁻¹ ∈ GLs n := by
  have hu : IsUnit x.det := isUnit_iff_ne_zero.2 hx
  exact (Matrix.isUnit_nonsing_inv_det x hu).ne_zero

theorem conjTranspose_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : xᴴ ∈ GLs n := by
  simp only [GLs, Set.mem_setOf_eq, Matrix.det_conjTranspose, star_ne_zero] at *
  exact hx

theorem tw_mem_GLs {x d : Mat n} (hx : x ∈ GLs n) (hd : d ∈ GLs n) : x⁻¹ * d * xᴴ⁻¹ ∈ GLs n :=
  mem_GLs_mul (mem_GLs_mul (inv_mem_GLs hx) hd) (inv_mem_GLs (conjTranspose_mem_GLs hx))

theorem lAsm : LAsm := by
  classical
  intro hHb _hFD hKC hKS hE1 hE0 _hHom hCone0 _hWE _hWS hKE hMA hCh hCone hHom hSupp
  intro n lam E Fr ε ι S Γ T hCx _ _ μ _ k val τ hk d z hd hz hz2
  obtain ⟨hopen, hconv, σ, hσ, hσ2, hmeas⟩ := hCone n
  obtain ⟨c, -, hform⟩ := hmeas μ
  obtain ⟨hksm, hkeq⟩ := isMult_props hk
  have hdG : d.val ∈ GLs n := ((Matrix.isUnit_iff_isUnit_det _).mp (Units.isUnit d)).ne_zero
  have hch := hCh n lam E Fr ε ι S Γ T hCx μ k val τ hk
  have hkΓ : ∀ y ∈ GLs n, Γ * k y = k y * Γ := fun y hy => (hch y hy).1
  obtain ⟨c0, hc0⟩ := hKE n
  have hsuppk : ∀ y ∈ GLs n, c0 * (1 + max τ 0) < lg y → k y = 0 :=
    (hc0 μ E).2 k val (max τ 0) (le_max_right _ _) (isMult_nonneg hk)
  set R := c0 * (1 + max τ 0) with hRdef
  obtain ⟨hKsm, hKΓ, hKch⟩ := hKC n lam E Fr ε ι S Γ T hCx σ hσ hσ2 k hksm hkeq (fun y hy => hch y hy) d.val hdG c
  obtain ⟨C, hCU, hCc, hCsupp⟩ := hKS hSupp n E.V σ hσ hσ2 Fr k Γ T R hsuppk z hz hz2 c
  have hK : Kc σ c Fr k Γ T d.val = Kc σ c Fr k Γ T (diagonal z) := by rw [hd]
  set K' : (Fin n × Fin n → ℝ) × (Fin n × Fin n → ℝ) → (E.V →L[ℂ] E.V) := fun y =>
    if y ∈ cone n ×ˢ cone n then Kc σ c Fr k Γ T d.val y else 0 with hK'def
  have hUU : IsOpen (cone n ×ˢ cone n) := hopen.prod hopen
  have hKK' : ∀ y ∈ cone n ×ˢ cone n, K' =ᶠ[𝓝 y] Kc σ c Fr k Γ T d.val := fun y hy =>
    Filter.eventually_of_mem (hUU.mem_nhds hy) fun y' hy' => by simp only [hK'def, if_pos hy']
  obtain ⟨hherm, htr, -, -, -, -, -, hoPt⟩ := hHb n
  have hH := hHom (Fin n × Fin n) E.V (fun i => ε (hb i)) (fun i => ι (hb i)) S Γ (cone n) (oPt n) K' hopen hconv hoPt
    (fun i j => by
      rw [hCx.car (hb i) (hb j) (hherm i) (hherm j), htr i j]
      split_ifs <;> simp)
    (fun i => hCx.Γε _) (fun i => hCx.Γι _) hCx.SΓ hCx.Ssmooth (fun s i => hCx.Sε s _) hCx.Sder
    (hKsm.congr fun y hy => by simp only [hK'def, if_pos hy])
    (fun y => by
      by_cases hy : y ∈ cone n ×ˢ cone n
      · simp only [hK'def, if_pos hy]; exact hKΓ y hy
      · simp only [hK'def, if_neg hy, mul_zero, zero_mul])
    (fun y hy => by
      rw [(hKK' y hy).fderiv_eq]
      exact hKch y hy)
    ⟨C, hCU, hCc, fun s hs v hv hvC => by
      have h1 := hCsupp s hs v hv hvC
      have hmem : (s • v + (1 - s) • oPt n, v) ∈ cone n ×ˢ cone n :=
        ⟨hconv hv hoPt hs.1 (by linarith [hs.2]) (by ring), hv⟩
      filter_upwards [h1, hKK' _ hmem] with y h1y h2y
      rw [h2y, hK]
      exact h1y⟩
  obtain ⟨R', hR'⟩ := hSupp n z hz hz2 R
  have hR1 : ∀ x ∈ GLs n, R' < lg x → k (x⁻¹ * d.val * xᴴ⁻¹) = 0 := by
    intro x hx hlt
    by_contra hne
    have hle : lg (x⁻¹ * diagonal z * xᴴ⁻¹) ≤ R := by
      by_contra hgt
      push_neg at hgt
      exact hne (hd ▸ hsuppk _ (hd ▸ tw_mem_GLs hx hdG) hgt)
    have := hR' 1 ⟨zero_le_one, le_refl _⟩ x hx x hx (by simp) hle
    linarith
  obtain ⟨hint, heq1⟩ := hE1 n lam E Fr ε ι S Γ T hCx μ σ c hσ hσ2 hform k hksm.continuousOn hkeq hkΓ d R' hR1
  have heig := (hMA n μ E k k val val τ τ hk hk).2.2.2
  have heq0 := hE0 n lam E Fr ε ι S Γ T hCx μ σ c hσ hσ2 hform k val hksm.continuousOn hkeq hkΓ ⟨R, hsuppk⟩ heig
    d z hd hz hz2
  refine ⟨hint, ?_⟩
  rw [← heq1, ← heq0]
  have e1 : ∫ v in cone n, LinearMap.trace ℂ E.V ((Γ * S 1 * K' (v, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) =
      ∫ v in cone n, LinearMap.trace ℂ E.V ((Γ * S 1 * Kc σ c Fr k Γ T d.val (v, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) :=
    setIntegral_congr_fun hopen.measurableSet fun v hv => by simp only [hK'def, if_pos (show (v, v) ∈ cone n ×ˢ cone n from ⟨hv, hv⟩)]
  have e0 : ∫ v in cone n, LinearMap.trace ℂ E.V ((Γ * S 0 * K' (oPt n, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) =
      ∫ v in cone n, LinearMap.trace ℂ E.V ((Γ * S 0 * Kc σ c Fr k Γ T d.val (oPt n, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) :=
    setIntegral_congr_fun hopen.measurableSet fun v hv => by
      simp only [hK'def, if_pos (show (oPt n, v) ∈ cone n ×ˢ cone n from ⟨hoPt, hv⟩)]
  rw [← e1, ← e0]
  exact hH

end PositivityTheory.RgBcC.LfSt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.TwMemGLs =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.UnitaryMemGLs =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.UnitaryMemGLs", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LengthFunctionFactsHold\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeStructure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.MulEquivHaarChar\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Finset Filter Topology
open scoped ContDiff ComplexConjugate NNReal ComplexOrder

namespace PositivityTheory.RgBcC.LfSt.GLSubgroupConjTransposeClosure

open PositivityTheory.RgBcC PositivityTheory.RgBcC.LfSt
open PositivityTheory.RgTw (Mat G th tw hb)

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

local instance : SecondCountableTopology (Mat n) :=
  inferInstanceAs (SecondCountableTopology (Fin n → Fin n → ℂ))
local instance : LocallyCompactSpace (Mat n) :=
  inferInstanceAs (LocallyCompactSpace (Fin n → Fin n → ℂ))
local instance : SecondCountableTopology (G n) :=
  have : SecondCountableTopology (Mat n)ᵐᵒᵖ := MulOpposite.opHomeomorph.symm.secondCountableTopology
  Units.isEmbedding_embedProduct.secondCountableTopology
local instance : LocallyCompactSpace (G n) := inferInstanceAs (LocallyCompactSpace (Mat n)ˣ)

theorem hOf_oPt : hOf (oPt n) = 1 := by
  have h := GlobalTheory.CompanionTheory.ConeHaar.hOf_coords (n := n) 1 isHermitian_one
  have e : oPt n = fun p => ((hb p * 1).trace).re := by funext p; simp [oPt, coords]
  rw [e]; exact h

def thE : G n ≃ₜ* G n where
  toFun y := (star y)⁻¹
  invFun y := (star y)⁻¹
  left_inv y := by simp [star_inv]
  right_inv y := by simp [star_inv]
  map_mul' x y := by simp [star_mul, _root_.mul_inv_rev]
  continuous_toFun := by
    rw [Units.continuous_iff]
    refine ⟨?_, ?_⟩
    · show Continuous fun y : G n => (((star y)⁻¹ : G n) : Mat n)
      have e : ∀ y : G n, (((star y)⁻¹ : G n) : Mat n) = star (((y⁻¹ : G n)) : Mat n) := fun y => by
        rw [← star_inv, Units.coe_star]
      simp only [e]; exact Units.continuous_coe_inv.star
    · show Continuous fun y : G n => ((((star y)⁻¹)⁻¹ : G n) : Mat n)
      simp only [inv_inv, Units.coe_star]; exact Units.continuous_val.star
  continuous_invFun := by
    rw [Units.continuous_iff]
    refine ⟨?_, ?_⟩
    · show Continuous fun y : G n => (((star y)⁻¹ : G n) : Mat n)
      have e : ∀ y : G n, (((star y)⁻¹ : G n) : Mat n) = star (((y⁻¹ : G n)) : Mat n) := fun y => by
        rw [← star_inv, Units.coe_star]
      simp only [e]; exact Units.continuous_coe_inv.star
    · show Continuous fun y : G n => ((((star y)⁻¹)⁻¹ : G n) : Mat n)
      simp only [inv_inv, Units.coe_star]; exact Units.continuous_val.star

theorem thE_val (y : G n) : ((thE y : G n) : Mat n) = (y : Mat n)ᴴ⁻¹ := by
  show (((star y)⁻¹ : G n) : Mat n) = _
  rw [Matrix.coe_units_inv]; rfl

theorem thE_thE : (thE (n := n)).trans thE = ContinuousMulEquiv.refl _ := by
  ext y; simp [thE, star_inv]

theorem map_thE [MeasurableSpace (G n)] [BorelSpace (G n)] (μ : Measure (G n)) [μ.IsHaarMeasure] [μ.Regular] :
    μ.map thE = μ := by
  have h1 : mulEquivHaarChar (thE (n := n)) = 1 := by
    have h := mulEquivHaarChar_trans (φ := (thE (n := n))) (ψ := thE)
    rw [thE_thE, mulEquivHaarChar_refl] at h
    have hpos := mulEquivHaarChar_pos (thE (n := n))
    have h' : ((mulEquivHaarChar (thE (n := n)) : ℝ)) * (mulEquivHaarChar (thE (n := n)) : ℝ) = 1 := by
      exact_mod_cast h.symm
    have hp : (0 : ℝ) < mulEquivHaarChar (thE (n := n)) := by exact_mod_cast hpos
    have : (mulEquivHaarChar (thE (n := n)) : ℝ) = 1 := by nlinarith
    exact_mod_cast this
  have := mulEquivHaarChar_smul_map μ (thE (n := n))
  rwa [h1, one_smul] at this

theorem mem_GLs_mul {x y : Mat n} (hx : x ∈ GLs n) (hy : y ∈ GLs n) : x * y ∈ GLs n := by
  simp only [GLs, Set.mem_setOf_eq, Matrix.det_mul] at *
  exact mul_ne_zero hx hy

theorem inv_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : x⁻¹ ∈ GLs n :=
  (Matrix.isUnit_nonsing_inv_det x (isUnit_iff_ne_zero.2 hx)).ne_zero

theorem cT_mem_GLs {x : Mat n} (hx : x ∈ GLs n) : xᴴ ∈ GLs n := by
  simp only [GLs, Set.mem_setOf_eq, Matrix.det_conjTranspose, star_ne_zero] at *
  exact hx

theorem one_mem_GLs : (1 : Mat n) ∈ GLs n := by simp [GLs]

theorem unitary_mem_GLs (κ : Matrix.unitaryGroup (Fin n) ℂ) : κ.1 ∈ GLs n :=
  (Matrix.UnitaryGroup.det_isUnit κ).ne_zero

theorem hs_cT (y : Mat n) : GlobalTheory.CompanionTheory.LengthGL.hs yᴴ = GlobalTheory.CompanionTheory.LengthGL.hs y := by
  unfold GlobalTheory.CompanionTheory.LengthGL.hs
  rw [Finset.sum_comm]
  simp [Matrix.conjTranspose_apply]

theorem lg_cT {y : Mat n} (hy : y ∈ GLs n) : lg yᴴ = lg y := by
  rw [GlobalTheory.CompanionTheory.LengthGL.lg_eq, GlobalTheory.CompanionTheory.LengthGL.lg_eq, hs_cT, ← Matrix.conjTranspose_nonsing_inv, hs_cT]

theorem lg_cT_inv {y : Mat n} (hy : y ∈ GLs n) : lg yᴴ⁻¹ = lg y := by
  rw [GlobalTheory.CompanionTheory.LengthGL.lg_inv (cT_mem_GLs hy), lg_cT hy]

theorem diag_unitary {z : Fin n → ℂ} (hz : ∀ a, ‖z a‖ = 1) : diagonal z ∈ Matrix.unitaryGroup (Fin n) ℂ := by
  rw [Matrix.mem_unitaryGroup_iff]
  rw [Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal]
  rw [← Matrix.diagonal_one]
  congr 1
  funext i
  simpa [hz i] using Complex.mul_conj' (z i)

theorem lg_diag_mul {z : Fin n → ℂ} (hz : ∀ a, ‖z a‖ = 1) (x : Mat n) : lg (diagonal z * x) = lg x := by
  have h := GlobalTheory.CompanionTheory.LengthGL.lg_unitary x ⟨diagonal z, diag_unitary hz⟩ 1
  simpa using h

def trL {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] (A : V →L[ℂ] V) :
    (V →L[ℂ] V) →L[ℂ] ℂ :=
  LinearMap.toContinuousLinearMap
    ((LinearMap.trace ℂ V) ∘ₗ (ContinuousLinearMap.coeLM ℂ) ∘ₗ (LinearMap.mulLeft ℂ A))

theorem trL_apply {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V] (A B : V →L[ℂ] V) :
    trL A B = LinearMap.trace ℂ V ((A * B : V →L[ℂ] V) : V →ₗ[ℂ] V) := rfl

theorem end0 : End0 := by
  intro n lam E Fr ε ι S Γ T hCx _ _ μ _ σ c hσ hσ2 hform k val hkc hkeq hkΓ hksupp heig d z hd hz hz2
  obtain ⟨Rk, hRk⟩ := hksupp
  have hdG : d.val ∈ GLs n := GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val d

  set F : Mat n → ℂ := fun y =>
    LinearMap.trace ℂ E.V ((Γ * S 0 * (k (d.val * yᴴ⁻¹) * Γ * T * Fr y⁻¹) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) with hFdef

  have hu0 : σ (oPt n) * (σ (oPt n))ᴴ = 1 := by rw [hσ2 _ GlobalTheory.CompanionTheory.HbBasis.oPt_mem_cone, hOf_oPt]
  have hu0' : (σ (oPt n))ᴴ * σ (oPt n) = 1 := mul_eq_one_comm.mp hu0
  set U0 : Matrix.unitaryGroup (Fin n) ℂ := ⟨σ (oPt n), Matrix.mem_unitaryGroup_iff.2 hu0⟩ with hU0
  have hU0inv : (σ (oPt n))⁻¹ = (U0⁻¹ : Matrix.unitaryGroup (Fin n) ℂ).1 := by
    rw [Matrix.inv_eq_left_inv hu0']; rfl

  have hpt : ∀ v ∈ cone n,
      LinearMap.trace ℂ E.V ((Γ * S 0 * Kc σ c Fr k Γ T d.val (oPt n, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) =
        F (σ v) * ((c : ℂ) * ((hOf v).det ^ n)⁻¹) := by
    intro v hv
    have hyG : σ v ∈ GLs n := GlobalTheory.CompanionTheory.ConeHaar.det_ne_of_gram (hσ2 v hv) hv
    have hmem : d.val * (σ v)ᴴ⁻¹ ∈ GLs n := mem_GLs_mul hdG (inv_mem_GLs (cT_mem_GLs hyG))
    have hk1 : k ((σ (oPt n))⁻¹ * d.val * (σ v)ᴴ⁻¹) = E.ρ U0⁻¹ * k (d.val * (σ v)ᴴ⁻¹) := by
      have h := hkeq _ hmem U0⁻¹ 1
      rw [map_one, mul_one] at h
      rw [← h, hU0inv, mul_assoc]; simp
    have hFr0 : Fr (σ (oPt n)) = E.ρ U0 := hCx.onK U0
    have hρ : E.ρ U0 * E.ρ U0⁻¹ = 1 := by rw [← map_mul, mul_inv_cancel, map_one]
    have hKf : Kf Fr k Γ T d.val (σ (oPt n)) (σ v) = k (d.val * (σ v)ᴴ⁻¹) * Γ * T * Fr (σ v)⁻¹ := by
      unfold Kf
      rw [hk1, hFr0, ← mul_assoc (E.ρ U0), hρ, one_mul]
    simp only [Kc]
    rw [hKf, mul_smul_comm, ContinuousLinearMap.coe_smul, map_smul, smul_eq_mul, mul_comm]

  have hcont_ci : ContinuousOn (fun y : Mat n => yᴴ⁻¹) (GLs n) := by
    have h1 : ContinuousOn (fun y : Mat n => y⁻¹) (GLs n) :=
      GlobalTheory.CompanionTheory.LengthGL.contDiffOn_inv.continuousOn
    have h2 : Continuous (fun y : Mat n => yᴴ) := continuous_id.matrix_conjTranspose
    exact h1.comp h2.continuousOn fun y hy => cT_mem_GLs hy
  have hcont_k : ContinuousOn (fun y : Mat n => k (d.val * yᴴ⁻¹)) (GLs n) :=
    hkc.comp (continuousOn_const.mul hcont_ci) fun y hy => mem_GLs_mul hdG (inv_mem_GLs (cT_mem_GLs hy))
  have hcont_Fr : ContinuousOn (fun y : Mat n => Fr y⁻¹) (GLs n) :=
    hCx.smooth.continuousOn.comp GlobalTheory.CompanionTheory.LengthGL.contDiffOn_inv.continuousOn fun y hy => inv_mem_GLs hy
  have hcont_B : ContinuousOn (fun y : Mat n => k (d.val * yᴴ⁻¹) * Γ * T * Fr y⁻¹) (GLs n) :=
    ((hcont_k.mul continuousOn_const).mul continuousOn_const).mul hcont_Fr
  have hFcont : ContinuousOn F (GLs n) := by
    have := (trL (Γ * S 0)).continuous.comp_continuousOn hcont_B
    exact this
  have hkz : ∀ y ∈ GLs n, Rk < lg y → k (d.val * yᴴ⁻¹) = 0 := by
    intro y hy hlt
    apply hRk _ (mem_GLs_mul hdG (inv_mem_GLs (cT_mem_GLs hy)))
    rw [hd, lg_diag_mul hz, lg_cT_inv hy]; exact hlt
  have hFsupp : ∃ R, ∀ y ∈ GLs n, R < lg y → F y = 0 :=
    ⟨Rk, fun y hy hlt => by simp only [hFdef, hkz y hy hlt, zero_mul, mul_zero, ContinuousLinearMap.coe_zero, map_zero]⟩
  have hFinv : ∀ y ∈ GLs n, ∀ κ : Matrix.unitaryGroup (Fin n) ℂ, F (y * κ.1) = F y := by
    intro y hy κ
    have hκ : κ.1 * star κ.1 = 1 := Matrix.mem_unitaryGroup_iff.1 κ.2
    have hκ' : star κ.1 * κ.1 = 1 := Matrix.mem_unitaryGroup_iff'.1 κ.2
    have hci : (y * κ.1)ᴴ⁻¹ = yᴴ⁻¹ * κ.1 := by
      have hstar : (κ.1)ᴴ⁻¹ = κ.1 := by
        rw [← Matrix.star_eq_conjTranspose]; exact Matrix.inv_eq_right_inv hκ'
      rw [Matrix.conjTranspose_mul, Matrix.mul_inv_rev, hstar]
    have hinvκ : (y * κ.1)⁻¹ = (κ⁻¹ : Matrix.unitaryGroup (Fin n) ℂ).1 * y⁻¹ := by
      rw [Matrix.mul_inv_rev, Matrix.inv_eq_left_inv hκ']; rfl
    have hmem : d.val * yᴴ⁻¹ ∈ GLs n := mem_GLs_mul hdG (inv_mem_GLs (cT_mem_GLs hy))
    have hk2 : k (d.val * (y * κ.1)ᴴ⁻¹) = k (d.val * yᴴ⁻¹) * E.ρ κ := by
      have h := hkeq _ hmem 1 κ
      rw [map_one, one_mul] at h
      rw [hci, ← h]; congr 1; simp [mul_assoc]
    have hFr2 : Fr (y * κ.1)⁻¹ = E.ρ κ⁻¹ * Fr y⁻¹ := by
      rw [hinvκ, hCx.mul _ (unitary_mem_GLs _) _ (inv_mem_GLs hy), hCx.onK]
    have hΓρ : Γ * E.ρ κ = E.ρ κ * Γ := by rw [← hCx.onK κ]; exact hCx.ΓFr _ (unitary_mem_GLs κ)
    have hTρ : T * E.ρ κ = E.ρ κ * T := hCx.TK κ
    have hρρ : E.ρ κ * E.ρ κ⁻¹ = 1 := by rw [← map_mul, mul_inv_cancel, map_one]
    have hop : k (d.val * yᴴ⁻¹) * E.ρ κ * Γ * T * (E.ρ κ⁻¹ * Fr y⁻¹) = k (d.val * yᴴ⁻¹) * Γ * T * Fr y⁻¹ := by
      simp only [mul_assoc]
      rw [← mul_assoc (E.ρ κ) Γ, ← hΓρ, mul_assoc Γ (E.ρ κ), ← mul_assoc (E.ρ κ) T, ← hTρ, mul_assoc T (E.ρ κ),
        ← mul_assoc (E.ρ κ) (E.ρ κ⁻¹), hρρ, one_mul]
    simp only [hFdef]
    rw [hk2, hFr2, hop]

  have hcone : ∫ v in cone n,
      LinearMap.trace ℂ E.V ((Γ * S 0 * Kc σ c Fr k Γ T d.val (oPt n, v) : E.V →L[ℂ] E.V) : E.V →ₗ[ℂ] E.V) =
        ∫ y : G n, F y.val ∂μ := by
    rw [setIntegral_congr_fun (_root_.GlobalTheory.CompanionTheory.ConeHaar.isOpen_cone n).measurableSet hpt, hform F hFcont hFsupp hFinv,
      ← integral_const_mul]
    congr 1; funext v; ring
  rw [hcone]

  set B : G n → (E.V →L[ℂ] E.V) := fun y => k (d.val * (y.val)ᴴ⁻¹) * Γ * T * Fr (y.val)⁻¹ with hBdef
  have hBcont : Continuous B :=
    hcont_B.comp_continuous Units.continuous_val fun y => GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val y
  have hBsupp : HasCompactSupport B :=
    HasCompactSupport.intro (GlobalTheory.CompanionTheory.LengthGL.isCompact_G (n := n) Rk) fun y hy => by
      simp only [Set.mem_setOf_eq, not_le] at hy
      simp only [hBdef, hkz _ (GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val y) hy, zero_mul]
  have hBint : Integrable B μ := hBcont.integrable_of_hasCompactSupport hBsupp
  have hIF : ∫ y : G n, F y.val ∂μ = trL (Γ * S 0) (∫ y, B y ∂μ) := by
    rw [← (trL (Γ * S 0)).integral_comp_comm hBint]
    rfl

  have hkey : (∫ y, B y ∂μ) * S 0 = val (infOf lam) • (Fr d.val * T * S 0) := by
    refine ContinuousLinearMap.ext fun w => ?_
    rw [ContinuousLinearMap.mul_apply, ContinuousLinearMap.integral_apply hBint (S 0 w)]
    set v := Fr d.val (T (S 0 w)) with hv
    have hS0v : S 0 v = v := by
      rw [hv]
      have e1 : S 0 (Fr d.val (T (S 0 w))) = (S 0 * Fr d.val) (T (S 0 w)) := rfl
      rw [e1, hCx.sym_zero_comm_frame _ hdG, ContinuousLinearMap.mul_apply]
      have e2 : S 0 (T (S 0 w)) = (S 0 * T) (S 0 w) := rfl
      rw [e2, ← hCx.time_comm_sym_zero, ContinuousLinearMap.mul_apply]
      have e3 : S 0 (S 0 w) = (S 0 * S 0) w := rfl
      rw [e3, hCx.S0sq]
    set f : Mat n → E.V := fun x => Fr x⁻¹ (S 0 v) with hfdef
    set hh : G n → E.V := fun y' => k y'.val (Fr ((y'.val)⁻¹ * d.val) (T (S 0 w))) with hhdef
    have hBw : ∀ y : G n, B y (S 0 w) = hh (d * thE y) := by
      intro y
      have hyG := GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val y
      have hcG : (y.val)ᴴ ∈ GLs n := cT_mem_GLs hyG
      have hθ : T (Fr (y.val)⁻¹ (S 0 w)) = Fr (y.val)ᴴ (T (S 0 w)) := by
        have h := hCx.S0θ _ hcG
        rw [Matrix.conjTranspose_conjTranspose] at h
        have := congrArg (fun A : E.V →L[ℂ] E.V => A w) h
        simpa [ContinuousLinearMap.mul_apply] using this
      have hΓ : Γ (Fr (y.val)ᴴ (T (S 0 w))) = Fr (y.val)ᴴ (T (S 0 w)) := by
        have h1 : Γ (Fr (y.val)ᴴ (T (S 0 w))) = Fr (y.val)ᴴ (Γ (T (S 0 w))) := by
          have := congrArg (fun A : E.V →L[ℂ] E.V => A (T (S 0 w))) (hCx.ΓFr _ hcG)
          simpa [ContinuousLinearMap.mul_apply] using this
        have h2 : Γ (T (S 0 w)) = T (Γ (S 0 w)) := by
          have := congrArg (fun A : E.V →L[ℂ] E.V => A (S 0 w)) hCx.ΓT
          simpa [ContinuousLinearMap.mul_apply] using this
        have h3 : Γ (S 0 w) = S 0 w := by
          have := congrArg (fun A : E.V →L[ℂ] E.V => A w) hCx.S0Γ
          simpa [ContinuousLinearMap.mul_apply] using this
        rw [h1, h2, h3]
      have hval : (d * thE y).val = d.val * (y.val)ᴴ⁻¹ := by rw [Units.val_mul, thE_val]
      have hinv : ((d * thE y).val)⁻¹ * d.val = (y.val)ᴴ := by
        rw [hval, Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv _ (isUnit_iff_ne_zero.2 hcG), mul_assoc,
          Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 hdG), mul_one]
      simp only [hBdef, hhdef, ContinuousLinearMap.mul_apply]
      rw [hθ, hΓ, hinv, hval]
    have hmp : MeasurePreserving (thE (n := n)) μ μ := ⟨thE.continuous.measurable, map_thE μ⟩
    have hI1 : ∫ y, B y (S 0 w) ∂μ = ∫ y, hh y ∂μ := by
      simp only [hBw]
      rw [hmp.integral_comp thE.toHomeomorph.measurableEmbedding (fun y => hh (d * y))]
      exact integral_mul_left_eq_self hh d
    have hfCE : f ∈ CE E := by
      refine ⟨?_, fun g hg κ => ?_⟩
      · have h1 : ContDiffOn ℝ ∞ (fun x : Mat n => Fr x⁻¹) (GLs n) :=
          hCx.smooth.comp GlobalTheory.CompanionTheory.LengthGL.contDiffOn_inv fun y hy => inv_mem_GLs hy
        exact ((ContinuousLinearMap.apply ℂ E.V (S 0 v)).restrictScalars ℝ).contDiff.comp_contDiffOn h1
      · have hκ' : star κ.1 * κ.1 = 1 := Matrix.mem_unitaryGroup_iff'.1 κ.2
        have hinvκ : (g * κ.1)⁻¹ = (κ⁻¹ : Matrix.unitaryGroup (Fin n) ℂ).1 * g⁻¹ := by
          rw [Matrix.mul_inv_rev, Matrix.inv_eq_left_inv hκ']; rfl
        simp only [hfdef]
        rw [hinvκ, hCx.mul _ (unitary_mem_GLs _) _ (inv_mem_GLs hg), hCx.onK, ContinuousLinearMap.mul_apply]
    have hact : act μ E k f 1 = val (infOf lam) • f 1 := heig (infOf lam) f hfCE (hCx.eig v) 1 one_mem_GLs
    have hI2 : ∫ y, hh y ∂μ = act μ E k f 1 := by
      unfold act
      congr 1; funext y
      have hyG := GlobalTheory.CompanionTheory.LengthGL.mem_GLs_val y
      simp only [hhdef, hfdef, one_mul, hS0v]
      rw [hCx.mul _ (inv_mem_GLs hyG) _ hdG, ContinuousLinearMap.mul_apply]
    have hf1 : f 1 = v := by simp only [hfdef, inv_one, hCx.one, ContinuousLinearMap.one_apply, hS0v]
    rw [hI1, hI2, hact, hf1, ContinuousLinearMap.smul_apply, ContinuousLinearMap.mul_apply, ContinuousLinearMap.mul_apply]
  rw [hIF, trL_apply, hCx.S0Γ, ContinuousLinearMap.coe_mul, LinearMap.trace_mul_comm, ← ContinuousLinearMap.coe_mul,
    hkey, ContinuousLinearMap.coe_smul, map_smul, smul_eq_mul]
  congr 1
  rw [ContinuousLinearMap.coe_mul, LinearMap.trace_mul_comm, ← ContinuousLinearMap.coe_mul, ← mul_assoc, hd]
  exact hCx.char z hz hz2

end PositivityTheory.RgBcC.LfSt.GLSubgroupConjTransposeClosure
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.UnitaryMemGLs =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.LOfOfKChain =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.LOfOfKChain", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.FrameDer\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundFacts\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.SymZeroCommFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeHomotopy\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveConeStructure\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ConjTransposeMemGLs\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.ContinuousCoords\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.GelfandReading\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.TwMemGLs\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.UnitaryMemGLs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.RgBcC.LfSt

theorem lOf_of_kChain (h : KChain) : LOf :=
  lAsm _root_.GlobalTheory.CompanionTheory.HbBasis.hbFacts (GelfandReading.frameDer_of _root_.GlobalTheory.CompanionTheory.HbBasis.hbFacts) h (KSuppPf.ksupp_of _root_.GlobalTheory.CompanionTheory.HbBasis.hbFacts _root_.GlobalTheory.CompanionTheory.ConeHaar.coneSt) UnitaryConjTransposeTrace.end1 GLSubgroupConjTransposeClosure.end0
    _root_.GlobalTheory.CompanionTheory.SuperHomot.homot _root_.GlobalTheory.CompanionTheory.ConeHaar.coneSt

end PositivityTheory.RgBcC.LfSt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ArchimedeanGelfandKernels.LeftEquivariantFunctions.GLMatrixDerivatives.LOfOfKChain =====
