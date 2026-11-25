module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAddCharSymplecticLocalLatticeEqOne
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.BoundMulTranslate
public import Development.WeilBound.ThetaLifts.SchwartzMoments.SchwartzDqTendsto
public import Mathlib.Analysis.Normed.Module.HahnBanach
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.MatchingAdjoints
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HermitianOrthogonalExtensionData
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Mathlib.RingTheory.PicardGroup
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.LocallyConstant.Algebra
import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PureEqPureA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzHeisLine, Development.AutomorphicSpectrum.Proofs.AdelicProofs.SchurTranslationsCharacters, Development.WeilBound.ThetaLifts.SchwartzMoments.PolynomialFunctionalEvalContinuous

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzHeisLine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzHeisLine", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.MatchingAdjoints\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HermitianOrthogonalExtensionData\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues
open Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open GlobalTheory.Grid GlobalTheory.Doubling GlobalTheory.ChainFr GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.SquareComm
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.AgreeO.Sys.HeisD

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (evI realAd At tens Rest IsStd SInf)
open GlobalTheory.WeilM (schr)
open scoped SchwartzMap LineDeriv

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]

theorem evI_add (a b : AF F) : evI F (a + b) = evI F a + evI F b :=
  map_add (InfiniteAdeleRing.ringEquiv_mixedSpace F) a.1 b.1

theorem evI_mul (a b : AF F) : evI F (a * b) = evI F a * evI F b :=
  map_mul (InfiniteAdeleRing.ringEquiv_mixedSpace F) a.1 b.1

theorem evI_zero : evI F 0 = 0 := map_zero (InfiniteAdeleRing.ringEquiv_mixedSpace F)

theorem evI_sum {ι : Type} (s : Finset ι) (g : ι → AF F) : evI F (∑ i ∈ s, g i) = ∑ i ∈ s, evI F (g i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using evI_zero
  | insert i s hi ih => rw [Finset.sum_insert hi, Finset.sum_insert hi, evI_add, ih]

theorem evI_realAd (t : ℝ) : evI F (realAd F t) = algebraMap ℝ (mixedEmbedding.mixedSpace F) t :=
  (InfiniteAdeleRing.ringEquiv_mixedSpace F).apply_symm_apply _

def linForm (B : κ → mixedEmbedding.mixedSpace F) : (κ → mixedEmbedding.mixedSpace F) →L[ℝ] ℝ :=
  LinearMap.toContinuousLinearMap
    (∑ i, (Algebra.trace ℝ (mixedEmbedding.mixedSpace F)) ∘ₗ (LinearMap.mulRight ℝ (B i)) ∘ₗ
      (LinearMap.proj i : (κ → mixedEmbedding.mixedSpace F) →ₗ[ℝ] mixedEmbedding.mixedSpace F))

theorem linForm_apply (B y : κ → mixedEmbedding.mixedSpace F) :
    linForm B y = Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (∑ i, y i * B i) := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp [linForm, map_sum]


open scoped Classical in
theorem phase_line (ψ : AddChar (AF F) ℂ) (hψ : IsStd ψ) (a b x : κ → AF F) (hb : At (evI F) b) (t : ℝ) :
    ψ (x ⬝ᵥ (realAd F t • b) + ⅟(2 : AF F) * ((realAd F t • a) ⬝ᵥ (realAd F t • b))) =
      Complex.exp (-(2 * Real.pi * Complex.I) * ((t * linForm (fun i => evI F (b i)) (fun i => evI F (x i)) +
        t ^ 2 * Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (evI F ⅟(2 : AF F) * ∑ i, evI F (a i) * evI F (b i)) : ℝ) : ℂ)) := by
  have hz : At (evI F) (x ⬝ᵥ (realAd F t • b) + ⅟(2 : AF F) * ((realAd F t • a) ⬝ᵥ (realAd F t • b))) := by
    intro s hs
    have hsb : ∀ i, s * b i = 0 := fun i => by simpa using congrFun (hb s hs) i
    have e1 : ∀ i, s * (x i * (realAd F t * b i)) = x i * realAd F t * (s * b i) := fun i => by ring
    have e2 : ∀ i, s * (⅟(2 : AF F) * (realAd F t * a i * (realAd F t * b i))) =
        ⅟(2 : AF F) * (realAd F t * a i * realAd F t) * (s * b i) := fun i => by ring
    simp only [dotProduct, Pi.smul_apply, smul_eq_mul, mul_add, Finset.mul_sum, e1, e2, hsb, mul_zero, Finset.sum_const_zero,
      add_zero]
  rw [hψ.2.2 _ hz]
  congr 3
  have ev : evI F (x ⬝ᵥ (realAd F t • b) + ⅟(2 : AF F) * ((realAd F t • a) ⬝ᵥ (realAd F t • b))) =
      t • (∑ i, evI F (x i) * evI F (b i)) + (t ^ 2) • (evI F ⅟(2 : AF F) * ∑ i, evI F (a i) * evI F (b i)) := by
    simp only [dotProduct, Pi.smul_apply, smul_eq_mul, evI_add, evI_mul, evI_sum, evI_realAd, Algebra.smul_def, map_pow,
      Finset.mul_sum]
    congr 1
    · exact Finset.sum_congr rfl fun i _ => by ring
    · exact Finset.sum_congr rfl fun i _ => by ring
  rw [ev, map_add (f := _), map_smul, map_smul, linForm_apply]
  simp [smul_eq_mul]

end GlobalTheory.CompanionTheory.AgreeO.Sys.HeisD

namespace GlobalTheory.CompanionTheory.AgreeO.Sys

end GlobalTheory.CompanionTheory.AgreeO.Sys

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzHeisLine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.SchurTranslationsCharacters =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AdelicProofs.SchurTranslationsCharacters", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.SchurChar

section Basic

variable {V : Type} [TopologicalSpace V]

theorem sb_add {φ φ' : V → ℂ} (h : SB φ) (h' : SB φ') : SB (φ + φ') :=
  ⟨h.1.add h'.1, h.2.add h'.2⟩

theorem sb_mul {m φ : V → ℂ} (hm : IsLocallyConstant m) (h : SB φ) :
    SB (fun u => m u * φ u) :=
  ⟨hm.mul h.1, h.2.mul_left⟩

theorem sb_smul (c : ℂ) {φ : V → ℂ} (h : SB φ) : SB (c • φ) :=
  sb_mul (m := fun _ => c) (IsLocallyConstant.const c) h

def Comm (T : (V → ℂ) → (V → ℂ)) (m : V → ℂ) : Prop :=
  IsLocallyConstant m ∧ ∀ φ, SB φ → T (fun u => m u * φ u) = fun u => m u * T φ u

theorem comm_one (T : (V → ℂ) → (V → ℂ)) : Comm T (fun _ => 1) :=
  ⟨IsLocallyConstant.const 1, fun φ _ => by simp⟩

theorem comm_mul {T : (V → ℂ) → (V → ℂ)} {m m' : V → ℂ} (h : Comm T m) (h' : Comm T m') :
    Comm T (fun u => m u * m' u) := by
  refine ⟨h.1.mul h'.1, fun φ hφ => ?_⟩
  have e : (fun u => m u * m' u * φ u) = fun u => m u * (m' u * φ u) := by
    funext u; exact mul_assoc _ _ _
  rw [e, h.2 _ (sb_mul h'.1 hφ), h'.2 φ hφ]
  funext u; exact (mul_assoc _ _ _).symm

theorem comm_sub_const {T : (V → ℂ) → (V → ℂ)}
    (hadd : ∀ φ φ', SB φ → SB φ' → T (φ + φ') = T φ + T φ')
    (hsmul : ∀ (c : ℂ) φ, SB φ → T (c • φ) = c • T φ)
    {f : V → ℂ} (h : Comm T f) (c : ℂ) : Comm T (fun u => f u - c) := by
  refine ⟨h.1.sub (IsLocallyConstant.const c), fun φ hφ => ?_⟩
  have e : (fun u => (f u - c) * φ u) = (fun u => f u * φ u) + (-c) • φ := by
    funext u; simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]; ring
  rw [e, hadd _ _ (sb_mul h.1 hφ) (sb_smul _ hφ), hsmul _ _ hφ, h.2 φ hφ]
  funext u; simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]; ring

end Basic

variable {V : Type} [AddCommGroup V] [TopologicalSpace V] [MeasurableSpace V]
  {χ : V → V → ℂ} {μ : Measure V}

theorem char_zero (h : NADual V χ μ) (y : V) : χ 0 y = 1 := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, hnorm, hadd, -⟩ := h
  have h1 := hadd 0 0 y
  rw [add_zero] at h1
  have h2 : χ 0 y ≠ 0 := by
    intro h0; have := hnorm 0 y; rw [h0] at this; simp at this
  exact (mul_eq_left₀ h2).mp h1.symm

theorem char_locConst (h : NADual V χ μ) (y : V) : IsLocallyConstant (fun u => χ u y) := by
  have h0 := char_zero h
  obtain ⟨hTG, -, -, -, -, -, -, hcover, -, hsymm, -, hadd, hperp⟩ := h
  haveI := hTG
  obtain ⟨L, hLc, hLo, hy⟩ := hcover y
  obtain ⟨-, hPo, -, -⟩ := hperp L hLc hLo
  have h0P : (0 : V) ∈ perp χ L := fun x _ => by rw [hsymm]; exact h0 x
  rw [IsLocallyConstant.iff_exists_open]
  intro u
  refine ⟨(fun v => v - u) ⁻¹' perp χ L, hPo.preimage (continuous_sub_right u), by simpa using h0P, ?_⟩
  intro v hv
  have h1 : χ (v - u) y = 1 := by rw [hsymm]; exact hv y hy
  calc χ v y = χ ((v - u) + u) y := by simp
    _ = χ u y := by rw [hadd, h1, one_mul]

theorem apply_eq_zero (h : NADual V χ μ) {T : (V → ℂ) → (V → ℂ)}
    (hadd : ∀ φ φ', SB φ → SB φ' → T (φ + φ') = T φ + T φ')
    (hsmul : ∀ (c : ℂ) φ, SB φ → T (c • φ) = c • T φ)
    (hchar : ∀ y φ, SB φ → T (fun u => χ u y * φ u) = fun u => χ u y * T φ u)
    {φ : V → ℂ} (hφ : SB φ) {x : V} (hx : φ x = 0) : T φ x = 0 := by
  have hcomm : ∀ y, Comm T (fun u => χ u y) := fun y => ⟨char_locConst h y, fun φ hφ => hchar y φ hφ⟩
  obtain ⟨hTG, -, -, -, -, -, hsmall, -, -, hsymm, hnorm, hχadd, hperp⟩ := h
  haveI := hTG
  have hS : IsCompact (tsupport φ) := hφ.2
  have hxS : x ∉ tsupport φ := by
    rw [notMem_tsupport_iff_eventuallyEq]
    filter_upwards [hφ.1.eventually_eq x] with u hu
    simp [hu, hx]
  have hnb : {w : V | x + w ∈ (tsupport φ)ᶜ} ∈ 𝓝 (0 : V) := by
    have hc : ContinuousAt (fun w : V => x + w) 0 := by fun_prop
    apply hc.preimage_mem_nhds
    simpa using (isClosed_tsupport φ).isOpen_compl.mem_nhds hxS
  obtain ⟨L, hLc, hLo, hLU⟩ := hsmall _ hnb
  obtain ⟨-, -, hpp, -⟩ := hperp L hLc hLo
  have key : ∃ m, Comm T m ∧ m x ≠ 0 ∧ ∀ u ∈ tsupport φ, m u = 0 := by
    refine hS.induction_on (p := fun A => ∃ m, Comm T m ∧ m x ≠ 0 ∧ ∀ u ∈ A, m u = 0) ?_ ?_ ?_ ?_
    · exact ⟨fun _ => 1, comm_one T, one_ne_zero, by simp⟩
    · rintro A B hAB ⟨m, hm, hmx, hm0⟩
      exact ⟨m, hm, hmx, fun u hu => hm0 u (hAB hu)⟩
    · rintro A B ⟨m, hm, hmx, hm0⟩ ⟨m', hm', hmx', hm0'⟩
      refine ⟨_, comm_mul hm hm', mul_ne_zero hmx hmx', ?_⟩
      rintro u (hu | hu)
      · simp [hm0 u hu]
      · simp [hm0' u hu]
    · intro s hs
      have hsL : s - x ∉ (L : Set V) := by
        intro hmem
        have := hLU hmem
        simp only [Set.mem_setOf_eq, Set.mem_compl_iff, add_sub_cancel] at this
        exact this hs
      have hz : ∃ z ∈ perp χ L, χ z (s - x) ≠ 1 := by
        by_contra hcon
        push_neg at hcon
        exact hsL (hpp fun z hz => hcon z hz)
      obtain ⟨z, hzL, hzne⟩ := hz
      have hzne' : χ (s - x) z ≠ 1 := by rwa [hsymm]
      have hxz : χ x z ≠ 0 := by
        intro h0; have := hnorm x z; rw [h0] at this; simp at this
      have hopen : {u : V | u - s ∈ (L : Set V)} ∈ 𝓝 s := by
        have hc : ContinuousAt (fun u : V => u - s) s := by fun_prop
        apply hc.preimage_mem_nhds
        simpa using hLo.mem_nhds L.zero_mem
      refine ⟨{u : V | u - s ∈ (L : Set V)}, mem_nhdsWithin_of_mem_nhds hopen,
        fun u => χ u z - χ s z, comm_sub_const hadd hsmul (hcomm z) _, ?_, ?_⟩
      · intro hzero
        apply hzne'
        have e : χ s z = χ (s - x) z * χ x z := by
          rw [← hχadd]; simp
        have e2 : χ x z = χ (s - x) z * χ x z := by
          rw [← e]; exact sub_eq_zero.mp hzero
        exact (mul_eq_right₀ hxz).mp e2.symm
      · intro u hu
        have h1 : χ (u - s) z = 1 := hzL _ hu
        have e : χ u z = χ (u - s) z * χ s z := by
          rw [← hχadd]; simp
        show χ u z - χ s z = 0
        rw [e, h1, one_mul, sub_self]
  obtain ⟨m, hm, hmx, hm0⟩ := key
  have e : (fun u => m u * φ u) = (0 : ℂ) • φ := by
    funext u
    by_cases hu : u ∈ tsupport φ
    · simp [hm0 u hu]
    · simp [image_eq_zero_of_notMem_tsupport hu]
  have h2 := hm.2 φ hφ
  rw [e, hsmul 0 φ hφ] at h2
  have h3 := congrFun h2 x
  simp only [Pi.smul_apply, smul_eq_mul, zero_mul] at h3
  exact (mul_eq_zero.mp h3.symm).resolve_left hmx

theorem schur_translations_characters (V : Type) [AddCommGroup V] [TopologicalSpace V] [MeasurableSpace V]
    (χ : V → V → ℂ) (μ : Measure V) (h : NADual V χ μ) (T : (V → ℂ) → (V → ℂ))
    (hSB : ∀ φ, SB φ → SB (T φ))
    (hadd : ∀ φ φ', SB φ → SB φ' → T (φ + φ') = T φ + T φ')
    (hsmul : ∀ (c : ℂ) φ, SB φ → T (c • φ) = c • T φ)
    (hchar : ∀ y φ, SB φ → T (fun u => χ u y * φ u) = fun u => χ u y * T φ u)
    (htr : ∀ x φ, SB φ → T (fun u => φ (u + x)) = fun u => T φ (u + x)) :
    ∃ c : ℂ, ∀ φ, SB φ → T φ = c • φ := by
  have hloc := fun {φ : V → ℂ} (hφ : SB φ) {x : V} (hx : φ x = 0) =>
    apply_eq_zero h hadd hsmul hchar hφ hx
  obtain ⟨hTG, hT2, -, -, -, -, -, hcover, -⟩ := h
  haveI := hTG
  haveI := hT2
  obtain ⟨L, hLc, hLo, -⟩ := hcover 0
  classical
  set φ₀ : V → ℂ := (L : Set V).indicator (fun _ => 1) with hφ₀
  have hφ₀lc : IsLocallyConstant φ₀ := by
    rw [IsLocallyConstant.iff_exists_open]
    intro u
    by_cases hu : u ∈ (L : Set V)
    · exact ⟨L, hLo, hu, fun v hv => by
        rw [hφ₀, Set.indicator_of_mem hv, Set.indicator_of_mem hu]⟩
    · exact ⟨(L : Set V)ᶜ, hLc.isClosed.isOpen_compl, hu, fun v hv => by
        rw [hφ₀, Set.indicator_of_notMem hv, Set.indicator_of_notMem hu]⟩
  have hφ₀SB : SB φ₀ :=
    ⟨hφ₀lc, HasCompactSupport.intro hLc fun u hu => Set.indicator_of_notMem hu _⟩
  have hφ₀0 : φ₀ 0 = 1 := Set.indicator_of_mem L.zero_mem _
  refine ⟨T φ₀ 0, fun φ hφ => ?_⟩
  funext x
  set φ₁ : V → ℂ := fun u => φ₀ (u + -x) with hφ₁
  have hφ₁SB : SB φ₁ :=
    ⟨hφ₀SB.1.comp_continuous (continuous_add_const _),
      hφ₀SB.2.comp_homeomorph (Homeomorph.addRight (-x))⟩
  have hψ := sb_add hφ (sb_smul (-φ x) hφ₁SB)
  have hz : (φ + (-φ x) • φ₁) x = 0 := by
    simp [hφ₁, hφ₀0]
  have h1 := hloc hψ hz
  rw [hadd _ _ hφ (sb_smul _ hφ₁SB), hsmul _ _ hφ₁SB, htr (-x) φ₀ hφ₀SB] at h1
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, add_neg_cancel] at h1
  simp only [Pi.smul_apply, smul_eq_mul]
  linear_combination h1

end GlobalTheory.CompanionTheory.SW.SchurChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.SchurTranslationsCharacters =====

-- ===== clump member: Development.WeilBound.ThetaLifts.SchwartzMoments.PolynomialFunctionalEvalContinuous =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.SchwartzMoments.PolynomialFunctionalEvalContinuous", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzHeisLine\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAddCharSymplecticLocalLatticeEqOne\npublic import Development.AutomorphicSpectrum.Proofs.AdelicProofs.SchurTranslationsCharacters\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.BoundMulTranslate\npublic import Development.WeilBound.ThetaLifts.SchwartzMoments.SchwartzDqTendsto\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Normed.Module.HahnBanach\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.LocallyConstant.Algebra\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PureEqPureA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Filter Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.CompanionTheory.Ar.RT.Inj

open scoped SchwartzMap LineDeriv

noncomputable section

namespace PositivityTheory.ThKOwn.KPol

open GlobalTheory GlobalTheory.CompanionTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.RT

section Line
variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

def hl (a : V) (L : V →L[ℝ] ℝ) (t : ℝ) (f : V → ℂ) (x : V) : ℂ :=
  Complex.exp (-(2 * Real.pi * Complex.I) * ((t * L x + t ^ 2 * (L a / 2) : ℝ) : ℂ)) * f (x + t • a)

def dop (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) : 𝓢(V, ℂ) :=
  ∂_{a} f + (-(2 * Real.pi * Complex.I)) • SchwartzMap.smulLeftCLM ℂ L f

theorem dop_apply (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) (x : V) :
    dop a L f x = fderiv ℝ f x a + (-(2 * Real.pi * Complex.I) * (L x : ℂ)) * f x := by
  have hT := L.hasTemperateGrowth
  simp only [dop, SchwartzMap.add_apply, SchwartzMap.smul_apply, SchwartzMap.smulLeftCLM_apply_apply hT,
    SchwartzMap.lineDerivOp_apply_eq_fderiv]
  simp only [Complex.real_smul, smul_eq_mul]
  ring

theorem dop_add (a b : V) (L M : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) :
    dop (a + b) (L + M) f = dop a L f + dop b M f := by
  ext x
  simp only [SchwartzMap.add_apply, dop_apply, map_add (f := _)]
  push_cast
  ring

theorem dop_subsingleton [Subsingleton V] (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) : dop a L f = 0 := by
  ext x
  have ha : a = 0 := Subsingleton.elim _ _
  have hx : x = 0 := Subsingleton.elim _ _
  simp [dop_apply, ha, hx]

theorem hasDerivAt_hl (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) (x : V) :
    HasDerivAt (fun t : ℝ => hl a L t f x) (dop a L f x) 0 := by
  have h1 : HasDerivAt (fun t : ℝ => t * L x + t ^ 2 * (L a / 2)) (L x) 0 := by
    have a1 : HasDerivAt (fun t : ℝ => t * L x) (L x) 0 := by simpa using (hasDerivAt_id (0 : ℝ)).mul_const (L x)
    have a2 : HasDerivAt (fun t : ℝ => t ^ 2 * (L a / 2)) 0 0 := by
      simpa using ((hasDerivAt_id (0 : ℝ)).pow 2).mul_const (L a / 2)
    simpa using a1.fun_add a2
  have h2 : HasDerivAt (fun t : ℝ => Complex.exp (-(2 * Real.pi * Complex.I) * ((t * L x + t ^ 2 * (L a / 2) : ℝ) : ℂ)))
      (-(2 * Real.pi * Complex.I) * (L x : ℂ)) 0 := by
    have := ((h1.ofReal_comp).const_mul (-(2 * Real.pi * Complex.I))).cexp
    simpa using this
  have h3 : HasDerivAt (fun t : ℝ => x + t • a) a 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).smul_const a).const_add x
  have h4 : HasDerivAt (fun t : ℝ => f (x + t • a)) (fderiv ℝ f x a) 0 := by
    have hf : HasFDerivAt f (fderiv ℝ f x) (x + (0 : ℝ) • a) := by
      simpa using f.hasFDerivAt x
    exact hf.comp_hasDerivAt (0 : ℝ) h3
  refine (h2.fun_mul h4).congr_deriv ?_
  rw [dop_apply]
  simp
  ring

end Line

variable {F : Type} [Field F] [NumberField F]

section Points
variable {κ : Type} [Fintype κ]

def pt (x : κ → mixedEmbedding.mixedSpace F) (y : κ → FiniteAdeleRing (𝓞 F) F) : κ → AF F :=
  fun i => ((InfiniteAdeleRing.ringEquiv_mixedSpace F).symm (x i), y i)

theorem evI_pt (x : κ → mixedEmbedding.mixedSpace F) (y : κ → FiniteAdeleRing (𝓞 F) F) :
    (fun i => evI F (pt x y i)) = x := by
  funext i
  exact (InfiniteAdeleRing.ringEquiv_mixedSpace F).apply_symm_apply (x i)

theorem pureA_pt (f : (κ → mixedEmbedding.mixedSpace F) → ℂ) (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ)
    (x : κ → mixedEmbedding.mixedSpace F) (y : κ → FiniteAdeleRing (𝓞 F) F) :
    pureA F f g (pt x y) = f x * g y := by
  change f (fun i => evI F (pt x y i)) * g y = f x * g y
  rw [evI_pt]

def rOf (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) : (κ → AF F) → ℂ := fun x => g fun i => (x i).2

theorem tens_rOf (f : (κ → mixedEmbedding.mixedSpace F) → ℂ) (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) :
    tens (evI F) f (rOf g) = pureA F f g := rfl

theorem snd_eq_zero {z : κ → AF F} (hz : At (evI F) z) (i : κ) : (z i).2 = 0 := by
  let u : AF F := (0, 1)
  have h0 : evI F u = 0 := map_zero (InfiniteAdeleRing.ringEquiv_mixedSpace F)
  have h : u * z i = 0 := congrFun (hz u h0) i
  have h' : (1 : Af F) * (z i).2 = 0 := congrArg Prod.snd h
  simpa using h'

theorem rOf_add (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) (x z : κ → AF F) (hz : At (evI F) z) :
    rOf g (x + z) = rOf g x := by
  have : (fun i => (x + z) i |>.2) = fun i => (x i).2 := by
    funext i
    show (x i).2 + (z i).2 = _
    rw [snd_eq_zero hz, add_zero]
  simp only [rOf, this]

theorem slice_sb {Φ : (κ → AF F) → ℂ} (hΦ : Φ ∈ schA F κ) (x : κ → mixedEmbedding.mixedSpace F) :
    (fun y => Φ (pt x y)) ∈ SB (κ → FiniteAdeleRing (𝓞 F) F) := by
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    have : (fun y => pureA F f g (pt x y)) = f x • g := by
      funext y
      simp [pureA_pt]
    rw [this]
    exact Submodule.smul_mem _ _ hg
  | zero => exact Submodule.zero_mem _
  | add Φ Ψ _ _ h1 h2 => exact Submodule.add_mem _ h1 h2
  | smul c Φ _ h => exact Submodule.smul_mem _ c h

theorem slice_schwartz {Φ : (κ → AF F) → ℂ} (hΦ : Φ ∈ schA F κ) (y : κ → FiniteAdeleRing (𝓞 F) F) :
    ∃ h : SInf F κ, ∀ x, Φ (pt x y) = h x := by
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    exact ⟨g y • f, fun x => by simp [pureA_pt, mul_comm]⟩
  | zero => exact ⟨0, fun _ => rfl⟩
  | add Φ Ψ _ _ h1 h2 =>
    obtain ⟨h₁, e₁⟩ := h1
    obtain ⟨h₂, e₂⟩ := h2
    exact ⟨h₁ + h₂, fun x => by simp [e₁, e₂]⟩
  | smul c Φ _ h =>
    obtain ⟨h₁, e₁⟩ := h
    exact ⟨c • h₁, fun x => by simp [e₁]⟩

theorem exists_sb_one : ∃ g ∈ SB (κ → FiniteAdeleRing (𝓞 F) F), g 0 = 1 := by
  obtain ⟨-, -, -, hc, ho, -⟩ := GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F
  have hcl : IsClosed (GlobalTheory.CompanionTheory.SW.Core.Oh F) := hc.isClosed
  let S : Set (κ → FiniteAdeleRing (𝓞 F) F) := Set.pi Set.univ fun _ => GlobalTheory.CompanionTheory.SW.Core.Oh F
  have hS : IsClopen S := ⟨isClosed_set_pi fun _ _ => hcl, isOpen_set_pi Set.finite_univ fun _ _ => ho⟩
  have hSc : IsCompact S := isCompact_univ_pi fun _ => hc
  have h0 : (0 : κ → FiniteAdeleRing (𝓞 F) F) ∈ S := fun i _ v => by
    show (0 : _) ∈ _
    exact zero_mem _
  refine ⟨S.indicator 1, ⟨?_, HasCompactSupport.intro hSc fun x hx => Set.indicator_of_notMem hx _⟩, by simp [h0]⟩
  have h1 : IsLocallyConstant (⇑(LocallyConstant.charFn ℂ hS)) := (LocallyConstant.charFn ℂ hS).isLocallyConstant
  rwa [LocallyConstant.coe_charFn] at h1

end Points

section Coord
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {X : Spc F E n} {W : Spc F E d}

def aOf (M : Model σ X W) (u : Matrix (Fin n) (Fin d) (AE F E)) : Fin n × Fin d → mixedEmbedding.mixedSpace F :=
  fun i => evI F ((M.co.e u).1 i)

def lOf (M : Model σ X W) (u : Matrix (Fin n) (Fin d) (AE F E)) :
    (Fin n × Fin d → mixedEmbedding.mixedSpace F) →L[ℝ] ℝ :=
  GlobalTheory.CompanionTheory.AgreeO.Sys.HeisD.linForm fun i => evI F ((M.co.e u).2 i)

end Coord

section Coord2
open GlobalTheory.CompanionTheory.AgreeO.Sys.HeisD
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {X : Spc F E n} {W : Spc F E d}

theorem aOf_add (M : Model σ X W) (u v : Matrix (Fin n) (Fin d) (AE F E)) :
    aOf M (u + v) = aOf M u + aOf M v := by
  funext i
  simp [aOf, map_add (f := _), evI_add]

theorem lOf_add (M : Model σ X W) (u v : Matrix (Fin n) (Fin d) (AE F E)) :
    lOf M (u + v) = lOf M u + lOf M v := by
  ext y
  simp only [lOf, ContinuousLinearMap.add_apply, linForm_apply, ← map_add (f := _), ← Finset.sum_add_distrib]
  congr 1
  refine Finset.sum_congr rfl fun i _ => ?_
  simp [map_add (f := _), evI_add, mul_add]

theorem evI_half_trace (S : mixedEmbedding.mixedSpace F) :
    Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (evI F ⅟(2 : AF F) * S) =
      Algebra.trace ℝ (mixedEmbedding.mixedSpace F) S / 2 := by
  have h1 : evI F ⅟(2 : AF F) + evI F ⅟(2 : AF F) = 1 := by
    rw [← evI_add, invOf_two_add_invOf_two]
    exact map_one (InfiniteAdeleRing.ringEquiv_mixedSpace F)
  have h2 : S = evI F ⅟(2 : AF F) * S + evI F ⅟(2 : AF F) * S := by
    rw [← add_mul, h1, one_mul]
  have h3 := congrArg (Algebra.trace ℝ (mixedEmbedding.mixedSpace F)) h2
  rw [map_add (f := _)] at h3
  linarith

open scoped Classical in
theorem heisLine_tens (M : Model σ X W) {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (f : SInf F (Fin n × Fin d))
    {r : (Fin n × Fin d → AF F) → ℂ} (hr : ∀ x z, At (evI F) z → r (x + z) = r x) (t : ℝ) :
    M.heisLine ψ u t (tens (evI F) f r) = tens (evI F) (hl (aOf M u) (lOf M u) t f) r := by
  have hab : ∀ s, evI F s = 0 → s • M.co.e u = 0 := fun s hs => by
    rw [← map_smul, hu s hs, map_zero]
  have ha : At (evI F) (M.co.e u).1 := fun s hs => congrArg Prod.fst (hab s hs)
  have hb : At (evI F) (M.co.e u).2 := fun s hs => congrArg Prod.snd (hab s hs)
  have hat : At (evI F) (realAd F t • (M.co.e u).1) := fun s hs => by
    rw [smul_comm, ha s hs, smul_zero]
  funext x
  show schr ψ (M.co.e (realAd F t • u)) _ x = _
  rw [map_smul]
  show schr ψ (realAd F t • (M.co.e u).1, realAd F t • (M.co.e u).2) _ x = _
  have e : (fun i => evI F ((x + realAd F t • (M.co.e u).1) i)) =
      (fun i => evI F (x i)) + t • fun i => evI F ((M.co.e u).1 i) := by
    funext i
    simp [evI_add, evI_mul, evI_realAd, Algebra.smul_def]
  simp only [schr, tens]
  rw [phase_line ψ hψ _ _ x hb t, e, hr x _ hat, evI_half_trace]
  simp only [hl, aOf, lOf, linForm_apply, mul_assoc]
  rfl

end Coord2

section Core
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}

theorem act_one (k : UA σ W.J) (u : Matrix (Fin n) (Fin d) (AE F E)) :
    actAB (cA σ) ((1 : UA σ Y.J), k) u = u * (mat k).transpose := by
  simp [actAB, mat]

theorem at_mul {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (N : Matrix (Fin d) (Fin d) (AE F E)) :
    At (evI F) (u * N) := fun s hs => by rw [← Matrix.smul_mul, hu s hs, Matrix.zero_mul]

open scoped Classical in
theorem actsD_dop (M : Model σ Y W) {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (f : SInf F (Fin n × Fin d)) :
    ActsD (evI F) (M.heisLine ψ u) f (dop (aOf M u) (lOf M u) f) := by
  intro r hr x
  have e : (fun t => M.heisLine ψ u t (tens (evI F) f r) x) =
      fun t => hl (aOf M u) (lOf M u) t f (fun i => evI F (x i)) * r x := by
    funext t
    rw [heisLine_tens M hψ hu f hr.1 t]
    rfl
  rw [e]
  exact (hasDerivAt_hl _ _ f _).mul_const (r x)

open scoped Classical in
theorem actsD_unique (M : Model σ Y W) {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) {f f₁ : SInf F (Fin n × Fin d)}
    (h : ActsD (evI F) (M.heisLine ψ u) f f₁) : f₁ = dop (aOf M u) (lOf M u) f := by
  obtain ⟨g, hg, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  ext x
  have hr : Rest (evI F) f (rOf g) := ⟨fun x z hz => rOf_add g x z hz, Submodule.subset_span ⟨f, g, hg, rfl⟩⟩
  have h1 := h _ hr (pt x 0)
  have h2 := actsD_dop M hψ hu f _ hr (pt x 0)
  have := h1.unique h2
  simpa [tens_rOf, pureA_pt, h0] using this

open scoped Classical in
theorem pureA_inj {κ : Type} [Fintype κ] {f₁ f₂ : SInf F κ} {g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ} (h0 : g 0 = 1)
    (h : pureA F f₁ g = pureA F f₂ g) : f₁ = f₂ := by
  ext x
  have := congrFun h (pt x 0)
  simpa [pureA_pt, h0] using this

variable {M : Model σ Y W} {ψ : AddChar (AF F) ℂ} {om : Rep σ Y W} {k : UA σ W.J}


open scoped Classical in
def Impl (om : Rep σ Y W) (k : UA σ W.J) (A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)) : Prop :=
  ∀ f : SInf F (Fin n × Fin d), ∀ g ∈ SB (Fin n × Fin d → FiniteAdeleRing (𝓞 F) F), om (1, k) (pureA F f g) = pureA F (A f) g

open scoped Classical in
theorem exists_impl (hl : ∀ f : SInf F (Fin n × Fin d), ∃ f₁ : SInf F (Fin n × Fin d),
      ∀ g ∈ SB (Fin n × Fin d → FiniteAdeleRing (𝓞 F) F), om (1, k) (pureA F f g) = pureA F f₁ g) :
    ∃ A, Impl om k A := by
  choose A₀ hA₀ using hl
  obtain ⟨g, hg, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  refine ⟨{ toFun := A₀, map_add' := fun f₁ f₂ => ?_, map_smul' := fun c f => ?_ }, hA₀⟩
  · refine pureA_inj h0 ?_
    have e : ∀ (p q : SInf F (Fin n × Fin d)), pureA F (⇑(p + q)) g = pureA F p g + pureA F q g := fun p q => by
      funext x
      simp [pureA, add_mul]
    rw [← hA₀ _ g hg, e, e, map_add (f := _), hA₀ _ g hg, hA₀ _ g hg]
  · refine pureA_inj h0 ?_
    have e : ∀ (p : SInf F (Fin n × Fin d)), pureA F (⇑(c • p)) g = c • pureA F p g := fun p => by
      funext x
      simp [pureA, mul_assoc]
    simp only [RingHom.id_apply]
    rw [← hA₀ _ g hg, e, e, map_smul, hA₀ _ g hg]

open scoped Classical in
theorem polynomial_functional_eval_continuous (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om)
    {A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)} (hA : Impl om k A) (x : Fin n × Fin d → mixedEmbedding.mixedSpace F) :
    ∃ T : SInf F (Fin n × Fin d) →L[ℂ] ℂ, ∀ f, A f x = T f := by
  obtain ⟨g, hg, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  let l : ((Fin n × Fin d → AF F) → ℂ) →ₗ[ℂ] ℂ := LinearMap.proj (pt x 0)
  have hl : l ∈ (adeleClass F).adm (Fin n × Fin d) := fun g' _ =>
    ⟨g' 0 • (BoundedContinuousFunction.evalCLM ℂ x ∘L SchwartzMap.toBoundedContinuousFunctionCLM ℂ _ _), fun f => by
      simp [l, pureA_pt, mul_comm]⟩
  obtain ⟨T, hT⟩ := hs.adm (1, k) l hl g hg
  refine ⟨T, fun f => ?_⟩
  rw [← hT f]
  show _ = om (1, k) (pureA F f g) (pt x 0)
  rw [hA f g hg, pureA_pt, h0, mul_one]

end Core

section LineProof
variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

def chirp (c : ℝ) (q : V → ℝ) (x : V) : ℂ := Complex.exp (Complex.I * ((-(2 * Real.pi) * c * q x : ℝ) : ℂ))

theorem chirp_tg (c : ℝ) {q : V → ℝ} (hq : q.HasTemperateGrowth) : (chirp c q).HasTemperateGrowth := by
  have h1 : (fun x => -(2 * Real.pi) * c * q x).HasTemperateGrowth :=
    (Function.HasTemperateGrowth.const _).mul hq
  exact GlobalTheory.CompanionTheory.OM.SchDiff.temperate_exp.comp h1

theorem chirp_mul (q : V → ℝ) (x y : V) :
    chirp 1 q y * chirp (-1) q x =
      Complex.exp (-(2 * Real.pi * Complex.I) * ((q y - q x : ℝ) : ℂ)) := by
  rw [chirp, chirp, ← Complex.exp_add]
  congr 1
  push_cast
  ring

theorem chirp_one (q : V → ℝ) (x : V) : chirp (-1) q x * chirp 1 q x = 1 := by
  rw [mul_comm, chirp_mul]
  simp

theorem hl_schwartz (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) (t : ℝ) : ∃ G : 𝓢(V, ℂ), ∀ x, G x = hl a L t f x := by
  have hq : (fun x => t * L x + t ^ 2 * (L a / 2)).HasTemperateGrowth :=
    ((Function.HasTemperateGrowth.const t).mul L.hasTemperateGrowth).add (Function.HasTemperateGrowth.const _)
  refine ⟨SchwartzMap.smulLeftCLM ℂ (chirp 1 fun x => t * L x + t ^ 2 * (L a / 2))
    (SchwartzMap.compSubConstCLM ℂ (-(t • a)) f), fun x => ?_⟩
  rw [SchwartzMap.smulLeftCLM_apply_apply (chirp_tg 1 hq), SchwartzMap.compSubConstCLM_apply, sub_neg_eq_add, hl, chirp]
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

theorem hl_line_deriv (a : V) (L : V →L[ℝ] ℝ) (f : 𝓢(V, ℂ)) :
    ∃ G : ℝ → 𝓢(V, ℂ), (∀ t x, G t x = hl a L t f x) ∧
      (a ≠ 0 → ∀ T : 𝓢(V, ℂ) →L[ℂ] ℂ, HasDerivAt (fun t => T (G t)) (T (dop a L f)) 0) := by
  choose G hG using hl_schwartz a L f
  refine ⟨G, hG, fun ha T => ?_⟩
  have hna : ‖a‖ ≠ 0 := norm_ne_zero_iff.2 ha
  obtain ⟨g₀, -, hg₀⟩ := exists_dual_vector ℝ a hna
  set lam : V →L[ℝ] ℝ := ‖a‖⁻¹ • g₀ with hlam
  have hla : lam a = 1 := by
    simp only [hlam, ContinuousLinearMap.smul_apply, hg₀, smul_eq_mul]
    simpa using inv_mul_cancel₀ hna
  set q : V → ℝ := fun x => lam x * L x + (-(L a / 2)) * (lam x * lam x) with hq
  have hqt : q.HasTemperateGrowth :=
    (lam.hasTemperateGrowth.mul L.hasTemperateGrowth).add
      ((Function.HasTemperateGrowth.const _).mul (lam.hasTemperateGrowth.mul lam.hasTemperateGrowth))
  have hdiff : ∀ (x : V) (t : ℝ), q (x + t • a) - q x = t * L x + t ^ 2 * (L a / 2) := fun x t => by
    simp only [hq, map_add (f := _), map_smul, hla, smul_eq_mul]
    ring
  have t1 := chirp_tg 1 hqt
  have t2 := chirp_tg (-1) hqt
  set P := SchwartzMap.smulLeftCLM ℂ (chirp 1 q) with hP
  set Pi := SchwartzMap.smulLeftCLM ℂ (chirp (-1) q) with hPi
  set g : 𝓢(V, ℂ) := P f with hg
  have hGe : ∀ t, G t = Pi (SchwartzMap.compSubConstCLM ℂ (-(t • a)) g) := fun t => by
    ext x
    rw [hG, hPi, SchwartzMap.smulLeftCLM_apply_apply t2, SchwartzMap.compSubConstCLM_apply, sub_neg_eq_add, hg, hP,
      SchwartzMap.smulLeftCLM_apply_apply t1, hl, ← hdiff]
    simp only [smul_eq_mul]
    rw [← mul_assoc, mul_comm (chirp (-1) q x), chirp_mul]
  have hf : Pi g = f := by
    ext x
    rw [hPi, SchwartzMap.smulLeftCLM_apply_apply t2, hg, hP, SchwartzMap.smulLeftCLM_apply_apply t1]
    simp only [smul_eq_mul]
    rw [← mul_assoc, chirp_one, one_mul]
  have hG0 : G 0 = f := by
    ext x
    rw [hG]
    simp [hl]
  have hder : ∀ T₁ : 𝓢(V, ℂ) →L[ℂ] ℂ, HasDerivAt (fun t => T₁ (G t)) (T₁ (Pi (∂_{a} g))) 0 := fun T₁ => by
    rw [hasDerivAt_iff_tendsto_slope_zero]
    have h := PositivityTheory.ThKOwn.schwartz_dq_tendsto g a
    have h2 := (((T₁.comp Pi).restrictScalars ℝ).continuous.tendsto _).comp h
    refine h2.congr fun t => ?_
    simp only [Function.comp, map_smul, map_sub, ContinuousLinearMap.coe_restrictScalars', ContinuousLinearMap.comp_apply,
      zero_add, hG0, hGe, hf]
  have hid : Pi (∂_{a} g) = dop a L f := by
    ext x
    have h1 := hder (BoundedContinuousFunction.evalCLM ℂ x ∘L SchwartzMap.toBoundedContinuousFunctionCLM ℂ V ℂ)
    have e : (fun t => (BoundedContinuousFunction.evalCLM ℂ x ∘L SchwartzMap.toBoundedContinuousFunctionCLM ℂ V ℂ) (G t)) =
        fun t => hl a L t f x := by
      funext t
      exact hG t x
    rw [e] at h1
    exact h1.unique (hasDerivAt_hl a L f x)
  rw [← hid]
  exact hder T
end LineProof

section Inter
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}
variable {M : Model σ Y W} {ψ : AddChar (AF F) ℂ} {om : Rep σ Y W} {k : UA σ W.J}

open scoped Classical in
theorem line_hl (hψ : IsStd ψ) (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om)
    {A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)} (hA : Impl om k A)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (f G : SInf F (Fin n × Fin d)) (t : ℝ)
    (hG : ∀ x, G x = hl (aOf M u) (lOf M u) t f x) (x : Fin n × Fin d → mixedEmbedding.mixedSpace F) :
    A G x = hl (aOf M (u * (mat k).transpose)) (lOf M (u * (mat k).transpose)) t (A f) x := by
  obtain ⟨g, hg, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  have hr : ∀ x z, At (evI F) z → rOf g (x + z) = rOf g x := fun x z hz => rOf_add g x z hz
  have hΦ : pureA F f g ∈ schA F (Fin n × Fin d) := Submodule.subset_span ⟨f, g, hg, rfl⟩
  have e1 : M.heisLine ψ u t (pureA F f g) = pureA F G g := by
    rw [← tens_rOf, heisLine_tens M hψ hu f hr t, tens_rOf]
    congr 1
    funext x
    exact (hG x).symm
  have e2 : om (1, k) (M.heisLine ψ u t (pureA F f g)) =
      M.heisLine ψ (u * (mat k).transpose) t (om (1, k) (pureA F f g)) := by
    have := hs.impl (1, k) (realAd F t • u) _ hΦ
    rw [act_one, Matrix.smul_mul] at this
    exact this
  rw [e1, hA G g hg, hA f g hg, ← tens_rOf, ← tens_rOf, heisLine_tens M hψ (at_mul hu _) (A f) hr t] at e2
  have := congrFun e2 (pt x 0)
  simpa [tens_rOf, pureA_pt, h0] using this

open scoped Classical in
theorem inter_of_ne (hψ : IsStd ψ) (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om)
    {A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)} (hA : Impl om k A)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (ha : aOf M u ≠ 0) (f : SInf F (Fin n × Fin d)) :
    A (dop (aOf M u) (lOf M u) f) = dop (aOf M (u * (mat k).transpose)) (lOf M (u * (mat k).transpose)) (A f) := by
  obtain ⟨G, hG, hD⟩ := hl_line_deriv (aOf M u) (lOf M u) f
  ext x
  obtain ⟨T, hT⟩ := polynomial_functional_eval_continuous hs hA x
  have h1 := hD ha T
  have e : (fun t => T (G t)) = fun t => hl (aOf M (u * (mat k).transpose)) (lOf M (u * (mat k).transpose)) t (A f) x := by
    funext t
    rw [← hT]
    exact line_hl hψ hs hA hu f (G t) t (hG t) x
  rw [e] at h1
  rw [hT]
  exact h1.unique (hasDerivAt_hl _ _ (A f) x)

open scoped Classical in
theorem exists_at (M : Model σ Y W) (ξ : Fin n × Fin d → mixedEmbedding.mixedSpace F) :
    ∃ v : Matrix (Fin n) (Fin d) (AE F E), At (evI F) v ∧ aOf M v = ξ := by
  refine ⟨M.co.e.symm (pt ξ 0, 0), fun s hs => ?_, ?_⟩
  · have h1 : s.1 = 0 := (InfiniteAdeleRing.ringEquiv_mixedSpace F).map_eq_zero_iff.1 hs
    rw [← map_smul, LinearEquiv.map_eq_zero_iff]
    refine Prod.ext ?_ (by simp)
    funext i
    refine Prod.ext ?_ ?_
    · show s.1 * _ = 0
      rw [h1, zero_mul]
    · show s.2 * 0 = 0
      rw [mul_zero]
  · have : M.co.e (M.co.e.symm (pt ξ 0, 0)) = (pt ξ 0, 0) := LinearEquiv.apply_symm_apply _ _
    show (fun i => evI F ((M.co.e (M.co.e.symm (pt ξ 0, 0))).1 i)) = ξ
    rw [this]
    exact evI_pt ξ 0

open scoped Classical in
theorem inter (hψ : IsStd ψ) (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om)
    {A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)} (hA : Impl om k A)
    {u : Matrix (Fin n) (Fin d) (AE F E)} (hu : At (evI F) u) (f : SInf F (Fin n × Fin d)) :
    A (dop (aOf M u) (lOf M u) f) = dop (aOf M (u * (mat k).transpose)) (lOf M (u * (mat k).transpose)) (A f) := by
  by_cases ha : aOf M u = 0
  · rcases subsingleton_or_nontrivial (Fin n × Fin d → mixedEmbedding.mixedSpace F) with hV | hV
    · rw [dop_subsingleton, dop_subsingleton, map_zero]
    · obtain ⟨ξ, hξ⟩ := exists_ne (0 : Fin n × Fin d → mixedEmbedding.mixedSpace F)
      obtain ⟨v, hv, rfl⟩ := exists_at M ξ
      have huv : At (evI F) (u + v) := fun s hs => by rw [smul_add, hu s hs, hv s hs, add_zero]
      have h1 := inter_of_ne hψ hs hA huv (by rw [aOf_add, ha, zero_add]; exact hξ) f
      have h2 := inter_of_ne hψ hs hA hv hξ f
      rw [aOf_add, lOf_add, dop_add, map_add (f := _), Matrix.add_mul, aOf_add, lOf_add, dop_add, h2] at h1
      exact add_right_cancel h1
  · exact inter_of_ne hψ hs hA hu ha f

open scoped Classical in
theorem acts_unique {A : SInf F (Fin n × Fin d) →ₗ[ℂ] SInf F (Fin n × Fin d)} (hA : Impl om k A) {f f₁ : SInf F (Fin n × Fin d)}
    (h : Acts (evI F) (om (1, k)) f f₁) : f₁ = A f := by
  obtain ⟨g, hg, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  have hr : Rest (evI F) f (rOf g) := ⟨fun x z hz => rOf_add g x z hz, Submodule.subset_span ⟨f, g, hg, rfl⟩⟩
  have h1 := h _ hr
  rw [tens_rOf, tens_rOf, hA f g hg] at h1
  exact (pureA_inj h0 h1).symm

end Inter

section Keep
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}
variable {M : Model σ Y W} {ψ : AddChar (AF F) ℂ} {om : Rep σ Y W} {k : UA σ W.J}

theorem mat_inv_mul (k : UA σ W.J) : mat k⁻¹ * mat k = 1 := by
  show ((k⁻¹ : UA σ W.J).1.1) * k.1.1 = 1
  simp

theorem mat_mul_inv (k : UA σ W.J) : mat k * mat k⁻¹ = 1 := by
  show k.1.1 * ((k⁻¹ : UA σ W.J).1.1) = 1
  simp

end Keep

section Loc
open GlobalTheory.CompanionTheory.SW.Core

variable {κ : Type} [Fintype κ]

def fstAd : AF F →ₐ[F] Ainf F := AlgHom.fst F (Ainf F) (Af F)

def iot (p : κ → Af F) : κ → AF F := fun i => pairA F 0 (p i)

theorem dot_iot (x : κ → AF F) (q : κ → Af F) :
    x ⬝ᵥ iot q = pairA F 0 ((fun i => sndA F (x i)) ⬝ᵥ q) := by
  have h1 : fstAd (x ⬝ᵥ iot q) = 0 := by

    simp only [dotProduct, map_sum]
    refine Finset.sum_eq_zero fun i _ => ?_
    show (x i).1 * 0 = 0
    rw [mul_zero]
  have h2 : sndA F (x ⬝ᵥ iot q) = (fun i => sndA F (x i)) ⬝ᵥ q := by

    simp only [dotProduct, map_sum]
    rfl
  exact Prod.ext h1 h2

theorem dot_zero' (x : κ → AF F) : x ⬝ᵥ iot (0 : κ → Af F) = 0 := by
  rw [dot_iot, dotProduct_zero]
  rfl

theorem iot_neg (p : κ → Af F) (x : κ → AF F) : x ⬝ᵥ iot (-p) = pairA F 0 (-((fun i => sndA F (x i)) ⬝ᵥ p)) := by
  rw [dot_iot, dotProduct_neg]

theorem pt_add_iot (x : κ → mixedEmbedding.mixedSpace F) (y p : κ → Af F) :
    pt x y + iot p = pt x (y + p) := by
  funext i
  refine Prod.ext ?_ rfl
  show _ + (0 : Ainf F) = _
  rw [add_zero]
  rfl

theorem pt_eta (X : κ → AF F) : X = pt (fun i => evI F (X i)) fun i => (X i).2 := by
  funext i
  refine Prod.ext ?_ rfl
  show (X i).1 = (InfiniteAdeleRing.ringEquiv_mixedSpace F).symm (InfiniteAdeleRing.ringEquiv_mixedSpace F (X i).1)
  rw [RingEquiv.symm_apply_apply]

def psF (ψ : AddChar (AF F) ℂ) : AddChar (Af F) ℂ where
  toFun x := ψ (pairA F 0 (-x))
  map_zero_eq_one' := by
    rw [neg_zero]
    exact AddChar.map_zero_eq_one ψ
  map_add_eq_mul' a b := by
    rw [← AddChar.map_add_eq_mul]
    congr 1
    exact Prod.ext (add_zero (0 : Ainf F)).symm (neg_add a b)

theorem psF_apply (ψ : AddChar (AF F) ℂ) (x : Af F) : psF ψ x = ψ (pairA F 0 (-x)) := rfl

theorem psF_std {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ) : IsStdChar F (psF ψ) := by
  refine ⟨hψ.1.comp (continuous_const.prodMk continuous_neg), fun b => ?_⟩
  have h1 := hψ.2.1 b
  have e : pairA F 0 (-algebraMap F (Af F) b) =
      pairA F (algebraMap F (Ainf F) b) 0 + -algebraMap F (AF F) b := by
    refine Prod.ext ?_ ?_
    · show (0 : Ainf F) = algebraMap F (Ainf F) b + -algebraMap F (Ainf F) b
      rw [add_neg_cancel]
    · show -algebraMap F (Af F) b = 0 + -algebraMap F (Af F) b
      rw [zero_add]
  have hz : At (evI F) (pairA F (algebraMap F (Ainf F) b) 0) := fun u hu => by
    have h1 : u.1 = 0 := (InfiniteAdeleRing.ringEquiv_mixedSpace F).injective (by rw [map_zero]; exact hu)
    show (u.1 * algebraMap F (Ainf F) b, u.2 * 0) = ((0 : Ainf F), (0 : Af F))
    rw [h1, zero_mul, mul_zero]
  rw [psF_apply, e, AddChar.map_add_eq_mul, AddChar.map_neg_eq_inv, h1, inv_one, mul_one, hψ.2.2 _ hz]
  have : evI F (pairA F (algebraMap F (Ainf F) b) 0) = mixedEmbedding F b := by
    show InfiniteAdeleRing.ringEquiv_mixedSpace F (algebraMap F (Ainf F) b) = _
    ext <;> simp
  rw [this, GlobalTheory.LatVacArith.trace_mixedEmbedding]
  simp

theorem exists_nadual {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ) (κ : Type) [Fintype κ] [DecidableEq κ] :
    ∃ (_ : MeasurableSpace (κ → Af F)) (μ : Measure (κ → Af F)),
      NADual (κ → Af F) (fun x y => psF ψ (x ⬝ᵥ y)) μ := by
  letI : MeasurableSpace (A F) := borel _
  haveI : BorelSpace (A F) := ⟨rfl⟩
  obtain ⟨hlc, hsc, ht2, hc, ho, -⟩ := GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F
  have hne : (interior (Oh F)).Nonempty := by
    rw [ho.interior_eq]
    exact ⟨0, fun v => zero_mem _⟩
  let K : TopologicalSpace.PositiveCompacts (A F) := ⟨⟨Oh F, hc⟩, hne⟩
  have hlf : (Measure.addHaarMeasure K) (Oh F) = 1 := Measure.addHaarMeasure_self
  have hQ := SelfDual.naQuad F (Measure.addHaarMeasure K) inferInstance hlf (psF ψ) (psF_std hψ) κ
    (1 : Matrix κ κ F) (Matrix.isSymm_one) (by simp)
  have h5 := hQ.2.2.2.2.2
  have e : chiB (psF ψ) (Bf (1 : Matrix κ κ F)) = fun x y => psF ψ (x ⬝ᵥ y) := by
    funext x y
    simp [chiB, Bf, Matrix.map_one _ (map_zero _) (map_one _)]
  rw [e] at h5
  exact ⟨_, _, h5⟩

end Loc

section Loc2
variable {E : Type} [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}
variable {M : Model σ Y W} {ψ : AddChar (AF F) ℂ} {om : Rep σ Y W} {k : UA σ W.J}

theorem act_fix (M : Model σ Y W) (hk : k ∈ UAt σ W (evI F)) (p q : Fin n × Fin d → Af F) :
    M.co.e.symm (iot p, iot q) * (mat k).transpose = M.co.e.symm (iot p, iot q) := by
  set w := M.co.e.symm (iot p, iot q) with hwd
  have h0 : evI F (pairA F 0 1) = 0 := map_zero (InfiniteAdeleRing.ringEquiv_mixedSpace F)
  have hi : ∀ p : Fin n × Fin d → Af F, pairA F 0 1 • iot p = iot p := fun p => by
    funext i
    exact Prod.ext (mul_zero (0 : Ainf F)) (one_mul (p i))
  have hw : pairA F 0 1 • w = w := by
    apply M.co.e.injective
    rw [map_smul, hwd, LinearEquiv.apply_symm_apply]
    exact Prod.ext (hi p) (hi q)
  have hK : pairA F 0 1 • (mat k - 1) = 0 := hk _ h0
  have hK' : pairA F 0 1 • mat k = pairA F 0 1 • (1 : Matrix (Fin d) (Fin d) (AE F E)) := by
    rw [smul_sub] at hK
    exact sub_eq_zero.1 hK
  calc w * (mat k).transpose = (pairA F 0 1 • w) * (mat k).transpose := by rw [hw]
    _ = w * (pairA F 0 1 • (mat k).transpose) := by rw [Matrix.smul_mul, Matrix.mul_smul]
    _ = w * (pairA F 0 1 • mat k).transpose := by rw [Matrix.transpose_smul]
    _ = w := by
      rw [hK', Matrix.transpose_smul, Matrix.transpose_one, Matrix.mul_smul, Matrix.mul_one, hw]

theorem comm_rho (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om) (hk : k ∈ UAt σ W (evI F))
    (p q : Fin n × Fin d → Af F) {Φ : (Fin n × Fin d → AF F) → ℂ} (hΦ : Φ ∈ schA F (Fin n × Fin d)) :
    om (1, k) (M.co.rho ψ (M.co.e.symm (iot p, iot q)) Φ) = M.co.rho ψ (M.co.e.symm (iot p, iot q)) (om (1, k) Φ) := by
  have := hs.impl (1, k) (M.co.e.symm (iot p, iot q)) Φ hΦ
  rw [act_one, act_fix M hk] at this
  exact this

theorem rho_iot (M : Model σ Y W) (ψ : AddChar (AF F) ℂ) (p q : Fin n × Fin d → Af F) (Φ : (Fin n × Fin d → AF F) → ℂ)
    (x : Fin n × Fin d → AF F) :
    M.co.rho ψ (M.co.e.symm (iot p, iot q)) Φ x =
      ψ (x ⬝ᵥ iot q + ⅟(2 : AF F) * (iot p ⬝ᵥ iot q)) * Φ (x + iot p) := by
  show schr ψ (M.co.e (M.co.e.symm (iot p, iot q))) Φ x = _
  rw [LinearEquiv.apply_symm_apply]
  rfl

theorem iot_zero' : iot (0 : Fin n × Fin d → Af F) = 0 := rfl

theorem rho_char (M : Model σ Y W) (ψ : AddChar (AF F) ℂ) (y : Fin n × Fin d → Af F) (Φ : (Fin n × Fin d → AF F) → ℂ)
    (X : Fin n × Fin d → AF F) :
    M.co.rho ψ (M.co.e.symm (iot 0, iot (-y))) Φ X = psF ψ ((fun i => (X i).2) ⬝ᵥ y) * Φ X := by
  rw [rho_iot, iot_zero', add_zero, zero_dotProduct, mul_zero, add_zero, iot_neg]
  rfl

theorem rho_tr (M : Model σ Y W) (ψ : AddChar (AF F) ℂ) (p : Fin n × Fin d → Af F) (Φ : (Fin n × Fin d → AF F) → ℂ)
    (X : Fin n × Fin d → AF F) :
    M.co.rho ψ (M.co.e.symm (iot p, iot 0)) Φ X = Φ (X + iot p) := by
  rw [rho_iot, dot_zero', dot_zero', mul_zero, add_zero, AddChar.map_zero_eq_one, one_mul]

theorem evI_iot (X : Fin n × Fin d → AF F) (p : Fin n × Fin d → Af F) :
    (fun i => evI F ((X + iot p) i)) = fun i => evI F (X i) := by
  funext i
  have : evI F (iot p i) = 0 := map_zero (InfiniteAdeleRing.ringEquiv_mixedSpace F)
  rw [Pi.add_apply, GlobalTheory.CompanionTheory.AgreeO.Sys.HeisD.evI_add, this, add_zero]

open scoped Classical in
theorem exists_arch_operator (hψ : IsStd ψ)
    (hs : IsSplitting (adeleClass F) ψ M.co (actAB (cA σ)) om) (hk : k ∈ UAt σ W (evI F)) (f : SInf F (Fin n × Fin d)) :
    ∃ f₁ : SInf F (Fin n × Fin d), ∀ g ∈ SB (Fin n × Fin d → FiniteAdeleRing (𝓞 F) F), om (1, k) (pureA F f g) = pureA F f₁ g := by
  obtain ⟨mK, μ, hD⟩ := exists_nadual hψ (Fin n × Fin d)
  have hpure : ∀ g, GlobalTheory.CompanionTheory.SW.Core.SB g → pureA F f g ∈ schA F (Fin n × Fin d) := fun g hg =>
    Submodule.subset_span ⟨f, g, hg, rfl⟩
  have hC : ∀ g, GlobalTheory.CompanionTheory.SW.Core.SB g → om (1, k) (pureA F f g) ∈ schA F (Fin n × Fin d) := fun g hg =>
    hs.pres (1, k) _ (hpure g hg)
  have hsch : ∀ ξ : Fin n × Fin d → mixedEmbedding.mixedSpace F, ∃ c : ℂ, ∀ g, GlobalTheory.CompanionTheory.SW.Core.SB g →
      (fun y => om (1, k) (pureA F f g) (pt ξ y)) = c • g := fun ξ => by
    refine GlobalTheory.CompanionTheory.SW.SchurChar.schur_translations_characters (Fin n × Fin d → Af F) _ μ hD
      (fun g y => om (1, k) (pureA F f g) (pt ξ y)) (fun φ hφ => slice_sb (hC φ hφ) ξ) ?_ ?_ ?_ ?_
    · intro φ φ' _ _
      have e : pureA F f (φ + φ') = pureA F f φ + pureA F f φ' := by
        funext x
        simp [pureA, mul_add]
      funext y
      simp only [e, map_add (f := _), Pi.add_apply]
    · intro c φ _
      have e : pureA F f (c • φ) = c • pureA F f φ := by
        funext x
        simp only [pureA, Pi.smul_apply, smul_eq_mul]
        ring
      funext y
      simp only [e, map_smul, Pi.smul_apply]
    · intro y φ hφ
      have e : pureA F f (fun u => psF ψ (u ⬝ᵥ y) * φ u) = M.co.rho ψ (M.co.e.symm (iot 0, iot (-y))) (pureA F f φ) := by
        funext X
        rw [rho_char]
        simp only [pureA]
        ring
      funext u
      rw [e, comm_rho hs hk _ _ (hpure φ hφ), rho_char]
      rfl
    · intro x φ hφ
      have e : pureA F f (fun u => φ (u + x)) = M.co.rho ψ (M.co.e.symm (iot x, iot 0)) (pureA F f φ) := by
        funext X
        rw [rho_tr]
        show _ = f (fun i => evI F ((X + iot x) i)) * _
        rw [evI_iot]
        rfl
      funext u
      rw [e, comm_rho hs hk _ _ (hpure φ hφ), rho_tr, pt_add_iot]
  choose c hc using hsch
  obtain ⟨g₀, hg₀, h0⟩ := exists_sb_one (F := F) (κ := Fin n × Fin d)
  obtain ⟨h, hh⟩ := slice_schwartz (hC g₀ hg₀) 0
  refine ⟨h, fun g hg => ?_⟩
  have e1 : ∀ ξ, c ξ = h ξ := fun ξ => by
    have h1 := congrFun (hc ξ g₀ hg₀) 0
    simp only [Pi.smul_apply, smul_eq_mul, h0, mul_one] at h1
    rw [← h1, hh]
  funext X
  have h2 := congrFun (hc (fun i => evI F (X i)) g hg) fun i => (X i).2
  simp only [Pi.smul_apply, smul_eq_mul, e1, ← pt_eta] at h2
  exact h2

end Loc2

end PositivityTheory.ThKOwn.KPol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.SchwartzMoments.PolynomialFunctionalEvalContinuous =====
