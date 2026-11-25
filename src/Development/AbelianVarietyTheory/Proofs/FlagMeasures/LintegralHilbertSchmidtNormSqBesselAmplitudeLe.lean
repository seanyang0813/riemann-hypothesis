module

import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MeasurableSetNotGG
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MatrixOfBesselTwoSidedAction
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselSubgroupRepTwistedIsUnitaryRep
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnimodularBesselSubgroupsUWN
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselFunctionalStandardSide
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormIdentityBesselCoefficientQuotient
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselOpNormPowerIntegralLtTopClosedSubgroup
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselSubgroupsClosedUnitaryWCompact
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DiffQuotientBesselMapTendsto
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.WeilFormulaBesselUnitaryIntegrable
public import Mathlib.MeasureTheory.Function.AEEqOfIntegral
public import Mathlib.Analysis.Normed.Module.HahnBanach
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsBesselMapRankOneFactorisationTranslateSpan
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHsNormSqMatrixCoeffLeFormalDegree
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UhMeasurableSet
import Formalism.FormalDegreeBessel.FinalG
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Separation.CompletelyRegular
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsDenseInvariant
import Mathlib.Algebra.Order.Star.Real
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeEqAmpJAndBesselEqDoubleIntegral, Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelProjectorOnLine, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsNonzeroFixedOfSquareIntegrableBessel, Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHilbertSchmidtNormSqBesselAmplitudeLe

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeEqAmpJAndBesselEqDoubleIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeEqAmpJAndBesselEqDoubleIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MatrixOfBesselTwoSidedAction\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselSubgroupRepTwistedIsUnitaryRep\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnimodularBesselSubgroupsUWN\nimport Formalism.FormalDegreeBessel.FinalG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf
open scoped InnerProductSpace

noncomputable section
namespace GlobalTheory.SgInf.AmpJ

variable {k r : ℕ}

theorem hpk_unit : IsUnit (Hpk k r).det := by
  have h := (hpkFacts k r).2.1
  have : (Hpk k r).det * (Hpk k r).det = 1 := by rw [← Matrix.det_mul, h, Matrix.det_one]
  exact isUnit_iff_exists_inv.2 ⟨_, this⟩

theorem unit_of_mem {g : Mat k r} (hg : g ∈ UH (Hpk k r)) : IsUnit g.det :=
  ((uHGroup _ (Hpk k r) hpk_unit).2.2 g hg).1

end GlobalTheory.SgInf.AmpJ

noncomputable section
namespace GlobalTheory.SgInf.AmpJ
variable {k r : ℕ}

def lmulEquiv (γ : Mat k r) (hγ : IsUnit γ.det) : Mt k r ≃ᵐ Mt k r :=
  Homeomorph.toMeasurableEquiv
    { toFun := lmulM γ
      invFun := lmulM γ⁻¹
      left_inv := fun x => by
        show γ⁻¹ * (γ * Matrix.of x) = Matrix.of x
        rw [← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hγ, Matrix.one_mul]
      right_inv := fun x => by
        show γ * (γ⁻¹ * Matrix.of x) = Matrix.of x
        rw [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hγ, Matrix.one_mul]
      continuous_toFun := (continuous_const (y := γ)).matrix_mul (continuous_id (X := Mat k r))
      continuous_invFun := (continuous_const (y := γ⁻¹)).matrix_mul (continuous_id (X := Mat k r)) }

theorem part1 {Wp Wq : Type*} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]
    (μG : Measure (Mt k r)) (Φ : Mat k r → Wp) (Φ' : Mat k r → Wq) (hμ : IsHaarOn (GG k r) μG)
    (γ : Mat k r) (hγ : γ ∈ GG k r) : OO μG Φ Φ' γ = ampJ μG 1 Φ Φ' γ := by
  have hd : IsUnit γ.det := unit_of_mem hγ
  unfold OO ampJ
  rw [Complex.ofReal_one, inv_one, one_smul]
  have hmap : μG.map (lmulEquiv γ hd) = μG := hμ.2.2.2 γ hγ
  conv_lhs => rw [← hmap]
  rw [integral_map_equiv]
  congr 1
  funext x
  show rk1 (Φ (γ * Matrix.of x)) (Φ' (γ⁻¹ * (γ * Matrix.of x))) = _
  rw [← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hd, Matrix.one_mul]
  rfl

end GlobalTheory.SgInf.AmpJ

namespace GlobalTheory.SgInf.AmpJ

theorem oo_eq_ampJ : ∀ (k r : ℕ) {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [CompleteSpace Wp] {Wq : Type} [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] [CompleteSpace Wq] (μG : Measure (Mt k r)) (Φ : Mat k r → Wp) (Φ' : Mat k r → Wq), IsHaarOn (GG k r) μG → ∀ γ ∈ GG k r, OO μG Φ Φ' γ = ampJ μG 1 Φ Φ' γ := by
  intro k r Wp _ _ _ _ Wq _ _ _ _
  exact fun μG Φ Φ' hμ γ hγ => part1 μG Φ Φ' hμ γ hγ

end GlobalTheory.SgInf.AmpJ
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeEqAmpJAndBesselEqDoubleIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelProjectorOnLine =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelProjectorOnLine", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MatrixOfBesselTwoSidedAction\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselFunctionalStandardSide\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormIdentityBesselCoefficientQuotient\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsDenseInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf
open scoped InnerProductSpace

noncomputable section

namespace GlobalTheory.SgInf.ProjLine

theorem mul_mem_GG_iff {k r : ℕ} {s x : Mat k r} (hs : s ∈ GG k r) : s * x ∈ GG k r ↔ x ∈ GG k r := by
  simp only [GG, UH, Set.mem_setOf_eq] at hs ⊢
  have e : (s * x)ᴴ * Hpk k r * (s * x) = xᴴ * (sᴴ * Hpk k r * s) * x := by
    simp only [conjTranspose_mul, Matrix.mul_assoc]
  rw [e, hs]

theorem Sset_subset_GG {k r : ℕ} (z : Fin (2 * r + k + 1) → ℂ) : Sset k r z ⊆ GG k r := by
  rintro s ⟨h, hh, m, hm, rfl⟩
  exact (mul_mem_GG_iff hh.1).2 hm.1

theorem isClosed_GG (k r : ℕ) : IsClosed {x : Mt k r | (Matrix.of x : Mat k r) ∈ GG k r} := by
  have hc : Continuous fun x : Mat k r => xᴴ * Hpk k r * x :=
    ((continuous_id.matrix_conjTranspose).matrix_mul continuous_const).matrix_mul continuous_id
  exact isClosed_eq (X := Mt k r) hc continuous_const

theorem rankOneInnerOperator_self_apply {Wp : Type*} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] (x y : Wp) :
    rk1 y x x = ((‖x‖ ^ 2 : ℝ) : ℂ) • y := by
  rw [rankOneInnerOperator_apply, inner_self_eq_norm_sq_to_K]; push_cast; rfl

theorem inner_rankOneInnerOperator_self {Wp : Type*} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] (x : Wp) :
    ⟪x, rk1 x x x⟫_ℂ = (((‖x‖ ^ 2) ^ 2 : ℝ) : ℂ) := by
  rw [rankOneInnerOperator_self_apply, inner_smul_right, inner_self_eq_norm_sq_to_K]
  have e : ((‖x‖ : ℝ) : ℂ) = (RCLike.ofReal ‖x‖ : ℂ) := rfl
  push_cast
  rw [← e]; ring

theorem ae_mem_GG {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {μG μS ν : Measure (Mt k r)}
    (hG : IsHaarOn (GG k r) μG) (hS : IsHaarOn (Sset k r z) μS) (hq : IsQuotMeas μG μS ν) :
    ∀ᵐ x ∂ν, (Matrix.of x : Mat k r) ∈ GG k r := by
  first | exact _root_.GlobalTheory.SgInf.WUnfold.ae_mem_GG | exact @_root_.GlobalTheory.SgInf.WUnfold.ae_mem_GG | apply _root_.GlobalTheory.SgInf.WUnfold.ae_mem_GG <;> assumption

theorem projector_line : ∀ (k r : ℕ) {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [CompleteSpace Wp] (σ : Mat k r → (H →L[ℂ] H)) (w : H) (a : ℝ) (μG : Measure (Mt k r)) (d : ℝ) (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (π : Mat k r → (Wp →L[ℂ] Wp)) (μS : Measure (Mt k r)) , Std σ w a μG d → Side z π μS → ∀ ν : Measure (Mt k r), IsQuotMeas μG μS ν → ∀ l : H → Wp, IsEll z (psiGen k r z c) π μS σ (DD σ w) l → (∀ u ∈ DD σ w, l2SG ν (fun x => l (σ x u)) = ENNReal.ofReal (‖u‖ ^ 2 / d)) ∧ (∀ v ∈ DD σ w, ∀ ξ : Wp, ∀ x ∈ GG k r, Afun (psiGen k r z c) π μS σ w v ξ x = ⟪l v, ξ⟫_ℂ • l (σ x w)) ∧ ∀ W : Mat k r → Wp, AEStronglyMeasurable (fun x : Mt k r => W (Matrix.of x)) μG → AEStronglyMeasurable (fun x : Mt k r => W (Matrix.of x)) ν → IsSPsiEquiv z (psiGen k r z c) π W → l2SG ν W < ⊤ → ∀ y ∈ GG k r, rconv μG (eFun μG σ w) W y = ((d : ℂ) * ∫ g, ⟪l (σ (Matrix.of g) w), W (Matrix.of g)⟫_ℂ ∂ν) • l (σ y w) := by
  intro k r H _ _ _ Wp _ _ _ _ σ w a μG d z c π μS hStd hSide ν hq l hl
  have hG : IsHaarOn (GG k r) μG := hStd.2.2.2.2.1
  have hU : IsURepOn (GG k r) σ := hStd.2.1
  have hd : 0 < d := hStd.2.2.2.2.2.1.1
  have hS : IsHaarOn (Sset k r z) μS := hSide.2.2.2.1
  have hae := ae_mem_GG hG hS hq
  have hstab := (_root_.GlobalTheory.SgInfDD.DD_stable_dense k r σ w hU).1
  obtain ⟨_, ⟨v0, hv0, hlv0⟩, hbe⟩ := hl
  refine ⟨?_, ?_, ?_⟩
  · intro u hu
    obtain ⟨_, _, hmem, heq, _, _⟩ :=
      _root_.GlobalTheory.SgInf.normIdentity_besselCoef k r σ w a μG d z c π μS hStd hSide ν hq u hu u hu v0 hv0 (l v0)
    set A : Mt k r → Wp := fun x => Afun (psiGen k r z c) π μS σ u v0 (l v0) (Matrix.of x) with hAdef
    set L : Mt k r → Wp := fun x => l (σ (Matrix.of x) u) with hLdef
    set N : ℝ := ‖l v0‖ ^ 2 with hNdef
    have hN : 0 < N := by positivity
    have hAL : ∀ᵐ x ∂ν, A x = (N : ℂ) • L x := by
      filter_upwards [hae] with x hx
      simp only [hAdef, hLdef, Afun]
      rw [hbe _ (hstab _ hx _ hu) _ hv0, rankOneInnerOperator_apply, inner_self_eq_norm_sq_to_K]
      simp [hNdef]
    have hnA : ∀ᵐ x ∂ν, ‖A x‖ ^ 2 = N ^ 2 * ‖L x‖ ^ 2 := by
      filter_upwards [hAL] with x hx
      rw [hx, norm_smul, Complex.norm_real, Real.norm_of_nonneg hN.le, mul_pow]
    have hIA : Integrable (fun x => ‖A x‖ ^ 2) ν := hmem.integrable_norm_pow two_ne_zero
    have hIL : Integrable (fun x => ‖L x‖ ^ 2) ν := by
      have : (fun x => ‖L x‖ ^ 2) =ᵐ[ν] fun x => (N ^ 2)⁻¹ * ‖A x‖ ^ 2 := by
        filter_upwards [hnA] with x hx
        rw [hx, ← mul_assoc, inv_mul_cancel₀ (by positivity), one_mul]
      exact (hIA.const_mul _).congr this.symm
    have hbevv : ⟪l v0, be (psiGen k r z c) π μS σ v0 v0 (l v0)⟫_ℂ = ((N ^ 2 : ℝ) : ℂ) := by
      rw [hbe _ hv0 _ hv0, inner_rankOneInnerOperator_self]
    have hintA : ∫ x, ‖A x‖ ^ 2 ∂ν = N ^ 2 * (‖u‖ ^ 2 / d) := by
      have h1 : ∫ x, ⟪A x, A x⟫_ℂ ∂ν = ((∫ x, ‖A x‖ ^ 2 ∂ν : ℝ) : ℂ) := by
        rw [← integral_complex_ofReal]
        refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
        simp only [inner_self_eq_norm_sq_to_K]; push_cast; rfl
      have h2 := heq
      rw [hbevv, inner_self_eq_norm_sq_to_K u] at h2
      have h3 : ((∫ x, ‖A x‖ ^ 2 ∂ν : ℝ) : ℂ) = ((N ^ 2 * (‖u‖ ^ 2 / d) : ℝ) : ℂ) := by
        rw [← h1]; refine h2.trans ?_
        have e : ((‖u‖ : ℝ) : ℂ) = (RCLike.ofReal ‖u‖ : ℂ) := rfl
        push_cast
        rw [← e]; ring
      exact_mod_cast h3
    have hintL : ∫ x, ‖L x‖ ^ 2 ∂ν = ‖u‖ ^ 2 / d := by
      have : ∫ x, ‖A x‖ ^ 2 ∂ν = N ^ 2 * ∫ x, ‖L x‖ ^ 2 ∂ν := by
        rw [← integral_const_mul]; exact integral_congr_ae hnA
      rw [this] at hintA
      exact mul_left_cancel₀ (by positivity) hintA
    unfold l2SG
    rw [← hintL, ofReal_integral_eq_lintegral_ofReal hIL (Filter.Eventually.of_forall fun x => by positivity)]
    refine lintegral_congr fun x => ?_
    rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm_eq_enorm]
    rfl
  · intro v hv ξ x hx
    simp only [Afun]
    rw [hbe _ (mem_DD σ w hx) _ hv, rankOneInnerOperator_apply]
  · intro W hW1 hW2 hEq hL2 y hy
    obtain ⟨_, hconv⟩ := _root_.GlobalTheory.SgInf.KernelRe.kernel_rconv k r σ w a μG d z c π μS hStd hSide ν hq W hW1 hW2 hEq hL2 y hy
    rw [hconv]
    have h : ∀ᵐ g ∂ν, be (psiGen k r z c) π μS σ (σ y w) (σ (Matrix.of g) w) (W (Matrix.of g)) =
        ⟪l (σ (Matrix.of g) w), W (Matrix.of g)⟫_ℂ • l (σ y w) := by
      filter_upwards [hae] with g hg
      rw [hbe _ (mem_DD σ w hy) _ (mem_DD σ w hg), rankOneInnerOperator_apply]
    rw [integral_congr_ae h, integral_smul_const, smul_smul]

end GlobalTheory.SgInf.ProjLine
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelProjectorOnLine =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsNonzeroFixedOfSquareIntegrableBessel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsNonzeroFixedOfSquareIntegrableBessel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MatrixOfBesselTwoSidedAction\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselOpNormPowerIntegralLtTopClosedSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselSubgroupsClosedUnitaryWCompact\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DiffQuotientBesselMapTendsto\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnimodularBesselSubgroupsUWN\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.WeilFormulaBesselUnitaryIntegrable\npublic import Mathlib.MeasureTheory.Function.AEEqOfIntegral\npublic import Mathlib.Analysis.Normed.Module.HahnBanach\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsDenseInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Filter Topology Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf GlobalTheory.Amp
open scoped InnerProductSpace ENNReal NNReal

namespace GlobalTheory.BesselFixed

theorem integrable_and_integral_norm_le_of_lintegral_sq_le {X E : Type*} [MeasurableSpace X] [NormedAddCommGroup E] (μ : Measure X) [IsFiniteMeasure μ]
    (C : ℝ≥0∞) (hC : C ≠ ⊤) : ∃ K : ℝ, 0 ≤ K ∧ ∀ (f : X → E) (t : ℝ≥0), AEStronglyMeasurable f μ →
      ∫⁻ x, (‖f x‖₊ : ℝ≥0∞) ^ 2 ∂μ ≤ C * (t : ℝ≥0∞) ^ 2 → Integrable f μ ∧ ∫ x, ‖f x‖ ∂μ ≤ K * t := by
  have hK : C ^ (1 / 2 : ℝ) * (μ Set.univ) ^ (1 / 2 : ℝ) ≠ ⊤ :=
    ENNReal.mul_ne_top (ENNReal.rpow_ne_top_of_nonneg (by norm_num) hC)
      (ENNReal.rpow_ne_top_of_nonneg (by norm_num) (measure_ne_top _ _))
  refine ⟨(C ^ (1 / 2 : ℝ) * (μ Set.univ) ^ (1 / 2 : ℝ)).toReal, ENNReal.toReal_nonneg, fun f t hf h => ?_⟩
  have h1 := ENNReal.lintegral_mul_le_Lp_mul_Lq μ Real.HolderConjugate.two_two
    (f := fun x => ‖f x‖ₑ) (g := fun _ => 1) hf.enorm aemeasurable_const
  have h2 : (∫⁻ x, ‖f x‖ₑ ^ (2 : ℝ) ∂μ) ^ (1 / 2 : ℝ) ≤ C ^ (1 / 2 : ℝ) * t := by
    have : (∫⁻ x, ‖f x‖ₑ ^ (2 : ℝ) ∂μ) ≤ C * (t : ℝ≥0∞) ^ 2 := by
      refine le_trans (le_of_eq ?_) h
      refine lintegral_congr fun x => ?_
      rw [ENNReal.rpow_two]; rfl
    refine (ENNReal.rpow_le_rpow this (by norm_num)).trans (le_of_eq ?_)
    rw [ENNReal.mul_rpow_of_nonneg _ _ (by norm_num), ← ENNReal.rpow_two, ← ENNReal.rpow_mul]
    norm_num
  have h3 : ∫⁻ x, ‖f x‖ₑ ∂μ ≤ C ^ (1 / 2 : ℝ) * (μ Set.univ) ^ (1 / 2 : ℝ) * t := by
    simp only [Pi.mul_apply, mul_one, ENNReal.one_rpow, lintegral_const, one_mul] at h1
    refine h1.trans ?_
    calc _ ≤ (C ^ (1 / 2 : ℝ) * t) * (μ Set.univ) ^ (1 / 2 : ℝ) := by gcongr
      _ = _ := by ring
  have h4 : C ^ (1 / 2 : ℝ) * (μ Set.univ) ^ (1 / 2 : ℝ) * t ≠ ⊤ := ENNReal.mul_ne_top hK ENNReal.coe_ne_top
  refine ⟨⟨hf, lt_of_le_of_lt h3 h4.lt_top⟩, ?_⟩
  rw [integral_norm_eq_lintegral_enorm hf]
  refine (ENNReal.toReal_mono h4 h3).trans (le_of_eq ?_)
  rw [ENNReal.toReal_mul]; simp

theorem ae_fixed {X Y H E : Type*} [MeasurableSpace X] [MeasurableSpace Y] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]
    (ν : Measure X) (μ : Measure Y) [SigmaFinite ν] [SigmaFinite μ] (D : Submodule ℂ H) (P : H → X → E)
    (C : ℝ≥0∞) (hC : C ≠ ⊤) (hm : ∀ v ∈ D, AEStronglyMeasurable (P v) ν)
    (hb : ∀ v ∈ D, ∫⁻ x, (‖P v x‖₊ : ℝ≥0∞) ^ 2 ∂ν ≤ C * (‖v‖₊ : ℝ≥0∞) ^ 2)
    (hadd : ∀ v ∈ D, ∀ v' ∈ D, ∀ᵐ x ∂ν, P (v + v') x = P v x + P v' x)
    (hsm : ∀ c : ℂ, ∀ v ∈ D, ∀ᵐ x ∂ν, P (c • v) x = c • P v x)
    (τ : Y → H) (hτ : ∀ᵐ g ∂μ, τ g ∈ D ∧ ‖τ g‖ ≤ 1) (e : Y → ℂ) (he : Integrable e μ) (w : H) (hw : w ∈ D)
    (hS : ∀ u : H, ∫ g, e g * ⟪u, τ g⟫_ℂ ∂μ = ⟪u, w⟫_ℂ)
    (hj : AEStronglyMeasurable (fun p : X × Y => P (τ p.2) p.1) (ν.prod μ)) :
    ∀ᵐ x ∂ν, ∫ g, e g • P (τ g) x ∂μ = P w x := by
  have key : ∀ s : Set X, MeasurableSet s → ν s < ⊤ →
      IntegrableOn (fun x => ∫ g, e g • P (τ g) x ∂μ) s ν ∧ IntegrableOn (P w) s ν ∧
      ∫ x in s, (∫ g, e g • P (τ g) x ∂μ) ∂ν = ∫ x in s, P w x ∂ν := by
    intro s _ hs
    haveI : IsFiniteMeasure (ν.restrict s) := ⟨by simpa using hs⟩
    obtain ⟨K, hK0, hK⟩ := integrable_and_integral_norm_le_of_lintegral_sq_le (E := E) (ν.restrict s) C hC
    have hP : ∀ v ∈ D, Integrable (P v) (ν.restrict s) ∧ ∫ x, ‖P v x‖ ∂(ν.restrict s) ≤ K * ‖v‖ := fun v hv =>
      hK (P v) ‖v‖₊ (hm v hv).restrict ((lintegral_mono' Measure.restrict_le_self le_rfl).trans (hb v hv))
    have hj' : AEStronglyMeasurable (fun p : X × Y => e p.2 • P (τ p.2) p.1) ((ν.restrict s).prod μ) := by
      refine AEStronglyMeasurable.smul he.aestronglyMeasurable.comp_snd (hj.mono_ac ?_)
      exact Measure.AbsolutelyContinuous.prod Measure.absolutelyContinuous_restrict Measure.AbsolutelyContinuous.rfl
    have hI : Integrable (fun p : X × Y => e p.2 • P (τ p.2) p.1) ((ν.restrict s).prod μ) := by
      rw [integrable_prod_iff' hj']
      refine ⟨hτ.mono fun g hg => (hP _ hg.1).1.smul (e g), ?_⟩
      refine Integrable.mono' (he.norm.mul_const K) hj'.norm.prod_swap.integral_prod_right' (hτ.mono fun g hg => ?_)
      rw [Real.norm_of_nonneg (integral_nonneg fun x => norm_nonneg _)]
      simp only [norm_smul, integral_const_mul]
      refine mul_le_mul_of_nonneg_left ((hP _ hg.1).2.trans ?_) (norm_nonneg _)
      exact mul_le_of_le_one_right hK0 hg.2
    refine ⟨hI.integral_prod_left, (hP w hw).1, ?_⟩
    rw [integral_integral_swap (f := fun x g => e g • P (τ g) x) hI]
    refine ext_inner_left ℂ fun ξ => ?_
    let φ : D →ₗ[ℂ] ℂ :=
      { toFun := fun v => ⟪ξ, ∫ x in s, P v x ∂ν⟫_ℂ
        map_add' := fun v v' => by
          rw [← inner_add_right, ← integral_add (hP _ v.2).1 (hP _ v'.2).1]
          congr 1
          exact integral_congr_ae (ae_restrict_of_ae (hadd _ v.2 _ v'.2))
        map_smul' := fun c v => by
          rw [RingHom.id_apply, smul_eq_mul, ← inner_smul_right, ← integral_smul]
          congr 1
          exact integral_congr_ae (ae_restrict_of_ae (hsm c _ v.2)) }
    have hφ : ∀ v : D, ‖φ v‖ ≤ (‖ξ‖ * K) * ‖v‖ := fun v => by
      refine (norm_inner_le_norm _ _).trans ?_
      rw [mul_assoc]
      exact mul_le_mul_of_nonneg_left ((norm_integral_le_integral_norm _).trans (hP _ v.2).2) (norm_nonneg _)
    obtain ⟨ψ, hψ, -⟩ := exists_extension_norm_eq D (φ.mkContinuous _ hφ)
    have hu : ∀ v ∈ D, ⟪(InnerProductSpace.toDual ℂ H).symm ψ, v⟫_ℂ = ⟪ξ, ∫ x in s, P v x ∂ν⟫_ℂ := fun v hv => by
      rw [InnerProductSpace.toDual_symm_apply]
      exact hψ ⟨v, hv⟩
    rw [← hu w hw, ← hS, ← integral_inner hI.integral_prod_right]
    refine integral_congr_ae (hτ.mono fun g hg => ?_)
    simp only
    rw [hu _ hg.1, integral_smul, inner_smul_right]
  exact ae_eq_of_forall_setIntegral_eq_of_sigmaFinite (fun s h h' => (key s h h').1) (fun s h h' => (key s h h').2.1)
    (fun s h h' => (key s h h').2.2)

variable {k r : ℕ}

theorem sm_indicator {E : Type*} [NormedAddCommGroup E] [SecondCountableTopology E] {S : Set (Mat k r)}
    (hS : IsClosed S) {f : Mat k r → E} (hf : ContinuousOn f S) :
    StronglyMeasurable (Set.indicator {x : Mt k r | Matrix.of x ∈ S} fun x => f (Matrix.of x)) := by
  classical
  borelize E
  have hm : MeasurableSet {x : Mt k r | Matrix.of x ∈ S} := IsClosed.measurableSet (α := Mt k r) hS
  have hf' : ContinuousOn (fun x : Mt k r => f (Matrix.of x)) {x : Mt k r | Matrix.of x ∈ S} := hf
  have := hf'.measurable_piecewise (g := fun _ => (0 : E)) continuousOn_const hm
  rw [← Set.piecewise_eq_indicator]
  exact this.stronglyMeasurable

theorem aesm_of_continuousOn {E : Type*} [NormedAddCommGroup E] [SecondCountableTopology E] {S : Set (Mat k r)}
    (hS : IsClosed S) {f : Mat k r → E} (hf : ContinuousOn f S) {μ : Measure (Mt k r)}
    (hμ : ∀ᵐ x ∂μ, Matrix.of x ∈ S) : AEStronglyMeasurable (fun x : Mt k r => f (Matrix.of x)) μ :=
  (sm_indicator hS hf).aestronglyMeasurable.congr (hμ.mono fun x hx => Set.indicator_of_mem (by exact hx) _)

theorem continuous_mulM : Continuous fun p : Mt k r × Mt k r => lmulM (Matrix.of p.1) p.2 :=
  Continuous.matrix_mul (X := Mt k r × Mt k r) (A := fun p => (Matrix.of p.1 : Mat k r))
    (B := fun p => (Matrix.of p.2 : Mat k r)) continuous_fst continuous_snd

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem fdeg_eq {σ : Mat k r → (H →L[ℂ] H)} {w : H} {μG : Measure (Mt k r)} {d : ℝ} (h : SchurH μG σ d)
    (hw : ‖w‖ = 1) : fdegH μG σ w = d := by
  have h1 := (h.2 w w w w).2
  have h2 : ∀ g : Mt k r, coef σ w w (Matrix.of g) * star (coef σ w w (Matrix.of g)) =
      ((‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ ^ 2 : ℝ) : ℂ) := fun g => by
    rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq]; rfl
  simp only [h2] at h1
  rw [integral_complex_ofReal, inner_self_eq_norm_sq_to_K, hw] at h1
  have h3 : ∫ g : Mt k r, ‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ ^ 2 ∂μG = 1 / d := by
    apply Complex.ofReal_injective
    rw [h1]; simp
  unfold fdegH
  rw [h3, hw]; simp

theorem continuousOn_eFun {σ : Mat k r → (H →L[ℂ] H)} (hσ : IsURepOn (GG k r) σ) (w : H) (μG : Measure (Mt k r)) :
    ContinuousOn (eFun μG σ w) (GG k r) :=
  continuousOn_const.mul (continuousOn_const.inner (hσ.2.2 w)).star

theorem integrable_eFun {σ : Mat k r → (H →L[ℂ] H)} {w : H} {a d : ℝ} {μG : Measure (Mt k r)}
    (h : Std σ w a μG d) (hG : IsClosedSub k r (GG k r)) :
    Integrable (fun g : Mt k r => eFun μG σ w (Matrix.of g)) μG := by
  obtain ⟨hk, hσ, -, hw, hμ, -, ha, hdec, -⟩ := h
  have hae : ∀ᵐ x ∂μG, Matrix.of x ∈ GG k r := hμ.2.2.1
  have hwD : w ∈ DD σ w := by
    have := mem_DD σ w hG.2.2.1
    rwa [hσ.1.1] at this
  obtain ⟨C, hC⟩ := hdec w hwD w hwD
  have hn : (2 : ℝ) ≤ ((2 * r + k + 1 : ℕ) : ℝ) := by exact_mod_cast (by omega : 2 ≤ 2 * r + k + 1)
  have hA : 2 * ((2 * r + k + 1 : ℕ) : ℝ) ^ 2 < a := by
    refine lt_of_lt_of_le ?_ ha
    have := pow_lt_pow_right₀ (a := ((2 * r + k + 1 : ℕ) : ℝ)) (by linarith) (by norm_num : 2 < 5)
    linarith
  have hfin := _root_.GlobalTheory.SgGrowth.normInt_lt_top k r _ μG a hG hμ hA
  refine ⟨aesm_of_continuousOn hG.2.1 (continuousOn_eFun hσ w μG) hae, ?_⟩
  have hle : ∫⁻ g, ‖eFun μG σ w (Matrix.of g)‖ₑ ∂μG ≤
      ∫⁻ g, ENNReal.ofReal (|fdegH μG σ w| * |C|) * ENNReal.ofReal (opn (Matrix.of g) ^ (-a)) ∂μG := by
    refine lintegral_mono_ae (hae.mono fun g hg => ?_)
    rw [← ENNReal.ofReal_mul (by positivity), ← ofReal_norm_eq_enorm]
    refine ENNReal.ofReal_le_ofReal ?_
    unfold eFun
    rw [norm_mul, norm_star, Complex.norm_real, Real.norm_eq_abs, mul_assoc]
    refine mul_le_mul_of_nonneg_left ((hC _ hg).trans ?_) (abs_nonneg _)
    exact mul_le_mul_of_nonneg_right (le_abs_self _) (Real.rpow_nonneg (opn_nonneg _) _)
  rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top] at hle
  exact lt_of_le_of_lt hle (ENNReal.mul_lt_top ENNReal.ofReal_lt_top hfin)

theorem weak_fixed {σ : Mat k r → (H →L[ℂ] H)} {w : H} {μG : Measure (Mt k r)} {d : ℝ} (h : SchurH μG σ d)
    (hw : ‖w‖ = 1) (u : H) :
    ∫ g : Mt k r, eFun μG σ w (Matrix.of g) * ⟪u, σ (Matrix.of g) w⟫_ℂ ∂μG = ⟪u, w⟫_ℂ := by
  have h1 := (h.2 w u w w).2
  have h2 : ∀ g : Mt k r, eFun μG σ w (Matrix.of g) * ⟪u, σ (Matrix.of g) w⟫_ℂ =
      (d : ℂ) * (coef σ w u (Matrix.of g) * star (coef σ w w (Matrix.of g))) := fun g => by
    unfold eFun coef
    rw [fdeg_eq h hw]; ring
  simp only [h2]
  have hd : (d : ℂ) ≠ 0 := by exact_mod_cast h.1.ne'
  rw [integral_const_mul, h1, inner_self_eq_norm_sq_to_K, hw]
  field_simp
  simp

variable {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp]

theorem equiv_rconv {z : Fin (2 * r + k + 1) → ℂ} {ψ : Mat k r → ℂ} {π : Mat k r → (Wp →L[ℂ] Wp)}
    (hπ : IsURepOn (UWset k r z) π) (hG : IsClosedSub k r (GG k r)) {μG : Measure (Mt k r)}
    (hae : ∀ᵐ x ∂μG, Matrix.of x ∈ GG k r) (e : Mat k r → ℂ) {Φ : Mat k r → Wp} (hΦ : IsSPsiEquiv z ψ π Φ) :
    IsSPsiEquiv z ψ π (rconv μG e Φ) := by
  intro h hh m hm g hg
  let L : Wp →ₗᵢ[ℂ] Wp := ⟨(π h : Wp →ₗ[ℂ] Wp), hπ.2.1 h hh⟩
  unfold rconv
  have := L.integral_comp_comm (μ := μG) fun y => e (Matrix.of y) • Φ (g * Matrix.of y)
  change _ = π h _ at this
  rw [← this, ← integral_smul]
  refine integral_congr_ae (hae.mono fun y hy => ?_)
  simp only
  rw [mul_assoc (h * m), hΦ h hh m hm _ (hG.2.2.2.1 _ hg _ hy), smul_comm, L.map_smul]
  rfl

theorem ae_of_quot {z : Fin (2 * r + k + 1) → ℂ} {ψ : Mat k r → ℂ} {π : Mat k r → (Wp →L[ℂ] Wp)}
    {μG μS ν : Measure (Mt k r)} (hq : IsQuotMeas μG μS ν) (hS : ∀ᵐ s ∂μS, Matrix.of s ∈ Sset k r z)
    (hν : ∀ᵐ x ∂ν, Matrix.of x ∈ GG k r) (hμ : ∀ᵐ x ∂μG, Matrix.of x ∈ GG k r)
    (hG : IsClosedSub k r (GG k r)) {Φ Ψ : Mat k r → Wp} (hΦ : IsSPsiEquiv z ψ π Φ) (hΨ : IsSPsiEquiv z ψ π Ψ)
    {Φ' Ψ' : Mt k r → Wp} (mΦ : StronglyMeasurable Φ') (mΨ : StronglyMeasurable Ψ')
    (eΦ : ∀ x, Matrix.of x ∈ GG k r → Φ' x = Φ (Matrix.of x)) (eΨ : ∀ x, Matrix.of x ∈ GG k r → Ψ' x = Ψ (Matrix.of x))
    (h : ∀ᵐ x ∂ν, Φ (Matrix.of x) = Ψ (Matrix.of x)) : ∀ᵐ x ∂μG, Φ (Matrix.of x) = Ψ (Matrix.of x) := by
  have hA : MeasurableSet {x | Φ' x = Ψ' x}ᶜ := (mΦ.measurableSet_eq_fun mΨ).compl
  have h0 : μG {x | Φ' x = Ψ' x}ᶜ = 0 := by
    rw [← lintegral_indicator_one hA, hq _ (measurable_one.indicator hA)]
    refine (lintegral_congr_ae ?_).trans lintegral_zero
    filter_upwards [hν, h] with x hx hx'
    refine (lintegral_congr_ae ?_).trans lintegral_zero
    filter_upwards [hS] with s hs
    obtain ⟨a, ha, m, hm, hs⟩ := hs
    have hmem : Matrix.of s * Matrix.of x ∈ GG k r := by
      rw [hs]; exact hG.2.2.2.1 _ (hG.2.2.2.1 _ ha.1 _ hm.1) _ hx
    refine Set.indicator_of_notMem ?_ _
    simp only [Set.mem_compl_iff, not_not, Set.mem_setOf_eq]
    rw [eΦ (fun i j => (Matrix.of s * Matrix.of x) i j) hmem, eΨ (fun i j => (Matrix.of s * Matrix.of x) i j) hmem]
    change Φ (Matrix.of s * Matrix.of x) = Ψ (Matrix.of s * Matrix.of x)
    rw [hs, hΦ a ha m hm _ hx, hΨ a ha m hm _ hx, hx']
  have h1 : ∀ᵐ x ∂μG, Φ' x = Ψ' x := h0
  filter_upwards [h1, hμ] with x hx hx'
  rw [← eΦ x hx', ← eΨ x hx', hx]

theorem nonVan_of_bessel : ∀ (k r : ℕ) {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [CompleteSpace Wp] (σ : Mat k r → (H →L[ℂ] H)) (w : H) (a d : ℝ) (μG μS νS : Measure (Mt k r)) (z : (Fin (2 * r + k + 1) → ℂ)) (c : Fin r → ℂ) (π : Mat k r → (Wp →L[ℂ] Wp)) (B : H → Wp), StdSm σ w a μG d → Side z π μS → IsQuotMeas μG μS νS → IsBesselMapSm z (psiGen k r z c) σ π B → l2SG νS (fun g => B (σ g w)) ≠ 0 → l2SG νS (fun g => B (σ g w)) ≠ ⊤ → (∀ v ∈ smoothVecs σ, l2SG νS (fun g => B (σ g v)) = l2SG νS (fun g => B (σ g w)) * (‖v‖₊ : ℝ≥0∞) ^ 2) → NonVan z (psiGen k r z c) σ π w μG νS := by
  intro k r H _ _ _ Wp _ _ _ _ σ w a d μG μS ν z c π B hstd hside hq hB h0 htop hnorm
  obtain ⟨hstd, hws⟩ := hstd
  obtain ⟨hz, hT, hπ, hμS, -⟩ := hside
  obtain ⟨hG, -, -, hS, -⟩ := _root_.GlobalTheory.SgInf.closedSub_groups k r z hz hT
  have he := integrable_eFun hstd hG
  obtain ⟨-, hσ, -, hw, hμ, hsch, -, -, -⟩ := hstd
  obtain ⟨hσf, hν, -⟩ := _root_.GlobalTheory.SgInf.weil_integrable k r _ μG μS ν hS hμ hμS ((_root_.GlobalTheory.SgInf.unimodular_S_N_UW k r z hz hT μS).1 hμS) hq
  haveI := hμ.1
  haveI : SecondCountableTopology Wp := by
    haveI : ProperSpace Wp := FiniteDimensional.proper_rclike ℂ Wp
    infer_instance
  have hνG : ∀ᵐ x ∂ν, Matrix.of x ∈ GG k r := hν
  have hμG : ∀ᵐ x ∂μG, Matrix.of x ∈ GG k r := hμ.2.2.1
  have hμSS : ∀ᵐ x ∂μS, Matrix.of x ∈ Sset k r z := hμS.2.2.1
  obtain ⟨-, -, hDV, htr, hV⟩ := _root_.GlobalTheory.SgInfDD.DD_stable_dense k r σ w hσ
  have hDs : ∀ v ∈ DD σ w, IsSmoothVec σ v := fun v hv => (hV hws).1 v (hDV hv)
  have hcont : ∀ v, IsSmoothVec σ v → ContinuousOn (fun g => B (σ g v)) (GG k r) := fun v hv =>
    (_root_.GlobalTheory.diffQuot_bessel k r σ z _ π B v 0 hσ hB hv (by simp [InLieHpk])).2.1
  have hmul : ∀ x ∈ GG k r, ∀ g ∈ GG k r, σ (x * g) w = σ x (σ g w) := fun x hx g hg => by
    rw [hσ.1.2 x hx g hg]; rfl
  have hwD : w ∈ DD σ w := by
    have := mem_DD σ w hG.2.2.1
    rwa [hσ.1.1] at this
  set Φ : Mat k r → Wp := fun g => B (σ g w) with hΦ
  have hΦe : IsSPsiEquiv z (psiGen k r z c) π Φ := fun h hh m hm g hg => by
    simp only [hΦ]
    rw [hmul _ (hG.2.2.2.1 _ hh.1 _ hm.1) _ hg]
    exact hB.2.2.1 h hh m hm _ ((htr w hws).1 g hg)
  set e : Mat k r → ℂ := eFun μG σ w with hedef
  have hWe : IsSPsiEquiv z (psiGen k r z c) π (rconv μG e Φ) := equiv_rconv hπ hG hμG e hΦe
  have mΦ := sm_indicator hG.2.1 (hcont w hws)
  have me := sm_indicator hG.2.1 (continuousOn_eFun hσ w μG)
  set Φ' := Set.indicator {x : Mt k r | Matrix.of x ∈ GG k r} fun x => Φ (Matrix.of x) with hΦ'
  set e' := Set.indicator {x : Mt k r | Matrix.of x ∈ GG k r} fun x => e (Matrix.of x) with he'
  have eΦ : ∀ x, Matrix.of x ∈ GG k r → Φ' x = Φ (Matrix.of x) := fun x hx => Set.indicator_of_mem (by exact hx) _
  have ee : ∀ x, Matrix.of x ∈ GG k r → e' x = e (Matrix.of x) := fun x hx => Set.indicator_of_mem (by exact hx) _
  have mΦ2 : StronglyMeasurable fun p : Mt k r × Mt k r => Φ' (lmulM (Matrix.of p.1) p.2) :=
    mΦ.comp_measurable continuous_mulM.measurable
  have mW : StronglyMeasurable fun x : Mt k r => ∫ g, e' g • Φ' (lmulM (Matrix.of x) g) ∂μG :=
    StronglyMeasurable.integral_prod_right' (f := fun p : Mt k r × Mt k r => e' p.2 • Φ' (lmulM (Matrix.of p.1) p.2))
      ((me.comp_measurable measurable_snd).smul mΦ2)
  have eW : ∀ x : Mt k r, Matrix.of x ∈ GG k r →
      ∫ g, e' g • Φ' (lmulM (Matrix.of x) g) ∂μG = rconv μG e Φ (Matrix.of x) := fun x hx => by
    refine integral_congr_ae (hμG.mono fun g hg => ?_)
    simp only
    rw [ee g hg, eΦ (lmulM (Matrix.of x) g) (hG.2.2.2.1 _ hx _ hg)]; rfl
  have hfix : ∀ᵐ x ∂ν, rconv μG e Φ (Matrix.of x) = Φ (Matrix.of x) := by
    have := ae_fixed ν μG (DD σ w) (fun v x => B (σ (Matrix.of x) v)) (l2SG ν Φ) htop
      (fun v hv => aesm_of_continuousOn hG.2.1 (hcont v (hDs v hv)) hνG)
      (fun v hv => (hnorm v (hDs v hv)).le)
      (fun v hv v' hv' => hνG.mono fun x hx => by
        simp only [map_add (f := _)]
        exact hB.1 _ ((htr v (hDs v hv)).1 _ hx) _ ((htr v' (hDs v' hv')).1 _ hx))
      (fun t v hv => hνG.mono fun x hx => by
        simp only [map_smul]
        exact hB.2.1 t _ ((htr v (hDs v hv)).1 _ hx))
      (fun g => σ (Matrix.of g) w) (hμG.mono fun g hg => ⟨mem_DD σ w hg, by rw [hσ.2.1 _ hg, hw]⟩)
      (fun g => e (Matrix.of g)) he w hwD (weak_fixed hsch hw) (mΦ2.aestronglyMeasurable.congr (by
        filter_upwards [Measure.quasiMeasurePreserving_fst.ae hνG, Measure.quasiMeasurePreserving_snd.ae hμG]
          with p h1 h2
        rw [eΦ (lmulM (Matrix.of p.1) p.2) (hG.2.2.2.1 _ h1 _ h2), ← hmul _ h1 _ h2]; rfl))
    filter_upwards [this, hνG] with x hx hx'
    refine Eq.trans ?_ hx
    refine integral_congr_ae (hμG.mono fun g hg => ?_)
    simp only [hΦ]
    rw [hmul _ hx' _ hg]
  have hfixG : ∀ᵐ x ∂μG, rconv μG e Φ (Matrix.of x) = Φ (Matrix.of x) :=
    ae_of_quot hq hμSS hνG hμG hG hWe hΦe mW mΦ eW eΦ hfix
  have hl2 : l2SG ν (rconv μG e Φ) = l2SG ν Φ := lintegral_congr_ae (hfix.mono fun x hx => by simp only [hx])
  refine ⟨rconv μG e Φ, mW.aestronglyMeasurable.congr (hμG.mono eW), mW.aestronglyMeasurable.congr (hνG.mono eW),
    hWe, hl2 ▸ htop.lt_top, hl2 ▸ h0, fun x hx => ?_⟩
  have hml : Measurable (lmulM x : Mt k r → Mt k r) :=
    (continuous_mulM.comp (Continuous.prodMk (continuous_const (y := Matrix.of.symm x)) continuous_id)).measurable
  have hmp : MeasurePreserving (lmulM x) μG μG := ⟨hml, hμ.2.2.2 x hx⟩
  refine integral_congr_ae ((hmp.quasiMeasurePreserving.ae hfixG).mono fun g hg => ?_)
  exact congrArg (fun t => e (Matrix.of g) • t) hg

end GlobalTheory.BesselFixed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsNonzeroFixedOfSquareIntegrableBessel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHilbertSchmidtNormSqBesselAmplitudeLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHilbertSchmidtNormSqBesselAmplitudeLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MatrixOfBesselTwoSidedAction\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeEqAmpJAndBesselEqDoubleIntegral\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselModelProjectorOnLine\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsBesselMapRankOneFactorisationTranslateSpan\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsNonzeroFixedOfSquareIntegrableBessel\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHsNormSqMatrixCoeffLeFormalDegree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UhMeasurableSet\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsDenseInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UpperOff\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology Formalism.QuantumDeterminants Formalism.MainNotions.S GlobalTheory.SgInf GlobalTheory.Amp
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.Amp.SchurNorm

theorem hsNormSq_smul {Wp Wq : Type*} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (t : ℂ) (A : Wq →L[ℂ] Wp) :
    hsNormSq (t • A) = ‖t‖ ^ 2 * hsNormSq A := by
  have h : hsInner (t • A) (t • A) = ((‖t‖ ^ 2 : ℝ) : ℂ) * hsInner A A := by
    simp only [hsInner, Finset.mul_sum, ContinuousLinearMap.smul_apply, inner_smul_left, inner_smul_right]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← mul_assoc, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  rw [hsNormSq, h, Complex.re_ofReal_mul, hsNormSq]

theorem ampJ_of_smul {k r : ℕ} {Wp Wq : Type*} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] {μ : Measure (Mt k r)} (hμ : IsHaarOn (GG k r) μ)
    (c : ℝ) (t t' : ℂ) {Φ Ψ : Mat k r → Wp} {Φ' Ψ' : Mat k r → Wq} (h : ∀ g ∈ GG k r, Φ g = t • Ψ g)
    (h' : ∀ g ∈ GG k r, Φ' g = t' • Ψ' g) {γ : Mat k r} (hγ : γ ∈ GG k r) :
    ampJ μ c Φ Φ' γ = ((c : ℂ)⁻¹ * (t * star t')) • ampJ μ 1 Ψ Ψ' γ := by
  unfold ampJ
  rw [Complex.ofReal_one, inv_one, one_smul, mul_smul, ← integral_smul (t * star t')]
  congr 1
  refine integral_congr_ae ?_
  filter_upwards [show ∀ᵐ x ∂μ, Matrix.of x ∈ GG k r from hμ.2.2.1] with x hx
  rw [h _ (Formalism.FourierDecayAlt.P.DDSmoothness.uh_mul hγ hx), h' _ hx]
  ext η
  simp only [ContinuousLinearMap.smulRight_apply, innerSL_apply_apply, ContinuousLinearMap.smul_apply,
    inner_smul_left, smul_smul, Complex.star_def]
  congr 1
  ring

theorem exists_isEll_smul (k r : ℕ) {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
    {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [CompleteSpace Wp]
    (σ : Mat k r → (H →L[ℂ] H)) (v₀ : H) (a d c₀ : ℝ) (μG μS νS : Measure (Mt k r))
    (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (π : Mat k r → (Wp →L[ℂ] Wp)) (B : H → Wp) (hv : v₀ ≠ 0)
    (hS : StdSm σ (((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀) a μG d) (hz : SideIrr z π μS) (hq : IsQuotMeas μG μS νS)
    (hm : MultOne z (psiGen k r z c) σ π) (hB : IsBesselMapSm z (psiGen k r z c) σ π B) (hc : 0 < c₀)
    (h0 : l2SG νS (fun g => B (σ g v₀)) = ENNReal.ofReal (c₀ * Module.finrank ℂ Wp))
    (h1 : ∀ v ∈ smoothVecs σ, l2SG νS (fun g => B (σ g v)) * (‖v₀‖₊ : ℝ≥0∞) ^ 2 =
      l2SG νS (fun g => B (σ g v₀)) * (‖v‖₊ : ℝ≥0∞) ^ 2) :
    ∃ l : H → Wp, IsEll z (psiGen k r z c) π μS σ (DD σ (((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀)) l ∧
      ∃ t : ℂ, ‖t‖ ^ 2 = c₀ * Module.finrank ℂ Wp * d ∧
        ∀ g ∈ GG k r, B (σ g v₀) = t • l (σ g (((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀)) := by
  set w : H := ((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀ with hw
  have hn : ((‖v₀‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.2 hv
  have hvw : v₀ = ((‖v₀‖ : ℝ) : ℂ) • w := by rw [hw, smul_smul, mul_inv_cancel₀ hn, one_smul]
  obtain ⟨hStd, hsm⟩ := hS
  have hU : IsURepOn (GG k r) σ := hStd.2.1
  have hw1 : ‖w‖ = 1 := hStd.2.2.2.1
  have hw1' : ‖w‖₊ = 1 := NNReal.eq hw1
  have hG : IsHaarOn (GG k r) μG := hStd.2.2.2.2.1
  have hd : 0 < d := hStd.2.2.2.2.2.1.1
  obtain ⟨-, -, hle, hact, hinf⟩ := _root_.GlobalTheory.SgInfDD.DD_stable_dense k r σ w hU
  have hgw : ∀ g ∈ GG k r, σ g w ∈ smoothVecs (k := k) (r := r) σ := (hact w hsm).1
  haveI : Nontrivial Wp := hz.2.2
  have hdim : (0 : ℝ) < Module.finrank ℂ Wp := by exact_mod_cast Module.finrank_pos
  have hn0 : ((‖v₀‖₊ : ℝ≥0∞)) ^ 2 ≠ 0 := pow_ne_zero _ (by simpa using hv)
  have hnt : ((‖v₀‖₊ : ℝ≥0∞)) ^ 2 ≠ ⊤ := ENNReal.pow_ne_top ENNReal.coe_ne_top
  have hLw : l2SG νS (fun g => B (σ g w)) * (‖v₀‖₊ : ℝ≥0∞) ^ 2 = l2SG νS (fun g => B (σ g v₀)) := by
    rw [h1 w hsm, hw1']; simp
  have hnv : NonVan z (psiGen k r z c) σ π w μG νS := by
    refine _root_.GlobalTheory.BesselFixed.nonVan_of_bessel k r σ w a d μG μS νS z c π B ⟨hStd, hsm⟩ hz.1 hq hB ?_ ?_ ?_
    · intro h
      rw [h, zero_mul, h0] at hLw
      exact (ENNReal.ofReal_pos.2 (mul_pos hc hdim)).ne hLw
    · intro h
      rw [h, ENNReal.top_mul hn0, h0] at hLw
      exact ENNReal.ofReal_ne_top hLw.symm
    · intro v hv'
      refine (ENNReal.mul_left_inj hn0 hnt).1 ?_
      rw [h1 v hv', ← hLw]; ring
  obtain ⟨l, hl⟩ := _root_.GlobalTheory.SgInf.exists_isEll_DD k r σ w a μG d z c π μS hStd hz.1 hsm hm νS hq hnv
  refine ⟨l, hl, ?_⟩
  have hs : ∃ s : ℂ, ∀ x ∈ smoothVecs (k := k) (r := r) σ, B x = s • l x := by
    obtain ⟨s, hs | hs⟩ := hm B l hB hl.1
    · exact ⟨s, hs⟩
    · obtain ⟨u, hu, hu0⟩ := hl.2.1
      have hs0 : s ≠ 0 := by
        rintro rfl
        exact hu0 ((hs u ((hinf hsm).1 u (hle hu))).trans (zero_smul _ _))
      exact ⟨s⁻¹, fun x hx => by rw [hs x hx, smul_smul, inv_mul_cancel₀ hs0, one_smul]⟩
  obtain ⟨s, hs⟩ := hs
  have key : ∀ g ∈ GG k r, B (σ g v₀) = (((‖v₀‖ : ℝ) : ℂ) * s) • l (σ g w) := by
    intro g hg
    have e : σ g v₀ = ((‖v₀‖ : ℝ) : ℂ) • σ g w := by rw [← map_smul, ← hvw]
    rw [e, hB.2.1 _ _ (hgw g hg), hs _ (hgw g hg), smul_smul]
  refine ⟨_, ?_, key⟩
  generalize ((‖v₀‖ : ℝ) : ℂ) * s = t at key
  have hone : (1 : Mat k r) ∈ GG k r := by simp [UH]
  have hwD : w ∈ DD σ w := by
    have := mem_DD σ w hone
    rwa [hU.1.1] at this
  have hlw := (_root_.GlobalTheory.SgInf.ProjLine.projector_line k r σ w a μG d z c π μS hStd hz.1 νS hq l hl).1 w hwD
  have hμS : IsHaarOn (Sset k r z) μS := hz.1.2.2.2.1
  have hae := Formalism.FourierDecayAlt.P.DDSmoothness.ae_UH_of_quot hG.2.2.1 hμS.2.1 (measure_mono_null (by
    rintro x hx ⟨h, hh, m, hm', e⟩
    exact hx (e ▸ Formalism.FourierDecayAlt.P.DDSmoothness.uh_mul hh.1 hm'.1)) hμS.2.2.1) hq
  have e : l2SG νS (fun g => B (σ g v₀)) = ENNReal.ofReal (‖t‖ ^ 2) * l2SG νS (fun x => l (σ x w)) := by
    unfold l2SG
    rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    refine lintegral_congr_ae ?_
    filter_upwards [hae] with x hx
    rw [key _ hx, nnnorm_smul, ENNReal.coe_mul, mul_pow, ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm_eq_enorm]
    rfl
  rw [h0, hlw, hw1, ← ENNReal.ofReal_mul (sq_nonneg _),
    ENNReal.ofReal_eq_ofReal_iff (by positivity) (by positivity)] at e
  rw [e]; field_simp

theorem lintegral_hsNormSq_ampJ_le : ∀ (k r : ℕ) {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp] [CompleteSpace Wp] {Wq : Type} [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] [CompleteSpace Wq] (σ : Mat k r → (H →L[ℂ] H)) (v₀ : H) (a d c₀ : ℝ) (μG μS μS' νS νS' ν : Measure (Mt k r)) (z z' : (Fin (2 * r + k + 1) → ℂ)) (c c' : Fin r → ℂ) (π : Mat k r → (Wp →L[ℂ] Wp)) (π' : Mat k r → (Wq →L[ℂ] Wq)) (B : H → Wp) (B' : H → Wq), v₀ ≠ 0 → StdSm σ (((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀) a μG d → SideIrr z π μS → SideIrr z' π' μS' → IsQuotMeas μG μS νS → IsQuotMeas μG μS' νS' → MultOne z (psiGen k r z c) σ π → MultOne z' (psiGen k r z' c') σ π' → IsBesselMapSm z (psiGen k r z c) σ π B → IsBesselMapSm z' (psiGen k r z' c') σ π' B' → 0 < c₀ → l2SG νS (fun g => B (σ g v₀)) = ENNReal.ofReal (c₀ * Module.finrank ℂ Wp) → l2SG νS' (fun g => B' (σ g v₀)) = ENNReal.ofReal (c₀ * Module.finrank ℂ Wq) → (∀ v ∈ smoothVecs σ, l2SG νS (fun g => B (σ g v)) * (‖v₀‖₊ : ℝ≥0∞) ^ 2 = l2SG νS (fun g => B (σ g v₀)) * (‖v‖₊ : ℝ≥0∞) ^ 2) → (∀ v ∈ smoothVecs σ, l2SG νS' (fun g => B' (σ g v)) * (‖v₀‖₊ : ℝ≥0∞) ^ 2 = l2SG νS' (fun g => B' (σ g v₀)) * (‖v‖₊ : ℝ≥0∞) ^ 2) → IsDis (Greg k r z z') μG μS μS' ν → ∫⁻ γ, ENNReal.ofReal (hsNormSq (ampJ μG c₀ (fun g => B (σ g v₀)) (fun g => B' (σ g v₀)) (Matrix.of γ))) ∂ν ≤ ENNReal.ofReal ((Module.finrank ℂ Wp : ℝ) * Module.finrank ℂ Wq / d) := by
  intro k r H _ _ _ Wp _ _ _ _ Wq _ _ _ _ σ v₀ a d c₀ μG μS μS' νS νS' ν z z' c c' π π' B B' hv hS hz hz' hq hq'
    hm hm' hB hB' hc h0 h0' h1 h1' hν
  obtain ⟨l, hl, t, ht, key⟩ := exists_isEll_smul k r σ v₀ a d c₀ μG μS νS z c π B hv hS hz hq hm hB hc h0 h1
  obtain ⟨l', hl', t', ht', key'⟩ :=
    exists_isEll_smul k r σ v₀ a d c₀ μG μS' νS' z' c' π' B' hv hS hz' hq' hm' hB' hc h0' h1'
  set w : H := ((‖v₀‖ : ℝ) : ℂ)⁻¹ • v₀ with hw
  have hG : IsHaarOn (GG k r) μG := hS.1.2.2.2.2.1
  have hd : 0 < d := hS.1.2.2.2.2.2.1.1
  have hd' : (d : ℂ) ≠ 0 := by exact_mod_cast hd.ne'
  have h5 := _root_.GlobalTheory.SgInf.EllBound.lintegral_hsNormSq_ell_le k r σ w a μG d z c π μS z' c' π' μS' hS.1 hz.1 hz'.1 ν hν l l' hl hl'
  have hJ := _root_.GlobalTheory.SgInf.AmpJ.oo_eq_ampJ k r (Wp := Wp) (Wq := Wq) μG (fun x => l (σ x w)) (fun x => l' (σ x w)) hG
  have hD : (0 : ℝ) ≤ (Module.finrank ℂ Wp : ℝ) * Module.finrank ℂ Wq := by positivity
  rw [div_eq_mul_inv, ENNReal.ofReal_mul hD]
  refine le_trans (le_of_eq ?_) (mul_le_mul_right h5 _)
  rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
  refine lintegral_congr_ae ?_
  filter_upwards [show ∀ᵐ γ ∂ν, Matrix.of γ ∈ Greg k r z z' from hν.2.1] with γ hγ
  rw [ampJ_of_smul hG c₀ t t' (Ψ := fun x => l (σ x w)) (Ψ' := fun x => l' (σ x w)) key key' hγ.1,
    ← hJ _ hγ.1, ← ENNReal.ofReal_mul hD, hsNormSq_smul, hsNormSq_smul]
  congr 1
  rw [norm_mul, norm_mul, norm_star, norm_inv, mul_pow, mul_pow, ht, ht', Complex.norm_real, Complex.norm_real,
    Real.norm_of_nonneg hc.le, Real.norm_of_nonneg hd.le]
  field_simp

end GlobalTheory.Amp.SchurNorm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LintegralHilbertSchmidtNormSqBesselAmplitudeLe =====
