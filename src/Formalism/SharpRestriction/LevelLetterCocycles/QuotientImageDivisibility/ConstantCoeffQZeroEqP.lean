module

import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound.MC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct Module Formalism.MainNotions.N.Pv.LocalLengthBound.Ser

section Loc

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

alias Q_eq_q := _root_.Formalism.MainNotions.LiftingTheory.wmap_Q_one

theorem q_mul : (letπ : LetA O n) * W.q = (1 + letπ) ^ PD.p - 1 := by
  funext i
  simp only [Pi.mul_apply, Pi.sub_apply, Pi.pow_apply, Pi.add_apply, Pi.one_apply, letπ,
    LocWach.q, W.q₀_def]

theorem cc_lev_pi (c : ZMod n) (ζ : LL) (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) :
    PowerSeries.constantCoeff (W.lev c ζ letπ) = ζ - 1 := by
  obtain ⟨E, hE0, -, hE⟩ := W.lev_π c ζ hζ
  have := congrArg PowerSeries.constantCoeff hE
  rw [map_add (f := _), map_one, map_mul, PowerSeries.constantCoeff_C, hE0, mul_one] at this
  linear_combination this

theorem cc_lev_q_one (c : ZMod n) : PowerSeries.constantCoeff (W.lev c 1 W.q) = (PD.p : LL) := by
  have hq : W.q = (fun _ => PowerSeries.mk fun k => PowerSeries.coeff (k + 1) W.q₀) * letπ +
      (PD.p : LetA O n) := by
    funext i
    simp only [LocWach.q, Pi.add_apply, Pi.mul_apply, letπ, Pi.natCast_apply]
    conv_lhs => rw [PowerSeries.eq_shift_mul_X_add_const W.q₀]
    rw [Formalism.MainNotions.N.Ln34.CrystallineExponents.constantCoeff_q_zero_eq_p, map_natCast]
  rw [hq, map_add (f := _), map_mul, map_natCast, map_add (f := _), map_mul,
    cc_lev_pi W c 1 ⟨0, by rw [pow_zero]; exact IsPrimitiveRoot.one⟩, sub_self, mul_zero, zero_add,
    map_natCast]

theorem qroot_prim (hs : W.s = 1) (hp : (PD.p : LL) ≠ 0) {c : ZMod n} {ζ : LL}
    (h : Formalism.MainNotions.DeltaInvariantLattices.QRoot W c ζ) : IsPrimitiveRoot ζ PD.p := by
  obtain ⟨-, ⟨m, hm⟩, hcc⟩ := h
  rw [Q_eq_q W hs] at hcc
  have hpr : PD.p.Prime := PD.hp
  obtain ⟨j, -, hord⟩ := (Nat.dvd_prime_pow hpr).1 (orderOf_dvd_of_pow_eq_one hm)
  have hprim : IsPrimitiveRoot ζ (PD.p ^ j) := hord ▸ IsPrimitiveRoot.orderOf ζ
  have hp1 : ζ ^ PD.p = 1 := by
    by_contra hne
    exact Formalism.MainNotions.UnusedSlot80.LevR.cc_lev_q W c ζ ⟨j, hprim⟩ hne hcc
  have hdvd : PD.p ^ j ∣ PD.p ^ 1 := by rw [pow_one]; exact hprim.dvd_of_pow_eq_one _ hp1
  have hj1 : j ≤ 1 := (Nat.pow_dvd_pow_iff_le_right hpr.one_lt).1 hdvd
  rcases Nat.le_one_iff_eq_zero_or_eq_one.1 hj1 with rfl | rfl
  · rw [pow_zero] at hprim
    obtain rfl := IsPrimitiveRoot.one_right_iff.1 hprim
    exact absurd (cc_lev_q_one W c ▸ hcc) hp
  · rwa [pow_one] at hprim

theorem lev_q_eq (c : ZMod n) {ζ : LL} (hζ : IsPrimitiveRoot ζ PD.p) (hp : (PD.p : LL) ≠ 0) :
    ∃ u : PowerSeries LL, PowerSeries.constantCoeff u ≠ 0 ∧
      W.lev c ζ W.q = PowerSeries.X * u := by
  have hζ' : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j) := ⟨1, by rwa [pow_one]⟩
  obtain ⟨E, hE0, hE', hE⟩ := W.lev_π c ζ hζ'
  have h := congrArg (W.lev c ζ) (q_mul W)
  rw [map_mul, map_sub, map_pow, map_add (f := _), map_one, hE, mul_pow, ← map_pow,
    hζ.pow_eq_one, map_one, one_mul] at h
  have hπ := cc_lev_pi W c ζ hζ'
  have hζ1 : ζ - 1 ≠ 0 := sub_ne_zero.2 (hζ.ne_one PD.hp.one_lt)
  have hE1 : PowerSeries.coeff 1 E = 1 := by
    have := PowerSeries.coeff_derivative E 0
    rw [hE'] at this
    simp only [Nat.cast_zero, zero_add, mul_one] at this
    rw [← this, PowerSeries.coeff_zero_eq_constantCoeff_apply, hE0]
  have hpow : ∀ k : ℕ, PowerSeries.coeff 1 (E ^ k) = k := by
    intro k
    induction k with
    | zero => simp [PowerSeries.coeff_one]
    | succ k ih =>
      rw [pow_succ, PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk]
      simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, Nat.sub_zero,
        Nat.sub_self, PowerSeries.coeff_zero_eq_constantCoeff_apply, map_pow, hE0, one_pow, hE1, ih]
      push_cast
      ring
  have hF0 : PowerSeries.constantCoeff (E ^ PD.p - 1) = 0 := by
    rw [map_sub, map_pow, hE0, one_pow, map_one, sub_self]
  obtain ⟨w, hw⟩ := PowerSeries.X_dvd_iff.2 hF0
  have hw0 : PowerSeries.constantCoeff w = (PD.p : LL) := by
    have h1 := congrArg (PowerSeries.coeff 1) hw
    rw [PowerSeries.coeff_succ_X_mul, PowerSeries.coeff_zero_eq_constantCoeff_apply, map_sub,
      hpow, PowerSeries.coeff_one, if_neg one_ne_zero, sub_zero] at h1
    exact h1.symm
  have hne : PowerSeries.constantCoeff (W.lev c ζ letπ) ≠ 0 := by rw [hπ]; exact hζ1
  refine ⟨(W.lev c ζ letπ)⁻¹ * w, ?_, ?_⟩
  · rw [map_mul, PowerSeries.constantCoeff_inv, hπ, hw0]
    exact mul_ne_zero (inv_ne_zero hζ1) hp
  · calc W.lev c ζ W.q = (W.lev c ζ letπ)⁻¹ * (W.lev c ζ letπ * W.lev c ζ W.q) := by
          rw [← mul_assoc, PowerSeries.inv_mul_cancel _ hne, one_mul]
      _ = PowerSeries.X * ((W.lev c ζ letπ)⁻¹ * w) := by rw [h, hw]; ring

alias letE_mul_self := _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq

theorem letE_smul_of_mem_Nl {T : LocLat G Qp LL O} {c : ZMod n} {y : W.DD T}
    (hy : y ∈ W.Nl T c) : (letE c : LetA O n) • y = y := by
  obtain ⟨z, -, rfl⟩ := hy
  simp only [LinearMap.smul_apply, LinearMap.id_apply]
  rw [smul_smul, letE_mul_self]

alias Nl_le_N := _root_.Formalism.MainNotions.LiftingTheory.wmap_Nl_le

theorem mem_Nl_of {T : LocLat G Qp LL O} {c : ZMod n} {y : W.DD T} (hy : y ∈ W.N T)
    (hc : (letE c : LetA O n) • y = y) : y ∈ W.Nl T c :=
  ⟨y, hy, by simp only [LinearMap.smul_apply, LinearMap.id_apply]; exact hc⟩

theorem levN_sum {T : LocLat G Qp LL O} (c : ZMod n) (ζ : LL) {r : ℕ} {b : Fin r → W.DD T}
    (hbN : ∀ m, b m ∈ W.N T) (a : Fin r → LetA O n) (hy : ∑ m, a m • b m ∈ W.N T) (j : ℤ) :
    W.levN T c ζ ⟨∑ m, a m • b m, hy⟩ j =
      ∑ m, smulS (W.lev c ζ (a m)) (W.levN T c ζ ⟨b m, hbN m⟩) j := by
  have e : (⟨∑ m, a m • b m, hy⟩ : ↥(W.N T)) = ∑ m, a m • (⟨b m, hbN m⟩ : ↥(W.N T)) :=
    Subtype.ext (by simp [Submodule.coe_sum])

  rw [e, map_sum, Finset.sum_apply]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [W.levN_smul]
  rfl

theorem rank_le (hFr : IsFractionRing O LL) (T : LocLat G Qp LL O) (c : ZMod n) {r : ℕ}
    {b : Fin r → W.DD T} (hbS : ∀ j, b j ∈ W.Nl T c)
    (hu : ∀ x ∈ W.Nl T c, ∃! a : Fin r → PowerSeries O,
      x = ∑ j, (Pi.single c (a j) : LetA O n) • b j)
    (h3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T) [FiniteDimensional LL ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c)] :
    r ≤ finrank LL ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c) := by
  apply Formalism.MainNotions.N.Ln34.CrystallineExponents.rank_le <;> assumption

end Loc

end Formalism.MainNotions.N.Pv.LocalLengthBound.MC
