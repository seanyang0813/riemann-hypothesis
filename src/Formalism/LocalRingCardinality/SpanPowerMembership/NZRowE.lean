module

public import Formalism.LocalRingCardinality.DataKernels
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
public import Formalism.LocalRingCardinality.DataHost
public import Formalism.LocalRingCardinality.DataRows
public import Formalism.LocalRingCardinality.DataSpaces
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.LocalRingCardinality.SpanPowerMembership.ClassRecordRowDimensionZero
public import Formalism.LocalRingCardinality.SpanPowerMembership.CodeRecordDiscriminantLevel
public import Formalism.LocalRingCardinality.SpanPowerMembership.NZColC
public import Formalism.LocalRingCardinality.SpanPowerMembership.NZRowC
public import Formalism.LocalRingCardinality.SpanPowerMembership.NZTypeH

@[expose] public section

noncomputable section

namespace Formalism.BasicNotions.Examples₂.NZ

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.BasicNotions.Examples₂

section Chain

theorem chainOpM_add {Rg : Type} [CommSemiring Rg] {ι : ℕ → Type} [∀ j, Fintype (ι j)]
    {M : ℕ → Type} [∀ j, AddCommMonoid (M j)] [∀ j, Module Rg (M j)]
    (w : ∀ j, ι j → Rg) (Km : ∀ j, ι j → ι (j + 1) → (M j →ₗ[Rg] M (j + 1))) (m : ℕ) (f g : ι 0 → M 0) :
    Formalism.ThetaLiftIndependence.chainOpM w Km m (f + g) = Formalism.ThetaLiftIndependence.chainOpM w Km m f + Formalism.ThetaLiftIndependence.chainOpM w Km m g := by
  induction m with
  | zero => rfl
  | succ m ih =>
    simp only [Formalism.ThetaLiftIndependence.chainOpM, ih]
    funext j
    simp only [Formalism.ThetaLiftIndependence.kerOpM, Pi.add_apply, map_add (f := _), smul_add, Finset.sum_add_distrib]

theorem chainOpM_smul {Rg : Type} [CommSemiring Rg] {ι : ℕ → Type} [∀ j, Fintype (ι j)]
    {M : ℕ → Type} [∀ j, AddCommMonoid (M j)] [∀ j, Module Rg (M j)]
    (w : ∀ j, ι j → Rg) (Km : ∀ j, ι j → ι (j + 1) → (M j →ₗ[Rg] M (j + 1))) (m : ℕ) (c : Rg) (f : ι 0 → M 0) :
    Formalism.ThetaLiftIndependence.chainOpM w Km m (c • f) = c • Formalism.ThetaLiftIndependence.chainOpM w Km m f := by
  induction m with
  | zero => rfl
  | succ m ih =>
    simp only [Formalism.ThetaLiftIndependence.chainOpM, ih]
    funext j
    simp only [Formalism.ThetaLiftIndependence.kerOpM, Pi.smul_apply, map_smul, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    exact smul_comm _ _ _

theorem col_add {R : Ranks} {ι : Type} [Fintype ι] {hc : ι → HCParam R} (C : ColumnChain R ι hc)
    (f g : C.cls 0 → C.Y 0 → ℂ) : C.col (f + g) = C.col f + C.col g := chainOpM_add C.wt C.Kmap R.m f g

theorem col_smul {R : Ranks} {ι : Type} [Fintype ι] {hc : ι → HCParam R} (C : ColumnChain R ι hc)
    (c : ℂ) (f : C.cls 0 → C.Y 0 → ℂ) : C.col (c • f) = c • C.col f := chainOpM_smul C.wt C.Kmap R.m c f

end Chain

end Formalism.BasicNotions.Examples₂.NZ
