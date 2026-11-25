module

public import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.WModel
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.InClassOfExp
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntRPsubst
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TwoSumsCondition
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TheoremSFromKOneOf
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.SubstZOfXCoordZA
import Mathlib.Tactic.Linter.Style
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.OddLogRelation
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ExpansionAllPlacesOfPlace

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FrobeniusCongruenceWitt, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SxMuAltInt, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThPosSubPosAdd, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThLinKConst, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TripleSumComm, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FrobeniusCongruenceWitt =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FrobeniusCongruenceWitt", "h": "module\n\nimport Formalism.LocalToGlobal.GroupLattices.PendingLemmas.SubstZOfXCoordZA\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.WModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.OddLogRelation\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lgF lamF altF)

variable {p : ℕ} [hp : Fact p.Prime]

theorem sx_dual_even {n' : ℕ} (B : OmBasis p n') (i i' : Fin (n' / 2)) :
    ∑ r, (sigW p)^[2 * i.val] (B.omS r) * (sigW p)^[2 * i'.val] (B.om r) = if i = i' then 1 else 0 := by
  classical
  have hAB : (Matrix.of fun (r j : Fin (n' / 2)) => (sigW p)^[2 * j.val] (B.om r)) *
      (Matrix.of fun (j r' : Fin (n' / 2)) => (sigW p)^[2 * j.val] (B.omS r')) = 1 := by
    refine Matrix.ext fun r r' => ?_
    rw [Matrix.mul_apply, Matrix.one_apply, ← B.dual r r']
    exact Finset.sum_congr rfl fun j _ => by rw [Matrix.of_apply, Matrix.of_apply, iterate_map_mul]
  have hBA := mul_eq_one_comm.mp hAB
  have h := congrFun (congrFun hBA i) i'
  rw [Matrix.mul_apply, Matrix.one_apply] at h
  simpa using h

theorem sx_dual {n' : ℕ} (B : OmBasis p n') (hev : Even n') (a b : Fin n') (hab : a.val % 2 = b.val % 2) :
    ∑ r, (sigW p)^[a.val] (B.omS r) * (sigW p)^[b.val] (B.om r) = if a = b then 1 else 0 := by
  apply Formalism.L2.G.Pend.dualS <;> assumption

theorem frobenius_congruence_witt (a : WW p) : ∃ y : WW p, sigW p a = a ^ p + p * y := by
  obtain ⟨y, hy⟩ := Formalism.InvariantFactorPaths.G7.WModel.frob_sub_pow p a
  exact ⟨y, by unfold sigW; linear_combination hy⟩

theorem sx_lift {ι K' : Type} [Field K'] {R : Subring K'} {f : MvPowerSeries ι K'} (hf : IntR R f) :
    ∃ f0 : MvPowerSeries ι R, MvPowerSeries.map R.subtype f0 = f := by
  refine ⟨fun m => ⟨MvPowerSeries.coeff m f, hf m⟩, ?_⟩
  ext m
  rfl

theorem sx_sum_pow {A α : Type} [CommRing A] (s : Finset α) (x : α → A) :
    ∃ r : A, (∑ i ∈ s, x i) ^ p = ∑ i ∈ s, x i ^ p + (p : A) * r := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨0, by simp [zero_pow hp.out.ne_zero]⟩
  | insert a s ha ih =>
    obtain ⟨r1, hr1⟩ := ih
    obtain ⟨r2, hr2⟩ := exists_add_pow_prime_eq hp.out (x a) (∑ i ∈ s, x i)
    refine ⟨r1 + x a * (∑ i ∈ s, x i) * r2, ?_⟩
    rw [Finset.sum_insert ha, Finset.sum_insert ha, hr2, hr1]
    ring

theorem sx_frob_sum {ι α K' : Type} [Field K'] (R : Subring K') (s : Finset α) (x : α → MvPowerSeries ι K')
    (hx : ∀ i ∈ s, IntR R (x i)) :
    ∃ Y, IntR R Y ∧ (∑ i ∈ s, x i) ^ p = ∑ i ∈ s, x i ^ p + MvPowerSeries.C (p : K') * Y := by
  classical
  have hlift : ∀ i ∈ s, ∃ f0 : MvPowerSeries ι R, MvPowerSeries.map R.subtype f0 = x i :=
    fun i hi => sx_lift (hx i hi)
  choose y hy using hlift
  let y' : α → MvPowerSeries ι R := fun i => if h : i ∈ s then y i h else 0
  obtain ⟨r, hr⟩ := sx_sum_pow (p := p) s y'
  refine ⟨MvPowerSeries.map R.subtype r, fun n => ?_, ?_⟩
  · rw [MvPowerSeries.coeff_map]
    exact (MvPowerSeries.coeff n r).2
  · have hsum : ∀ i ∈ s, MvPowerSeries.map R.subtype (y' i) = x i := fun i hi => by
      simp only [y', dif_pos hi]
      exact hy i hi
    have h2 := congrArg (MvPowerSeries.map R.subtype) hr

    simp only [map_pow, map_sum, map_add (f := _), map_mul, map_natCast] at h2
    have e3 : ∑ i ∈ s, (MvPowerSeries.map R.subtype (y' i)) ^ p = ∑ i ∈ s, x i ^ p :=
      Finset.sum_congr rfl fun i hi => by rw [hsum i hi]
    rw [Finset.sum_congr rfl hsum, e3] at h2
    rw [h2, map_natCast]

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FrobeniusCongruenceWitt =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SxMuAltInt =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SxMuAltInt", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lgF lamF altF)
open Formalism.InvariantFactorPaths.G7.LogarithmEquivalence (altR)

variable (p : ℕ) [hp : Fact p.Prime] (K' : Type) [Field K'] [Algebra (K0 p) K']

theorem sx_lam_int (vp : K') (hvp : vp ^ (p ^ 2 - 1) = (p : K')) (n : ℕ) :
    ∃ z : ℤ, PowerSeries.coeff n (lamF p vp) = (z : K') ∧
      (p : ℤ) ∣ z - ((if n = 1 then 1 else 0) + (if n = p ^ 2 then 1 else 0)) := by
  haveI := charZero_K' p K'
  have hp2 : 2 ≤ p := hp.out.two_le
  have hq : 4 ≤ p ^ 2 := by nlinarith
  have hinj : Function.Injective (fun j : ℕ => (p ^ 2) ^ j) := Nat.pow_right_injective (by omega)
  have hp0 : (p : K') ≠ 0 := by exact_mod_cast hp.out.ne_zero
  have hq1 : p ^ 2 ≠ 1 := by omega
  simp only [lamF, lgF, PowerSeries.coeff_mk]
  by_cases hn : ∃ j, n = (p ^ 2) ^ j
  · obtain ⟨j, rfl⟩ := hn
    have hjlt : j < (p ^ 2) ^ j + 1 := by
      have := Nat.lt_pow_self (n := j) (show 1 < p ^ 2 by omega)
      omega
    have hsum : (∑ i ∈ range ((p ^ 2) ^ j + 1),
        if (p ^ 2) ^ j = (p ^ 2) ^ i then ((p : K') ^ i)⁻¹ else 0) = ((p : K') ^ j)⁻¹ := by
      rw [Finset.sum_eq_single j]
      · simp
      · intro b _ hb
        rw [if_neg]
        intro h
        exact hb (hinj h).symm
      · intro hj
        exact absurd (Finset.mem_range.2 hjlt) hj
    rw [hsum]
    have key : ∀ m : ℕ, ∃ e : ℕ, vp ^ ((p ^ 2) ^ m - 1) = (p : K') ^ e ∧ m ≤ e ∧
        (m ≤ 1 → e = m) ∧ (2 ≤ m → m + 1 ≤ e) := by
      intro m
      induction m with
      | zero => exact ⟨0, by simp, le_rfl, fun _ => rfl, fun h => by omega⟩
      | succ m ih =>
        obtain ⟨e, he, hme, h1, h2⟩ := ih
        have ha : 1 ≤ (p ^ 2) ^ m := Nat.one_le_pow _ _ (by omega)
        have hexp : (p ^ 2) ^ (m + 1) - 1 = ((p ^ 2) ^ m - 1) * p ^ 2 + (p ^ 2 - 1) := by
          rw [pow_succ]
          have : 1 ≤ (p ^ 2) ^ m * p ^ 2 := Nat.one_le_iff_ne_zero.2 (by positivity)
          zify [ha, this, show 1 ≤ p ^ 2 by omega]
          ring
        have hm4 : e * 4 ≤ e * p ^ 2 := Nat.mul_le_mul_left _ hq
        refine ⟨e * p ^ 2 + 1, ?_, ?_, ?_, ?_⟩
        · rw [hexp, pow_add, pow_mul, he, hvp, ← pow_mul, ← pow_succ]
        · omega
        · intro hm
          have hm0 : m = 0 := by omega
          subst hm0
          have he0 := h1 (by omega)
          subst he0
          simp
        · intro hm
          omega
    obtain ⟨e, he, hje, h1, h2⟩ := key j
    refine ⟨(p : ℤ) ^ (e - j), ?_, ?_⟩
    · rw [he]
      push_cast
      have hpe : (p : K') ^ e = (p : K') ^ (e - j) * (p : K') ^ j := by
        rw [← pow_add, Nat.sub_add_cancel hje]
      rw [hpe, mul_inv_cancel_right₀ (pow_ne_zero _ hp0)]
    · rcases Nat.lt_or_ge j 2 with hj | hj
      · interval_cases j
        · obtain rfl := h1 (by norm_num)
          simp [Ne.symm hq1]
        · obtain rfl := h1 (by norm_num)
          simp [hp.out.ne_one]
      · have hn1 : (p ^ 2) ^ j ≠ 1 := fun h => by
          have := hinj (show (p ^ 2) ^ j = (p ^ 2) ^ 0 by rw [h, pow_zero])
          omega
        have hnq : (p ^ 2) ^ j ≠ p ^ 2 := fun h => by
          have := hinj (show (p ^ 2) ^ j = (p ^ 2) ^ 1 by rw [h, pow_one])
          omega
        rw [if_neg hn1, if_neg hnq]
        simp only [add_zero, sub_zero]
        exact dvd_pow_self _ (by omega)
  · have hsum : (∑ i ∈ range (n + 1), if n = (p ^ 2) ^ i then ((p : K') ^ i)⁻¹ else 0) = 0 :=
      Finset.sum_eq_zero fun i _ => if_neg fun h => hn ⟨i, h⟩
    rw [hsum, mul_zero]
    have hn1 : n ≠ 1 := fun h => hn ⟨0, by simp [h]⟩
    have hnq : n ≠ p ^ 2 := fun h => hn ⟨1, by simp [h]⟩
    exact ⟨0, by simp, by simp [hn1, hnq]⟩

private theorem sum_sign_if_eq_pow_at_pow (q : ℕ) (hq : 1 < q) (l : ℕ) :
    (∑ i ∈ range (q ^ l + 1), if q ^ l = q ^ i then ((-1 : ℤ)) ^ i else 0) = (-1) ^ l := by
  have hinj : Function.Injective (fun j : ℕ => q ^ j) := Nat.pow_right_injective (by omega)
  have hlt : l < q ^ l + 1 := by
    have := Nat.lt_pow_self (n := l) hq
    omega
  rw [Finset.sum_eq_single l]
  · simp
  · intro b _ hb
    rw [if_neg]
    intro h
    exact hb (hinj h).symm
  · intro hl
    exact absurd (Finset.mem_range.2 hlt) hl

private theorem sum_sign_if_eq_pow_eq_zero_of_ne_pow (q m : ℕ) (hm : ∀ l, m ≠ q ^ l) :
    (∑ i ∈ range (m + 1), if m = q ^ i then ((-1 : ℤ)) ^ i else 0) = 0 :=
  Finset.sum_eq_zero fun i _ => if_neg (hm i)

private theorem sum_sign_if_eq_pow_add_div_eq_indicator_one (q : ℕ) (hq : 1 < q) (n : ℕ) :
    (∑ i ∈ range (n + 1), if n = q ^ i then ((-1 : ℤ)) ^ i else 0) +
      (if q ∣ n then (∑ i ∈ range (n / q + 1), if n / q = q ^ i then ((-1 : ℤ)) ^ i else 0)
        else 0) = if n = 1 then 1 else 0 := by
  have hinj : Function.Injective (fun j : ℕ => q ^ j) := Nat.pow_right_injective (by omega)
  by_cases hn : ∃ l, n = q ^ l
  · obtain ⟨l, rfl⟩ := hn
    rw [sum_sign_if_eq_pow_at_pow q hq l]
    rcases l with _ | l
    · have : ¬ q ∣ 1 := fun h => by have := Nat.le_of_dvd one_pos h; omega
      simp [this]
    · have hd : q ∣ q ^ (l + 1) := dvd_pow_self q (by omega)
      have hdiv : q ^ (l + 1) / q = q ^ l := by
        rw [pow_succ, Nat.mul_div_cancel _ (by omega)]
      have hne : q ^ (l + 1) ≠ 1 := fun h => by
        have := hinj (show q ^ (l + 1) = q ^ 0 by rw [h, pow_zero])
        omega
      rw [if_pos hd, hdiv, sum_sign_if_eq_pow_at_pow q hq l, if_neg hne, pow_succ]
      ring
  · push_neg at hn
    rw [sum_sign_if_eq_pow_eq_zero_of_ne_pow q n hn]
    have hn1 : n ≠ 1 := fun h => hn 0 (by simp [h])
    rw [if_neg hn1, zero_add]
    split_ifs with hd
    · apply sum_sign_if_eq_pow_eq_zero_of_ne_pow
      intro l hl
      apply hn (l + 1)
      rw [pow_succ, ← hl, Nat.div_mul_cancel hd]
    · rfl

private theorem coeff_pow_eq_of_lower_coeff_eq {R : Type} [CommRing R] (a b : PowerSeries R)
    (ha : PowerSeries.X ∣ a) (hb : PowerSeries.X ∣ b) (n : ℕ)
    (hab : ∀ m < n, PowerSeries.coeff m a = PowerSeries.coeff m b) (d : ℕ) (hd : d ≠ 1) :
    PowerSeries.coeff n (a ^ d) = PowerSeries.coeff n (b ^ d) := by
  rcases Nat.lt_or_ge d 2 with h | h
  · interval_cases d
    · simp
    · exact absurd rfl hd
  · have h1 : PowerSeries.X ^ n ∣ a - b := by
      rw [PowerSeries.X_pow_dvd_iff]
      intro m hm
      rw [map_sub, hab m hm, sub_self]
    have h2 : PowerSeries.X ∣ ∑ i ∈ range d, a ^ i * b ^ (d - 1 - i) := by
      apply Finset.dvd_sum
      intro i hi
      rcases Nat.eq_zero_or_pos i with h0 | h0
      · subst h0
        apply Dvd.dvd.mul_left
        exact dvd_pow hb (by omega)
      · exact Dvd.dvd.mul_right (dvd_pow ha (by omega)) _
    have h3 : PowerSeries.X ^ (n + 1) ∣ a ^ d - b ^ d := by
      have he : a ^ d - b ^ d = (a - b) * ∑ i ∈ range d, a ^ i * b ^ (d - 1 - i) := by
        rw [← geom_sum₂_mul]
        ring
      rw [he, pow_succ]
      exact mul_dvd_mul h1 h2
    have h4 := (PowerSeries.X_pow_dvd_iff.1 h3) n (by omega)
    rw [map_sub, sub_eq_zero] at h4
    exact h4

private theorem coeff_subst_eq_sum_coeff_mul_coeff_pow {K : Type} [Field K] (μ f : PowerSeries K)
    (h0 : PowerSeries.constantCoeff μ = 0) (n : ℕ) :
    PowerSeries.coeff n (PowerSeries.subst μ f) =
      ∑ d ∈ range (n + 1), PowerSeries.coeff d f * PowerSeries.coeff n (μ ^ d) := by
  rw [PowerSeries.coeff_subst' (PowerSeries.HasSubst.of_constantCoeff_zero' h0)]
  rw [finsum_eq_sum_of_support_subset _ (s := range (n + 1)) ?_]
  · rfl
  · intro d hd
    rw [Function.mem_support] at hd
    rw [Finset.coe_range, Set.mem_Iio]
    by_contra hlt
    apply hd
    obtain ⟨r, hr⟩ := PowerSeries.X_dvd_iff.2 h0
    rw [hr, mul_pow, PowerSeries.coeff_X_pow_mul', if_neg (by omega), smul_zero]

theorem sx_mu_alt_int (vp : K') (hvp : vp ^ (p ^ 2 - 1) = (p : K')) (μ : PowerSeries K')
    (h0 : PowerSeries.constantCoeff μ = 0)
    (h1 : (PowerSeries.subst μ (lamF p vp) : PowerSeries K') = PowerSeries.X) (n : ℕ) :
    ∃ y : ℤ, PowerSeries.coeff n μ - PowerSeries.coeff n (altF K' p) = (p : K') * (y : K') := by
  haveI := charZero_K' p K'
  have hp2 : 2 ≤ p := hp.out.two_le
  have hq : 1 < p ^ 2 := by nlinarith
  have hq1 : p ^ 2 ≠ 1 := by omega
  choose z hz1 hz2 using sx_lam_int p K' vp hvp
  have hX : PowerSeries.X ∣ μ := PowerSeries.X_dvd_iff.2 h0
  have hl1 : PowerSeries.coeff 1 (lamF p vp) = 1 := by
    simp [lamF, lgF, Finset.sum_range_succ, Ne.symm hq1]
  have halt : ∀ m, PowerSeries.coeff m (altF K' p) =
      ((∑ i ∈ range (m + 1), if m = (p ^ 2) ^ i then ((-1 : ℤ)) ^ i else 0 : ℤ) : K') := by
    intro m
    simp only [altF, PowerSeries.coeff_mk]
    push_cast
    rfl
  have hPk : ∀ (Q : Polynomial ℤ) (m : ℕ), PowerSeries.coeff m
      ((Q.map (Int.castRingHom K') : Polynomial K') : PowerSeries K') = (Q.coeff m : K') := by
    intro Q m
    rw [Polynomial.coeff_coe, Polynomial.coeff_map, eq_intCast]
  have hQq : ∀ (R : Polynomial (ZMod p)) (n : ℕ),
      (R ^ (p ^ 2)).coeff n = if p ^ 2 ∣ n then R.coeff (n / p ^ 2) else 0 := by
    intro R n
    rw [sq, pow_mul, ← ZMod.expand_card, ← ZMod.expand_card, ← Polynomial.expand_mul,
      Polynomial.coeff_expand (by positivity)]
  have key : ∀ n, 1 ≤ n → ∃ P : Polynomial ℤ, P.coeff 0 = 0 ∧ (∀ m, n ≤ m → P.coeff m = 0) ∧
      (∀ m < n, PowerSeries.coeff m μ = (P.coeff m : K')) ∧
      (∀ m < n, (p : ℤ) ∣ P.coeff m -
        ∑ i ∈ range (m + 1), if m = (p ^ 2) ^ i then ((-1 : ℤ)) ^ i else 0) := by
    intro n hn
    induction n, hn using Nat.le_induction with
    | base =>
      refine ⟨0, by simp, fun m _ => by simp, fun m hm => ?_, fun m hm => ?_⟩
      · have : m = 0 := by omega
        subst this
        rw [PowerSeries.coeff_zero_eq_constantCoeff_apply, h0]
        simp
      · have : m = 0 := by omega
        subst this
        simp
    | succ n hn ih =>
      obtain ⟨P, hP0, hPz, hPμ, hPd⟩ := ih
      have hXP : PowerSeries.X ∣ ((P.map (Int.castRingHom K') : Polynomial K') : PowerSeries K') := by
        rw [PowerSeries.X_dvd_iff, ← PowerSeries.coeff_zero_eq_constantCoeff_apply, hPk, hP0,
          Int.cast_zero]
      have hcμ : PowerSeries.coeff n μ = (((if n = 1 then 1 else 0) -
          ∑ d ∈ (range (n + 1)).erase 1, z d * (P ^ d).coeff n : ℤ) : K') := by
        have e1 := congrArg (PowerSeries.coeff n) h1
        rw [coeff_subst_eq_sum_coeff_mul_coeff_pow μ _ h0 n, PowerSeries.coeff_X,
          ← Finset.add_sum_erase _ _ (Finset.mem_range.2 (by omega : 1 < n + 1)),
          hl1, pow_one, one_mul] at e1
        have hS : ∑ d ∈ (range (n + 1)).erase 1,
            PowerSeries.coeff d (lamF p vp) * PowerSeries.coeff n (μ ^ d) =
            ∑ d ∈ (range (n + 1)).erase 1, (z d : K') * ((P ^ d).coeff n : K') := by
          apply Finset.sum_congr rfl
          intro d hd
          rw [hz1 d, coeff_pow_eq_of_lower_coeff_eq μ _ hX hXP n (fun m hm => by rw [hPμ m hm, hPk]) d
            (Finset.ne_of_mem_erase hd), ← Polynomial.coe_pow, ← Polynomial.map_pow, hPk]
        rw [hS] at e1
        simp only [Int.cast_sub, Int.cast_sum, Int.cast_mul, Int.cast_ite, Int.cast_one,
          Int.cast_zero]
        linear_combination e1
      have hcd : (p : ℤ) ∣ ((if n = 1 then 1 else 0) -
          ∑ d ∈ (range (n + 1)).erase 1, z d * (P ^ d).coeff n) -
          ∑ i ∈ range (n + 1), if n = (p ^ 2) ^ i then ((-1 : ℤ)) ^ i else 0 := by
        rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
        have hQ : ∀ m, (P.map (Int.castRingHom (ZMod p))).coeff m = if m < n then
            (((∑ i ∈ range (m + 1), if m = (p ^ 2) ^ i then ((-1 : ℤ)) ^ i else 0 : ℤ)) : ZMod p)
            else 0 := by
          intro m
          rw [Polynomial.coeff_map, eq_intCast]
          split_ifs with hm
          · rw [← sub_eq_zero, ← Int.cast_sub, ZMod.intCast_zmod_eq_zero_iff_dvd]
            exact hPd m hm
          · rw [hPz m (by omega), Int.cast_zero]
        have hzb : ∀ d ∈ (range (n + 1)).erase 1, ((z d : ℤ) : ZMod p) = if d = p ^ 2 then 1 else 0 := by
          intro d hd
          have h := hz2 d
          rw [if_neg (Finset.ne_of_mem_erase hd), zero_add] at h
          split_ifs at h ⊢ with hdq
          · have h' := (ZMod.intCast_zmod_eq_zero_iff_dvd _ p).2 h
            push_cast at h'
            exact sub_eq_zero.1 h'
          · rw [sub_zero] at h
            exact (ZMod.intCast_zmod_eq_zero_iff_dvd _ p).2 h
        have hS : ((∑ d ∈ (range (n + 1)).erase 1, z d * (P ^ d).coeff n : ℤ) : ZMod p) =
            if p ^ 2 ∣ n then (((∑ i ∈ range (n / p ^ 2 + 1),
              if n / p ^ 2 = (p ^ 2) ^ i then ((-1 : ℤ)) ^ i else 0 : ℤ)) : ZMod p) else 0 := by
          rw [Int.cast_sum]
          rw [Finset.sum_congr rfl (g := fun d => if d = p ^ 2 then
            ((P.map (Int.castRingHom (ZMod p))) ^ (p ^ 2)).coeff n else 0)]
          · rw [Finset.sum_ite_eq', hQq]
            split_ifs with h1 h2 h2
            · rw [hQ, if_pos (Nat.div_lt_self (by omega) hq)]
            · rfl
            · exfalso
              apply h1
              have := Nat.le_of_dvd (by omega) h2
              rw [Finset.mem_erase, Finset.mem_range]
              exact ⟨hq1, by omega⟩
            · rfl
          · intro d hd
            rw [Int.cast_mul, hzb d hd]
            split_ifs with hdq
            · subst hdq
              rw [one_mul, ← Polynomial.map_pow, Polynomial.coeff_map, eq_intCast]
            · rw [zero_mul]
        have hr := congrArg (Int.cast : ℤ → ZMod p) (sum_sign_if_eq_pow_add_div_eq_indicator_one (p ^ 2) hq n)
        rw [Int.cast_add] at hr
        rw [Int.cast_sub, Int.cast_sub, hS]
        split_ifs at hr ⊢ <;> push_cast at hr ⊢ <;> linear_combination (-1 : ZMod p) * hr
      refine ⟨P + Polynomial.C ((if n = 1 then 1 else 0) -
          ∑ d ∈ (range (n + 1)).erase 1, z d * (P ^ d).coeff n) * Polynomial.X ^ n,
        ?_, ?_, ?_, ?_⟩
      · rw [Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow, if_neg (by omega), hP0, add_zero]
      · intro m hm
        rw [Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow, if_neg (by omega), hPz m (by omega),
          add_zero]
      · intro m hm
        rw [Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow]
        rcases Nat.lt_or_ge m n with h | h
        · rw [if_neg (by omega), add_zero]
          exact hPμ m h
        · have hmn : m = n := by omega
          subst hmn
          rw [if_pos rfl, hPz m le_rfl, zero_add]
          exact hcμ
      · intro m hm
        rw [Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow]
        rcases Nat.lt_or_ge m n with h | h
        · rw [if_neg (by omega), add_zero]
          exact hPd m h
        · have hmn : m = n := by omega
          subst hmn
          rw [if_pos rfl, hPz m le_rfl, zero_add]
          exact hcd
  obtain ⟨P, -, -, hPμ, hPd⟩ := key (n + 1) (by omega)
  obtain ⟨y, hy⟩ := hPd n (by omega)
  refine ⟨y, ?_⟩
  rw [hPμ n (by omega), halt n, ← Int.cast_sub, hy]
  push_cast
  ring

theorem sx_mu_alt (vp : K') (hvp : vp ^ (p ^ 2 - 1) = (p : K')) (μ : PowerSeries K')
    (h0 : PowerSeries.constantCoeff μ = 0)
    (h1 : (PowerSeries.subst μ (lamF p vp) : PowerSeries K') = PowerSeries.X) (n : ℕ) :
    ∃ y ∈ Rp p K' vp, PowerSeries.coeff n μ - PowerSeries.coeff n (altF K' p) = (p : K') * y := by
  obtain ⟨y, hy⟩ := sx_mu_alt_int p K' vp hvp μ h0 h1 n
  exact ⟨(y : K'), intCast_mem _ y, hy⟩

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SxMuAltInt =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThPosSubPosAdd =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThPosSubPosAdd", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.InClassOfExp\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntRPsubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lamF altF)

section CgCalc

variable {ι K : Type} [Field K] (R : Subring K) (pp : K)

def Cg (f g : MvPowerSeries ι K) : Prop := ∃ Y : MvPowerSeries ι K, IntR R Y ∧ f = g + MvPowerSeries.C pp * Y

variable {R pp}

theorem cg_refl (f : MvPowerSeries ι K) : Cg R pp f f := ⟨0, IntR_zero, by simp⟩

theorem cg_of_eq {f g : MvPowerSeries ι K} (h : f = g) : Cg R pp f g := h ▸ cg_refl f

theorem cg_trans {f g k : MvPowerSeries ι K} (h1 : Cg R pp f g) (h2 : Cg R pp g k) : Cg R pp f k := by
  obtain ⟨Y, hY, e⟩ := h1
  obtain ⟨Y', hY', e'⟩ := h2
  exact ⟨Y + Y', IntR_add hY hY', by rw [e, e']; ring⟩

theorem cg_add {f g f' g' : MvPowerSeries ι K} (h1 : Cg R pp f g) (h2 : Cg R pp f' g') :
    Cg R pp (f + f') (g + g') := by
  obtain ⟨Y, hY, e⟩ := h1
  obtain ⟨Y', hY', e'⟩ := h2
  exact ⟨Y + Y', IntR_add hY hY', by rw [e, e']; ring⟩

theorem cg_sum {α : Type} (s : Finset α) (F G : α → MvPowerSeries ι K) (h : ∀ a ∈ s, Cg R pp (F a) (G a)) :
    Cg R pp (∑ a ∈ s, F a) (∑ a ∈ s, G a) := by
  classical
  induction s using Finset.induction_on with
  | empty => exact cg_refl _
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact cg_add (h a (Finset.mem_insert_self _ _)) (ih fun b hb => h b (Finset.mem_insert_of_mem hb))

theorem cg_mul {f g f' g' : MvPowerSeries ι K} (hf' : IntR R f') (hg : IntR R g) (h1 : Cg R pp f g)
    (h2 : Cg R pp f' g') : Cg R pp (f * f') (g * g') := by
  obtain ⟨Y, hY, e⟩ := h1
  obtain ⟨Y', hY', e'⟩ := h2
  refine ⟨g * Y' + Y * f', IntR_add (IntR_mul hg hY') (IntR_mul hY hf'), ?_⟩
  rw [e]
  conv_lhs => rw [add_mul, e']
  conv_rhs => rw [e']
  ring

theorem cg_pow {f g : MvPowerSeries ι K} (hf : IntR R f) (hg : IntR R g) (h : Cg R pp f g) (k : ℕ) :
    Cg R pp (f ^ k) (g ^ k) := by
  induction k with
  | zero => exact cg_of_eq (by simp)
  | succ k ih => rw [pow_succ, pow_succ]; exact cg_mul hf (IntR_pow hg k) ih h

theorem cg_of_coeff {f g : MvPowerSeries ι K}
    (h : ∀ n, ∃ y ∈ R, MvPowerSeries.coeff n f = MvPowerSeries.coeff n g + pp * y) : Cg R pp f g := by
  choose y hy he using h
  let Y : MvPowerSeries ι K := fun n => y n
  have hYc : ∀ n, MvPowerSeries.coeff n Y = y n := fun _ => rfl
  refine ⟨Y, fun n => by rw [hYc]; exact hy n, ?_⟩
  ext n
  rw [map_add (f := _), MvPowerSeries.coeff_C_mul, he n, hYc]

theorem cg_coeff {f g : MvPowerSeries ι K} (h : Cg R pp f g) (n : ι →₀ ℕ) :
    ∃ y ∈ R, MvPowerSeries.coeff n f = MvPowerSeries.coeff n g + pp * y := by
  obtain ⟨Y, hY, e⟩ := h
  exact ⟨_, hY n, by rw [e, map_add (f := _), MvPowerSeries.coeff_C_mul]⟩

end CgCalc

section Pos

theorem th_posSub_posAdd {n' : ℕ} (s : Fin n') (d : ℕ) : posSub (posAdd s d) d = s := by
  obtain ⟨m, rfl⟩ : ∃ m, n' = m + 1 := ⟨n' - 1, by have := s.pos; omega⟩
  apply Fin.ext
  show ((s.val + d) % (m + 1) + (m + 1) * d - d) % (m + 1) = s.val
  have e : (s.val + d) % (m + 1) + (m + 1) * d - d = (s.val + d) % (m + 1) + m * d := by
    have : (m + 1) * d = m * d + d := by ring
    omega
  rw [e, Nat.mod_add_mod]
  have e2 : s.val + d + m * d = s.val + (m + 1) * d := by ring
  rw [e2, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt s.isLt]

theorem th_posAdd_posSub {n' : ℕ} (t : Fin n') (d : ℕ) : posAdd (posSub t d) d = t := by
  obtain ⟨m, rfl⟩ : ∃ m, n' = m + 1 := ⟨n' - 1, by have := t.pos; omega⟩
  apply Fin.ext
  show ((t.val + (m + 1) * d - d) % (m + 1) + d) % (m + 1) = t.val
  have e : t.val + (m + 1) * d - d = t.val + m * d := by
    have : (m + 1) * d = m * d + d := by ring
    omega
  rw [e, Nat.mod_add_mod]
  have e2 : t.val + m * d + d = t.val + (m + 1) * d := by ring
  rw [e2, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt t.isLt]

theorem th_odd_posAdd {n' : ℕ} (hev : Even n') (s : Fin n') (d : ℕ) :
    (posAdd s d).val % 2 = (s.val + d) % 2 := by
  show (s.val + d) % n' % 2 = _
  exact Nat.mod_mod_of_dvd _ hev.two_dvd

end Pos

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThPosSubPosAdd =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThLinKConst =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThLinKConst", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThPosSubPosAdd\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TwoSumsCondition\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntRPsubst\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TheoremSFromKOneOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lamF altF)

variable {p : ℕ} [hp : Fact p.Prime] {n' r0 r1 : ℕ} (K' : Type) [Field K'] [Algebra (K0 p) K']

def Aw (w : WW p) (k : ℕ) : K' := wK' p K' ((sigW p)^[k] w)

def FrobSumH (p n' r0 r1 : ℕ) (K' : Type) [Field K'] (R : Subring K') : Prop :=
  ∀ (s : Finset (Fin n')) (x : Fin n' → MvPowerSeries (Zidx n' r0 r1) K'), (∀ i ∈ s, IntR R (x i)) →
    ∃ Y : MvPowerSeries (Zidx n' r0 r1) K', IntR R Y ∧
      (∑ i ∈ s, x i) ^ p = ∑ i ∈ s, x i ^ p + MvPowerSeries.C (p : K') * Y

def FrobWH (p : ℕ) [Fact p.Prime] : Prop := ∀ a : WW p, ∃ y : WW p, sigW p a = a ^ p + (p : WW p) * y

variable {K'} (vp : K')

theorem th_Aw_mem (w : WW p) (k : ℕ) : Aw K' w k ∈ Rp p K' vp := W_mem_Rp p K' vp _

theorem th_Aw_succ (hW : FrobWH p) (w : WW p) (k : ℕ) :
    ∃ y ∈ Rp p K' vp, Aw K' w (k + 1) = Aw K' w k ^ p + (p : K') * y := by
  obtain ⟨y, hy⟩ := hW ((sigW p)^[k] w)
  refine ⟨wK' p K' y, ?_, ?_⟩
  · have h1 := th_Aw_mem vp y 0
    simpa [Aw] using h1
  · simp only [Aw, wK', Function.iterate_succ_apply', hy, map_add (f := _), map_mul, map_pow, map_natCast]

theorem th_frob_lin (hF : FrobSumH p n' r0 r1 K' (Rp p K' vp)) (hW : FrobWH p) (w : WW p) (P : Finset (Fin n'))
    (e : Fin n' → ℕ) (x : Fin n' → MvPowerSeries (Zidx n' r0 r1) K') (hx : ∀ s, IntR (Rp p K' vp) (x s)) :
    Cg (Rp p K' vp) (p : K') ((∑ s ∈ P, MvPowerSeries.C (Aw K' w (e s)) * x s) ^ p)
      (∑ s ∈ P, MvPowerSeries.C (Aw K' w (e s + 1)) * x s ^ p) := by
  have hint : ∀ s ∈ P, IntR (Rp p K' vp) (MvPowerSeries.C (Aw K' w (e s)) * x s) :=
    fun s _ => IntR_mul (IntR_C (R := Rp p K' vp) (th_Aw_mem vp w _)) (hx s)
  obtain ⟨Y, hY, hEq⟩ := hF P (fun s => MvPowerSeries.C (Aw K' w (e s)) * x s) hint
  have h1 : Cg (Rp p K' vp) (p : K') ((∑ s ∈ P, MvPowerSeries.C (Aw K' w (e s)) * x s) ^ p)
      (∑ s ∈ P, (MvPowerSeries.C (Aw K' w (e s)) * x s) ^ p) := ⟨Y, hY, hEq⟩
  refine cg_trans h1 (cg_sum _ _ _ fun s _ => ?_)
  obtain ⟨z, hz, hzeq⟩ := th_Aw_succ vp hW w (e s)
  rw [mul_pow, ← map_pow]
  refine cg_mul (IntR_pow (hx s) p) (IntR_C (R := Rp p K' vp) (th_Aw_mem vp w _)) ?_ (cg_refl _)
  refine cg_of_coeff fun n => ?_
  by_cases hn : n = 0
  · subst hn
    refine ⟨-z, Subring.neg_mem _ hz, ?_⟩
    rw [MvPowerSeries.coeff_zero_C, MvPowerSeries.coeff_zero_C, hzeq]
    ring
  · refine ⟨0, Subring.zero_mem _, ?_⟩
    rw [MvPowerSeries.coeff_C, MvPowerSeries.coeff_C, if_neg hn, if_neg hn]
    ring

def linK (K' : Type) [Field K'] [Algebra (K0 p) K'] (w : WW p) (P : Finset (Fin n')) (a : Fin r0) (b : Fin r1)
    (k : ℕ) : MvPowerSeries (Zidx n' r0 r1) K' :=
  ∑ s ∈ P, MvPowerSeries.C (Aw K' w (s.val + k)) * MvPowerSeries.X (s, a, b) ^ (p ^ k)

theorem th_linK_int (w : WW p) (P : Finset (Fin n')) (a : Fin r0) (b : Fin r1) (k : ℕ) :
    IntR (Rp p K' vp) (linK K' w P a b k) := by
  unfold linK
  exact IntR_sum _ _ fun s _ => IntR_mul (IntR_C (R := Rp p K' vp) (th_Aw_mem vp w _))
    (IntR_pow (IntR_X (R := Rp p K' vp) _) _)

theorem th_linK_const (w : WW p) (P : Finset (Fin n')) (a : Fin r0) (b : Fin r1) :
    MvPowerSeries.constantCoeff (linK K' w P a b 0) = 0 := by
  simp [linK]

theorem th_claimF (hF : FrobSumH p n' r0 r1 K' (Rp p K' vp)) (hW : FrobWH p) (w : WW p) (P : Finset (Fin n'))
    (a : Fin r0) (b : Fin r1) (k : ℕ) :
    Cg (Rp p K' vp) (p : K') (linK K' w P a b 0 ^ (p ^ k)) (linK K' w P a b k) := by
  induction k with
  | zero =>
    apply cg_of_eq
    simp only [pow_zero, pow_one]
  | succ k ih =>
    have hL : IntR (Rp p K' vp) (linK K' w P a b 0) := th_linK_int vp w P a b 0
    have h1 := cg_pow (IntR_pow hL (p ^ k)) (th_linK_int vp w P a b k) ih p
    rw [← pow_mul, ← pow_succ] at h1
    refine cg_trans h1 ?_
    have h2 := th_frob_lin vp hF hW w P (fun s => s.val + k) (fun s => MvPowerSeries.X (s, a, b) ^ (p ^ k))
      (fun s => IntR_pow (IntR_X (R := Rp p K' vp) _) _)
    simp only [← pow_mul, ← pow_succ] at h2
    exact h2

theorem th_coeff_linK (w : WW p) (P : Finset (Fin n')) (a : Fin r0) (b : Fin r1) (k : ℕ)
    (n : Zidx n' r0 r1 →₀ ℕ) :
    MvPowerSeries.coeff n (linK K' w P a b k) =
      ∑ s ∈ P, Aw K' w (s.val + k) * (if n = Finsupp.single (s, a, b) (p ^ k) then 1 else 0) := by

  simp only [linK, map_sum, MvPowerSeries.coeff_C_mul, MvPowerSeries.coeff_X_pow]

theorem th_reindex (w : WW p) (hper : (sigW p)^[n'] w = w) (P : Finset (Fin n'))
    (hPa : ∀ s ∈ P, ∀ d, posAdd s (2 * d) ∈ P) (hPs : ∀ s ∈ P, ∀ d, posSub s (2 * d) ∈ P)
    (a : Fin r0) (b : Fin r1) (n : Zidx n' r0 r1 →₀ ℕ) (l : ℕ) :
    (-1 : K') ^ l * ∑ s ∈ P, Aw K' w (s.val + 2 * l) *
        (if n = Finsupp.single (s, a, b) (p ^ (2 * l)) then 1 else 0) =
      ∑ t ∈ P, Aw K' w t.val *
        (if n = Finsupp.single (posSub t (2 * l), a, b) (p ^ (2 * l)) then (-1 : K') ^ l else 0) := by
  have hAw : ∀ s : Fin n', Aw K' w (posAdd s (2 * l)).val = Aw K' w (s.val + 2 * l) := by
    intro s
    simp only [Aw, posAdd]
    rw [Function.IsPeriodicPt.iterate_mod_apply hper]
  rw [Finset.mul_sum]
  symm
  refine Finset.sum_nbij' (fun t => posSub t (2 * l)) (fun s => posAdd s (2 * l)) (fun t ht => hPs t ht l)
    (fun s hs => hPa s hs l) (fun t _ => th_posAdd_posSub t _) (fun s _ => th_posSub_posAdd s _) (fun t _ => ?_)
  have h1 : Aw K' w t.val = Aw K' w ((posSub t (2 * l)).val + 2 * l) := by
    rw [← hAw, th_posAdd_posSub]
  rw [h1]
  split_ifs <;> ring

theorem th_claimM (hF : FrobSumH p n' r0 r1 K' (Rp p K' vp)) (hW : FrobWH p) (μ : PowerSeries K')
    (hT1 : ∀ n, ∃ y ∈ Rp p K' vp, PowerSeries.coeff n μ - PowerSeries.coeff n (altF K' p) = (p : K') * y)
    (w : WW p) (hper : (sigW p)^[n'] w = w) (P : Finset (Fin n'))
    (hPa : ∀ s ∈ P, ∀ d, posAdd s (2 * d) ∈ P) (hPs : ∀ s ∈ P, ∀ d, posSub s (2 * d) ∈ P)
    (a : Fin r0) (b : Fin r1) :
    Cg (Rp p K' vp) (p : K') (PowerSeries.subst (linK K' w P a b 0) μ)
      (∑ t ∈ P, MvPowerSeries.C (Aw K' w t.val) * sSer p K' t a b) := by
  have hL0 := th_linK_const (K' := K') w P a b
  have hsL : PowerSeries.HasSubst (linK K' w P a b 0) := PowerSeries.HasSubst.of_constantCoeff_zero hL0

  have h1 : Cg (Rp p K' vp) (p : K') (PowerSeries.subst (linK K' w P a b 0) μ)
      (PowerSeries.subst (linK K' w P a b 0) (altF K' p)) := by
    choose y hy he using hT1
    have e : μ = altF K' p + PowerSeries.C (p : K') * PowerSeries.mk y := by
      ext n
      rw [map_add (f := _), PowerSeries.coeff_C_mul, PowerSeries.coeff_mk, ← he n]
      ring
    refine ⟨PowerSeries.subst (linK K' w P a b 0) (PowerSeries.mk y),
      IntR_psubst hL0 (th_linK_int vp w P a b 0) (fun n => by rw [PowerSeries.coeff_mk]; exact hy n), ?_⟩
    conv_lhs => rw [e]
    rw [PowerSeries.subst_add hsL, PowerSeries.subst_mul hsL, PowerSeries.subst_C]
  refine cg_trans h1 (cg_of_coeff fun n => ?_)
  rw [Formalism.InvariantFactorPaths.G7.TwoS.coeff_subst_altF hp.out.two_le hL0 n]
  choose y hy he using fun l => cg_coeff (th_claimF vp hF hW w P a b (2 * l)) n
  refine ⟨∑ l ∈ range (n.degree + 1), (-1 : K') ^ l * y l,
    Subring.sum_mem _ fun l _ => (Rp p K' vp).mul_mem ((Rp p K' vp).pow_mem ((Rp p K' vp).neg_mem
      (Rp p K' vp).one_mem) l) (hy l), ?_⟩
  have e2 : MvPowerSeries.coeff n (∑ t ∈ P, MvPowerSeries.C (Aw K' w t.val) * sSer p K' t a b) =
      ∑ l ∈ range (n.degree + 1), (-1 : K') ^ l * MvPowerSeries.coeff n (linK K' w P a b (2 * l)) := by

    rw [map_sum]
    simp only [MvPowerSeries.coeff_C_mul, th_coeff_linK, th_reindex w hper P hPa hPs a b n]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun t _ => ?_
    rw [← Finset.mul_sum]
    rfl
  rw [e2, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [← pow_mul, he l]
  ring

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThLinKConst =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TripleSumComm =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TripleSumComm", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ThLinKConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lamF altF)

def MuAltH (p : ℕ) [Fact p.Prime] : Prop :=
  ∀ (K' : Type) [Field K'] [Algebra (K0 p) K'] (vp : K'), vp ^ (p ^ 2 - 1) = (p : K') →
    ∀ μ : PowerSeries K', PowerSeries.constantCoeff μ = 0 →
      (PowerSeries.subst μ (lamF p vp) : PowerSeries K') = PowerSeries.X →
      ∀ n, ∃ y ∈ Rp p K' vp, PowerSeries.coeff n μ - PowerSeries.coeff n (altF K' p) = (p : K') * y

def DualH (p : ℕ) [Fact p.Prime] : Prop :=
  ∀ (n' : ℕ) (B : OmBasis p n'), Even n' → ∀ a b : Fin n', a.val % 2 = b.val % 2 →
    ∑ r, (sigW p)^[a.val] (B.omS r) * (sigW p)^[b.val] (B.om r) = if a = b then 1 else 0

variable {p : ℕ} [hp : Fact p.Prime] {n' r0 r1 : ℕ} {K' : Type} [Field K'] [Algebra (K0 p) K']

theorem triple_sum_comm {α β γ M : Type} [AddCommMonoid M] [Fintype β] [Fintype γ] (s : Finset α) (f : α → β → γ → M) :
    ∑ x ∈ s, ∑ a, ∑ b, f x a b = ∑ a, ∑ b, ∑ x ∈ s, f x a b := by
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun a _ => Finset.sum_comm

theorem th_sSer_int (R : Subring K') (t : Fin n') (a : Fin r0) (b : Fin r1) : IntR R (sSer p K' t a b) := by
  intro n
  show (∑ l ∈ range (n.degree + 1),
    if n = Finsupp.single (posSub t (2 * l), a, b) (p ^ (2 * l)) then ((-1 : K') ^ l) else 0) ∈ R
  refine Subring.sum_mem _ fun l _ => ?_
  split_ifs
  · exact R.pow_mem (R.neg_mem R.one_mem) l
  · exact R.zero_mem



theorem th_sumR {ν : ℕ} (w1 w2 : Fin ν → WW p) (P Q : Finset (Fin n'))
    (hQ : ∀ t' ∈ Q, posAdd t' 1 ∈ P)
    (hD : ∀ t ∈ P, ∀ t' ∈ Q, ∑ r, Aw K' (w1 r) t.val * Aw K' (w2 r) (t'.val + 1) = if t = posAdd t' 1 then 1 else 0)
    (S : Fin n' → MvPowerSeries (Zidx n' r0 r1) K') :
    ∑ r, (∑ t ∈ P, MvPowerSeries.C (Aw K' (w1 r) t.val) * S t) *
        (∑ t' ∈ Q, MvPowerSeries.C (Aw K' (w2 r) (t'.val + 1)) * S t' ^ p) =
      ∑ t' ∈ Q, S t' ^ p * S (posAdd t' 1) := by
  have key : ∀ t' ∈ Q, ∑ t ∈ P, ∑ r, MvPowerSeries.C (Aw K' (w1 r) t.val) * S t *
      (MvPowerSeries.C (Aw K' (w2 r) (t'.val + 1)) * S t' ^ p) = S t' ^ p * S (posAdd t' 1) := by
    intro t' ht'
    have e : ∀ t ∈ P, ∑ r, MvPowerSeries.C (Aw K' (w1 r) t.val) * S t *
        (MvPowerSeries.C (Aw K' (w2 r) (t'.val + 1)) * S t' ^ p) =
        if t = posAdd t' 1 then S t' ^ p * S t else 0 := by
      intro t ht
      have h1 : ∀ r, MvPowerSeries.C (Aw K' (w1 r) t.val) * S t *
          (MvPowerSeries.C (Aw K' (w2 r) (t'.val + 1)) * S t' ^ p) =
          MvPowerSeries.C (Aw K' (w1 r) t.val * Aw K' (w2 r) (t'.val + 1)) * (S t' ^ p * S t) := by
        intro r
        rw [map_mul]
        ring

      rw [Finset.sum_congr rfl (fun r _ => h1 r), ← Finset.sum_mul, ← map_sum, hD t ht t' ht']
      split_ifs <;> simp
    rw [Finset.sum_congr rfl e, Finset.sum_ite_eq' P (posAdd t' 1), if_pos (hQ t' ht')]
  simp only [Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  rw [Finset.sum_congr rfl fun t _ => Finset.sum_comm]
  exact Finset.sum_congr rfl key

abbrev Pev (n' : ℕ) : Finset (Fin n') := univ.filter fun s : Fin n' => ¬ IsOddPos s

abbrev Pod (n' : ℕ) : Finset (Fin n') := univ.filter fun s : Fin n' => IsOddPos s

theorem th_par_add (hev : Even n') (s : Fin n') (d : ℕ) : IsOddPos (posAdd s (2 * d)) ↔ IsOddPos s := by
  show (s.val + 2 * d) % n' % 2 = 1 ↔ s.val % 2 = 1
  rw [Nat.mod_mod_of_dvd _ (even_iff_two_dvd.mp hev)]
  omega

theorem th_par_sub (hev : Even n') (s : Fin n') (d : ℕ) : IsOddPos (posSub s (2 * d)) ↔ IsOddPos s := by
  show (s.val + n' * (2 * d) - 2 * d) % n' % 2 = 1 ↔ s.val % 2 = 1
  rw [Nat.mod_mod_of_dvd _ (even_iff_two_dvd.mp hev)]
  have h2 : 2 * d ≤ n' * (2 * d) := Nat.le_mul_of_pos_left _ s.pos
  have h3 : n' * (2 * d) % 2 = 0 := Nat.mod_eq_zero_of_dvd (dvd_mul_of_dvd_right (dvd_mul_right 2 d) n')
  generalize n' * (2 * d) = m at h2 h3
  omega

theorem th_par_one (hev : Even n') (s : Fin n') : IsOddPos (posAdd s 1) ↔ ¬ IsOddPos s := by
  show (s.val + 1) % n' % 2 = 1 ↔ ¬ s.val % 2 = 1
  rw [Nat.mod_mod_of_dvd _ (even_iff_two_dvd.mp hev)]
  omega

theorem th_coordZ_inl (B : OmBasis p n') (r : Fin (n' / 2)) (a : Fin r0) (b : Fin r1) :
    coordZ B K' 1 (Sum.inl (r, a, b)) = linK K' (B.omS r) (Pev n') a b 0 := by
  simp only [coordZ, linK, Aw, wK', one_mul, add_zero, pow_zero, pow_one]

theorem th_coordZ_inr (B : OmBasis p n') (r : Fin (n' / 2)) (a : Fin r0) (b : Fin r1) :
    coordZ B K' 1 (Sum.inr (r, a, b)) = linK K' (B.om r) (Pod n') a b 0 := by
  simp only [coordZ, linK, Aw, wK', one_mul, add_zero, pow_zero, pow_one]

theorem th_dual_K (hT2 : DualH p) (hev : Even n') (B : OmBasis p n') (a b : Fin n') (hab : a.val % 2 = b.val % 2) :
    ∑ r, Aw K' (B.omS r) a.val * Aw K' (B.om r) b.val = if a = b then 1 else 0 := by
  have := congrArg (wK' p K') (hT2 n' B hev a b hab)

  simp only [wK', map_sum, map_mul] at this
  rw [apply_ite (algebraMap (WW p) (K0 p)), apply_ite (algebraMap (K0 p) K')] at this
  simpa [Aw, wK'] using this

theorem th_Aw_posAdd {w : WW p} (hper : (sigW p)^[n'] w = w) (s : Fin n') (d : ℕ) :
    Aw K' w (posAdd s d).val = Aw K' w (s.val + d) := by
  unfold Aw
  congr 1
  exact Function.IsPeriodicPt.iterate_mod_apply hper _

private theorem cg_sub_multiset_valuation {ι F : Type} [Field F] (R : Subring F) (pp : F)
    {f g f' g' : MvPowerSeries ι F} (h : Cg R pp f g) (h' : Cg R pp f' g') :
    Cg R pp (f - f') (g - g') := by
  obtain ⟨Y, hY, rfl⟩ := h
  obtain ⟨Y', hY', rfl⟩ := h'
  refine ⟨Y - Y', fun n => ?_, by ring⟩
  rw [map_sub]
  exact R.sub_mem (hY n) (hY' n)

private theorem cg_C_mul' {ι F : Type} [Field F] (R : Subring F) (pp : F) {c : F} (hc : c ∈ R)
    {f g : MvPowerSeries ι F} (h : Cg R pp f g) :
    Cg R pp (MvPowerSeries.C c * f) (MvPowerSeries.C c * g) := by
  obtain ⟨Y, hY, rfl⟩ := h
  exact ⟨MvPowerSeries.C c * Y, IntR_mul (IntR_C (R := R) hc) hY, by ring⟩

private theorem intR_of_cg_of_intR {ι F : Type} [Field F] (R : Subring F) (pp : F) (hpp : pp ∈ R)
    {f g : MvPowerSeries ι F} (h : Cg R pp f g) (hg : IntR R g) : IntR R f := by
  obtain ⟨Y, hY, rfl⟩ := h
  exact IntR_add hg (IntR_mul (IntR_C (R := R) hpp) hY)

theorem restTwoSums_of (hT1 : MuAltH p) (hT2 : DualH p)
    (hF : ∀ (n' r0 r1 : ℕ) (K' : Type) [Field K'] (R : Subring K'), FrobSumH p n' r0 r1 K' R) (hW : FrobWH p) :
    TwoSumsCondition p := by
  intro hp5 c hc n r0 r1 h2 hev B L _ _ vp hvp μ hμ0 hμ
  have hpR : (p : L) ∈ Rp p L vp := natCast_mem (Rp p L vp) p
  have hFS := hF n r0 r1 L (Rp p L vp)
  have hM := hT1 L vp hvp μ hμ0 hμ
  have hc0 : wK' p L c ∈ Rp p L vp := th_Aw_mem vp c 0
  have hc1 : wK' p L (sigW p c) ∈ Rp p L vp := th_Aw_mem vp c 1
  have hsI : ∀ (t : Fin n) (a : Fin r0) (b : Fin r1), IntR (Rp p L vp) (sSer p L t a b) :=
    fun t a b => th_sSer_int _ t a b
  have hLin0 : ∀ (w : WW p) (P : Finset (Fin n)) (e : Fin n → ℕ) (a : Fin r0) (b : Fin r1),
      IntR (Rp p L vp) (∑ t ∈ P, MvPowerSeries.C (Aw L w (e t)) * sSer p L t a b) :=
    fun w P e a b => IntR_sum P _ fun t _ =>
      IntR_mul (IntR_C (R := Rp p L vp) (th_Aw_mem vp w _)) (hsI t a b)
  have hEv1 : ∀ s ∈ Pev n, ∀ d, posAdd s (2 * d) ∈ Pev n := by
    intro s hs d
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hs ⊢
    rwa [th_par_add hev]
  have hEv2 : ∀ s ∈ Pev n, ∀ d, posSub s (2 * d) ∈ Pev n := by
    intro s hs d
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hs ⊢
    rwa [th_par_sub hev]
  have hOd1 : ∀ s ∈ Pod n, ∀ d, posAdd s (2 * d) ∈ Pod n := by
    intro s hs d
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hs ⊢
    rwa [th_par_add hev]
  have hOd2 : ∀ s ∈ Pod n, ∀ d, posSub s (2 * d) ∈ Pod n := by
    intro s hs d
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hs ⊢
    rwa [th_par_sub hev]
  have hX : ∀ (r : Fin (n / 2)) (a : Fin r0) (b : Fin r1),
      Cg (Rp p L vp) (p : L) (sOf B L μ (Sum.inl (r, a, b)))
        (∑ t ∈ Pev n, MvPowerSeries.C (Aw L (B.omS r) t.val) * sSer p L t a b) := by
    intro r a b
    have h := th_claimM vp hFS hW μ hM (B.omS r) (B.fixS r) (Pev n) hEv1 hEv2 a b
    rw [← th_coordZ_inl] at h
    exact h
  have hZ : ∀ (r : Fin (n / 2)) (a : Fin r0) (b : Fin r1),
      Cg (Rp p L vp) (p : L) (sOf B L μ (Sum.inr (r, a, b)))
        (∑ t ∈ Pod n, MvPowerSeries.C (Aw L (B.om r) t.val) * sSer p L t a b) := by
    intro r a b
    have h := th_claimM vp hFS hW μ hM (B.om r) (B.fix r) (Pod n) hOd1 hOd2 a b
    rw [← th_coordZ_inr] at h
    exact h
  have hT1' : ∀ (r : Fin (n / 2)) (a : Fin r0) (b : Fin r1),
      Cg (Rp p L vp) (p : L)
        (MvPowerSeries.C (wK' p L c) * (sOf B L μ (Sum.inl (r, a, b)) * sOf B L μ (Sum.inr (r, a, b)) ^ p))
        (MvPowerSeries.C (wK' p L c) *
          ((∑ t ∈ Pev n, MvPowerSeries.C (Aw L (B.omS r) t.val) * sSer p L t a b) *
            (∑ t ∈ Pod n, MvPowerSeries.C (Aw L (B.om r) (t.val + 1)) * sSer p L t a b ^ p))) := by
    intro r a b
    have hZi : IntR (Rp p L vp) (sOf B L μ (Sum.inr (r, a, b))) :=
      intR_of_cg_of_intR _ _ hpR (hZ r a b) (hLin0 (B.om r) (Pod n) (fun t => t.val) a b)
    have hZp := cg_pow hZi (hLin0 (B.om r) (Pod n) (fun t => t.val) a b) (hZ r a b) p
    have hF1 := th_frob_lin vp hFS hW (B.om r) (Pod n) (fun t => t.val) (fun t => sSer p L t a b)
      (fun t => hsI t a b)
    have hZB := cg_trans hZp hF1
    have hXZ := cg_mul (IntR_pow hZi p)
      (hLin0 (B.omS r) (Pev n) (fun t => t.val) a b) (hX r a b) hZB
    exact cg_C_mul' _ _ hc0 hXZ
  have hT2' : ∀ (r : Fin (n / 2)) (a : Fin r0) (b : Fin r1),
      Cg (Rp p L vp) (p : L)
        (MvPowerSeries.C (wK' p L (sigW p c)) *
          (sOf B L μ (Sum.inr (r, a, b)) * sOf B L μ (Sum.inl (r, a, b)) ^ p))
        (MvPowerSeries.C (wK' p L (sigW p c)) *
          ((∑ t ∈ Pod n, MvPowerSeries.C (Aw L (B.om r) t.val) * sSer p L t a b) *
            (∑ t ∈ Pev n, MvPowerSeries.C (Aw L (B.omS r) (t.val + 1)) * sSer p L t a b ^ p))) := by
    intro r a b
    have hXi : IntR (Rp p L vp) (sOf B L μ (Sum.inl (r, a, b))) :=
      intR_of_cg_of_intR _ _ hpR (hX r a b) (hLin0 (B.omS r) (Pev n) (fun t => t.val) a b)
    have hXp := cg_pow hXi (hLin0 (B.omS r) (Pev n) (fun t => t.val) a b) (hX r a b) p
    have hF2 := th_frob_lin vp hFS hW (B.omS r) (Pev n) (fun t => t.val) (fun t => sSer p L t a b)
      (fun t => hsI t a b)
    have hXA := cg_trans hXp hF2
    have hZX := cg_mul (IntR_pow hXi p)
      (hLin0 (B.om r) (Pod n) (fun t => t.val) a b) (hZ r a b) hXA
    exact cg_C_mul' _ _ hc1 hZX
  have hAll := cg_sum (Finset.univ : Finset (Eidx n r0 r1)) _ _
    fun e _ => cg_sub_multiset_valuation _ _ (hT1' e.1 e.2.1 e.2.2) (hT2' e.1 e.2.1 e.2.2)
  obtain ⟨Y, hY, heq⟩ := hAll
  obtain ⟨u, hu_def⟩ : ∃ u : Fin n → L,
      u = fun s => if IsOddPos s then wK' p L c else -wK' p L (sigW p c) := ⟨_, rfl⟩
  have hu : ∀ s, u s ∈ Rp p L vp := by
    intro s
    rw [hu_def]
    dsimp only
    split_ifs
    · exact hc0
    · exact (Rp p L vp).neg_mem hc1
  refine ⟨u, hu, Y, hY, ?_⟩
  refine heq.trans ?_
  congr 1
  have hR : (hhS p L u : MvPowerSeries (Zidx n r0 r1) L) = ∑ a : Fin r0, ∑ b : Fin r1, ∑ s : Fin n,
      MvPowerSeries.C (u s) * (sSer p L s a b ^ p * sSer p L (posAdd s 1) a b) := by
    unfold hhS
    simp only [Finset.mul_sum]
    exact triple_sum_comm _ _
  have hQ1 : ∀ t' ∈ Pod n, posAdd t' 1 ∈ Pev n := by
    intro t' ht'
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ht' ⊢
    rw [th_par_one hev]
    exact not_not.mpr ht'
  have hQ2 : ∀ t' ∈ Pev n, posAdd t' 1 ∈ Pod n := by
    intro t' ht'
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ht' ⊢
    rw [th_par_one hev]
    exact ht'
  have hD1 : ∀ t ∈ Pev n, ∀ t' ∈ Pod n,
      ∑ r, Aw L (B.omS r) t.val * Aw L (B.om r) (t'.val + 1) = if t = posAdd t' 1 then 1 else 0 := by
    intro t ht t' ht'
    have hpar : t.val % 2 = (posAdd t' 1).val % 2 := by
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, IsOddPos] at ht ht'
      rw [th_odd_posAdd hev]
      omega
    rw [← th_dual_K (K' := L) hT2 hev B t (posAdd t' 1) hpar]
    refine Finset.sum_congr rfl fun r _ => ?_
    rw [th_Aw_posAdd (K' := L) (B.fix r)]
  have hD2 : ∀ t ∈ Pod n, ∀ t' ∈ Pev n,
      ∑ r, Aw L (B.om r) t.val * Aw L (B.omS r) (t'.val + 1) = if t = posAdd t' 1 then 1 else 0 := by
    intro t ht t' ht'
    have hpar : (posAdd t' 1).val % 2 = t.val % 2 := by
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, IsOddPos] at ht ht'
      rw [th_odd_posAdd hev]
      omega
    have h := th_dual_K (K' := L) hT2 hev B (posAdd t' 1) t hpar
    calc ∑ r, Aw L (B.om r) t.val * Aw L (B.omS r) (t'.val + 1)
        = ∑ r, Aw L (B.omS r) (posAdd t' 1).val * Aw L (B.om r) t.val := by
          refine Finset.sum_congr rfl fun r _ => ?_
          rw [th_Aw_posAdd (K' := L) (B.fixS r), mul_comm]
      _ = if posAdd t' 1 = t then 1 else 0 := h
      _ = if t = posAdd t' 1 then 1 else 0 := by
          by_cases h1 : t = posAdd t' 1
          · rw [if_pos h1, if_pos h1.symm]
          · rw [if_neg h1, if_neg (Ne.symm h1)]
  rw [hR]
  simp only [Fintype.sum_prod_type]
  rw [triple_sum_comm]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
  have e1 := th_sumR (B.omS) (B.om) (Pev n) (Pod n) hQ1 hD1 (fun t => sSer p L t a b)
  have e2 := th_sumR (B.om) (B.omS) (Pod n) (Pev n) hQ2 hD2 (fun t => sSer p L t a b)
  beta_reduce at e1 e2
  rw [e1, e2]
  rw [← Finset.sum_filter_add_sum_filter_not Finset.univ (fun s => IsOddPos s)
    (fun s => MvPowerSeries.C (u s) * (sSer p L s a b ^ p * sSer p L (posAdd s 1) a b))]
  rw [Finset.mul_sum, Finset.mul_sum, sub_eq_add_neg, ← Finset.sum_neg_distrib]
  congr 1
  · refine Finset.sum_congr rfl fun s hs => ?_
    rw [hu_def]
    dsimp only
    rw [if_pos (Finset.mem_filter.mp hs).2]
  · refine Finset.sum_congr rfl fun s hs => ?_
    rw [hu_def]
    dsimp only
    rw [if_neg (Finset.mem_filter.mp hs).2, map_neg, neg_mul]

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TripleSumComm =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TwoSumsCondition\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ExpansionAllPlacesOfPlace\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FrobeniusCongruenceWitt\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SxMuAltInt\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TripleSumComm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

variable (p : ℕ) [hp : Fact p.Prime]

theorem restTwoSums : TwoSumsCondition p :=
  restTwoSums_of (p := p)
    (fun K' _ _ vp hvp μ h0 h1 n => sx_mu_alt (p := p) (K' := K') vp hvp μ h0 h1 n)
    (fun n' B hev a b hab => sx_dual (p := p) B hev a b hab)
    (fun n' r0 r1 K' _ R s x hx => sx_frob_sum (p := p) R s x hx)
    (fun a => frobenius_congruence_witt (p := p) a)

theorem restGc : RestGc p :=
  gcCondition_of_twoSums (p := p) (restTwoSums p)

variable {p}

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird =====
