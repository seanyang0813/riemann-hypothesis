module

public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussInvariant
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeMassOfFibre
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MeasurableFibreCountOver
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussMoment

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FibreCountRotationInvariant, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TXgzChowMahlerE0reduce, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FibreCountRotationInvariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FibreCountRotationInvariant", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussInvariant\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PConeMassOfFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PTangentGaussMoment\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.Ar.Short.Crofton.CntInv

noncomputable section

theorem measurePreserving_swapMat (m n : ℕ) :
    MeasurePreserving (fun (π : Fin m → Fin n → ℂ) (j : Fin n) (i : Fin m) => π i j)
      volume volume := by
  have h1 := (measurePreserving_curry_matrix m n).symm (MeasurableEquiv.curry (Fin m) (Fin n) ℂ)
  have h2 := volume_measurePreserving_piCongrLeft (fun _ : Fin n × Fin m => ℂ)
    (Equiv.prodComm (Fin m) (Fin n))
  have h3 := measurePreserving_curry_matrix n m
  have h4 := h3.comp (h2.comp h1)
  have h5 : (fun (π : Fin m → Fin n → ℂ) (j : Fin n) (i : Fin m) => π i j) =
      (MeasurableEquiv.curry (Fin n) (Fin m) ℂ) ∘
        (MeasurableEquiv.piCongrLeft (fun _ : Fin n × Fin m => ℂ)
          (Equiv.prodComm (Fin m) (Fin n))) ∘
          (MeasurableEquiv.curry (Fin m) (Fin n) ℂ).symm := by
    funext π j i
    simp only [MeasurableEquiv.curry, Function.comp]
    simp only [MeasurableEquiv.coe_mk, MeasurableEquiv.coe_piCongrLeft]
    exact (Equiv.piCongrLeft_apply_apply (fun _ : Fin n × Fin m => ℂ)
      (Equiv.prodComm (Fin m) (Fin n)) (Function.uncurry π) (i, j)).symm
  rw [h5]
  exact h4

theorem transpose_mem_unitaryGroup' {m : ℕ} {A : Matrix (Fin m) (Fin m) ℂ}
    (hA : A ∈ Matrix.unitaryGroup (Fin m) ℂ) : Aᵀ ∈ Matrix.unitaryGroup (Fin m) ℂ := by
  rw [Matrix.mem_unitaryGroup_iff]
  have h : star A * A = 1 := Matrix.mem_unitaryGroup_iff'.1 hA
  have h2 : (star A * A)ᵀ = 1 := by rw [h, Matrix.transpose_one]
  rw [Matrix.transpose_mul] at h2
  simpa [Matrix.star_eq_conjTranspose, Matrix.conjTranspose, Matrix.transpose_map] using h2

def colAct {m n : ℕ} (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m))
    (π : Fin m → Fin n → ℂ) : Fin m → Fin n → ℂ :=
  fun i j => ∑ k, unitMat V i k * π k j

theorem colAct_eq_mul {m n : ℕ} (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m))
    (π : Fin m → Fin n → ℂ) :
    colAct V π = (unitMat V * (Matrix.of π : Matrix (Fin m) (Fin n) ℂ)) := by
  funext i j
  simp [colAct, Matrix.mul_apply]

theorem colAct_symm_colAct {m n : ℕ}
    (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) (π : Fin m → Fin n → ℂ) :
    colAct V.symm (colAct V π) = π := by
  have h : unitMat V.symm * unitMat V = 1 := by simpa using unitMat_mul_symm V.symm
  rw [colAct_eq_mul, colAct_eq_mul]
  show unitMat V.symm * (unitMat V * Matrix.of π) = π
  rw [← Matrix.mul_assoc, h, Matrix.one_mul]
  rfl

theorem colAct_eq_swap {m n : ℕ}
    (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) (π : Fin m → Fin n → ℂ) :
    colAct V π = fun i j => ((fun k => π k j) ᵥ* (unitMat V)ᵀ) i := by
  funext i j
  simp [colAct, Matrix.vecMul, dotProduct, mul_comm]

theorem measurePreserving_colAct {m n : ℕ}
    (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) :
    MeasurePreserving (colAct (n := n) V) volume volume := by
  have h1 : MeasurePreserving (fun (ρ : Fin n → Fin m → ℂ) (j : Fin n) => ρ j ᵥ* (unitMat V)ᵀ)
      volume volume :=
    volume_preserving_pi fun _ =>
      measurePreserving_vecMul (transpose_mem_unitaryGroup' (unitMat_mem V))
  have h2 := (measurePreserving_swapMat n m).comp (h1.comp (measurePreserving_swapMat m n))
  convert h2 using 1
  funext π
  rw [colAct_eq_swap]
  rfl

def colActEquiv {m n : ℕ} (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) :
    (Fin m → Fin n → ℂ) ≃ᵐ (Fin m → Fin n → ℂ) where
  toFun := colAct V
  invFun := colAct V.symm
  left_inv := colAct_symm_colAct V
  right_inv π := by simpa using colAct_symm_colAct V.symm π
  measurable_toFun := (measurePreserving_colAct V).measurable
  measurable_invFun := (measurePreserving_colAct V.symm).measurable

theorem matGauss_colAct {m n : ℕ}
    (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) (π : Fin m → Fin n → ℂ) :
    matGauss (colAct V π) = matGauss π := by
  simp only [matGauss]
  congr 3
  rw [colAct_eq_swap, Finset.sum_comm]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  exact sum_norm_sq_vecMul (transpose_mem_unitaryGroup' (unitMat_mem V)) (fun k => π k j)

theorem linProj_colAct {m n : ℕ}
    (V : EuclideanSpace ℂ (Fin m) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin m)) (π : Fin m → Fin n → ℂ)
    (y : EuclideanSpace ℂ (Fin n)) : linProj (colAct V π) y = V (linProj π y) := by
  ext i
  rw [unitary_apply_eq_sum]
  simp only [linProj, colAct]
  simp_rw [Finset.sum_mul, Finset.mul_sum, mul_assoc]
  exact Finset.sum_comm

theorem cntOver_colAct {n e : ℕ} {S : Set (EuclideanSpace ℂ (Fin n))} (hS : IsScaleStable S)
    {w : EuclideanSpace ℂ (Fin (e + 1))} (hw : w ≠ 0)
    (V : EuclideanSpace ℂ (Fin (e + 1)) ≃ₗᵢ[ℂ] EuclideanSpace ℂ (Fin (e + 1)))
    (hV : V w = ((‖w‖ : ℝ) : ℂ) • firstCoordVec (e + 1)) (π : Fin (e + 1) → Fin n → ℂ) :
    cntOver S (colAct V π) (firstCoordVec (e + 1)) = cntOver S π w := by
  set c : ℂ := ((‖w‖ : ℝ) : ℂ) with hc
  have hc0 : c ≠ 0 := by
    rw [hc]
    exact_mod_cast norm_ne_zero_iff.2 hw
  have himg : ptsOver S (colAct V π) (firstCoordVec (e + 1)) =
      (fun y => c⁻¹ • y) '' ptsOver S π w := by
    ext z
    constructor
    · rintro ⟨hzS, hz⟩
      refine ⟨c • z, ⟨hS z hzS c hc0, ?_⟩, by simp [smul_smul, hc0]⟩
      apply V.injective
      rw [_root_.GroundTheory.Heights₂.Heights.linProj_smul_left, map_smul, ← linProj_colAct, hz, hV]
    · rintro ⟨y, ⟨hyS, hy⟩, rfl⟩
      refine ⟨hS y hyS _ (inv_ne_zero hc0), ?_⟩
      rw [_root_.GroundTheory.Heights₂.Heights.linProj_smul_left, linProj_colAct, hy, hV, smul_smul, inv_mul_cancel₀ hc0, one_smul]
  have hinj : Set.InjOn (fun y : EuclideanSpace ℂ (Fin n) => c⁻¹ • y) (ptsOver S π w) :=
    (MulAction.injective₀ (inv_ne_zero hc0)).injOn
  simp only [cntOver]
  rw [himg, hinj.encard_image]

theorem lintegral_matGauss_cntOver :
    ∀ (n e : ℕ) (S : Set (EuclideanSpace ℂ (Fin n))), IsScaleStable S →
      ∀ (w : EuclideanSpace ℂ (Fin (e + 1))), w ≠ 0 → ∀ T : ℝ≥0∞ → ℝ≥0∞,
        ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π * T (cntOver S π w) =
          ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π * T (cntOver S π (firstCoordVec (e + 1))) := by
  intro n e S hS w hw T
  obtain ⟨U, -, -, hU⟩ := exists_unitary_leadCoordPlane (n := e + 1) (m := e + 1) (by omega) le_rfl
    ⊤ (by simp) w trivial
  have hV : U.symm w = ((‖w‖ : ℝ) : ℂ) • firstCoordVec (e + 1) := by
    rw [U.symm_apply_eq, hU]
  have hemb : MeasurableEmbedding (colAct (n := n) U.symm) :=
    (colActEquiv U.symm).measurableEmbedding
  have key := (measurePreserving_colAct (n := n) U.symm).lintegral_comp_emb hemb
    (fun π => matGauss π * T (cntOver S π (firstCoordVec (e + 1))))
  refine Eq.trans ?_ key
  refine lintegral_congr fun π => ?_
  simp only [matGauss_colAct, cntOver_colAct hS hw U.symm hV]

end

end GlobalTheory.CompanionTheory.Ar.Short.Crofton.CntInv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FibreCountRotationInvariant =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TXgzChowMahlerE0reduce =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TXgzChowMahlerE0reduce", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FibreCountRotationInvariant\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MeasurableFibreCountOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal

theorem PositivityTheory.Xgn.t_xgz_chow_mahler_e0reduce : ∀ (n e : ℕ) (S : Set (EuclideanSpace ℂ (Fin n))), IsScaleStable S → IsSigmaCompact S →
  ∀ T : ℝ≥0∞ → ℝ≥0∞, Measurable T →
    ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1), T (cntOver S π w) =
      volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) *
        ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π * T (cntOver S π (firstCoordVec (e + 1))) := by
  intro n e S hS hσ T hT
  have hG : Measurable fun π : Fin (e + 1) → Fin n → ℂ => matGauss π := by
    unfold matGauss
    exact (by fun_prop : Continuous fun π : Fin (e + 1) → Fin n → ℂ =>
      Real.exp (-∑ i, ∑ j, ‖π i j‖ ^ 2)).measurable.ennreal_ofReal
  have hC : Measurable (fun p : (Fin (e + 1) → Fin n → ℂ) × EuclideanSpace ℂ (Fin (e + 1)) =>
      T (cntOver S p.1 p.2)) := hT.comp (_root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.measurable_cntOver n (e + 1) S hσ)
  have hF : Measurable (Function.uncurry fun (π : Fin (e + 1) → Fin n → ℂ)
      (w : EuclideanSpace ℂ (Fin (e + 1))) => matGauss π * T (cntOver S π w)) :=
    (hG.comp measurable_fst).mul hC
  have h1 : ∀ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1), T (cntOver S π w) =
      ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1),
        matGauss π * T (cntOver S π w) := by
    intro π
    rw [lintegral_const_mul' _ _ (by unfold matGauss; exact ENNReal.ofReal_ne_top)]
  have h0 : ∀ᵐ w : EuclideanSpace ℂ (Fin (e + 1)), w ≠ 0 := by
    rw [ae_iff]
    simp
  simp_rw [h1]
  rw [lintegral_lintegral_swap hF.aemeasurable]
  rw [lintegral_congr_ae ((ae_restrict_of_ae h0).mono fun w hw => _root_.GlobalTheory.CompanionTheory.Ar.Short.Crofton.CntInv.lintegral_matGauss_cntOver n e S hS w hw T),
    setLIntegral_const, mul_comm]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TXgzChowMahlerE0reduce =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsScaleStable\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TXgzChowMahlerE0reduce\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1
open GroundTheory.Heights₂.Heights MeasureTheory MvPolynomial Matrix GlobalTheory.CompanionTheory.Ar.Short.Crofton
open scoped ENNReal


theorem _root_.GlobalTheory.CompanionTheory.Relay.ball_average_fibre_count : ∀ (n e : ℕ) (S : Set (EuclideanSpace ℂ (Fin n))), IsScaleStable S → IsSigmaCompact S →
  ∀ T : ℝ≥0∞ → ℝ≥0∞, Measurable T →
    ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π *
        ∫⁻ w in (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1), T (cntOver S π w) =
      volume (Metric.ball (0 : EuclideanSpace ℂ (Fin (e + 1))) 1) *
        ∫⁻ π : Fin (e + 1) → Fin n → ℂ, matGauss π * T (cntOver S π (firstCoordVec (e + 1))) := by
  first | exact @PositivityTheory.Xgn.t_xgz_chow_mahler_e0reduce
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BallAverageFibreCount =====
