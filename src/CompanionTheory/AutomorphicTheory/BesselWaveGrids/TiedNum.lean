module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TBBTie
public import CompanionTheory.AutomorphicTheory.BesselWaveGrids.CoefFacts
public import CompanionTheory.AutomorphicTheory.BesselWaveGrids.PStarTie
public import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutBP
public import CompanionTheory.AutomorphicTheory.BesselWaveGrids.KDecayOfGap
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass

@[expose] public section

noncomputable section

namespace CompanionTheory.WaveGrid.Tied

open MeasureTheory Formalism.BasicNotions Formalism.QuantumDeterminants Formalism.MainNotions.S Formalism.MainNotions.S.ThB Formalism.L2.SG.Pf.BesselExpansion Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P
open CompanionTheory.WaveGrid CompanionTheory.WaveGrid.Coef

section num

variable {k r : ℕ}

export _root_.CompanionTheory.WaveGrid.Coef.GapBounds (gapY pow_four_le_rpow_nine_halves thrX_le_gapY mul_le_gapY
  fourth_power_le_gap cube_le_gap)

theorem hypType_of (hk : 1 ≤ k) {lam : Fin (2 * r + k + 1) → ℝ} {u : Fin k → ℝ} {b : ℝ} (hlam : IsHCParam lam)
    (hu : IsHCParam u) (hI : InterlaceS (by omega) u lam) (hb : ∀ i, |u i| ≤ b) : HypType k r lam (lamN u) b := by
  refine { half := ?_, inter := ?_, u_le := ?_ }
  · intro i h1 h2
    obtain ⟨j, rfl⟩ : ∃ j, i = j + 1 := ⟨i - 1, by omega⟩
    rw [lamN_succ u ⟨j, by omega⟩]
    exact hu.2 _
  · refine ⟨fun s t hst => hlam.1 (by simpa using hst), fun s => ⟨fun hs => ?_, fun hs => ?_⟩⟩
    · have hs' : (s : ℕ) < k := by simpa using hs
      rw [lamN_succ u ⟨s, hs'⟩]
      by_cases h : (s : ℕ) + 1 < k
      · exact (hI.1 s h).1
      · have e : (s : ℕ) = k - 1 := by omega
        have := hI.2 (by omega)
        simp only [← e] at this
        exact this
    · have hs' : (s : ℕ) + 1 < k := by
        have : (s : ℕ) + 2 ≤ k := by simpa using hs
        omega
      rw [show (s : ℕ) + 2 = (s + 1) + 1 from rfl, lamN_succ u ⟨s + 1, hs'⟩]
      exact (hI.1 s hs').2
  · intro i h1 h2
    obtain ⟨j, rfl⟩ : ∃ j, i = j + 1 := ⟨i - 1, by omega⟩
    rw [lamN_succ u ⟨j, by omega⟩]
    exact hb _

theorem gap_of_lt {n : ℕ} {lam : Fin n → ℝ} {g : ℝ} (hlam : IsHCParam lam) (hg : AllGaps lam g) {a c : Fin n}
    (h : a < c) : g ≤ lam a - lam c := by
  have h1 := hg a c h.ne
  rwa [abs_of_pos (sub_pos.2 (hlam.1 h))] at h1

theorem shape_of (hk : 1 ≤ k) {lam : Fin (2 * r + k + 1) → ℝ} {u : Fin k → ℝ} {bv : ℝ} (hlam : IsHCParam lam)
    (hu : IsHCParam u) (hI : InterlaceS (by omega) u lam) (hS : ShapeS u lam bv) :
    (∀ a : Fin (2 * r + k + 1), a.val + 1 < k → 0 ≤ lam a ∧ lam a ≤ bv / 8) ∧
      ∀ a : Fin (2 * r + k + 1), k ≤ a.val + 1 → -2 * bv ≤ lam a ∧ lam a ≤ -bv := by
  refine ⟨fun a ha => (hS a).1 ⟨⟨_, (hI.1 a ha).1⟩, ⟨_, (hI.1 a ha).2⟩⟩, fun a ha => (hS a).2 ?_⟩
  rintro ⟨-, i, hi⟩
  have h1 := hI.2 (by omega)
  have h2 : lam a ≤ lam ⟨k - 1, by omega⟩ := hlam.1.antitone (by rw [Fin.le_def]; simp only; omega)
  have h3 : u ⟨k - 1, by omega⟩ ≤ u i := hu.1.antitone (by rw [Fin.le_def]; simp only; omega)
  linarith

theorem scaled_le {T ka b Ch : ℝ} (r : ℕ) (hb : 1 ≤ b) (hka : 0 < ka) (h1 : ka ≤ b ^ Ch)
    (hT : T * (1 / ka) ^ (2 * r) ≤ b ^ (Ch * ((2 * r + 2 : ℕ) : ℝ))) : T ≤ b ^ (2 * |Ch| * ((2 * r + 2 : ℕ) : ℝ)) := by
  have hb0 : 0 < b := by linarith
  have e : T = T * (1 / ka) ^ (2 * r) * ka ^ (2 * r) := by
    rw [mul_assoc, ← mul_pow, one_div, inv_mul_cancel₀ hka.ne', one_pow, mul_one]
  have h2 : ka ^ (2 * r) ≤ b ^ (|Ch| * ((2 * r + 2 : ℕ) : ℝ)) := by
    calc ka ^ (2 * r) ≤ (b ^ |Ch|) ^ (2 * r) :=
          pow_le_pow_left₀ hka.le (h1.trans (Real.rpow_le_rpow_of_exponent_le hb (le_abs_self _))) _
      _ ≤ (b ^ |Ch|) ^ (2 * r + 2) := pow_le_pow_right₀ (Real.one_le_rpow hb (abs_nonneg _)) (by omega)
      _ = _ := by rw [← Real.rpow_natCast, ← Real.rpow_mul hb0.le]
  have h3 : b ^ (Ch * ((2 * r + 2 : ℕ) : ℝ)) ≤ b ^ (|Ch| * ((2 * r + 2 : ℕ) : ℝ)) :=
    Real.rpow_le_rpow_of_exponent_le hb (mul_le_mul_of_nonneg_right (le_abs_self _) (by positivity))
  calc T = _ := e
    _ ≤ b ^ (|Ch| * ((2 * r + 2 : ℕ) : ℝ)) * b ^ (|Ch| * ((2 * r + 2 : ℕ) : ℝ)) :=
        mul_le_mul (hT.trans h3) h2 (by positivity) (by positivity)
    _ = _ := by rw [← Real.rpow_add hb0]; congr 1; ring

end num


open CompanionTheory.LimBd.Main (ZuckT CoefCC) in
theorem coefCC1_of {t : ∀ n : ℕ, (Fin n → Bool) → ℝ} {Ct : ℝ} (hCt : 0 ≤ Ct)
    (ht : ∀ n ε, 1 ≤ n → t n ε ≤ Ct * (n : ℝ) ^ 3) (hZ : ZuckT t) (hK : PI.KFinSmooth) (hC : CoefCC) :
    CoefCC1 (Ct + |Formalism.MainNotions.BigCellDensity.c3| + 2) := by
  intro k r L f _ hf hgap
  have hfK : CutBP.KFinDSCoef L.ε L.lam f := by
    obtain ⟨Pm, Qm, h1, h2, h3⟩ := hf
    exact ⟨L.Hs, _, _, _, L.σ, Pm, Qm, L.hlam, L.hσ, h1, h2, fun g _ => h3 g⟩
  have hc := abs_nonneg Formalism.MainNotions.BigCellDensity.c3
  have hX := thrX_nonneg k r
  have hY1 := thrX_le_gapY k r
  have hY2 := fourth_power_le_gap k r
  have hY3 := cube_le_gap k r
  have hm : (1 : ℝ) ≤ ((2 * r + 2 : ℕ) : ℝ) ^ 4 := one_le_pow₀ (by exact_mod_cast (by omega : 1 ≤ 2 * r + 2))
  have h1 := ht (2 * r + k + 1) L.ε (by omega)
  have h2 := mul_le_mul_of_nonneg_left hY3 hCt
  have h3 := mul_le_mul_of_nonneg_left hY1 hc
  have hD := kDecay_of_gap hZ k r L.ε (X := |Formalism.MainNotions.BigCellDensity.c3| * thrX k r) (d := 0)
    (h := (Ct + |Formalism.MainNotions.BigCellDensity.c3| + 2) * gapY k r) (mul_nonneg hc hX) le_rfl (by nlinarith)
  have hg : PI.ZuckTensor.GapAtLeast L.ε L.lam ((Ct + |Formalism.MainNotions.BigCellDensity.c3| + 2) * gapY k r - 2 * 0) := by
    rw [mul_zero, sub_zero, gapY, ← mul_assoc]
    exact hgap
  exact JCx2.sq_inCC_mono (thr_conv k r (le_abs_self _) hc (by linarith)) le_rfl (kfin_inCC hK hC hD hg hfK 1)

end CompanionTheory.WaveGrid.Tied
