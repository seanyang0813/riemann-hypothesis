module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzSpaceTranslateMem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.Finset.Functor
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.WeilBound.ThetaLifts.LeviDeterminants.GrowSplit

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField MeasureTheory
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix Formalism.IndefR.Datum
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

noncomputable section

namespace GlobalTheory.ThetaTransformMeas

open Filter Topology
open scoped Classical

section

variable (F : Type) [Field F] [NumberField F]

theorem continuous_mixed : Continuous (InfiniteAdeleRing.ringEquiv_mixedSpace F) := by
  first
  | exact _root_.PositivityTheory.ThKF0.Split.continuous_toMixed
  | (apply _root_.PositivityTheory.ThKF0.Split.continuous_toMixed <;> assumption)

theorem continuous_pureA {κ : Type} [Fintype κ] (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ)
    {g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ} (hg : g ∈ GlobalTheory.WeilM.SB (κ → FiniteAdeleRing (𝓞 F) F)) :
    Continuous (GlobalTheory.WeilM.pureA F f g) := by
  have h1 : Continuous fun x : κ → AdeleRing (𝓞 F) F => fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F (x i).1 :=
    continuous_pi fun i => (continuous_mixed F).comp (continuous_fst.comp (continuous_apply i))
  have h2 : Continuous fun x : κ → AdeleRing (𝓞 F) F => fun i => (x i).2 :=
    continuous_pi fun i => continuous_snd.comp (continuous_apply i)
  exact (f.continuous.comp h1).mul (hg.1.continuous.comp h2)

theorem continuous_of_mem_schA {κ : Type} [Fintype κ] {Φ : (κ → AdeleRing (𝓞 F) F) → ℂ}
    (hΦ : Φ ∈ GlobalTheory.WeilM.schA F κ) : Continuous Φ := by
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    exact continuous_pureA F f hg
  | zero => exact continuous_const
  | add _ _ _ _ h1 h2 => exact h1.add h2
  | smul c _ _ h => exact h.const_smul c

theorem countable_field : Countable F :=
  (Module.finBasis ℚ F).equivFun.injective.countable

end

theorem main : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (κ : Type) [Fintype κ], ∀ Φ ∈ GlobalTheory.WeilM.schA F κ,
    @Measurable _ _ (borel _) _ (fun w : (κ → AF F) × (κ → AF F) => GlobalTheory.WeilM.thetaSum F (GlobalTheory.WeilM.schr ψ w Φ)) := by
  intro F _ _ ψ hψ κ _ Φ hΦ
  letI : MeasurableSpace ((κ → AF F) × (κ → AF F)) := borel _
  haveI : BorelSpace ((κ → AF F) × (κ → AF F)) := ⟨rfl⟩
  haveI := countable_field F
  have hc := continuous_of_mem_schA F hΦ
  let T : (κ → F) → (κ → AF F) × (κ → AF F) → ℂ := fun ξ w =>
    GlobalTheory.WeilM.schr ψ w Φ (fun i => algebraMap F (AF F) (ξ i))
  have hT : ∀ ξ, Continuous (T ξ) := by
    intro ξ
    simp only [T, GlobalTheory.WeilM.schr]
    refine (hψ.1.comp ?_).mul (hc.comp ?_)
    · fun_prop
    · fun_prop
  have hs : ∀ w, Summable fun ξ => T ξ w := by
    intro w
    have h := GlobalTheory.WeilM.summable_of_mem_schA F (GlobalTheory.SchwartzTranslate.schA_translate F w.1 hΦ)
    refine Summable.of_norm_bounded h.norm fun ξ => ?_
    simp only [T, GlobalTheory.WeilM.schr, norm_mul, hψ.2.1, one_mul]
    exact le_rfl
  change Measurable fun w => ∑' ξ, T ξ w
  exact measurable_of_tendsto_metrizable' (atTop : Filter (Finset (κ → F)))
    (f := fun s w => ∑ ξ ∈ s, T ξ w) (fun s => Finset.measurable_sum s fun ξ _ => (hT ξ).measurable)
    (tendsto_pi_nhds.2 fun w => (hs w).hasSum)

end GlobalTheory.ThetaTransformMeas

end
