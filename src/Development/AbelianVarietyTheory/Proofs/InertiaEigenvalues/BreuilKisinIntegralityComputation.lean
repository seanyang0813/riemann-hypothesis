module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial
public import Mathlib.Data.Nat.Prime.Factorial
public import Mathlib.Topology.Algebra.InfiniteSum.Nonarchimedean
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SndDualLiftAlgebraMap
public import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.ImagePolynomialAction
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilRingEqIntegralAddEisensteinFiltration, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDisc, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDiscStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinIntegralityComputation

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilRingEqIntegralAddEisensteinFiltration =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilRingEqIntegralAddEisensteinFiltration", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\npublic import Mathlib.Data.Nat.Prime.Factorial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.Topology.Algebra.InfiniteSum.Nonarchimedean\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.BK

noncomputable section
namespace GlobalTheory.BK.SDec

open Filter Topology

variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [Algebra O K]
  [IsUnitBall O K] (l : ℕ) [Fact l.Prime] [NormedAlgebra ℚ_[l] K]

omit [IsUltrametricDist K] in
theorem norm_factorial_eq_one {k : ℕ} (hk : k < l) : ‖(k.factorial : K)‖ = 1 := by
  rw [norm_natCast_eq l, Padic.norm_natCast_eq_one_iff]
  exact (Nat.Prime.coprime_iff_not_dvd Fact.out).2 fun h =>
    absurd ((Nat.Prime.dvd_factorial Fact.out).1 h) (not_le.2 hk)

omit [IsUltrametricDist K] in
theorem norm_choose_mul_le (q k : ℕ) :
    ‖((q.choose k : K) * (k.factorial : K) * (-(l : K)) ^ (q - k))‖ ≤ ‖(q.factorial : K)‖ := by
  rcases le_or_gt k q with hkq | hkq
  · have h := congrArg (Nat.cast : ℕ → K) (Nat.choose_mul_factorial_mul_factorial hkq)
    push_cast at h
    rw [← h, norm_mul, norm_mul, norm_pow, norm_neg, norm_mul, norm_mul]
    exact mul_le_mul_of_nonneg_left (norm_pow_le_norm_factorial l _)
      (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  · simp [Nat.choose_eq_zero_of_lt hkq]


variable (K) in
def beta (e : ℕ) (c : K) (m k : ℕ) : K :=
  c * (((m / e).choose k : K) * (k.factorial : K) * (-(l : K)) ^ (m / e - k))

theorem norm_beta_le (e : ℕ) (c : K) (m k : ℕ) : ‖beta K l e c m k‖ ≤ ‖c‖ * wS K e m := by
  rw [beta, norm_mul, wS]
  exact mul_le_mul_of_nonneg_left (norm_choose_mul_le l _ _) (norm_nonneg _)

theorem beta_eq_zero {e : ℕ} (c : K) {m k : ℕ} (h : m / e < k) : beta K l e c m k = 0 := by
  simp [beta, Nat.choose_eq_zero_of_lt h]

theorem expand (e : ℕ) (c : K) (m N : ℕ) (hN : m / e < N) :
    C c * X ^ m = ∑ k ∈ Finset.range N, C (beta K l e c m k) * X ^ (m % e) * Ediv K l e k := by
  have hX : (X : K⟦X⟧) ^ m = X ^ (m % e) * (E K l e + C (-(l : K))) ^ (m / e) := by
    rw [E, map_neg, map_natCast, add_neg_cancel_right, ← pow_mul, ← pow_add, Nat.mod_add_div]
  rw [← Finset.sum_subset (Finset.range_mono (Nat.succ_le_of_lt hN)) (fun k _ hk => by
      rw [beta_eq_zero l c (by simpa using hk), map_zero, zero_mul, zero_mul])]
  rw [hX, add_pow, Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  have hk : (k.factorial : K) ≠ 0 := natCast_ne_zero' l k.factorial_ne_zero
  have h1 : C (beta K l e c m k) * C ((k.factorial : K)⁻¹) =
      C (c * (((m / e).choose k : K) * (-(l : K)) ^ (m / e - k))) := by
    rw [← map_mul]; congr 1; rw [beta]; field_simp
  calc _ = C (c * (((m / e).choose k : K) * (-(l : K)) ^ (m / e - k))) * X ^ (m % e) *
        E K l e ^ k := by simp only [map_mul, map_pow, map_natCast, map_neg]; ring
    _ = _ := by rw [Ediv, ← h1]; ring

end GlobalTheory.BK.SDec

namespace GlobalTheory.BK.SDec

open Filter Topology

variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [Algebra O K]
  [IsUnitBall O K] (l : ℕ) [Fact l.Prime] [NormedAlgebra ℚ_[l] K]

omit [Fact l.Prime] [NormedAlgebra ℚ_[l] K] in
theorem C_mem_A {c : K} (hc : ‖c‖ ≤ 1) : C c ∈ A O K := fun n => by
  rw [coeff_C]; split_ifs <;> simp [hc]

theorem term_mem_A (e : ℕ) {c : K} (hc : ‖c‖ ≤ 1) (r : ℕ) {k : ℕ} (hk : k < l) :
    C c * X ^ r * Ediv K l e k ∈ A O K := by
  rw [Ediv]
  refine (A O K).mul_mem ((A O K).mul_mem (C_mem_A hc) ((A O K).pow_mem HasU.X_mem r))
    ((A O K).mul_mem (C_mem_A ?_) ((A O K).pow_mem (E_mem l e (A O K)) k))
  rw [norm_inv, norm_factorial_eq_one l hk, inv_one]

theorem CX_mem_S {e : ℕ} {c : K} (hc : ‖c‖ ≤ 1) {r : ℕ} (hr : r < e) :
    C c * X ^ r ∈ S O K e := by
  rw [← monomial_eq_C_mul_X_pow]
  refine monomial_mem_S ?_
  rw [wS, Nat.div_eq_of_lt hr, Nat.factorial_zero, Nat.cast_one, norm_one, mul_one]
  exact hc

theorem sum_range_mul {M : Type*} [AddCommMonoid M] (F : ℕ → M) (Q e : ℕ) :
    ∑ m ∈ Finset.range (Q * e), F m = ∑ q ∈ Finset.range Q, ∑ r ∈ Finset.range e, F (q * e + r) := by
  induction Q with
  | zero => simp
  | succ Q ih => rw [Nat.succ_mul, Finset.sum_range_add, ih, Finset.sum_range_succ]

theorem low_eq (e j Q : ℕ) (b : ℕ → ℕ → K) :
    ∑ m ∈ Finset.range (Q * e), ∑ k ∈ Finset.range j, C (b m k) * X ^ (m % e) * Ediv K l e k =
      ∑ k ∈ Finset.range j, ∑ r ∈ Finset.range e,
        C (∑ q ∈ Finset.range Q, b (q * e + r) k) * X ^ r * Ediv K l e k := by
  rw [sum_range_mul]

  simp_rw [map_sum, Finset.sum_mul]
  calc _ = ∑ q ∈ Finset.range Q, ∑ r ∈ Finset.range e, ∑ k ∈ Finset.range j,
        C (b (q * e + r) k) * X ^ r * Ediv K l e k :=
      Finset.sum_congr rfl fun q _ => Finset.sum_congr rfl fun r hr => Finset.sum_congr rfl
        fun k _ => by
          rw [Nat.add_comm, Nat.add_mul_mod_self_right, Nat.mod_eq_of_lt (Finset.mem_range.1 hr)]
    _ = ∑ r ∈ Finset.range e, ∑ q ∈ Finset.range Q, ∑ k ∈ Finset.range j,
        C (b (q * e + r) k) * X ^ r * Ediv K l e k := Finset.sum_comm
    _ = ∑ r ∈ Finset.range e, ∑ k ∈ Finset.range j, ∑ q ∈ Finset.range Q,
        C (b (q * e + r) k) * X ^ r * Ediv K l e k :=
      Finset.sum_congr rfl fun r _ => Finset.sum_comm
    _ = _ := Finset.sum_comm

theorem coeff_head (f : K⟦X⟧) (M m : ℕ) :
    coeff m (∑ m' ∈ Finset.range M, C (coeff m' f) * X ^ m') = if m < M then coeff m f else 0 := by

  simp_rw [map_sum, coeff_C_mul_X_pow]
  rw [Finset.sum_ite_eq]
  simp

end GlobalTheory.BK.SDec

namespace GlobalTheory.BK.SDec

open Filter Topology

variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [Algebra O K]
  [IsUnitBall O K] (l : ℕ) [Fact l.Prime] [NormedAlgebra ℚ_[l] K]

theorem tail_mem {e : ℕ} {f : K⟦X⟧} (hf : f ∈ S O K e) (n M : ℕ)
    (hM : ∀ m, M ≤ m → ‖coeff m f‖ * wS K e m ≤ ‖(l : K)‖ ^ n) :
    C ((l : K) ^ n)⁻¹ * (f - ∑ m ∈ Finset.range M, C (coeff m f) * X ^ m) ∈ S O K e := by
  have hl : 0 < ‖(l : K)‖ ^ n := pow_pos (norm_pos_iff.2 (l_ne_zero l)) n
  have hc : ∀ m, coeff m (C ((l : K) ^ n)⁻¹ * (f - ∑ m ∈ Finset.range M, C (coeff m f) * X ^ m)) =
      ((l : K) ^ n)⁻¹ * (if m < M then 0 else coeff m f) := fun m => by
    rw [coeff_C_mul, map_sub, coeff_head]; split_ifs <;> simp
  have key : ∀ m, ‖coeff m (C ((l : K) ^ n)⁻¹ * (f - ∑ m ∈ Finset.range M, C (coeff m f) * X ^ m))‖ *
      wS K e m ≤ (‖(l : K)‖ ^ n)⁻¹ * (‖coeff m f‖ * wS K e m) := fun m => by
    rw [hc, norm_mul, norm_inv, norm_pow, mul_assoc]
    refine mul_le_mul_of_nonneg_left ?_ (inv_nonneg.2 hl.le)
    split_ifs
    · simpa using mul_nonneg (norm_nonneg _) (wS_nonneg e m)
    · exact le_rfl
  refine ⟨fun m => ?_, squeeze_zero (fun m => mul_nonneg (norm_nonneg _) (wS_nonneg e m)) key
    (by simpa using hf.2.const_mul (‖(l : K)‖ ^ n)⁻¹)⟩
  by_cases h : m < M
  · rw [hc, if_pos h]; simp
  · refine (key m).trans ?_
    rw [inv_mul_le_iff₀ hl, mul_one]
    exact hM m (not_lt.1 h)

theorem S_eq_A_add_Fil : ∀ (O K : Type) [CommRing O] [NormedField K] [IsUltrametricDist K]
    [CompleteSpace K] [Algebra O K] [IsUnitBall O K] (l e : ℕ) [Fact l.Prime]
    [NormedAlgebra ℚ_[l] K] [NeZero e] (j : ℕ), j < l → ∀ f ∈ S O K e,
    ∃ g ∈ A O K, ∃ φ ∈ Fil O K l e j, f = g + (φ : K⟦X⟧) := by
  intro O K _ _ _ _ _ _ l e _ _ _ j hj f hf
  have hb : ∀ m k, ‖beta K l e (coeff m f) m k‖ ≤ ‖coeff m f‖ * wS K e m := fun m k =>
    norm_beta_le l e _ m k
  have hT : Tendsto (fun m => ‖coeff m f‖ * wS K e m) atTop (𝓝 0) := hf.2
  have hle : ∀ q r, q ≤ q * e + r := fun q r =>
    (Nat.le_mul_of_pos_right q (NeZero.pos e)).trans (Nat.le_add_right _ _)
  have hs : ∀ r k, Summable fun q => beta K l e (coeff (q * e + r) f) (q * e + r) k := by
    intro r k
    refine NonarchimedeanAddGroup.summable_of_tendsto_cofinite_zero ?_
    rw [Nat.cofinite_eq_atTop]
    exact squeeze_zero_norm (fun q => hb _ _)
      (hT.comp (tendsto_atTop_mono (fun q => hle q r) tendsto_id))
  set γ : ℕ → ℕ → K := fun r k => ∑' q, beta K l e (coeff (q * e + r) f) (q * e + r) k with hγ
  have hγ1 : ∀ r k, ‖γ r k‖ ≤ 1 := fun r k =>
    IsUltrametricDist.norm_tsum_le_of_forall_le_of_nonneg zero_le_one fun q => (hb _ _).trans (hf.1 _)
  set g : K⟦X⟧ := ∑ k ∈ Finset.range j, ∑ r ∈ Finset.range e, C (γ r k) * X ^ r * Ediv K l e k
    with hgdef
  have hg : g ∈ A O K := Subalgebra.sum_mem _ fun k hk => Subalgebra.sum_mem _ fun r _ =>
    term_mem_A l e (hγ1 r k) r ((Finset.mem_range.1 hk).trans hj)
  have hφS : f - g ∈ S O K e := Subalgebra.sub_mem _ hf (A_le_S l e hg)
  refine ⟨g, hg, ⟨f - g, hφS⟩, ?_, by simp⟩
  rw [mem_Fil]
  intro n
  have hpos : 0 < ‖(l : K)‖ ^ n := pow_pos (norm_pos_iff.2 (l_ne_zero l)) n
  obtain ⟨Q, hQ⟩ := eventually_atTop.1 (hT.eventually (ge_mem_nhds hpos))
  have hQ' : ∀ m, Q * e ≤ m → ‖coeff m f‖ * wS K e m ≤ ‖(l : K)‖ ^ n := fun m hm =>
    hQ m ((Nat.le_mul_of_pos_right Q (NeZero.pos e)).trans hm)
  set P : K⟦X⟧ := ∑ m ∈ Finset.range (Q * e), C (coeff m f) * X ^ m with hPdef
  set T : ℕ → ℕ → K⟦X⟧ := fun m k => C (beta K l e (coeff m f) m k) * X ^ (m % e) * Ediv K l e k
    with hTdef
  have hTS : ∀ m k, C (beta K l e (coeff m f) m k) * X ^ (m % e) ∈ S O K e := fun m k =>
    CX_mem_S ((hb m k).trans (hf.1 m)) (Nat.mod_lt _ (NeZero.pos e))
  set G : S O K e := ∑ m ∈ Finset.range (Q * e), ∑ k ∈ Finset.Ico j (j + m / e + 1),
    (⟨_, hTS m k⟩ : S O K e) * ⟨Ediv K l e k, Ediv_mem_S l e k⟩ with hGdef
  have hG : G ∈ FilPre O K l e j := Ideal.sum_mem _ fun m _ => Ideal.sum_mem _ fun k hk =>
    Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨k, (Finset.mem_Ico.1 hk).1, rfl⟩)
  have hGc : (G : K⟦X⟧) = ∑ m ∈ Finset.range (Q * e), ∑ k ∈ Finset.Ico j (j + m / e + 1), T m k := by
    simp [hGdef, hTdef]
  set Low : K⟦X⟧ := ∑ m ∈ Finset.range (Q * e), ∑ k ∈ Finset.range j, T m k with hLowdef
  have hP : P = Low + G := by
    rw [hGc, hLowdef, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [expand l e _ m (j + m / e + 1) (by omega), Finset.sum_range_add_sum_Ico _ (Nat.le_add_right_of_le (Nat.le_add_right j (m / e)))]
  have hLow : Low = ∑ k ∈ Finset.range j, ∑ r ∈ Finset.range e,
      C (∑ q ∈ Finset.range Q, beta K l e (coeff (q * e + r) f) (q * e + r) k) * X ^ r *
        Ediv K l e k := low_eq l e j Q (fun m k => beta K l e (coeff m f) m k)
  set tl : ℕ → ℕ → K := fun r k => ∑' q, beta K l e (coeff ((q + Q) * e + r) f) ((q + Q) * e + r) k
    with htldef
  have htl : ∀ r k, γ r k - ∑ q ∈ Finset.range Q, beta K l e (coeff (q * e + r) f) (q * e + r) k =
      tl r k := fun r k => by
    simp only [hγ, htldef]
    rw [← (hs r k).sum_add_tsum_nat_add Q, add_sub_cancel_left]
  have htln : ∀ r k, ‖tl r k‖ ≤ ‖(l : K)‖ ^ n := fun r k =>
    IsUltrametricDist.norm_tsum_le_of_forall_le_of_nonneg hpos.le fun q => (hb _ _).trans
      (hQ' _ (Nat.le_add_right_of_le (Nat.mul_le_mul_right e (Nat.le_add_left Q q))))
  have hgL : g - Low = ∑ k ∈ Finset.range j, ∑ r ∈ Finset.range e, C (tl r k) * X ^ r * Ediv K l e k := by
    rw [hgdef, hLow, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun r _ => ?_
    rw [← htl, map_sub]; ring
  set h0 : K⟦X⟧ := C ((l : K) ^ n)⁻¹ * ((f - P) - (g - Low)) with hh0
  have hh : h0 ∈ S O K e := by
    have : h0 = C ((l : K) ^ n)⁻¹ * (f - P) - ∑ k ∈ Finset.range j, ∑ r ∈ Finset.range e,
        C (((l : K) ^ n)⁻¹ * tl r k) * X ^ r * Ediv K l e k := by
      rw [hh0, hgL, mul_sub, Finset.mul_sum]
      congr 1
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun r _ => ?_
      rw [map_mul]; ring
    rw [this]
    refine Subalgebra.sub_mem _ (tail_mem l hf n (Q * e) hQ') (Subalgebra.sum_mem _ fun k _ =>
      Subalgebra.sum_mem _ fun r hr => (S O K e).mul_mem (CX_mem_S ?_ (Finset.mem_range.1 hr))
        (Ediv_mem_S l e k))
    rw [norm_mul, norm_inv, norm_pow, inv_mul_le_iff₀ hpos, mul_one]
    exact htln r k
  refine ⟨G, hG, ⟨h0, hh⟩, Subtype.ext ?_⟩
  have hlC : (l : K⟦X⟧) ^ n * C ((l : K) ^ n)⁻¹ = 1 := by
    rw [← map_natCast C, ← map_pow, ← map_mul, mul_inv_cancel₀ (pow_ne_zero _ (l_ne_zero l)),
      map_one]
  simp only [Subalgebra.coe_add, Subalgebra.coe_mul, Subalgebra.coe_pow, SubringClass.coe_natCast]
  rw [hh0, ← mul_assoc, hlC, one_mul]
  linear_combination hP

end GlobalTheory.BK.SDec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilRingEqIntegralAddEisensteinFiltration =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDisc =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDisc", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SndDualLiftAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.InfiniteSum.Nonarchimedean\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.FilDiv

open PowerSeries Filter Topology GlobalTheory.BK

section
variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [Algebra O K]
  [IsUnitBall O K] (l : ℕ) [Fact l.Prime] [NormedAlgebra ℚ_[l] K] (e : ℕ) [NeZero e]

theorem norm_coeff_pow_mul_le (n : ℕ) {h : K⟦X⟧} (hh : h ∈ S O K e) (k : ℕ) :
    ‖coeff k ((l : K⟦X⟧) ^ n * h)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ n := by
  rw [← map_natCast (C : K →+* K⟦X⟧), ← map_pow, coeff_C_mul, norm_mul, norm_pow, mul_assoc]
  refine mul_le_of_le_one_right (by positivity) ?_
  refine le_trans ?_ (hh.1 k)
  refine mul_le_mul_of_nonneg_left ?_ (norm_nonneg _)
  refine le_trans ?_ (norm_pow_le_norm_factorial l (k / e))
  rw [← rad_pow l e, ← pow_mul]
  exact pow_le_pow_of_le_one (rad_nonneg _ _) (rad_le_one l (by positivity)) (Nat.mul_div_le k e)

theorem norm_coeff_E_le (k : ℕ) : ‖coeff k (E K l e)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ := by
  have he := NeZero.ne e
  rw [E, map_add (f := _), coeff_X_pow, ← map_natCast (C : K →+* K⟦X⟧), coeff_C]
  by_cases hk : k = e
  · rw [if_pos hk, if_neg (by omega), add_zero, norm_one, one_mul, hk, rad_pow (K := K) l e]
  · by_cases h0 : k = 0
    · rw [if_neg hk, if_pos h0, zero_add, h0, pow_zero, mul_one]
    · rw [if_neg hk, if_neg h0, add_zero, norm_zero, zero_mul]
      exact norm_nonneg _

variable [CompleteSpace K]

theorem norm_coeff_quotE_le {r : K⟦X⟧} {n : ℕ}
    (hr : ∀ k, ‖coeff k r‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ (n + 1)) (k : ℕ) :
    ‖coeff k (quotE l e r)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ n := by
  have hρ := rad_pos l (1 / (e : ℝ))
  have hl : 0 < ‖(l : K)‖ := norm_pos_iff.2 (l_ne_zero l)
  rw [quotE, coeff_mk]
  have h1 : ‖tail l e r (k + e)‖ ≤ ‖(l : K)‖ ^ (n + 1) / rad l (1 / e) ^ (k + e) := by
    refine IsUltrametricDist.norm_tsum_le_of_forall_le_of_nonneg (by positivity) fun j => ?_
    rw [le_div_iff₀ (pow_pos hρ _), norm_term_eq]
    exact hr _
  calc ‖tail l e r (k + e)‖ * rad l (1 / e) ^ k
      ≤ ‖(l : K)‖ ^ (n + 1) / rad l (1 / e) ^ (k + e) * rad l (1 / e) ^ k :=
        mul_le_mul_of_nonneg_right h1 (by positivity)
    _ = ‖(l : K)‖ ^ n := by
        rw [pow_add (rad l (1 / (e : ℝ))) k e, rad_pow (K := K) l e, pow_succ]
        field_simp

theorem norm_coeff_rem_le {r : K⟦X⟧} {n : ℕ}
    (hr : ∀ k, ‖coeff k r‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ (n + 1)) (k : ℕ) :
    ‖coeff k (r - E K l e * quotE l e r)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ (n + 1) := by
  have hw : ∀ i, 0 ≤ rad l (1 / (e : ℝ)) ^ i := fun i => pow_nonneg (rad_nonneg _ _) i
  rw [sub_eq_add_neg]
  refine (norm_coeff_add_le hw _ _ k).trans (max_le (hr k) ?_)
  rw [map_neg, norm_neg, pow_succ']
  exact norm_coeff_mul_le (w := fun i => rad l (1 / (e : ℝ)) ^ i) hw (fun i j => (pow_add _ i j).le)
    (norm_nonneg _) (by positivity) (norm_coeff_E_le l e) (norm_coeff_quotE_le l e hr) k

end

end GlobalTheory.FilDiv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDisc =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDiscStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDiscStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SndDualLiftAlgebraMap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDisc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries Filter Topology GlobalTheory.BK GlobalTheory.FilDiv

theorem _root_.GlobalTheory.T.mem_eisensteinFiltration_eq_eisenstein_pow_mul_disc : ∀ (O K : Type) [CommRing O] [NormedField K] [IsUltrametricDist K] [CompleteSpace K] [Algebra O K] [IsUnitBall O K] (l e : ℕ) [Fact l.Prime] [NormedAlgebra ℚ_[l] K] [NeZero e] (j : ℕ), ∀ φ : S O K e, φ ∈ Fil O K l e j → ∃ q ∈ Rpi (O := O) (K := K) l e, (φ : K⟦X⟧) = E K l e ^ j * q := by
  intro O K _ _ _ _ _ _ l e _ _ _ j φ hφ
  have filPre_divisible : ∀ {g : S O K e}, g ∈ FilPre O K l e j →
      ∃ q ∈ Rpi (O := O) (K := K) l e, (g : K⟦X⟧) = E K l e ^ j * q := by
    intro g hg
    induction hg using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨i, hi, hx⟩ := hx
      obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' hi
      refine ⟨C (((m + j).factorial : K)⁻¹) * E K l e ^ m,
        mul_mem (HasK.C_mem _) (pow_mem (E_mem l e _) m), ?_⟩
      rw [hx, Ediv]; ring
    | zero => exact ⟨0, zero_mem _, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨q, hq, h⟩ := hx
      obtain ⟨q', hq', h'⟩ := hy
      exact ⟨q + q', add_mem hq hq', by rw [Subalgebra.coe_add, h, h', mul_add]⟩
    | smul c x _ hx =>
      obtain ⟨q, hq, h⟩ := hx
      exact ⟨c * q, mul_mem (S_le_R l e c.2) hq, by
        rw [smul_eq_mul, Subalgebra.coe_mul, h]; ring⟩
  have divisible_of_approximation : ∀ (j : ℕ) {ψ : K⟦X⟧}, ψ ∈ Rpi (O := O) (K := K) l e →
      (∀ n : ℕ, ∃ q ∈ Rpi (O := O) (K := K) l e,
        ∀ k, ‖coeff k (ψ - E K l e ^ j * q)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ n) →
      ∃ q ∈ Rpi (O := O) (K := K) l e, ψ = E K l e ^ j * q := by
    intro j ψ hψ H
    induction j generalizing ψ with
    | zero => exact ⟨ψ, hψ, by simp⟩
    | succ j ih =>
      have hQ := quotE_mem_Rpi l e hψ
      have key : ∀ n, ∃ q ∈ Rpi (O := O) (K := K) l e,
          (∀ k, ‖coeff k (quotE l e ψ - E K l e ^ j * q)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ n) ∧
          ∀ k, ‖coeff k (ψ - E K l e * quotE l e ψ)‖ * rad l (1 / e) ^ k ≤ ‖(l : K)‖ ^ (n + 1) := by
        intro n
        obtain ⟨q, hq, hr⟩ := H (n + 1)
        have hrR : ψ - E K l e ^ (j + 1) * q ∈ Rpi (O := O) (K := K) l e :=
          sub_mem hψ (mul_mem (pow_mem (E_mem l e _) _) hq)
        generalize hr_def : ψ - E K l e ^ (j + 1) * q = r at hr hrR
        have hg : quotE l e ψ - E K l e ^ j * q - quotE l e r = 0 := by
          refine eq_zero_of_E_mul l e (sub_mem (sub_mem hQ (mul_mem (pow_mem (E_mem l e _) _) hq))
            (quotE_mem_Rpi l e hrR)) fun m => ?_
          have h1 := coeff_sub_E_mul_quotE l e hψ m
          have h2 := coeff_sub_E_mul_quotE l e hrR m
          have : E K l e * (quotE l e ψ - E K l e ^ j * q - quotE l e r) =
              (r - E K l e * quotE l e r) - (ψ - E K l e * quotE l e ψ) := by
            rw [← hr_def]; ring
          rw [this, map_sub, h1, h2, sub_zero]
        have hg' : quotE l e ψ - E K l e ^ j * q = quotE l e r := sub_eq_zero.1 hg
        have hrem : ψ - E K l e * quotE l e ψ = r - E K l e * quotE l e r := by
          rw [← hg', ← hr_def]; ring
        exact ⟨q, hq, fun k => by rw [hg']; exact norm_coeff_quotE_le l e hr k,
          fun k => by rw [hrem]; exact norm_coeff_rem_le l e hr k⟩
      choose qs hqs hsmall hrem using key
      obtain ⟨q, hq, hQ'⟩ := ih hQ fun n => ⟨qs n, hqs n, hsmall n⟩
      have hR0 : ψ - E K l e * quotE l e ψ = 0 := by
        ext k
        rw [map_zero]
        have hρ := pow_pos (rad_pos l (1 / (e : ℝ))) k
        have ht : Tendsto (fun n : ℕ => ‖(l : K)‖ ^ (n + 1)) atTop (𝓝 0) :=
          (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg _) (norm_l_lt_one l)).comp
            (tendsto_add_atTop_nat 1)
        have h0 : ‖coeff k (ψ - E K l e * quotE l e ψ)‖ * rad l (1 / e) ^ k ≤ 0 :=
          ge_of_tendsto' ht fun n => hrem n k
        exact norm_le_zero_iff.1 (le_of_mul_le_mul_right (by simpa using h0) hρ)
      refine ⟨q, hq, ?_⟩
      rw [sub_eq_zero] at hR0
      rw [hR0, hQ', pow_succ']; ring
  have hψ : (φ : K⟦X⟧) ∈ Rpi (O := O) (K := K) l e := S_le_R l e φ.2
  refine divisible_of_approximation j hψ fun n => ?_
  obtain ⟨g, hg, h, H⟩ := (mem_Fil l).1 hφ n
  obtain ⟨q, hq, hgq⟩ := filPre_divisible hg
  refine ⟨q, hq, fun k => ?_⟩
  have : (φ : K⟦X⟧) - E K l e ^ j * q = (l : K⟦X⟧) ^ n * h := by
    rw [H]; push_cast; rw [hgq]; ring
  rw [this]
  exact norm_coeff_pow_mul_le l e n h.2 k
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDiscStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinIntegralityComputation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinIntegralityComputation", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.ImagePolynomialAction\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilRingEqIntegralAddEisensteinFiltration\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemEisensteinFiltrationEqEisensteinPowMulDiscStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.BK Matrix

noncomputable section

namespace GlobalTheory.IntegralityComp

variable {O K : Type} [CommRing O] [NormedField K] [IsUltrametricDist K] [CompleteSpace K] [Algebra O K]
  [IsUnitBall O K] {l e a : ℕ} [Fact l.Prime] [NormedAlgebra ℚ_[l] K] [NeZero e] [NeZero a]

theorem S_eq_A_add_Fil {j : ℕ} (hj : j < l) {f : K⟦X⟧} (hf : f ∈ S O K e) :
    ∃ g ∈ A O K, ∃ φ ∈ Fil O K l e j, f = g + (φ : K⟦X⟧) := _root_.GlobalTheory.BK.SDec.S_eq_A_add_Fil O K l e j hj f hf

theorem Fil_le_E_pow (j : ℕ) {φ : S O K e} (hφ : φ ∈ Fil O K l e j) :
    ∃ q ∈ Rpi O K l e, (φ : K⟦X⟧) = E K l e ^ j * q := GlobalTheory.T.mem_eisensteinFiltration_eq_eisenstein_pow_mul_disc O K l e j φ hφ

variable {ι : Type} [Fintype ι] [DecidableEq ι]

def colVec (P : PhiMod O K l e a ι) (τ : ZMod a) (i : ι) : Vec K a ι := Pi.single τ ((P.mx τ).col i)

theorem colVec_mem_MM (P : PhiMod O K l e a ι) (τ : ZMod a) (i : ι) : colVec P τ i ∈ P.MM := by
  refine mem_tot.2 fun σ => ?_
  by_cases h : σ = τ
  · subst h
    simp only [colVec, Pi.single_eq_same]
    exact Submodule.subset_span ⟨i, rfl⟩
  · simp only [colVec, Pi.single_eq_of_ne h]
    exact zero_mem _

theorem sum_colVec (P : PhiMod O K l e a ι) (c : ZMod a → ι → K⟦X⟧) :
    (∑ τ, ∑ i, c τ i • colVec P τ i) = fun τ => P.mx τ *ᵥ c τ := by
  ext τ k
  simp only [Finset.sum_apply, Pi.smul_apply, colVec, Pi.single_apply, smul_eq_mul]
  rw [Finset.sum_eq_single τ]
  · simp [Matrix.mulVec, dotProduct, mul_comm]
  · intro b _ hb; simp [Ne.symm hb]
  · simp

theorem MM_eq_L_add_FilMM (P : PhiMod O K l e a ι) {j : ℕ} (hj : j < l) {m : Vec K a ι}
    (hm : m ∈ P.MM) : ∃ p ∈ P.L, ∃ f ∈ P.FilMM j, m = p + f := by
  have hs (τ : ZMod a) (i : ι) : (P.mxInv τ *ᵥ m τ) i ∈ S O K e :=
    P.mem_extc_iff.1 (mem_tot.1 hm τ) i
  choose g hg φ hφ hgφ using fun τ i => S_eq_A_add_Fil (O := O) (l := l) hj (hs τ i)
  have hm' (τ : ZMod a) : m τ = P.mx τ *ᵥ (P.mxInv τ *ᵥ m τ) := by
    rw [Matrix.mulVec_mulVec, P.mx_mul_mxInv, Matrix.one_mulVec]
  refine ⟨fun τ => P.mx τ *ᵥ g τ, mem_tot.2 fun τ => P.mem_extc.2 ⟨g τ, fun i => hg τ i, rfl⟩,
    ∑ τ, ∑ i, φ τ i • colVec P τ i, ?_, ?_⟩
  · exact Submodule.sum_mem _ fun τ _ => Submodule.sum_mem _ fun i _ =>
      Submodule.smul_mem_smul (hφ τ i) (colVec_mem_MM P τ i)
  · have : (∑ τ, ∑ i, φ τ i • colVec P τ i) = ∑ τ, ∑ i, (φ τ i : K⟦X⟧) • colVec P τ i := rfl
    rw [this, sum_colVec]
    ext1 τ
    rw [Pi.add_apply, ← Matrix.mulVec_add, hm' τ]
    congr 1
    ext1 i
    exact hgφ τ i

section Dat

variable [TameDescentExponentData K l e a] {η H : ℕ} (D : BKDat O K l e a ι η H)

theorem Ezpow_smul_FilMM_mem (hηH : η < H) {f : Vec K a ι} (hf : f ∈ D.FilMM (10 * H)) :
    Ezpow K l e (-(2 * H : ℤ)) • f ∈ D.Man := by
  refine Submodule.smul_induction_on hf (fun φ hφ m hm => ?_) (fun x y hx hy => ?_)
  · obtain ⟨q, hq, hφq⟩ := Fil_le_E_pow (O := O) (10 * H) hφ
    have hEm := D.smul_mem_Mext (A_le_S l e) hm
    have key : Ezpow K l e (-(2 * H : ℤ)) • φ • m =
        (E K l e ^ (8 * H - η) * q) • (E K l e ^ η • m) := by
      have h1 : Ezpow K l e (-(2 * H : ℤ)) * E K l e ^ (10 * H) = E K l e ^ (8 * H - η) * E K l e ^ η := by
        rw [← pow_add, show 8 * H - η + η = 8 * H by omega, ← Ezpow_natCast, ← Ezpow_natCast,
          ← Ezpow_add]
        congr 1
        push_cast
        ring
      rw [show φ • m = (φ : K⟦X⟧) • m from rfl, hφq, smul_smul, smul_smul, ← mul_assoc, h1]
      congr 1
      ring
    rw [key]
    exact D.smul_mem_Man (mul_mem (pow_mem (E_mem l e _) _) hq)
      (D.Mext_mono (S_le_R l e) hEm)
  · rw [smul_add]
    exact add_mem hx hy

theorem E_pow_smul_EN_mem (hηH : η < H) (hl : 10 * H + 2 ≤ l) {y : Vec K a ι} (hy : y ∈ D.EM η) :
    ∃ p ∈ D.L, ∃ f ∈ D.FilMM (10 * H), E K l e ^ (2 * H) • D.EN y = p + f := by
  have hl0 : E K l e ^ (H + η) • y ∈ D.L := by
    rw [pow_add, mul_smul]
    exact D.lower _ hy
  have hMM : E K l e ^ (H + η) • y ∈ D.MM := D.ext_mono (A_le_S l e) hl0
  have hc : D.conn (E K l e ^ (H + η) • y) ∈ D.MM := D.conn_mem_MM hMM
  have hA : E K l e ^ (H - η) * E K l e ∈ S O K e := mul_mem (pow_mem (E_mem l e _) _) (E_mem l e _)
  obtain ⟨p, hp, f, hf, hpf⟩ := MM_eq_L_add_FilMM D.toPhiMod (j := 10 * H) (by omega)
    (D.MM.smul_mem ⟨_, hA⟩ hc)
  have hB : E K l e ^ (H - η) * (((H + η : ℕ) : K⟦X⟧) * N K (E K l e)) ∈ A O K :=
    mul_mem (pow_mem (E_mem l e _) _) (mul_mem (natCast_mem _ _) (by
      rw [N_E]; exact mul_mem (natCast_mem _ _) (pow_mem HasU.X_mem _)))
  refine ⟨p - (E K l e ^ (H - η) * (((H + η : ℕ) : K⟦X⟧) * N K (E K l e))) • (E K l e ^ (H + η) • y),
    sub_mem hp (D.L.smul_mem ⟨_, hB⟩ hl0), f, hf, ?_⟩
  have h1 : E K l e ^ (2 * H) • D.EN y = E K l e ^ (H - η) • (E K l e ^ (H + η) • D.EN y) := by
    rw [smul_smul, ← pow_add, show H - η + (H + η) = 2 * H by omega]
  rw [h1, PhiMod.E_pow_smul_EN, PhiMod.EN_apply, smul_sub, smul_smul, smul_smul]
  have h2 : (E K l e ^ (H - η) * E K l e) • D.conn (E K l e ^ (H + η) • y) = p + f := hpf
  rw [h2]
  abel

end Dat

end GlobalTheory.IntegralityComp

theorem GlobalTheory.IntegralityComp.integralityComputation : ∀ (O K : Type) [CommRing O] [NormedField K] [IsUltrametricDist K] [CompleteSpace K] [Algebra O K] [IsUnitBall O K] (l e a : ℕ) (ι : Type) [Fintype ι] [DecidableEq ι] [Fact l.Prime] [NormedAlgebra ℚ_[l] K] [NeZero e] [NeZero a] [TameDescentExponentData K l e a] (η H : ℕ) (D : BKDat O K l e a ι η H), η < H → 10 * H + 2 ≤ l → GlobalTheory.IndefiniteRowSideFullHecke.ImagePolynomialAction.IntegralityComputation D := by
  intro O K _ _ _ _ _ _ l e a ι _ _ _ _ _ _ _ η H D hηH hl
  exact ⟨fun m hm => GlobalTheory.IntegralityComp.MM_eq_L_add_FilMM D.toPhiMod (by omega) hm,
    fun f hf => GlobalTheory.IntegralityComp.Ezpow_smul_FilMM_mem D hηH hf,
    fun y hy => GlobalTheory.IntegralityComp.E_pow_smul_EN_mem D hηH hl hy⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinIntegralityComputation =====
