module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
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
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel

open scoped GlobalTheory.VacAny
open scoped GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

noncomputable section

namespace GlobalTheory.LatVac

theorem restrict_liftV_mem_SB : ∀ {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ] (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)),
    ∀ Φ ∈ GlobalTheory.WeilM.schA F κ, (fun t : κ → Fv F v => Φ (fun i => GlobalTheory.LatVac.liftV v (t i))) ∈ GlobalTheory.WeilM.SB (κ → Fv F v) := by
  intro F _ _ κ _ v Φ hΦ
  haveI : T2Space (Af F) := GlobalTheory.AdelicUnitaryTop.t2Space_finiteAdeleRing_of_numberField F
  induction hΦ using Submodule.span_induction with
  | mem Φ hΦ =>
    obtain ⟨f, g, hg, rfl⟩ := hΦ
    let s : (κ → Fv F v) → (κ → Af F) := fun t i => GlobalTheory.AdelicU.singleFin v (t i)
    have hs : Continuous s := continuous_pi fun i => (GlobalTheory.AdelicU.continuous_singleFin v).comp (continuous_apply i)
    have hinv : Function.LeftInverse (fun x : κ → Af F => fun i => Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F v (x i)) s :=
      fun t => funext fun i => GlobalTheory.AdelicU.evalV_singleFin_self v (t i)
    have hev : Continuous (fun x : κ → Af F => fun i => Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F v (x i)) :=
      continuous_pi fun i => (RestrictedProduct.continuous_eval v).comp (continuous_apply i)
    have hce : Topology.IsClosedEmbedding s := hinv.isClosedEmbedding hev hs
    have hmem : g ∘ s ∈ GlobalTheory.WeilM.SB (κ → Fv F v) :=
      ⟨hg.1.comp_continuous hs, hg.2.comp_isClosedEmbedding hce⟩
    have e : (fun t : κ → Fv F v => GlobalTheory.WeilM.pureA F (⇑f) g (fun i => GlobalTheory.LatVac.liftV v (t i))) =
        f (fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F 0) • (g ∘ s) := by
      funext t
      rfl
    rw [e]
    exact Submodule.smul_mem _ _ hmem
  | zero => exact Submodule.zero_mem _
  | add x y _ _ hx hy => exact Submodule.add_mem _ hx hy
  | smul a x _ hx => exact Submodule.smul_mem _ a hx

end GlobalTheory.LatVac

end
