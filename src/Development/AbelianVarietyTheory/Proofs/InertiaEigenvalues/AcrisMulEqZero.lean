module

public import Formalism.LocalRingCardinality.AdicCompletionLocal.InstIsAdicCompleteOCSpanSingletonSetCast
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisGaussNormEventuallyMonomial
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisRadiusPosDefinite
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGaussGCTarget
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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

open GlobalTheory.PMon.Gauss
open scoped Formalism.Per

namespace GlobalTheory.PMon.Gauss

theorem acris_mul_eq_zero : ∀ (l : ℕ) [Fact l.Prime] (x y : Formalism.Per.Acris l), x * y = 0 → x = 0 ∨ y = 0 := by
  intro l _ x y hxy
  have hl : (1 : ℝ) < (l : ℝ) := by exact_mod_cast (Fact.out : l.Prime).one_lt
  have hl0 : (0 : ℝ) < (l : ℝ) := by linarith
  have hρ1 : (l : ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ hl
  have hρ0 : (0 : ℝ) < (l : ℝ)⁻¹ := inv_pos.mpr hl0
  have hG := _root_.GlobalTheory.PMon.Gauss.isGauss_gC_of_le l (l : ℝ)⁻¹ le_rfl hρ1
  have hc : gC l (l : ℝ)⁻¹ (algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l) (l : Formalism.Per.Ainf l)) = (l : ℝ)⁻¹ := by
    rw [hG.2.2.2.2]
    exact GlobalTheory.GaussSlope.gauss_l l hρ0.le
  have h0 : gC l (l : ℝ)⁻¹ (0 : Formalism.Per.Acris l) = 0 := by
    have h := hG.2.2.2.1 0 (algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l) (l : Formalism.Per.Ainf l))
    rw [zero_mul, hc] at h
    have : gC l (l : ℝ)⁻¹ (0 : Formalism.Per.Acris l) * (1 - (l : ℝ)⁻¹) = 0 := by linarith
    rcases mul_eq_zero.mp this with h' | h'
    · exact h'
    · linarith
  by_contra h
  push_neg at h
  have hx := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x h.1 (l : ℝ)⁻¹ le_rfl hρ1
  have hy := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l y h.2 (l : ℝ)⁻¹ le_rfl hρ1
  have hm := hG.2.2.2.1 x y
  rw [hxy, h0] at hm
  have := mul_pos hx hy
  linarith

end GlobalTheory.PMon.Gauss
