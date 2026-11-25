module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open GlobalTheory.FinPl GlobalTheory.LatPair GlobalTheory.SplitWeil ValuativeRel IsLocalRing Matrix

namespace GlobalTheory.FinPl.SBFacts

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
variable {n : Type} [Fintype n] [DecidableEq n]

theorem charInd_mem (χ : AddChar 𝓀[k] ℂ) (Q : Pair k n) : charInd χ Q ∈ SB (n → k) := by
  have : T2Space k := GlobalTheory.SplitWeil.t2Space k
  have hK : IsCompact (Q.lat : Set (n → k)) := GlobalTheory.FinPl.Comm.isCompact_lat Q.lat
  refine ⟨?_, HasCompactSupport.intro hK fun y hy => ?_⟩
  · refine (IsLocallyConstant.iff_exists_open _).2 fun y => ?_
    by_cases hy : y ∈ Q.lat
    · refine ⟨(fun z => z - y) ⁻¹' (Q.ker : Set (n → k)), (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.isOpen_lat Q.ker).preimage (by fun_prop),
        by simp [Q.ker.zero_mem], fun z hz => ?_⟩
      have hw : Q.HasVal (z - y) 0 := Pair.mem_ker.1 hz
      have hz' : Q.HasVal z (Q.ev y) := by
        simpa using hw.add (Pair.hasVal_ev hy)
      have hzl : z ∈ Q.lat := hz'.mem
      simp only [charInd, vecInd, ite_eq_left hzl, ite_eq_left hy, hz'.ev_eq]
    · refine ⟨(Q.lat : Set (n → k))ᶜ, hK.isClosed.isOpen_compl, hy, fun z hz => ?_⟩
      have hz' : z ∉ Q.lat := hz
      simp only [charInd, vecInd, ite_eq_right hz', ite_eq_right hy, mul_zero]
  · have hy' : y ∉ Q.lat := hy
    simp only [charInd, vecInd, ite_eq_right hy', mul_zero]

end GlobalTheory.FinPl.SBFacts
