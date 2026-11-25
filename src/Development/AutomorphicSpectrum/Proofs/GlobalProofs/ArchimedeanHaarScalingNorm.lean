module

public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CharEqOneOfNear
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne
public import GroundTheory.GlobalFields.TateThesis.AdeleMeasure
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsFiniteAdeleHaarNormalized
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsLocalApproximateIdentity
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CoefS
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleHaarPiRestrictedProduct
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanSelfdualMeasurePi
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAnnihilatorSelfDualVolume
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
public import Mathlib.Analysis.Calculus.BumpFunction.Normed
public import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
public import Mathlib.MeasureTheory.Integral.Pi
public import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsUnipotentInvariantCompactlySupportedWeight
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SelfDualMap
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Aesop.Main
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.HermitianCharacters.SelfDualLatticeFiltrationCharacter
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd
import GroundTheory.AutomorphicForms.ReductionMeasure
import GroundTheory.GlobalFields.TateThesis.IdeleMeasure
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.InfiniteAdeleHaarMapEqScaledVolume
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.InfiniteAdelesLocalRingTotallyReal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalComponentsNontrivialAdelicCharacter
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SumPlacesEqTrace
import Mathlib.Tactic.Linter.Style
import GroundTheory.GlobalFields.LocalFieldAtPlace
import GroundTheory.LocalFields.LocalFourierHaar
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicAnnihilatorBoxProduct, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicCharacterTrivialAlmostEverywhere, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicIntegrableProductIndicator, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanFourierApproximateIdentity, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsRealApproximateIdentity, Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteAdeleBoxMeasureProduct, Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideDescendsFinite, Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemAnnihilatorSmallBallEventually, Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalisedFourierBumpLimit, Development.AutomorphicSpectrum.Proofs.GlobalProofs.NumberFieldApproximateIdentity, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanHaarScalingNorm

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicAnnihilatorBoxProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicAnnihilatorBoxProduct", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\nimport Aesop.Main\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.HermitianCharacters.SelfDualLatticeFiltrationCharacter\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CharEqOneOfNear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

private theorem integral_indicator_mul_char_of_trivial {K : Type} [CommRing K] [MeasurableSpace K]
    (μ : Measure K) (p : K → ℂ) (S : AddSubgroup K) (hSm : MeasurableSet (S : Set K)) (y : K)
    (h : ∀ s ∈ S, p (s * y) = 1) :
    ∫ x, (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ = ((μ (S : Set K)).toReal : ℂ) := by
  have hfun : (fun x => (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y)) =
      (S : Set K).indicator (fun _ => (1 : ℂ)) := by
    funext x
    by_cases hx : x ∈ (S : Set K)
    · rw [Set.indicator_of_mem hx, one_mul, h x hx]
    · rw [Set.indicator_of_notMem hx, zero_mul]
  rw [hfun, integral_indicator_const _ hSm, measureReal_def, Complex.real_smul, mul_one]

private theorem integral_indicator_mul_char_eq_zero {K : Type} [CommRing K] [MeasurableSpace K] [MeasurableAdd K]
    (μ : Measure K) [μ.IsAddLeftInvariant] (p : K → ℂ) (hadd : ∀ x y, p (x + y) = p x * p y)
    (S : AddSubgroup K) (y : K) (h : ∃ s ∈ S, p (s * y) ≠ 1) :
    ∫ x, (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ = 0 := by
  obtain ⟨s, hs, hps⟩ := h
  have hI : ∫ x, (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ =
      p (s * y) * ∫ x, (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ := by
    rw [← integral_const_mul, ← integral_add_left_eq_self
      (fun x => (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y)) s]
    congr 1
    funext x
    by_cases hx : x ∈ (S : Set K)
    · have hsx : s + x ∈ (S : Set K) := (S.add_mem_cancel_left hs).mpr hx
      rw [Set.indicator_of_mem hsx, Set.indicator_of_mem hx, add_mul, hadd]
      ring
    · have hsx : s + x ∉ (S : Set K) := fun h' => hx ((S.add_mem_cancel_left hs).mp h')
      rw [Set.indicator_of_notMem hsx, Set.indicator_of_notMem hx]
      ring
  have h1 : (1 - p (s * y)) * ∫ x, (S : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ = 0 := by
    rw [sub_mul, one_mul, ← hI, sub_self]
  rcases mul_eq_zero.mp h1 with h0 | h0
  · exact absurd (sub_eq_zero.mp h0).symm hps
  · exact h0

theorem ann_core {K : Type} [CommRing K] [TopologicalSpace K] [T2Space K] [MeasurableSpace K] [MeasurableAdd K]
    (μ : Measure K) (p : K → ℂ) (hadd : ∀ x y, p (x + y) = p x * p y)
    (hSD : SelfDual μ (fun s t => p (s * t)))
    (U A B : AddSubgroup K) (hUc : IsCompact (U : Set K)) (hUo : IsOpen (U : Set K))
    (hUm : MeasurableSet (U : Set K)) (hAm : MeasurableSet (A : Set K)) (hAf : μ (A : Set K) ≠ ⊤)
    (hA : ∀ y, y ∈ A ↔ ∀ s ∈ U, p (s * y) = 1)
    (hB : ∀ z, z ∈ B ↔ ∀ s ∈ A, p (s * z) = 1) :
    B = U ∧ (μ (U : Set K)).toReal * (μ (A : Set K)).toReal = 1 := by
  obtain ⟨hHaar, hinv⟩ := hSD
  have hp0 : p 0 = 1 := by simpa using (hA 0).mp A.zero_mem 0 U.zero_mem
  have hΦc : Continuous ((U : Set K).indicator (fun _ => (1 : ℂ))) :=
    IsClopen.continuous_indicator ⟨hUc.isClosed, hUo⟩ continuous_const
  have hΦs : HasCompactSupport ((U : Set K).indicator (fun _ => (1 : ℂ))) :=
    HasCompactSupport.intro hUc (fun x hx => Set.indicator_of_notMem hx _)
  have hFT : ∀ y, ∫ x, (U : Set K).indicator (fun _ => (1 : ℂ)) x * p (x * y) ∂μ =
      (A : Set K).indicator (fun _ => ((μ (U : Set K)).toReal : ℂ)) y := by
    intro y
    by_cases h : ∀ s ∈ U, p (s * y) = 1
    · rw [integral_indicator_mul_char_of_trivial μ p U hUm y h,
        Set.indicator_of_mem (show y ∈ (A : Set K) from (hA y).mpr h)]
    · push_neg at h
      rw [integral_indicator_mul_char_eq_zero μ p hadd U y h,
        Set.indicator_of_notMem (show y ∉ (A : Set K) from fun h' => by
          obtain ⟨s, hs, hps⟩ := h
          exact hps ((hA y).mp h' s hs))]
  have hint : Integrable (fun y => ∫ x, (U : Set K).indicator (fun _ => (1 : ℂ)) x *
      (fun s t => p (s * t)) x y ∂μ) μ := by
    simp only [hFT]
    exact (integrable_indicator_iff hAm).mpr (integrableOn_const hAf)
  have key : ∀ z, ((μ (U : Set K)).toReal : ℂ) *
      ∫ y, (A : Set K).indicator (fun _ => (1 : ℂ)) y * p (y * z) ∂μ =
      (U : Set K).indicator (fun _ => (1 : ℂ)) (-z) := by
    intro z
    rw [← integral_const_mul, ← hinv _ hΦc hΦs hint z]
    congr 1
    funext y
    beta_reduce
    rw [hFT y]
    by_cases hy : y ∈ (A : Set K)
    · rw [Set.indicator_of_mem hy, Set.indicator_of_mem hy]
      ring
    · rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem hy]
      ring
  have h0 := key 0
  have hc0 : ∀ s ∈ A, p (s * 0) = 1 := fun s _ => by rw [mul_zero, hp0]
  rw [integral_indicator_mul_char_of_trivial μ p A hAm 0 hc0, neg_zero,
    Set.indicator_of_mem (show (0 : K) ∈ (U : Set K) from U.zero_mem)] at h0
  have hprod : (μ (U : Set K)).toReal * (μ (A : Set K)).toReal = 1 := by exact_mod_cast h0
  refine ⟨?_, hprod⟩
  ext z
  rw [hB z]
  have hz := key z
  constructor
  · intro h
    rw [integral_indicator_mul_char_of_trivial μ p A hAm z h, h0] at hz
    by_contra hzU
    rw [Set.indicator_of_notMem (show -z ∉ (U : Set K) from fun h' => hzU (by simpa using U.neg_mem h'))] at hz
    exact one_ne_zero hz
  · intro hzU
    by_contra h
    push_neg at h
    rw [integral_indicator_mul_char_eq_zero μ p hadd A z h, mul_zero,
      Set.indicator_of_mem (show -z ∈ (U : Set K) from U.neg_mem hzU)] at hz
    exact zero_ne_one hz

theorem localDual : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (v : HeightOneSpectrum (𝓞 F)) (lam : Measure (Fv F v)) (c : ℝ≥0), GlobalTheory.CompanionTheory.SW.IsStdV v lam → SelfDual (c • lam) (fun s t => psiV F ψ v (s * t)) → ∀ U : AddSubgroup (Fv F v), IsCompact (U : Set (Fv F v)) → IsOpen (U : Set (Fv F v)) → annV ψ v (annV ψ v U) = U ∧ IsCompact (annV ψ v U) ∧ IsOpen (annV ψ v U) ∧ (c : ℝ) ^ 2 * (lam U).toReal * (lam (annV ψ v U)).toReal = 1 := by
  intro F _ _ ψ hψ v lam c _ hSD U hUc hUo
  obtain ⟨h1, h2, h3, h4, -⟩ := GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  haveI := h1
  haveI := h2
  haveI := h3
  haveI := h4
  haveI : BorelSpace (Fv F v) := ⟨rfl⟩
  obtain ⟨hc, y, hy⟩ := (GlobalTheory.CompanionTheory.AdeleCharLocal.char_nontrivial_at_every_place F ψ hψ).1 v
  have ha := psiV_add ψ v
  have h0 := psiV_zero ψ v
  have hinv := hSD.1
  have hcomp : IsCompact (annV ψ v U) := GlobalTheory.CompanionTheory.SW.PiV.ann_isCompact hc h0 hy U hUo
  have hnear : {x | ‖psiV F ψ v x - 1‖ < 1 / 2} ∈ nhds (0 : Fv F v) :=
    (isOpen_lt (hc.sub continuous_const).norm continuous_const).mem_nhds (by
      change ‖psiV F ψ v 0 - 1‖ < 1 / 2
      rw [h0]
      norm_num)
  obtain ⟨m, hm⟩ := GlobalTheory.CompanionTheory.SW.PiV.exists_ball_subset _ hnear
  obtain ⟨n, hn⟩ := GlobalTheory.CompanionTheory.SW.PiV.exists_ball_of_isCompact _ hUc
  have htriv : ∀ x ∈ GlobalTheory.CompanionTheory.SW.PiV.ball v m, psiV F ψ v x = 1 := fun x hx =>
    char_eq_one_of_near (GlobalTheory.CompanionTheory.SW.PiV.ball v m) _ h0 ha (fun x hx => hm hx) hx
  have hsub : (GlobalTheory.CompanionTheory.SW.PiV.ball v (m - n) : Set (Fv F v)) ⊆ annV ψ v U := by
    intro t ht s hs
    refine htriv _ ?_
    rw [GlobalTheory.CompanionTheory.SW.PiV.mem_ball, map_mul]
    calc Valued.v s * Valued.v t ≤ WithZero.exp n * WithZero.exp (m - n) :=
          mul_le_mul' (hn hs) ht
      _ = WithZero.exp m := by rw [← WithZero.exp_add, add_sub_cancel]
  have hopen : IsOpen (annV ψ v U) :=
    AddSubgroup.isOpen_of_mem_nhds (annS ψ v U) (g := 0)
      (Filter.mem_of_superset ((GlobalTheory.CompanionTheory.SW.PiV.ball_isOpen (m - n)).mem_nhds
        (GlobalTheory.CompanionTheory.SW.PiV.ball v (m - n)).zero_mem) hsub)
  have hcore := ann_core (c • lam) (psiV F ψ v) ha hSD U (annS ψ v U) (annS ψ v (annV ψ v U))
    hUc hUo hUo.measurableSet hopen.measurableSet hcomp.measure_lt_top.ne
    (fun _ => Iff.rfl) (fun _ => Iff.rfl)
  refine ⟨?_, hcomp, hopen, ?_⟩
  · rw [← coe_annS, hcore.1]
  · have h5 := hcore.2
    rw [coe_annS] at h5
    simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul, ENNReal.toReal_mul, ENNReal.coe_toReal] at h5
    rw [← h5]
    ring

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicAnnihilatorBoxProduct =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicCharacterTrivialAlmostEverywhere =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicCharacterTrivialAlmostEverywhere", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\npublic import GroundTheory.GlobalFields.TateThesis.AdeleMeasure\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsFiniteAdeleHaarNormalized\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsLocalApproximateIdentity\nimport GroundTheory.AutomorphicForms.ReductionMeasure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.ProdM

section FoundMeas
open GroundTheory.Global
attribute [local instance 100000] GroundTheory.Global.measurableSpace_adeleRing GroundTheory.Global.measurableSpace_infiniteAdeleRing

variable (F : Type) [Field F] [NumberField F]

abbrev ratA : AddSubgroup (AF F) := (algebraMap F (AF F)).toAddMonoidHom.range

theorem isFD_fundamentalSet (ν : Measure (AdeleRing (𝓞 F) F)) :
    IsAddFundamentalDomain (ratA F) (fundamentalSet F) ν := by
  refine IsAddFundamentalDomain.mk' (measurableSet_fundamentalSet F).nullMeasurableSet fun x ↦ ?_
  obtain ⟨k, hk, huniq⟩ := existsUnique_sub_mem_fundamentalSet F x
  refine ⟨⟨algebraMap F (AF F) (-k), -k, rfl⟩, ?_, ?_⟩
  · change algebraMap F (AF F) (-k) + x ∈ fundamentalSet F
    rwa [map_neg, neg_add_eq_sub]
  · rintro ⟨_, k', rfl⟩ h
    change algebraMap F (AF F) k' + x ∈ fundamentalSet F at h
    have hk' : -k' = k := huniq (-k') (by
      change x - algebraMap F (AF F) (-k') ∈ fundamentalSet F
      rwa [map_neg, sub_neg_eq_add, add_comm])
    refine Subtype.ext ?_
    change algebraMap F (AF F) k' = algebraMap F (AF F) (-k)
    rw [← hk', neg_neg]

variable {F}

theorem eq_adeleMeasure (db : Measure (AdeleRing (𝓞 F) F)) (hH : db.IsAddHaarMeasure) (D : Set (AF F))
    (hD : IsAddFundamentalDomain (ratA F) D db) (hD1 : db D = 1) : db = adeleMeasure F := by
  obtain ⟨⟨hlc, hsc, ht2⟩, -⟩ := GlobalTheory.CompanionTheory.AdeleTop.adele_top F
  haveI := countable_numberField F
  haveI : Countable (ratA F) := (AddMonoidHom.rangeRestrict_surjective _).countable
  have hl : db = Measure.addHaarScalarFactor db (adeleMeasure F) • adeleMeasure F :=
    Measure.isAddLeftInvariant_eq_smul db (adeleMeasure F)
  have h2 : db (fundamentalSet F) = 1 := ((isFD_fundamentalSet F db).measure_eq hD).trans hD1
  rw [hl, Measure.smul_apply, adeleMeasure_fundamentalSet] at h2
  have hc : Measure.addHaarScalarFactor db (adeleMeasure F) = 1 := by
    simpa [ENNReal.smul_def] using h2
  rw [hl, hc, one_smul]

theorem covol_transfer (db : @Measure (AF F) measAF) (hdb : IsCovolOne db)
    [m : MeasurableSpace (AF F)] (hm : m = measAF) :
    ∃ μ : Measure (AF F), (∀ s, μ s = db s) ∧ μ.IsAddHaarMeasure ∧
      ∃ D : Set (AF F), IsAddFundamentalDomain (ratA F) D μ ∧ μ D = 1 := by
  subst hm
  obtain ⟨h1, D, h2, h3⟩ := hdb
  exact ⟨db, fun _ => rfl, h1, D, h2, h3⟩

end FoundMeas

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.ProdM

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.ProdM

theorem prod_congr_inf {F : Type} [Field F] [NumberField F] {m₁ m₂ : MeasurableSpace (Ainf F)} (h : m₁ = m₂)
    (l₁ : @Measure (Ainf F) m₁) (l₂ : @Measure (Ainf F) m₂) (hl : ∀ s, l₁ s = l₂ s) (lf : Measure (Af F))
    (s : Set (Ainf F × Af F)) :
    @Measure.prod (Ainf F) (Af F) m₁ _ l₁ lf s = @Measure.prod (Ainf F) (Af F) m₂ _ l₂ lf s := by
  subst h
  obtain rfl : l₁ = l₂ := Measure.ext fun s _ => hl s
  rfl

theorem prod_meas_eq (F : Type) [Field F] [NumberField F] :
    (inferInstance : MeasurableSpace (Ainf F × Af F)) = (measAF : MeasurableSpace (AF F)) := by
  haveI : BorelSpace (Ainf F) := ⟨rfl⟩
  haveI : BorelSpace (Af F) := ⟨rfl⟩
  exact (Prod.borelSpace (α := Ainf F) (β := Af F)).measurable_eq

def pairE (F : Type) [Field F] [NumberField F] : (Ainf F × Af F) ≃ᵐ AF F where
  toEquiv := Equiv.refl _
  measurable_toFun := by
    intro s hs
    rw [← prod_meas_eq F] at hs
    exact hs
  measurable_invFun := by
    intro s hs
    have hs' : @MeasurableSet (AF F) measAF s := by
      rw [← prod_meas_eq F]
      exact hs
    exact hs'

theorem prodM : ∀ (F : Type) [Field F] [NumberField F] (db : Measure (AF F)), IsCovolOne db → ∀ laminf : Measure (Ainf F), GlobalTheory.CompanionTheory.SW.IsStdInf laminf → ∃ lf : Measure (Af F), lf.IsAddHaarMeasure ∧ lf {x | ∀ v, x v ∈ v.adicCompletionIntegers F} = 1 ∧ ∃ e : (Ainf F × Af F) ≃ᵐ AF F, (∀ p, e p = pairA F p.1 p.2) ∧ MeasurePreserving e (laminf.prod lf) db := by
  intro F _ _ db hdb laminf hinf
  obtain ⟨lf, hlf, h1⟩ := GlobalTheory.CompanionTheory.AdeleHaar.exists_haar_integral_one F
  refine ⟨lf, hlf, h1, pairE F, fun p => rfl, (pairE F).measurable, ?_⟩
  have hA : GroundTheory.Global.measurableSpace_adeleRing F = (measAF : MeasurableSpace (AF F)) :=
    (GroundTheory.Global.borelSpace_adeleRing F).measurable_eq
  have hI : GroundTheory.Global.measurableSpace_infiniteAdeleRing F = (measAinf : MeasurableSpace (Ainf F)) :=
    (GroundTheory.Global.borelSpace_infiniteAdeleRing F).measurable_eq
  obtain ⟨μ, hμ, hH, D, hD, hD1⟩ :=
    @covol_transfer F _ _ db hdb (GroundTheory.Global.measurableSpace_adeleRing F) hA
  obtain ⟨l, hl, hlH, E, hE, hE1⟩ :=
    @GlobalTheory.CompanionTheory.Hypotheses₂.OneV.DxEuler.std_transfer F _ _ laminf hinf (GroundTheory.Global.measurableSpace_infiniteAdeleRing F) hI
  have h2 := eq_adeleMeasure μ hH D hD hD1
  have h3 := GlobalTheory.CompanionTheory.Hypotheses₂.OneV.DxEuler.adele_eq l hlH E hE hE1 lf hlf h1
  refine Measure.ext fun s hs => ?_
  rw [Measure.map_apply (pairE F).measurable hs]
  have e1 : (pairE F) ⁻¹' s = s := rfl
  rw [e1, ← prod_congr_inf hI l laminf hl lf s, ← hμ s]
  have e2 := congrArg (fun ν => ν s) h3
  have e3 := congrArg (fun ν => ν s) h2
  exact e2.trans e3.symm

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.ProdM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicCharacterTrivialAlmostEverywhere =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicIntegrableProductIndicator =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicIntegrableProductIndicator", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable\nimport GroundTheory.GlobalFields.TateThesis.AdeleMeasure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem integral_pure_indicator_char : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (db : Measure (AF F)) (laminf : Measure (Ainf F)) (lf : Measure (Af F)), laminf.IsAddHaarMeasure → lf.IsAddHaarMeasure → ∀ e : (Ainf F × Af F) ≃ᵐ AF F, (∀ p, e p = pairA F p.1 p.2) → MeasurePreserving e (laminf.prod lf) db → ∀ (g : Ainf F → ℂ) (B : AddSubgroup (Af F)), MeasurableSet (B : Set (Af F)) → lf (B : Set (Af F)) ≠ ⊤ → ∀ b : AF F, ∫ y, (g (fstA F y) * (B : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F y)) * ψ (y * b) ∂db = (∫ x, g x * psiInf F ψ (x * fstA F b) ∂laminf) * ((lf (B : Set (Af F))).toReal : ℂ) * (annF ψ (B : Set (Af F))).indicator (fun _ => (1 : ℂ)) (sndA F b) := by
  intro F _ _ ψ _ db laminf lf hl hf e he hmp g B hB hfin b
  haveI : BorelSpace (Ainf F) := ⟨rfl⟩
  haveI : BorelSpace (Af F) := ⟨rfl⟩
  haveI : LocallyCompactSpace (Af F) := (GlobalTheory.CompanionTheory.AdeleTop.adele_top F).2.1
  haveI : SecondCountableTopology (Af F) := (GlobalTheory.CompanionTheory.AdeleTop.adele_top F).2.2.1
  haveI : SecondCountableTopology (Ainf F) := by
    haveI : SecondCountableTopology (Ainf F × Af F) := (GlobalTheory.CompanionTheory.AdeleTop.adele_top F).1.2.1
    exact (Topology.IsEmbedding.of_comp (f := fun x : Ainf F => (x, (0 : Af F))) (g := Prod.fst)
      (by fun_prop) continuous_fst Topology.IsEmbedding.id).secondCountableTopology
  haveI : LocallyCompactSpace (Ainf F) := inferInstance
  haveI : IsLocallyFiniteMeasure laminf := isLocallyFiniteMeasure_of_isFiniteMeasureOnCompacts
  haveI : IsLocallyFiniteMeasure lf := isLocallyFiniteMeasure_of_isFiniteMeasureOnCompacts
  haveI : SFinite laminf := inferInstance
  haveI : SFinite lf := inferInstance
  set χ : Af F → ℂ := fun u => psiF ψ (u * sndA F b) with hχ
  have hχadd : ∀ x y, χ (x + y) = χ x * χ y := fun x y => by
    simp only [hχ, add_mul, psiF_add]
  have hpt : ∀ p : Ainf F × Af F,
      (g (fstA F (e p)) * (B : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F (e p))) * ψ (e p * b) =
        (g p.1 * psiInf F ψ (p.1 * fstA F b)) * (B : Set (Af F)).indicator χ p.2 := by
    rintro ⟨x, u⟩
    have h1 : e (x, u) * b = pairA F (x * fstA F b) (u * sndA F b) := by
      rw [he]; rfl
    have h2 : fstA F (e (x, u)) = x := by rw [he]; rfl
    have h3 : sndA F (e (x, u)) = u := by rw [he]; rfl
    rw [h1, h2, h3, psi_pairA]
    by_cases hu : u ∈ (B : Set (Af F))
    · simp only [Set.indicator_of_mem hu, hχ]
      ring
    · simp only [Set.indicator_of_notMem hu]
      ring
  rw [← hmp.integral_comp e.measurableEmbedding]
  simp only [hpt]
  rw [integral_prod_mul (fun x => g x * psiInf F ψ (x * fstA F b))
    (fun u => (B : Set (Af F)).indicator χ u), mul_assoc]
  congr 1
  by_cases hb : sndA F b ∈ annF ψ (B : Set (Af F))
  · rw [integral_indicator_char_of_trivial lf B hB χ (fun x hx => hb x hx),
      Set.indicator_of_mem hb, mul_one]
  · obtain ⟨y, hy, hne⟩ : ∃ y ∈ (B : Set (Af F)), psiF ψ (y * sndA F b) ≠ 1 := by
      simpa [annF] using hb
    rw [integral_indicator_char_of_ne lf B χ hχadd hy hne, Set.indicator_of_notMem hb, mul_zero]

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicIntegrableProductIndicator =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanFourierApproximateIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanFourierApproximateIdentity", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CoefS\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelesLocallyCompactSecondCountable\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleHaarPiRestrictedProduct\nimport GroundTheory.GlobalFields.TateThesis.IdeleMeasure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.BoxMass

theorem boxMass : ∀ (F : Type) [Field F] [NumberField F] (lam : ∀ v : HeightOneSpectrum (𝓞 F), Measure (Fv F v)), (∀ v, GlobalTheory.CompanionTheory.SW.IsStdV v (lam v)) → ∀ lf : Measure (Af F), lf.IsAddHaarMeasure → lf {x | ∀ v, x v ∈ v.adicCompletionIntegers F} = 1 → ∀ (S : Finset (HeightOneSpectrum (𝓞 F))) (A : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v)), (∀ v, MeasurableSet (A v)) → MeasurableSet (Coef.boxA S A) ∧ lf (Coef.boxA S A) = ∏ v ∈ S, lam v (A v) := by
  intro F _ _ lam hlam lf hlf h1 S A hA
  obtain ⟨-, hAfLC, hAfSC, hAfT2⟩ := GlobalTheory.CompanionTheory.AdeleTop.adele_top F
  have hloc := fun v => GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  haveI : ∀ v, IsTopologicalRing (Fv F v) := fun v => (hloc v).1
  haveI : ∀ v, LocallyCompactSpace (Fv F v) := fun v => (hloc v).2.1
  haveI : ∀ v, SecondCountableTopology (Fv F v) := fun v => (hloc v).2.2.1
  haveI : ∀ v, BorelSpace (Fv F v) := fun v => ⟨rfl⟩
  haveI : ∀ v, (lam v).IsAddHaarMeasure := fun v => (hlam v).1
  haveI : BorelSpace (Af F) := ⟨rfl⟩
  let A' : ∀ v : HeightOneSpectrum (𝓞 F), Set (Unit → Fv F v) := fun v => {x | x () ∈ A v}
  have hA' : ∀ v, MeasurableSet (A' v) := fun v => measurable_pi_apply () (hA v)
  let T : Set (Unit → Af F) := {x | (∀ v ∈ S, (fun i => HeckeCharacterZeroLocus.SiegelWeilU.evalV F v (x i)) ∈ A' v) ∧
    ∀ v, v ∉ S → ∀ i, HeckeCharacterZeroLocus.SiegelWeilU.evalV F v (x i) ∈ v.adicCompletionIntegers F}
  have hT : T = (GlobalTheory.CompanionTheory.SW.AfBox.offS (F := F) Unit S : Set (Unit → Af F)) ∩
      GlobalTheory.CompanionTheory.SW.AfBox.compS Unit S ⁻¹' (Set.pi Set.univ fun v : S => A' v.1) := by
    ext x
    constructor
    · rintro ⟨hx1, hx2⟩
      exact ⟨hx2, fun v _ => hx1 v.1 v.2⟩
    · rintro ⟨hx1, hx2⟩
      exact ⟨fun v hv => hx2 ⟨v, hv⟩ (Set.mem_univ _), hx1⟩
  have hTm : MeasurableSet T := by
    rw [hT]
    exact (GlobalTheory.CompanionTheory.SW.AfBox.isOpen_offS Unit S).measurableSet.inter
      ((GlobalTheory.CompanionTheory.SW.AfBox.continuous_compS Unit S).measurable (MeasurableSet.univ_pi fun v => hA' v.1))
  have hbox : Coef.boxA S A = (MeasurableEquiv.funUnique Unit (Af F)).symm ⁻¹' T := by
    ext y
    simp only [Coef.boxA, T, A', Set.mem_preimage, Set.mem_setOf_eq, MeasurableEquiv.funUnique_symm_apply]
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨fun v hv => h1 v hv, fun v hv _ => h2 v hv⟩
    · rintro ⟨h1, h2⟩
      exact ⟨fun v hv => h1 v hv, fun v hv => h2 v hv ()⟩
  have hmeas : MeasurableSet (Coef.boxA S A) := by
    rw [hbox]
    exact (MeasurableEquiv.funUnique Unit (Af F)).symm.measurable hTm
  refine ⟨hmeas, ?_⟩
  have hpb := GlobalTheory.CompanionTheory.SW.AfBox.pi_box F lam hlam lf hlf h1 Unit S A' hA'
  have hmp := measurePreserving_funUnique lf Unit
  have hT' : T = (MeasurableEquiv.funUnique Unit (Af F)) ⁻¹' Coef.boxA S A := by
    rw [hbox, ← Set.preimage_comp]
    ext x
    simp only [Set.mem_preimage, Function.comp_apply]
    rw [show (MeasurableEquiv.funUnique Unit (Af F)).symm ((MeasurableEquiv.funUnique Unit (Af F)) x) = x
      from (MeasurableEquiv.funUnique Unit (Af F)).symm_apply_apply x]
  change (Measure.pi fun _ : Unit => lf) T = _ at hpb
  rw [hT', hmp.measure_preimage hmeas.nullMeasurableSet] at hpb
  rw [hpb]
  refine Finset.prod_congr rfl fun v _ => ?_
  have hv : A' v = (MeasurableEquiv.funUnique Unit (Fv F v)) ⁻¹' A v := by
    ext x
    rfl
  rw [hv, (measurePreserving_funUnique (lam v) Unit).measure_preimage (hA v).nullMeasurableSet]

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.BoxMass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanFourierApproximateIdentity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsRealApproximateIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsRealApproximateIdentity", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem integrable_inf_mul_indicator_finiteMass : ∀ (F : Type) [Field F] [NumberField F] (db : Measure (AF F)) (laminf : Measure (Ainf F)) (lf : Measure (Af F)), laminf.IsAddHaarMeasure → lf.IsAddHaarMeasure → ∀ e : (Ainf F × Af F) ≃ᵐ AF F, (∀ p, e p = pairA F p.1 p.2) → MeasurePreserving e (laminf.prod lf) db → ∀ (g : Ainf F → ℂ) (B : Set (Af F)), Integrable g laminf → MeasurableSet B → lf B ≠ ⊤ → Integrable (fun y => g (fstA F y) * B.indicator (fun _ => (1 : ℂ)) (sndA F y)) db := by
  intro F _ _ db laminf lf _ _ e he hmp g B hg hB hfin
  have hind : Integrable (B.indicator (fun _ => (1 : ℂ))) lf :=
    (integrable_indicator_iff hB).mpr (integrableOn_const hfin)
  refine (hmp.integrable_comp_emb e.measurableEmbedding).mp ?_
  have hfun : ((fun y => g (fstA F y) * B.indicator (fun _ => (1 : ℂ)) (sndA F y)) ∘ e) =
      fun p : Ainf F × Af F => g p.1 * B.indicator (fun _ => (1 : ℂ)) p.2 := by
    funext p
    simp only [Function.comp_apply, he p]
    rfl
  rw [hfun]
  exact hg.mul_prod hind

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsRealApproximateIdentity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteAdeleBoxMeasureProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteAdeleBoxMeasureProduct", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.HermitianCharacters.SelfDualLatticeFiltrationCharacter\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CharEqOneOfNear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem eventually_mem_annV_ball : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (v : HeightOneSpectrum (𝓞 F)) (t : Fv F v), ∀ᶠ k : ℕ in Filter.atTop, t ∈ annV ψ v (GlobalTheory.CompanionTheory.SW.PiV.ball v (-(k : ℤ)) : Set (Fv F v)) := by
  intro F _ _ ψ hψ v t
  obtain ⟨hc, -, -⟩ := (GlobalTheory.CompanionTheory.AdeleCharLocal.char_nontrivial_at_every_place F ψ hψ).1 v
  have hU : {x : Fv F v | ‖psiV F ψ v x - 1‖ < 1 / 2} ∈ nhds (0 : Fv F v) := by
    have hcont : Continuous fun x : Fv F v => ‖psiV F ψ v x - 1‖ := (hc.sub continuous_const).norm
    refine (isOpen_lt hcont continuous_const).mem_nhds ?_
    change ‖psiV F ψ v 0 - 1‖ < 1 / 2
    rw [psiV_zero, sub_self, norm_zero]
    norm_num
  obtain ⟨m, hm⟩ := GlobalTheory.CompanionTheory.SW.PiV.exists_ball_subset _ hU
  have triv : ∀ x ∈ GlobalTheory.CompanionTheory.SW.PiV.ball v m, psiV F ψ v x = 1 := fun x hx =>
    char_eq_one_of_near (GlobalTheory.CompanionTheory.SW.PiV.ball v m) (psiV F ψ v) (psiV_zero ψ v) (psiV_add ψ v)
      (fun z hz => hm hz) hx
  obtain ⟨n, hn⟩ := GlobalTheory.CompanionTheory.SW.PiV.exists_mem_ball t
  filter_upwards [Filter.eventually_ge_atTop (n - m).toNat] with k hk s hs
  apply triv
  rw [GlobalTheory.CompanionTheory.SW.PiV.mem_ball, map_mul]
  have hs' : Valued.v s ≤ WithZero.exp (-(k : ℤ)) := (GlobalTheory.CompanionTheory.SW.PiV.mem_ball _ _).1 hs
  have hn' : Valued.v t ≤ WithZero.exp n := (GlobalTheory.CompanionTheory.SW.PiV.mem_ball _ _).1 hn
  calc Valued.v s * Valued.v t ≤ WithZero.exp (-(k : ℤ)) * WithZero.exp n := mul_le_mul' hs' hn'
    _ = WithZero.exp (-(k : ℤ) + n) := (WithZero.exp_add _ _).symm
    _ ≤ WithZero.exp m := WithZero.exp_le_exp.2 (by omega)

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteAdeleBoxMeasureProduct =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideDescendsFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideDescendsFinite", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanSelfdualMeasurePi\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.InfiniteAdeleHaarMapEqScaledVolume\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.InfiniteAdelesLocalRingTotallyReal\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalComponentsNontrivialAdelicCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfEx

theorem exists_bumps_inf : (∀ (P : Type) [Fintype P] (a : P → ℝ), (∀ w, a w ≠ 0) → ∃ g : ℕ → (P → ℝ) → ℝ, (∀ k, Continuous (g k) ∧ HasCompactSupport (g k) ∧ (∀ x, 0 ≤ g k x) ∧ 0 < ∫ x, g k x) ∧ (∀ k, tsupport (g k) ⊆ Metric.closedBall 0 (1 / ((k : ℝ) + 1))) ∧ ∀ k, Integrable (fun t : P → ℝ => ∫ x, (g k x : ℂ) * Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (x w * t w) : ℝ) : ℂ)))) → ∀ (F : Type) [Field F] [NumberField F], NumberField.IsTotallyReal F → ∀ ψ : AddChar (AF F) ℂ, IsCharAF F ψ → ∀ laminf : Measure (Ainf F), laminf.IsAddHaarMeasure → ∃ ρ : ℕ → Ainf F → ℝ, (∀ k, Continuous (ρ k) ∧ HasCompactSupport (ρ k) ∧ (∀ y, 0 ≤ ρ k y) ∧ 0 < ∫ y, ρ k y ∂laminf) ∧ Filter.Tendsto (fun k => tsupport (ρ k)) Filter.atTop (nhds (0 : Ainf F)).smallSets ∧ ∀ k, Integrable (fouInf ψ laminf (ρ k)) laminf := by
  intro hreal F _ _ hF ψ hψ laminf hH
  haveI := hF
  classical
  obtain ⟨h1, h2, h3, h4, -⟩ := GlobalTheory.CompanionTheory.SW.isLocR_Ainf F hF
  haveI : BorelSpace (Ainf F) := ⟨rfl⟩
  have he : Continuous (GlobalTheory.CompanionTheory.SW.RealCoord.coord F) := (GlobalTheory.CompanionTheory.SW.RealCoord.isHomeomorph_coord F).continuous
  have he' : Continuous (GlobalTheory.CompanionTheory.SW.RealCoord.coord F).symm := (GlobalTheory.CompanionTheory.SW.RealCoord.coordHomeo F).symm.continuous
  have hpc : Continuous (psiInf F ψ) := hψ.1.comp (continuous_id.prodMk continuous_const)
  obtain ⟨a, ha, hχ⟩ := GlobalTheory.CompanionTheory.SW.SdPi.exists_form (GlobalTheory.CompanionTheory.SW.RealCoord.coord F) he' (psiInf F ψ) hpc (fun _ => hψ.2.1 _)
    (fun u v => by
      simp only [psiInf, map_add (f := _), ← AddChar.map_add_eq_mul]
      congr 1
      exact Prod.ext rfl (add_zero _).symm)
    (_root_.GlobalTheory.GaugeEx.CharLoc.char_local F ψ hψ).2.2
  obtain ⟨g, hg1, hg2, hg3⟩ := hreal (InfinitePlace F) a ha
  set e := GlobalTheory.CompanionTheory.SW.RealCoord.coord F with hedef
  set E := GlobalTheory.CompanionTheory.SW.RealCoord.coordHomeo F with hEdef
  have hEe : ∀ y, E y = e y := fun _ => rfl
  haveI : (laminf.map e).IsAddHaarMeasure :=
    AddEquiv.isAddHaarMeasure_map laminf e.toAddEquiv he he'
  obtain ⟨c, hc⟩ : ∃ c : ℝ≥0, laminf.map e = c • (volume : Measure (InfinitePlace F → ℝ)) :=
    ⟨_, Measure.isAddLeftInvariant_eq_smul _ _⟩
  have hc0 : c ≠ 0 := by
    rintro rfl
    have h0 : laminf.map e = 0 := by simpa using hc
    exact (Measure.IsAddHaarMeasure.toIsOpenPosMeasure (μ := laminf.map e)).open_pos Set.univ isOpen_univ
      Set.univ_nonempty (by simp [h0])
  have hme : MeasurableEmbedding e := E.measurableEmbedding
  have hint : ∀ f : (InfinitePlace F → ℝ) → ℂ, ∫ y, f (e y) ∂laminf = (c : ℝ) • ∫ u, f u := by
    intro f
    rw [← hme.integral_map (μ := laminf) f, hc, integral_smul_nnreal_measure]
    rfl
  have hintR : ∀ f : (InfinitePlace F → ℝ) → ℝ, ∫ y, f (e y) ∂laminf = (c : ℝ) * ∫ u, f u := by
    intro f
    rw [← hme.integral_map (μ := laminf) f, hc, integral_smul_nnreal_measure]
    rfl
  refine ⟨fun k y => g k (e y), fun k => ⟨(hg1 k).1.comp he, (hg1 k).2.1.comp_homeomorph E, fun y => (hg1 k).2.2.1 _, ?_⟩, ?_, fun k => ?_⟩
  · rw [hintR]
    have : (0 : ℝ) < c := by exact_mod_cast pos_iff_ne_zero.2 hc0
    exact mul_pos this (hg1 k).2.2.2
  · rw [Filter.tendsto_smallSets_iff]
    intro U hU
    have hV : E.symm ⁻¹' U ∈ nhds (0 : InfinitePlace F → ℝ) := by
      apply E.symm.continuous.continuousAt.preimage_mem_nhds
      have : E.symm 0 = 0 := e.symm.map_zero
      rwa [this]
    obtain ⟨ε, hε, hεV⟩ := Metric.nhds_basis_closedBall.mem_iff.1 hV
    have hlim : Filter.Tendsto (fun k : ℕ => 1 / ((k : ℝ) + 1)) Filter.atTop (nhds 0) :=
      tendsto_one_div_add_atTop_nhds_zero_nat
    filter_upwards [hlim.eventually (ge_mem_nhds hε)] with k hk y hy
    have h1 : e y ∈ tsupport (g k) := tsupport_comp_subset_preimage (g k) he hy
    have h3 : e y ∈ E.symm ⁻¹' U := hεV (Metric.closedBall_subset_closedBall hk (hg2 k h1))
    have h5 : E.symm (e y) = y := E.symm_apply_apply y
    rw [Set.mem_preimage, h5] at h3
    exact h3
  · have hfou : ∀ t, fouInf ψ laminf (fun y => g k (e y)) t = (c : ℝ) • ∫ x, (g k x : ℂ) *
        Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (x w * e t w) : ℝ) : ℂ)) := by
      intro t
      have h6 := hint (fun u => (g k u : ℂ) *
        Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (u w * e t w) : ℝ) : ℂ)))
      rw [← h6, fouInf]
      simp only [hχ, map_mul, Pi.mul_apply]
    have hG : Integrable (fun t => ∫ x, (g k x : ℂ) *
        Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (x w * e t w) : ℝ) : ℂ))) laminf := by
      have h7 : Integrable (fun t : InfinitePlace F → ℝ => ∫ x, (g k x : ℂ) *
          Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (x w * t w) : ℝ) : ℂ))) (laminf.map e) := by
        rw [hc]
        exact (hg3 k).smul_measure_nnreal
      exact hme.integrable_map_iff.1 h7
    rw [funext hfou]
    exact hG.smul (c : ℝ)

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfEx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideDescendsFinite =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemAnnihilatorSmallBallEventually =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemAnnihilatorSmallBallEventually", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAnnihilatorSelfDualVolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.SumPlacesEqTrace\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

variable {F : Type} [Field F] [NumberField F]

theorem singleV_apply_ne' (v w : HeightOneSpectrum (𝓞 F)) (s : Fv F v) (h : w ≠ v) :
    (singleV F v s) w = 0 := by
  classical
  exact RestrictedProduct.single_eq_of_ne (fun w : HeightOneSpectrum (𝓞 F) => w.adicCompletionIntegers F) s h

open Classical in
theorem sum_singleV_apply (T : Finset (HeightOneSpectrum (𝓞 F))) (c : Af F) (w : HeightOneSpectrum (𝓞 F)) :
    (∑ v ∈ T, singleV F v (c v)) w = if w ∈ T then c w else 0 := by
  classical
  have h1 : (∑ v ∈ T, singleV F v (c v)) w = ∑ v ∈ T, (singleV F v (c v)) w :=
    map_sum (evalV F w) _ T
  rw [h1]
  split_ifs with hw
  · rw [Finset.sum_eq_single w (fun v _ hv => singleV_apply_ne' v w _ (Ne.symm hv))
      (fun h => absurd hw h), _root_.GlobalTheory.SnMass.Inhab.single_same]
  · exact Finset.sum_eq_zero fun v hv => singleV_apply_ne' v w _ (fun h => hw (h ▸ hv))

theorem singleV_mem_boxA (S : Finset (HeightOneSpectrum (𝓞 F))) (U : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v))
    (hU : ∀ v, (0 : Fv F v) ∈ U v) (v : HeightOneSpectrum (𝓞 F)) (s : Fv F v)
    (hS : v ∈ S → s ∈ U v) (hO : v ∉ S → s ∈ v.adicCompletionIntegers F) :
    singleV F v s ∈ Coef.boxA S U := by
  refine ⟨fun w hw => ?_, fun w hw => ?_⟩
  · by_cases h : w = v
    · subst h; rw [_root_.GlobalTheory.SnMass.Inhab.single_same]; exact hS hw
    · rw [singleV_apply_ne' v w _ h]; exact hU w
  · by_cases h : w = v
    · subst h; rw [_root_.GlobalTheory.SnMass.Inhab.single_same]; exact hO hw
    · rw [singleV_apply_ne' v w _ h]; exact zero_mem _

theorem annF_boxA : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ S : Finset (HeightOneSpectrum (𝓞 F)), (∀ v, v ∉ S → annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) = (v.adicCompletionIntegers F : Set (Fv F v))) → ∀ U : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v), (∀ v, (0 : Fv F v) ∈ U v) → annF ψ (Coef.boxA S U) = Coef.boxA S (fun v => annV ψ v (U v)) := by
  intro F _ _ ψ hψ S hS U hU
  classical
  ext b
  constructor
  · intro hb
    have key : ∀ v (s : Fv F v), (v ∈ S → s ∈ U v) → (v ∉ S → s ∈ v.adicCompletionIntegers F) →
        psiV F ψ v (s * b v) = 1 := by
      intro v s h1 h2
      have := hb _ (singleV_mem_boxA S U hU v s h1 h2)
      rwa [_root_.GlobalTheory.SnMass.Inhab.single_mul, psiF_singleV] at this
    refine ⟨fun v hv s hs => key v s (fun _ => hs) (fun h => absurd hv h), fun v hv => ?_⟩
    have hmem : b v ∈ annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) :=
      fun s hs => key v s (fun h => absurd h hv) (fun _ => hs)
    rw [hS v hv] at hmem
    exact hmem
  · rintro ⟨hb1, hb2⟩ y ⟨hy1, hy2⟩
    obtain ⟨T, hT⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.psiF_eq_one_of_int_of_vanish F ψ hψ
    set c := y * b with hc
    have hcv : ∀ v, c v = y v * b v := fun v => rfl
    set T' := T ∪ S with hT'
    set e : Af F := ∑ v ∈ T', singleV F v (c v) with he
    have hcint : ∀ v, v ∉ S → c v ∈ v.adicCompletionIntegers F := fun v hv => by
      rw [hcv]; exact mul_mem (hy2 v hv) (hb2 v hv)
    have hd : psiF ψ (c - e) = 1 := by
      have happ : ∀ w, (c - e) w = c w - (if w ∈ T' then c w else 0) := fun w => by
        rw [← sum_singleV_apply T' c w]; rfl
      refine hT _ (fun w => ?_) (fun w hw => ?_)
      · rw [happ]
        split_ifs with h
        · rw [sub_self]; exact zero_mem _
        · rw [sub_zero]
          exact hcint w (fun hw => h (Finset.mem_union_right _ hw))
      · rw [happ, if_pos (Finset.mem_union_left _ hw), sub_self]
    have hsum : psiF ψ e = 1 := by
      rw [he]
      refine Finset.sum_induction _ (fun x => psiF ψ x = 1) (fun a b ha hb => by rw [psiF_add, ha, hb, one_mul])
        (psiF_zero ψ) (fun v _ => ?_)
      rw [psiF_singleV]
      by_cases hv : v ∈ S
      · rw [hcv]; exact hb1 v hv (y v) (hy1 v hv)
      · have h1 : c v ∈ annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) := by
          rw [hS v hv]; exact hcint v hv
        have := h1 1 (one_mem _)
        rwa [one_mul] at this
    have : c = (c - e) + e := by abel
    change psiF ψ c = 1
    rw [this, psiF_add, hd, hsum, one_mul]

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemAnnihilatorSmallBallEventually =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalisedFourierBumpLimit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalisedFourierBumpLimit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfLim

theorem tendsto_fouInf_div_integral : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ laminf : Measure (Ainf F), laminf.IsAddHaarMeasure → ∀ ρ : ℕ → Ainf F → ℝ, (∀ k, Continuous (ρ k) ∧ HasCompactSupport (ρ k) ∧ (∀ y, 0 ≤ ρ k y) ∧ 0 < ∫ y, ρ k y ∂laminf) → Filter.Tendsto (fun k => tsupport (ρ k)) Filter.atTop (nhds (0 : Ainf F)).smallSets → ∀ t : Ainf F, Filter.Tendsto (fun k => fouInf ψ laminf (ρ k) t / ((∫ y, ρ k y ∂laminf : ℝ) : ℂ)) Filter.atTop (nhds 1) := by
  intro F _ _ ψ hψ laminf _ ρ hρ hsupp t
  haveI : BorelSpace (Ainf F) := ⟨rfl⟩
  have hg_cont : Continuous fun x : Ainf F => psiInf F ψ (x * t) := by
    have h1 : Continuous fun x : Ainf F => pairA F (x * t) 0 :=
      (continuous_mul_const t).prodMk continuous_const
    exact hψ.1.comp h1
  have hg0 : psiInf F ψ (0 * t) = 1 := by
    have h0 : pairA F (0 * t) 0 = 0 := by
      rw [zero_mul]
      rfl
    show ψ (pairA F (0 * t) 0) = 1
    rw [h0, AddChar.map_zero_eq_one]
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hU : (fun x : Ainf F => psiInf F ψ (x * t)) ⁻¹' Metric.ball 1 (ε / 2) ∈ nhds (0 : Ainf F) := by
    apply hg_cont.continuousAt.preimage_mem_nhds
    rw [hg0]
    exact Metric.ball_mem_nhds _ (half_pos hε)
  filter_upwards [Filter.tendsto_smallSets_iff.1 hsupp _ hU] with k hk
  obtain ⟨hc, hcs, hnn, hI⟩ := hρ k
  have hint : Integrable (ρ k) laminf := hc.integrable_of_hasCompactSupport hcs
  have hc1 : Continuous fun x => (ρ k x : ℂ) := Complex.continuous_ofReal.comp hc
  have hcs1 : HasCompactSupport fun x => (ρ k x : ℂ) := hcs.comp_left Complex.ofReal_zero
  have hi1 : Integrable (fun x => (ρ k x : ℂ)) laminf := hc1.integrable_of_hasCompactSupport hcs1
  have hi2 : Integrable (fun x => (ρ k x : ℂ) * psiInf F ψ (x * t)) laminf :=
    (hc1.mul hg_cont).integrable_of_hasCompactSupport
      (hcs1.mul_right (f' := fun x => psiInf F ψ (x * t)))
  have key : fouInf ψ laminf (ρ k) t - ((∫ y, ρ k y ∂laminf : ℝ) : ℂ)
      = ∫ x, (ρ k x : ℂ) * (psiInf F ψ (x * t) - 1) ∂laminf := by
    unfold fouInf
    rw [← integral_complex_ofReal, ← integral_sub hi2 hi1]
    congr 1
    ext x
    ring
  have hIc : ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hI.ne'
  have hsplit : fouInf ψ laminf (ρ k) t / ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) - 1
      = (fouInf ψ laminf (ρ k) t - ((∫ y, ρ k y ∂laminf : ℝ) : ℂ)) / ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) := by
    rw [sub_div, div_self hIc]
  have hbound : ‖∫ x, (ρ k x : ℂ) * (psiInf F ψ (x * t) - 1) ∂laminf‖ ≤ ∫ x, ρ k x * (ε / 2) ∂laminf := by
    apply norm_integral_le_of_norm_le (hint.mul_const _)
    refine Filter.Eventually.of_forall fun x => ?_
    rw [norm_mul, Complex.norm_real, Real.norm_of_nonneg (hnn x)]
    by_cases hx : x ∈ tsupport (ρ k)
    · have h := hk hx
      simp only [Set.mem_preimage, Metric.mem_ball, dist_eq_norm] at h
      exact mul_le_mul_of_nonneg_left h.le (hnn x)
    · rw [image_eq_zero_of_notMem_tsupport hx]
      simp
  rw [integral_mul_const] at hbound
  rw [dist_eq_norm, hsplit, key, norm_div, Complex.norm_real, Real.norm_of_nonneg hI.le, div_lt_iff₀ hI]
  nlinarith

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfLim
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalisedFourierBumpLimit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NumberFieldApproximateIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.NumberFieldApproximateIdentity", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.BumpFunction.Normed\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfReal

noncomputable def bumpLine : ContDiffBump (0 : ℝ) := ⟨1 / 2, 1, by norm_num, by norm_num⟩

theorem bumpLine_eq_zero {y : ℝ} (hy : 1 ≤ |y|) : bumpLine y = 0 := by
  apply ContDiffBump.zero_of_le_dist
  simpa [bumpLine, Real.dist_eq] using hy

theorem integral_bumpLine_scaled_pos {c : ℝ} (hc : 0 < c) :
    0 < ∫ y : ℝ, bumpLine (c * y) := by
  rw [Measure.integral_comp_mul_left (fun y => bumpLine y) c]
  have h : 0 < ∫ y : ℝ, bumpLine y := bumpLine.integral_pos
  have : 0 < |c⁻¹| := abs_pos.mpr (inv_ne_zero hc.ne')
  simpa using mul_pos this h

theorem integrable_osc_line {c a : ℝ} (hc : 0 < c) (ha : a ≠ 0) :
    Integrable (fun s : ℝ => ∫ y : ℝ, ((bumpLine (c * y) : ℝ) : ℂ) *
      Complex.exp (2 * Real.pi * Complex.I * ((a * (y * s) : ℝ) : ℂ))) := by
  have hsm : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => ((bumpLine (c * y) : ℝ) : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp (bumpLine.contDiff.comp (contDiff_const.mul contDiff_id))
  have hcs : HasCompactSupport (fun y : ℝ => ((bumpLine (c * y) : ℝ) : ℂ)) := by
    apply HasCompactSupport.intro (K := Metric.closedBall 0 (1 / c)) (isCompact_closedBall _ _)
    intro y hy
    have h1 : 1 / c < |y| := by simpa [Real.dist_eq] using hy
    have h2 : 1 ≤ |c * y| := by
      rw [abs_mul, abs_of_pos hc]
      rw [div_lt_iff₀ hc] at h1
      nlinarith
    simp [bumpLine_eq_zero h2]
  let S : SchwartzMap ℝ ℂ := hcs.toSchwartzMap hsm
  have hI : Integrable (fun u : ℝ => (FourierTransform.fourier S) u) :=
    (FourierTransform.fourier S).integrable
  have hI2 := hI.comp_mul_left' (neg_ne_zero.mpr ha)
  refine hI2.congr (Filter.Eventually.of_forall fun s => ?_)
  simp only [SchwartzMap.fourier_coe, Real.fourier_real_eq_integral_exp_smul]
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  have hS : S y = ((bumpLine (c * y) : ℝ) : ℂ) := rfl
  simp only [hS, smul_eq_mul]
  rw [mul_comm]
  congr 2
  push_cast
  ring

theorem exists_bumps (P : Type) [Fintype P] (a : P → ℝ) (ha : ∀ w, a w ≠ 0) :
    ∃ g : ℕ → (P → ℝ) → ℝ, (∀ k, Continuous (g k) ∧ HasCompactSupport (g k) ∧ (∀ x, 0 ≤ g k x) ∧ 0 < ∫ x, g k x) ∧ (∀ k, tsupport (g k) ⊆ Metric.closedBall 0 (1 / ((k : ℝ) + 1))) ∧ ∀ k, Integrable (fun t : P → ℝ => ∫ x, (g k x : ℂ) * Complex.exp (2 * Real.pi * Complex.I * ((∑ w, a w * (x w * t w) : ℝ) : ℂ))) := by
  classical
  have hpos : ∀ k : ℕ, (0 : ℝ) < (k : ℝ) + 1 := fun k => by positivity
  have hts : ∀ k : ℕ, tsupport (fun x : P → ℝ => ∏ w, bumpLine (((k : ℝ) + 1) * x w)) ⊆
      Metric.closedBall 0 (1 / ((k : ℝ) + 1)) := by
    intro k
    apply closure_minimal _ Metric.isClosed_closedBall
    intro x hx
    rw [Metric.mem_closedBall, dist_zero_right, pi_norm_le_iff_of_nonneg (by have := hpos k; positivity)]
    intro w
    by_contra hlt
    push Not at hlt
    apply hx
    apply Finset.prod_eq_zero (Finset.mem_univ w)
    apply bumpLine_eq_zero
    rw [abs_mul, abs_of_pos (hpos k)]
    rw [Real.norm_eq_abs, div_lt_iff₀ (hpos k)] at hlt
    linarith
  refine ⟨fun k x => ∏ w, bumpLine (((k : ℝ) + 1) * x w), fun k => ⟨?_, ?_, ?_, ?_⟩, hts, fun k => ?_⟩
  · exact continuous_finsetProd _ fun w _ =>
      bumpLine.continuous.comp (continuous_const.mul (continuous_apply w))
  · exact (isCompact_closedBall (0 : P → ℝ) _).of_isClosed_subset (isClosed_tsupport _) (hts k)
  · exact fun x => Finset.prod_nonneg fun w _ => bumpLine.nonneg
  · rw [integral_fintype_prod_volume_eq_prod (fun _ (y : ℝ) => bumpLine (((k : ℝ) + 1) * y))]
    exact Finset.prod_pos fun w _ => integral_bumpLine_scaled_pos (hpos k)
  · have hI := Integrable.fintype_prod (f := fun (w : P) (s : ℝ) => ∫ y : ℝ,
      ((bumpLine (((k : ℝ) + 1) * y) : ℝ) : ℂ) *
        Complex.exp (2 * Real.pi * Complex.I * ((a w * (y * s) : ℝ) : ℂ)))
      (fun w => integrable_osc_line (hpos k) (ha w))
    refine hI.congr (Filter.Eventually.of_forall fun t => ?_)
    simp only
    rw [← integral_fintype_prod_volume_eq_prod (fun (w : P) (y : ℝ) =>
      ((bumpLine (((k : ℝ) + 1) * y) : ℝ) : ℂ) *
        Complex.exp (2 * Real.pi * Complex.I * ((a w * (y * t w) : ℝ) : ℂ)))]
    refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
    simp only
    rw [Finset.prod_mul_distrib]
    push_cast
    rw [Finset.mul_sum, Complex.exp_sum]

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfReal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.NumberFieldApproximateIdentity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanHaarScalingNorm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanHaarScalingNorm", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IntegralIndicatorCharOfTrivial\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ExistsUnipotentInvariantCompactlySupportedWeight\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.SelfDualMap\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicAnnihilatorBoxProduct\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicCharacterTrivialAlmostEverywhere\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdelicIntegrableProductIndicator\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CoefS\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanFourierApproximateIdentity\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsRealApproximateIdentity\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteAdeleBoxMeasureProduct\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideDescendsFinite\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.LocalAnnihilatorSelfDualVolume\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemAnnihilatorSmallBallEventually\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalisedFourierBumpLimit\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.NumberFieldApproximateIdentity\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.InfiniteAdelesLocalRingTotallyReal\nimport GroundTheory.GlobalFields.LocalFieldAtPlace\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
open scoped TensorProduct ENNReal NNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem sdConst : ∀ (F : Type) [Field F] [NumberField F], NumberField.IsTotallyReal F → ∀ (laminf : Measure (Ainf F)) (lam : ∀ v : HeightOneSpectrum (𝓞 F), Measure (Fv F v)), GlobalTheory.CompanionTheory.SW.IsStdInf laminf → (∀ v, GlobalTheory.CompanionTheory.SW.IsStdV v (lam v)) → ∀ ψ, IsCharAF F ψ → ∃ (cinf : ℝ≥0) (c : HeightOneSpectrum (𝓞 F) → ℝ≥0), GlobalTheory.CompanionTheory.SW.IsUnitProd cinf c ∧ SelfDual (cinf • laminf) (fun s t => psiInf F ψ (s * t)) ∧ ∀ v : HeightOneSpectrum (𝓞 F), SelfDual (c v • lam v) (fun s t => psiV F ψ v (s * t)) := by
  intro F _ _ hF laminf lam hinf hlam ψ hψ
  obtain ⟨cinf, c, hU, h1, h2⟩ := GlobalTheory.CompanionTheory.SW.SdCoord.selfDual_coord F hF laminf lam hinf hlam ψ hψ
    Unit 1 (Matrix.isSymm_one) (by simp)
  refine ⟨cinf, c, hU, ?_, fun v => ?_⟩
  · obtain ⟨a1, a2, a3, a4, -, -, -, -⟩ := GlobalTheory.CompanionTheory.SW.isLocR_Ainf F hF
    haveI := a1; haveI := a2; haveI := a3; haveI := a4
    haveI : BorelSpace (Ainf F) := ⟨rfl⟩
    haveI := hinf.1
    exact (GlobalTheory.CompanionTheory.SW.SdAny.iff_of_unit (psiInf F ψ) laminf cinf _ (Matrix.map_one _ (map_zero _) (map_one _)) h1 _).2 rfl
  · obtain ⟨a1, a2, a3, a4, -, -, -, -⟩ := GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
    haveI := a1; haveI := a2; haveI := a3; haveI := a4
    haveI : BorelSpace (Fv F v) := ⟨rfl⟩
    haveI := (hlam v).1
    exact (GlobalTheory.CompanionTheory.SW.SdAny.iff_of_unit (psiV F ψ v) (lam v) (c v) _ (Matrix.map_one _ (map_zero _) (map_one _)) (h2 v) _).2 rfl

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem condS_of : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (lam : ∀ v : HeightOneSpectrum (𝓞 F), Measure (Fv F v)) (c : HeightOneSpectrum (𝓞 F) → ℝ≥0), (∀ v, GlobalTheory.CompanionTheory.SW.IsStdV v (lam v)) → (∀ v, SelfDual (c v • lam v) (fun s t => psiV F ψ v (s * t))) → {v | c v ≠ 1}.Finite → {v : HeightOneSpectrum (𝓞 F) | annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) ≠ (v.adicCompletionIntegers F : Set (Fv F v))}.Finite := by
  intro F _ _ ψ hψ lam c hlam hsd hc1
  classical
  obtain ⟨T, hT⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.psiF_eq_one_of_int_of_vanish F ψ hψ
  refine (T.finite_toSet.union hc1).subset fun v hv => ?_
  by_contra hcon
  simp only [Set.mem_union, Finset.mem_coe, Set.mem_setOf_eq, not_or, not_not] at hcon
  obtain ⟨hvT, hcv⟩ := hcon
  apply hv
  haveI : BorelSpace (Fv F v) := ⟨rfl⟩
  have hloc := GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  haveI : IsTopologicalRing (Fv F v) := hloc.1
  haveI : SecondCountableTopology (Fv F v) := hloc.2.2.1
  haveI := (hlam v).1
  have hO : ((GlobalTheory.CompanionTheory.SW.PiV.ball v 0 : AddSubgroup (Fv F v)) : Set (Fv F v)) =
      (v.adicCompletionIntegers F : Set (Fv F v)) := by
    ext x
    change Valued.v x ≤ WithZero.exp 0 ↔ Valued.v x ≤ 1
    simp
  obtain ⟨-, -, -, hm⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.localDual F ψ hψ v (lam v) (c v) (hlam v) (hsd v) (GlobalTheory.CompanionTheory.SW.PiV.ball v 0)
    (GlobalTheory.CompanionTheory.SW.PiV.ball_isCompact 0) (GlobalTheory.CompanionTheory.SW.PiV.ball_isOpen 0)
  rw [hO, hcv, (hlam v).2] at hm
  simp only [NNReal.coe_one, one_pow, ENNReal.toReal_one, mul_one, one_mul] at hm
  have hA1 : lam v (annV ψ v (v.adicCompletionIntegers F : Set (Fv F v))) = 1 := by
    have hne : lam v (annV ψ v (v.adicCompletionIntegers F : Set (Fv F v))) ≠ ⊤ := by
      intro h
      rw [h] at hm
      simp at hm
    rw [← ENNReal.ofReal_toReal hne, hm, ENNReal.ofReal_one]
  have hsub : (v.adicCompletionIntegers F : Set (Fv F v)) ⊆
      annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) := by
    intro t ht s hs
    have hx : s * t ∈ v.adicCompletionIntegers F := mul_mem hs ht
    rw [← psiF_singleV]
    have hs1 : (singleV F v (s * t)) v = s * t :=
      RestrictedProduct.single_eq_same (fun w : HeightOneSpectrum (𝓞 F) => w.adicCompletionIntegers F) v _
    have hs2 : ∀ w, w ≠ v → (singleV F v (s * t)) w = 0 := fun w h =>
      RestrictedProduct.single_eq_of_ne (fun w : HeightOneSpectrum (𝓞 F) => w.adicCompletionIntegers F) _ h
    refine hT _ (fun w => ?_) (fun w hw => ?_)
    · by_cases h : w = v
      · subst h
        rw [hs1]
        exact hx
      · rw [hs2 w h]
        exact zero_mem _
    · exact hs2 w fun h => hvT (h ▸ hw)
  refine (Set.Subset.antisymm ?_ hsub)
  intro t ht
  by_contra htO
  set O : Set (Fv F v) := (v.adicCompletionIntegers F : Set (Fv F v)) with hOdef
  set A : Set (Fv F v) := annV ψ v O with hAdef
  have hmO : MeasurableSet O := by
    rw [← hO]
    exact (GlobalTheory.CompanionTheory.SW.PiV.ball_isOpen 0).measurableSet
  have hshift : lam v ((fun x => -t + x) ⁻¹' O) = 1 := by
    rw [measure_preimage_add]
    exact (hlam v).2
  have hdisj : Disjoint O ((fun x => -t + x) ⁻¹' O) := by
    refine Set.disjoint_left.2 fun x hx hx' => htO ?_
    have h1 : x - (-t + x) ∈ v.adicCompletionIntegers F := sub_mem hx hx'
    have h2 : x - (-t + x) = t := by ring
    rwa [h2] at h1
  have hsub2 : (fun x => -t + x) ⁻¹' O ⊆ A := by
    intro x hx
    have h1 : t + (-t + x) ∈ annS ψ v O := (annS ψ v O).add_mem ht (hsub hx)
    have h2 : t + (-t + x) = x := by ring
    rwa [h2] at h1
  have hle : lam v (O ∪ (fun x => -t + x) ⁻¹' O) ≤ lam v A :=
    measure_mono (Set.union_subset hsub hsub2)
  rw [measure_union hdisj (hmO.preimage (measurable_const_add _)), (hlam v).2, hshift, hA1] at hle
  norm_num at hle

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test

theorem psiInf_zero {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ) : psiInf F ψ 0 = 1 := by
  have h : pairA F (0 : Ainf F) 0 = 0 := rfl
  rw [psiInf, h, AddChar.map_zero_eq_one]

theorem fouInf_zero {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ) (lam : Measure (Ainf F))
    (ρ : Ainf F → ℝ) : fouInf ψ lam ρ 0 = ((∫ y, ρ y ∂lam : ℝ) : ℂ) := by
  simp only [fouInf, mul_zero, psiInf_zero, mul_one]
  exact integral_ofReal

theorem norm_fouA_le {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ) (hψ : IsCharAF F ψ)
    (db : Measure (AF F)) (ρ : Ainf F → ℝ) (hρ : ∀ y, 0 ≤ ρ y) (S : Finset (HeightOneSpectrum (𝓞 F)))
    (U : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v)) (b : AF F) :
    ‖Coef.fouA ψ db (Coef.testT ρ S U) b‖ ≤ ‖∫ y, Coef.testT ρ S U y ∂db‖ := by
  set h : AF F → ℝ := fun y => ρ (fstA F y) * (Coef.boxA S U).indicator (fun _ => (1 : ℝ)) (sndA F y) with hh
  have hT : ∀ y, Coef.testT ρ S U y = ((h y : ℝ) : ℂ) := by
    intro y
    simp only [Coef.testT, hh, Set.indicator]
    split_ifs <;> simp
  have hnn : ∀ y, 0 ≤ h y := by
    intro y
    refine mul_nonneg (hρ _) (Set.indicator_nonneg (fun _ _ => zero_le_one) _)
  have h1 : ∫ y, Coef.testT ρ S U y ∂db = ((∫ y, h y ∂db : ℝ) : ℂ) := by
    simp only [hT]
    exact integral_ofReal
  rw [h1, Complex.norm_real, Real.norm_of_nonneg (integral_nonneg hnn)]
  refine (norm_integral_le_integral_norm _).trans (le_of_eq ?_)
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  simp only [norm_mul, hψ.2.1, mul_one, hT, Complex.norm_real]
  exact Real.norm_of_nonneg (hnn y)

theorem inf_inversion {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ)
    (laminf : Measure (Ainf F)) (cinf : ℝ≥0) (hsd : SelfDual (cinf • laminf) (fun s t => psiInf F ψ (s * t)))
    (ρ : Ainf F → ℝ) (hc : Continuous ρ) (hs : HasCompactSupport ρ)
    (hI : Integrable (fouInf ψ laminf ρ) laminf) (t : Ainf F) :
    ((cinf : ℝ) : ℂ) ^ 2 * ∫ x, fouInf ψ laminf ρ x * psiInf F ψ (x * t) ∂laminf = (ρ (-t) : ℂ) := by
  have e1 : ∀ y, ∫ x, (ρ x : ℂ) * psiInf F ψ (x * y) ∂(cinf • laminf) =
      ((cinf : ℝ) : ℂ) * fouInf ψ laminf ρ y := by
    intro y
    rw [integral_smul_nnreal_measure, NNReal.smul_def, Complex.real_smul]
    rfl
  have hc' : Continuous fun x => (ρ x : ℂ) := Complex.continuous_ofReal.comp hc
  have hs' : HasCompactSupport fun x => (ρ x : ℂ) := hs.comp_left (g := Complex.ofReal) (by simp)
  have h := hsd.2 (fun x => (ρ x : ℂ)) hc' hs' (by
    simp only [e1]
    exact (hI.const_mul _).smul_measure_nnreal) t
  simp only [e1] at h
  rw [integral_smul_nnreal_measure, NNReal.smul_def, Complex.real_smul] at h
  rw [← h, pow_two, mul_assoc, ← integral_const_mul]
  congr 1
  refine congrArg _ (funext fun y => ?_)
  ring

theorem exists_test_approx : ∀ (F : Type) [Field F] [NumberField F], NumberField.IsTotallyReal F → ∀ ψ : AddChar (AF F) ℂ, IsCharAF F ψ → ∀ db : Measure (AF F), IsCovolOne db → ∀ (laminf : Measure (Ainf F)) (lam : ∀ v : HeightOneSpectrum (𝓞 F), Measure (Fv F v)), GlobalTheory.CompanionTheory.SW.IsStdInf laminf → (∀ v, GlobalTheory.CompanionTheory.SW.IsStdV v (lam v)) → ∃ S₁ : Finset (HeightOneSpectrum (𝓞 F)), ∀ S, S₁ ⊆ S → ∃ (ρ : ℕ → Ainf F → ℝ) (U : ℕ → ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v)), (∀ k, Continuous (ρ k) ∧ HasCompactSupport (ρ k) ∧ (∀ y, 0 ≤ ρ k y) ∧ 0 < ∫ y, ρ k y ∂laminf) ∧ Filter.Tendsto (fun k => tsupport (ρ k)) Filter.atTop (nhds (0 : Ainf F)).smallSets ∧ (∀ k v, IsCompact (U k v) ∧ IsOpen (U k v) ∧ (0 : Fv F v) ∈ U k v) ∧ (∀ v, Filter.Tendsto (fun k => U k v) Filter.atTop (nhds (0 : Fv F v)).smallSets) ∧ (∀ k, Integrable (Coef.fouA ψ db (Coef.testT (ρ k) S (U k))) db ∧ ∀ z, ∫ b, Coef.fouA ψ db (Coef.testT (ρ k) S (U k)) b * ψ (b * z) ∂db = Coef.testT (ρ k) S (U k) (-z)) ∧ (∀ k, ∫ y, Coef.testT (ρ k) S (U k) y ∂db = ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) * ∏ v ∈ S, (((lam v) (U k v)).toReal : ℂ)) ∧ (∀ k b, ‖Coef.fouA ψ db (Coef.testT (ρ k) S (U k)) b‖ ≤ ‖∫ y, Coef.testT (ρ k) S (U k) y ∂db‖) ∧ ∀ b, Filter.Tendsto (fun k => Coef.fouA ψ db (Coef.testT (ρ k) S (U k)) b / ∫ y, Coef.testT (ρ k) S (U k) y ∂db) Filter.atTop (nhds ((Coef.intF S).indicator (fun _ => (1 : ℂ)) (sndA F b))) := by
  intro F _ _ hF ψ hψ db hdb laminf lam hinf hlam
  classical
  obtain ⟨lf, hlfH, hlf1, e, he, hep⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.ProdM.prodM F db hdb laminf hinf
  obtain ⟨cinf, c, hU, hsdI, hsdV⟩ := sdConst F hF laminf lam hinf hlam ψ hψ
  have hfin2 : {v | c v ≠ 1}.Finite := hU.1
  have hfin1 := condS_of F ψ hψ lam c hlam hsdV hfin2
  refine ⟨hfin1.toFinset ∪ hfin2.toFinset, fun S hS => ?_⟩
  have hSc : ∀ v, v ∉ S → annV ψ v (v.adicCompletionIntegers F : Set (Fv F v)) =
      (v.adicCompletionIntegers F : Set (Fv F v)) := fun v hv => by
    by_contra h
    exact hv (hS (Finset.mem_union_left _ (hfin1.mem_toFinset.2 h)))
  have hSc1 : ∀ v, v ∉ S → c v = 1 := fun v hv => by
    by_contra h
    exact hv (hS (Finset.mem_union_right _ (hfin2.mem_toFinset.2 h)))
  obtain ⟨ρ, hρ, hρt, hρI⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfEx.exists_bumps_inf _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfReal.exists_bumps F hF ψ hψ laminf hinf.1
  haveI : ∀ v : HeightOneSpectrum (𝓞 F), BorelSpace (Fv F v) := fun v => ⟨rfl⟩
  haveI : ∀ v : HeightOneSpectrum (𝓞 F), (lam v).IsAddHaarMeasure := fun v => (hlam v).1
  have hloc := fun v => GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  haveI : ∀ v, IsTopologicalRing (Fv F v) := fun v => (hloc v).1
  let Ub : ℕ → ∀ v : HeightOneSpectrum (𝓞 F), AddSubgroup (Fv F v) :=
    fun k v => GlobalTheory.CompanionTheory.SW.PiV.ball v (-(k : ℤ))
  have hUc : ∀ k v, IsCompact (Ub k v : Set (Fv F v)) := fun k v => GlobalTheory.CompanionTheory.SW.PiV.ball_isCompact _
  have hUo : ∀ k v, IsOpen (Ub k v : Set (Fv F v)) := fun k v => GlobalTheory.CompanionTheory.SW.PiV.ball_isOpen _
  have hdual := fun k v => _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.localDual F ψ hψ v (lam v) (c v) (hlam v) (hsdV v) (Ub k v) (hUc k v) (hUo k v)
  let Ua : ℕ → ∀ v : HeightOneSpectrum (𝓞 F), AddSubgroup (Fv F v) :=
    fun k v => annS ψ v (Ub k v)
  have hUac : ∀ k v, IsCompact (Ua k v : Set (Fv F v)) := fun k v => (hdual k v).2.1
  have hUao : ∀ k v, IsOpen (Ua k v : Set (Fv F v)) := fun k v => (hdual k v).2.2.1
  have hmass : ∀ (W : ∀ v : HeightOneSpectrum (𝓞 F), AddSubgroup (Fv F v)),
      (∀ v, IsCompact (W v : Set (Fv F v))) → (∀ v, IsOpen (W v : Set (Fv F v))) →
      MeasurableSet (boxS S W : Set (Af F)) ∧ lf (boxS S W : Set (Af F)) ≠ ⊤ ∧
        (lf (boxS S W : Set (Af F))).toReal = ∏ v ∈ S, (lam v (W v : Set (Fv F v))).toReal := by
    intro W hc ho
    obtain ⟨h1, h2⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.BoxMass.boxMass F lam hlam lf hlfH hlf1 S (fun v => (W v : Set (Fv F v)))
      (fun v => (ho v).measurableSet)
    have hne : ∀ v, lam v (W v : Set (Fv F v)) ≠ ⊤ := fun v => (hc v).measure_lt_top.ne
    refine ⟨h1, ?_, ?_⟩
    · change lf (Coef.boxA S fun v => (W v : Set (Fv F v))) ≠ ⊤
      rw [h2]
      exact ENNReal.prod_ne_top fun v _ => hne v
    · change (lf (Coef.boxA S fun v => (W v : Set (Fv F v)))).toReal = _
      rw [h2, ENNReal.toReal_prod]
  let B : ℕ → AddSubgroup (Af F) := fun k => boxS S (Ub k)
  let B' : ℕ → AddSubgroup (Af F) := fun k => boxS S (Ua k)
  have hB : ∀ k, annF ψ (B k : Set (Af F)) = (B' k : Set (Af F)) := fun k =>
    _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.annF_boxA F ψ hψ S hSc (fun v => (Ub k v : Set (Fv F v))) (fun v => (Ub k v).zero_mem)
  have hB' : ∀ k, annF ψ (B' k : Set (Af F)) = (B k : Set (Af F)) := fun k => by
    refine (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.annF_boxA F ψ hψ S hSc (fun v => (Ua k v : Set (Fv F v))) (fun v => (Ua k v).zero_mem)).trans ?_
    change Coef.boxA S (fun v => annV ψ v (annV ψ v (Ub k v))) = _
    simp only [fun v => (hdual k v).1]
    rfl
  have hBm := fun k => hmass (Ub k) (hUc k) (hUo k)
  have hBm' := fun k => hmass (Ua k) (hUac k) (hUao k)
  have hfou : ∀ k b, Coef.fouA ψ db (Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v)))) b =
      fouInf ψ laminf (ρ k) (fstA F b) * (((lf (B k : Set (Af F))).toReal : ℝ) : ℂ) *
        (B' k : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F b) := by
    intro k b
    have h := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.integral_pure_indicator_char F ψ hψ db laminf lf hinf.1 hlfH e he hep (fun x => (ρ k x : ℂ)) (B k)
      (hBm k).1 (hBm k).2.1 b
    rw [hB k] at h
    exact h
  have hint : ∀ k, ∫ y, Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v))) y ∂db =
      ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) * (((lf (B k : Set (Af F))).toReal : ℝ) : ℂ) := by
    intro k
    have h := hfou k 0
    have h0 : (0 : Af F) ∈ (B' k : Set (Af F)) := (B' k).zero_mem
    simp only [map_zero, fouInf_zero, Set.indicator_of_mem h0, mul_one, Coef.fouA, mul_zero,
      AddChar.map_zero_eq_one] at h
    exact h
  have hκ : ∀ k, ((lf (B k : Set (Af F))).toReal : ℝ) ≠ 0 := by
    intro k
    rw [(hBm k).2.2]
    refine Finset.prod_ne_zero_iff.2 fun v _ => ?_
    refine (ENNReal.toReal_pos ?_ (hUc k v).measure_lt_top.ne).ne'
    exact ((hUo k v).measure_pos (lam v) ⟨0, (Ub k v).zero_mem⟩).ne'
  have hconst : ∀ k, (lf (B k : Set (Af F))).toReal * (lf (B' k : Set (Af F))).toReal = (cinf : ℝ) ^ 2 := by
    intro k
    have hP : (∏ v ∈ S, (c v : ℝ)) ^ 2 * ((lf (B k : Set (Af F))).toReal * (lf (B' k : Set (Af F))).toReal) = 1 := by
      rw [(hBm k).2.2, (hBm' k).2.2, ← Finset.prod_pow, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
      refine Finset.prod_eq_one fun v _ => ?_
      have := (hdual k v).2.2.2
      rw [← mul_assoc]
      exact this
    have hcp : (cinf : ℝ) * ∏ v ∈ S, (c v : ℝ) = 1 := by
      have h2 : ∏ᶠ v, c v = ∏ v ∈ S, c v := finprod_eq_prod_of_mulSupport_subset _ (fun v hv => by
        by_contra h
        exact hv (hSc1 v h))
      have h3 := hU.2
      rw [h2] at h3
      exact_mod_cast h3
    calc (lf (B k : Set (Af F))).toReal * (lf (B' k : Set (Af F))).toReal
        = ((cinf : ℝ) * ∏ v ∈ S, (c v : ℝ)) ^ 2 * ((lf (B k : Set (Af F))).toReal * (lf (B' k : Set (Af F))).toReal) := by
          rw [hcp]; ring
      _ = (cinf : ℝ) ^ 2 * ((∏ v ∈ S, (c v : ℝ)) ^ 2 * ((lf (B k : Set (Af F))).toReal * (lf (B' k : Set (Af F))).toReal)) := by ring
      _ = (cinf : ℝ) ^ 2 := by rw [hP, mul_one]
  have hcinf : (cinf : ℝ) ≠ 0 := by
    intro h0
    have h3 := hU.2
    have : cinf = 0 := by exact_mod_cast h0
    rw [this, zero_mul] at h3
    exact zero_ne_one h3
  refine ⟨ρ, fun k v => (Ub k v : Set (Fv F v)), hρ, hρt, fun k v => ⟨hUc k v, hUo k v, (Ub k v).zero_mem⟩,
    ?_, fun k => ⟨?_, fun z => ?_⟩, fun k => ?_, fun k b => ?_, fun b => ?_⟩
  · intro v
    refine Filter.tendsto_smallSets_iff.2 fun t ht => ?_
    obtain ⟨m, hm⟩ := GlobalTheory.CompanionTheory.SW.PiV.exists_ball_subset t ht
    filter_upwards [Filter.eventually_ge_atTop (-m).toNat] with k hk
    refine (GlobalTheory.CompanionTheory.SW.PiV.ball_le ?_).trans hm
    omega
  · have : Coef.fouA ψ db (Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v)))) =
        fun b => (((lf (B k : Set (Af F))).toReal : ℝ) : ℂ) * (fouInf ψ laminf (ρ k) (fstA F b) *
          (B' k : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F b)) := by
      funext b
      rw [hfou]
      ring
    rw [this]
    exact (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.integrable_inf_mul_indicator_finiteMass F db laminf lf hinf.1 hlfH e he hep _ _ (hρI k) (hBm' k).1 (hBm' k).2.1).const_mul _
  · have h1 : ∀ b, Coef.fouA ψ db (Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v)))) b * ψ (b * z) =
        (((lf (B k : Set (Af F))).toReal : ℝ) : ℂ) * ((fouInf ψ laminf (ρ k) (fstA F b) *
          (B' k : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F b)) * ψ (b * z)) := by
      intro b
      rw [hfou]
      ring
    simp only [h1]
    rw [integral_const_mul, _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.integral_pure_indicator_char F ψ hψ db laminf lf hinf.1 hlfH e he hep _ (B' k) (hBm' k).1 (hBm' k).2.1 z,
      hB' k]
    have hinv := inf_inversion ψ laminf cinf hsdI (ρ k) (hρ k).1 (hρ k).2.1 (hρI k) (fstA F z)
    have hz : (sndA F (-z) ∈ (B k : Set (Af F))) ↔ sndA F z ∈ (B k : Set (Af F)) := by
      rw [map_neg]
      exact (B k).neg_mem_iff
    have hc2 : ((lf (B k : Set (Af F))).toReal : ℂ) * ((lf (B' k : Set (Af F))).toReal : ℂ) = ((cinf : ℝ) : ℂ) ^ 2 := by
      exact_mod_cast hconst k
    have hT : Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v))) (-z) =
        (ρ k (-(fstA F z)) : ℂ) * (B k : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F z) := by
      simp only [Coef.testT, map_neg]
      congr 1
      by_cases h : sndA F z ∈ (B k : Set (Af F))
      · rw [Set.indicator_of_mem h]
        exact Set.indicator_of_mem ((B k).neg_mem h) _
      · rw [Set.indicator_of_notMem h]
        exact Set.indicator_of_notMem (fun h' => h (by simpa using (B k).neg_mem h')) _
    rw [hT, ← hinv, ← hc2]
    ring
  · rw [hint k, (hBm k).2.2]
    push_cast
    rfl
  · exact norm_fouA_le ψ hψ db (ρ k) (hρ k).2.2.1 S _ b
  · have hr : ∀ k, Coef.fouA ψ db (Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v)))) b /
        ∫ y, Coef.testT (ρ k) S (fun v => (Ub k v : Set (Fv F v))) y ∂db =
        fouInf ψ laminf (ρ k) (fstA F b) / ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) *
          (B' k : Set (Af F)).indicator (fun _ => (1 : ℂ)) (sndA F b) := by
      intro k
      have hk : (((lf (B k : Set (Af F))).toReal : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hκ k
      have hk2 : ((∫ y, ρ k y ∂laminf : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (hρ k).2.2.2.ne'
      rw [hfou, hint]
      field_simp
    simp only [hr]
    have hlim := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.InfLim.tendsto_fouInf_div_integral F ψ hψ laminf hinf.1 ρ hρ hρt (fstA F b)
    by_cases hb : sndA F b ∈ Coef.intF S
    · rw [Set.indicator_of_mem hb]
      refine hlim.congr' ?_
      have hev : ∀ᶠ k : ℕ in Filter.atTop, ∀ v ∈ S, (sndA F b) v ∈ annV ψ v (Ub k v : Set (Fv F v)) :=
        (Filter.eventually_all_finset S).2 fun v _ => _root_.GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test.eventually_mem_annV_ball F ψ hψ v _
      filter_upwards [hev] with k hk
      have hm : sndA F b ∈ (B' k : Set (Af F)) := ⟨hk, hb⟩
      rw [Set.indicator_of_mem hm, mul_one]
    · rw [Set.indicator_of_notMem hb]
      have h0 : ∀ k, sndA F b ∉ (B' k : Set (Af F)) := fun k hm => hb hm.2
      simp only [fun k => Set.indicator_of_notMem (h0 k) (fun _ => (1 : ℂ)), mul_zero]
      exact tendsto_const_nhds

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef.Test
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchimedeanHaarScalingNorm =====
