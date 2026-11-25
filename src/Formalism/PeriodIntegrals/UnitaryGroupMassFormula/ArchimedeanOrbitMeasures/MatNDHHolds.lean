module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMu
public import Mathlib.RingTheory.TotallySplit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuP
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import Mathlib.Analysis.Complex.Circle
public import Mathlib.Analysis.Fourier.Inversion
public import Mathlib.Analysis.Fourier.FourierTransform
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SdTest
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuF, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BetaSym, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.FourierSD, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.MatNDHHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuF =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuF", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMu\npublic import Mathlib.RingTheory.TotallySplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuP\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open scoped TensorProduct RealInnerProductSpace FourierTransform
open MeasureTheory NumberField Topology Set Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.TypedSets
  Formalism.L2.SG.Sub Matrix

def BetaSym : Prop := ∀ {D : D7} (X : HidaSetting D) (x y : EuclideanSpace ℝ (KapI X)), betaI X x y = betaI X y x


open Classical in
def MatND : Prop := ∀ {D : D7} (X : HidaSetting D), (matI X).det ≠ 0

section
variable {D : D7} (X : HidaSetting D)


open Classical in
def Alin : EuclideanSpace ℝ (KapI X) →ₗ[ℝ] EuclideanSpace ℝ (KapI X) :=
  ((EuclideanSpace.equiv (KapI X) ℝ).toLinearEquiv.symm : (KapI X → ℝ) →ₗ[ℝ] EuclideanSpace ℝ (KapI X)) ∘ₗ
    Matrix.toLin' (matI X) ∘ₗ
    ((EuclideanSpace.equiv (KapI X) ℝ).toLinearEquiv.symm.symm : EuclideanSpace ℝ (KapI X) →ₗ[ℝ] (KapI X → ℝ))

open Classical in
theorem det_Alin : LinearMap.det (Alin X) = (matI X).det := by
  rw [Alin, LinearMap.det_conj, LinearMap.det_toLin']

theorem inner_Alin (x y : EuclideanSpace ℝ (KapI X)) : ⟪x, Alin X y⟫ = betaI X x y := by
  classical
  rw [betaI_expand]
  simp only [Alin, PiLp.inner_apply, LinearMap.coe_comp, Function.comp_apply, Matrix.toLin'_apply,
    LinearEquiv.coe_coe]
  simp
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [Matrix.mulVec, dotProduct]
  have hy : ∀ j, (EuclideanSpace.equiv (KapI X) ℝ) y j = y j := fun j => rfl
  simp only [hy]
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  ring

end


end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuF =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BetaSym =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BetaSym", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open scoped TensorProduct
open MeasureTheory NumberField Topology Set Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.TypedSets
  Formalism.L2.SG.Sub Matrix

section Gen

variable {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]

def sigE (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x) : E ≃ₐ[F] E :=
  AlgEquiv.ofAlgHom σ σ (AlgHom.ext hσ) (AlgHom.ext hσ)

theorem trace_sigR (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x) (t : R ⊗[F] E) :
    Algebra.trace R (R ⊗[F] E) (sigR R σ t) = Algebra.trace R (R ⊗[F] E) t := by
  have h : sigR R σ t = Algebra.TensorProduct.congr (AlgEquiv.refl : R ≃ₐ[R] R) (sigE σ hσ) t := by
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul r e => simp [sigR, sigE]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  rw [h, Algebra.trace_eq_of_algEquiv]

theorem hR_swap (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x) {M : ℕ} (J : Matrix (Fin M) (Fin M) E)
    (hJ : ∀ i j, σ (J j i) = J i j) (x y : Fin M → R ⊗[F] E) :
    hR R σ J y x = sigR R σ (hR R σ J x y) := by
  have h := gramR_memP R σ hσ J hJ ![x, y] 0 1
  simp only [gramR, Matrix.cons_val_zero, Matrix.cons_val_one] at h
  rw [← h, sigR_invP R σ hσ]

end Gen

theorem BR_symm {D : D7} (X : HidaSetting D) (x y : TupI X) :
    BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J x y = BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J y x := by
  simp only [BR]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [hR_swap (Ainf X.B.I.F) X.B.I.cm.sig (sig_invI X) X.B.I.J (J_hermI X) (x a) (y a),
    trace_sigR (Ainf X.B.I.F) X.B.I.cm.sig (sig_invI X)]

theorem betaSym_holds : BetaSym := by
  intro D X x y
  simp only [betaI]
  rw [BR_symm]

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BetaSym =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.FourierSD =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.FourierSD", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import Mathlib.Analysis.Complex.Circle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Fourier.Inversion\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Fourier.FourierTransform\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW.FSD

open MeasureTheory Real Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open scoped FourierTransform RealInnerProductSpace

variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
  [MeasurableSpace V] [BorelSpace V]

theorem selfDual_lin (A : V ≃L[ℝ] V) (hA : ∀ x y, ⟪x, A y⟫ = ⟪A x, y⟫) :
    SelfDual (ENNReal.ofReal (Real.sqrt |LinearMap.det (A : V →ₗ[ℝ] V)|) • (volume : Measure V))
      (fun x y => ((𝐞 ⟪x, A y⟫ : Circle) : ℂ)) := by
  set d := LinearMap.det (A : V →ₗ[ℝ] V) with hd_def
  have hd : d ≠ 0 := (LinearEquiv.isUnit_det' A.toLinearEquiv).ne_zero
  set c := Real.sqrt |d| with hc_def
  have hc0 : 0 < c := Real.sqrt_pos.2 (abs_pos.2 hd)
  have hcc : c * c = |d| := Real.mul_self_sqrt (abs_nonneg d)
  have hcr : (ENNReal.ofReal c).toReal = c := ENNReal.toReal_ofReal hc0.le
  have hc1 : ENNReal.ofReal c ≠ 0 := (ENNReal.ofReal_pos.2 hc0).ne'
  let e : V ≃ᵐ V := A.toHomeomorph.toMeasurableEquiv
  have he : ∀ y, e y = A y := fun _ => rfl
  have hmap : (volume : Measure V).map e = ENNReal.ofReal |d⁻¹| • volume := by
    show (volume : Measure V).map (A : V →ₗ[ℝ] V) = _
    exact Measure.map_linearMap_addHaar_eq_smul_addHaar volume hd
  have hdi : (ENNReal.ofReal |d⁻¹|).toReal = |d|⁻¹ := by
    rw [ENNReal.toReal_ofReal (abs_nonneg _), abs_inv]
  refine ⟨Measure.IsAddHaarMeasure.smul (μ := (volume : Measure V)) hc1 ENNReal.ofReal_ne_top, fun Φ hc hs hI z => ?_⟩
  have hT : ∀ y, ∫ x, Φ x * ((𝐞 ⟪x, A y⟫ : Circle) : ℂ) ∂(ENNReal.ofReal c • (volume : Measure V)) =
      (c : ℂ) * 𝓕⁻ Φ (A y) := by
    intro y
    rw [integral_smul_measure, hcr, fourierInv_eq, Complex.real_smul]
    congr 1
    exact integral_congr_ae (Filter.Eventually.of_forall fun x => by
      simp only [Circle.smul_def, smul_eq_mul]; ring)
  simp only [hT] at hI ⊢

  have hI1 : Integrable (fun y => (c : ℂ) * 𝓕⁻ Φ (A y)) volume :=
    (integrable_smul_measure hc1 ENNReal.ofReal_ne_top).1 hI
  have hI2 : Integrable (fun y => 𝓕⁻ Φ (e y)) volume := by
    have := hI1.const_mul ((c : ℂ)⁻¹)
    refine this.congr (Filter.Eventually.of_forall fun y => ?_)
    simp only [he]
    rw [← mul_assoc, inv_mul_cancel₀ (by exact_mod_cast hc0.ne'), one_mul]
  have hI3 : Integrable (𝓕⁻ Φ) volume := by
    have h := (integrable_map_equiv e (𝓕⁻ Φ)).2 hI2
    rw [hmap] at h
    exact (integrable_smul_measure (by simp [hd]) ENNReal.ofReal_ne_top).1 h
  have hF : Integrable (𝓕 Φ) volume := by
    have h := hI3.comp_neg
    refine h.congr (Filter.Eventually.of_forall fun w => ?_)
    simp only [fourierInv_eq_fourier_neg, neg_neg]
  have hΦ : Integrable Φ volume := hc.integrable_of_hasCompactSupport hs
  have hinv : 𝓕⁻ (𝓕⁻ Φ) z = Φ (-z) := by
    rw [fourierInv_eq_fourier_neg]
    exact congrFun (hc.fourier_fourierInv_eq hΦ hF) (-z)

  have hout : ∫ y, (c : ℂ) * 𝓕⁻ Φ (A y) * ((𝐞 ⟪y, A z⟫ : Circle) : ℂ) ∂(volume : Measure V) =
      (c : ℂ) * (|d|⁻¹ : ℝ) * 𝓕⁻ (𝓕⁻ Φ) z := by
    have e1 : (fun y => (c : ℂ) * 𝓕⁻ Φ (A y) * ((𝐞 ⟪y, A z⟫ : Circle) : ℂ)) =
        fun y => (c : ℂ) * (((𝐞 ⟪e y, z⟫ : Circle) : ℂ) * 𝓕⁻ Φ (e y)) := by
      funext y
      simp only [he, hA y z]
      ring
    have key : ∫ y, (c : ℂ) * (((𝐞 ⟪e y, z⟫ : Circle) : ℂ) * 𝓕⁻ Φ (e y)) ∂(volume : Measure V) =
        ∫ u, (c : ℂ) * (((𝐞 ⟪u, z⟫ : Circle) : ℂ) * 𝓕⁻ Φ u) ∂((volume : Measure V).map e) :=
      (integral_map_equiv e (fun u => (c : ℂ) * (((𝐞 ⟪u, z⟫ : Circle) : ℂ) * 𝓕⁻ Φ u))).symm
    rw [e1, key, hmap, integral_smul_measure, hdi, integral_const_mul, fourierInv_eq,
      Complex.real_smul]
    simp only [Circle.smul_def, smul_eq_mul]
    push_cast
    ring
  rw [integral_smul_measure, hcr, hout, hinv, Complex.real_smul]
  have : (c : ℂ) * ((c : ℂ) * ((|d|⁻¹ : ℝ) : ℂ)) = 1 := by
    rw [← mul_assoc, ← Complex.ofReal_mul, hcc, ← Complex.ofReal_mul, mul_inv_cancel₀ (abs_pos.2 hd).ne',
      Complex.ofReal_one]
  calc (c : ℂ) * ((c : ℂ) * ((|d|⁻¹ : ℝ) : ℂ) * Φ (-z)) = ((c : ℂ) * ((c : ℂ) * ((|d|⁻¹ : ℝ) : ℂ))) * Φ (-z) := by
        ring
    _ = Φ (-z) := by rw [this, one_mul]

end PI.AprimeInfW.FSD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.FourierSD =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.MatNDHHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.MatNDHHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMu\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.SdTest\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BetaSym\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.DensMuP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.FourierSD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open scoped TensorProduct RealInnerProductSpace FourierTransform
open MeasureTheory NumberField Topology Set Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.TypedSets
  Formalism.L2.SG.Sub Matrix

theorem no_kernel {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℝ W] [FiniteDimensional ℝ W]
    [MeasurableSpace W] [BorelSpace W] (μ : Measure W) (χ : W → W → ℂ) (hμ : SelfDual μ χ)
    (hadd : ∀ x x' y, χ (x + x') y = χ x y * χ x' y) (hT : ST.TestExP μ χ) (t : W) (ht0 : t ≠ 0)
    (ht : ∀ y, χ t y = 1) : False := by
  haveI := hμ.1
  obtain ⟨Φ, hc, hs, hI, z, hz⟩ := hT

  have htr : ∀ y, ∫ x, Φ (x - t) * χ x y ∂μ = ∫ x, Φ x * χ x y ∂μ := by
    intro y
    have := integral_sub_right_eq_self (μ := μ) (fun x => Φ x * χ (x + t) y) t
    simp only [sub_add_cancel] at this
    rw [this]
    congr 1; funext x
    rw [hadd, ht, mul_one]
  have hc' : Continuous fun x => Φ (x - t) := hc.comp (continuous_id.sub continuous_const)
  have hs' : HasCompactSupport fun x => Φ (x - t) := hs.comp_homeomorph (Homeomorph.subRight t)
  have hper : ∀ w, Φ (w - t) = Φ w := by
    intro w
    have h1 := hμ.2 (fun x => Φ (x - t)) hc' hs' (by simp only [htr]; exact hI) (-w)
    have h2 := hμ.2 Φ hc hs hI (-w)
    simp only [htr, neg_neg] at h1 h2
    rw [← h1, h2]
  have hpern : ∀ n : ℕ, ∀ w, Φ (w - n • t) = Φ w := by
    intro n
    induction n with
    | zero => intro w; simp
    | succ n ih => intro w; rw [succ_nsmul, ← sub_sub, hper, ih]
  obtain ⟨R, hR⟩ := hs.isCompact.isBounded.subset_closedBall 0
  apply hz
  have htpos : 0 < ‖t‖ := norm_pos_iff.2 ht0
  obtain ⟨n, hn⟩ := exists_nat_gt ((R + ‖-z‖) / ‖t‖)
  rw [← hpern n (-z)]
  apply image_eq_zero_of_notMem_tsupport
  intro hmem
  have hb := hR hmem
  rw [Metric.mem_closedBall, dist_zero_right] at hb
  have h1 : ‖(n : ℝ) • t‖ ≤ ‖-z - n • t‖ + ‖-z‖ := by
    have := norm_sub_le (-z) (-z - n • t)
    simp only [sub_sub_cancel] at this
    rw [← Nat.cast_smul_eq_nsmul ℝ] at this ⊢
    linarith [norm_sub_rev (-z) (-z - (n : ℝ) • t)]
  rw [norm_smul, Real.norm_natCast] at h1
  have h2 : (R + ‖-z‖) < n * ‖t‖ := by rwa [div_lt_iff₀ htpos] at hn
  linarith


open Classical in
def MatNDH : Prop := ∀ {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (ψ : AddChar (AF X.B.I.F) ℂ) hT μinf νinf fibInf,
    PushHyp X u' ψ hT μinf νinf fibInf →
    (matI X).det ≠ 0

theorem matNDH_holds : MatNDH := by
  classical
  intro D X u' ψ hT μinf νinf fibInf hP hdet0
  haveI : FiniteDimensional X.B.I.F X.B.I.E := fd_of X
  have hS := hP.2.2.1
  have hpc := continuous_psiInfP ψ hS
  obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 hdet0
  let t : EuclideanSpace ℝ (KapI X) := (EuclideanSpace.equiv (KapI X) ℝ).symm v
  have ht0 : t ≠ 0 := by
    intro h
    apply hv0
    have := congrArg (EuclideanSpace.equiv (KapI X) ℝ) h
    simpa [t] using this
  have hAt : Alin X t = 0 := by
    simp [Alin, t, Matrix.toLin'_apply]
    exact hv
  have hβ : ∀ y, betaI X t y = 0 := by
    intro y
    rw [betaSym_holds, ← inner_Alin, hAt, inner_zero_right]
  have hμ : SelfDual μinf (fun x y : TupI X => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J x y)) :=
    hP.2.2.2.2.1
  have hμ' := selfDual_transport μinf _ (tupCoord X) (tupCoord_add X) hμ
  haveI := hμ'.1
  have hadd : ∀ x x' y : EuclideanSpace ℝ (KapI X), (fun x y : EuclideanSpace ℝ (KapI X) => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J ((tupCoord X).symm x) ((tupCoord X).symm y))) (x + x') y = (fun x y : EuclideanSpace ℝ (KapI X) => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J ((tupCoord X).symm x) ((tupCoord X).symm y))) x y * (fun x y : EuclideanSpace ℝ (KapI X) => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J ((tupCoord X).symm x) ((tupCoord X).symm y))) x' y := by
    intro x x' y
    simp only [tupCoord_symm_add, BR_add_leftP, psiInf_addP]
  have hB : ST.IsBichar (fun x y : EuclideanSpace ℝ (KapI X) => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J ((tupCoord X).symm x) ((tupCoord X).symm y))) :=
    { addL := hadd
      addR := fun x y y' => by simp only [tupCoord_symm_add, BR_add_rightP, psiInf_addP]
      norm1 := fun x y => norm_psiInfP ψ hS _
      contL := fun y => hpc.comp ((continuous_BR_leftP X _).comp (tupCoord X).symm.continuous)
      contR := fun x => hpc.comp ((continuous_BR_rightP X _).comp (tupCoord X).symm.continuous) }
  have hTest := ST.testEx_bichar (μinf.map (tupCoord X)) hB
  refine no_kernel (μinf.map (tupCoord X)) _ hμ' hadd hTest t ht0 fun y => ?_
  rw [psiInf_eq ψ hS]
  beta_reduce
  have : (∑ w : InfinitePlace X.B.I.F, (InfinitePlace.Completion.extensionEmbedding w
      (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J ((tupCoord X).symm t) ((tupCoord X).symm y) w)).re) = 0 := hβ y
  simp only [this]
  simp

open Classical in
theorem densMu_holds : DensMu := by
  intro D X u' ψ hT μinf νinf fibInf hP
  haveI : FiniteDimensional X.B.I.F X.B.I.E := fd_of X
  have hdet : IsUnit (LinearMap.det (Alin X)) := by
    rw [det_Alin]; exact isUnit_iff_ne_zero.2 (matNDH_holds X u' ψ hT μinf νinf fibInf hP)
  let A : EuclideanSpace ℝ (KapI X) ≃L[ℝ] EuclideanSpace ℝ (KapI X) := (LinearMap.equivOfIsUnitDet hdet).toContinuousLinearEquiv
  have hAapp : ∀ y, A y = Alin X y := fun y => by simp [A, LinearMap.equivOfIsUnitDet_apply]
  have hAl : (A : EuclideanSpace ℝ (KapI X) →ₗ[ℝ] EuclideanSpace ℝ (KapI X)) = Alin X := LinearMap.ext hAapp
  have hAd : LinearMap.det (A : EuclideanSpace ℝ (KapI X) →ₗ[ℝ] EuclideanSpace ℝ (KapI X)) = (matI X).det := by
    rw [hAl, det_Alin]
  have hsym : ∀ x y, ⟪x, A y⟫ = ⟪A x, y⟫ := by
    intro x y
    rw [hAapp, hAapp, inner_Alin, real_inner_comm, inner_Alin, betaSym_holds]
  have hν := FSD.selfDual_lin A hsym
  rw [hAd] at hν

  have hμ : SelfDual μinf (fun x y : TupI X => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J x y)) :=
    hP.2.2.2.2.1
  have hμ' := selfDual_transport μinf _ (tupCoord X) (tupCoord_add X) hμ
  have hχ : (fun x y : EuclideanSpace ℝ (KapI X) => psiInf X.B.I.F ψ (BR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J
      ((tupCoord X).symm x) ((tupCoord X).symm y))) = fun x y => ((𝐞 ⟪x, A y⟫ : Circle) : ℂ) := by
    funext x y
    rw [hAapp, inner_Alin, psiInf_eq ψ hP.2.2.1, Real.fourierChar_apply]
    simp only [betaI]
    push_cast
    ring_nf
  rw [hχ] at hμ'
  haveI := hν.1
  have hB : ST.IsBichar (fun x y : EuclideanSpace ℝ (KapI X) => ((𝐞 ⟪x, A y⟫ : Circle) : ℂ)) :=
    { addL := fun x x' y => by simp only [inner_add_left, AddChar.map_add_eq_mul, Circle.coe_mul]
      addR := fun x y y' => by simp only [map_add (f := _), inner_add_right, AddChar.map_add_eq_mul, Circle.coe_mul]
      norm1 := fun x y => Circle.norm_coe _
      contL := fun y => (continuous_subtype_val.comp Real.continuous_fourierChar).comp
        (continuous_id.inner continuous_const)
      contR := fun x => (continuous_subtype_val.comp Real.continuous_fourierChar).comp
        (continuous_const.inner A.continuous) }
  obtain ⟨Φ, hc, hs, hI, z, hz⟩ := ST.testEx_bichar (ENNReal.ofReal (Real.sqrt |(matI X).det|) • (volume : Measure (EuclideanSpace ℝ (KapI X)))) hB
  exact SelfDual.eq_of_test hν hμ' Φ hc hs hI z hz

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.MatNDHHolds =====
