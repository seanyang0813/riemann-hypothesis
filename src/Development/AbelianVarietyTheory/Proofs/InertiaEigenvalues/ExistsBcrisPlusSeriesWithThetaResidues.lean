module

public import Mathlib.Analysis.Normed.Field.Instances
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalMapSurjective
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP
public import Development.AbelianVarietyTheory.CrystallinePeriods.CrisMapsLoc
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingIface
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltFrobeniusIntegerPowerLaws
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinExt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemFilPIffEvPt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BdRFiltrationLaws
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonemptyThetaDeRhamFilZeroConcretePeriod
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltUntiltToComplexPAdicBasicLaws
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UntiltFrobeniusDoubleSeriesHasSumAndNormBounds
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Acris0TorsionFree
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ThetaBdRPlusSurjectiveKerUnitsEquivariant

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEigenvectorHasSumAdicCompleteFrobenius, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TmPowDvd, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisSeriesTermsMemPrimePow, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoSidedShiftSeriesHasSum, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFrobeniusSeriesAcrisUntilt, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAcrisPhiPowEigenvectorDoubleSeries, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaDeRhamFiltrationAcris, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEigenvectorHasSumAdicCompleteFrobenius =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEigenvectorHasSumAdicCompleteFrobenius", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.AdicCompletion.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial

namespace GlobalTheory

theorem abssum_eigen_lim : ∀ (l : ℕ) [Fact l.Prime] (A : Type) [CommRing A] [IsAdicComplete (Ideal.span {(l : A)}) A] (φ : A →+* A) (h : ℕ) (w : ℕ → A), (∀ k, φ^[h] (w k) = (l : A) * w k) → ∃ W : A, φ^[h] W = (l : A) * W ∧ ∀ Θ : A →+* ℂ_[l], (∀ a, ‖Θ a‖ ≤ 1) → HasSum (fun k : ℕ => (l : ℂ_[l]) ^ k * Θ (w k)) (Θ W) := by
  intro l _ A _ _ φ h w hw
  have key : ∀ (n : ℕ) (x : A), x ∈ (Ideal.span {(l : A)} ^ n • ⊤ : Submodule A A) ↔ (l : A) ^ n ∣ x := by
    intro n x
    rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
  let S : ℕ → A := fun N => ∑ k ∈ Finset.range N, (l : A) ^ k * w k
  have hS : ∀ m n, m ≤ n → (l : A) ^ m ∣ S n - S m := by
    intro m n hmn
    simp only [S]
    rw [← Finset.sum_range_add_sum_Ico _ hmn, add_sub_cancel_left]
    apply Finset.dvd_sum
    intro k hk
    exact Dvd.dvd.mul_right (pow_dvd_pow _ (Finset.mem_Ico.1 hk).1) _
  obtain ⟨W, hW⟩ := IsPrecomplete.prec (I := Ideal.span {(l : A)}) (M := A) inferInstance (f := S)
    (fun {m n} hmn => by rw [SModEq.sub_mem, key]; exact dvd_sub_comm.1 (hS m n hmn))
  have hWN : ∀ N, ∃ c : A, W = S N + (l : A) ^ N * c := by
    intro N
    have h1 := SModEq.sub_mem.1 (hW N)
    rw [key] at h1
    obtain ⟨c, hc⟩ := dvd_sub_comm.1 h1
    exact ⟨c, by rw [← hc]; ring⟩
  simp only [← RingHom.coe_pow] at hw ⊢
  have hSψ : ∀ N, (φ ^ h) (S N) = (l : A) * S N := by
    intro N

    simp only [S, map_sum, map_mul, map_pow, map_natCast, hw, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  refine ⟨W, ?_, ?_⟩
  · rw [← sub_eq_zero]
    apply IsHausdorff.haus (I := Ideal.span {(l : A)}) inferInstance
    intro n
    rw [SModEq.sub_mem, sub_zero, key]
    obtain ⟨c, hc⟩ := hWN n
    rw [hc, map_add (f := _), map_mul, map_pow, map_natCast, hSψ]
    exact ⟨(φ ^ h) c - (l : A) * c, by ring⟩
  · intro Θ hΘ
    have hl : ‖(l : ℂ_[l])‖ = (l : ℝ)⁻¹ := by
      rw [show (l : ℂ_[l]) = (((l : ℚ_[l])) : ℂ_[l]) by simp, PadicComplex.norm_extends', Padic.norm_p]
    have hlt : ‖(l : ℂ_[l])‖ < 1 := by
      rw [hl]
      apply inv_lt_one_of_one_lt₀
      exact_mod_cast (Fact.out : l.Prime).one_lt
    have hbound : ∀ k, ‖(l : ℂ_[l]) ^ k * Θ (w k)‖ ≤ ‖(l : ℂ_[l])‖ ^ k := by
      intro k
      rw [norm_mul, norm_pow]
      exact mul_le_of_le_one_right (by positivity) (hΘ _)
    have hsum : Summable (fun k => (l : ℂ_[l]) ^ k * Θ (w k)) :=
      Summable.of_norm_bounded (summable_geometric_of_lt_one (norm_nonneg _) hlt) hbound
    rw [hsum.hasSum_iff_tendsto_nat]
    have hpart : ∀ N, ∑ i ∈ Finset.range N, (l : ℂ_[l]) ^ i * Θ (w i) = Θ (S N) := by
      intro N

      simp [S, map_sum, map_mul, map_pow, map_natCast]
    simp only [hpart]
    rw [tendsto_iff_norm_sub_tendsto_zero]
    refine squeeze_zero (fun _ => norm_nonneg _) (fun N => ?_)
      (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg _) hlt)
    obtain ⟨c, hc⟩ := hWN N
    rw [hc, map_add (f := _), sub_add_cancel_left, norm_neg, map_mul, map_pow, map_natCast, norm_mul, norm_pow]
    exact mul_le_of_le_one_right (by positivity) (hΘ _)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEigenvectorHasSumAdicCompleteFrobenius =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TmPowDvd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TmPowDvd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalMapSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.Per GlobalTheory.PSer
open scoped Formalism.Per

namespace GlobalTheory.PSer

theorem tm_pow_dvd : ∀ (l : ℕ) [Fact l.Prime] (x : Fl l), ‖sh x‖ ≤ ‖(l : ℂ_[l])‖ →
    (l : Acris l) ∣ algebraMap (Ainf l) (Acris l) (tm x) ^ l := by
  intro l _ x hx
  have hmem : x.untilt ∈ (Ideal.span {(l : OC l)}) ^ 1 := by
    rw [GlobalTheory.RingBasics.mem_span_pow_OC, pow_one]
    exact hx
  rw [pow_one] at hmem
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 hmem
  obtain ⟨z, hz⟩ := GlobalTheory.MemLoc.FundOnto.untilt_surjective l c
  have hk := GlobalTheory.MemLoc.FundOnto.dvd_pow_of_ker l (tm x - (l : Ainf l) * tm z) (by
    rw [map_sub, map_mul, map_natCast, GlobalTheory.MemLoc.FundOnto.theta_tm,
      GlobalTheory.MemLoc.FundOnto.theta_tm, hz, ← hc, mul_comm, sub_self])
  rw [map_sub, map_mul, map_natCast] at hk
  generalize algebraMap (Ainf l) (Acris l) (tm x) = X at hk ⊢
  generalize algebraMap (Ainf l) (Acris l) (tm z) = Z at hk
  have h1 : ((l : ℕ) : Acris l) ∣ X - (X - (l : Acris l) * Z) := ⟨Z, by ring⟩
  have h2 := h1.trans (sub_dvd_pow_sub_pow _ _ l)
  have := dvd_add h2 hk
  simpa using this

end GlobalTheory.PSer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TmPowDvd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisSeriesTermsMemPrimePow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisSeriesTermsMemPrimePow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TmPowDvd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.Per GlobalTheory.PSer
open scoped Formalism.Per

namespace GlobalTheory.PSer

theorem pw_natCast_eq_pow (l : ℕ) [Fact l.Prime] (n : ℕ) (x : Fl l) : pw (n : ℤ) x = x ^ l ^ n := by
  unfold pw
  rw [zpow_natCast]
  induction n generalizing x with
  | zero => simp
  | succ k ih =>
    rw [pow_succ, RingAut.mul_apply, ih, frobeniusEquiv_apply, frobenius_def, ← pow_mul, pow_succ,
      mul_comm]

theorem two_mul_succ_le_pow (l k h : ℕ) (hl : 2 ≤ l) (hh : 2 ≤ h) :
    2 * (k + 1) ≤ l ^ ((k + 1) * h - 1) := by
  have h1 : 2 * k + 1 < 2 ^ (2 * k + 1) := Nat.lt_two_pow_self
  have h2 : 2 ^ (2 * k + 1) ≤ l ^ (2 * k + 1) := Nat.pow_le_pow_left hl _
  have h3 : (k + 1) * 2 ≤ (k + 1) * h := Nat.mul_le_mul_left _ hh
  have h4 : l ^ (2 * k + 1) ≤ l ^ ((k + 1) * h - 1) := Nat.pow_le_pow_right (by omega) (by omega)
  omega

theorem terms_mem (l : ℕ) [Fact l.Prime] (h : ℕ) (x : Fl l) (hh : 2 ≤ h)
    (hx : ‖sh x‖ ≤ ‖(l : ℂ_[l])‖) :
    ∃ c : ℤ → Acris l, (∀ n : ℤ, (l : Acris l) ^ n.natAbs ∣ c n) ∧ ∀ n : ℤ,
      (l : Acris l) ^ n.toNat * c n =
        (l : Acris l) ^ (-n).toNat * algebraMap (Ainf l) (Acris l) (tm (pw (n * h) x)) := by
  have key : ∀ n : ℤ, ∃ c : Acris l, (l : Acris l) ^ n.natAbs ∣ c ∧
      (l : Acris l) ^ n.toNat * c =
        (l : Acris l) ^ (-n).toNat * algebraMap (Ainf l) (Acris l) (tm (pw (n * h) x)) := by
    intro n
    obtain ⟨m, rfl | rfl⟩ := Int.eq_nat_or_neg n
    · cases m with
      | zero => exact ⟨algebraMap (Ainf l) (Acris l) (tm (pw (0 * h) x)), by simp, by simp⟩
      | succ k =>
        have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
        obtain ⟨d, hd⟩ := tm_pow_dvd l x hx
        set y := algebraMap (Ainf l) (Acris l) (tm x)
        set M := l ^ ((k + 1) * h - 1)
        have hM := two_mul_succ_le_pow l k h hl2 hh
        have hN : l ^ ((k + 1) * h) = l * M := by
          have : (k + 1) * h = ((k + 1) * h - 1) + 1 := by
            have : 2 ≤ (k + 1) * h := le_trans hh (Nat.le_mul_of_pos_left h (Nat.succ_pos k))
            omega
          rw [this, pow_succ, mul_comm]
        have hpow : algebraMap (Ainf l) (Acris l) (tm (pw (((k + 1 : ℕ) : ℤ) * h) x)) =
            (l : Acris l) ^ (2 * (k + 1)) * ((l : Acris l) ^ (M - 2 * (k + 1)) * d ^ M) := by
          have e1 : (((k + 1 : ℕ) : ℤ) * (h : ℤ)) = (((k + 1) * h : ℕ) : ℤ) := by push_cast; ring
          rw [e1, pw_natCast_eq_pow, show tm (x ^ l ^ ((k + 1) * h)) = tm x ^ l ^ ((k + 1) * h) from
            map_pow (WittVector.teichmuller l) x _, map_pow, hN, pow_mul, hd, mul_pow, ← mul_assoc,
            ← pow_add, Nat.add_sub_cancel' hM]
        refine ⟨(l : Acris l) ^ (k + 1) * ((l : Acris l) ^ (M - 2 * (k + 1)) * d ^ M), ?_, ?_⟩
        · have e4 : (((k + 1 : ℕ) : ℤ)).natAbs = k + 1 := by omega
          rw [e4]
          exact Dvd.intro _ rfl
        · have e2 : (-((k + 1 : ℕ) : ℤ)).toNat = 0 := by omega
          have e3 : (((k + 1 : ℕ) : ℤ)).toNat = k + 1 := by omega
          rw [e2, e3, pow_zero, one_mul, hpow, ← mul_assoc, ← pow_add]
          ring_nf
    · refine ⟨(l : Acris l) ^ m * algebraMap (Ainf l) (Acris l) (tm (pw (-(m : ℤ) * h) x)),
        ?_, ?_⟩
      · have e4 : (-(m : ℤ)).natAbs = m := by omega
        rw [e4]
        exact Dvd.intro _ rfl
      · have e2 : (-(m : ℤ)).toNat = 0 := by omega
        have e3 : (-(-(m : ℤ))).toNat = m := by omega
        rw [e2, e3, pow_zero, one_mul]
  choose c hc1 hc2 using key
  exact ⟨c, hc1, hc2⟩

end GlobalTheory.PSer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisSeriesTermsMemPrimePow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoSidedShiftSeriesHasSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoSidedShiftSeriesHasSum", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.AdicCompletion.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial

namespace GlobalTheory.TwoSidedShift

theorem mem_pow_span_iff (l : ℕ) (A : Type) [CommRing A] (n : ℕ) (x : A) :
    x ∈ ((Ideal.span {(l : A)}) ^ n • ⊤ : Submodule A A) ↔ (l : A) ^ n ∣ x := by
  simp [Ideal.span_singleton_pow, Ideal.mem_span_singleton]

theorem exists_sum_shift : ∀ (l : ℕ) [Fact l.Prime] (A : Type) [CommRing A]
    [IsAdicComplete (Ideal.span {(l : A)}) A] (φ : A →+* A) (h : ℕ) (c : ℤ → A),
    (∀ n : ℤ, (l : A) ^ n.natAbs ∣ c n) → (∀ n : ℤ, φ^[h] (c n) = (l : A) * c (n + 1)) →
    ∃ w : A, φ^[h] w = (l : A) * w ∧ ∀ Θ : A →+* ℂ_[l], (∀ a, ‖Θ a‖ ≤ 1) →
      HasSum (fun n : ℤ => Θ (c n)) (Θ w) := by
  intro l _ A _ _ φ h c hc hsh
  set ψ : A →+* A := φ ^ h with hψdef
  have hψ : ∀ x, φ^[h] x = ψ x := fun x => by rw [hψdef, RingHom.coe_pow]
  have hsh' : ∀ n : ℤ, ψ (c n) = (l : A) * c (n + 1) := fun n => by rw [← hψ]; exact hsh n
  set T : ℕ → A := fun N => ∑ n ∈ Finset.Icc (-(N : ℤ)) N, c n with hT
  have hIcc : ∀ N : ℕ, Finset.Icc (-((N + 1 : ℕ) : ℤ)) ((N + 1 : ℕ) : ℤ)
      = insert (-((N + 1 : ℕ) : ℤ)) (insert ((N + 1 : ℕ) : ℤ) (Finset.Icc (-(N : ℤ)) N)) := by
    intro N; ext x; simp only [Finset.mem_Icc, Finset.mem_insert]; push_cast; omega
  have hstep : ∀ N : ℕ, T (N + 1) = T N + c ((N + 1 : ℕ) : ℤ) + c (-((N + 1 : ℕ) : ℤ)) := by
    intro N
    simp only [hT]
    rw [hIcc N, Finset.sum_insert, Finset.sum_insert]
    · ring
    · simp only [Finset.mem_Icc]; push_cast; omega
    · simp only [Finset.mem_insert, Finset.mem_Icc]; push_cast; omega
  have hdstep : ∀ N : ℕ, (l : A) ^ (N + 1) ∣ T (N + 1) - T N := by
    intro N
    rw [hstep N, show T N + c ((N + 1 : ℕ) : ℤ) + c (-((N + 1 : ℕ) : ℤ)) - T N
      = c ((N + 1 : ℕ) : ℤ) + c (-((N + 1 : ℕ) : ℤ)) by ring]
    refine dvd_add ?_ ?_
    · have := hc ((N + 1 : ℕ) : ℤ)
      rwa [show (((N + 1 : ℕ) : ℤ)).natAbs = N + 1 by omega] at this
    · have := hc (-((N + 1 : ℕ) : ℤ))
      rwa [show (-((N + 1 : ℕ) : ℤ)).natAbs = N + 1 by omega] at this
  have hcauchy : ∀ m n : ℕ, m ≤ n → (l : A) ^ m ∣ T n - T m := by
    intro m n hmn
    induction n, hmn using Nat.le_induction with
    | base => simp
    | succ n hmn ih =>
      rw [show T (n + 1) - T m = (T (n + 1) - T n) + (T n - T m) by ring]
      exact dvd_add ((pow_dvd_pow _ (by omega)).trans (hdstep n)) ih
  obtain ⟨w, hw⟩ := IsPrecomplete.prec (I := Ideal.span {(l : A)}) inferInstance (f := T)
    (fun {m n} hmn => by
      rw [SModEq.sub_mem, mem_pow_span_iff]
      rw [← dvd_neg, neg_sub]; exact hcauchy m n hmn)
  have hwT : ∀ N : ℕ, (l : A) ^ N ∣ w - T N := by
    intro N
    have := hw N
    rw [SModEq.sub_mem, mem_pow_span_iff] at this
    rw [← dvd_neg, neg_sub]; exact this

  have hE : ∀ N : ℕ, ψ (T N) - (l : A) * T N = (l : A) * (c ((N : ℤ) + 1) - c (-(N : ℤ))) := by
    intro N
    induction N with
    | zero => simp [hT, hsh']; ring
    | succ N ih =>
      rw [hstep N, map_add (f := _), map_add (f := _), hsh', hsh']
      have e1 : (-((N + 1 : ℕ) : ℤ) + 1) = -(N : ℤ) := by push_cast; ring
      have e2 : (((N + 1 : ℕ) : ℤ) + 1) = ((N + 1 : ℕ) : ℤ) + 1 := rfl
      rw [e1]
      push_cast at ih ⊢
      linear_combination ih
  have hEd : ∀ N : ℕ, (l : A) ^ N ∣ ψ (T N) - (l : A) * T N := by
    intro N
    rw [hE N]
    have h1 : (l : A) ^ (N + 1) ∣ c ((N : ℤ) + 1) := by
      have := hc ((N : ℤ) + 1)
      rwa [show ((N : ℤ) + 1).natAbs = N + 1 by omega] at this
    have h2 : (l : A) ^ N ∣ c (-(N : ℤ)) := by simpa using hc (-(N : ℤ))
    exact dvd_mul_of_dvd_right (dvd_sub ((pow_dvd_pow _ (by omega)).trans h1) h2) _
  refine ⟨w, ?_, ?_⟩
  · rw [hψ, ← sub_eq_zero]
    refine IsHausdorff.haus (I := Ideal.span {(l : A)}) inferInstance _ (fun N => ?_)
    rw [SModEq.sub_mem, sub_zero, mem_pow_span_iff]
    rw [show ψ w - (l : A) * w = ψ (w - T N) + (ψ (T N) - (l : A) * T N) - (l : A) * (w - T N) by
      rw [map_sub]; ring]
    refine dvd_sub (dvd_add ?_ (hEd N)) (dvd_mul_of_dvd_right (hwT N) _)
    have := map_dvd ψ (hwT N)
    simpa [map_pow, map_natCast] using this
  · intro Θ hΘ
    set r : ℝ := ‖(l : ℂ_[l])‖ with hr
    have hr1 : r < 1 := by
      have h := PadicComplex.norm_extends' l (l : ℚ_[l])
      have h2 : ‖(l : ℚ_[l])‖ < 1 := Padic.norm_p_lt_one
      rw [← h] at h2
      simpa using h2
    have hr0 : 0 ≤ r := norm_nonneg _
    have hbound : ∀ (n : ℕ) (a : A), (l : A) ^ n ∣ a → ‖Θ a‖ ≤ r ^ n := by
      intro n a ⟨b, hb⟩
      rw [hb, map_mul, map_pow, map_natCast, norm_mul, norm_pow]
      exact mul_le_of_le_one_right (pow_nonneg hr0 _) (hΘ b)
    change Filter.Tendsto (fun s : Finset ℤ => ∑ b ∈ s, Θ (c b)) Filter.atTop (nhds (Θ w))
    rw [Metric.tendsto_atTop]
    intro ε hε
    obtain ⟨N, hN⟩ := exists_pow_lt_of_lt_one hε hr1
    refine ⟨Finset.Icc (-(N : ℤ)) N, fun s hs => ?_⟩
    rw [dist_eq_norm, ← Finset.sum_sdiff hs]
    have hrest : ‖∑ n ∈ s \ Finset.Icc (-(N : ℤ)) N, Θ (c n)‖ ≤ r ^ N := by
      refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (pow_nonneg hr0 _) fun n hn => ?_
      have hn' : n ∉ Finset.Icc (-(N : ℤ)) N := (Finset.mem_sdiff.1 hn).2
      rw [Finset.mem_Icc] at hn'
      refine (hbound _ _ (hc n)).trans (pow_le_pow_of_le_one hr0 hr1.le (by omega))
    have hhead : ‖∑ n ∈ Finset.Icc (-(N : ℤ)) N, Θ (c n) - Θ w‖ ≤ r ^ N := by

      rw [← map_sum, ← map_sub]
      refine hbound N _ ?_
      rw [← dvd_neg, neg_sub]; exact hwT N
    rw [add_sub_assoc]
    exact lt_of_le_of_lt ((IsUltrametricDist.norm_add_le_max _ _).trans (max_le hrest hhead)) hN

end GlobalTheory.TwoSidedShift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoSidedShiftSeriesHasSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFrobeniusSeriesAcrisUntilt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFrobeniusSeriesAcrisUntilt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.CrisMapsLoc\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingIface\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisSeriesTermsMemPrimePow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltFrobeniusIntegerPowerLaws\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoSidedShiftSeriesHasSum\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Acris0TorsionFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.Per GlobalTheory.PSer
open scoped Formalism.Per

namespace GlobalTheory.PSer

theorem iter_tm {l : ℕ} [Fact l.Prime] (j : ℕ) (z : Fl l) :
    (⇑(GlobalTheory.MemLoc.phiA l))^[j] (algebraMap (Ainf l) (Acris l) (tm z)) =
      algebraMap (Ainf l) (Acris l) (tm (z ^ l ^ j)) := by
  induction j with
  | zero => simp
  | succ j ih =>
    rw [Function.iterate_succ_apply', ih, (GlobalTheory.CrisMaps.phiA_extends l).alg]
    congr 1
    refine (GlobalTheory.RingIface.phiA_teich l (z ^ l ^ j)).trans ?_
    rw [← pow_mul, ← pow_succ]

theorem acris_cancel {l : ℕ} [Fact l.Prime] (k : ℕ) (u v : Acris l)
    (e : (l : Acris l) ^ k * u = (l : Acris l) ^ k * v) : u = v := by
  induction k with
  | zero => simpa using e
  | succ k ih =>
    apply ih
    rw [← sub_eq_zero]
    apply (GlobalTheory.MemLoc.acris_basic l).2.1
    linear_combination e

theorem series_acris : ∀ (l : ℕ) [Fact l.Prime] (h : ℕ) (x : Fl l), 2 ≤ h → ‖sh x‖ ≤ ‖(l : ℂ_[l])‖ → ∃ w : Acris l, (GlobalTheory.MemLoc.phiA l)^[h] w = (l : Acris l) * w ∧ ∀ (Θ : Acris l →+* ℂ_[l]), (∀ a, ‖Θ a‖ ≤ 1) → (∀ z : Fl l, Θ (algebraMap (Ainf l) (Acris l) (tm z)) = sh z) → ∀ j : ℕ, Θ ((GlobalTheory.MemLoc.phiA l)^[j] w) = lam h j x := by
  intro l _ h x h2 hx
  obtain ⟨-, -, -, hpw_comp, hpw_nat, -, -⟩ := _root_.GlobalTheory.PSer.PwLaws.pw_laws l
  obtain ⟨c, hdvd, hc⟩ := _root_.GlobalTheory.PSer.terms_mem l h x h2 hx
  haveI := (GlobalTheory.MemLoc.acris_basic l).1
  have hφl : ∀ (j : ℕ) (k : ℕ) (a : Acris l), (⇑(GlobalTheory.MemLoc.phiA l))^[j] ((l : Acris l) ^ k * a) =
      (l : Acris l) ^ k * (⇑(GlobalTheory.MemLoc.phiA l))^[j] a := by
    intro j k a
    rw [← RingHom.coe_pow, map_mul, map_pow, map_natCast]
  have hpwj : ∀ (n : ℤ) (j : ℕ), pw (n * h) x ^ l ^ j = pw (n * h + j) x := by
    intro n j
    rw [← hpw_nat, ← hpw_comp, add_comm]
  have shift : ∀ n : ℤ, (⇑(GlobalTheory.MemLoc.phiA l))^[h] (c n) = (l : Acris l) * c (n + 1) := by
    intro n
    apply acris_cancel (n.toNat + (n+1).toNat)
    have e1 := congrArg ((⇑(GlobalTheory.MemLoc.phiA l))^[h]) (hc n)
    rw [hφl, hφl, iter_tm, hpwj] at e1
    have e2 := hc (n + 1)
    have hh : (n + 1) * (h : ℤ) = n * h + h := by ring
    rw [hh] at e2
    calc (l : Acris l) ^ (n.toNat + (n+1).toNat) * (⇑(GlobalTheory.MemLoc.phiA l))^[h] (c n)
        = (l : Acris l) ^ (n+1).toNat * ((l : Acris l) ^ n.toNat * (⇑(GlobalTheory.MemLoc.phiA l))^[h] (c n)) := by ring
      _ = (l : Acris l) ^ (n+1).toNat * ((l : Acris l) ^ (-n).toNat *
            algebraMap (Ainf l) (Acris l) (tm (pw (n * h + h) x))) := by rw [e1]
      _ = (l : Acris l) ^ (n.toNat + 1) * ((l : Acris l) ^ (-(n+1)).toNat *
            algebraMap (Ainf l) (Acris l) (tm (pw (n * h + h) x))) := by
          rw [← mul_assoc, ← mul_assoc, ← pow_add, ← pow_add]
          congr 2
          omega
      _ = _ := by rw [← e2]; ring
  obtain ⟨w, hw, hsum⟩ := _root_.GlobalTheory.TwoSidedShift.exists_sum_shift l (Acris l) (GlobalTheory.MemLoc.phiA l) h c hdvd shift
  refine ⟨w, hw, fun Θ hΘ hΘt j => ?_⟩
  have hs := hsum (Θ.comp (GlobalTheory.MemLoc.phiA l ^ j)) (fun a => hΘ _)
  have hl : (l : ℂ_[l]) ≠ 0 := GlobalTheory.RingBasics.p_ne_zero
  have hterm : ∀ n : ℤ, (Θ.comp (GlobalTheory.MemLoc.phiA l ^ j)) (c n) =
      (l : ℂ_[l]) ^ (-n) * sh (pw (n * h + j) x) := by
    intro n
    have e := congrArg (Θ.comp (GlobalTheory.MemLoc.phiA l ^ j)) (hc n)
    rw [RingHom.comp_apply, RingHom.comp_apply, RingHom.coe_pow, hφl, hφl, iter_tm, hpwj, map_mul,
      map_mul, map_pow, map_pow, map_natCast, hΘt] at e
    rw [RingHom.comp_apply, RingHom.coe_pow]
    have hn : -n = ((-n).toNat : ℤ) - (n.toNat : ℤ) := by omega
    have ha : (l : ℂ_[l]) ^ n.toNat ≠ 0 := pow_ne_zero _ hl
    rw [hn, zpow_sub₀ hl, zpow_natCast, zpow_natCast]
    calc Θ ((⇑(GlobalTheory.MemLoc.phiA l))^[j] (c n))
        = ((l : ℂ_[l]) ^ n.toNat)⁻¹ * ((l : ℂ_[l]) ^ n.toNat * Θ ((⇑(GlobalTheory.MemLoc.phiA l))^[j] (c n))) := by
          rw [inv_mul_cancel_left₀ ha]
      _ = _ := by rw [e]; ring
  have hs' : HasSum (fun n : ℤ => (l : ℂ_[l]) ^ (-n) * sh (pw (n * h + j) x))
      ((Θ.comp (GlobalTheory.MemLoc.phiA l ^ j)) w) := by
    simpa only [hterm] using hs
  rw [lam, hs'.tsum_eq, RingHom.comp_apply, RingHom.coe_pow]

end GlobalTheory.PSer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFrobeniusSeriesAcrisUntilt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAcrisPhiPowEigenvectorDoubleSeries =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAcrisPhiPowEigenvectorDoubleSeries", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEigenvectorHasSumAdicCompleteFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFrobeniusSeriesAcrisUntilt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Acris0TorsionFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.Per GlobalTheory.PSer
open scoped Formalism.Per

namespace GlobalTheory.PSer

theorem exists_acris_Lam : ∀ (l : ℕ) [Fact l.Prime] (h : ℕ) (y : ℕ → Fl l), 2 ≤ h → (∀ k, ‖sh (y k)‖ ≤ ‖(l : ℂ_[l])‖) → ∃ w : Acris l, (GlobalTheory.MemLoc.phiA l)^[h] w = (l : Acris l) * w ∧ ∀ (Θ : Acris l →+* ℂ_[l]), (∀ a, ‖Θ a‖ ≤ 1) → (∀ z : Fl l, Θ (algebraMap (Ainf l) (Acris l) (tm z)) = sh z) → ∀ j : ℕ, Θ ((GlobalTheory.MemLoc.phiA l)^[j] w) = abelian₂ h j y := by
  intro l _ h y hh hy
  choose w hw hθ using fun k => _root_.GlobalTheory.PSer.series_acris l h (y k) hh (hy k)
  haveI : IsAdicComplete (Ideal.span {(l : Acris l)}) (Acris l) := (GlobalTheory.MemLoc.acris_basic l).1
  obtain ⟨W, hW, hsum⟩ := _root_.GlobalTheory.abssum_eigen_lim l (Acris l) (GlobalTheory.MemLoc.phiA l) h w hw
  refine ⟨W, hW, fun Θ hΘ htm j => ?_⟩
  set φ := GlobalTheory.MemLoc.phiA l
  have hS := hsum (Θ.comp (φ ^ j)) (fun a => hΘ _)
  simp only [RingHom.coe_comp, RingHom.coe_pow, Function.comp_apply] at hS
  unfold abelian₂
  rw [← hS.tsum_eq]
  congr 1
  funext k
  rw [hθ k Θ hΘ htm j]

end GlobalTheory.PSer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAcrisPhiPowEigenvectorDoubleSeries =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaDeRhamFiltrationAcris =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaDeRhamFiltrationAcris", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinExt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalMapSurjective\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemFilPIffEvPt\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BdRFiltrationLaws\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonemptyThetaDeRhamFilZeroConcretePeriod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ThetaBdRPlusSurjectiveKerUnitsEquivariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon GlobalTheory.PSer TensorProduct
open scoped Formalism.Per

namespace GlobalTheory.PSer

open GlobalTheory.MemLoc GlobalTheory.MemLoc.TiedTheta

theorem theta_fil_acris : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI),
    ∃ (S : Subring P.R.BdR) (θ : ↥S →+* ℂ_[l]) (Θ : Formalism.Per.Acris l →+* ℂ_[l]),
      (∀ x, x ∈ S ↔ x ∈ Fil P 0) ∧ (∀ x : ↥S, θ x = 0 ↔ (x : P.R.BdR) ∈ Fil P 1) ∧
      (∀ c : ℚ_[l], ∃ hm, θ ⟨algebraMap ℚ_[l] P.R.BdR c, hm⟩ = algebraMap ℚ_[l] ℂ_[l] c) ∧
      (∀ a, ‖Θ a‖ ≤ 1) ∧
      (∀ z : Formalism.Per.Fl l, Θ (algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l) (Formalism.Per.tm z)) = sh z) ∧
      ∀ a : Formalism.Per.Acris l, ∃ hm, θ ⟨P.ιB (T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l) a)), hm⟩ = Θ a := by
  intro l _ P AI T
  obtain ⟨C, hC⟩ := GlobalTheory.MemLoc.FitsEx.exists_fits l P AI T
  let S : Subring P.R.BdR := (algebraMap (Formalism.Per.BdRp l) (Formalism.Per.BdR l)).range.comap T.eD.toRingHom
  have hS : ∀ x, x ∈ S ↔ ∃ y : Formalism.Per.BdRp l, T.eD x = algebraMap (Formalism.Per.BdRp l) (Formalism.Per.BdR l) y := by
    intro x
    change (∃ y, _ = T.eD x) ↔ _
    exact exists_congr fun y => eq_comm
  have hF0 : ∀ x, x ∈ S ↔ x ∈ Fil P 0 := by
    intro x
    rw [hS]
    change _ ↔ x ∈ (P.PD (botExt l)).Fil 0
    rw [T.fil]
    constructor
    · rintro ⟨y, hy⟩
      rw [hy]
      exact TiedUnif.alg_mem_FilD_zero y
    · intro hx
      obtain ⟨y, hy⟩ := exists_of_mem_FilD_zero hx
      exact ⟨y, hy⟩
  let θ : ↥S →+* ℂ_[l] :=
    { toFun := fun x => thetaExt (T.eD x)
      map_one' := by
        change thetaExt (T.eD 1) = 1
        rw [map_one, ← map_one (algebraMap (Formalism.Per.BdRp l) (Formalism.Per.BdR l)), thetaExt_alg, map_one]
      map_mul' := fun x y => by
        obtain ⟨u, hu⟩ := (hS x).1 x.2
        obtain ⟨v, hv⟩ := (hS y).1 y.2
        change thetaExt (T.eD ((x : P.R.BdR) * y)) = thetaExt (T.eD x) * thetaExt (T.eD y)
        rw [map_mul, hu, hv, ← map_mul, thetaExt_alg, thetaExt_alg, thetaExt_alg, map_mul]
      map_zero' := by
        change thetaExt (T.eD 0) = 0
        rw [map_zero, ← map_zero (algebraMap (Formalism.Per.BdRp l) (Formalism.Per.BdR l)), thetaExt_alg, map_zero]
      map_add' := fun x y => by
        obtain ⟨u, hu⟩ := (hS x).1 x.2
        obtain ⟨v, hv⟩ := (hS y).1 y.2
        change thetaExt (T.eD ((x : P.R.BdR) + y)) = thetaExt (T.eD x) + thetaExt (T.eD y)
        rw [map_add (f := _), hu, hv, ← map_add (f := _), thetaExt_alg, thetaExt_alg, thetaExt_alg, map_add (f := _)] }
  have hθ : ∀ (x : ↥S) (y : Formalism.Per.BdRp l), T.eD x = algebraMap (Formalism.Per.BdRp l) (Formalism.Per.BdR l) y →
      θ x = Formalism.Per.θD l y := by
    intro x y h
    change thetaExt (T.eD x) = _
    rw [h, thetaExt_alg]
  let Θ : Formalism.Per.Acris l →+* ℂ_[l] := (Formalism.Per.θD l).comp C.j
  refine ⟨S, θ, Θ, hF0, fun x => ?_, fun c => ?_, fun a => FundOnto.norm_theta_j_le C a, fun z => ?_,
    fun a => ?_⟩
  · obtain ⟨u, hu⟩ := (hS x).1 x.2
    change θ x = 0 ↔ (x : P.R.BdR) ∈ (P.PD (botExt l)).Fil 1
    rw [T.fil, hu, hθ x u hu, (thetaD_props l).2.1]
    exact ((filD_laws l).2.2.2.2.2.2 1 u).symm
  · have e : algebraMap ℚ_[l] P.R.BdR c = algebraMap (Om l) P.R.BdR (algebraMap ℚ_[l] (Om l) c) :=
      IsScalarTower.algebraMap_apply _ _ _ _
    obtain ⟨y, hy, hy'⟩ := T.om (algebraMap ℚ_[l] (Om l) c)
    have hm : algebraMap ℚ_[l] P.R.BdR c ∈ S := by
      rw [hS, e]
      exact ⟨y, hy⟩
    refine ⟨hm, ?_⟩
    rw [hθ ⟨_, hm⟩ y (by rw [← hy]; exact congrArg T.eD e), hy']
    rfl
  · change Formalism.Per.θD l (C.j _) = _
    rw [FundOnto.theta_j_alg, FundOnto.theta_tm]
    rfl
  · have hm : P.ιB (T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l) a)) ∈ S := by
      rw [hS, hC.ι, RingEquiv.apply_symm_apply, C.ι_j]
      exact ⟨_, rfl⟩
    refine ⟨hm, hθ ⟨_, hm⟩ (C.j a) ?_⟩
    change T.eD (P.ιB _) = _
    rw [hC.ι, RingEquiv.apply_symm_apply, C.ι_j]

end GlobalTheory.PSer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaDeRhamFiltrationAcris =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.CrisMapsLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAcrisPhiPowEigenvectorDoubleSeries\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaDeRhamFiltrationAcris\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltUntiltToComplexPAdicBasicLaws\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UntiltFrobeniusDoubleSeriesHasSumAndNormBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon GlobalTheory.PSer TensorProduct
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.PSer

theorem iterate_phiB_eB_symm (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI)
    (j : ℕ) (a : Formalism.Per.Acris l) :
    P.φB^[j] (T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l) a)) =
      T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l)
        ((GlobalTheory.MemLoc.phiA l)^[j] a)) := by
  induction j generalizing a with
  | zero => rfl
  | succ j ih =>
    rw [Function.iterate_succ_apply, Function.iterate_succ_apply]
    have h1 : P.φB (T.eB.symm (algebraMap _ (Formalism.Per.Bcris l) a)) =
        T.eB.symm (algebraMap _ (Formalism.Per.Bcris l) (GlobalTheory.MemLoc.phiA l a)) := by
      apply T.eB.injective
      rw [T.frob, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply]
      exact GlobalTheory.CrisMaps.φB_phiA l a
    rw [h1, ih]

theorem iterate_phiB_algebraMap_mul (l : ℕ) [Fact l.Prime] (P : LocPrime l) (c : ℚ_[l]) (j : ℕ)
    (x : P.R.B) : P.φB^[j] (algebraMap ℚ_[l] P.R.B c * x) = algebraMap ℚ_[l] P.R.B c * P.φB^[j] x := by
  induction j with
  | zero => rfl
  | succ j ih =>
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply', ih, map_mul, AlgHom.commutes]

theorem series_residues : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI),
    ∃ (S : Subring P.R.BdR) (θ : ↥S →+* ℂ_[l]), (∀ x, x ∈ S ↔ x ∈ Fil P 0) ∧
      (∀ x : ↥S, θ x = 0 ↔ (x : P.R.BdR) ∈ Fil P 1) ∧
      (∀ c : ℚ_[l], ∃ hm, θ ⟨algebraMap ℚ_[l] P.R.BdR c, hm⟩ = algebraMap ℚ_[l] ℂ_[l] c) ∧
      ∀ (h : ℕ) (r : ℝ) (y : ℕ → Formalism.Per.Fl l), 2 ≤ h → r < 1 → (∀ k, ‖sh (y k)‖ ≤ r) →
        ∃ b : P.R.B, Plus T b ∧ P.φB^[h] b = (l : P.R.B) * b ∧
          ∀ j : ℕ, ∃ hm, θ ⟨ev P j b, hm⟩ = abelian₂ h j y := by
  intro l _ P AI T
  obtain ⟨S, θ, Θ, hS, hθ1, hθc, hΘn, hΘt, hΘ⟩ := _root_.GlobalTheory.PSer.theta_fil_acris l P AI T
  refine ⟨S, θ, hS, hθ1, hθc, ?_⟩
  intro h r y hh hr hy
  have hp : l.Prime := Fact.out
  have hr0 : 0 ≤ r := (norm_nonneg _).trans (hy 0)
  have hl0 : (l : ℚ_[l]) ≠ 0 := Nat.cast_ne_zero.2 hp.ne_zero
  have hlpos : 0 < ‖(l : ℂ_[l])‖ := norm_pos_iff.2 (Nat.cast_ne_zero.2 hp.ne_zero)
  obtain ⟨N, hN⟩ := exists_pow_lt_of_lt_one hlpos hr
  have hNle : N ≤ l ^ (h * N) :=
    (Nat.lt_pow_self hp.one_lt).le.trans (Nat.pow_le_pow_right hp.pos (Nat.le_mul_of_pos_left N (by omega)))
  have key : ∀ k, ‖sh (y k ^ l ^ (h * N))‖ ≤ ‖(l : ℂ_[l])‖ := by
    intro k
    rw [(_root_.GlobalTheory.PSer.Laws.sh_laws l).2.2.2.1, norm_pow]
    calc ‖sh (y k)‖ ^ (l ^ (h * N)) ≤ r ^ (l ^ (h * N)) := pow_le_pow_left₀ (norm_nonneg _) (hy k) _
      _ ≤ r ^ N := pow_le_pow_of_le_one hr0 hr.le hNle
      _ ≤ ‖(l : ℂ_[l])‖ := hN.le
  obtain ⟨w, hwφ, hwΘ⟩ := _root_.GlobalTheory.PSer.exists_acris_Lam l h (fun k => y k ^ l ^ (h * N)) hh key
  set c : ℚ_[l] := ((l : ℚ_[l]) ^ N)⁻¹ with hcdef
  set b' : P.R.B := T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l) w) with hb'
  refine ⟨algebraMap ℚ_[l] P.R.B c * b', ?_, ?_, ?_⟩
  · refine ⟨N, w, ?_⟩
    have hc : (l : P.R.B) ^ N * algebraMap ℚ_[l] P.R.B c = 1 := by
      rw [← map_natCast (algebraMap ℚ_[l] P.R.B), ← map_pow, ← map_mul, hcdef,
        mul_inv_cancel₀ (pow_ne_zero _ hl0), map_one]
    rw [← mul_assoc, hc, one_mul, hb', RingEquiv.apply_symm_apply]
  · rw [iterate_phiB_algebraMap_mul, hb', iterate_phiB_eB_symm, hwφ, map_mul, map_natCast, map_mul,
      map_natCast]
    ring
  · intro j
    obtain ⟨hm1, e1⟩ := hθc c
    obtain ⟨hm2, e2⟩ := hΘ ((GlobalTheory.MemLoc.phiA l)^[j] w)
    have heq : ev P j (algebraMap ℚ_[l] P.R.B c * b') = algebraMap ℚ_[l] P.R.BdR c *
        P.ιB (T.eB.symm (algebraMap (Formalism.Per.Acris l) (Formalism.Per.Bcris l)
          ((GlobalTheory.MemLoc.phiA l)^[j] w))) := by
      rw [ev, iterate_phiB_algebraMap_mul, hb', iterate_phiB_eB_symm, map_mul, AlgHom.commutes]
    refine ⟨heq ▸ S.mul_mem hm1 hm2, ?_⟩
    have hsub : (⟨ev P j (algebraMap ℚ_[l] P.R.B c * b'), heq ▸ S.mul_mem hm1 hm2⟩ : ↥S) =
        ⟨algebraMap ℚ_[l] P.R.BdR c, hm1⟩ * ⟨_, hm2⟩ := Subtype.ext heq
    rw [hsub, map_mul, e1, e2, hwΘ Θ hΘn hΘt j,
      (_root_.GlobalTheory.PSer.Lam_main l h j r y (by omega) hr hy).2.2.2 N, hcdef, map_inv₀, map_pow, map_natCast,
      inv_mul_cancel_left₀ (pow_ne_zero _ (Nat.cast_ne_zero.2 hp.ne_zero))]

end GlobalTheory.PSer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues =====
