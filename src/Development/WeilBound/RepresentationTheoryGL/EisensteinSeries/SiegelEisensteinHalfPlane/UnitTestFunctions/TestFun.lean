module

public import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit
public import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
public import GroundTheory.GlobalFields.TateThesis.EulerFactorsInfinite
public import GroundTheory.GlobalFields.TateThesis.FiniteOrderParams
public import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinContinuation.IsEpCont
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsOfChiNeZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProdFunHasCompactSupport
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StandardSectionGood
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.UniformSpace.Uniformizable
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.Henselian

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BumpProfileEqZeroOfLtHalf, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousInfiniteIdeleInclusion, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EqZeroOfForallInM, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasCompactSupportSmallF, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdeleModuleOfFiniteEq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InfiniteModuleOfFinite, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemOHOfMemIntAd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemStabOfInvCol, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatCastFiniteAdeleApply, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RealComponentCoe, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ToIdeleMulSelf, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValEqOneOfMulEq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZetaIntegrandTensor, Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.TestFun

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BumpProfileEqZeroOfLtHalf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BumpProfileEqZeroOfLtHalf", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\npublic import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.RgEis PositivityTheory.RgEis.TF

noncomputable section

namespace GlobalTheory.CompanionTheory.TestFun

theorem contDiff_mul_of_vanish {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {N : E → ℝ} (hN : ContDiff ℝ (⊤ : ℕ∞) N) {φ : ℝ → ℝ} (hφ : ContDiff ℝ (⊤ : ℕ∞) φ)
    (hφ0 : ∀ s, s < 1 / 2 → φ s = 0) {H : E → ℝ}
    (hH : ∀ y, 0 < N y → ContDiffAt ℝ (⊤ : ℕ∞) H y) :
    ContDiff ℝ (⊤ : ℕ∞) (fun y => φ (N y) * H y) := by
  rw [contDiff_iff_contDiffAt]
  intro y
  by_cases hy : 0 < N y
  · exact (hφ.comp hN).contDiffAt.mul (hH y hy)
  · have hlt : N y < 1 / 2 := by linarith [not_lt.mp hy]
    have hev : ∀ᶠ z in nhds y, N z < 1 / 2 :=
      hN.continuous.continuousAt.eventually (gt_mem_nhds hlt)
    refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
    filter_upwards [hev] with z hz
    simp [hφ0 _ hz]

def sqSum {ι : Type} [Fintype ι] (y : ι → ℝ) : ℝ := ∑ j, y j ^ 2

theorem sqSum_contDiff {ι : Type} [Fintype ι] : ContDiff ℝ (⊤ : ℕ∞) (sqSum (ι := ι)) := by
  unfold sqSum
  exact ContDiff.sum fun j _ => (contDiff_apply ℝ (fun _ => ℝ) j).pow 2

theorem sqSum_smul {ι : Type} [Fintype ι] (t : ℝ) (v : ι → ℝ) :
    sqSum (t • v) = t ^ 2 * sqSum v := by
  unfold sqSum
  rw [Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => by simp [mul_pow]

theorem sq_le_sqSum {ι : Type} [Fintype ι] (y : ι → ℝ) (j : ι) : y j ^ 2 ≤ sqSum y := by
  unfold sqSum
  exact Finset.single_le_sum (f := fun j => y j ^ 2) (fun i _ => sq_nonneg _) (Finset.mem_univ j)

theorem hasCompactSupport_of_sqSum {ι : Type} [Fintype ι] {F : (ι → ℝ) → ℝ}
    (h : ∀ y, 2 < sqSum y → F y = 0) : HasCompactSupport F := by
  refine HasCompactSupport.intro (isCompact_closedBall (0 : ι → ℝ) 2) ?_
  intro y hy
  apply h
  have hn : (2 : ℝ) < ‖y‖ := by simpa [mem_closedBall_zero_iff] using hy
  have : ∃ j, 2 < |y j| := by
    by_contra hc
    push Not at hc
    have : ‖y‖ ≤ 2 := (pi_norm_le_iff_of_nonneg (by norm_num)).2 fun j => by
      simpa [Real.norm_eq_abs] using hc j
    linarith
  obtain ⟨j, hj⟩ := this
  have h4 : (2 : ℝ) ^ 2 < y j ^ 2 := by
    rw [← sq_abs (y j)]
    exact pow_lt_pow_left₀ hj (by norm_num) (by norm_num)
  linarith [sq_le_sqSum y j]

def phi0 : ContDiffBump (1 : ℝ) := ⟨1 / 4, 1 / 2, by norm_num, by norm_num⟩

theorem bumpProfile_one : phi0 1 = 1 :=
  phi0.one_of_mem_closedBall (by simp [phi0])

theorem bumpProfile_eq_zero_of_lt_half (s : ℝ) (hs : s < 1 / 2) : phi0 s = 0 := by
  refine phi0.zero_of_le_dist ?_
  show (1 / 2 : ℝ) ≤ dist s 1
  rw [Real.dist_eq, abs_sub_comm]
  exact le_trans (by linarith) (le_abs_self _)

theorem bumpProfile_eq_zero_of_two_lt (s : ℝ) (hs : 2 < s) : phi0 s = 0 := by
  refine phi0.zero_of_le_dist ?_
  show (1 / 2 : ℝ) ≤ dist s 1
  rw [Real.dist_eq]
  exact le_trans (by linarith) (le_abs_self _)

theorem bumpProfile_contDiff : ContDiff ℝ (⊤ : ℕ∞) (fun s : ℝ => phi0 s) := phi0.contDiff

def bumpAt (δ : ℝ) (hδ : 0 < δ) : ContDiffBump (1 : ℝ) :=
  ⟨δ / 2, δ, half_pos hδ, half_lt_self hδ⟩

theorem bumpAt_one (δ : ℝ) (hδ : 0 < δ) : bumpAt δ hδ 1 = 1 :=
  (bumpAt δ hδ).one_of_mem_closedBall (by simp [bumpAt]; linarith)

theorem bumpAt_ne (δ : ℝ) (hδ : 0 < δ) {s : ℝ} (h : bumpAt δ hδ s ≠ 0) : 1 - δ < s := by
  by_contra hc
  refine h ((bumpAt δ hδ).zero_of_le_dist ?_)
  show δ ≤ dist s 1
  rw [Real.dist_eq, abs_sub_comm]
  exact le_trans (by linarith [not_lt.mp hc]) (le_abs_self _)

def angular {ι : Type} [Fintype ι] (i₀ : ι) (m : ℕ) (δ : ℝ) (hδ : 0 < δ) (y : ι → ℝ) : ℝ :=
  bumpAt δ hδ (y i₀ ^ 2 / sqSum y) * (y i₀ / Real.sqrt (sqSum y)) ^ m

theorem angular_contDiffAt {ι : Type} [Fintype ι] (i₀ : ι) (m : ℕ) (δ : ℝ) (hδ : 0 < δ)
    (y : ι → ℝ) (hy : 0 < sqSum y) : ContDiffAt ℝ (⊤ : ℕ∞) (angular i₀ m δ hδ) y := by
  have hN : ContDiffAt ℝ (⊤ : ℕ∞) (sqSum (ι := ι)) y := sqSum_contDiff.contDiffAt
  have hc : ContDiffAt ℝ (⊤ : ℕ∞) (fun y : ι → ℝ => y i₀) y := (contDiff_apply ℝ (fun _ => ℝ) i₀).contDiffAt
  have hq : ContDiffAt ℝ (⊤ : ℕ∞) (fun y : ι → ℝ => y i₀ ^ 2 / sqSum y) y :=
    (hc.pow 2).div hN hy.ne'
  have hbc : ContDiff ℝ (⊤ : ℕ∞) (fun s : ℝ => bumpAt δ hδ s) := (bumpAt δ hδ).contDiff
  have hb : ContDiffAt ℝ (⊤ : ℕ∞) (fun y : ι → ℝ => bumpAt δ hδ (y i₀ ^ 2 / sqSum y)) y :=
    ContDiff.comp_contDiffAt (g := fun s : ℝ => bumpAt δ hδ s)
      (f := fun y : ι → ℝ => y i₀ ^ 2 / sqSum y) y hbc hq
  have hs : ContDiffAt ℝ (⊤ : ℕ∞) (fun y : ι → ℝ => Real.sqrt (sqSum y)) y := hN.sqrt hy.ne'
  exact hb.mul ((hc.div hs (Real.sqrt_pos.2 hy).ne').pow m)

def bigF {ι : Type} [Fintype ι] (i₀ : ι) (m : ℕ) (δ : ℝ) (hδ : 0 < δ) (y : ι → ℝ) : ℝ :=
  phi0 (sqSum y) * angular i₀ m δ hδ y

def smallF (m : ℕ) (t : ℝ) : ℝ := phi0 (t ^ 2) * (t / Real.sqrt (t ^ 2)) ^ m

theorem smallF_contDiff (m : ℕ) : ContDiff ℝ (⊤ : ℕ∞) (smallF m) := by
  refine contDiff_mul_of_vanish (N := fun t : ℝ => t ^ 2) (contDiff_id.pow 2) bumpProfile_contDiff
    bumpProfile_eq_zero_of_lt_half (H := fun t => (t / Real.sqrt (t ^ 2)) ^ m) ?_
  intro y hy
  have hN : ContDiffAt ℝ (⊤ : ℕ∞) (fun t : ℝ => t ^ 2) y := (contDiff_id.pow 2).contDiffAt
  exact (contDiffAt_id.div (hN.sqrt hy.ne') (Real.sqrt_pos.2 hy).ne').pow m

theorem smallF_compact (m : ℕ) : HasCompactSupport (smallF m) := by
  refine HasCompactSupport.intro (isCompact_closedBall (0 : ℝ) 2) ?_
  intro t ht
  have hn : (2 : ℝ) < |t| := by simpa [mem_closedBall_zero_iff] using ht
  have h4 : (2 : ℝ) ^ 2 < t ^ 2 := by
    rw [← sq_abs t]
    exact pow_lt_pow_left₀ hn (by norm_num) (by norm_num)
  simp [smallF, bumpProfile_eq_zero_of_two_lt (t ^ 2) (by linarith)]

theorem bigF_unit {ι : Type} [Fintype ι] (i₀ : ι) (m : ℕ) (δ : ℝ) (hδ : 0 < δ) (v : ι → ℝ)
    (hv : sqSum v = 1) : bigF i₀ m δ hδ v = bumpAt δ hδ (v i₀ ^ 2) * v i₀ ^ m := by
  simp [bigF, angular, hv, bumpProfile_one]

theorem bigF_smul {ι : Type} [Fintype ι] (i₀ : ι) (m : ℕ) (δ : ℝ) (hδ : 0 < δ) (v : ι → ℝ)
    (hv : sqSum v = 1) (t : ℝ) :
    bigF i₀ m δ hδ (t • v) = smallF m t * bigF i₀ m δ hδ v := by
  rw [bigF_unit i₀ m δ hδ v hv]
  have hN : sqSum (t • v) = t ^ 2 := by rw [sqSum_smul, hv, mul_one]
  by_cases ht : t = 0
  · subst ht
    have h0 : sqSum (0 : ι → ℝ) = 0 := by simp [sqSum]
    simp [bigF, smallF, h0, bumpProfile_eq_zero_of_lt_half 0 (by norm_num)]
  · have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
    have hq : (t • v) i₀ ^ 2 / sqSum (t • v) = v i₀ ^ 2 := by
      rw [hN, Pi.smul_apply, smul_eq_mul, mul_pow]
      field_simp
    have hr : (t • v) i₀ / Real.sqrt (sqSum (t • v)) = t / Real.sqrt (t ^ 2) * v i₀ := by
      rw [hN, Pi.smul_apply, smul_eq_mul]
      ring
    simp only [bigF, angular, smallF]
    rw [hq, hr, hN, mul_pow]
    ring

theorem realBump : RealBump := by
  intro ι _ _ i₀ m δ hδ
  have hone : sqSum (Pi.single i₀ (1 : ℝ) : ι → ℝ) = 1 := by
    unfold sqSum
    rw [Finset.sum_eq_single i₀]
    · simp
    · intro j _ hj
      simp [Pi.single_eq_of_ne hj]
    · simp
  refine ⟨bigF i₀ m δ hδ, smallF m, ?_, ?_, smallF_contDiff m, smallF_compact m, ?_, ?_, ?_, ?_, ?_⟩
  · exact contDiff_mul_of_vanish sqSum_contDiff bumpProfile_contDiff bumpProfile_eq_zero_of_lt_half
      (angular_contDiffAt i₀ m δ hδ)
  · refine hasCompactSupport_of_sqSum fun y hy => ?_
    simp [bigF, bumpProfile_eq_zero_of_two_lt _ hy]
  · rw [bigF_unit i₀ m δ hδ _ hone]
    simp [bumpAt_one]
  · simp [smallF, bumpProfile_one]
  · intro t ht
    refine mul_nonneg phi0.nonneg (pow_nonneg (div_nonneg ht (Real.sqrt_nonneg _)) m)
  · intro t
    simp only [smallF, neg_sq, neg_div, neg_pow t]
    ring_nf
  · intro v hv
    have hv' : sqSum v = 1 := hv
    refine ⟨bigF_smul i₀ m δ hδ v hv', ?_, ?_⟩
    · intro h
      rw [bigF_unit i₀ m δ hδ v hv'] at h
      exact bumpAt_ne δ hδ (left_ne_zero_of_mul h)
    · intro h
      rw [bigF_unit i₀ m δ hδ v hv']
      exact mul_nonneg (bumpAt δ hδ).nonneg (pow_nonneg h.le m)

end GlobalTheory.CompanionTheory.TestFun
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BumpProfileEqZeroOfLtHalf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousInfiniteIdeleInclusion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousInfiniteIdeleInclusion", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.mixedEmbedding IsDedekindDomain Matrix MeasureTheory Filter Topology
open scoped NumberField.AdeleRing SchwartzMap Classical

set_option synthInstance.maxSize 1000

namespace GlobalTheory.CompanionTheory.EisTestFun

open GroundTheory.Global GroundTheory.Automorphic GroundTheory.Global.IdeleGroup PositivityTheory.RgEis PositivityTheory.RgEis.TF

variable {k : Type} [Field k] [NumberField k]

theorem continuous_infinite_idele_inclusion :
    Continuous (ofInfinite : (InfiniteAdeleRing k)ˣ → IdeleGroup k) :=
  (ContinuousMulEquiv.symm (prodEquiv k)).continuous.comp (Continuous.prodMk_left 1)

theorem ideleModule_ofInfinite_eq (a : (InfiniteAdeleRing k)ˣ) :
    (ideleModule k (ofInfinite a) : ℝ) = ∏ w : InfinitePlace k, ‖(a : InfiniteAdeleRing k) w‖ ^ w.mult := by
  have h1 : ∀ w, ((ofInfinite a : IdeleGroup k) : 𝔸[k]).1 w = (a : InfiniteAdeleRing k) w := fun w => by
    have := congrArg (fun u : (InfiniteAdeleRing k)ˣ => (u : InfiniteAdeleRing k) w) (toInfinite_ofInfinite a)
    exact this
  have h2 : ∀ v, ((ofInfinite a : IdeleGroup k) : 𝔸[k]).2 v = 1 := fun v => by
    have := congrArg (fun u : (FiniteAdeleRing (𝓞 k) k)ˣ => (u : FiniteAdeleRing (𝓞 k) k) v) (toFinite_ofInfinite a)
    exact this
  rw [ideleModule_eq]
  simp only [h1, h2, norm_one, finprod_one, mul_one]

theorem exists_norm_rd_le (φ : 𝓢(Unit → mixedSpace k, ℂ)) (K : ℕ) :
    ∃ C, 0 ≤ C ∧ ∀ x : InfiniteAdeleRing k,
      ‖rd φ (fun _ => x)‖ ≤ C * ∏ w, ((1 + ‖x w‖) ^ K)⁻¹ := by
  let e : mixedSpace k ≃L[ℝ] (Unit → mixedSpace k) :=
    (ContinuousLinearEquiv.funUnique Unit ℝ (mixedSpace k)).symm
  obtain ⟨C, hC, h⟩ := exists_norm_schwartz_le_prod (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ e φ) K
  refine ⟨C, hC, fun x => ?_⟩
  have hx := h x
  have he : (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ e φ) (homeomorphMixedSpace k x) =
      rd φ (fun _ => x) := by
    simp only [SchwartzMap.compCLMOfContinuousLinearEquiv_apply, Function.comp, rd]
    congr 1
  rwa [he] at hx

theorem module_rpow_eq (a : (InfiniteAdeleRing k)ˣ) (x : ℝ) :
    (ideleModule k (ofInfinite a) : ℝ) ^ x =
      ∏ w : InfinitePlace k, ‖(a : InfiniteAdeleRing k) w‖ ^ ((w.mult : ℝ) * x) := by
  rw [ideleModule_ofInfinite_eq, ← Real.finsetProd_rpow _ _ (fun w _ => by positivity)]
  refine Finset.prod_congr rfl fun w _ => ?_
  rw [Real.rpow_mul (norm_nonneg _), Real.rpow_natCast]

theorem integrable_norm_rd_mul (φ : 𝓢(Unit → mixedSpace k, ℂ)) {x : ℝ} (hx : 1 < x)
    (hc : Continuous fun a : (InfiniteAdeleRing k)ˣ =>
      ‖rd φ (fun _ => (a : InfiniteAdeleRing k))‖ * (ideleModule k (ofInfinite a) : ℝ) ^ x) :
    Integrable (fun a : (InfiniteAdeleRing k)ˣ =>
      ‖rd φ (fun _ => (a : InfiniteAdeleRing k))‖ * (ideleModule k (ofInfinite a) : ℝ) ^ x)
      (infiniteIdeleMeasure k) := by
  obtain ⟨K, hK⟩ := exists_nat_gt (2 * x + 2)
  obtain ⟨C, hC, h⟩ := exists_norm_rd_le φ K
  refine Integrable.mono' ((integrable_infiniteZetaBound (K := k) hx.le hK).const_mul C)
    hc.aestronglyMeasurable (Eventually.of_forall fun a => ?_)
  have hm : 0 ≤ (ideleModule k (ofInfinite a) : ℝ) ^ x := Real.rpow_nonneg (ideleModule k (ofInfinite a)).2.le _
  rw [Real.norm_of_nonneg (mul_nonneg (norm_nonneg _) hm)]
  calc ‖rd φ (fun _ => (a : InfiniteAdeleRing k))‖ * (ideleModule k (ofInfinite a) : ℝ) ^ x
      ≤ (C * ∏ w, ((1 + ‖(a : InfiniteAdeleRing k) w‖) ^ K)⁻¹) * (ideleModule k (ofInfinite a) : ℝ) ^ x :=
        mul_le_mul_of_nonneg_right (h a) hm
    _ = C * infiniteZetaBound x K a := by
        rw [module_rpow_eq, infiniteZetaBound, mul_assoc, ← Finset.prod_mul_distrib]
        congr 1
        refine Finset.prod_congr rfl fun w _ => ?_
        rw [div_eq_mul_inv, mul_comm]

theorem zInf_ne_zero : ZInf := by
  intro k _ _ φ ω h h1 x hx
  have hc0 : Continuous fun a : (InfiniteAdeleRing k)ˣ => rd φ (fun _ => (a : InfiniteAdeleRing k)) :=
    φ.continuous.comp (continuous_pi fun _ =>
      (homeomorphMixedSpace k).continuous.comp Units.continuous_val)
  have hm0 : Continuous fun a : (InfiniteAdeleRing k)ˣ => (ideleModule k (ofInfinite a) : ℝ) :=
    continuous_subtype_val.comp (IdeleGroup.continuous_ideleModule.comp continuous_infinite_idele_inclusion)
  set f : (InfiniteAdeleRing k)ˣ → ℝ := fun a =>
    ‖rd φ (fun _ => (a : InfiniteAdeleRing k))‖ * (ideleModule k (ofInfinite a) : ℝ) ^ x with hf
  have hcf : Continuous f :=
    hc0.norm.mul (hm0.rpow_const fun _ => Or.inr (by linarith))
  have hint : Integrable f (infiniteIdeleMeasure k) := integrable_norm_rd_mul φ hx hcf
  have hnn : 0 ≤ f := fun a => mul_nonneg (norm_nonneg _)
    (Real.rpow_nonneg (ideleModule k (ofInfinite a)).2.le _)
  have hpt : ∀ a : (InfiniteAdeleRing k)ˣ,
      rd φ (fun _ => (a : InfiniteAdeleRing k)) * (ω.toIdele (ofInfinite a) : ℂ) *
        ((ideleModule k (ofInfinite a) : ℝ) : ℂ) ^ (x : ℂ) = ((f a : ℝ) : ℂ) := fun a => by
    obtain ⟨r, hr, e⟩ := h a
    have hn : r = ‖rd φ (fun _ => (a : InfiniteAdeleRing k))‖ := by
      have := congrArg norm e
      rw [norm_mul, Circle.norm_coe, mul_one, Complex.norm_real, Real.norm_of_nonneg hr] at this
      exact this.symm
    rw [e, hn, hf]
    push_cast
    rw [Complex.ofReal_cpow (ideleModule k (ofInfinite a)).2.le]
  have hz : zInf φ ω x = ((∫ a, f a ∂infiniteIdeleMeasure k : ℝ) : ℂ) := by
    rw [zInf, ← integral_complex_ofReal]
    exact integral_congr_ae (Eventually.of_forall hpt)
  have hpos : 0 < ∫ a, f a ∂infiniteIdeleMeasure k := by
    rw [integral_pos_iff_support_of_nonneg hnn hint]
    have hop : IsOpen (Function.support f) := isOpen_compl_singleton.preimage hcf
    refine hop.measure_pos _ ⟨1, ?_⟩
    have hm1 : 0 < (ideleModule k (ofInfinite (1 : (InfiniteAdeleRing k)ˣ)) : ℝ) ^ x :=
      Real.rpow_pos_of_pos (ideleModule k (ofInfinite _)).2 _
    have : f 1 ≠ 0 := by
      simp only [hf, Units.val_one]
      exact mul_ne_zero (norm_ne_zero_iff.2 h1) hm1.ne'
    exact this
  rw [hz]
  exact_mod_cast hpos.ne'

end GlobalTheory.CompanionTheory.EisTestFun
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousInfiniteIdeleInclusion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EqZeroOfForallInM =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EqZeroOfForallInM", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Topology
open PositivityTheory.RgEis PositivityTheory.RgEis.TF

namespace GlobalTheory.CompanionTheory.RgEis.InMTopPf

variable {k : Type} [Field k] [NumberField k]

theorem natCast_isUnit (M : ℕ) (hM : M ≠ 0) : IsUnit (M : FiniteAdeleRing (𝓞 k) k) := by
  have : (M : FiniteAdeleRing (𝓞 k) k) = algebraMap k _ (M : k) := by simp
  rw [this]
  exact (IsUnit.mk0 _ (by exact_mod_cast hM)).map _

theorem inM_iff (M : ℕ) (hM : M ≠ 0) (x : FiniteAdeleRing (𝓞 k) k) :
    InM M x ↔ (((natCast_isUnit (k := k) M hM).unit⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) :
      FiniteAdeleRing (𝓞 k) k) * x ∈ OH k := by
  set u := (natCast_isUnit (k := k) M hM).unit
  have hu : (u : FiniteAdeleRing (𝓞 k) k) = M := rfl
  constructor
  · rintro ⟨y, hy, rfl⟩
    rw [← hu, ← mul_assoc, Units.inv_mul, one_mul]; exact hy
  · intro h
    refine ⟨_, h, ?_⟩
    rw [← hu, ← mul_assoc, Units.mul_inv, one_mul]

theorem isOpen_isClosed (M : ℕ) (hM : M ≠ 0) :
    IsOpen {x : FiniteAdeleRing (𝓞 k) k | InM M x} ∧ IsClosed {x : FiniteAdeleRing (𝓞 k) k | InM M x} := by
  have hS : {x : FiniteAdeleRing (𝓞 k) k | InM M x} =
      (fun x => (((natCast_isUnit (k := k) M hM).unit⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) :
        FiniteAdeleRing (𝓞 k) k) * x) ⁻¹' (OH k : Set (FiniteAdeleRing (𝓞 k) k)) := by
    ext x; exact inM_iff M hM x
  have hc : Continuous (fun x : FiniteAdeleRing (𝓞 k) k =>
      (((natCast_isUnit (k := k) M hM).unit⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) * x) :=
    continuous_const.mul continuous_id
  have ho : IsOpen (OH k : Set (FiniteAdeleRing (𝓞 k) k)) := GroundTheory.Global.isOpen_integralFiniteAdeles
  rw [hS]
  exact ⟨ho.preimage hc, (AddSubgroup.isClosed_of_isOpen (OH k).toAddSubgroup ho).preimage hc⟩

theorem exists_pow_lt' {c a : WithZero (Multiplicative ℤ)} (ha : a ≠ 0) (hc : c < 1) : ∃ n : ℕ, c ^ n < a := by
  rcases eq_or_ne c 0 with rfl | hc0
  · exact ⟨1, by simpa using (zero_lt_iff.mpr ha)⟩
  obtain ⟨α, rfl⟩ := WithZero.ne_zero_iff_exists.mp hc0
  obtain ⟨β, rfl⟩ := WithZero.ne_zero_iff_exists.mp ha
  have hα : Multiplicative.toAdd α < 0 := by
    have h1 : ((α : WithZero (Multiplicative ℤ))) < ((1 : Multiplicative ℤ) : WithZero (Multiplicative ℤ)) := by
      simpa using hc
    rw [WithZero.coe_lt_coe] at h1
    exact h1
  refine ⟨(Multiplicative.toAdd β).natAbs + 1, ?_⟩
  rw [← WithZero.coe_pow, WithZero.coe_lt_coe]
  show Multiplicative.toAdd (α ^ ((Multiplicative.toAdd β).natAbs + 1)) < Multiplicative.toAdd β
  rw [toAdd_pow, nsmul_eq_mul]
  set a := Multiplicative.toAdd α
  set b := Multiplicative.toAdd β
  have ha1 : a ≤ -1 := by omega
  have h3 : (((b.natAbs + 1 : ℕ) : ℤ)) * a ≤ -(((b.natAbs + 1 : ℕ) : ℤ)) := by
    have : (0 : ℤ) ≤ ((b.natAbs + 1 : ℕ) : ℤ) := by positivity
    nlinarith
  push_cast at h3 ⊢
  have h4 := neg_abs_le b
  linarith

theorem natCast_apply' (v : HeightOneSpectrum (𝓞 k)) (M : ℕ) :
    (M : FiniteAdeleRing (𝓞 k) k) v = (M : v.adicCompletion k) := by
  rw [← map_natCast (algebraMap k (FiniteAdeleRing (𝓞 k) k)) M, FiniteAdeleRing.algebraMap_apply]
  exact map_natCast (algebraMap k (v.adicCompletion k)) M

theorem valued_natCast (v : HeightOneSpectrum (𝓞 k)) (n : ℕ) :
    Valued.v (n : v.adicCompletion k) = v.intValuation (n : 𝓞 k) := by
  have := HeightOneSpectrum.valuedAdicCompletion_eq_valuation (K := k) v (n : 𝓞 k)
  rw [HeightOneSpectrum.valuation_of_algebraMap] at this
  rw [← this]
  congr 1
  simp

theorem eq_zero_of_forall_inM (x : FiniteAdeleRing (𝓞 k) k) (hx : ∀ M : ℕ, M ≠ 0 → InM M x) : x = 0 := by
  refine Subtype.ext (funext fun v => ?_)
  change x v = 0
  by_contra hxv
  set N : ℕ := Ideal.absNorm v.asIdeal with hN
  have hN0 : N ≠ 0 := by
    rw [hN, Ne, Ideal.absNorm_eq_zero_iff]; exact v.ne_bot
  have hNmem : (N : 𝓞 k) ∈ v.asIdeal := Ideal.absNorm_mem v.asIdeal
  have hlt : v.intValuation (N : 𝓞 k) < 1 := (v.intValuation_lt_one_iff_mem _).mpr hNmem
  have hxv0 : Valued.v (x v) ≠ 0 := by simpa using hxv
  obtain ⟨n, hn⟩ := exists_pow_lt' hxv0 hlt
  obtain ⟨y, hy, hxy⟩ := hx (N ^ n) (pow_ne_zero _ hN0)
  have hcomp : x v = ((N ^ n : ℕ) : v.adicCompletion k) * y v := by
    rw [hxy]
    have h1 := natCast_apply' v (N ^ n)
    change ((N ^ n : ℕ) : FiniteAdeleRing (𝓞 k) k) v * y v = _
    rw [h1]
  have hyv : Valued.v (y v) ≤ 1 := (HeightOneSpectrum.mem_adicCompletionIntegers _ _ v).mp (hy v)
  have hle : Valued.v (x v) ≤ v.intValuation (N : 𝓞 k) ^ n := by
    rw [hcomp, map_mul, valued_natCast, Nat.cast_pow, map_pow]
    exact mul_le_of_le_one_right' hyv
  exact absurd (lt_of_le_of_lt hle hn) (lt_irrefl _)

theorem inMTop : InMTop := fun k _ _ =>
  ⟨fun M hM => isOpen_isClosed M hM, fun x hx => eq_zero_of_forall_inM x hx⟩

end GlobalTheory.CompanionTheory.RgEis.InMTopPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EqZeroOfForallInM =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasCompactSupportSmallF =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasCompactSupportSmallF", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\npublic import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.RgEis PositivityTheory.RgEis.TF

noncomputable section

namespace GlobalTheory.CompanionTheory.TestBump

variable {ι : Type} [Fintype ι]

def nsq (y : ι → ℂ) : ℝ := ∑ j, ‖y j‖ ^ 2

lemma contDiff_coordSq (i : ι) {n : WithTop ℕ∞} : ContDiff ℝ n fun y : ι → ℂ => ‖y i‖ ^ 2 :=
  (contDiff_norm_sq ℝ).comp (contDiff_apply ℝ (fun _ => ℂ) i)

lemma contDiff_nsq {n : WithTop ℕ∞} : ContDiff ℝ n (nsq : (ι → ℂ) → ℝ) :=
  ContDiff.sum fun j _ => contDiff_coordSq j

lemma coordSq_le_nsq (y : ι → ℂ) (i : ι) : ‖y i‖ ^ 2 ≤ nsq y :=
  Finset.single_le_sum (f := fun j => ‖y j‖ ^ 2) (fun _ _ => by positivity) (Finset.mem_univ i)

lemma nsq_smul (t : ℂ) (v : ι → ℂ) : nsq (t • v) = ‖t‖ ^ 2 * nsq v := by
  simp only [nsq, Pi.smul_apply, smul_eq_mul, norm_mul, mul_pow, Finset.mul_sum]

def radial : ContDiffBump (1 : ℝ) := ⟨1 / 4, 1 / 2, by norm_num, by norm_num⟩

lemma radial_one : radial 1 = 1 :=
  radial.one_of_mem_closedBall (Metric.mem_closedBall_self radial.rIn_pos.le)

lemma radial_zero_of_le {x : ℝ} (h : x ≤ 1 / 2) : radial x = 0 := by
  refine radial.zero_of_le_dist ?_
  rw [Real.dist_eq, abs_of_nonpos (by linarith)]
  change (1 / 2 : ℝ) ≤ _
  linarith

lemma radial_zero_of_ge {x : ℝ} (h : 3 / 2 ≤ x) : radial x = 0 := by
  refine radial.zero_of_le_dist ?_
  rw [Real.dist_eq, abs_of_nonneg (by linarith)]
  change (1 / 2 : ℝ) ≤ _
  linarith

def angular {δ : ℝ} (hδ : 0 < δ) : ContDiffBump (1 : ℝ) :=
  ⟨δ / 2, δ, by positivity, by linarith⟩

lemma angular_one {δ : ℝ} (hδ : 0 < δ) : angular hδ 1 = 1 :=
  (angular hδ).one_of_mem_closedBall (Metric.mem_closedBall_self (angular hδ).rIn_pos.le)

lemma lt_of_angular_ne {δ : ℝ} (hδ : 0 < δ) {x : ℝ} (h : angular hδ x ≠ 0) : 1 - δ < x := by
  by_contra hx
  refine h ((angular hδ).zero_of_le_dist ?_)
  rw [Real.dist_eq, abs_of_nonpos (by linarith [not_lt.1 hx])]
  change δ ≤ _
  linarith [not_lt.1 hx]

def bigF (i₀ : ι) {δ : ℝ} (hδ : 0 < δ) (y : ι → ℂ) : ℝ :=
  radial (nsq y) * angular hδ (‖y i₀‖ ^ 2 / nsq y)

def smallF (t : ℂ) : ℝ := radial (‖t‖ ^ 2)

lemma contDiff_bigF (i₀ : ι) {δ : ℝ} (hδ : 0 < δ) {n : ℕ∞} :
    ContDiff ℝ (n : WithTop ℕ∞) (bigF i₀ hδ) := by
  rw [contDiff_iff_contDiffAt]
  intro y
  by_cases h : 0 < nsq y
  · exact (radial.contDiff.contDiffAt.comp y contDiff_nsq.contDiffAt).mul
      ((angular hδ).contDiff.contDiffAt.comp y
        ((contDiff_coordSq i₀).contDiffAt.div contDiff_nsq.contDiffAt h.ne'))
  · have h0 : nsq y < 1 / 2 := by linarith [not_lt.1 h]
    refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
    filter_upwards [(contDiff_nsq (n := 0)).continuous.continuousAt.eventually (gt_mem_nhds h0)] with z hz
    simp [bigF, radial_zero_of_le (le_of_lt hz)]

lemma hasCompactSupport_bigF (i₀ : ι) {δ : ℝ} (hδ : 0 < δ) :
    HasCompactSupport (bigF i₀ hδ) := by
  refine HasCompactSupport.intro (isCompact_closedBall (0 : ι → ℂ) 2) fun y hy => ?_
  by_contra hne
  have hr : radial (nsq y) ≠ 0 := fun h => hne (by simp [bigF, h])
  have hlt : nsq y < 3 / 2 := by
    by_contra hge
    exact hr (radial_zero_of_ge (not_lt.1 hge))
  refine hy ?_
  rw [mem_closedBall_zero_iff, pi_norm_le_iff_of_nonneg (by norm_num)]
  intro i
  have := coordSq_le_nsq y i
  nlinarith [norm_nonneg (y i)]

lemma contDiff_smallF {n : ℕ∞} : ContDiff ℝ (n : WithTop ℕ∞) smallF :=
  radial.contDiff.comp (contDiff_norm_sq ℝ)

lemma hasCompactSupport_smallF : HasCompactSupport smallF := by
  refine HasCompactSupport.intro (isCompact_closedBall (0 : ℂ) 2) fun t ht => ?_
  refine radial_zero_of_ge ?_
  have : 2 < ‖t‖ := by simpa using ht
  nlinarith

end GlobalTheory.CompanionTheory.TestBump


open GlobalTheory.CompanionTheory.TestBump in
theorem GlobalTheory.CompanionTheory.TestBump.cplxBump : CplxBump := by
  classical
  intro ι _ _ i₀ δ hδ
  refine ⟨bigF i₀ hδ, smallF, contDiff_bigF i₀ hδ, hasCompactSupport_bigF i₀ hδ, contDiff_smallF,
    hasCompactSupport_smallF, ?_, ?_, fun t => radial.nonneg, fun v => mul_nonneg radial.nonneg (angular hδ).nonneg, ?_⟩
  · have h1 : nsq (Pi.single i₀ 1 : ι → ℂ) = 1 := by
      simp only [nsq]
      rw [Finset.sum_eq_single i₀]
      · simp
      · intro j _ hj
        simp [Pi.single_eq_of_ne hj]
      · simp
    simp [bigF, h1, radial_one, angular_one]
  · intro t ht
    simp [smallF, ht, radial_one]
  · intro v hv
    have hv1 : nsq v = 1 := hv
    have hFv : bigF i₀ hδ v = angular hδ (‖v i₀‖ ^ 2) := by
      simp [bigF, hv1, radial_one]
    refine ⟨fun t => ?_, fun h => ?_⟩
    · rw [hFv]
      by_cases ht : t = 0
      · subst ht
        have hz : radial (0 : ℝ) = 0 := radial_zero_of_le (by norm_num)
        simp [bigF, smallF, nsq, hz]
      · have hn : nsq (t • v) = ‖t‖ ^ 2 := by rw [nsq_smul, hv1, mul_one]
        have ht2 : ‖t‖ ^ 2 ≠ 0 := by positivity
        simp only [bigF, smallF, hn, Pi.smul_apply, smul_eq_mul, norm_mul, mul_pow]
        rw [mul_div_cancel_left₀ _ ht2]
    · exact lt_of_angular_ne hδ (by rwa [hFv] at h)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasCompactSupportSmallF =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdeleModuleOfFiniteEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdeleModuleOfFiniteEq", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open scoped NumberField.AdeleRing nonZeroDivisors

set_option synthInstance.maxSize 1000

namespace GlobalTheory.CompanionTheory.EisTF

open PositivityTheory.RgEis PositivityTheory.RgEis.TF GroundTheory.Global GroundTheory.Automorphic GroundTheory.Global.IdeleGroup

variable {k : Type} [Field k] [NumberField k]

theorem ideleModule_ofFinite_eq (b : (FiniteAdeleRing (𝓞 k) k)ˣ) :
    (ideleModule k (ofFinite b) : ℝ) = finiteModule (ofFinite b) := by
  have h : infiniteModule (ofFinite b : IdeleGroup k) = 1 :=
    Finset.prod_eq_one fun w _ ↦ by
      rw [show ((ofFinite b : IdeleGroup k) : 𝔸[k]).1 w = 1 from rfl, norm_one, one_pow]
  rw [ideleModule_apply, h, one_mul]

theorem norm_le_one_of_mem_OH {b : (FiniteAdeleRing (𝓞 k) k)ˣ}
    (hb : (b : FiniteAdeleRing (𝓞 k) k) ∈ OH k) (v : HeightOneSpectrum (𝓞 k)) :
    ‖(b : FiniteAdeleRing (𝓞 k) k) v‖ ≤ 1 :=
  (Valued.toNormedField.norm_le_one_iff).2
    ((HeightOneSpectrum.mem_adicCompletionIntegers (R := 𝓞 k) k v).1
      (mem_integralFiniteAdeles.1 hb v))

theorem finiteModule_le_one {b : (FiniteAdeleRing (𝓞 k) k)ˣ}
    (hb : (b : FiniteAdeleRing (𝓞 k) k) ∈ OH k) : finiteModule (ofFinite b) ≤ 1 := by
  rw [finiteModule, finprod_eq_prod _ (finite_mulSupport_norm _)]
  exact Finset.prod_le_one₀ (fun _ _ ↦ norm_nonneg _) fun v _ ↦ norm_le_one_of_mem_OH hb v

theorem finiteModule_lt_one {b : (FiniteAdeleRing (𝓞 k) k)ˣ}
    (hb : (b : FiniteAdeleRing (𝓞 k) k) ∈ OH k) (hu : b ∉ finiteIntegralUnits k) :
    finiteModule (ofFinite b) < 1 := by
  classical
  obtain ⟨v, hv⟩ : ∃ v : HeightOneSpectrum (𝓞 k), ‖(b : FiniteAdeleRing (𝓞 k) k) v‖ < 1 := by
    by_contra hcon
    push_neg at hcon
    refine hu ((mem_finiteIntegralUnits k).2 fun v ↦ ⟨mem_integralFiniteAdeles.1 hb v, ?_⟩)
    have hv1 : ‖(b : FiniteAdeleRing (𝓞 k) k) v‖ = 1 :=
      le_antisymm (norm_le_one_of_mem_OH hb v) (hcon v)
    have hmul : (b : FiniteAdeleRing (𝓞 k) k) v *
        ((b⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) v = 1 :=
      congrArg (fun a : FiniteAdeleRing (𝓞 k) k ↦ a v) (Units.mul_inv b)
    have hn : ‖((b⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) v‖ = 1 := by
      have := congrArg norm hmul
      rwa [norm_mul, hv1, one_mul, norm_one] at this
    exact (HeightOneSpectrum.mem_adicCompletionIntegers (R := 𝓞 k) k v).2
      ((Valued.toNormedField.norm_le_one_iff).1 hn.le)
  have hfin := finite_mulSupport_norm (ofFinite b : IdeleGroup k)
  have hvS : v ∈ hfin.toFinset := by
    rw [Set.Finite.mem_toFinset, Function.mem_mulSupport]
    exact hv.ne
  rw [finiteModule, finprod_eq_prod _ hfin, ← Finset.mul_prod_erase _ _ hvS]
  calc _ ≤ ‖((ofFinite b : IdeleGroup k) : 𝔸[k]).2 v‖ * 1 :=
        mul_le_mul_of_nonneg_left
          (Finset.prod_le_one₀ (fun _ _ ↦ norm_nonneg _) fun u _ ↦ norm_le_one_of_mem_OH hb u)
          (norm_nonneg _)
    _ < 1 := by rwa [mul_one]

def integrand (g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ) (ω : HeckeCharacter k) (n : ℕ)
    (b : (FiniteAdeleRing (𝓞 k) k)ˣ) : ℂ :=
  g (fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k)) * (ω.toIdele (ofFinite b) : ℂ) *
    ((ideleModule k (ofFinite b) : ℝ) : ℂ) ^ (((n : ℝ) : ℝ) : ℂ)

theorem cpow_module_eq (b : (FiniteAdeleRing (𝓞 k) k)ˣ) (x : ℝ) :
    ((ideleModule k (ofFinite b) : ℝ) : ℂ) ^ (x : ℂ) = ((finiteModule (ofFinite b) ^ x : ℝ) : ℂ) := by
  rw [ideleModule_ofFinite_eq, Complex.ofReal_cpow (finiteModule_pos _).le]

theorem norm_integrand (g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ) (ω : HeckeCharacter k) (n : ℕ)
    (b : (FiniteAdeleRing (𝓞 k) k)ˣ) :
    ‖integrand g ω n b‖ = ‖g fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k)‖ *
      finiteModule (ofFinite b) ^ (n : ℝ) := by
  rw [integrand, cpow_module_eq, norm_mul, norm_mul, Circle.norm_coe, mul_one, Complex.norm_real,
    Real.norm_of_nonneg (Real.rpow_nonneg (finiteModule_pos _).le _)]

theorem continuous_integrand {g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ}
    (hg : g ∈ GJMatrix.finiteSchwartzBruhatPi k) (ω : HeckeCharacter k) (n : ℕ) :
    Continuous (integrand g ω n) := by
  have h1 : Continuous fun b : (FiniteAdeleRing (𝓞 k) k)ˣ ↦
      g fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k) :=
    ((GJMatrix.mem_finiteSchwartzBruhatPi k).1 hg).1.continuous.comp
      (continuous_pi fun _ ↦ Units.continuous_val)
  have h2 : Continuous fun b : (FiniteAdeleRing (𝓞 k) k)ˣ ↦ (ω.toIdele (ofFinite b) : ℂ) :=
    continuous_subtype_val.comp (ω.continuous_toIdele.comp continuous_ofFinite)
  have h3 : Continuous fun b : (FiniteAdeleRing (𝓞 k) k)ˣ ↦
      ((finiteModule (ofFinite b) ^ (n : ℝ) : ℝ) : ℂ) :=
    Complex.continuous_ofReal.comp
      ((continuous_finiteModule.comp continuous_ofFinite).rpow_const
        fun b ↦ Or.inl (finiteModule_pos _).ne')
  have : integrand g ω n = fun b : (FiniteAdeleRing (𝓞 k) k)ˣ ↦ g (fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k)) *
      (ω.toIdele (ofFinite b) : ℂ) * ((finiteModule (ofFinite b) ^ (n : ℝ) : ℝ) : ℂ) := by
    funext b
    rw [integrand, cpow_module_eq]
  rw [this]
  exact (h1.mul h2).mul h3

theorem norm_integrand_le {g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ} (ω : HeckeCharacter k)
    (hb : ∀ t, ‖g fun _ ↦ t‖ ≤ 1 ∧ (g (fun _ ↦ t) ≠ 0 → t ∈ OH k)) {n : ℕ} (hn : 2 ≤ n)
    (b : (FiniteAdeleRing (𝓞 k) k)ˣ) :
    ‖integrand g ω n b‖ ≤ finiteZetaBound (1 : (FractionalIdeal (𝓞 k)⁰ k)ˣ) 2 b := by
  rw [norm_integrand]
  by_cases h0 : g (fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k)) = 0
  · rw [h0, norm_zero, zero_mul]
    exact finiteZetaBound_nonneg _ _ _
  have hO := (hb _).2 h0
  have hL : (b : FiniteAdeleRing (𝓞 k) k) ∈ idealFiniteAdeles (1 : (FractionalIdeal (𝓞 k)⁰ k)ˣ) := by
    rw [← SetLike.mem_coe, idealFiniteAdeles_one]
    exact hO
  rw [finiteZetaBound, if_pos hL]
  have hpow : finiteModule (ofFinite b) ^ (n : ℝ) ≤ finiteModule (ofFinite b) ^ (2 : ℝ) :=
    Real.rpow_le_rpow_of_exponent_ge (finiteModule_pos _) (finiteModule_le_one hO)
      (by exact_mod_cast hn)
  calc _ ≤ 1 * finiteModule (ofFinite b) ^ (n : ℝ) :=
        mul_le_mul_of_nonneg_right (hb _).1 (Real.rpow_nonneg (finiteModule_pos _).le _)
    _ ≤ _ := by rwa [one_mul]

theorem tendsto_integrand {g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ} {ω : HeckeCharacter k}
    (hb : ∀ t, ‖g fun _ ↦ t‖ ≤ 1 ∧ (g (fun _ ↦ t) ≠ 0 → t ∈ OH k))
    (hu : ∀ u ∈ finiteIntegralUnits k,
      g (fun _ ↦ (u : FiniteAdeleRing (𝓞 k) k)) * (ω.toIdele (ofFinite u) : ℂ) = 1)
    (b : (FiniteAdeleRing (𝓞 k) k)ˣ) :
    Tendsto (fun n ↦ integrand g ω n b) atTop
      (𝓝 (((finiteIntegralUnits k : Subgroup (FiniteAdeleRing (𝓞 k) k)ˣ) :
        Set (FiniteAdeleRing (𝓞 k) k)ˣ).indicator (fun _ ↦ (1 : ℂ)) b)) := by
  by_cases hW : b ∈ finiteIntegralUnits k
  · rw [Set.indicator_of_mem (SetLike.mem_coe.2 hW)]
    have hm : finiteModule (ofFinite b : IdeleGroup k) = 1 := finiteModule_eq_one_of_mem hW
    refine tendsto_const_nhds.congr fun n ↦ ?_
    rw [integrand, cpow_module_eq, hu b hW, hm, Real.one_rpow, Complex.ofReal_one, one_mul]
  · rw [Set.indicator_of_notMem (fun h ↦ hW (SetLike.mem_coe.1 h))]
    by_cases h0 : g (fun _ ↦ (b : FiniteAdeleRing (𝓞 k) k)) = 0
    · refine tendsto_const_nhds.congr fun n ↦ ?_
      rw [integrand, h0, zero_mul, zero_mul]
    have hlt := finiteModule_lt_one ((hb _).2 h0) hW
    refine squeeze_zero_norm (a := fun n : ℕ ↦ finiteModule (ofFinite b) ^ n) (fun n ↦ ?_)
      (tendsto_pow_atTop_nhds_zero_of_lt_one (finiteModule_pos _).le hlt)
    rw [norm_integrand, Real.rpow_natCast]
    calc _ ≤ 1 * finiteModule (ofFinite b) ^ n :=
          mul_le_mul_of_nonneg_right (hb _).1 (pow_nonneg (finiteModule_pos _).le _)
      _ = _ := one_mul _

theorem zFinLim : ZFinLim := by
  intro k _ _ g ω hg hb hu B
  have hlim : Tendsto (fun n : ℕ ↦ ∫ b, integrand g ω n b ∂finiteIdeleMeasure k) atTop
      (𝓝 (∫ b, ((finiteIntegralUnits k : Subgroup (FiniteAdeleRing (𝓞 k) k)ˣ) :
        Set (FiniteAdeleRing (𝓞 k) k)ˣ).indicator (fun _ ↦ (1 : ℂ)) b ∂finiteIdeleMeasure k)) :=
    tendsto_integral_filter_of_dominated_convergence
      (finiteZetaBound (1 : (FractionalIdeal (𝓞 k)⁰ k)ˣ) 2)
      (Eventually.of_forall fun n ↦ (continuous_integrand hg ω n).aestronglyMeasurable)
      ((eventually_ge_atTop 2).mono fun n hn ↦ Eventually.of_forall (norm_integrand_le ω hb hn))
      (integrable_finiteZetaBound 1 (by norm_num))
      (Eventually.of_forall (tendsto_integrand hb hu))
  have hval : (∫ b, ((finiteIntegralUnits k : Subgroup (FiniteAdeleRing (𝓞 k) k)ˣ) :
      Set (FiniteAdeleRing (𝓞 k) k)ˣ).indicator (fun _ ↦ (1 : ℂ)) b ∂finiteIdeleMeasure k) = 1 := by
    rw [integral_indicator_const _ (isOpen_finiteIntegralUnits k).measurableSet, Measure.real,
      finiteIdeleMeasure_finiteIntegralUnits]
    simp
  rw [hval] at hlim
  obtain ⟨n, hn, hB⟩ := ((hlim.eventually_ne one_ne_zero).and
    (tendsto_natCast_atTop_atTop.eventually_gt_atTop B)).exists
  exact ⟨n, hB, hn⟩

end GlobalTheory.CompanionTheory.EisTF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdeleModuleOfFiniteEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InfiniteModuleOfFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InfiniteModuleOfFinite", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open GroundTheory.Global GroundTheory.Automorphic GroundTheory.Global.IdeleGroup
open PositivityTheory.RgEis PositivityTheory.RgEis.TF

namespace GlobalTheory.CompanionTheory.EisTestFun

variable {k : Type} [Field k] [NumberField k]


theorem line_lc_cs {g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ}
    (hg : g ∈ GJMatrix.finiteSchwartzBruhatPi k) :
    IsLocallyConstant (fun t : FiniteAdeleRing (𝓞 k) k => g fun _ => t) ∧
      HasCompactSupport (fun t : FiniteAdeleRing (𝓞 k) k => g fun _ => t) := by
  obtain ⟨hlc, hcs⟩ := hg
  refine ⟨hlc.comp_continuous (continuous_pi fun _ => continuous_id), ?_⟩
  exact hcs.comp_homeomorph (Homeomorph.funUnique Unit (FiniteAdeleRing (𝓞 k) k)).symm

theorem zFinPos : ZFinPos := by
  intro K _ _ g hg hnn h1 x hx
  haveI := isHaarMeasure_finiteIdeleMeasure K
  obtain ⟨hlc, hcs⟩ := line_lc_cs hg
  obtain ⟨L, hL⟩ := exists_subset_idealFiniteAdeles hcs.isCompact
  obtain ⟨B, hB⟩ := hlc.continuous.bounded_above_of_compact_support hcs
  let G : (FiniteAdeleRing (𝓞 K) K)ˣ → ℝ := fun b => (g fun _ => (b : FiniteAdeleRing (𝓞 K) K)).re
  let F : (FiniteAdeleRing (𝓞 K) K)ˣ → ℝ := fun b => G b * finiteZetaBound L x b
  have hG0 : ∀ b, 0 ≤ G b := by
    intro b
    obtain ⟨r, hr, hgr⟩ := hnn (b : FiniteAdeleRing (𝓞 K) K)
    simp only [G, hgr, Complex.ofReal_re]
    exact hr
  have hGc : Continuous G :=
    Complex.continuous_re.comp (hlc.continuous.comp Units.continuous_val)
  have hGB : ∀ b, ‖G b‖ ≤ B := by
    intro b
    rw [Real.norm_eq_abs]
    exact (Complex.abs_re_le_norm _).trans (hB _)
  have hint : Integrable F (finiteIdeleMeasure K) :=
    (integrable_finiteZetaBound L hx).bdd_mul hGc.aestronglyMeasurable
      (Filter.Eventually.of_forall hGB)
  have hF0 : 0 ≤ F := fun b => mul_nonneg (hG0 b) (finiteZetaBound_nonneg L x b)
  have hzero : ∀ b : (FiniteAdeleRing (𝓞 K) K)ˣ,
      (b : FiniteAdeleRing (𝓞 K) K) ∉ idealFiniteAdeles L →
        (g fun _ => (b : FiniteAdeleRing (𝓞 K) K)) = 0 := by
    intro b hb
    by_contra hne
    exact hb (hL (subset_tsupport _ hne))
  have heq : ∀ b : (FiniteAdeleRing (𝓞 K) K)ˣ,
      (g fun _ => (b : FiniteAdeleRing (𝓞 K) K)) * ((1 : HeckeCharacter K).toIdele (ofFinite b) : ℂ) *
        ((ideleModule K (ofFinite b) : ℝ) : ℂ) ^ (x : ℂ) = ((F b : ℝ) : ℂ) := by
    intro b
    have hc : ((1 : HeckeCharacter K).toIdele (ofFinite b) : ℂ) = 1 := by
      rw [HeckeCharacter.toIdele_apply]
      rfl
    rw [hc, mul_one, GlobalTheory.CompanionTheory.EisTF.ideleModule_ofFinite_eq]
    simp only [F, G, finiteZetaBound]
    split_ifs with hb
    · obtain ⟨r, hr, hgr⟩ := hnn (b : FiniteAdeleRing (𝓞 K) K)
      rw [hgr, Complex.ofReal_re, Complex.ofReal_mul,
        Complex.ofReal_cpow (finiteModule_pos _).le]
    · rw [hzero b hb]
      simp
  have hI : zFin g 1 (x : ℂ) = ((∫ b, F b ∂finiteIdeleMeasure K : ℝ) : ℂ) := by
    unfold zFin
    exact (integral_congr_ae (Filter.Eventually.of_forall heq)).trans integral_complex_ofReal
  let U : Set (FiniteAdeleRing (𝓞 K) K)ˣ :=
    {b | (g fun _ => (b : FiniteAdeleRing (𝓞 K) K)) = g fun _ => 1}
  have hUo : IsOpen U := (hlc.comp_continuous Units.continuous_val).isOpen_fiber _
  have h1U : (1 : (FiniteAdeleRing (𝓞 K) K)ˣ) ∈ U := by
    show (g fun _ => ((1 : (FiniteAdeleRing (𝓞 K) K)ˣ) : FiniteAdeleRing (𝓞 K) K)) = g fun _ => 1
    rw [Units.val_one]
  obtain ⟨r, hr, hgr⟩ := hnn 1
  have hr0 : 0 < r := by
    refine lt_of_le_of_ne hr ?_
    rintro rfl
    exact h1 (by rw [hgr, Complex.ofReal_zero])
  have hUsub : U ⊆ Function.support F := by
    intro b hb
    have hgb : (g fun _ => (b : FiniteAdeleRing (𝓞 K) K)) = r := (show _ = _ from hb).trans hgr
    have hmem : (b : FiniteAdeleRing (𝓞 K) K) ∈ idealFiniteAdeles L := by
      by_contra hn
      have h0 := hzero b hn
      rw [hgb] at h0
      exact hr0.ne' (by exact_mod_cast h0)
    rw [Function.mem_support]
    simp only [F, G, finiteZetaBound, if_pos hmem, hgb, Complex.ofReal_re]
    exact (mul_pos hr0 (Real.rpow_pos_of_pos (finiteModule_pos _) _)).ne'
  have hpos : 0 < finiteIdeleMeasure K (Function.support F) :=
    (hUo.measure_pos _ ⟨1, h1U⟩).trans_le (measure_mono hUsub)
  rw [hI, Complex.ofReal_ne_zero]
  exact ((integral_pos_iff_support_of_nonneg hF0 hint).2 hpos).ne'

end GlobalTheory.CompanionTheory.EisTestFun
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InfiniteModuleOfFinite =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemOHOfMemIntAd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemOHOfMemIntAd", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix Topology
open scoped NumberField.AdeleRing

namespace GlobalTheory.CompanionTheory.EisCol

open PositivityTheory.RgEis PositivityTheory.RgEis.TF GroundTheory.Global GroundTheory.Automorphic GroundTheory.Automorphic.Reduction GroundTheory.Global.IdeleGroup

variable {k : Type} [Field k] [NumberField k] {ι : Type} [Fintype ι] [DecidableEq ι]

theorem col_apply (i₀ : ι) (κ : GL ι 𝔸[k]) (j : ι) :
    TF.col i₀ κ j = ((κ⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) j i₀ := by
  unfold TF.col
  rw [Matrix.mulVec_single_one]
  rfl

def finPart : 𝔸[k] →+* FiniteAdeleRing (𝓞 k) k := RingHom.snd _ _

theorem mem_OH_of_mem_intAd {x : 𝔸[k]} (hx : x ∈ intAd k) : x.2 ∈ OH k := by
  rw [mem_integralFiniteAdeles]
  intro v
  have := (Subring.mem_iInf.1 hx) v
  exact this

theorem sum_norm_sq {g : GL ι 𝔸[k]} {w : InfinitePlace k}
    (hg : (g : Matrix ι ι 𝔸[k]).map ((adStd k).φ w) ∈ Matrix.unitaryGroup ι ℂ) (i₀ : ι) :
    ∑ j, ‖((g : Matrix ι ι 𝔸[k]) j i₀).1 w‖ ^ 2 = 1 := by
  have h := congrFun (congrFun (Matrix.mem_unitaryGroup_iff'.1 hg) i₀) i₀
  rw [Matrix.mul_apply, Matrix.one_apply_eq] at h
  have h2 : ∀ j, (star ((g : Matrix ι ι 𝔸[k]).map ((adStd k).φ w))) i₀ j *
      ((g : Matrix ι ι 𝔸[k]).map ((adStd k).φ w)) j i₀ =
      ((‖((g : Matrix ι ι 𝔸[k]) j i₀).1 w‖ ^ 2 : ℝ) : ℂ) := by
    intro j
    have e : ‖(adStd k).φ w ((g : Matrix ι ι 𝔸[k]) j i₀)‖ = ‖((g : Matrix ι ι 𝔸[k]) j i₀).1 w‖ :=
      (InfinitePlace.Completion.isometry_extensionEmbedding w).norm_map_of_map_zero (map_zero _) _
    rw [← e, Matrix.star_apply, Matrix.map_apply, mul_comm, Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  simp only [h2] at h
  exact_mod_cast h

theorem stab_entry {p : GL ι 𝔸[k]} {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) {j : ι} (hj : j ≠ i₀) :
    (p : Matrix ι ι 𝔸[k]) j i₀ = 0 ∧ ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) j i₀ = 0 :=
  hp j hj i₀ rfl

theorem stab_mul_inv {p : GL ι 𝔸[k]} {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) :
    (p : Matrix ι ι 𝔸[k]) i₀ i₀ * ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) i₀ i₀ = 1 := by
  have h : ((p : Matrix ι ι 𝔸[k]) * ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k])) i₀ i₀ = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_apply_eq]
  rw [Matrix.mul_apply, Finset.sum_eq_single i₀] at h
  · exact h
  · intro j _ hj
    rw [(stab_entry hp hj).2, mul_zero]
  · intro h'
    exact absurd (Finset.mem_univ _) h'

theorem bdet_single {R : Type} [CommRing R] {p : GL ι R} {i₀ : ι} (hu : IsUnit ((p : Matrix ι ι R) i₀ i₀)) :
    ((bdet {i₀} p : Rˣ) : R) = (p : Matrix ι ι R) i₀ i₀ := by
  have key : ∀ (i₁ : DecidableEq ({i₀} : Set ι)) (i₂ : Fintype ({i₀} : Set ι)),
      @Matrix.det _ i₁ i₂ R _ ((p : Matrix ι ι R).submatrix (Subtype.val : ({i₀} : Set ι) → ι) Subtype.val) =
        (p : Matrix ι ι R) i₀ i₀ := fun i₁ i₂ =>
    @Matrix.det_eq_elem_of_subsingleton _ i₁ i₂ R _ _ _ (⟨i₀, rfl⟩ : ({i₀} : Set ι))
  unfold bdet
  split_ifs with h
  · rw [IsUnit.unit_spec, key]
  · rw [key] at h
    exact absurd hu h

theorem bdet_val {p : GL ι 𝔸[k]} {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) :
    ((bdet {i₀} p : 𝔸[k]ˣ) : 𝔸[k]) = (p : Matrix ι ι 𝔸[k]) i₀ i₀ :=
  bdet_single (IsUnit.of_mul_eq_one _ (stab_mul_inv hp))

theorem bdet_inv_val {p : GL ι 𝔸[k]} {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) :
    (((bdet {i₀} p)⁻¹ : 𝔸[k]ˣ) : 𝔸[k]) = ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) i₀ i₀ :=
  Units.inv_eq_of_mul_eq_one_right (by rw [bdet_val hp]; exact stab_mul_inv hp)

theorem col_mul {p : GL ι 𝔸[k]} {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) (κ : GL ι 𝔸[k]) :
    TF.col i₀ (p * κ) = (((bdet {i₀} p)⁻¹ : 𝔸[k]ˣ) : 𝔸[k]) • TF.col i₀ κ := by
  have h : ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) *ᵥ Pi.single i₀ 1 =
      ((((bdet {i₀} p)⁻¹ : 𝔸[k]ˣ) : 𝔸[k])) • (Pi.single i₀ 1 : ι → 𝔸[k]) := by
    ext1 j
    have e : (((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) *ᵥ Pi.single i₀ 1) j =
        ((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) j i₀ := by
      rw [Matrix.mulVec_single_one]
      rfl
    rw [e, bdet_inv_val hp, Pi.smul_apply]
    by_cases hj : j = i₀
    · subst hj
      rw [Pi.single_eq_same, smul_eq_mul, mul_one]
    · rw [(stab_entry hp hj).2, Pi.single_eq_of_ne hj, smul_zero]
  unfold TF.col
  rw [_root_.mul_inv_rev, Units.val_mul, ← Matrix.mulVec_mulVec, h, Matrix.mulVec_smul]

theorem col_continuous (i₀ : ι) : Continuous fun κ : GL ι 𝔸[k] => TF.col i₀ κ := by
  unfold TF.col
  exact (Units.continuous_coe_inv).matrix_mulVec continuous_const

theorem col_one (i₀ : ι) : TF.col (k := k) i₀ 1 = Pi.single i₀ 1 := by
  unfold TF.col
  rw [inv_one, Units.val_one, Matrix.one_mulVec]

theorem col_unitVec {κ : GL ι 𝔸[k]} (hκ : κ ∈ (adStd k).kGL ι) (i₀ : ι) :
    UnitVec (fun j => (TF.col i₀ κ j).1) := by
  intro w
  have h := sum_norm_sq ((((adStd k).kGL ι).inv_mem hκ).2 w) i₀
  refine Eq.trans (Finset.sum_congr rfl fun j _ => ?_) h
  exact congrArg (fun x : 𝔸[k] => ‖x.1 w‖ ^ 2) (col_apply i₀ κ j)

theorem col_prim {κ : GL ι 𝔸[k]} (hκ : κ ∈ (adStd k).kGL ι) (i₀ : ι) :
    Prim fun j => (TF.col i₀ κ j).2 := by
  refine ⟨fun j => ?_, fun j => ((κ : Matrix ι ι 𝔸[k]) i₀ j).2, fun j => ?_, ?_⟩
  · exact Eq.mpr (congrArg (fun x : 𝔸[k] => x.2 ∈ OH k) (col_apply i₀ κ j))
      (mem_OH_of_mem_intAd (hκ.1 j i₀).2)
  · exact mem_OH_of_mem_intAd (hκ.1 i₀ j).1
  · have h : ((κ : Matrix ι ι 𝔸[k]) * ((κ⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k])) i₀ i₀ = 1 := by
      rw [← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_apply_eq]
    rw [Matrix.mul_apply] at h
    have h2 := congrArg (finPart (k := k)) h

    rw [map_sum, map_one] at h2
    refine Eq.trans (Finset.sum_congr rfl fun j _ => ?_) h2
    rw [map_mul]
    exact congrArg (fun x : 𝔸[k] => finPart ((κ : Matrix ι ι 𝔸[k]) i₀ j) * finPart x) (col_apply i₀ κ j)

theorem bdet_split {p : GL ι 𝔸[k]} (hk : p ∈ (adStd k).kGL ι) {i₀ : ι} (hp : p ∈ stab 𝔸[k] {i₀}) :
    ∃ (a : (InfiniteAdeleRing k)ˣ) (u : (FiniteAdeleRing (𝓞 k) k)ˣ), bdet {i₀} p = ofInfinite a * ofFinite u ∧
      (∀ w, ‖(a : InfiniteAdeleRing k) w‖ = 1) ∧ u ∈ finiteIntegralUnits k := by
  refine ⟨toInfinite k (bdet {i₀} p), toFinite k (bdet {i₀} p), ?_, fun w => ?_, ?_⟩
  · rw [mul_comm, ofFinite_mul_ofInfinite]
  · have hv : ((toInfinite k (bdet {i₀} p) : (InfiniteAdeleRing k)ˣ) : InfiniteAdeleRing k) =
        ((p : Matrix ι ι 𝔸[k]) i₀ i₀).1 := by
      rw [← bdet_val hp]; rfl
    rw [hv]
    have h := sum_norm_sq (hk.2 w) i₀
    rw [Finset.sum_eq_single i₀ (fun j _ hj => by
      rw [(stab_entry hp hj).1]
      show ‖(0 : w.Completion)‖ ^ 2 = 0
      simp)
      (fun h' => absurd (Finset.mem_univ _) h')] at h
    have h0 : 0 ≤ ‖((p : Matrix ι ι 𝔸[k]) i₀ i₀).1 w‖ := norm_nonneg _
    nlinarith [h, h0, sq_nonneg (‖((p : Matrix ι ι 𝔸[k]) i₀ i₀).1 w‖ - 1)]
  · rw [mem_finiteIntegralUnits]
    intro v
    have h1 : ((toFinite k (bdet {i₀} p) : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) =
        ((p : Matrix ι ι 𝔸[k]) i₀ i₀).2 := by
      rw [← bdet_val hp]; rfl
    have h2 : (((toFinite k (bdet {i₀} p))⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) =
        (((p⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) i₀ i₀).2 := by
      rw [← bdet_inv_val hp, ← map_inv]; rfl
    rw [h1, h2]
    exact ⟨(mem_integralFiniteAdeles.1 (mem_OH_of_mem_intAd (hk.1 i₀ i₀).1)) v,
      (mem_integralFiniteAdeles.1 (mem_OH_of_mem_intAd (hk.1 i₀ i₀).2)) v⟩

theorem colLaw : ColLaw := by
  intro k _ _ ι _ _ i₀
  exact ⟨fun κ hκ => ⟨col_unitVec hκ i₀, col_prim hκ i₀⟩, col_continuous i₀, col_one i₀,
    fun p hk hp => ⟨col_mul hp, bdet_split hk hp⟩⟩

end GlobalTheory.CompanionTheory.EisCol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemOHOfMemIntAd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemStabOfInvCol =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemStabOfInvCol", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix Topology
open scoped NumberField.AdeleRing Nat

namespace GlobalTheory.CompanionTheory.RgEisSupp

open PositivityTheory.RgEis PositivityTheory.RgEis.TF

theorem col_apply {k : Type} [Field k] [NumberField k] {ι : Type} [Fintype ι] [DecidableEq ι]
    (i₀ : ι) (κ : GL ι 𝔸[k]) (r : ι) :
    TF.col i₀ κ r = ((κ⁻¹ : GL ι 𝔸[k]) : Matrix ι ι 𝔸[k]) r i₀ := by
  rw [TF.col, Matrix.mulVec_single_one]
  rfl

theorem mem_stab_of_inv_col {R : Type} [CommRing R] {ι : Type} [Fintype ι] [DecidableEq ι]
    (g : GL ι R) (i₀ : ι) (h : ∀ j, j ≠ i₀ → ((g⁻¹ : GL ι R) : Matrix ι ι R) j i₀ = 0) :
    g ∈ stab R ({i₀} : Set ι) := by
  have key : ∀ r, (g : Matrix ι ι R) r i₀ * ((g⁻¹ : GL ι R) : Matrix ι ι R) i₀ i₀ = (1 : Matrix ι ι R) r i₀ := by
    intro r
    have e : ((g : Matrix ι ι R) * ((g⁻¹ : GL ι R) : Matrix ι ι R)) = 1 := by
      rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
    rw [← e, Matrix.mul_apply]
    exact (Finset.sum_eq_single (f := fun m => (g : Matrix ι ι R) r m * ((g⁻¹ : GL ι R) : Matrix ι ι R) m i₀) i₀
      (fun m _ hm => by simp only [h m hm, mul_zero]) (fun hi => absurd (Finset.mem_univ _) hi)).symm
  show ∀ r ∉ ({i₀} : Set ι), ∀ c ∈ ({i₀} : Set ι),
    (g : Matrix ι ι R) r c = 0 ∧ ((g⁻¹ : GL ι R) : Matrix ι ι R) r c = 0
  intro r hr c hc
  obtain rfl : c = i₀ := hc
  have hr' : r ≠ c := hr
  refine ⟨?_, h r hr'⟩
  have h0 := key r
  have h1 := key c
  rw [Matrix.one_apply_ne hr'] at h0
  rw [Matrix.one_apply_eq] at h1
  calc (g : Matrix ι ι R) r c
      = (g : Matrix ι ι R) r c * ((g : Matrix ι ι R) c c * ((g⁻¹ : GL ι R) : Matrix ι ι R) c c) := by rw [h1, mul_one]
    _ = ((g : Matrix ι ι R) r c * ((g⁻¹ : GL ι R) : Matrix ι ι R) c c) * (g : Matrix ι ι R) c c := by ring
    _ = 0 := by rw [h0, zero_mul]

theorem supp : ColLaw → InMTop → Supp := by
  intro hCol hTop k _ _ ι _ _ i₀ hK U hU M₀ hM₀
  obtain ⟨hmem, hcont, -, -⟩ := hCol k ι i₀
  obtain ⟨hclop, hzero⟩ := hTop k
  have : CompactSpace ((adStd k).kGL ι) := isCompact_iff_compactSpace.mp hK

  set O : Set ((adStd k).kGL ι) :=
    {κ | ∃ p : (adStd k).kGL ι, p.1 ∈ stab 𝔸[k] ({i₀} : Set ι) ∧ ∃ u ∈ interior U, κ = p * u} with hOdef
  have hO : IsOpen O := by
    have e : O = ⋃ p : {p : (adStd k).kGL ι // p.1 ∈ stab 𝔸[k] ({i₀} : Set ι)},
        (fun x => (p.1)⁻¹ * x) ⁻¹' interior U := by
      ext κ
      simp only [hOdef, Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_preimage]
      constructor
      · rintro ⟨p, hp, u, hu, rfl⟩
        exact ⟨⟨p, hp⟩, by simpa using hu⟩
      · rintro ⟨⟨p, hp⟩, h⟩
        exact ⟨p, hp, _, h, by simp⟩
    rw [e]
    exact isOpen_iUnion fun p => isOpen_interior.preimage (continuous_const.mul continuous_id)
  have hfc : Continuous fun κ : (adStd k).kGL ι => TF.col i₀ κ.1 := hcont.comp continuous_subtype_val

  set C : ℕ → Set ((adStd k).kGL ι) := fun n =>
    {κ | (∀ j, j ≠ i₀ → InM (n ! * M₀) (TF.col i₀ κ.1 j).2) ∧
      ∀ w, 1 - 1 / ((n : ℝ) + 1) ≤ ‖(TF.col i₀ κ.1 i₀).1 w‖ ^ 2} with hCdef
  have hne : ∀ n : ℕ, n ! * M₀ ≠ 0 := fun n => Nat.mul_ne_zero (Nat.factorial_ne_zero n) hM₀
  have hCcl : ∀ n, IsClosed (C n) := by
    intro n
    simp only [hCdef, Set.setOf_and, Set.setOf_forall]
    refine IsClosed.inter (isClosed_iInter fun j => isClosed_iInter fun _ => ?_) (isClosed_iInter fun w => ?_)
    · have c2 : Continuous fun κ : (adStd k).kGL ι => (TF.col i₀ κ.1 j).2 :=
        continuous_snd.comp ((continuous_apply j).comp hfc)
      exact (hclop _ (hne n)).2.preimage c2
    · have c1 : Continuous fun κ : (adStd k).kGL ι => ‖(TF.col i₀ κ.1 i₀).1 w‖ ^ 2 :=
        (((continuous_apply w).comp (continuous_fst.comp ((continuous_apply i₀).comp hfc))).norm).pow 2
      exact isClosed_le continuous_const c1
  have hanti : ∀ n, C (n + 1) ⊆ C n := by
    intro n κ hκ
    refine ⟨fun j hj => GlobalTheory.CompanionTheory.RgEisFin.inM_dvd (Nat.mul_dvd_mul_right (Nat.factorial_dvd_factorial (Nat.le_succ n)) M₀) (hκ.1 j hj), fun w => ?_⟩
    refine le_trans ?_ (hκ.2 w)
    have : (1 : ℝ) / (((n + 1 : ℕ) : ℝ) + 1) ≤ 1 / ((n : ℝ) + 1) := by
      apply one_div_le_one_div_of_le (by positivity)
      push_cast
      linarith
    linarith
  have hex : ∃ n, C n ⊆ O := by
    by_contra hno
    push_neg at hno
    obtain ⟨κ, hκ⟩ := IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed
      (fun n => C n \ O) (fun n => Set.diff_subset_diff_left (hanti n))
      (fun n => Set.nonempty_of_not_subset (hno n)) ((hCcl 0).sdiff hO).isCompact
      (fun n => (hCcl n).sdiff hO)
    have hall : ∀ n, κ ∈ C n := fun n => (Set.mem_iInter.1 hκ n).1
    have hκO : κ ∉ O := (Set.mem_iInter.1 hκ 0).2
    have hfin : ∀ j, j ≠ i₀ → (TF.col i₀ κ.1 j).2 = 0 := fun j hj =>
      hzero _ fun M hM => GlobalTheory.CompanionTheory.RgEisFin.inM_dvd
        ((Nat.dvd_factorial (Nat.pos_of_ne_zero hM) le_rfl).mul_right M₀) ((hall M).1 j hj)
    have hone : ∀ w, 1 ≤ ‖(TF.col i₀ κ.1 i₀).1 w‖ ^ 2 := by
      intro w
      refine le_of_forall_pos_le_add fun ε hε => ?_
      obtain ⟨n, hn⟩ := exists_nat_one_div_lt hε
      have := (hall n).2 w
      linarith
    have hinf : ∀ j, j ≠ i₀ → (TF.col i₀ κ.1 j).1 = 0 := by
      intro j hj
      funext w
      have hs := (hmem κ.1 κ.2).1 w
      rw [← Finset.add_sum_erase _ _ (Finset.mem_univ i₀)] at hs
      have hle : ‖(TF.col i₀ κ.1 j).1 w‖ ^ 2 ≤
          ∑ x ∈ Finset.univ.erase i₀, ‖(TF.col i₀ κ.1 x).1 w‖ ^ 2 :=
        Finset.single_le_sum (f := fun x => ‖(TF.col i₀ κ.1 x).1 w‖ ^ 2) (fun _ _ => by positivity)
          (Finset.mem_erase.2 ⟨hj, Finset.mem_univ j⟩)
      have h0 : ‖(TF.col i₀ κ.1 j).1 w‖ ^ 2 ≤ 0 := by
        have := hone w
        linarith
      have h1 : ‖(TF.col i₀ κ.1 j).1 w‖ = 0 := by
        have h2 := sq_nonneg ‖(TF.col i₀ κ.1 j).1 w‖
        exact pow_eq_zero_iff (two_ne_zero) |>.1 (le_antisymm h0 h2)
      exact norm_eq_zero.1 h1
    have hst : κ.1 ∈ stab 𝔸[k] ({i₀} : Set ι) := by
      refine mem_stab_of_inv_col κ.1 i₀ fun j hj => ?_
      rw [← col_apply]
      exact Prod.ext (hinf j hj) (hfin j hj)
    exact hκO ⟨κ, hst, 1, mem_interior_iff_mem_nhds.2 hU, (mul_one κ).symm⟩
  obtain ⟨n, hn⟩ := hex
  refine ⟨n ! * M₀, 1 / ((n : ℝ) + 1), hne n, Dvd.intro_left _ rfl, by positivity, fun κ h1 h2 => ?_⟩
  obtain ⟨p, hp, u, hu, e⟩ := hn (show κ ∈ C n from ⟨h1, fun w => (h2 w).le⟩)
  exact ⟨p, hp, u, interior_subset hu, e⟩

end GlobalTheory.CompanionTheory.RgEisSupp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemStabOfInvCol =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatCastFiniteAdeleApply =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatCastFiniteAdeleApply", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GroundTheory.Global GroundTheory.Global.IdeleGroup PositivityTheory.RgEis PositivityTheory.RgEis.TF
open WithZero Multiplicative

namespace GlobalTheory.CompanionTheory.EisTF

variable {k : Type} [Field k] [NumberField k]

theorem natCast_finiteAdele_apply (v : HeightOneSpectrum (𝓞 k)) (M : ℕ) :
    ((M : FiniteAdeleRing (𝓞 k) k) v) = (M : v.adicCompletion k) := by
  induction M with
  | zero => simp only [Nat.cast_zero]; rfl
  | succ m ih =>
    simp only [Nat.cast_succ]
    change ((m : FiniteAdeleRing (𝓞 k) k) v) + (1 : FiniteAdeleRing (𝓞 k) k) v = _
    rw [ih]
    rfl

theorem valued_natCast_le_one (v : HeightOneSpectrum (𝓞 k)) (M : ℕ) :
    Valued.v (M : v.adicCompletion k) ≤ 1 := by
  have : (M : v.adicCompletion k) ∈ v.adicCompletionIntegers k := natCast_mem _ M
  exact this

theorem valued_absNorm_lt_one (v : HeightOneSpectrum (𝓞 k)) :
    Valued.v ((Ideal.absNorm v.asIdeal : ℕ) : v.adicCompletion k) < 1 := by
  have hv : ∀ x : k, Valued.v (algebraMap k (v.adicCompletion k) x) = v.valuation k x :=
    fun x => v.valuedAdicCompletion_eq_valuation' x
  have h : ((Ideal.absNorm v.asIdeal : ℕ) : 𝓞 k) ∈ v.asIdeal := Ideal.absNorm_mem _
  have h2 := (v.valuation_lt_one_iff_mem (K := k) _).2 h
  have h3 : ((Ideal.absNorm v.asIdeal : ℕ) : v.adicCompletion k) =
      algebraMap k (v.adicCompletion k) (algebraMap (𝓞 k) k ((Ideal.absNorm v.asIdeal : ℕ) : 𝓞 k)) := by
    simp
  rw [h3, hv]
  exact h2

theorem le_exp_neg_one_of_lt_one {x : WithZero (Multiplicative ℤ)} (h : x < 1) : x ≤ exp (-1 : ℤ) := by
  by_cases hx : x = 0
  · simp [hx]
  · obtain ⟨a, rfl⟩ : ∃ a : ℤ, x = exp a := ⟨log x, (exp_log hx).symm⟩
    rw [← exp_zero, exp_lt_exp] at h
    rw [exp_le_exp]
    omega

theorem valued_absNorm_pow_le (v : HeightOneSpectrum (𝓞 k)) (n : ℕ) :
    Valued.v (((Ideal.absNorm v.asIdeal ^ n : ℕ)) : v.adicCompletion k) ≤ exp (-(n : ℤ)) := by
  have h1 := le_exp_neg_one_of_lt_one (valued_absNorm_lt_one v)
  rw [Nat.cast_pow, map_pow]
  refine (pow_le_pow_left₀ zero_le' h1 n).trans (le_of_eq ?_)
  rw [← exp_nsmul]
  congr 1
  simp

theorem valued_prod_le (S : Finset (HeightOneSpectrum (𝓞 k))) (n : HeightOneSpectrum (𝓞 k) → ℕ)
    {v : HeightOneSpectrum (𝓞 k)} (hv : v ∈ S) :
    Valued.v (((∏ w ∈ S, Ideal.absNorm w.asIdeal ^ n w : ℕ)) : v.adicCompletion k) ≤ exp (-(n v : ℤ)) := by
  classical
  rw [← Finset.mul_prod_erase S _ hv, Nat.cast_mul, map_mul]
  calc _ ≤ Valued.v (((Ideal.absNorm v.asIdeal ^ n v : ℕ)) : v.adicCompletion k) * 1 :=
        mul_le_mul_right (valued_natCast_le_one v _) _
    _ ≤ exp (-(n v : ℤ)) := by rw [mul_one]; exact valued_absNorm_pow_le v (n v)

theorem condM : CondM := by
  intro k _ _ ω
  let χ : (FiniteAdeleRing (𝓞 k) k)ˣ →* Circle := ω.toIdele.comp ofFinite
  have hχ : Continuous χ := ω.continuous_toIdele.comp continuous_ofFinite
  obtain ⟨S, n, -, h0, hker⟩ := exists_finiteLevel_le_ker_circle χ hχ
  refine ⟨∏ v ∈ S, Ideal.absNorm v.asIdeal ^ n v, ?_, ?_⟩
  · refine Finset.prod_ne_zero_iff.2 fun v _ => pow_ne_zero _ ?_
    exact fun h => v.ne_bot (Ideal.absNorm_eq_zero_iff.1 h)
  · rintro u hu ⟨y, hy, huy⟩
    have hmem : u ∈ finiteLevel n := by
      refine mem_finiteLevel.2 fun v => ?_
      have hz : finiteComponent v u ∈ unitsLevel (K := k) v 0 := by
        rw [unitsLevel_zero, Submonoid.mem_units_iff]
        exact (mem_finiteIntegralUnits k).1 hu v
      by_cases hv : v ∈ S
      · refine mem_unitsLevel.2 ⟨(mem_unitsLevel.1 hz).1, ?_⟩
        have hyv : Valued.v (y v) ≤ 1 := mem_integralFiniteAdeles.1 hy v
        have huv : ((u : FiniteAdeleRing (𝓞 k) k) v) - 1 =
            ((∏ w ∈ S, Ideal.absNorm w.asIdeal ^ n w : ℕ) : v.adicCompletion k) * y v := by
          have := congrArg (fun x : FiniteAdeleRing (𝓞 k) k => x v) huy
          rw [← natCast_finiteAdele_apply]
          exact this
        rw [coe_finiteComponent, huv, map_mul]
        calc _ ≤ Valued.v ((∏ w ∈ S, Ideal.absNorm w.asIdeal ^ n w : ℕ) : v.adicCompletion k) * 1 :=
              mul_le_mul_right hyv _
          _ ≤ _ := by rw [mul_one]; exact valued_prod_le S n hv
      · rw [h0 v hv]
        exact hz
    exact MonoidHom.mem_ker.1 (hker hmem)

end GlobalTheory.CompanionTheory.EisTF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatCastFiniteAdeleApply =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RealComponentCoe =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RealComponentCoe", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\npublic import GroundTheory.GlobalFields.TateThesis.EulerFactorsInfinite\npublic import GroundTheory.GlobalFields.TateThesis.FiniteOrderParams\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.mixedEmbedding NumberField.InfinitePlace GroundTheory.Global GroundTheory.Global.IdeleGroup

namespace GlobalTheory.CompanionTheory.RgEisSign

variable {k : Type} [Field k] [NumberField k]


open scoped Classical in
def even_im_hermitian_sub (ω : HeckeCharacter k) (w : {w : InfinitePlace k // w.IsReal}) : ℕ :=
  if ω.realComponent w.2 (-1) = 1 then 0 else 1

theorem realComponent_coe (ω : HeckeCharacter k) (h : IsOfFinOrder ω)
    (w : {w : InfinitePlace k // w.IsReal}) (x : ℝˣ) :
    (ω.realComponent w.2 x : ℂ) = if 0 < (x : ℝ) then (1 : ℂ) else (-1) ^ even_im_hermitian_sub ω w := by
  split_ifs with hx
  · rw [ω.realComponent_eq_one_of_isOfFinOrder h w.2 hx]; simp
  · have hneg : (x : ℝ) < 0 := lt_of_le_of_ne (not_lt.1 hx) x.ne_zero
    have hpos : 0 < ((-x : ℝˣ) : ℝ) := by simpa using hneg
    have hx' : x = (-1) * (-x) := by simp
    have hc : ω.realComponent w.2 (-1) * ω.realComponent w.2 (-1) = 1 := by
      rw [← map_mul]; simp
    rw [hx', map_mul, ω.realComponent_eq_one_of_isOfFinOrder h w.2 hpos, mul_one]
    unfold even_im_hermitian_sub
    split_ifs with h1
    · rw [h1]; simp
    · have h2 : ((ω.realComponent w.2 (-1) : Circle) : ℂ) * ((ω.realComponent w.2 (-1) : Circle) : ℂ) = 1 := by
        rw [← Circle.coe_mul, hc]; simp
      rcases mul_self_eq_one_iff.1 h2 with h3 | h3
      · exact absurd (Circle.ext (by simpa using h3)) h1
      · simpa using h3

theorem real_factor (ω : HeckeCharacter k) (h : IsOfFinOrder ω) (a : (InfiniteAdeleRing k)ˣ)
    (w : {w : InfinitePlace k // w.IsReal}) :
    (ω.infiniteComponent w.1 (infiniteComponent w.1 a) : ℂ) =
      if 0 < (homeomorphMixedSpace k (a : InfiniteAdeleRing k)).1 w then (1 : ℂ)
      else (-1) ^ even_im_hermitian_sub ω w := by
  have hs := realUnitsHom_surjective w.2 (infiniteComponent w.1 a)
  have hv : ((Units.map (InfinitePlace.Completion.ringEquivRealOfIsReal w.2 : w.1.Completion →+* ℝ).toMonoidHom
      (infiniteComponent w.1 a) : ℝˣ) : ℝ) = (homeomorphMixedSpace k (a : InfiniteAdeleRing k)).1 w := rfl
  rw [← hs, ← hv]
  exact realComponent_coe ω h w _

theorem complex_factor (ω : HeckeCharacter k) (h : IsOfFinOrder ω) (a : (InfiniteAdeleRing k)ˣ)
    (w : {w : InfinitePlace k // w.IsComplex}) :
    (ω.infiniteComponent w.1 (infiniteComponent w.1 a) : ℂ) = 1 := by
  rw [← complexUnitsHom_surjective w.2 (infiniteComponent w.1 a)]
  have := ω.complexComponent_eq_one_of_isOfFinOrder h w.2
    (Units.map (InfinitePlace.Completion.ringEquivComplexOfIsComplex w.2 : w.1.Completion →+* ℂ).toMonoidHom
      (infiniteComponent w.1 a))
  exact congrArg (fun c : Circle => (c : ℂ)) this |>.trans (by simp)

theorem signChar : PositivityTheory.RgEis.TF.SignChar := by
  intro k _ _ ω h
  have hf : IsOfFinOrder ω :=
    isOfFinOrder_iff_pow_eq_one.2 ⟨2, by norm_num, by rw [pow_two]; exact h⟩
  refine ⟨even_im_hermitian_sub ω, fun a => ?_⟩
  rw [HeckeCharacter.toIdele_ofInfinite]
  have h1 : ((∏ w, ω.infiniteComponent w (infiniteComponent w a) : Circle) : ℂ) =
      ∏ w, (ω.infiniteComponent w (infiniteComponent w a) : ℂ) :=
    map_prod Circle.coeHom (fun w => ω.infiniteComponent w (infiniteComponent w a)) Finset.univ
  rw [h1, InfinitePlace.prod_eq_prod_mul_prod, Finset.prod_eq_one (fun w _ => complex_factor ω hf a w),
    mul_one]
  exact Finset.prod_congr rfl fun w _ => real_factor ω hf a w

end GlobalTheory.CompanionTheory.RgEisSign
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RealComponentCoe =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ToIdeleMulSelf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ToIdeleMulSelf", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option synthInstance.maxSize 1000

noncomputable section

open NumberField NumberField.mixedEmbedding IsDedekindDomain Matrix MeasureTheory Filter Topology
open scoped NumberField.AdeleRing SchwartzMap Classical

namespace GlobalTheory.CompanionTheory.RgEisAsm

open PositivityTheory.RgEis PositivityTheory.RgEis.TF
open GroundTheory.Global GroundTheory.Automorphic GroundTheory.Global.IdeleGroup

variable {k : Type} [Field k] [NumberField k] {ι : Type} [Fintype ι] [DecidableEq ι]

theorem toIdele_mul_self {ω : HeckeCharacter k} (hω : ω * ω = 1) (x : IdeleGroup k) :
    ω.toIdele x * ω.toIdele x = 1 := by
  have h := congrArg (fun f : HeckeCharacter k => f (IdeleClassGroup.mk k x)) hω
  simpa [HeckeCharacter.toIdele_apply] using h

theorem tensor_eq (φ : 𝓢(ι → mixedSpace k, ℂ)) (g : (ι → FiniteAdeleRing (𝓞 k) k) → ℂ)
    (x : ι → 𝔸[k]) :
    GJMatrix.schwartzBruhatTensorPi φ g x = rd φ (fun j => (x j).1) * g (fun j => (x j).2) := rfl

theorem norm_inv_units (a : (InfiniteAdeleRing k)ˣ) (ha : ∀ w, ‖(a : InfiniteAdeleRing k) w‖ = 1)
    (w : InfinitePlace k) : ‖((a⁻¹ : (InfiniteAdeleRing k)ˣ) : InfiniteAdeleRing k) w‖ = 1 := by
  have h : (a : InfiniteAdeleRing k) w * ((a⁻¹ : (InfiniteAdeleRing k)ˣ) : InfiniteAdeleRing k) w = 1 :=
    congrFun (Units.mul_inv a) w
  have h2 := congrArg norm h
  rw [norm_mul, ha w, one_mul, norm_one] at h2
  exact h2

theorem line_inv {ω : HeckeCharacter k} (hω : ω * ω = 1) (φ₁ : 𝓢(Unit → mixedSpace k, ℂ))
    (g₁ : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ)
    (hφ : ∀ a : (InfiniteAdeleRing k)ˣ, (∀ w, ‖(a : InfiniteAdeleRing k) w‖ = 1) →
      rd φ₁ (fun _ => (a : InfiniteAdeleRing k)) = ω.toIdele (ofInfinite a))
    (hg : ∀ u ∈ finiteIntegralUnits k, g₁ (fun _ => (u : FiniteAdeleRing (𝓞 k) k)) =
      ω.toIdele (ofFinite u))
    (a : (InfiniteAdeleRing k)ˣ) (u : (FiniteAdeleRing (𝓞 k) k)ˣ)
    (ha : ∀ w, ‖(a : InfiniteAdeleRing k) w‖ = 1) (hu : u ∈ finiteIntegralUnits k) :
    GJMatrix.schwartzBruhatTensorPi φ₁ g₁
        (fun _ => (((ofInfinite a * ofFinite u)⁻¹ : IdeleGroup k) : 𝔸[k])) =
      ω.toIdele (ofInfinite a * ofFinite u) := by
  have h1 : (((ofInfinite a * ofFinite u)⁻¹ : IdeleGroup k) : 𝔸[k]).1 =
      ((a⁻¹ : (InfiniteAdeleRing k)ˣ) : InfiniteAdeleRing k) := by
    have : toInfinite k (ofInfinite a * ofFinite u)⁻¹ = a⁻¹ := by simp
    exact congrArg Units.val this
  have h2 : (((ofInfinite a * ofFinite u)⁻¹ : IdeleGroup k) : 𝔸[k]).2 =
      ((u⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) := by
    have : toFinite k (ofInfinite a * ofFinite u)⁻¹ = u⁻¹ := by simp
    exact congrArg Units.val this
  rw [tensor_eq]
  simp only [h1, h2]
  rw [hφ _ (norm_inv_units a ha), hg _ (inv_mem hu), ← Circle.coe_mul, ← map_mul, map_inv, map_inv,
    ← mul_inv, map_inv]
  have h3 := toIdele_mul_self hω (ofInfinite a * ofFinite u)
  rw [inv_eq_of_mul_eq_one_left h3]

theorem near_one_nhds (hCol : ColLaw) (hTop : InMTop) (i₀ : ι) (M₀ : ℕ) (hM : M₀ ≠ 0)
    (U : Set ((adStd k).kGL ι)) (hU : U ∈ 𝓝 (1 : (adStd k).kGL ι)) :
    U ∩ {u : (adStd k).kGL ι | InM M₀ ((col i₀ u.1 i₀).2 - 1) ∧
      ∀ w, ‖(col i₀ u.1 i₀).1 w - 1‖ < 1} ∈ 𝓝 (1 : (adStd k).kGL ι) := by
  obtain ⟨-, hc, h1, -⟩ := hCol k ι i₀
  have hcc : Continuous fun u : (adStd k).kGL ι => col i₀ u.1 i₀ :=
    (continuous_apply i₀).comp (hc.comp continuous_subtype_val)
  refine inter_mem hU (IsOpen.mem_nhds ?_ ?_)
  · have o1 : IsOpen {u : (adStd k).kGL ι | InM M₀ ((col i₀ u.1 i₀).2 - 1)} :=
      ((hTop k).1 M₀ hM).1.preimage ((continuous_snd.comp hcc).sub continuous_const)
    have o2 : IsOpen {u : (adStd k).kGL ι | ∀ w, ‖(col i₀ u.1 i₀).1 w - 1‖ < 1} := by
      simp only [Set.setOf_forall]
      exact isOpen_iInter_of_finite fun w => isOpen_lt
        ((((continuous_apply w).comp (continuous_fst.comp hcc)).sub continuous_const).norm)
        continuous_const
    exact o1.inter o2
  · have e : col i₀ ((1 : (adStd k).kGL ι) : GL ι 𝔸[k]) i₀ = 1 := by
      have : col (k := k) i₀ ((1 : (adStd k).kGL ι) : GL ι 𝔸[k]) = Pi.single i₀ 1 := h1
      rw [this]; simp
    refine ⟨?_, fun w => ?_⟩
    · rw [e]
      exact ⟨0, (OH k).zero_mem, by
        show (1 : FiniteAdeleRing (𝓞 k) k) - 1 = _
        simp⟩
    · rw [e]
      simp

theorem asm : ColLaw → InMTop → Supp → ArchFun → FinFun → ZSplit → ZInf → ZFinPos → ZFinLim →
    StdGood → TestFun := by
  intro hCol hTop hSupp hArch hFin hZS hZI hZP hZL hStd k _ _ ι _ _ i₀ ω hω U hU
  obtain ⟨M₀, hM₀, hfin⟩ := hFin k ω
  have hU' := near_one_nhds hCol hTop i₀ M₀ hM₀ U hU
  obtain ⟨M, δ, hM, hdvd, hδ, hS⟩ := hSupp k ι i₀ ((hStd k).kcpt ι) _ hU' M₀ hM₀
  obtain ⟨g, g₁, hg, hg₁, hg1, hg₁u, hg₁b, hg₁p, hgV⟩ := hfin M hM hdvd ι i₀
  obtain ⟨φ, φ₁, hφ1, hφ₁u, hφ₁p, hφV⟩ := hArch k ι i₀ ω hω δ hδ
  obtain ⟨hcolK, hcc, hcol1, hcolP⟩ := hCol k ι i₀
  have hΨ := GJMatrix.schwartzBruhatTensorPi_mem φ hg
  have hΨ₁ := GJMatrix.schwartzBruhatTensorPi_mem φ₁ hg₁
  have hfac : ∀ (t : 𝔸[k]) (κ : (adStd k).kGL ι),
      GJMatrix.schwartzBruhatTensorPi φ g (t • col i₀ κ.1) =
        GJMatrix.schwartzBruhatTensorPi φ₁ g₁ (fun _ => t) *
          GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1) := by
    intro t κ
    obtain ⟨hu, hp⟩ := hcolK κ.1 κ.2
    have a1 := (hφV _ hu).1 t.1
    have a2 := (hgV _ hp).1 t.2
    rw [tensor_eq, tensor_eq, tensor_eq]
    have e1 : (fun j => ((t • col i₀ κ.1) j).1) = t.1 • (fun j => (col i₀ κ.1 j).1) := rfl
    have e2 : (fun j => ((t • col i₀ κ.1) j).2) = t.2 • (fun j => (col i₀ κ.1 j).2) := rfl
    rw [e1, e2, a1, a2]
    ring
  have hequiv : ∀ p κ : (adStd k).kGL ι, p.1 ∈ stab 𝔸[k] {i₀} →
      GJMatrix.schwartzBruhatTensorPi φ g (col i₀ (p * κ).1) =
        ω.toIdele (bdet {i₀} p.1) * GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1) := by
    intro p κ hp
    obtain ⟨hc, a, u, hb, ha, hu⟩ := hcolP p.1 p.2 hp
    have e : col i₀ (p * κ).1 = (((bdet {i₀} p.1)⁻¹ : 𝔸[k]ˣ) : 𝔸[k]) • col i₀ κ.1 := hc κ.1
    rw [e, hfac, hb, line_inv hω φ₁ g₁ hφ₁u hg₁u a u ha hu]
  have hone : rd φ₁ (fun _ => (1 : InfiniteAdeleRing k)) ≠ 0 := by
    have h := hφ₁u 1 (fun w => by
      rw [Units.val_one]
      exact norm_one (α := w.Completion))
    rw [Units.val_one] at h
    rw [h]
    simp
  have hunit : ∀ x : ℝ, 1 < x → zInf φ₁ ω x ≠ 0 := hZI k φ₁ ω hφ₁p hone
  refine ⟨GJMatrix.schwartzBruhatTensorPi φ g, GJMatrix.schwartzBruhatTensorPi φ₁ g₁,
    fun κ => GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1), hΨ, hΨ₁,
    (GJMatrix.continuous_of_mem_schwartzBruhatPi hΨ).comp (hcc.comp continuous_subtype_val),
    ?_, fun t κ => hfac t κ, ?_, fun p κ hp => hequiv p κ hp, ?_, ?_⟩
  · have e : col (k := k) i₀ ((1 : (adStd k).kGL ι) : GL ι 𝔸[k]) = Pi.single i₀ 1 := hcol1
    show GJMatrix.schwartzBruhatTensorPi φ g (col i₀ ((1 : (adStd k).kGL ι) : GL ι 𝔸[k])) = 1
    rw [e, tensor_eq]
    have e1 : (fun j => ((Pi.single i₀ (1 : 𝔸[k]) : ι → 𝔸[k]) j).1) = Pi.single i₀ 1 := by
      funext j
      by_cases h : j = i₀
      · subst h; rw [Pi.single_eq_same, Pi.single_eq_same]; rfl
      · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne h]; rfl
    have e2 : (fun j => ((Pi.single i₀ (1 : 𝔸[k]) : ι → 𝔸[k]) j).2) = Pi.single i₀ 1 := by
      funext j
      by_cases h : j = i₀
      · subst h; rw [Pi.single_eq_same, Pi.single_eq_same]; rfl
      · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne h]; rfl
    rw [e1, e2, hφ1, hg1, one_mul]
  · intro κ hne
    have hne' : GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1) ≠ 0 := hne
    rw [tensor_eq] at hne'
    obtain ⟨n1, n2⟩ := mul_ne_zero_iff.1 hne'
    obtain ⟨hu, hpr⟩ := hcolK κ.1 κ.2
    obtain ⟨p, hp, u, huU, hκ⟩ := hS κ (fun j hj => (hgV _ hpr).2.1 n2 j hj) ((hφV _ hu).2.1 n1)
    refine ⟨p, hp, u, huU.1, hκ, ?_⟩
    obtain ⟨hu', hpr'⟩ := hcolK u.1 u.2
    have hreal : ∃ r : ℝ, 0 ≤ r ∧ GJMatrix.schwartzBruhatTensorPi φ g (col i₀ u.1) = r := by
      obtain ⟨r, hr, e⟩ := (hφV _ hu').2.2 huU.2.2
      rcases (hgV _ hpr').2.2 huU.2.1 with h | h
      · exact ⟨0, le_rfl, by rw [tensor_eq, h]; simp⟩
      · exact ⟨r, hr, by rw [tensor_eq, e, h, mul_one]⟩
    obtain ⟨r, hr, e⟩ := hreal
    have h1 : GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1) = ω.toIdele (bdet {i₀} p.1) * r := by
      rw [hκ, hequiv p u hp, e]
    show GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1) =
      ω.toIdele (bdet {i₀} p.1) * (‖GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1)‖ : ℂ)
    have h2 : ‖GJMatrix.schwartzBruhatTensorPi φ g (col i₀ κ.1)‖ = r := by
      rw [h1, norm_mul, Circle.norm_coe, one_mul, Complex.norm_real, Real.norm_of_nonneg hr]
    rw [h2, h1]
  · have hcard : 1 ≤ Fintype.card ι := Fintype.card_pos_iff.2 ⟨i₀⟩
    have hcard' : (1 : ℝ) ≤ Fintype.card ι := by exact_mod_cast hcard
    obtain ⟨x, hx, hz⟩ := hZL k g₁ ω hg₁ hg₁b (fun u hu => by
      rw [hg₁u u hu, ← Circle.coe_mul, toIdele_mul_self hω, Circle.coe_one]) ((Fintype.card ι : ℝ) + 1)
    refine ⟨x, by simpa using hx, ?_⟩
    rw [hZS k φ₁ g₁ ω x hg₁]
    exact mul_ne_zero (hunit x (by linarith)) hz
  · rintro rfl x hx
    rw [hZS k φ₁ g₁ 1 x hg₁]
    refine mul_ne_zero (hunit x hx) (hZP k g₁ hg₁ (hg₁p rfl) ?_ x hx)
    have h := hg₁u 1 (one_mem _)
    rw [Units.val_one] at h
    rw [h]
    simp

end GlobalTheory.CompanionTheory.RgEisAsm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ToIdeleMulSelf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValEqOneOfMulEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValEqOneOfMulEq", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain

namespace GlobalTheory.CompanionTheory.EisTF

open PositivityTheory.RgEis PositivityTheory.RgEis.TF GroundTheory.Global

theorem val_eq_one_of_mul_eq {F Γ : Type*} [Field F] [LinearOrderedCommGroupWithZero Γ]
    (w : Valuation F Γ) {a b u u' m mi y : F} (ha : w a ≤ 1) (hb : w b ≤ 1) (hu : w u ≤ 1)
    (hu' : w u' ≤ 1) (huu : u * u' = 1) (hy : w y ≤ 1) (hm : m * mi = 1) (hmi : 1 < w mi)
    (h : a * b - u = m * y) : w a = 1 := by
  have key : ∀ {p q : Γ}, p ≤ 1 → q ≤ 1 → p * q = 1 → p = 1 := by
    intro p q hp hq hpq
    refine le_antisymm hp (not_lt.mp fun hc => ?_)
    have h2 : p * q < 1 := lt_of_le_of_lt (mul_le_of_le_one_right' hq) hc
    rw [hpq] at h2
    exact lt_irrefl _ h2
  have hwu : w u = 1 := key hu hu' (by rw [← map_mul, huu, map_one])
  have hwm : w m < 1 := by
    refine not_le.mp fun hc => ?_
    have h1 : w m * w mi = 1 := by rw [← map_mul, hm, map_one]
    have h2 : w mi ≤ w m * w mi := le_mul_of_one_le_left' hc
    rw [h1] at h2
    exact absurd hmi (not_lt.mpr h2)
  have hmy : w (m * y) < w u := by
    rw [map_mul, hwu]
    exact lt_of_le_of_lt (mul_le_of_le_one_right' hy) hwm
  have hab : a * b = m * y + u := sub_eq_iff_eq_add.mp h
  have hprod : w a * w b = 1 := by
    rw [← map_mul, hab, Valuation.map_add_eq_of_lt_right _ hmy, hwu]
  exact key ha hb hprod

theorem liftUnit : LiftUnit := by
  intro k _ _ M hM a ha b hb u hu hab
  obtain ⟨y, hy, hyeq⟩ := hab
  classical
  have hint : ∀ x : FiniteAdeleRing (𝓞 k) k, x ∈ OH k →
      ∀ v : HeightOneSpectrum (𝓞 k), Valued.v (x v) ≤ 1 :=
    fun x hx v => (HeightOneSpectrum.mem_adicCompletionIntegers (𝓞 k) k v).mp (hx v)
  have hM0 : ∀ v : HeightOneSpectrum (𝓞 k), (M : v.adicCompletion k) ≠ 0 := by
    intro v
    rw [← map_natCast (algebraMap k (v.adicCompletion k)) M]
    exact (map_ne_zero _).mpr (Nat.cast_ne_zero.mpr hM)
  have hMle : ∀ v : HeightOneSpectrum (𝓞 k), Valued.v (M : v.adicCompletion k) ≤ 1 := fun v =>
    (HeightOneSpectrum.mem_adicCompletionIntegers (𝓞 k) k v).mp (natCast_mem _ M)
  obtain ⟨huU1, huU2⟩ := Subgroup.mem_comap.mp hu
  have hu1 : (u : FiniteAdeleRing (𝓞 k) k) ∈ OH k := fun v => huU1 v
  have hu2 : ((u⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) ∈ OH k :=
    fun v => huU2 v
  have hunit : ∀ v : HeightOneSpectrum (𝓞 k), Valued.v (M : v.adicCompletion k) < 1 →
      Valued.v (a v) = 1 := by
    intro v hv
    have hmul : (u : FiniteAdeleRing (𝓞 k) k) v *
        ((u⁻¹ : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k) v = 1 :=
      congrArg (fun z : FiniteAdeleRing (𝓞 k) k => z v) (Units.mul_inv u)
    have hcomp : a v * b v - (u : FiniteAdeleRing (𝓞 k) k) v = (M : v.adicCompletion k) * y v :=
      congrArg (fun z : FiniteAdeleRing (𝓞 k) k => z v) hyeq
    exact val_eq_one_of_mul_eq Valued.v (hint a ha v) (hint b hb v) (hint _ hu1 v) (hint _ hu2 v)
      hmul (hint y hy v) (mul_inv_cancel₀ (hM0 v))
      ((Valuation.one_lt_val_iff Valued.v (inv_ne_zero (hM0 v))).mpr (by rwa [inv_inv])) hcomp
  let f : ∀ v : HeightOneSpectrum (𝓞 k), v.adicCompletion k := fun v =>
    if Valued.v (M : v.adicCompletion k) < 1 then a v else 1
  let g : ∀ v : HeightOneSpectrum (𝓞 k), v.adicCompletion k := fun v =>
    if Valued.v (M : v.adicCompletion k) < 1 then (a v)⁻¹ else 1
  have hf : ∀ v : HeightOneSpectrum (𝓞 k), f v ∈ v.adicCompletionIntegers k := by
    intro v
    by_cases hv : Valued.v (M : v.adicCompletion k) < 1
    · simp only [f, if_pos hv]
      exact ha v
    · simp only [f, if_neg hv]
      exact one_mem _
  have hg : ∀ v : HeightOneSpectrum (𝓞 k), g v ∈ v.adicCompletionIntegers k := by
    intro v
    by_cases hv : Valued.v (M : v.adicCompletion k) < 1
    · simp only [g, if_pos hv]
      rw [HeightOneSpectrum.mem_adicCompletionIntegers (𝓞 k) k v, map_inv₀, hunit v hv, inv_one]
    · simp only [g, if_neg hv]
      exact one_mem _
  let F : FiniteAdeleRing (𝓞 k) k := RestrictedProduct.mk f (Filter.Eventually.of_forall hf)
  let G : FiniteAdeleRing (𝓞 k) k := RestrictedProduct.mk g (Filter.Eventually.of_forall hg)
  have hFG : F * G = 1 := by
    refine RestrictedProduct.ext _ _ fun v => ?_
    show f v * g v = 1
    by_cases hv : Valued.v (M : v.adicCompletion k) < 1
    · simp only [f, g, if_pos hv]
      refine mul_inv_cancel₀ fun h0 => ?_
      have h1 := hunit v hv
      rw [h0, map_zero] at h1
      exact zero_ne_one h1
    · simp only [f, g, if_neg hv, mul_one]
  have hGF : G * F = 1 := by
    rw [mul_comm]
    exact hFG
  let U : (FiniteAdeleRing (𝓞 k) k)ˣ := ⟨F, G, hFG, hGF⟩
  have hU : U ∈ finiteIntegralUnits k :=
    Subgroup.mem_comap.mpr
      (Submonoid.mem_units_of_val_mem_inv_val_mem _ (fun v => hf v) (fun v => hg v))
  refine ⟨U, hU, ?_⟩
  let Y : ∀ v : HeightOneSpectrum (𝓞 k), v.adicCompletion k := fun v =>
    if Valued.v (M : v.adicCompletion k) < 1 then 0 else (a v - 1) * (M : v.adicCompletion k)⁻¹
  have hY : ∀ v : HeightOneSpectrum (𝓞 k), Y v ∈ v.adicCompletionIntegers k := by
    intro v
    by_cases hv : Valued.v (M : v.adicCompletion k) < 1
    · simp only [Y, if_pos hv]
      exact zero_mem _
    · simp only [Y, if_neg hv]
      have hM1 : Valued.v (M : v.adicCompletion k) = 1 := le_antisymm (hMle v) (not_lt.mp hv)
      rw [HeightOneSpectrum.mem_adicCompletionIntegers (𝓞 k) k v, map_mul, map_inv₀, hM1, inv_one,
        mul_one]
      exact (Valuation.map_sub Valued.v (a v) 1).trans
        (max_le (hint a ha v) (Valuation.map_one Valued.v).le)
  refine ⟨RestrictedProduct.mk Y (Filter.Eventually.of_forall hY), fun v => hY v, ?_⟩
  refine RestrictedProduct.ext _ _ fun v => ?_
  show a v - f v = (M : v.adicCompletion k) * Y v
  by_cases hv : Valued.v (M : v.adicCompletion k) < 1
  · simp only [f, Y, if_pos hv, sub_self, mul_zero]
  · simp only [f, Y, if_neg hv]
    rw [mul_comm, mul_assoc, inv_mul_cancel₀ (hM0 v), mul_one]

end GlobalTheory.CompanionTheory.EisTF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValEqOneOfMulEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZetaIntegrandTensor =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZetaIntegrandTensor", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField NumberField.mixedEmbedding IsDedekindDomain Matrix MeasureTheory Filter Topology
open scoped NumberField.AdeleRing SchwartzMap Classical

set_option synthInstance.maxSize 1000

namespace GlobalTheory.CompanionTheory.RgEisTF

open PositivityTheory.RgEis PositivityTheory.RgEis.TF GroundTheory.Global GroundTheory.Automorphic GroundTheory.Global.IdeleGroup

theorem zetaIntegrand_tensor {k : Type} [Field k] [NumberField k]
    (φ : 𝓢(Unit → mixedSpace k, ℂ)) (g : (Unit → FiniteAdeleRing (𝓞 k) k) → ℂ)
    (ω : HeckeCharacter k) (s : ℂ) (x : IdeleGroup k) :
    GJMatrix.schwartzBruhatTensorPi φ g (fun _ => (x : 𝔸[k])) * (ω.toIdele x : ℂ) *
        ((ideleModule k x : ℝ) : ℂ) ^ s =
      (rd φ (fun _ => ((toInfinite k x : (InfiniteAdeleRing k)ˣ) : InfiniteAdeleRing k)) *
          (ω.toIdele (ofInfinite (toInfinite k x)) : ℂ) *
          ((ideleModule k (ofInfinite (toInfinite k x)) : ℝ) : ℂ) ^ s) *
        (g (fun _ => ((toFinite k x : (FiniteAdeleRing (𝓞 k) k)ˣ) : FiniteAdeleRing (𝓞 k) k)) *
          (ω.toIdele (ofFinite (toFinite k x)) : ℂ) *
          ((ideleModule k (ofFinite (toFinite k x)) : ℝ) : ℂ) ^ s) := by
  have hchi : (ω.toIdele x : ℂ) = (ω.toIdele (ofFinite (toFinite k x)) : ℂ) *
      (ω.toIdele (ofInfinite (toInfinite k x)) : ℂ) := by
    rw [← Circle.coe_mul, ← map_mul, ofFinite_mul_ofInfinite]
  have hmod : ((ideleModule k x : ℝ) : ℂ) ^ s =
      ((ideleModule k (ofInfinite (toInfinite k x)) : ℝ) : ℂ) ^ s *
        ((ideleModule k (ofFinite (toFinite k x)) : ℝ) : ℂ) ^ s := by
    have h : (ideleModule k x : ℝ) = (ideleModule k (ofInfinite (toInfinite k x)) : ℝ) *
        (ideleModule k (ofFinite (toFinite k x)) : ℝ) := by
      conv_lhs => rw [← ofFinite_mul_ofInfinite x, map_mul]
      rw [mul_comm]
      rfl
    rw [h, Complex.ofReal_mul, Complex.mul_cpow_ofReal_nonneg (ideleModule k _).2.le
      (ideleModule k _).2.le]
  rw [hchi, hmod]
  change φ (fun _ => homeomorphMixedSpace k (x : 𝔸[k]).1) * g (fun _ => (x : 𝔸[k]).2) * _ * _ = _
  change _ = (φ (fun _ => homeomorphMixedSpace k (x : 𝔸[k]).1) * _ * _) *
    (g (fun _ => (x : 𝔸[k]).2) * _ * _)
  ring

theorem zSplit : ZSplit := by
  intro k _ _ φ g ω s _
  set A : (InfiniteAdeleRing k)ˣ → ℂ := fun a =>
    rd φ (fun _ => (a : InfiniteAdeleRing k)) * (ω.toIdele (ofInfinite a) : ℂ) *
      ((ideleModule k (ofInfinite a) : ℝ) : ℂ) ^ s with hA
  set B : (FiniteAdeleRing (𝓞 k) k)ˣ → ℂ := fun b =>
    g (fun _ => (b : FiniteAdeleRing (𝓞 k) k)) * (ω.toIdele (ofFinite b) : ℂ) *
      ((ideleModule k (ofFinite b) : ℝ) : ℂ) ^ s with hB
  have hF : ∀ x : IdeleGroup k,
      GJMatrix.schwartzBruhatTensorPi φ g (fun _ => (x : 𝔸[k])) * (ω.toIdele x : ℂ) *
        ((ideleModule k x : ℝ) : ℂ) ^ s = (fun p => A p.1 * B p.2) (IdeleGroup.prodEquiv k x) :=
    zetaIntegrand_tensor φ g ω s
  have hemb : MeasurableEmbedding (IdeleGroup.prodEquiv k) :=
    (IdeleGroup.prodEquiv k).toHomeomorph.measurableEmbedding
  unfold globalZeta zInf zFin
  simp_rw [hF]
  rw [(measurePreserving_prodEquiv (K := k)).integral_comp hemb (fun p => A p.1 * B p.2)]
  exact integral_prod_mul A B

end GlobalTheory.CompanionTheory.RgEisTF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZetaIntegrandTensor =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.TestFun =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.TestFun", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinContinuation.IsEpCont\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BumpProfileEqZeroOfLtHalf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousInfiniteIdeleInclusion\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EqZeroOfForallInM\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsOfChiNeZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HasCompactSupportSmallF\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdeleModuleOfFiniteEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InfiniteModuleOfFinite\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemOHOfMemIntAd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemStabOfInvCol\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatCastFiniteAdeleApply\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProdFunHasCompactSupport\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RealComponentCoe\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StandardSectionGood\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ToIdeleMulSelf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValEqOneOfMulEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZetaIntegrandTensor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem PositivityTheory.RgEis.TF.testFun : PositivityTheory.RgEis.TestFun :=
  GlobalTheory.CompanionTheory.RgEisAsm.asm GlobalTheory.CompanionTheory.EisCol.colLaw GlobalTheory.CompanionTheory.RgEis.InMTopPf.inMTop (GlobalTheory.CompanionTheory.RgEisSupp.supp GlobalTheory.CompanionTheory.EisCol.colLaw GlobalTheory.CompanionTheory.RgEis.InMTopPf.inMTop) (GlobalTheory.CompanionTheory.EisTF.archFun_of_bumps GlobalTheory.CompanionTheory.TestFun.realBump GlobalTheory.CompanionTheory.TestBump.cplxBump GlobalTheory.CompanionTheory.RgEisSign.signChar)
    (GlobalTheory.CompanionTheory.RgEisFin.finFun GlobalTheory.CompanionTheory.EisTF.condM GlobalTheory.CompanionTheory.EisTF.liftUnit GlobalTheory.CompanionTheory.RgEis.InMTopPf.inMTop) GlobalTheory.CompanionTheory.RgEisTF.zSplit GlobalTheory.CompanionTheory.EisTestFun.zInf_ne_zero GlobalTheory.CompanionTheory.EisTestFun.zFinPos GlobalTheory.CompanionTheory.EisTF.zFinLim GlobalTheory.CompanionTheory.StdGoodAd.stdGood
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.UnitTestFunctions.TestFun =====
