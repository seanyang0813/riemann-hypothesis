module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.YmDerivSt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorRep
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HasseJidPow
import Formalism.PeriodIntegrals.HassePresH
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseDerivativeFiltration.HasseMemHfr
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.YmDeriv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.YmDeriv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.YmDeriv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.YmDerivSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorRep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps Finset.HasAntidiagonal

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ}

section
variable (X : PJ D B P j) (la : HeightOneSpectrum (𝓞 B.KO)) {N : ℕ} {wL : WeightFamilies.Wt D j} (w : Fin N → B.Cusp j wL)

def w0c : Lc X la w := w0inv X la w

def NoRow0 (β : Idx D j N →₀ ℕ) : Prop := ∀ k, β (0, k) = 0

theorem section_mul_inverse_completion :
    algebraMap (Rp X la N) (Lc X la w) (sec X la w 0) * w0c X la w = 1 :=
  section_mul_inverse_eq_one X la w

theorem coe_sfr_Lc (i : Fin (WeightFamilies.dimY D j + 1)) :
    ((sfr X la w i : ↥(Frac0 X la w)) : Lw X la w) =
      algebraMap (Rp X la N) (Lc X la w) (sec X la w i) * w0c X la w := by
  rw [coe_sfr, frac_apply, pow_one]; rfl

theorem hasse_section_eq_zero {β : Idx D j N →₀ ℕ} (hβ : NoRow0 β) (h0 : β ≠ 0) :
    hasseRp X la N β (sec X la w 0) = 0 := by
  rw [hasseRp_sec]
  refine Finset.sum_eq_zero fun k _ => ?_
  rw [hasseOp_Tv, if_neg h0, if_neg, map_zero, zero_smul]
  intro e
  have := hβ k
  rw [e, Finsupp.single_eq_same] at this
  exact one_ne_zero this

theorem hasse_sfr {β : Idx D j N →₀ ℕ} (hβ : NoRow0 β) (i : Fin (WeightFamilies.dimY D j + 1)) :
    hasse X la w β ((sfr X la w i : ↥(Frac0 X la w)) : Lw X la w) =
      algebraMap (Rp X la N) (Lc X la w) (hasseRp X la N β (sec X la w i)) * w0c X la w := by
  rw [coe_sfr_Lc]
  have hy : algebraMap (Rp X la N) (Lc X la w) (sec X la w 0) *
      (algebraMap (Rp X la N) (Lc X la w) (sec X la w i) * w0c X la w) =
      algebraMap (Rp X la N) (Lc X la w) (sec X la w i) := by
    rw [mul_left_comm, section_mul_inverse_completion, mul_one]
  have h := hasse_of_mul_eq X la w β hy
  rw [Finset.sum_eq_single ((0 : Idx D j N →₀ ℕ), β)] at h
  · rw [hasseRp_zero] at h
    dsimp only at h
    calc hasse X la w β (algebraMap (Rp X la N) (Lc X la w) (sec X la w i) * w0c X la w)
        = (algebraMap (Rp X la N) (Lc X la w) (sec X la w 0) * w0c X la w) *
            hasse X la w β (algebraMap (Rp X la N) (Lc X la w) (sec X la w i) * w0c X la w) := by
          rw [section_mul_inverse_completion, one_mul]
      _ = _ := by rw [mul_comm (algebraMap _ _ _) (w0c X la w), mul_assoc, h, mul_comm]
  · rintro ⟨q1, q2⟩ hq hne
    rw [mem_antidiagonal] at hq
    dsimp only at hq
    have hq1 : q1 ≠ 0 := by
      rintro rfl
      apply hne
      rw [zero_add] at hq
      rw [hq]
    have hn : NoRow0 q1 := fun k => by
      have h1 := congrArg (fun f : Idx D j N →₀ ℕ => f (0, k)) hq
      simp only [Finsupp.add_apply] at h1
      have h2 := hβ k
      omega
    rw [hasse_section_eq_zero X la w hn hq1, map_zero, zero_mul]
  · intro h'
    exact absurd (mem_antidiagonal.2 (zero_add β)) h'

end

variable {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem bcol_apply {N : ℕ} (jj : Fin N) (α : Fin (WeightFamilies.dimY D j) → ℕ) (p : Idx D j N) :
    PoleLengthBounds.bcol jj α p = if p.2 = jj then Fin.cases (motive := fun _ => ℕ) 0 α p.1 else 0 := rfl

theorem bcol_noRow0 {N : ℕ} (jj : Fin N) (α : Fin (WeightFamilies.dimY D j) → ℕ) : NoRow0 (PoleLengthBounds.bcol jj α) := fun k => by
  rw [bcol_apply]
  split_ifs <;> rfl

theorem bcol_sub_single {N : ℕ} (jj : Fin N) (α : Fin (WeightFamilies.dimY D j) → ℕ) (l : Fin (WeightFamilies.dimY D j)) :
    PoleLengthBounds.bcol jj α - Finsupp.single (l.succ, jj) 1 = PoleLengthBounds.bcol jj (α - Pi.single l 1) := by
  ext ⟨i, k⟩
  rw [Finsupp.tsub_apply, bcol_apply, bcol_apply, Finsupp.single_apply]
  refine Fin.cases ?_ (fun i => ?_) i
  · have : ((l.succ, jj) : Idx D j N) ≠ (0, k) := fun e => Fin.succ_ne_zero l (congrArg Prod.fst e)
    simp [this]
  · by_cases hk : k = jj
    · subst hk
      by_cases hi : i = l
      · subst hi; simp
      · have : ((l.succ, k) : Idx D j N) ≠ (i.succ, k) := fun e => hi (Fin.succ_injective _ (congrArg Prod.fst e)).symm
        simp [this, hi]
    · have : ((l.succ, jj) : Idx D j N) ≠ (i.succ, k) := fun e => hk (congrArg Prod.snd e).symm
      simp [this, hk]

theorem sum_add_single {d : ℕ} (δ : Fin d → ℕ) (l : Fin d) :
    ∑ i, (δ + Pi.single l 1 : Fin d → ℕ) i = ∑ i, δ i + 1 := by
  simp only [Pi.add_apply, Finset.sum_add_distrib, Finset.sum_pi_single', Finset.mem_univ, if_true]

theorem eq_sub_add_single {d : ℕ} (δ : Fin d → ℕ) (l : Fin d) (h : 1 ≤ δ l) :
    δ = (δ - Pi.single l 1) + Pi.single l 1 := by
  funext i
  by_cases hi : i = l
  · subst hi; simp; omega
  · simp [hi]

theorem sub_single_of_zero {d : ℕ} (δ : Fin d → ℕ) (l : Fin d) (h : δ l = 0) : δ - Pi.single l 1 = δ := by
  funext i
  by_cases hi : i = l
  · subst hi; simp [h]
  · simp [hi]

theorem coe_wfr_Lc (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (jj : Fin G.N) :
    ((PoleLengthBounds.wfr G la jj : ↥(Frac0 X la G.w)) : Lw X la G.w) =
      algebraMap (Rp X la G.N) (Lc X la G.w) (emb X la G.N (X.inc wL (G.w jj))) * w0c X la G.w := by
  simp only [PoleLengthBounds.wfr, coe_weightZeroFraction, frac_apply, pow_one] <;> rfl

theorem hasse_single_sfr (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (jj : Fin G.N)
    (l : Fin (WeightFamilies.dimY D j)) :
    hasse X la G.w (Finsupp.single ((l.succ, jj) : Idx D j G.N) 1)
        ((sfr X la G.w l.succ : ↥(Frac0 X la G.w)) : Lw X la G.w) =
      ((PoleLengthBounds.wfr G la jj : ↥(Frac0 X la G.w)) : Lw X la G.w) := by
  have hn : NoRow0 (Finsupp.single ((l.succ, jj) : Idx D j G.N) 1) := by
    simp [NoRow0, Fin.succ_ne_zero]
  rw [hasse_sfr X la G.w hn, hasseRp_single, pdRp_sec, if_pos rfl, coe_wfr_Lc]

theorem hasse_sfr_eq_zero (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (jj : Fin G.N)
    (α : Fin (WeightFamilies.dimY D j) → ℕ) (l : Fin (WeightFamilies.dimY D j)) {c : Idx D j G.N →₀ ℕ}
    (hc : ∀ p, c p ≤ PoleLengthBounds.bcol jj α p) (h0 : c ≠ 0) (he : c ≠ Finsupp.single (l.succ, jj) 1) :
    hasse X la G.w c ((sfr X la G.w l.succ : ↥(Frac0 X la G.w)) : Lw X la G.w) = 0 := by
  have hn : NoRow0 c := fun k =>
    le_antisymm (by simpa [bcol_noRow0 jj α k] using hc (0, k)) (Nat.zero_le _)
  rw [hasse_sfr X la G.w hn]
  by_cases h1 : ∃ p, c = Finsupp.single p 1
  · obtain ⟨p, rfl⟩ := h1
    rw [hasseRp_single, pdRp_sec]
    by_cases hp : p.1 = l.succ
    · exfalso
      have hp2 : p.2 = jj := by
        by_contra hne
        have := hc p
        rw [Finsupp.single_eq_same, bcol_apply, if_neg hne] at this
        omega
      exact he (by rw [show p = (l.succ, jj) from Prod.ext hp hp2])
    · rw [if_neg hp, map_zero, zero_mul]
  · push Not at h1
    rw [hasseRp_sec_eq_zero X la G.w h0 h1, map_zero, zero_mul]

theorem ymDeriv : PoleLengthBounds.YmDeriv := by
  intro D B P j X ka wL wF G la jj
  suffices H : ∀ (s : ℕ) (γ α : Fin (WeightFamilies.dimY D j) → ℕ), ∑ i, γ i = s → s ≤ ∑ i, α i →
      hasse X la G.w (PoleLengthBounds.bcol jj α) ((PoleLengthBounds.ym G la γ : ↥(Frac0 X la G.w)) : Lw X la G.w) =
        if γ = α then ((PoleLengthBounds.wfr G la jj : ↥(Frac0 X la G.w)) : Lw X la G.w) ^ (∑ i, α i) else 0 from
    fun γ α h => H _ γ α rfl h
  intro s
  induction s with
  | zero =>
    intro γ α hγ _
    have hγ0 : γ = 0 := by
      funext i
      exact (Finset.sum_eq_zero_iff.1 hγ) i (Finset.mem_univ i)
    subst hγ0
    have hym : PoleLengthBounds.ym G la 0 = 1 := by simp [PoleLengthBounds.ym]
    rw [hym, OneMemClass.coe_one]
    by_cases hα : α = 0
    · subst hα
      have hb : PoleLengthBounds.bcol jj (0 : Fin (WeightFamilies.dimY D j) → ℕ) = 0 := by
        ext ⟨i, k⟩
        rw [bcol_apply]
        refine Fin.cases ?_ (fun i => ?_) i <;> simp
      rw [hb, if_pos rfl]
      refine (hasse_zero X la G.w _).trans ?_
      simp
      rfl
    · have hb : PoleLengthBounds.bcol jj α ≠ 0 := by
        intro h
        obtain ⟨i, hi⟩ := Function.ne_iff.1 hα
        have := congrArg (fun f : Idx D j G.N →₀ ℕ => f (i.succ, jj)) h
        simp only [bcol_apply, Fin.cases_succ, Finsupp.coe_zero, Pi.zero_apply] at this
        exact hi this
      rw [if_neg (Ne.symm hα)]
      have := hasse_emb X la G.w hb 1
      rw [map_one, map_one] at this
      exact this
  | succ s ih =>
    intro γ α hγ hs
    obtain ⟨l, hl⟩ : ∃ l, 1 ≤ γ l := by
      by_contra hc
      push Not at hc
      have : ∑ i, γ i = 0 := Finset.sum_eq_zero fun i _ => by have := hc i; omega
      omega
    obtain ⟨γ', rfl⟩ : ∃ γ' : Fin (WeightFamilies.dimY D j) → ℕ, γ = γ' + Pi.single l 1 := ⟨_, eq_sub_add_single γ l hl⟩
    have hγ's : ∑ i, γ' i = s := by
      have := sum_add_single γ' l
      omega
    have hym : PoleLengthBounds.ym G la (γ' + Pi.single l 1) = sfr X la G.w l.succ * PoleLengthBounds.ym G la γ' :=
      PoleLengthBounds.prod_pow_add_single (fun i => sfr X la G.w i.succ) γ' l
    rw [hym, MulMemClass.coe_mul]
    refine (hasse_mul X la G.w (PoleLengthBounds.bcol jj α) _ _).trans ?_
    have hIHa : hasse X la G.w (PoleLengthBounds.bcol jj α) ((PoleLengthBounds.ym G la γ' : ↥(Frac0 X la G.w)) : Lw X la G.w) = 0 := by
      rw [ih γ' α hγ's (by omega), if_neg]
      · rfl
      · rintro rfl
        omega
    have hsα : s ≤ ∑ i, (α - Pi.single l 1 : Fin (WeightFamilies.dimY D j) → ℕ) i := by
      have h1 : ∑ i, α i ≤ ∑ i, ((α - Pi.single l 1) + Pi.single l 1 : Fin (WeightFamilies.dimY D j) → ℕ) i :=
        Finset.sum_le_sum fun i _ => le_tsub_add
      rw [sum_add_single] at h1
      omega
    have hIHb := ih γ' (α - Pi.single l 1) hγ's hsα
    have tb : hasse X la G.w (Finsupp.single ((l.succ, jj) : Idx D j G.N) 1)
          ((sfr X la G.w l.succ : ↥(Frac0 X la G.w)) : Lw X la G.w) *
        hasse X la G.w (PoleLengthBounds.bcol jj α - Finsupp.single ((l.succ, jj) : Idx D j G.N) 1)
          ((PoleLengthBounds.ym G la γ' : ↥(Frac0 X la G.w)) : Lw X la G.w) =
        if γ' + Pi.single l 1 = α then ((PoleLengthBounds.wfr G la jj : ↥(Frac0 X la G.w)) : Lw X la G.w) ^ (∑ i, α i) else 0 := by
      rw [hasse_single_sfr, bcol_sub_single, hIHb]
      by_cases hγα : γ' + Pi.single l 1 = α
      · have hγ'α : γ' = α - Pi.single l 1 := by
          rw [← hγα]
          funext i
          simp
        rw [if_pos hγ'α, if_pos hγα, ← hγ'α, ← hγα, sum_add_single, pow_succ']
        rfl
      · rw [if_neg hγα, if_neg]
        · exact mul_zero _
        intro h
        apply hγα
        by_cases hal : 1 ≤ α l
        · rw [eq_sub_add_single α l hal, ← h]
        · exfalso
          have hα0 : α l = 0 := by omega
          rw [sub_single_of_zero α l hα0] at h
          subst h
          omega
    have hne : (((0 : Idx D j G.N →₀ ℕ), PoleLengthBounds.bcol jj α) : (Idx D j G.N →₀ ℕ) × (Idx D j G.N →₀ ℕ)) ≠
        (Finsupp.single ((l.succ, jj) : Idx D j G.N) 1,
          PoleLengthBounds.bcol jj α - Finsupp.single ((l.succ, jj) : Idx D j G.N) 1) := fun h =>
      (Finsupp.single_ne_zero.2 one_ne_zero) (congrArg Prod.fst h).symm
    rw [Finset.sum_eq_add _ _ hne]
    · dsimp only
      rw [hIHa, mul_zero, zero_add]
      exact tb
    · rintro ⟨c1, c2⟩ hc ⟨h1, h2⟩
      rw [mem_antidiagonal] at hc
      dsimp only at hc ⊢
      have hc1 : c1 ≠ 0 := by
        rintro rfl
        apply h1
        rw [zero_add] at hc
        rw [hc]
      have hce : c1 ≠ Finsupp.single ((l.succ, jj) : Idx D j G.N) 1 := by
        rintro rfl
        apply h2
        rw [← hc, add_tsub_cancel_left]
      have hle : ∀ p, c1 p ≤ PoleLengthBounds.bcol jj α p := fun p => by
        have := congrArg (fun f : Idx D j G.N →₀ ℕ => f p) hc
        simp only [Finsupp.add_apply] at this
        omega
      rw [hasse_sfr_eq_zero G la jj α l hle hc1 hce, zero_mul]
    · intro h
      exact absurd (mem_antidiagonal.2 (zero_add _)) h
    · intro hnot
      dsimp only
      rw [tb, if_neg]
      · rfl
      intro hγα
      apply hnot
      apply mem_antidiagonal.2
      dsimp only
      refine add_tsub_cancel_of_le (Finsupp.single_le_iff.2 ?_)
      rw [bcol_apply, if_pos rfl, Fin.cases_succ, ← hγα]
      simp

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.YmDeriv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.YmDerivSt\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HasseJidPow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.YmDeriv\nimport Formalism.PeriodIntegrals.HassePresH\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseDerivativeFiltration.HasseMemHfr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PoleLengthBounds

namespace THs

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}
  (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO))

theorem mem_pow_smul_HK_iff (u : WeightFamilies.Wt D j) (a : ℕ) (z : Lw X la G.w) :
    z ∈ Jid X la G.w ^ a • HK X la G.w u ↔ z ∈ JHfr X la G.w u a := by
  rw [Jid_pow_smul_HK, mem_JHs, mem_JHfr]

theorem mem_smul_top_iff (u : WeightFamilies.Wt D j) (a : ℕ) (x : ↥(HK X la G.w u)) :
    x ∈ Jid X la G.w ^ a • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w u)) ↔
      (x : Lw X la G.w) ∈ Jid X la G.w ^ a • HK X la G.w u := by
  have h : (Jid X la G.w ^ a • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w u))).map (HK X la G.w u).subtype =
      Jid X la G.w ^ a • HK X la G.w u := by
    rw [Submodule.map_smul'', Submodule.map_top, Submodule.range_subtype]
  rw [← h]
  exact ⟨fun hx => ⟨x, hx, rfl⟩, fun ⟨y, hy, hxy⟩ => (Subtype.ext hxy : y = x) ▸ hy⟩

theorem smul_eq_mul' (f : ↥(Frac0 X la G.w)) (z : Lw X la G.w) : f • z = (f : Lw X la G.w) * z := rfl

def hs (β : Idx D j G.N →₀ ℕ) (z : Lw X la G.w) : Lw X la G.w := hasse X la G.w β z

theorem hs_mul (β : Idx D j G.N →₀ ℕ) (a b : Lw X la G.w) :
    hs G la β (a * b) = ∑ q ∈ Finset.HasAntidiagonal.antidiagonal β, hs G la q.1 a * hs G la q.2 b :=
  hasse_mul X la G.w β a b

theorem hs_add (β : Idx D j G.N →₀ ℕ) (a b : Lw X la G.w) : hs G la β (a + b) = hs G la β a + hs G la β b :=
  (hasse X la G.w β).map_add a b

theorem hs_sum {ι : Type} (s : Finset ι) (β : Idx D j G.N →₀ ℕ) (f : ι → Lw X la G.w) :
    hs G la β (∑ i ∈ s, f i) = ∑ i ∈ s, hs G la β (f i) :=
  map_sum (hasse X la G.w β) f s

theorem hs_zero (a : Lw X la G.w) : hs G la 0 a = a := hasse_zero X la G.w a

theorem one_mem_hasse_kernel : (1 : Lw X la G.w) ∈ HK X la G.w (wt0 D j) :=
  (mem_HK X la G.w).2 ((mem_Frac0 X la G.w).1 (Subalgebra.one_mem _))

theorem mul_mem_HK {u : WeightFamilies.Wt D j} {h m : Lw X la G.w} (hh : h ∈ HK X la G.w (wt0 D j))
    (hm : m ∈ HK X la G.w u) : h * m ∈ HK X la G.w u := by
  have := mul_mem_Hfr X la G.w ((mem_HK X la G.w).1 hh) ((mem_HK X la G.w).1 hm)
  rw [zero_weight_add] at this
  exact (mem_HK X la G.w).2 this

theorem mul_mem_J_smul_HK {u : WeightFamilies.Wt D j} {z m : Lw X la G.w}
    (hz : z ∈ Jid X la G.w • HK X la G.w (wt0 D j)) (hm : m ∈ HK X la G.w u) :
    z * m ∈ Jid X la G.w • HK X la G.w u := by
  refine Submodule.smul_induction_on (p := fun z => z * m ∈ Jid X la G.w • HK X la G.w u) hz ?_ ?_
  · intro r hr n hn
    show (r • n) * m ∈ _
    rw [smul_eq_mul' G la, mul_assoc, ← smul_eq_mul' G la]
    exact Submodule.smul_mem_smul hr (mul_mem_HK G la hn hm)
  · intro x y hx hy
    show (x + y) * m ∈ _
    rw [add_mul]
    exact Submodule.add_mem _ hx hy

theorem hasse_mem_pow_smul_HK (u : WeightFamilies.Wt D j) (β : Idx D j G.N →₀ ℕ) (a : ℕ) (z : Lw X la G.w)
    (hz : z ∈ Jid X la G.w ^ a • HK X la G.w u) :
    hs G la β z ∈ Jid X la G.w ^ (a - β.sum fun _ n => n) • HK X la G.w u :=
  (mem_pow_smul_HK_iff G la u _ _).2 (hasse_jid_power X la G.w u β a z ((mem_pow_smul_HK_iff G la u a z).1 hz))

theorem ym_mem (γ : Fin (WeightFamilies.dimY D j) → ℕ) :
    ((ym G la γ : ↥(Frac0 X la G.w)) : Lw X la G.w) ∈ Jid X la G.w ^ (∑ i, γ i) • HK X la G.w (wt0 D j) := by
  have := Submodule.smul_mem_smul (prod_sfr_mem X la G.w γ) (one_mem_hasse_kernel G la)
  rw [smul_eq_mul', mul_one] at this
  exact this

theorem hasse_mem_HK (u : WeightFamilies.Wt D j) (β : Idx D j G.N →₀ ℕ) {z : Lw X la G.w} (hz : z ∈ HK X la G.w u) :
    hs G la β z ∈ HK X la G.w u :=
  (mem_HK X la G.w).2 (_root_.PI.UnitaryGroupMassFormula.HassePresH.main X la G.w u β z ((mem_HK X la G.w).1 hz))

theorem bcol_size {N : ℕ} (jj : Fin N) (α : Fin (WeightFamilies.dimY D j) → ℕ) :
    ((bcol (D := D) (j := j) jj α).sum fun _ n => n) = ∑ i, α i := by
  rw [Finsupp.sum_fintype _ _ (fun _ => rfl), Fintype.sum_prod_type, Fin.sum_univ_succ]
  simp [bcol]

alias size_eq_degree := _root_.PI.HJP.sum_eq_degree

end THs

open THs in
theorem taylorHasse_of (hY : YmDeriv) : TaylorHasse := by
  intro D B P j X ka wL wF G la k x cf hx jj α hα h
  have hk : ∑ i, α i = k := (Finset.Nat.mem_antidiagonalTuple).1 hα
  have hβs : ((bcol (D := D) (j := j) jj α).sum fun _ n => n) = k := by rw [bcol_size, hk]
  have huC : uC G la jj α = toOsK X la G.w (wfr G la jj ^ k) := by
    simp only [uC, map_pow, Finset.prod_pow_eq_pow_sum, hk]
  have hsm : toOsK X la G.w (wfr G la jj ^ k) • toA0K X la G.w wF (cf α) =
      toA0K X la G.w wF ((wfr G la jj ^ k) • cf α) := by
    rw [map_smul]
    exact algebraMap_smul (OsK X la G.w) (wfr G la jj ^ k) (toA0K X la G.w wF (cf α))
  rw [huC, hsm, ← sub_eq_zero, ← map_sub, reduction_eq_zero_iff_mem_ideal_smul, ← pow_one (Jid X la G.w), mem_smul_top_iff,
    Submodule.coe_sub, Submodule.coe_smul, pow_one]
  rw [mem_smul_top_iff, Submodule.coe_sub, Submodule.coe_sum] at hx
  set rr : Lw X la G.w := (x : Lw X la G.w) - ∑ γ ∈ mon D j k, ((ym G la γ • cf γ : ↥(HK X la G.w wF)) : Lw X la G.w)
    with hrr
  have hxe : (x : Lw X la G.w) = rr + ∑ γ ∈ mon D j k, (ym G la γ : Lw X la G.w) * (cf γ : Lw X la G.w) := by
    have e : ∑ γ ∈ mon D j k, ((ym G la γ • cf γ : ↥(HK X la G.w wF)) : Lw X la G.w) =
        ∑ γ ∈ mon D j k, (ym G la γ : Lw X la G.w) * (cf γ : Lw X la G.w) :=
      Finset.sum_congr rfl fun γ _ => by rw [Submodule.coe_smul, smul_eq_mul']
    rw [hrr, e, sub_add_cancel]

  have h1 : hs G la (bcol jj α) rr ∈ Jid X la G.w • HK X la G.w wF := by
    have := hasse_mem_pow_smul_HK G la wF (bcol jj α) (k + 1) rr hx
    rwa [hβs, Nat.add_sub_cancel_left, pow_one] at this

  have h2 : ∀ γ ∈ mon D j k, hs G la (bcol jj α) ((ym G la γ : Lw X la G.w) * (cf γ : Lw X la G.w)) -
      (if γ = α then ((wfr G la jj ^ k : ↥(Frac0 X la G.w)) : Lw X la G.w) * (cf α : Lw X la G.w) else 0) ∈
        Jid X la G.w • HK X la G.w wF := by
    intro γ hγ
    have hγk : ∑ i, γ i = k := (Finset.Nat.mem_antidiagonalTuple).1 hγ
    have hmem : ((bcol jj α, 0) : (Idx D j G.N →₀ ℕ) × (Idx D j G.N →₀ ℕ)) ∈ Finset.HasAntidiagonal.antidiagonal (bcol jj α) := by
      rw [Finset.HasAntidiagonal.mem_antidiagonal, add_zero]
    rw [hs_mul, ← Finset.add_sum_erase _ _ hmem]
    have hYg := hY G la jj γ α (by rw [hγk, hk])
    change hs G la _ _ = _ at hYg
    have htop : hs G la (bcol jj α) (ym G la γ : Lw X la G.w) * hs G la 0 (cf γ : Lw X la G.w) =
        (if γ = α then ((wfr G la jj ^ k : ↥(Frac0 X la G.w)) : Lw X la G.w) * (cf α : Lw X la G.w) else 0) := by
      rw [hYg, hs_zero]
      split_ifs with he
      · subst he; rw [hk]; push_cast; rfl
      · rw [zero_mul]
    simp only at htop ⊢
    rw [htop, add_sub_cancel_left]
    refine Submodule.sum_mem _ fun q hq => ?_
    obtain ⟨hne, hq⟩ := Finset.mem_erase.1 hq
    rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
    have hq2 : q.2 ≠ 0 := by
      intro h0
      apply hne
      rw [h0, add_zero] at hq
      exact Prod.ext hq h0
    have hdeg : Finsupp.degree q.1 + Finsupp.degree q.2 = k := by
      rw [← map_add (f := _), hq, ← size_eq_degree, hβs]
    have hpos : Finsupp.degree q.2 ≠ 0 := fun h0 => hq2 ((Finsupp.degree_eq_zero_iff _).1 h0)
    have hA := hasse_mem_pow_smul_HK G la (wt0 D j) q.1 (∑ i, γ i) _ (ym_mem G la γ)
    rw [hγk, size_eq_degree] at hA
    have hA' : hs G la q.1 (ym G la γ : Lw X la G.w) ∈ Jid X la G.w • HK X la G.w (wt0 D j) :=
      Submodule.smul_mono_left (Ideal.pow_le_self (by omega)) hA
    exact mul_mem_J_smul_HK G la hA' (hasse_mem_HK G la wF q.2 (cf γ).2)
  change hs G la (bcol jj α) (x : Lw X la G.w) - _ ∈ _
  rw [hxe, hs_add, hs_sum]
  have hsum : ∑ γ ∈ mon D j k, (if γ = α then ((wfr G la jj ^ k : ↥(Frac0 X la G.w)) : Lw X la G.w) *
      (cf α : Lw X la G.w) else 0) = (wfr G la jj ^ k : ↥(Frac0 X la G.w)) • (cf α : Lw X la G.w) := by
    rw [Finset.sum_ite_eq', if_pos hα, smul_eq_mul']
  rw [← hsum, add_sub_assoc, ← Finset.sum_sub_distrib]
  exact Submodule.add_mem _ h1 (Submodule.sum_mem _ h2)

theorem taylorHasse_holds : TaylorHasse := taylorHasse_of PI.PoleLengthCount.ymDeriv

end PoleLengthBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse =====
