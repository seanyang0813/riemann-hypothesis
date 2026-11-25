module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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

noncomputable section

open PowerSeries GlobalTheory.BK Matrix

namespace GlobalTheory.LiftCoker

variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K]

theorem map_mem_A (f : O⟦X⟧) : PowerSeries.map (algebraMap O K) f ∈ A O K := by
  rw [← coe_equivA]
  exact (equivA O K f).2


variable (O K) in
def colon {ι κ : Type} [Fintype ι] (G : Matrix κ ι K⟦X⟧) : Ideal O⟦X⟧ where
  carrier := {α | ∀ w : κ → K⟦X⟧, (∀ i, w i ∈ A O K) →
    ∃ m : ι → K⟦X⟧, (∀ j, m j ∈ A O K) ∧ PowerSeries.map (algebraMap O K) α • w = G *ᵥ m}
  add_mem' {α β} hα hβ w hw := by
    obtain ⟨m, hm, h⟩ := hα w hw
    obtain ⟨m', hm', h'⟩ := hβ w hw
    exact ⟨m + m', fun j => add_mem (hm j) (hm' j), by rw [map_add (f := _), add_smul, h, h', Matrix.mulVec_add]⟩
  zero_mem' w _ := ⟨0, fun _ => zero_mem _, by simp⟩
  smul_mem' c α hα w hw := by
    obtain ⟨m, hm, h⟩ := hα w hw
    refine ⟨PowerSeries.map (algebraMap O K) c • m, fun j => ?_, ?_⟩
    · rw [Pi.smul_apply, smul_eq_mul]
      exact mul_mem (map_mem_A c) (hm j)
    · rw [smul_eq_mul, map_mul, mul_smul, h, Matrix.mulVec_smul]

end GlobalTheory.LiftCoker
