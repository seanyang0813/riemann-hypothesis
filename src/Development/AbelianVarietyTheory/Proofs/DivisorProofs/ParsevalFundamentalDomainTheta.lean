module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemRatVecIff
public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Formalism.LocalRingCardinality.DataHost
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.WeilBound.ThetaLifts.LeviDeterminants.GrowSplit

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField MeasureTheory
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix Formalism.IndefR.Datum
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

noncomputable section

namespace GlobalTheory.ThetaUnfold

open GlobalTheory.WeilM
open scoped Classical

theorem continuous_infToMixed (F : Type) [Field F] [NumberField F] :
    Continuous (InfiniteAdeleRing.ringEquiv_mixedSpace F) := by
  first
  | exact _root_.PositivityTheory.ThKF0.Split.continuous_toMixed
  | (apply _root_.PositivityTheory.ThKF0.Split.continuous_toMixed <;> assumption)

theorem adele_nontrivial (F : Type) [Field F] [NumberField F] : Nontrivial (AdeleRing (𝓞 F) F) :=
  inferInstanceAs (Nontrivial (InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F))

theorem schA_continuous (F : Type) [Field F] [NumberField F] {κ : Type} [Fintype κ]
    {Φ : (κ → AdeleRing (𝓞 F) F) → ℂ} (hΦ : Φ ∈ schA F κ) : Continuous Φ := by
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    refine (f.continuous.comp ?_).mul (hg.1.continuous.comp ?_)
    · exact continuous_pi fun i =>
        (continuous_infToMixed F).comp (continuous_fst.comp (continuous_apply i))
    · exact continuous_pi fun i => continuous_snd.comp (continuous_apply i)
  | zero => exact continuous_const
  | add Φ Ψ _ _ h1 h2 => exact h1.add h2
  | smul c Φ _ h => exact continuous_const.mul h

def ratEquiv (F : Type) [Field F] [NumberField F] (κ : Type) : (κ → F) ≃ GlobalTheory.ThetaParseval.ratVec F κ :=
  Equiv.ofBijective
    (fun ξ => ⟨fun i => algebraMap F (AdeleRing (𝓞 F) F) (ξ i), (GlobalTheory.ThetaParseval.mem_ratVec_iff _).2 ⟨ξ, rfl⟩⟩)
    ⟨fun a b h => funext fun i => (haveI := adele_nontrivial F; (algebraMap F (AdeleRing (𝓞 F) F)).injective) (congrFun (congrArg Subtype.val h) i),
     fun y => by
      obtain ⟨ξ, hξ⟩ := (GlobalTheory.ThetaParseval.mem_ratVec_iff y.1).1 y.2
      exact ⟨ξ, Subtype.ext hξ.symm⟩⟩

theorem unfold : ∀ (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (μ : @Measure (κ → AF F) (borel _)), @Measure.IsAddHaarMeasure _ _ _ (borel _) μ →
    ∀ (𝓕₁ : Set (κ → AF F)), @IsAddFundamentalDomain (GlobalTheory.ThetaParseval.ratVec F κ) _ _ _ (borel _) 𝓕₁ μ → ∀ Φ ∈ GlobalTheory.WeilM.schA F κ,
      ∫⁻ x in 𝓕₁, ∑' ξ : κ → F, ‖Φ ((fun i => algebraMap F (AF F) (ξ i)) + x)‖ₑ ^ 2 ∂μ = ∫⁻ x, ‖Φ x‖ₑ ^ 2 ∂μ := by
  intro F _ _ κ _ μ hμ 𝓕₁ h𝓕 Φ hΦ
  letI : MeasurableSpace (κ → AF F) := borel _
  haveI : BorelSpace (κ → AF F) := ⟨rfl⟩
  have hc := schA_continuous F hΦ
  haveI : Countable F := by
    have b := Module.finBasis ℚ F
    exact Countable.of_equiv _ b.equivFun.toEquiv.symm
  haveI : Countable (GlobalTheory.ThetaParseval.ratVec F κ) := Countable.of_equiv _ (ratEquiv F κ)
  have hm : ∀ c : κ → AF F, Measurable fun x : κ → AF F => ‖Φ (c + x)‖ₑ ^ 2 := fun c =>
    ((hc.comp (continuous_const.add continuous_id)).measurable.enorm).pow_const 2
  rw [lintegral_tsum fun ξ => (hm _).aemeasurable, h𝓕.lintegral_eq_tsum' (fun x => ‖Φ x‖ₑ ^ 2)]
  rw [← ((ratEquiv F κ).trans (Equiv.neg _)).tsum_eq]
  refine tsum_congr fun ξ => ?_
  simp only [Equiv.trans_apply, Equiv.neg_apply, neg_neg, AddSubgroup.vadd_def, vadd_eq_add]
  rfl
end GlobalTheory.ThetaUnfold
