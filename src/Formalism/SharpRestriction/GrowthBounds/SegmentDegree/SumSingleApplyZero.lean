module

public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.MemColRangeOfLeEntry
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LeIffLtColH
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ScaleSCoeffZero
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeS
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.PsiCutSupported
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardIcutFilter, Formalism.SharpRestriction.GrowthBounds.SegmentDegree.KillOfEmpty, Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumSingleApplyZero

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardIcutFilter =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardIcutFilter", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.MemColRangeOfLeEntry\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LeIffLtColH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas Formalism.MainNotions.G.Joints.StandardMonomialSpace

section Abs3

variable {N r : ℕ}

theorem Icut_eq [NeZero r] {n0 : ℕ} {be : ℤ} {ν : Fin (N + 1) → Fin r → ℤ} (H : PlHyp n0 be ν) (c : ℤ) :
    Icut n0 ν c = if 1 ≤ c ∧ c ≤ be then Finset.univ \ riseA n0 ν c r else ∅ := by
  classical
  unfold Icut
  rw [Ican_eq H]
  split_ifs
  · rfl
  · exact Finset.empty_sdiff _

theorem pEnd_cut {n0 : ℕ} (hn : n0 ≤ N) (ν : Fin (N + 1) → Fin r → ℤ) : pEnd (cutPath n0 ν) = stg ν n0 := by
  rw [pEnd_eq, stg_cut n0 ν N le_rfl, min_eq_right hn]

theorem riseA_filter (n0 : ℕ) (ν : Fin (N + 1) → Fin r → ℤ) (c : ℤ) (t : Fin r) :
    (riseA n0 ν c r).filter (· ≤ t) = riseA n0 ν c r \ riseA n0 ν c (r - 1 - t.val) := by
  classical
  ext m
  have hm := m.isLt
  have ht := t.isLt
  simp only [riseA, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_sdiff, not_and]
  constructor
  · rintro ⟨⟨h1, h2⟩, h3⟩
    refine ⟨⟨h1, h2⟩, fun h4 => ?_⟩
    have : m.val ≤ t.val := h3
    omega
  · rintro ⟨⟨h1, h2⟩, h3⟩
    refine ⟨⟨h1, h2⟩, ?_⟩
    by_contra h4
    have h5 : t.val < m.val := not_le.mp h4
    exact h3 (by omega) h2

theorem riseA_mono (n0 : ℕ) (ν : Fin (N + 1) → Fin r → ℤ) (c : ℤ) {s t : ℕ} (h : s ≤ t) :
    riseA n0 ν c s ⊆ riseA n0 ν c t := by
  classical
  intro m
  simp only [riseA, Finset.mem_filter, Finset.mem_univ, true_and]
  rintro ⟨h1, h2⟩
  exact ⟨by omega, h2⟩

theorem card_Icut_filter [NeZero r] {n0 : ℕ} (hN : n0 + r = N) {be : ℤ} {ν : Fin (N + 1) → Fin r → ℤ}
    (H : PlHyp n0 be ν) (c : ℤ) (hc : 1 ≤ c ∧ c ≤ be) (t : Fin r) :
    ((Finset.univ \ riseA n0 ν c r).filter (· ≤ t)).card + r =
      t.val + 1 + colH (stg ν (n0 + (r - 1 - t.val))) c := by
  classical
  have ht := t.isLt
  have h1 : ((Finset.univ \ riseA n0 ν c r).filter (· ≤ t)).card + ((riseA n0 ν c r).filter (· ≤ t)).card =
      t.val + 1 := by
    rw [← Finset.card_union_of_disjoint]
    · have : (Finset.univ \ riseA n0 ν c r).filter (· ≤ t) ∪ (riseA n0 ν c r).filter (· ≤ t) = Finset.Iic t := by
        ext m
        simp only [Finset.mem_union, Finset.mem_filter, Finset.mem_sdiff, Finset.mem_univ, true_and, Finset.mem_Iic]
        tauto
      rw [this, Fin.card_Iic]
    · rw [Finset.disjoint_left]
      intro m hm hm'
      simp only [Finset.mem_filter, Finset.mem_sdiff, Finset.mem_univ, true_and] at hm hm'
      exact hm.1 hm'.1
  have h2 : ((riseA n0 ν c r).filter (· ≤ t)).card + (riseA n0 ν c (r - 1 - t.val)).card = (riseA n0 ν c r).card := by
    rw [riseA_filter, Finset.card_sdiff_add_card_eq_card (riseA_mono n0 ν c (by omega))]
  have h3 := card_riseA H c r le_rfl
  have h4 := card_riseA H c (r - 1 - t.val) (by omega)
  have hNr : colH (stg ν N) c = r := colH_all fun m => by rw [H.fin]; exact hc.2
  rw [hN, hNr] at h3
  omega

theorem isSt_cut [NeZero r] {n0 : ℕ} (hN : n0 + r = N) {be : ℤ} {ν : Fin (N + 1) → Fin r → ℤ} (H : PlHyp n0 be ν) :
    IsSt (cutPath n0 ν) (Icut n0 ν) := by
  classical
  have hcard : ∀ c, (Icut n0 ν c).card =
      if 1 ≤ c then colH (pEnd (cutPath n0 ν)) c else r - colH (pEnd (cutPath n0 ν)) c := by
    intro c
    rw [pEnd_cut (by omega), Icut_eq H]
    by_cases h1 : 1 ≤ c
    · rw [if_pos h1]
      by_cases h2 : c ≤ be
      · rw [if_pos ⟨h1, h2⟩, Finset.card_sdiff_of_subset (Finset.subset_univ _), Finset.card_univ, Fintype.card_fin]
        have h3 := card_riseA H c r le_rfl
        have hNr : colH (stg ν N) c = r := colH_all fun m => by rw [H.fin]; exact h2
        rw [hN, hNr] at h3
        omega
      · rw [if_neg fun h => h2 h.2, Finset.card_empty,
          colH_none fun m => lt_of_le_of_lt (H.rng n0 (by omega) m).2 (by omega)]
    · rw [if_neg h1, if_neg fun h => h1 h.1, Finset.card_empty,
        colH_all fun m => le_trans (by omega) (H.rng n0 (by omega) m).1]
      omega
  refine ⟨?_, hcard, ?_⟩
  · intro c hc
    by_cases h : 1 ≤ c ∧ c ≤ be
    · rw [← Finset.card_eq_zero, hcard c, if_pos h.1, pEnd_cut (by omega)]
      apply colH_none
      intro m
      by_contra hge
      apply hc
      refine mem_colRange_of_le_entry (cutPath n0 ν) ⟨n0, by omega⟩ m (by omega) ?_
      have : cutPath n0 ν ⟨n0, by omega⟩ m = stg ν n0 m := by simp [cutPath]
      rw [this]; omega
    · rw [Icut_eq H, if_neg h]
  · intro c t
    unfold tabCol
    by_cases h1 : 1 ≤ c
    · rw [if_pos h1, if_pos (by omega : (1 : ℤ) ≤ c + 1), Icut_eq H, Icut_eq H]
      by_cases h2 : c + 1 ≤ be
      · rw [if_pos ⟨by omega, h2⟩, if_pos ⟨h1, by omega⟩]
        have e1 := card_Icut_filter hN H (c + 1) ⟨by omega, h2⟩ t
        have e2 := card_Icut_filter hN H c ⟨h1, by omega⟩ t
        have e3 := colH_anti (stg ν (n0 + (r - 1 - t.val))) (by omega : c ≤ c + 1)
        omega
      · rw [if_neg fun h => h2 h.2]
        simp
    · rw [if_neg h1]
      have hc0 : Icut n0 ν c = ∅ := by rw [Icut_eq H, if_neg fun h => h1 h.1]
      rw [hc0, Finset.sdiff_empty]
      exact Finset.card_le_card (Finset.filter_subset_filter _ (Finset.subset_univ _))

theorem le_iff_lt_colH {μ : Fin r → ℤ} (hμ : Antitone μ) (c : ℤ) (m : Fin r) : c ≤ μ m ↔ m.val < colH μ c := by
  first | (apply UpperTheory.Reformulated.B.Qk46.le_iff_lt_colH <;> assumption)

theorem eq_of_colH {μ μ' : Fin r → ℤ} (hμ : Antitone μ) (hμ' : Antitone μ') (h : ∀ c, colH μ c = colH μ' c) :
    μ = μ' := by
  funext m
  apply le_antisymm
  · rw [le_iff_lt_colH hμ', ← h, ← le_iff_lt_colH hμ]
  · rw [le_iff_lt_colH hμ, h, ← le_iff_lt_colH hμ']

theorem riseA_eq_filter (n0 : ℕ) (ν : Fin (N + 1) → Fin r → ℤ) (c : ℤ) {t : ℕ} (ht : t ≤ r) :
    riseA n0 ν c t = (riseA n0 ν c r).filter fun m => r - 1 - m.val < t := by
  classical
  ext m
  have := m.isLt
  simp only [riseA, Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨h1, h2⟩; exact ⟨⟨by omega, h2⟩, h1⟩
  · rintro ⟨⟨_, h2⟩, h1⟩; exact ⟨h1, h2⟩

theorem path_eq_of_cut [NeZero r] {n0 : ℕ} (hN : n0 + r = N) {be : ℤ} {ν ν' : Fin (N + 1) → Fin r → ℤ}
    (H : PlHyp n0 be ν) (H' : PlHyp n0 be ν') (hd : ∀ i, Antitone (ν i)) (hd' : ∀ i, Antitone (ν' i))
    (hcut : cutPath n0 ν = cutPath n0 ν') (hI : Icut n0 ν = Icut n0 ν') : ν = ν' := by
  classical
  have hlow : ∀ i ≤ n0, stg ν i = stg ν' i := by
    intro i hi
    have h1 := stg_cut n0 ν i (by omega)
    have h2 := stg_cut n0 ν' i (by omega)
    rw [min_eq_left hi] at h1 h2
    rw [← h1, ← h2, hcut]
  have hrise : ∀ c, 1 ≤ c ∧ c ≤ be → riseA n0 ν c r = riseA n0 ν' c r := by
    intro c hc
    have h1 := congrFun hI c
    rw [Icut_eq H, Icut_eq H', if_pos hc, if_pos hc] at h1
    have := congrArg (fun s => Finset.univ \ s) h1
    simpa [Finset.sdiff_sdiff_eq_self (Finset.subset_univ _)] using this
  funext i
  rw [stg_eq ν i.val i.isLt, stg_eq ν' i.val i.isLt]
  by_cases hi : i.val ≤ n0
  · exact hlow i.val hi
  · obtain ⟨t, ht⟩ : ∃ t, i.val = n0 + t := ⟨i.val - n0, by omega⟩
    have hi' := i.isLt
    have htr : t ≤ r := by omega
    apply eq_of_colH
    · rw [← stg_eq ν i.val i.isLt]; exact hd i
    · rw [← stg_eq ν' i.val i.isLt]; exact hd' i
    intro c
    rw [ht]
    by_cases hc : 1 ≤ c ∧ c ≤ be
    · rw [← card_riseA H c t htr, ← card_riseA H' c t htr, hlow n0 le_rfl, riseA_eq_filter n0 ν c htr,
        riseA_eq_filter n0 ν' c htr, hrise c hc]
    · by_cases h1 : 1 ≤ c
      · have h2 : be < c := by
          by_contra h; exact hc ⟨h1, by omega⟩
        rw [colH_none fun m => lt_of_le_of_lt (H.rng _ (by omega) m).2 h2,
          colH_none fun m => lt_of_le_of_lt (H'.rng _ (by omega) m).2 h2]
      · rw [colH_all fun m => le_trans (by omega) (H.rng _ (by omega) m).1,
          colH_all fun m => le_trans (by omega) (H'.rng _ (by omega) m).1]

end Abs3

end Formalism.MainNotions.SelectionLemmas.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardIcutFilter =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.KillOfEmpty =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.KillOfEmpty", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ScaleSCoeffZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas Formalism.MainNotions.G.Joints.StandardMonomialSpace

theorem kill_rename {R σ τ : Type} [CommRing R] (f : σ → τ) (S : Set τ) (P : MvPolynomial σ R) :
    kill S (rename f P) = rename f (kill (f ⁻¹' S) P) := by
  have h : (kill S).comp (rename f) = (rename f).comp (kill (f ⁻¹' S) : MvPolynomial σ R →ₐ[R] _) := by
    apply MvPolynomial.algHom_ext
    intro i
    simp only [AlgHom.comp_apply, rename_X, kill, aeval_X]
    by_cases h1 : f i ∈ S
    · have h2 : i ∈ f ⁻¹' S := h1
      rw [if_pos h1, if_pos h2, map_zero]
    · have h2 : i ∉ f ⁻¹' S := h1
      rw [if_neg h1, if_neg h2, rename_X]
  exact AlgHom.congr_fun h P

theorem kill_of_empty {R σ : Type} [CommRing R] (S : Set σ) (hS : S = ∅) (P : MvPolynomial σ R) : kill S P = P := by
  subst hS
  have h : (kill (∅ : Set σ) : MvPolynomial σ R →ₐ[R] _) = AlgHom.id R _ := by
    apply MvPolynomial.algHom_ext
    intro i
    simp [kill]
  rw [h]
  rfl

theorem li_mono_words {R σ ι α : Type} [CommRing R] [IsDomain R] (Tset : Set σ) (w : α → MvPolynomial σ R)
    (hw : LinearIndependent R w) (M : ι → σ →₀ ℕ) (x : ι → α) (hM : ∀ q, ∀ v, M q v ≠ 0 → v ∈ Tset)
    (hsup : ∀ q, w (x q) ∈ supported R Tsetᶜ) (hinj : ∀ q q', M q = M q' → x q = x q' → q = q') :
    LinearIndependent R fun q => monomial (M q) (1 : R) * w (x q) := by
  classical
  rw [linearIndependent_iff']
  intro s g hsum q₀ hq₀
  obtain ⟨Φ, hΦmono⟩ : ∃ Φ : MvPolynomial σ R →ₗ[R] MvPolynomial σ R, ∀ (n : σ →₀ ℕ) (a : R),
      Φ (monomial n a) = if n.filter (· ∈ Tset) = M q₀ then monomial (n.filter (· ∉ Tset)) a else 0 := by
    refine ⟨(MvPolynomial.basisMonomials σ R).constr R (fun n : σ →₀ ℕ =>
      if n.filter (· ∈ Tset) = M q₀ then monomial (n.filter (· ∉ Tset)) (1 : R) else 0), fun n a => ?_⟩
    have e : monomial n a = a • (MvPolynomial.basisMonomials σ R) n := by
      simp only [MvPolynomial.coe_basisMonomials, MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
    rw [e, map_smul, Module.Basis.constr_basis]
    split_ifs
    · rw [MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
    · rw [smul_zero]
  have hkey : ∀ q, Φ (monomial (M q) (1 : R) * w (x q)) = if M q = M q₀ then w (x q) else 0 := by
    intro q
    have hwsup := hsup q
    rw [mem_supported] at hwsup
    have hT : ∀ n ∈ (w (x q)).support, (M q + n).filter (· ∈ Tset) = M q ∧
        (M q + n).filter (· ∉ Tset) = n := by
      intro n hn
      have hnv : ∀ v, n v ≠ 0 → v ∉ Tset := fun v hv =>
        hwsup ((mem_vars_iff_mem_support v).2 ⟨n, hn, Finsupp.mem_support_iff.2 hv⟩)
      constructor
      · ext v
        rw [Finsupp.filter_apply, Finsupp.add_apply]
        by_cases hv : v ∈ Tset
        · rw [if_pos hv]
          have : n v = 0 := by
            by_contra h
            exact hnv v h hv
          rw [this, add_zero]
        · rw [if_neg hv]
          by_contra h
          exact hv (hM q v (Ne.symm h))
      · ext v
        rw [Finsupp.filter_apply, Finsupp.add_apply]
        by_cases hv : v ∈ Tset
        · rw [if_neg (not_not.2 hv)]
          by_contra h
          exact hnv v (Ne.symm h) hv
        · rw [if_pos hv]
          have : M q v = 0 := by
            by_contra h
            exact hv (hM q v h)
          rw [this, zero_add]
    conv_lhs => rw [(w (x q)).as_sum]

    rw [Finset.mul_sum, map_sum]
    simp only [monomial_mul, one_mul, hΦmono]
    split_ifs with hMq
    · conv_rhs => rw [(w (x q)).as_sum]
      refine Finset.sum_congr rfl fun n hn => ?_
      rw [(hT n hn).1, (hT n hn).2, if_pos hMq]
    · refine Finset.sum_eq_zero fun n hn => ?_
      rw [(hT n hn).1, if_neg hMq]
  have hxinj : Function.Injective (fun q : {q // M q = M q₀} => x q.1) := by
    intro a b h
    exact Subtype.ext (hinj a.1 b.1 (a.2.trans b.2.symm) h)
  have hfib : LinearIndependent R (w ∘ fun q : {q // M q = M q₀} => x q.1) := hw.comp _ hxinj
  have h2 : ∑ q ∈ s, g q • (if M q = M q₀ then w (x q) else 0) = 0 := by
    have h := congrArg Φ hsum

    rw [map_sum, map_zero] at h
    calc ∑ q ∈ s, g q • (if M q = M q₀ then w (x q) else 0)
        = ∑ q ∈ s, Φ (g q • (monomial (M q) (1 : R) * w (x q))) :=
          Finset.sum_congr rfl fun q _ => by rw [map_smul, hkey]
      _ = 0 := h
  have h3 : ∑ q ∈ s.subtype (fun q => M q = M q₀), g q.1 • (w ∘ fun q : {q // M q = M q₀} => x q.1) q = 0 := by
    simp only [Function.comp_apply]
    rw [Finset.sum_subtype_eq_sum_filter (f := fun q => g q • w (x q)), Finset.sum_filter]
    refine Eq.trans (Finset.sum_congr rfl fun q _ => ?_) h2
    split_ifs <;> simp
  exact linearIndependent_iff'.1 hfib (s.subtype (fun q => M q = M q₀)) (fun q => g q.1) h3 ⟨q₀, rfl⟩
    (Finset.mem_subtype.2 hq₀)

end Formalism.MainNotions.SelectionLemmas.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.KillOfEmpty =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumSingleApplyZero =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumSingleApplyZero", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.MemColRangeOfLeEntry\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardIcutFilter\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeS\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.KillOfEmpty\nimport Formalism.SharpRestriction.GrowthBounds.SegmentDegree.PsiCutSupported\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas Formalism.MainNotions.G.Joints.StandardMonomialSpace

theorem rename_mem_supported {R σ τ : Type} [CommRing R] {f : σ → τ} {S : Set σ} {S' : Set τ}
    (h : ∀ v ∈ S, f v ∈ S') {P : MvPolynomial σ R} (hP : P ∈ supported R S) : rename f P ∈ supported R S' := by
  classical
  rw [mem_supported] at hP ⊢
  intro v hv
  have h1 := vars_rename f P (Finset.mem_coe.mp hv)
  obtain ⟨u, hu, rfl⟩ := Finset.mem_image.mp h1
  exact h u (hP (Finset.mem_coe.mpr hu))

theorem sum_single_apply_zero {σ ι : Type} (s : Finset ι) (a : ι → σ) (k : ι → ℕ) (v : σ) (h : ∀ i ∈ s, a i ≠ v) :
    (∑ i ∈ s, Finsupp.single (a i) (k i)) v = 0 := by
  classical
  rw [Finsupp.finsetSum_apply]
  refine Finset.sum_eq_zero fun i hi => ?_
  rw [Finsupp.single_apply, if_neg (h i hi)]

section Fin7

variable {n' r : ℕ} [NeZero n'] [NeZero r] (X : Dat n' r) (K : ℕ)

def gp (j : ℤ) : Fin (segN X.F j) × Fin r → ℤ × Fin (r + K) := fun v => (segE X.F j v.1, Fin.castAdd K v.2)

def gt (j : ℤ) : Fin (segN X.F j) × Fin K → ℤ × Fin (r + K) := fun v => (segE X.F j v.1, Fin.natAdd r v.2)

theorem segRen_PsiPl (O : Type) [CommRing O] (j : ℤ) (ν : Fin (segN X.F j + 1) → Fin r → ℤ)
    (I : ℤ → Finset (Fin r)) :
    segRen X.F j O (r + K) (PsiPl O ν I) = rename (gp X K j) (Psi O ν I) := by
  unfold segRen PsiPl
  rw [rename_rename]
  rfl

theorem segRen_PsiTan (O : Type) [CommRing O] (j : ℤ) (κ : Fin (segN X.F j + 1) → Fin K → ℤ)
    (I : ℤ → Finset (Fin K)) :
    segRen X.F j O (r + K) (PsiTan O κ I) = rename (gt X K j) (Psi O κ I) := by
  unfold segRen PsiTan
  rw [rename_rename]
  rfl

def tauSet (j : ℤ) : Set (ℤ × Fin (r + K)) := {v | ∃ t c : Fin r, v = (X.F.fr j t.val, Fin.castAdd K c)}

theorem castAdd_ne_natAdd (a : Fin r) (c : Fin K) : Fin.castAdd K a ≠ Fin.natAdd r c := by
  intro h
  have := congrArg Fin.val h
  simp only [Fin.val_castAdd, Fin.val_natAdd] at this
  have := a.isLt
  omega

theorem gp_preimage {L₁ N₁ : ℕ} (hV : X.F.Valid L₁ N₁) (j : ℤ) :
    (gp X K j) ⁻¹' (X.offSet K j) = offN (segN X.F j - r) := by
  have hrN := k_r_le_segN X.F hV (NeZero.pos r) j
  ext v
  have hv1 := v.1.isLt
  constructor
  · rintro ⟨t, c, hc, hv⟩
    simp only [gp, Prod.mk.injEq] at hv
    have h1 := (segE_eq_fr_iff X.F hV j v.1 t.isLt).mp hv.1
    have h2 : v.2 = c := Fin.castAdd_injective _ _ hv.2
    refine ⟨by omega, fun h3 => hc ?_⟩
    apply Fin.ext
    rw [Fin.val_rev, ← h2]
    omega
  · rintro ⟨h1, h2⟩
    have ht : v.1.val - (segN X.F j - r) < r := by omega
    refine ⟨⟨v.1.val - (segN X.F j - r), ht⟩, v.2, ?_, ?_⟩
    · intro h3
      apply h2
      have := congrArg Fin.val h3
      rw [Fin.val_rev] at this
      simp only [] at this
      omega
    · simp only [gp, Prod.mk.injEq, and_true]
      exact (segE_eq_fr_iff X.F hV j v.1 ht).mpr (by omega)

theorem gt_preimage (j : ℤ) : (gt X K j) ⁻¹' (X.offSet K j) = ∅ := by
  ext v
  simp only [Set.mem_preimage, Set.mem_empty_iff_false, iff_false]
  rintro ⟨t, c, -, hv⟩
  simp only [gt, Prod.mk.injEq] at hv
  exact castAdd_ne_natAdd K c v.2 hv.2.symm

def dgT (j : ℤ) (n0 : ℕ) (hN : n0 + r = segN X.F j) (be : ℤ) (ν : Fin (segN X.F j + 1) → Fin r → ℤ) :
    ℤ × Fin (r + K) →₀ ℕ :=
  ∑ c ∈ Finset.Icc 1 be, ∑ m ∈ riseA n0 ν c r, Finsupp.single (gp X K j (tauI n0 hN m, m)) 1

theorem kill_wordEl (O : Type) [CommRing O] {L₁ N₁ : ℕ} (hV : X.F.Valid L₁ N₁) (j : ℤ)
    (hN : segN X.F j - r + r = segN X.F j) (be : ℤ)
    (q : (Fin (segN X.F j + 1) → Fin (r + K) → ℤ) × (ℤ → Finset (Fin K)) × (Fin r × Fin r → ℕ))
    (H : PlHyp (segN X.F j - r) be (plPart q.1)) :
    ∃ e : ℕ, kill (X.offSet K j) (X.wordEl K O j q) =
      (-1) ^ e * monomial (dgT X K j (segN X.F j - r) hN be (plPart q.1)) (1 : O) *
        segRen X.F j O (r + K) (PsiPl O (cutPath (segN X.F j - r) (plPart q.1)) (Icut (segN X.F j - r) (plPart q.1)) *
          PsiTan O (tanPart q.1) q.2.1) := by
  classical
  obtain ⟨e, he⟩ := kill_Psi (R := O) hN H
  refine ⟨e, ?_⟩
  unfold Dat.wordEl
  rw [map_mul, map_mul, map_mul, segRen_PsiPl, segRen_PsiTan, segRen_PsiPl, kill_rename, kill_rename,
    gp_preimage X K hV j, kill_of_empty _ (gt_preimage X K j), he]
  simp only [map_mul, map_pow, map_neg, map_one, map_prod, rename_X]
  unfold dgT
  rw [MvPolynomial.monomial_sum_one]
  have : ∀ c ∈ Finset.Icc 1 be,
      monomial (∑ m ∈ riseA (segN X.F j - r) (plPart q.1) c r,
        Finsupp.single (gp X K j (tauI (segN X.F j - r) hN m, m)) 1) (1 : O) =
      ∏ m ∈ riseA (segN X.F j - r) (plPart q.1) c r, MvPolynomial.X (gp X K j (tauI (segN X.F j - r) hN m, m)) := by
    intro c _
    rw [MvPolynomial.monomial_sum_one]
    rfl
  rw [Finset.prod_congr rfl this]
  ring

theorem monTau_apply {L₁ N₁ : ℕ} (hV : X.F.Valid L₁ N₁) (j : ℤ) (u : Fin r × Fin r → ℕ) (t c : Fin r) :
    X.monTau K j u (X.F.fr j t.val, Fin.castAdd K c) = u (t, c) := by
  classical
  unfold Dat.monTau
  rw [Finsupp.finsetSum_apply, Finset.sum_eq_single (t, c)]
  · simp
  · intro v _ hv
    rw [Finsupp.single_apply, if_neg]
    intro h
    simp only [Prod.mk.injEq] at h
    exact hv (Prod.ext (fr_injective X.F hV j h.1) (Fin.castAdd_injective _ _ h.2))
  · intro h; exact absurd (Finset.mem_univ _) h

end Fin7

theorem restKey_of (D : Formalism.BasicNotions.D7) (hAdm : AdmB D) (C₀ : ℝ) : RestKey C₀ := by
  intro p n' r K _ _ _ X O _ _ _ S hX hLa hk j b hB
  classical
  have : Fact p.Prime := ⟨hX.prime⟩
  have hr : 0 < r := NeZero.pos r
  have hV := hX.valid
  have hrN := k_r_le_segN X.F hV hr j
  have hNK : segN X.F j + r ≤ K := le_trans (Nat.add_le_add_right (hX.card j) r) hX.NsK
  have hN : segN X.F j - r + r = segN X.F j := Nat.sub_add_cancel hrN
  have h10 : BracketPolynomialSpan D := hAdm.2.2.2.2.2.2.2.2.2.1
  have h12 : NestedTypeBound D := hAdm.2.2.2.2.2.2.2.2.2.2.2.1
  have hw := (h12 p O S n' r K X.F X.L₁ X.N₁ j (fun _ => 0) (fun _ => 0) (fun _ => 0) hV hNK
    (fun _ => le_rfl)).2.1
  have hH : ∀ q : X.Idx p K j (X.restr j b),
      PlHyp (segN X.F j - r) (X.beS p K j (X.restr j b) : ℤ) (plPart q.1.1) := by
    intro q
    obtain ⟨dd, hP, -⟩ := q.2
    exact plHyp_of X p K hX j _ _ dd hP
  have hpair : ∀ q : X.Idx p K j (X.restr j b), ∃ b' b'' : Fin (segN X.F j) → ℕ,
      (∃ P1 : PPath r (segN X.F j) (segLL X.F j) b', P1.mu = plPart q.1.1) ∧
      (∃ P2 : PPath K (segN X.F j) (segLL X.F j) b'', P2.mu = tanPart q.1.1) := by
    intro q
    obtain ⟨dd, hP, -⟩ := q.2
    obtain ⟨P, hPμ⟩ := hP.path
    obtain ⟨b', b'', -, h1, h2, -⟩ := (h10 (segN X.F j) r K (segLL X.F j) dd hNK (plPart q.1.1) (tanPart q.1.1)).mp
      ⟨P, by rw [hPμ, joinPT_parts]⟩
    exact ⟨b', b'', h1, h2⟩
  have hx : ∀ q : X.Idx p K j (X.restr j b),
      ((cutPath (segN X.F j - r) (plPart q.1.1), tanPart q.1.1) ∈ segPairsAll X.F j K) ∧
      IsSt (cutPath (segN X.F j - r) (plPart q.1.1)) (Icut (segN X.F j - r) (plPart q.1.1)) ∧
      IsSt (tanPart q.1.1) q.1.2.1 := by
    intro q
    obtain ⟨b', b'', ⟨P1, h1⟩, h2⟩ := hpair q
    obtain ⟨bc, Pc, hPc⟩ := cut_ppath P1 (segN X.F j - r)
    obtain ⟨dd, -, -, hSt, -⟩ := q.2
    exact ⟨⟨bc, b'', ⟨Pc, by rw [hPc, h1]⟩, h2⟩, isSt_cut hN (hH q), hSt⟩
  let x : X.Idx p K j (X.restr j b) →
      {x : ((Fin (segN X.F j + 1) → Fin r → ℤ) × (Fin (segN X.F j + 1) → Fin K → ℤ)) ×
        ((ℤ → Finset (Fin r)) × (ℤ → Finset (Fin K))) //
        x.1 ∈ segPairsAll X.F j K ∧ IsSt x.1.1 x.2.1 ∧ IsSt x.1.2 x.2.2} := fun q =>
    ⟨((cutPath (segN X.F j - r) (plPart q.1.1), tanPart q.1.1),
      (Icut (segN X.F j - r) (plPart q.1.1), q.1.2.1)), hx q⟩
  let M : X.Idx p K j (X.restr j b) → (ℤ × Fin (r + K) →₀ ℕ) := fun q =>
    X.monTau K j q.1.2.2 + dgT X K j (segN X.F j - r) hN (X.beS p K j (X.restr j b) : ℤ) (plPart q.1.1)
  have htauI : ∀ m : Fin r, gp X K j (tauI (segN X.F j - r) hN m, m) ∈ tauSet X K j := by
    intro m
    have hm := m.isLt
    refine ⟨⟨r - 1 - m.val, by omega⟩, m, ?_⟩
    simp only [gp, Prod.mk.injEq, and_true]
    exact (segE_eq_fr_iff X.F hV j _ (by omega)).mpr rfl
  have hM : ∀ q, ∀ v, M q v ≠ 0 → v ∈ tauSet X K j := by
    intro q v hv
    by_contra hnot
    apply hv
    show (X.monTau K j q.1.2.2 + dgT X K j (segN X.F j - r) hN _ (plPart q.1.1)) v = 0
    rw [Finsupp.add_apply]
    have h1 : X.monTau K j q.1.2.2 v = 0 := by
      unfold Dat.monTau
      exact sum_single_apply_zero _ _ _ v fun i _ h => hnot ⟨i.1, i.2, h.symm⟩
    have h2 : dgT X K j (segN X.F j - r) hN (X.beS p K j (X.restr j b) : ℤ) (plPart q.1.1) v = 0 := by
      unfold dgT
      rw [Finsupp.finsetSum_apply]
      refine Finset.sum_eq_zero fun c _ => ?_
      exact sum_single_apply_zero _ _ _ v fun m _ h => hnot (h ▸ htauI m)
    rw [h1, h2]
  have hsup : ∀ q, segRen X.F j O (r + K) (PsiPl O (x q).1.1.1 (x q).1.2.1 * PsiTan O (x q).1.1.2 (x q).1.2.2) ∈
      supported O (tauSet X K j)ᶜ := by
    intro q
    rw [map_mul, segRen_PsiPl, segRen_PsiTan]
    refine Subalgebra.mul_mem _ ?_ ?_
    · refine rename_mem_supported ?_ (Psi_cut_supported (segN X.F j - r) (by omega) (plPart q.1.1) _)
      rintro v hv ⟨t, c, h⟩
      simp only [gp, Prod.mk.injEq] at h
      have := (segE_eq_fr_iff X.F hV j v.1 t.isLt).mp h.1
      have hv' : v.1.val < segN X.F j - r := hv
      omega
    · refine rename_mem_supported (S := Set.univ) ?_ (by rw [supported_univ]; exact Algebra.mem_top)
      rintro v - ⟨t, c, h⟩
      simp only [gt, Prod.mk.injEq] at h
      exact castAdd_ne_natAdd K c v.2 h.2.symm
  have hinj : ∀ q q', M q = M q' → x q = x q' → q = q' := by
    intro q q' hMq hxq
    have hx' := congrArg Subtype.val hxq
    simp only [x, Prod.mk.injEq] at hx'
    obtain ⟨⟨hcut, hκ⟩, hI, hI''⟩ := hx'
    obtain ⟨b1, -, ⟨P1, h1⟩, -⟩ := hpair q
    obtain ⟨b2, -, ⟨P2, h2⟩, -⟩ := hpair q'
    have hν : plPart q.1.1 = plPart q'.1.1 :=
      path_eq_of_cut hN (hH q) (hH q') (fun i => by rw [← h1]; exact P1.dom i) (fun i => by rw [← h2]; exact P2.dom i)
        hcut hI
    have hμ : q.1.1 = q'.1.1 := by
      rw [← joinPT_parts q.1.1, ← joinPT_parts q'.1.1, hν, hκ]
    have hu0 : X.monTau K j q.1.2.2 = X.monTau K j q'.1.2.2 := by
      have h3 : X.monTau K j q.1.2.2 + dgT X K j (segN X.F j - r) hN _ (plPart q.1.1) =
          X.monTau K j q'.1.2.2 + dgT X K j (segN X.F j - r) hN _ (plPart q'.1.1) := hMq
      rw [hν] at h3
      exact add_right_cancel h3
    have hu : q.1.2.2 = q'.1.2.2 := by
      funext v
      rw [← monTau_apply X K hV j q.1.2.2 v.1 v.2, ← monTau_apply X K hV j q'.1.2.2 v.1 v.2, hu0]
    exact Subtype.ext (Prod.ext hμ (Prod.ext hI'' hu))
  have hli := li_mono_words (tauSet X K j) _ hw M x hM hsup hinj
  have hkill := fun q : X.Idx p K j (X.restr j b) =>
    kill_wordEl X K O hV j hN (X.beS p K j (X.restr j b) : ℤ) q.1 (hH q)
  choose e he using hkill
  have hli2 := hli.units_smul fun q => (-1 : Oˣ) ^ e q
  have heq : (fun q : X.Idx p K j (X.restr j b) =>
      monomial (X.monTau K j q.1.2.2) (1 : O) * kill (X.offSet K j) (X.wordEl K O j q.1)) =
      ((fun q => (-1 : Oˣ) ^ e q) • fun q => monomial (M q) (1 : O) *
        segRen X.F j O (r + K) (PsiPl O (x q).1.1.1 (x q).1.2.1 * PsiTan O (x q).1.1.2 (x q).1.2.2)) := by
    funext q
    rw [he q]
    simp only [Pi.smul_apply']
    rw [Units.smul_def, MvPolynomial.smul_eq_C_mul]
    have hmm : monomial (M q) (1 : O) = monomial (X.monTau K j q.1.2.2) (1 : O) *
        monomial (dgT X K j (segN X.F j - r) hN (X.beS p K j (X.restr j b) : ℤ) (plPart q.1.1)) (1 : O) := by
      rw [monomial_mul, one_mul]
    rw [hmm]
    simp only [Units.val_pow_eq_pow_val, Units.val_neg, Units.val_one, map_pow, map_neg, map_one]
    ring
  rw [heq]
  exact hli2

end Formalism.MainNotions.SelectionLemmas.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumSingleApplyZero =====
