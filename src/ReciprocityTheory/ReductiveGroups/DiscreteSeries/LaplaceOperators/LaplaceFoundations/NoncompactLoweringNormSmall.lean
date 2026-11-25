module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.DoubleSumDiagSplit, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.DoubleSumDiagSplit =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.DoubleSumDiagSplit", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

open ReciprocityTheory.ChartRestriction.DS

theorem double_sum_diag_split {n : ℕ} (f : Fin n → Fin n → ℝ) :
    ∑ a, ∑ b, f a b = ∑ a, f a a + ∑ a, ∑ b, (if a < b then f a b + f b a else 0) := by
  have h1 : ∀ a b, f a b = (if a < b then f a b else 0) + (if a = b then f a b else 0)
      + (if b < a then f a b else 0) := by
    intro a b
    rcases lt_trichotomy a b with h | h | h
    · simp [h, h.ne, not_lt.mpr h.le]
    · subst h; simp
    · simp [h, h.ne', not_lt.mpr h.le]
  have h2 : ∑ a, ∑ b, (if b < a then f a b else 0) = ∑ a, ∑ b, (if a < b then f b a else 0) :=
    Finset.sum_comm
  calc ∑ a, ∑ b, f a b
      = ∑ a, ∑ b, ((if a < b then f a b else 0) + (if a = b then f a b else 0)
          + (if b < a then f a b else 0)) :=
        Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => h1 a b))
    _ = ∑ a, ∑ b, (if a < b then f a b else 0) + ∑ a, f a a
          + ∑ a, ∑ b, (if b < a then f a b else 0) := by
        simp only [Finset.sum_add_distrib, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    _ = _ := by
        rw [h2, add_comm (∑ a, ∑ b, (if a < b then f a b else 0)) (∑ a, f a a), add_assoc,
          ← Finset.sum_add_distrib]
        congr 1
        refine Finset.sum_congr rfl (fun a _ => ?_)
        rw [← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl (fun b _ => ?_)
        split_ifs <;> simp

theorem b2Id : RaisingLoweringNormIdentities := by
  intro n ε M _ _ E lam w hD
  obtain ⟨hGl, hU, hw1, ⟨hdiag, hup⟩, hcas⟩ := hD
  set Λ := lowK ε lam with hΛ
  let sR : Fin n → Fin n → ℝ := fun a b => if ε a = ε b then 1 else -1
  have hsC : ∀ a b, adjSign ε a b = ((sR a b : ℝ) : ℂ) := by
    intro a b; simp only [adjSign, sR]; split_ifs <;> simp
  have hsymm : ∀ a b, sR a b = sR b a := by
    intro a b; simp only [sR]
    by_cases h : ε a = ε b
    · simp [h]
    · simp [h, Ne.symm h]
  have hsq : ∀ a b, sR a b * sR a b = 1 := by
    intro a b; simp only [sR]; split_ifs <;> norm_num
  have hww : ⟪w, w⟫_ℂ = 1 := by
    rw [inner_self_eq_norm_sq_to_K, hw1]; simp
  have hQ : ∀ a b, ⟪w, E a b (E b a w)⟫_ℂ = ((sR a b * ‖E b a w‖ ^ 2 : ℝ) : ℂ) := by
    intro a b
    have h := hU b a w (E b a w)
    rw [inner_self_eq_norm_sq_to_K, hsC] at h
    have h1 : ((sR b a : ℝ) : ℂ) * ((sR b a : ℝ) : ℂ) = 1 := by
      rw [← Complex.ofReal_mul, hsq]; simp
    calc ⟪w, E a b (E b a w)⟫_ℂ
        = ((sR b a : ℝ) : ℂ) * (((sR b a : ℝ) : ℂ) * ⟪w, E a b (E b a w)⟫_ℂ) := by
          rw [← mul_assoc, h1, one_mul]
      _ = _ := by
          rw [← h, hsymm b a]; try simp only [RCLike.ofReal_eq_complex_ofReal]
          push_cast; ring
  have hC : ∀ a b, ⟪w, E a b (E b a w)⟫_ℂ - ⟪w, E b a (E a b w)⟫_ℂ = (((Λ a - Λ b : ℝ)) : ℂ) := by
    intro a b
    have h := hGl a b b a
    rw [if_pos rfl, if_pos rfl] at h
    have h2 := congrArg (fun T : Module.End ℂ M => T w) h
    simp only [LinearMap.sub_apply, Module.End.mul_apply] at h2
    rw [← inner_sub_right, h2, hdiag a, hdiag b, ← sub_smul, inner_smul_right, hww, mul_one]
    push_cast; ring
  have hR1 : ∀ a b, sR a b * ‖E b a w‖ ^ 2 - sR b a * ‖E a b w‖ ^ 2 = Λ a - Λ b := by
    intro a b
    have h := hC a b
    rw [hQ a b, hQ b a, ← Complex.ofReal_sub] at h
    exact_mod_cast h
  have hR2 : ∀ a, ‖E a a w‖ ^ 2 = Λ a ^ 2 := by
    intro a
    rw [hdiag a, norm_smul, hw1, mul_one, Complex.norm_real, Real.norm_eq_abs, sq_abs]
  have hR3 : ∀ a b, a < b → ε a = ε b → ‖E a b w‖ ^ 2 = 0 := by
    intro a b hab he; rw [hup a b hab he]; simp
  have hcasR : casVal lam = ∑ a, ∑ b, sR a b * ‖E b a w‖ ^ 2 := by
    have h1 : ⟪w, casimir E w⟫_ℂ = ∑ a, ∑ b, ⟪w, E a b (E b a w)⟫_ℂ := by
      simp only [casimir, LinearMap.sum_apply, Module.End.mul_apply, inner_sum]
    rw [hcas, inner_smul_right, hww, mul_one] at h1
    simp only [hQ] at h1
    exact_mod_cast h1
  refine ⟨?_, ?_, ?_⟩
  · intro a b hab he
    have h := hR1 a b
    have hs1 : sR a b = 1 := if_pos he
    have hs2 : sR b a = 1 := if_pos he.symm
    rw [hs1, hs2, hR3 a b hab he] at h
    linarith
  · intro a b hab he
    have h := hR1 a b
    have hs1 : sR a b = -1 := if_neg he
    have hs2 : sR b a = -1 := if_neg (Ne.symm he)
    rw [hs1, hs2] at h
    linarith
  · have hpt : ∀ a b, (if a < b then sR a b * ‖E b a w‖ ^ 2 + sR b a * ‖E a b w‖ ^ 2 else 0) =
        (if a < b ∧ ε b = ε a then Λ a else 0) - (if a < b ∧ ε a = ε b then Λ b else 0)
        - ((if a < b ∧ ε b ≠ ε a then Λ a else 0) - (if a < b ∧ ε a ≠ ε b then Λ b else 0))
        - 2 * (if a < b ∧ ε a ≠ ε b then ‖E b a w‖ ^ 2 else 0) := by
      intro a b
      by_cases hab : a < b
      · have h := hR1 a b
        by_cases he : ε a = ε b
        · have hs1 : sR a b = 1 := if_pos he
          have hs2 : sR b a = 1 := if_pos he.symm
          have h0 := hR3 a b hab he
          rw [hs1, hs2, h0] at h
          simp [hab, he, hs1, hs2, h0]
          linarith
        · have hs1 : sR a b = -1 := if_neg he
          have hs2 : sR b a = -1 := if_neg (Ne.symm he)
          rw [hs1, hs2] at h
          simp [hab, he, Ne.symm he, hs1, hs2]
          linarith
      · simp [hab]
    have hsw1 : ∑ a, ∑ b, (if b < a ∧ ε b = ε a then Λ a else 0) =
        ∑ a, ∑ b, (if a < b ∧ ε a = ε b then Λ b else 0) := Finset.sum_comm
    have hsw2 : ∑ a, ∑ b, (if b < a ∧ ε b ≠ ε a then Λ a else 0) =
        ∑ a, ∑ b, (if a < b ∧ ε a ≠ ε b then Λ b else 0) := Finset.sum_comm
    have hA : 2 * ∑ a, Λ a * rhoC ε a = ∑ a, ∑ b, (if a < b ∧ ε b = ε a then Λ a else 0)
        - ∑ a, ∑ b, (if a < b ∧ ε a = ε b then Λ b else 0) := by
      rw [← hsw1, ← Finset.sum_sub_distrib, Finset.mul_sum]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      have e1 : ∑ b, (if a < b ∧ ε b = ε a then Λ a else 0) =
          Λ a * ∑ b, (if a < b ∧ ε b = ε a then (1:ℝ) else 0) := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl (fun b _ => by split_ifs <;> simp)
      have e2 : ∑ b, (if b < a ∧ ε b = ε a then Λ a else 0) =
          Λ a * ∑ b, (if b < a ∧ ε b = ε a then (1:ℝ) else 0) := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl (fun b _ => by split_ifs <;> simp)
      rw [e1, e2]
      simp only [rhoC, Finset.natCast_card_filter]
      ring
    have hB : 2 * ∑ a, Λ a * rhoN ε a = ∑ a, ∑ b, (if a < b ∧ ε b ≠ ε a then Λ a else 0)
        - ∑ a, ∑ b, (if a < b ∧ ε a ≠ ε b then Λ b else 0) := by
      rw [← hsw2, ← Finset.sum_sub_distrib, Finset.mul_sum]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      have e1 : ∑ b, (if a < b ∧ ε b ≠ ε a then Λ a else 0) =
          Λ a * ∑ b, (if a < b ∧ ε b ≠ ε a then (1:ℝ) else 0) := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl (fun b _ => by split_ifs <;> simp)
      have e2 : ∑ b, (if b < a ∧ ε b ≠ ε a then Λ a else 0) =
          Λ a * ∑ b, (if b < a ∧ ε b ≠ ε a then (1:ℝ) else 0) := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl (fun b _ => by split_ifs <;> simp)
      rw [e1, e2]
      simp only [rhoN, Finset.natCast_card_filter]
      ring
    have hdiagsum : ∑ a, sR a a * ‖E a a w‖ ^ 2 = ∑ a, Λ a ^ 2 :=
      Finset.sum_congr rfl (fun a _ => by rw [hR2 a, show sR a a = 1 from if_pos rfl, one_mul])
    have hspl := double_sum_diag_split (fun a b => sR a b * ‖E b a w‖ ^ 2)
    have hcasv : casVal lam = ∑ a, Λ a ^ 2 + (∑ a, ∑ b, (if a < b ∧ ε b = ε a then Λ a else 0)
        - ∑ a, ∑ b, (if a < b ∧ ε a = ε b then Λ b else 0)
        - (∑ a, ∑ b, (if a < b ∧ ε b ≠ ε a then Λ a else 0)
          - ∑ a, ∑ b, (if a < b ∧ ε a ≠ ε b then Λ b else 0))
        - 2 * ∑ a, ∑ b, (if a < b ∧ ε a ≠ ε b then ‖E b a w‖ ^ 2 else 0)) := by
      rw [hcasR, hspl, hdiagsum]
      congr 1
      rw [Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => hpt a b))]
      simp only [Finset.sum_sub_distrib, ← Finset.mul_sum]
    have hz : ∑ a, (Λ a ^ 2 + 2 * (Λ a * rhoC ε a) - 2 * (Λ a * rhoN ε a) - lam a * lam a
        + (rhoN ε - rhoC ε) a * (rhoN ε - rhoC ε) a) = 0 :=
      Finset.sum_eq_zero (fun a _ => by simp only [hΛ, lowK, Pi.add_apply, Pi.sub_apply]; ring)
    simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum] at hz
    simp only [Finset.sum_filter]
    simp only [casVal, nsq, dot] at hcasv ⊢
    linarith [hcasv, hz, hA, hB]

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.DoubleSumDiagSplit =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.DoubleSumDiagSplit\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.Base

open ReciprocityTheory.ChartRestriction.DS

def highestWeightBoundConst {n : ℕ} (ε : Fin n → Bool) (d Λ₀ : Fin n → ℝ) : ℝ :=
  |nsq (rho n) - nsq (rhoN ε - rhoC ε)| + 2 * ∑ a, |d a| + 2 * ∑ a, |Λ₀ a| + 1

theorem one_le_highestWeightBoundConst {n : ℕ} (ε : Fin n → Bool) (d Λ₀ : Fin n → ℝ) : 1 ≤ highestWeightBoundConst ε d Λ₀ := by
  unfold highestWeightBoundConst
  have h1 : 0 ≤ ∑ a, |d a| := sum_nonneg fun a _ => abs_nonneg _
  have h2 : 0 ≤ ∑ a, |Λ₀ a| := sum_nonneg fun a _ => abs_nonneg _
  have h3 := abs_nonneg (nsq (rho n) - nsq (rhoN ε - rhoC ε))
  linarith

theorem le_mul_of_sq_le_mul_sq {x C s : ℝ} (_hx : 0 ≤ x) (hC : 1 ≤ C) (hs : 1 ≤ s) (h : x ^ 2 ≤ C * s ^ 2) :
    x ≤ C * s := by
  have h1 : C * s ^ 2 ≤ (C * s) ^ 2 := by
    linarith [hs, mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ C - 1) (by linarith : (0:ℝ) ≤ C))
      (sq_nonneg s)]
  have h2 : 0 ≤ C * s := by positivity
  exact (sq_le_sq₀ _hx h2).mp (h.trans h1)

section Datum

variable {n : ℕ} {ε : Fin n → Bool} {M : Type} [NormedAddCommGroup M] [InnerProductSpace ℂ M]
  {E : Fin n → Fin n → Module.End ℂ M} {lam : Fin n → ℝ} {w : M}

theorem noncompact_lowering_norm_small (hw : IsHWDatum ε E lam w) {a b : Fin n} (hab : a < b) (hne : ε a ≠ ε b) :
    ‖E b a w‖ ^ 2 ≤ |nsq (rho n) - nsq (rhoN ε - rhoC ε)| := by
  have hb := b2Id
  unfold RaisingLoweringNormIdentities at hb
  have h3 := (hb n ε M E lam w hw).2.2
  have h1 : ‖E b a w‖ ^ 2 ≤ ∑ b' ∈ univ.filter (fun b' => a < b' ∧ ε a ≠ ε b'), ‖E b' a w‖ ^ 2 :=
    single_le_sum (f := fun b' => ‖E b' a w‖ ^ 2) (fun _ _ => sq_nonneg _) (by simp [hab, hne])
  have h2 : (∑ b' ∈ univ.filter (fun b' => a < b' ∧ ε a ≠ ε b'), ‖E b' a w‖ ^ 2) ≤
      ∑ a', ∑ b' ∈ univ.filter (fun b' => a' < b' ∧ ε a' ≠ ε b'), ‖E b' a' w‖ ^ 2 :=
    single_le_sum (f := fun a' => ∑ b' ∈ univ.filter (fun b' => a' < b' ∧ ε a' ≠ ε b'), ‖E b' a' w‖ ^ 2)
      (fun _ _ => sum_nonneg fun _ _ => sq_nonneg _) (mem_univ a)
  have h4 : 0 ≤ ∑ a', ∑ b' ∈ univ.filter (fun b' => a' < b' ∧ ε a' ≠ ε b'), ‖E b' a' w‖ ^ 2 :=
    sum_nonneg fun _ _ => sum_nonneg fun _ _ => sq_nonneg _
  have h5 := le_abs_self (nsq (rho n) - nsq (rhoN ε - rhoC ε))
  linarith

theorem highest_weight_datum_bounds {d Λ₀ : Fin n → ℝ} {t : ℝ} (ht : 1 ≤ t) (hw : IsHWDatum ε E lam w)
    (hΛ : lowK ε lam = t • d + Λ₀) :
    (∀ a b, InNP ε d a b → ‖E a b w‖ ≤ highestWeightBoundConst ε d Λ₀) ∧
      (∀ a b, InLL ε d a b →
        ‖E a b w - (if a = b then (((t * d a : ℝ)) : ℂ) else 0) • w‖ ≤ highestWeightBoundConst ε d Λ₀) ∧
      ∀ X : Matrix (Fin n) (Fin n) ℂ,
        ‖actM E X w - ((t : ℂ) * trace (dMat d * X)) • w‖ ≤
          highestWeightBoundConst ε d Λ₀ * Real.sqrt t * l1 X := by
  have hb := b2Id
  unfold RaisingLoweringNormIdentities at hb
  obtain ⟨hI1, hI2, -⟩ := hb n ε M E lam w hw
  have hw1 : ‖w‖ = 1 := hw.2.2.1
  have hdiag : ∀ a, E a a w = ((lowK ε lam a : ℝ) : ℂ) • w := hw.2.2.2.1.1
  have hup : ∀ a b, a < b → ε a = ε b → E a b w = 0 := hw.2.2.2.1.2
  set C := highestWeightBoundConst ε d Λ₀ with hCdef
  set K0 := nsq (rho n) - nsq (rhoN ε - rhoC ε) with hK0
  set S := ∑ a, |d a| with hS
  set T := ∑ a, |Λ₀ a| with hT
  have hC1 : 1 ≤ C := one_le_highestWeightBoundConst ε d Λ₀
  have hCe : C = |K0| + 2 * S + 2 * T + 1 := rfl
  have hS0 : 0 ≤ S := sum_nonneg fun a _ => abs_nonneg _
  have hT0 : 0 ≤ T := sum_nonneg fun a _ => abs_nonneg _
  have hK0a := abs_nonneg K0
  have hdS : ∀ a, |d a| ≤ S := fun a =>
    single_le_sum (f := fun a => |d a|) (fun _ _ => abs_nonneg _) (mem_univ a)
  have hΛT : ∀ a, |Λ₀ a| ≤ T := fun a =>
    single_le_sum (f := fun a => |Λ₀ a|) (fun _ _ => abs_nonneg _) (mem_univ a)
  have hL : ∀ a, lowK ε lam a = t * d a + Λ₀ a := by
    intro a; rw [hΛ]; simp [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  have ht0 : 0 ≤ t := by linarith
  have hdiff : ∀ a b, lowK ε lam a - lowK ε lam b ≤ (2 * S + 2 * T) * t := by
    intro a b
    rw [hL, hL]
    have e1 : t * d a ≤ t * |d a| := mul_le_mul_of_nonneg_left (le_abs_self _) ht0
    have e2 : -(t * d b) ≤ t * |d b| := by
      have := mul_le_mul_of_nonneg_left (neg_abs_le (d b)) ht0; linarith
    have e3 := le_abs_self (Λ₀ a)
    have e4 := neg_abs_le (Λ₀ b)
    have e5 : t * |d a| ≤ t * S := mul_le_mul_of_nonneg_left (hdS a) ht0
    have e6 : t * |d b| ≤ t * S := mul_le_mul_of_nonneg_left (hdS b) ht0
    have e7 := hΛT a
    have e8 := hΛT b
    have e9 : T ≤ T * t := le_mul_of_one_le_right hT0 ht
    linarith
  have hsqb : ∀ a b, a ≠ b → ‖E a b w‖ ^ 2 ≤ C * t := by
    intro a b hab
    have hKt : |K0| ≤ |K0| * t := le_mul_of_one_le_right hK0a ht
    rcases lt_or_gt_of_ne hab with h | h <;> by_cases he : ε a = ε b
    · rw [hup a b h he]; simp; positivity
    · have h1 := hI2 a b h he
      have h2 := noncompact_lowering_norm_small hw h he
      have h3 := hdiff a b
      rw [h1, hCe]; linarith
    · have h1 := hI1 b a h he.symm
      have h3 := hdiff b a
      rw [h1, hCe]; linarith [hK0a]
    · have h2 := noncompact_lowering_norm_small hw h (Ne.symm he)
      rw [hCe]; linarith [mul_nonneg hS0 ht0, mul_nonneg hT0 ht0]
  have hsq1 : 1 ≤ Real.sqrt t := by
    rw [show (1:ℝ) = Real.sqrt 1 from Real.sqrt_one.symm]; exact Real.sqrt_le_sqrt ht
  have hsq2 : Real.sqrt t ^ 2 = t := Real.sq_sqrt ht0
  have hdg : ∀ a, ‖E a a w - (((t * d a : ℝ)) : ℂ) • w‖ = |Λ₀ a| := by
    intro a
    rw [hdiag a, ← sub_smul, ← Complex.ofReal_sub, norm_smul, hw1, mul_one, hL a]
    rw [show t * d a + Λ₀ a - t * d a = Λ₀ a by ring, Complex.norm_real, Real.norm_eq_abs]
  have hentry : ∀ a b,
      ‖E a b w - (if a = b then (((t * d a : ℝ)) : ℂ) else 0) • w‖ ≤ C * Real.sqrt t := by
    intro a b
    by_cases hab : a = b
    · subst hab
      rw [if_pos rfl, hdg]
      have := hΛT a
      linarith [hS0, hT0, hK0a, le_mul_of_one_le_right (show 0 ≤ C by linarith) hsq1]
    · rw [if_neg hab, zero_smul, sub_zero]
      exact le_mul_of_sq_le_mul_sq (norm_nonneg _) hC1 hsq1 (by rw [hsq2]; exact hsqb a b hab)
  refine ⟨?_, ?_, ?_⟩
  · intro a b hab
    rcases hab with ⟨h, he, -⟩ | ⟨h, he⟩
    · rw [hup a b h he, norm_zero]; linarith
    · have h2 := noncompact_lowering_norm_small hw h (Ne.symm he)
      have := le_mul_of_sq_le_mul_sq (norm_nonneg (E a b w)) hC1 le_rfl (by linarith [hS0, hT0])
      linarith
  · intro a b hab
    obtain ⟨he, hd⟩ := hab
    by_cases h0 : a = b
    · subst h0
      rw [if_pos rfl, hdg]
      have := hΛT a
      linarith
    · rw [if_neg h0, zero_smul, sub_zero]
      rcases lt_or_gt_of_ne h0 with h | h
      · rw [hup a b h he, norm_zero]; linarith
      · have h1 := hI1 b a h he.symm
        rw [hL, hL, hd] at h1
        have e7 := hΛT a
        have e8 := hΛT b
        have e3 := neg_abs_le (Λ₀ a)
        have e4 := le_abs_self (Λ₀ b)
        have := le_mul_of_sq_le_mul_sq (norm_nonneg (E a b w)) hC1 le_rfl (by rw [h1]; linarith [hS0, hK0a])
        linarith
  · intro X
    have key : actM E X w - ((t : ℂ) * trace (dMat d * X)) • w =
        ∑ a, ∑ b, X a b • (E a b w - (if a = b then (((t * d a : ℝ)) : ℂ) else 0) • w) := by
      simp only [smul_sub, Finset.sum_sub_distrib]
      congr 1
      · simp [actM, LinearMap.sum_apply]
      · simp only [Matrix.trace, dMat, Matrix.diag, Matrix.diagonal_mul, ite_smul, zero_smul,
          smul_ite, smul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true, smul_smul,
          Finset.mul_sum, Finset.sum_smul]
        refine Finset.sum_congr rfl fun a _ => ?_
        congr 1
        push_cast
        ring
    rw [key]
    calc ‖∑ a, ∑ b, X a b • (E a b w - (if a = b then (((t * d a : ℝ)) : ℂ) else 0) • w)‖
        ≤ ∑ a, ∑ b, ‖X a b‖ * (C * Real.sqrt t) :=
          (norm_sum_le _ _).trans (sum_le_sum fun a _ => (norm_sum_le _ _).trans
            (sum_le_sum fun b _ => by
              rw [norm_smul]; exact mul_le_mul_of_nonneg_left (hentry a b) (norm_nonneg _)))
      _ = C * Real.sqrt t * l1 X := by
          unfold l1
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun a _ => ?_
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun b _ => ?_
          ring

end Datum

theorem b2 : HighestWeightVectorUniformBounds := by
  intro n ε d Λ₀
  refine ⟨highestWeightBoundConst ε d Λ₀, le_trans zero_le_one (one_le_highestWeightBoundConst ε d Λ₀), ?_⟩
  intro t ht M _ _ E lam w hw hΛ
  exact highest_weight_datum_bounds ht hw hΛ

end ReciprocityTheory.ChartRestriction.DS.Lap.Base
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.NoncompactLoweringNormSmall =====
