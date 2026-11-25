module

public import Mathlib.Analysis.Analytic.Order
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.NumberTheory.LSeries.DirichletContinuation
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FinsumMemLeOfSubset
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology

namespace GlobalTheory.ZeroBand

theorem finite_box (f : ℂ → ℂ)
    (hW : ∀ t : ℝ, {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - t| ≤ 1 ∧ f ρ = 0}.Finite) (T : ℝ) :
    {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ f ρ = 0}.Finite := by
  refine Set.Finite.subset
    ((Finset.Icc ⌊-T⌋ ⌊T⌋).finite_toSet.biUnion fun k _ => hW (k : ℝ)) ?_
  rintro ρ ⟨h0, h1, h2, h3⟩
  rw [abs_lt] at h2
  refine Set.mem_iUnion₂.2 ⟨⌊ρ.im⌋, ?_, h0, h1, ?_, h3⟩
  · rw [Finset.coe_Icc, Set.mem_Icc]
    exact ⟨Int.floor_mono h2.1.le, Int.floor_mono h2.2.le⟩
  · rw [abs_le]
    constructor <;> linarith [Int.floor_le ρ.im, Int.lt_floor_add_one ρ.im]

theorem norm_term_le_of_pos (m : ℕ) {u T : ℝ} (hT : 0 < T) (hu : 1 ≤ u) {ρ : ℂ} (h1 : ρ.re < 1)
    (h2 : T ≤ |ρ.im|) : ‖(m : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ (m : ℝ) * (u / T) := by
  have hu0 : 0 < u := by linarith
  have hT0 : 0 < T := hT
  have hρ : T ≤ ‖ρ‖ := h2.trans (Complex.abs_im_le_norm ρ)
  have hρ0 : 0 < ‖ρ‖ := hT0.trans_le hρ
  rw [norm_mul, norm_div, Complex.norm_natCast, Complex.norm_cpow_eq_rpow_re_of_pos hu0]
  apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg m)
  have hup : u ^ ρ.re ≤ u := by
    calc u ^ ρ.re ≤ u ^ (1 : ℝ) := Real.rpow_le_rpow_of_exponent_le (by linarith) h1.le
      _ = u := Real.rpow_one u
  calc u ^ ρ.re / ‖ρ‖ ≤ u / ‖ρ‖ := div_le_div_of_nonneg_right hup hρ0.le
    _ ≤ u / T := div_le_div_of_nonneg_left hu0.le hT0 hρ

theorem band_le_of_pos (f : ℂ → ℂ) (m : ℂ → ℕ) (B : ℝ → ℝ)
    (hW : ∀ t : ℝ, {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - t| ≤ 1 ∧ f ρ = 0}.Finite ∧
      ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - t| ≤ 1 ∧ f ρ = 0}, (m ρ : ℝ) ≤ B t)
    {u T T' : ℝ} (hT : 0 < T) (hu : 1 ≤ u) (hT1 : T ≤ T') (hT2 : T' ≤ T + 1) :
    ‖(∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T' ∧ f ρ = 0},
        (m ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)) -
      ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ f ρ = 0},
        (m ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ (B T + B (-T)) * (u / T) := by
  classical
  have hT0 : 0 < T := hT
  have hS' := finite_box f (fun t => (hW t).1) T'
  have hS := finite_box f (fun t => (hW t).1) T
  have hA := (hW T).1
  have hA' := (hW (-T)).1
  rw [finsum_mem_eq_finite_toFinset_sum _ hS', finsum_mem_eq_finite_toFinset_sum _ hS]
  have hsub : hS.toFinset ⊆ hS'.toFinset := by
    intro ρ hρ
    rw [Set.Finite.mem_toFinset] at hρ ⊢
    obtain ⟨a, b, c, d⟩ := hρ
    exact ⟨a, b, c.trans_le hT1, d⟩
  rw [← Finset.sum_sdiff hsub, add_sub_cancel_right]
  have hD : ∀ ρ ∈ hS'.toFinset \ hS.toFinset,
      ρ ∈ hA.toFinset ∪ hA'.toFinset ∧ ρ.re < 1 ∧ T ≤ |ρ.im| := by
    intro ρ hρ
    obtain ⟨h1, h2⟩ := Finset.mem_sdiff.1 hρ
    rw [Set.Finite.mem_toFinset] at h1 h2
    obtain ⟨a, b, c, d⟩ := h1
    have hT' : T ≤ |ρ.im| := not_lt.1 fun h => h2 ⟨a, b, h, d⟩
    refine ⟨?_, b, hT'⟩
    rw [Finset.mem_union, Set.Finite.mem_toFinset, Set.Finite.mem_toFinset]
    rw [abs_lt] at c
    rcases le_or_gt 0 ρ.im with h | h
    · left
      rw [abs_of_nonneg h] at hT'
      refine ⟨a, b, ?_, d⟩
      rw [abs_le]
      constructor <;> linarith
    · right
      rw [abs_of_neg h] at hT'
      refine ⟨a, b, ?_, d⟩
      rw [abs_le]
      constructor <;> linarith
  have hm : ∑ ρ ∈ hS'.toFinset \ hS.toFinset, (m ρ : ℝ) ≤ B T + B (-T) := by
    calc ∑ ρ ∈ hS'.toFinset \ hS.toFinset, (m ρ : ℝ)
        ≤ ∑ ρ ∈ hA.toFinset ∪ hA'.toFinset, (m ρ : ℝ) :=
          Finset.sum_le_sum_of_subset_of_nonneg (fun ρ hρ => (hD ρ hρ).1)
            (fun _ _ _ => Nat.cast_nonneg _)
      _ ≤ ∑ ρ ∈ hA.toFinset, (m ρ : ℝ) + ∑ ρ ∈ hA'.toFinset, (m ρ : ℝ) := by
          rw [← Finset.sum_union_inter]
          exact le_add_of_nonneg_right (Finset.sum_nonneg fun _ _ => Nat.cast_nonneg _)
      _ ≤ B T + B (-T) := by
          rw [← finsum_mem_eq_finite_toFinset_sum _ hA, ← finsum_mem_eq_finite_toFinset_sum _ hA']
          exact add_le_add (hW T).2 (hW (-T)).2
  calc _ ≤ ∑ ρ ∈ hS'.toFinset \ hS.toFinset, (m ρ : ℝ) * (u / T) := by
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun ρ hρ => ?_)
        obtain ⟨-, h1, h2⟩ := hD ρ hρ
        exact norm_term_le_of_pos (m ρ) hT hu h1 h2
    _ = (∑ ρ ∈ hS'.toFinset \ hS.toFinset, (m ρ : ℝ)) * (u / T) := by rw [Finset.sum_mul]
    _ ≤ (B T + B (-T)) * (u / T) :=
        mul_le_mul_of_nonneg_right hm (div_nonneg (by linarith) hT0.le)

/-- A unit-height change of truncation costs only one logarithm. The height can be any
positive real number, independently of the evaluation point `u ≥ 1`. -/
theorem zeros_band_log :
    ∃ C : ℝ, 0 < C ∧
      ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N),
      χ.IsPrimitive → ∀ u T T' : ℝ, 0 < T → 1 ≤ u → T ≤ T' → T' ≤ T + 1 →
      {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ LFunction χ ρ = 0}.Finite ∧
      ‖(∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T' ∧ LFunction χ ρ = 0},
          ((analyticOrderNatAt (LFunction χ) ρ : ℕ) : ℂ) * ((u : ℂ) ^ ρ / ρ)) -
        ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ LFunction χ ρ = 0},
          ((analyticOrderNatAt (LFunction χ) ρ : ℕ) : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤
        C * (u * Real.log (N * (T + 2)) / T) := by
  obtain ⟨C, hC, hcount⟩ := GlobalTheory.ZeroWindow.count_zeros_window
  refine ⟨2 * C, by linarith, ?_⟩
  intro N _ χ hχ u T T' hT hu hT1 hT2
  have hw := hcount N χ hχ
  refine ⟨finite_box _ (fun t => (hw t).1) T, ?_⟩
  convert band_le_of_pos (LFunction χ) (fun ρ => analyticOrderNatAt (LFunction χ) ρ)
    (fun t => C * Real.log (N * (|t| + 2))) hw hT hu hT1 hT2 using 1
  rw [abs_neg, abs_of_pos hT]
  ring

theorem zeros_band : ∃ C : ℝ, 0 < C ∧ ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), χ.IsPrimitive → ∀ u T T' : ℝ, 2 ≤ T → T ≤ u → T ≤ T' → T' ≤ T + 1 → {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ LFunction χ ρ = 0}.Finite ∧ ‖(∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T' ∧ LFunction χ ρ = 0}, ((analyticOrderNatAt (LFunction χ) ρ : ℕ) : ℂ) * ((u : ℂ) ^ ρ / ρ)) - ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T ∧ LFunction χ ρ = 0}, ((analyticOrderNatAt (LFunction χ) ρ : ℕ) : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ C * (u * Real.log (N * u * T) ^ 2 / T) := by
  obtain ⟨C, hC, hsharp⟩ := zeros_band_log
  refine ⟨C, hC, ?_⟩
  intro N _ χ hχ u T T' hT hu hT1 hT2
  obtain ⟨hfinite, hbound⟩ := hsharp N χ hχ u T T' (by linarith) (by linarith) hT1 hT2
  refine ⟨hfinite, ?_⟩
  have hT0 : 0 < T := by linarith
  have hN : (1 : ℝ) ≤ N := by exact_mod_cast Nat.one_le_iff_ne_zero.2 (NeZero.ne N)
  have huT : T + 2 ≤ u * T := by nlinarith
  have hx : (N : ℝ) * (T + 2) ≤ N * u * T := by
    rw [mul_assoc]
    exact mul_le_mul_of_nonneg_left huT (by linarith)
  have hpos : 0 < (N : ℝ) * (T + 2) := by positivity
  have hL1 : Real.log (N * (T + 2)) ≤ Real.log (N * u * T) := Real.log_le_log hpos hx
  have h4 : (4 : ℝ) ≤ N * u * T := by nlinarith
  have hL : 1 ≤ Real.log (N * u * T) := by
    have he : Real.exp 1 < 4 := by have := Real.exp_one_lt_d9; linarith
    exact ((Real.lt_log_iff_exp_lt (by linarith)).2 (by linarith)).le
  have hL2 : Real.log (N * (T + 2)) ≤ Real.log (N * u * T) ^ 2 := hL1.trans (by nlinarith)
  calc _ ≤ C * (u * Real.log (N * (T + 2)) / T) := hbound
    _ ≤ C * (u * Real.log (N * u * T) ^ 2 / T) := by
      gcongr <;> linarith

end GlobalTheory.ZeroBand
