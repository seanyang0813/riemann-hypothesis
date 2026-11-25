module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SphericalLabelOperatorsOnHyperspecialFixedVector
public import Formalism.LocalToGlobal.IndefiniteReal.LinksStage
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Normed.Operator.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EulerOperatorInjectiveEigenvector
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Topology.UniformSpace.Uniformizable

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCovolumeOneMeasureHomSpaceOfLaws, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedVectorCoefficientLeftInvariantLevelGroup, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerProductFinsuppLocalCosetFamilies, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCoefficientNontrivialCosetsSummableBound, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalOperatorScalarOnSphericalEigenspace, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdate, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdateStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorMulLocalOperatorHasSum, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InnerNeSpherical

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCovolumeOneMeasureHomSpaceOfLaws =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCovolumeOneMeasureHomSpaceOfLaws", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

namespace GlobalTheory.RawLift.Covol

theorem exists_isCovolOne_of_laws : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → ∀ i, ∃ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F _ i
  exact GlobalTheory.Size.exists_isCovolOne (Vc D i) (Wc D i)

end GlobalTheory.RawLift.Covol
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCovolumeOneMeasureHomSpaceOfLaws =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedVectorCoefficientLeftInvariantLevelGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedVectorCoefficientLeftInvariantLevelGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.CoefLeft

theorem ip_eq_of_sq {X : Type} [MeasurableSpace X] (ν : Measure X) (a b c d : X → ℂ)
    (ha : MemLp a 2 ν) (hb : MemLp b 2 ν) (hc : MemLp c 2 ν) (hd : MemLp d 2 ν)
    (h : ∀ z : ℂ, ∫⁻ x, ‖c x + z * d x‖ₑ ^ 2 ∂ν = ∫⁻ x, ‖a x + z * b x‖ₑ ^ 2 ∂ν) :
    ∫ x, star (c x) * d x ∂ν = ∫ x, star (a x) * b x ∂ν := by
  have pt : ∀ p q : ℂ, star p * q = (1/4 : ℂ) * ((((‖p + 1 * q‖ ^ 2 : ℝ)) : ℂ) - ((‖p + (-1) * q‖ ^ 2 : ℝ) : ℂ)
      + Complex.I * ((‖p + (-Complex.I) * q‖ ^ 2 : ℝ) : ℂ) - Complex.I * ((‖p + Complex.I * q‖ ^ 2 : ℝ) : ℂ)) := by
    intro p q
    have e : ∀ w : ℂ, ((‖w‖ ^ 2 : ℝ) : ℂ) = w * (starRingEnd ℂ) w := by
      intro w; rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]
    simp only [e, map_add (f := _), map_mul, map_neg, map_one, Complex.conj_I]
    show (starRingEnd ℂ) p * q = _
    ring_nf
    try (simp only [Complex.I_sq]; ring)
  have mem : ∀ (f g : X → ℂ), MemLp f 2 ν → MemLp g 2 ν → ∀ z : ℂ,
      Integrable (fun x => (((‖f x + z * g x‖ ^ 2 : ℝ)) : ℂ)) ν := by
    intro f g hf hg z
    have h2 : MemLp (fun x => f x + z * g x) 2 ν := hf.add (hg.const_mul z)
    have : Integrable (fun x => ‖f x + z * g x‖ ^ 2) ν := by
      have := h2.integrable_norm_pow (p := 2) (by norm_num)
      simpa using this
    exact this.ofReal
  have Q : ∀ (f g : X → ℂ), MemLp f 2 ν → MemLp g 2 ν → ∀ z : ℂ,
      ∫ x, (((‖f x + z * g x‖ ^ 2 : ℝ)) : ℂ) ∂ν = (((∫⁻ x, ‖f x + z * g x‖ₑ ^ 2 ∂ν).toReal : ℝ) : ℂ) := by
    intro f g hf hg z
    rw [integral_complex_ofReal]
    congr 1
    have hm : AEStronglyMeasurable (fun x => f x + z * g x) ν :=
      (hf.add (hg.const_mul z)).aestronglyMeasurable
    rw [integral_eq_lintegral_of_nonneg_ae (f := fun x => ‖f x + z * g x‖ ^ 2)
      (Filter.Eventually.of_forall fun x => by simp only [Pi.zero_apply]; positivity) (hm.norm.pow 2)]
    congr 1
    refine lintegral_congr fun x => ?_
    rw [← ofReal_norm_eq_enorm, ENNReal.ofReal_pow (norm_nonneg _)]
  have expand : ∀ (f g : X → ℂ), MemLp f 2 ν → MemLp g 2 ν →
      ∫ x, star (f x) * g x ∂ν = (1/4 : ℂ) * ((((∫⁻ x, ‖f x + 1 * g x‖ₑ ^ 2 ∂ν).toReal : ℝ) : ℂ)
        - (((∫⁻ x, ‖f x + (-1) * g x‖ₑ ^ 2 ∂ν).toReal : ℝ) : ℂ)
        + Complex.I * (((∫⁻ x, ‖f x + (-Complex.I) * g x‖ₑ ^ 2 ∂ν).toReal : ℝ) : ℂ)
        - Complex.I * (((∫⁻ x, ‖f x + Complex.I * g x‖ₑ ^ 2 ∂ν).toReal : ℝ) : ℂ)) := by
    intro f g hf hg
    simp_rw [pt (f _) (g _)]
    rw [integral_const_mul, integral_sub, integral_add, integral_sub, integral_const_mul, integral_const_mul,
      Q f g hf hg, Q f g hf hg, Q f g hf hg, Q f g hf hg]
    · exact mem f g hf hg 1
    · exact mem f g hf hg (-1)
    · exact (mem f g hf hg 1).sub (mem f g hf hg (-1))
    · exact (mem f g hf hg (-Complex.I)).const_mul _
    · exact ((mem f g hf hg 1).sub (mem f g hf hg (-1))).add ((mem f g hf hg (-Complex.I)).const_mul _)
    · exact (mem f g hf hg Complex.I).const_mul _
  rw [expand c d hc hd, expand a b ha hb, h 1, h (-1), h (-Complex.I), h Complex.I]

end GlobalTheory.RawLift.CoefLeft

namespace GlobalTheory.RawLift.CoefLeft

variable {D : D7}

theorem isThetaFunO_add_smul {S T' : HSp D} {ψ : AddChar (AF D.host.F) ℂ} {f g : WO S T' → ℂ}
    (hf : IsThetaFunO ψ S T' f) (hg : IsThetaFunO ψ S T' g) (z : ℂ) : IsThetaFunO ψ S T' (f + z • g) := {
  quasi γ w := by
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    rw [hf.quasi, hg.quasi]; ring
  level := by
    obtain ⟨U₁, hU₁, h₁⟩ := hf.level
    obtain ⟨U₂, hU₂, h₂⟩ := hg.level
    refine ⟨U₁ ⊓ U₂, by rw [AddSubgroup.coe_inf]; exact hU₁.inter hU₂, fun u hu hu0 => ?_⟩
    have e1 := h₁ u hu.1 hu0
    have e2 := h₂ u hu.2 hu0
    funext w
    have e1' := congrFun e1 w
    have e2' := congrFun e2 w
    simp only [heisO, Pi.add_apply, Pi.smul_apply, smul_eq_mul] at e1' e2' ⊢
    rw [← e1', ← e2']; ring_nf
  cont := hf.cont.add (hg.cont.const_smul z)
  smooth k L hL hL0 w := by
    have := (hf.smooth k L hL hL0 w).add ((hg.smooth k L hL hL0 w).const_smul z)
    simpa only [Pi.add_apply, Pi.smul_apply] using this }

theorem memLp_two_of_lintegral {X : Type} [MeasurableSpace X] {ν : Measure X} {f : X → ℂ}
    (hm : AEStronglyMeasurable f ν) (h : ∫⁻ x, ‖f x‖ₑ ^ 2 ∂ν < ⊤) : MemLp f 2 ν := by
  rw [memLp_two_iff_integrable_sq_norm hm]
  refine ⟨hm.norm.pow 2, ?_⟩
  rw [hasFiniteIntegral_iff_enorm]
  simpa [enorm_pow] using h

end GlobalTheory.RawLift.CoefLeft

namespace GlobalTheory.RawLift.CoefLeft

theorem aesm_of_theta {D : D7} {S T' : HSp D} {ψ : AddChar (AF D.host.F) ℂ} {f : WO S T' → ℂ} (ν : Measure (WO S T'))
    (hf : IsThetaFunO ψ S T' f) : AEStronglyMeasurable f ν := by
  haveI : OpensMeasurableSpace (WO S T') := ⟨le_rfl⟩
  exact hf.cont.aestronglyMeasurable

theorem thetaInner_weilRep {D : D7} {S T' : HSp D} {ψ : AddChar (AF D.host.F) ℂ} {χS χT : (AE D)ˣ →* Circle}
    {om : GA D S × GA D T' →* Module.End ℂ (WO S T' → ℂ)} (hW : IsWeilDatumO ψ S T' χS χT om)
    {μ : Measure (WO S T')} {𝓕 : Set (WO S T')} (hμ : IsCovolOne (ratL T' S) μ 𝓕) (p : GA D S × GA D T')
    {u v : WO S T' → ℂ} (hu : IsThetaFunO ψ S T' u) (hv : IsThetaFunO ψ S T' v)
    (hu2 : ∫⁻ w in 𝓕, ‖u w‖ₑ ^ 2 ∂μ < ⊤) (hv2 : ∫⁻ w in 𝓕, ‖v w‖ₑ ^ 2 ∂μ < ⊤) :
    thetaIP μ 𝓕 (om p u) (om p v) = thetaIP μ 𝓕 u v := by
  have un := fun f (hf : IsThetaFunO ψ S T' f) => hW.om_unit μ 𝓕 hμ.1 hμ.2.1 p f hf
  unfold thetaIP
  refine ip_eq_of_sq (μ.restrict 𝓕) u v (om p u) (om p v)
    (memLp_two_of_lintegral (aesm_of_theta _ hu) hu2) (memLp_two_of_lintegral (aesm_of_theta _ hv) hv2)
    (memLp_two_of_lintegral (aesm_of_theta _ (hW.om_pres p u hu)) (by rw [un u hu]; exact hu2))
    (memLp_two_of_lintegral (aesm_of_theta _ (hW.om_pres p v hv)) (by rw [un v hv]; exact hv2)) (fun z => ?_)
  have := un (u + z • v) (isThetaFunO_add_smul hu hv z)
  simpa only [map_add (f := _), map_smul, Pi.add_apply, Pi.smul_apply, smul_eq_mul] using this

theorem thetaIP₂ {D : D7} {S T' : HSp D} {μ : Measure (WO S T')} {𝓕 : Set (WO S T')}
    {v : WO S T' → ℂ} (h : thetaIP μ 𝓕 v v ≠ 0) : ∫⁻ w in 𝓕, ‖v w‖ₑ ^ 2 ∂μ < ⊤ := by
  have hi : Integrable (fun w => star (v w) * v w) (μ.restrict 𝓕) := by
    by_contra hn
    exact h (integral_undef hn)
  have := hi.hasFiniteIntegral
  rw [hasFiniteIntegral_iff_enorm] at this
  simpa [enorm_mul, sq] using this

end GlobalTheory.RawLift.CoefLeft

namespace GlobalTheory.RawLift.CoefLeft



theorem coef_lev_mul : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → ∀ i t, LevFix R i t → ∀ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → ∀ k ∈ levW R i, ∀ g, coef R i t μ 𝓕 (k * g) = coef R i t μ 𝓕 g := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hL i t hfix μ 𝓕 hμ k hk g
  have hW := hL.thP.ωP i t
  have hv1 : R.ωP i t (1, k) (R.vP i t) = R.vP i t := by
    have := hfix k hk 1
    rwa [Model.pureTensor_one] at this
  have hvθ : IsThetaFunO R.ψ (Vc D i) (Wc D i) (R.vP i t) := by
    have := hL.thP.pt_theta i t 1
    rwa [Model.pureTensor_one] at this
  unfold coef
  by_cases h0 : thetaIP μ 𝓕 (R.vP i t) (R.vP i t) = 0
  · rw [h0, div_zero, div_zero]
  congr 1
  have e : R.ωP i t (1, k * g) = R.ωP i t (1, k) * R.ωP i t (1, g) := by rw [← map_mul]; simp
  rw [e, Module.End.mul_apply]
  have hv2 := thetaIP₂ h0
  have huθ := hW.om_pres (1, g) _ hvθ
  have hu2 : ∫⁻ w in 𝓕, ‖R.ωP i t (1, g) (R.vP i t) w‖ₑ ^ 2 ∂μ < ⊤ := by
    rw [hW.om_unit μ 𝓕 hμ.1 hμ.2.1 (1, g) _ hvθ]; exact hv2
  have key := thetaInner_weilRep hW hμ (1, k) huθ hvθ hu2 hv2
  rwa [hv1] at key

end GlobalTheory.RawLift.CoefLeft

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedVectorCoefficientLeftInvariantLevelGroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerProductFinsuppLocalCosetFamilies =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerProductFinsuppLocalCosetFamilies", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.FamSum

section Generic

theorem map_listProd {Γ ι : Type} [Group Γ] (c : Γ →* Γ) (v : ι) (r : ι → Γ) (h1 : c (r v) = r v)
    (h0 : ∀ w, w ≠ v → c (r w) = 1) (l : List ι) (hl : l.Nodup) :
    c (l.map r).prod = if v ∈ l then r v else 1 := by
  induction l with
  | nil => simp
  | cons a l ih =>
    rw [List.nodup_cons] at hl
    rw [List.map_cons, List.prod_cons, map_mul, ih hl.2]
    by_cases ha : a = v
    · subst ha
      simp [hl.1, h1]
    · simp [h0 a ha, Ne.symm ha]

theorem mul_listProd {Γ ι : Type} [Group Γ] (φ : Γ → ℂ) (h1 : φ 1 = 1) (r : ι → Γ) (S : ι → Subgroup Γ)
    (hS : ∀ v w, w ≠ v → r w ∈ S v) (hφ : ∀ v, ∀ γ ∈ S v, φ (γ * r v) = φ γ * φ (r v)) (l : List ι) (hl : l.Nodup) :
    φ (l.map r).prod = (l.map fun w => φ (r w)).prod := by
  induction l using List.reverseRecOn with
  | nil => simpa using h1
  | append_singleton l a ih =>
    rw [List.nodup_append] at hl
    simp only [List.map_append, List.prod_append, List.map_cons, List.map_nil, List.prod_cons, List.prod_nil, mul_one]
    rw [hφ a, ih hl.1]
    refine (S a).list_prod_mem fun x hx => ?_
    obtain ⟨w, hw, rfl⟩ := List.mem_map.1 hx
    exact hS a w (hl.2.2 w hw a (List.mem_singleton_self a))

end Generic

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem isFinIdem_fid (D : D7) (v : HeightOneSpectrum (𝓞 D.host.F)) : IsFinIdem D v (Eu.fid D v) := by
  have h : ∃ f, IsFinIdem D v f := by
    obtain ⟨ε, hε⟩ := GlobalTheory.IdemSupport.exists_placeIdem (D := D) v
    exact ⟨_, ε, hε, rfl⟩
  unfold Eu.fid
  rw [dite_eq_left h]
  exact h.choose_spec

theorem fid_orth {v w : HeightOneSpectrum (𝓞 D.host.F)} (h : v ≠ w) : Eu.fid D v * Eu.fid D w = 0 := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  obtain ⟨ε, hε, e⟩ := isFinIdem_fid D v
  obtain ⟨ε', hε', e'⟩ := isFinIdem_fid D w
  rw [e, e']
  exact GlobalTheory.IdemSupport.place_orth hΦ hε hε' h

theorem mem_GfC_of_fid (V : HSp D) {v : HeightOneSpectrum (𝓞 D.host.F)} {g : GA D V} (h : SuppF V (Eu.fid D v) g) :
    g ∈ GfC V := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  obtain ⟨ε, hε, e⟩ := isFinIdem_fid D v
  rw [e] at h
  exact GlobalTheory.IdemSupport.mem_GfC_of_suppF V (GlobalTheory.IdemSupport.place_comp hΦ hε).1 h

theorem trivAt_iff (V : HSp D) (f : Formalism.L2.Theta.AE D) (g : GA D V) :
    TrivAt V f g ↔ g ∈ GlobalTheory.IdemSupport.suppGroup V (1 - f) := by
  change _ ↔ SuppF V (1 - f) g
  refine forall_congr' fun i => forall_congr' fun j => ?_
  constructor <;> intro h <;> linear_combination -h

theorem eq_one_of_supp_triv (V : HSp D) {f : Formalism.L2.Theta.AE D} {g : GA D V} (h : SuppF V f g) (h' : TrivAt V f g) :
    g = 1 := by
  apply GlobalTheory.IdemSupport.mt_inj V
  rw [GlobalTheory.IdemSupport.mt_one, ← sub_eq_zero]
  ext a b
  rw [← h a b, h' a b]
  rfl

theorem trivAt_of_supp (V : HSp D) {f f' : Formalism.L2.Theta.AE D} (hf : f * f' = 0) {g : GA D V} (h : SuppF V f' g) :
    TrivAt V f g := by
  intro a b
  rw [← h a b, ← mul_assoc, hf, zero_mul]

theorem cmp_self (V : HSp D) {f : Formalism.L2.Theta.AE D} {g c : GA D V} (hg : SuppF V f g) (hc : SuppF V f c)
    (ht : TrivAt V f (g * c⁻¹)) : c = g := by
  have : g * c⁻¹ ∈ GlobalTheory.IdemSupport.suppGroup V f := mul_mem hg (inv_mem (show c ∈ _ from hc))
  have h := eq_one_of_supp_triv V this ht
  exact (mul_inv_eq_one.1 h).symm

theorem cmp_other (V : HSp D) {f : Formalism.L2.Theta.AE D} {g c : GA D V} (hg : TrivAt V f g) (hc : SuppF V f c)
    (ht : TrivAt V f (g * c⁻¹)) : c = 1 := by
  refine eq_one_of_supp_triv V hc ?_
  rw [trivAt_iff] at hg ht ⊢
  have := mul_mem (inv_mem ht) hg
  simpa using this

theorem rep_supp {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : Eu.LX R i v) :
    Eu.rep x ∈ GfC (Wc D i) ∧ SuppF (Wc D i) (Eu.fid D v) (Eu.rep x) := (Quotient.out x).2

theorem eq_of_rep {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} {x y : Eu.LX R i v}
    (h : (Eu.rep x)⁻¹ * Eu.rep y ∈ levW R i) : x = y := by
  rw [← Quotient.out_eq x, ← Quotient.out_eq y]
  apply Quotient.sound
  change ((QuotientGroup.leftRel (levW R i)).comap _) _ _
  rw [Setoid.comap_rel, QuotientGroup.leftRel_apply]
  exact h

theorem rep_mk {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (g : Eu.locSet R i v) :
    (Eu.rep (R := R) (i := i) (v := v) (Quotient.mk _ g))⁻¹ * g.1 ∈ levW R i := by
  have h := Quotient.mk_out (s := (QuotientGroup.leftRel (levW R i)).comap
    (Subtype.val : Eu.locSet R i v → GA D (Wc D i))) g
  rw [Setoid.comap_rel, QuotientGroup.leftRel_apply] at h
  exact h

theorem famProd_mem (R : RealDat D A Ks) (i : Fin D.R.m) (F : ∀ v, Eu.LX R i v) : Eu.famProd R i F ∈ GfC (Wc D i) := by
  unfold Eu.famProd
  split_ifs with h
  · refine Subgroup.list_prod_mem _ fun x hx => ?_
    obtain ⟨w, -, rfl⟩ := List.mem_map.1 hx
    exact (rep_supp (F w)).1
  · exact one_mem _

theorem cmp_famProd (R : RealDat D A Ks) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.host.F))
    (c : GA D (Wc D i) →* GA D (Wc D i))
    (hc : ∀ g, SuppF (Wc D i) (Eu.fid D v) (c g) ∧ TrivAt (Wc D i) (Eu.fid D v) (g * (c g)⁻¹))
    (F : ∀ v, Eu.LX R i v) (hF : {w | F w ≠ Eu.lx0 R i w}.Finite) :
    (c (Eu.famProd R i F))⁻¹ * Eu.rep (F v) ∈ levW R i := by
  unfold Eu.famProd
  rw [dite_eq_left hF, map_listProd c v (fun w => Eu.rep (F w)) (cmp_self _ (rep_supp (F v)).2 (hc _).1 (hc _).2)
    (fun w hw => cmp_other _ (trivAt_of_supp _ (fid_orth hw.symm) (rep_supp (F w)).2) (hc _).1 (hc _).2) _
    (Finset.nodup_toList _)]
  split_ifs with h
  · rw [inv_mul_cancel]; exact one_mem _
  · have : F v = Eu.lx0 R i v := by
      by_contra hne
      exact h (Finset.mem_toList.2 (hF.mem_toFinset.2 hne))
    rw [inv_one, one_mul, this]
    exact Eu.trivial_level_coset_representative_mem_level R i v

def famCls (R : RealDat D A Ks) (i : Fin D.R.m) (F : {F : ∀ v, Eu.LX R i v // {w | F w ≠ Eu.lx0 R i w}.Finite}) :
    GfC (Wc D i) ⧸ (levW R i).subgroupOf (GfC (Wc D i)) :=
  QuotientGroup.mk ⟨Eu.famProd R i F.1, famProd_mem R i F.1⟩

theorem famCls_bijective (R : RealDat D A Ks) (i : Fin D.R.m) (h : LevProd R i) : Function.Bijective (famCls R i) := by
  obtain ⟨-, -, cmp, h1, h2⟩ := h
  have hc := fun v => cmp_famProd R i v (cmp v) (h1 v _ (isFinIdem_fid D v))
  constructor
  · intro F F' e
    have e1 : (Eu.famProd R i F.1)⁻¹ * Eu.famProd R i F'.1 ∈ levW R i :=
      Subgroup.mem_subgroupOf.1 (QuotientGroup.eq.1 e)
    have e2 := (h2 _ (mul_mem (inv_mem (famProd_mem R i F.1)) (famProd_mem R i F'.1))).1.1 e1
    refine Subtype.ext (funext fun v => eq_of_rep ?_)
    have e3 := e2 v
    rw [map_mul, map_inv] at e3
    have := mul_mem (mul_mem (inv_mem (hc v F.1 F.2)) e3) (hc v F'.1 F'.2)
    simpa only [_root_.mul_inv_rev, inv_inv, mul_assoc, mul_inv_cancel_left] using this
  · intro q
    obtain ⟨⟨g, hg⟩, rfl⟩ := QuotientGroup.mk_surjective q
    have hm : ∀ v, cmp v g ∈ Eu.locSet R i v := fun v =>
      ⟨mem_GfC_of_fid _ (h1 v _ (isFinIdem_fid D v) g).1, (h1 v _ (isFinIdem_fid D v) g).1⟩
    let F : ∀ v, Eu.LX R i v := fun v => Quotient.mk _ ⟨cmp v g, hm v⟩
    have hr : ∀ v, (Eu.rep (F v))⁻¹ * cmp v g ∈ levW R i := fun v => rep_mk ⟨cmp v g, hm v⟩
    have hF : {w | F w ≠ Eu.lx0 R i w}.Finite := by
      refine (h2 g hg).2.subset fun w hw hk => hw (eq_of_rep ?_)
      have := mul_mem (mul_mem (hr w) (inv_mem hk)) (Eu.trivial_level_coset_representative_mem_level R i w)
      simpa only [mul_assoc, mul_inv_cancel_left] using this
    refine ⟨⟨F, hF⟩, QuotientGroup.eq.2 (Subgroup.mem_subgroupOf.2 ?_)⟩
    change (Eu.famProd R i F)⁻¹ * g ∈ levW R i
    refine (h2 _ (mul_mem (inv_mem (famProd_mem R i F)) hg)).1.2 fun v => ?_
    rw [map_mul, map_inv]
    have := mul_mem (hc v F hF) (hr v)
    simpa only [mul_assoc, mul_inv_cancel_left] using this

theorem out_famCls (R : RealDat D A Ks) (i : Fin D.R.m)
    (F : {F : ∀ v, Eu.LX R i v // {w | F w ≠ Eu.lx0 R i w}.Finite}) :
    ∃ k ∈ levW R i, ((famCls R i F).out : GfC (Wc D i)) = Eu.famProd R i F.1 * k := by
  obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul ((levW R i).subgroupOf (GfC (Wc D i)))
    ⟨Eu.famProd R i F.1, famProd_mem R i F.1⟩
  exact ⟨k.1.1, Subgroup.mem_subgroupOf.1 k.2, congrArg Subtype.val hk⟩

theorem coef_famProd (R : RealDat D A Ks) (i : Fin D.R.m) (t : T) (hM : FinMult R i t) (hLF : LevFix R i t)
    (hVN : VecNe R i t) {μ 𝓕} (hμ : IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕)
    (F : ∀ v, Eu.LX R i v) (hF : {w | F w ≠ Eu.lx0 R i w}.Finite) :
    coef R i t μ 𝓕 (Eu.famProd R i F) = ∏ᶠ v, Eu.acoef R i t μ 𝓕 v (F v) := by
  rw [finprod_eq_prod_of_mulSupport_subset (s := hF.toFinset), ← Finset.prod_map_toList]
  · unfold Eu.famProd
    rw [dite_eq_left hF]
    refine mul_listProd (coef R i t μ 𝓕) (Model.coef_one R i t hVN μ 𝓕 hμ) (fun w => Eu.rep (F w))
      (fun v => GfC (Wc D i) ⊓ GlobalTheory.IdemSupport.suppGroup (Wc D i) (1 - Eu.fid D v)) (fun v w hw => ?_)
      (fun v γ hγ => ?_) _ (Finset.nodup_toList _)
    · exact ⟨(rep_supp (F w)).1, (trivAt_iff _ _ _).1 (trivAt_of_supp _ (fid_orth hw.symm) (rep_supp (F w)).2)⟩
    · exact hM μ 𝓕 hμ v _ (isFinIdem_fid D v) γ hγ.1 ((trivAt_iff _ _ _).2 hγ.2) _ (rep_supp (F v)).2
  · intro v hv
    rw [Finset.mem_coe, Set.Finite.mem_toFinset]
    intro e
    apply hv
    change Eu.acoef R i t μ 𝓕 v (F v) = 1
    rw [e]
    exact Eu.local_coefficient_trivial_level_coset hLF hVN hμ v

theorem trPair_eq_bop {R : RealDat D A Ks} {i : Fin D.R.m} (h : TransLaws R i) {γ : GA D (Wc D i)}
    (hγ : γ ∈ GfC (Wc D i)) (x y) : trPair R i γ x y = ⟪x, Eu.Bop R i γ y⟫_ℂ := by
  have hex := h.2.2.1 γ hγ
  unfold Eu.Bop
  rw [dite_eq_left hex]
  exact hex.choose_spec.2 x y

theorem coef_out (R : RealDat D A Ks) (i : Fin D.R.m) (t : T) (hM : FinMult R i t) (hLF : LevFix R i t)
    (hVN : VecNe R i t) {μ 𝓕} (hμ : IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕)
    (F : {F : ∀ v, Eu.LX R i v // {w | F w ≠ Eu.lx0 R i w}.Finite}) :
    coef R i t μ 𝓕 ((famCls R i F).out : GfC (Wc D i)) = ∏ᶠ v, Eu.acoef R i t μ 𝓕 v (F.1 v) := by
  obtain ⟨k, hk, e⟩ := out_famCls R i F
  rw [e, Model.coef_mul_lev R i t hLF μ 𝓕 _ k hk, coef_famProd R i t hM hLF hVN hμ F.1 F.2]

theorem trPair_out (R : RealDat D A Ks) (i : Fin D.R.m) (hT : TransLaws R i)
    (F : {F : ∀ v, Eu.LX R i v // {w | F w ≠ Eu.lx0 R i w}.Finite}) (x y) :
    trPair R i ((famCls R i F).out : GfC (Wc D i)) x y = ⟪x, Eu.Bfam R i F.1 y⟫_ℂ := by
  obtain ⟨k, hk, e⟩ := out_famCls R i F
  have e2 := hT.2.2.2.1 _ (famProd_mem R i F.1) 1 (one_mem _) k hk x y
  rw [one_mul] at e2
  rw [e, e2, trPair_eq_bop hT (famProd_mem R i F.1)]
  unfold Eu.Bfam
  rfl

theorem hasSum_reindex {X Y : Type} (e : X → Y) (he : Function.Bijective e) (a s : ℂ) (c p : Y → ℂ) (c' p' : X → ℂ)
    (hc : ∀ F, c (e F) = c' F) (hp : ∀ F, p (e F) = p' F) (H : HasSum (fun q => a * (c q * p q)) s) :
    HasSum (fun F => a * (c' F * p' F)) s := by
  have H1 := (Equiv.ofBijective _ he).hasSum_iff.2 H
  refine (congrArg (fun f => HasSum f s) (funext fun F => ?_)).mp H1
  rw [← hc, ← hp]
  rfl



theorem hasSum_families : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ i t, LevProd R i → TransLaws R i → FinMult R i t → LevFix R i t → VecNe R i t → FinSum R i t → ∀ th, IsRaw R i t th → ∀ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → ∃ a : ℝ, 0 < a ∧ ∀ x y, HasSum (fun F : {F : ∀ v, Eu.LX R i v // {w | F w ≠ Eu.lx0 R i w}.Finite} => (a : ℂ) * ((∏ᶠ v, Eu.acoef R i t μ 𝓕 v (F.1 v)) * ⟪x, Eu.Bfam R i F.1 y⟫_ℂ)) ⟪LinearMap.adjoint th x, LinearMap.adjoint th y⟫_ℂ := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i t hP hT hM hLF hVN hS th hth μ 𝓕 hμ
  refine (hS th hth μ 𝓕 hμ).imp fun a H => ⟨H.1, fun x y => ?_⟩
  exact hasSum_reindex (famCls R i) (famCls_bijective R i hP) _ _ _ _ _ _ (coef_out R i t hM hLF hVN hμ)
    (fun F => trPair_out R i hT F x y) (H.2 x y)

end GlobalTheory.RawLift.FamSum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerProductFinsuppLocalCosetFamilies =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCoefficientNontrivialCosetsSummableBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCoefficientNontrivialCosetsSummableBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.Eu

section
variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem lx_eq_of_rep_rel {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} {x y : LX R i v}
    (h : (rep x)⁻¹ * rep y ∈ levW R i) : x = y := by
  have : (Quotient.mk _ (Quotient.out x) : LX R i v) = Quotient.mk _ (Quotient.out y) := by
    apply Quotient.sound
    change ((QuotientGroup.leftRel (levW R i)).comap (Subtype.val : locSet R i v → GA D (Wc D i))) _ _
    rw [Setoid.comap_rel, QuotientGroup.leftRel_apply]
    exact h
  exact (Quotient.out_eq x).symm.trans (this.trans (Quotient.out_eq y))

theorem rep_notMem_levW {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} {x : LX R i v}
    (hx : x ≠ lx0 R i v) : rep x ∉ levW R i := fun h =>
  hx (lx_eq_of_rep_rel ((levW R i).mul_mem ((levW R i).inv_mem h) (trivial_level_coset_representative_mem_level R i v)))

theorem rep_suppF {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : LX R i v) :
    SuppF (Wc D i) (fid D v) (rep x) := (Quotient.out x).2.2

theorem eq_one_of_suppF_zero {V : HSp D} {g : GA D V} (h : SuppF V 0 g) : g = 1 := by
  have e : Formalism.L2.Theta.mt V g = Formalism.L2.Theta.mt V 1 := by
    have h1 : Formalism.L2.Theta.mt V 1 = 1 := rfl
    rw [h1, ← sub_eq_zero]
    ext a b
    have := h a b
    simpa [eq_comm] using this
  exact Subtype.ext (Units.ext e)

end

theorem acoef_small : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ i t, LocSmall R i t → ∀ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → ∃ s : HeightOneSpectrum (𝓞 D.host.F) → ℝ, Summable s ∧ (∀ v, s v < 1) ∧ ∀ v (C : Finset (Eu.LX R i v)), Eu.lx0 R i v ∉ C → ∑ x ∈ C, ‖Eu.acoef R i t μ 𝓕 v x‖ ≤ s v := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i t hLS μ 𝓕 hμ
  obtain ⟨s, hs, hs1, hb⟩ := hLS μ 𝓕 hμ
  refine ⟨fun v => max (s v) 0, ?_, fun v => max_lt (hs1 v) one_pos, ?_⟩
  · refine Summable.of_nonneg_of_le (fun v => le_max_right _ _) (fun v => ?_) hs.abs
    exact max_le (le_abs_self _) (abs_nonneg _)
  · intro v C hC
    by_cases hex : ∃ f, IsFinIdem D v f
    · have hf : IsFinIdem D v (fid D v) := by
        unfold fid
        rw [dite_eq_left hex]
        exact hex.choose_spec
      have hinj : Function.Injective (rep : LX R i v → GA D (Wc D i)) := fun x y h =>
        lx_eq_of_rep_rel (by rw [h, inv_mul_cancel]; exact (levW R i).one_mem)
      have := hb v _ hf (C.image rep) ?_ ?_
      · rw [Finset.sum_image (fun x _ y _ h => hinj h)] at this
        exact this.trans (le_max_left _ _)
      · intro g hg
        obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hg
        exact ⟨rep_suppF x, rep_notMem_levW fun e => hC (e ▸ hx)⟩
      · intro g hg g' hg' h
        obtain ⟨x, _, rfl⟩ := Finset.mem_image.1 hg
        obtain ⟨y, _, rfl⟩ := Finset.mem_image.1 hg'
        rw [lx_eq_of_rep_rel h]
    · have hf : fid D v = 0 := by
        unfold fid
        rw [dite_eq_right hex]
      have hC0 : C = ∅ := by
        refine Finset.eq_empty_of_forall_notMem fun x hx => ?_
        have h1 : rep x = 1 := eq_one_of_suppF_zero (hf ▸ rep_suppF x)
        exact rep_notMem_levW (fun e => hC (e ▸ hx)) (h1 ▸ (levW R i).one_mem)
      rw [hC0, Finset.sum_empty]
      exact le_max_right _ _

end GlobalTheory.RawLift.Eu

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCoefficientNontrivialCosetsSummableBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalOperatorScalarOnSphericalEigenspace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalOperatorScalarOnSphericalEigenspace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SphericalLabelOperatorsOnHyperspecialFixedVector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.Eig

theorem mem_of_fibres {X Q H : Type} [NormedAddCommGroup H] [NormedSpace ℂ H] [CompleteSpace H] {g : X → H} {a : H}
    (hg : HasSum g a) (π : X → Q) (L : Submodule ℂ H) (hL : IsClosed (L : Set H))
    (h : ∀ x₀, ∃ s : Finset X, (∀ x, π x = π x₀ ↔ x ∈ s) ∧ ∑ x ∈ s, g x ∈ L) : a ∈ L := by
  have h1 := hg.tsum_fiberwise π
  refine hL.mem_of_tendsto h1 (Filter.Eventually.of_forall fun s => L.sum_mem fun c _ => ?_)
  by_cases hc : ∃ x₀, π x₀ = c
  · obtain ⟨x₀, rfl⟩ := hc
    obtain ⟨s, hs, hm⟩ := h x₀
    have e : π ⁻¹' {π x₀} = (s : Set X) := Set.ext fun x => hs x
    rw [e, Finset.tsum_subtype' s g]
    exact hm
  · have e : π ⁻¹' {c} = ((∅ : Finset X) : Set X) := Set.ext fun x => by
      simp only [Set.mem_preimage, Set.mem_singleton_iff, Finset.coe_empty, Set.mem_empty_iff_false, iff_false]
      exact fun hx => hc ⟨x, hx⟩
    rw [e, Finset.tsum_subtype' ∅ g, Finset.sum_empty]
    exact L.zero_mem

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem isFinIdem_fid (D : D7) (v : HeightOneSpectrum (𝓞 D.host.F)) : IsFinIdem D v (Eu.fid D v) := by
  have h : ∃ f, IsFinIdem D v f := by
    obtain ⟨ε, hε⟩ := GlobalTheory.IdemSupport.exists_placeIdem (D := D) v
    exact ⟨_, ε, hε, rfl⟩
  unfold Eu.fid
  rw [dite_eq_left h]
  exact h.choose_spec

theorem exists_primeIdem {v : HeightOneSpectrum (𝓞 D.host.F)} {f : AE D} (hf : IsFinIdem D v f) :
    ∃ P e, P.under (𝓞 D.host.F) = v ∧ IsPrimeIdem P e f := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  haveI := v.isMaximal
  obtain ⟨Q, hQ, hQv⟩ := Ideal.exists_maximal_ideal_liesOver_of_isIntegral (S := 𝓞 D.host.E) v.asIdeal
  have hne : Q ≠ ⊥ := Ideal.ne_bot_of_liesOver_of_ne_bot v.ne_bot Q
  let P : HeightOneSpectrum (𝓞 D.host.E) := ⟨Q, hQ.isPrime, hne⟩
  have hP : P.under (𝓞 D.host.F) = v := HeightOneSpectrum.ext hQv.over.symm
  obtain ⟨e, f', h⟩ := GlobalTheory.IdemSupport.exists_isPrimeIdem hΦ P
  obtain ⟨-, ε, hε, rfl⟩ := GlobalTheory.IdemSupport.of_isPrimeIdem hΦ h
  obtain ⟨ε', hε', rfl⟩ := hf
  rw [hP] at hε
  rw [GlobalTheory.IdemSupport.placeIdem_unique hε' hε]
  exact ⟨P, e, hP, h⟩

theorem primeIdem_of_under {v : HeightOneSpectrum (𝓞 D.host.F)} {f : AE D} (hf : IsFinIdem D v f)
    {P : HeightOneSpectrum (𝓞 D.host.E)} (hP : P.under (𝓞 D.host.F) = v) : ∃ e, IsPrimeIdem P e f := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  obtain ⟨e, f', h⟩ := GlobalTheory.IdemSupport.exists_isPrimeIdem hΦ P
  obtain ⟨-, ε, hε, rfl⟩ := GlobalTheory.IdemSupport.of_isPrimeIdem hΦ h
  obtain ⟨ε', hε', rfl⟩ := hf
  rw [hP] at hε
  rw [GlobalTheory.IdemSupport.placeIdem_unique hε' hε]
  exact ⟨e, h⟩

variable {R : RealDat D A Ks} {i : Fin D.R.m}

theorem bop_spec (hTL : TransLaws R i) {γ : GA D (Wc D i)} (hγ : γ ∈ GfC (Wc D i)) (x y) :
    trPair R i γ x y = ⟪x, Eu.Bop R i γ y⟫_ℂ := by
  have hex := hTL.2.2.1 γ hγ
  unfold Eu.Bop
  rw [dite_eq_left hex]
  exact hex.choose_spec.2 x y

theorem bop_mul_lev (hLP : LevProd R i) (hTL : TransLaws R i) {γ k : GA D (Wc D i)} (hγ : γ ∈ GfC (Wc D i))
    (hk : k ∈ levW R i) : Eu.Bop R i (γ * k) = Eu.Bop R i γ := by
  apply ContinuousLinearMap.ext
  intro y
  apply ext_inner_left ℂ
  intro x
  rw [← bop_spec hTL hγ, ← bop_spec hTL (mul_mem hγ (hLP.1 hk))]
  have := hTL.2.2.2.1 γ hγ 1 (one_mem _) k hk x y
  rwa [one_mul] at this

theorem hecke_sum_good {F : Face D A} (hL : Laws R F) (hTL : TransLaws R i) {c} {y} (hy : y ∈ part R i ∅ c)
    {v : HeightOneSpectrum (𝓞 D.host.F)} {f : AE D} (hf : IsFinIdem D v f)
    (hv : ∀ P ∈ R.Pg, P.under (𝓞 D.host.F) ≠ v) {α : GA D (Wc D i)} (hα : SuppF (Wc D i) f α)
    {C : Finset (GA D (Wc D i))} (hC : ∀ γ ∈ C, SuppF (Wc D i) f γ)
    (hCR : IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) f k} α C) :
    ∃ z : ℂ, ∑ δ ∈ C, Eu.Bop R i δ y = z • y := by
  obtain ⟨y', hy', hs⟩ := hTL.2.1 v f hf α hα C hC hCR y
  have e1 : ∑ δ ∈ C, Eu.Bop R i δ y = y' := by
    apply ext_inner_left ℂ
    intro x
    rw [← hTL.2.2.2.2.2 x y', hs 1 (one_mem _) x, inner_sum]
    refine Finset.sum_congr rfl fun δ hδ => ?_
    rw [one_mul, bop_spec hTL (hCR.1 δ hδ).1]
  obtain ⟨P, e, hPv, hP⟩ := exists_primeIdem hf
  obtain ⟨n, hβ⟩ := hL.lev.βW i
  obtain ⟨hJ, hχ, -⟩ := (GlobalTheory.LevSplit.lev_split (Wc D i) (R.βW i) (R.ΛW i) (1 ^ n) (R.datWp i R.triv) hβ).2 P e f hP
    (by rw [one_pow, Nat.cast_one]; exact (Ideal.ne_top_iff_one _).1 P.isPrime.ne_top)
    (by
      intro PP hPP
      have h1 : PP ∈ R.Pg := hPP.resolve_right (Finset.notMem_empty _)
      refine ⟨fun h => hv PP h1 (h ▸ hPv), fun h => hv PP h1 ?_⟩
      rw [(GlobalTheory.IdemSupport.isConjPl_iff _ _).1 h, GlobalTheory.IdemSupport.under_cP] at hPv
      exact hPv)
  obtain ⟨-, ϖ, -, h1, h2⟩ := GlobalTheory.SphLabelOps.exists_real_unif D P
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  have he : e * e = e := GlobalTheory.IdemSupport.delta_idem hΦ (GlobalTheory.IdemSupport.of_isPrimeIdem hΦ hP).1
  obtain ⟨d, hd, hD⟩ := GlobalTheory.SphLabelOps.exists_divAt (Wc D i) he (GlobalTheory.SphLabelOps.tie_of_isPrimeIdem hP) h1 h2 α
  have hop : Hecke₂ (Wc D i) (levS _ (R.βW i) (R.datWp i R.triv)) (levChi _ (R.βW i) (R.datWp i R.triv)) ∅ P d C :=
    ⟨e, f, ϖ, α, fun w hw => absurd hw (Finset.notMem_empty w), hP, h1, h2, hd, hJ, hχ, hα, hD, hC, hCR⟩
  have hm := (Submodule.mem_comap.1 hy).2
  simp only [SetLike.mem_coe, Submodule.mem_iInf] at hm
  have hk := hm P d C hop
  rw [LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero] at hk
  refine ⟨c P d, e1.trans ((hL.models.HW i (sg0 D A)).1 ?_)⟩
  rw [hy', hk, map_smul]
  rfl

theorem hecke_sum_mem {F : Face D A} (hL : Laws R F) {t : T} (hB : BadSupp R i t) (hLP : LevProd R i)
    (hTL : TransLaws R i) {μ 𝓕} (hμ : IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕) {c} {y} (hy : y ∈ part R i ∅ c)
    {v : HeightOneSpectrum (𝓞 D.host.F)} {f : AE D} (hf : IsFinIdem D v f)
    {α : GA D (Wc D i)} (hα : SuppF (Wc D i) f α)
    {C : Finset (GA D (Wc D i))} (hC : ∀ γ ∈ C, SuppF (Wc D i) f γ)
    (hCR : IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) f k} α C) :
    coef R i t μ 𝓕 α • ∑ δ ∈ C, Eu.Bop R i δ y ∈ Submodule.span ℂ {y} := by
  by_cases hv : ∀ P ∈ R.Pg, P.under (𝓞 D.host.F) ≠ v
  · obtain ⟨z, hz⟩ := hecke_sum_good hL hTL hy hf hv hα hC hCR
    rw [hz]
    exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self y))
  · push_neg at hv
    obtain ⟨P, hP, hPv⟩ := hv
    obtain ⟨e, he⟩ := primeIdem_of_under hf hPv
    by_cases hk : α ∈ levW R i
    · refine Submodule.smul_mem _ _ (Submodule.sum_mem _ fun δ hδ => ?_)
      obtain ⟨-, k₁, hk₁, k₂, hk₂, rfl⟩ := hCR.1 δ hδ
      have := bop_mul_lev hLP hTL (one_mem _) (mul_mem (mul_mem hk₁.1 hk) hk₂.1)
      rw [one_mul] at this
      rw [this, Eu.bop_one hTL]
      exact Submodule.mem_span_singleton_self y
    · rw [hB μ 𝓕 hμ P (Or.inl hP) e f he α hα hk, zero_smul]
      exact Submodule.zero_mem _

theorem mk_eq_iff {v : HeightOneSpectrum (𝓞 D.host.F)} (g : Eu.locSet R i v) (x : Eu.LX R i v) :
    (Quotient.mk _ g : Eu.LX R i v) = x ↔ g.1⁻¹ * Eu.rep x ∈ levW R i := by
  rw [← QuotientGroup.leftRel_apply]
  exact Quotient.mk_eq_iff_out



theorem zop_eigen : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → ∀ i t, BadSupp R i t → LevFix R i t → LocSmall R i t → LevProd R i → TransLaws R i → ∀ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → (∀ k ∈ levW R i, ∀ g, coef R i t μ 𝓕 (k * g) = coef R i t μ 𝓕 g) → ∀ c, ∀ y ∈ part R i ∅ c, ∀ v, ∃ z : ℂ, Eu.Zop R i t μ 𝓕 v y = z • y := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hL i t hB hLF _ hLP hTL μ 𝓕 hμ hleft c y hy v
  suffices h : Eu.Zop R i t μ 𝓕 v y ∈ Submodule.span ℂ {y} by
    obtain ⟨z, hz⟩ := Submodule.mem_span_singleton.1 h
    exact ⟨z, hz.symm⟩
  unfold Eu.Zop
  by_cases hs : Summable fun x : Eu.LX R i v => Eu.acoef R i t μ 𝓕 v x • Eu.Bop R i (Eu.rep x)
  swap
  · rw [tsum_eq_zero_of_not_summable hs]
    exact Submodule.zero_mem _
  have hf := isFinIdem_fid D v
  obtain ⟨P, e, -, hP⟩ := exists_primeIdem hf
  have h0 := (GlobalTheory.IdemSupport.supported_group_and_prime_idempotents (Wc D i)).2.2.1 P e _ hP
  obtain ⟨S, hS⟩ := ((GlobalTheory.IdemSupport.supported_group_and_prime_idempotents (Wc D i)).1 _ h0.1 h0.2.1).1
  have hloc : ∀ g, g ∈ S → g ∈ Eu.locSet R i v := fun g hg => ⟨h0.2.2.1 g ((hS g).1 hg), (hS g).1 hg⟩
  have hrep : ∀ x : Eu.LX R i v, Eu.rep x ∈ S := fun x => (hS _).2 (Quotient.out x).2.2
  have hsum := (ContinuousLinearMap.apply ℂ _ y).hasSum hs.hasSum
  refine mem_of_fibres hsum (fun x => DoubleCoset.mk (levW R i ⊓ S) (levW R i ⊓ S) (Eu.rep x)) _
    (Submodule.closed_of_finiteDimensional _) fun x₀ => ?_
  have hα : SuppF (Wc D i) (Eu.fid D v) (Eu.rep x₀) := (hS _).1 (hrep x₀)
  obtain ⟨C, hC, hCR⟩ := hTL.1 v _ hf _ hα
  have hK : ∀ k, k ∈ {k | k ∈ levW R i ∧ SuppF (Wc D i) (Eu.fid D v) k} ↔ k ∈ levW R i ⊓ S := fun k =>
    and_congr_right fun _ => (hS k).symm
  obtain ⟨φ, hφ⟩ : ∃ φ : GA D (Wc D i) → Eu.LX R i v, ∀ δ ∈ C, ∀ x, φ δ = x ↔ δ⁻¹ * Eu.rep x ∈ levW R i ⊓ S := by
    have key : ∀ δ : GA D (Wc D i), ∃ x' : Eu.LX R i v, δ ∈ C → ∀ x, x' = x ↔ δ⁻¹ * Eu.rep x ∈ levW R i ⊓ S := by
      intro δ
      by_cases hδ : δ ∈ C
      · have h1 := (hS δ).2 (hC δ hδ)
        exact ⟨Quotient.mk _ ⟨δ, hloc δ h1⟩, fun _ x =>
          (mk_eq_iff ⟨δ, hloc δ h1⟩ x).trans ⟨fun h => ⟨h, S.mul_mem (S.inv_mem h1) (hrep x)⟩, fun h => h.1⟩⟩
      · exact ⟨Eu.lx0 R i v, fun h => absurd h hδ⟩
    choose φ hφ using key
    exact ⟨φ, hφ⟩
  have hdc : ∀ δ ∈ C, ∃ k₁ ∈ levW R i ⊓ S, ∃ k₂ ∈ levW R i ⊓ S, Eu.rep (φ δ) = k₁ * Eu.rep x₀ * k₂ := fun δ hδ => by
    obtain ⟨-, k₁, hk₁, k₂, hk₂, e1⟩ := hCR.1 δ hδ
    refine ⟨k₁, (hK _).1 hk₁, k₂ * (δ⁻¹ * Eu.rep (φ δ)), mul_mem ((hK _).1 hk₂) ((hφ δ hδ _).1 rfl), ?_⟩
    rw [← mul_assoc, ← e1, mul_inv_cancel_left]
  refine ⟨C.image φ, fun x => ?_, ?_⟩
  · rw [eq_comm, DoubleCoset.eq, Finset.mem_image]
    constructor
    · rintro ⟨k₁, hk₁, k₂, hk₂, e1⟩
      obtain ⟨δ, ⟨hδ, h1⟩, -⟩ := hCR.2 _ ⟨k₁, (hK _).2 hk₁, k₂, (hK _).2 hk₂, e1⟩
      exact ⟨δ, hδ, (hφ δ hδ x).2 ((hK _).1 h1)⟩
    · rintro ⟨δ, hδ, rfl⟩
      exact hdc δ hδ
  · rw [Finset.sum_image]
    · have := hecke_sum_mem hL hB hLP hTL hμ hy hf hα hC hCR
      rw [Finset.smul_sum] at this
      refine (congrArg (· ∈ Submodule.span ℂ {y}) (Finset.sum_congr rfl fun δ hδ => ?_)).mpr this
      obtain ⟨k₁, hk₁, k₂, hk₂, e1⟩ := hdc δ hδ
      have e2 : Eu.acoef R i t μ 𝓕 v (φ δ) = coef R i t μ 𝓕 (Eu.rep x₀) := by
        unfold Eu.acoef
        rw [e1, Model.coef_mul_lev R i t hLF μ 𝓕 _ _ hk₂.1, hleft _ hk₁.1]
      have e3 : Eu.Bop R i (Eu.rep (φ δ)) = Eu.Bop R i δ := by
        rw [← bop_mul_lev hLP hTL (hCR.1 δ hδ).1 ((hφ δ hδ _).1 rfl).1, mul_inv_cancel_left]
      rw [ContinuousLinearMap.apply_apply, e2, e3, ContinuousLinearMap.smul_apply]
    · intro δ hδ δ' hδ' h
      obtain ⟨k₁, hk₁, k₂, hk₂, e1⟩ := hdc δ hδ
      obtain ⟨δ₀, -, hu⟩ := hCR.2 _ ⟨k₁, (hK _).2 hk₁, k₂, (hK _).2 hk₂, e1⟩
      exact (hu δ ⟨hδ, (hK _).2 ((hφ δ hδ _).1 rfl)⟩).trans (hu δ' ⟨hδ', (hK _).2 ((hφ δ' hδ' _).1 h.symm)⟩).symm

end GlobalTheory.RawLift.Eig

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalOperatorScalarOnSphericalEigenspace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdate =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdate", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.Eu

theorem prod_toList_insert_comm {ι M : Type} [Monoid M] [DecidableEq ι] (s : Finset ι) (v : ι) (hv : v ∉ s) (f : ι → M)
    (hc : ∀ a b, a ≠ b → Commute (f a) (f b)) :
    ((insert v s).toList.map f).prod = (s.toList.map f).prod * f v := by
  have hp : ((insert v s).toList.map f).Perm ((v :: s.toList).map f) := (Finset.toList_insert hv).map f
  have hpw : ((insert v s).toList.map f).Pairwise Commute := by
    rw [List.pairwise_map]
    exact (Finset.nodup_toList _).imp fun h => hc _ _ h
  rw [hp.prod_eq' hpw, List.map_cons, List.prod_cons]
  refine (Commute.list_prod_right _ _ fun y hy => ?_).eq
  obtain ⟨w, hw, rfl⟩ := List.mem_map.1 hy
  refine hc _ _ ?_
  rintro rfl
  exact hv (Finset.mem_toList.1 hw)

theorem fid_orth (D : D7) {v w : HeightOneSpectrum (𝓞 D.host.F)} (h : v ≠ w) : fid D v * fid D w = 0 := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  unfold fid
  split_ifs with h1 h2
  · obtain ⟨ε, hε, e⟩ := h1.choose_spec
    obtain ⟨ε', hε', e'⟩ := h2.choose_spec
    rw [e, e']
    exact GlobalTheory.IdemSupport.place_orth hΦ hε hε' h
  · exact mul_zero _
  · exact zero_mul _
  · exact zero_mul _

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem rep_mem_locSet {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : LX R i v) :
    rep x ∈ locSet R i v := (Quotient.out x).2

theorem rep_commute {R : RealDat D A Ks} {i : Fin D.R.m} {v w : HeightOneSpectrum (𝓞 D.host.F)} (h : v ≠ w)
    (x : LX R i v) (y : LX R i w) : Commute (rep x) (rep y) :=
  GlobalTheory.IdemSupport.commute_of_suppF _ (fid_orth D h) (rep_mem_locSet x).2 (rep_mem_locSet y).2

theorem famProd_mem_GfC (R : RealDat D A Ks) (i : Fin D.R.m) (F : ∀ v, LX R i v) :
    famProd R i F ∈ GfC (Wc D i) := by
  unfold famProd
  split_ifs with h
  · refine Subgroup.list_prod_mem _ fun y hy => ?_
    obtain ⟨w, -, rfl⟩ := List.mem_map.1 hy
    exact (rep_mem_locSet _).1
  · exact Subgroup.one_mem _

theorem bop_congr (R : RealDat D A Ks) (i : Fin D.R.m) {γ γ' : GA D (Wc D i)}
    (h : trPair R i γ = trPair R i γ') : Bop R i γ = Bop R i γ' := by
  unfold Bop
  rw [h]

theorem famProd_update_of_ne (R : RealDat D A Ks) (i : Fin D.R.m) (F : ∀ v, LX R i v)
    (hF : {w | F w ≠ lx0 R i w}.Finite) (v : HeightOneSpectrum (𝓞 D.host.F)) (hv : F v = lx0 R i v) (x : LX R i v)
    (hx : x ≠ lx0 R i v) : famProd R i (Function.update F v x) = famProd R i F * rep x := by
  have hs : {w | Function.update F v x w ≠ lx0 R i w} = insert v {w | F w ≠ lx0 R i w} := by
    ext w
    by_cases hw : w = v
    · subst hw
      simp [hx]
    · simp [hw]
  have hF' : {w | Function.update F v x w ≠ lx0 R i w}.Finite := by
    rw [hs]; exact hF.insert v
  have ht : hF'.toFinset = insert v hF.toFinset := by
    ext w
    rw [Set.Finite.mem_toFinset, hs, Finset.mem_insert, Set.Finite.mem_toFinset, Set.mem_insert_iff]
  have hnv : v ∉ hF.toFinset := by
    rw [Set.Finite.mem_toFinset]
    exact fun h => h hv
  unfold famProd
  rw [dite_eq_left hF, dite_eq_left hF', ht,
    prod_toList_insert_comm hF.toFinset v hnv (fun w => rep (Function.update F v x w))
      (fun a b h => rep_commute h _ _)]
  congr 1
  · congr 1
    refine List.map_congr_left fun w hw => ?_
    have : w ≠ v := by
      rintro rfl
      exact hnv (Finset.mem_toList.1 hw)
    rw [Function.update_of_ne this]
  · simp only [Function.update_self]

theorem bop_famProd_update : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ i, TransLaws R i → ∀ (F : ∀ v, Eu.LX R i v), {w | F w ≠ Eu.lx0 R i w}.Finite → ∀ v, F v = Eu.lx0 R i v → Eu.famProd R i F ∈ GfC (Wc D i) ∧ ∀ x : Eu.LX R i v, Eu.Bop R i (Eu.famProd R i (Function.update F v x)) = Eu.Bop R i (Eu.famProd R i F * Eu.rep x) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i hTL F hF v hv
  refine ⟨famProd_mem_GfC R i F, fun x => ?_⟩
  by_cases hx : x = lx0 R i v
  · have hu : Function.update F v x = F := by
      rw [hx, ← hv]; exact Function.update_eq_self v F
    rw [hu]
    refine bop_congr R i (funext fun a => funext fun b => ?_)
    have := hTL.2.2.2.1 _ (famProd_mem_GfC R i F) 1 (Subgroup.one_mem _) (rep x) (hx ▸ trivial_level_coset_representative_mem_level R i v) a b
    rw [one_mul] at this
    exact this.symm
  · rw [famProd_update_of_ne R i F hF v hv x hx]

end GlobalTheory.RawLift.Eu

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdate =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdateStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdateStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

theorem _root_.GlobalTheory.T.rightTranslateOperator_familyProd_update : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ i, TransLaws R i → ∀ (F : ∀ v, Eu.LX R i v), {w | F w ≠ Eu.lx0 R i w}.Finite → ∀ v, F v = Eu.lx0 R i v → Eu.famProd R i F ∈ GfC (Wc D i) ∧ ∀ x : Eu.LX R i v, Eu.Bop R i (Eu.famProd R i (Function.update F v x)) = Eu.Bop R i (Eu.famProd R i F * Eu.rep x) := by
  first | exact @GlobalTheory.RawLift.Eu.bop_famProd_update
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdateStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorMulLocalOperatorHasSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorMulLocalOperatorHasSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.InvolutionSphericalHeckeAnti\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.Eu

section Local
variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem unitaryAdeleMatrix_injective (V : HSp D) : Function.Injective (Formalism.L2.Theta.mt V) := by
  intro g h hgh
  have h1 : matHom V g = matHom V h := Units.ext hgh
  exact (HR (AF D.host.F) D.sp.cm.sig V.gram).subtype_injective h1

theorem supportedAtIdempotent_iff_smul_matrix_sub_one (V : HSp D) (f : AE D) (g : GA D V) :
    SuppF V f g ↔ f • (Formalism.L2.Theta.mt V g - 1) = Formalism.L2.Theta.mt V g - 1 := by
  constructor
  · intro h; ext a b; rw [Matrix.smul_apply, smul_eq_mul]; exact h a b
  · intro h a b; have := congrFun (congrFun h a) b; rw [Matrix.smul_apply, smul_eq_mul] at this; exact this

theorem supportedAtAdeleIdempotent_mul_closed (V : HSp D) (f : AE D) {g h : GA D V} (hg : SuppF V f g) (hh : SuppF V f h) :
    SuppF V f (g * h) := by
  rw [supportedAtIdempotent_iff_smul_matrix_sub_one] at *
  have e : Formalism.L2.Theta.mt V (g * h) - 1 = (Formalism.L2.Theta.mt V g - 1) * (Formalism.L2.Theta.mt V h - 1) +
      (Formalism.L2.Theta.mt V g - 1) + (Formalism.L2.Theta.mt V h - 1) := by
    rw [GlobalTheory.SplitPlace.mt_mul]; noncomm_ring
  rw [e, smul_add, smul_add, ← Matrix.smul_mul, hg, hh]

theorem supportedAtAdeleIdempotent_inv_closed (V : HSp D) (f : AE D) {g : GA D V} (hg : SuppF V f g) : SuppF V f g⁻¹ := by
  rw [supportedAtIdempotent_iff_smul_matrix_sub_one] at *
  have hm : Formalism.L2.Theta.mt V g⁻¹ * Formalism.L2.Theta.mt V g = 1 := by rw [← GlobalTheory.SplitPlace.mt_mul, inv_mul_cancel]; rfl
  have e : Formalism.L2.Theta.mt V g⁻¹ - 1 = -(Formalism.L2.Theta.mt V g⁻¹ * (Formalism.L2.Theta.mt V g - 1)) := by
    rw [Matrix.mul_sub, hm]; noncomm_ring
  rw [e, smul_neg, ← Matrix.mul_smul, hg]

theorem supportedAtIdempotent_zero_eq_one (V : HSp D) {g : GA D V} (hg : SuppF V 0 g) : g = 1 := by
  rw [supportedAtIdempotent_iff_smul_matrix_sub_one, zero_smul] at hg
  apply unitaryAdeleMatrix_injective V
  rw [GlobalTheory.SplitPlace.mt_one]
  exact (sub_eq_zero.mp hg.symm)

theorem rightTranslatePairingOperator_spec {R : RealDat D A Ks} {i : Fin D.R.m} (hTL : TransLaws R i) {γ : GA D (Wc D i)}
    (hγ : γ ∈ GfC (Wc D i)) : ∀ x y, trPair R i γ x y = ⟪x, Bop R i γ y⟫_ℂ := by
  have hex := hTL.2.2.1 γ hγ
  unfold Bop
  rw [dite_eq_left hex]
  exact hex.choose_spec.2

theorem rightTranslatePairingOperator_eq_of_forms {R : RealDat D A Ks} {i : Fin D.R.m} (hTL : TransLaws R i) {γ : GA D (Wc D i)}
    (hγ : γ ∈ GfC (Wc D i)) (B : (R.HW i (sg0 D A)).H →L[ℂ] (R.HW i (sg0 D A)).H)
    (hB : ∀ x y, trPair R i γ x y = ⟪x, B y⟫_ℂ) : Bop R i γ = B := by
  apply ContinuousLinearMap.ext; intro y
  apply ext_inner_left ℂ; intro x
  rw [← rightTranslatePairingOperator_spec hTL hγ x y, hB]

theorem finite_mul_liftLevel_mem_finite {R : RealDat D A Ks} {i : Fin D.R.m} (hTL : TransLaws R i) {γ k : GA D (Wc D i)}
    (hγ : γ ∈ GfC (Wc D i)) (hk : k ∈ levW R i) (hγk : γ * k ∈ GfC (Wc D i)) : Bop R i (γ * k) = Bop R i γ := by
  apply rightTranslatePairingOperator_eq_of_forms hTL hγk
  intro x y
  have := hTL.2.2.2.1 γ hγ 1 (levW R i).one_mem k hk x y
  rw [one_mul] at this
  rw [this, rightTranslatePairingOperator_spec hTL hγ]

theorem rightTranslatePairingOperator_hecke_relation {R : RealDat D A Ks} {i : Fin D.R.m} (hTL : TransLaws R i) {v : HeightOneSpectrum (𝓞 D.host.F)}
    {f : AE D} (hf : IsFinIdem D v f) {α : GA D (Wc D i)} (hα : SuppF (Wc D i) f α) (C : Finset (GA D (Wc D i)))
    (hCs : ∀ δ ∈ C, SuppF (Wc D i) f δ)
    (hC : IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) f k} α C) {γ : GA D (Wc D i)}
    (hγ : γ ∈ GfC (Wc D i)) :
    Bop R i γ * ∑ δ ∈ C, Bop R i δ = ∑ δ ∈ C, Bop R i (γ * δ) := by
  have hCG : ∀ δ ∈ C, δ ∈ GfC (Wc D i) := fun δ hδ => (hC.1 δ hδ).1
  apply ContinuousLinearMap.ext; intro y
  obtain ⟨y', -, hy'⟩ := hTL.2.1 v f hf α hα C hCs hC y
  have e1 : y' = ∑ δ ∈ C, Bop R i δ y := by
    apply ext_inner_left ℂ; intro x
    rw [inner_sum, ← hTL.2.2.2.2.2 x y', hy' 1 (GfC (Wc D i)).one_mem x]
    refine Finset.sum_congr rfl fun δ hδ => ?_
    rw [one_mul, rightTranslatePairingOperator_spec hTL (hCG δ hδ)]
  rw [ContinuousLinearMap.mul_apply, ContinuousLinearMap.sum_apply, ContinuousLinearMap.sum_apply, ← e1]
  apply ext_inner_left ℂ; intro x
  rw [inner_sum, ← rightTranslatePairingOperator_spec hTL hγ, hy' γ hγ x]
  refine Finset.sum_congr rfl fun δ hδ => ?_
  rw [rightTranslatePairingOperator_spec hTL (mul_mem hγ (hCG δ hδ))]

def mkLX (R : RealDat D A Ks) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.host.F)) (g : GA D (Wc D i))
    (hg : g ∈ locSet R i v) : LX R i v :=
  Quotient.mk _ ⟨g, hg⟩

theorem levelCosetRepresentative_mem_supportedSet {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : LX R i v) :
    rep x ∈ locSet R i v := (Quotient.out x).2

theorem placeSupportedLevelCoset_representative_eq {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : LX R i v) :
    mkLX R i v (rep x) (levelCosetRepresentative_mem_supportedSet x) = x := Quotient.out_eq x

theorem placeSupportedLevelCoset_eq_iff {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)}
    {g g' : GA D (Wc D i)} (hg : g ∈ locSet R i v) (hg' : g' ∈ locSet R i v) :
    mkLX R i v g hg = mkLX R i v g' hg' ↔ g⁻¹ * g' ∈ levW R i := by
  constructor
  · intro h
    have h2 := Quotient.exact h
    exact QuotientGroup.leftRel_apply.mp h2
  · intro h
    apply Quotient.sound
    exact QuotientGroup.leftRel_apply.mpr h

theorem representative_placeSupportedLevelCoset_rel {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)}
    {g : GA D (Wc D i)} (hg : g ∈ locSet R i v) : ∃ k ∈ levW R i, rep (mkLX R i v g hg) = g * k := by
  have h := placeSupportedLevelCoset_representative_eq (mkLX R i v g hg)
  rw [placeSupportedLevelCoset_eq_iff] at h
  refine ⟨g⁻¹ * rep (mkLX R i v g hg), ?_, by group⟩
  have := (levW R i).inv_mem h
  simpa using this

theorem levelCoset_eq_iff_representative_rel {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x y : LX R i v) :
    x = y ↔ (rep x)⁻¹ * rep y ∈ levW R i := by
  constructor
  · rintro rfl; rw [inv_mul_cancel]; exact (levW R i).one_mem
  · intro h
    have := (placeSupportedLevelCoset_eq_iff (levelCosetRepresentative_mem_supportedSet x) (levelCosetRepresentative_mem_supportedSet y)).mpr h
    rwa [placeSupportedLevelCoset_representative_eq, placeSupportedLevelCoset_representative_eq] at this

theorem eq_trivialLevelCoset_iff_representative_mem {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)} (x : LX R i v) :
    x = lx0 R i v ↔ rep x ∈ levW R i := by
  have e : lx0 R i v = mkLX R i v 1 (one_mem_locSet R i v) := rfl
  conv_lhs => rw [e, ← placeSupportedLevelCoset_representative_eq x]
  rw [placeSupportedLevelCoset_eq_iff, mul_one, inv_mem_iff]

theorem chosenFinitePlaceIdempotent_spec {v : HeightOneSpectrum (𝓞 D.host.F)} (h : ∃ f, IsFinIdem D v f) : IsFinIdem D v (fid D v) := by
  unfold fid; rw [dite_eq_left h]; exact h.choose_spec

theorem chosenFinitePlaceIdempotent_eq_zero_of_not_exists {v : HeightOneSpectrum (𝓞 D.host.F)} (h : ¬ ∃ f, IsFinIdem D v f) : fid D v = 0 := by
  unfold fid; rw [dite_eq_right h]

def dcSetoid (R : RealDat D A Ks) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.host.F)) : Setoid (LX R i v) where
  r x y := ∃ k₁ ∈ {k | k ∈ levW R i ∧ SuppF (Wc D i) (fid D v) k}, ∃ k₂ ∈ {k | k ∈ levW R i ∧ SuppF (Wc D i) (fid D v) k},
    rep y = k₁ * rep x * k₂
  iseqv := by
    refine ⟨fun x => ⟨1, ⟨(levW R i).one_mem, (Model.trivAt_one _ _).2⟩, 1, ⟨(levW R i).one_mem, (Model.trivAt_one _ _).2⟩,
      by group⟩, ?_, ?_⟩
    · rintro x y ⟨k₁, ⟨h1l, h1s⟩, k₂, ⟨h2l, h2s⟩, h⟩
      refine ⟨k₁⁻¹, ⟨(levW R i).inv_mem h1l, supportedAtAdeleIdempotent_inv_closed _ _ h1s⟩, k₂⁻¹,
        ⟨(levW R i).inv_mem h2l, supportedAtAdeleIdempotent_inv_closed _ _ h2s⟩, ?_⟩
      rw [h]; group
    · rintro x y z ⟨k₁, ⟨h1l, h1s⟩, k₂, ⟨h2l, h2s⟩, h⟩ ⟨l₁, ⟨g1l, g1s⟩, l₂, ⟨g2l, g2s⟩, h'⟩
      refine ⟨l₁ * k₁, ⟨mul_mem g1l h1l, supportedAtAdeleIdempotent_mul_closed _ _ g1s h1s⟩, k₂ * l₂,
        ⟨mul_mem h2l g2l, supportedAtAdeleIdempotent_mul_closed _ _ h2s g2s⟩, ?_⟩
      rw [h', h]; group

def dcMap {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)}
    (C : Quotient (dcSetoid R i v) → Finset (GA D (Wc D i)))
    (hCs : ∀ b, ∀ δ ∈ C b, SuppF (Wc D i) (fid D v) δ)
    (hC : ∀ b, IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) (fid D v) k} (rep (Quotient.out b)) (C b))
    (p : Σ b, ↥(C b)) : LX R i v :=
  mkLX R i v p.2.1 ⟨((hC p.1).1 p.2.1 p.2.2).1, hCs p.1 p.2.1 p.2.2⟩

theorem placeSupportedDoubleCosetMap_bijective {R : RealDat D A Ks} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.host.F)}
    (C : Quotient (dcSetoid R i v) → Finset (GA D (Wc D i)))
    (hCs : ∀ b, ∀ δ ∈ C b, SuppF (Wc D i) (fid D v) δ)
    (hC : ∀ b, IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) (fid D v) k} (rep (Quotient.out b)) (C b)) :
    Function.Bijective (dcMap C hCs hC) := by
  constructor
  · rintro ⟨b, δ, hδ⟩ ⟨b', δ', hδ'⟩ h
    replace h : δ⁻¹ * δ' ∈ levW R i := (placeSupportedLevelCoset_eq_iff _ _).mp h
    have hs : SuppF (Wc D i) (fid D v) (δ⁻¹ * δ') := supportedAtAdeleIdempotent_mul_closed _ _ (supportedAtAdeleIdempotent_inv_closed _ _ (hCs b δ hδ)) (hCs b' δ' hδ')
    obtain ⟨-, k₁, ⟨h1l, h1s⟩, k₂, ⟨h2l, h2s⟩, e⟩ := (hC b).1 δ hδ
    obtain ⟨-, l₁, ⟨g1l, g1s⟩, l₂, ⟨g2l, g2s⟩, e'⟩ := (hC b').1 δ' hδ'
    have hbb : b = b' := by
      apply Quotient.out_equiv_out.mp
      refine ⟨l₁⁻¹ * k₁, ⟨mul_mem ((levW R i).inv_mem g1l) h1l, supportedAtAdeleIdempotent_mul_closed _ _ (supportedAtAdeleIdempotent_inv_closed _ _ g1s) h1s⟩,
        k₂ * (δ⁻¹ * δ') * l₂⁻¹, ⟨mul_mem (mul_mem h2l h) ((levW R i).inv_mem g2l),
          supportedAtAdeleIdempotent_mul_closed _ _ (supportedAtAdeleIdempotent_mul_closed _ _ h2s hs) (supportedAtAdeleIdempotent_inv_closed _ _ g2s)⟩, ?_⟩
      rw [e, e']; group
    subst hbb
    have hu := (hC b).2 δ' ⟨l₁, ⟨g1l, g1s⟩, l₂, ⟨g2l, g2s⟩, e'⟩
    have hdd : δ = δ' := hu.unique ⟨hδ, h, hs⟩ ⟨hδ', by rw [inv_mul_cancel]; exact (levW R i).one_mem,
      by rw [inv_mul_cancel]; exact (Model.trivAt_one _ _).2⟩
    subst hdd
    rfl
  · intro x
    obtain ⟨k₁, hk₁, k₂, hk₂, e⟩ := Quotient.mk_out (s := dcSetoid R i v) x
    obtain ⟨γ, ⟨hγC, hγK⟩, -⟩ := (hC (Quotient.mk _ x)).2 (rep x) ⟨k₁, hk₁, k₂, hk₂, e⟩
    refine ⟨⟨Quotient.mk _ x, γ, hγC⟩, ?_⟩
    unfold dcMap
    conv_rhs => rw [← placeSupportedLevelCoset_representative_eq x]
    exact (placeSupportedLevelCoset_eq_iff _ _).mpr hγK.1

theorem localCoefficient_summable_nontrivialCosets {R : RealDat D A Ks} {i : Fin D.R.m} {t : T} (hLS : LocSmall R i t)
    {μ : Measure (WO (Vc D i) (Wc D i))} {𝓕 : Set (WO (Vc D i) (Wc D i))}
    (hμ : IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕) {v : HeightOneSpectrum (𝓞 D.host.F)}
    (hf : IsFinIdem D v (fid D v)) : Summable (fun x : LX R i v => ‖acoef R i t μ 𝓕 v x‖) := by
  obtain ⟨s, -, -, hs⟩ := hLS μ 𝓕 hμ
  refine summable_of_sum_le (c := ‖acoef R i t μ 𝓕 v (lx0 R i v)‖ + s v) (fun _ => norm_nonneg _) ?_
  intro u
  rw [← Finset.sum_filter_add_sum_filter_not u (fun x => x = lx0 R i v)]
  gcongr
  · calc ∑ x ∈ u.filter (fun x => x = lx0 R i v), ‖acoef R i t μ 𝓕 v x‖
          ≤ ∑ x ∈ ({lx0 R i v} : Finset (LX R i v)), ‖acoef R i t μ 𝓕 v x‖ := by
            apply Finset.sum_le_sum_of_subset_of_nonneg
            · intro x hx; rw [Finset.mem_filter] at hx; rw [Finset.mem_singleton]; exact hx.2
            · intros; exact norm_nonneg _
      _ = _ := Finset.sum_singleton _ _
  · have hinj : Set.InjOn (fun x : LX R i v => rep x) ↑(u.filter (fun x => ¬ x = lx0 R i v)) := by
      intro x _ y _ hxy
      rw [levelCoset_eq_iff_representative_rel]
      simp only at hxy
      rw [hxy, inv_mul_cancel]; exact (levW R i).one_mem
    have e := Finset.sum_image (f := fun g => ‖coef R i t μ 𝓕 g‖) hinj
    unfold acoef
    rw [← e]
    apply hs v (fid D v) hf
    · intro g hg
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hg
      rw [Finset.mem_filter] at hx
      exact ⟨(levelCosetRepresentative_mem_supportedSet x).2, fun h => hx.2 ((eq_trivialLevelCoset_iff_representative_mem x).mpr h)⟩
    · intro g hg g' hg' h
      obtain ⟨x, -, rfl⟩ := Finset.mem_image.mp hg
      obtain ⟨y, -, rfl⟩ := Finset.mem_image.mp hg'
      rw [(levelCoset_eq_iff_representative_rel x y).mpr h]


theorem localCoefficient_fiber_sum_eq {R : RealDat D A Ks} {i : Fin D.R.m} {t : T} (hTL : TransLaws R i) (hLF : LevFix R i t)
    {μ : Measure (WO (Vc D i) (Wc D i))} {𝓕 : Set (WO (Vc D i) (Wc D i))}
    (hleft : ∀ k ∈ levW R i, ∀ g, coef R i t μ 𝓕 (k * g) = coef R i t μ 𝓕 g)
    {v : HeightOneSpectrum (𝓞 D.host.F)} (hf : IsFinIdem D v (fid D v))
    (C : Quotient (dcSetoid R i v) → Finset (GA D (Wc D i)))
    (hCs : ∀ b, ∀ δ ∈ C b, SuppF (Wc D i) (fid D v) δ)
    (hC : ∀ b, IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) (fid D v) k} (rep (Quotient.out b)) (C b))
    {γ : GA D (Wc D i)} (hγ : γ ∈ GfC (Wc D i)) (b : Quotient (dcSetoid R i v)) :
    ∑ δ : ↥(C b), acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) • Bop R i (γ * rep (dcMap C hCs hC ⟨b, δ⟩)) =
      ∑ δ : ↥(C b), Bop R i γ * (acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) • Bop R i (rep (dcMap C hCs hC ⟨b, δ⟩))) := by
  have key : ∀ δ : ↥(C b), acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) = coef R i t μ 𝓕 (rep (Quotient.out b)) ∧
      Bop R i (γ * rep (dcMap C hCs hC ⟨b, δ⟩)) = Bop R i (γ * δ.1) ∧
      Bop R i (rep (dcMap C hCs hC ⟨b, δ⟩)) = Bop R i δ.1 := by
    intro δ
    obtain ⟨k, hk, hrep⟩ : ∃ k ∈ levW R i, rep (dcMap C hCs hC ⟨b, δ⟩) = δ.1 * k := representative_placeSupportedLevelCoset_rel _
    have hδG : δ.1 ∈ GfC (Wc D i) := ((hC b).1 δ.1 δ.2).1
    obtain ⟨k₁, ⟨h1l, -⟩, k₂, ⟨h2l, -⟩, e⟩ := ((hC b).1 δ.1 δ.2).2
    have hrG : rep (dcMap C hCs hC ⟨b, δ⟩) ∈ GfC (Wc D i) := (levelCosetRepresentative_mem_supportedSet _).1
    refine ⟨?_, ?_, ?_⟩
    · unfold acoef
      rw [hrep, Model.coef_mul_lev R i t hLF μ 𝓕 _ _ hk, e, Model.coef_mul_lev R i t hLF μ 𝓕 _ _ h2l]
      exact hleft k₁ h1l _
    · rw [hrep, ← mul_assoc]
      refine finite_mul_liftLevel_mem_finite hTL (mul_mem hγ hδG) hk ?_
      rw [mul_assoc, ← hrep]; exact mul_mem hγ hrG
    · rw [hrep]
      exact finite_mul_liftLevel_mem_finite hTL hδG hk (hrep ▸ hrG)
  have hlast : ∀ δ : ↥(C b), Bop R i γ * (coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i δ.1) =
      Bop R i γ * (acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) • Bop R i (rep (dcMap C hCs hC ⟨b, δ⟩))) := by
    intro δ
    obtain ⟨h1, -, h2⟩ := key δ
    exact congrArg (Bop R i γ * ·) (congrArg₂ (· • ·) h1.symm h2.symm)
  calc ∑ δ : ↥(C b), acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) • Bop R i (γ * rep (dcMap C hCs hC ⟨b, δ⟩))
        = ∑ δ : ↥(C b), coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i (γ * δ.1) :=
          Finset.sum_congr rfl (fun δ _ => by rw [(key δ).1, (key δ).2.1])
    _ = coef R i t μ 𝓕 (rep (Quotient.out b)) • ∑ δ ∈ C b, Bop R i (γ * δ) := by
          rw [← Finset.smul_sum, Finset.sum_coe_sort (C b) (fun δ => Bop R i (γ * δ))]
    _ = coef R i t μ 𝓕 (rep (Quotient.out b)) • (Bop R i γ * ∑ δ ∈ C b, Bop R i δ) := by
          rw [rightTranslatePairingOperator_hecke_relation (R := R) hTL hf (α := rep (Quotient.out b)) (levelCosetRepresentative_mem_supportedSet (Quotient.out b)).2 (C b) (hCs b) (hC b) hγ]
    _ = ∑ δ ∈ C b, Bop R i γ * (coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i δ) := by
          rw [Finset.mul_sum, Finset.smul_sum]
          refine Finset.sum_congr rfl (fun δ _ => ?_)
          apply ContinuousLinearMap.ext; intro y
          show coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i γ (Bop R i δ y) =
            Bop R i γ ((coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i δ) y)
          rw [ContinuousLinearMap.smul_apply, map_smul]
    _ = ∑ δ : ↥(C b), Bop R i γ * (coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i δ.1) :=
          (Finset.sum_coe_sort (C b) (fun δ => Bop R i γ * (coef R i t μ 𝓕 (rep (Quotient.out b)) • Bop R i δ))).symm
    _ = ∑ δ : ↥(C b), Bop R i γ * (acoef R i t μ 𝓕 v (dcMap C hCs hC ⟨b, δ⟩) • Bop R i (rep (dcMap C hCs hC ⟨b, δ⟩))) := by
          exact Finset.sum_congr rfl (fun δ _ => hlast δ)

end Local



theorem bop_mul_zop_hasSum : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ i t, LocSmall R i t → TransLaws R i → LevFix R i t → ∀ (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → (∀ k ∈ levW R i, ∀ g, coef R i t μ 𝓕 (k * g) = coef R i t μ 𝓕 g) → ∀ v, ∀ γ ∈ GfC (Wc D i), HasSum (fun x : Eu.LX R i v => Eu.acoef R i t μ 𝓕 v x • Eu.Bop R i (γ * Eu.rep x)) (Eu.Bop R i γ * Eu.Zop R i t μ 𝓕 v) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i t hLS hTL hLF μ 𝓕 hμ hleft v γ hγ
  by_cases hex : ∃ f, IsFinIdem D v f
  · have hf : IsFinIdem D v (fid D v) := chosenFinitePlaceIdempotent_spec hex
    have hsa := localCoefficient_summable_nontrivialCosets hLS hμ hf (R := R)
    have hs1 : Summable (fun x : LX R i v => acoef R i t μ 𝓕 v x • Bop R i (rep x)) := by
      refine Summable.of_norm_bounded hsa (fun x => ?_)
      rw [norm_smul]
      exact mul_le_of_le_one_right (norm_nonneg _) (bop_norm R i _)
    have hs2 : Summable (fun x : LX R i v => acoef R i t μ 𝓕 v x • Bop R i (γ * rep x)) := by
      refine Summable.of_norm_bounded hsa (fun x => ?_)
      rw [norm_smul]
      exact mul_le_of_le_one_right (norm_nonneg _) (bop_norm R i _)
    have h1 : HasSum (fun x : LX R i v => Bop R i γ * (acoef R i t μ 𝓕 v x • Bop R i (rep x)))
        (Bop R i γ * Zop R i t μ 𝓕 v) := hs1.hasSum.mul_left (Bop R i γ)
    choose C hCs hC using fun b : Quotient (dcSetoid R i v) =>
      hTL.1 v (fid D v) hf (rep (Quotient.out b)) (levelCosetRepresentative_mem_supportedSet (Quotient.out b)).2
    let e := Equiv.ofBijective (dcMap C hCs hC) (placeSupportedDoubleCosetMap_bijective C hCs hC)
    have g1 := (e.hasSum_iff).mpr h1
    have g2 := ((e.summable_iff).mpr hs2).hasSum
    have k1 := g1.sigma (fun b => hasSum_fintype _)
    have k2 := g2.sigma (fun b => hasSum_fintype _)
    have hfib := localCoefficient_fiber_sum_eq (R := R) hTL hLF hleft hf C hCs hC hγ
    have hfun : (fun b => ∑ c : ↥(C b),
          ((fun x : LX R i v => acoef R i t μ 𝓕 v x • Bop R i (γ * rep x)) ∘ e) ⟨b, c⟩) =
        (fun b => ∑ c : ↥(C b),
          ((fun x : LX R i v => Bop R i γ * (acoef R i t μ 𝓕 v x • Bop R i (rep x))) ∘ e) ⟨b, c⟩) :=
      funext fun b => hfib b
    rw [hfun] at k2
    have hk := k2.unique k1
    rw [← hk]
    exact (e.hasSum_iff).mp g2
  · have h0 := chosenFinitePlaceIdempotent_eq_zero_of_not_exists hex
    have hall : ∀ x : LX R i v, rep x = 1 := fun x => supportedAtIdempotent_zero_eq_one _ (h0 ▸ (levelCosetRepresentative_mem_supportedSet x).2)
    haveI : Subsingleton (LX R i v) := ⟨fun x y => (levelCoset_eq_iff_representative_rel x y).mpr (by
      rw [hall x, hall y, inv_one, one_mul]; exact (levW R i).one_mem)⟩
    have hs1 : Summable (fun x : LX R i v => acoef R i t μ 𝓕 v x • Bop R i (rep x)) := Summable.of_finite
    have hF : (fun x : LX R i v => acoef R i t μ 𝓕 v x • Bop R i (γ * rep x)) =
        fun x => Bop R i γ * (acoef R i t μ 𝓕 v x • Bop R i (rep x)) := by
      funext x
      rw [hall x, mul_one, bop_one hTL]
      apply ContinuousLinearMap.ext; intro y
      show (acoef R i t μ 𝓕 v x • Bop R i γ) y = Bop R i γ ((acoef R i t μ 𝓕 v x • (1 : (R.HW i (sg0 D A)).H →L[ℂ] (R.HW i (sg0 D A)).H)) y)
      rw [ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, map_smul]
      rfl
    rw [hF]
    exact hs1.hasSum.mul_left (Bop R i γ)

end GlobalTheory.RawLift.Eu

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorMulLocalOperatorHasSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InnerNeSpherical =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InnerNeSpherical", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula\npublic import Formalism.LocalToGlobal.IndefiniteReal.LinksStage\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Normed.Operator.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EulerOperatorInjectiveEigenvector\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCovolumeOneMeasureHomSpaceOfLaws\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedVectorCoefficientLeftInvariantLevelGroup\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialLevelCosetRepresentativeMemLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerProductFinsuppLocalCosetFamilies\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCoefficientNontrivialCosetsSummableBound\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalOperatorScalarOnSphericalEigenspace\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorFamilyProdUpdateStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightTranslateOperatorMulLocalOperatorHasSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open Classical

noncomputable section

namespace GlobalTheory.RawLift.Eu

theorem scalar_of_eigen {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (P : Submodule ℂ H)
    (Wop : H →L[ℂ] H) (hinj : Function.Injective Wop) (heig : ∀ y ∈ P, ∃ z : ℂ, Wop y = z • y) :
    ∃ l : ℂ, l ≠ 0 ∧ ∀ x ∈ P, Wop x = l • x := by
  by_cases h : ∃ x0 ∈ P, x0 ≠ 0
  · obtain ⟨x0, hx0, hne⟩ := h
    obtain ⟨l, hl⟩ := heig x0 hx0
    refine ⟨l, ?_, ?_⟩
    · rintro rfl
      apply hne
      apply hinj
      rw [hl, zero_smul, map_zero]
    · intro x hx
      obtain ⟨lx, hlx⟩ := heig x hx
      obtain ⟨m, hm⟩ := heig (x + x0) (P.add_mem hx hx0)
      rw [map_add (f := _), hlx, hl, smul_add] at hm
      by_cases hmx : m = lx
      · subst hmx
        have : (l - m) • x0 = 0 := by
          rw [sub_smul]; exact sub_eq_zero.2 (add_left_cancel hm)
        rcases smul_eq_zero.1 this with h1 | h1
        · rw [hlx, sub_eq_zero.1 h1]
        · exact absurd h1 hne
      · have hx' : x = ((l - m) / (m - lx)) • x0 := by
          have e1 : (m - lx) • x = (l - m) • x0 := by
            rw [sub_smul, sub_smul, sub_eq_sub_iff_add_eq_add]
            rw [← hm]; abel
          have hne' : m - lx ≠ 0 := sub_ne_zero.2 hmx
          rw [div_eq_mul_inv, mul_comm, mul_smul, ← e1, smul_smul, inv_mul_cancel₀ hne', one_smul]
        rw [hx', map_smul, hl, smul_comm]
  · push_neg at h
    refine ⟨1, one_ne_zero, fun x hx => ?_⟩
    rw [h x hx, map_zero, smul_zero]


theorem innerNe_main {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A)
    (hL : Laws R F) (i : Fin D.R.m) (t : T) (hFS : FinSum R i t) (hFM : FinMult R i t) (hLF : LevFix R i t)
    (hVN : VecNe R i t) (hLS : LocSmall R i t) (hBS : BadSupp R i t) (hLP : LevProd R i) (hTL : TransLaws R i) :
    InnerNe R i t ∅ := by
  intro th hth c
  have hcov := @_root_.GlobalTheory.RawLift.Covol.exists_isCovolOne_of_laws D G _ _ Pl0 T A Ks _ _ _ R F hL i
  obtain ⟨μ, 𝓕, hμ⟩ := hcov
  have hleft := @_root_.GlobalTheory.RawLift.CoefLeft.coef_lev_mul D G _ _ Pl0 T A Ks _ _ _ R F hL i t hLF μ 𝓕 hμ
  have hfa := @_root_.GlobalTheory.RawLift.FamSum.hasSum_families D G _ _ Pl0 T A Ks _ _ _ R i t hLP hTL hFM hLF hVN hFS th hth μ 𝓕 hμ
  have hsm := @_root_.GlobalTheory.RawLift.Eu.acoef_small D G _ _ Pl0 T A Ks _ _ _ R i t hLS μ 𝓕 hμ
  obtain ⟨a, ha, hfam⟩ := hfa
  obtain ⟨s, hs, hs1, hsC⟩ := hsm
  have hconv := @_root_.GlobalTheory.RawLift.Eu.bop_mul_zop_hasSum D G _ _ Pl0 T A Ks _ _ _ R i t hLS hTL hLF μ 𝓕 hμ hleft
  have hupd := @GlobalTheory.T.rightTranslateOperator_familyProd_update D G _ _ Pl0 T A Ks _ _ _ R i hTL
  have heig := @_root_.GlobalTheory.RawLift.Eig.zop_eigen D G _ _ Pl0 T A Ks _ _ _ R F hL i t hBS hLF hLS hLP hTL μ 𝓕 hμ hleft c
  have hUpd : ∀ v (f : ∀ v, Eu.LX R i v), {w | f w ≠ Eu.lx0 R i w}.Finite → f v = Eu.lx0 R i v →
      HasSum (fun x => Eu.acoef R i t μ 𝓕 v x • Eu.Bfam R i (Function.update f v x))
        (Eu.Bfam R i f * Eu.Zop R i t μ 𝓕 v) := by
    intro v f hf hv
    obtain ⟨hG, hB⟩ := hupd f hf v hv
    have := hconv v _ hG
    unfold Eu.Bfam
    simp only [hB]
    exact this
  have hEu := _root_.GlobalTheory.eulerOp_injective_eigen (HeightOneSpectrum (𝓞 D.host.F)) (Eu.LX R i) (Eu.lx0 R i)
    (R.HW i (sg0 D A)).H (Eu.acoef R i t μ 𝓕) s (Eu.Bfam R i) (Eu.Zop R i t μ 𝓕)
    (local_coefficient_trivial_level_coset hLF hVN hμ) hs hs1 hsC (fun f => bop_norm R i _)
    (by unfold Eu.Bfam; rw [localCosetFamilyRepresentativeProd_trivial_eq_one]; exact bop_one hTL) hUpd
  obtain ⟨Wop, hW, hinj, hWe⟩ := hEu
  have hip : ∀ x y, ⟪LinearMap.adjoint th x, LinearMap.adjoint th y⟫_ℂ = (a : ℂ) * ⟪x, Wop y⟫_ℂ := by
    intro x y
    let φ : ((R.HW i (sg0 D A)).H →L[ℂ] (R.HW i (sg0 D A)).H) →L[ℂ] ℂ :=
      (innerSL ℂ x).comp (ContinuousLinearMap.apply ℂ _ y)
    have h1 := (hW.mapL φ).mul_left (a : ℂ)
    have h2 := hfam x y
    refine h2.unique ?_
    simpa [φ, inner_smul_right] using h1
  have hE : ∀ y ∈ part R i ∅ c, ∃ z : ℂ, Wop y = z • y := by
    intro y hy
    have hz := fun v => heig y hy v
    choose z hz using hz
    exact ⟨_, hWe y z hz⟩
  have hsc := scalar_of_eigen (part R i ∅ c) Wop hinj hE
  obtain ⟨l, hl, hlx⟩ := hsc
  refine ⟨(a : ℂ) * (starRingEnd ℂ) l, mul_ne_zero (by exact_mod_cast ha.ne') (by simpa using hl), ?_⟩
  intro x hx y
  rw [← inner_conj_symm, hip y x, hlx x hx, inner_smul_right, map_mul, map_mul, Complex.conj_ofReal,
    inner_conj_symm]
  ring

end GlobalTheory.RawLift.Eu

namespace GlobalTheory.RawLift

theorem innerNe_spherical : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → R.FullP → ∀ i t, FinSum R i t → FinMult R i t → LevFix R i t → VecNe R i t → LocSmall R i t → BadSupp R i t → LevProd R i → TransLaws R i → InnerNe R i t ∅ :=
  fun _ _ _ _ _ _ _ _ _ _ _ R F hL _ i t hFS hFM hLF hVN hLS hBS hLP hTL =>
    Eu.innerNe_main R F hL i t hFS hFM hLF hVN hLS hBS hLP hTL

end GlobalTheory.RawLift

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InnerNeSpherical =====
