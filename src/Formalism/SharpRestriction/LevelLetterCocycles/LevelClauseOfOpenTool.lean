module

public import Formalism.GaussValuationBounds.Statement
public import Formalism.WindowSums.PowerSeriesRelationList
public import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingInputs
public import Formalism.JumpKernelCokernel.LengthTheoremsWithEarlier
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPosConstLagrangeCondition
import Mathlib.Tactic.Linter.Style
import Formalism.TruncatedSeriesCounting.EtaDeterminantPolynomialIdentities
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.GaussValuationBounds.GaussValueContraction.GaussValueContractionProofFactBis, Formalism.SharpRestriction.LevelLetterCocycles.LevelClauseOfOpenTool

-- ===== clump member: Formalism.GaussValuationBounds.GaussValueContraction.GaussValueContractionProofFactBis =====
-- clump-header: {"m": "Formalism.GaussValuationBounds.GaussValueContraction.GaussValueContractionProofFactBis", "h": "module\n\npublic import Formalism.GaussValuationBounds.Statement\npublic import Formalism.WindowSums.PowerSeriesRelationList\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.NOK

open Polynomial

theorem padicInt_valuation_unit (ℓ : ℕ) [Fact ℓ.Prime] (u : ℤ_[ℓ]ˣ) :
    (u : ℤ_[ℓ]).valuation = 0 := by
  have h := PadicInt.valuation_mul (Units.ne_zero u) (Units.ne_zero u⁻¹)
  rw [Units.mul_inv, PadicInt.valuation_one] at h
  omega

theorem cjExist_proof : CjExist := by
  intro ℓ _ hℓ χ hχ
  have hZ := _root_.Formalism.WindowSums.valuation_zpow_sub_one ℓ χ 1 le_rfl (fun h => absurd h hℓ) hχ
  have hℓ0 : (ℓ : ℤ_[ℓ]) ≠ 0 := by exact_mod_cast (Fact.out : ℓ.Prime).ne_zero
  have hdvd : ∀ j : ℤ, (ℓ : ℤ_[ℓ]) ∣ ((χ ^ (-j) : ℤ_[ℓ]ˣ) : ℤ_[ℓ]) - 1 := by
    intro j
    by_cases hj : j = 0
    · subst hj
      simp
    · obtain ⟨hne, hv⟩ := hZ (-j) (neg_ne_zero.2 hj)
      rw [PadicInt.unitCoeff_spec hne]
      exact Dvd.dvd.mul_left (dvd_pow_self _ (by rw [hv]; omega)) _
  choose d hd using hdvd
  have hc1 : ∀ j, -(ℓ : ℤ_[ℓ]) * (-d j) = ((χ ^ (-j) : ℤ_[ℓ]ˣ) : ℤ_[ℓ]) - 1 := by
    intro j
    rw [hd j]
    ring
  have key : ∀ j j' : ℤ, j ≠ j' → -d j' - -d j ≠ 0 ∧
      PadicInt.valuation (-d j' - -d j) = padicValInt ℓ (j' - j) := by
    intro j j' hjj
    have hid : χ ^ (-j) = χ ^ (-j') * χ ^ (j' - j) := by
      rw [← zpow_add]
      congr 1
      ring
    have hkey : (ℓ : ℤ_[ℓ]) ^ 1 * (-d j' - -d j) =
        ((χ ^ (-j') : ℤ_[ℓ]ˣ) : ℤ_[ℓ]) * (((χ ^ (j' - j) : ℤ_[ℓ]ˣ) : ℤ_[ℓ]) - 1) := by
      have e1 := hd j
      have e2 := hd j'
      rw [hid, Units.val_mul] at e1
      linear_combination e2 - e1
    obtain ⟨hne, hv⟩ := hZ (j' - j) (sub_ne_zero.2 (Ne.symm hjj))
    have hw : -d j' - -d j ≠ 0 := by
      intro h
      rw [h, mul_zero] at hkey
      exact mul_ne_zero (Units.ne_zero _) hne hkey.symm
    refine ⟨hw, ?_⟩
    have h1 := PadicInt.valuation_p_pow_mul 1 (-d j' - -d j) hw
    rw [hkey, PadicInt.valuation_mul (Units.ne_zero _) hne, padicInt_valuation_unit, hv] at h1
    omega
  refine ⟨fun j => -d j, hc1, ?_, fun j j' h => key j' j (Ne.symm h)⟩
  have h0 : (ℓ : ℤ_[ℓ]) * d 0 = 0 := by
    rw [← hd 0]
    simp
  show -d 0 = 0
  rw [neg_eq_zero]
  exact (mul_eq_zero.1 h0).resolve_left hℓ0

end Formalism.NOK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GaussValuationBounds.GaussValueContraction.GaussValueContractionProofFactBis =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelClauseOfOpenTool =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelClauseOfOpenTool", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingInputs\npublic import Formalism.GaussValuationBounds.GaussValueContraction.GaussValueContractionProofFactBis\npublic import Formalism.JumpKernelCokernel.LengthTheoremsWithEarlier\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPosConstLagrangeCondition\nimport Formalism.TruncatedSeriesCounting.EtaDeterminantPolynomialIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.CrystallineLiftingInputs

open Formalism.BasicNotions

theorem power_series_dvr_factorisation : PowerSeriesDVRFactorisation := by
  intro O _ _ _ l _ ϖ e h1 h2 h3 ε u hε hu b y t hb hy hmem
  exact Formalism.TruncatedSeriesCounting.RamifiedCoefficientChains.ramified_coefficient_chain_bounds.2.2.2.2.2.2.1 O l ϖ e h1 h2 h3 ε u hε hu b y t hb hy hmem

section Alg

variable {R : Type} [CommRing R]

theorem span_pair_mono_left {a a' f x : R} (h : a' ∣ a) (hx : x ∈ Ideal.span {a, f}) :
    x ∈ Ideal.span {a', f} := by
  obtain ⟨c, rfl⟩ := h
  obtain ⟨r, s, rfl⟩ := Ideal.mem_span_pair.1 hx
  exact Ideal.mem_span_pair.2 ⟨r * c, s, by ring⟩

theorem rem_M (l : ℕ) (hl : 1 ≤ l) (π₀ : R) (y M η c : ℕ) (hc : c + η + M ≤ l * y) :
    (π₀ * (π₀ + (l : R)) ^ (l - 1)) ^ y ∈
      Ideal.span {(l : R) ^ c, π₀ ^ M * (π₀ + (l : R)) ^ η} := by
  have hQ := Formalism.KernelCokernelLengths.ideal_power_sum_mem
  obtain ⟨k, rfl⟩ : ∃ k, l = k + 1 := ⟨l - 1, by omega⟩
  simp only [Nat.add_sub_cancel]
  set q : R := π₀ + ((k + 1 : ℕ) : R) with hq
  have hc' : c + η + M ≤ k * y + y := by
    have : (k + 1) * y = k * y + y := by ring
    omega
  rw [mul_pow, ← pow_mul]
  by_cases hM : M ≤ y
  · by_cases hη : η ≤ k * y
    ·
      refine Ideal.mem_span_pair.2 ⟨0, π₀ ^ (y - M) * q ^ (k * y - η), ?_⟩
      have e1 : π₀ ^ y = π₀ ^ (y - M) * π₀ ^ M := by rw [← pow_add]; congr 1; omega
      have e2 : q ^ (k * y) = q ^ (k * y - η) * q ^ η := by rw [← pow_add]; congr 1; omega
      rw [e1, e2]; ring
    ·
      have h := hQ R q (-((k + 1 : ℕ) : R)) (η - k * y) (y - M - (η - k * y) + 1)
      have e0 : q + -((k + 1 : ℕ) : R) = π₀ := by rw [hq]; ring
      have e1 : η - k * y + (y - M - (η - k * y) + 1) - 1 = y - M := by omega
      rw [e0, e1] at h
      obtain ⟨r, s, hrs⟩ := Ideal.mem_span_pair.1 h
      have e2 : π₀ ^ y = π₀ ^ (y - M) * π₀ ^ M := by rw [← pow_add]; congr 1; omega
      have e3 : q ^ η = q ^ (η - k * y) * q ^ (k * y) := by rw [← pow_add]; congr 1; omega
      obtain ⟨j, hj⟩ : ∃ j, y - M - (η - k * y) + 1 = c + j :=
        ⟨y - M - (η - k * y) + 1 - c, by omega⟩
      refine Ideal.mem_span_pair.2
        ⟨s * (-1) ^ (c + j) * ((k + 1 : ℕ) : R) ^ j * π₀ ^ M * q ^ (k * y), r, ?_⟩
      rw [e2, ← hrs, e3, hj, neg_pow ((k + 1 : ℕ) : R) (c + j), pow_add ((k + 1 : ℕ) : R) c j]
      ring
  ·
    have h := hQ R π₀ ((k + 1 : ℕ) : R) (M - y) (k * y - η - (M - y) + 1)
    have e1 : M - y + (k * y - η - (M - y) + 1) - 1 = k * y - η := by omega
    rw [e1, ← hq] at h
    obtain ⟨r, s, hrs⟩ := Ideal.mem_span_pair.1 h
    have e2 : π₀ ^ M = π₀ ^ (M - y) * π₀ ^ y := by rw [← pow_add]; congr 1; omega
    have e3 : q ^ (k * y) = q ^ (k * y - η) * q ^ η := by rw [← pow_add]; congr 1; omega
    obtain ⟨j, hj⟩ : ∃ j, k * y - η - (M - y) + 1 = c + j :=
      ⟨k * y - η - (M - y) + 1 - c, by omega⟩
    refine Ideal.mem_span_pair.2 ⟨s * ((k + 1 : ℕ) : R) ^ j * π₀ ^ y * q ^ η, r, ?_⟩
    rw [e3, ← hrs, e2, hj, pow_add ((k + 1 : ℕ) : R) c j]
    ring

theorem rem_2 (l : ℕ) (hl : 1 ≤ l) (π₀ q u ε : R) (y X c : ℕ) (hy : 1 ≤ y)
    (hc : c + (X - 1) / l ≤ (l - 1) * y) :
    (π₀ * q ^ (l - 1) * (u * q ^ l + (l : R) * ε) ^ (l - 1)) ^ y ∈
      Ideal.span {(l : R) ^ c, π₀ * q ^ X} := by
  have hP := Formalism.KernelCokernelLengths.power_binomial_bound
  have e1 : π₀ ^ y = π₀ * π₀ ^ (y - 1) := by rw [← pow_succ']; congr 1; omega
  rw [mul_pow, mul_pow, ← pow_mul, ← pow_mul, e1]
  rcases Nat.eq_zero_or_pos X with rfl | hX
  · exact Ideal.mem_span_pair.2 ⟨0, π₀ ^ (y - 1) * q ^ ((l - 1) * y) *
      (u * q ^ l + (l : R) * ε) ^ ((l - 1) * y), by ring⟩
  · obtain ⟨α, β, hab, -⟩ := hP R l u ε q ((l - 1) * y) X hl hX
    obtain ⟨j, hj⟩ : ∃ j, (l - 1) * y - (X - 1) / l = c + j :=
      ⟨(l - 1) * y - (X - 1) / l - c, by omega⟩
    rw [hab, hj, pow_add]
    exact Ideal.mem_span_pair.2 ⟨π₀ * π₀ ^ (y - 1) * q ^ ((l - 1) * y) * (l : R) ^ j * α,
      π₀ ^ (y - 1) * q ^ ((l - 1) * y) * β, by ring⟩

end Alg

theorem C_pow_dvd {O : Type} [CommRing O] {l : ℕ} {ϖ : O} {e t c : ℕ}
    (h : Associated (l : O) (ϖ ^ e)) (ht : t ≤ e * c) :
    PowerSeries.C (ϖ ^ t) ∣ ((l : ℕ) : PowerSeries O) ^ c := by
  have h1 : ϖ ^ t ∣ (l : O) ^ c := by
    have : ϖ ^ (e * c) ∣ (l : O) ^ c := by
      rw [pow_mul]; exact pow_dvd_pow_of_dvd h.symm.dvd c
    exact (pow_dvd_pow ϖ ht).trans this
  have h2 := (PowerSeries.C (R := O)).map_dvd h1
  simpa using h2

theorem nat_le_of_real {e t c : ℕ} {x : ℝ} (ht : (t : ℝ) ≤ e * max 0 x) (hx : x ≤ c) :
    t ≤ e * c := by
  have h1 : max 0 x ≤ (c : ℝ) := max_le (Nat.cast_nonneg c) hx
  have h2 : (t : ℝ) ≤ (e : ℝ) * c := ht.trans (mul_le_mul_of_nonneg_left h1 (Nat.cast_nonneg e))
  exact_mod_cast h2

theorem TToolAlg_holds : TToolAlg := by
  refine ⟨?_, ?_⟩
  · intro O _ _ _ l hlp ϖ e _ _ hass u₁ u₂ u ε _ _ _ _ y X M η t
    have hl : 1 ≤ l := hlp.out.one_lt.le
    have hC : (PowerSeries.C (l : O) : PowerSeries O) = ((l : ℕ) : PowerSeries O) := by simp
    rw [hC]
    refine ⟨?_, ?_, ?_⟩
    · intro ht
      have htc : t ≤ e * (l * y - X) := nat_le_of_real ht (by
        have : ((l * y : ℕ) : ℝ) ≤ ((l * y - X : ℕ) : ℝ) + X := by
          exact_mod_cast (by omega : l * y ≤ (l * y - X) + X)
        push_cast at this ⊢; linarith)
      have e1 : (u₁ * PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1)) ^ y =
          u₁ ^ y * (PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1)) ^ y := by
        rw [← mul_pow]; ring
      rw [e1]
      by_cases hle : X ≤ l * y
      · have hR := Formalism.TruncatedSeriesCounting.X.pX_conditions.2.2.1 (PowerSeries O) l hl PowerSeries.X y X (l * y - X)
          (by omega)
        exact Ideal.mul_mem_left _ _ (span_pair_mono_left (C_pow_dvd hass htc) hR)
      · have h0 : l * y - X = 0 := by omega
        have ht0 : t = 0 := by rw [h0] at htc; omega
        subst ht0
        have : (1 : PowerSeries O) ∈ Ideal.span {PowerSeries.C (ϖ ^ 0),
            PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ X} :=
          Ideal.subset_span (by simp)
        rw [(Ideal.eq_top_iff_one _).2 this]; trivial
    · intro ht
      have hR := rem_M (R := PowerSeries O) l hl PowerSeries.X y M η (l * y - η - M)
      have htc : t ≤ e * (l * y - η - M) := nat_le_of_real ht (by
        have : ((l * y : ℕ) : ℝ) ≤ ((l * y - η - M : ℕ) : ℝ) + η + M := by
          exact_mod_cast (by omega : l * y ≤ (l * y - η - M) + η + M)
        push_cast at this ⊢; linarith)
      have e1 : (u₁ * PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1)) ^ y =
          u₁ ^ y * (PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1)) ^ y := by
        rw [← mul_pow]; ring
      rw [e1]
      by_cases hle : η + M ≤ l * y
      · exact Ideal.mul_mem_left _ _ (span_pair_mono_left (C_pow_dvd hass htc) (hR (by omega)))
      · have h0 : l * y - η - M = 0 := by omega
        have ht0 : t = 0 := by rw [h0] at htc; omega
        subst ht0
        have : (1 : PowerSeries O) ∈ Ideal.span {PowerSeries.C (ϖ ^ 0),
            PowerSeries.X ^ M * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ η} :=
          Ideal.subset_span (by simp)
        rw [(Ideal.eq_top_iff_one _).2 this]; trivial
    · intro ht
      set c : ℕ := (l - 1) * y - (X - 1) / l with hcdef
      have htc : t ≤ e * c := nat_le_of_real ht (by
        have hlpos : (0 : ℝ) < l := by exact_mod_cast hl
        have h1 : (l - 1) * y ≤ c + (X - 1) / l := by omega
        have h2 : (((X - 1) / l : ℕ) : ℝ) ≤ (X : ℝ) / l := by
          have : (((X - 1) / l : ℕ) : ℝ) ≤ ((X - 1 : ℕ) : ℝ) / l := Nat.cast_div_le
          have h3 : ((X - 1 : ℕ) : ℝ) ≤ X := by exact_mod_cast Nat.sub_le X 1
          exact this.trans (div_le_div_of_nonneg_right h3 hlpos.le)
        have h4 : (((l - 1) * y : ℕ) : ℝ) ≤ (c : ℝ) + (((X - 1) / l : ℕ) : ℝ) := by exact_mod_cast h1
        have h5 : (((l - 1) * y : ℕ) : ℝ) = ((l : ℝ) - 1) * y := by
          rw [Nat.cast_mul, Nat.cast_sub hl, Nat.cast_one]
        linarith)
      have e1 : (u₂ * PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1) *
          (u * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ l + ((l : ℕ) : PowerSeries O) * ε)
            ^ (l - 1)) ^ y =
          u₂ ^ y * (PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ (l - 1) *
          (u * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ l + ((l : ℕ) : PowerSeries O) * ε)
            ^ (l - 1)) ^ y := by
        rw [← mul_pow]; ring
      rw [e1]
      rcases Nat.eq_zero_or_pos y with rfl | hy
      · have ht0 : t = 0 := by
          have : c = 0 := by simp [hcdef]
          rw [this] at htc; omega
        subst ht0
        have : (1 : PowerSeries O) ∈ Ideal.span {PowerSeries.C (ϖ ^ 0),
            PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ X} :=
          Ideal.subset_span (by simp)
        rw [(Ideal.eq_top_iff_one _).2 this]; trivial
      · by_cases hle : (X - 1) / l ≤ (l - 1) * y
        · exact Ideal.mul_mem_left _ _ (span_pair_mono_left (C_pow_dvd hass htc)
            (rem_2 l hl PowerSeries.X _ u ε y X c hy (by omega)))
        · have ht0 : t = 0 := by
            have : c = 0 := by omega
            rw [this] at htc; omega
          subst ht0
          have : (1 : PowerSeries O) ∈ Ideal.span {PowerSeries.C (ϖ ^ 0),
              PowerSeries.X * (PowerSeries.X + ((l : ℕ) : PowerSeries O)) ^ X} :=
            Ideal.subset_span (by simp)
          rw [(Ideal.eq_top_iff_one _).2 this]; trivial
  · intro l y X M η hl
    exact Formalism.TruncatedSeriesCounting.X.pX_conditions.2.1 l (by omega) y X M η

section Core

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions.Loc

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem kills_of_mem_span (W : LocWach PD LL O v n) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) (i : ZMod n) {a b x : LetA O n} (ha : Formalism.MainNotions.LiftingTheory.Kills W F i a)
    (hb : Formalism.MainNotions.LiftingTheory.Kills W F i b) (hx : x ∈ Ideal.span {a, b}) : Formalism.MainNotions.LiftingTheory.Kills W F i x := by
  obtain ⟨r, s, rfl⟩ := Ideal.mem_span_pair.1 hx
  intro y hy
  rw [add_smul, mul_smul, mul_smul]
  exact (Formalism.MainNotions.LiftingTheory.Nimg W F i).add_mem ((Formalism.MainNotions.LiftingTheory.Nimg W F i).smul_mem r (ha y hy))
    ((Formalism.MainNotions.LiftingTheory.Nimg W F i).smul_mem s (hb y hy))

theorem q_exp_le_floor (l H' H : ℕ) (hl : 3 ≤ l) (hH : H' ≤ H) :
    H' / (l - 1) + 1 + Formalism.MainNotions.LiftingTheory.eWA l H' - 1 ≤ ⌊Formalism.MainNotions.RamifiedCoefficientChains.aR l H⌋₊ := by
  have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl
  have h0 : 0 ≤ (H' : ℝ) * l / ((l : ℝ) - 1) ^ 2 + 3 + Real.logb l ((H' : ℝ) + 1) := by
    have h1 : 0 ≤ Real.logb l ((H' : ℝ) + 1) :=
      Real.logb_nonneg (by linarith) (by have : (0 : ℝ) ≤ H' := Nat.cast_nonneg H'; linarith)
    have h2 : 0 ≤ (H' : ℝ) * l / ((l : ℝ) - 1) ^ 2 := by positivity
    linarith
  have h1 := Formalism.TruncatedSeriesCounting.X.pX_conditions.1 l hl H' H (Formalism.MainNotions.LiftingTheory.eWA l H' : ℝ) hH (Nat.floor_le h0)
  refine Nat.le_floor ?_
  rw [Formalism.MainNotions.RamifiedCoefficientChains.aR_eq, Nat.cast_sub (Nat.le_add_right_of_le (Nat.le_add_left 1 _)), Nat.cast_add]
  simpa using h1

theorem kills_q (W : LocWach PD LL O v n) {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    (i : ZMod n) (A r N : ℕ) (hN : A + r - 1 ≤ N) (ha : Formalism.MainNotions.LiftingTheory.Kills W F i (W.π₀ ^ A))
    (hb : Formalism.MainNotions.LiftingTheory.Kills W F i (Formalism.MainNotions.LiftingTheory.lp W r)) :
    Formalism.MainNotions.LiftingTheory.Kills W F i (Formalism.MainNotions.LiftingTheory.qp W ^ N) := by
  have hQ := Formalism.KernelCokernelLengths.ideal_power_sum_mem (LetA O n) W.π₀ ((PD.p : ℕ) : LetA O n) A r
  have h1 : Formalism.MainNotions.LiftingTheory.Kills W F i (Formalism.MainNotions.LiftingTheory.qp W ^ (A + r - 1)) :=
    kills_of_mem_span W F i ha hb hQ
  obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hN
  intro y hy
  rw [pow_add, mul_comm, mul_smul]
  exact (Formalism.MainNotions.LiftingTheory.Nimg W F i).smul_mem _ (h1 y hy)

def boxM (d : ℕ) (b : ZMod n → ℕ) (S η : ℕ) (i : ZMod n) : ℕ :=
  if (i.val + d) % 2 = 0 then b i + S else η

def boxh (d : ℕ) (b : ZMod n → ℕ) (S η : ℕ) (i : ZMod n) : ℕ :=
  if (i.val + d) % 2 = 0 then η else b i + S

theorem jumpsLet_box [NeZero n] (W : LocWach PD LL O v n) {d : ℕ} {T₁ T₂ : LocLat G Qp LL O}
    {F : LatHom T₁.L T₂.L} {b : ZMod n → ℕ} {S η m : ℕ}
    (hS : Formalism.MainNotions.RamifiedCoefficientChains.SetCS W d T₁ T₂ F b S η m) :
    Formalism.MainNotions.LiftingTheory.JumpsLet W T₁ (boxM d b S η) (boxh d b S η) := by
  intro i τ hτ a ha
  have h := hS.2.2.2.2.2.2.1 i τ hτ a ha
  have hη : 2 * ⌊Formalism.MainNotions.RamifiedCoefficientChains.aR PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η)⌋₊ + η + 1 ≤ b i :=
    Formalism.MainNotions.RamifiedCoefficientChains.floor_a_le _ _ _ _ (by have := hS.2.1; omega) (hS.2.2.2.2.2.2.2.2.1 i)
  unfold Formalism.MainNotions.RamifiedCoefficientChains.JumpWinS at h
  unfold boxM boxh
  by_cases hi : (i.val + d) % 2 = 0
  · simp only [hi, if_true] at h ⊢
    rcases h with h | h
    · obtain ⟨h1, h2⟩ := h
      exact ⟨h1, by omega⟩
    · obtain ⟨h1, h2⟩ := h
      exact ⟨by push_cast at h1 ⊢; omega, h2⟩
  · simp only [hi, if_false] at h ⊢
    rcases h with h | h
    · obtain ⟨h1, h2⟩ := h
      exact ⟨by omega, h2⟩
    · obtain ⟨h1, h2⟩ := h
      exact ⟨h1, by push_cast at h2 ⊢; omega⟩

theorem Hmax_box [NeZero n] (d : ℕ) (b : ZMod n → ℕ) (S η : ℕ) :
    Formalism.MainNotions.LiftingTheory.Hmax n (boxM d b S η) (boxh d b S η) ≤ Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η := by
  refine Finset.sup_le fun k _ => ?_
  have h := Formalism.MainNotions.RamifiedCoefficientChains.add_le_hpar n b S (k : ZMod n)
  unfold boxM boxh
  split_ifs <;> omega

def QToolOpen [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  ∀ (d : ℕ) (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L) (b : ZMod n → ℕ) (S η m : ℕ)
    (Mi hi : ZMod n → ℕ),
    Formalism.MainNotions.RamifiedCoefficientChains.SetCS W d T₁ T₂ F b S η m → Formalism.MainNotions.LiftingTheory.JumpsLet W T₁ Mi hi →
    (∀ i : ZMod n,
      Formalism.MainNotions.LiftingTheory.Kills W F i (W.π₀ ^ (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi / (PD.p - 1) + 1))) ∧
    ∀ (Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L),
      IsSESLat (G := G) (Qp := Qp) (LL := LL) (O := O) ι π → IsCrys PD Y.ρ →
      ∀ i : ZMod n,
        Formalism.MainNotions.LiftingTheory.Kills W π i (W.π₀ ^ (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi / (PD.p - 1) + 1)) ∧
        Formalism.MainNotions.LiftingTheory.Kills W π i (Formalism.MainNotions.LiftingTheory.lp W (Formalism.MainNotions.LiftingTheory.eWA PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi)))

theorem QTool_of_open [NeZero n] (W : LocWach PD LL O v n) (hWA : Formalism.MainNotions.LiftingTheory.coreWA W)
    (h : QToolOpen W) : QTool W := by
  intro d T₁ T₂ F b S η m Mi hi hS hJ
  have hbox := jumpsLet_box W hS
  obtain ⟨h1, h2⟩ := h d T₁ T₂ F b S η m Mi hi hS hJ
  obtain ⟨h1', h2'⟩ := h d T₁ T₂ F b S η m _ _ hS hbox
  have hCA := hS.1
  have h11 := hS.2.1
  have hSur := hS.2.2.2.2.2.1
  have hN : Formalism.MainNotions.LiftingTheory.Hmax n (boxM d b S η) (boxh d b S η) / (PD.p - 1) + 1 +
      Formalism.MainNotions.LiftingTheory.eWA PD.p (Formalism.MainNotions.LiftingTheory.Hmax n (boxM d b S η) (boxh d b S η)) - 1 ≤
      ⌈Formalism.MainNotions.RamifiedCoefficientChains.aR PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η)⌉₊ :=
    (q_exp_le_floor PD.p _ _ (by omega) (Hmax_box d b S η)).trans (Nat.floor_le_ceil _)
  refine ⟨fun i => ⟨h1 i, hWA hCA T₁ T₂ F Mi hi hSur hJ i,
    kills_q W F i _ _ _ hN (h1' i) (hWA hCA T₁ T₂ F _ _ hSur hbox i)⟩,
    fun Y ι π hses hY i => ⟨(h2 Y ι π hses hY i).1, (h2 Y ι π hses hY i).2,
      kills_q W π i _ _ _ hN (h2' Y ι π hses hY i).1 (h2' Y ι π hses hY i).2⟩⟩

end Core

theorem level_clause_of_open_tool' (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) (h6 : adm6 D HW F)
    (h : ∀ (l : ℕ) [Fact l.Prime] (K LL : Loc.FinExt l) (hg : Loc.Good K 1 LL)
      [NeZero (Module.finrank ℚ_[l] ↥(Loc.K0 K))], QToolOpen ((HW l).W K 1 LL hg)) :
    adm13 D HW F Cm := by
  intro l _ K LL hg _
  exact QTool_of_open _ (h6.2.2.1 l K 1 LL hg) (h l K LL hg)

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions.Loc

section RNum

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l) (LL : FinExt l)

theorem v_unit (u : ℤ_[l]ˣ) : P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) = 0 := by
  have h1 : 0 ≤ P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) :=
    (P.v_O LL _).2 ((OL LL).algebraMap_mem _)
  have h2 : 0 ≤ P.v LL (algebraMap ℤ_[l] ↥LL.1 ((u⁻¹ : ℤ_[l]ˣ) : ℤ_[l])) :=
    (P.v_O LL _).2 ((OL LL).algebraMap_mem _)
  have h3 : P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) +
      P.v LL (algebraMap ℤ_[l] ↥LL.1 ((u⁻¹ : ℤ_[l]ˣ) : ℤ_[l])) = 0 := by
    rw [← AddValuation.map_mul, ← map_mul, Units.mul_inv, map_one, AddValuation.map_one]
  exact ((add_eq_zero_iff_of_nonneg h1 h2).1 h3).1

theorem v_padicInt (x : ℤ_[l]) (hx : x ≠ 0) :
    P.v LL (algebraMap ℤ_[l] ↥LL.1 x) = ((x.valuation : ℕ) : WithTop ℚ) := by
  conv_lhs => rw [PadicInt.unitCoeff_spec hx]
  rw [map_mul, AddValuation.map_mul, v_unit, zero_add, map_pow, map_natCast]
  exact Formalism.MainNotions.RamifiedCoefficientChains.v_pow_nat (P.v LL) (P.v_l LL) _

end RNum

section RDef

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

def RToolNum (W : LocWach PD LL O v n) : Prop :=
  cR W 0 = 0 ∧ ∀ j j' : ℤ, j ≠ j' →
    v (cR W j - cR W j') = ((padicValInt PD.p (j - j') : ℚ) : WithTop ℚ)

end RDef

theorem RToolNum_holds {l : ℕ} [Fact l.Prime] (P : LocPrime l) (H : LocHW l P) (K LL : FinExt l)
    (hg : Good K 1 LL) (hCA : Formalism.MainNotions.LiftingTheory.CaseA (H.W K 1 LL hg)) : RToolNum (H.W K 1 LL hg) := by
  have hp : (P.PD K).p = l := P.PD_p K
  obtain ⟨-, hs, hp2⟩ := hCA
  have hl2 : l ≠ 2 := hp ▸ hp2
  have hl0 : (l : ↥LL.1) ≠ 0 := by
    intro h
    have := P.v_l LL
    rw [h, AddValuation.map_zero] at this
    exact WithTop.top_ne_one this
  obtain ⟨g, hgg⟩ := (H.W K 1 LL hg).resΓ_onto (H.W K 1 LL hg).gam
  have hχ := (H.W K 1 LL hg).χΓ_res g
  rw [hgg] at hχ
  have hint : IsIntegral ℤ_[l] (algebraMap ℚ_[l] ↥LL.1 ((P.PD K).χ g : ℚ_[l])) := by
    rw [← hχ]
    exact (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam : (↥(OL LL))ˣ) : ↥(OL LL)).2
  have hint' : IsIntegral ℤ_[l] ((P.PD K).χ g : ℚ_[l]) :=
    (isIntegral_algebraMap_iff ).1 hint
  obtain ⟨z, hz⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint'
  have hzLL : algebraMap ℤ_[l] ↥LL.1 z = algebraMap ↥(OL LL) ↥LL.1
      (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam : (↥(OL LL))ˣ) : ↥(OL LL)) := by
    rw [hχ, ← hz, ← IsScalarTower.algebraMap_apply]
  have hgen := (H.W K 1 LL hg).gam_gen
  rw [hs, ← hzLL] at hgen
  have hz1 : z - 1 ≠ 0 := by
    intro h0
    have : algebraMap ℤ_[l] ↥LL.1 z - 1 = 0 := by
      rw [← map_one (algebraMap ℤ_[l] ↥LL.1), ← map_sub, h0, map_zero]
    rw [this, AddValuation.map_zero] at hgen
    exact WithTop.top_ne_natCast 1 hgen
  have hval : (z - 1).valuation = 1 := by
    have h1 := v_padicInt P LL (z - 1) hz1
    rw [map_sub, map_one, hgen] at h1
    exact le_antisymm (Formalism.MainNotions.RamifiedCoefficientChains.natCast_le_withTop h1.ge) (Formalism.MainNotions.RamifiedCoefficientChains.natCast_le_withTop h1.le)
  have hzu : IsUnit z := by
    rcases IsLocalRing.isUnit_or_isUnit_of_add_one (show z + (1 - z) = 1 by ring) with h | h
    · exact h
    · exfalso
      obtain ⟨u, hu⟩ := h
      have h1 := v_unit P LL u
      have h2 : algebraMap ℤ_[l] ↥LL.1 (1 - z) = -(algebraMap ℤ_[l] ↥LL.1 z - 1) := by
        rw [map_sub, map_one]; ring
      rw [hu, h2, AddValuation.map_neg, hgen] at h1
      have h3 : (1 : ℕ) ≤ 0 := Formalism.MainNotions.RamifiedCoefficientChains.natCast_le_withTop (by rw [h1]; simp)
      omega
  obtain ⟨χ, rfl⟩ := hzu
  obtain ⟨c, hc1, hc0, hc2⟩ := Formalism.NOK.cjExist_proof l hl2 χ hval
  have hpow : ∀ k : ℤ, algebraMap ↥(OL LL) ↥LL.1
      ((((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam) ^ k : (↥(OL LL))ˣ) : ↥(OL LL)) =
      algebraMap ℤ_[l] ↥LL.1 ((χ ^ k : ℤ_[l]ˣ) : ℤ_[l]) := by
    intro k
    have e1 : Units.map (algebraMap ↥(OL LL) ↥LL.1 : ↥(OL LL) →* ↥LL.1)
        ((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam) =
        Units.map (algebraMap ℤ_[l] ↥LL.1 : ℤ_[l] →* ↥LL.1) χ := Units.ext hzLL.symm
    have e2 : Units.map (algebraMap ↥(OL LL) ↥LL.1 : ↥(OL LL) →* ↥LL.1)
        (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam) ^ k) =
        Units.map (algebraMap ℤ_[l] ↥LL.1 : ℤ_[l] →* ↥LL.1) (χ ^ k) := by
      rw [map_zpow, map_zpow, e1]
    exact congrArg Units.val e2
  have key : ∀ j : ℤ, cR (H.W K 1 LL hg) j = algebraMap ℤ_[l] ↥LL.1 (c j) := by
    intro j
    have h1 : algebraMap ℤ_[l] ↥LL.1 ((χ ^ (-j) : ℤ_[l]ˣ) : ℤ_[l]) - 1 =
        -(l : ↥LL.1) * algebraMap ℤ_[l] ↥LL.1 (c j) := by
      rw [← map_one (algebraMap ℤ_[l] ↥LL.1), ← map_sub, ← hc1 j, map_mul, map_neg, map_natCast]
    unfold cR
    rw [hpow, h1, hp]
    field_simp
  refine ⟨by rw [key, hc0, map_zero], fun j j' hjj => ?_⟩
  rw [key, key, ← map_sub, v_padicInt P LL _ (hc2 j j' hjj).1, (hc2 j j' hjj).2, hp]
  simp

theorem trunc_floor_one (A : Type) [CommRing A] (l : ℕ) [Fact l.Prime] (hl : 3 ≤ l) (X u : A)
    (M η y : ℕ) (hM : 1 ≤ M) :
    (l : A) ^ ⌊((M : ℝ) + η) / ((l : ℝ) - 1) + 1⌋₊ * (u * X * (X + (l : A)) ^ (l - 1)) ^ y ∈
      Ideal.span {(l : A) ^ eY l y, X ^ M * (X + (l : A)) ^ η} := by
  have hl' : (3 : ℝ) ≤ l := by exact_mod_cast hl
  have h0 : 0 ≤ ((M : ℝ) + η) / ((l : ℝ) - 1) := div_nonneg (by positivity) (by linarith)
  rw [Nat.floor_add_one h0]
  exact Formalism.ZetaNonvanishing.ZetaNonvanishingCriteria.linearFactorPowMemSpanXPow A l hl X u M η y hM

end Formalism.MainNotions.CrystallineLiftingInputs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelClauseOfOpenTool =====
