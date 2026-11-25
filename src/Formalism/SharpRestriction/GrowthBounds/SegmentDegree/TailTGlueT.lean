module

public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.AtypicalPathSmallWeight
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.NegDminusLeMu
public import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeRename
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.WindowSmall

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeA, Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TailTGlueT

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeA =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeA", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.AtypicalPathSmallWeight\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.NegDminusLeMu\npublic import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeRename\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.SelectionLemmas.Pf.T

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas

theorem finite_St {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) : ({I | IsSt mu I} : Set (ℤ → Finset (Fin n))).Finite := by
  classical
  refine Set.Finite.of_injOn (f := fun I (c : colRange mu) => I c.1) (t := Set.univ) (fun _ _ => Set.mem_univ _) ?_
    Set.finite_univ
  intro I hI I' hI' h
  funext c
  by_cases hc : c ∈ colRange mu
  · exact congrFun h ⟨c, hc⟩
  · rw [hI.1 c hc, hI'.1 c hc]

theorem wt_eq (D : Formalism.BasicNotions.D7) (h3 : admB3 D) {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) (hd : Dominant (pEnd mu)) :
    ({I | IsSt mu I} : Set (ℤ → Finset (Fin n))).ncard = stCount n (pEnd mu) := by
  have h1 := h3 n N mu hd
  have h2 := h3 n 0 (fun _ => pEnd mu) hd
  have h4 : ((Nat.card {I : ℤ → Finset (Fin n) // IsSt mu I} : ℕ) : ℚ) = ((stCount n (pEnd mu) : ℕ) : ℚ) := by
    rw [h1]; unfold stCount; rw [h2]; rfl
  rw [← Nat.card_coe_set_eq]
  exact_mod_cast h4

theorem stCount_zero (D : Formalism.BasicNotions.D7) (h3 : admB3 D) (n : ℕ) : stCount n (0 : Fin n → ℤ) = 1 := by
  have h2 := h3 n 0 (fun _ => (0 : Fin n → ℤ)) (fun _ _ _ => le_rfl)
  have h4 : ((stCount n (0 : Fin n → ℤ) : ℕ) : ℚ) = 1 := by
    unfold stCount
    rw [h2]
    refine Finset.prod_eq_one fun i _ => Finset.prod_eq_one fun j _ => ?_
    split_ifs with hij
    · have : ((j : ℕ) : ℚ) - ((i : ℕ) : ℚ) ≠ 0 := by
        have h5 : ((i : ℕ) : ℚ) < ((j : ℕ) : ℚ) := by exact_mod_cast hij
        linarith
      simp only [pEnd, Pi.zero_apply, Int.cast_zero, sub_zero, zero_add]
      exact div_self this
    · rfl
  exact_mod_cast h4

theorem stCount_cast {n n' : ℕ} (h : n = n') (la : Fin n' → ℤ) :
    stCount n (fun l => la (Fin.cast h l)) = stCount n' la := by
  subst h; rfl

open Classical in
theorem pieri_vec (D : Formalism.BasicNotions.D7) (h5 : GenericProjectionCriterion D) (n : ℕ) (hn : 0 < n) (ν : Fin n → ℤ) (b : ℕ) (hd : Dominant ν) :
    stCount n ν * Nat.choose (b + n - 1) (n - 1) =
      ∑ μ ∈ (Fintype.piFinset fun i : Fin n => Finset.Icc (ν i) (ν i + b)).filter (fun μ => HStrip ν μ b),
        stCount n μ := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  exact (h5 m ν b hd).1

open Classical in
theorem pieri_cov (D : Formalism.BasicNotions.D7) (h5 : GenericProjectionCriterion D) (n : ℕ) (hn : 0 < n) (ν : Fin n → ℤ) (b : ℕ) (hd : Dominant ν) :
    stCount n ν * Nat.choose (b + n - 1) (n - 1) =
      ∑ μ ∈ (Fintype.piFinset fun i : Fin n => Finset.Icc (ν i - b) (ν i)).filter (fun μ => HStrip μ ν b),
        stCount n μ := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  exact (h5 m ν b hd).2

variable {N r K : ℕ}

def StepOK (LL : Letters (Fin N)) (n0 : ℕ) (B : Fin N → ℕ) (i : Fin N) (la la' : Fin (r + K) → ℤ) : Prop :=
  (i.val < n0 → if LL.vec i then HStrip la la' (B i) else HStrip la' la (B i)) ∧
  (n0 ≤ i.val → (∃ d : ℕ, HStrip la la' d) ∧ ∀ m : Fin (r + K), m.val ≤ i.val - n0 → la' m = (beA n0 B : ℤ))

def VP (LL : Letters (Fin N)) (n0 : ℕ) (B : Fin N → ℕ) (s : ℕ) (μ : Fin (N + 1) → Fin (r + K) → ℤ) : Prop :=
  μ 0 = 0 ∧ (∀ t : Fin (N + 1), t.val ≤ s → Dominant (μ t)) ∧
    ∀ i : Fin N, i.val < s → StepOK LL n0 B i (μ i.castSucc) (μ i.succ)

section
variable {n0 : ℕ} {LL : Letters (Fin N)} {B : Fin N → ℕ} {od : Fin N → Fin N} {bb : Fin N → ℝ} {a La : ℝ} {p : ℕ}

theorem sp_iff (H : HypT N n0 r K LL B od bb a La p) (μ : Fin (N + 1) → Fin (r + K) → ℤ) :
    μ ∈ SP (r := r) (K := K) LL n0 B ↔ VP LL n0 B N μ := by
  classical
  constructor
  · rintro ⟨dd, hP⟩
    obtain ⟨P, rfl⟩ := hP.path
    refine ⟨P.zero, fun t _ => P.dom t, fun i _ => ⟨fun hi => ?_, fun hi => ⟨⟨dd i, ?_⟩, fun m hm => hP.head i m hi hm⟩⟩⟩
    · have := P.step i
      rwa [hP.degs i hi] at this
    · exact step_vec P i (H.vec_true_of_late i (by omega))
  · rintro ⟨h0, hd, hs⟩
    have hex : ∀ i : Fin N, ∃ d : ℕ, (i.val < n0 → d = B i) ∧
        if LL.vec i then HStrip (μ i.castSucc) (μ i.succ) d else HStrip (μ i.succ) (μ i.castSucc) d := by
      intro i
      by_cases hi : i.val < n0
      · exact ⟨B i, fun _ => rfl, (hs i i.2).1 hi⟩
      · obtain ⟨d, hd'⟩ := ((hs i i.2).2 (by omega)).1
        refine ⟨d, fun h => absurd h hi, ?_⟩
        rw [if_pos (H.vec_true_of_late i (by omega))]
        exact hd'
    choose dd hdd using hex
    exact ⟨dd, ⟨⟨μ, h0, fun t => hd t (by have := t.2; omega), fun i => (hdd i).2⟩, rfl⟩, fun i hi => (hdd i).1 hi,
      fun i m hi hm => ((hs i i.2).2 hi).2 m hm⟩

theorem vp_le_dplus {s : ℕ} {μ : Fin (N + 1) → Fin (r + K) → ℤ} (h : VP LL n0 B s μ) :
    ∀ (t : ℕ) (ht : t < N + 1), t ≤ s → t ≤ n0 → ∀ m, μ ⟨t, ht⟩ m ≤ (dplus LL B t : ℤ) := by
  intro t
  induction t with
  | zero =>
    intro ht _ _ m
    have h0 : (⟨0, ht⟩ : Fin (N + 1)) = 0 := rfl
    rw [h0, h.1]; simp
  | succ t ih =>
    intro ht hts htn m
    have htN : t < N := by omega
    have ih' := ih (by omega) (by omega) (by omega) m
    have hst := (h.2.2 ⟨t, htN⟩ (by simp only; omega)).1 (by simp only; omega)
    have hd : dplus LL B (t + 1) = dplus LL B t + if LL.vec ⟨t, htN⟩ = true then B ⟨t, htN⟩ else 0 :=
      dsum_succ (fun l => LL.vec l = true) B t htN
    rw [hd]
    cases hv : LL.vec ⟨t, htN⟩ with
    | true =>
      rw [if_pos hv] at hst
      have h' : μ ⟨t + 1, ht⟩ m ≤ μ ⟨t, by omega⟩ m + (B ⟨t, htN⟩ : ℤ) := strip_le_add hst m
      simp only [if_true]
      push_cast
      linarith
    | false =>
      rw [if_neg (by simp [hv])] at hst
      have h' : μ ⟨t + 1, ht⟩ m ≤ μ ⟨t, by omega⟩ m := hst.1 m
      simp
      linarith

theorem dplus_le_beA' (t : ℕ) (ht : t ≤ n0) : dplus LL B t ≤ beA n0 B := by
  unfold dplus beA
  refine Finset.sum_le_sum fun l _ => ?_
  by_cases hl : l.val < t ∧ LL.vec l = true
  · rw [if_pos hl, if_pos (by omega)]
  · rw [if_neg hl]; exact Nat.zero_le _

theorem vp_le {s : ℕ} {μ : Fin (N + 1) → Fin (r + K) → ℤ} (h : VP LL n0 B s μ) :
    ∀ (t : ℕ) (ht : t < N + 1), t ≤ s → ∀ m, μ ⟨t, ht⟩ m ≤ (beA n0 B : ℤ) := by
  intro t
  induction t with
  | zero =>
    intro ht _ m
    have h0 : (⟨0, ht⟩ : Fin (N + 1)) = 0 := rfl
    rw [h0, h.1]; simp
  | succ t ih =>
    intro ht hts m
    by_cases htn : t + 1 ≤ n0
    · refine le_trans (vp_le_dplus h (t + 1) ht hts htn m) ?_
      exact_mod_cast dplus_le_beA' (t + 1) htn
    · have htN : t < N := by omega
      obtain ⟨⟨d, hst⟩, hhead⟩ := (h.2.2 ⟨t, htN⟩ (by simp only; omega)).2 (by simp only; omega)
      by_cases hm : m.val = 0
      · exact le_of_eq (hhead m (by omega))
      · have hm1 : (m.val - 1) + 1 < r + K := by have := m.2; omega
        have h2 := hst.2.1 ⟨m.val - 1, by have := m.2; omega⟩ hm1
        have hme : (⟨(m.val - 1) + 1, hm1⟩ : Fin (r + K)) = m := Fin.ext (by simp only; omega)
        rw [hme] at h2
        exact le_trans h2 (ih (by omega) (by omega) _)


open Classical in
theorem vp_update {s : ℕ} (hs : s < N) {μ : Fin (N + 1) → Fin (r + K) → ℤ} (h : VP LL n0 B s μ)
    (la' : Fin (r + K) → ℤ) (hd : Dominant la')
    (hst : StepOK LL n0 B ⟨s, hs⟩ (μ (⟨s, hs⟩ : Fin N).castSucc) la') :
    VP LL n0 B (s + 1) (Function.update μ (⟨s, hs⟩ : Fin N).succ la') := by
  have hne : ∀ t : Fin (N + 1), t.val ≤ s → t ≠ (⟨s, hs⟩ : Fin N).succ := by
    intro t ht he
    rw [he] at ht
    simp at ht
  refine ⟨?_, ?_, ?_⟩
  · rw [Function.update_of_ne (hne 0 (by simp))]; exact h.1
  · intro t ht
    by_cases he : t = (⟨s, hs⟩ : Fin N).succ
    · rw [he, Function.update_self]; exact hd
    · rw [Function.update_of_ne he]
      refine h.2.1 t ?_
      have : t.val ≠ s + 1 := fun hv => he (Fin.ext (by simpa using hv))
      omega
  · intro i hi
    by_cases he : i.val = s
    · have hi' : i = ⟨s, hs⟩ := Fin.ext he
      subst hi'
      rw [Function.update_self, Function.update_of_ne (hne _ (by simp))]
      exact hst
    · rw [Function.update_of_ne (hne _ (by simp; omega)), Function.update_of_ne (hne _ (by simp; omega))]
      exact h.2.2 i (by omega)

end

end Formalism.MainNotions.SelectionLemmas.Pf.T
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeA =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TailTGlueT =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TailTGlueT", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.DplusLeBeA\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.WindowSmall\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.SelectionLemmas.Pf.T

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas

variable {N r K : ℕ}

def tailT (t : ℕ) (la : Fin (r + K) → ℤ) : Fin (K + t) → ℤ := fun l =>
  if h : (r - t) + l.val < r + K then la ⟨(r - t) + l.val, h⟩ else 0

def glueT (t : ℕ) (be : ℤ) (τ : Fin (K + t) → ℤ) : Fin (r + K) → ℤ := fun m =>
  if h : m.val < r - t then be else if h' : m.val - (r - t) < K + t then τ ⟨m.val - (r - t), h'⟩ else 0

theorem tailT_glueT (t : ℕ) (ht : t ≤ r) (be : ℤ) (τ : Fin (K + t) → ℤ) : tailT (r := r) t (glueT t be τ) = τ := by
  funext l
  have hl := l.2
  have h1 : (r - t) + l.val < r + K := by omega
  simp only [tailT, glueT, dif_pos h1]
  simp

theorem tailT_apply (t : ℕ) (ht : t ≤ r) (la : Fin (r + K) → ℤ) (l : Fin (K + t)) :
    tailT t la l = la ⟨(r - t) + l.val, by have := l.2; omega⟩ := by
  unfold tailT; rw [dif_pos]

section
variable {n0 : ℕ} {LL : Letters (Fin N)} {B : Fin N → ℕ} {od : Fin N → Fin N} {bb : Fin N → ℝ} {a La : ℝ} {p : ℕ}

theorem finite_SAll [NeZero r] [NeZero K] (H : HypT N n0 r K LL B od bb a La p) :
    (SAll (r := r) (K := K) LL n0 B).Finite := by
  have hS : (SP (r := r) (K := K) LL n0 B).Finite := by
    refine (Set.Finite.pi (t := fun _ : Fin (N + 1) => Set.pi Set.univ fun _ : Fin (r + K) => Set.Icc (-(beA n0 B : ℤ)) (beA n0 B)) fun _ => Set.Finite.pi fun _ => Set.finite_Icc _ _).subset ?_
    rintro μ ⟨dd, hpa⟩
    obtain ⟨P, rfl⟩ := hpa.path
    simp only [Set.mem_pi, Set.mem_univ, Set.mem_Icc, forall_const]
    intro s m
    exact ⟨le_trans (neg_le_neg (by exact_mod_cast dminus_le_beA H hpa.degs s.val)) (neg_dminus_le_mu P s.val s.2 m), path_le_beA H P hpa s.val s.2 m⟩
  refine (hS.biUnion fun μ _ => (Set.finite_singleton μ).prod (finite_St (tanPart μ))).subset ?_
  rintro ⟨μ, I⟩ ⟨h1, h2⟩
  exact Set.mem_biUnion h1 ⟨rfl, h2⟩


open Classical in
def Af (hfin : (SAll (r := r) (K := K) LL n0 B).Finite) (s : ℕ) (μ0 : Fin (N + 1) → Fin (r + K) → ℤ) :
    Finset (QT N r K) :=
  hfin.toFinset.filter fun q => ∀ t : Fin (N + 1), t.val ≤ s → q.1 t = μ0 t

open Classical in
theorem Af_fiber (hfin : (SAll (r := r) (K := K) LL n0 B).Finite) (s : ℕ) (hs : s < N)
    (μ0 : Fin (N + 1) → Fin (r + K) → ℤ) (la' : Fin (r + K) → ℤ) :
    (Af hfin s μ0).filter (fun q => q.1 (⟨s, hs⟩ : Fin N).succ = la') =
      Af hfin (s + 1) (Function.update μ0 (⟨s, hs⟩ : Fin N).succ la') := by
  ext q
  simp only [Af, Finset.mem_filter]
  constructor
  · rintro ⟨⟨hq, h⟩, h'⟩
    refine ⟨hq, fun t ht => ?_⟩
    by_cases e : t = (⟨s, hs⟩ : Fin N).succ
    · subst e
      rw [Function.update_apply, if_pos rfl]
      exact h'
    · rw [Function.update_of_ne e]
      apply h
      have : t.val ≠ s + 1 := fun h2 => e (Fin.ext (by simp [h2]))
      omega
  · rintro ⟨hq, h⟩
    refine ⟨⟨hq, fun t ht => ?_⟩, ?_⟩
    · have e : t ≠ (⟨s, hs⟩ : Fin N).succ := by
        rintro rfl
        simp at ht
      rw [h t (by omega), Function.update_of_ne e]
    · rw [h _ (by simp)]
      simp

theorem Af_step (H : HypT N n0 r K LL B od bb a La p) (hfin : (SAll (r := r) (K := K) LL n0 B).Finite) (s : ℕ)
    (hs : s < N) (μ0 : Fin (N + 1) → Fin (r + K) → ℤ) (q : QT N r K) (hq : q ∈ Af hfin s μ0) :
    Dominant (q.1 (⟨s, hs⟩ : Fin N).succ) ∧
      StepOK LL n0 B ⟨s, hs⟩ (μ0 (⟨s, hs⟩ : Fin N).castSucc) (q.1 (⟨s, hs⟩ : Fin N).succ) := by
  classical
  simp only [Af, Finset.mem_filter, Set.Finite.mem_toFinset] at hq
  obtain ⟨⟨hsp, -⟩, hμ⟩ := hq
  obtain ⟨dd, hpa⟩ := hsp
  obtain ⟨P, hP⟩ := hpa.path
  have hc : q.1 (⟨s, hs⟩ : Fin N).castSucc = μ0 (⟨s, hs⟩ : Fin N).castSucc := hμ _ (by simp)
  rw [← hc]
  have hstep := P.step ⟨s, hs⟩
  rw [hP] at hstep
  refine ⟨by rw [← hP]; exact P.dom _, fun hlt => ?_, fun hge => ⟨⟨dd ⟨s, hs⟩, ?_⟩, fun m hm => hpa.head _ m hge hm⟩⟩
  · rwa [← hpa.degs _ hlt]
  · have hv : LL.vec ⟨s, hs⟩ = true := H.vec_true_of_late _ (Nat.le_add_right_of_le hge)
    rwa [if_pos hv] at hstep


open Classical in
theorem Af_card_sum (hfin : (SAll (r := r) (K := K) LL n0 B).Finite) (s : ℕ) (hs : s < N)
    (μ0 : Fin (N + 1) → Fin (r + K) → ℤ) (E : Finset (Fin (r + K) → ℤ))
    (hE : ∀ q ∈ Af hfin s μ0, q.1 (⟨s, hs⟩ : Fin N).succ ∈ E) :
    (Af hfin s μ0).card = ∑ la' ∈ E, (Af hfin (s + 1) (Function.update μ0 (⟨s, hs⟩ : Fin N).succ la')).card := by
  rw [Finset.card_eq_sum_card_fiberwise hE]
  refine Finset.sum_congr rfl fun la' _ => ?_
  rw [Af_fiber hfin s hs]

end

end Formalism.MainNotions.SelectionLemmas.Pf.T
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TailTGlueT =====
