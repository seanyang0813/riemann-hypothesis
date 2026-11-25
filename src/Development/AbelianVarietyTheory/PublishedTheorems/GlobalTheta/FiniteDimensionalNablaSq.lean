module

public import Formalism.PolynomialDimension.WeylDim
public import Formalism.LocalRingCardinality.DataCoeff
public import Formalism.GradedWeylDivisibility.FinalD
public import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
public import Formalism.LocalToGlobal.Columns.PolyFnLemmas
public import Formalism.PeriodIntegrals.AdmissibleModel.WeylDim
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

open Formalism.BasicNotions

namespace GlobalTheory.Published

end GlobalTheory.Published

namespace GlobalTheory.WeylDimGL

theorem weylDim_eq_prod_Ioi (n : ℕ) (lam : Fin n → ℤ) :
    Formalism.CountingSumsFrames.weylDim n lam = ∏ i : Fin n, ∏ j ∈ Finset.Ioi i,
      ((lam i : ℚ) - (lam j : ℚ) + ((j : ℕ) : ℚ) - ((i : ℕ) : ℚ)) / (((j : ℕ) : ℚ) - ((i : ℕ) : ℚ)) := by
  unfold Formalism.CountingSumsFrames.weylDim
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [← Finset.filter_lt_eq_Ioi, Finset.prod_filter]
  refine Finset.prod_congr rfl fun j _ => ?_
  push_cast
  rfl

theorem finiteDimensional_nablaSq (K : Type) [Field K] (n : ℕ) (lam : DomWeight n) :
    FiniteDimensional K (nablaSq K n lam) := by
  obtain ⟨b, ⟨-, hb, -⟩, -⟩ := Formalism.GradedWeylDivisibility.sSBasis K n n lam.natW
  have : Finite (Formalism.GradedWeylDivisibility.ssIdx n n lam.natW) := (Formalism.GradedWeylDivisibility.sSIdxFinite n n _).to_subtype
  unfold nablaSq
  rw [← hb]
  exact FiniteDimensional.span_of_finite K (Set.finite_range b)

theorem finrank_nablaSq (K : Type) [Field K] (n : ℕ) (lam : DomWeight n) :
    (Module.finrank K (nablaSq K n lam) : ℚ) = Formalism.CountingSumsFrames.weylDim n lam.w := by
  refine (Formalism.L2.G.Model.weyl_dualWeyl K n lam.natW (factNatW n lam).1).trans ?_
  unfold Formalism.CountingSumsFrames.weylDim
  refine Finset.prod_congr rfl fun i _ => Finset.prod_congr rfl fun j _ => ?_
  rw [← (factNatW n lam).2.1 i, ← (factNatW n lam).2.1 j]
  push_cast
  congr 2
  ring

theorem finrank_delSq (K : Type) [Field K] [CharZero K] (n : ℕ) (lam : DomWeight n) :
    (Module.finrank K (delSq K n lam) : ℚ) = Formalism.CountingSumsFrames.weylDim n lam.w := by
  rw [← Formalism.L2.Col.nablaSq_eq_delSq K lam]
  exact finrank_nablaSq K n lam

end GlobalTheory.WeylDimGL

namespace GlobalTheory.Published

open GlobalTheory.WeylDimGL

end GlobalTheory.Published
