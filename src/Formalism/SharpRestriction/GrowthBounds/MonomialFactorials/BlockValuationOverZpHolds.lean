module

public import Formalism.MahlerMeasure.GoodCount
public import Formalism.PolynomialDimension.MultinomialDepth.PartnerM
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfLatticeInclusion
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodCountMem
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ValFactSumLe
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegSubSingle, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfValuationBound, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfNumericBound, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ProdProdIte, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FinPosEqCast, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationOverZpHolds

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegSubSingle =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegSubSingle", "h": "module\n\npublic import Formalism.MahlerMeasure.GoodCount\npublic import Formalism.PolynomialDimension.MultinomialDepth.PartnerM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial Finset Formalism.GM Formalism.GM.M

section Comm

variable {p : ℕ} [Fact p.Prime] {N r : ℕ}

theorem pderiv_glAct (LL : M.Letters N) (J : ℕ) (a : Fin N) (c c' d' : Fin r)
    (x : MvPolynomial (Fin N × Fin r) ℚ_[p]) :
    pderiv (a, c) (M.glAct p LL J c' d' x) = M.glAct p LL J c' d' (pderiv (a, c) x) +
      (if (a : ℕ) < J then
        (if LL.vec a then (if c = c' then pderiv (a, d') x else 0) else (if c = d' then -pderiv (a, c') x else 0))
       else 0) := by
  classical
  have hcomm : ∀ (u v : Fin N × Fin r) (y : MvPolynomial (Fin N × Fin r) ℚ_[p]),
      pderiv u (pderiv v y) = pderiv v (pderiv u y) := by
    intro u v y
    refine MvPolynomial.induction_on' y (fun s b => ?_) (fun q q' hq hq' => ?_)
    · simp only [pderiv_monomial]
      by_cases huv : u = v
      · subst huv
        rfl
      · have h1 : (s - Finsupp.single v 1 : Fin N × Fin r →₀ ℕ) u = s u := by
          rw [Finsupp.tsub_apply, Finsupp.single_apply, if_neg (Ne.symm huv), Nat.sub_zero]
        have h2 : (s - Finsupp.single u 1 : Fin N × Fin r →₀ ℕ) v = s v := by
          rw [Finsupp.tsub_apply, Finsupp.single_apply, if_neg huv, Nat.sub_zero]
        rw [h1, h2, tsub_right_comm, mul_assoc, mul_assoc, mul_comm ((s u : ℚ_[p]))]
    · simp only [map_add (f := _), hq, hq']
  have hg : ∀ y, M.glAct p LL J c' d' y = ∑ i : Fin N, (if (i : ℕ) < J then
      (if LL.vec i then X (i, c') * pderiv (i, d') y else -(X (i, d') * pderiv (i, c') y)) else 0) := by
    intro y
    simp only [M.glAct, LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    split_ifs <;> simp
  have key : ∀ i : Fin N, pderiv (a, c) (if (i : ℕ) < J then
      (if LL.vec i then X (i, c') * pderiv (i, d') x else -(X (i, d') * pderiv (i, c') x)) else 0) =
      (if (i : ℕ) < J then (if LL.vec i then X (i, c') * pderiv (i, d') (pderiv (a, c) x)
        else -(X (i, d') * pderiv (i, c') (pderiv (a, c) x))) else 0) +
      (if a = i then (if (i : ℕ) < J then (if LL.vec i then (if c = c' then pderiv (i, d') x else 0)
        else (if c = d' then -pderiv (i, c') x else 0)) else 0) else 0) := by
    intro i
    by_cases hi : (i : ℕ) < J
    · by_cases hv : LL.vec i
      · simp only [hi, hv, if_true, pderiv_mul, pderiv_X, Pi.single_apply]
        rw [hcomm (a, c) (i, d') x]
        by_cases hai : a = i
        · subst hai
          by_cases hcc : c = c'
          · subst hcc
            simp
            try abel
          · simp [hcc, Ne.symm hcc]
        · have hne : (i, c') ≠ (a, c) := fun h' => hai (congrArg Prod.fst h').symm
          simp [hai, hne]
      · simp only [hi, hv, if_true, Bool.false_eq_true, if_false, map_neg, pderiv_mul, pderiv_X,
          Pi.single_apply]
        rw [hcomm (a, c) (i, c') x]
        by_cases hai : a = i
        · subst hai
          by_cases hcd : c = d'
          · subst hcd
            simp
          · simp [hcd, Ne.symm hcd]
        · have hne : (i, d') ≠ (a, c) := fun h' => hai (congrArg Prod.fst h').symm
          simp [hai, hne]
    · simp [hi]

  rw [hg, hg, map_sum, Finset.sum_congr rfl (fun i _ => key i), Finset.sum_add_distrib,
  Finset.sum_ite_eq]
  simp

theorem pderiv_keep {σ : Type} (v : σ) (Q Q' : Set (σ →₀ ℕ))
    (h : ∀ m ∈ Q, 1 ≤ m v → m - Finsupp.single v 1 ∈ Q') :
    ∀ x ∈ restrictSupport ℚ_[p] Q, pderiv v x ∈ restrictSupport ℚ_[p] Q' := by
  intro x hx
  have hx' := (mem_restrictSupport_iff ℚ_[p]).mp hx

  rw [x.as_sum, map_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  rw [pderiv_monomial]
  by_cases hmv : m v = 0
  · simp [hmv]
  · rw [mem_restrictSupport_iff]
    intro m' hm'
    have h1 := support_monomial_subset hm'
    rw [Finset.mem_singleton] at h1
    rw [h1]
    exact h m (hx' hm) (Nat.one_le_iff_ne_zero.mpr hmv)

theorem wt_sub_single (LL : M.Letters N) (J : ℕ) (a : Fin N) (c c0 : Fin r) (m : Fin N × Fin r →₀ ℕ)
    (h : 1 ≤ m (a, c)) :
    M.wt LL J c0 (m - Finsupp.single (a, c) 1) =
      M.wt LL J c0 m - (if (a : ℕ) < J ∧ c = c0 then (if LL.vec a then 1 else -1) else 0) := by
  have key : ∀ i, (((m - Finsupp.single (a, c) 1 : Fin N × Fin r →₀ ℕ)) (i, c0) : ℤ) =
      (m (i, c0) : ℤ) - (if i = a ∧ c = c0 then 1 else 0) := by
    intro i
    rw [Finsupp.tsub_apply, Finsupp.single_apply]
    by_cases hh : i = a ∧ c = c0
    · obtain ⟨rfl, rfl⟩ := hh
      rw [if_pos rfl, if_pos ⟨rfl, rfl⟩, Nat.cast_sub h]
      simp
    · rw [if_neg, if_neg hh]
      · simp
      · intro h'
        apply hh
        simp only [Prod.mk.injEq] at h'
        exact ⟨h'.1.symm, h'.2⟩
  unfold M.wt
  simp only [key]
  rw [show (if (a : ℕ) < J ∧ c = c0 then (if LL.vec a then (1 : ℤ) else -1) else 0) =
      ∑ i : Fin N, (if (i : ℕ) < J then (if LL.vec i then (if i = a ∧ c = c0 then (1 : ℤ) else 0)
        else -(if i = a ∧ c = c0 then 1 else 0)) else 0) from ?_]
  · rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    split_ifs <;> ring
  · rw [Finset.sum_eq_single a]
    · by_cases h1 : (a : ℕ) < J <;> by_cases h2 : c = c0 <;> by_cases h3 : LL.vec a <;> simp [h1, h2, h3]
    · intro b _ hb
      simp [hb]
    · simp

variable [NeZero r]

theorem ycond_vec (LL LL' : M.Letters N) (h : LL.vec = LL'.vec) (J : ℕ) (Mt : WithTop ℤ) :
    M.YCond p (r := r) LL J Mt = M.YCond p (r := r) LL' J Mt := by
  obtain ⟨v, d⟩ := LL
  obtain ⟨v', d'⟩ := LL'
  simp only at h
  subst h
  rfl

theorem pderiv_ycond (LL : M.Letters N) (J : ℕ) (Mt : WithTop ℤ) (a : Fin N) (hva : (a : ℕ) < J → LL.vec a = true)
    (c : Fin r) (x : MvPolynomial (Fin N × Fin r) ℚ_[p]) (hx : x ∈ M.YCond p (r := r) LL J Mt) :
    pderiv (a, c) x ∈ M.YCond p (r := r) LL J Mt := by
  classical
  obtain ⟨S', hS'⟩ : ∃ S' : Submodule ℚ_[p] (MvPolynomial (Fin N × Fin r) ℚ_[p]),
      S' = Submodule.span ℚ_[p] {z | ∃ (c'' : Fin r) (y : MvPolynomial (Fin N × Fin r) ℚ_[p]),
        y ∈ M.YCond p (r := r) LL J Mt ∧ z = pderiv (a, c'') y} := ⟨_, rfl⟩
  have hgen : ∀ (c'' : Fin r) y, y ∈ M.YCond p (r := r) LL J Mt → pderiv (a, c'') y ∈ S' := by
    intro c'' y hy
    rw [hS']
    exact Submodule.subset_span ⟨c'', y, hy, rfl⟩
  have hsupp : S' ≤ MvPolynomial.restrictSupport ℚ_[p]
      {m : Fin N × Fin r →₀ ℕ | ((M.wt LL J 0 m : ℤ) : WithTop ℤ) ≤ Mt} := by
    rw [hS', Submodule.span_le]
    rintro _ ⟨c'', y, hy, rfl⟩
    refine pderiv_keep (a, c'') _ _ ?_ y (Formalism.CountingSumsFrames.ycond_le_supp LL J Mt hy)
    intro m hm h1
    simp only [Set.mem_setOf_eq] at hm ⊢
    rw [wt_sub_single LL J a c'' 0 m h1]
    refine le_trans (WithTop.coe_le_coe.mpr ?_) hm
    by_cases ha : (a : ℕ) < J
    · have hv := hva ha
      by_cases hc : c'' = 0 <;> simp [ha, hv, hc]
    · simp [ha]
  have hstab : M.GlStable p LL J S' := by
    intro c d z hz
    rw [hS'] at hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨c'', y, hy, rfl⟩ := hz
      have e := pderiv_glAct LL J a c'' c d y
      have hy' : M.glAct p LL J c d y ∈ M.YCond p (r := r) LL J Mt :=
        Formalism.CountingSumsFrames.ycond_glStable LL J Mt c d y hy
      have hext : (if (a : ℕ) < J then
          (if LL.vec a then (if c'' = c then pderiv (a, d) y else 0)
            else (if c'' = d then -pderiv (a, c) y else 0)) else 0) ∈ S' := by
        split_ifs
        · exact hgen d y hy
        · exact S'.zero_mem
        · exact S'.neg_mem (hgen c y hy)
        · exact S'.zero_mem
        · exact S'.zero_mem
      rw [show M.glAct p LL J c d (pderiv (a, c'') y) = pderiv (a, c'') (M.glAct p LL J c d y) -
        (if (a : ℕ) < J then (if LL.vec a then (if c'' = c then pderiv (a, d) y else 0)
            else (if c'' = d then -pderiv (a, c) y else 0)) else 0) by rw [e]; abel]
      exact S'.sub_mem (hgen c'' _ hy') hext
    | zero => simp
    | add z z' _ _ hz hz' =>
      rw [map_add (f := _)]
      exact S'.add_mem hz hz'
    | smul t z _ hz =>
      rw [map_smul]
      exact S'.smul_mem t hz
  have hle : S' ≤ M.YCond p (r := r) LL J Mt := by
    unfold M.YCond
    exact le_sSup ⟨hsupp, hstab⟩
  exact hle (hgen c x hx)

theorem tieF_ycond (LL : M.Letters N) (J : ℕ) (Mt : WithTop ℤ) (W E : Fin N) (hW : (W : ℕ) < J) (hE : (E : ℕ) < J)
    (hvW : LL.vec W = true) (hvE : LL.vec E = false)
    (x : MvPolynomial (Fin N × Fin r) ℚ_[p]) (hx : x ∈ M.YCond p (r := r) LL J Mt) :
    tieF (fun c => (W, c)) (fun c => (E, c)) x ∈ M.YCond p (r := r) LL J Mt := by
  classical
  have ht : ∀ y : MvPolynomial (Fin N × Fin r) ℚ_[p], tieF (fun c => (W, c)) (fun c => (E, c)) y =
      ∑ c0 : Fin r, pderiv (W, c0) (pderiv (E, c0) y) := by
    intro y
    simp [tieF, LinearMap.sum_apply]
  refine Formalism.CountingSumsFrames.ycond_keep LL J Mt (tieF (fun c => (W, c)) (fun c => (E, c))) ?_ ?_ x hx
  · intro c d y
    have step : ∀ c0, pderiv (W, c0) (pderiv (E, c0) (M.glAct p LL J c d y)) =
        M.glAct p LL J c d (pderiv (W, c0) (pderiv (E, c0) y)) +
        (if c0 = c then pderiv (W, d) (pderiv (E, c0) y) else 0) +
        (if c0 = d then -pderiv (W, c0) (pderiv (E, c) y) else 0) := by
      intro c0
      rw [pderiv_glAct LL J E c0 c d y, map_add (f := _), pderiv_glAct LL J W c0 c d (pderiv (E, c0) y)]
      simp only [hE, hW, hvW, hvE, if_true, Bool.false_eq_true, if_false]
      split_ifs <;> simp [map_neg]

    rw [ht, ht, map_sum, Finset.sum_congr rfl (fun c0 _ => step c0), Finset.sum_add_distrib,
    Finset.sum_add_distrib, Finset.sum_ite_eq', Finset.sum_ite_eq']
    simp only [Finset.mem_univ, if_true, add_assoc, add_neg_cancel, add_zero]
  · intro z hz
    rw [ht]
    refine Submodule.sum_mem _ fun c0 _ => ?_
    have hQ1 : pderiv (E, c0) z ∈ MvPolynomial.restrictSupport ℚ_[p] {m : Fin N × Fin r →₀ ℕ |
        (((M.wt LL J 0 m - (if c0 = 0 then 1 else 0) : ℤ)) : WithTop ℤ) ≤ Mt} := by
      refine pderiv_keep (E, c0) {m : Fin N × Fin r →₀ ℕ | ((M.wt LL J 0 m : ℤ) : WithTop ℤ) ≤ Mt} _ ?_ z hz
      intro m hm h1
      simp only [Set.mem_setOf_eq] at hm ⊢
      rw [wt_sub_single LL J E c0 0 m h1]
      by_cases hc : c0 = 0 <;> simpa [hE, hvE, hc] using hm
    refine pderiv_keep (W, c0) _ {m : Fin N × Fin r →₀ ℕ | ((M.wt LL J 0 m : ℤ) : WithTop ℤ) ≤ Mt} ?_ _ hQ1
    · intro m hm h1
      simp only [Set.mem_setOf_eq] at hm ⊢
      rw [wt_sub_single LL J W c0 0 m h1]
      by_cases hc : c0 = 0 <;> simpa [hW, hvW, hc] using hm

end Comm

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegSubSingle =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfValuationBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfValuationBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfLatticeInclusion\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegSubSingle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial Finset Formalism.GM Formalism.GM.M

section Hyp

variable (p : ℕ) [Fact p.Prime] {N r : ℕ} [NeZero r] (G : M.BlockData N)

theorem hypU_proved (hB : G.BlockOK) : Formalism.InvariantFactorPaths.KP.LL.HypU p (r := r) G := by
  have hpol : ∀ (LL LL' : M.Letters N) (a : Fin N) (c : Fin r), LL'.deg a = LL.deg a - 1 →
      (∀ i, i ≠ a → LL'.deg i = LL.deg i) →
      ∀ y ∈ M.Pol p r LL, pderiv (a, c) y ∈ M.Pol p r LL' := by
    intro LL LL' a c hda hdo y hy
    unfold M.Pol at hy ⊢
    rw [MvPolynomial.restrictSupport, AddMonoidAlgebra.supported, Submodule.mem_comap, Finsupp.mem_supported] at hy

    rw [y.as_sum, map_sum]
    refine Submodule.sum_mem _ fun m hm => ?_
    rw [MvPolynomial.pderiv_monomial]
    by_cases h0 : m (a, c) = 0
    · rw [h0, Nat.cast_zero, mul_zero, MvPolynomial.monomial_zero]
      exact zero_mem _
    · have hmd : M.MultiDeg LL m := hy (Finset.mem_coe.mpr hm)
      rw [MvPolynomial.restrictSupport, AddMonoidAlgebra.supported, Submodule.mem_comap, Finsupp.mem_supported]
      refine (Finset.coe_subset.mpr MvPolynomial.support_monomial_subset).trans ?_
      rw [Finset.coe_singleton, Set.singleton_subset_iff]
      show M.MultiDeg LL' (m - Finsupp.single (a, c) 1)
      intro i
      by_cases hi : i = a
      · subst hi
        have key : ∀ c', ((m - Finsupp.single (i, c) 1 : (Fin N × Fin r) →₀ ℕ) (i, c')) + (if c' = c then 1 else 0) =
            m (i, c') := by
          intro c'
          rw [Finsupp.tsub_apply, Finsupp.single_apply]
          by_cases hc : c' = c
          · subst hc
            rw [if_pos rfl, if_pos rfl]
            omega
          · have hne : ¬ (i, c) = (i, c') := fun h => hc (congrArg Prod.snd h).symm
            rw [if_neg hne, if_neg hc]
            simp
        have hs : ∑ c', (((m - Finsupp.single (i, c) 1 : (Fin N × Fin r) →₀ ℕ) (i, c')) + (if c' = c then 1 else 0)) =
            ∑ c', m (i, c') := Finset.sum_congr rfl fun c' _ => key c'
        have h1 : ∑ c' : Fin r, (if c' = c then 1 else 0 : ℕ) = 1 := by simp
        rw [Finset.sum_add_distrib, h1] at hs
        rw [hda, ← hmd i]
        omega
      · rw [hdo i hi, ← hmd i]
        refine Finset.sum_congr rfl fun c' _ => ?_
        rw [Finsupp.tsub_apply, Finsupp.single_apply,
          if_neg (fun h => hi (congrArg Prod.fst h).symm), Nat.sub_zero]
  intro j jp c y hy
  simp only [M.Y, Submodule.mem_inf, Submodule.mem_iInf] at hy ⊢
  refine ⟨hpol _ _ G.uPos c ?_ ?_ y hy.1, fun k => ?_⟩
  · simp only [M.BlockData.lettersAt, if_true]
    omega
  · intro i hi
    simp only [M.BlockData.lettersAt, if_neg hi]
  · rw [ycond_vec (p := p) (r := r) (G.lettersAt j (jp + 1)) (G.lettersAt j jp) rfl]
    exact pderiv_ycond (p := p) _ _ _ G.uPos (fun _ => hB.2.2.1) c y (hy.2 k)

theorem sum_update_ite {t : ℕ} (P : Fin t → Prop) [DecidablePred P] (j : Fin t → ℕ) (i : Fin t) :
    ∑ i', (if P i' then Function.update j i (j i + 1) i' else 0) =
      ∑ i', (if P i' then j i' else 0) + (if P i then 1 else 0) := by
  have h : ∀ i', (if P i' then Function.update j i (j i + 1) i' else 0) =
      (if P i' then j i' else 0) + (if i' = i then (if P i then 1 else 0) else 0) := by
    intro i'
    by_cases hi : i' = i
    · subst hi
      rw [Function.update_self]
      split_ifs <;> simp_all
    · rw [Function.update_of_ne hi, if_neg hi, add_zero]
  rw [Finset.sum_congr rfl fun i' _ => h i', Finset.sum_add_distrib]
  simp

theorem hypTie_proved (hB : G.BlockOK) : Formalism.InvariantFactorPaths.KP.LL.HypJoin p (r := r) G := by
  have hpol : ∀ (LL LL' : M.Letters N) (a : Fin N) (c : Fin r), LL'.deg a = LL.deg a - 1 →
      (∀ i, i ≠ a → LL'.deg i = LL.deg i) →
      ∀ y ∈ M.Pol p r LL, pderiv (a, c) y ∈ M.Pol p r LL' := by
    intro LL LL' a c hda hdo y hy
    unfold M.Pol at hy ⊢
    rw [MvPolynomial.restrictSupport, AddMonoidAlgebra.supported, Submodule.mem_comap, Finsupp.mem_supported] at hy

    rw [y.as_sum, map_sum]
    refine Submodule.sum_mem _ fun m hm => ?_
    rw [MvPolynomial.pderiv_monomial]
    by_cases h0 : m (a, c) = 0
    · rw [h0, Nat.cast_zero, mul_zero, MvPolynomial.monomial_zero]
      exact zero_mem _
    · have hmd : M.MultiDeg LL m := hy (Finset.mem_coe.mpr hm)
      rw [MvPolynomial.restrictSupport, AddMonoidAlgebra.supported, Submodule.mem_comap, Finsupp.mem_supported]
      refine (Finset.coe_subset.mpr MvPolynomial.support_monomial_subset).trans ?_
      rw [Finset.coe_singleton, Set.singleton_subset_iff]
      show M.MultiDeg LL' (m - Finsupp.single (a, c) 1)
      intro i
      by_cases hi : i = a
      · subst hi
        have key : ∀ c', ((m - Finsupp.single (i, c) 1 : (Fin N × Fin r) →₀ ℕ) (i, c')) + (if c' = c then 1 else 0) =
            m (i, c') := by
          intro c'
          rw [Finsupp.tsub_apply, Finsupp.single_apply]
          by_cases hc : c' = c
          · subst hc
            rw [if_pos rfl, if_pos rfl]
            omega
          · have hne : ¬ (i, c) = (i, c') := fun h => hc (congrArg Prod.snd h).symm
            rw [if_neg hne, if_neg hc]
            simp
        have hs : ∑ c', (((m - Finsupp.single (i, c) 1 : (Fin N × Fin r) →₀ ℕ) (i, c')) + (if c' = c then 1 else 0)) =
            ∑ c', m (i, c') := Finset.sum_congr rfl fun c' _ => key c'
        have h1 : ∑ c' : Fin r, (if c' = c then 1 else 0 : ℕ) = 1 := by simp
        rw [Finset.sum_add_distrib, h1] at hs
        rw [hda, ← hmd i]
        omega
      · rw [hdo i hi, ← hmd i]
        refine Finset.sum_congr rfl fun c' _ => ?_
        rw [Finsupp.tsub_apply, Finsupp.single_apply,
          if_neg (fun h => hi (congrArg Prod.fst h).symm), Nat.sub_zero]
  intro j jp i y hy
  obtain ⟨hlt, hvW, hvE⟩ := hB.1.2.1 i
  set W := G.letterAt (G.T.pos i) with hWdef
  set E := G.letterAt (G.T.pos i + 1) with hEdef
  have hWv : (W : ℕ) = G.T.pos i := by
    simp only [hWdef, M.BlockData.letterAt]
    omega
  have hEv : (E : ℕ) = G.T.pos i + 1 := by
    simp only [hEdef, M.BlockData.letterAt]
    omega
  have hWE : W ≠ E := fun h => by
    have := congrArg Fin.val h
    omega
  have hvW' : G.LL.vec W = true := by
    rwa [show W = ⟨G.T.pos i, by omega⟩ from Fin.ext hWv]
  have hvE' : G.LL.vec E = false := by
    rwa [show E = ⟨G.T.pos i + 1, hlt⟩ from Fin.ext hEv]

  have hdeg : ∀ x : Fin N, (G.lettersAt (Function.update j i (j i + 1)) jp).deg x =
      (G.lettersAt j jp).deg x -
        (if ((x : ℕ) = G.T.pos i ∨ (x : ℕ) = G.T.pos i + 1) then 1 else 0) := by
    intro x
    simp only [M.BlockData.lettersAt]
    change G.LL.deg x - (∑ k : Fin G.T.t, if (x : ℕ) = G.T.pos k ∨
      (x : ℕ) = G.T.pos k + 1 then Function.update j i (j i + 1) k else 0) -
      (if x = G.uPos then jp else 0) =
      (G.LL.deg x - (∑ k : Fin G.T.t, if (x : ℕ) = G.T.pos k ∨
        (x : ℕ) = G.T.pos k + 1 then j k else 0) -
        (if x = G.uPos then jp else 0)) - _
    rw [sum_update_ite]
    omega
  have htie : ∀ x : MvPolynomial (Fin N × Fin r) ℚ_[p],
      Formalism.GM.tieF (fun c => (W, c)) (fun c => (E, c)) x =
      ∑ c, pderiv (W, c) (pderiv (E, c) x) := by
    intro x
    simp [Formalism.GM.tieF]
  simp only [M.Y, Submodule.mem_inf, Submodule.mem_iInf] at hy ⊢
  refine ⟨?_, fun k => ?_⟩
  · rw [htie]
    refine Submodule.sum_mem _ fun c _ => ?_
    let L1 : M.Letters N := ⟨G.LL.vec, fun x =>
      if x = E then (G.lettersAt j jp).deg x - 1 else (G.lettersAt j jp).deg x⟩
    have h1 := hpol (G.lettersAt j jp) L1 E c (by show (if E = E then _ else _) = _; rw [if_pos rfl])
      (fun x hx => by show (if x = E then _ else _) = _; rw [if_neg hx]) y hy.1
    refine hpol L1 _ W c ?_ ?_ _ h1
    · rw [hdeg W, if_pos (Or.inl hWv)]
      show _ = (if W = E then _ else _) - 1
      rw [if_neg hWE]
    · intro x hx
      rw [hdeg x]
      show _ = (if x = E then _ else _)
      by_cases hxE : x = E
      · have hxv : (x : ℕ) = G.T.pos i + 1 := by rw [hxE]; exact hEv
        rw [if_pos hxE, if_pos (Or.inr hxv)]
      · rw [if_neg hxE, if_neg, Nat.sub_zero]
        rintro (h | h)
        · exact hx (Fin.ext (h.trans hWv.symm))
        · exact hxE (Fin.ext (h.trans hEv.symm))
  · rw [ycond_vec (p := p) (r := r) (G.lettersAt (Function.update j i (j i + 1)) jp)
      (G.lettersAt j jp) rfl]
    have hx := hy.2 k
    by_cases hE : (E : ℕ) < G.T.J k
    · exact tieF_ycond (p := p) (G.lettersAt j jp) (G.T.J k) (G.T.thr k) W E (by omega) hE hvW' hvE' y hx
    · rw [htie]
      exact Submodule.sum_mem _ fun c _ => pderiv_ycond (p := p) _ _ _ W (fun _ => hvW') c _
        (pderiv_ycond (p := p) _ _ _ E (fun h => absurd h hE) c y hx)

end Hyp

section Inst

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction

variable (C0 CE1 CE2 : ℝ) (X : flipOneThree.Inst)

theorem restLL_proved {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) : RestLL C0 CE1 CE2 X :=
  restLL_of C0 CE1 CE2 X hCYb hCE1 hCE2 hH fun aTop aPlus b =>
    ⟨hypTie_proved X.p _ (gB_blockOK C0 CE1 CE2 X aTop aPlus b),
      hypU_proved X.p _ (gB_blockOK C0 CE1 CE2 X aTop aPlus b)⟩

theorem block_valuation_Zp_of_valuation_bound {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) (hV : RestVal C0 CE1 CE2 X) : BlockBoundIntegers C0 CE1 CE2 X :=
  block_valuation_Zp_of_lattice_inclusion C0 CE1 CE2 X (Nat.one_le_iff_ne_zero.mpr X.hm)
    (restLL_proved C0 CE1 CE2 X hCYb hCE1 hCE2 hH) hV

end Inst

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfValuationBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfNumericBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfNumericBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfLatticeInclusion\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfValuationBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction

section Inst

variable (C0 CE1 CE2 : ℝ) (X : flipOneThree.Inst)

def RestValNum : Prop :=
  ∀ aTop ∈ Fintype.piFinset (fun _ : Fin X.s => X.winA), ∀ aPlus ∈ X.winA,
    ∀ b, Kept X.p X.r (X.S C0 CE1 CE2) aTop b →
      ∀ l ∈ levels (gB C0 CE1 CE2 X aTop aPlus b),
        ∀ (j' : Fin (gB C0 CE1 CE2 X aTop aPlus b).T.t → ℕ) (jp' : ℕ), (gB C0 CE1 CE2 X aTop aPlus b).LevelOK j' jp' →
        ∀ μ : Formalism.GM.M.BVar (2 * X.s + 1) X.r (gB C0 CE1 CE2 X aTop aPlus b).T.t →₀ ℕ,
          (∀ a, Finsupp.weight (wL (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) a) μ =
            dLvl (gB C0 CE1 CE2 X aTop aPlus b) j' jp' a) →
          (padicValNat X.p (lvC (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) l.1 l.2 *
              degFact (gB C0 CE1 CE2 X aTop aPlus b) l.1 l.2) : ℝ) +
            2 * (expU X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) (aBig X) : ℝ) ≤
          (padicValNat X.p (μ.prod fun _ k => k.factorial) : ℝ) + levelPassageLoss X

theorem restVal_of_num (h : RestValNum C0 CE1 CE2 X) : RestVal C0 CE1 CE2 X := by
  intro aTop hT aPlus hP b hK l hl z hz μ hμ
  obtain ⟨j', jp', hl', hw⟩ := SSZ_support X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) z hz μ hμ
  exact h aTop hT aPlus hP b hK l hl j' jp' hl' μ hw

theorem block_valuation_Zp_of_numeric_bound {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) (hV : RestValNum C0 CE1 CE2 X) : BlockBoundIntegers C0 CE1 CE2 X :=
  block_valuation_Zp_of_valuation_bound C0 CE1 CE2 X hCYb hCE1 hCE2 hH (restVal_of_num C0 CE1 CE2 X hV)

end Inst

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfNumericBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ProdProdIte =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ProdProdIte", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodCountMem\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open Finset Formalism.GM Formalism.GM.M
open scoped Nat

theorem prod_prod_ite {α ι : Type} [Fintype α] [DecidableEq α] [Fintype ι] (x : ι → α) (n : ι → ℕ) :
    ∏ a : α, ∏ i : ι, (if x i = a then n i else 0)! = ∏ i, (n i)! := by
  rw [Finset.prod_comm]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [Finset.prod_eq_single (x i)]
  · simp
  · intro b _ hb
    simp [Ne.symm hb]
  · simp

theorem smul_ite_one (n : ℕ) (c : Prop) [Decidable c] : n • (if c then 1 else 0 : ℕ) = if c then n else 0 := by
  split_ifs <;> simp

section Block

variable (p : ℕ) [hp : Fact p.Prime] {N r : ℕ} [NeZero r] (G : M.BlockData N)

def fL (j : Fin G.T.t → ℕ) (jp : ℕ) (a : Fin (N + 1)) : ℕ :=
  (∏ i, ((if M.finPos N (G.T.pos i) = a then j i else 0)! * (if M.finPos N (G.T.pos i + 1) = a then j i else 0)!)) *
    ((if Fin.castSucc G.uPos = a then jp else 0)! * (if Fin.last N = a then jp else 0)!) *
    (∏ i, (if M.finPos N (G.T.pos i) = a then G.T.z i else 0)!) *
    (if Fin.castSucc G.uPos = a then G.zPlus else 0)! *
    (∏ a0 : Fin N, (if Fin.castSucc a0 = a then (G.lettersAt j jp).deg a0 else 0)!) *
    (if Fin.last N = a then G.B - jp else 0)!

theorem fL_dvd (j : Fin G.T.t → ℕ) (jp : ℕ) (a : Fin (N + 1)) : fL G j jp a ∣ (dLvl G j jp a)! := by
  have hfac : ∀ {x y X Y : ℕ}, x ∣ X ! → y ∣ Y ! → x * y ∣ (X + Y)! := fun hx hy =>
    (mul_dvd_mul hx hy).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)
  unfold fL dLvl chDeg
  simp only [smul_add, smul_ite_one]
  refine hfac (hfac (hfac (hfac (hfac ?_ ?_) ?_) dvd_rfl) ?_) dvd_rfl
  · exact (Finset.prod_dvd_prod_of_dvd _ _ fun i _ =>
      Nat.factorial_mul_factorial_dvd_factorial_add _ _).trans (Nat.prod_factorial_dvd_factorial_sum _ _)
  · exact Nat.factorial_mul_factorial_dvd_factorial_add _ _
  · exact Nat.prod_factorial_dvd_factorial_sum _ _
  · exact Nat.prod_factorial_dvd_factorial_sum _ _

theorem prod_fL (j : Fin G.T.t → ℕ) (jp : ℕ) :
    ∏ a, fL G j jp a = (∏ i, (j i)!) * (∏ i, (j i)!) * (jp ! * jp !) * (∏ i, (G.T.z i)!) * G.zPlus ! *
      (∏ a0, ((G.lettersAt j jp).deg a0)!) * (G.B - jp)! := by
  have hsingle : ∀ (b : Fin (N + 1)) (n : ℕ), ∏ a, (if b = a then n else 0)! = n ! := by
    intro b n
    rw [Finset.prod_eq_single b]
    · simp
    · intro a _ ha
      simp [Ne.symm ha]
    · simp
  unfold fL
  simp only [Finset.prod_mul_distrib, prod_prod_ite, hsingle]

def binT (j : Fin G.T.t → ℕ) (jp : ℕ) (i : Fin G.T.t) : ℕ :=
  ((G.lettersAt j jp).deg (G.letterAt (G.T.pos i)) +
    (G.lettersAt j jp).deg (G.letterAt (G.T.pos i + 1)) + r + G.T.z i + 1 + j i - 1).choose (j i)

def binP (jp : ℕ) : ℕ := ((G.LL.deg G.uPos - jp) + (G.B - jp) + r + G.zPlus + 1 + jp - 1).choose jp

theorem lvC_eq (j : Fin G.T.t → ℕ) (jp : ℕ) :
    lvC (r := r) G j jp * degFact G j jp = (∏ a, fL G j jp a) * ((∏ i, binT (r := r) G j jp i) * binP (r := r) G jp) := by
  rw [prod_fL]
  unfold lvC degFact binT binP
  rw [Finset.prod_mul_distrib]
  ring

theorem val_lvC_le (j : Fin G.T.t → ℕ) (jp : ℕ) (L : ℕ)
    (h1 : ∀ i, Nat.log p ((G.lettersAt j jp).deg (G.letterAt (G.T.pos i)) +
      (G.lettersAt j jp).deg (G.letterAt (G.T.pos i + 1)) + r + G.T.z i + 1 + j i - 1) ≤ L)
    (h2 : Nat.log p ((G.LL.deg G.uPos - jp) + (G.B - jp) + r + G.zPlus + 1 + jp - 1) ≤ L) :
    padicValNat p (lvC (r := r) G j jp * degFact G j jp) ≤
      padicValNat p (∏ a, (dLvl G j jp a)!) + (G.T.t + 1) * L := by
  have hp' := hp.out
  rw [lvC_eq]
  by_cases h0 : (∏ a, fL G j jp a) * ((∏ i, binT (r := r) G j jp i) * binP (r := r) G jp) = 0
  · simp [h0, Nat.padicValNat_def]
  obtain ⟨hA, hB⟩ := mul_ne_zero_iff.mp h0
  obtain ⟨hBt, hBp⟩ := mul_ne_zero_iff.mp hB
  have hD : (∏ a, (dLvl G j jp a)!) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun a _ => Nat.factorial_ne_zero _
  rw [Nat.padicValNat_def, Nat.padicValNat_def,
    ← Nat.factorization_def _ hp', ← Nat.factorization_def _ hp', Nat.factorization_mul hA hB,
    Nat.factorization_mul hBt hBp]
  simp only [Finsupp.add_apply]
  have h1' : (∏ a, fL G j jp a).factorization p ≤ (∏ a, (dLvl G j jp a)!).factorization p :=
    (Nat.factorization_le_iff_dvd hA hD).mpr
      (Finset.prod_dvd_prod_of_dvd _ _ fun a _ => fL_dvd G j jp a) p
  have h2' : (∏ i, binT (r := r) G j jp i).factorization p ≤ G.T.t * L := by
    rw [Nat.factorization_prod (fun i _ => Finset.prod_ne_zero_iff.mp hBt i (Finset.mem_univ _))]
    rw [Finset.sum_apply']
    calc ∑ i, (binT (r := r) G j jp i).factorization p ≤ ∑ _i : Fin G.T.t, L :=
          Finset.sum_le_sum fun i _ => le_trans Nat.factorization_choose_le_log (h1 i)
      _ = G.T.t * L := by simp
  have h3' : (binP (r := r) G jp).factorization p ≤ L := le_trans Nat.factorization_choose_le_log h2
  rw [add_mul, one_mul]
  linarith

end Block

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ProdProdIte =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FinPosEqCast =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FinPosEqCast", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodCountMem\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ProdProdIte\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ValFactSumLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open Finset Formalism.GM Formalism.GM.M
open scoped Nat

section Block

variable (p : ℕ) [hp : Fact p.Prime] {N r : ℕ} [NeZero r] (G : M.BlockData N)

def dTot (a : Fin (N + 1)) : ℕ :=
  (∑ i, G.T.z i • (if M.finPos N (G.T.pos i) = a then 1 else 0)) +
    G.zPlus • (if Fin.castSucc G.uPos = a then 1 else 0) + chDeg G.LL a + (if Fin.last N = a then G.B else 0)

theorem chDeg_cast (LL : M.Letters N) (a0 : Fin N) : chDeg LL (Fin.castSucc a0) = LL.deg a0 := by
  unfold chDeg
  rw [Finset.sum_eq_single a0]
  · simp
  · intro b _ hb
    rw [if_neg]
    intro h
    exact hb (Fin.castSucc_injective _ h)
  · intro h
    exact absurd (Finset.mem_univ a0) h

theorem chDeg_last (LL : M.Letters N) : chDeg LL (Fin.last N) = 0 := by
  unfold chDeg
  apply Finset.sum_eq_zero
  intro b _
  rw [if_neg]
  exact Fin.castSucc_ne_last b

theorem finPos_eq_cast (k : ℕ) (hk : k < N) (a0 : Fin N) : M.finPos N k = Fin.castSucc a0 ↔ (a0 : ℕ) = k := by
  unfold M.finPos
  rw [Fin.ext_iff]
  simp only [Fin.coe_castSucc]
  rw [min_eq_left hk.le]
  exact eq_comm

theorem finPos_ne_last (k : ℕ) (hk : k < N) : M.finPos N k ≠ Fin.last N := by
  unfold M.finPos
  rw [Ne, Fin.ext_iff]
  simp only [Fin.val_last]
  rw [min_eq_left hk.le]
  exact hk.ne

theorem level_room (hB : G.BlockOK) (j : Fin G.T.t → ℕ) (jp : ℕ) (hl : G.LevelOK j jp) (a0 : Fin N) :
    (∑ i, if (a0 : ℕ) = G.T.pos i ∨ (a0 : ℕ) = G.T.pos i + 1 then j i else 0) + (if a0 = G.uPos then jp else 0) ≤
      G.LL.deg a0 := by
  obtain ⟨⟨hmono, hvec, _⟩, hlt, _, _⟩ := hB
  obtain ⟨hj, hjp⟩ := hl
  have hdisj : ∀ b c : Fin G.T.t, G.T.pos b + 1 ≠ G.T.pos c := by
    intro b c h
    obtain ⟨hb1, _, hbf⟩ := hvec b
    obtain ⟨hc1, hct, _⟩ := hvec c
    have e : (⟨G.T.pos b + 1, hb1⟩ : Fin N) = ⟨G.T.pos c, by omega⟩ := Fin.ext h
    rw [e] at hbf
    rw [hbf] at hct
    exact Bool.false_ne_true hct
  by_cases hu : a0 = G.uPos
  · rw [if_pos hu, Finset.sum_eq_zero]
    · rw [hu]
      omega
    intro i _
    rw [if_neg]
    have h1 := hlt i
    have h2 : (a0 : ℕ) = G.uPos := by rw [hu]
    omega
  · rw [if_neg hu, add_zero]
    by_cases hex : ∃ i, (a0 : ℕ) = G.T.pos i ∨ (a0 : ℕ) = G.T.pos i + 1
    · obtain ⟨i0, hi0⟩ := hex
      rw [Finset.sum_eq_single i0]
      · rw [if_pos hi0]
        obtain ⟨hN0, _, _⟩ := hvec i0
        rcases hi0 with h | h
        · exact (hj i0).1.trans_eq (congrArg G.LL.deg (Fin.ext (by simp; omega)))
        · exact (hj i0).2.trans_eq (congrArg G.LL.deg (Fin.ext (by simp; omega)))
      · intro b _ hb
        rw [if_neg]
        intro hb'
        rcases hb' with h1 | h1 <;> rcases hi0 with h2 | h2
        · exact hb (hmono.injective (by omega))
        · exact hdisj i0 b (by omega)
        · exact hdisj b i0 (by omega)
        · exact hb (hmono.injective (by omega))
      · intro h'
        exact absurd (Finset.mem_univ i0) h'
    · push_neg at hex
      rw [Finset.sum_eq_zero]
      · exact Nat.zero_le _
      intro i _
      rw [if_neg]
      intro h
      rcases h with h | h
      · exact (hex i).1 h
      · exact (hex i).2 h

theorem dLvl_eq (hB : G.BlockOK) (j : Fin G.T.t → ℕ) (jp : ℕ) (hl : G.LevelOK j jp) (a : Fin (N + 1)) :
    dLvl G j jp a = dTot G a := by
  have hvec := hB.1.2.1
  have hjp := hl.2
  have hposN : ∀ i, G.T.pos i + 1 < N := fun i => (hvec i).1
  induction a using Fin.lastCases with
  | last =>
    have hA : (∑ i, j i • ((if M.finPos N (G.T.pos i) = Fin.last N then 1 else 0) +
        (if M.finPos N (G.T.pos i + 1) = Fin.last N then 1 else 0))) = 0 := by
      apply Finset.sum_eq_zero
      intro i _
      rw [if_neg (finPos_ne_last _ (by have := hposN i; omega)), if_neg (finPos_ne_last _ (hposN i))]
      simp
    have hu : ¬ Fin.castSucc G.uPos = Fin.last N := Fin.castSucc_ne_last _
    unfold dLvl dTot
    rw [hA, chDeg_last, chDeg_last, if_neg hu, if_pos rfl, if_pos rfl, if_pos rfl]
    simp only [smul_eq_mul]
    omega
  | cast a0 =>
    have hA : (∑ i, j i • ((if M.finPos N (G.T.pos i) = Fin.castSucc a0 then 1 else 0) +
        (if M.finPos N (G.T.pos i + 1) = Fin.castSucc a0 then 1 else 0))) =
        ∑ i, if (a0 : ℕ) = G.T.pos i ∨ (a0 : ℕ) = G.T.pos i + 1 then j i else 0 := by
      apply Finset.sum_congr rfl
      intro i _
      have e1 := finPos_eq_cast (G.T.pos i) (by have := hposN i; omega) a0
      have e2 := finPos_eq_cast (G.T.pos i + 1) (hposN i) a0
      by_cases h1 : (a0 : ℕ) = G.T.pos i
      · have h2 : ¬ (a0 : ℕ) = G.T.pos i + 1 := by omega
        simp only [e1, e2, h1, if_true]
        simp
      · by_cases h2 : (a0 : ℕ) = G.T.pos i + 1
        · simp only [e1, e2, h2, if_true, or_true]
          simp
        · simp only [e1, e2, h1, h2, if_false, or_false]
          simp
    have hB' : jp • ((if Fin.castSucc G.uPos = Fin.castSucc a0 then 1 else 0) +
        (if Fin.last N = Fin.castSucc a0 then 1 else 0)) = if a0 = G.uPos then jp else 0 := by
      have hL : ¬ Fin.last N = Fin.castSucc a0 := fun h => Fin.castSucc_ne_last a0 h.symm
      rw [if_neg hL]
      by_cases h : a0 = G.uPos
      · rw [if_pos (by rw [h]), if_pos h]
        simp
      · rw [if_neg (fun e => h (Fin.castSucc_injective _ e).symm), if_neg h]
        simp
    have hC : chDeg (G.lettersAt j jp) (Fin.castSucc a0) =
        (G.LL.deg a0 - ∑ i, if (a0 : ℕ) = G.T.pos i ∨ (a0 : ℕ) = G.T.pos i + 1 then j i else 0) -
          (if a0 = G.uPos then jp else 0) := by
      rw [chDeg_cast]
      rfl
    have hD := level_room G hB j jp hl a0
    have hL : ¬ Fin.last N = Fin.castSucc a0 := fun h => Fin.castSucc_ne_last a0 h.symm
    unfold dLvl dTot
    rw [hA, hB', hC, chDeg_cast, if_neg hL, if_neg hL]
    omega

theorem sum_ite_inj_le {ι α : Type} [Fintype ι] [DecidableEq α] (x : ι → α) (hx : Function.Injective x) (n : ι → ℕ)
    (a : α) (Mx : ℕ) (h : ∀ i, n i ≤ Mx) : ∑ i, n i • (if x i = a then 1 else 0) ≤ Mx := by
  by_cases hex : ∃ i, x i = a
  · obtain ⟨i0, hi0⟩ := hex
    rw [Finset.sum_eq_single i0]
    · simp [hi0, h i0]
    · intro b _ hb
      rw [if_neg]
      · simp
      intro hba
      exact hb (hx (hba.trans hi0.symm))
    · intro h'
      exact absurd (Finset.mem_univ i0) h'
  · push_neg at hex
    rw [Finset.sum_eq_zero]
    · exact Nat.zero_le _
    intro i _
    simp [hex i]

theorem dTot_le (hB : G.BlockOK) (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hBa : G.B ≤ 2 * A)
    (hz : ∀ i, G.T.z i ≤ 2 * A) (hzp : G.zPlus ≤ 2 * A) (a : Fin (N + 1)) : dTot G a ≤ 8 * A := by
  classical
  have hpN : ∀ i, G.T.pos i + 1 < N := fun i => (hB.2.1 i).trans G.uPos.2
  have hinj : Function.Injective (fun i => M.finPos N (G.T.pos i)) := by
    intro i i' h
    have h' : min (G.T.pos i) N = min (G.T.pos i') N := congrArg Fin.val h
    have h1 := hpN i
    have h2 := hpN i'
    exact hB.1.1.injective (by omega)
  have e1 := sum_ite_inj_le (fun i => M.finPos N (G.T.pos i)) hinj G.T.z a (2 * A) hz
  have e2 : G.zPlus • (if Fin.castSucc G.uPos = a then 1 else 0) ≤ 2 * A := by
    split_ifs <;> simp [hzp]
  have e3 : chDeg G.LL a ≤ 2 * A := by
    induction a using Fin.lastCases with
    | last => rw [chDeg_last]; exact Nat.zero_le _
    | cast a0 => rw [chDeg_cast]; exact hdeg a0
  have e4 : (if Fin.last N = a then G.B else 0) ≤ 2 * A := by
    split_ifs
    · exact hBa
    · exact Nat.zero_le _
  unfold dTot
  omega

theorem val_gen (hB : G.BlockOK) (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hBa : G.B ≤ 2 * A)
    (hz : ∀ i, G.T.z i ≤ 2 * A) (hzp : G.zPlus ≤ 2 * A)
    (j : Fin G.T.t → ℕ) (jp : ℕ) (hl : G.LevelOK j jp) (j' : Fin G.T.t → ℕ) (jp' : ℕ) (hl' : G.LevelOK j' jp')
    (μ : M.BVar N r G.T.t →₀ ℕ) (hw : ∀ a, Finsupp.weight (wL (r := r) G a) μ = dLvl G j' jp' a) :
    padicValNat p (lvC (r := r) G j jp * degFact G j jp) ≤ padicValNat p (μ.prod fun _ k => k !) +
      (((N + 1) * r + (G.T.t + 1) * 2) + (G.T.t + 1)) * Nat.log p (8 * A + r) := by
  have hL : ∀ n, n ≤ 8 * A + r → Nat.log p n ≤ Nat.log p (8 * A + r) :=
    fun n hn => Nat.log_mono_right hn
  have hld : ∀ x, (G.lettersAt j jp).deg x ≤ 2 * A := by
    intro x
    have := hdeg x
    simp only [M.BlockData.lettersAt]
    omega
  have hj : ∀ i, j i ≤ 2 * A := fun i => (hl.1 i).1.trans (hdeg _)
  have h1 := val_lvC_le (r := r) p G j jp (Nat.log p (8 * A + r))
    (fun i => hL _ (by
      have := hld (G.letterAt (G.T.pos i))
      have := hld (G.letterAt (G.T.pos i + 1))
      have := hz i
      have := hj i
      omega))
    (hL _ (by
      have := hdeg G.uPos
      have := hl.2
      have := hzp
      have := hBa
      omega))
  have h2 := val_letters_le p G μ (dLvl G j' jp') hw (Nat.log p (8 * A + r))
    (fun a => hL _ (by
      rw [dLvl_eq G hB j' jp' hl' a]
      have := dTot_le G hB A hdeg hBa hz hzp a
      omega))
  have hprod : ∏ a, (dLvl G j jp a)! = ∏ a, (dLvl G j' jp' a)! := by
    apply Finset.prod_congr rfl
    intro a _
    rw [dLvl_eq G hB j jp hl a, dLvl_eq G hB j' jp' hl' a]
  rw [hprod] at h1
  rw [Nat.add_mul ((N + 1) * r + (G.T.t + 1) * 2) (G.T.t + 1)]
  omega

end Block

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FinPosEqCast =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationOverZpHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationOverZpHolds", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfNumericBound\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FinPosEqCast\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction

theorem loss_num (s t r Λ L1 U k0 : ℝ) (ht0 : 0 ≤ t) (hts : t ≤ s) (hr : 4 ≤ r) (hΛ : 1 ≤ Λ) (hL0 : 0 ≤ L1)
    (hL : L1 ≤ Λ) (hU : U ≤ (t + 1) * ((r + 1) * (Λ + 1) + 1)) (hk : 0 ≤ k0) :
    ((((2 * s + 1) + 1) * r + (t + 1) * 2) + (t + 1)) * L1 + 2 * U ≤ 10 * (s + 1) * (r + 1) * Λ + k0 := by
  have hs0 : 0 ≤ s := le_trans ht0 hts
  have hr0 : 0 ≤ r := by linarith
  have hΛ0 : 0 ≤ Λ := by linarith
  have hA : 0 ≤ (((2 * s + 1) + 1) * r + (t + 1) * 2) + (t + 1) := by positivity
  have e1 : ((((2 * s + 1) + 1) * r + (t + 1) * 2) + (t + 1)) * L1 ≤
      ((2 * s + 2) * r + 3 * (s + 1)) * Λ := by
    calc ((((2 * s + 1) + 1) * r + (t + 1) * 2) + (t + 1)) * L1
        ≤ ((((2 * s + 1) + 1) * r + (t + 1) * 2) + (t + 1)) * Λ := mul_le_mul_of_nonneg_left hL hA
      _ ≤ ((2 * s + 2) * r + 3 * (s + 1)) * Λ := by
          apply mul_le_mul_of_nonneg_right _ hΛ0
          have : ((2 * s + 1) + 1) * r = (2 * s + 2) * r := by ring
          linarith
  have e2 : U ≤ (s + 1) * ((r + 1) * (Λ + 1) + 1) := by
    have : 0 ≤ (r + 1) * (Λ + 1) + 1 := by positivity
    exact hU.trans (mul_le_mul_of_nonneg_right (by linarith) this)
  have e3 : (s + 1) * ((r + 1) * (Λ + 1) + 1) ≤ (s + 1) * ((2 * r + 3) * Λ) := by
    apply mul_le_mul_of_nonneg_left _ (by linarith)
    have hrΛ : r + 2 ≤ (r + 2) * Λ := le_mul_of_one_le_right (by linarith) hΛ
    have h1 : (r + 1) * (Λ + 1) + 1 = (r + 1) * Λ + (r + 2) := by ring
    have h2 : (2 * r + 3) * Λ = (r + 1) * Λ + (r + 2) * Λ := by ring
    linarith
  have hsum : ((2 * s + 2) * r + 3 * (s + 1)) * Λ + 2 * ((s + 1) * ((2 * r + 3) * Λ)) ≤
      10 * (s + 1) * (r + 1) * Λ := by
    have h1 : ((2 * s + 2) * r + 3 * (s + 1)) * Λ + 2 * ((s + 1) * ((2 * r + 3) * Λ)) =
        (6 * r + 9) * ((s + 1) * Λ) := by ring
    have h2 : 10 * (s + 1) * (r + 1) * Λ = (10 * r + 10) * ((s + 1) * Λ) := by ring
    rw [h1, h2]
    exact mul_le_mul_of_nonneg_right (by linarith) (by positivity)
  linarith [hL0]

section Inst

variable (C0 CE1 CE2 : ℝ) (X : flipOneThree.Inst)

theorem restValNum_proved {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) : RestValNum C0 CE1 CE2 X := by
  classical
  intro aTop hT aPlus hP b hK l hl j' jp' hl' μ hw
  obtain ⟨hA1, h2, h3, h4, h5⟩ := gB_deg_le C0 CE1 CE2 X hCYb hCE1 hCE2 hH aTop hT aPlus hP b hK
  have hF := hiFacts C0 CYb Cde Ck CD Cb Cc X hCYb hH
  have hlok : (gB C0 CE1 CE2 X aTop aPlus b).LevelOK l.1 l.2 := (Finset.mem_filter.1 hl).2
  have hv := val_gen X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) (gB_blockOK C0 CE1 CE2 X aTop aPlus b) (aBig X)
    h2 h3 h4 h5 l.1 l.2 hlok j' jp' hl' μ hw
  have hvR : (padicValNat X.p (lvC (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) l.1 l.2 *
      degFact (gB C0 CE1 CE2 X aTop aPlus b) l.1 l.2) : ℝ) ≤
      (padicValNat X.p (μ.prod fun _ k => k.factorial) : ℝ) +
        (((((2 * (X.s : ℝ) + 1) + 1) * (X.r : ℝ) + (((X.S C0 CE1 CE2).t : ℝ) + 1) * 2) +
          (((X.S C0 CE1 CE2).t : ℝ) + 1)) * (Nat.log X.p (8 * aBig X + X.r) : ℝ)) := by
    have := (Nat.cast_le (α := ℝ)).2 hv
    push_cast at this
    exact this

  have hmR : (4 : ℝ) ≤ (X.r : ℝ) := by exact_mod_cast hF.m4
  have hp25 : (25 : ℝ) ≤ (X.p : ℝ) := by
    have h1 : (25 : ℝ) ≤ ((X.r : ℝ) + 1) ^ 2 := by
      calc (25 : ℝ) = 5 ^ 2 := by norm_num
        _ ≤ ((X.r : ℝ) + 1) ^ 2 := pow_le_pow_left₀ (by norm_num) (by linarith) 2
    linarith [hF.p_ge]
  have hp1 : (1 : ℝ) < (X.p : ℝ) := by linarith
  have hs0 : (0 : ℝ) ≤ (X.s : ℝ) := Nat.cast_nonneg _
  have ha1 : (1 : ℝ) ≤ (X.L.a : ℝ) := hF.a1
  have hsm : 2 * (X.s : ℝ) + 2 ≤ (X.r : ℝ) := by exact_mod_cast hF.s_le
  have hsp : 3 * (X.s : ℝ) + 2 ≤ (X.p : ℝ) := by
    have h1 : (X.r : ℝ) + 1 ≤ ((X.r : ℝ) + 1) ^ 2 := le_self_pow₀ (by linarith) (by norm_num)
    have h2 : 3 * (X.s : ℝ) + 2 ≤ 2 * (X.r : ℝ) := by linarith
    have h3 : 2 * (X.r : ℝ) ≤ ((X.r : ℝ) + 1) ^ 2 := by
      calc 2 * (X.r : ℝ) ≤ 5 * ((X.r : ℝ) + 1) := by linarith
        _ ≤ ((X.r : ℝ) + 1) * ((X.r : ℝ) + 1) := mul_le_mul_of_nonneg_right (by linarith) (by linarith)
        _ = ((X.r : ℝ) + 1) ^ 2 := (sq _).symm
    linarith [hF.p_ge]
  have hbase : (0 : ℝ) < 8 * (X.L.a : ℝ) + (X.r : ℝ) := by linarith
  have hΛ : 1 ≤ lgA X.p X.L.a X.r := by
    unfold lgA
    have : 0 ≤ Real.logb X.p (8 * (X.L.a : ℝ) + (X.r : ℝ)) := Real.logb_nonneg hp1 (by linarith)
    linarith
  have hbig : Real.logb X.p (8 * (aBig X : ℝ) + (X.r : ℝ)) ≤ lgA X.p X.L.a X.r := by
    have e1 : 8 * (aBig X : ℝ) + (X.r : ℝ) ≤ (3 * (X.s : ℝ) + 2) * (8 * (X.L.a : ℝ) + (X.r : ℝ)) := by
      unfold aBig; push_cast
      have hsr : (X.r : ℝ) ≤ (3 * (X.s : ℝ) + 2) * (X.r : ℝ) := le_mul_of_one_le_left (by linarith) (by linarith)
      have h1 : (3 * (X.s : ℝ) + 2) * (8 * (X.L.a : ℝ) + (X.r : ℝ)) =
          8 * ((3 * (X.s : ℝ) + 2) * (X.L.a : ℝ)) + (3 * (X.s : ℝ) + 2) * (X.r : ℝ) := by ring
      linarith
    have e0 : (0 : ℝ) < 8 * (aBig X : ℝ) + (X.r : ℝ) := by
      have : (0 : ℝ) ≤ (aBig X : ℝ) := Nat.cast_nonneg _
      linarith
    have e2 := Real.logb_le_logb_of_le hp1 e0 e1
    rw [Real.logb_mul (by linarith) hbase.ne'] at e2
    have e3 : Real.logb X.p (3 * (X.s : ℝ) + 2) ≤ 1 := by
      rw [Real.logb_le_iff_le_rpow hp1 (by linarith), Real.rpow_one]
      exact hsp
    unfold lgA
    linarith
  have hL1 : (Nat.log X.p (8 * aBig X + X.r) : ℝ) ≤ lgA X.p X.L.a X.r := by
    have := Real.natLog_le_logb (8 * aBig X + X.r) X.p
    push_cast at this
    exact this.trans hbig
  have hU : (expU X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) (aBig X) : ℝ) ≤
      (((X.S C0 CE1 CE2).t : ℝ) + 1) * (((X.r : ℝ) + 1) * (lgA X.p X.L.a X.r + 1) + 1) := by
    have e1 : (expU X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) (aBig X) : ℝ) =
        (((X.S C0 CE1 CE2).t : ℝ) + 1) * (⌈((X.r : ℝ) + 1) * Formalism.GM.lgV2 X.p (aBig X) X.r⌉₊ : ℝ) := by
      unfold expU
      push_cast
      rfl
    rw [e1]
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    have e2 : Formalism.GM.lgV2 X.p (aBig X) X.r ≤ lgA X.p X.L.a X.r + 1 := by
      unfold Formalism.GM.lgV2
      linarith
    have e3 : 0 ≤ Formalism.GM.lgV2 X.p (aBig X) X.r := by
      unfold Formalism.GM.lgV2
      have : 0 ≤ Real.logb X.p (8 * (aBig X : ℝ) + (X.r : ℝ)) := by
        apply Real.logb_nonneg hp1
        have : (0 : ℝ) ≤ (aBig X : ℝ) := Nat.cast_nonneg _
        linarith
      linarith
    have e4 := (Nat.ceil_lt_add_one (show 0 ≤ ((X.r : ℝ) + 1) * Formalism.GM.lgV2 X.p (aBig X) X.r by positivity)).le
    refine e4.trans ?_
    have : ((X.r : ℝ) + 1) * Formalism.GM.lgV2 X.p (aBig X) X.r ≤ ((X.r : ℝ) + 1) * (lgA X.p X.L.a X.r + 1) :=
      mul_le_mul_of_nonneg_left e2 (by positivity)
    linarith
  have hk0 : 0 ≤ kappaZeroExponent X.p X.L.a X.Nt X.r := by
    unfold kappaZeroExponent
    have : 0 ≤ Real.logb X.p (X.L.a : ℝ) := Real.logb_nonneg hp1 ha1
    positivity
  have hts : ((X.S C0 CE1 CE2).t : ℝ) ≤ (X.s : ℝ) := by
    have : (X.S C0 CE1 CE2).t ≤ X.s := Nat.sub_le _ _
    exact_mod_cast this
  have hfin := loss_num (X.s : ℝ) ((X.S C0 CE1 CE2).t : ℝ) (X.r : ℝ) (lgA X.p X.L.a X.r)
    (Nat.log X.p (8 * aBig X + X.r) : ℝ) (expU X.p (r := X.r) (gB C0 CE1 CE2 X aTop aPlus b) (aBig X) : ℝ)
    (kappaZeroExponent X.p X.L.a X.Nt X.r) (Nat.cast_nonneg _) hts hmR hΛ (Nat.cast_nonneg _) hL1 hU hk0
  unfold levelPassageLoss
  linarith

theorem block_valuation_over_Zp_holds {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) : BlockBoundIntegers C0 CE1 CE2 X :=
  block_valuation_Zp_of_numeric_bound C0 CE1 CE2 X hCYb hCE1 hCE2 hH (restValNum_proved C0 CE1 CE2 X hCYb hCE1 hCE2 hH)

end Inst

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationOverZpHolds =====
