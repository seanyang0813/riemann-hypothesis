module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyConstantAddChar
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ImportsTerAlt
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel

open scoped GlobalTheory.VacAny
open scoped GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

namespace GlobalTheory.SchrSB

theorem isLocallyConstant_addChar {G : Type} [AddCommGroup G] [TopologicalSpace G] [NonarchimedeanAddGroup G]
    (ψ : AddChar G ℂ) (hψ : Continuous ψ) : IsLocallyConstant ψ := by
  apply _root_.GlobalTheory.WeilM.isLocallyConstant_addChar <;> assumption

theorem continuous_psiAt {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ) (hψ : Continuous ψ)
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : Continuous (GlobalTheory.LatVac.psiAt ψ v) := by
  have h : Continuous (GlobalTheory.LatVac.liftV v) := by
    change Continuous fun a => ((0 : Ainf F), GlobalTheory.AdelicU.singleFin v a)
    exact continuous_const.prodMk (GlobalTheory.AdelicU.continuous_singleFin v)
  exact hψ.comp h

theorem schr_mem_SB : ∀ {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ] (ψ : AddChar (AF F) ℂ), Continuous ψ →
    ∀ (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (w : (κ → Fv F v) × (κ → Fv F v)), ∀ φ ∈ GlobalTheory.WeilM.SB (κ → Fv F v),
      GlobalTheory.WeilM.schr (GlobalTheory.LatVac.psiAt ψ v) w φ ∈ GlobalTheory.WeilM.SB _ := by
  intro F _ _ κ _ ψ hψ v w φ hφ
  have hloc := isLocallyConstant_addChar _ (continuous_psiAt ψ hψ v)
  have hlin : Continuous fun x : κ → Fv F v => x ⬝ᵥ w.2 + ⅟(2 : Fv F v) * (w.1 ⬝ᵥ w.2) :=
    (continuous_id.dotProduct continuous_const).add continuous_const
  refine ⟨?_, ?_⟩
  · exact (hloc.comp_continuous hlin).mul (hφ.1.comp_continuous (continuous_add_const w.1))
  · have hc : HasCompactSupport fun x : κ → Fv F v => φ (x + w.1) :=
      hφ.2.comp_homeomorph (Homeomorph.addRight w.1)
    exact hc.mul_left (f := fun x => GlobalTheory.LatVac.psiAt ψ v (x ⬝ᵥ w.2 + ⅟(2 : Fv F v) * (w.1 ⬝ᵥ w.2)))

end GlobalTheory.SchrSB
