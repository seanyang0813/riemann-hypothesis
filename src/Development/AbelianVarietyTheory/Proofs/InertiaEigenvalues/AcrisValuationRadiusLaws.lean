module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisGaussNormEventuallyMonomial
public import Development.AbelianVarietyTheory.CrystallinePeriods.CrisMapsLoc
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGaussGCTarget
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisRadiusPosDefinite
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ISupMonomialHolderLogConvex
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Acris0TorsionFree
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Lemma

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisUnique, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocyclePartialSumIterateSucc, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationRadiusLaws

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisUnique", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisGaussNormEventuallyMonomial\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Acris0TorsionFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Formalism.Per
open Filter Topology

namespace GlobalTheory.PMon.Gauss

theorem abs_sub_le_of_le_max {a b t : ℝ} (ht : 0 ≤ t) (ha : 0 ≤ a) (hb : 0 ≤ b) (hab : a ≤ max b t) (hba : b ≤ max a t) :
    |a - b| ≤ t := by
  rcases le_total a b with h | h
  · rw [abs_of_nonpos (sub_nonpos.2 h)]
    rcases le_max_iff.1 hba with h' | h'
    · linarith
    · linarith
  · rw [abs_of_nonneg (sub_nonneg.2 h)]
    rcases le_max_iff.1 hab with h' | h'
    · linarith
    · linarith

variable {l : ℕ} [Fact l.Prime]

theorem isGauss_natCast {ρ : ℝ} (hρ : 0 ≤ ρ) {N : Formalism.Per.Acris l → ℝ} (hN : IsGauss l ρ N) :
    N (l : Formalism.Per.Acris l) = ρ := by
  rw [← map_natCast (algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l)) l, hN.2.2.2.2]
  exact GlobalTheory.GaussSlope.gauss_l l hρ

theorem isGauss_pow_mul {ρ : ℝ} (hρ : 0 ≤ ρ) {N : Formalism.Per.Acris l → ℝ} (hN : IsGauss l ρ N)
    (k : ℕ) (x : Formalism.Per.Acris l) : N ((l : Formalism.Per.Acris l) ^ k * x) = ρ ^ k * N x := by
  rw [GlobalTheory.GaussSlope.map_pow_mul N hN.2.2.2.1, isGauss_natCast hρ hN]

theorem isGauss_eq_on_acris0 {ρ : ℝ} (hρ : 0 < ρ) {N N' : Formalism.Per.Acris l → ℝ} (hN : IsGauss l ρ N)
    (hN' : IsGauss l ρ N') (s : Formalism.Per.Acris0 l) :
    N (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s) =
      N' (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s) := by
  obtain ⟨k, a, ha⟩ := GlobalTheory.GaussSlope.exists_pow_mul_eq l s
  have h1 := congrArg N ha
  have h2 := congrArg N' ha
  rw [isGauss_pow_mul hρ.le hN, hN.2.2.2.2] at h1
  rw [isGauss_pow_mul hρ.le hN', hN'.2.2.2.2] at h2
  have hk : ρ ^ k ≠ 0 := pow_ne_zero _ hρ.ne'
  exact mul_left_cancel₀ hk (h1.trans h2.symm)

theorem isGauss_abs_sub_le {ρ : ℝ} (hρ : 0 ≤ ρ) {N : Formalism.Per.Acris l → ℝ} (hN : IsGauss l ρ N)
    (s z : Formalism.Per.Acris l) (r : ℕ) : |N (s + (l : Formalism.Per.Acris l) ^ r * z) - N s| ≤ ρ ^ r := by
  obtain ⟨h01, hadd, hneg, -, -⟩ := id hN
  have hz : N ((l : Formalism.Per.Acris l) ^ r * z) ≤ ρ ^ r := by
    rw [isGauss_pow_mul hρ hN]
    exact mul_le_of_le_one_right (pow_nonneg hρ _) (h01 z).2
  apply abs_sub_le_of_le_max (pow_nonneg hρ _) (h01 _).1 (h01 _).1
  · exact (hadd _ _).trans (max_le_max le_rfl hz)
  · have := hadd (s + (l : Formalism.Per.Acris l) ^ r * z) (-((l : Formalism.Per.Acris l) ^ r * z))
    rw [add_neg_cancel_right, hneg] at this
    exact this.trans (max_le_max le_rfl hz)

theorem isGauss_unique : ∀ (l : ℕ) [Fact l.Prime] (ρ : ℝ) (N N' : Formalism.Per.Acris l → ℝ), (l : ℝ)⁻¹ ≤ ρ → ρ < 1 →
    IsGauss l ρ N → IsGauss l ρ N' → N = N' := by
  intro l _ ρ N N' hρl hρ1 hN hN'
  have hl : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
  have hρ : 0 < ρ := (inv_pos.2 hl).trans_le hρl
  funext x
  have hb : ∀ r : ℕ, |N x - N' x| ≤ 2 * ρ ^ r := by
    intro r
    obtain ⟨s, z, hx⟩ := (GlobalTheory.MemLoc.acris_basic l).2.2.1 x r
    have e := isGauss_eq_on_acris0 hρ hN hN' s
    have h1 := isGauss_abs_sub_le hρ.le hN (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s) z r
    have h2 := isGauss_abs_sub_le hρ.le hN' (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s) z r
    rw [← hx] at h1 h2
    rw [e] at h1
    calc |N x - N' x| = |(N x - N' (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s)) -
          (N' x - N' (algebraMap (Formalism.Per.Acris0 l) (Formalism.Per.Acris l) s))| := by ring_nf
      _ ≤ _ := abs_sub _ _
      _ ≤ 2 * ρ ^ r := by linarith
  have ht : Tendsto (fun r : ℕ => 2 * ρ ^ r) atTop (𝓝 (2 * 0)) :=
    (tendsto_pow_atTop_nhds_zero_of_lt_one hρ.le hρ1).const_mul 2
  rw [mul_zero] at ht
  have h0 : |N x - N' x| ≤ 0 := ge_of_tendsto' ht hb
  exact sub_eq_zero.1 (abs_nonpos_iff.1 h0)

end GlobalTheory.PMon.Gauss

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisUnique =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocyclePartialSumIterateSucc =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocyclePartialSumIterateSucc", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.CrisMapsLoc\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisUnique\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGaussGCTarget\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Formalism.Per

namespace GlobalTheory.PMon.Gauss

variable {l : ℕ} [Fact l.Prime]

theorem iSup_pow_eq {f : ℕ → ℝ} (h0 : ∀ n, 0 ≤ f n) (hb : BddAbove (Set.range f)) (k : ℕ) :
    (⨆ n, f n ^ k) = (⨆ n, f n) ^ k := by
  have hS : 0 ≤ ⨆ n, f n := le_ciSup_of_le hb 0 (h0 0)
  have hle : ∀ n, f n ^ k ≤ (⨆ n, f n) ^ k := fun n => pow_le_pow_left₀ (h0 n) (le_ciSup hb n) k
  have hb' : BddAbove (Set.range fun n => f n ^ k) := ⟨_, Set.forall_mem_range.2 hle⟩
  refine le_antisymm (ciSup_le hle) ?_
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · simp
  by_contra hlt
  push_neg at hlt
  set T := ⨆ n, f n ^ k
  have hT : 0 ≤ T := le_ciSup_of_le hb' 0 (pow_nonneg (h0 0) k)
  have hroot : T ^ ((1 : ℝ) / k) < ⨆ n, f n := by
    have := Real.rpow_lt_rpow hT hlt (by positivity : (0 : ℝ) < 1 / k)
    rwa [← Real.rpow_natCast, ← Real.rpow_mul hS, mul_one_div_cancel (by positivity), Real.rpow_one] at this
  obtain ⟨n, hn⟩ := exists_lt_of_lt_ciSup hroot
  have h1 := pow_lt_pow_left₀ hn (Real.rpow_nonneg hT _) hk.ne'
  rw [← Real.rpow_natCast, ← Real.rpow_mul hT, one_div_mul_cancel (by positivity), Real.rpow_one] at h1
  exact absurd (le_ciSup hb' n) (not_le.2 h1)

theorem gA_phi (ρ : ℝ) (hρ0 : 0 ≤ ρ) (hρ1 : ρ ≤ 1) (a : Formalism.Per.Ainf l) :
    gA l ρ (Formalism.Per.φA l a) = gA l (ρ ^ ((1 : ℝ) / l)) a ^ l := by
  have hl : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
  set σ := ρ ^ ((1 : ℝ) / l)
  have hσ0 : 0 ≤ σ := Real.rpow_nonneg hρ0 _
  have hσ1 : σ ≤ 1 := Real.rpow_le_one hρ0 hρ1 (by positivity)
  have hσl : σ ^ l = ρ := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul hρ0, one_div_mul_cancel hl.ne', Real.rpow_one]
  set f : ℕ → ℝ := fun n => ‖(((a.coeff n).untilt : Formalism.Per.OC l) : ℂ_[l])‖ ^ ((1 : ℝ) / (l : ℝ) ^ n) * σ ^ n
  have hf0 : ∀ n, 0 ≤ f n := fun n => by positivity
  have hf1 : ∀ n, f n ≤ 1 := fun n =>
    mul_le_one₀ (Real.rpow_le_one (norm_nonneg _) ((GlobalTheory.RingBasics.mem_OC _).1 (Subtype.prop _)) (by positivity))
      (pow_nonneg hσ0 _) (pow_le_one₀ hσ0 hσ1)
  have hterm : ∀ n, ‖((((Formalism.Per.φA l a).coeff n).untilt : Formalism.Per.OC l) : ℂ_[l])‖ ^ ((1 : ℝ) / (l : ℝ) ^ n) * ρ ^ n
      = f n ^ l := by
    intro n
    have hc : (Formalism.Per.φA l a).coeff n = a.coeff n ^ l := by
      rw [GlobalTheory.RingBasics.φA_apply, WittVector.coeff_frobenius_charP]
    rw [hc, map_pow, SubmonoidClass.coe_pow, norm_pow, ← hσl, mul_pow, ← pow_mul, ← pow_mul, mul_comm n l, pow_mul]
    congr 1
    rw [← Real.rpow_natCast_mul (norm_nonneg _), ← Real.rpow_mul_natCast (norm_nonneg _), mul_comm]
  simp only [gA]
  simp_rw [hterm]
  exact iSup_pow_eq hf0 ⟨1, Set.forall_mem_range.2 hf1⟩ l

theorem isGauss_phi (ρ : ℝ) (h0 : (l : ℝ)⁻¹ ≤ ρ) (h1 : ρ < 1) :
    IsGauss l (ρ ^ ((1 : ℝ) / l)) (fun x => gC l ρ (φc l x) ^ ((1 : ℝ) / l)) := by
  have hl : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
  have hρ0 : 0 ≤ ρ := (inv_nonneg.2 hl.le).trans h0
  obtain ⟨e1, e2, e3, e4, e5⟩ := isGauss_gC_of_le l ρ h0 h1
  have hpos : (0 : ℝ) < 1 / l := by positivity
  refine ⟨fun x => ⟨Real.rpow_nonneg (e1 _).1 _, Real.rpow_le_one (e1 _).1 (e1 _).2 hpos.le⟩, fun x y => ?_,
    fun x => ?_, fun x y => ?_, fun a => ?_⟩
  · simp only [map_add (f := _)]
    refine (Real.rpow_le_rpow (e1 _).1 (e2 _ _) hpos.le).trans ?_
    rcases le_total (gC l ρ (φc l x)) (gC l ρ (φc l y)) with h | h
    · rw [max_eq_right h, max_eq_right (Real.rpow_le_rpow (e1 _).1 h hpos.le)]
    · rw [max_eq_left h, max_eq_left (Real.rpow_le_rpow (e1 _).1 h hpos.le)]
  · simp only [map_neg, e3]
  · simp only [map_mul, e4]
    exact Real.mul_rpow (e1 _).1 (e1 _).1
  · simp only
    have ha : φc l (algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l) a) =
        algebraMap (Formalism.Per.Ainf l) (Formalism.Per.Acris l) (Formalism.Per.φA l a) := (GlobalTheory.CrisMaps.phiA_extends l).alg a
    rw [ha, e5, gA_phi ρ hρ0 h1.le, ← Real.rpow_natCast, ← Real.rpow_mul, mul_one_div_cancel hl.ne', Real.rpow_one]
    exact le_ciSup_of_le ⟨1, by
      rintro _ ⟨n, rfl⟩
      exact mul_le_one₀ (Real.rpow_le_one (norm_nonneg _) ((GlobalTheory.RingBasics.mem_OC _).1 (Subtype.prop _)) (by positivity))
        (pow_nonneg (Real.rpow_nonneg hρ0 _) _) (pow_le_one₀ (Real.rpow_nonneg hρ0 _)
          (Real.rpow_le_one hρ0 h1.le (by positivity)))⟩ 0 (by positivity)

theorem gC_phi : ∀ (l : ℕ) [Fact l.Prime] (ρ : ℝ), (l : ℝ)⁻¹ ≤ ρ → ρ < 1 → ∀ x : Formalism.Per.Acris l,
    gC l ρ (φc l x) = gC l (ρ ^ ((1 : ℝ) / l)) x ^ l := by
  intro l _ ρ h0 h1 x
  have hl1 : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt
  have hl : (0 : ℝ) < l := by linarith
  have hρ0 : 0 ≤ ρ := (inv_nonneg.2 hl.le).trans h0
  have hσ0 : ρ ≤ ρ ^ ((1 : ℝ) / l) := by
    conv_lhs => rw [← Real.rpow_one ρ]
    exact Real.rpow_le_rpow_of_exponent_ge' hρ0 h1.le (by positivity)
      (by rw [div_le_one hl]; exact hl1.le)
  have hσ1 : ρ ^ ((1 : ℝ) / l) < 1 := Real.rpow_lt_one hρ0 h1 (by positivity)
  have e := _root_.GlobalTheory.PMon.Gauss.isGauss_unique l (ρ ^ ((1 : ℝ) / l)) _ _ (h0.trans hσ0) hσ1 (isGauss_phi ρ h0 h1)
    (isGauss_gC_of_le l _ (h0.trans hσ0) hσ1)
  have ex : gC l ρ (φc l x) ^ ((1 : ℝ) / l) = gC l (ρ ^ ((1 : ℝ) / l)) x := congrFun e x
  rw [← ex, ← Real.rpow_natCast, ← Real.rpow_mul ((isGauss_gC_of_le l ρ h0 h1).1 _).1,
    one_div_mul_cancel hl.ne', Real.rpow_one]

end GlobalTheory.PMon.Gauss

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocyclePartialSumIterateSucc =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationRadiusLaws =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationRadiusLaws", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsGauss\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocyclePartialSumIterateSucc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaussNormAcrisRadiusPosDefinite\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ISupMonomialHolderLogConvex\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGaussGCTarget\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Formalism.Per

namespace GlobalTheory.PMon.Gauss

variable (l : ℕ) [Fact l.Prime]

lemma vrlaw_one_lt : (1 : ℝ) < l := by
  exact_mod_cast (Fact.out : l.Prime).one_lt

lemma vrlaw_rad (r : ℝ) (h0 : 0 < r) (h1 : r ≤ 1) :
    (l : ℝ)⁻¹ ≤ (l : ℝ) ^ (-r) ∧ (l : ℝ) ^ (-r) < 1 := by
  have hl := vrlaw_one_lt l
  constructor
  · rw [← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hl.le (by linarith)
  · exact Real.rpow_lt_one_of_one_lt_of_neg hl (by linarith)

lemma vrlaw_gC_zero (ρ : ℝ) (h0 : (l : ℝ)⁻¹ ≤ ρ) (h1 : ρ < 1) : gC l ρ 0 = 0 := by
  have hG := _root_.GlobalTheory.PMon.Gauss.isGauss_gC_of_le l ρ h0 h1
  have hm := hG.2.2.2.1 0 (l : Formalism.Per.Acris l)
  rw [zero_mul, (_root_.GlobalTheory.PMon.Gauss.gC_basic_values l ρ h0 h1).2.1] at hm
  have : gC l ρ 0 * (1 - ρ) = 0 := by linarith
  rcases mul_eq_zero.1 this with h | h
  · exact h
  · exact absurd h (by linarith)

theorem vr_laws : ∀ (l : ℕ) [Fact l.Prime] (r : ℝ), 0 < r → r ≤ 1 →
    (∀ x y : Formalism.Per.Acris l, x ≠ 0 → y ≠ 0 → vr l r (x * y) = vr l r x + vr l r y) ∧
    (∀ x : Formalism.Per.Acris l, x ≠ 0 → φc l x ≠ 0 ∧ vr l r (φc l x) = l * vr l (r / l) x) ∧
    (∀ (x : Formalism.Per.Acris l) (n : ℕ), x ≠ 0 → vr l r ((l : Formalism.Per.Acris l) ^ n * x) = n * r + vr l r x) ∧
    ∀ x : Formalism.Per.Acris l, x ≠ 0 → vr l r x = -Real.logb l (gC l ((l : ℝ) ^ (-r)) x) := by
  intro l _ r hr0 hr1
  have hl := vrlaw_one_lt l
  have hl0 : (0 : ℝ) < l := by linarith
  obtain ⟨hρ0, hρ1⟩ := vrlaw_rad l r hr0 hr1
  set ρ : ℝ := (l : ℝ) ^ (-r) with hρ
  have hG := isGauss_gC_target l ρ hρ0 hρ1
  have hpos : ∀ x : Formalism.Per.Acris l, x ≠ 0 → 0 < gC l ρ x := fun x hx => _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx ρ hρ0 hρ1
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro x y hx hy
    simp only [vr]
    rw [← hρ, hG.2.2.2.1 x y, Real.logb_mul (hpos x hx).ne' (hpos y hy).ne']
    ring
  · intro x hx
    have hl' : (0 : ℝ) < l := hl0
    have hrl0 : 0 < r / l := div_pos hr0 hl'
    have hrl1 : r / l ≤ 1 := by
      rw [div_le_one hl']; linarith
    obtain ⟨hσ0, hσ1⟩ := vrlaw_rad l (r / l) hrl0 hrl1
    have he : ρ ^ ((1 : ℝ) / l) = (l : ℝ) ^ (-(r / l)) := by
      rw [hρ, ← Real.rpow_mul hl0.le]
      congr 1
      ring
    have hF := _root_.GlobalTheory.PMon.Gauss.gC_phi l ρ hρ0 hρ1 x
    rw [he] at hF
    have hxp : 0 < gC l ((l : ℝ) ^ (-(r / l))) x := _root_.GlobalTheory.PMon.Gauss.gC_pos_of_ne_zero l x hx _ hσ0 hσ1
    refine ⟨?_, ?_⟩
    · intro h0
      rw [h0, vrlaw_gC_zero l ρ hρ0 hρ1] at hF
      exact (pow_pos hxp l).ne' hF.symm
    · simp only [vr]
      rw [← hρ, hF, Real.logb_pow]
      ring
  · intro x n hx
    have hpow : ∀ m : ℕ, gC l ρ ((l : Formalism.Per.Acris l) ^ m * x) = ρ ^ m * gC l ρ x := by
      intro m
      induction m with
      | zero => simp
      | succ m ih =>
        rw [pow_succ', mul_assoc, hG.2.2.2.1, ih, (_root_.GlobalTheory.PMon.Gauss.gC_basic_values l ρ hρ0 hρ1).2.1]
        ring
    simp only [vr]
    rw [← hρ, hpow n, Real.logb_mul (pow_pos (by rw [hρ]; exact Real.rpow_pos_of_pos hl0 _) n).ne' (hpos x hx).ne', Real.logb_pow,
      hρ, Real.logb_rpow hl0 hl.ne']
    ring
  · intro x _
    rfl

end GlobalTheory.PMon.Gauss

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AcrisValuationRadiusLaws =====
