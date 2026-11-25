module

public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.NumberTheory.Harmonic.Bounds
public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NumData
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NotSingularOfCentral
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PartnerCountOfCentral
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.MeanNum
public import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.StarFam
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.RemainingCountingStatement, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.GainBoundAllAddOneOfGainBoundAllRequired, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.LatticeChainSuccOfPartial, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NinthBoundArithB, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PrimeSumNumericFacts, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.ThirdEstimateOfNumericFacts, Formalism.SharpRestriction.GrowthBounds.LogarithmicSums

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.RemainingCountingStatement =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.RemainingCountingStatement", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G

namespace Formalism.MainNotions.AuxBlock8.Pf

def FamilyAskBounds {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∀ K : Consts, K.Nonneg → ∀ C31 Ce Cm : ℝ, 0 < C31 → 0 ≤ Ce → 0 ≤ Cm →
    ∀ (X : ∀ x (i : Fm.Ix x), Inst (Fm.D x i) (Fm.L x i)) (Y : ∀ x (i : Fm.Ix x), LatInst (Fm.D x i)),
      AdmFam Fm K X Y C31 Ce Cm → ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, RequiresAll (X x i)

def RemainingCountingStatement {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∀ K : Consts, K.Nonneg → ∀ C31 Ce Cm : ℝ, 0 < C31 → 0 ≤ Ce → 0 ≤ Cm →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ (X : ∀ x (i : Fm.Ix x), Inst (Fm.D x i) (Fm.L x i)) (Y : ∀ x (i : Fm.Ix x), LatInst (Fm.D x i)),
      AdmFam Fm K X Y C31 Ce Cm → ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
        GainBoundAll (X x i) K C ((Fm.L x i).sc.b ^ (x ^ (-(eps / 2))))

def FamilyFourthBound {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∀ K : Consts, K.Nonneg → ∀ C31 Ce Cm : ℝ, 0 < C31 → 0 ≤ Ce → 0 ≤ Cm →
    ∀ (X : ∀ x (i : Fm.Ix x), Inst (Fm.D x i) (Fm.L x i)) (Y : ∀ x (i : Fm.Ix x), LatInst (Fm.D x i)),
      AdmFam Fm K X Y C31 Ce Cm → ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, Conclusion2 (Fm.D x i) (Fm.L x i) (X x i) K

theorem eps_pos {eps : ℝ} (Fm : FamP eps) : 0 < eps := by
  obtain ⟨i⟩ := Fm.Ix_zero
  rw [← Fm.L_eps 0 i]
  exact (Fm.L 0 i).sc.eps_pos

theorem stmtEF_of {eps : ℝ} (Fm : FamP eps) (h0 : FamilyAskBounds Fm) (h1 : RemainingCountingStatement Fm) (h2 : FamilyFourthBound Fm) :
    FamilyClosedForm Fm := by
  intro K hK C31 Ce Cm hC31 hCe hCm
  obtain ⟨C, hC, hG⟩ := h1 K hK C31 Ce Cm hC31 hCe hCm
  refine ⟨C, hC, fun X Y hA => ?_⟩
  obtain ⟨a0, ha0⟩ := h0 K hK C31 Ce Cm hC31 hCe hCm X Y hA
  obtain ⟨a1, ha1⟩ := hG X Y hA
  obtain ⟨a2, ha2⟩ := h2 K hK C31 Ce Cm hC31 hCe hCm X Y hA
  refine ⟨fun x => x ^ (-(eps / 2)), ?_, max a0 (max a1 a2), fun x hx i => ?_⟩
  · exact tendsto_rpow_neg_atTop (half_pos (eps_pos Fm))
  · simp only [ge_iff_le, max_le_iff] at hx
    obtain ⟨e0, e1, e2⟩ := hx
    have g0 := ha0 x e0 i
    have g1 := ha1 x e1 i
    have g2 := ha2 x e2 i
    have g1' := g1 (aL (Fm.L x i)) (bL (Fm.L x i))
    refine ⟨g1' ?_, g2, fun a b ha hb p hp _ => g0 a b ha hb p hp⟩

    intro t ht
    unfold aL bL
    simp only [dif_pos ht]
    exact ⟨((Fm.L x i).aT_win ⟨t, ht⟩).1, ((Fm.L x i).aT_win ⟨t, ht⟩).2, (Fm.L x i).bT_ge ⟨t, ht⟩⟩

theorem stmtF_of_stmtEF {eps : ℝ} (Fm : FamP eps) (h : FamilyClosedForm Fm) : KudlaFamilyStatement Fm := by
  intro K hK X Y hA
  obtain ⟨C31, Ce, Cm, hC31, hCe, hCm, hA'⟩ := hA
  obtain ⟨C, hC, hP⟩ := h K hK C31 Ce Cm hC31 hCe hCm
  exact ⟨C, hP X Y hA'⟩

end Formalism.MainNotions.AuxBlock8.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.RemainingCountingStatement =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.GainBoundAllAddOneOfGainBoundAllRequired =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.GainBoundAllAddOneOfGainBoundAllRequired", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G

namespace Formalism.MainNotions.AuxBlock8.Pf.As

variable {D : D7} {L : SizeData₂ D}

theorem shift_ge (p y κ : ℝ) (hp : 2 ≤ p) (hκ : 0 ≤ κ) (hy0 : 0 ≤ y)
    (w : ℕ → ℝ) (hw : ∀ e, 0 ≤ w e) (Q : ℕ → Prop) [DecidablePred Q] :
    ∑' e : ℕ, (if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) ≤
      ∑' e : ℕ, (if Q e then max 0 (y / p ^ e - w e) else 0) := by
  have hp0 : (0 : ℝ) < p := by linarith
  have hr0 : (0 : ℝ) ≤ 1 / p := by positivity
  have hr1 : 1 / p < 1 := by rw [div_lt_one hp0]; linarith
  have hg : Summable (fun e : ℕ => y * (1 / p) ^ e) :=
    (summable_geometric_of_lt_one hr0 hr1).mul_left y
  have hs : ∀ c : ℕ → ℝ, (∀ e, 0 ≤ c e) →
      Summable (fun e => if Q e then max 0 (y / p ^ e - c e) else 0) := by
    intro c hc
    refine Summable.of_nonneg_of_le (fun e => ?_) (fun e => ?_) hg
    · split_ifs
      · exact le_max_left _ _
      · exact le_rfl
    · have hpe : y / p ^ e = y * (1 / p) ^ e := by rw [one_div_pow, div_eq_mul_one_div]
      split_ifs
      · exact max_le (mul_nonneg hy0 (by positivity)) (by rw [← hpe]; linarith [hc e])
      · exact mul_nonneg hy0 (by positivity)
  refine Summable.tsum_le_tsum (fun e => ?_) (hs _ fun e => by linarith [hw e]) (hs _ hw)
  split_ifs
  · exact max_le_max le_rfl (by linarith)
  · exact le_rfl

theorem shift_le (p y κ A : ℝ) (hp : 2 ≤ p) (hκ : 0 ≤ κ) (hy0 : 0 ≤ y) (hyA : y ≤ A) (hA : 1 ≤ A)
    (w : ℕ → ℝ) (hw : ∀ e, 1 ≤ w e) (Q : ℕ → Prop) [DecidablePred Q] (hQ : ∀ e, Q e → Odd e) :
    ∑' e : ℕ, (if Q e then max 0 (y / p ^ e - w e) else 0) ≤
      ∑' e : ℕ, (if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) + κ * Real.logb p A := by
  have hp1 : (1 : ℝ) < p := by linarith
  have hp0 : (0 : ℝ) < p := by linarith
  have hr0 : (0 : ℝ) ≤ 1 / p := by positivity
  have hr1 : 1 / p < 1 := by rw [div_lt_one hp0]; linarith
  have hg : Summable (fun e : ℕ => y * (1 / p) ^ e) :=
    (summable_geometric_of_lt_one hr0 hr1).mul_left y
  have hs : ∀ c : ℕ → ℝ, (∀ e, 0 ≤ c e) →
      Summable (fun e => if Q e then max 0 (y / p ^ e - c e) else 0) := by
    intro c hc
    refine Summable.of_nonneg_of_le (fun e => ?_) (fun e => ?_) hg
    · split_ifs
      · exact le_max_left _ _
      · exact le_rfl
    · have hpe : y / p ^ e = y * (1 / p) ^ e := by rw [one_div_pow, div_eq_mul_one_div]
      split_ifs
      · exact max_le (mul_nonneg hy0 (by positivity)) (by rw [← hpe]; linarith [hc e])
      · exact mul_nonneg hy0 (by positivity)
  have hL0 : 0 ≤ Real.logb p A := Real.logb_nonneg hp1 hA
  set n := ⌊Real.logb p A⌋₊ with hn
  set ind : ℕ → ℝ := fun e => if Q e ∧ (p : ℝ) ^ e < A then 1 else 0 with hind
  have hlog : ∀ e : ℕ, (p : ℝ) ^ e < A → e ≤ n := by
    intro e he
    apply Nat.le_floor
    have h1 : Real.logb p ((p : ℝ) ^ e) = e := by
      rw [Real.logb_pow, Real.logb_self_eq_one hp1, mul_one]
    rw [← h1]
    exact (Real.logb_lt_logb hp1 (by positivity) he).le
  have hsupp : ∀ e ∉ Finset.range (n + 1), ind e = 0 := by
    intro e he
    simp only [hind]
    rw [if_neg]
    rintro ⟨_, h⟩
    exact he (Finset.mem_range.2 (Nat.lt_succ_of_le (hlog e h)))
  have hind_sum : Summable ind := summable_of_ne_finset_zero hsupp
  have hcount : ∑' e, ind e ≤ Real.logb p A := by
    rw [tsum_eq_sum hsupp]
    have hsub : ∑ e ∈ Finset.range (n + 1), ind e ≤
        (((Finset.range (n + 1)).filter Odd).card : ℝ) := by
      rw [Finset.card_filter, Nat.cast_sum]
      refine Finset.sum_le_sum fun e _ => ?_
      simp only [hind]
      split_ifs with h1 h2 <;> first | exact absurd (hQ e h1.1) h2 | norm_num
    have hodd : ((Finset.range (n + 1)).filter Odd).card ≤ n := by
      have h := Finset.card_le_card_of_injOn (fun e => e / 2) (s := (Finset.range (n + 1)).filter Odd) (t := Finset.range ((n + 1) / 2))
        (by
          intro e he
          have he' : e ≤ n ∧ Odd e := by simpa using he
          obtain ⟨h1, k, rfl⟩ := he'
          simp only [Finset.coe_range, Set.mem_Iio, Finset.mem_coe, Finset.mem_range]
          omega)
        (by
          intro e1 he1 e2 he2 heq
          have he1' : e1 ≤ n ∧ Odd e1 := by simpa using he1
          have he2' : e2 ≤ n ∧ Odd e2 := by simpa using he2
          obtain ⟨_, k1, rfl⟩ := he1'
          obtain ⟨_, k2, rfl⟩ := he2'
          simp only at heq
          omega)
      rw [Finset.card_range] at h
      omega
    calc ∑ e ∈ Finset.range (n + 1), ind e ≤ (((Finset.range (n + 1)).filter Odd).card : ℝ) := hsub
      _ ≤ (n : ℝ) := by exact_mod_cast hodd
      _ ≤ Real.logb p A := Nat.floor_le hL0
  have hterm : ∀ e, (if Q e then max 0 (y / p ^ e - w e) else 0) ≤
      (if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) + κ * ind e := by
    intro e
    simp only [hind]
    by_cases hq : Q e
    · by_cases hu : 0 < y / p ^ e - w e
      · have hpA : (p : ℝ) ^ e < A := by
          have h1 : 1 < y / p ^ e := lt_of_le_of_lt (hw e) (by linarith)
          rw [lt_div_iff₀ (by positivity)] at h1
          linarith
        rw [if_pos hq, if_pos hq, if_pos ⟨hq, hpA⟩, max_eq_right hu.le]
        have := le_max_right 0 (y / p ^ e - (w e + κ))
        linarith
      · rw [if_pos hq, if_pos hq, max_eq_left (not_lt.1 hu)]
        have h1 := le_max_left 0 (y / p ^ e - (w e + κ))
        have h2 : 0 ≤ κ * (if Q e ∧ (p : ℝ) ^ e < A then (1 : ℝ) else 0) :=
          mul_nonneg hκ (by split_ifs <;> norm_num)
        linarith
    · rw [if_neg hq, if_neg hq, if_neg (fun h => hq h.1)]
      simp
  have hsκ := hs (fun e => w e + κ) (fun e => by linarith [hw e])
  calc ∑' e, (if Q e then max 0 (y / p ^ e - w e) else 0)
      ≤ ∑' e, ((if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) + κ * ind e) :=
        Summable.tsum_le_tsum hterm (hs _ fun e => by linarith [hw e]) (hsκ.add (hind_sum.mul_left κ))
    _ = ∑' e, (if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) + κ * ∑' e, ind e := by
        rw [Summable.tsum_add hsκ (hind_sum.mul_left κ), tsum_mul_left]
    _ ≤ ∑' e, (if Q e then max 0 (y / p ^ e - (w e + κ)) else 0) + κ * Real.logb p A :=
        add_le_add (le_refl _) (mul_le_mul_of_nonneg_left hcount hκ)

theorem n_pos (D : D7) : 1 ≤ D.R.n := by
  have h1 := D.R.two_le_m
  have h2 := D.R.m_le_f
  unfold Formalism.BasicNotions.Ranks.n
  omega

theorem fill_ge (X : Inst D L) (b : HH D → ℤ) (hb : ∀ t ∈ D.host.TT, (0 : ℝ) ≤ (b t : ℝ)) (j : ℕ)
    (z : Bool × HH D) : L.sc.w'' D.R.n ≤ fill X b j z := by
  have hx1 : 1 < L.sc.x := L.sc.one_lt_alt
  have hL0 : 0 ≤ L.sc.L := by
    show 0 ≤ L.sc.x ^ L.sc.eps
    exact Real.rpow_nonneg (by linarith) _
  have hb1 : 1 ≤ L.sc.b := by
    show 1 ≤ Real.exp L.sc.L
    exact Real.one_le_exp hL0
  have ha1 : 1 ≤ L.sc.a := by
    show 1 ≤ L.sc.x * L.sc.b
    nlinarith
  have hX1 : 1 ≤ L.sc.X' := by
    show 1 ≤ Real.exp (L.sc.x ^ (L.sc.eps / 3))
    exact Real.one_le_exp (Real.rpow_nonneg (by linarith) _)
  have hb'0 : 0 ≤ L.sc.b' := by
    show 0 ≤ L.sc.a / L.sc.X'
    exact div_nonneg (by linarith) (by linarith)
  have hn : (1 : ℝ) ≤ D.R.n := by exact_mod_cast n_pos D
  have hw1 : L.sc.w'' D.R.n ≤ L.sc.b' / L.sc.x := by
    show L.sc.b' / (L.sc.x * D.R.n) ≤ L.sc.b' / L.sc.x
    exact div_le_div_of_nonneg_left hb'0 (by linarith) (by nlinarith)
  have hw2 : L.sc.w'' D.R.n ≤ L.sc.b := by
    calc L.sc.w'' D.R.n ≤ L.sc.b' / L.sc.x := hw1
      _ = L.sc.b / L.sc.X' := by
        show L.sc.x * L.sc.b / L.sc.X' / L.sc.x = L.sc.b / L.sc.X'
        field_simp
      _ ≤ L.sc.b := div_le_self (by linarith) hX1
  unfold fill
  by_cases htop : IsTopPl D z
  · rw [if_pos (show z.1 = false ∧ z.2 ∈ D.host.TT from htop)]
    linarith [hb z.2 htop.2, (X.off_top j z htop).1]
  · rw [if_neg (show ¬(z.1 = false ∧ z.2 ∈ D.host.TT) from htop), zero_add]
    by_cases hthick : IsThickPl D z
    · linarith [(X.off_thick j z hthick).1]
    · exact (X.off_thin j z ⟨htop, hthick⟩).1

theorem kaJ_bounds (D : D7) (j : ℕ) (hj : j ∈ SizeData₂.lifts D) : 0 ≤ kaJ D j ∧ kaJ D j ≤ Nm D := by
  simp only [Formalism.BasicNotions.SizeData₂.lifts, Finset.mem_Icc] at hj
  obtain ⟨h1, h2⟩ := hj
  have h1' : (1 : ℝ) ≤ j := by exact_mod_cast h1
  have h2' : (j : ℝ) ≤ D.R.m := by exact_mod_cast h2
  have ht : (0 : ℝ) ≤ D.R.t + 1 := by positivity
  have hk : (0 : ℝ) ≤ D.R.k := by positivity
  unfold kaJ Nm Formalism.BasicNotions.Ranks.N
  push_cast
  constructor
  · apply div_nonneg _ (by norm_num)
    nlinarith
  · rw [div_le_iff₀ (by norm_num)]
    nlinarith [mul_le_mul_of_nonneg_right (show 2 * (j : ℝ) - 1 ≤ 2 * D.R.m by linarith) ht]

theorem asksAll_of (X : Inst D L) (hSz : Nm D + 1 ≤ L.sc.w'' D.R.n) : RequiresAll X := by
  have hx1 : 1 < L.sc.x := L.sc.one_lt_alt
  have hL0 : 0 ≤ L.sc.L := by
    show 0 ≤ L.sc.x ^ L.sc.eps
    exact Real.rpow_nonneg (by linarith) _
  have hb1 : 1 ≤ L.sc.b := by
    show 1 ≤ Real.exp L.sc.L
    exact Real.one_le_exp hL0
  have ha1 : 1 ≤ L.sc.a := by
    show 1 ≤ L.sc.x * L.sc.b
    nlinarith
  intro a b ha hb p hp j hj s hs
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  obtain ⟨hk0, hkN⟩ := kaJ_bounds D j hj
  have hNm0 : (0 : ℝ) ≤ Nm D := by unfold Nm; positivity
  have hwG : ∀ e, 1 ≤ fillG X b j (partner D p s e) := by
    intro e
    have := fill_ge X b hb j (partner D p s e)
    unfold fillG
    linarith
  have hw0 : ∀ e, 0 ≤ fillG X b j (partner D p s e) := fun e => by linarith [hwG e]
  have hwF : ∀ e, 0 ≤ fill X b j (partner D p s e) := fun e => by
    have := fill_ge X b hb j (partner D p s e)
    linarith
  have hA : 1 ≤ 2 * L.sc.a := by linarith
  have hlog : 0 ≤ Real.logb p (2 * L.sc.a) := Real.logb_nonneg (by linarith) hA
  by_cases hy : 0 ≤ (a s : ℝ)
  · have h1 := shift_ge (p : ℝ) (a s) (kaJ D j) hp2 hk0 hy
      (fun e => fillG X b j (partner D p s e)) hw0 Odd
    have h2 := shift_le (p : ℝ) (a s) (kaJ D j) (2 * L.sc.a) hp2 hk0 hy (ha s hs) hA
      (fun e => fillG X b j (partner D p s e)) hwG Odd (fun e h => h)
    simp only [fillG, sub_add_cancel] at h1 h2
    unfold askP askG fillG
    refine ⟨h1, ?_⟩
    nlinarith [mul_le_mul_of_nonneg_right hkN hlog]
  · have hz : ∀ c : ℕ → ℝ, (∀ e, 0 ≤ c e) →
        ∑' e : ℕ, (if Odd e then max 0 ((a s : ℝ) / (p : ℝ) ^ e - c e) else 0) = 0 := by
      intro c hc
      refine (tsum_congr fun e => ?_).trans tsum_zero
      split_ifs
      · apply max_eq_left
        have : (a s : ℝ) / (p : ℝ) ^ e ≤ 0 :=
          div_nonpos_of_nonpos_of_nonneg (by linarith) (by positivity)
        linarith [hc e]
      · rfl
    have e1 := hz (fun e => fill X b j (partner D p s e)) hwF
    have e2 := hz (fun e => fillG X b j (partner D p s e)) hw0
    beta_reduce at e1 e2
    unfold askP askG
    rw [e1, e2]
    exact ⟨le_rfl, by rw [zero_add]; exact mul_nonneg hNm0 hlog⟩

theorem lo_succ (K : Consts) (hLa : 0 ≤ K.La) (L : SizeData₂ D) (C bo : ℝ) (p : ℕ) (hp : p.Prime) :
    lo K L C bo p + (cG L + L.etaSz) * Real.logb p (2 * L.sc.a) ≤ lo K L (C + 1) bo p := by
  have hx1 : 1 < L.sc.x := L.sc.one_lt_alt
  have hL0 : 0 ≤ L.sc.L := by
    show 0 ≤ L.sc.x ^ L.sc.eps
    exact Real.rpow_nonneg (by linarith) _
  have hb1 : 1 ≤ L.sc.b := by
    show 1 ≤ Real.exp L.sc.L
    exact Real.one_le_exp hL0
  have ha1 : 1 ≤ L.sc.a := by
    show 1 ≤ L.sc.x * L.sc.b
    nlinarith
  have hX1 : 1 ≤ L.sc.X' := by
    show 1 ≤ Real.exp (L.sc.x ^ (L.sc.eps / 3))
    exact Real.one_le_exp (Real.rpow_nonneg (by linarith) _)
  have hb'0 : 0 ≤ L.sc.b' := by
    show 0 ≤ L.sc.a / L.sc.X'
    exact div_nonneg (by linarith) (by linarith)
  have hlogx : 0 ≤ Real.log L.sc.x := Real.log_nonneg hx1.le
  have hp0 : (0 : ℝ) ≤ p := Nat.cast_nonneg _
  have hw : 0 ≤ L.sc.w'' D.R.n := by
    show 0 ≤ L.sc.b' / (L.sc.x * D.R.n)
    exact div_nonneg hb'0 (mul_nonneg (by linarith) (Nat.cast_nonneg _))
  have hd1 : 0 < L.sc.delta1 := by
    show 0 < L.sc.x ^ (-(L.sc.eps / 8))
    exact Real.rpow_pos_of_pos (by linarith) _
  have hLaS : 0 ≤ La K L.sc := by
    unfold La
    exact mul_nonneg (mul_nonneg hLa (by positivity)) (Real.log_nonneg ha1)
  have g1 : 0 ≤ (rG L.sc : ℝ) * L.sc.b' * Real.log L.sc.x :=
    mul_nonneg (mul_nonneg (Nat.cast_nonneg _) hb'0) hlogx
  have g2 : 0 ≤ L.sc.w'' D.R.n * Real.log L.sc.x / L.sc.delta1 :=
    div_nonneg (mul_nonneg hw hlogx) hd1.le
  have g3 : 0 ≤ La K L.sc * L.sc.a / ((p : ℝ) * D.R.k) :=
    div_nonneg (mul_nonneg hLaS (by linarith)) (mul_nonneg hp0 (Nat.cast_nonneg _))
  have g4 : 0 ≤ L.sc.a * (p : ℝ) ^ (-(L1 D L.sc p : ℝ)) :=
    mul_nonneg (by linarith) (Real.rpow_nonneg hp0 _)
  have g5 : 0 ≤ L.sc.a / (p : ℝ) ^ 2 := div_nonneg (by linarith) (by positivity)
  have g6 := mul_nonneg hlogx (add_nonneg g3 g4)
  have g7 := mul_nonneg hlogx (add_nonneg g3 g5)
  obtain ⟨α, β, hform, hα⟩ : ∃ α β : ℝ, (∀ C' : ℝ, lo K L C' bo p = C' * α + β) ∧
      (cG L + L.etaSz) * Real.logb p (2 * L.sc.a) ≤ α :=
    ⟨(cG L + L.etaSz) * Real.logb p (2 * L.sc.a) +
        (if IsResidueClassZero D p then (if (p : ℝ) < L.sc.p0 D.R.k then (rG L.sc : ℝ) * L.sc.b' * Real.log L.sc.x
          else if (p : ℝ) < L.sc.X' then L.sc.w'' D.R.n * Real.log L.sc.x / L.sc.delta1 else 0)
          else 0) +
        (if IsResidueClassZero D p ∧ (p : ℝ) < L.sc.X' then Real.log L.sc.x * (La K L.sc * L.sc.a / ((p : ℝ) * D.R.k) +
          (if (p : ℝ) < L.sc.p0 D.R.k then L.sc.a * (p : ℝ) ^ (-(L1 D L.sc p : ℝ))
            else L.sc.a / (p : ℝ) ^ 2)) else 0),
      (if IsResidueClassZero D p then (if (p : ℝ) < L.sc.p0 D.R.k then 0
        else if (p : ℝ) < L.sc.X' then L.sc.b' / L.sc.x + L.etaSz + bo else 0) else 0),
      fun C' => by
        simp only [lo]
        split_ifs <;> ring,
      by split_ifs <;> linarith [g1, g2, g6, g7]⟩
  rw [hform, hform]
  have e : (C + 1) * α + β = C * α + β + α := by ring
  rw [e]
  linarith

theorem fl_succ (D : D7) (s : Scale) (C : ℝ) (p : ℕ) (hp : p.Prime) : fl D s C p ≤ fl D s (C + 1) p := by
  have hx1 : 1 < s.x := s.one_lt_alt
  have hL0 : 0 ≤ s.L := by
    show 0 ≤ s.x ^ s.eps
    exact Real.rpow_nonneg (by linarith) _
  have hb1 : 1 ≤ s.b := by
    show 1 ≤ Real.exp s.L
    exact Real.one_le_exp hL0
  have ha1 : 1 ≤ s.a := by
    show 1 ≤ s.x * s.b
    nlinarith
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hl : 0 ≤ Real.logb p s.a := Real.logb_nonneg hp1 ha1
  have h1 : 0 ≤ (D.R.f : ℝ) * Nm D ^ 2 * Real.logb p s.a := mul_nonneg (by positivity) hl
  have h2 : 0 ≤ (D.R.f : ℝ) * Real.logb p s.a ^ 2 := by positivity
  unfold fl
  nlinarith [h1, h2]

theorem TTP_subset₂ (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) : TTP X K a b p ⊆ D.host.TT := by
  unfold TTP
  split_ifs
  · exact Finset.Subset.refl _
  · exact Finset.filter_subset _ _

theorem gainBoundAll_add_one_of_gainBoundAllRequired (X : Inst D L) (K : Consts) (hLa : 0 ≤ K.La) (C bo : ℝ) (hA : RequiresAll X) (hNc : Nm D ≤ cG L)
    (h : GainBoundAllUniform X K C bo) : GainBoundAll X K (C + 1) bo := by
  have hx1 : 1 < L.sc.x := L.sc.one_lt_alt
  have hL0 : 0 ≤ L.sc.L := by
    show 0 ≤ L.sc.x ^ L.sc.eps
    exact Real.rpow_nonneg (by linarith) _
  have hb1 : 1 ≤ L.sc.b := by
    show 1 ≤ Real.exp L.sc.L
    exact Real.one_le_exp hL0
  have ha1 : 1 ≤ L.sc.a := by
    show 1 ≤ L.sc.x * L.sc.b
    nlinarith
  have hX1 : 1 ≤ L.sc.X' := by
    show 1 ≤ Real.exp (L.sc.x ^ (L.sc.eps / 3))
    exact Real.one_le_exp (Real.rpow_nonneg (by linarith) _)
  have hb'0 : 0 ≤ L.sc.b' := by
    show 0 ≤ L.sc.a / L.sc.X'
    exact div_nonneg (by linarith) (by linarith)
  intro a b hwin p hp hcls hX
  obtain ⟨hgain, hsum⟩ := h a b hwin p hp hcls hX
  refine ⟨hgain, ?_⟩
  have hlo := lo_succ K hLa L C bo p hp
  have hfl := fl_succ D L.sc C p hp
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hlog : 0 ≤ Real.logb p (2 * L.sc.a) := Real.logb_nonneg hp1 (by linarith)
  have heta := L.etaSz_pos
  have hk1 : (1 : ℝ) ≤ D.R.k := by
    have := D.R.m_add_three_le_k
    exact_mod_cast (by omega : 1 ≤ D.R.k)
  have hxA : 1 ≤ L.sc.x ^ (Scale.A / 2) :=
    Real.one_le_rpow hx1.le (by unfold Scale.A; norm_num)
  have ha2 : ∀ t ∈ D.host.TT, (a t : ℝ) ≤ 2 * L.sc.a := by
    intro t ht
    have h1 := (hwin t ht).2.1
    have h2 : L.sc.a / ((D.R.k : ℝ) * L.sc.x ^ (Scale.A / 2)) ≤ L.sc.a :=
      div_le_self (by linarith) (one_le_mul_of_one_le_of_one_le hk1 hxA)
    linarith
  have hb0 : ∀ t ∈ D.host.TT, (0 : ℝ) ≤ (b t : ℝ) := fun t ht => by
    linarith [(hwin t ht).2.2]
  have hterm : ∀ j ∈ SizeData₂.lifts D, ∀ s ∈ TTP X K a b p,
      askG X a b p j s - lo K L (C + 1) bo p ≤ askP X a b p j s - lo K L C bo p := by
    intro j hj s hs
    have hA := (hA a b ha2 hb0 p hp j hj s (TTP_subset₂ X K a b p hs)).2
    have h3 : Nm D * Real.logb p (2 * L.sc.a) ≤ (cG L + L.etaSz) * Real.logb p (2 * L.sc.a) :=
      mul_le_mul_of_nonneg_right (by linarith) hlog
    linarith
  have hsum2 : (∑ j ∈ SizeData₂.lifts D, ∑ s ∈ TTP X K a b p, (askG X a b p j s - lo K L (C + 1) bo p)) ≤
      ∑ j ∈ SizeData₂.lifts D, ∑ s ∈ TTP X K a b p, (askP X a b p j s - lo K L C bo p) :=
    Finset.sum_le_sum fun j hj => Finset.sum_le_sum fun s hs => hterm j hj s hs
  have hm : 0 ≤ (D.R.m : ℝ) := Nat.cast_nonneg _
  nlinarith [mul_le_mul_of_nonneg_left hfl hm]

end Formalism.MainNotions.AuxBlock8.Pf.As

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.GainBoundAllAddOneOfGainBoundAllRequired =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.LatticeChainSuccOfPartial =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.LatticeChainSuccOfPartial", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.NumberTheory.Harmonic.Bounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G

namespace Formalism.MainNotions.AuxBlock8.Pf.G5

variable {D : D7} {L : SizeData₂ D}

end Formalism.MainNotions.AuxBlock8.Pf.G5

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.LatticeChainSuccOfPartial =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NinthBoundArithB =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NinthBoundArithB", "h": "module\n\npublic import Mathlib.Analysis.Complex.Exponential\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.AuxBlock8.Pf.G5.Nu

end Formalism.MainNotions.AuxBlock8.Pf.G5.Nu

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NinthBoundArithB =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PrimeSumNumericFacts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PrimeSumNumericFacts", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.NumberTheory.Harmonic.Bounds\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NinthBoundArithB\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NumData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G Filter

namespace Formalism.MainNotions.AuxBlock8.Pf.G5.Nu


end Formalism.MainNotions.AuxBlock8.Pf.G5.Nu

namespace Formalism.MainNotions.AuxBlock8.Pf.G5

end Formalism.MainNotions.AuxBlock8.Pf.G5

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PrimeSumNumericFacts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.ThirdEstimateOfNumericFacts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.ThirdEstimateOfNumericFacts", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.NumberTheory.Harmonic.Bounds\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.Conclusion1OfGainBoundAll\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NumData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G Filter

namespace Formalism.MainNotions.AuxBlock8.Pf.G5

variable {D : D7} {L : SizeData₂ D}

namespace Nu


end Nu

end Formalism.MainNotions.AuxBlock8.Pf.G5

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.ThirdEstimateOfNumericFacts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.LogarithmicSums", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.RemainingCountingStatement\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.GainBoundAllAddOneOfGainBoundAllRequired\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.NotSingularOfCentral\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PartnerCountOfCentral\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.MeanNum\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.LatticeChainSuccOfPartial\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.PrimeSumNumericFacts\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.ThirdEstimateOfNumericFacts\npublic import Formalism.SharpRestriction.GrowthBounds.LogarithmicSums.StarFam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open NumberField Formalism.FrobeniusOrbits Formalism.BasicNotions Formalism.MainNotions.G

namespace Formalism.MainNotions.AuxBlock8.Pf

def RestStar {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∀ K : Consts, K.Nonneg → ∀ C31 Ce Cm : ℝ, 0 < C31 → ∃ C0 : ℝ, 0 ≤ C0 ∧ ∀ C ≥ C0,
    ∀ (X : ∀ x (i : Fm.Ix x), Inst (Fm.D x i) (Fm.L x i)) (Y : ∀ x (i : Fm.Ix x), LatInst (Fm.D x i)),
      AdmFam Fm K X Y C31 Ce Cm → ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
        StarAll (X x i) K C ((Fm.L x i).sc.b ^ (x ^ (-(eps / 2))))

theorem bo_nonneg (s : Scale) (y : ℝ) : 0 ≤ s.b ^ y := Real.rpow_nonneg (Real.exp_pos s.L).le y

private theorem eventually_adm_of_admFam {eps : ℝ} (Fm : FamP eps) {K : Consts}
    {X : ∀ x (i : Fm.Ix x), Inst (Fm.D x i) (Fm.L x i)} {Y : ∀ x (i : Fm.Ix x), LatInst (Fm.D x i)}
    {C31 Ce Cm : ℝ} (hA : AdmFam Fm K X Y C31 Ce Cm) :
    ∃ x0 : ℝ, ∀ x ≥ x0, Fm.x1 < x ∧
      ∀ i : Fm.Ix x, admitted (Fm.D x i) (Fm.L x i) (X x i) (Y x i) K ⟨C31, Ce, Cm, 1⟩ := by
  obtain ⟨x0, -, h⟩ := hA 1 one_pos
  refine ⟨max x0 (Fm.x1 + 1), fun x hx => ⟨?_, h x (le_trans (le_max_left _ _) hx)⟩⟩
  linarith [le_trans (le_max_right _ _) hx]

theorem rest0 {eps : ℝ} (Fm : FamP eps) : FamilyAskBounds Fm := by
  intro K _ C31 Ce Cm _ _ _ X Y hA
  obtain ⟨x0, h⟩ := eventually_adm_of_admFam Fm hA
  refine ⟨x0, fun x hx i => ?_⟩
  obtain ⟨-, -, -, -, -, -, -, -, -, hSz⟩ := (h x hx).2 i
  exact As.asksAll_of (X x i) hSz.2.2

theorem remainingCountingStatement_of_restStar {eps : ℝ} (Fm : FamP eps) (hS : RestStar Fm) : RemainingCountingStatement Fm := by
  intro K hK C31 Ce Cm hC31 hCe _
  obtain ⟨C0, hC0, hS'⟩ := hS K hK C31 Ce Cm hC31
  obtain ⟨C1, hC01, h3, hd1, hd2⟩ : ∃ C1 : ℝ, C0 ≤ C1 ∧ 3 ≤ C1 ∧ 2 * K.dl1 + (Ce + 1) ≤ C1 ∧
      4 * K.dl2 ≤ C1 :=
    ⟨max C0 (max 3 (max (2 * K.dl1 + (Ce + 1)) (4 * K.dl2))), le_max_left _ _,
      le_trans (le_max_left _ _) (le_max_right _ _),
      le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) (le_max_right _ _),
      le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) (le_max_right _ _)⟩
  refine ⟨C1 + 1, by linarith, fun X Y hA => ?_⟩
  obtain ⟨x1, h1⟩ := hS' C1 hC01 X Y hA
  obtain ⟨x2, h2⟩ := eventually_adm_of_admFam Fm hA
  refine ⟨max x1 x2, fun x hx i => ?_⟩
  obtain ⟨hxp, hadm⟩ := h2 x (le_trans (le_max_right _ _) hx)
  obtain ⟨-, -, -, -, -, -, a9, -, -, aSz⟩ := hadm i
  have hN : GainBoundConstants K (Ce + 1) C1 ((Fm.L x i).sc.b ^ (x ^ (-(eps / 2)))) :=
    ⟨h3, hd1, hd2, bo_nonneg _ _⟩
  have hP := gain_bound_all_of_star (Fm.params x hxp i) (X x i) K hK Ce C1 _ hCe hN a9
    (h1 x (le_trans (le_max_left _ _) hx) i)
  have hNc : Nm (Fm.D x i) ≤ cG (Fm.L x i) :=
    (basics (Fm.params x hxp i)).2.1.trans (St.base (Fm.params x hxp i)).2.2.2.2
  exact As.gainBoundAll_add_one_of_gainBoundAllRequired (X x i) K hK.1 C1 _ (As.asksAll_of (X x i) aSz.2.2) hNc hP

theorem rest2 {eps : ℝ} (Fm : FamP eps) : FamilyFourthBound Fm := by
  intro K hK C31 Ce Cm _ _ hCm X Y hA
  obtain ⟨x0, h⟩ := second_estimate_and_mean_along_family Fm K hK C31 Ce Cm hCm X Y hA
  exact ⟨x0, fun x hx i => (h x hx i).1⟩

theorem restStar {eps : ℝ} (Fm : FamP eps) : RestStar Fm := by
  exact St.star_fam Fm

theorem stmtEF {eps : ℝ} (Fm : FamP eps) : FamilyClosedForm Fm :=
  stmtEF_of Fm (rest0 Fm) (remainingCountingStatement_of_restStar Fm (restStar Fm)) (rest2 Fm)

theorem stmtF {eps : ℝ} (Fm : FamP eps) : KudlaFamilyStatement Fm :=
  stmtF_of_stmtEF Fm (stmtEF Fm)

end Formalism.MainNotions.AuxBlock8.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.LogarithmicSums =====
