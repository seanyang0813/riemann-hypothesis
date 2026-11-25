module

public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle
public import GroundTheory.GlobalFields.TateThesis.EulerFactorsArch
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsFinSetSplitPlacesCoprimeConductor
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCMTypeOfEmbeddingsCardEqFinrank
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousInfIdele
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM
public import GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp
public import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor
public import GroundTheory.GlobalFields.IdeleGroups.IdeleNorms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormDifferentEqProd
public import GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace
public import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane
public import GroundTheory.GlobalFields.TateThesis.EulerFactorsFinite
public import GroundTheory.GlobalFields.TateThesis.HeckeLFunction
public import GroundTheory.GlobalFields.TateThesis.NonvanishingPrimes
public import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal
public import GroundTheory.GlobalFields.TateThesis.HeckeTheoremFE
public import GroundTheory.LocalFields.LocalZetaEpsilon
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsCMTypeEmbedding
public import GroundTheory.GlobalFields.TateThesis.HeckeTheorem
public import GroundTheory.GlobalFields.TateThesis.RootNumberLocalFinite
import GroundTheory.GlobalFields.TateThesis.ArchCharsUnitary
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.CompletedLStripBounds
import GroundTheory.LocalFields.FilteredSurj
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Aesop.Main
import GroundTheory.GlobalFields.CompletionAtPlace.Integers
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterInfinityType, Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterNotNormPower, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteEpsilonFactorDependenceOnS, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HaarIntegralIntegersFiniteSum, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeCharacterConductorExponent, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeGaussSumLocalTerm, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeLFunctionEulerProduct, Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAdditiveCharacterEqAdelic, Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeTateFunctionalEquation

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterInfinityType =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterInfinityType", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import GroundTheory.GlobalFields.TateThesis.EulerFactorsArch\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFinSetSplitPlacesCoprimeConductor\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCMTypeOfEmbeddingsCardEqFinrank\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousInfIdele\nimport GroundTheory.GlobalFields.TateThesis.ArchCharsUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.CompletedLStripBounds\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

noncomputable section

namespace GlobalTheory.CompanionTheory.HeckeArch

open InfinitePlace.Completion

variable {E : Type} [Field E] [NumberField E]

theorem infiniteEmbedding_eq (w : InfinitePlace E) (a : (w.Completion)ˣ) :
    (infiniteEmbedding w a : IdeleGroup E) = ReciprocityTheory.Neutral.Bridge.HCFR.infIdele E w a := by
  classical
  refine Units.ext (Prod.ext ?_ rfl)
  show Pi.mulSingle w (a : w.Completion) = Pi.mulSingle w (a : w.Completion)
  congr!

theorem component_on_field (χ : HChar E) (hu : IsUnitary χ) {I : Type} [Fintype I] {φ : I → E →+* ℂ}
    (hφ : Function.Bijective fun i => InfinitePlace.mk (φ i)) (n : I → ℤ)
    (hn : Formalism.L2.Host.HChar.HasInf χ φ n) (i : I) (k : Eˣ) :
    (((toHecke χ hu).infiniteComponent (InfinitePlace.mk (φ i)) (Formalism.L2.Host.atInf _ k) : Circle) : ℂ) =
      (φ i (k : E) / ((‖φ i (k : E)‖ : ℝ) : ℂ)) ^ n i := by
  have h := (GlobalTheory.InfTypeLocal.infType_iff_local E I φ hφ χ.1 χ.2.1 n).1 hn i k
  rw [HeckeCharacter.infiniteComponent_apply, coe_toIdele, infiniteEmbedding_eq]
  exact h

theorem denseRange_atInf_place (w : InfinitePlace E) : DenseRange (Formalism.L2.Host.atInf w) :=
  ((Function.surjective_eval w).denseRange.comp (GlobalTheory.InfTypeLocal.denseRange_atInf E)
    (continuous_apply w) : DenseRange _)

theorem component_eq (χ : HChar E) (hu : IsUnitary χ) {I : Type} [Fintype I] {φ : I → E →+* ℂ}
    (hφ : Function.Bijective fun i => InfinitePlace.mk (φ i)) (n : I → ℤ)
    (hn : Formalism.L2.Host.HChar.HasInf χ φ n) (i : I)
    (e : (InfinitePlace.mk (φ i)).Completion →+* ℂ) (hec : Continuous e)
    (he : ∀ k : E, e (algebraMap E _ k) = φ i k) (a : ((InfinitePlace.mk (φ i)).Completion)ˣ) :
    (((toHecke χ hu).infiniteComponent (InfinitePlace.mk (φ i)) a : Circle) : ℂ) =
      (e a / ((‖e a‖ : ℝ) : ℂ)) ^ n i := by
  have h1 : Continuous fun u : ((InfinitePlace.mk (φ i)).Completion)ˣ => e u :=
    hec.comp Units.continuous_val
  have h2 : ∀ u : ((InfinitePlace.mk (φ i)).Completion)ˣ, e u ≠ 0 := fun u =>
    (map_ne_zero _).2 u.ne_zero
  have h3 : ∀ u : ((InfinitePlace.mk (φ i)).Completion)ˣ, ((‖e u‖ : ℝ) : ℂ) ≠ 0 := fun u => by
    exact_mod_cast norm_ne_zero_iff.2 (h2 u)
  have key : (fun u : ((InfinitePlace.mk (φ i)).Completion)ˣ =>
      (((toHecke χ hu).infiniteComponent (InfinitePlace.mk (φ i)) u : Circle) : ℂ)) =
      fun u : ((InfinitePlace.mk (φ i)).Completion)ˣ => (e u / ((‖e u‖ : ℝ) : ℂ)) ^ n i := by
    refine (denseRange_atInf_place _).equalizer ?_ ?_ ?_
    · exact continuous_subtype_val.comp (map_continuous _)
    · exact (h1.div (Complex.continuous_ofReal.comp h1.norm) h3).zpow₀ _
        fun u => Or.inl (div_ne_zero (h2 u) (h3 u))
    · funext k
      show _ = (e (algebraMap E _ (k : E)) / ((‖e (algebraMap E _ (k : E))‖ : ℝ) : ℂ)) ^ n i
      rw [he]
      exact component_on_field χ hu hφ n hn i k
  exact congrFun key a

theorem conj_div_norm {z : ℂ} (hz : z ≠ 0) :
    (starRingEnd ℂ) z / ((‖z‖ : ℝ) : ℂ) = (z / ((‖z‖ : ℝ) : ℂ))⁻¹ := by
  have h0 : ((‖z‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.2 hz
  rw [inv_div, div_eq_div_iff h0 hz, Complex.conj_mul']
  ring

theorem params (χ : HChar E) (hu : IsUnitary χ) {I : Type} [Fintype I] {φ : I → E →+* ℂ}
    (hφ : Function.Bijective fun i => InfinitePlace.mk (φ i)) (n : I → ℤ)
    (hn : Formalism.L2.Host.HChar.HasInf χ φ n) (i : I) (hc : (InfinitePlace.mk (φ i)).IsComplex) :
    (toHecke χ hu).infiniteTau (InfinitePlace.mk (φ i)) = 0 ∧
      ((toHecke χ hu).infiniteWeight (InfinitePlace.mk (φ i))).natAbs = (n i).natAbs := by
  set w := InfinitePlace.mk (φ i) with hw
  set T := toHecke χ hu with hT
  have hnr : ¬ w.IsReal := InfinitePlace.not_isReal_iff_isComplex.2 hc
  set e := InfinitePlace.Completion.ringEquivComplexOfIsComplex hc with he
  have hec : Continuous e.symm := (isometryEquivComplexOfIsComplex hc).symm.continuous
  set ψ : ℂˣ →ₜ* Circle := (T.infiniteComponent w).comp (unitsContinuousHom e.symm hec) with hψ
  obtain ⟨p, -, huniq⟩ := existsUnique_complexUnits_circle ψ
  have hι : ∀ z : ℂˣ, extensionEmbedding w ((unitsContinuousHom e.symm hec z : (w.Completion)ˣ) : w.Completion) = z :=
    fun z => e.apply_symm_apply (z : ℂ)
  have hnorm : ∀ z : ℂˣ, ‖((unitsContinuousHom e.symm hec z : (w.Completion)ˣ) : w.Completion)‖ = ‖(z : ℂ)‖ := fun z => by
    rw [← hι z]
    exact ((isometry_extensionEmbedding w).norm_map_of_map_zero (map_zero _) _).symm
  have h1 : ∀ z : ℂˣ, (ψ z : ℂ) = ((z : ℂ) / (‖(z : ℂ)‖ : ℂ)) ^ (T.infiniteWeight w, 2 * T.infiniteTau w).1 *
      ((‖(z : ℂ)‖ : ℝ) : ℂ) ^ ((((T.infiniteWeight w, 2 * T.infiniteTau w).2 : ℝ) : ℂ) * Complex.I) := fun z => by
    have hpos : 0 < ‖(z : ℂ)‖ := norm_pos_iff.2 z.ne_zero
    show ((T.infiniteComponent w (unitsContinuousHom e.symm hec z) : Circle) : ℂ) = _
    rw [HeckeCharacter.infiniteComponent_eq, hι, hnorm, InfinitePlace.mult, if_neg hnr,
      ofReal_pow_cpow hpos]
    congr 2
    push_cast
    ring
  have h2 : ∃ s : ℤ, s.natAbs = (n i).natAbs ∧ ∀ z : ℂˣ, (ψ z : ℂ) = ((z : ℂ) / (‖(z : ℂ)‖ : ℂ)) ^ (s, (0 : ℝ)).1 *
      ((‖(z : ℂ)‖ : ℝ) : ℂ) ^ ((((s, (0 : ℝ)).2 : ℝ) : ℂ) * Complex.I) := by
    have h0 : ∀ k : E, extensionEmbedding w (algebraMap E _ k) = w.embedding k := fun k => by
      rw [AbsoluteValue.Completion.algebraMap_def, WithAbs.algebraMap_right_apply,
        Algebra.algebraMap_self_apply, extensionEmbedding_coe]
      rfl
    have hcont := (isometry_extensionEmbedding w).continuous
    rcases InfinitePlace.embedding_mk_eq (φ i) with h | h
    · refine ⟨n i, rfl, fun z => ?_⟩
      have := component_eq χ hu hφ n hn i (extensionEmbedding w) hcont
        (fun k => by rw [h0, hw, h]) (unitsContinuousHom e.symm hec z)
      show ((T.infiniteComponent w (unitsContinuousHom e.symm hec z) : Circle) : ℂ) = _
      rw [this, hι]
      simp
    · refine ⟨-n i, by simp, fun z => ?_⟩
      have := component_eq χ hu hφ n hn i ((starRingEnd ℂ).comp (extensionEmbedding w))
        (Complex.continuous_conj.comp hcont)
        (fun k => by
          rw [RingHom.comp_apply, h0, hw, h]
          simp) (unitsContinuousHom e.symm hec z)
      show ((T.infiniteComponent w (unitsContinuousHom e.symm hec z) : Circle) : ℂ) = _
      rw [this, RingHom.comp_apply, hι, Complex.norm_conj, conj_div_norm z.ne_zero, inv_zpow, ← zpow_neg]
      simp
  obtain ⟨s, hs, h2⟩ := h2
  have e1 := huniq _ h1
  have e2 := huniq _ h2
  have e3 := e1.trans e2.symm
  have e4 : T.infiniteWeight w = s := congrArg Prod.fst e3
  have e5 : 2 * T.infiniteTau w = 0 := congrArg Prod.snd e3
  exact ⟨by linarith, by rw [e4, hs]⟩

theorem infiniteParams_of_hasInf : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (I : Type) [Fintype I] (φ : I → E →+* ℂ), IsCMType φ → ∀ (χ : HChar E) (hu : IsUnitary χ) (n : I → ℤ), Formalism.L2.Host.HChar.HasInf χ φ n → ∀ i : I, (toHecke χ hu).infiniteTau (InfinitePlace.mk (φ i)) = 0 ∧ ((toHecke χ hu).infiniteWeight (InfinitePlace.mk (φ i))).natAbs = (n i).natAbs := by
  intro E _ _ _ I _ φ hφ χ hu n hn i
  exact params χ hu (GlobalTheory.CMTypeCard.bijective_mk_of_isCMType hφ) n hn i
    (IsTotallyComplex.isComplex _)

end GlobalTheory.CompanionTheory.HeckeArch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterInfinityType =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterNotNormPower =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterNotNormPower", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFinSetSplitPlacesCoprimeConductor\npublic import GroundTheory.GlobalFields.IdeleGroups.IdeleNorms\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCMTypeOfEmbeddingsCardEqFinrank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.CompletedLStripBounds\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

noncomputable section
namespace GlobalTheory.CompanionTheory.HeckeBridge.NotPow

open ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open Formalism.L2.Host (atInf)

theorem exists_ext_surj {L : Type} [Field L] [NumberField L] (φ : L →+* ℂ) (hw : (InfinitePlace.mk φ).IsComplex) :
    ∃ e : (InfinitePlace.mk φ).Completion →+* ℂ, Continuous e ∧ (∀ k : L, e (algebraMap L _ k) = φ k) ∧
      Function.Surjective e ∧ ∀ x, ‖e x‖ = ‖x‖ := by
  rcases InfinitePlace.embedding_mk_eq φ with h | h
  · refine ⟨InfinitePlace.Completion.extensionEmbedding _,
      (InfinitePlace.Completion.isometry_extensionEmbedding _).continuous, fun k => ?_,
      InfinitePlace.Completion.surjective_extensionEmbedding_of_isComplex hw, fun x => ?_⟩
    · rw [InfinitePlace.Completion.algebraMap_apply, InfinitePlace.Completion.extensionEmbedding_coe, h]
      rfl
    · exact (InfinitePlace.Completion.isometry_extensionEmbedding _).norm_map_of_map_zero (map_zero _) x
  · refine ⟨(starRingEnd ℂ).comp (InfinitePlace.Completion.extensionEmbedding _),
      Complex.continuous_conj.comp (InfinitePlace.Completion.isometry_extensionEmbedding _).continuous,
      fun k => ?_, fun y => ?_, fun x => ?_⟩
    · rw [RingHom.comp_apply, InfinitePlace.Completion.algebraMap_apply,
        InfinitePlace.Completion.extensionEmbedding_coe, h, ComplexEmbedding.conjugate_coe_eq]
      exact Complex.conj_conj _
    · obtain ⟨x, hx⟩ := InfinitePlace.Completion.surjective_extensionEmbedding_of_isComplex hw
        ((starRingEnd ℂ) y)
      exact ⟨x, by rw [RingHom.comp_apply, hx, Complex.conj_conj]⟩
    · rw [RingHom.comp_apply, Complex.norm_conj]
      exact (InfinitePlace.Completion.isometry_extensionEmbedding _).norm_map_of_map_zero (map_zero _) x

theorem exists_norm_one_zpow_ne (m : ℤ) (hm : m ≠ 0) : ∃ ζ : ℂ, ‖ζ‖ = 1 ∧ ζ ^ m ≠ 1 := by
  refine ⟨Complex.exp (((Real.pi / m : ℝ) : ℂ) * Complex.I), Complex.norm_exp_ofReal_mul_I _, ?_⟩
  rw [← Complex.exp_int_mul]
  have hm' : (m : ℂ) ≠ 0 := by exact_mod_cast hm
  have hx : (m : ℂ) * (((Real.pi / m : ℝ) : ℂ) * Complex.I) = (Real.pi : ℂ) * Complex.I := by
    push_cast
    field_simp
  rw [hx, Complex.exp_pi_mul_I]
  norm_num

private theorem exists_inclusion_mul_eq_mul_inclusion_of_normal {L : Type} [Field L] [NumberField L] (φ : L →+* ℂ) :
    ∃ c : (InfinitePlace.mk φ).Completion →+* ℂ, Continuous c ∧ ∀ k : L, c (algebraMap L _ k) = φ k := by
  rcases InfinitePlace.embedding_mk_eq φ with h | h
  · refine ⟨InfinitePlace.Completion.extensionEmbedding _,
      (InfinitePlace.Completion.isometry_extensionEmbedding _).continuous, fun k => ?_⟩
    rw [InfinitePlace.Completion.algebraMap_apply, InfinitePlace.Completion.extensionEmbedding_coe, h]
    rfl
  · refine ⟨(starRingEnd ℂ).comp (InfinitePlace.Completion.extensionEmbedding _),
      Complex.continuous_conj.comp (InfinitePlace.Completion.isometry_extensionEmbedding _).continuous,
      fun k => ?_⟩
    rw [RingHom.comp_apply, InfinitePlace.Completion.algebraMap_apply,
      InfinitePlace.Completion.extensionEmbedding_coe, h, ComplexEmbedding.conjugate_coe_eq]
    exact Complex.conj_conj _

private theorem denseRange_units_map_infiniteAdeleRing (E : Type) [Field E] [NumberField E] :
    DenseRange (Units.map (algebraMap E (InfiniteAdeleRing E)).toMonoidHom) := by
  have hopen : IsOpenMap (Units.val : (InfiniteAdeleRing E)ˣ → InfiniteAdeleRing E) :=
    Units.isOpenMap_val (R := (w : InfinitePlace E) → w.Completion)
  have hd := InfiniteAdeleRing.denseRange_algebraMap E
  rw [DenseRange, dense_iff_inter_open]
  rintro V hV ⟨u, hu⟩
  obtain ⟨_, ⟨u', hu', rfl⟩, k, hk⟩ := hd.inter_open_nonempty _ (hopen V hV) ⟨u, u, hu, rfl⟩
  by_cases hk0 : k = 0
  · have h0 : (u' : InfiniteAdeleRing E) = 0 := by rw [← hk, hk0, map_zero]
    have h01 : (0 : InfiniteAdeleRing E) = 1 := by rw [← u'.mul_inv, h0, zero_mul]
    haveI := subsingleton_of_zero_eq_one h01
    exact ⟨u', hu', 1, Units.ext (Subsingleton.elim _ _)⟩
  · exact ⟨u', hu', Units.mk0 k hk0, Units.ext (by simpa using hk)⟩

theorem comp_eq {E : Type} [Field E] [NumberField E] {I : Type} [Fintype I] {φ : I → E →+* ℂ}
    (hb : Function.Bijective fun i => InfinitePlace.mk (φ i)) (χ : HChar E) {n : I → ℤ}
    (hn : Formalism.L2.Host.HChar.HasInf χ φ n) (i : I)
    (e : (InfinitePlace.mk (φ i)).Completion →+* ℂ) (hec : Continuous e)
    (he : ∀ k : E, e (algebraMap E _ k) = φ i k) (z : ((InfinitePlace.mk (φ i)).Completion)ˣ) :
    ((χ.1 (infIdele E _ z) : ℂˣ) : ℂ) =
      (e (z : (InfinitePlace.mk (φ i)).Completion) /
        ((‖e (z : (InfinitePlace.mk (φ i)).Completion)‖ : ℝ) : ℂ)) ^ n i := by
  classical
  choose c₀ hc₀ hc₀' using fun j => exists_inclusion_mul_eq_mul_inclusion_of_normal (φ j)
  let c : ∀ j, (InfinitePlace.mk (φ j)).Completion →+* ℂ := Function.update c₀ i e
  have hc : ∀ j, Continuous (c j) := by
    intro j
    by_cases hj : j = i
    · subst hj
      simpa [c] using hec
    · simpa [c, hj] using hc₀ j
  have hc' : ∀ j (k : E), c j (algebraMap E _ k) = φ j k := by
    intro j k
    by_cases hj : j = i
    · subst hj
      simpa [c] using he k
    · simpa [c, hj] using hc₀' j k
  let ι0 : InfiniteAdeleRing E →* NumberField.AdeleRing (NumberField.RingOfIntegers E) E :=
    MonoidHom.inl (InfiniteAdeleRing E) (IsDedekindDomain.FiniteAdeleRing (NumberField.RingOfIntegers E) E)
  have hι0 : Continuous ι0 := continuous_id.prodMk continuous_const
  obtain ⟨hχc, -⟩ := χ.2
  let Ψ : (InfiniteAdeleRing E)ˣ → ℂ := fun u => ((χ.1 (Units.map ι0 u) : ℂˣ) : ℂ)
  let Θ : (InfiniteAdeleRing E)ˣ → ℂ := fun u => ∏ j, (c j ((u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j))) /
      ((‖c j ((u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j)))‖ : ℝ) : ℂ)) ^ n j
  have hne : ∀ (j : I) (u : (InfiniteAdeleRing E)ˣ),
      c j ((u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j))) ≠ 0 := by
    intro j u h0
    have h1 := congrArg (fun x : InfiniteAdeleRing E => x (InfinitePlace.mk (φ j))) u.mul_inv
    have h2 : (u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j)) = 0 := (map_eq_zero (c j)).1 h0
    change (u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j)) *
      ((u⁻¹ : (InfiniteAdeleRing E)ˣ) : InfiniteAdeleRing E) (InfinitePlace.mk (φ j)) = 1 at h1
    rw [h2, zero_mul] at h1
    exact zero_ne_one h1
  have hΨ : Continuous Ψ := Units.continuous_val.comp (hχc.comp (Continuous.units_map ι0 hι0))
  have hΘ : Continuous Θ := by
    refine continuous_finsetProd _ fun j _ => ?_
    have hcont : Continuous fun u : (InfiniteAdeleRing E)ˣ =>
        c j ((u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j))) :=
      (hc j).comp ((continuous_apply (InfinitePlace.mk (φ j))).comp Units.continuous_val)
    have hn0 : ∀ u : (InfiniteAdeleRing E)ˣ,
        (((‖c j ((u : InfiniteAdeleRing E) (InfinitePlace.mk (φ j)))‖ : ℝ) : ℂ)) ≠ 0 :=
      fun u => Complex.ofReal_ne_zero.2 (norm_ne_zero_iff.2 (hne j u))
    exact (hcont.div (Complex.continuous_ofReal.comp (continuous_norm.comp hcont)) hn0).zpow₀ (n j)
      fun u => Or.inl (div_ne_zero (hne j u) (hn0 u))
  have hkey : Ψ = Θ := by
    refine Continuous.ext_on (denseRange_units_map_infiniteAdeleRing E) hΨ hΘ ?_
    rintro _ ⟨k, rfl⟩
    have hdiag : Units.map ι0 (Units.map (algebraMap E (InfiniteAdeleRing E)).toMonoidHom k) =
        Formalism.L2.Host.infDiag k := by
      apply Units.ext
      simp only [Formalism.L2.Host.infDiag, MonoidHom.coe_finsetProd, Finset.prod_apply, MonoidHom.coe_comp,
        Function.comp_apply, Units.coe_prod, Units.coe_map]
      have hprod : (∏ w, (Pi.mulSingle (M := fun w : InfinitePlace E => w.Completion) w
          (algebraMap E w.Completion (k : E)) : InfiniteAdeleRing E)) = algebraMap E (InfiniteAdeleRing E) (k : E) :=
        Finset.univ_prod_mulSingle (fun w : InfinitePlace E => algebraMap E w.Completion (k : E))
      rw [Finset.prod_congr rfl fun w _ => (show ((infIdele E w (Formalism.L2.Host.atInf w k) : Neutral.B1.Ideles E) :
          NumberField.AdeleRing (NumberField.RingOfIntegers E) E) =
          ι0 (Pi.mulSingle (M := fun w : InfinitePlace E => w.Completion) w (algebraMap E w.Completion (k : E))) from rfl)]
      exact (congrArg ι0 hprod.symm).trans (map_prod ι0 _ _)
    have hinf := hn k
    simp only [Formalism.L2.Host.HChar.inf, MonoidHom.coe_comp, Function.comp_apply] at hinf
    show ((χ.1 (Units.map ι0 (Units.map (algebraMap E (InfiniteAdeleRing E)).toMonoidHom k)) : ℂˣ) : ℂ) = _
    rw [hdiag]
    refine hinf.trans (Finset.prod_congr rfl fun j _ => ?_)
    show _ = (c j (algebraMap E _ (k : E)) / ((‖c j (algebraMap E _ (k : E))‖ : ℝ) : ℂ)) ^ n j
    rw [hc' j]
  have hz := congrFun hkey
    (Units.map (MonoidHom.mulSingle (fun w : InfinitePlace E => w.Completion) (InfinitePlace.mk (φ i))) z)
  have hι : Units.map ι0
      (Units.map (MonoidHom.mulSingle (fun w : InfinitePlace E => w.Completion) (InfinitePlace.mk (φ i))) z) =
      infIdele E _ z := by
    apply Units.ext
    rfl
  simp only [Ψ, Θ] at hz
  rw [hι] at hz
  let a : ∀ w : InfinitePlace E, w.Completion :=
    Pi.mulSingle (InfinitePlace.mk (φ i)) (z : (InfinitePlace.mk (φ i)).Completion)
  change _ = ∏ j, (c j (a (InfinitePlace.mk (φ j))) /
      ((‖c j (a (InfinitePlace.mk (φ j)))‖ : ℝ) : ℂ)) ^ n j at hz
  rw [hz, Finset.prod_eq_single i]
  · simp [a, c]
  · intro j _ hj
    have hw : InfinitePlace.mk (φ j) ≠ InfinitePlace.mk (φ i) := fun h => hj (hb.1 h)
    simp [a, Pi.mulSingle_eq_of_ne hw]
  · intro h
    exact absurd (Finset.mem_univ i) h

theorem ideleModule_infIdele {E : Type} [Field E] [NumberField E] (w : InfinitePlace E)
    (z : (w.Completion)ˣ) :
    (ideleModule E (infIdele E w z) : ℝ) = ‖(z : w.Completion)‖ ^ w.mult := by
  classical
  show (IdeleGroup.infiniteModule (infIdele E w z) * IdeleGroup.finiteModule (infIdele E w z) : ℝ) = _
  have hinf : IdeleGroup.infiniteModule (infIdele E w z : IdeleGroup E) = ‖(z : w.Completion)‖ ^ w.mult := by
    unfold IdeleGroup.infiniteModule
    rw [Fintype.prod_eq_single w]
    · show ‖(Pi.mulSingle w (z : w.Completion) : ∀ w', w'.Completion) w‖ ^ w.mult = _
      rw [Pi.mulSingle_eq_same]
    · intro w' hw'
      show ‖(Pi.mulSingle w (z : w.Completion) : ∀ w', w'.Completion) w'‖ ^ w'.mult = 1
      rw [Pi.mulSingle_eq_of_ne hw', norm_one, one_pow]
  have hfin : IdeleGroup.finiteModule (infIdele E w z : IdeleGroup E) = 1 := by
    unfold IdeleGroup.finiteModule
    refine finprod_eq_one_of_forall_eq_one fun v => ?_
    show ‖(1 : IsDedekindDomain.FiniteAdeleRing (NumberField.RingOfIntegers E) E) v‖ = 1
    simp
  rw [hinf, hfin, mul_one]

theorem not_modulePow : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (I : Type) [Fintype I] (φ : I → E →+* ℂ), IsCMType φ → ∀ (χ : HChar E) (hu : IsUnitary χ) (n : I → ℤ), Formalism.L2.Host.HChar.HasInf χ φ n → (∃ i, n i ≠ 0) → ¬ ∃ τ : ℝ, ∀ x : IdeleGroup E, ((toHecke χ hu).toIdele x : ℂ) = ((ideleModule E x : ℝ) : ℂ) ^ ((τ : ℂ) * Complex.I) := by
  intro E _ _ _ I _ φ hcm χ hu n hn hex hτex
  obtain ⟨i, hi⟩ := hex
  obtain ⟨τ, hτ⟩ := hτex
  have hb := GlobalTheory.CMTypeCard.bijective_mk_of_isCMType hcm
  have hw : (InfinitePlace.mk (φ i)).IsComplex := IsTotallyComplex.isComplex _
  obtain ⟨e, hec, he, hes, hen⟩ := exists_ext_surj (φ i) hw
  obtain ⟨ζ, hζ1, hζm⟩ := exists_norm_one_zpow_ne (n i) hi
  obtain ⟨y, rfl⟩ := hes ζ
  have hy0 : y ≠ 0 := by
    rintro rfl
    simp at hζ1
  have hy1 : ‖y‖ = 1 := by rw [← hen]; exact hζ1
  have h3 := comp_eq hb χ hn i e hec he (Units.mk0 y hy0)
  have h4 := ideleModule_infIdele (InfinitePlace.mk (φ i)) (Units.mk0 y hy0)
  have h5 := hτ (infIdele E _ (Units.mk0 y hy0))
  rw [GlobalTheory.CompanionTheory.HeckeBridge.coe_toIdele] at h5
  apply hζm
  simp only [Units.val_mk0] at h3 h4
  rw [hζ1, Complex.ofReal_one, div_one] at h3
  rw [← h3]
  refine h5.trans ?_
  rw [h4, hy1, one_pow, Complex.ofReal_one, Complex.one_cpow]

end GlobalTheory.CompanionTheory.HeckeBridge.NotPow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterNotNormPower =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteEpsilonFactorDependenceOnS =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteEpsilonFactorDependenceOnS", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormDifferentEqProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

noncomputable section

namespace GlobalTheory.CompanionTheory.HeckeBridge

theorem finEps_shift : ∀ (E : Type) [Field E] [NumberField E] (χ : HChar E) (a : HeightOneSpectrum (𝓞 E) →₀ ℕ) (s : ℂ), finEps χ a s = finEps χ a (1 / 2) * (((discr E).natAbs * a.prod fun v k => Ideal.absNorm v.asIdeal ^ k : ℕ) : ℂ) ^ (1 / 2 - s) :=
  fun _ _ _ χ a s => GlobalTheory.HeckeEpsAbs.finEps_eq χ a s

end GlobalTheory.CompanionTheory.HeckeBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteEpsilonFactorDependenceOnS =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HaarIntegralIntegersFiniteSum =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HaarIntegralIntegersFiniteSum", "h": "module\n\npublic import GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\nimport Aesop.Main\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\nimport GroundTheory.GlobalFields.CompletionAtPlace.Integers\npublic import GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

open MeasureTheory

namespace GlobalTheory.CompanionTheory.PeriodicInt

variable {E : Type} [Field E] [NumberField E] {v : HeightOneSpectrum (𝓞 E)}

theorem valued_algebraMap (x : E) :
    Valued.v (algebraMap E (v.adicCompletion E) x) = v.valuation E x :=
  HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v x

theorem valued_int_le_one (a : 𝓞 E) :
    Valued.v (algebraMap E (v.adicCompletion E) (a : E)) ≤ 1 := by
  rw [valued_algebraMap]
  exact v.valuation_le_one a

theorem valued_le_one_of_mem_valBall {m : ℕ} {x : v.adicCompletion E}
    (h : x ∈ valBall (v.adicCompletion E) (m : ℤ)) : Valued.v x ≤ 1 := by
  refine (mem_valBall_iff_valued.1 h).trans ?_
  rw [← WithZero.exp_zero, WithZero.exp_le_exp]
  omega

theorem exists_int_close (m : ℕ) {y : v.adicCompletion E} (hy : Valued.v y ≤ 1) :
    ∃ a : 𝓞 E, y - algebraMap E (v.adicCompletion E) (a : E) ∈
      valBall (v.adicCompletion E) (m : ℤ) := by
  have hopen : IsOpen {z : v.adicCompletion E | y - z ∈ valBall (v.adicCompletion E) (m : ℤ)} :=
    (isOpen_valBall (m : ℤ)).preimage (continuous_const.sub continuous_id)
  obtain ⟨x, hx⟩ := (v.denseRange_algebraMap E).exists_mem_open hopen
    ⟨y, by simp [zero_mem]⟩
  have hx' : y - algebraMap E (v.adicCompletion E) x ∈ valBall (v.adicCompletion E) (m : ℤ) := hx
  have h1 : Valued.v (algebraMap E (v.adicCompletion E) x) ≤ 1 := by
    have e : algebraMap E (v.adicCompletion E) x =
        y - (y - algebraMap E (v.adicCompletion E) x) := by ring
    rw [e]
    exact (Valuation.map_sub _ _ _).trans (max_le hy (valued_le_one_of_mem_valBall hx'))
  rw [valued_algebraMap] at h1
  obtain ⟨a, ha⟩ := v.exists_valuation_sub_lt_of_integer h1
    (Units.mk0 _ (WithZero.exp_ne_zero (a := -(m : ℤ))))
  rw [Units.val_mk0] at ha
  refine ⟨a, ?_⟩
  have e : y - algebraMap E (v.adicCompletion E) (a : E) =
      (y - algebraMap E (v.adicCompletion E) x) +
        algebraMap E (v.adicCompletion E) (x - (a : E)) := by
    rw [map_sub]; ring
  rw [e]
  refine add_mem hx' (mem_valBall_iff_valued.2 ?_)
  rw [valued_algebraMap, Valuation.map_sub_swap]
  exact ha.le

theorem sub_mem_pow_of_close {m : ℕ} {a b : 𝓞 E}
    (h : algebraMap E (v.adicCompletion E) (a : E) - algebraMap E (v.adicCompletion E) (b : E) ∈
      valBall (v.adicCompletion E) (m : ℤ)) : a - b ∈ v.asIdeal ^ m := by
  have h1 := mem_valBall_iff_valued.1 h
  rw [← map_sub, valued_algebraMap] at h1
  rw [← v.intValuation_le_pow_iff_mem, ← v.valuation_of_algebraMap (K := E)]
  simpa using h1

theorem close_of_sub_mem_pow {m : ℕ} {a b : 𝓞 E} (h : a - b ∈ v.asIdeal ^ m) :
    algebraMap E (v.adicCompletion E) (a : E) - algebraMap E (v.adicCompletion E) (b : E) ∈
      valBall (v.adicCompletion E) (m : ℤ) := by
  rw [mem_valBall_iff_valued, ← map_sub, valued_algebraMap]
  exact valuation_sub_le h

theorem integral_eq_finsum : ∀ (E : Type) [Field E] [NumberField E] (v : HeightOneSpectrum (𝓞 E)) (m : ℕ) (g : v.adicCompletion E → ℂ), (∀ y, 1 < Valued.v y → g y = 0) → (∀ y h : v.adicCompletion E, Valued.v h ≤ WithZero.exp (-(m : ℤ)) → g (y + h) = g y) → ∫ y, g y ∂haarIntegers (v.adicCompletion E) = (((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℂ))⁻¹ * ∑ᶠ r : 𝓞 E ⧸ v.asIdeal ^ m, g (algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E)) := by
  intro E _ _ v m g h0 hp
  classical
  have : Finite (𝓞 E ⧸ v.asIdeal ^ m) :=
    Ideal.finiteQuotientOfFreeOfNeBot _ (pow_ne_zero _ v.ne_bot)
  have := Fintype.ofFinite (𝓞 E ⧸ v.asIdeal ^ m)
  let a : (𝓞 E ⧸ v.asIdeal ^ m) → v.adicCompletion E := fun r =>
    algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E)
  let S : (𝓞 E ⧸ v.asIdeal ^ m) → Set (v.adicCompletion E) := fun r =>
    (fun y => y + (-a r)) ⁻¹' (valBall (v.adicCompletion E) (m : ℤ) : Set (v.adicCompletion E))
  have memS : ∀ r y, y ∈ S r ↔ y - a r ∈ valBall (v.adicCompletion E) (m : ℤ) := fun r y => by
    simp only [S, Set.mem_preimage, SetLike.mem_coe, sub_eq_add_neg]
  have hSm : ∀ r, MeasurableSet (S r) := fun r =>
    ((isOpen_valBall (m : ℤ)).preimage (continuous_id.add continuous_const)).measurableSet
  have hB : (haarIntegers (v.adicCompletion E)).real
      (valBall (v.adicCompletion E) (m : ℤ) : Set (v.adicCompletion E)) =
      (((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℝ))⁻¹ := by
    rw [measureReal_def, haarIntegers_valBall, residueCard_adicCompletion, ENNReal.coe_toReal,
      NNReal.coe_zpow, NNReal.coe_natCast, zpow_neg, zpow_natCast]
    push_cast
    rfl
  have hSμ : ∀ r, (haarIntegers (v.adicCompletion E)).real (S r) =
      (((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℝ))⁻¹ := fun r => by
    rw [← hB, measureReal_def, measureReal_def]
    exact congrArg ENNReal.toReal (measure_preimage_add_right _ _ _)
  have hfin : ∀ r, haarIntegers (v.adicCompletion E) (S r) ≠ ⊤ := fun r => by
    have : haarIntegers (v.adicCompletion E) (S r) =
        haarIntegers (v.adicCompletion E)
          (valBall (v.adicCompletion E) (m : ℤ) : Set (v.adicCompletion E)) :=
      measure_preimage_add_right _ _ _
    rw [this, haarIntegers_valBall]
    exact ENNReal.coe_ne_top
  have hdecomp : ∀ y, g y = ∑ r, (S r).indicator (fun _ => g (a r)) y := by
    intro y
    by_cases hy : Valued.v y ≤ 1
    · obtain ⟨b, hb⟩ := exists_int_close (v := v) m hy
      set r : 𝓞 E ⧸ v.asIdeal ^ m := Ideal.Quotient.mk _ b with hr
      have hclose : a r - algebraMap E (v.adicCompletion E) (b : E) ∈
          valBall (v.adicCompletion E) (m : ℤ) :=
        close_of_sub_mem_pow (Ideal.Quotient.eq.1 (by rw [Ideal.Quotient.mk_out]))
      have hyr : y ∈ S r := by
        rw [memS]
        have e : y - a r = (y - algebraMap E (v.adicCompletion E) (b : E)) -
            (a r - algebraMap E (v.adicCompletion E) (b : E)) := by ring
        rw [e]
        exact sub_mem hb hclose
      rw [Finset.sum_eq_single r, Set.indicator_of_mem hyr]
      · have := hp (a r) (y - a r) (mem_valBall_iff_valued.1 ((memS r y).1 hyr))
        rwa [add_sub_cancel] at this
      · intro r' _ hne
        refine Set.indicator_of_notMem (fun hyr' => hne ?_) _
        have h1 := sub_mem ((memS r y).1 hyr) ((memS r' y).1 hyr')
        have e : y - a r - (y - a r') = a r' - a r := by ring
        rw [e] at h1
        have h2 := sub_mem_pow_of_close h1
        have h3 := Ideal.Quotient.eq.2 h2
        simpa [Ideal.Quotient.mk_out] using h3
      · simp
    · rw [h0 y (not_le.1 hy)]
      refine (Finset.sum_eq_zero fun r _ => Set.indicator_of_notMem (fun hyr => hy ?_) _).symm
      have e : y = (y - a r) + a r := by ring
      rw [e]
      exact (Valuation.map_add _ _ _).trans
        (max_le (valued_le_one_of_mem_valBall ((memS r y).1 hyr)) (valued_int_le_one _))
  have hint : ∀ r, Integrable ((S r).indicator (fun _ => g (a r)))
      (haarIntegers (v.adicCompletion E)) := fun r =>
    (integrable_indicator_iff (hSm r)).2 (integrableOn_const (hfin r))
  calc ∫ y, g y ∂haarIntegers (v.adicCompletion E)
      = ∫ y, ∑ r, (S r).indicator (fun _ => g (a r)) y ∂haarIntegers (v.adicCompletion E) :=
        integral_congr_ae (Filter.Eventually.of_forall hdecomp)
    _ = ∑ r, ∫ y, (S r).indicator (fun _ => g (a r)) y ∂haarIntegers (v.adicCompletion E) :=
        integral_finsetSum _ fun r _ => hint r
    _ = _ := by
        rw [finsum_eq_sum_of_fintype, Finset.mul_sum]
        refine Finset.sum_congr rfl fun r _ => ?_
        rw [integral_indicator_const _ (hSm r), hSμ r, Complex.real_smul]
        push_cast
        rfl

end GlobalTheory.CompanionTheory.PeriodicInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HaarIntegralIntegersFiniteSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeCharacterConductorExponent =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeCharacterConductorExponent", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.CompletedLStripBounds\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

namespace GlobalTheory.CompanionTheory.HeckeBridge

variable {E : Type} [Field E] [NumberField E]

theorem comp_finiteUnitsSingle (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) :
    (((toHecke χ hu).toIdele.comp ofFinite).comp (finiteUnitsSingle v)) =
      ((toHecke χ hu).localComponent v : (v.adicCompletion E)ˣ →* Circle) := by
  refine MonoidHom.ext fun a => ?_
  show (toHecke χ hu).toIdele (ofFinite (finiteUnitsSingle v a)) = (toHecke χ hu).localComponent v a
  rw [GroundTheory.Global.IdeleGroup.ofFinite_finiteUnitsSingle, GroundTheory.Global.HeckeCharacter.localComponent_apply]

private theorem toHecke_local_eq_one_iff (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E))
    (x : (v.adicCompletion E)ˣ) :
    (((toHecke χ hu).toIdele.comp ofFinite).comp (finiteUnitsSingle v)) x = 1 ↔ χ.loc v x = 1 := by
  rw [comp_finiteUnitsSingle χ hu v]
  have h := coe_localComponent χ hu v x
  constructor
  · intro h1
    apply Units.ext
    rw [← h]
    have h1' : (toHecke χ hu).localComponent v x = 1 := h1
    rw [h1', Circle.coe_one, Units.val_one]
  · intro h1
    have h1' : (toHecke χ hu).localComponent v x = 1 := by
      apply Circle.ext
      rw [h, h1, Units.val_one, Circle.coe_one]
    exact h1'

theorem levelLe_iff_unitsLevel_le_ker (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) (n : ℕ) :
    χ.LevelLe v n ↔
      unitsLevel v n ≤ (((toHecke χ hu).toIdele.comp ofFinite).comp (finiteUnitsSingle v)).ker := by
  unfold Formalism.L2.Host.HChar.LevelLe
  constructor
  · intro h x hx
    rw [GroundTheory.Global.mem_unitsLevel] at hx
    rw [MonoidHom.mem_ker, toHecke_local_eq_one_iff χ hu v x]
    exact h x hx.1 hx.2
  · intro h x hux hx
    rw [← toHecke_local_eq_one_iff χ hu v x]
    exact h (GroundTheory.Global.mem_unitsLevel.mpr ⟨hux, hx⟩)

theorem levelLe_iff_conductorExponentAt (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) (n : ℕ) :
    χ.LevelLe v n ↔ conductorExponentAt ((toHecke χ hu).toIdele.comp ofFinite) v ≤ n := by
  rw [levelLe_iff_unitsLevel_le_ker χ hu v n]
  exact GroundTheory.Global.unitsLevel_le_ker_iff v GroundTheory.Global.Circle.noSmallSubgroups _
    (((toHecke χ hu).continuous_toIdele.comp GroundTheory.Global.IdeleGroup.continuous_ofFinite).comp
      (GroundTheory.Global.IdeleGroup.continuous_finiteUnitsSingle v))

private theorem asIdeal_pow_dvd_finprod_iff {R : Type*} [CommRing R] [IsDedekindDomain R]
    {a : HeightOneSpectrum R → ℕ} (ha : (Function.support a).Finite) (v : HeightOneSpectrum R) (k : ℕ) :
    v.asIdeal ^ k ∣ ∏ᶠ w : HeightOneSpectrum R, w.asIdeal ^ a w ↔ k ≤ a v := by
  classical
  have hfin : (Function.mulSupport fun w : HeightOneSpectrum R => w.asIdeal ^ a w).Finite := by
    rw [GroundTheory.Global.mulSupport_asIdeal_pow]; exact ha
  constructor
  · intro hk
    by_contra hlt
    rw [not_le] at hlt
    set b : HeightOneSpectrum R → ℕ := Function.update a v 0 with hb
    have hbfin : (Function.support b).Finite := by
      refine ha.subset (fun w hw => ?_)
      by_cases hwv : w = v
      · subst hwv
        simp [hb] at hw
      · simpa [hb, Function.update_of_ne hwv] using hw
    have hcfin : (Function.mulSupport fun w : HeightOneSpectrum R =>
        w.asIdeal ^ (if w = v then a v else 0)).Finite := by
      refine (Set.finite_singleton v).subset (fun w hw => ?_)
      rw [Set.mem_singleton_iff]
      by_contra hwv
      exact hw (by simp [hwv])
    have hbfin' : (Function.mulSupport fun w : HeightOneSpectrum R => w.asIdeal ^ b w).Finite := by
      rw [GroundTheory.Global.mulSupport_asIdeal_pow]; exact hbfin
    have hsingle : ∏ᶠ w : HeightOneSpectrum R, w.asIdeal ^ (if w = v then a v else 0) = v.asIdeal ^ a v := by
      rw [finprod_eq_single _ v (fun w hw => by simp [hw])]
      simp
    have hsplit : ∏ᶠ w : HeightOneSpectrum R, w.asIdeal ^ a w =
        v.asIdeal ^ a v * ∏ᶠ w : HeightOneSpectrum R, w.asIdeal ^ b w := by
      rw [← hsingle, ← finprod_mul_distrib hcfin hbfin']
      refine finprod_congr fun w => ?_
      by_cases hwv : w = v
      · subst hwv
        simp [hb]
      · simp [hb, hwv]
    rw [hsplit] at hk
    have hpow : v.asIdeal ^ k = v.asIdeal ^ a v * v.asIdeal ^ (k - a v) := by
      rw [← pow_add]
      congr 1
      omega
    rw [hpow] at hk
    have hne0 : v.asIdeal ^ a v ≠ 0 := pow_ne_zero _ (by rw [Ideal.zero_eq_bot]; exact v.ne_bot)
    have hk' := (mul_dvd_mul_iff_left hne0).mp hk
    have hv : v.asIdeal ∣ ∏ᶠ w : HeightOneSpectrum R, w.asIdeal ^ b w :=
      (dvd_pow_self _ (by omega)).trans hk'
    have h1 := (GroundTheory.Global.asIdeal_dvd_finprod_iff hbfin v).mp hv
    simp [hb] at h1
  · intro hk
    exact (pow_dvd_pow _ hk).trans
      (finprod_mem_dvd (f := fun w : HeightOneSpectrum R => w.asIdeal ^ a w) v hfin)

theorem multiplicity_conductor_toHecke (E : Type) [Field E] [NumberField E] (χ : HChar E) (hu : IsUnitary χ)
    (v : HeightOneSpectrum (𝓞 E)) (m : ℕ) (h : ExpAt χ v m) :
    multiplicity v.asIdeal (toHecke χ hu).conductor = m := by
  have hcont : Continuous ((toHecke χ hu).toIdele.comp ofFinite) :=
    (toHecke χ hu).continuous_toIdele.comp GroundTheory.Global.IdeleGroup.continuous_ofFinite
  have hfin := GroundTheory.Global.IdeleGroup.finite_support_conductorExponentAt
    GroundTheory.Global.Circle.noSmallSubgroups _ hcont
  have hne := (toHecke χ hu).conductor_ne_bot
  have hcond : χ.IsCond (toHecke χ hu).conductor := by
    unfold Formalism.L2.Host.HChar.IsCond
    refine ⟨hne, fun w n => ?_⟩
    rw [levelLe_iff_conductorExponentAt χ hu w n]
    have h1 := asIdeal_pow_dvd_finprod_iff hfin w (n + 1)
    change _ ↔ ¬ w.asIdeal ^ (n + 1) ∣ ∏ᶠ u : HeightOneSpectrum (𝓞 E),
      u.asIdeal ^ conductorExponentAt ((toHecke χ hu).toIdele.comp ofFinite) u
    rw [h1]
    constructor <;> intro h2 <;> omega
  exact (GlobalTheory.CMVal.ExpAt.unique h ((GlobalTheory.CMVal.isCond_iff_expAt χ hne).mp hcond v)).symm

end GlobalTheory.CompanionTheory.HeckeBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeCharacterConductorExponent =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeGaussSumLocalTerm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeGaussSumLocalTerm", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import GroundTheory.GlobalFields.TateThesis.EulerFactorsFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

namespace GlobalTheory.CompanionTheory.HeckeBridge.GaussSum

variable {E : Type} [Field E] [NumberField E]

theorem dvd_conductor (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) {m : ℕ} (hm : m ≠ 0)
    (h : ExpAt χ v m) : v.asIdeal ∣ (toHecke χ hu).conductor := by
  by_contra hv
  refine h.not_unrAt hm fun x hx => ?_
  have hx' : Valued.v (x : v.adicCompletion E) = 1 := hx
  have hmem : x ∈ (Submonoid.ofClass (v.adicCompletionIntegers E)).units := by
    refine Submonoid.mem_units_iff _ _ |>.2 ⟨(HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).2 hx'.le,
      (HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).2 ?_⟩
    rw [Units.val_inv_eq_inv_val, map_inv₀, hx', inv_one]
  have h1 := (toHecke χ hu).localComponent_eq_one_of_not_dvd hv hmem
  have h2 := coe_localComponent χ hu v x
  rw [h1] at h2
  exact Units.ext (by simpa using h2.symm)

theorem valued_eq_one {v : HeightOneSpectrum (𝓞 E)} {y : 𝓞 E} (hy : y ∉ v.asIdeal) :
    Valued.v (algebraMap E (v.adicCompletion E) (y : E)) = 1 := by
  exact (_root_.Formalism.UG.P.levelaf_valued_algebraMap v _).trans ((v.valuation_eq_one_iff_notMem (K := E)).2 hy)

theorem valued_ne_one {v : HeightOneSpectrum (𝓞 E)} {y : 𝓞 E} (hy : y ∈ v.asIdeal) :
    Valued.v (algebraMap E (v.adicCompletion E) (y : E)) ≠ 1 := by
  exact fun h => (v.valuation_eq_one_iff_notMem (K := E)).1 ((_root_.Formalism.UG.P.levelaf_valued_algebraMap v _).symm.trans h) hy

theorem term_of_notMem (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E))
    (hv : v.asIdeal ∣ (toHecke χ hu).conductor) (c : Eˣ) {y : 𝓞 E} (hy : y ∉ v.asIdeal) :
    (toHecke χ hu).finiteTest v (algebraMap E (v.adicCompletion E) (y : E)) *
        psiAt v (((atFin v c : (v.adicCompletion E)ˣ) : v.adicCompletion E)⁻¹ * algebraMap E (v.adicCompletion E) (y : E)) =
      gaussTerm χ v c (y : E) := by
  have hy0 : (y : E) ≠ 0 := by
    intro h0
    have : y = 0 := by exact_mod_cast h0
    exact hy (this ▸ v.asIdeal.zero_mem)
  have h1 := (toHecke χ hu).finiteTest_of_dvd hv (atFin v (Units.mk0 (y : E) hy0)) (valued_eq_one hy)
  have h2 : ((atFin v (Units.mk0 (y : E) hy0) : (v.adicCompletion E)ˣ) : v.adicCompletion E) = algebraMap E (v.adicCompletion E) (y : E) := rfl
  rw [h2] at h1
  rw [h1, coe_localComponent, gaussTerm, dite_eq_right hy0, Units.val_inv_eq_inv_val]
  have h3 : ((atFin v c : (v.adicCompletion E)ˣ) : v.adicCompletion E) = algebraMap E (v.adicCompletion E) (c : E) := rfl
  rw [h3, map_div₀, div_eq_mul_inv, mul_comm (algebraMap E _ _)]
  rfl

theorem finiteTest_sum_eq_gaussSumAt (E : Type) [Field E] [NumberField E] (χ : HChar E) (hu : IsUnitary χ)
    (v : HeightOneSpectrum (𝓞 E)) (m : ℕ) (hm : m ≠ 0) (hE : ExpAt χ v m) :
    ∑ᶠ r : 𝓞 E ⧸ v.asIdeal ^ m, (toHecke χ hu).finiteTest v (algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E)) *
      psiAt v (((atFin v (unif v ^ (m + diffExp v)) : (v.adicCompletion E)ˣ) : v.adicCompletion E)⁻¹ *
        algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E)) =
      gaussSumAt χ v m (unif v ^ (m + diffExp v)) := by
  have hv := dvd_conductor χ hu v hm hE
  rw [gaussSumAt]
  have hG : ∀ y : (𝓞 E ⧸ v.asIdeal ^ m)ˣ, gaussTerm χ v (unif v ^ (m + diffExp v)) ((Quotient.out (y : 𝓞 E ⧸ v.asIdeal ^ m) : 𝓞 E) : E) =
      (toHecke χ hu).finiteTest v (algebraMap E (v.adicCompletion E) ((Quotient.out (y : 𝓞 E ⧸ v.asIdeal ^ m) : 𝓞 E) : E)) *
      psiAt v (((atFin v (unif v ^ (m + diffExp v)) : (v.adicCompletion E)ˣ) : v.adicCompletion E)⁻¹ *
        algebraMap E (v.adicCompletion E) ((Quotient.out (y : 𝓞 E ⧸ v.asIdeal ^ m) : 𝓞 E) : E)) :=
    fun y => (term_of_notMem χ hu v hv _ (out_notMem v hm y)).symm
  rw [finsum_congr hG, ← finsum_mem_range (g := ((↑) : (𝓞 E ⧸ v.asIdeal ^ m)ˣ → 𝓞 E ⧸ v.asIdeal ^ m)) Units.val_injective
    (f := fun r : 𝓞 E ⧸ v.asIdeal ^ m => (toHecke χ hu).finiteTest v (algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E)) *
      psiAt v (((atFin v (unif v ^ (m + diffExp v)) : (v.adicCompletion E)ˣ) : v.adicCompletion E)⁻¹ *
        algebraMap E (v.adicCompletion E) ((Quotient.out r : 𝓞 E) : E))), finsum_mem_def]
  refine finsum_congr fun r => ?_
  by_cases hr : r ∈ Set.range ((↑) : (𝓞 E ⧸ v.asIdeal ^ m)ˣ → 𝓞 E ⧸ v.asIdeal ^ m)
  · rw [Set.indicator_of_mem hr]
  · rw [Set.indicator_of_notMem hr]
    have hmem : (Quotient.out r : 𝓞 E) ∈ v.asIdeal := by
      by_contra hn
      have h1 := Ideal.Quotient.isUnit_mk_pow_of_notMem v.asIdeal (n := m) hn
      rw [Ideal.Quotient.mk_out] at h1
      exact hr ⟨h1.unit, rfl⟩
    rw [(toHecke χ hu).finiteTest_eq_zero_of_dvd hv (valued_ne_one hmem), zero_mul]

end GlobalTheory.CompanionTheory.HeckeBridge.GaussSum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeGaussSumLocalTerm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeLFunctionEulerProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeLFunctionEulerProduct", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane\npublic import GroundTheory.GlobalFields.TateThesis.HeckeLFunction\npublic import GroundTheory.GlobalFields.TateThesis.NonvanishingPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.CompletedLStripBounds\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

namespace GlobalTheory.CompanionTheory.HeckeBridge

variable {E : Type} [Field E] [NumberField E]

theorem unrAt_iff_not_dvd_conductor (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) :
    χ.UnrAt v ↔ ¬ v.asIdeal ∣ (toHecke χ hu).conductor := by
  rw [HeckeCharacter.not_dvd_conductor_iff]
  constructor
  · intro h a ha
    rw [Submonoid.mem_units_iff] at ha
    have h1 : Valued.v (a : v.adicCompletion E) ≤ 1 := ha.1
    have h2 : Valued.v ((a⁻¹ : (v.adicCompletion E)ˣ) : v.adicCompletion E) ≤ 1 := ha.2
    have h3 : Valued.v (a : v.adicCompletion E) = 1 := by
      refine le_antisymm h1 ?_
      rw [Units.val_inv_eq_inv_val, map_inv₀] at h2
      exact (inv_le_one₀ (by simp [zero_lt_iff])).1 h2
    rw [MonoidHom.mem_ker]
    show (toHecke χ hu).localComponent v a = 1
    apply Circle.ext
    rw [coe_localComponent, h a h3]
    simp
  · intro h x hx
    have hx' : x ∈ (Submonoid.ofClass (v.adicCompletionIntegers E)).units := by
      rw [Submonoid.mem_units_iff]
      refine ⟨le_of_eq hx, ?_⟩
      show Valued.v ((x⁻¹ : (v.adicCompletion E)ˣ) : v.adicCompletion E) ≤ 1
      rw [Units.val_inv_eq_inv_val, map_inv₀]
      have hx1 : Valued.v (x : v.adicCompletion E) = 1 := hx
      rw [hx1, inv_one]
    have h1 : (toHecke χ hu).localComponent v x = 1 := MonoidHom.mem_ker.1 (h hx')
    have h2 := coe_localComponent χ hu v x
    rw [h1] at h2
    ext
    simpa using h2.symm

theorem coeff_eq_val (χ : HChar E) (hu : IsUnitary χ) {v : HeightOneSpectrum (𝓞 E)}
    (hv : ¬ v.asIdeal ∣ (toHecke χ hu).conductor) :
    (toHecke χ hu).coeff v.asIdeal = (χ.val v : ℂ) := by
  rw [(toHecke χ hu).coeff_asIdeal_eq_toIdele hv (unif_spec v), ← HeckeCharacter.localComponent_apply,
    coe_localComponent]
  rfl

theorem hasProd_eulerFactor_toHecke : ∀ (E : Type) [Field E] [NumberField E] (χ : HChar E) (hu : IsUnitary χ) (s : ℂ),
    1 < s.re → HasProd (eulerFactor χ s) ((toHecke χ hu).LFunction s) := by
  intro E _ _ χ hu s hs
  have h : eulerFactor χ s = fun v : HeightOneSpectrum (𝓞 E) ↦
      (1 - (toHecke χ hu).coeff v.asIdeal * (Ideal.absNorm v.asIdeal : ℂ) ^ (-s))⁻¹ := by
    funext v
    unfold eulerFactor
    by_cases hv : χ.UnrAt v
    · rw [if_pos hv, coeff_eq_val χ hu ((unrAt_iff_not_dvd_conductor χ hu v).1 hv)]
    · rw [if_neg hv, HeckeCharacter.coeff_asIdeal_of_dvd _
        (not_not.1 (mt (unrAt_iff_not_dvd_conductor χ hu v).2 hv))]
      simp
  rw [h]
  exact (toHecke χ hu).LFunction_hasProd_all hs

end GlobalTheory.CompanionTheory.HeckeBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeLFunctionEulerProduct =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAdditiveCharacterEqAdelic =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAdditiveCharacterEqAdelic", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\npublic import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\nimport GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\nimport GroundTheory.LocalFields.FilteredSurj\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

noncomputable section

namespace GlobalTheory.CompanionTheory.PsiStd

def adelicAddChar (E : Type) [Field E] [NumberField E] : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E) ℂ :=
  Circle.coeHom.compAddChar (adelicChar E)

theorem adelicAddChar_apply (E : Type) [Field E] [NumberField E] (a : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E) :
    adelicAddChar E a = (adelicChar E a : ℂ) := rfl

theorem isStdChar_adelicAddChar (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) :
    GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.IsStdChar E (adelicAddChar E) := by
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · show Continuous (fun a : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E => ((adelicChar E a : Circle) : ℂ))
    exact continuous_subtype_val.comp continuous_adelicChar
  · intro x
    rw [adelicAddChar_apply]
    have h := (adelicChar E x).2
    exact mem_sphere_zero_iff_norm.mp h
  · intro a
    rw [adelicAddChar_apply]
    have h := adelicChar_algebraMap (K := E) a
    rw [show (Algebra.algebraMap E (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E) a)
        = algebraMap E (NumberField.AdeleRing (𝓞 E) E) a from rfl, h]
    simp
  · obtain ⟨x, hx⟩ := AddChar.ne_one_iff.mp (adelicChar_ne_one (K := E))
    refine ⟨x, ?_⟩
    rw [adelicAddChar_apply]
    intro h
    apply hx
    exact Subtype.ext h
  · intro x
    show ((adelicChar E (x, 0) : Circle) : ℂ) = GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.stdInf E x
    rw [adelicChar_infinite, Real.fourierChar_apply]
    unfold GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.stdInf
    have ht : (infiniteTrace E x) = GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.traceInf E x := rfl
    rw [ht]
    congr 1
    push_cast
    ring

private theorem eq_one_of_norm_one_of_forall_re_pow_pos (c : ℂ) (hc : ‖c‖ = 1)
    (h : ∀ m : ℕ, 0 < (c ^ m).re) : c = 1 := by
  have hce : c = Complex.exp (↑(Complex.arg c) * Complex.I) := by
    have h' := Complex.norm_mul_exp_arg_mul_I c
    rw [hc] at h'
    simpa using h'.symm
  by_cases h0 : Complex.arg c = 0
  · rw [hce, h0]
    simp
  exfalso
  set θ := Complex.arg c with hθ
  have hpos : 0 < |θ| := abs_pos.mpr h0
  have hle : |θ| ≤ Real.pi := Complex.abs_arg_le_pi c
  set m : ℕ := ⌈Real.pi / (2 * |θ|)⌉₊ with hm
  have h2pos : 0 < 2 * |θ| := by positivity
  have h1 : Real.pi / (2 * |θ|) ≤ (m : ℝ) := Nat.le_ceil _
  have h2 : (m : ℝ) < Real.pi / (2 * |θ|) + 1 := Nat.ceil_lt_add_one (by positivity)
  have h1' : Real.pi ≤ (m : ℝ) * (2 * |θ|) := (div_le_iff₀ h2pos).mp h1
  have h2' : ((m : ℝ) - 1) * (2 * |θ|) < Real.pi := by
    have : (m : ℝ) - 1 < Real.pi / (2 * |θ|) := by linarith
    exact (lt_div_iff₀ h2pos).mp this
  have hA : Real.pi / 2 ≤ (m : ℝ) * |θ| := by nlinarith
  have hB : (m : ℝ) * |θ| ≤ Real.pi + Real.pi / 2 := by nlinarith
  have hre : (c ^ m).re = Real.cos ((m : ℝ) * |θ|) := by
    rw [hce, ← Complex.exp_nat_mul]
    have hx : (↑m * (↑θ * Complex.I) : ℂ) = ↑((m : ℝ) * θ) * Complex.I := by
      push_cast
      ring
    rw [hx, Complex.exp_ofReal_mul_I_re, ← Real.cos_abs, abs_mul, Nat.abs_cast]
  have hcos := Real.cos_nonpos_of_pi_div_two_le_of_le hA hB
  have := h m
  rw [hre] at this
  linarith

private theorem stdChar_finite_algebraMap_eq_stdInf_neg (E : Type) [Field E] [NumberField E]
    (ψ : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E) ℂ) (hψ : GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.IsStdChar E ψ) (k : E) :
    ψ (finiteAdeleInr (algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k)) =
      GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.stdInf E (-(algebraMap E (NumberField.InfiniteAdeleRing E) k)) := by
  have hsplit : (finiteAdeleInr (algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k) :
      NumberField.AdeleRing (𝓞 E) E) =
      algebraMap E (NumberField.AdeleRing (𝓞 E) E) k +
        infiniteAdeleInl (-(algebraMap E (NumberField.InfiniteAdeleRing E) k)) := by
    rw [← infiniteAdeleInl_add_finiteAdeleInr (algebraMap E (NumberField.AdeleRing (𝓞 E) E) k),
      adeleRing_algebraMap_fst, adeleRing_algebraMap_snd, map_neg]
    abel
  rw [hsplit, AddChar.map_add_eq_mul]
  have h1 : ψ (algebraMap E (NumberField.AdeleRing (𝓞 E) E) k) = 1 := hψ.1.2.2.1 k
  rw [h1, one_mul]
  exact hψ.2 _

private theorem valued_natCast_le_one_and_lt (E : Type) [Field E] [NumberField E]
    (v : HeightOneSpectrum (𝓞 E)) (m : ℕ) :
    Valued.v (m : v.adicCompletion E) ≤ 1 ∧
      ((m : 𝓞 E) ∈ v.asIdeal → Valued.v (m : v.adicCompletion E) < 1) := by
  have h2 := IsDedekindDomain.HeightOneSpectrum.valuedAdicCompletion_eq_valuation (K := E) v
    ((m : ℕ) : 𝓞 E)
  simp at h2
  constructor
  · have h3 : IsDedekindDomain.HeightOneSpectrum.valuation E v ((m : ℕ) : E) ≤ 1 := by
      simpa using IsDedekindDomain.HeightOneSpectrum.valuation_le_one (K := E) v ((m : ℕ) : 𝓞 E)
    rw [h2]
    exact h3
  · intro hm
    have h4 : IsDedekindDomain.HeightOneSpectrum.valuation E v ((m : ℕ) : E) < 1 := by
      simpa using (IsDedekindDomain.HeightOneSpectrum.valuation_lt_one_iff_mem (K := E) v _).mpr hm
    rw [h2]
    exact h4

private theorem eventually_natCast_pow_mul_mem_nhds (E : Type) [Field E] [NumberField E]
    (v : HeightOneSpectrum (𝓞 E)) (u : Set (v.adicCompletion E))
    (hu : u ∈ nhds (0 : v.adicCompletion E))
    (q : ℕ) (hq : Valued.v (q : v.adicCompletion E) < 1) :
    ∃ N : ℕ, ∀ M : ℕ, N ≤ M → ∀ x : v.adicCompletion E, Valued.v x ≤ 1 →
      (q : v.adicCompletion E) ^ M * x ∈ u := by
  obtain ⟨γ, hγ⟩ := Valued.mem_nhds_zero.mp hu
  obtain ⟨y0, hy0⟩ := MonoidWithZeroHom.ValueGroup₀.restrict₀_surjective _ γ.val
  have hy0' : Valued.v.restrict y0 = γ.val := by rw [Valuation.restrict_def]; exact hy0
  have hy0ne : Valued.v y0 ≠ 0 := by
    intro h0
    have hz : y0 = 0 := (Valuation.zero_iff _).mp h0
    rw [hz, map_zero] at hy0'
    exact γ.ne_zero hy0'.symm
  have hq1 : Valued.v (q : v.adicCompletion E) ≤ WithZero.exp (-1 : ℤ) := by
    by_cases hq0 : Valued.v (q : v.adicCompletion E) = 0
    · rw [hq0]; exact zero_le
    · have hlog : WithZero.log (Valued.v (q : v.adicCompletion E)) < 0 := by
        have h1 : WithZero.exp (WithZero.log (Valued.v (q : v.adicCompletion E))) <
            WithZero.exp (0 : ℤ) := by
          rw [WithZero.exp_log hq0, WithZero.exp_zero]; exact hq
        exact WithZero.exp_lt_exp.mp h1
      calc Valued.v (q : v.adicCompletion E)
          ≤ WithZero.exp (WithZero.log (Valued.v (q : v.adicCompletion E))) := WithZero.le_exp_log
        _ ≤ WithZero.exp (-1 : ℤ) := WithZero.exp_le_exp.mpr (by omega)
  refine ⟨(-(WithZero.log (Valued.v y0))).toNat + 1, fun M hM x hx => hγ ?_⟩
  show Valued.v.restrict ((q : v.adicCompletion E) ^ M * x) < γ.val
  rw [← hy0', Valuation.restrict_lt_iff, map_mul, Valuation.map_pow]
  calc Valued.v (q : v.adicCompletion E) ^ M * Valued.v x
      ≤ Valued.v (q : v.adicCompletion E) ^ M := by
        exact mul_le_of_le_one_right' hx
    _ ≤ WithZero.exp (-1 : ℤ) ^ M := pow_le_pow_left' hq1 M
    _ = WithZero.exp (M • (-1 : ℤ)) := (WithZero.exp_nsmul M (-1)).symm
    _ < Valued.v y0 := by
        rw [← WithZero.exp_log hy0ne, WithZero.exp_lt_exp, nsmul_eq_mul]
        omega

private theorem stdChar_finiteAdele_eq (E : Type) [Field E] [NumberField E]
    (ψ ψ' : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF E) ℂ) (hψ : GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.IsStdChar E ψ)
    (hψ' : GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.IsStdChar E ψ') (a : IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) :
    ψ (finiteAdeleInr a) = ψ' (finiteAdeleInr a) := by
  classical
  set h : IsDedekindDomain.FiniteAdeleRing (𝓞 E) E → ℂ :=
    fun b => ψ (finiteAdeleInr b) * (ψ' (finiteAdeleInr b))⁻¹ with hh
  have hne : ∀ b, ψ' (finiteAdeleInr b) ≠ 0 := by
    intro b h0
    have h1 := hψ'.1.2.1 (finiteAdeleInr b)
    rw [h0, norm_zero] at h1
    exact zero_ne_one h1
  have hmul : ∀ b c, h (b + c) = h b * h c := by
    intro b c
    simp only [hh, map_add (f := _), AddChar.map_add_eq_mul, mul_inv]
    ring
  have h0 : h 0 = 1 := by simp [hh]
  have hpow : ∀ (n : ℕ) b, h (n • b) = h b ^ n := by
    intro n b
    induction n with
    | zero => simp [h0]
    | succ n ih => rw [succ_nsmul, hmul, ih, pow_succ]
  have hnorm : ∀ b, ‖h b‖ = 1 := by
    intro b
    simp only [hh, norm_mul, norm_inv, hψ.1.2.1, hψ'.1.2.1, inv_one, mul_one]
  have hF : ∀ k : E, h (algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k) = 1 := by
    intro k
    simp only [hh]
    rw [stdChar_finite_algebraMap_eq_stdInf_neg E ψ hψ k, stdChar_finite_algebraMap_eq_stdInf_neg E ψ' hψ' k]
    apply mul_inv_cancel₀
    unfold GlobalTheory.IndefiniteRowSideFullHecke.LocalDualIndex.stdInf
    exact Complex.exp_ne_zero _
  have hinr : Continuous (fun b : IsDedekindDomain.FiniteAdeleRing (𝓞 E) E =>
      (finiteAdeleInr b : NumberField.AdeleRing (𝓞 E) E)) := by
    show Continuous (fun b => ((0 : NumberField.InfiniteAdeleRing E), b))
    exact continuous_const.prodMk continuous_id
  have hcont : Continuous h := by
    have c1 : Continuous (fun b => ψ (finiteAdeleInr b)) := hψ.1.1.comp hinr
    have c2 : Continuous (fun b => ψ' (finiteAdeleInr b)) := hψ'.1.1.comp hinr
    exact c1.mul (c2.inv₀ hne)
  set U : Set (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) := {b | 0 < (h b).re} with hU
  have hUo : IsOpen U := isOpen_lt continuous_const (Complex.continuous_re.comp hcont)
  have h0U : (0 : IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) ∈ U := by
    show 0 < (h 0).re
    rw [h0]
    simp
  obtain ⟨n, hn0, hnU⟩ : ∃ n : ℕ, n ≠ 0 ∧
      ∀ z ∈ integralFiniteAdeles (𝓞 E) E, n • z ∈ U := by
    let ι : (∀ v : HeightOneSpectrum (𝓞 E), v.adicCompletionIntegers E) →
        IsDedekindDomain.FiniteAdeleRing (𝓞 E) E :=
      RestrictedProduct.structureMap _ _ Filter.cofinite
    have hιc : Continuous ι := RestrictedProduct.isEmbedding_structureMap.continuous
    have hι0 : ι 0 = 0 := by
      apply RestrictedProduct.ext
      intro v
      rfl
    have hV : ι ⁻¹' U ∈ nhds (0 : ∀ v : HeightOneSpectrum (𝓞 E), v.adicCompletionIntegers E) :=
      hιc.continuousAt.preimage_mem_nhds (hUo.mem_nhds (by rw [hι0]; exact h0U))
    rw [nhds_pi, Filter.mem_pi'] at hV
    obtain ⟨I, t, ht, hIt⟩ := hV
    have hloc : ∀ v : HeightOneSpectrum (𝓞 E), ∃ N : ℕ, ∀ M : ℕ, N ≤ M →
        ∀ y : v.adicCompletionIntegers E, ∀ x : v.adicCompletion E, Valued.v x ≤ 1 →
          (y : v.adicCompletion E) =
            ((Ideal.absNorm v.asIdeal : ℕ) : v.adicCompletion E) ^ M * x → y ∈ t v := by
      intro v
      obtain ⟨u, hu, hut⟩ := (mem_nhds_subtype _ _ _).mp (ht v)
      obtain ⟨N, hN⟩ := eventually_natCast_pow_mul_mem_nhds E v u hu (Ideal.absNorm v.asIdeal)
        ((valued_natCast_le_one_and_lt E v _).2 (Ideal.absNorm_mem v.asIdeal))
      refine ⟨N, fun M hM y x hx hyx => hut ?_⟩
      show (y : v.adicCompletion E) ∈ u
      rw [hyx]
      exact hN M hM x hx
    choose Nf hNf using hloc
    set S : ℕ := ∑ u ∈ I, Nf u with hS
    refine ⟨∏ u ∈ I, (Ideal.absNorm u.asIdeal) ^ S, ?_, ?_⟩
    · rw [Finset.prod_ne_zero_iff]
      intro u _
      exact pow_ne_zero _ (fun h0 => u.ne_bot (Ideal.absNorm_eq_zero_iff.mp h0))
    · intro z hz
      rw [mem_integralFiniteAdeles] at hz
      let z' : ∀ v : HeightOneSpectrum (𝓞 E), v.adicCompletionIntegers E :=
        fun v => ⟨(∏ u ∈ I, (Ideal.absNorm u.asIdeal) ^ S) • z v, nsmul_mem (hz v) _⟩
      have hz' : ι z' = (∏ u ∈ I, (Ideal.absNorm u.asIdeal) ^ S) • z := by
        apply RestrictedProduct.ext
        intro v
        first
          | rfl
      have hz'' : z' ∈ (↑I : Set (HeightOneSpectrum (𝓞 E))).pi t := by
        intro v hv
        have hvI : v ∈ I := Finset.mem_coe.mp hv
        have hprod : (Ideal.absNorm v.asIdeal) ^ S *
            ∏ u ∈ I.erase v, (Ideal.absNorm u.asIdeal) ^ S =
            ∏ u ∈ I, (Ideal.absNorm u.asIdeal) ^ S :=
          Finset.mul_prod_erase I (fun u => (Ideal.absNorm u.asIdeal) ^ S) hvI
        apply hNf v S (Finset.single_le_sum (fun _ _ => Nat.zero_le _) hvI) (z' v)
          (((∏ u ∈ I.erase v, (Ideal.absNorm u.asIdeal) ^ S : ℕ) : v.adicCompletion E) * z v)
        · rw [map_mul]
          calc _ ≤ Valued.v (((∏ u ∈ I.erase v, (Ideal.absNorm u.asIdeal) ^ S : ℕ) :
                v.adicCompletion E)) :=
                mul_le_of_le_one_right'
                  ((IsDedekindDomain.HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).mp (hz v))
            _ ≤ 1 := (valued_natCast_le_one_and_lt E v _).1
        · show ((∏ u ∈ I, (Ideal.absNorm u.asIdeal) ^ S) • z v : v.adicCompletion E) = _
          rw [nsmul_eq_mul, ← mul_assoc, ← Nat.cast_pow, ← Nat.cast_mul, hprod]
      rw [← hz']
      exact hIt hz''
  have hone : ∀ z ∈ integralFiniteAdeles (𝓞 E) E, h (n • z) = 1 := by
    intro z hz
    apply eq_one_of_norm_one_of_forall_re_pow_pos _ (hnorm _)
    intro m
    rw [← hpow, smul_smul, mul_comm, ← smul_smul]
    exact hnU _ (nsmul_mem hz m)
  have hint : ∀ y ∈ integralFiniteAdeles (𝓞 E) E, h y = 1 := by
    intro y hy
    set w := algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) ((n : E)⁻¹) * y with hw
    obtain ⟨k, hk⟩ := exists_sub_mem_integralFiniteAdeles (R := 𝓞 E) (K := E) w
    have hyw : y = n • w := by
      rw [hw, nsmul_eq_mul, ← mul_assoc,
        ← map_natCast (algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E)) n, ← map_mul,
        mul_inv_cancel₀ (Nat.cast_ne_zero.mpr hn0), map_one, one_mul]
    have hsplit : y = algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) ((n : E) * k) +
        n • (w - algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k) := by
      rw [smul_sub, ← hyw, map_mul, map_natCast, ← nsmul_eq_mul]
      abel
    rw [hsplit, hmul, hF, hone _ hk, one_mul]
  obtain ⟨k, hk⟩ := exists_sub_mem_integralFiniteAdeles (R := 𝓞 E) (K := E) a
  have ha : h a = 1 := by
    have hsum : a = algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k +
        (a - algebraMap E (IsDedekindDomain.FiniteAdeleRing (𝓞 E) E) k) := by abel
    rw [hsum, hmul, hF, hint _ hk, one_mul]
  simp only [hh] at ha
  exact (mul_inv_eq_one₀ (hne a)).mp ha

theorem psiAt_eq_localAdelicChar : ∀ (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) (x : w.adicCompletion E), psiAt w x = (localAdelicChar E w x : ℂ) := by
  intro E _ _ w x
  have h := stdChar_finiteAdele_eq E (GlobalTheory.HeckeEps.stdChar E) (adelicAddChar E)
    (GlobalTheory.HeckeEps.isStdChar_stdChar E) (isStdChar_adelicAddChar E w) (finiteAdeleSingleAdd w x)
  rw [localAdelicChar_apply, finitePlaceIncl_apply, ← adelicAddChar_apply]
  exact h

end GlobalTheory.CompanionTheory.PsiStd

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAdditiveCharacterEqAdelic =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeTateFunctionalEquation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeTateFunctionalEquation", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HeckeTateFunctionalEquationCM\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ContinuousIdeleCircle\npublic import GroundTheory.AutomorphicForms.GL2.FiniteIdeleDecomp\npublic import GroundTheory.AutomorphicForms.GL2.GodementSectionFactor\npublic import GroundTheory.GlobalFields.TateThesis.HeckeTheoremFE\npublic import GroundTheory.LocalFields.LocalZetaEpsilon\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsCMTypeEmbedding\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFinSetSplitPlacesCoprimeConductor\npublic import GroundTheory.GlobalFields.TateThesis.EulerFactorsArch\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterInfinityType\npublic import GroundTheory.GlobalFields.IdeleGroups.IdeleNorms\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CmHeckeCharacterNotNormPower\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteEpsilonFactorDependenceOnS\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HaarIntegralIntegersFiniteSum\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeCharacterConductorExponent\npublic import GroundTheory.GlobalFields.TateThesis.EulerFactorsFinite\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeGaussSumLocalTerm\npublic import GroundTheory.GlobalFields.TateThesis.HeckeLFunction\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeLFunctionEulerProduct\npublic import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAdditiveCharacterEqAdelic\npublic import GroundTheory.GlobalFields.TateThesis.HeckeTheorem\npublic import GroundTheory.GlobalFields.TateThesis.RootNumberLocalFinite\nimport GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.CompletedLStripBounds GlobalTheory.HeckeEps GlobalTheory.CompanionTheory.HeckeBridge
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Global.IdeleGroup
open GroundTheory.Automorphic.GodementSection (localChar)
open Formalism.L2.Host (unif atFin unif_spec)

namespace GlobalTheory.CompanionTheory.HeckeFE
variable {E : Type} [Field E] [NumberField E]

theorem L_cond (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) (m : ℕ) (h : ExpAt χ v m) :
    multiplicity v.asIdeal (toHecke χ hu).conductor = m := _root_.GlobalTheory.CompanionTheory.HeckeBridge.multiplicity_conductor_toHecke E χ hu v m h

theorem L_inf {I : Type} [Fintype I] (φ : I → E →+* ℂ) (hφ : IsCMType φ) [_root_.NumberField.IsTotallyComplex E] (χ : HChar E) (hu : IsUnitary χ)
    (n : I → ℤ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n) (i : I) :
    (toHecke χ hu).infiniteTau (InfinitePlace.mk (φ i)) = 0 ∧
      ((toHecke χ hu).infiniteWeight (InfinitePlace.mk (φ i))).natAbs = (n i).natAbs :=
  _root_.GlobalTheory.CompanionTheory.HeckeArch.infiniteParams_of_hasInf E I φ hφ χ hu n hi i

theorem L_notPow {I : Type} [Fintype I] (φ : I → E →+* ℂ) (hφ : IsCMType φ) [_root_.NumberField.IsTotallyComplex E] (χ : HChar E) (hu : IsUnitary χ)
    (n : I → ℤ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n) (hn : ∃ i, n i ≠ 0) :
    ¬ ∃ τ : ℝ, ∀ x : IdeleGroup E,
      ((toHecke χ hu).toIdele x : ℂ) = ((ideleModule E x : ℝ) : ℂ) ^ ((τ : ℂ) * Complex.I) :=
  _root_.GlobalTheory.CompanionTheory.HeckeBridge.NotPow.not_modulePow E I φ hφ χ hu n hi hn

theorem L_euler (χ : HChar E) (hu : IsUnitary χ) {s : ℂ} (hs : 1 < s.re) :
    HasProd (eulerFactor χ s) ((toHecke χ hu).LFunction s) := _root_.GlobalTheory.CompanionTheory.HeckeBridge.hasProd_eulerFactor_toHecke E χ hu s hs

theorem L_shift (χ : HChar E) (a : HeightOneSpectrum (𝓞 E) →₀ ℕ) (s : ℂ) :
    finEps χ a s = finEps χ a (1 / 2) *
      (((discr E).natAbs * a.prod fun v k => Ideal.absNorm v.asIdeal ^ k : ℕ) : ℂ) ^ (1 / 2 - s) := _root_.GlobalTheory.CompanionTheory.HeckeBridge.finEps_shift E χ a s

theorem ord_unif (v : HeightOneSpectrum (𝓞 E)) (k : ℕ) :
    ord ((atFin v (unif v ^ k) : (v.adicCompletion E)ˣ) : v.adicCompletion E) = k := by
  have h := valued_eq_exp_neg_ord (v := v) (Units.ne_zero (atFin v (unif v ^ k)))
  have h2 : Valued.v ((atFin v (unif v ^ k) : (v.adicCompletion E)ˣ) : v.adicCompletion E) = WithZero.exp (-(k : ℤ)) := by
    have h3 : Valued.v ((atFin v (unif v) : (v.adicCompletion E)ˣ) : v.adicCompletion E) = WithZero.exp (-1 : ℤ) := unif_spec v
    rw [map_pow, Units.val_pow_eq_pow_val, map_pow, h3, ← WithZero.exp_nsmul]
    simp
  rw [h2, WithZero.exp_inj] at h
  omega

theorem differentExp_eq (v : HeightOneSpectrum (𝓞 E)) : differentExp v = (diffExp v : ℤ) :=
  count_coeIdeal_eq_multiplicity v _root_.differentIdeal_ne_bot

theorem L_ramInt (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) {m : ℕ} (hm : m ≠ 0) (h : ExpAt χ v m) :
    ∫ y, (toHecke χ hu).finiteTest v y *
        (localAdelicChar E v (((atFin v (unif v ^ (m + diffExp v)) : (v.adicCompletion E)ˣ) : v.adicCompletion E)⁻¹ * y) : ℂ)
        ∂haarIntegers (v.adicCompletion E) =
      (((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℂ))⁻¹ * gaussSumAt χ v m (unif v ^ (m + diffExp v)) := by
  have hc : multiplicity v.asIdeal (toHecke χ hu).conductor = m := L_cond χ hu v m h
  have hG := _root_.GlobalTheory.CompanionTheory.HeckeBridge.GaussSum.finiteTest_sum_eq_gaussSumAt E χ hu v m hm h
  simp only [_root_.GlobalTheory.CompanionTheory.PsiStd.psiAt_eq_localAdelicChar] at hG
  rw [_root_.GlobalTheory.CompanionTheory.PeriodicInt.integral_eq_finsum E v m _ (fun y hy => by rw [(toHecke χ hu).finiteTest_eq_zero hy, zero_mul]) (fun y k hk => ?_), hG]
  set c : v.adicCompletion E := ((atFin v (unif v ^ (m + diffExp v)) : (v.adicCompletion E)ˣ) : v.adicCompletion E) with hcdef
  have hcv : Valued.v c = WithZero.exp (-((m + diffExp v : ℕ) : ℤ)) := by
    have h3 : Valued.v ((atFin v (unif v) : (v.adicCompletion E)ˣ) : v.adicCompletion E) = WithZero.exp (-1 : ℤ) := unif_spec v
    rw [hcdef, map_pow, Units.val_pow_eq_pow_val, map_pow, h3, ← WithZero.exp_nsmul]
    simp
  have hψ : localAdelicChar E v (c⁻¹ * k) = 1 := by
    refine localAdelicChar_eq_one_of_mem ((mem_localInvDifferent_iff_valued v _).2 ?_)
    show _ ≤ WithZero.exp (differentExp v)
    rw [map_mul, map_inv₀, hcv, ← WithZero.exp_neg, differentExp_eq]
    calc _ ≤ WithZero.exp (- -((m + diffExp v : ℕ) : ℤ)) * WithZero.exp (-(m : ℤ)) := mul_le_mul' le_rfl hk
      _ = _ := by
        rw [← WithZero.exp_add]
        congr 1
        push_cast
        ring
  rw [(toHecke χ hu).finiteTest_add y (by rw [hc]; exact hk), mul_add, AddChar.map_add_eq_mul, hψ, mul_one]

theorem L_locUnr (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) (h : ExpAt χ v 0) :
    localEpsilon (localChar (toHecke χ hu) v) (localAdelicChar E v) (1 / 2) = locEps χ v 0 (1 / 2) := by
  have hv : ¬ v.asIdeal ∣ (toHecke χ hu).conductor := fun hd =>
    (multiplicity_pos_of_dvd hd (Ideal.finiteMultiplicity v.isPrime.ne_top (toHecke χ hu).conductor_ne_bot)).ne' (L_cond χ hu v 0 h)
  have hN : ((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ≠ 0 := by
    rw [Nat.cast_ne_zero, Ne, Ideal.absNorm_eq_zero_iff]
    exact v.ne_bot
  rw [(toHecke χ hu).localEpsilon_half_of_not_dvd v hv (atFin v (unif v ^ (0 + diffExp v)))
    (by rw [ord_unif, differentExp_eq, zero_add]), coe_localComponent, locEps, if_pos rfl, mul_one, mul_assoc,
    ← Complex.cpow_add _ _ hN]
  have : -(1 / 2 : ℂ) * ((0 + diffExp v : ℕ) : ℂ) + (diffExp v : ℂ) / 2 = 0 := by
    push_cast
    ring
  rw [this, Complex.cpow_zero, mul_one]
  rfl

theorem L_locRam (χ : HChar E) (hu : IsUnitary χ) (v : HeightOneSpectrum (𝓞 E)) {m : ℕ} (hm : m ≠ 0) (h : ExpAt χ v m) :
    localEpsilon (localChar (toHecke χ hu) v) (localAdelicChar E v) (1 / 2) = locEps χ v m (1 / 2) := by
  have hc := L_cond χ hu v m h
  have hv : v.asIdeal ∣ (toHecke χ hu).conductor := by
    by_contra hd
    exact hm (hc ▸ multiplicity_eq_zero_of_not_dvd hd)
  have hN : ((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ≠ 0 := by
    rw [Nat.cast_ne_zero, Ne, Ideal.absNorm_eq_zero_iff]
    exact v.ne_bot
  rw [(toHecke χ hu).localEpsilon_half_of_dvd v hv (atFin v (unif v ^ (m + diffExp v)))
    (by rw [ord_unif, differentExp_eq, HeckeCharacter.condExp_eq, hc]; push_cast; rfl),
    L_ramInt χ hu v hm h, coe_localComponent, locEps, if_neg hm, hc]
  set c : ℂ := ((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ^ ((m : ℂ) / 2) with hcdef
  have hc0 : c ≠ 0 := by
    rw [hcdef, Ne, Complex.cpow_eq_zero_iff]
    tauto
  have h1 : (Real.sqrt ((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℝ) : ℂ) = c := by
    rw [Real.sqrt_eq_rpow, Complex.ofReal_cpow (Nat.cast_nonneg _), hcdef]
    push_cast
    rw [← Complex.natCast_cpow_natCast_mul]
    congr 1
    ring
  have h2 : (((Ideal.absNorm v.asIdeal ^ m : ℕ) : ℂ)) = c * c := by
    rw [hcdef, ← Complex.cpow_add _ _ hN]
    push_cast
    rw [add_halves, Complex.cpow_natCast]
  have h3 : ((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ^ (-(1 / 2 : ℂ) * ((m + diffExp v : ℕ) : ℂ)) *
      ((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ^ ((diffExp v : ℂ) / 2) = c⁻¹ := by
    rw [← Complex.cpow_add _ _ hN, hcdef, ← Complex.cpow_neg]
    congr 1
    push_cast
    ring
  rw [h1, h2]
  have h4 : ((χ.locK v (unif v ^ (m + diffExp v)) : ℂˣ) : ℂ) = ((χ.loc v (atFin v (unif v ^ (m + diffExp v))) : ℂˣ) : ℂ) := rfl
  rw [h4]
  have h5 : c * (c * c)⁻¹ = c⁻¹ := by
    field_simp
  linear_combination (((χ.loc v (atFin v (unif v ^ (m + diffExp v))) : ℂˣ) : ℂ) * gaussSumAt χ v m (unif v ^ (m + diffExp v))) * (h5 - h3)

section
variable {I : Type} [Fintype I] {φ : I → E →+* ℂ} [_root_.NumberField.IsTotallyComplex E] {χ : HChar E} {n : I → ℤ}

theorem gammaFactor_toHecke (hφ : IsCMType φ) (hu : IsUnitary χ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n) (s : ℂ) :
    (toHecke χ hu).gammaFactor s = archFactor n s := by
  rw [HeckeCharacter.gammaFactor, archFactor, ← (Equiv.ofBijective _ (_root_.GlobalTheory.CMTypeCard.bijective_mk_of_isCMType hφ)).prod_comp]
  refine Finset.prod_congr rfl fun i _ => ?_
  obtain ⟨h1, h2⟩ := L_inf φ hφ χ hu n hi i
  have hc : ¬ (InfinitePlace.mk (φ i)).IsReal := InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex _)
  have e : (((n i).natAbs : ℕ) : ℂ) = ((|n i| : ℤ) : ℂ) := by
    rw [← Int.cast_natCast, Int.natCast_natAbs]
  show (toHecke χ hu).infiniteGamma (InfinitePlace.mk (φ i)) s = _
  rw [HeckeCharacter.infiniteGamma, if_neg hc, h1, h2, e, Complex.Gammaℂ_def]
  simp

theorem prod_weight_toHecke (hφ : IsCMType φ) (hu : IsUnitary χ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n) :
    (∏ w, (-Complex.I) ^ ((toHecke χ hu).infiniteWeight w).natAbs) = archEps n := by
  rw [archEps, ← Finset.prod_pow_eq_pow_sum, ← (Equiv.ofBijective _ (_root_.GlobalTheory.CMTypeCard.bijective_mk_of_isCMType hφ)).prod_comp]
  refine Finset.prod_congr rfl fun i _ => ?_
  show (-Complex.I) ^ ((toHecke χ hu).infiniteWeight (InfinitePlace.mk (φ i))).natAbs = _
  rw [(L_inf φ hφ χ hu n hi i).2]

theorem rootNumber_toHecke (hφ : IsCMType φ) (hu : IsUnitary χ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n)
    {a : HeightOneSpectrum (𝓞 E) →₀ ℕ} (ha : ∀ w, ExpAt χ w (a w)) :
    (toHecke χ hu).rootNumber = archEps n * finEps χ a (1 / 2) := by
  have h1 := (toHecke χ hu).finiteFourier_mul_eq_finprod_localEpsilon
    (toHecke χ hu).toFractionalIdeal_conductorDifferentIdele
  have h2 : (∏ᶠ v, localEpsilon (localChar (toHecke χ hu) v) (localAdelicChar E v) (1 / 2)) = finEps χ a (1 / 2) := by
    refine finprod_congr fun v => ?_
    by_cases hv : a v = 0
    · have := ha v
      rw [hv] at this ⊢
      exact L_locUnr χ hu v this
    · exact L_locRam χ hu v hv (ha v)
  rw [h2] at h1
  rw [HeckeCharacter.rootNumber, HeckeCharacter.fourierConst, prod_weight_toHecke hφ hu hi, ← h1]
  ring

def conductorNormalizedCompletedLFunction (χ : HChar E) (hu : IsUnitary χ) (s : ℂ) : ℂ :=
  ((toHecke χ hu).discrNormConductor : ℂ) ^ (-(s / 2)) * (toHecke χ hu).completedLFunction s

theorem isCompletedL_completed (hφ : IsCMType φ) (hu : IsUnitary χ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n)
    (hn : ∃ i, n i ≠ 0) : IsCompletedL χ n (conductorNormalizedCompletedLFunction χ hu) := by
  have hA : ((toHecke χ hu).discrNormConductor : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.2 (toHecke χ hu).discrNormConductor_pos.ne'
  refine ⟨?_, fun s hs => ⟨_, L_euler χ hu hs, ?_⟩⟩
  · refine Differentiable.mul (fun s => ?_)
      ((toHecke χ hu).differentiable_completedLFunction (L_notPow φ hφ χ hu n hi hn))
    exact ((differentiableAt_id.div_const 2).neg).const_cpow (Or.inl hA)
  · rw [conductorNormalizedCompletedLFunction, (toHecke χ hu).completedLFunction_eq hs, gammaFactor_toHecke hφ hu hi, ← mul_assoc, ← mul_assoc,
      ← Complex.cpow_add _ _ hA, neg_add_cancel, Complex.cpow_zero, one_mul]

theorem absNorm_conductor_toHecke (hu : IsUnitary χ) {a : HeightOneSpectrum (𝓞 E) →₀ ℕ} (ha : ∀ w, ExpAt χ w (a w)) :
    Ideal.absNorm (toHecke χ hu).conductor = a.prod fun v k => Ideal.absNorm v.asIdeal ^ k := by
  have hm := fun v => L_cond χ hu v (a v) (ha v)
  have h : (toHecke χ hu).conductorPrimes = a.support := by
    ext v
    rw [HeckeCharacter.mem_conductorPrimes, Finsupp.mem_support_iff, ← hm v]
    constructor
    · intro h
      exact (multiplicity_pos_of_dvd h (Ideal.finiteMultiplicity v.isPrime.ne_top (toHecke χ hu).conductor_ne_bot)).ne'
    · intro h
      by_contra h'
      exact h (multiplicity_eq_zero_of_not_dvd h')
  rw [HeckeCharacter.absNorm_conductor, Finsupp.prod, h]
  exact Finset.prod_congr rfl fun v _ => by rw [hm v]

theorem discrNormConductor_toHecke (hu : IsUnitary χ) {a : HeightOneSpectrum (𝓞 E) →₀ ℕ} (ha : ∀ w, ExpAt χ w (a w)) :
    ((toHecke χ hu).discrNormConductor : ℂ) =
      (((discr E).natAbs * a.prod fun v k => Ideal.absNorm v.asIdeal ^ k : ℕ) : ℂ) := by
  rw [HeckeCharacter.discrNormConductor, absNorm_conductor_toHecke hu ha, ← Complex.ofReal_natCast, Nat.cast_mul,
    Nat.cast_natAbs, Int.cast_abs]

theorem completed_eq (hφ : IsCMType φ) (hu : IsUnitary χ) (hi : Formalism.L2.Host.HChar.HasInf χ φ n) (hn : ∃ i, n i ≠ 0)
    (hu' : IsUnitary χ⁻¹) (s : ℂ) :
    conductorNormalizedCompletedLFunction χ hu s = (toHecke χ hu).rootNumber * ((toHecke χ hu).discrNormConductor : ℂ) ^ (1 / 2 - s) *
      conductorNormalizedCompletedLFunction χ⁻¹ hu' (1 - s) := by
  have hA : ((toHecke χ hu).discrNormConductor : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.2 (toHecke χ hu).discrNormConductor_pos.ne'
  rw [conductorNormalizedCompletedLFunction, conductorNormalizedCompletedLFunction, toHecke_inv χ hu hu', HeckeCharacter.discrNormConductor_inv,
    (toHecke χ hu).completedLFunction_eq_rootNumber_mul_of_not (L_notPow φ hφ χ hu n hi hn) s]
  have e : ((toHecke χ hu).discrNormConductor : ℂ) ^ (-(s / 2)) =
      ((toHecke χ hu).discrNormConductor : ℂ) ^ (1 / 2 - s) *
        ((toHecke χ hu).discrNormConductor : ℂ) ^ (-((1 - s) / 2)) := by
    rw [← Complex.cpow_add _ _ hA]
    congr 1
    ring
  rw [e]
  ring

end

end GlobalTheory.CompanionTheory.HeckeFE

theorem GlobalTheory.CompanionTheory.HeckeFE.heckeTateFunctionalEquation : GlobalTheory.Published.HeckeTateFunctionalEquation := by
  intro E _ _ _ I _ φ hφ χ n a hu hi hn ha
  have hu' := _root_.Formalism.L2.Host.HChar.IsUnitary.inv hu
  have hi' := GlobalTheory.Published.HeckeFEModel.hasInf_inv hi
  have hn' : ∃ i, -n i ≠ 0 := hn.imp fun i h => neg_ne_zero.2 h
  refine ⟨conductorNormalizedCompletedLFunction χ hu, conductorNormalizedCompletedLFunction χ⁻¹ hu', isCompletedL_completed hφ hu hi hn,
    isCompletedL_completed hφ hu' hi' hn', fun s => ?_⟩
  rw [_root_.GlobalTheory.HeckeEpsAbs.finEps_eq χ a s, ← discrNormConductor_toHecke hu ha, completed_eq hφ hu hi hn hu' s, rootNumber_toHecke hφ hu hi ha]
  ring
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.HeckeTateFunctionalEquation =====
