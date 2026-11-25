module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.StepDownStatement
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.LowerStepStatement
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapBigLap
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.IfaceSt
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.TransportInt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.GlueSt, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.InterlacesULt, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.RsParLamMinus, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.WalkEnds, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.Walk, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.ParEpsQOf, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapLapStepGapStatement, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapStep, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ParitySignEqGapSign

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.GlueSt =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.GlueSt", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.StepDownStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS

def WalkStepStatement : Prop :=
  S0.IntSStatement → StepStatement →
    ∀ (k r : ℕ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ) (h : ℝ) (t : ℕ),
      1 ≤ k → IsHCPar (parLam k r v b) → Interlaces k r u v b → HalfInts k r u v b → LowGaps r b h →
      StepGap (parEps k r) r h → BesselNZ (parEps k r) (lamT k r u b t) u →
      BesselNZ (parEps k r) (parLam k r v b) u

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.GlueSt =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.InterlacesULt =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.InterlacesULt", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.LowerStepStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS

noncomputable def lowPt (k r : ℕ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ) (i : ℕ) (x : ℝ) :
    Fin (2 * r + k + 1) → ℝ :=
  fun a => if a.val = i then x else walkPar k r u v b (i + 1) a

theorem interlaces_u_lt {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (hI : Interlaces k r u v b) :
    ∀ (j d : ℕ) (h1 : j + d + 1 < k), u ⟨j + d + 1, h1⟩ < u ⟨j, by omega⟩ := by
  intro j d
  induction d with
  | zero =>
    intro h1
    have hj : j < k - 1 := by omega
    have h2 := hI.1 ⟨j, hj⟩
    exact lt_trans h2.2 h2.1
  | succ d ih =>
    intro h1
    have hj : j + d + 1 < k - 1 := by omega
    have h2 := hI.1 ⟨j + d + 1, hj⟩
    have h3 := ih (by omega)
    exact lt_trans (lt_trans h2.2 h2.1) h3

theorem u_lt {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (hI : Interlaces k r u v b) (j l : Fin k) (hjl : j.val < l.val) : u l < u j := by
  obtain ⟨j, hj⟩ := j
  obtain ⟨l, hl⟩ := l
  have hjl' : j < l := hjl
  obtain ⟨d, rfl⟩ : ∃ d, l = j + d + 1 := ⟨l - j - 1, by omega⟩
  exact interlaces_u_lt hI j d hl

theorem u_lt_v {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (hI : Interlaces k r u v b) (i : ℕ) (hi : i < k - 1) (j : Fin k) (hij : i < j.val) :
    u j < v ⟨i, hi⟩ := by
  have h := (hI.1 ⟨i, hi⟩).2
  rcases Nat.lt_or_ge (i + 1) j.val with h1 | h1
  · exact lt_trans (u_lt hI ⟨i + 1, by omega⟩ j h1) h
  · have hj : j = ⟨i + 1, by omega⟩ := Fin.ext (show j.val = i + 1 by omega)
    rw [hj]
    exact h

theorem parLam_of_lt {k r : ℕ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ} (a : ℕ)
    (ha : a < 2 * r + k + 1) (h : a < k - 1) : parLam k r v b ⟨a, ha⟩ = v ⟨a, h⟩ := by
  simp [parLam, h]

theorem parLam_of_ge {k r : ℕ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ} (a : ℕ)
    (ha : a < 2 * r + k + 1) (h : k - 1 ≤ a) :
    parLam k r v b ⟨a, ha⟩ = -b ⟨a - (k - 1), by omega⟩ := by
  have h' : ¬ a < k - 1 := by omega
  simp [parLam, h']

theorem lam_lt_u {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (hI : Interlaces k r u v b) (i : ℕ) (hi : i < k) (hin : i < 2 * r + k + 1) :
    parLam k r v b ⟨i, hin⟩ < u ⟨i, hi⟩ := by
  rcases Nat.lt_or_ge i (k - 1) with h | h
  · rw [parLam_of_lt i hin h]
    exact (hI.1 ⟨i, h⟩).1
  · obtain rfl : i = k - 1 := by omega
    rw [parLam_of_ge (k - 1) hin h]
    have h2 := hI.2 (by omega)
    have e : b ⟨k - 1 - (k - 1), by omega⟩ = b ⟨0, by omega⟩ :=
      congrArg b (Fin.ext (show k - 1 - (k - 1) = 0 by omega))
    rw [e]
    exact h2

theorem lam_gap {k r : ℕ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ} {h : ℝ} (hk : 1 ≤ k)
    (hG : LowGaps r b h) (a : Fin (2 * r + k + 1)) (ha : a.val + 1 < 2 * r + k + 1)
    (hka : k - 1 ≤ a.val) :
    h ≤ parLam k r v b a - parLam k r v b ⟨a.val + 1, ha⟩ := by
  have haa := a.isLt
  have hj : a.val - (k - 1) + 1 < 2 * r + 2 := by omega
  have h1 : parLam k r v b a = -b ⟨a.val - (k - 1), by omega⟩ := parLam_of_ge a.val a.isLt hka
  have hg : h ≤ b ⟨a.val - (k - 1) + 1, hj⟩ - b ⟨a.val - (k - 1), by omega⟩ :=
    hG ⟨a.val - (k - 1), by omega⟩ hj
  have e : (⟨a.val - (k - 1) + 1, hj⟩ : Fin (2 * r + 2)) = ⟨a.val + 1 - (k - 1), by omega⟩ :=
    Fin.ext (show a.val - (k - 1) + 1 = a.val + 1 - (k - 1) by omega)
  rw [e] at hg
  rw [h1, parLam_of_ge (a.val + 1) ha (by omega)]
  linarith

theorem parEps_adj {k r : ℕ} (a : Fin (2 * r + k + 1)) (ha : a.val + 1 < 2 * r + k + 1)
    (hne : parEps k r a ≠ parEps k r ⟨a.val + 1, ha⟩) : k - 1 ≤ a.val := by
  by_contra hlt
  have h1 : a.val < k - 1 := by omega
  have hl : parEps k r a = true := by
    show (if a.val < k - 1 then true else decide ((a.val - (k - 1)) % 2 = 0)) = true
    rw [if_pos h1]
  have hr : parEps k r ⟨a.val + 1, ha⟩ = true := by
    show (if a.val + 1 < k - 1 then true else decide ((a.val + 1 - (k - 1)) % 2 = 0)) = true
    split
    · rfl
    · rw [show a.val + 1 - (k - 1) = 0 by omega]
      rfl
  exact hne (hl.trans hr.symm)

theorem lowPt_at {k r : ℕ} (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (i : ℕ) (x : ℝ) (hin : i < 2 * r + k + 1) : lowPt k r u v b i x ⟨i, hin⟩ = x := by
  show (if i = i then x else walkPar k r u v b (i + 1) ⟨i, hin⟩) = x
  rw [if_pos rfl]

theorem lowPt_lt {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (i : ℕ) (x : ℝ) (hi : i < k) (a : Fin (2 * r + k + 1)) (ha : a.val < i) :
    lowPt k r u v b i x a = u ⟨a.val, by omega⟩ - 1 / 2 := by
  have h1 : a.val ≠ i := by omega
  have h2 : a.val < i + 1 ∧ a.val < k := ⟨by omega, by omega⟩
  show (if a.val = i then x else walkPar k r u v b (i + 1) a) = _
  rw [if_neg h1]
  show (if h : a.val < i + 1 ∧ a.val < k then u ⟨a.val, h.2⟩ - 1 / 2 else parLam k r v b a) = _
  rw [dite_eq_left h2]

theorem lowPt_gt {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (i : ℕ) (x : ℝ) (a : Fin (2 * r + k + 1)) (ha : i < a.val) :
    lowPt k r u v b i x a = parLam k r v b a := by
  have h1 : a.val ≠ i := by omega
  have h2 : ¬ (a.val < i + 1 ∧ a.val < k) := fun h' => absurd h'.1 (by omega)
  show (if a.val = i then x else walkPar k r u v b (i + 1) a) = _
  rw [if_neg h1]
  show (if h : a.val < i + 1 ∧ a.val < k then u ⟨a.val, h.2⟩ - 1 / 2 else parLam k r v b a) = _
  rw [dite_eq_right h2]

theorem walkPar_add {k r : ℕ} (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (i : ℕ) (hi : i < k) (hin : i < 2 * r + k + 1) (c : ℝ) :
    walkPar k r u v b (i + 1) + c • Pi.single (⟨i, hin⟩ : Fin (2 * r + k + 1)) (1 : ℝ) =
      lowPt k r u v b i (u ⟨i, hi⟩ - 1 / 2 + c) := by
  funext a
  rw [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  by_cases ha : a.val = i
  · obtain rfl : a = ⟨i, hin⟩ := Fin.ext ha
    rw [lowPt_at, Pi.single_eq_same, mul_one]
    have h2 : i < i + 1 ∧ i < k := ⟨Nat.lt_succ_self i, hi⟩
    show (if h : i < i + 1 ∧ i < k then u ⟨i, h.2⟩ - 1 / 2 else parLam k r v b ⟨i, hin⟩) + c = _
    rw [dite_eq_left h2]
  · have hne : a ≠ ⟨i, hin⟩ := fun h => ha (congrArg Fin.val h)
    rw [Pi.single_apply, if_neg hne, mul_zero, add_zero]
    show _ = (if a.val = i then _ else walkPar k r u v b (i + 1) a)
    rw [if_neg ha]

theorem lowPt_sub {k r : ℕ} (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (i : ℕ) (hin : i < 2 * r + k + 1) (y : ℝ) :
    lowPt k r u v b i y - Pi.single (⟨i, hin⟩ : Fin (2 * r + k + 1)) (1 : ℝ) =
      lowPt k r u v b i (y - 1) := by
  funext a
  rw [Pi.sub_apply]
  by_cases ha : a.val = i
  · obtain rfl : a = ⟨i, hin⟩ := Fin.ext ha
    rw [lowPt_at, lowPt_at, Pi.single_eq_same]
  · have hne : a ≠ ⟨i, hin⟩ := fun h => ha (congrArg Fin.val h)
    rw [Pi.single_apply, if_neg hne, sub_zero]
    show (if a.val = i then y else walkPar k r u v b (i + 1) a) =
      (if a.val = i then y - 1 else walkPar k r u v b (i + 1) a)
    rw [if_neg ha, if_neg ha]

theorem lowPt_bot {k r : ℕ} (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (i : ℕ) (hi : i < k) (hin : i < 2 * r + k + 1) :
    lowPt k r u v b i (parLam k r v b ⟨i, hin⟩) = walkPar k r u v b i := by
  funext a
  rcases lt_trichotomy a.val i with h | h | h
  · rw [lowPt_lt (u := u) (v := v) (b := b) i (parLam k r v b ⟨i, hin⟩) hi a h]
    have h2 : a.val < i ∧ a.val < k := ⟨h, by omega⟩
    show _ = (if h : a.val < i ∧ a.val < k then u ⟨a.val, h.2⟩ - 1 / 2 else parLam k r v b a)
    rw [dite_eq_left h2]
  · obtain rfl : a = ⟨i, hin⟩ := Fin.ext h
    rw [lowPt_at]
    have h2 : ¬ (i < i ∧ i < k) := fun h' => lt_irrefl i h'.1
    show _ = (if h : i < i ∧ i < k then u ⟨i, h.2⟩ - 1 / 2 else parLam k r v b ⟨i, hin⟩)
    rw [dite_eq_right h2]
  · rw [lowPt_gt (u := u) (v := v) (b := b) i (parLam k r v b ⟨i, hin⟩) a h]
    have h2 : ¬ (a.val < i ∧ a.val < k) := fun h' => absurd h'.1 (by omega)
    show _ = (if h : a.val < i ∧ a.val < k then u ⟨a.val, h.2⟩ - 1 / 2 else parLam k r v b a)
    rw [dite_eq_right h2]

private theorem gapAtLeast_of_adjacent_sign_change_ge {n : ℕ} (ε : Fin n → Bool) (L : Fin n → ℝ) (h : ℝ)
    (hL : StrictAnti L)
    (hadj : ∀ a c : Fin n, c.val = a.val + 1 → ε a ≠ ε c → h ≤ L a - L c) :
    GapAtLeast ε L h := by
  have key : ∀ (d : ℕ) (a c : Fin n), c.val = a.val + d + 1 → ε a ≠ ε c → h ≤ L a - L c := by
    intro d
    induction d with
    | zero =>
      intro a c hac hne
      exact hadj a c (by omega) hne
    | succ d ih =>
      intro a c hac hne
      have hm : a.val + 1 < n := by have := c.isLt; omega
      obtain ⟨m, hmv⟩ : ∃ m : Fin n, m.val = a.val + 1 := ⟨⟨a.val + 1, hm⟩, rfl⟩
      have ham : a < m := Fin.lt_def.mpr (by omega)
      have hmc : m < c := Fin.lt_def.mpr (by omega)
      have h1 : L m < L a := hL ham
      have h2 : L c < L m := hL hmc
      by_cases hε : ε a = ε m
      · have h3 := ih m c (by omega) (fun heq => hne (hε.trans heq))
        linarith
      · have h3 := hadj a m hmv hε
        linarith
  intro a c hne
  rcases lt_trichotomy a.val c.val with hac | hac | hac
  · have h1 := key (c.val - a.val - 1) a c (by omega) hne
    have h2 : L c < L a := hL (Fin.lt_def.mpr hac)
    rw [abs_of_nonneg (show (0 : ℝ) ≤ L a - L c by linarith)]
    exact h1
  · exact absurd (congrArg ε (Fin.ext hac)) hne
  · have h1 := key (a.val - c.val - 1) c a (by omega) (Ne.symm hne)
    have h2 : L a < L c := hL (Fin.lt_def.mpr hac)
    rw [abs_of_neg (show L a - L c < 0 by linarith)]
    linarith

theorem lowPt_ok {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ} {h : ℝ}
    (hk : 1 ≤ k) (hHC : IsHCPar (parLam k r v b)) (hI : Interlaces k r u v b)
    (hH : HalfInts k r u v b) (hG : LowGaps r b h) (i : ℕ) (hi : i < k) (hin : i < 2 * r + k + 1)
    (x : ℝ) (m : ℤ) (hx : x = parLam k r v b ⟨i, hin⟩ + m) (hlo : parLam k r v b ⟨i, hin⟩ ≤ x)
    (hhi : x ≤ u ⟨i, hi⟩ - 1 / 2) :
    IsHCPar (lowPt k r u v b i x) ∧ GapAtLeast (parEps k r) (lowPt k r u v b i x) h := by
  obtain ⟨hanti0, hint0⟩ := hHC
  have hLlt : ∀ (a : Fin (2 * r + k + 1)) (ha : a.val < i),
      lowPt k r u v b i x a = u ⟨a.val, by omega⟩ - 1 / 2 :=
    fun a ha => lowPt_lt i x hi a ha
  have hLgt : ∀ (a : Fin (2 * r + k + 1)), i < a.val → lowPt k r u v b i x a = parLam k r v b a :=
    fun a ha => lowPt_gt i x a ha
  have hLeq : ∀ (a : Fin (2 * r + k + 1)), a.val = i → lowPt k r u v b i x a = x := by
    intro a ha
    obtain rfl : a = ⟨i, hin⟩ := Fin.ext ha
    exact lowPt_at u v b i x hin
  have hu : ∀ (a : Fin (2 * r + k + 1)) (ha : a.val < i), u ⟨i, hi⟩ < u ⟨a.val, by omega⟩ :=
    fun a ha => u_lt hI ⟨a.val, by omega⟩ ⟨i, hi⟩ ha
  have hP : ∀ c : Fin (2 * r + k + 1), i < c.val → parLam k r v b c < parLam k r v b ⟨i, hin⟩ :=
    fun c hc => hanti0 (show (⟨i, hin⟩ : Fin (2 * r + k + 1)) < c from Fin.lt_def.mpr hc)
  have hanti : StrictAnti (lowPt k r u v b i x) := by
    intro a c hac
    have hac' : a.val < c.val := Fin.lt_def.mp hac
    rcases lt_trichotomy c.val i with hc | hc | hc
    · have ha : a.val < i := by omega
      rw [hLlt a ha, hLlt c hc]
      have h1 := u_lt hI ⟨a.val, by omega⟩ ⟨c.val, by omega⟩ hac'
      linarith
    · have ha : a.val < i := by omega
      rw [hLlt a ha, hLeq c hc]
      have h1 := hu a ha
      linarith
    · rw [hLgt c hc]
      have h1 := hP c hc
      rcases lt_trichotomy a.val i with ha | ha | ha
      · rw [hLlt a ha]
        have h2 := hu a ha
        linarith
      · rw [hLeq a ha]
        linarith
      · rw [hLgt a ha]
        exact hanti0 hac
  have hint : ∀ a : Fin (2 * r + k + 1),
      ∃ m : ℤ, lowPt k r u v b i x a - (((2 * r + k + 1 : ℕ) : ℝ) - 1) / 2 = (m : ℝ) := by
    intro a
    obtain ⟨m0, hm0⟩ := hint0 a
    rcases lt_trichotomy a.val i with ha | ha | ha
    · obtain ⟨m1, hm1⟩ := hH ⟨a.val, by omega⟩ a
      refine ⟨m0 + m1, ?_⟩
      rw [hLlt a ha, Int.cast_add]
      linarith
    · obtain ⟨m1, hm1⟩ := hint0 ⟨i, hin⟩
      refine ⟨m1 + m, ?_⟩
      rw [hLeq a ha, hx, Int.cast_add]
      linarith
    · rw [hLgt a ha]
      exact ⟨m0, hm0⟩
  have hadj : ∀ a c : Fin (2 * r + k + 1), c.val = a.val + 1 → parEps k r a ≠ parEps k r c →
      h ≤ lowPt k r u v b i x a - lowPt k r u v b i x c := by
    intro a c hcv hne
    have hc : a.val + 1 < 2 * r + k + 1 := by have := c.isLt; omega
    have hcE : c = ⟨a.val + 1, hc⟩ := Fin.ext hcv
    rw [hcE] at hne ⊢
    have hka := parEps_adj a hc hne
    have hg := lam_gap (v := v) hk hG a hc hka
    rw [hLgt ⟨a.val + 1, hc⟩ (show i < a.val + 1 by omega)]
    rcases lt_or_eq_of_le (show i ≤ a.val by omega) with ha | ha
    · rw [hLgt a ha]
      exact hg
    · rw [hLeq a ha.symm]
      have haE : a = ⟨i, hin⟩ := Fin.ext ha.symm
      have hPa : parLam k r v b a = parLam k r v b ⟨i, hin⟩ := by rw [haE]
      linarith
  exact ⟨And.intro hanti hint, gapAtLeast_of_adjacent_sign_change_ge _ _ _ hanti hadj⟩

theorem no_cross {k r : ℕ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ} {b : Fin (2 * r + 2) → ℝ}
    (hI : Interlaces k r u v b) (i : ℕ) (hi : i < k) (hin : i < 2 * r + k + 1) (y : ℝ)
    (h1 : parLam k r v b ⟨i, hin⟩ + 1 ≤ y) (h2 : y ≤ u ⟨i, hi⟩ - 1 / 2) (l : Fin k) :
    u l ≠ y - 1 / 2 := by
  intro heq
  rcases lt_trichotomy l.val i with hl | hl | hl
  · have h3 := u_lt hI l ⟨i, hi⟩ hl
    linarith
  · have hl' : l = ⟨i, hi⟩ := Fin.ext hl
    subst hl'
    linarith
  · have hik : i < k - 1 := by have := l.isLt; omega
    have h3 := u_lt_v hI i hik l hl
    rw [parLam_of_lt i hin hik] at h1
    linarith

theorem lowerStep : LowerStepStatement := by
  unfold LowerStepStatement
  intro k r u v b h P hk hHC hI hH hG hSC i hi hP
  have hin : i < 2 * r + k + 1 := by omega
  have e1 : walkPar k r u v b (i + 1) = lowPt k r u v b i (u ⟨i, hi⟩ - 1 / 2) := by
    have h0 := walkPar_add u v b i hi hin 0
    rw [zero_smul, add_zero, add_zero] at h0
    exact h0
  rw [← lowPt_bot u v b i hi hin]
  obtain ⟨m, hm⟩ := hH ⟨i, hi⟩ ⟨i, hin⟩
  have hlt := lam_lt_u hI i hi hin
  have hm0 : 0 ≤ m := by
    by_contra hneg
    have h1 : m ≤ -1 := by omega
    have h2 : (m : ℝ) ≤ -1 := by exact_mod_cast h1
    linarith
  obtain ⟨N, rfl⟩ : ∃ N : ℕ, m = N := ⟨m.toNat, (Int.toNat_of_nonneg hm0).symm⟩
  have hm' : u ⟨i, hi⟩ - parLam k r v b ⟨i, hin⟩ = (N : ℝ) + 1 / 2 := by exact_mod_cast hm
  have ok : ∀ t : ℕ, t ≤ N →
      IsHCPar (lowPt k r u v b i (parLam k r v b ⟨i, hin⟩ + (t : ℝ))) ∧
      GapAtLeast (parEps k r) (lowPt k r u v b i (parLam k r v b ⟨i, hin⟩ + (t : ℝ))) h := by
    intro t ht
    have htN : (t : ℝ) ≤ N := by exact_mod_cast ht
    have ht0 : (0 : ℝ) ≤ t := Nat.cast_nonneg t
    exact lowPt_ok hk hHC hI hH hG i hi hin _ (t : ℤ) (by simp) (by linarith) (by linarith)
  have key : ∀ t : ℕ, t ≤ N → P (lowPt k r u v b i (parLam k r v b ⟨i, hin⟩ + (t : ℝ))) →
      P (lowPt k r u v b i (parLam k r v b ⟨i, hin⟩)) := by
    intro t
    induction t with
    | zero =>
      intro _ hp
      simpa using hp
    | succ t ih =>
      intro ht hp
      apply ih (by omega)
      have hy := ok (t + 1) ht
      have hy' := ok t (by omega)
      have hsub := lowPt_sub u v b i hin (parLam k r v b ⟨i, hin⟩ + ((t + 1 : ℕ) : ℝ))
      have e : parLam k r v b ⟨i, hin⟩ + ((t + 1 : ℕ) : ℝ) - 1 =
          parLam k r v b ⟨i, hin⟩ + (t : ℝ) := by
        rw [Nat.cast_succ]
        ring
      rw [e] at hsub
      have hnc : ∀ l, u l ≠
          lowPt k r u v b i (parLam k r v b ⟨i, hin⟩ + ((t + 1 : ℕ) : ℝ)) ⟨i, hin⟩ - 1 / 2 := by
        intro l
        rw [lowPt_at]
        have htN : ((t + 1 : ℕ) : ℝ) ≤ N := by exact_mod_cast ht
        have ht0 : (0 : ℝ) ≤ t := Nat.cast_nonneg t
        have hc : ((t + 1 : ℕ) : ℝ) = t + 1 := Nat.cast_succ t
        exact no_cross hI i hi hin _ (by linarith) (by linarith) l
      have h3 := hSC.1 _ ⟨i, hin⟩ hy.1 hy.2 (by rw [hsub]; exact hy'.1) (by rw [hsub]; exact hy'.2)
        hnc hp
      rw [hsub] at h3
      exact h3
  have e2 : parLam k r v b ⟨i, hin⟩ + ((N : ℕ) : ℝ) = u ⟨i, hi⟩ - 1 / 2 := by linarith
  apply key N le_rfl
  rw [e2, ← e1]
  exact hP

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.InterlacesULt =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.RsParLamMinus =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.RsParLamMinus", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.LowerStepStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS

def rsExt {N : ℕ} (f : Fin N → ℝ) (x : ℕ) : ℝ := if h : x < N then f ⟨x, h⟩ else 0

theorem rsExt_mk {N : ℕ} (f : Fin N → ℝ) (x : ℕ) (h : x < N) : f ⟨x, h⟩ = rsExt f x := by
  rw [rsExt, dif_pos h]

def rsG (B : ℕ → ℝ) (t j m q : ℕ) : ℝ :=
  if q < j then -B q else if q = j then -B q - (j : ℝ) * t + m else -B q - (q : ℝ) * t

def rsF (k : ℕ) (U B : ℕ → ℝ) (t j m x : ℕ) : ℝ :=
  if x < k then U x - 1 / 2 else rsG B t j m (x - (k - 1))

def rsPt (k r : ℕ) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t j m : ℕ) :
    Fin (2 * r + k + 1) → ℝ :=
  fun a => rsF k (rsExt u) (rsExt b) t j m a.val

theorem rsPt_zero (k r : ℕ) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t j : ℕ) :
    rsPt k r u b t j 0 = raisePar k r u b t j := by
  funext a
  have ha := a.isLt
  simp only [rsPt, rsF, rsG, raisePar, rsExt]
  split_ifs <;> first | (exfalso; omega) | ring1 | (push_cast; ring1) | (subst_vars; push_cast; ring1)

theorem rsPt_top (k r : ℕ) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t j : ℕ) :
    rsPt k r u b t j (j * t) = raisePar k r u b t (j + 1) := by
  funext a
  have ha := a.isLt
  simp only [rsPt, rsF, rsG, raisePar, rsExt]
  split_ifs <;> first | (exfalso; omega) | ring1 | (push_cast; ring1)

theorem rsPt_succ (k r : ℕ) (u : Fin k → ℝ) (b : Fin (2 * r + 2) → ℝ) (t j m : ℕ)
    (hk : 1 ≤ k) (hj : 1 ≤ j) (hj2 : j ≤ 2 * r + 1) :
    rsPt k r u b t j (m + 1) =
      rsPt k r u b t j m + Pi.single (⟨j + k - 1, by omega⟩ : Fin (2 * r + k + 1)) 1 := by
  funext a
  have ha := a.isLt
  simp only [Pi.add_apply, Pi.single_apply, rsPt, rsF, rsG, rsExt, Fin.ext_iff]
  split_ifs <;> first | (exfalso; omega) | ring1 | (push_cast; ring1)

theorem rsG_step (B : ℕ → ℝ) (h : ℝ) (t j m q N : ℕ) (hm : m ≤ j * t)
    (hBlt : ∀ q, q + 1 < N → B q < B (q + 1)) (hBgap : ∀ q, q + 1 < N → h ≤ B (q + 1) - B q)
    (hq : q + 1 < N) :
    rsG B t j m (q + 1) < rsG B t j m q ∧ h ≤ rsG B t j m q - rsG B t j m (q + 1) := by
  have hBq := hBlt q hq
  have hgq := hBgap q hq
  have hmR : (m : ℝ) ≤ (j : ℝ) * t := by exact_mod_cast hm
  have ht : (0 : ℝ) ≤ t := Nat.cast_nonneg t
  have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have e1 : ((q : ℝ) + 1) * t = (q : ℝ) * t + t := by ring
  unfold rsG
  rcases lt_trichotomy (q + 1) j with h1 | h1 | h1
  · rw [if_pos h1, if_pos (show q < j by omega)]
    constructor <;> linarith
  · rw [if_neg (show ¬ q + 1 < j by omega), if_pos h1, if_pos (show q < j by omega)]
    constructor <;> linarith
  · rcases Nat.lt_or_ge j q with h2 | h2
    · rw [if_neg (show ¬ q + 1 < j by omega), if_neg (show q + 1 ≠ j by omega),
        if_neg (show ¬ q < j by omega), if_neg (show q ≠ j by omega)]
      push_cast
      have hqt : (0 : ℝ) ≤ (q : ℝ) * t := by positivity
      constructor <;> linarith
    · have hqj : q = j := by omega
      have hqt : (q : ℝ) * t = (j : ℝ) * t := by rw [hqj]
      rw [if_neg (show ¬ q + 1 < j by omega), if_neg (show q + 1 ≠ j by omega),
        if_neg (show ¬ q < j by omega), if_pos hqj]
      push_cast
      constructor <;> linarith

theorem rsG_le (B : ℕ → ℝ) (t j m q : ℕ) (hm : m ≤ j * t) : rsG B t j m q ≤ -B q := by
  have hmR : (m : ℝ) ≤ (j : ℝ) * t := by exact_mod_cast hm
  have hqt : (0 : ℝ) ≤ (q : ℝ) * t := by positivity
  unfold rsG
  split_ifs <;> linarith

theorem rsG_int (B : ℕ → ℝ) (t j m q : ℕ) : ∃ z : ℤ, rsG B t j m q = -B q + z := by
  unfold rsG
  split_ifs
  · exact ⟨0, by simp⟩
  · exact ⟨(m : ℤ) - (j : ℤ) * (t : ℤ), by push_cast; ring⟩
  · exact ⟨-((q : ℤ) * (t : ℤ)), by push_cast; ring⟩

theorem rsF_step (k r : ℕ) (U B : ℕ → ℝ) (h : ℝ) (t j m x : ℕ) (hk : 1 ≤ k) (hm : m ≤ j * t)
    (hBlt : ∀ q, q + 1 < 2 * r + 2 → B q < B (q + 1))
    (hBgap : ∀ q, q + 1 < 2 * r + 2 → h ≤ B (q + 1) - B q)
    (hUlt : ∀ x, x + 1 < k → U (x + 1) < U x) (hUhalf : -B 0 ≤ U (k - 1) - 1 / 2)
    (hx : x + 1 < 2 * r + k + 1) :
    rsF k U B t j m (x + 1) < rsF k U B t j m x ∧
      (k - 1 ≤ x → h ≤ rsF k U B t j m x - rsF k U B t j m (x + 1)) := by
  by_cases hx1 : x + 1 < k
  · have hx0 : x < k := by omega
    rw [rsF, rsF, if_pos hx1, if_pos hx0]
    exact ⟨by linarith [hUlt x hx1], fun h' => absurd h' (by omega)⟩
  · by_cases hx0 : x < k
    · have hxk : x = k - 1 := by omega
      have e : x + 1 - (k - 1) = 1 := by omega
      rw [rsF, rsF, if_neg hx1, if_pos hx0, e]
      have hle := rsG_le B t j m 1 hm
      have hb01 : B 0 < B 1 := hBlt 0 (by omega)
      have hg01 : h ≤ B 1 - B 0 := hBgap 0 (by omega)
      have hU : U x = U (k - 1) := by rw [hxk]
      constructor
      · linarith
      · intro _
        linarith
    · have hq : x - (k - 1) + 1 < 2 * r + 2 := by omega
      have e : x + 1 - (k - 1) = x - (k - 1) + 1 := by omega
      rw [rsF, rsF, if_neg hx1, if_neg hx0, e]
      obtain ⟨h1, h2⟩ := rsG_step B h t j m (x - (k - 1)) (2 * r + 2) hm hBlt hBgap hq
      exact ⟨h1, fun _ => h2⟩

theorem rsParLam_minus (k r : ℕ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ)
    (a : Fin (2 * r + k + 1)) (ha : k - 1 ≤ a.val) :
    parLam k r v b a = -rsExt b (a.val - (k - 1)) := by
  have h1 : ¬ a.val < k - 1 := by omega
  have h2 : a.val - (k - 1) < 2 * r + 2 := by have := a.isLt; omega
  simp only [parLam, rsExt, dif_neg h1, dif_pos h2]

private lemma strictAnti_lt_of_succ_lt (g : ℕ → ℝ) (n : ℕ) (hg : ∀ x, x + 1 < n → g (x + 1) < g x) :
    ∀ x y, x < y → y < n → g y < g x := by
  intro x y hxy hy
  induction y with
  | zero => omega
  | succ y ih =>
    rcases Nat.lt_or_ge x y with h1 | h1
    · exact lt_trans (hg y hy) (ih h1 (by omega))
    · have : x = y := by omega
      subst this
      exact hg x hy

private lemma gap_lemma_2 (g : ℕ → ℝ) (n c : ℕ) (h : ℝ)
    (hanti : ∀ x y, x < y → y < n → g y < g x)
    (hgap : ∀ x, x + 1 < n → c ≤ x → h ≤ g x - g (x + 1))
    (x y : ℕ) (hxy : x < y) (hy : y < n) (hc : c < y) : h ≤ g x - g y := by
  have h1 := hgap (y - 1) (by omega) (by omega)
  have e : y - 1 + 1 = y := by omega
  rw [e] at h1
  rcases Nat.lt_or_ge x (y - 1) with h2 | h2
  · have := hanti x (y - 1) h2 (by omega)
    linarith
  · have : x = y - 1 := by omega
    rw [this]
    exact h1

theorem raiseStep : RaiseStepStatement := by
  intro k r u v b h t P hk hpar hint hhalf hlow hSC j hj hj2 hP
  have hBlt : ∀ q, q + 1 < 2 * r + 2 → rsExt b q < rsExt b (q + 1) := by
    intro q hq
    have hq0 : q + (k - 1) < 2 * r + k + 1 := by omega
    have hq1 : q + (k - 1) + 1 < 2 * r + k + 1 := by omega
    have h1 := hpar.1 (Fin.mk_lt_mk.mpr (Nat.lt_succ_self _) :
      (⟨q + (k - 1), hq0⟩ : Fin (2 * r + k + 1)) < ⟨q + (k - 1) + 1, hq1⟩)
    rw [rsParLam_minus k r v b ⟨q + (k - 1) + 1, hq1⟩ (show k - 1 ≤ q + (k - 1) + 1 by omega),
      rsParLam_minus k r v b ⟨q + (k - 1), hq0⟩ (show k - 1 ≤ q + (k - 1) by omega)] at h1
    have e1 : (⟨q + (k - 1), hq0⟩ : Fin (2 * r + k + 1)).val - (k - 1) = q := by
      show q + (k - 1) - (k - 1) = q
      omega
    have e2 : (⟨q + (k - 1) + 1, hq1⟩ : Fin (2 * r + k + 1)).val - (k - 1) = q + 1 := by
      show q + (k - 1) + 1 - (k - 1) = q + 1
      omega
    rw [e1, e2] at h1
    linarith
  have hBgap : ∀ q, q + 1 < 2 * r + 2 → h ≤ rsExt b (q + 1) - rsExt b q := by
    intro q hq
    rw [← rsExt_mk b (q + 1) hq, ← rsExt_mk b q (by omega)]
    exact hlow ⟨q, by omega⟩ hq
  have hUlt : ∀ x, x + 1 < k → rsExt u (x + 1) < rsExt u x := by
    intro x hx
    rw [← rsExt_mk u (x + 1) hx, ← rsExt_mk u x (by omega)]
    have h1 := hint.1 ⟨x, by omega⟩
    exact lt_trans h1.2 h1.1
  have hUhalf : -rsExt b 0 ≤ rsExt u (k - 1) - 1 / 2 := by
    have hk0 : k - 1 < k := by omega
    have h1 := hint.2 (by omega)
    obtain ⟨z, hz⟩ := hhalf ⟨k - 1, hk0⟩ ⟨k - 1, by omega⟩
    rw [rsParLam_minus k r v b ⟨k - 1, by omega⟩ (le_refl _)] at hz
    have e0 : rsExt b ((⟨k - 1, by omega⟩ : Fin (2 * r + k + 1)).val - (k - 1)) =
        b ⟨0, by omega⟩ := by
      show rsExt b (k - 1 - (k - 1)) = _
      rw [Nat.sub_self, ← rsExt_mk b 0 (by omega)]
    rw [e0] at hz
    rw [← rsExt_mk u (k - 1) hk0, ← rsExt_mk b 0 (by omega)]
    have hz0 : (-1 : ℤ) < z := by
      have : ((-1 : ℤ) : ℝ) < (z : ℝ) := by push_cast; linarith
      exact_mod_cast this
    have hz1 : (0 : ℝ) ≤ (z : ℝ) := by exact_mod_cast (show (0 : ℤ) ≤ z by omega)
    linarith
  have hstep : ∀ m, m ≤ j * t → ∀ x, x + 1 < 2 * r + k + 1 →
      rsF k (rsExt u) (rsExt b) t j m (x + 1) < rsF k (rsExt u) (rsExt b) t j m x ∧
      (k - 1 ≤ x → h ≤ rsF k (rsExt u) (rsExt b) t j m x - rsF k (rsExt u) (rsExt b) t j m (x + 1)) :=
    fun m hm x hx => rsF_step k r (rsExt u) (rsExt b) h t j m x hk hm hBlt hBgap hUlt hUhalf hx
  have hanti : ∀ m, m ≤ j * t → ∀ x y, x < y → y < 2 * r + k + 1 →
      rsF k (rsExt u) (rsExt b) t j m y < rsF k (rsExt u) (rsExt b) t j m x :=
    fun m hm => strictAnti_lt_of_succ_lt (fun z => rsF k (rsExt u) (rsExt b) t j m z) (2 * r + k + 1)
      (fun x hx => (hstep m hm x hx).1)
  have hepsc : ∀ x y : Fin (2 * r + k + 1), x.val < y.val → parEps k r x ≠ parEps k r y →
      k - 1 < y.val := by
    intro x y hxy hne
    by_contra hcon
    apply hne
    have e1 : parEps k r x = true := by
      show (if x.val < k - 1 then true else decide ((x.val - (k - 1)) % 2 = 0)) = true
      rw [if_pos (show x.val < k - 1 by omega)]
    have e2 : parEps k r y = true := by
      show (if y.val < k - 1 then true else decide ((y.val - (k - 1)) % 2 = 0)) = true
      split_ifs with h1
      · rfl
      · have : y.val - (k - 1) = 0 := by omega
        simp [this]
    rw [e1, e2]
  have hGap : ∀ m, m ≤ j * t → GapAtLeast (parEps k r) (rsPt k r u b t j m) h := by
    intro m hm x y hne
    have hg := gap_lemma_2 (fun z => rsF k (rsExt u) (rsExt b) t j m z) (2 * r + k + 1) (k - 1) h
      (hanti m hm) (fun z hz hc => (hstep m hm z hz).2 hc)
    rcases lt_trichotomy x.val y.val with h1 | h1 | h1
    · exact le_trans (hg x.val y.val h1 y.isLt (hepsc x y h1 hne)) (le_abs_self _)
    · exact absurd (congrArg (parEps k r) (Fin.ext h1)) hne
    · rw [abs_sub_comm]
      exact le_trans (hg y.val x.val h1 x.isLt (hepsc y x h1 (Ne.symm hne))) (le_abs_self _)
  have hHC : ∀ m, m ≤ j * t → IsHCPar (rsPt k r u b t j m) := by
    intro m hm
    refine ⟨fun x y hxy => hanti m hm x.val y.val hxy y.isLt, fun x => ?_⟩
    obtain ⟨z2, hz2⟩ := hpar.2 x
    by_cases hx : x.val < k
    · obtain ⟨z1, hz1⟩ := hhalf ⟨x.val, hx⟩ x
      refine ⟨z1 + z2, ?_⟩
      show rsF k (rsExt u) (rsExt b) t j m x.val - _ = _
      rw [rsF, if_pos hx, ← rsExt_mk u x.val hx, Int.cast_add]
      linarith
    · obtain ⟨z3, hz3⟩ := rsG_int (rsExt b) t j m (x.val - (k - 1))
      have hl := rsParLam_minus k r v b x (by omega)
      refine ⟨z3 + z2, ?_⟩
      show rsF k (rsExt u) (rsExt b) t j m x.val - _ = _
      rw [rsF, if_neg hx, hz3, Int.cast_add]
      linarith
  have key : ∀ m, m ≤ j * t → P (rsPt k r u b t j m) := by
    intro m
    induction m with
    | zero =>
      intro _
      rw [rsPt_zero]
      exact hP
    | succ m ih =>
      intro hm
      have hm' : m ≤ j * t := by omega
      rw [rsPt_succ k r u b t j m hk hj hj2]
      refine hSC.2 _ _ (hHC m hm') (hGap m hm') ?_ ?_ ?_ (ih hm')
      · rw [← rsPt_succ k r u b t j m hk hj hj2]
        exact hHC (m + 1) hm
      · rw [← rsPt_succ k r u b t j m hk hj hj2]
        exact hGap (m + 1) hm
      · intro i heq
        have hi : i.val < j + k - 1 := by have := i.isLt; omega
        have hlt := (hHC m hm').1 (Fin.mk_lt_mk.mpr hi :
          (⟨i.val, by omega⟩ : Fin (2 * r + k + 1)) < ⟨j + k - 1, by omega⟩)
        have hv : rsPt k r u b t j m ⟨i.val, by omega⟩ = u i - 1 / 2 := by
          show rsF k (rsExt u) (rsExt b) t j m i.val = u i - 1 / 2
          rw [rsF, if_pos i.isLt, ← rsExt_mk u i.val i.isLt]
        linarith
  have := key (j * t) le_rfl
  rwa [rsPt_top] at this

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.RsParLamMinus =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.WalkEnds =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.WalkEnds", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.LowerStepStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

theorem walkEnds : EndsStatement := by
  intro k r u v b t
  refine ⟨?_, ?_, ?_⟩
  · funext a
    have ha := a.isLt
    simp only [lamT, raisePar]
    split_ifs
    all_goals first
      | rfl
      | (exfalso; omega)
      | (have h0 : a.val - (k - 1) = 0 := by omega
         simp [h0])
  · funext a
    have ha := a.isLt
    simp only [raisePar, walkPar, parLam]
    split_ifs
    all_goals first
      | rfl
      | (exfalso; omega)
  · funext a
    simp [walkPar]

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.WalkEnds =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.Walk =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.Walk", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.LowerStepStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.InterlacesULt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.RsParLamMinus\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.WalkEnds\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

theorem walk : WalkStatement := by
  intro k r u v b h t P hk hpar hint hhalf hlow hstep hP
  obtain ⟨e1, e2, e3⟩ := walkEnds k r u v b t
  have hR : ∀ j, 1 ≤ j → j ≤ 2 * r + 2 → P (raisePar k r u b t j) := by
    intro j
    induction j with
    | zero => intro h1; omega
    | succ j ih =>
      intro h1 h2
      rcases Nat.eq_or_lt_of_le h1 with h3 | h3
      · have hj : j = 0 := by omega
        subst hj
        rw [← e1]
        exact hP
      · exact raiseStep k r u v b h t P hk hpar hint hhalf hlow hstep j (by omega) (by omega)
          (ih (by omega) (by omega))
  have key : ∀ m, m ≤ k → P (walkPar k r u v b (k - m)) := by
    intro m
    induction m with
    | zero =>
      intro _
      rw [Nat.sub_zero, ← e2]
      exact hR (2 * r + 2) (by omega) le_rfl
    | succ m ih =>
      intro hm
      have h1 := ih (by omega)
      have heq : k - m = (k - (m + 1)) + 1 := by omega
      rw [heq] at h1
      exact lowerStep k r u v b h P hk hpar hint hhalf hlow hstep (k - (m + 1)) (by omega) h1
  have h0 := key k le_rfl
  rw [Nat.sub_self, e3] at h0
  exact h0

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.Walk =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.ParEpsQOf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.ParEpsQOf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.GlueSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.Walk\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapBigLap\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

theorem parEps_qOf (k r : ℕ) (hk : 1 ≤ k) : qOf (parEps k r) = r + 1 :=
  noncompactCount_parabolicSign k r hk

theorem parEps_pOf (k r : ℕ) (hk : 1 ≤ k) : pOf (parEps k r) = k + r := by
  have h := compactCount_parabolicSign k r hk
  rw [show parEps k r = Formalism.MainNotions.CayleySignature.eps48 k r from rfl, h]
  omega

theorem walkStep : WalkStepStatement := by
  intro hIS hStep k r u v b h t hk hHC hI hH hL hG hB
  exact walk k r u v b h t (fun lam => BesselNZ (parEps k r) lam u) hk hHC hI hH hL
    (hStep hIS k r (parEps k r) u h hG (parEps_pOf k r hk) (parEps_qOf k r hk)) hB

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.ParEpsQOf =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapLapStepGapStatement =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapLapStepGapStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.StepDownStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

def GapLapStepGapStatement : Prop :=
  ∀ (n : ℕ) (ε : Fin n → Bool) (lam : Fin n → ℝ) (h : ℝ), 1 ≤ pOf ε → 1 ≤ qOf ε → GapLap ε lam h →
    StepGap ε (qOf ε - 1) h

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapLapStepGapStatement =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapStep =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapStep", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapLapStepGapStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

theorem gapLap_stepGap : GapLapStepGapStatement := by
  intro n ε lam h hp hq hG
  obtain ⟨-, -, hN⟩ := hG
  unfold hNeed at hN
  have h1 := lt_of_le_of_lt (le_max_left _ _) hN
  have h3 := lt_of_le_of_lt (le_trans (le_max_right _ _) (le_max_right _ _)) hN
  have hcast : (((qOf ε - 1 : ℕ) : ℕ) : ℝ) = (qOf ε : ℝ) - 1 := by
    rw [Nat.cast_sub hq, Nat.cast_one]
  have hm : (1 : ℝ) ≤ (min (pOf ε) (qOf ε) : ℕ) := by
    exact_mod_cast le_min hp hq
  have hs : 0 < Real.sqrt (2 * (min (pOf ε) (qOf ε) : ℕ) : ℝ) := Real.sqrt_pos.mpr (by linarith)
  refine ⟨by linarith, ?_⟩
  rw [hcast, lt_sub_iff_add_lt, lt_div_iff₀ (by positivity)]
  linarith
end ReciprocityTheory.ChartRestriction.DS.Lap -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapStep =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ParitySignEqGapSign =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ParitySignEqGapSign", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceFoundations.RaisingLoweringNormIdentities\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.IfaceSt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.LaplaceEstimates.StepDownStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.InterlacingWalks.ParEpsQOf\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapStep\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.TransportInt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS

def NVStatement : Prop :=
  ∀ (k r : ℕ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ) (h : ℝ),
    1 ≤ k → IsHCPar (parLam k r v b) → Interlaces k r u v b → HalfInts k r u v b → LowGaps r b h →
    GapLap (parEps k r) (parLam k r v b) h → BesselAll (parEps k r) (parLam k r v b) u

theorem nv_of (hI : Base.StepIBaseStatement) (hS : StepStatement) (hIS : S0.IntSStatement)
    (hDD : DecDerivStatement) : NVStatement := by
  intro k r u v b h hk hHC hIL hHalf hLow hGap
  have hp := parEps_pOf k r hk
  have hq := parEps_qOf k r hk
  have hSG : StepGap (parEps k r) r h := by
    have := gapLap_stepGap _ (parEps k r) (parLam k r v b) h (by rw [hp]; omega) (by rw [hq]; omega) hGap
    rwa [hq, Nat.add_sub_cancel] at this
  obtain ⟨t₀, ht⟩ := hI k r u v b hk hHC hIL hHalf
  exact TransportInt.transport_of hIS hDD hk hGap
    (walkStep hIS hS k r u v b h t₀ hk hHC hIL hHalf hLow hSG (ht t₀ le_rfl))

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ParitySignEqGapSign =====
