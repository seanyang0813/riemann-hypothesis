module

public import Formalism.PeriodIntegrals.TayInvPow
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.Development
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TaylorInversePower.SumMultinomialSub, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TayInvPow, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TaylorInversePower.SumMultinomialSub =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TaylorInversePower.SumMultinomialSub", "h": "module\n\npublic import Formalism.PeriodIntegrals.TayInvPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.TayInvPow

open MvPowerSeries

section

variable {σ : Type*} {A : Type*} [CommRing A]

def deg (β : σ →₀ ℕ) : ℕ := β.sum fun _ n => n

theorem deg_add (β γ : σ →₀ ℕ) : deg (β + γ) = deg β + deg γ :=
  Finsupp.sum_add_index' (fun _ => rfl) (fun _ _ _ => rfl)

theorem deg_single (p : σ) (n : ℕ) : deg (Finsupp.single p n) = n :=
  Finsupp.sum_single_index rfl

theorem deg_eq_zero {β : σ →₀ ℕ} : deg β = 0 ↔ β = 0 := by
  unfold deg
  rw [Finsupp.sum, Finset.sum_eq_zero_iff]
  constructor
  · intro h
    ext i
    by_cases hi : i ∈ β.support
    · exact h i hi
    · simpa using hi
  · rintro rfl
    simp

def cprod (c : σ →₀ A) (β : σ →₀ ℕ) : A := β.prod fun p b => c p ^ b

theorem cprod_add (c : σ →₀ A) (β γ : σ →₀ ℕ) : cprod c (β + γ) = cprod c β * cprod c γ :=
  Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _)

theorem cprod_single (c : σ →₀ A) (p : σ) (n : ℕ) : cprod c (Finsupp.single p n) = c p ^ n :=
  Finsupp.prod_single_index (pow_zero _)

theorem sum_multinomial_sub (β : σ →₀ ℕ) (hβ : β ≠ 0) :
    ∑ p ∈ β.support, Nat.multinomial β.support (β - Finsupp.single p 1 : σ →₀ ℕ) =
      Nat.multinomial β.support β := by
  classical
  have hP : 0 < ∏ i ∈ β.support, (β i).factorial :=
    Finset.prod_pos (fun i _ => Nat.factorial_pos _)
  have key : ∀ p ∈ β.support, (∏ i ∈ β.support, (β i).factorial) *
      Nat.multinomial β.support (β - Finsupp.single p 1 : σ →₀ ℕ) =
        β p * (∑ i ∈ β.support, β i - 1).factorial := by
    intro p hp
    have hp' : β p ≠ 0 := Finsupp.mem_support_iff.1 hp
    have herase : ∀ i ∈ β.support.erase p, (β - Finsupp.single p 1 : σ →₀ ℕ) i = β i := by
      intro i hi
      have hne : p ≠ i := (Finset.ne_of_mem_erase hi).symm
      rw [Finsupp.tsub_apply, Finsupp.single_apply, if_neg hne, Nat.sub_zero]
    have hpp : (β - Finsupp.single p 1 : σ →₀ ℕ) p = β p - 1 := by
      rw [Finsupp.tsub_apply, Finsupp.single_eq_same]
    have hsum : ∑ i ∈ β.support, (β - Finsupp.single p 1 : σ →₀ ℕ) i = ∑ i ∈ β.support, β i - 1 := by
      rw [← Finset.add_sum_erase β.support _ hp, ← Finset.add_sum_erase β.support _ hp,
        Finset.sum_congr rfl herase, hpp]
      have e : (∑ x ∈ β.support.erase p, β x) = (β.support.erase p).sum ⇑β := rfl
      omega
    have hprod : ∏ i ∈ β.support, (β i).factorial =
        β p * ∏ i ∈ β.support, ((β - Finsupp.single p 1 : σ →₀ ℕ) i).factorial := by
      rw [← Finset.mul_prod_erase β.support _ hp,
        ← Finset.mul_prod_erase β.support (fun i => ((β - Finsupp.single p 1 : σ →₀ ℕ) i).factorial) hp,
        Finset.prod_congr rfl (fun i hi => congrArg Nat.factorial (herase i hi)), hpp, ← mul_assoc,
        Nat.mul_factorial_pred hp']
    rw [hprod, mul_assoc, Nat.multinomial_spec, hsum]
  apply Nat.eq_of_mul_eq_mul_left hP
  rw [Finset.mul_sum, Finset.sum_congr rfl key, ← Finset.sum_mul, Nat.multinomial_spec]
  obtain ⟨p, hp⟩ := Finsupp.support_nonempty_iff.2 hβ
  have hpos : β p ≤ ∑ i ∈ β.support, β i := Finset.single_le_sum (fun _ _ => Nat.zero_le _) hp
  have hp' : β p ≠ 0 := Finsupp.mem_support_iff.1 hp
  exact Nat.mul_factorial_pred (by omega)

def cf (c : σ →₀ A) (t : A) (k : ℕ) (β : σ →₀ ℕ) : A :=
  (-1) ^ deg β * (((k + deg β - 1).choose (deg β) : ℕ) : A) *
    ((Nat.multinomial β.support β : ℕ) : A) * cprod c β * t ^ (k + deg β)

theorem cf_rec (c : σ →₀ A) (s t : A) (hst : s * t = 1) (k : ℕ) (β : σ →₀ ℕ) :
    s * cf c t (k + 1) β + ∑ p ∈ β.support, c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) =
      cf c t k β := by
  classical
  by_cases hβ : β = 0
  · subst hβ
    simp only [cf, deg, cprod, Finsupp.sum_zero_index, Finsupp.prod_zero_index, Finsupp.support_zero,
      Finset.sum_empty, add_zero, Nat.multinomial_empty, pow_zero, Nat.choose_zero_right, Nat.cast_one,
      one_mul, mul_one]
    linear_combination t ^ k * hst
  · obtain ⟨m, hm⟩ : ∃ m, deg β = m + 1 := ⟨deg β - 1, by have := mt deg_eq_zero.1 hβ; omega⟩
    have hterm : ∀ p ∈ β.support, c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) =
        ((-1) ^ m * (((k + m).choose m : ℕ) : A) * cprod c β * t ^ (k + m + 1)) *
          ((Nat.multinomial β.support (β - Finsupp.single p 1 : σ →₀ ℕ) : ℕ) : A) := by
      intro p hp
      have hp' : 1 ≤ β p := Nat.one_le_iff_ne_zero.2 (Finsupp.mem_support_iff.1 hp)
      have hdec : β - Finsupp.single p 1 + Finsupp.single p 1 = β :=
        tsub_add_cancel_of_le (Finsupp.single_le_iff.2 hp')
      have hdeg : deg (β - Finsupp.single p 1 : σ →₀ ℕ) = m := by
        have := deg_add (β - Finsupp.single p 1 : σ →₀ ℕ) (Finsupp.single p 1)
        rw [hdec, deg_single] at this
        omega
      have hcp : cprod c β = cprod c (β - Finsupp.single p 1 : σ →₀ ℕ) * c p := by
        conv_lhs => rw [← hdec]
        rw [cprod_add, cprod_single, pow_one]
      have hM : Nat.multinomial (β - Finsupp.single p 1 : σ →₀ ℕ).support (β - Finsupp.single p 1 : σ →₀ ℕ) =
          Nat.multinomial β.support (β - Finsupp.single p 1 : σ →₀ ℕ) :=
        (Finsupp.multinomial_eq _).symm.trans
          (Finsupp.multinomial_of_support_subset Finsupp.support_tsub).symm
      unfold cf
      rw [hdeg, hM, hcp, show k + 1 + m - 1 = k + m by omega, show k + 1 + m = k + m + 1 by omega]
      ring
    rw [Finset.sum_congr rfl hterm, ← Finset.mul_sum, ← Nat.cast_sum, sum_multinomial_sub β hβ]
    unfold cf
    rw [hm, show k + 1 + (m + 1) - 1 = k + m + 1 by omega, show k + (m + 1) - 1 = k + m by omega,
      Nat.choose_succ_succ]
    push_cast
    linear_combination ((-1) ^ (m + 1) * ((((k + m).choose m : ℕ) : A) + (((k + m).choose (m + 1) : ℕ) : A)) *
      ((Nat.multinomial β.support β : ℕ) : A) * cprod c β * t ^ (k + m + 1)) * hst

def F (c : σ →₀ A) (t : A) (k : ℕ) : MvPowerSeries σ A := fun β => cf c t k β

theorem coeff_F (c : σ →₀ A) (t : A) (k : ℕ) (β : σ →₀ ℕ) : coeff β (F c t k) = cf c t k β := rfl

theorem F_zero (c : σ →₀ A) (t : A) : F c t 0 = 1 := by
  classical
  ext β
  rw [coeff_F, coeff_one]
  split_ifs with h
  · subst h
    simp [cf, deg, cprod]
  · obtain ⟨m, hm⟩ : ∃ m, deg β = m + 1 := ⟨deg β - 1, by have := mt deg_eq_zero.1 h; omega⟩
    simp [cf, hm]

theorem L_mul_F (c : σ →₀ A) (s t : A) (hst : s * t = 1) (k : ℕ) :
    (C s + c.sum (fun p a => C a * X p)) * F c t (k + 1) = F c t k := by
  classical
  ext β

  rw [add_mul, map_add (f := _), coeff_C_mul, Finsupp.sum, Finset.sum_mul, map_sum]
  have hterm : ∀ p, coeff β (C (c p) * X p * F c t (k + 1)) =
      if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0 := by
    intro p
    rw [mul_assoc, coeff_C_mul, X_def, coeff_monomial_mul, one_mul]
    split_ifs <;> simp [coeff_F]
  rw [Finset.sum_congr rfl (fun p _ => hterm p)]
  have h1 : ∑ p ∈ c.support,
      (if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0) =
      ∑ p ∈ c.support ∪ β.support,
      (if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0) :=
    Finset.sum_subset Finset.subset_union_left
      (fun p _ hp => by simp [Finsupp.notMem_support_iff.1 hp])
  have h2 : ∑ p ∈ β.support,
      (if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0) =
      ∑ p ∈ c.support ∪ β.support,
      (if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0) :=
    Finset.sum_subset Finset.subset_union_right (fun p _ hp => by
      rw [if_neg]
      intro h
      have h' := Finsupp.single_le_iff.1 h
      exact hp (Finsupp.mem_support_iff.2 (by omega)))
  have h3 : ∑ p ∈ β.support,
      (if Finsupp.single p 1 ≤ β then c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) else 0) =
      ∑ p ∈ β.support, c p * cf c t (k + 1) (β - Finsupp.single p 1 : σ →₀ ℕ) :=
    Finset.sum_congr rfl (fun p hp =>
      if_pos (Finsupp.single_le_iff.2 (Nat.one_le_iff_ne_zero.2 (Finsupp.mem_support_iff.1 hp))))
  rw [h1, ← h2, h3, coeff_F, coeff_F]
  exact cf_rec c s t hst k β

end

theorem main.{u, v} : PI.TayInvPow.{u, v} := by
  intro σ A _ τ s t c hst hτ k β
  have hu : τ s * τ t = 1 := by rw [← map_mul, hst, map_one]
  have hpow : ∀ k, (τ s) ^ k * F c t k = 1 := by
    intro k
    induction k with
    | zero => rw [pow_zero, one_mul, F_zero]
    | succ k ih => rw [pow_succ, mul_assoc, hτ, L_mul_F c s t hst k, ← hτ, ih]
  have hk : τ (t ^ k) = F c t k := by
    rw [map_pow]
    calc (τ t) ^ k = (τ t) ^ k * ((τ s) ^ k * F c t k) := by rw [hpow, mul_one]
      _ = (τ s * τ t) ^ k * F c t k := by rw [mul_pow]; ring
      _ = F c t k := by rw [hu, one_pow, one_mul]
  rw [hk, coeff_F]
  rfl

end PI.UnitaryGroupMassFormula.TayInvPow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TaylorInversePower.SumMultinomialSub =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TayInvPow =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TayInvPow", "h": "module\n\npublic import Formalism.PeriodIntegrals.TayInvPow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TaylorInversePower.SumMultinomialSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TayInvPow =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.Development\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TayInvPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps MvPowerSeries

namespace PI.HasseOrdBdW

section

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} (X : PJ D B P j) (la : HeightOneSpectrum (𝓞 B.KO))
  {N : ℕ} {wL : WeightFamilies.Wt D j} (w : Fin N → B.Cusp j wL)

def s0 : Lc X la w := algebraMap (Rp X la N) (Lc X la w) (sec X la w 0)

theorem section_mul_inverse : s0 X la w * wi X la w = 1 := section_mul_inverse_eq_one X la w

theorem hasse_apply (β : Idx D j N →₀ ℕ) (x : Lc X la w) :
    hasse X la w β x = MvPowerSeries.coeff β (tayLc X la w x) := rfl

def cS (p : Idx D j N) : Lc X la w := hasse X la w (Finsupp.single p 1) (s0 X la w)

theorem cS_eq (p : Idx D j N) : cS X la w p =
    if p.1 = 0 then algebraMap (Rp X la N) (Lc X la w) (emb X la N (X.inc wL (w p.2))) else 0 := by
  unfold cS s0
  rw [hasse_algebraMap, hasseRp_single, pdRp_sec]
  by_cases h : p.1 = 0 <;> simp [h]

theorem taySec : tayLc X la w (s0 X la w) =
    MvPowerSeries.C (s0 X la w) +
      (Finsupp.equivFunOnFinite.symm (cS X la w)).sum (fun p a => MvPowerSeries.C a * MvPowerSeries.X p) := by
  classical
  ext γ
  rw [Finsupp.sum_fintype _ _ (by intro p; simp)]

  simp only [map_add (f := _), map_sum, Finsupp.coe_equivFunOnFinite_symm, MvPowerSeries.coeff_C_mul,
  MvPowerSeries.coeff_X, MvPowerSeries.coeff_C]
  rw [← hasse_apply]
  have hne : ∀ p : Idx D j N, (0 : Idx D j N →₀ ℕ) ≠ Finsupp.single p 1 := fun p h => by
    simpa using h.symm
  by_cases h0 : γ = 0
  · subst h0
    rw [hasse_zero]
    simp [hne]
  · by_cases h1 : ∃ q, γ = Finsupp.single q 1
    · obtain ⟨q, rfl⟩ := h1
      have hq : hasse X la w (Finsupp.single q 1) (s0 X la w) = cS X la w q := rfl
      rw [hq]
      simp [Finsupp.single_left_inj one_ne_zero, h0]
    · push Not at h1
      unfold s0
      rw [hasse_algebraMap, hasseRp_sec_eq_zero X la w h0 h1 0, map_zero]
      simp [h0, h1]

end

theorem compositionalInverseSymm : S1 := by
  classical
  intro D B P j X la N wL w T β
  have hT := _root_.PI.UnitaryGroupMassFormula.TayInvPow.main (Idx D j N) (Lc X la w) (tayLc X la w) (s0 X la w) (wi X la w)
    (Finsupp.equivFunOnFinite.symm (cS X la w)) (section_mul_inverse X la w) (taySec X la w) T β
  rw [← hasse_apply] at hT
  have hprod : (β.prod fun p b => (Finsupp.equivFunOnFinite.symm (cS X la w)) p ^ b) =
      if (∀ i : Fin (WeightFamilies.dimY D j), ∀ k, β (i.succ, k) = 0) then
        algebraMap (Rp X la N) (Lc X la w) (∏ k, emb X la N (X.inc wL (w k)) ^ β (0, k)) else 0 := by
    rw [Finsupp.prod_fintype _ _ (by intro p; simp)]
    simp only [Finsupp.coe_equivFunOnFinite_symm]
    rw [Fintype.prod_prod_type, Fin.prod_univ_succ]
    simp only [cS_eq, Fin.succ_ne_zero, if_false, if_true, map_prod, map_pow]
    split_ifs with h
    · simp [h]
    · push Not at h
      obtain ⟨i, k, hk⟩ := h
      apply mul_eq_zero_of_right
      apply Finset.prod_eq_zero (Finset.mem_univ i)
      apply Finset.prod_eq_zero (Finset.mem_univ k)
      exact zero_pow hk
  refine ⟨if (∀ i : Fin (WeightFamilies.dimY D j), ∀ k, β (i.succ, k) = 0) then
      (-1) ^ (β.sum fun _ n => n) * (((T + (β.sum fun _ n => n) - 1).choose (β.sum fun _ n => n) : ℕ) : ℤ) *
        ((Nat.multinomial β.support β : ℕ) : ℤ) else 0, ?_, ?_⟩
  · intro hm
    split_ifs at hm with h
    · rw [Finsupp.sum_fintype _ _ (fun _ => rfl), Fintype.sum_prod_type, Fin.sum_univ_succ]
      simp [h]
    · exact absurd rfl hm
  · rw [hT, hprod]
    split_ifs with h
    · push_cast
      ring
    · simp

end PI.HasseOrdBdW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm =====
