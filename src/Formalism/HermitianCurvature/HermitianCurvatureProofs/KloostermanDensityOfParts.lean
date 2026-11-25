module

public import Formalism.HermitianCurvature.BigCellVanishingOfCommute
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostDensOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BudgetTopConvergence
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeBoundInBanachSpace
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FubiniHeadLastPart
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InnerAveragingInputOfSliceData
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragingVanishes, Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostermanDensityOfParts

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragingVanishes =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragingVanishes", "h": "module\n\npublic import Formalism.HermitianCurvature.BigCellVanishingOfCommute\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt Finset

noncomputable section

namespace Formalism.FourierDecayAlt.P.GeometricRayBounds

theorem exists_dir {ι : Type*} (S : Finset ι) (c : ι → ℂ) (hc : ∀ i ∈ S, c i ≠ 0) :
    ∃ u : ℂ, u ≠ 0 ∧ ∀ i ∈ S, (c i * u).re ≠ 0 := by
  classical
  obtain ⟨t, ht⟩ : ∃ t : ℝ, t ∉ S.image (fun i => (c i).re / (c i).im) := by
    first
    | exact Infinite.exists_notMem_finset _
  refine ⟨1 + (t : ℂ) * Complex.I, ?_, fun i hi => ?_⟩
  · intro h
    have h1 := congrArg Complex.re h
    simp at h1
  · intro h0
    have h0' : (c i).re = (c i).im * t := by
      simp at h0
      linarith
    by_cases him : (c i).im = 0
    · exact hc i hi (Complex.ext (by rw [h0', him, zero_mul, Complex.zero_re])
        (by rw [him, Complex.zero_im]))
    · exact ht (Finset.mem_image.2 ⟨i, hi, by rw [h0']; exact mul_div_cancel_left₀ t him⟩)

theorem p_sum_le {V : Type*} [AddCommGroup V] [Module ℂ V] (p : Seminorm ℂ V) {ι : Type*} (S : Finset ι)
    (f : ι → V) : p (∑ i ∈ S, f i) ≤ ∑ i ∈ S, p (f i) := by
  induction S using Finset.cons_induction with
  | empty => simp
  | cons a S ha ih =>
    rw [Finset.sum_cons, Finset.sum_cons]
    exact (map_add_le_add p _ _).trans (add_le_add_right ih _)

theorem geom_bound (q : ℂ) (hq : ‖q‖ = 1) (hq1 : q ≠ 1) (M : ℕ) :
    ‖∑ m ∈ range M, q ^ m‖ ≤ 2 / ‖q - 1‖ := by
  have hne : 0 < ‖q - 1‖ := norm_pos_iff.2 (sub_ne_zero.2 hq1)
  rw [geom_sum_eq hq1, norm_div]
  apply div_le_div_of_nonneg_right _ hne.le
  calc ‖q ^ M - 1‖ ≤ ‖q ^ M‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
    _ = 2 := by
      rw [norm_pow, hq, one_pow, norm_one]
      norm_num

theorem exp_ne_one {x : ℝ} (h0 : x ≠ 0) (h1 : |x| < 2 * Real.pi) :
    Complex.exp (Complex.I * (x : ℂ)) ≠ 1 := by
  intro h
  obtain ⟨n, hn⟩ := Complex.exp_eq_one_iff.1 h
  have h2 := congrArg Complex.im hn
  simp at h2
  have hx : x = n * (2 * Real.pi) := by linarith
  rw [hx, abs_lt] at h1
  rcases lt_trichotomy n 0 with hn0 | hn0 | hn0
  · have h3 : (n : ℝ) ≤ -1 := by exact_mod_cast Int.le_sub_one_of_lt hn0
    nlinarith
  · subst hn0
    simp at hx
    exact h0 hx
  · have h3 : (1 : ℝ) ≤ n := by exact_mod_cast hn0
    nlinarith

end Formalism.FourierDecayAlt.P.GeometricRayBounds

namespace Formalism.FourierDecayAlt.P

open GeometricRayBounds

theorem averaging_vanishes : C6.AveragingZero := by
  intro β hβ V _ _ p s w a C' x₁ hw H j0
  classical
  set c : Fin s → ℂ := fun j => β * (w j - w j0) with hcdef
  have hc : ∀ j ∈ Finset.univ.erase j0, c j ≠ 0 := by
    intro j hj
    have hj' : j ≠ j0 := Finset.ne_of_mem_erase hj
    exact mul_ne_zero hβ (sub_ne_zero.2 fun h => hj' (hw h))
  obtain ⟨u, hu0, hu⟩ := exists_dir (Finset.univ.erase j0) c hc
  have hunorm : 0 < ‖u‖ := norm_pos_iff.2 hu0
  have hsum0 : 0 ≤ ∑ j, |(c j * u).re| := Finset.sum_nonneg fun _ _ => abs_nonneg _
  set K0 : ℝ := 1 + ∑ j, |(c j * u).re| with hK0
  have hK0pos : 0 < K0 := by linarith
  set t : ℝ := Real.pi / K0 with ht
  have htpos : 0 < t := div_pos Real.pi_pos hK0pos
  have hphase : ∀ j, |t * (c j * u).re| < 2 * Real.pi := by
    intro j
    have hle : |(c j * u).re| ≤ ∑ j, |(c j * u).re| :=
      Finset.single_le_sum (f := fun j => |(c j * u).re|) (fun _ _ => abs_nonneg _) (Finset.mem_univ j)
    rw [abs_mul, abs_of_pos htpos, ht, div_mul_eq_mul_div, div_lt_iff₀ hK0pos]
    nlinarith [Real.pi_pos]
  set q : Fin s → ℂ := fun j => Complex.exp (Complex.I * ((t * (c j * u).re : ℝ) : ℂ)) with hqdef
  have hq1 : ∀ j ∈ Finset.univ.erase j0, q j ≠ 1 := fun j hj =>
    exp_ne_one (mul_ne_zero htpos.ne' (hu j hj)) (hphase j)
  have hqn : ∀ j, ‖q j‖ = 1 := fun j => Complex.norm_exp_I_mul_ofReal _
  have hpsi : ∀ j (x : ℂ), G.psi β (-(w j0) * x) * G.psi β (w j * x) =
      Complex.exp (Complex.I * (((c j * x).re : ℝ) : ℂ)) := by
    intro j x
    rw [show c j * x = β * (-(w j0) * x) + β * (w j * x) by simp only [hcdef]; ring, Complex.add_re,
      Complex.ofReal_add, mul_add, Complex.exp_add]
    rfl
  have hpsin : ∀ x : ℂ, ‖G.psi β x‖ = 1 := fun x => Complex.norm_exp_I_mul_ofReal _
  set Kc : ℝ := ∑ j ∈ Finset.univ.erase j0, 2 / ‖q j - 1‖ * p (a j) with hKc
  have hC' : 0 ≤ C' := by
    obtain ⟨N, hN⟩ := exists_nat_gt (|x₁| / ‖u‖ + 1)
    have hq0 : 0 ≤ |x₁| / ‖u‖ := div_nonneg (abs_nonneg _) hunorm.le
    have hNu : 0 < (N : ℝ) * ‖u‖ := mul_pos (by linarith) hunorm
    have hx : x₁ ≤ ‖((N : ℝ) : ℂ) * u‖ := by
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg N)]
      have h2 := (div_lt_iff₀ hunorm).1 (by linarith : |x₁| / ‖u‖ < N)
      linarith [le_abs_self x₁]
    have h1 := (apply_nonneg p _).trans (H _ hx)
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg N)] at h1
    exact (div_nonneg_iff.1 h1).elim (fun h => h.1) (fun h => absurd h.2 (not_le.2 hNu))
  have hmain : ∀ N : ℕ, 0 < N → x₁ ≤ N * ‖u‖ → p (a j0) ≤ (C' / ‖u‖ + Kc) / N := by
    intro N hN hx₁
    have hNpos : (0 : ℝ) < N := by exact_mod_cast hN
    set x : ℕ → ℂ := fun m => (((N : ℝ) + m * t : ℝ) : ℂ) * u with hxdef
    have hxn : ∀ m : ℕ, (N : ℝ) * ‖u‖ ≤ ‖x m‖ := by
      intro m
      have hmt : 0 ≤ (m : ℝ) * t := mul_nonneg (Nat.cast_nonneg _) htpos.le
      simp only [hxdef, norm_mul, Complex.norm_real, Real.norm_eq_abs]
      rw [abs_of_nonneg (add_nonneg (Nat.cast_nonneg _) hmt)]
      gcongr
      linarith
    have hT : ∀ m : ℕ, p (∑ j, G.psi β (w j * x m) • a j) ≤ C' / (N * ‖u‖) := by
      intro m
      calc _ ≤ C' / ‖x m‖ := H _ (hx₁.trans (hxn m))
        _ ≤ C' / (N * ‖u‖) := div_le_div_of_nonneg_left hC' (mul_pos hNpos hunorm) (hxn m)
    set coef : Fin s → ℂ := fun j =>
      ∑ m ∈ Finset.range N, G.psi β (-(w j0) * x m) * G.psi β (w j * x m) with hcoef
    have hid : ∑ m ∈ Finset.range N, G.psi β (-(w j0) * x m) • ∑ j, G.psi β (w j * x m) • a j =
        ∑ j, coef j • a j := by
      simp only [Finset.smul_sum, smul_smul, hcoef, Finset.sum_smul]
      exact Finset.sum_comm
    have hc0 : coef j0 = N := by
      have h0 : c j0 = 0 := by simp only [hcdef, sub_self, mul_zero]
      simp only [hcoef, hpsi, h0, zero_mul, Complex.zero_re, Complex.ofReal_zero, mul_zero,
        Complex.exp_zero, Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_one]
    have hcj : ∀ j ∈ Finset.univ.erase j0, ‖coef j‖ ≤ 2 / ‖q j - 1‖ := by
      intro j hj
      have hterm : ∀ m : ℕ, G.psi β (-(w j0) * x m) * G.psi β (w j * x m) =
          Complex.exp (Complex.I * (((N : ℝ) * (c j * u).re : ℝ) : ℂ)) * q j ^ m := by
        intro m
        rw [hpsi, show c j * x m = (((N : ℝ) + m * t : ℝ) : ℂ) * (c j * u) by simp only [hxdef]; ring,
          Complex.re_ofReal_mul]
        simp only [hqdef]
        rw [← Complex.exp_nat_mul, ← Complex.exp_add]
        congr 1
        push_cast
        ring
      simp only [hcoef, hterm, ← Finset.mul_sum, norm_mul, Complex.norm_exp_I_mul_ofReal, one_mul]
      exact geom_bound (q j) (hqn j) (hq1 j hj) N
    have hsplit : ∑ j, coef j • a j = coef j0 • a j0 + ∑ j ∈ Finset.univ.erase j0, coef j • a j :=
      (Finset.add_sum_erase _ _ (Finset.mem_univ j0)).symm
    have hpa : (N : ℝ) * p (a j0) ≤ N * (C' / (N * ‖u‖)) + Kc := by
      have e1 : (N : ℝ) * p (a j0) = p (coef j0 • a j0) := by
        rw [hc0, map_smul_eq_mul]
        simp
      rw [e1]
      have e2 : coef j0 • a j0 =
          (∑ m ∈ Finset.range N, G.psi β (-(w j0) * x m) • ∑ j, G.psi β (w j * x m) • a j) -
            ∑ j ∈ Finset.univ.erase j0, coef j • a j := by
        rw [hid, hsplit]
        abel
      rw [e2]
      refine (map_sub_le_add p _ _).trans (add_le_add ?_ ?_)
      · refine (p_sum_le p _ _).trans ?_
        calc ∑ m ∈ Finset.range N, p (G.psi β (-(w j0) * x m) • ∑ j, G.psi β (w j * x m) • a j)
            = ∑ m ∈ Finset.range N, p (∑ j, G.psi β (w j * x m) • a j) := by
              refine Finset.sum_congr rfl fun m _ => ?_
              rw [map_smul_eq_mul, hpsin, one_mul]
          _ ≤ ∑ m ∈ Finset.range N, C' / (N * ‖u‖) := Finset.sum_le_sum fun m _ => hT m
          _ = N * (C' / (N * ‖u‖)) := by simp
      · refine (p_sum_le p _ _).trans ?_
        refine Finset.sum_le_sum fun j hj => ?_
        rw [map_smul_eq_mul]
        exact mul_le_mul_of_nonneg_right (hcj j hj) (apply_nonneg p _)
    have e3 : (N : ℝ) * (C' / (N * ‖u‖)) = C' / ‖u‖ := by
      field_simp
    rw [e3] at hpa
    rw [le_div_iff₀ hNpos]
    linarith
  have hnn := apply_nonneg p (a j0)
  by_contra hne
  have hδ : 0 < p (a j0) := lt_of_le_of_ne hnn (Ne.symm hne)
  obtain ⟨N, hN⟩ := exists_nat_gt (max (|x₁| / ‖u‖) ((C' / ‖u‖ + Kc) / p (a j0)))
  have hN1 : |x₁| / ‖u‖ < N := lt_of_le_of_lt (le_max_left _ _) hN
  have hN2 : (C' / ‖u‖ + Kc) / p (a j0) < N := lt_of_le_of_lt (le_max_right _ _) hN
  have hNpos : (0 : ℝ) < N := lt_of_le_of_lt (div_nonneg (abs_nonneg _) hunorm.le) hN1
  have hx₁ : x₁ ≤ N * ‖u‖ := by
    have h2 := (div_lt_iff₀ hunorm).1 hN1
    linarith [le_abs_self x₁]
  have hb := hmain N (by exact_mod_cast hNpos) hx₁
  rw [div_lt_iff₀ hδ] at hN2
  rw [le_div_iff₀ hNpos] at hb
  nlinarith

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragingVanishes =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostermanDensityOfParts =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostermanDensityOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostDensOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AveragingVanishes\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BudgetTopConvergence\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeBoundInBanachSpace\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FubiniHeadLastPart\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InnerAveragingInputOfSliceData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.FourierDecayAlt

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBJ.Asm

section decay

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℂ V]

theorem decayAll_of_cls {n : ℕ} (Ψ : G.Mat n → V) (hΨ : KCls Ψ) (q : ℕ) (E : ℝ) (hE : 0 ≤ E) :
    ∃ K : ℝ, U.DecayAll q (fun _ => E) K Ψ := by
  obtain ⟨hs, hc, _⟩ := hΨ
  obtain ⟨R, hR⟩ := hc.isCompact.isBounded.exists_norm_le
  have hM : ∀ i : ℕ, ∃ M : ℝ, ∀ Z, ‖iteratedFDeriv ℝ i Ψ Z‖ ≤ M := fun i =>
    (hs.continuous_iteratedFDeriv (by exact_mod_cast le_top)).bounded_above_of_compact_support
      (hc.iteratedFDeriv i)
  choose M hM using hM
  set Mt : ℝ := ∑ i ∈ Finset.range (q + 1), max (M i) 0 with hMt
  have hMt0 : 0 ≤ Mt := Finset.sum_nonneg fun i _ => le_max_right _ _
  have hMi : ∀ i ≤ q, M i ≤ Mt := fun i hi =>
    le_trans (le_max_left _ _) (Finset.single_le_sum (f := fun i => max (M i) 0) (fun i _ => le_max_right _ _)
      (Finset.mem_range.2 (Nat.lt_succ_of_le hi)))
  set R' : ℝ := max R 0
  refine ⟨Mt * (1 + R') ^ E, hs.of_le (by exact_mod_cast le_top), fun i hi Z => ?_⟩
  by_cases hZ : Z ∈ tsupport Ψ
  · have hZR : ‖Z‖ ≤ R' := le_trans (hR Z hZ) (le_max_left _ _)
    have h1 : 0 < 1 + ‖Z‖ := by positivity
    have h2 : (1 + ‖Z‖) ^ E ≤ (1 + R') ^ E := Real.rpow_le_rpow h1.le (by linarith) hE
    have h3 : 0 < (1 + ‖Z‖) ^ E := Real.rpow_pos_of_pos h1 E
    rw [Real.rpow_neg h1.le]
    calc ‖iteratedFDeriv ℝ i Ψ Z‖ ≤ Mt := le_trans (hM i Z) (hMi i hi)
      _ = Mt * (1 + ‖Z‖) ^ E * ((1 + ‖Z‖) ^ E)⁻¹ := by field_simp
      _ ≤ Mt * (1 + R') ^ E * ((1 + ‖Z‖) ^ E)⁻¹ := by
          apply mul_le_mul_of_nonneg_right _ (inv_nonneg.2 h3.le)
          exact mul_le_mul_of_nonneg_left h2 hMt0
  · have h0 : iteratedFDeriv ℝ i Ψ Z = 0 := by
      by_contra hne
      exact hZ (support_iteratedFDeriv_subset i (Function.mem_support.2 hne))
    rw [h0, norm_zero]
    have : 0 < 1 + ‖Z‖ := by positivity
    positivity

end decay

section points

theorem ptSize_append (h rest : C.LPt) : D.ptSize (h ++ rest) = D.ptSize h + D.ptSize rest := by
  simp [D.ptSize, List.map_append, List.sum_append]

theorem ptSize_single (b : ℕ × ℂ) : D.ptSize [b] = b.1 := by simp [D.ptSize]

theorem ptEntry_append (h rest : C.LPt) (a b : ℕ) :
    D.ptEntry (h ++ rest) a b =
      if a < D.ptSize h ∧ b < D.ptSize h then D.ptEntry h a b
      else if D.ptSize h ≤ a ∧ D.ptSize h ≤ b then D.ptEntry rest (a - D.ptSize h) (b - D.ptSize h) else 0 := by
  induction h generalizing a b with
  | nil => simp [D.ptSize]
  | cons x h ih =>
    obtain ⟨s, t⟩ := x
    have hS : D.ptSize ((s, t) :: h) = s + D.ptSize h := by simp [D.ptSize]
    rw [hS]
    simp only [List.cons_append, D.ptEntry]
    rw [ih]
    split_ifs <;> first | rfl | (exfalso; omega) | (congr 1 <;> omega)

theorem ptMatN_append (h rest : C.LPt) :
    D.ptMatN (h ++ rest) (D.ptSize h + D.ptSize rest) =
      U.blk2 (D.ptMatN h (D.ptSize h)) 0 0 (D.ptMatN rest (D.ptSize rest)) := by
  ext i j
  induction i using Fin.addCases with
  | left i =>
    induction j using Fin.addCases with
    | left j =>
      rw [_root_.Formalism.FourierDecayAlt.P.Ux2.block2_apply_upper_left]; simp only [D.ptMatN]
      rw [ptEntry_append, if_pos ⟨by simp, by simp⟩]; rfl
    | right j =>
      rw [Dx2.SL.b_cn]; simp only [D.ptMatN, Matrix.zero_apply]
      rw [ptEntry_append, if_neg (by simp), if_neg (by simp)]
  | right i =>
    induction j using Fin.addCases with
    | left j =>
      rw [_root_.Formalism.FourierDecayAlt.P.Ux2.block2_apply_lower_left]; simp only [D.ptMatN, Matrix.zero_apply]
      rw [ptEntry_append, if_neg (by simp), if_neg (by simp)]
    | right j =>
      rw [_root_.Formalism.FourierDecayAlt.P.Ux2.block2_apply_lower_right]; simp only [D.ptMatN]
      rw [ptEntry_append, if_neg (by simp), if_pos ⟨by simp, by simp⟩]
      simp

theorem ptMatN_long (s : ℕ) (t : ℂ) : D.ptMatN [(s, t)] s = G.ptLong s t := by
  ext i j
  simp only [D.ptMatN, D.ptEntry, G.ptLong, G.wMat, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
  rw [if_pos ⟨i.isLt, j.isLt⟩]
  have : (j = i.rev) ↔ (i.val + j.val + 1 = s) := by
    rw [Fin.ext_iff, Fin.val_rev]; omega
  by_cases h : i.val + j.val + 1 = s
  · rw [if_pos h, if_pos (this.2 h), mul_one]
  · rw [if_neg h, if_neg (fun e => h (this.1 e)), mul_zero]

theorem ptMatN_one (c : ℂ) : D.ptMatN [(1, c)] 1 = Matrix.of fun _ _ => c := by
  ext i j
  have hi : i.val = 0 := by omega
  have hj : j.val = 0 := by omega
  simp [D.ptMatN, D.ptEntry]

theorem hMat_one_single (c : ℂ) : U.hMat (1 : Equiv.Perm (Fin 1)) (fun _ => c) = Matrix.of fun _ _ => c := by
  ext i j
  have : i = j := Subsingleton.elim _ _
  subst this
  simp [U.hMat, U.wP]

theorem hMat_rev (n : ℕ) (t : ℂ) : U.hMat (Fin.revPerm : Equiv.Perm (Fin n)) (fun _ => t) = G.ptLong n t := by
  ext i j
  simp only [U.hMat, U.wP, Matrix.mul_diagonal, Matrix.of_apply, G.ptLong, G.wMat, Matrix.smul_apply,
    smul_eq_mul, Fin.revPerm_apply]
  by_cases h : i.rev = j
  · rw [if_pos h, if_pos h.symm]; ring
  · rw [if_neg h, if_neg (fun e => h e.symm)]; ring

theorem ptBlock_eq (n : ℕ) (t c : ℂ) :
    G.ptBlock n t c = U.blk2 (G.ptLong n t) 0 0 (Matrix.of fun _ _ => c) := by
  unfold G.ptBlock G.blk U.blk2 G.ptLong
  congr 2

theorem ptMatN_block (m : ℕ) (t c : ℂ) :
    D.ptMatN [(m + 1, t), (1, c)] (m + 1 + 1) = G.ptBlock (m + 1) t c := by
  have h := ptMatN_append [(m + 1, t)] [(1, c)]
  have e1 : D.ptMatN [(m + 1, t)] (D.ptSize [(m + 1, t)]) = G.ptLong (m + 1) t := ptMatN_long (m + 1) t
  have e2 : D.ptMatN [(1, c)] (D.ptSize [(1, c)]) = Matrix.of fun _ _ => c := ptMatN_one c
  rw [e1, e2] at h
  rw [ptBlock_eq]; exact h

alias ptScal_ne := _root_.Formalism.FourierDecayAlt.P.Dx1.Rel.scal_ne

theorem exists_hMat (a : C.LPt) (ha : ∀ b ∈ a, 1 ≤ b.1 ∧ b.2 ≠ 0) :
    ∃ (σ : Equiv.Perm (Fin (D.ptSize a))) (d : Fin (D.ptSize a) → ℂ), (∀ i, d i ≠ 0) ∧
      U.hMat σ d = D.ptMatN a (D.ptSize a) := by
  refine ⟨D.ptPerm a, D.ptDiag a, fun i => ptScal_ne a ha i i.isLt, ?_⟩
  exact ((_root_.Formalism.FourierDecayAlt.P.Dx1.d_ptPermSpec a (D.ptSize a) ⟨ha, rfl⟩).2.2).symm

end points

section one

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℂ V] [CompleteSpace V]

theorem phiTop_one (β : ℂ) (σ : Equiv.Perm (Fin 1)) (d : Fin 1 → ℂ) (Φ : G.Mat 1 → V) :
    U.PhiTop (p := 1) (s := 0) β σ d Φ (fun x => x.elim0) = Φ (fun _ _ => d 0) := by
  have : IsEmpty (U.LW σ) := ⟨fun q => by
    obtain ⟨⟨a, b⟩, h, _⟩ := q
    have ha : a = 0 := Subsingleton.elim _ _
    have hb : b = 0 := Subsingleton.elim _ _
    subst ha; subst hb; exact lt_irrefl _ h⟩
  have : IsEmpty (G.UT 1) := ⟨fun q => by
    obtain ⟨⟨a, b⟩, h⟩ := q
    have ha : a = 0 := Subsingleton.elim _ _
    have hb : b = 0 := Subsingleton.elim _ _
    subst ha; subst hb; exact lt_irrefl _ h⟩
  have hs : Subsingleton (U.XiH 1 0 σ) := by unfold U.XiH; infer_instance
  have hvol : (volume : Measure (U.XiH 1 0 σ)) Set.univ = 1 := by
    unfold U.XiH
    rw [Measure.volume_eq_prod, ← Set.univ_prod_univ, Measure.prod_prod, Measure.volume_eq_prod,
      Measure.volume_eq_prod, ← Set.univ_prod_univ, Measure.prod_prod, ← Set.univ_prod_univ, Measure.prod_prod]
    simp [MeasureTheory.volume_pi, Measure.pi_univ]
  let η0 : U.XiH 1 0 σ := ((fun i => i.elim0, fun _ j => j.elim0), (fun q => isEmptyElim q, fun q => isEmptyElim q))
  unfold U.PhiTop U.muXiH
  have hf : (fun η : U.XiH 1 0 σ => U.psiH β σ η • Φ (U.ZjH σ d η (fun x => x.elim0))) =
      fun _ => U.psiH β σ η0 • Φ (U.ZjH σ d η0 (fun x => x.elim0)) := funext fun η => by rw [Subsingleton.elim η η0]
  rw [hf, integral_const]
  simp only [Measure.real, hvol, ENNReal.toReal_one, one_smul]
  have hpsi : U.psiH β σ η0 = 1 := by simp [U.psiH, U.subS, U.supS, U.cornerA, U.cornerB, G.psi]
  simp only [hpsi, one_smul]
  congr 1
  funext i j
  have hi : i = Fin.castAdd 0 0 := Fin.ext (by have := i.isLt; simp)
  have hj : j = Fin.castAdd 0 0 := Fin.ext (by have := j.isLt; simp)
  subst hi; subst hj
  have hσ : σ = 1 := Subsingleton.elim _ _
  subst hσ
  rw [U.ZjH, _root_.Formalism.FourierDecayAlt.P.Ux4.ux_zjAffine, _root_.Formalism.FourierDecayAlt.P.Ux2.block2_apply_upper_left]
  simp [U.headH, U.lowW, G.upper, U.wP, Matrix.mul_apply, G.strictUpper]

end one

section germ

theorem germ_step (β : ℂ) (hβ : β ≠ 0) (p m : ℕ) (σh : Equiv.Perm (Fin p)) (dh : Fin p → ℂ)
    (hdh : ∀ i, dh i ≠ 0) (V : Type) [NormedAddCommGroup V] [NormedSpace ℂ V] [CompleteSpace V]
    (Ψ : G.Mat (p + (m + 1 + 1)) → V) (hΨ : KCls Ψ)
    (hvan : ∀ t c : ℂ, t ≠ 0 → c ≠ 0 →
      G.OmBlock β (m + 1) (U.PhiTop (p := p) (s := m + 1 + 1) β σh dh Ψ) t c = 0)
    (t0 : ℂ) (ht0 : t0 ≠ 0) :
    G.OmLong β (m + 1) (U.PhiTop (p := p) (s := m + 1 + 1) β σh dh Ψ) t0 = 0 := by
  obtain ⟨C₁, C₂, hUG⟩ := Formalism.FourierDecayAlt.P.germ_expansion_top_level
  set Nr : ℝ := ((p + (m + 1 + 1) : ℕ) : ℝ) with hNr
  have hN0 : 0 < 5 * Nr := by rw [hNr]; positivity
  set A : ℝ := (C₁ : ℝ) * ((m : ℝ) + 2) ^ 2 with hA
  set E : ℝ := 5 * Nr * (|A| + 2 * Nr ^ 2 + 1) with hEdef
  have hEq : E / (5 * Nr) = |A| + 2 * Nr ^ 2 + 1 := by
    have hNr0 : Nr ≠ 0 := by intro h0; rw [h0] at hN0; simp at hN0
    rw [hEdef]; field_simp
  have hE0 : 0 ≤ E := by rw [hEdef]; positivity
  have hE : ∀ i ≤ C₂ * (m + 2) ^ 2, A ≤ (fun _ : ℕ => E) i / (5 * ((p + (m + 1 + 1) : ℕ) : ℝ)) ∧
      2 * ((p + (m + 1 + 1) : ℕ) : ℝ) ^ 2 < (fun _ : ℕ => E) i / (5 * ((p + (m + 1 + 1) : ℕ) : ℝ)) := by
    intro i _
    simp only
    rw [← hNr, hEq]
    constructor
    · have := le_abs_self A; nlinarith [sq_nonneg Nr]
    · have := abs_nonneg A; linarith
  set Dd : ℂ := (-1) ^ (m + 3) * t0 ^ (m + 2) with hDd
  have hDd0 : Dd ≠ 0 := mul_ne_zero (pow_ne_zero _ (by norm_num)) (pow_ne_zero _ ht0)
  have hK0 : (0 : ℂ) ∉ ({Dd} : Set ℂ) := fun h => hDd0 (Set.mem_singleton_iff.1 h).symm
  obtain ⟨Cst, hC⟩ := hUG p m β hβ σh dh hdh (fun _ => E) A le_rfl hE {Dd} isCompact_singleton hK0
  obtain ⟨K, hK⟩ := decayAll_of_cls Ψ hΨ (C₂ * (m + 2) ^ 2) E hE0
  set Φ := U.PhiTop (p := p) (s := m + 1 + 1) β σh dh Ψ with hΦ
  have hz0 : t0 ^ (m + 2) = (-1) ^ (m + 3) * Dd := by
    rw [hDd, ← mul_assoc, ← pow_add]
    have : ((-1 : ℂ)) ^ (m + 3 + (m + 3)) = 1 := by
      rw [← two_mul, pow_mul]; simp
    rw [this, one_mul]

  have hbound : ∀ x : ℂ, x ≠ 0 → ‖G.mainTerm β m (fun _ => 1) Φ x⁻¹ Dd‖ ≤ Cst * K * ‖x‖⁻¹ := by
    intro x hx
    have ht : x⁻¹ ≠ 0 := inv_ne_zero hx
    have hct : Dd / x⁻¹ ^ (m + 1) * x⁻¹ ^ (m + 1) = Dd := div_mul_cancel₀ _ (pow_ne_zero _ ht)
    have hc : Dd / x⁻¹ ^ (m + 1) ≠ 0 := div_ne_zero hDd0 (pow_ne_zero _ ht)
    have hb := hC V Ψ K hK x⁻¹ (Dd / x⁻¹ ^ (m + 1)) ht (by rw [hct]; exact Set.mem_singleton _)
    unfold G.remainder at hb
    rw [← hΦ, hvan _ _ ht hc, smul_zero, zero_sub, norm_neg, hct, norm_inv] at hb
    exact hb

  have hs : 0 < m + 2 := by omega
  have hm2 : ((m : ℂ) + 2) ≠ 0 := by
    have h : ((m : ℂ) + 2) = ((m + 2 : ℕ) : ℂ) := by push_cast; ring
    rw [h]; exact_mod_cast (by omega : m + 2 ≠ 0)
  set R := G.rootSet (m + 2) ((-1) ^ (m + 3) * Dd) with hRdef
  have hz₀ : t0 ∈ R := (Formalism.FourierDecayAlt.P.mem_rootSet_iff_pow_eq hs).2 hz0
  let e : Fin R.card ≃ R := R.equivFin.symm
  let w : Fin R.card → ℂ := fun i => ((m : ℂ) + 2) * (e i : ℂ)
  have hw : Function.Injective w := by
    intro i j hij
    have h1 : (e i : ℂ) = (e j : ℂ) := mul_left_cancel₀ hm2 hij
    exact e.injective (Subtype.ext h1)
  set κ : ℂ := ((m : ℂ) + 2)⁻¹ * ((‖t0‖ ^ ((m + 1) ^ 2) : ℝ) : ℂ) with hκ
  have hκne : κ ≠ 0 := by
    refine mul_ne_zero (inv_ne_zero hm2) ?_
    exact_mod_cast pow_ne_zero _ (norm_ne_zero_iff.2 ht0)
  have hκpos : 0 < ‖κ‖ := norm_pos_iff.2 hκne
  have havg := Formalism.FourierDecayAlt.P.averaging_vanishes β hβ V (normSeminorm ℂ V) R.card w
    (fun i => G.OmLong β (m + 1) Φ (e i)) (‖κ‖⁻¹ * (Cst * K)) 1 hw (by
      intro x hx
      have hxpos : 0 < ‖x‖ := lt_of_lt_of_le one_pos hx
      have hx0 : x ≠ 0 := norm_pos_iff.1 hxpos
      have hb := hbound x hx0
      rw [Formalism.FourierDecayAlt.P.germ_leading_term_root_sum β m Φ x⁻¹ Dd t0 hz0, norm_smul] at hb
      have hsum : (∑ j : Fin R.card, G.psi β (w j * x) • G.OmLong β (m + 1) Φ (e j)) =
          ∑ z ∈ R, G.psi β (((m : ℂ) + 2) * z / x⁻¹) • G.OmLong β (m + 1) Φ z := by
        rw [← Finset.sum_coe_sort R, ← Equiv.sum_comp e]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        simp only [w, div_inv_eq_mul]
      simp only [coe_normSeminorm]
      rw [hsum]
      have h3 : ‖∑ z ∈ R, G.psi β (((m : ℂ) + 2) * z / x⁻¹) • G.OmLong β (m + 1) Φ z‖ ≤
          ‖κ‖⁻¹ * (Cst * K * ‖x‖⁻¹) := by
        rw [le_inv_mul_iff₀ hκpos]; exact hb
      refine le_trans h3 (le_of_eq ?_)
      rw [div_eq_mul_inv]; ring)
  have h0 := havg (e.symm ⟨t0, hz₀⟩)
  simp only [coe_normSeminorm, Equiv.apply_symm_apply, norm_eq_zero] at h0
  exact h0

end germ

section main

theorem main (hFub : FubTop) (hFr : FreezeLast) (hOL : OmLongTop) (hOB : OmBlockTop) (β : ℂ) (hβ : β ≠ 0) :
    ∀ (n : ℕ) (V : Type) [NormedAddCommGroup V] [NormedSpace ℂ V] [CompleteSpace V] (Ψ : G.Mat n → V), KCls Ψ →
    (∀ d : Fin n → ℂ, (∀ a, d a ≠ 0) → U.PhiTop (p := n) (s := 0) β 1 d Ψ (fun x => x.elim0) = 0) →
    ∀ (a : C.LPt) (σ : Equiv.Perm (Fin n)) (d : Fin n → ℂ), D.IsLocPt a n → U.hMat σ d = D.ptMatN a n →
      U.PhiTop (p := n) (s := 0) β σ d Ψ (fun x => x.elim0) = 0 := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  intro V _ _ _ Ψ hΨ hbig

  have hone : ∀ (h : C.LPt) (c : ℂ) (σ : Equiv.Perm (Fin n)) (d : Fin n → ℂ), D.IsLocPt (h ++ [(1, c)]) n →
      U.hMat σ d = D.ptMatN (h ++ [(1, c)]) n → U.PhiTop (p := n) (s := 0) β σ d Ψ (fun x => x.elim0) = 0 := by
    intro h c σ d ha hM
    obtain ⟨hab, hsz⟩ := ha
    have hn : D.ptSize h + 1 = n := by rw [← hsz, ptSize_append]; simp [D.ptSize]
    subst hn
    have hc : c ≠ 0 := (hab (1, c) (by simp)).2
    have hh : ∀ b ∈ h, 1 ≤ b.1 ∧ b.2 ≠ 0 := fun b hb => hab b (List.mem_append_left _ hb)
    obtain ⟨σh, dh, hdh, hMh⟩ := exists_hMat h hh
    obtain ⟨Ψc, hΨc, hfr⟩ := hFr β (D.ptSize h) V Ψ hΨ c hc
    have hMb : U.hMat (1 : Equiv.Perm (Fin 1)) (fun _ => c) = D.ptMatN [(1, c)] (D.ptSize [(1, c)]) := by
      rw [hMat_one_single]; exact (ptMatN_one c).symm
    have hM' : U.hMat σ d = U.blk2 (U.hMat σh dh) 0 0 (U.hMat (1 : Equiv.Perm (Fin 1)) (fun _ => c)) := by
      rw [hM, hMh, hMb]; exact ptMatN_append h [(1, c)]
    rw [hFub β (D.ptSize h) 1 σ d σh dh 1 (fun _ => c) V Ψ hdh (fun _ => hc) hM' hΨ, phiTop_one]
    refine (hfr σh dh hdh).trans ?_
    refine ih (D.ptSize h) (by omega) V Ψc hΨc ?_ h σh dh ⟨hh, rfl⟩ hMh
    intro d' hd'
    have hsig : Fub.sigQ (1 : Equiv.Perm (Fin (D.ptSize h))) (1 : Equiv.Perm (Fin 1)) = 1 := by
      ext i; simp [Fub.sigQ]
    have hdQ : ∀ i : Fin (D.ptSize h + 1), Fub.dQ d' (fun _ : Fin 1 => c) i ≠ 0 := by
      intro i
      induction i using Fin.addCases with
      | left j => simp only [Fub.dQ, Fin.addCases_left]; exact hd' j
      | right j => simp only [Fub.dQ, Fin.addCases_right]; exact hc
    calc U.PhiTop (p := D.ptSize h) (s := 0) β 1 d' Ψc (fun x => x.elim0)
        = U.PhiTop (p := D.ptSize h) (s := 1) β 1 d' Ψ (fun _ _ => c) := (hfr 1 d' hd').symm
      _ = U.PhiTop (p := 1) (s := 0) β 1 (fun _ => c) (U.PhiTop (p := D.ptSize h) (s := 1) β 1 d' Ψ)
            (fun x => x.elim0) := (phiTop_one β 1 (fun _ => c) _).symm
      _ = U.PhiTop (p := D.ptSize h + 1) (s := 0) β (Fub.sigQ 1 1) (Fub.dQ d' (fun _ => c)) Ψ (fun x => x.elim0) :=
          (hFub β (D.ptSize h) 1 (Fub.sigQ 1 1) (Fub.dQ d' (fun _ => c)) 1 d' 1 (fun _ => c) V Ψ hd' (fun _ => hc)
            (Fub.hMat_sigQ 1 1 d' (fun _ => c)) hΨ).symm
      _ = 0 := by rw [hsig]; exact hbig _ hdQ
  intro a σ d ha hM
  rcases List.eq_nil_or_concat a with rfl | ⟨h, ⟨s, t⟩, rfl⟩
  · have hn : n = 0 := by have := ha.2; simp [D.ptSize] at this; omega
    subst hn
    have hσ : σ = 1 := Subsingleton.elim _ _
    subst hσ
    exact hbig d (fun i => i.elim0)
  · simp only [List.concat_eq_append] at ha hM
    obtain ⟨hab, hsz⟩ := ha
    have hs1 : 1 ≤ s := (hab (s, t) (by simp)).1
    have ht : t ≠ 0 := (hab (s, t) (by simp)).2
    rcases Nat.lt_or_ge s 2 with hs | hs
    · have : s = 1 := by omega
      subst this
      exact hone h t σ d ⟨hab, hsz⟩ hM
    · obtain ⟨m, rfl⟩ : ∃ m, s = m + 1 + 1 := ⟨s - 2, by omega⟩
      have hn : D.ptSize h + (m + 1 + 1) = n := by rw [← hsz, ptSize_append]; simp [D.ptSize]
      subst hn
      have hh : ∀ b ∈ h, 1 ≤ b.1 ∧ b.2 ≠ 0 := fun b hb => hab b (List.mem_append_left _ hb)
      obtain ⟨σh, dh, hdh, hMh⟩ := exists_hMat h hh
      have hMb : U.hMat (Fin.revPerm : Equiv.Perm (Fin (m + 1 + 1))) (fun _ => t) =
          D.ptMatN [(m + 1 + 1, t)] (D.ptSize [(m + 1 + 1, t)]) := by
        rw [hMat_rev]; exact (ptMatN_long (m + 1 + 1) t).symm
      have hM' : U.hMat σ d = U.blk2 (U.hMat σh dh) 0 0 (U.hMat Fin.revPerm (fun _ => t)) := by
        rw [hM, hMh, hMb]; exact ptMatN_append h [(m + 1 + 1, t)]
      rw [hFub β (D.ptSize h) (m + 1 + 1) σ d σh dh Fin.revPerm (fun _ => t) V Ψ hdh (fun _ => ht) hM' hΨ]
      obtain ⟨κ, hκ, hL⟩ := hOL β hβ (m + 1)
      have hz := hL Fin.revPerm (fun _ => t) t V (U.PhiTop (p := D.ptSize h) (s := m + 1 + 1) β σh dh Ψ) ht
        (hMat_rev _ t)
      have h0 := germ_step β hβ (D.ptSize h) m σh dh hdh V Ψ hΨ ?_ t ht
      · rw [h0] at hz
        exact (smul_eq_zero.1 hz.symm).resolve_left hκ
      · intro t' c' ht' hc'
        obtain ⟨κB, _, hB⟩ := hOB β hβ (m + 1)
        have hbl : U.hMat (Fub.sigQ (Fin.revPerm : Equiv.Perm (Fin (m + 1))) (1 : Equiv.Perm (Fin 1)))
            (Fub.dQ (fun _ => t') (fun _ => c')) = G.ptBlock (m + 1) t' c' := by
          rw [Fub.hMat_sigQ, hMat_rev, hMat_one_single, ptBlock_eq]
        have hdb : ∀ i, Fub.dQ (fun _ : Fin (m + 1) => t') (fun _ : Fin 1 => c') i ≠ 0 := by
          intro i
          induction i using Fin.addCases with
          | left j => simp only [Fub.dQ, Fin.addCases_left]; exact ht'
          | right j => simp only [Fub.dQ, Fin.addCases_right]; exact hc'
        rw [hB _ _ t' c' V _ ht' hc' hbl,
          ← hFub β (D.ptSize h) (m + 1 + 1) _ _ σh dh _ _ V Ψ hdh hdb (Fub.hMat_sigQ _ _ _ _) hΨ]
        have hpt : U.hMat (Fub.sigQ σh (Fub.sigQ (Fin.revPerm : Equiv.Perm (Fin (m + 1))) (1 : Equiv.Perm (Fin 1))))
            (Fub.dQ dh (Fub.dQ (fun _ => t') (fun _ => c'))) =
            D.ptMatN ((h ++ [(m + 1, t')]) ++ [(1, c')]) (D.ptSize h + (m + 1 + 1)) := by
          rw [Fub.hMat_sigQ, hbl, hMh, ← ptMatN_block, List.append_assoc]
          exact (ptMatN_append h [(m + 1, t'), (1, c')]).symm
        rw [hone (h ++ [(m + 1, t')]) c' _ _ ⟨?_, ?_⟩ hpt, smul_zero]
        · intro b hb
          simp only [List.mem_append, List.mem_singleton] at hb
          rcases hb with (hb | rfl) | rfl
          · exact hh b hb
          · exact ⟨by omega, ht'⟩
          · exact ⟨le_rfl, hc'⟩
        · rw [ptSize_append, ptSize_append]; simp [D.ptSize]; omega

end main

theorem kloosterman_density_of_parts : KloostDensOfParts := by
  intro hFub hFr hOL hOB n V _ _ _ Ψ hs hc hdet hbig a σ d ha hM
  exact main hFub hFr hOL hOB U.betaU Formalism.FourierDecayAlt.P.scale_matching.2.1 n V Ψ ⟨hs, hc, hdet⟩ hbig a σ d ha hM

end Formalism.FourierDecayAlt.P.PBJ.Asm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.KloostermanDensityOfParts =====
