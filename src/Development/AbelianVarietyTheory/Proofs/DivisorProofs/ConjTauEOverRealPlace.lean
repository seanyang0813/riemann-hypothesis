module

public import Formalism.LocalRingCardinality.DataTheta
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
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
import Mathlib.Tactic.ReduceModChar
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

noncomputable section

namespace GlobalTheory.ConjTypeOverReal

theorem exists_tau_of_val {D : D7} (ψ : D.host.E →+* ℂ)
    (h : ψ D.host.sqrtMinusD = Complex.I * (Real.sqrt D.host.d : ℂ)) :
    ∃ τ : D.what₂.Tau, tauE D τ = ψ := by
  obtain ⟨g, rfl⟩ := (factEmb D.R D.host).1.2 ψ
  refine ⟨D.eTau.symm ⟨g, ((factEmb D.R D.host).2 g).1 h⟩, ?_⟩
  simp [tauE]

theorem sqrt_sq' {D : D7} : D.host.sqrtMinusD ^ 2 = -(D.host.d : D.host.E) := by
  have h0 : (Complex.I * (Real.sqrt D.host.d : ℂ)) ^ 2 = -(D.host.d : ℂ) := by
    rw [mul_pow, Complex.I_sq, ← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
    simp
  have h3 : D.host.φ₀ D.host.sqrtMinusD = Complex.I * (Real.sqrt D.host.d : ℂ) := D.host.φ₀_mem
  apply D.host.φ₀.injective
  rw [map_pow, h3, h0]
  simp

theorem exists_conj_tauE_over (D : D7) (w : InfinitePlace D.host.F) : ∃ τ : D.what₂.Tau,
    ((starRingEnd ℂ).comp (tauE D τ)).comp (algebraMap D.host.F D.host.E) = w.embedding := by
  letI : Algebra D.host.F ℂ := w.embedding.toAlgebra
  haveI : Algebra.IsAlgebraic D.host.F D.host.E := inferInstance
  haveI : Module.IsTorsionFree D.host.F ℂ := by
    infer_instance
  let ψ : D.host.E →ₐ[D.host.F] ℂ := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have hψ : (ψ : D.host.E →+* ℂ).comp (algebraMap D.host.F D.host.E) = w.embedding := by
    ext x
    simp only [RingHom.comp_apply, RingHom.coe_coe, AlgHom.commutes]
    rfl
  have hreal : (starRingEnd ℂ).comp w.embedding = w.embedding := by
    have hw : w.IsReal := IsTotallyReal.isReal w
    have := (InfinitePlace.isReal_iff.1 hw)
    exact this
  have h0 : (Complex.I * (Real.sqrt D.host.d : ℂ)) ^ 2 = -(D.host.d : ℂ) := by
    rw [mul_pow, Complex.I_sq, ← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
    simp
  have h1 : (ψ : D.host.E →+* ℂ) D.host.sqrtMinusD ^ 2 =
      (Complex.I * (Real.sqrt D.host.d : ℂ)) ^ 2 := by
    rw [← map_pow, sqrt_sq', h0]; simp
  rcases sq_eq_sq_iff_eq_or_eq_neg.1 h1 with h2 | h2
  · obtain ⟨τ, hτ⟩ := exists_tau_of_val (ψ : D.host.E →+* ℂ) h2
    refine ⟨τ, ?_⟩
    rw [hτ, RingHom.comp_assoc, hψ, hreal]
  · obtain ⟨τ, hτ⟩ := exists_tau_of_val ((starRingEnd ℂ).comp (ψ : D.host.E →+* ℂ))
      (by rw [RingHom.comp_apply, h2]; simp)
    refine ⟨τ, ?_⟩
    rw [hτ, ← RingHom.comp_assoc]
    have hcc : (starRingEnd ℂ).comp (starRingEnd ℂ) = RingHom.id ℂ := by
      ext z; simp
    rw [hcc, RingHom.id_comp, hψ]

theorem conj_tauE_over_realPlace : ∀ {D : D7} (w : InfinitePlace D.host.F), ∃ τ : D.what₂.Tau,
    ((starRingEnd ℂ).comp (tauE D τ)).comp (algebraMap D.host.F D.host.E) = w.embedding :=
  fun {D} w => exists_conj_tauE_over D w

end GlobalTheory.ConjTypeOverReal
