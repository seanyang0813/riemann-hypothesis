module

public import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StmtNumEOf
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcCGNonneg
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcIotaInj
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcLgpLe
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NdBNonneg
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PriceBoundLargePrimes
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PriceLinearCombinationLe
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSize
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcTsumOdd
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NdLszLe
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NumericalClosedOfNeed

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSummableMin, Formalism.SharpRestriction.GrowthBounds.ProofLW

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSummableMin =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSummableMin", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Finset

theorem nc_geom (p : ℕ) (hp : 2 ≤ p) :
    HasSum (fun e : ℕ => (((p : ℝ)) ^ (2 * e + 1))⁻¹) (Formalism.MainNotions.FormalGroupSystem.gam p) := by
  have hp' : (1 : ℝ) < p := by exact_mod_cast (show 1 < p by omega)
  have hp0 : (p : ℝ) ≠ 0 := by positivity
  have hq : (0 : ℝ) < (p : ℝ) ^ 2 - 1 := by nlinarith
  have hr : ((p : ℝ) ^ 2)⁻¹ < 1 := inv_lt_one_of_one_lt₀ (by nlinarith)
  have h0 : 0 ≤ ((p : ℝ) ^ 2)⁻¹ := by positivity
  have := (hasSum_geometric_of_lt_one h0 hr).mul_left ((p : ℝ)⁻¹)
  have e1 : (fun e : ℕ => ((p : ℝ) ^ (2 * e + 1))⁻¹) = fun i : ℕ => (p : ℝ)⁻¹ * ((p : ℝ) ^ 2)⁻¹ ^ i := by
    funext e
    rw [pow_succ, pow_mul, mul_inv, inv_pow]
    ring
  have e2 : Formalism.MainNotions.FormalGroupSystem.gam p = (p : ℝ)⁻¹ * (1 - ((p : ℝ) ^ 2)⁻¹)⁻¹ := by
    rw [Formalism.MainNotions.FormalGroupSystem.gam]
    first
      | (field_simp; ring)
      | field_simp
  rw [e1, e2]
  exact this

theorem nc_geomc (p : ℕ) (hp : 2 ≤ p) (c : ℝ) :
    HasSum (fun e : ℕ => c / ((p : ℝ)) ^ (2 * e + 1)) (c * Formalism.MainNotions.FormalGroupSystem.gam p) := by
  have := (nc_geom p hp).mul_left c
  simpa [div_eq_mul_inv] using this

theorem nc_abs_min_le (a b : ℝ) (hb : 0 ≤ b) : |min a b| ≤ |a| := by
  rcases le_total a b with h | h
  · rw [min_eq_left h]
  · rw [min_eq_right h, abs_of_nonneg hb, abs_of_nonneg (hb.trans h)]
    exact h

theorem nc_summable_min (p : ℕ) (hp : 2 ≤ p) (y : ℝ) (z : ℕ → ℝ) (hz : ∀ e, 0 ≤ z e) :
    Summable fun e : ℕ => min (y / ((p : ℝ)) ^ (2 * e + 1)) (z e) := by
  have hg : Summable (fun e : ℕ => |y| / ((p : ℝ)) ^ (2 * e + 1)) := (nc_geomc p hp |y|).summable
  have hb : ∀ e : ℕ, ‖min (y / ((p : ℝ)) ^ (2 * e + 1)) (z e)‖ ≤ |y| / ((p : ℝ)) ^ (2 * e + 1) := by
    intro e
    have hq : (0 : ℝ) < ((p : ℝ)) ^ (2 * e + 1) := by
      have : (0 : ℝ) < (p : ℝ) := by exact_mod_cast (show 0 < p by omega)
      positivity
    rw [Real.norm_eq_abs]
    calc |min (y / ((p : ℝ)) ^ (2 * e + 1)) (z e)| ≤ |y / ((p : ℝ)) ^ (2 * e + 1)| := nc_abs_min_le _ _ (hz e)
      _ = |y| / ((p : ℝ)) ^ (2 * e + 1) := by rw [abs_div, abs_of_pos hq]
  first
    | exact Summable.of_norm_bounded hg hb

theorem nc_min (p : ℕ) (hp : 2 ≤ p) (y yu : ℝ) (z zu : ℕ → ℝ) (hy : y ≤ yu) (hz : ∀ e, zu e ≤ z e)
    (hz0 : ∀ e, 0 ≤ zu e) :
    Formalism.MainNotions.FormalGroupSystem.gam p * y - ∑' e : ℕ, min (y / ((p : ℝ)) ^ (2 * e + 1)) (z e) ≤
      Formalism.MainNotions.FormalGroupSystem.gam p * yu - ∑' e : ℕ, min (yu / ((p : ℝ)) ^ (2 * e + 1)) (zu e) := by
  have hs1 := nc_geomc p hp y
  have hs2 := nc_geomc p hp yu
  have m1 := nc_summable_min p hp y z (fun e => (hz0 e).trans (hz e))
  have m2 := nc_summable_min p hp yu zu hz0
  rw [mul_comm (Formalism.MainNotions.FormalGroupSystem.gam p) y, mul_comm (Formalism.MainNotions.FormalGroupSystem.gam p) yu, ← hs1.tsum_eq, ← hs2.tsum_eq]
  rw [← hs1.summable.tsum_sub m1, ← hs2.summable.tsum_sub m2]
  refine (hs1.summable.sub m1).tsum_le_tsum (fun e => ?_) (hs2.summable.sub m2)
  have hq : (0 : ℝ) < ((p : ℝ)) ^ (2 * e + 1) := by
    have : (0 : ℝ) < (p : ℝ) := by exact_mod_cast (show 0 < p by omega)
    positivity
  have ha : y / ((p : ℝ)) ^ (2 * e + 1) ≤ yu / ((p : ℝ)) ^ (2 * e + 1) := div_le_div_of_nonneg_right hy hq.le
  have hze := hz e
  simp only [min_def]
  split_ifs <;> linarith

theorem nc_pos (p : ℕ) (hp : 2 ≤ p) (y yu : ℝ) (z zu : ℕ → ℝ) (ex exu : ℕ → Prop) [DecidablePred ex]
    [DecidablePred exu] (hy : y ≤ yu) (hyu : 0 ≤ yu) (hz : ∀ e, zu e ≤ z e) (hz0 : ∀ e, 0 ≤ zu e)
    (hex : ∀ e, exu e → ex e) :
    ∑' e : ℕ, (if ex e then 0 else max 0 (y / ((p : ℝ)) ^ (2 * e + 1) - z e)) ≤
      ∑' e : ℕ, (if exu e then 0 else max (yu / ((p : ℝ)) ^ (2 * e + 1) - zu e) 0) := by
  have hq : ∀ e : ℕ, (0 : ℝ) < ((p : ℝ)) ^ (2 * e + 1) := by
    intro e
    have : (0 : ℝ) < (p : ℝ) := by exact_mod_cast (show 0 < p by omega)
    positivity
  have hS := (nc_geomc p hp yu).summable
  have hR : Summable (fun e : ℕ => if exu e then 0 else max (yu / ((p : ℝ)) ^ (2 * e + 1) - zu e) 0) := by
    refine Summable.of_nonneg_of_le (fun e => ?_) (fun e => ?_) hS
    · split_ifs
      · exact le_rfl
      · exact le_max_right _ _
    · have h1 : 0 ≤ yu / ((p : ℝ)) ^ (2 * e + 1) := div_nonneg hyu (hq e).le
      have h2 := hz0 e
      split_ifs
      · exact h1
      · exact max_le (by linarith) h1
  have hLs : Summable (fun e : ℕ => if ex e then 0 else max 0 (y / ((p : ℝ)) ^ (2 * e + 1) - z e)) := by
    refine Summable.of_nonneg_of_le (fun e => ?_) (fun e => ?_) hS
    · split_ifs
      · exact le_rfl
      · exact le_max_left _ _
    · have h1 : 0 ≤ yu / ((p : ℝ)) ^ (2 * e + 1) := div_nonneg hyu (hq e).le
      have h3 : y / ((p : ℝ)) ^ (2 * e + 1) ≤ yu / ((p : ℝ)) ^ (2 * e + 1) := div_le_div_of_nonneg_right hy (hq e).le
      have h2 := hz0 e
      have h4 := hz e
      split_ifs
      · exact h1
      · exact max_le h1 (by linarith)
  refine hLs.tsum_le_tsum (fun e => ?_) hR
  have h3 : y / ((p : ℝ)) ^ (2 * e + 1) ≤ yu / ((p : ℝ)) ^ (2 * e + 1) := div_le_div_of_nonneg_right hy (hq e).le
  have h4 := hz e
  by_cases he : ex e
  · rw [if_pos he]
    split_ifs
    · exact le_rfl
    · exact le_max_right _ _
  · have heu : ¬ exu e := fun h => he (hex e h)
    rw [if_neg he, if_neg heu]
    exact max_le (le_max_right _ _) (le_trans (by linarith) (le_max_left _ _))

variable {n' k1 : ℕ}

theorem nc_gB_ge (p t : ℕ) (TT : Finset (Fin n')) (lam0 : Fin n' → Fin (k1 + 1) → ℤ) (w : ℕ → Fin n' → ℤ) (j : ℕ)
    (hp : 2 ≤ p) (ya zc : Fin n' → ℝ) (dlv : ℝ) (h1 : ∀ s ∈ TT, ya s ≤ al TT lam0 s)
    (h2 : ∀ s, (cap t TT lam0 w j s : ℝ) ≤ zc s) (h3 : ∀ s, 0 ≤ cap t TT lam0 w j s)
    (hd : de p t TT lam0 w j ≤ dlv) :
    Formalism.MainNotions.FormalGroupSystem.gam p * ∑ s ∈ TT, ya s -
              ∑ s ∈ TT.filter IsOddPos, ∑' e : ℕ,
                min (ya s / ((p : ℝ)) ^ (2 * e + 1)) (zc (Formalism.MainNotions.G.posAdd s (2 * e + 1))) - dlv ≤
      gB p t TT lam0 w j := by
  unfold gB
  have hg0 : 0 ≤ Formalism.MainNotions.FormalGroupSystem.gam p := (nc_geom p hp).nonneg fun e => by positivity
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_filter_add_sum_filter_not TT IsOddPos,
    ← Finset.sum_filter_add_sum_filter_not TT IsOddPos (fun s => Formalism.MainNotions.FormalGroupSystem.gam p * (al TT lam0 s : ℝ))]
  have hA : ∑ s ∈ TT.filter IsOddPos, (Formalism.MainNotions.FormalGroupSystem.gam p * ya s - ∑' e : ℕ,
        min (ya s / ((p : ℝ)) ^ (2 * e + 1)) (zc (Formalism.MainNotions.G.posAdd s (2 * e + 1)))) ≤
      ∑ s ∈ TT.filter IsOddPos, (Formalism.MainNotions.FormalGroupSystem.gam p * (al TT lam0 s : ℝ) - ∑' e : ℕ,
        min ((al TT lam0 s : ℝ) / ((p : ℝ)) ^ (2 * e + 1)) (cap t TT lam0 w j (Formalism.MainNotions.G.posAdd s (2 * e + 1)) : ℝ)) := by
    apply Finset.sum_le_sum
    intro s hs
    exact nc_min p hp _ _ _ _ (h1 s (Finset.mem_filter.1 hs).1) (fun e => h2 _) (fun e => by exact_mod_cast h3 _)
  have hB : ∑ s ∈ TT.filter (fun s => ¬ IsOddPos s), Formalism.MainNotions.FormalGroupSystem.gam p * ya s ≤
      ∑ s ∈ TT.filter (fun s => ¬ IsOddPos s), Formalism.MainNotions.FormalGroupSystem.gam p * (al TT lam0 s : ℝ) := by
    apply Finset.sum_le_sum
    intro s hs
    exact mul_le_mul_of_nonneg_left (h1 s (Finset.mem_filter.1 hs).1) hg0
  rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib] at hA
  linarith

theorem nc_gA_ge (p t : ℕ) (TT : Finset (Fin n')) (lam0 : Fin n' → Fin (k1 + 1) → ℤ) (w : ℕ → Fin n' → ℤ) (j : ℕ)
    (hp : 2 ≤ p) (ya zc : Fin n' → ℝ) (dlv : ℝ) (ex : Fin n' → ℕ → Prop) [∀ s, DecidablePred (ex s)]
    (h1 : ∀ s ∈ TT, ya s ≤ al TT lam0 s) (h0 : ∀ s, 0 ≤ al TT lam0 s)
    (h2 : ∀ s, (cap t TT lam0 w j s : ℝ) ≤ zc s) (h3 : ∀ s, 0 ≤ cap t TT lam0 w j s)
    (hex : ∀ s ∈ TT, ∀ e, 2 * e + 1 ∈ dSet TT s → ex s e)
    (hd : de p t TT lam0 w j ≤ dlv) :
    ∑ s ∈ TT, ∑' e : ℕ, (if ex s e then 0 else
        max 0 (ya s / ((p : ℝ)) ^ (2 * e + 1) - zc (Formalism.MainNotions.G.posAdd s (2 * e + 1)))) - dlv ≤
      gA p t TT lam0 w j := by
  unfold gA
  have hA : ∑ s ∈ TT, ∑' e : ℕ, (if ex s e then 0 else
        max 0 (ya s / ((p : ℝ)) ^ (2 * e + 1) - zc (Formalism.MainNotions.G.posAdd s (2 * e + 1)))) ≤
      ∑ s ∈ TT, ∑' e : ℕ, (if 2 * e + 1 ∈ dSet TT s then 0 else
        max ((al TT lam0 s : ℝ) / (p : ℝ) ^ (2 * e + 1) -
          (cap t TT lam0 w j (Formalism.MainNotions.G.posAdd s (2 * e + 1)) : ℝ)) 0) := by
    apply Finset.sum_le_sum
    intro s hs
    exact nc_pos p hp _ _ _ _ (ex s) (fun e => 2 * e + 1 ∈ dSet TT s) (h1 s hs) (by exact_mod_cast h0 s)
      (fun e => h2 _) (fun e => by exact_mod_cast h3 _) (hex s hs)
  linarith

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSummableMin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ProofLW =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ProofLW", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StmtNumEOf\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcCGNonneg\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcIotaInj\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcLgpLe\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSummableMin\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcTsumOdd\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NdBNonneg\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NdLszLe\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NumericalClosedOfNeed\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PriceBoundLargePrimes\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PriceLinearCombinationLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NcSize\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.BasicNotions Finset

section Loc

variable {n' k1 : ℕ}

theorem lw_de_le (p t : ℕ) (TT : Finset (Fin n')) (lam0 : Fin n' → Fin (k1 + 1) → ℤ) (w : ℕ → Fin n' → ℤ) (j : ℕ)
    (hp : 2 ≤ p) (A : ℝ) (NM : ℝ) (hl : 1 ≤ Real.logb p A) (hN1 : (NN k1 t j : ℝ) ≤ NM)
    (hN0 : (NN k1 t (j - 1) : ℝ) ≤ NM) (hal : ∀ s, (al TT lam0 s : ℝ) ≤ A)
    (hls : ∀ s, (lsz t TT lam0 w j s : ℝ) ≤ A ^ 2) :
    de p t TT lam0 w j ≤ 5 * (n' : ℝ) * NM ^ 2 * Real.logb p A + 4 * (TT.card : ℝ) * Real.logb p A ^ 2 := by
  unfold de
  set ℓ := Real.logb p A with hℓ
  have hN1' : (1 : ℝ) ≤ NN k1 t j := by unfold NN; push_cast; nlinarith
  have hNM : 1 ≤ NM := le_trans hN1' hN1
  have hN0' : (0 : ℝ) ≤ NN k1 t (j - 1) := by positivity
  have hα : ∀ s, (lgp p (al TT lam0 s) : ℝ) ≤ 2 * ℓ := fun s => by
    have := nc_lgp_le p hp _ A 1 (by rw [pow_one]; exact hal s) hl; push_cast at this; linarith
  have hlz : ∀ s, (lgp p (lsz t TT lam0 w j s) : ℝ) ≤ 3 * ℓ := fun s => by
    have := nc_lgp_le p hp _ A 2 (hls s) hl; push_cast at this; linarith
  have hα0 : ∀ s, (0 : ℝ) ≤ lgp p (al TT lam0 s) := fun s => by positivity
  have hlz0 : ∀ s, (0 : ℝ) ≤ lgp p (lsz t TT lam0 w j s) := fun s => by positivity
  have h1 : ∑ s : Fin n', ((NN k1 t j : ℝ) * lgp p (al TT lam0 s) +
      (NN k1 t (j - 1) : ℝ) * (NN k1 t j : ℝ) * lgp p (lsz t TT lam0 w j s)) ≤
      ∑ _s : Fin n', (5 * NM ^ 2 * ℓ) := by
    apply Finset.sum_le_sum
    intro s _
    have e1 : (NN k1 t j : ℝ) * lgp p (al TT lam0 s) ≤ NM * (2 * ℓ) :=
      mul_le_mul hN1 (hα s) (hα0 s) (by linarith)
    have e2 : (NN k1 t (j - 1) : ℝ) * (NN k1 t j : ℝ) * lgp p (lsz t TT lam0 w j s) ≤ NM * NM * (3 * ℓ) :=
      mul_le_mul (mul_le_mul hN0 hN1 (by positivity) (by linarith)) (hlz s) (hlz0 s) (by nlinarith)
    have e3 : NM * (2 * ℓ) ≤ NM * NM * (2 * ℓ) := by
      have : 0 ≤ NM * (2 * ℓ) := by positivity
      nlinarith
    nlinarith
  have h2 : ∑ s ∈ TT, ((lgp p (al TT lam0 s) : ℝ)) ^ 2 ≤ ∑ _s ∈ TT, (4 * ℓ ^ 2) := by
    apply Finset.sum_le_sum
    intro s _
    have := hα s
    have := hα0 s
    nlinarith
  rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at h1
  rw [Finset.sum_const, nsmul_eq_mul] at h2
  nlinarith

end Loc

variable {D : Formalism.BasicNotions.D7} {L : SizeData₂ D}

def lw_Size (D : Formalism.BasicNotions.D7) (L : SizeData₂ D) (Y : Formalism.MainNotions.G.LatInst D) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (t0 : Formalism.MainNotions.G.HH D) (j : ℕ) : Prop :=
  (∀ s, (al ((Y.Fl u w hg).TT (Y.vOf u w hg t0)) ((D.gat u w hg).P.lam0 (Y.vOf u w hg t0)) s : ℝ) ≤ 2 * L.sc.a) ∧
  (∀ s, (lsz (Y.Fl u w hg).t ((Y.Fl u w hg).TT (Y.vOf u w hg t0)) ((D.gat u w hg).P.lam0 (Y.vOf u w hg t0))
    ((Y.Fl u w hg).w (Y.vOf u w hg t0)) j s : ℝ) ≤ (2 * L.sc.a) ^ 2)

theorem lw_de (X : Formalism.MainNotions.G.Inst D L) (Y : Formalism.MainNotions.G.LatInst D) (K : Formalism.MainNotions.G.Consts) (hT : GatTies D)
    (hL : Formalism.MainNotions.G.LatTied hT X Y) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (t0 : Formalism.MainNotions.G.HH D)
    (ht0 : t0 ∈ Formalism.MainNotions.G.reps X (D.what₂.places.resChar w)) (j : ℕ) (hj : j ∈ SizeData₂.lifts D)
    (h1 : 5 ≤ K.dl1) (h2 : 4 ≤ K.dl2) (hlog : 1 ≤ Real.logb (D.what₂.places.resChar w) (2 * L.sc.a))
    (hS : lw_Size D L Y u w hg t0 j) : nc_De D L X Y K u w hg t0 j := by
  have hp : 2 ≤ D.what₂.places.resChar w := hg.1.two_le
  have hmt := (hL u w hg)
  have ht : (Y.Fl u w hg).t = D.R.t := hmt.2.1
  have hk := hT.gat_k u w hg
  have hjm : j ≤ D.R.m := (Finset.mem_Icc.1 hj).2
  have hN1 : (NN (D.gat u w hg).P.m (Y.Fl u w hg).t j : ℝ) ≤ (D.R.N D.R.m : ℝ) := by
    unfold NN Ranks.N
    rw [ht]
    have : (D.gat u w hg).P.m + 1 + j * (D.R.t + 1) ≤ D.R.k + D.R.m * (D.R.t + 1) := by
      rw [hk]; exact Nat.add_le_add_left (Nat.mul_le_mul_right _ hjm) _
    exact_mod_cast this
  have hN0 : (NN (D.gat u w hg).P.m (Y.Fl u w hg).t (j - 1) : ℝ) ≤ (D.R.N D.R.m : ℝ) := by
    unfold NN Ranks.N
    rw [ht]
    have : (D.gat u w hg).P.m + 1 + (j - 1) * (D.R.t + 1) ≤ D.R.k + D.R.m * (D.R.t + 1) := by
      rw [hk]; exact Nat.add_le_add_left (Nat.mul_le_mul_right _ (by omega)) _
    exact_mod_cast this
  have hde := lw_de_le (D.what₂.places.resChar w) (Y.Fl u w hg).t _ _ _ j hp (2 * L.sc.a) (D.R.N D.R.m : ℝ) hlog
    hN1 hN0 hS.1 hS.2
  have hinj := nc_iota_inj X Y hT hL u w hg t0 ht0
  have hNv : (Formalism.MainNotions.G.Nv X (D.what₂.places.resChar w) t0 : ℝ) = ((Y.Fl u w hg).TT (Y.vOf u w hg t0)).card := by
    unfold Formalism.MainNotions.G.Nv
    rw [nc_topsOn X Y hT hL u w hg t0 ht0, Finset.card_image_of_injective _ hinj]
  have hnP : (Formalism.MainNotions.G.nP D (D.what₂.places.resChar w) : ℝ) = ((D.gat u w hg).P.n' (Y.vOf u w hg t0) : ℕ) := by
    unfold Formalism.MainNotions.G.nP
    rw [if_neg (nc_notSg hg), nc_n_eq X Y hT hL u w hg t0 ht0]
  unfold nc_De Formalism.MainNotions.G.dl Formalism.MainNotions.G.Nm
  rw [hNv, hnP]
  have hl0 : 0 ≤ Real.logb (D.what₂.places.resChar w) (2 * L.sc.a) := by linarith
  have hc1 : (0 : ℝ) ≤ ((D.gat u w hg).P.n' (Y.vOf u w hg t0) : ℕ) * (D.R.N D.R.m : ℝ) ^ 2 *
      Real.logb (D.what₂.places.resChar w) (2 * L.sc.a) := by positivity
  have hc2 : (0 : ℝ) ≤ (((Y.Fl u w hg).TT (Y.vOf u w hg t0)).card : ℝ) *
      Real.logb (D.what₂.places.resChar w) (2 * L.sc.a) ^ 2 := by positivity
  have g1 := mul_le_mul_of_nonneg_right h1 hc1
  have g2 := mul_le_mul_of_nonneg_right h2 hc2
  linarith

theorem lw_c_le (hS : Formalism.MainNotions.SizesAt L) : Formalism.MainNotions.G.cG L ≤ 4 / 5 * L.sc.w'' D.R.n := by
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, hDel, _⟩ := hS
  have h4 := hDel.2.2.2.1
  have hk := nd_k_ge (D := D)
  have h2 : 5 * L.Sc ≤ (D.R.k : ℝ) * L.Sc := mul_le_mul_of_nonneg_right hk L.Sc_pos.le
  unfold Formalism.MainNotions.G.cG
  linarith

theorem lw_eta_le (hS : Formalism.MainNotions.SizesAt L) : 2 * L.etaSz ≤ L.sc.w'' D.R.n := by
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, hEta, _⟩ := hS
  have h5 := hEta.2.2.2.2.1
  have hm := nd_m_ge (D := D)
  have ht : (0 : ℝ) ≤ (D.R.t : ℝ) := Nat.cast_nonneg _
  have h1 : (2 : ℝ) ≤ (D.R.m : ℝ) * ((D.R.t : ℝ) + 1) := by nlinarith
  have h2 : 2 * L.etaSz ≤ (D.R.m : ℝ) * ((D.R.t : ℝ) + 1) * L.etaSz :=
    mul_le_mul_of_nonneg_right h1 L.etaSz_pos.le
  linarith

theorem lw_aT_le (t : D.host.TT) : (L.aT t : ℝ) ≤ 6 / 5 * L.sc.a := by
  have h := (L.aT_win t).2
  have ha := nc_a_ge (L := L)
  have hk := nd_k_ge (D := D)
  have hx : (1 : ℝ) ≤ L.sc.x ^ (Scale.A / 2) :=
    Real.one_le_rpow (nd_x_ge (L := L)) (by unfold Scale.A; norm_num)
  have h5 : (5 : ℝ) ≤ (D.R.k : ℝ) * L.sc.x ^ (Scale.A / 2) := by nlinarith
  have h1 : L.sc.a / ((D.R.k : ℝ) * L.sc.x ^ (Scale.A / 2)) ≤ L.sc.a / 5 :=
    div_le_div_of_nonneg_left (by linarith) (by norm_num) h5
  linarith

theorem lw_size (X : Formalism.MainNotions.G.Inst D L) (Y : Formalism.MainNotions.G.LatInst D) (hS : Formalism.MainNotions.SizesAt L) (hT : GatTies D)
    (hL : Formalism.MainNotions.G.LatTied hT X Y) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (t0 : Formalism.MainNotions.G.HH D)
    (ht0 : t0 ∈ Formalism.MainNotions.G.reps X (D.what₂.places.resChar w)) (j : ℕ) (hj : j ∈ SizeData₂.lifts D) :
    lw_Size D L Y u w hg t0 j := by
  have hm := nc_m_ge hT u w hg
  obtain ⟨_, ht, hc, _, _, _, hloc⟩ := hL u w hg
  obtain ⟨_, hs⟩ := hloc t0 ht0
  have hj1 : 1 ≤ j := (Finset.mem_Icc.1 hj).1
  have hjm : j ≤ D.R.m := (Finset.mem_Icc.1 hj).2
  have ha := nc_a_ge (L := L)
  have hw2 := nd_w''_le (L := L)
  have hb1 := nd_b'_le (L := L)
  have hb0 := nd_b'_nonneg (L := L)
  have hc' : ((Y.Fl u w hg).c : ℝ) ≤ 4 / 5 * L.sc.b' := by
    have := lw_c_le hS
    linarith
  refine ⟨fun s => ?_, fun s => ?_⟩
  · by_cases hsT : s ∈ (Y.Fl u w hg).TT (Y.vOf u w hg t0)
    · obtain ⟨_, hTT, hab, _⟩ := hs s
      have h1 := nd_al_le (Y.Fl u w hg) (Y.vOf u w hg t0) s hsT hm
      have h2 := (hab hsT).1
      have h3 : (al ((Y.Fl u w hg).TT (Y.vOf u w hg t0)) ((D.gat u w hg).P.lam0 (Y.vOf u w hg t0)) s : ℝ) ≤
          (((Y.Fl u w hg).a (Y.vOf u w hg t0) s + ((Y.Fl u w hg).c : ℤ) : ℤ) : ℝ) := by exact_mod_cast h1
      rw [h2] at h3
      push_cast at h3
      have h4 : (Formalism.MainNotions.G.aL L (t0 + s.val • Formalism.MainNotions.G.hP D (D.what₂.places.resChar w)) : ℝ) ≤ 6 / 5 * L.sc.a := by
        unfold Formalism.MainNotions.G.aL
        rw [dite_eq_left (hTT.1 hsT)]
        exact lw_aT_le _
      linarith
    · unfold al
      rw [if_neg hsT]
      push_cast
      positivity
  · have h1 := nd_lsz_le (Y.Fl u w hg) (Y.vOf u w hg t0) s hm j hj1
    have h2 : (lsz (Y.Fl u w hg).t ((Y.Fl u w hg).TT (Y.vOf u w hg t0)) ((D.gat u w hg).P.lam0 (Y.vOf u w hg t0))
        ((Y.Fl u w hg).w (Y.vOf u w hg t0)) j s : ℝ) ≤
        (((NN (D.gat u w hg).P.m (Y.Fl u w hg).t j : ℤ) *
          (((Y.Fl u w hg).c : ℤ) + (Y.Fl u w hg).w (Y.vOf u w hg t0) j s) : ℤ) : ℝ) := by exact_mod_cast h1
    push_cast at h2
    have hk := hT.gat_k u w hg
    have hN1 : (NN (D.gat u w hg).P.m (Y.Fl u w hg).t j : ℝ) ≤ (D.R.N D.R.m : ℝ) := by
      unfold NN Ranks.N
      rw [ht]
      have : (D.gat u w hg).P.m + 1 + j * (D.R.t + 1) ≤ D.R.k + D.R.m * (D.R.t + 1) := by
        rw [hk]; exact Nat.add_le_add_left (Nat.mul_le_mul_right _ hjm) _
      exact_mod_cast this
    have hN := le_trans hN1 (nd_N_le hS)
    have he := lw_eta_le hS
    have hw1 : ((Y.Fl u w hg).w (Y.vOf u w hg t0) j s : ℝ) ≤ 11 / 4 * L.sc.b' := by
      by_cases hsT : s ∈ (Y.Fl u w hg).TT (Y.vOf u w hg t0)
      · have g1 := ne_w_top X Y hT hL u w hg t0 ht0 j hj s hsT
        have g2 := (ne_b_top X Y hT hL u w hg t0 ht0 hS s hsT).2
        have g3 : L.sc.b' / L.sc.x ≤ L.sc.b' := div_le_self hb0 (nd_x_ge (L := L))
        linarith
      · have g1 := ne_w_non X Y hT hL u w hg t0 ht0 j hj s hsT
        linarith
    have hw0 : (0 : ℝ) ≤ ((Y.Fl u w hg).c : ℝ) + ((Y.Fl u w hg).w (Y.vOf u w hg t0) j s : ℝ) := by
      have h5 := nd_c_le_w (Y.Fl u w hg) (Y.vOf u w hg t0) s j hj1
      have h6 : (((Y.Fl u w hg).c : ℤ) : ℝ) ≤ ((Y.Fl u w hg).w (Y.vOf u w hg t0) j s : ℝ) := by exact_mod_cast h5
      have h7 : (0 : ℝ) ≤ ((Y.Fl u w hg).c : ℝ) := Nat.cast_nonneg _
      push_cast at h6
      linarith
    have h8 : (NN (D.gat u w hg).P.m (Y.Fl u w hg).t j : ℝ) *
        (((Y.Fl u w hg).c : ℝ) + ((Y.Fl u w hg).w (Y.vOf u w hg t0) j s : ℝ)) ≤ L.sc.a * (4 * L.sc.a) :=
      mul_le_mul hN (by linarith) hw0 (by linarith)
    have h9 : L.sc.a * (4 * L.sc.a) = (2 * L.sc.a) ^ 2 := by ring
    linarith


open Classical in
theorem numeric_comparison_of_constants (D : Formalism.BasicNotions.D7) (L : SizeData₂ D) (X : Formalism.MainNotions.G.Inst D L) (Y : Formalism.MainNotions.G.LatInst D)
    (K : Formalism.MainNotions.G.Consts) (h1 : 5 ≤ K.dl1) (h2 : 4 ≤ K.dl2) (h3 : 1 ≤ K.Pr1) (h4 : Formalism.MainNotions.G.rG L.sc < D.R.k)
    (h4' : 2 ≤ L.sc.x) (hS : Formalism.MainNotions.SizesAt L) : Formalism.MainNotions.FormalGroupSystem.SmallResidueCharComparison D L X Y K := by
  intro hT hL u w hg hlog t0 ht0 j hj
  obtain ⟨e1, e2, c1, c0, c2, c3, cx⟩ := nc_loc X Y K hT hL u w hg t0 ht0 j hj
  have hDe := lw_de X Y K hT hL u w hg t0 ht0 j hj h1 h2 hlog (lw_size X Y hS hT hL u w hg t0 ht0 j hj)
  have hPr := priceBound_of_largePrimes_of_smallPrimes 1 price_bound_large_primes price_bound_small_primes D L X Y K h3 ⟨h4, h4'⟩ hS hT hL u w hg hlog t0 ht0 j hj
  have hp : 2 ≤ D.what₂.places.resChar w := hg.1.two_le
  refine ⟨?_, ?_, hPr⟩
  · rw [e1]
    exact nc_gB_ge _ _ _ _ _ j hp _ _ _ c1 c2 c3 hDe
  · rw [e2]
    exact nc_gA_ge _ _ _ _ _ j hp _ _ _ _ c1 c0 c2 c3 cx hDe

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ProofLW =====
