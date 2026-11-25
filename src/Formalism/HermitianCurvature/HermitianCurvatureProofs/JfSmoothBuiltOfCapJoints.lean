module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaFiniteOfHaar
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GroupEquationsPostHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LieDecompositionLocal
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartSysWOfPartsOf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationAlgebraicHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFixesTailCoords
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactZeroHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftGeneratorWordEvaluation
import Formalism.FormalDegreeBessel.FinalG
import Mathlib.Tactic.Linter.Style
import Mathlib.LinearAlgebra.Lagrange
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CartanInvolutionConjTransposeMul
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorAsGenerators, Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCovarianceHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.CoefficientInterpolationHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeLocalRepresentative, Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantShiftCoefficient, Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialDegreeHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialSymbolHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExistence, Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCapelliAsGenerators, Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCovarianceChartHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentLieFiniteHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentOfCharPoly, Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCapelliAsGenerators, Formalism.HermitianCurvature.HermitianCurvatureProofs.RightChartHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.RightGeneratorWordEvaluation, Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorFieldHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLiftHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLinearHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorToSymbolOperator, Formalism.HermitianCurvature.HermitianCurvatureProofs.OpCapLOfOf, Formalism.HermitianCurvature.HermitianCurvatureProofs.WordFamilySymbolHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.JfSmoothBuiltOfCapJoints

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorAsGenerators =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorAsGenerators", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff Topology

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem cvag_posL_iff {k r : ℕ} (a b : Fin (Q.mdim k r 0)) : Q.posL k r 0 a = Q.posL k r 0 b ↔ a = b := by
  simp [Q.posL, Fin.ext_iff]

theorem cvag_list {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (u : ℂ)
    (σ : Equiv.Perm (Fin (Q.mdim k r 0))) :
    (List.ofFn fun i : Fin (Q.mdim k r 0) =>
      Top (Q.EH (E := E) k r) (u - ((i : ℕ) : ℂ)) (Q.posL k r 0 (σ i)) (Q.posL k r 0 i)) =
      (capGens (zgCV k r) σ).map (fun gn => genOpR (E := E) gn u) := by
  unfold capGens
  rw [List.map_ofFn]
  congr 1
  funext i F h
  simp only [Function.comp_apply, Formalism.QuantumDeterminants.Top, genOpR, capGen, zgCV, Q.EH, EabH, cvag_posL_iff, List.map_cons,
    List.map_nil, List.sum_cons, List.sum_nil, one_smul, add_zero]
  split_ifs <;> simp

theorem capelli_vector_as_generators : CVAsGens := by
  intro k r E _ _ Y f g
  simp only [Q.CV, Q.capL, qminorOp, Finset.sum_apply, Pi.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [cvag_list]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorAsGenerators =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCovarianceHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCovarianceHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Formalism.FormalDegreeBessel.FinalG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaFiniteOfHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity.ChartCovPf

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ}

def bq (H : B.Mat k r) : B.Mat k r →ₗ[ℝ] B.Mat k r →ₗ[ℝ] B.Mat k r :=
  LinearMap.mk₂ ℝ (fun M N => Mᴴ * H * N)
    (fun M M' N => by simp [Matrix.conjTranspose_add, Matrix.add_mul])
    (fun c M N => by simp [Matrix.conjTranspose_smul])
    (fun M N N' => by simp [Matrix.mul_add])
    (fun c M N => by simp)

def bqL (H : B.Mat k r) : B.Mat k r →L[ℝ] B.Mat k r →L[ℝ] B.Mat k r :=
  LinearMap.toContinuousLinearMap
    ((LinearMap.toContinuousLinearMap : (B.Mat k r →ₗ[ℝ] B.Mat k r) ≃ₗ[ℝ] (B.Mat k r →L[ℝ] B.Mat k r)).toLinearMap ∘ₗ
      bq H)

theorem bqL_apply (H M N : B.Mat k r) : bqL H M N = Mᴴ * H * N := rfl

theorem tangent_eq {d : ℕ} {O : Set (Fin d → ℝ)} {κ : (Fin d → ℝ) → B.Mat k r} (hO : IsOpen O)
    (hκ : ContDiffOn ℝ ∞ κ O) (hG : ∀ y ∈ O, κ y ∈ B.GV k r) {x : Fin d → ℝ} (hx : x ∈ O)
    (v : Fin d → ℝ) :
    (fderiv ℝ κ x v)ᴴ * Hpk k r * κ x + (κ x)ᴴ * Hpk k r * fderiv ℝ κ x v = 0 := by
  have hd : DifferentiableAt ℝ κ x := (hκ.contDiffAt (hO.mem_nhds hx)).differentiableAt (by simp)
  have hl : HasDerivAt (fun t : ℝ => x + t • v) v 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).smul_const v).const_add x
  have hc := hd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hl (by simp)
  have hB := (bqL (Hpk k r)).hasDerivAt_of_bilinear (fun _ => hc) (fun _ => hc)
  have hmem : ∀ᶠ t in nhds (0 : ℝ), x + t • v ∈ O := by
    have hcont : Continuous (fun t : ℝ => x + t • v) := by fun_prop
    exact hcont.continuousAt.preimage_mem_nhds (by simpa using hO.mem_nhds hx)
  have hev : (fun _ : ℝ => Hpk k r) =ᶠ[nhds 0]
      fun t : ℝ => bqL (Hpk k r) ((κ ∘ fun t : ℝ => x + t • v) t) ((κ ∘ fun t : ℝ => x + t • v) t) := by
    filter_upwards [hmem] with t ht
    rw [bqL_apply]
    exact (hG _ ht).symm
  have h2 := hB.congr_of_eventuallyEq hev
  have e := h2.deriv
  rw [deriv_const] at e
  simp only [Function.comp_apply, zero_smul, add_zero] at e
  have e' : (κ x)ᴴ * Hpk k r * fderiv ℝ κ x v + (fderiv ℝ κ x v)ᴴ * Hpk k r * κ x = 0 := e.symm
  exact (add_comm _ _).trans e'

theorem chart_id {d : ℕ} {O : Set (Fin d → ℝ)} {U : Set (B.Mat k r)} {κ : (Fin d → ℝ) → B.Mat k r}
    {Φ : B.Mat k r → (Fin d → ℝ)} (hC : IsChart k r d O U κ Φ) {x : Fin d → ℝ} (hx : x ∈ O) (v : Fin d → ℝ) :
    fderiv ℝ Φ (κ x) (fderiv ℝ κ x v) = v := by
  obtain ⟨hO, hU, hκ, hΦ, hκO, _⟩ := hC
  have hd : DifferentiableAt ℝ κ x := (hκ.contDiffAt (hO.mem_nhds hx)).differentiableAt (by simp)
  have hdΦ : DifferentiableAt ℝ Φ (κ x) :=
    (hΦ.contDiffAt (hU.mem_nhds (hκO x hx).2.1)).differentiableAt (by simp)
  have h1 := hdΦ.hasFDerivAt.comp x hd.hasFDerivAt
  have hev : (Φ ∘ κ) =ᶠ[nhds x] id := by
    filter_upwards [hO.mem_nhds hx] with y hy
    exact (hκO y hy).2.2
  have h2 : HasFDerivAt (Φ ∘ κ) (ContinuousLinearMap.id ℝ (Fin d → ℝ)) x :=
    (hasFDerivAt_id x).congr_of_eventuallyEq hev
  have := h1.unique h2
  exact congrArg (fun L : (Fin d → ℝ) →L[ℝ] (Fin d → ℝ) => L v) this

theorem vr_onto {d : ℕ} {O : Set (Fin d → ℝ)} {U : Set (B.Mat k r)} {κ : (Fin d → ℝ) → B.Mat k r}
    {Φ : B.Mat k r → (Fin d → ℝ)} (hC : IsChart k r d O U κ Φ) {x : Fin d → ℝ} (hx : x ∈ O) (v : Fin d → ℝ) :
    ∃ Y : B.Mat k r, B.inLie k r Y ∧ VR κ Φ Y x = v := by
  have hG : ∀ y ∈ O, κ y ∈ B.GV k r := fun y hy => (hC.2.2.2.2.1 y hy).1
  have hg : (κ x)ᴴ * Hpk k r * κ x = Hpk k r := hG x hx
  have hdet : IsUnit (κ x).det := Formalism.FourierDecayAlt.P.PBG.isUnit_det_of_UH (hG x hx)
  have hT := tangent_eq hC.1 hC.2.2.1 hG hx v
  set g := κ x with hgdef
  set A := fderiv ℝ κ x v with hAdef
  refine ⟨g⁻¹ * A, ?_, ?_⟩
  · have e1 : (g⁻¹)ᴴ * Hpk k r = Hpk k r * g := by
      calc (g⁻¹)ᴴ * Hpk k r = (g⁻¹)ᴴ * (gᴴ * Hpk k r * g) := by rw [hg]
        _ = (g * g⁻¹)ᴴ * Hpk k r * g := by rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
        _ = Hpk k r * g := by rw [Matrix.mul_nonsing_inv g hdet]; simp
    have e2 : Hpk k r * g⁻¹ = gᴴ * Hpk k r := by
      calc Hpk k r * g⁻¹ = gᴴ * Hpk k r * g * g⁻¹ := by rw [hg]
        _ = gᴴ * Hpk k r := by rw [Matrix.mul_assoc, Matrix.mul_nonsing_inv g hdet, Matrix.mul_one]
    show (g⁻¹ * A)ᴴ * Hpk k r + Hpk k r * (g⁻¹ * A) = 0
    rw [Matrix.conjTranspose_mul, Matrix.mul_assoc, e1, ← Matrix.mul_assoc (Hpk k r), e2, ← Matrix.mul_assoc]
    exact hT
  · show fderiv ℝ Φ g (g * (g⁻¹ * A)) = v
    rw [← Matrix.mul_assoc, Matrix.mul_nonsing_inv g hdet, Matrix.one_mul]
    exact chart_id hC hx v

def ellL {d : ℕ} (κ : (Fin d → ℝ) → B.Mat k r) (Φ : B.Mat k r → (Fin d → ℝ)) (x ξ : Fin d → ℝ) :
    B.Mat k r →ₗ[ℝ] ℝ where
  toFun X := ξ ⬝ᵥ VR κ Φ X x
  map_add' X Y := by simp only [VR, Matrix.mul_add, map_add (f := _), dotProduct_add]
  map_smul' c X := by simp only [VR, Matrix.mul_smul, map_smul, dotProduct_smul, RingHom.id_apply, smul_eq_mul]

theorem ellL_apply {d : ℕ} (κ : (Fin d → ℝ) → B.Mat k r) (Φ : B.Mat k r → (Fin d → ℝ)) (x ξ : Fin d → ℝ)
    (X : B.Mat k r) : ellL κ Φ x ξ X = ξ ⬝ᵥ VR κ Φ X x := rfl

def cMat (ℓ : B.Mat k r →ₗ[ℝ] ℝ) : B.Mat k r :=
  Matrix.of fun j i => ((ℓ (Matrix.single i j 1) : ℝ) : ℂ) - Complex.I * ((ℓ (Complex.I • Matrix.single i j 1) : ℝ) : ℂ)

theorem ell_single (ℓ : B.Mat k r →ₗ[ℝ] ℝ) (i j : Fin (2 * r + k + 1)) (c : ℂ) :
    ℓ (Matrix.single i j c) = c.re * ℓ (Matrix.single i j 1) + c.im * ℓ (Complex.I • Matrix.single i j 1) := by
  have : (Matrix.single i j c : B.Mat k r) =
      c.re • (Matrix.single i j (1 : ℂ) : B.Mat k r) + c.im • (Complex.I • (Matrix.single i j (1 : ℂ) : B.Mat k r)) := by
    ext p q
    simp only [Matrix.add_apply, Matrix.smul_apply, Matrix.single_apply]
    split_ifs <;> simp
  rw [this, map_add (f := _), map_smul, map_smul, smul_eq_mul, smul_eq_mul]

theorem re_trace_cMat (ℓ : B.Mat k r →ₗ[ℝ] ℝ) (X : B.Mat k r) : (Matrix.trace (cMat ℓ * X)).re = ℓ X := by
  conv_rhs => rw [Matrix.matrix_eq_sum_single X]

  simp only [map_sum]
  simp only [Matrix.trace, Matrix.diag, Matrix.mul_apply, cMat, Matrix.of_apply, Complex.re_sum, Complex.mul_re,
    Complex.sub_re, Complex.sub_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.mul_im]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
  rw [ell_single ℓ i j (X i j)]
  norm_num
  ring

theorem inLie_half (C : B.Mat k r) : B.inLie k r ((1 / 2 : ℂ) • (C - Hpk k r * Cᴴ * Hpk k r)) := by
  have hH : Hpk k r * Hpk k r = 1 := (hpkFacts k r).2.1
  have hH' : ∀ M : B.Mat k r, Hpk k r * (Hpk k r * M) = M := fun M => by
    rw [← Matrix.mul_assoc, hH, Matrix.one_mul]
  have hHc : (Hpk k r)ᴴ = Hpk k r := (hpkFacts k r).1
  have hs : star (1 / 2 : ℂ) = 1 / 2 := by simp
  show ((1 / 2 : ℂ) • (C - Hpk k r * Cᴴ * Hpk k r))ᴴ * Hpk k r +
    Hpk k r * ((1 / 2 : ℂ) • (C - Hpk k r * Cᴴ * Hpk k r)) = 0
  rw [Matrix.conjTranspose_smul, Matrix.conjTranspose_sub, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, hHc,
    Matrix.conjTranspose_conjTranspose, hs]
  simp only [Matrix.smul_mul, Matrix.mul_smul, Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_assoc, hH, hH',
    Matrix.mul_one]
  rw [← smul_add]
  have : Cᴴ * Hpk k r - Hpk k r * C + (Hpk k r * C - Cᴴ * Hpk k r) = 0 := by abel
  rw [this, smul_zero]

theorem re_trace_half (C X : B.Mat k r) (hX : B.inLie k r X) :
    (Matrix.trace ((1 / 2 : ℂ) • (C - Hpk k r * Cᴴ * Hpk k r) * X)).re = (Matrix.trace (C * X)).re := by
  have hH : Hpk k r * Hpk k r = 1 := (hpkFacts k r).2.1
  have hX' : Hpk k r * (X * Hpk k r) = -Xᴴ := by
    have h : Xᴴ * Hpk k r + Hpk k r * X = 0 := hX
    have h2 := congrArg (· * Hpk k r) h
    simp only [Matrix.add_mul, Matrix.mul_assoc, hH, Matrix.mul_one, Matrix.zero_mul] at h2
    exact eq_neg_of_add_eq_zero_right h2
  have e1 : Matrix.trace (Hpk k r * Cᴴ * Hpk k r * X) = -star (Matrix.trace (C * X)) := by
    calc Matrix.trace (Hpk k r * Cᴴ * Hpk k r * X) = Matrix.trace (Hpk k r * (Cᴴ * Hpk k r * X)) := by
          simp only [Matrix.mul_assoc]
      _ = Matrix.trace (Cᴴ * (Hpk k r * (X * Hpk k r))) := by
          rw [Matrix.trace_mul_comm]; simp only [Matrix.mul_assoc]
      _ = -Matrix.trace ((X * C)ᴴ) := by
          rw [hX', Matrix.mul_neg, Matrix.trace_neg, Matrix.conjTranspose_mul]
      _ = -star (Matrix.trace (C * X)) := by rw [Matrix.trace_conjTranspose, Matrix.trace_mul_comm]
  rw [Matrix.smul_mul, Matrix.trace_smul, Matrix.sub_mul, Matrix.trace_sub, e1, smul_eq_mul]
  simp [Complex.mul_re]
  ring

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity.ChartCovPf

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity


open ChartCovPf in
theorem chart_covariance_holds : ChartCov := by
  intro k r d O U κ Φ hC x hx ξ
  refine ⟨(1 / 2 : ℂ) • (cMat (ellL κ Φ x ξ) - Hpk k r * (cMat (ellL κ Φ x ξ))ᴴ * Hpk k r),
    inLie_half _, ?_, ?_⟩
  · intro hξ h0
    obtain ⟨Y, hY, hYv⟩ := vr_onto hC hx ξ
    have e := re_trace_half (cMat (ellL κ Φ x ξ)) Y hY
    rw [h0, Matrix.zero_mul, Matrix.trace_zero, Complex.zero_re, re_trace_cMat, ellL_apply, hYv] at e
    exact hξ (dotProduct_self_eq_zero.1 e.symm)
  · intro X hX
    rw [re_trace_half _ X hX, re_trace_cMat, ellL_apply]

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCovarianceHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CoefficientInterpolationHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CoefficientInterpolationHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Lagrange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

theorem coefficient_interpolation_holds : CoeffInterp := by
  intro N m _hm
  refine ⟨fun i => ((i : ℕ) : ℝ),
    fun i => (Lagrange.basis (Finset.univ : Finset (Fin (N + 1))) (fun j => ((j : ℕ) : ℂ)) i).coeff m, ?_⟩
  intro q hq
  have hinj : Set.InjOn (fun j : Fin (N + 1) => ((j : ℕ) : ℂ)) ((Finset.univ : Finset (Fin (N + 1))) : Set (Fin (N + 1))) := by
    intro a _ b _ hab
    simp only at hab
    exact Fin.ext (by exact_mod_cast hab)
  have hdeg : q.degree < ((Finset.univ : Finset (Fin (N + 1))).card : WithBot ℕ) := by
    rw [Finset.card_univ, Fintype.card_fin]
    exact lt_of_le_of_lt (Polynomial.degree_le_of_natDegree_le hq) (by exact_mod_cast Nat.lt_succ_self N)
  have h := Lagrange.eq_interpolate hinj hdeg
  conv_rhs => rw [h]
  rw [Lagrange.interpolate_apply, Polynomial.finsetSum_coeff]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [Polynomial.coeff_C_mul]
  simp only [Complex.ofReal_natCast]
  ring

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CoefficientInterpolationHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeLocalRepresentative =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeLocalRepresentative", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GroupEquationsPostHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LieDecompositionLocal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff Topology

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem derivative_local_representative : RdVRep := by
  intro k r E _ _ X U F f hX hU hc he h hh hhG
  have hc' : ContDiffOn ℝ (((1 : ℕ∞) : WithTop ℕ∞)) F U := by exact_mod_cast hc
  refine ⟨LieDecompositionLocal.rdV_eq_fderiv (m := 1) le_rfl hU hh hhG hc' he hX, ?_⟩
  have hd : DifferentiableAt ℝ F h :=
    (hc.differentiableOn one_ne_zero).differentiableAt (hU.mem_nhds hh)
  have hloc : Q.LdV X f h = Q.LdV X F h := by
    show deriv (fun t : ℝ => f (NormedSpace.exp ((t : ℂ) • X) * h)) 0 =
      deriv (fun t : ℝ => F (NormedSpace.exp ((t : ℂ) • X) * h)) 0
    apply Filter.EventuallyEq.deriv_eq
    have hcont : Continuous (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) * h) := by
      have h1 := (gpMulR h).continuous.comp (B5.curve_contDiff (1 : B.Mat k r) X).continuous
      refine h1.congr fun t => ?_
      simp [gpMulR_apply]
    have hev : ∀ᶠ t : ℝ in 𝓝 (0 : ℝ), NormedSpace.exp ((t : ℂ) • X) * h ∈ U := by
      apply hcont.continuousAt.preimage_mem_nhds
      have h0 : NormedSpace.exp (((0 : ℝ) : ℂ) • X) * h = h := by simp
      rw [h0]
      exact hU.mem_nhds hh
    filter_upwards [hev] with t ht
    exact he _ ht (WeylGroupFacts.uh_mul (B5.exp_mem hX t) hhG)
  rw [hloc]
  exact gp_ldV X h F hd

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeLocalRepresentative =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantShiftCoefficient =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantShiftCoefficient", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Finset

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

theorem detShift_prod_coeff {σ ι : Type*} [Fintype ι] (h c : ι → MvPolynomial σ ℂ)
    (hh : ∀ i, (h i).IsHomogeneous 1) (hc : ∀ i, (c i).IsHomogeneous 0)
    (d : σ →₀ ℕ) (hd : d.degree = Fintype.card ι) :
    AddMonoidAlgebra.coeff (∏ i, (h i + c i)) d = AddMonoidAlgebra.coeff (∏ i, h i) d := by
  classical
  rw [Finset.prod_add, coeff_sum, Finset.sum_eq_single Finset.univ]
  · simp
  · intro S _ hS
    have hH : ((∏ i ∈ S, h i) * ∏ i ∈ univ \ S, c i).IsHomogeneous S.card := by
      have := (IsHomogeneous.prod S h (fun _ => 1) (fun i _ => hh i)).mul
        (IsHomogeneous.prod (univ \ S) c (fun _ => 0) (fun i _ => hc i))
      simpa using this
    apply hH.coeff_eq_zero
    rw [hd]
    intro hcard
    exact hS (Finset.eq_univ_of_card S hcard.symm)
  · intro hn
    exact absurd (Finset.mem_powerset.mpr (Finset.subset_univ _)) hn

def detShiftSub : Fin 2 → Polynomial ℂ := ![Polynomial.X, -1]

theorem detShift_aeval_monomial (d : Fin 2 →₀ ℕ) (a : ℂ) :
    aeval detShiftSub (monomial d a) = Polynomial.C (a * (-1) ^ d 1) * Polynomial.X ^ d 0 := by
  rw [aeval_monomial, Finsupp.prod_fintype _ _ (fun _ => pow_zero _), Fin.prod_univ_two]
  simp [detShiftSub, Polynomial.algebraMap_eq, map_mul, map_pow, map_neg]
  ring

theorem detShift_aeval_coeff (Q : MvPolynomial (Fin 2) ℂ) (t j : ℕ) (hj : j ≤ t)
    (hQ : Q.IsHomogeneous t) :
    (aeval detShiftSub Q).coeff (t - j) =
      (-1) ^ j * AddMonoidAlgebra.coeff Q (Finsupp.single (0 : Fin 2) (t - j) + Finsupp.single (1 : Fin 2) j) := by
  classical
  set D : Fin 2 →₀ ℕ := Finsupp.single (0 : Fin 2) (t - j) + Finsupp.single (1 : Fin 2) j with hD
  have hD0 : D 0 = t - j := by simp [hD]
  have hD1 : D 1 = j := by simp [hD]
  have hterm : ∀ d : Fin 2 →₀ ℕ, (aeval detShiftSub (monomial d (AddMonoidAlgebra.coeff Q d))).coeff (t - j) =
      if t - j = d 0 then AddMonoidAlgebra.coeff Q d * (-1) ^ d 1 else 0 := by
    intro d
    rw [detShift_aeval_monomial, Polynomial.coeff_C_mul_X_pow]
  conv_lhs => rw [Q.as_sum]

  rw [map_sum, Polynomial.finsetSum_coeff, Finset.sum_eq_single D]
  · rw [hterm, hD0, hD1, if_pos rfl, mul_comm]
  · intro d hd hne
    rw [hterm]
    split_ifs with h0
    · exfalso
      have hdeg : d.degree = t := by
        by_contra hne'
        exact (mem_support_iff.mp hd) (hQ.coeff_eq_zero hne')
      rw [Finsupp.degree_eq_sum, Fin.sum_univ_two] at hdeg
      apply hne
      ext i
      fin_cases i
      · simp [hD0, ← h0]
      · simp only [Fin.mk_one, Fin.isValue, hD1]
        omega
    · rfl
  · intro hn
    rw [hterm, notMem_support_iff.mp hn]
    simp

theorem detShift_factor {t : ℕ} (M : Matrix (Fin t) (Fin t) ℂ) (σ : Equiv.Perm (Fin t)) (i : Fin t) :
    ((if σ i = i then X 0 - C ((i : ℕ) : ℂ) else 0) + X 1 * C (M (σ i) i) : MvPolynomial (Fin 2) ℂ) =
      ((if σ i = i then X 0 else 0) + X 1 * C (M (σ i) i)) +
        (if σ i = i then -C ((i : ℕ) : ℂ) else 0) := by
  split_ifs <;> ring

theorem detShift_hom {t : ℕ} (M : Matrix (Fin t) (Fin t) ℂ) (σ : Equiv.Perm (Fin t)) (i : Fin t) :
    ((if σ i = i then X 0 else 0) + X 1 * C (M (σ i) i) : MvPolynomial (Fin 2) ℂ).IsHomogeneous 1 := by
  apply IsHomogeneous.add
  · split_ifs
    · exact isHomogeneous_X _ _
    · exact isHomogeneous_zero _ _ _
  · rw [mul_comm]
    exact isHomogeneous_C_mul_X _ _

theorem detShift_const {t : ℕ} (σ : Equiv.Perm (Fin t)) (i : Fin t) :
    ((if σ i = i then -C ((i : ℕ) : ℂ) else 0) : MvPolynomial (Fin 2) ℂ).IsHomogeneous 0 := by
  split_ifs
  · exact (isHomogeneous_C _ _).neg
  · exact isHomogeneous_zero _ _ _

theorem detShift_subst {t : ℕ} (M : Matrix (Fin t) (Fin t) ℂ) :
    aeval detShiftSub (∑ σ : Equiv.Perm (Fin t), ((Equiv.Perm.sign σ : ℤ) : MvPolynomial (Fin 2) ℂ) *
      ∏ i : Fin t, ((if σ i = i then X 0 else 0) + X 1 * C (M (σ i) i))) = M.charpoly := by

  rw [Matrix.charpoly, Matrix.det_apply', map_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [map_mul, map_intCast, map_prod]
  congr 1
  refine Finset.prod_congr rfl fun i _ => ?_
  by_cases h : σ i = i
  · rw [h]
    simp [detShiftSub, Matrix.charmatrix_apply_eq, Polynomial.algebraMap_eq]
    ring
  · simp [detShiftSub, h, Polynomial.algebraMap_eq]

theorem determinant_shift_coefficient : DetShiftCoeff := by
  intro t M j hj
  set D : Fin 2 →₀ ℕ := Finsupp.single (0 : Fin 2) (t - j) + Finsupp.single (1 : Fin 2) j with hD
  set Q : MvPolynomial (Fin 2) ℂ := ∑ σ : Equiv.Perm (Fin t), ((Equiv.Perm.sign σ : ℤ) : MvPolynomial (Fin 2) ℂ) *
      ∏ i : Fin t, ((if σ i = i then X 0 else 0) + X 1 * C (M (σ i) i)) with hQdef
  have hdeg : D.degree = t := by
    rw [hD, map_add (f := _), Finsupp.degree_single, Finsupp.degree_single]
    omega
  have hQ : Q.IsHomogeneous t := by
    apply IsHomogeneous.sum
    intro σ _
    rw [← map_intCast (C : ℂ →+* MvPolynomial (Fin 2) ℂ)]
    simpa using (isHomogeneous_C (Fin 2) (((Equiv.Perm.sign σ : ℤ) : ℂ))).mul
      (IsHomogeneous.prod (univ : Finset (Fin t)) _ (fun _ => 1) (fun i _ => detShift_hom M σ i))
  have hPQ : AddMonoidAlgebra.coeff (∑ σ : Equiv.Perm (Fin t), ((Equiv.Perm.sign σ : ℤ) : MvPolynomial (Fin 2) ℂ) *
        ∏ i : Fin t, ((if σ i = i then X 0 - C ((i : ℕ) : ℂ) else 0) + X 1 * C (M (σ i) i))) D =
      AddMonoidAlgebra.coeff Q D := by
    rw [hQdef, coeff_sum, coeff_sum]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [← map_intCast (C : ℂ →+* MvPolynomial (Fin 2) ℂ), coeff_C_mul, coeff_C_mul]
    congr 1
    simp_rw [detShift_factor M σ]
    exact detShift_prod_coeff _ _ (detShift_hom M σ) (detShift_const σ) D (by simp [hdeg])
  rw [hPQ]
  have hC := detShift_aeval_coeff Q t j hj hQ
  rw [hQdef, detShift_subst] at hC
  rw [hC, ← hQdef, ← mul_assoc, ← mul_pow, show ((-1 : ℂ) * -1) = 1 by norm_num, one_pow, one_mul]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantShiftCoefficient =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialDegreeHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialDegreeHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

theorem exponential_degree_holds : FExpDeg := by
  intro k r gens
  induction gens with
  | nil =>
    intro _ t ht
    simp only [fexp, List.mem_singleton] at ht
    subst ht
    simp
  | cons gn gs ih =>
    intro hdeg t ht
    have hgn : gn.1.natDegree ≤ 1 := hdeg gn (by simp)
    have ih' := ih (fun g hg => hdeg g (List.mem_cons_of_mem _ hg))
    simp only [fexp, List.mem_append, List.mem_map, List.mem_flatMap] at ht
    rcases ht with ⟨t', ht', rfl⟩ | ⟨dX, hdX, t', ht', rfl⟩
    · obtain ⟨h1, h2⟩ := ih' t' ht'
      refine ⟨?_, ?_⟩
      · have := Polynomial.natDegree_mul_le (p := gn.1) (q := t'.1)
        simp only [List.length_cons]
        omega
      · intro X hX
        obtain ⟨g, hg, d, hd⟩ := h2 X hX
        exact ⟨g, List.mem_cons_of_mem _ hg, d, hd⟩
    · obtain ⟨h1, h2⟩ := ih' t' ht'
      refine ⟨?_, ?_⟩
      · have := Polynomial.natDegree_C_mul_le dX.1 t'.1
        simp only [List.length_cons]
        omega
      · intro X hX
        rcases List.mem_cons.1 hX with rfl | hX
        · exact ⟨gn, by simp, dX.1, hdX⟩
        · obtain ⟨g, hg, d, hd⟩ := h2 X hX
          exact ⟨g, List.mem_cons_of_mem _ hg, d, hd⟩

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialDegreeHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialSymbolHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialSymbolHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

namespace ExponentialSymbolLetters

variable {k r : ℕ} (τ : B.Mat k r → ℂ) (u s : ℂ)

def phi (t : Polynomial ℂ × List (B.Mat k r)) : ℂ := t.1.eval u * s ^ t.2.length * (t.2.map τ).prod

theorem head (p : Polynomial ℂ) (l : List (Polynomial ℂ × List (B.Mat k r))) :
    ((l.map fun t => (p * t.1, t.2)).map (phi τ u s)).sum = p.eval u * (l.map (phi τ u s)).sum := by
  rw [List.map_map, ← List.sum_map_mul_left]
  congr 1
  apply List.map_congr_left
  intro t _
  simp only [Function.comp_apply, phi, Polynomial.eval_mul]
  ring

theorem letter (d : ℂ) (X : B.Mat k r) (l : List (Polynomial ℂ × List (B.Mat k r))) :
    ((l.map fun t => (Polynomial.C d * t.1, X :: t.2)).map (phi τ u s)).sum =
      (d * s * τ X) * (l.map (phi τ u s)).sum := by
  rw [List.map_map, ← List.sum_map_mul_left]
  congr 1
  apply List.map_congr_left
  intro t _
  simp only [Function.comp_apply, phi, Polynomial.eval_mul, Polynomial.eval_C, List.length_cons, pow_succ,
    List.map_cons, List.prod_cons]
  ring

theorem letters (L : List (ℂ × B.Mat k r)) (l : List (Polynomial ℂ × List (B.Mat k r))) :
    ((L.flatMap fun dX => l.map fun t => (Polynomial.C dX.1 * t.1, dX.2 :: t.2)).map (phi τ u s)).sum =
      s * (L.map fun dX => dX.1 * τ dX.2).sum * (l.map (phi τ u s)).sum := by
  induction L with
  | nil => simp
  | cons dX L ih =>
    rw [List.flatMap_cons, List.map_append, List.sum_append, letter, ih, List.map_cons, List.sum_cons]
    ring

theorem all (gs : List (GenW k r)) : ((fexp gs).map (phi τ u s)).sum =
    (gs.map fun gn => gn.1.eval u + s * (gn.2.map fun dX => dX.1 * τ dX.2).sum).prod := by
  induction gs with
  | nil => simp [fexp, phi]
  | cons gn gs ih =>
    rw [fexp, List.map_append, List.sum_append, head, letters, List.map_cons, List.prod_cons, ← ih]
    ring

end ExponentialSymbolLetters

theorem exponential_symbol_holds : FExpSymb := by
  intro k r gens τ u s
  exact ExponentialSymbolLetters.all τ u s gens

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialSymbolHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExistence =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExistence", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

theorem frame_existence : FrameEx := fun _ _ _ hz hT => Qx8.frame_exists hz hT

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExistence =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCapelliAsGenerators =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCapelliAsGenerators", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff Topology

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem clag_list {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (Bs : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) (σ : Equiv.Perm (Fin k)) :
    (List.ofFn fun i : Fin k => fun y : Q.Mx k r → E =>
      (if id (σ i) = id i then (w - ((i : ℕ) : ℂ)) • y else 0) +
        Q.LZ (Hpk k r) (Q.unitB (Hpk k r) Bs (id (σ i)) (id i)) y) =
      (capGens (zgB Bs) σ).map (fun gn => genOpL (E := E) gn w) := by
  unfold capGens
  rw [List.map_ofFn]
  congr 1
  funext i F h
  simp only [Function.comp_apply, genOpL, capGen, zgB, Q.LZ, id, List.map_cons,
    List.map_nil, List.sum_cons, List.sum_nil, one_smul, add_zero, Pi.add_apply]
  split_ifs <;> simp

theorem left_capelli_as_generators : CapLAsGens := by
  intro k r E _ _ Bs w f g
  simp only [Q.capLft, Q.qmFrev, Finset.sum_apply, Pi.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [List.map_reverse, List.foldr_reverse, clag_list]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCapelliAsGenerators =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCovarianceChartHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCovarianceChartHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartSysWOfPartsOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationAlgebraicHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix Polynomial
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem left_covariance_chart_holds : CovL := by
  intro k r d O U κ Φ hC x hx ξ Ξ₀ _hΞ₀ hcov X hX
  have hg : κ x ∈ B.GV k r := (hC.2.2.2.2.1 x hx).1
  obtain ⟨hgi, hig, hHg, hgH⟩ := gv_facts hg
  have hY : B.inLie k r ((κ x)⁻¹ * X * κ x) := by
    unfold B.inLie at hX ⊢

    have e1 : ((κ x)⁻¹ * X * κ x)ᴴ * Hpk k r = (κ x)ᴴ * (Xᴴ * Hpk k r) * κ x := by
      rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul]
      simp only [Matrix.mul_assoc]
      rw [← hHg]
    have e2 : Hpk k r * ((κ x)⁻¹ * X * κ x) = (κ x)ᴴ * (Hpk k r * X) * κ x := by
      simp only [← Matrix.mul_assoc]
      rw [← hgH]
    rw [e1, e2, ← Matrix.add_mul, ← Matrix.mul_add, hX, Matrix.mul_zero, Matrix.zero_mul]
  have hV : VL κ Φ X x = VR κ Φ ((κ x)⁻¹ * X * κ x) x := by
    show fderiv ℝ Φ (κ x) (X * κ x) = fderiv ℝ Φ (κ x) (κ x * ((κ x)⁻¹ * X * κ x))
    rw [show κ x * ((κ x)⁻¹ * X * κ x) = X * κ x by
      rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hig, Matrix.one_mul]]
  have ht : Matrix.trace (Ξ₀ * ((κ x)⁻¹ * X * κ x)) = Matrix.trace (κ x * Ξ₀ * (κ x)⁻¹ * X) := by
    rw [← Matrix.mul_assoc, Matrix.trace_mul_comm]
    simp only [Matrix.mul_assoc]
  rw [hV, hcov _ hY, ht]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCovarianceChartHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentLieFiniteHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentLieFiniteHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFixesTailCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

theorem nilpotent_lie_finite_holds : LieNFin := by
  intro k r
  obtain ⟨b, hbS, hspan, hli⟩ := exists_linearIndependent ℝ (JfS.lieOf (Nset k r))
  have hfin : b.Finite := hli.setFinite
  have : Fintype b := hfin.fintype
  let Xs : Fin (Fintype.card b) → B.Mat k r := fun i => ((Fintype.equivFin b).symm i : B.Mat k r)
  have hrange : Set.range Xs = b := by
    ext x
    constructor
    · rintro ⟨i, rfl⟩
      exact ((Fintype.equivFin b).symm i).2
    · intro hx
      refine ⟨Fintype.equivFin b ⟨x, hx⟩, ?_⟩
      simp [Xs]
  refine ⟨Fintype.card b, Xs, fun i => hbS ((Fintype.equivFin b).symm i).2, fun X hX => ⟨?_, ?_⟩⟩
  · exact LieSplitPf.lieHpk_of (fun t => (hX t).1)
  · have hmem : X ∈ Submodule.span ℝ (Set.range Xs) := by
      rw [hrange, hspan]
      exact Submodule.subset_span hX
    obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun ℝ).mp hmem
    refine ⟨a, ?_⟩
    rw [← ha]
    refine Finset.sum_congr rfl fun i _ => ?_
    ext p q
    simp [Matrix.smul_apply, Complex.real_smul]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentLieFiniteHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentOfCharPoly =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentOfCharPoly", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartSysWOfPartsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix Polynomial
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem nilpotent_of_char_poly : NilOfCharpoly := by
  intro n M h
  have hmon := Matrix.charpoly_monic M
  have hdeg : M.charpoly.natDegree = n := by
    rw [Matrix.charpoly_natDegree_eq_dim, Fintype.card_fin]
  have hX : M.charpoly = (X : ℂ[X]) ^ n := by
    ext i
    rw [Polynomial.coeff_X_pow]
    rcases lt_trichotomy i n with hi | hi | hi
    · rw [if_neg (by omega)]
      have := h (n - i) (by omega) (by omega)
      rwa [show n - (n - i) = i by omega] at this
    · rw [if_pos hi]
      have h1 := hmon.coeff_natDegree
      rw [hdeg] at h1
      rw [hi]; exact h1
    · rw [if_neg (by omega)]
      exact Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)
  refine ⟨n, ?_⟩
  have := Matrix.aeval_self_charpoly M
  rwa [hX, map_pow, Polynomial.aeval_X] at this

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentOfCharPoly =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCapelliAsGenerators =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCapelliAsGenerators", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff Topology

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem crag_list {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (Bs : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) (σ : Equiv.Perm (Fin k)) :
    (List.ofFn fun i : Fin k => fun y : Q.Mx k r → E =>
      (if id (σ i) = id i then (w - ((i : ℕ) : ℂ)) • y else 0) +
        Q.RZ (Hpk k r) (Q.unitB (Hpk k r) Bs (id (σ i)) (id i)) y) =
      (capGens (zgB Bs) σ).map (fun gn => genOpR (E := E) gn w) := by
  unfold capGens
  rw [List.map_ofFn]
  congr 1
  funext i F h
  simp only [Function.comp_apply, genOpR, capGen, zgB, Q.RZ, id, List.map_cons,
    List.map_nil, List.sum_cons, List.sum_nil, one_smul, add_zero, Pi.add_apply]
  split_ifs <;> simp

theorem right_capelli_as_generators : CapRAsGens := by
  intro k r E _ _ Bs w f g
  simp only [Q.capR, Q.qmF, Finset.sum_apply, Pi.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [crag_list]

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCapelliAsGenerators =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightChartHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RightChartHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Matrix Filter
open scoped ContDiff Topology

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

local instance rwcN {d n : ℕ} : NormedAddCommGroup (Matrix (Fin n) (Fin n) ℂ →L[ℝ] (Fin d → ℝ)) :=
  ContinuousLinearMap.toNormedAddCommGroup

local instance rwcS {d n : ℕ} : NormedSpace ℝ (Matrix (Fin n) (Fin n) ℂ →L[ℝ] (Fin d → ℝ)) :=
  ContinuousLinearMap.toNormedSpace

namespace RightChartMultiplication

variable {d : ℕ}

theorem vfD_contDiffOn {V : (Fin d → ℝ) → (Fin d → ℝ)} {u : (Fin d → ℝ) → ℂ} {O : Set (Fin d → ℝ)}
    (hO : IsOpen O) {m : ℕ} (hu : ContDiffOn ℝ ((m + 1 : ℕ) : WithTop ℕ∞) u O) (hV : ContDiffOn ℝ ∞ V O) :
    ContDiffOn ℝ (m : WithTop ℕ∞) (vfD V u) O := by
  have h1 : ContDiffOn ℝ (m : WithTop ℕ∞) (fun x => fderiv ℝ u x) O :=
    hu.fderiv_of_isOpen hO (by push_cast; exact le_rfl)
  exact h1.clm_apply (hV.of_le (by exact_mod_cast le_top))

theorem vfW_contDiffOn {O : Set (Fin d → ℝ)} (hO : IsOpen O) :
    ∀ (Vs : List ((Fin d → ℝ) → (Fin d → ℝ))) (n : ℕ) (u : (Fin d → ℝ) → ℂ),
      ContDiffOn ℝ (n : WithTop ℕ∞) u O → (∀ V ∈ Vs, ContDiffOn ℝ ∞ V O) → Vs.length ≤ n →
      ContDiffOn ℝ ((n - Vs.length : ℕ) : WithTop ℕ∞) (vfW Vs u) O
  | [], n, u, hu, _, _ => by simpa [vfW] using hu
  | V :: Vs, n, u, hu, hV, hl => by
      simp only [List.length_cons] at hl
      have ih := vfW_contDiffOn hO Vs n u hu (fun W hW => hV W (List.mem_cons_of_mem _ hW)) (by omega)
      have e : n - Vs.length = (n - (Vs.length + 1)) + 1 := by omega
      rw [e] at ih
      simp only [vfW, List.length_cons]
      exact vfD_contDiffOn hO ih (hV V (List.mem_cons_self ..))

theorem glev0 {k r : ℕ} {g : B.Mat k r} (hg : g ∈ B.GV k r) : g ∈ Q.Glev k r 0 :=
  ⟨hg, fun _ ha => absurd ha (Nat.not_lt_zero _)⟩

def mulLC {k r : ℕ} (X : B.Mat k r) : B.Mat k r →L[ℝ] B.Mat k r :=
  LinearMap.toContinuousLinearMap (LinearMap.mulLeft ℝ X)

theorem lcurve_hasDerivAt {k r : ℕ} (X g : B.Mat k r) :
    HasDerivAt (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) * g) (X * g) 0 := by
  have h1 := P.B5.curve_hasDerivAt (1 : B.Mat k r) X 0
  have h2 := (mulRightRealCLM g).hasFDerivAt.comp_hasDerivAt (0 : ℝ) h1
  simp only [Function.comp_def, mulRightCLM_apply, Matrix.one_mul, Complex.ofReal_zero, zero_smul,
    NormedSpace.exp_zero] at h2
  exact h2

theorem rcurve_hasDerivAt {k r : ℕ} (X g : B.Mat k r) :
    HasDerivAt (fun t : ℝ => g * NormedSpace.exp ((t : ℂ) • X)) (g * X) 0 := by
  have h1 := P.B5.curve_hasDerivAt g X 0
  simp only [Complex.ofReal_zero, zero_smul, NormedSpace.exp_zero, Matrix.mul_one] at h1
  exact h1

theorem step {k r : ℕ} {O : Set (Fin d → ℝ)} {U : Set (B.Mat k r)} {κ : (Fin d → ℝ) → B.Mat k r}
    {Φ : B.Mat k r → (Fin d → ℝ)} (hC : IsChart k r d O U κ Φ) (f : B.Mat k r → ℂ) (h : (Fin d → ℝ) → ℂ)
    (hfh : ∀ y ∈ O, f (κ y) = h y) {x : Fin d → ℝ} (hx : x ∈ O) (hh : DifferentiableAt ℝ h x)
    (c : ℝ → B.Mat k r) (v : B.Mat k r) (hc : HasDerivAt c v 0) (hc0 : c 0 = κ x)
    (hcG : ∀ t, c t ∈ B.GV k r) :
    deriv (fun t => f (c t)) 0 = fderiv ℝ h x (fderiv ℝ Φ (κ x) v) := by
  obtain ⟨hO, hU, hκ, hΦ, hκO, hΦU⟩ := hC
  have hxU : κ x ∈ U := (hκO x hx).2.1
  have hΦd : DifferentiableAt ℝ Φ (κ x) :=
    (hΦ.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hxU)
  have hmem : ∀ᶠ t : ℝ in 𝓝 0, c t ∈ U :=
    hc.continuousAt.preimage_mem_nhds (by rw [hc0]; exact hU.mem_nhds hxU)
  have heq : (fun t => f (c t)) =ᶠ[𝓝 0] fun t => h (Φ (c t)) := by
    filter_upwards [hmem] with t ht
    obtain ⟨h1, h2⟩ := hΦU (c t) ht (hcG t)
    rw [← hfh _ h1, h2]
  rw [heq.deriv_eq]
  have hγ : HasDerivAt (fun t => Φ (c t)) (fderiv ℝ Φ (κ x) v) 0 := by
    have := hΦd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hc hc0.symm
    exact this
  have hγ0 : Φ (c 0) = x := by rw [hc0]; exact (hκO x hx).2.2
  exact (hh.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0.symm).deriv

end RightChartMultiplication

open RightChartMultiplication in
theorem right_chart_holds : RwChart := by
  intro k r z z' d O U κ Φ u hC hOm hu
  have hC' := hC
  obtain ⟨hO, hU, hκ, hΦ, hκO, hΦU⟩ := hC

  have h1 : ∀ n : ℕ, n ≤ 2 * r + k + 1 → ContDiffOn ℝ (n : WithTop ℕ∞) (fun x => u (κ x)) O := by
    intro n hn x hx
    obtain ⟨V, F, hVo, hxV, hF, hFu⟩ := hu (κ x) ⟨glev0 (hκO x hx).1, hOm x hx⟩
    have hxV' : κ x ∈ V := hxV
    have hev : ∀ᶠ y in 𝓝[O] x, κ y ∈ V := (hκ.continuousOn x hx) (hVo.mem_nhds hxV')
    have hFκ : ContDiffWithinAt ℝ (n : WithTop ℕ∞) (fun y => F (κ y)) O x :=
      ((hF.contDiffAt (hVo.mem_nhds hxV')).of_le (by exact_mod_cast hn)).comp_contDiffWithinAt x
        ((hκ x hx).of_le (by exact_mod_cast le_top))
    refine hFκ.congr_of_eventuallyEq ?_ (hFu _ hxV' (glev0 (hκO x hx).1))
    filter_upwards [hev, self_mem_nhdsWithin] with y hyV hyO
    exact hFu _ hyV (glev0 (hκO y hyO).1)

  have hDΦ : ContDiffOn ℝ ∞ (fun g => fderiv ℝ Φ g) U :=
    ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 hΦ).2
  have hDΦκ : ContDiffOn ℝ ∞ (fun x => fderiv ℝ Φ (κ x)) O :=
    hDΦ.comp hκ (fun x hx => (hκO x hx).2.1)
  have hVR : ∀ X : B.Mat k r, ContDiffOn ℝ ∞ (VR κ Φ X) O := fun X =>
    hDΦκ.clm_apply ((mulRightRealCLM X).contDiff.comp_contDiffOn hκ)
  have hVL : ∀ X : B.Mat k r, ContDiffOn ℝ ∞ (VL κ Φ X) O := fun X =>
    hDΦκ.clm_apply ((mulLC X).contDiff.comp_contDiffOn hκ)
  refine ⟨h1 _ le_rfl, fun X => ⟨hVR X, hVL X⟩, ?_⟩

  have hdiff : ∀ (Vs : List ((Fin d → ℝ) → (Fin d → ℝ))), (∀ V ∈ Vs, ContDiffOn ℝ ∞ V O) →
      Vs.length + 1 ≤ 2 * r + k + 1 → ∀ x ∈ O, DifferentiableAt ℝ (vfW Vs fun y => u (κ y)) x := by
    intro Vs hVs hl x hx
    have hc := vfW_contDiffOn hO Vs (2 * r + k + 1) _ (h1 _ le_rfl) hVs (by omega)
    have hle : (1 : WithTop ℕ∞) ≤ ((2 * r + k + 1 - Vs.length : ℕ) : WithTop ℕ∞) := by
      exact_mod_cast (by omega : 1 ≤ 2 * r + k + 1 - Vs.length)
    exact ((hc.differentiableOn (by
      exact ne_of_gt (lt_of_lt_of_le (by norm_num) hle))).differentiableAt (hO.mem_nhds hx))
  intro Xs hXs hl
  induction Xs with
  | nil => intro x _; exact ⟨rfl, rfl⟩
  | cons X Xs ih =>
    have hX : B.inLie k r X := hXs X (List.mem_cons_self ..)
    have ih' := ih (fun Y hY => hXs Y (List.mem_cons_of_mem _ hY))
      (by simp only [List.length_cons] at hl; omega)
    simp only [List.length_cons] at hl
    intro x hx
    have hxG : κ x ∈ B.GV k r := (hκO x hx).1
    constructor
    · show RdV X (B.Rw Xs u) (κ x) = vfD (VR κ Φ X) (vfW (Xs.map (VR κ Φ)) fun y => u (κ y)) x
      unfold RdV vfD VR
      exact step hC' (B.Rw Xs u) _ (fun y hy => (ih' y hy).1) hx
        (hdiff _ (by simpa using fun Y _ => hVR Y) (by simpa using hl) x hx)
        (fun t : ℝ => κ x * NormedSpace.exp ((t : ℂ) • X)) (κ x * X) (rcurve_hasDerivAt X (κ x))
        (by simp [NormedSpace.exp_zero]) (fun t => P.B5.curve_mem hxG hX t)
    · show Q.LdV X (Xs.foldr Q.LdV u) (κ x) =
        vfD (VL κ Φ X) (vfW (Xs.map (VL κ Φ)) fun y => u (κ y)) x
      unfold Q.LdV vfD VL
      exact step hC' (Xs.foldr Q.LdV u) _ (fun y hy => (ih' y hy).2) hx
        (hdiff _ (by simpa using fun Y _ => hVL Y) (by simpa using hl) x hx)
        (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) * κ x) (X * κ x) (lcurve_hasDerivAt X (κ x))
        (by simp [NormedSpace.exp_zero]) (fun t => Formalism.FourierDecayAlt.P.TwoByOneBlock.UH_mul (P.B5.exp_mem hX t) hxG)

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightChartHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightGeneratorWordEvaluation =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RightGeneratorWordEvaluation", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.CartanInvolutionConjTransposeMul\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Matrix Filter Topology
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace FExpR

variable {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

def Rep (m : ℕ∞) (O : Set (B.Mat k r)) (φ : B.Mat k r → E) : Prop :=
  ∃ F : B.Mat k r → E, ContDiffOn ℝ (m : WithTop ℕ∞) F O ∧ ∀ x ∈ O, x ∈ B.GV k r → φ x = F x

theorem rep_mono {m m' : ℕ∞} (hmm : m ≤ m') {O : Set (B.Mat k r)} {φ : B.Mat k r → E} (h : Rep m' O φ) :
    Rep m O φ := by
  obtain ⟨F, hF, he⟩ := h
  exact ⟨F, hF.of_le (by exact_mod_cast hmm), he⟩

theorem rep_RdV {m : ℕ∞} {O : Set (B.Mat k r)} (hO : IsOpen O) {φ : B.Mat k r → E} {X : B.Mat k r}
    (hX : B.inLie k r X) (h : Rep (m + 1) O φ) : Rep m O (RdV X φ) := by
  obtain ⟨F, hF, he⟩ := h
  refine ⟨fun x => fderiv ℝ F x (x * X), ?_, ?_⟩
  · have h1 := hF.fderiv_of_isOpen (m := (m : WithTop ℕ∞)) hO (by push_cast; exact le_rfl)
    exact h1.clm_apply (mulRightRealCLM X).contDiff.contDiffOn
  · intro x hx hxG
    have hd : DifferentiableAt ℝ F x :=
      (hF.differentiableOn (by simp)).differentiableAt (hO.mem_nhds hx)
    exact (Formalism.FourierDecayAlt.P.B5.hasDerivAt_of_ext hO hx hxG hX hd he).deriv

theorem rep_Rw {O : Set (B.Mat k r)} (hO : IsOpen O) {f : B.Mat k r → E} {N : ℕ} (h : Rep (N : ℕ∞) O f)
    (w : List (B.Mat k r)) (hw : ∀ X ∈ w, B.inLie k r X) (m : ℕ) (hle : m + w.length ≤ N) :
    Rep (m : ℕ∞) O (B.Rw w f) := by
  induction w generalizing m with
  | nil => exact rep_mono (by exact_mod_cast (by simpa using hle)) h
  | cons X w ih =>
    have e : B.Rw (X :: w) f = RdV X (B.Rw w f) := rfl
    rw [e]
    apply rep_RdV hO (hw X (by simp))
    have := ih (fun Y hY => hw Y (by simp [hY])) (m + 1) (by simp at hle; omega)
    exact_mod_cast this

theorem rep_hasDerivAt {O : Set (B.Mat k r)} (hO : IsOpen O) {φ : B.Mat k r → E} {x X : B.Mat k r}
    (hx : x ∈ O) (hxG : x ∈ B.GV k r) (hX : B.inLie k r X) (h : Rep ((1 : ℕ) : ℕ∞) O φ) :
    HasDerivAt (fun t : ℝ => φ (x * NormedSpace.exp ((t : ℂ) • X))) (RdV X φ x) 0 := by
  obtain ⟨F, hF, he⟩ := h
  have hd : DifferentiableAt ℝ F x := (hF.differentiableOn (by simp)).differentiableAt (hO.mem_nhds hx)
  exact (Formalism.FourierDecayAlt.P.B5.hasDerivAt_of_ext hO hx hxG hX hd he).differentiableAt.hasDerivAt

theorem rdV_congr {O : Set (B.Mat k r)} (hO : IsOpen O) {φ ψ : B.Mat k r → E}
    (he : ∀ y ∈ O, y ∈ B.GV k r → φ y = ψ y) {x X : B.Mat k r} (hx : x ∈ O) (hxG : x ∈ B.GV k r)
    (hX : B.inLie k r X) : RdV X φ x = RdV X ψ x := by
  show deriv (fun t : ℝ => φ (x * NormedSpace.exp ((t : ℂ) • X))) 0 =
    deriv (fun t : ℝ => ψ (x * NormedSpace.exp ((t : ℂ) • X))) 0
  apply Filter.EventuallyEq.deriv_eq
  have hγ := hasDerivAt_mul_exp_smul_zero x X
  have hγ0 := Formalism.FourierDecayAlt.P.B5.curve_zero x X
  have hmem : ∀ᶠ t : ℝ in 𝓝 0, x * NormedSpace.exp ((t : ℂ) • X) ∈ O :=
    hγ.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact hO.mem_nhds hx)
  filter_upwards [hmem] with t ht
  exact he _ ht (Formalism.FourierDecayAlt.P.B5.curve_mem hxG hX t)

theorem wsEvalR_append (a b : List (Polynomial ℂ × List (B.Mat k r))) (u : ℂ) (f : B.Mat k r → E)
    (x : B.Mat k r) : wsEvalR (a ++ b) u f x = wsEvalR a u f x + wsEvalR b u f x := by
  simp [wsEvalR, List.map_append, List.sum_append]

theorem wsEvalR_flatMap {α : Type} (F : α → List (Polynomial ℂ × List (B.Mat k r))) (u : ℂ)
    (f : B.Mat k r → E) (x : B.Mat k r) :
    ∀ L : List α, wsEvalR (L.flatMap F) u f x = (L.map fun a => wsEvalR (F a) u f x).sum
  | [] => by simp [wsEvalR]
  | a :: L => by
    rw [List.flatMap_cons, wsEvalR_append, wsEvalR_flatMap F u f x L, List.map_cons, List.sum_cons]

theorem wsEvalR_map_mul (p : Polynomial ℂ) (φ : List (B.Mat k r) → List (B.Mat k r)) (u : ℂ)
    (f : B.Mat k r → E) (x : B.Mat k r) :
    ∀ ws : List (Polynomial ℂ × List (B.Mat k r)),
      wsEvalR (ws.map fun t => (p * t.1, φ t.2)) u f x = p.eval u • wsEvalR (ws.map fun t => (t.1, φ t.2)) u f x
  | [] => by simp [wsEvalR]
  | t :: ws => by
    have ih := wsEvalR_map_mul p φ u f x ws
    simp only [wsEvalR, List.map_cons, List.sum_cons] at ih ⊢
    rw [ih, smul_add, Polynomial.eval_mul, mul_smul]

theorem fexp_words : ∀ (gens : List (GenW k r)), (∀ gn ∈ gens, ∀ dX ∈ gn.2, B.inLie k r dX.2) →
    ∀ t ∈ fexp gens, t.2.length ≤ gens.length ∧ ∀ X ∈ t.2, B.inLie k r X
  | [], _, t, ht => by
    simp only [fexp, List.mem_singleton] at ht
    subst ht
    simp
  | gn :: gs, hL, t, ht => by
    have hL' : ∀ g ∈ gs, ∀ dX ∈ g.2, B.inLie k r dX.2 := fun g hg => hL g (List.mem_cons_of_mem _ hg)
    have ih := fexp_words gs hL'
    simp only [fexp, List.mem_append, List.mem_map, List.mem_flatMap] at ht
    rcases ht with ⟨s, hs, rfl⟩ | ⟨dX, hdX, s, hs, rfl⟩
    · have := (ih s hs).1
      refine ⟨?_, (ih s hs).2⟩
      show s.2.length ≤ (gn :: gs).length
      simp only [List.length_cons]; omega
    · have := (ih s hs).1
      refine ⟨?_, ?_⟩
      · show (dX.2 :: s.2).length ≤ (gn :: gs).length
        simp only [List.length_cons]; omega
      · intro X hX
        rcases List.mem_cons.1 hX with rfl | hX
        · exact hL gn (by simp) dX hdX
        · exact (ih s hs).2 X hX

theorem ws_hasDerivAt {O : Set (B.Mat k r)} (hO : IsOpen O) {x X : B.Mat k r} (hx : x ∈ O)
    (hxG : x ∈ B.GV k r) (hX : B.inLie k r X) (u : ℂ) (f : B.Mat k r → E) :
    ∀ ws : List (Polynomial ℂ × List (B.Mat k r)), (∀ t ∈ ws, Rep ((1 : ℕ) : ℕ∞) O (B.Rw t.2 f)) →
      HasDerivAt (fun s : ℝ => wsEvalR ws u f (x * NormedSpace.exp ((s : ℂ) • X)))
        (wsEvalR (ws.map fun t => (t.1, X :: t.2)) u f x) 0
  | [], _ => by
    have e : ∀ y, wsEvalR ([] : List (Polynomial ℂ × List (B.Mat k r))) u f y = (0 : E) := fun y => by
      simp [wsEvalR]
    simp only [List.map_nil, e]
    exact hasDerivAt_const _ _
  | t :: ws, h => by
    have h1 := (rep_hasDerivAt hO hx hxG hX (h t (by simp))).const_smul (t.1.eval u)
    have h2 := ws_hasDerivAt hO hx hxG hX u f ws (fun s hs => h s (List.mem_cons_of_mem _ hs))
    have e1 : (fun s : ℝ => wsEvalR (t :: ws) u f (x * NormedSpace.exp ((s : ℂ) • X))) =
        fun s : ℝ => t.1.eval u • B.Rw t.2 f (x * NormedSpace.exp ((s : ℂ) • X)) +
          wsEvalR ws u f (x * NormedSpace.exp ((s : ℂ) • X)) := by
      funext s; simp only [wsEvalR, List.map_cons, List.sum_cons]
    have e2 : wsEvalR ((t :: ws).map fun t => (t.1, X :: t.2)) u f x =
        t.1.eval u • RdV X (B.Rw t.2 f) x + wsEvalR (ws.map fun t => (t.1, X :: t.2)) u f x := by
      simp only [wsEvalR, List.map_cons, List.sum_cons] <;> rfl
    rw [e1, e2]
    exact h1.add h2

theorem right_generator_word_evaluation (u : ℂ) : ∀ (gens : List (GenW k r)) (O : Set (B.Mat k r)) (f : B.Mat k r → E), IsOpen O →
    (∀ gn ∈ gens, ∀ dX ∈ gn.2, B.inLie k r dX.2) → Rep (gens.length : ℕ∞) O f → ∀ x ∈ O, x ∈ B.GV k r →
      (gens.map (fun gn => genOpR gn u)).foldr (fun T h => T h) f x = wsEvalR (fexp gens) u f x
  | [], O, f, _, _, _, x, _, _ => by simp [fexp, wsEvalR, B.Rw]
  | gn :: gs, O, f, hO, hL, hf, x, hx, hxG => by
    have hL' : ∀ g ∈ gs, ∀ dX ∈ g.2, B.inLie k r dX.2 := fun g hg => hL g (List.mem_cons_of_mem _ hg)
    have hf' : Rep (gs.length : ℕ∞) O f := rep_mono (by exact_mod_cast (by simp : gs.length ≤ (gn :: gs).length)) hf
    have IH := right_generator_word_evaluation u gs O f hO hL' hf'
    have hW := fexp_words gs hL'
    have hrep : ∀ t ∈ fexp gs, Rep ((1 : ℕ) : ℕ∞) O (B.Rw t.2 f) := fun t ht =>
      rep_Rw hO hf t.2 (hW t ht).2 1 (by have := (hW t ht).1; simp only [List.length_cons]; omega)
    have hD : ∀ X, B.inLie k r X → RdV X (wsEvalR (fexp gs) u f) x =
        wsEvalR ((fexp gs).map fun t => (t.1, X :: t.2)) u f x := fun X hX =>
      (ws_hasDerivAt hO hx hxG hX u f (fexp gs) hrep).deriv
    have hR : wsEvalR (fexp (gn :: gs)) u f x = gn.1.eval u • wsEvalR (fexp gs) u f x +
        (gn.2.map fun dX => dX.1 • wsEvalR ((fexp gs).map fun t => (t.1, dX.2 :: t.2)) u f x).sum := by
      simp only [fexp]
      rw [wsEvalR_append, wsEvalR_flatMap]
      congr 1
      · have := wsEvalR_map_mul gn.1 id u f x (fexp gs)
        simpa using this
      · congr 1
        apply List.map_congr_left
        intro dX _
        have := wsEvalR_map_mul (Polynomial.C dX.1) (fun w => dX.2 :: w) u f x (fexp gs)
        simpa using this
    set Φ := (gs.map fun gn => genOpR gn u).foldr (fun T h => T h) f with hΦdef
    have hΦ : ∀ X, B.inLie k r X → RdV X Φ x = RdV X (wsEvalR (fexp gs) u f) x := fun X hX =>
      rdV_congr hO (fun y hy hyG => IH y hy hyG) hx hxG hX
    rw [hR]
    change gn.1.eval u • Φ x + (gn.2.map fun dX => dX.1 • RdV dX.2 Φ x).sum = _
    rw [IH x hx hxG]
    congr 2
    apply List.map_congr_left
    intro dX hdX
    have hX := hL gn (by simp) dX hdX
    rw [hΦ dX.2 hX, hD dX.2 hX]

end FExpR

theorem right_exponential_evaluation : FExpEvalR := by
  intro k r E _ _ gens u UU f hL hf g hg hgG
  obtain ⟨U, f', hU, hgU, hf', he⟩ := hf g hg
  exact FExpR.right_generator_word_evaluation u gens U f hU hL ⟨f', hf', he⟩ g hgU hgG

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightGeneratorWordEvaluation =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorFieldHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorFieldHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace SymbolOperatorExtension

variable {d : ℕ}

def ext (S : SOp d) (n : ℕ) (w : Fin n → Fin d) : (Fin d → ℝ) → ℂ :=
  if h : n < S.ord + 1 then S.a ⟨n, h⟩ w else fun _ => 0

theorem ext_fin (S : SOp d) (k : Fin (S.ord + 1)) (w : Fin k → Fin d) : ext S k w = S.a k w := by
  unfold ext
  rw [dite_eq_left k.isLt]

theorem ext_last (S : SOp d) (w : Fin S.ord → Fin d) : ext S S.ord w = S.a (Fin.last S.ord) w := by
  unfold ext
  rw [dite_eq_left (Nat.lt_succ_self _)]
  rfl

theorem ext_top (S : SOp d) (w : Fin (S.ord + 1) → Fin d) : ext S (S.ord + 1) w = fun _ => 0 := by
  unfold ext
  rw [dite_eq_right (lt_irrefl _)]

theorem ext_contDiffOn (S : SOp d) {O : Set (Fin d → ℝ)} (hS : ∀ i w, ContDiffOn ℝ ∞ (S.a i w) O) (n : ℕ)
    (w : Fin n → Fin d) : ContDiffOn ℝ ∞ (ext S n w) O := by
  unfold ext
  split_ifs with h
  · exact hS _ _
  · exact contDiffOn_const

theorem app_eq (S : SOp d) (u : (Fin d → ℝ) → ℂ) (x : Fin d → ℝ) :
    S.app u x = ∑ n ∈ Finset.range (S.ord + 1), ∑ w : Fin n → Fin d, ext S n w x * pdc (List.ofFn w) u x := by
  rw [← Fin.sum_univ_eq_sum_range (fun n => ∑ w : Fin n → Fin d, ext S n w x * pdc (List.ofFn w) u x)]
  unfold SOp.app
  refine Finset.sum_congr rfl fun k _ => ?_
  simp only [ext_fin]

theorem pdc_contDiffOn {O : Set (Fin d → ℝ)} (hO : IsOpen O) {u : (Fin d → ℝ) → ℂ} {m : ℕ}
    (hu : ContDiffOn ℝ (m : WithTop ℕ∞) u O) :
    ∀ (l : List (Fin d)) (k : ℕ), l.length + k ≤ m → ContDiffOn ℝ (k : WithTop ℕ∞) (pdc l u) O
  | [], k, h => hu.of_le (by exact_mod_cast (show k ≤ m by simpa using h))
  | i :: l, k, h => by
    have ih := pdc_contDiffOn hO hu l (k + 1) (by simp at h; omega)
    have h1 : ContDiffOn ℝ (k : WithTop ℕ∞) (fderiv ℝ (pdc l u)) O :=
      ih.fderiv_of_isOpen hO (by push_cast; exact le_rfl)
    show ContDiffOn ℝ (k : WithTop ℕ∞) (fun x => fderiv ℝ (pdc l u) x (Pi.single i 1)) O
    exact h1.clm_apply contDiffOn_const

theorem pdc_diffAt {O : Set (Fin d → ℝ)} (hO : IsOpen O) {u : (Fin d → ℝ) → ℂ} {m : ℕ}
    (hu : ContDiffOn ℝ (m : WithTop ℕ∞) u O) (l : List (Fin d)) (hl : l.length + 1 ≤ m) {x : Fin d → ℝ}
    (hx : x ∈ O) : DifferentiableAt ℝ (pdc l u) x :=
  ((pdc_contDiffOn hO hu l 1 hl).differentiableOn (by norm_num)).differentiableAt (hO.mem_nhds hx)

theorem fderiv_apply_sum (f : (Fin d → ℝ) → ℂ) (x v : Fin d → ℝ) :
    fderiv ℝ f x v = ∑ i, (v i : ℂ) * fderiv ℝ f x (Pi.single i 1) := by
  conv_lhs => rw [← Finset.univ_sum_single v]

  rw [map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have : (Pi.single i (v i) : Fin d → ℝ) = v i • (Pi.single i 1 : Fin d → ℝ) := by
    ext j
    by_cases h : j = i
    · subst h; simp
    · simp [h]
  rw [this, map_smul, Complex.real_smul]

theorem sum_fin_succ_fun {n : ℕ} (g : (Fin (n + 1) → Fin d) → ℂ) :
    ∑ w, g w = ∑ i : Fin d, ∑ w : Fin n → Fin d, g (Fin.cons i w) := by
  rw [← (Fin.consEquiv (fun _ : Fin (n + 1) => Fin d)).sum_comp g, Fintype.sum_prod_type]
  rfl

def cD (S : SOp d) (V : (Fin d → ℝ) → (Fin d → ℝ)) (n : ℕ) (w : Fin n → Fin d) (x : Fin d → ℝ) : ℂ :=
  fderiv ℝ (ext S n w) x (V x)

def cE (S : SOp d) (V : (Fin d → ℝ) → (Fin d → ℝ)) : (n : ℕ) → (Fin n → Fin d) → (Fin d → ℝ) → ℂ
  | 0, _, _ => 0
  | n + 1, w, x => ext S n (Fin.tail w) x * ((V x (w 0) : ℝ) : ℂ)

def fieldOp (S : SOp d) (V : (Fin d → ℝ) → (Fin d → ℝ)) : SOp d :=
  ⟨S.ord + 1, fun k w x => cD S V k w x + cE S V k w x⟩

theorem cD_top (S : SOp d) (V : (Fin d → ℝ) → (Fin d → ℝ)) (w : Fin (S.ord + 1) → Fin d) (x : Fin d → ℝ) :
    cD S V (S.ord + 1) w x = 0 := by
  simp [cD, ext_top]

theorem fieldOp_app (S : SOp d) (V : (Fin d → ℝ) → (Fin d → ℝ)) (u : (Fin d → ℝ) → ℂ) (x : Fin d → ℝ) :
    (fieldOp S V).app u x = ∑ n ∈ Finset.range (S.ord + 1 + 1),
      ∑ w : Fin n → Fin d, (cD S V n w x + cE S V n w x) * pdc (List.ofFn w) u x := by
  unfold SOp.app fieldOp
  exact Fin.sum_univ_eq_sum_range
    (fun n => ∑ w : Fin n → Fin d, (cD S V n w x + cE S V n w x) * pdc (List.ofFn w) u x) (S.ord + 1 + 1)

end SymbolOperatorExtension

open SymbolOperatorExtension in
theorem symbol_operator_field_holds : SOpField := by
  intro d S V O hO hS hV
  refine ⟨fieldOp S V, rfl, ?_, ?_, ?_⟩
  · intro k w
    show ContDiffOn ℝ ∞ (fun x => cD S V k w x + cE S V k w x) O
    refine ContDiffOn.add ?_ ?_
    · exact ((ext_contDiffOn S hS k w).fderiv_of_isOpen hO (by simp)).clm_apply hV
    · rcases k with ⟨_ | n, hk⟩
      · exact contDiffOn_const
      · have hv : ContDiffOn ℝ ∞ (fun x => ((V x (w 0) : ℝ) : ℂ)) O := by
          have := Complex.ofRealCLM.contDiff.comp_contDiffOn (contDiffOn_pi.mp hV (w 0))
          simpa [Function.comp_def] using this
        exact (ext_contDiffOn S hS n _).mul hv
  · intro u hu x hx
    have hdiff : ∀ n ∈ Finset.range (S.ord + 1), ∀ w : Fin n → Fin d,
        DifferentiableAt ℝ (ext S n w) x ∧ DifferentiableAt ℝ (pdc (List.ofFn w) u) x := by
      intro n hn w
      refine ⟨((ext_contDiffOn S hS n w).differentiableOn (by simp)).differentiableAt (hO.mem_nhds hx),
        pdc_diffAt hO hu _ ?_ hx⟩
      have := Finset.mem_range.mp hn
      simp only [List.length_ofFn]
      omega
    have key : ∀ n ∈ Finset.range (S.ord + 1),
        fderiv ℝ (fun y => ∑ w : Fin n → Fin d, ext S n w y * pdc (List.ofFn w) u y) x (V x) =
          ∑ w : Fin n → Fin d, (cD S V n w x * pdc (List.ofFn w) u x +
            ∑ i, ext S n w x * ((V x i : ℝ) : ℂ) * pdc (i :: List.ofFn w) u x) := by
      intro n hn
      rw [fderiv_fun_sum (A := fun w y => ext S n w y * pdc (List.ofFn w) u y)
        (fun w _ => (hdiff n hn w).1.mul (hdiff n hn w).2), ContinuousLinearMap.sum_apply]
      refine Finset.sum_congr rfl fun w _ => ?_
      rw [fderiv_fun_mul (hdiff n hn w).1 (hdiff n hn w).2, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, smul_eq_mul,
        fderiv_apply_sum (pdc (List.ofFn w) u), Finset.mul_sum, add_comm]
      congr 1
      · simp only [cD]; ring
      · refine Finset.sum_congr rfl fun i _ => ?_
        rw [mul_assoc]
        rfl
    have hR : fderiv ℝ (S.app u) x (V x) = ∑ n ∈ Finset.range (S.ord + 1), ∑ w : Fin n → Fin d,
        (cD S V n w x * pdc (List.ofFn w) u x +
          ∑ i, ext S n w x * ((V x i : ℝ) : ℂ) * pdc (i :: List.ofFn w) u x) := by
      have hSu : S.app u = fun y => ∑ n ∈ Finset.range (S.ord + 1),
          ∑ w : Fin n → Fin d, ext S n w y * pdc (List.ofFn w) u y := funext (app_eq S u)
      rw [hSu, fderiv_fun_sum (A := fun n y => ∑ w : Fin n → Fin d, ext S n w y * pdc (List.ofFn w) u y)
        (fun n hn => DifferentiableAt.fun_sum (A := fun w y => ext S n w y * pdc (List.ofFn w) u y) fun w _ =>
        (hdiff n hn w).1.mul (hdiff n hn w).2), ContinuousLinearMap.sum_apply]
      exact Finset.sum_congr rfl key
    have hsplit : ∀ n, ∑ w : Fin n → Fin d, (cD S V n w x + cE S V n w x) * pdc (List.ofFn w) u x =
        ∑ w : Fin n → Fin d, cD S V n w x * pdc (List.ofFn w) u x +
          ∑ w : Fin n → Fin d, cE S V n w x * pdc (List.ofFn w) u x := by
      intro n
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun w _ => add_mul _ _ _
    have hD : ∑ n ∈ Finset.range (S.ord + 1 + 1), ∑ w : Fin n → Fin d, cD S V n w x * pdc (List.ofFn w) u x =
        ∑ n ∈ Finset.range (S.ord + 1), ∑ w : Fin n → Fin d, cD S V n w x * pdc (List.ofFn w) u x := by
      rw [Finset.sum_range_succ]
      simp [cD_top]
    have hE : ∑ n ∈ Finset.range (S.ord + 1 + 1), ∑ w : Fin n → Fin d, cE S V n w x * pdc (List.ofFn w) u x =
        ∑ n ∈ Finset.range (S.ord + 1), ∑ w : Fin n → Fin d,
          ∑ i, ext S n w x * ((V x i : ℝ) : ℂ) * pdc (i :: List.ofFn w) u x := by
      rw [Finset.sum_range_succ']
      simp only [cE, zero_mul, Finset.sum_const_zero, add_zero]
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [sum_fin_succ_fun, Finset.sum_comm]
      refine Finset.sum_congr rfl fun w _ => Finset.sum_congr rfl fun i _ => ?_
      simp only [Fin.cons_zero, Fin.tail_cons, List.ofFn_succ, Fin.cons_succ]
    rw [fieldOp_app]
    simp only [hsplit]
    rw [Finset.sum_add_distrib, hD, hE, ← Finset.sum_add_distrib]
    show _ = fderiv ℝ (S.app u) x (V x)
    rw [hR]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [Finset.sum_add_distrib]
  · intro x _ ξ
    show ∑ w : Fin (S.ord + 1) → Fin d, (∏ i, (ξ (w i) : ℂ)) * (cD S V (S.ord + 1) w x + cE S V (S.ord + 1) w x) = _
    simp only [cD_top, zero_add, cE]
    rw [sum_fin_succ_fun]
    simp only [Fin.prod_univ_succ, Fin.cons_zero, Fin.tail_cons, Fin.cons_succ]
    unfold SOp.symb
    simp only [dotProduct]
    push_cast
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun w _ => ?_
    rw [ext_last]
    ring

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorFieldHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLiftHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLiftHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def liftA {d o : ℕ} (a : (k : Fin (o + 1)) → (Fin k → Fin d) → (Fin d → ℝ) → ℂ) (m' : ℕ) :
    (k : Fin (m' + 1)) → (Fin k → Fin d) → (Fin d → ℝ) → ℂ :=
  fun k w x => if h : (k : ℕ) ≤ o then a ⟨k, by omega⟩ w x else 0

theorem symbol_operator_lift_holds : SOpLift := by
  intro d S m' O hle hS
  obtain ⟨o, a⟩ := S
  simp only at hle
  refine ⟨⟨m', liftA a m'⟩, rfl, ?_, ?_, ?_⟩
  · intro i w
    change ContDiffOn ℝ ∞ (liftA a m' i w) O
    by_cases h : (i : ℕ) ≤ o
    · have e : liftA a m' i w = a ⟨i, by omega⟩ w := funext fun x => dif_pos h
      rw [e]
      exact hS (⟨i, Nat.lt_succ_of_le h⟩ : Fin (o + 1)) w
    · have e : liftA a m' i w = fun _ => 0 := funext fun x => dif_neg h
      rw [e]
      exact contDiffOn_const
  · intro u x
    simp only [SOp.app]
    let F : ℕ → ℂ := fun n =>
      if h : n ≤ o then ∑ w : Fin n → Fin d, a ⟨n, by omega⟩ w x * pdc (List.ofFn w) u x else 0
    have h1 : ∑ k : Fin (m' + 1), ∑ w : Fin k → Fin d, liftA a m' k w x * pdc (List.ofFn w) u x =
        ∑ k : Fin (m' + 1), F k := by
      refine Finset.sum_congr rfl fun k _ => ?_
      simp only [F, liftA]
      split_ifs with h
      · rfl
      · simp
    have h2 : ∑ k : Fin (o + 1), ∑ w : Fin k → Fin d, a k w x * pdc (List.ofFn w) u x =
        ∑ k : Fin (o + 1), F k := by
      refine Finset.sum_congr rfl fun k _ => ?_
      simp only [F]
      rw [dif_pos (by omega)]
    rw [h1, h2, Fin.sum_univ_eq_sum_range F, Fin.sum_univ_eq_sum_range F]
    symm
    apply Finset.sum_subset
    · intro n hn
      simp only [Finset.mem_range] at hn ⊢
      omega
    · intro n hn hn'
      simp only [Finset.mem_range] at hn hn'
      simp only [F]
      rw [dif_neg (by omega)]
  · intro x ξ
    simp only [SOp.symb]
    by_cases h : o = m'
    · subst h
      rw [if_pos rfl]
      refine Finset.sum_congr rfl fun w _ => ?_
      simp only [liftA]
      rw [dif_pos (by simp)]
    · rw [if_neg h]
      refine Finset.sum_eq_zero fun w _ => ?_
      simp only [liftA]
      rw [dif_neg (by simp; omega)]
      simp

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLiftHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLinearHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLinearHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem symbol_operator_linear_holds : SOpLin := by
  intro d S T c O hST hS hT
  obtain ⟨o, a⟩ := S
  obtain ⟨o', b⟩ := T
  simp only at hST
  subst hST
  refine ⟨⟨o, fun k w x => c * a k w x + b k w x⟩, rfl, ?_, ?_, ?_⟩
  · intro i w
    exact (contDiffOn_const.mul (hS i w)).add (hT i w)
  · intro u x
    simp only [SOp.app, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun w _ => ?_
    ring
  · intro x ξ
    simp only [SOp.symb, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun w _ => ?_
    ring

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLinearHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorToSymbolOperator =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorToSymbolOperator", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartEqsOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace IdentityZeroOperators

variable {d : ℕ}

def idOp (d : ℕ) : SOp d := ⟨0, fun _ _ _ => 1⟩

def zeroOp (d m : ℕ) : SOp d := ⟨m, fun _ _ _ => 0⟩

lemma idOp_app (u : (Fin d → ℝ) → ℂ) (x : Fin d → ℝ) : (idOp d).app u x = u x := by
  change ∑ k : Fin 1, ∑ w : Fin k → Fin d, (1 : ℂ) * pdc (List.ofFn w) u x = u x
  rw [Fin.sum_univ_one]
  change ∑ w : Fin 0 → Fin d, (1 : ℂ) * pdc (List.ofFn w) u x = u x
  simp [pdc]

lemma idOp_symb (x ξ : Fin d → ℝ) : (idOp d).symb x ξ = 1 := by
  change ∑ w : Fin 0 → Fin d, (∏ i : Fin 0, (ξ (w i) : ℂ)) * (1 : ℂ) = 1
  simp

lemma zeroOp_app (m : ℕ) (u : (Fin d → ℝ) → ℂ) (x : Fin d → ℝ) : (zeroOp d m).app u x = 0 := by
  simp [SOp.app, zeroOp]

lemma zeroOp_symb (m : ℕ) (x ξ : Fin d → ℝ) : (zeroOp d m).symb x ξ = 0 := by
  simp [SOp.symb, zeroOp]

lemma word (hF : SOpField) (O : Set (Fin d → ℝ)) (hO : IsOpen O) :
    ∀ Vs : List ((Fin d → ℝ) → (Fin d → ℝ)), (∀ V ∈ Vs, ContDiffOn ℝ ∞ V O) →
    ∃ S : SOp d, S.ord = Vs.length ∧ (∀ i w, ContDiffOn ℝ ∞ (S.a i w) O) ∧
      (∀ u : (Fin d → ℝ) → ℂ, ContDiffOn ℝ (Vs.length : WithTop ℕ∞) u O → ∀ x ∈ O,
        S.app u x = vfW Vs u x) ∧
      ∀ x ∈ O, ∀ ξ : Fin d → ℝ, S.symb x ξ = (Vs.map fun V => ((ξ ⬝ᵥ V x : ℝ) : ℂ)).prod := by
  intro Vs
  induction Vs with
  | nil =>
    intro _
    exact ⟨idOp d, rfl, fun _ _ => contDiffOn_const, fun u _ x _ => by simp [idOp_app, vfW],
      fun x _ ξ => by simp [idOp_symb]⟩
  | cons V Vs ih =>
    intro hV
    obtain ⟨S, hSo, hSc, hSa, hSs⟩ := ih (fun W hW => hV W (List.mem_cons_of_mem _ hW))
    obtain ⟨S', hS'o, hS'c, hS'a, hS's⟩ := hF d S V O hO hSc (hV V List.mem_cons_self)
    refine ⟨S', by rw [hS'o, hSo]; rfl, hS'c, ?_, ?_⟩
    · intro u hu x hx
      have hl : (V :: Vs).length = S.ord + 1 := by rw [hSo]; rfl
      rw [hl] at hu
      have hu0 : ContDiffOn ℝ (Vs.length : WithTop ℕ∞) u O :=
        hu.of_le (by rw [hSo]; exact_mod_cast Nat.le_succ _)
      rw [hS'a u hu x hx]
      have he : S.app u =ᶠ[nhds x] vfW Vs u := by
        filter_upwards [hO.mem_nhds hx] with y hy
        exact hSa u hu0 y hy
      simp only [vfW, vfD]
      rw [he.fderiv_eq]
    · intro x hx ξ
      rw [hS's x hx ξ, hSs x hx ξ]
      simp

end IdentityZeroOperators

open IdentityZeroOperators in
theorem vector_to_symbol_operator : VOpToSOpOfSteps := by
  intro hF hL hLin d m P O hO hP
  induction P with
  | nil =>
    exact ⟨zeroOp d m, rfl, fun _ _ => contDiffOn_const, fun u _ x _ => by simp [zeroOp_app, WOp.app],
      fun x _ ξ => by simp [zeroOp_symb, WOp.symb]⟩
  | cons t P ih =>
    obtain ⟨T, hTo, hTc, hTa, hTs⟩ := ih (fun s hs => hP s (List.mem_cons_of_mem _ hs))
    obtain ⟨hlen, hsm⟩ := hP t List.mem_cons_self
    obtain ⟨S, hSo, hSc, hSa, hSs⟩ := word hF O hO t.2 hsm
    obtain ⟨S', hS'o, hS'c, hS'a, hS's⟩ := hL d S m O (by rw [hSo]; exact hlen) hSc
    obtain ⟨R, hRo, hRc, hRa, hRs⟩ := hLin d S' T t.1 O (hS'o.trans hTo.symm) hS'c hTc
    refine ⟨R, hRo.trans hS'o, hRc, ?_, ?_⟩
    · intro u hu x hx
      rw [hRa, hS'a, hSa u (hu.of_le (by exact_mod_cast hlen)) x hx, hTa u hu x hx]
      simp [WOp.app]
    · intro x hx ξ
      rw [hRs, hS's, hSs x hx ξ, hTs x hx ξ, hSo]
      simp only [WOp.symb, List.map_cons, List.sum_cons]
      split_ifs <;> simp

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorToSymbolOperator =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OpCapLOfOf =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.OpCapLOfOf", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartSysWOfPartsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def wfam {d : ℕ} {α : Type} (L : List (ℂ × List α)) (F : α → (Fin d → ℝ) → (Fin d → ℝ)) (c : ℂ) : WOp d :=
  L.map (fun t => (t.1, t.2.map F)) ++ [(c, [])]

def WFamApp : Prop :=
  ∀ (d : ℕ) (α : Type) (L : List (ℂ × List α)) (F : α → (Fin d → ℝ) → (Fin d → ℝ)) (c : ℂ)
    (v : (Fin d → ℝ) → ℂ) (x : Fin d → ℝ),
    WOp.app (wfam L F c) v x = (L.map fun t => t.1 * vfW (t.2.map F) v x).sum + c * v x

def WFamSymb : Prop :=
  ∀ (d : ℕ) (α : Type) (L : List (ℂ × List α)) (F : α → (Fin d → ℝ) → (Fin d → ℝ)) (c : ℂ) (j : ℕ)
    (x ξ : Fin d → ℝ) (τ : α → ℂ), 1 ≤ j → (∀ t ∈ L, ∀ X ∈ t.2, ((ξ ⬝ᵥ F X x : ℝ) : ℂ) = τ X) →
    WOp.symb (wfam L F c) j x ξ = (L.map fun t => if t.2.length = j then t.1 * (t.2.map τ).prod else 0).sum

def TrRealLie : Prop :=
  ∀ (k r : ℕ) (A X : B.Mat k r), B.inLie k r A → B.inLie k r X →
    (((Matrix.trace (A * X)).re : ℝ) : ℂ) = Matrix.trace (A * X)

def CkLevOn : Prop :=
  ∀ (k r m : ℕ) (Dm : Set (B.Mat k r)) (E : Type) [NormedAddCommGroup E] [NormedSpace ℂ E] (f : B.Mat k r → E),
    Q.CkLev k r 0 m Dm f → B.CkOn (m : ℕ∞) (B.GV k r ∩ Dm) f

theorem wfam_ok {d : ℕ} {α : Type} {O : Set (Fin d → ℝ)} (L : List (ℂ × List α))
    (F : α → (Fin d → ℝ) → (Fin d → ℝ)) (c : ℂ) (j : ℕ) (hL : ∀ t ∈ L, t.2.length ≤ j)
    (hF : ∀ X, ContDiffOn ℝ ∞ (F X) O) : FamOK O (wfam L F c) j := by
  intro t ht
  rw [wfam, List.mem_append] at ht
  rcases ht with ht | ht
  · obtain ⟨t0, ht0, rfl⟩ := List.mem_map.1 ht
    refine ⟨by simpa using hL t0 ht0, ?_⟩
    intro V hV
    obtain ⟨X, -, rfl⟩ := List.mem_map.1 hV
    exact hF X
  · simp only [List.mem_singleton] at ht
    subst ht
    exact ⟨by simp, by simp⟩

theorem opCVOf_of (hA : WFamApp) (hS : WFamSymb) (hT : TrRealLie) (hK : CkLevOn) : OpCVOf := by
  intro hRw hCW k r z z' d O U κ Φ u hC hOm hCk hev j hj1 hjn
  obtain ⟨_, hfld, hw⟩ := hRw k r z z' d O U κ Φ u hC hOm hCk
  obtain ⟨Ys, lam, L, cj, hcj, hL, hid, hsym⟩ := hCW k r j hj1 hjn
  choose c hc using hev
  refine ⟨wfam L (VR κ Φ) (-(∑ i, lam i * c (Ys i))), cj, hcj,
    wfam_ok L _ _ j (fun t ht => (hL t ht).1) (fun X => (hfld X).1), ?_, ?_⟩
  · intro x hx
    rw [hA]
    have hgG : κ x ∈ B.GV k r := (hC.2.2.2.2.1 x hx).1
    have hgO : κ x ∈ JF.Om k r z z' := ⟨hgG, hOm x hx⟩
    have e1 := hid ℂ (B.GV k r ∩ Q.OmPlus k r z z') u (hK k r _ _ ℂ u hCk) (κ x) ⟨hgG, hOm x hx⟩ hgG
    have e2 : (L.map fun t => t.1 * vfW (t.2.map (VR κ Φ)) (fun y => u (κ y)) x) =
        (L.map fun t => t.1 • B.Rw t.2 u (κ x)) := by
      refine List.map_congr_left (fun t ht => ?_)
      rw [(hw t.2 (hL t ht).2 ((hL t ht).1.trans hjn) x hx).1, smul_eq_mul]
    rw [e2, ← e1]
    simp only [hc _ _ hgO, smul_eq_mul]
    rw [neg_mul, Finset.sum_mul]
    simp only [mul_assoc, add_neg_cancel]
  · intro x hx ξ Ξ₀ hΞ₀ hcov
    rw [hS d _ L (VR κ Φ) _ j x ξ (fun X => Matrix.trace (Ξ₀ * X)) hj1 (fun t ht X hX => by
      rw [hcov X ((hL t ht).2 X hX), hT k r Ξ₀ X hΞ₀ ((hL t ht).2 X hX)])]
    exact hsym Ξ₀ hΞ₀

theorem opCapROf_of (hA : WFamApp) (hS : WFamSymb) (hT : TrRealLie) (hK : CkLevOn) : OpCapROf := by
  intro hRw hCW k r z z' d O U κ Φ u Bs hC hOm hCk hBs hev j hj1 hjk
  obtain ⟨_, hfld, hw⟩ := hRw k r z z' d O U κ Φ u hC hOm hCk
  obtain ⟨ws, lam, L, cj, hcj, hL, hid, hsym⟩ := hCW k r z' Bs hBs j hj1 hjk
  choose c hc using hev
  have hjn : j ≤ 2 * r + k + 1 := by omega
  refine ⟨wfam L (VR κ Φ) (-(∑ i, lam i * c (ws i))), cj, hcj,
    wfam_ok L _ _ j (fun t ht => (hL t ht).1) (fun X => (hfld X).1), ?_, ?_⟩
  · intro x hx
    rw [hA]
    have hgG : κ x ∈ B.GV k r := (hC.2.2.2.2.1 x hx).1
    have hgO : κ x ∈ JF.Om k r z z' := ⟨hgG, hOm x hx⟩
    have e1 := hid ℂ (B.GV k r ∩ Q.OmPlus k r z z') u (hK k r _ _ ℂ u hCk) (κ x) ⟨hgG, hOm x hx⟩ hgG
    have e2 : (L.map fun t => t.1 * vfW (t.2.map (VR κ Φ)) (fun y => u (κ y)) x) =
        (L.map fun t => t.1 • B.Rw t.2 u (κ x)) := by
      refine List.map_congr_left (fun t ht => ?_)
      rw [(hw t.2 (hL t ht).2 ((hL t ht).1.trans hjn) x hx).1, smul_eq_mul]
    rw [e2, ← e1]
    simp only [hc _ _ hgO, smul_eq_mul]
    rw [neg_mul, Finset.sum_mul]
    simp only [mul_assoc, add_neg_cancel]
  · intro x hx ξ Ξ₀ hΞ₀ hcov
    rw [hS d _ L (VR κ Φ) _ j x ξ (fun X => Matrix.trace (Ξ₀ * X)) hj1 (fun t ht X hX => by
      rw [hcov X ((hL t ht).2 X hX), hT k r Ξ₀ X hΞ₀ ((hL t ht).2 X hX)])]
    exact hsym Ξ₀ hΞ₀

theorem opCapLOf_of (hA : WFamApp) (hS : WFamSymb) (hT : TrRealLie) (hK : CkLevOn) : OpCapLOf := by
  intro hRw hCW k r z z' d O U κ Φ u Bs hC hOm hCk hBs hev j hj1 hjk
  obtain ⟨_, hfld, hw⟩ := hRw k r z z' d O U κ Φ u hC hOm hCk
  obtain ⟨ws, lam, L, cj, hcj, hL, hid, hsym⟩ := hCW k r z Bs hBs j hj1 hjk
  choose c hc using hev
  have hjn : j ≤ 2 * r + k + 1 := by omega
  refine ⟨wfam L (VL κ Φ) (-(∑ i, lam i * c (ws i))), cj, hcj,
    wfam_ok L _ _ j (fun t ht => (hL t ht).1) (fun X => (hfld X).2), ?_, ?_⟩
  · intro x hx
    rw [hA]
    have hgG : κ x ∈ B.GV k r := (hC.2.2.2.2.1 x hx).1
    have hgO : κ x ∈ JF.Om k r z z' := ⟨hgG, hOm x hx⟩
    have e1 := hid ℂ (B.GV k r ∩ Q.OmPlus k r z z') u (hK k r _ _ ℂ u hCk) (κ x) ⟨hgG, hOm x hx⟩ hgG
    have e2 : (L.map fun t => t.1 * vfW (t.2.map (VL κ Φ)) (fun y => u (κ y)) x) =
        (L.map fun t => t.1 • t.2.foldr Q.LdV u (κ x)) := by
      refine List.map_congr_left (fun t ht => ?_)
      rw [(hw t.2 (hL t ht).2 ((hL t ht).1.trans hjn) x hx).2, smul_eq_mul]
    rw [e2, ← e1]
    simp only [hc _ _ hgO, smul_eq_mul]
    rw [neg_mul, Finset.sum_mul]
    simp only [mul_assoc, add_neg_cancel]
  · intro x hx ξ Ξ hΞ hcov
    rw [hS d _ L (VL κ Φ) _ j x ξ (fun X => Matrix.trace (Ξ * X)) hj1 (fun t ht X hX => by
      rw [hcov X ((hL t ht).2 X hX), hT k r Ξ X hΞ ((hL t ht).2 X hX)])]
    exact hsym Ξ hΞ

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OpCapLOfOf =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordFamilySymbolHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WordFamilySymbolHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpCapLOfOf\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField Matrix
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem word_family_apply_holds : WFamApp := by
  intro d α L F c v x
  simp [wfam, WOp.app, List.map_append, List.sum_append, vfW, Function.comp_def]

theorem word_family_symbol_holds : WFamSymb := by
  intro d α L F c j x ξ τ hj hτ
  have h0 : ¬ (0 = j) := by omega
  simp only [wfam, WOp.symb, List.map_append, List.sum_append, List.map_map, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, List.length_nil, h0, if_false, add_zero]
  congr 1
  refine List.map_congr_left (fun t ht => ?_)
  simp only [Function.comp_apply, List.length_map]
  split_ifs with hl
  · congr 1
    rw [List.map_map]
    exact congrArg List.prod (List.map_congr_left (fun X hX => hτ t ht X hX))
  · rfl

theorem trace_real_lie_holds : TrRealLie := by
  intro k r A X hA hX
  have hH : (Hpk k r)ᴴ = Hpk k r := Formalism.FourierDecayAlt.P.Ux4.hpk_conjTranspose k r
  have hH2 : Hpk k r * Hpk k r = 1 := WeylGroupFacts.hpk_sq
  have eA : Aᴴ = -(Hpk k r * A * Hpk k r) := by
    have h := congrArg (· * Hpk k r) hA
    simp only [add_mul, zero_mul, Matrix.mul_assoc, hH2, Matrix.mul_one] at h
    rw [eq_neg_iff_add_eq_zero, Matrix.mul_assoc]; exact h
  have eX : Xᴴ = -(Hpk k r * X * Hpk k r) := by
    have h := congrArg (· * Hpk k r) hX
    simp only [add_mul, zero_mul, Matrix.mul_assoc, hH2, Matrix.mul_one] at h
    rw [eq_neg_iff_add_eq_zero, Matrix.mul_assoc]; exact h
  have hstar : star (Matrix.trace (A * X)) = Matrix.trace (A * X) := by
    rw [← Matrix.trace_conjTranspose, Matrix.conjTranspose_mul, eX, eA, neg_mul_neg]
    calc Matrix.trace (Hpk k r * X * Hpk k r * (Hpk k r * A * Hpk k r))
        = Matrix.trace (Hpk k r * (X * (Hpk k r * Hpk k r) * A * Hpk k r)) := by simp only [Matrix.mul_assoc]
      _ = Matrix.trace ((X * (Hpk k r * Hpk k r) * A * Hpk k r) * Hpk k r) := Matrix.trace_mul_comm _ _
      _ = Matrix.trace (X * A) := by simp only [Matrix.mul_assoc, hH2, Matrix.mul_one]
      _ = Matrix.trace (A * X) := Matrix.trace_mul_comm _ _
  exact Complex.conj_eq_iff_re.mp hstar

theorem smooth_on_levels_holds : CkLevOn := by
  intro k r m Dm E _ _ f hf g₀ hg₀
  have hg₀' : g₀ ∈ Q.Glev k r 0 ∩ Dm := ⟨⟨hg₀.1, fun a ha => absurd ha (Nat.not_lt_zero _)⟩, hg₀.2⟩
  obtain ⟨U, F, hU, hgU, hF, hfF⟩ := hf g₀ hg₀'
  exact ⟨U, F, hU, hgU, by exact_mod_cast hF, fun g hg hgG => hfF g hg ⟨hgG, fun a ha => absurd ha (Nat.not_lt_zero _)⟩⟩

theorem operator_capelli_vector : OpCVOf := opCVOf_of word_family_apply_holds word_family_symbol_holds trace_real_lie_holds smooth_on_levels_holds

theorem operator_right_capelli : OpCapROf := opCapROf_of word_family_apply_holds word_family_symbol_holds trace_real_lie_holds smooth_on_levels_holds

theorem operator_left_capelli : OpCapLOf := opCapLOf_of word_family_apply_holds word_family_symbol_holds trace_real_lie_holds smooth_on_levels_holds

end

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordFamilySymbolHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.JfSmoothBuiltOfCapJoints =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.JfSmoothBuiltOfCapJoints", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapRWordsOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorAsGenerators\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCovarianceHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoefficientInterpolationHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactZeroHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationAlgebraicHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeLocalRepresentative\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantShiftCoefficient\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialDegreeHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExponentialSymbolHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExistence\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCapelliAsGenerators\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftCovarianceChartHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftGeneratorWordEvaluation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentLieFiniteHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NilpotentOfCharPoly\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCapelliAsGenerators\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightChartHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightGeneratorWordEvaluation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorFieldHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLiftHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymbolOperatorLinearHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorToSymbolOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WordFamilySymbolHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartSysWOfPartsOf\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity

theorem chartEqs_of_capJoints (hJ : CapWordsOfParts) (hJR : CapRWordsOfParts) (hJL : CapLWordsOfParts) :
    ChartEqs := by
  obtain ⟨h4, h5, h6⟩ := capWords_all_of hJ hJR hJL derivative_local_representative right_exponential_evaluation left_exponential_evaluation capelli_vector_as_generators
    right_capelli_as_generators left_capelli_as_generators exponential_degree_holds exponential_symbol_holds determinant_shift_coefficient coefficient_interpolation_holds
  exact chartEqs_of_J operator_capelli_vector operator_right_capelli operator_left_capelli nilpotent_of_char_poly conjugation_algebraic_holds left_covariance_chart_holds
    chart_covariance_holds right_chart_holds nilpotent_lie_finite_holds h4 h5 h6 compact_zero_holds frame_existence vector_to_symbol_operator
    symbol_operator_field_holds symbol_operator_lift_holds symbol_operator_linear_holds

end Formalism.FourierDecayAlt.P.CutMP.SmoothTransferRegularity
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.JfSmoothBuiltOfCapJoints =====
