module

public import Formalism.LocalToGlobal.ProjectiveLattices.OneLtAbsNormReal
public import Formalism.LocalToGlobal.ProjectiveLattices.NormalizedValuationMul
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftLoc
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftSec
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftUnit
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftCurveSt
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftInSt
import Formalism.LocalToGlobal.ProjectiveLattices.SecPtOrd
import Formalism.LocalToGlobal.ProjectiveLattices.CurveSec
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.LiftRG, Formalism.LocalToGlobal.ProjectiveLattices.LiftModelPf, Formalism.LocalToGlobal.ProjectiveLattices.LiftModelSt, Formalism.LocalToGlobal.ProjectiveLattices.LiftModelHolds

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftRG =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LiftRG", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.OneLtAbsNormReal\npublic import Formalism.LocalToGlobal.ProjectiveLattices.NormalizedValuationMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Gaps.EtaleWeightGaps NumberField IsDedekindDomain Finset

section Gen

variable {Λ : Type*} [CommRing Λ] {σ : Type*} [DecidableEq σ] (hd : (σ →₀ ℕ) → Λ →+ Λ)

def iterHd (l : List (σ →₀ ℕ)) (x : Λ) : Λ := l.foldr (fun β y => hd β y) x

theorem iterHd_cons (β : σ →₀ ℕ) (l : List (σ →₀ ℕ)) (x : Λ) :
    iterHd hd (β :: l) x = hd β (iterHd hd l x) := rfl

theorem iterHd_add (l : List (σ →₀ ℕ)) (x y : Λ) : iterHd hd l (x + y) = iterHd hd l x + iterHd hd l y := by
  induction l with
  | nil => rfl
  | cons β l ih => rw [iterHd_cons, iterHd_cons, iterHd_cons, ih, map_add (f := _)]

theorem iterHd_neg (l : List (σ →₀ ℕ)) (x : Λ) : iterHd hd l (-x) = -iterHd hd l x := by
  induction l with
  | nil => rfl
  | cons β l ih => rw [iterHd_cons, iterHd_cons, ih, map_neg]

theorem iterHd_zero (l : List (σ →₀ ℕ)) : iterHd hd l 0 = 0 := by
  induction l with
  | nil => rfl
  | cons β l ih => rw [iterHd_cons, ih, map_zero]

variable {hd}

theorem hd_one' (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (β : σ →₀ ℕ) (hβ : β ≠ 0) :
    hd β 1 = 0 := by
  induction hn : Finsupp.degree β using Nat.strong_induction_on generalizing β with
  | _ n ih =>
  have h := hdm β 1 1
  rw [mul_one] at h
  have h0 : ((0 : σ →₀ ℕ), β) ∈ antidiagonal β := mem_antidiagonal.2 (zero_add β)
  have h1 : (β, (0 : σ →₀ ℕ)) ∈ (antidiagonal β).erase (0, β) :=
    mem_erase.2 ⟨fun h => hβ (congrArg Prod.fst h), mem_antidiagonal.2 (add_zero β)⟩
  rw [← add_sum_erase _ _ h0, ← add_sum_erase _ _ h1, hd0, one_mul, mul_one] at h
  have hr : ∑ q ∈ ((antidiagonal β).erase (0, β)).erase (β, 0), hd q.1 1 * hd q.2 1 = 0 := by
    refine sum_eq_zero fun q hq => ?_
    have hq2 := mem_erase.1 hq
    have hq1 := mem_erase.1 hq2.2
    have h12 : q.1 + q.2 = β := mem_antidiagonal.1 hq1.2
    have hne1 : q.1 ≠ 0 := fun h => hq1.1 (Prod.ext h (by rw [← h12, h, zero_add]))
    have hne2 : q.2 ≠ 0 := fun h => hq2.1 (Prod.ext (by rw [← h12, h, add_zero]) h)
    have hd2 : Finsupp.degree q.2 ≠ 0 := fun h => hne2 ((Finsupp.degree_eq_zero_iff _).1 h)
    have hlt : Finsupp.degree q.1 < n := by
      rw [← hn, ← h12, map_add (f := _)]; omega
    rw [ih _ hlt q.1 hne1 rfl, zero_mul]
  rw [hr, add_zero] at h
  have : hd β 1 + hd β 1 = hd β 1 + 0 := by rw [add_zero]; exact h.symm
  exact add_left_cancel this

theorem iterHd_one (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (l : List (σ →₀ ℕ)) :
    iterHd hd l 1 = 0 ∨ iterHd hd l 1 = 1 := by
  induction l with
  | nil => exact Or.inr rfl
  | cons β l ih =>
    rw [iterHd_cons]
    rcases ih with h | h
    · left; rw [h, map_zero]
    · rw [h]
      by_cases hβ : β = 0
      · right; rw [hβ, hd0]
      · left; exact hd_one' hd0 hdm β hβ

theorem low_mul' (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (I : Ideal Λ)
    {n m : ℕ} {z z' : Λ} (hz : ∀ β, hd β z ∈ I ^ (n - Finsupp.degree β))
    (hz' : ∀ β, hd β z' ∈ I ^ (m - Finsupp.degree β)) (β : σ →₀ ℕ) :
    hd β (z * z') ∈ I ^ (n + m - Finsupp.degree β) := by
  rw [hdm]
  refine Ideal.sum_mem _ fun q hq => ?_
  have h12 := mem_antidiagonal.1 hq
  have h := Ideal.mul_mem_mul (hz q.1) (hz' q.2)
  rw [← pow_add] at h
  refine Ideal.pow_le_pow_right ?_ h
  rw [← h12, map_add (f := _)]
  omega

theorem hd_pow_mem' (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (I : Ideal Λ) (n : ℕ) {z : Λ}
    (hz : z ∈ I ^ n) (β : σ →₀ ℕ) : hd β z ∈ I ^ (n - Finsupp.degree β) := by
  induction n generalizing z β with
  | zero => simp
  | succ n ih =>
    rw [pow_succ] at hz
    refine Submodule.mul_induction_on hz (fun a ha b hb => ?_) (fun x y hx hy => ?_) β
    · intro β
      have hb1 : ∀ β', hd β' b ∈ I ^ (1 - Finsupp.degree β') := fun β' => by
        by_cases h : β' = 0
        · rw [h, hd0, map_zero, Nat.sub_zero, pow_one]; exact hb
        · have : Finsupp.degree β' ≠ 0 := fun h' => h ((Finsupp.degree_eq_zero_iff _).1 h')
          rw [show 1 - Finsupp.degree β' = 0 by omega, pow_zero, Ideal.one_eq_top]
          exact Submodule.mem_top
      exact low_mul' hdm I (fun β' => ih ha β') hb1 β
    · intro β
      rw [map_add (f := _)]
      exact Ideal.add_mem _ (hx β) (hy β)

def stabSub (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (M : Subring Λ) : Subring Λ where
  carrier := {r | ∀ l, iterHd hd l r ∈ M}
  zero_mem' := fun l => by rw [iterHd_zero]; exact M.zero_mem
  one_mem' := fun l => by
    rcases iterHd_one hd0 hdm l with h | h <;> rw [h]
    · exact M.zero_mem
    · exact M.one_mem
  add_mem' := fun ha hb l => by rw [iterHd_add]; exact M.add_mem (ha l) (hb l)
  neg_mem' := fun ha l => by rw [iterHd_neg]; exact M.neg_mem (ha l)
  mul_mem' := by
    intro a b ha hb
    let A : AddSubgroup Λ := AddSubgroup.closure {z | ∃ l₁ l₂, z = iterHd hd l₁ a * iterHd hd l₂ b}
    have hA : ∀ β, ∀ z ∈ A, hd β z ∈ A := by
      intro β z hz
      refine AddSubgroup.closure_induction (fun x hx => ?_) ?_ (fun x y _ _ hx hy => ?_) (fun x _ hx => ?_) hz
      · obtain ⟨l₁, l₂, rfl⟩ := hx
        rw [hdm]
        exact AddSubgroup.sum_mem _ fun q _ => AddSubgroup.subset_closure ⟨q.1 :: l₁, q.2 :: l₂, rfl⟩
      · rw [map_zero]; exact A.zero_mem
      · rw [map_add (f := _)]; exact A.add_mem hx hy
      · rw [map_neg]; exact A.neg_mem hx
    have hAl : ∀ l, iterHd hd l (a * b) ∈ A := by
      intro l
      induction l with
      | nil => exact AddSubgroup.subset_closure ⟨[], [], rfl⟩
      | cons β l ih => rw [iterHd_cons]; exact hA β _ ih
    have hAM : A ≤ M.toAddSubgroup := by
      refine (AddSubgroup.closure_le _).2 ?_
      rintro _ ⟨l₁, l₂, rfl⟩
      exact M.mul_mem (ha l₁) (hb l₂)
    exact fun l => hAM (hAl l)

theorem stabSub_le (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (M : Subring Λ) :
    stabSub hd0 hdm M ≤ M := fun _ h => h []

theorem stabSub_hd (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) (M : Subring Λ) (β : σ →₀ ℕ)
    {r : Λ} (hr : r ∈ stabSub hd0 hdm M) : hd β r ∈ stabSub hd0 hdm M := fun l => by
  have := hr (l ++ [β])
  simpa [iterHd, List.foldr_append] using this

def appSub {L : Type*} [CommRing L] (ι : L →+* Λ) (F : Subring L) (I : Ideal Λ) : Subring Λ where
  carrier := {r | ∀ n : ℕ, ∃ f ∈ F, r - ι f ∈ I ^ n}
  zero_mem' := fun n => ⟨0, F.zero_mem, by rw [map_zero, sub_zero]; exact Ideal.zero_mem _⟩
  one_mem' := fun n => ⟨1, F.one_mem, by rw [map_one, sub_self]; exact Ideal.zero_mem _⟩
  add_mem' := by
    intro a b ha hb n
    obtain ⟨f, hf, hfa⟩ := ha n
    obtain ⟨g, hg, hgb⟩ := hb n
    refine ⟨f + g, F.add_mem hf hg, ?_⟩
    have : a + b - ι (f + g) = (a - ι f) + (b - ι g) := by rw [map_add (f := _)]; ring
    rw [this]; exact Ideal.add_mem _ hfa hgb
  neg_mem' := by
    intro a ha n
    obtain ⟨f, hf, hfa⟩ := ha n
    refine ⟨-f, F.neg_mem hf, ?_⟩
    have : -a - ι (-f) = -(a - ι f) := by rw [map_neg]; ring
    rw [this]; exact Submodule.neg_mem _ hfa
  mul_mem' := by
    intro a b ha hb n
    obtain ⟨f, hf, hfa⟩ := ha n
    obtain ⟨g, hg, hgb⟩ := hb n
    refine ⟨f * g, F.mul_mem hf hg, ?_⟩
    have : a * b - ι (f * g) = a * (b - ι g) + (a - ι f) * ι g := by rw [map_mul]; ring
    rw [this]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hgb) (Ideal.mul_mem_right _ _ hfa)

theorem appSub_hd (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z)
    {L : Type*} [CommRing L] (ι : L →+* Λ) (F : Subring L) (I : Ideal Λ) (hL : (σ →₀ ℕ) → L → L)
    (hdι : ∀ β x, hd β (ι x) = ι (hL β x)) (hF : ∀ β, ∀ f ∈ F, hL β f ∈ F) (β : σ →₀ ℕ) {r : Λ}
    (hr : r ∈ appSub ι F I) : hd β r ∈ appSub ι F I := by
  intro n
  obtain ⟨f, hf, hfr⟩ := hr (n + Finsupp.degree β)
  refine ⟨hL β f, hF β f hf, ?_⟩
  have h := hd_pow_mem' hd0 hdm I _ hfr β
  rwa [map_sub, hdι, Nat.add_sub_cancel] at h

theorem hd_inv_const (hd0 : ∀ x, hd 0 x = x)
    (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) {u : Λ} (hu : IsUnit u)
    (hc : ∀ β, β ≠ 0 → hd β u = 0) (β : σ →₀ ℕ) (hβ : β ≠ 0) : hd β (↑hu.unit⁻¹ : Λ) = 0 := by
  have h := hdm β u ↑hu.unit⁻¹
  rw [hu.mul_val_inv, hd_one' hd0 hdm β hβ] at h
  have h0 : ((0 : σ →₀ ℕ), β) ∈ antidiagonal β := mem_antidiagonal.2 (zero_add β)
  rw [← add_sum_erase _ _ h0, hd0] at h
  have hr : ∑ q ∈ (antidiagonal β).erase (0, β), hd q.1 u * hd q.2 ↑hu.unit⁻¹ = 0 := by
    refine sum_eq_zero fun q hq => ?_
    have hq1 := mem_erase.1 hq
    have h12 : q.1 + q.2 = β := mem_antidiagonal.1 hq1.2
    have hne : q.1 ≠ 0 := fun h => hq1.1 (Prod.ext h (by rw [← h12, h, zero_add]))
    rw [hc _ hne, zero_mul]
  rw [hr, add_zero] at h
  calc hd β (↑hu.unit⁻¹ : Λ) = ↑hu.unit⁻¹ * (u * hd β ↑hu.unit⁻¹) := by
        rw [← mul_assoc, hu.val_inv_mul, one_mul]
    _ = 0 := by rw [← h, mul_zero]

theorem hd_mul_const (hdm : ∀ β x z, hd β (x * z) = ∑ q ∈ antidiagonal β, hd q.1 x * hd q.2 z) {a b : Λ}
    (ha : ∀ β, β ≠ 0 → hd β a = 0) (hb : ∀ β, β ≠ 0 → hd β b = 0) (β : σ →₀ ℕ) (hβ : β ≠ 0) :
    hd β (a * b) = 0 := by
  rw [hdm]
  refine sum_eq_zero fun q hq => ?_
  by_cases h1 : q.1 = 0
  · have h12 : q.1 + q.2 = β := mem_antidiagonal.1 hq
    have h2 : q.2 ≠ 0 := by rw [h1, zero_add] at h12; rw [h12]; exact hβ
    rw [hb _ h2, mul_zero]
  · rw [ha _ h1, zero_mul]

theorem appSub_inv {L : Type*} [CommRing L] (ι : L →+* Λ) (F : Subring L) (I : Ideal Λ) {d v : L} (hdF : d ∈ F)
    (hvF : v ∈ F) (hz : ι (1 - d * v) ∈ I) (hu : IsUnit (ι d)) : (↑hu.unit⁻¹ : Λ) ∈ appSub ι F I := by
  intro n
  refine ⟨v * ∑ i ∈ range n, (1 - d * v) ^ i, F.mul_mem hvF (F.sum_mem fun i _ =>
    F.pow_mem (F.sub_mem F.one_mem (F.mul_mem hdF hvF)) i), ?_⟩
  have hg : 1 - d * (v * ∑ i ∈ range n, (1 - d * v) ^ i) = (1 - d * v) ^ n := by
    linear_combination (-1 : L) * mul_neg_geom_sum (1 - d * v) n
  have e : (↑hu.unit⁻¹ : Λ) - ι (v * ∑ i ∈ range n, (1 - d * v) ^ i) =
      ↑hu.unit⁻¹ * ι (1 - d * (v * ∑ i ∈ range n, (1 - d * v) ^ i)) := by
    rw [map_sub, map_one, map_mul ι d, mul_sub, mul_one, ← mul_assoc, hu.val_inv_mul, one_mul]
  rw [e, hg, map_pow]
  exact Ideal.mul_mem_left _ _ (Ideal.pow_mem_pow hz n)

end Gen

section Int

lemma nval_neg_rg {T : CDVR} (e : ℕ) (x : T.Fr) : nval T.V e (-x) = nval T.V e x := by
  by_cases hx : x = 0
  · subst hx; rw [neg_zero]
  · rw [nval_of_ne (neg_ne_zero.2 hx), nval_of_ne hx]
    unfold vV; rw [Valuation.map_neg]

def intSub {Λ : Type*} [CommRing Λ] {Z : Type*} (T : Z → CDVR) (ev : ∀ ζ, Λ →+* (T ζ).Fr) : Subring Λ where
  carrier := {x | ∀ ζ, 0 ≤ nval (T ζ).V 1 (ev ζ x)}
  zero_mem' := fun ζ => by rw [map_zero, nval_zero]; exact le_top
  one_mem' := fun ζ => by rw [map_one, nval_of_ne one_ne_zero, vV_one']; simp
  add_mem' := fun ha hb ζ => by
    rw [map_add (f := _)]; exact (le_min (ha ζ) (hb ζ)).trans (nval_add 1 _ _)
  neg_mem' := fun ha ζ => by rw [map_neg, nval_neg_rg]; exact ha ζ
  mul_mem' := fun ha hb ζ => by rw [map_mul, nval_mul]; exact add_nonneg (ha ζ) (hb ζ)

end Int

section Approx

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} (X : PJ D B P j) (la : HeightOneSpectrum (𝓞 B.KO))
  {N : ℕ} {wL : WeightFamilies.Wt D j} (w : Fin N → B.Cusp j wL)

end Approx

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftRG =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LiftModelPf", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftLoc\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftRG\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftSec\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftUnit\nimport Formalism.LocalToGlobal.ProjectiveLattices.SecPtOrd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Gaps.EtaleWeightGaps NumberField IsDedekindDomain Finset

lemma nval_alg_nonneg {T : CDVR} (x : T.V) : 0 ≤ nval T.V 1 (algebraMap T.V T.Fr x) := by
  by_cases hx : x = 0
  · rw [hx, map_zero, nval_zero]; exact le_top
  · obtain ⟨k, hk⟩ := ENat.ne_top_iff_exists.1 (mt (IsDiscreteValuationRing.addVal_eq_top_iff).1 hx)
    have h0 : algebraMap T.V T.Fr x ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective T.V T.Fr)).2 hx
    rw [nval_of_ne h0, vV_alg_of_addVal hk.symm]
    exact EReal.coe_nonneg.2 (by positivity)

lemma toE_nonneg' {w : WithTop ℤ} (h : 0 ≤ w) : 0 ≤ toE w := by
  cases w with
  | top => simp [toE]
  | coe n =>
    simp only [toE]
    have : (0 : ℤ) ≤ n := by exact_mod_cast h
    exact_mod_cast this

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {E : PtExt X} {hM : IntAtExt X E}
  {ka wL wF : WeightFamilies.Wt D j} {G : GlobalFamilyData (xplus X E hM) ka wL wF} {la : HeightOneSpectrum (𝓞 B.KO)}
  {y : PtsG G la → E.Pt' la} (hw : ∀ ζ, FromW ζ (y ζ))

abbrev hsW : ∀ ζ, SecPt ζ (y ζ) := fun ζ => (hw ζ).toSecPt

def IW : Ideal (LamL (hsW hw)) := Ideal.span (Set.range fun i : Fin (WeightFamilies.dimY D j) =>
  ιW (hsW hw) (sfr (xplus X E hM) la G.w i.succ : Lw (xplus X E hM) la G.w))

def RGW : Subring (LamL (hsW hw)) :=
  stabSub (hdL_zero (hsW hw)) (_root_.Formalism.L2.Pj.hdL_mul (hsW hw)) (intSub (fun ζ => (hsW hw ζ).T) (evL (hsW hw))) ⊓
    appSub (ιW (hsW hw)) (Frac0 (xplus X E hM) la G.w).toSubring (IW hw)

theorem ιW_Jid {z : ↥(Frac0 (xplus X E hM) la G.w)} (hz : z ∈ Jid (xplus X E hM) la G.w) :
    ιW (hsW hw) (z : Lw (xplus X E hM) la G.w) ∈ IW hw := by
  induction hz using Submodule.span_induction with
  | mem x hx => obtain ⟨i, rfl⟩ := hx; exact Ideal.subset_span ⟨i, rfl⟩
  | zero => rw [ZeroMemClass.coe_zero, map_zero]; exact Ideal.zero_mem _
  | add x z _ _ hx hz => rw [Subalgebra.coe_add, map_add (f := _)]; exact Ideal.add_mem _ hx hz
  | smul a x _ hx => rw [smul_eq_mul, Subalgebra.coe_mul, map_mul]; exact Ideal.mul_mem_left _ _ hx

theorem RGW_hd (β : Idx D j G.N →₀ ℕ) (r : LamL (hsW hw)) (hr : r ∈ RGW hw) : hdL (hsW hw) β r ∈ RGW hw :=
  ⟨stabSub_hd _ _ _ β hr.1, appSub_hd (hdL_zero (hsW hw)) (_root_.Formalism.L2.Pj.hdL_mul (hsW hw)) (ιW (hsW hw)) _ _
    (fun β x => hasse (xplus X E hM) la G.w β x) (hdW_ι (hsW hw))
    (fun β f hf => (mem_Frac0 _ _ _).2 (hasse_mem_Hfr _ _ _ ((mem_Frac0 _ _ _).1 hf) β)) β hr.2⟩

theorem RGW_int (ζ : PtsG G la) (r : LamL (hsW hw)) (hr : r ∈ RGW hw) :
    0 ≤ nval (hsW hw ζ).T.V 1 (evL (hsW hw) ζ r) :=
  stabSub_le _ _ _ hr.1 ζ

theorem app_of_mem (f : ↥(Frac0 (xplus X E hM) la G.w)) :
    ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) ∈
      appSub (ιW (hsW hw)) (Frac0 (xplus X E hM) la G.w).toSubring (IW hw) :=
  fun n => ⟨f, f.2, by rw [sub_self]; exact Ideal.zero_mem _⟩

theorem evL_inv (ζ : PtsG G la) {u : LamL (hsW hw)} (hu : IsUnit u) :
    evL (hsW hw) ζ ↑hu.unit⁻¹ = (evL (hsW hw) ζ u)⁻¹ := by
  refine eq_inv_of_mul_eq_one_left ?_
  rw [← map_mul, hu.val_inv_mul, map_one]

theorem inv_app {g0 : B.Cusp j wF} (C : CurveModel G la g0) (d : ↥(Frac0 (xplus X E hM) la G.w))
    (hd : ∀ ζ, (hsW hw ζ).lift (d : Lw (xplus X E hM) la G.w) ≠ 0) :
    (↑(isUnit_of_lift_ne (hsW hw) hd).unit⁻¹ : LamL (hsW hw)) ∈
      appSub (ιW (hsW hw)) (Frac0 (xplus X E hM) la G.w).toSubring (IW hw) := by
  obtain ⟨b, hb⟩ := (isUnit_toOsK_of_lift hw C d hd).exists_right_inv
  obtain ⟨v, rfl⟩ := toOsK_surjective (xplus X E hM) la G.w b
  have hz : (1 - d * v : ↥(Frac0 (xplus X E hM) la G.w)) ∈ Jid (xplus X E hM) la G.w := by
    rw [← toOsK_eq_zero_iff, map_sub, map_one, map_mul, hb, sub_self]
  have h := ιW_Jid hw hz
  push_cast at h
  exact appSub_inv _ _ _ d.2 v.2 h _

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelPf =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelSt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LiftModelSt", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftCurveSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Gaps.EtaleWeightGaps NumberField IsDedekindDomain

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {E : PtExt X} {hM : IntAtExt X E}
  {ka wL wF : WeightFamilies.Wt D j}

def LiftModelSt (G : GlobalFamilyData (xplus X E hM) ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) : Prop :=
  ∀ (y : PtsG G la → E.Pt' la) (hw : ∀ ζ, FromW ζ (y ζ)) (g0 : B.Cusp j wF) (T : ℕ),
    Nonempty (CurveModel G la g0) →
    (∀ ζ, (hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0)) ≠ 0) →
    Nonempty (LiftModel G la y (fun ζ => (hw ζ).toSecPt) g0 T)

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelSt =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.LiftModelHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftModelPf\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftInSt\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftModelSt\nimport Formalism.LocalToGlobal.ProjectiveLattices.CurveSec\nimport Formalism.LocalToGlobal.ProjectiveLattices.LiftUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Gaps.EtaleWeightGaps NumberField IsDedekindDomain Finset

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {E : PtExt X} {hM : IntAtExt X E}
  {ka wL wF : WeightFamilies.Wt D j} {G : GlobalFamilyData (xplus X E hM) ka wL wF} {la : HeightOneSpectrum (𝓞 B.KO)}
  {y : PtsG G la → E.Pt' la} (hw : ∀ ζ, FromW ζ (y ζ))

abbrev g0H (g0 : B.Cusp j wF) : ↥(HK (xplus X E hM) la G.w wF) :=
  toHK0 (xplus X E hM) la G.w wF ⟨emb (xplus X E hM) la G.N (X.inc wF g0), emb_mem_Vw (xplus X E hM) la G.N wF g0⟩

abbrev g0L (g0 : B.Cusp j wF) : LamL (hsW hw) :=
  ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) (emb (xplus X E hM) la G.N (X.inc wF g0)))

theorem inclusion_smul_cusp_eq_mul (g0 : B.Cusp j wF) (b : ↥(Frac0 (xplus X E hM) la G.w)) :
    ιW (hsW hw) ((b • g0H g0 : ↥(HK (xplus X E hM) la G.w wF)) : Lw (xplus X E hM) la G.w) =
      ιW (hsW hw) (b : Lw (xplus X E hM) la G.w) * g0L hw g0 := by
  rw [CurveModel.coe_smul_base_cusp_form (g0 := g0) b, map_mul]

theorem approx_of' (g0 : B.Cusp j wF) {s : LamL (hsW hw)}
    (hs : s ∈ appSub (ιW (hsW hw)) (Frac0 (xplus X E hM) la G.w).toSubring (IW hw)) (n : ℕ) {r : LamL (hsW hw)}
    (hr : r ∈ RGW hw) : ∃ x : ↥(HK (xplus X E hM) la G.w wF),
      ιW (hsW hw) (x : Lw (xplus X E hM) la G.w) - r * (s * g0L hw g0) ∈ IW hw ^ n := by
  obtain ⟨f, hf, hfr⟩ := (appSub _ _ _).mul_mem hr.2 hs n
  refine ⟨(⟨f, hf⟩ : ↥(Frac0 (xplus X E hM) la G.w)) • g0H g0, ?_⟩
  rw [inclusion_smul_cusp_eq_mul]
  have e : ιW (hsW hw) f * g0L hw g0 - r * (s * g0L hw g0) = -((r * s - ιW (hsW hw) f) * g0L hw g0) := by ring
  rw [e]
  exact Submodule.neg_mem _ (Ideal.mul_mem_right _ _ hfr)

theorem iterHd_eq_hdList (l : List (Idx D j G.N →₀ ℕ)) (x : LamL (hsW hw)) :
    iterHd (hdL (hsW hw)) l x = hdList (hsW hw) l x := by
  induction l with
  | nil => rfl
  | cons β l ih => rw [iterHd_cons, hdList_cons, ih]

theorem mem_RG_of' {g0 : B.Cusp j wF} (C : CurveModel G la g0) (f d : ↥(Frac0 (xplus X E hM) la G.w))
    (hd : ∀ ζ, (hsW hw ζ).lift (d : Lw (xplus X E hM) la G.w) ≠ 0)
    (hint : ∀ (l : List (Idx D j G.N →₀ ℕ)) (ζ : PtsG G la), 0 ≤ nval (hsW hw ζ).T.V 1 (evL (hsW hw) ζ
      (hdList (hsW hw) l (ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * ↑(isUnit_of_lift_ne (hsW hw) hd).unit⁻¹)))) :
    ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * ↑(isUnit_of_lift_ne (hsW hw) hd).unit⁻¹ ∈ RGW hw :=
  ⟨fun l ζ => by
    show 0 ≤ nval (hsW hw ζ).T.V 1 (evL (hsW hw) ζ (iterHd (hdL (hsW hw)) l _))
    rw [iterHd_eq_hdList]
    exact hint l ζ, (appSub _ _ _).mul_mem (app_of_mem hw f) (inv_app hw C d hd)⟩

theorem ball_of {g0 : B.Cusp j wF} (C : CurveModel G la g0) (FP FQ : ↥(Frac0 (xplus X E hM) la G.w))
    (hval : ∀ ζ, (hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w) ≠ 0 ∧
      (hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w) ≠ 0 ∧
      vV (hsW hw ζ).T.V ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w)) +
        vV (hsW hw ζ).T.V ((hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0))) =
        vV (hsW hw ζ).T.V ((hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w)))
    {v : LamL (hsW hw)} (hv : ιW (hsW hw) (FQ : Lw (xplus X E hM) la G.w) * v = 1)
    (hlift : ∀ g : ↥(Frac0 (xplus X E hM) la G.w),
      (∀ ζ, 0 ≤ nval (hw ζ).T.V 1 ((hw ζ).toSecPt.lift (g : Lw (xplus X E hM) la G.w))) →
      ∃ (f d : ↥(Frac0 (xplus X E hM) la G.w)) (hd : ∀ ζ, (hw ζ).toSecPt.lift (d : Lw (xplus X E hM) la G.w) ≠ 0),
        toOsK (xplus X E hM) la G.w f = toOsK (xplus X E hM) la G.w d * toOsK (xplus X E hM) la G.w g ∧
        ∀ (l : List (Idx D j G.N →₀ ℕ)) (ζ : PtsG G la),
          0 ≤ nval (hw ζ).T.V 1 (evL (fun ζ => (hw ζ).toSecPt) ζ (hdList (fun ζ => (hw ζ).toSecPt) l
            (ιW (fun ζ => (hw ζ).toSecPt) (f : Lw (xplus X E hM) la G.w) *
              ↑(isUnit_of_lift_ne (fun ζ => (hw ζ).toSecPt) hd).unit⁻¹))))
    (a : SectionSheafQuotient (xplus X E hM) la G.w wF) (ha : a ∈ (secQ y (hsW hw) g0).A0) :
    ∃ r ∈ RGW hw, ∃ x : ↥(HK (xplus X E hM) la G.w wF), toA0K (xplus X E hM) la G.w wF x = a ∧
      ιW (hsW hw) (x : Lw (xplus X E hM) la G.w) - r * ((ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * v) * g0L hw g0) ∈
        IW hw := by
  set e' := (ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * v) * g0L hw g0 with he'
  have hball : a ∈ ball (unifO (xplus X E hM) la G.N) (secQ y (hsW hw) g0).e (secQ y (hsW hw) g0).c := ha
  clear ha
  induction hball using Submodule.span_induction with
  | zero => exact ⟨0, (RGW hw).zero_mem, 0, map_zero _, by simp⟩
  | add a b _ _ iha ihb =>
    obtain ⟨r1, hr1, x1, hx1, h1⟩ := iha
    obtain ⟨r2, hr2, x2, hx2, h2⟩ := ihb
    refine ⟨r1 + r2, (RGW hw).add_mem hr1 hr2, x1 + x2, by rw [map_add (f := _), hx1, hx2], ?_⟩
    have e : ιW (hsW hw) ((x1 + x2 : ↥(HK (xplus X E hM) la G.w wF)) : Lw (xplus X E hM) la G.w) - (r1 + r2) * e' =
        (ιW (hsW hw) (x1 : Lw (xplus X E hM) la G.w) - r1 * e') +
          (ιW (hsW hw) (x2 : Lw (xplus X E hM) la G.w) - r2 * e') := by
      rw [Submodule.coe_add, map_add (f := _)]; ring
    rw [e]; exact Ideal.add_mem _ h1 h2
  | smul b a _ iha =>
    obtain ⟨r, hr, x, hx, hxr⟩ := iha
    obtain ⟨fb, hfb⟩ := toOsK_surjective (xplus X E hM) la G.w (b : OsK (xplus X E hM) la G.w)
    have hint : ∀ ζ, 0 ≤ nval (hw ζ).T.V 1 ((hw ζ).toSecPt.lift (fb : Lw (xplus X E hM) la G.w)) := fun ζ => by
      rw [show (hw ζ).toSecPt.lift (fb : Lw (xplus X E hM) la G.w) = _ from (hw ζ).evW fb b hfb]
      exact nval_alg_nonneg _
    obtain ⟨f, d, hd, hfd, hint'⟩ := hlift fb hint
    set u : LamL (hsW hw) := ↑(isUnit_of_lift_ne (hsW hw) hd).unit⁻¹ with hu
    have hdu : ιW (hsW hw) (d : Lw (xplus X E hM) la G.w) * u = 1 := IsUnit.mul_val_inv _
    have hrb : ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * u ∈ RGW hw := mem_RG_of' hw C f d hd hint'
    have hz : fb * d - f ∈ Jid (xplus X E hM) la G.w := by
      rw [← toOsK_eq_zero_iff, map_sub, map_mul, hfd, hfb]; ring
    have hzI := ιW_Jid hw hz
    push_cast at hzI
    refine ⟨ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * u * r, (RGW hw).mul_mem hrb hr, fb • x, ?_, ?_⟩
    · rw [CurveModel.fractionToIntegralSection_smul_eq, hfb, hx]; rfl
    · rw [CurveModel.coe_smul', map_mul]
      have e : ιW (hsW hw) (fb : Lw (xplus X E hM) la G.w) * ιW (hsW hw) (x : Lw (xplus X E hM) la G.w) -
          ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * u * r * e' =
          ιW (hsW hw) (fb : Lw (xplus X E hM) la G.w) * (ιW (hsW hw) (x : Lw (xplus X E hM) la G.w) - r * e') +
            (u * (r * e')) * ιW (hsW hw) ((fb : Lw (xplus X E hM) la G.w) * (d : Lw (xplus X E hM) la G.w) -
              (f : Lw (xplus X E hM) la G.w)) := by
        rw [map_sub, map_mul]
        linear_combination (-(ιW (hsW hw) (fb : Lw (xplus X E hM) la G.w) * r * e')) * hdu
      rw [e]
      exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hxr) (Ideal.mul_mem_left _ _ hzI)
  | mem a ha =>
    have hgen : IsGen (OsK (xplus X E hM) la G.w) (secQ y (hsW hw) g0).e := C.isGen
    set c : OsK (xplus X E hM) la G.w := coord (secQ y (hsW hw) g0).e a with hc
    obtain ⟨fc, hfc⟩ := toOsK_surjective (xplus X E hM) la G.w c
    obtain ⟨bp, hbp⟩ := (isUnit_toOsK_of_lift hw C FP (fun ζ => (hval ζ).1)).exists_right_inv
    obtain ⟨vp, rfl⟩ := toOsK_surjective (xplus X E hM) la G.w bp
    have hvp : ∀ ζ, (hsW hw ζ).lift (vp : Lw (xplus X E hM) la G.w) =
        ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w))⁻¹ := by
      intro ζ
      have hz : FP * vp - 1 ∈ Jid (xplus X E hM) la G.w := by
        rw [← toOsK_eq_zero_iff, map_sub, map_one, map_mul, hbp, sub_self]
      have h0 := (hsW hw ζ).lift_Jid hz
      rw [Subalgebra.coe_sub, Subalgebra.coe_mul, Subalgebra.coe_one, map_sub, map_mul, map_one, sub_eq_zero] at h0
      exact eq_inv_of_mul_eq_one_right h0
    set g := fc * FQ * vp with hg
    have hgint : ∀ ζ, 0 ≤ nval (hw ζ).T.V 1 ((hw ζ).toSecPt.lift (g : Lw (xplus X E hM) la G.w)) := by
      intro ζ
      obtain ⟨hP0, hQ0, hPQ⟩ := hval ζ
      have h1 : (hw ζ).toSecPt.lift (g : Lw (xplus X E hM) la G.w) =
          (hsW hw ζ).lift (fc : Lw (xplus X E hM) la G.w) *
            ((hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w) * ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w))⁻¹) := by
        rw [hg, Subalgebra.coe_mul, Subalgebra.coe_mul, map_mul, map_mul, hvp ζ, mul_assoc]
      have hne : (hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w) *
          ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w))⁻¹ ≠ 0 := mul_ne_zero hQ0 (inv_ne_zero hP0)
      have hvq : vV (hsW hw ζ).T.V ((hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w) *
          ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w))⁻¹) =
          vV (hsW hw ζ).T.V ((hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0))) := by
        rw [vV_mul hQ0 (inv_ne_zero hP0), vV_inv' hP0]; omega
      have hord := (hsW hw ζ).ord fc
      rw [hfc] at hord
      have hm := ha ζ
      simp only [ordV] at hm
      have h2 := toE_nonneg' hm
      rw [toE_add_coe] at h2
      have h3 : ((secQ y (hsW hw) g0).c ζ : ℤ) = vV (hsW hw ζ).T.V ((hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0))) := rfl
      rw [h3] at h2
      change 0 ≤ nval (hsW hw ζ).T.V 1 ((hsW hw ζ).lift (g : Lw (xplus X E hM) la G.w))
      rw [h1, nval_mul, nval_of_ne hne, hvq, ← hord]
      simpa using h2
    obtain ⟨f, d, hd, hfd, hint'⟩ := hlift g hgint
    set u : LamL (hsW hw) := ↑(isUnit_of_lift_ne (hsW hw) hd).unit⁻¹ with hu
    have hdu : ιW (hsW hw) (d : Lw (xplus X E hM) la G.w) * u = 1 := IsUnit.mul_val_inv _
    have hz : fc * d * FQ - f * FP ∈ Jid (xplus X E hM) la G.w := by
      rw [← toOsK_eq_zero_iff, map_sub, map_mul, map_mul, map_mul, hfd, hg, map_mul, map_mul, hfc]
      linear_combination (-(c * toOsK (xplus X E hM) la G.w d * toOsK (xplus X E hM) la G.w FQ)) * hbp
    have hzI := ιW_Jid hw hz
    push_cast at hzI
    refine ⟨ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * u, mem_RG_of' hw C f d hd hint', fc • g0H g0, ?_, ?_⟩
    · rw [CurveModel.fractionToIntegralSection_smul_eq, hfc]
      exact coord_smul_self hgen a
    · rw [inclusion_smul_cusp_eq_mul, he']
      have e : ιW (hsW hw) (fc : Lw (xplus X E hM) la G.w) * g0L hw g0 -
          ιW (hsW hw) (f : Lw (xplus X E hM) la G.w) * u * (ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * v * g0L hw g0) =
          (g0L hw g0 * u * v) * ιW (hsW hw) ((fc : Lw (xplus X E hM) la G.w) * (d : Lw (xplus X E hM) la G.w) *
            (FQ : Lw (xplus X E hM) la G.w) - (f : Lw (xplus X E hM) la G.w) * (FP : Lw (xplus X E hM) la G.w)) := by
        rw [map_sub, map_mul, map_mul, map_mul]
        linear_combination (-(g0L hw g0 * ιW (hsW hw) (fc : Lw (xplus X E hM) la G.w))) * hdu +
          (-(g0L hw g0 * ιW (hsW hw) (fc : Lw (xplus X E hM) la G.w) * ιW (hsW hw) (d : Lw (xplus X E hM) la G.w) * u)) * hv
      rw [e]
      exact Ideal.mul_mem_left _ _ hzI



theorem liftModelSt_of (G : GlobalFamilyData (xplus X E hM) ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (hL : LocRingSt G la) :
    LiftModelSt G la := by
  intro y hw g0 T hCM hg0
  obtain ⟨C⟩ := hCM
  obtain ⟨⟨k, p, q, hp, hq, hpc, hqc, hpq⟩, hlift⟩ := hL y hw g0 ⟨C⟩ hg0
  have hfd : FiniteDimensional (Kp (xplus X E hM) la G.N) (OsK (xplus X E hM) la G.w) := by
    have : FiniteDimensional (Kp (xplus X E hM) la G.N) (↥C.A' ⧸ C.JA) := C.fin
    exact LinearEquiv.finiteDimensional C.quotEquiv.toLinearEquiv
  have hred : IsReduced (OsK (xplus X E hM) la G.w) := by
    have : IsReduced (↥C.A' ⧸ C.JA) := C.red
    exact isReduced_of_injective C.quotEquiv.symm.toRingHom C.quotEquiv.symm.injective
  have hQl : ∀ ζ, (hsW hw ζ).lift (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) q) ≠ 0 :=
    fun ζ => by rw [SecPt.lift_alg]; exact (hpq ζ).2.1
  let FP : ↥(Frac0 (xplus X E hM) la G.w) :=
    ⟨frac (xplus X E hM) la G.w k p, (mem_Frac0 _ _ _).2 (frac_mem_Hfr _ _ _ hp)⟩
  let FQ : ↥(Frac0 (xplus X E hM) la G.w) :=
    ⟨frac (xplus X E hM) la G.w k q, (mem_Frac0 _ _ _).2 (frac_mem_Hfr _ _ _ hq)⟩
  have hw0 : ∀ ζ, ((hsW hw ζ).ev (sec (xplus X E hM) la G.w 0))⁻¹ ^ k ≠ 0 :=
    fun ζ => pow_ne_zero _ (inv_ne_zero (hsW hw ζ).s0.ne_zero)
  have hFP0 : ∀ ζ, (hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w) ≠ 0 := fun ζ => by
    show (hsW hw ζ).lift (frac (xplus X E hM) la G.w k p) ≠ 0
    rw [SecPt.lift_frac]; exact mul_ne_zero (hpq ζ).1 (hw0 ζ)
  have hFQ0 : ∀ ζ, (hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w) ≠ 0 := fun ζ => by
    show (hsW hw ζ).lift (frac (xplus X E hM) la G.w k q) ≠ 0
    rw [SecPt.lift_frac]; exact mul_ne_zero (hpq ζ).2.1 (hw0 ζ)
  have hvalF : ∀ ζ, vV (hsW hw ζ).T.V ((hsW hw ζ).lift (FP : Lw (xplus X E hM) la G.w)) +
      vV (hsW hw ζ).T.V ((hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0))) =
      vV (hsW hw ζ).T.V ((hsW hw ζ).lift (FQ : Lw (xplus X E hM) la G.w)) := fun ζ => by
    show vV (hsW hw ζ).T.V ((hsW hw ζ).lift (frac (xplus X E hM) la G.w k p)) + _ =
      vV (hsW hw ζ).T.V ((hsW hw ζ).lift (frac (xplus X E hM) la G.w k q))
    rw [SecPt.lift_frac, SecPt.lift_frac, vV_mul (hpq ζ).1 (hw0 ζ), vV_mul (hpq ζ).2.1 (hw0 ζ)]
    have h := (hpq ζ).2.2
    dsimp only [hsW] at h ⊢
    omega
  have uQ := isUnit_of_lift_ne (hsW hw) hQl
  have uFQ := isUnit_of_lift_ne (hsW hw) hFQ0
  have hv : ιW (hsW hw) (FQ : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹ = 1 := uFQ.mul_val_inv
  have key : ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) p) *
      ιW (hsW hw) (FQ : Lw (xplus X E hM) la G.w) = ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) *
      ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) q) := by
    rw [← map_mul, ← map_mul]
    congr 1
    show _ * frac (xplus X E hM) la G.w k q = frac (xplus X E hM) la G.w k p * _
    rw [frac_apply, frac_apply]; ring
  have hs_eq : ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹ =
      ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) p) * ↑uQ.unit⁻¹ := by
    calc ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹
        = ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹ *
            (ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) q) * ↑uQ.unit⁻¹) := by
          rw [uQ.mul_val_inv, mul_one]
      _ = (ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) *
            ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) q)) * ↑uFQ.unit⁻¹ *
            ↑uQ.unit⁻¹ := by ring
      _ = (ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) p) *
            ιW (hsW hw) (FQ : Lw (xplus X E hM) la G.w)) * ↑uFQ.unit⁻¹ * ↑uQ.unit⁻¹ := by rw [key]
      _ = ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) p) * ↑uQ.unit⁻¹ *
            (ιW (hsW hw) (FQ : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹) := by ring
      _ = _ := by rw [hv, mul_one]
  have hsApp : ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹ ∈
      appSub (ιW (hsW hw)) (Frac0 (xplus X E hM) la G.w).toSubring (IW hw) :=
    (appSub _ _ _).mul_mem (app_of_mem hw FP) (inv_app hw C FQ hFQ0)
  have hconst : ∀ r : Rp (xplus X E hM) la G.N, (∀ β, β ≠ 0 → hasseRp (xplus X E hM) la G.N β r = 0) →
      ∀ β, β ≠ 0 → hdL (hsW hw) β (ιW (hsW hw) (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) r)) = 0 := by
    intro r hr β hβ
    rw [hdW_ι, show hasse (xplus X E hM) la G.w β (algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) r) =
      algebraMap (Rp (xplus X E hM) la G.N) (Lw (xplus X E hM) la G.w) (hasseRp (xplus X E hM) la G.N β r) from
        hasse_algebraMap _ _ _ β r, hr β hβ, map_zero, map_zero]
  refine ⟨{
    Λ := LamL (hsW hw)
    ι := ιW (hsW hw)
    hd := hdL (hsW hw)
    hd_zero := hdL_zero (hsW hw)
    hd_ι := hdW_ι (hsW hw)
    hd_mul := _root_.Formalism.L2.Pj.hdL_mul (hsW hw)
    ev := evL (hsW hw)
    ev_ι := evW_ι (hsW hw)
    RG := RGW hw
    RG_hd := RGW_hd hw
    RG_int := fun ζ r hr => RGW_int hw ζ r hr
    e' := (ιW (hsW hw) (FP : Lw (xplus X E hM) la G.w) * ↑uFQ.unit⁻¹) * g0L hw g0
    e'_hd := fun β hβ => by
      rw [hs_eq]
      exact hd_mul_const (_root_.Formalism.L2.Pj.hdL_mul _) (hd_mul_const (_root_.Formalism.L2.Pj.hdL_mul _) (hconst p hpc)
        (hd_inv_const (hdL_zero _) (_root_.Formalism.L2.Pj.hdL_mul _) uQ (hconst q hqc))) (hconst _ fun β hβ => hasseRp_emb _ _ hβ _) β hβ
    e'_int := fun ζ => by
      rw [hs_eq, map_mul, map_mul, evL_inv, evW_ι, evW_ι, evW_ι, SecPt.lift_alg, SecPt.lift_alg, SecPt.lift_alg]
      obtain ⟨h1, h2, h3⟩ := hpq ζ
      have hne : (hsW hw ζ).ev p * ((hsW hw ζ).ev q)⁻¹ * (hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0)) ≠ 0 :=
        mul_ne_zero (mul_ne_zero h1 (inv_ne_zero h2)) (hg0 ζ)
      rw [nval_of_ne hne, vV_mul (mul_ne_zero h1 (inv_ne_zero h2)) (hg0 ζ), vV_mul h1 (inv_ne_zero h2), vV_inv' h2]
      have h4 : vV (hsW hw ζ).T.V ((hsW hw ζ).ev p) + -vV (hsW hw ζ).T.V ((hsW hw ζ).ev q) +
          vV (hsW hw ζ).T.V ((hsW hw ζ).ev (emb (xplus X E hM) la G.N (X.inc wF g0))) = 0 := by
        dsimp only [hsW] at h3 ⊢; omega
      rw [h4]; simp
    res_ker := res_ker_of (hsW hw) hfd hred C hg0
    ball := fun a ha => by
      have h := ball_of hw C FP FQ (fun ζ => ⟨hFP0 ζ, hFQ0 ζ, hvalF ζ⟩) hv hlift a ha
      dsimp only [IW] at h
      exact h
    approx := fun r hr => by
      have h := approx_of' hw g0 hsApp (a0 D j T) hr
      dsimp only [IW] at h
      exact h }⟩

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.LiftModelHolds =====
