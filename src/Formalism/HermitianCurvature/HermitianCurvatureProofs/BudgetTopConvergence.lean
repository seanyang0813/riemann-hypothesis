module

public import Formalism.HermitianCurvature.StatementU
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

open Matrix MeasureTheory
open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U Formalism.REAL Formalism.QuantumDeterminants

noncomputable section

namespace Formalism.FourierDecayAlt.P.Ux7

theorem decayMin : DecayMin := by
  intro x A hx hA
  refine le_min ?_ ?_
  · exact Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (by linarith)
  · rw [Real.rpow_neg (by linarith), Real.rpow_neg hx.le]
    have h1 : 0 < x ^ A := Real.rpow_pos_of_pos hx A
    have h2 : x ^ A ≤ (1 + x) ^ A := Real.rpow_le_rpow hx.le (by linarith) hA
    first
      | exact inv_anti₀ h1 h2

theorem scaleMatch : ScaleMatch := by
  have e1 : ∀ x : ℂ, (cStd * (starRingEnd ℂ) x).re = (betaU * x).re := by
    intro x
    simp [cStd, betaU, Complex.mul_re]
  have e2 : ∀ x : ℂ, (betaU * x).re = -(cStd * x).re := by
    intro x
    simp [cStd, betaU, Complex.mul_re]
  refine ⟨?_, ?_, fun x => ⟨?_, ?_⟩⟩
  · apply Complex.ext <;> simp [cStd, betaU]
  · simp [betaU, cStd]
  · simp only [G.psi]
    rw [e1]
  · simp only [G.psi]
    rw [e2]
    show (starRingEnd ℂ) (Complex.exp _) = _
    rw [← Complex.exp_conj]
    congr 1
    rw [map_mul, Complex.conj_I, Complex.conj_ofReal]
    push_cast
    ring

theorem budget_second_corollary_holds : DerivativeBudgetCount := by
  intro r m mmB o κjo As Cc A₀ hr hm hmm ho hk hCc hA
  have hX : (m + 1 + mmB) + o ≤ 3 * As := by omega
  refine ⟨hX, ?_⟩
  have hrR : (1 : ℝ) ≤ r := by exact_mod_cast hr
  have hXR : ((((m + 1 + mmB) + o : ℕ)) : ℝ) ≤ 3 * As := by exact_mod_cast hX
  have hkR : (κjo : ℝ) ≤ As := by exact_mod_cast hk
  have hmR : (m : ℝ) + 1 ≤ As := by exact_mod_cast hm
  have hmmR : (mmB : ℝ) ≤ As := by exact_mod_cast hmm
  have hAs0 : (0 : ℝ) ≤ As := Nat.cast_nonneg _
  have hr0 : (0 : ℝ) ≤ r := by linarith
  have p1 := mul_le_mul_of_nonneg_left hXR (show (0 : ℝ) ≤ 2 * ((r : ℝ) + 1) by linarith)
  have p2 := mul_le_mul_of_nonneg_left hmR (show (0 : ℝ) ≤ 5 * (r : ℝ) by linarith)
  have p3 := mul_le_mul_of_nonneg_left hmmR (show (0 : ℝ) ≤ 2 * (r : ℝ) by linarith)
  have h2 : A₀ - (As : ℝ) - 6 * ((r : ℝ) + 1) * (As : ℝ) ≤
      A₀ - (κjo : ℝ) - 2 * ((r : ℝ) + 1) * ((((m + 1 + mmB) + o : ℕ)) : ℝ) := by grind
  have h3' : A₀ - (13 * (r : ℝ) + 7) * (As : ℝ) ≤
      A₀ - (κjo : ℝ) - 2 * ((r : ℝ) + 1) * ((((m + 1 + mmB) + o : ℕ)) : ℝ) - 5 * r * ((m : ℝ) + 1) -
        2 * r * mmB := by grind
  have hden : (0 : ℝ) < 8 * (2 * (r : ℝ) + 1) := by linarith
  have ha1 : 8 * (2 * (r : ℝ) + 1) *
      a1 r (A₀ - (κjo : ℝ) - 2 * ((r : ℝ) + 1) * ((((m + 1 + mmB) + o : ℕ)) : ℝ)) m mmB =
      A₀ - (κjo : ℝ) - 2 * ((r : ℝ) + 1) * ((((m + 1 + mmB) + o : ℕ)) : ℝ) - 5 * r * ((m : ℝ) + 1) -
        2 * r * mmB := by
    unfold a1
    field_simp
  have hrA : (0 : ℝ) ≤ r * As := mul_nonneg hr0 hAs0
  have hAsr : (As : ℝ) ≤ (r : ℝ) * As := le_mul_of_one_le_left hAs0 hrR
  refine ⟨h2, by rw [ha1]; exact h3', by ring_nf at hAsr ⊢; linarith, ?_⟩
  apply le_of_mul_le_mul_left _ hden
  rw [ha1]
  have hQ : 0 ≤ (Cc - 20) * (((r : ℝ) + 1) ^ 3 * As) :=
    mul_nonneg (by linarith) (by positivity)
  have h4 : 1 + 4 * (r : ℝ) ≤ ((r : ℝ) + 1) ^ 4 := by
    grind [pow_nonneg hr0 2, pow_nonneg hr0 3, pow_nonneg hr0 4]
  have h5 := mul_le_mul_of_nonneg_right h4 hAs0
  calc 8 * (2 * (r : ℝ) + 1) * ((Cc - 20) / 16 * ((r : ℝ) + 1) ^ 3 * (As : ℝ))
      = (2 * (r : ℝ) + 1) / 2 * ((Cc - 20) * (((r : ℝ) + 1) ^ 3 * As)) := by ring
    _ ≤ ((r : ℝ) + 1) * ((Cc - 20) * (((r : ℝ) + 1) ^ 3 * As)) :=
        mul_le_mul_of_nonneg_right (by linarith) hQ
    _ = Cc * (((r : ℝ) + 1) ^ 4 * As) - 20 * (((r : ℝ) + 1) ^ 4 * As) := by ring
    _ ≤ Cc * (((r : ℝ) + 1) ^ 4 * As) - (13 * (r : ℝ) + 7) * As := by grind
    _ ≤ A₀ - (13 * (r : ℝ) + 7) * (As : ℝ) := by grind
    _ ≤ _ := h3'

theorem thresholds_second_corollary_holds : GermThresholds := by
  intro r n s As C₁ c AB hn hs hAs hAB hc hC
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hAsR : (n : ℝ) ^ 3 ≤ As := by exact_mod_cast hAs
  have hsR : (s : ℝ) ≤ r := by exact_mod_cast hs
  have hr0 : (0 : ℝ) ≤ r := Nat.cast_nonneg r
  have hs0 : (0 : ℝ) ≤ s := Nat.cast_nonneg s
  have hn3 : (n : ℝ) ≤ (n : ℝ) ^ 3 := by
    simpa using pow_le_pow_right₀ hnR (show 1 ≤ 3 by norm_num)
  have hAs1 : (1 : ℝ) ≤ As := by linarith
  have hR : (1 : ℝ) + 3 * r ≤ ((r : ℝ) + 1) ^ 3 := by
    have heq : ((r : ℝ) + 1) ^ 3 = 1 + 3 * (r : ℝ) + 3 * (r : ℝ) ^ 2 + (r : ℝ) ^ 3 := by ring
    have p2 : (0 : ℝ) ≤ (r : ℝ) ^ 2 := by positivity
    have p3 : (0 : ℝ) ≤ (r : ℝ) ^ 3 := by positivity
    linarith
  have hPA : 0 ≤ ((r : ℝ) + 1) ^ 3 * (As : ℝ) := by positivity
  have key : ((r : ℝ) + 1) ^ 3 * (As : ℝ) ≤ c * ((r : ℝ) + 1) ^ 3 * (As : ℝ) := by
    simpa only [mul_assoc] using le_mul_of_one_le_left hPA hc
  refine ⟨?_, ?_, ?_⟩
  · have e1 : 2 * (r : ℝ) * n ≤ 2 * r * As := mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have e2 : 2 * (r : ℝ) * As < (1 + 3 * r) * As := mul_lt_mul_of_pos_right (by linarith) (by linarith)
    have e3 : (1 + 3 * (r : ℝ)) * As ≤ ((r : ℝ) + 1) ^ 3 * As :=
      mul_le_mul_of_nonneg_right hR (by linarith)
    linarith
  · have e3 : (As : ℝ) ≤ ((r : ℝ) + 1) ^ 3 * As := le_mul_of_one_le_left (by linarith) (by linarith)
    linarith
  · have e1 : (s : ℝ) ^ 2 ≤ ((r : ℝ) + 1) ^ 3 := by
      have hs2 : (s : ℝ) ^ 2 ≤ (r : ℝ) ^ 2 := pow_le_pow_left₀ hs0 hsR 2
      have heq : ((r : ℝ) + 1) ^ 3 = (r : ℝ) ^ 3 + 3 * (r : ℝ) ^ 2 + 3 * (r : ℝ) + 1 := by ring
      have p2 : (0 : ℝ) ≤ (r : ℝ) ^ 2 := by positivity
      have p3 : (0 : ℝ) ≤ (r : ℝ) ^ 3 := by positivity
      linarith
    have e2 : (C₁ : ℝ) * s ^ 2 ≤ c * ((r : ℝ) + 1) ^ 3 :=
      calc (C₁ : ℝ) * s ^ 2 ≤ c * s ^ 2 := mul_le_mul_of_nonneg_right hC (by positivity)
        _ ≤ c * ((r : ℝ) + 1) ^ 3 := mul_le_mul_of_nonneg_left e1 (by linarith)
    have hcP : 0 ≤ c * ((r : ℝ) + 1) ^ 3 := mul_nonneg (by linarith) (by positivity)
    have e3 : c * ((r : ℝ) + 1) ^ 3 ≤ c * ((r : ℝ) + 1) ^ 3 * As := le_mul_of_one_le_right hcP hAs1
    linarith

theorem powerMatch : PowerMatch := by
  intro m M β t D V _ _ Φ hM ht
  obtain ⟨M', rfl⟩ : ∃ M', M = M' + 2 := ⟨M - 2, by omega⟩
  have key : ((‖t‖ ^ (m + 1))⁻¹ * ‖t‖ ^ ((m + 1) * (M' + 2 + m)) * ‖D / t ^ (m + 1)‖ ^ M' : ℝ) =
      ‖D‖ ^ M' * ‖t‖ ^ ((m + 1) ^ 2) := by
    rw [norm_div, norm_pow, div_pow]
    field_simp
    ring
  have hc : D / t ^ (m + 1) * t ^ (m + 1) = D := div_mul_cancel₀ D (pow_ne_zero _ ht)
  simp only [uD, aD, G.remainder, Nat.add_sub_cancel]
  rw [key, hc, smul_sub, smul_smul, Complex.ofReal_mul]

theorem derivBoundOfDecay : DerivBoundOfDecay := by
  intro s k V _ _ Φ A K Kd hs hA hK hKd h Z hZ
  have hdet : G.detM Z ≠ 0 := fun e => hKd (by rw [← e]; exact hZ)
  obtain ⟨hc, hb⟩ := h Z hdet
  have hZ0 : Z ≠ 0 := by
    rintro rfl
    apply hdet
    haveI : Nonempty (Fin s) := ⟨⟨0, by omega⟩⟩
    simp only [G.detM]
    exact Matrix.det_zero
  have hpos : 0 < ‖Z‖ := norm_pos_iff.mpr hZ0
  exact ⟨hc, fun j hj => (hb j hj).trans (mul_le_mul_of_nonneg_left (decayMin _ _ hpos hA) hK)⟩

end Formalism.FourierDecayAlt.P.Ux7

open Formalism.FourierDecayAlt.P.Ux7 in
open Formalism.FourierDecayAlt.P.Ux7 in
open Formalism.FourierDecayAlt.P.Ux7 in
open Formalism.FourierDecayAlt.P.Ux7 in
alias Formalism.FourierDecayAlt.P.scale_matching := _root_.Formalism.FourierDecayAlt.P.Ux7.scaleMatch
