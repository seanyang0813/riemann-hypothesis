module

import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.TsumThree
public import Formalism.SharpRestriction.LevelLetterCocycles.AdmBoundsBOfAdm
public import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingBounds
public import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.N.FrobeniusPowerSeries.SetupA

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.N.Ln17

section Num

def SgN (l h w S η : ℕ) : ℝ :=
  (h : ℝ) / (l : ℝ) ^ 2 + ((w : ℝ) + S + η) / l + Real.logb l (2 * (h : ℝ)) + 1

def cW (l H : ℕ) : ℕ := ⌈1 + Real.logb l ((H : ℝ) + 1)⌉₊

theorem tsum_three (l : ℕ) (hl : 11 ≤ l) (f : ℕ → ℝ) (x₀ x₁ X : ℝ) (hf : ∀ a, 0 ≤ f a)
    (h0 : f 0 ≤ x₀) (h1 : f 1 ≤ x₁) (h2 : ∀ a, 2 ≤ a → f a ≤ X) :
    ∑' a : ℕ, f a * ((l : ℝ) - 1) ^ (-(a : ℤ)) ≤
      x₀ + x₁ / ((l : ℝ) - 1) + X / (((l : ℝ) - 1) * ((l : ℝ) - 2)) := by
  apply Formalism.MainNotions.N.FrobeniusPowerSeries.tsum_three <;> assumption

theorem rr_le (l : ℕ) (hl : 11 ≤ l) (h w S η H H₁ : ℕ) (hη : η + 1 ≤ h)
    (hH : H ≤ h + η) (hH₁ : H₁ ≤ w + S + η) (s r : ℝ)
    (hs : s ≤ ((H₁ : ℝ) + cW l H + 3) + ((H : ℝ) + cW l H + 3) / ((l : ℝ) - 2))
    (hr : r ≤ s * l / ((l : ℝ) - 1) ^ 2 + cW l H) :
    r ≤ 2 * ((w : ℝ) + S + η) / l + 2 * (h : ℝ) / (l : ℝ) ^ 2 + 2 * Real.logb l (2 * (h : ℝ)) + 3 ∧
    2 * ((w : ℝ) + S + η) / l + 2 * (h : ℝ) / (l : ℝ) ^ 2 + 2 * Real.logb l (2 * (h : ℝ)) + 3 ≤
      3 * SgN l h w S η :=
  Formalism.MainNotions.N.FrobeniusPowerSeries.rr_le l hl h w S η H H₁ hη hH hH₁ s r hs hr

theorem sig_le (l : ℕ) (hl : 11 ≤ l) (h w S η : ℕ) (h1 : 1 ≤ h) (hG : w + S ≤ h) :
    (⌈((2 * (w + S) : ℕ) + ((2 * h / (l - 1) + 1 : ℕ) : ℝ)) * l / ((l : ℝ) - 1) ^ 2 + 1⌉₊ : ℝ) ≤
      3 * SgN l h w S η :=
  Formalism.MainNotions.N.FrobeniusPowerSeries.sig_le l hl h w S η h1 hG

end Num

section Comb

variable {n : ℕ} [NeZero n] (th : ZMod n → Prop)

def lenT (c : ZMod n) : ℕ := sInf {d : ℕ | 1 ≤ d ∧ ¬ th (c - (d : ZMod n) + 1)}

theorem lenT_spec (c : ZMod n) (hc : ¬ th (c + 1)) :
    1 ≤ lenT th c ∧ lenT th c ≤ n ∧ ¬ th (c - (lenT th c : ZMod n) + 1) ∧
      ∀ d : ℕ, 1 ≤ d → d < lenT th c → th (c - (d : ZMod n) + 1) := by
  have hn : (n : ZMod n) = 0 := by simp
  have hmem : n ∈ {d : ℕ | 1 ≤ d ∧ ¬ th (c - (d : ZMod n) + 1)} := by
    simp only [Set.mem_setOf_eq]
    refine ⟨Nat.one_le_iff_ne_zero.mpr (NeZero.ne n), ?_⟩
    rw [hn, sub_zero]; exact hc
  have hs : 1 ≤ lenT th c ∧ ¬ th (c - (lenT th c : ZMod n) + 1) :=
    Nat.sInf_mem (s := {d : ℕ | 1 ≤ d ∧ ¬ th (c - (d : ZMod n) + 1)}) ⟨n, hmem⟩
  refine ⟨hs.1, Nat.sInf_le hmem, hs.2, ?_⟩
  intro d hd hdl
  by_contra hcon
  have hd' : d ∈ {d : ℕ | 1 ≤ d ∧ ¬ th (c - (d : ZMod n) + 1)} := by
    simp only [Set.mem_setOf_eq]; exact ⟨hd, hcon⟩
  exact absurd (Nat.sInf_le hd') (not_le.mpr hdl)

theorem sum_lenT (hne : ∃ i, ¬ th i) :
    ∑ c ∈ Finset.univ.filter (fun c => ¬ th (c + 1)), lenT th c = n := by
  obtain ⟨j, hj⟩ := hne
  let S : ZMod n → Set ℕ := fun i => {e : ℕ | ¬ th (i + (e : ZMod n) + 1)}
  have hE : ∀ i : ZMod n, (S i).Nonempty := by
    intro i
    refine ⟨(j - i - 1).val, ?_⟩
    show ¬ th (i + (((j - i - 1).val : ℕ) : ZMod n) + 1)
    rw [ZMod.natCast_zmod_val]
    have e0 : i + (j - i - 1) + 1 = j := by ring
    rw [e0]; exact hj
  let e : ZMod n → ℕ := fun i => sInf (S i)
  have he1 : ∀ i, ¬ th (i + (e i : ZMod n) + 1) := fun i => Nat.sInf_mem (hE i)
  have he3 : ∀ i (k : ℕ), ¬ th (i + (k : ZMod n) + 1) → e i ≤ k :=
    fun i k hk => Nat.sInf_le (s := S i) hk
  have he2 : ∀ i (k : ℕ), k < e i → th (i + (k : ZMod n) + 1) := by
    intro i k hk
    by_contra hc
    exact absurd (he3 i k hc) (not_le.mpr hk)
  have hκ : ∀ i ∈ (Finset.univ : Finset (ZMod n)),
      (fun i => i + (e i : ZMod n)) i ∈ Finset.univ.filter (fun c => ¬ th (c + 1)) := by
    intro i _
    rw [Finset.mem_filter]
    exact ⟨Finset.mem_univ _, he1 i⟩
  have hcard := Finset.card_eq_sum_card_fiberwise hκ
  rw [Finset.card_univ, ZMod.card] at hcard
  refine (Finset.sum_congr rfl (fun c hc => ?_)).trans hcard.symm
  rw [Finset.mem_filter] at hc
  obtain ⟨hL1, hLn, hLf, hLt⟩ := lenT_spec th c hc.2
  have hfib : Finset.univ.filter (fun i => i + (e i : ZMod n) = c) =
      (Finset.range (lenT th c)).image (fun k : ℕ => c - (k : ZMod n)) := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image, Finset.mem_range]
    constructor
    · intro hi
      refine ⟨e i, ?_, ?_⟩
      · by_contra hlt
        push_neg at hlt
        have h1 : e i - lenT th c < e i := by omega
        have h2 := he2 i _ h1
        have h3 : i + ((e i - lenT th c : ℕ) : ZMod n) + 1 = c - (lenT th c : ZMod n) + 1 := by
          rw [Nat.cast_sub hlt, ← hi]; ring
        rw [h3] at h2
        exact hLf h2
      · rw [← hi]; ring
    · rintro ⟨k, hk, rfl⟩
      have hek : e (c - (k : ZMod n)) = k := by
        apply le_antisymm
        · apply he3
          have e4 : c - (k : ZMod n) + (k : ZMod n) + 1 = c + 1 := by ring
          rw [e4]; exact hc.2
        · by_contra hlt
          push_neg at hlt
          apply he1 (c - (k : ZMod n))
          have hth := hLt (k - e (c - (k : ZMod n))) (by omega) (by omega)
          have e5 : c - (k : ZMod n) + ((e (c - (k : ZMod n)) : ℕ) : ZMod n) + 1 =
              c - ((k - e (c - (k : ZMod n)) : ℕ) : ZMod n) + 1 := by
            rw [Nat.cast_sub hlt.le]; ring
          rw [e5]; exact hth
      rw [hek]; ring
  rw [hfib, Finset.card_image_of_injOn, Finset.card_range]
  intro k hk k' hk' hkk
  simp only [Finset.coe_range, Set.mem_Iio] at hk hk'
  have h' : c - (k : ZMod n) = c - (k' : ZMod n) := hkk
  have h'' : (k : ZMod n) = (k' : ZMod n) := by linear_combination -h'
  have h3 := congrArg ZMod.val h''
  rwa [ZMod.val_natCast, ZMod.val_natCast, Nat.mod_eq_of_lt (by omega),
    Nat.mod_eq_of_lt (by omega)] at h3

theorem lenT_le_three (c : ZMod n) (hc : ¬ th (c + 1))
    (halt : ∀ i, ¬ (th i ∧ th (i + 1) ∧ th (i + 2))) : lenT th c ≤ 3 := by
  obtain ⟨-, -, -, hlt⟩ := lenT_spec th c hc
  by_contra hcon
  push_neg at hcon
  have a1 := hlt 1 le_rfl (by omega)
  have a2 := hlt 2 (by norm_num) (by omega)
  have a3 := hlt 3 (by norm_num) (by omega)
  apply halt (c - 2)
  have e3 : c - 2 = c - ((3:ℕ) : ZMod n) + 1 := by push_cast; ring
  have e2 : c - 2 + 1 = c - ((2:ℕ) : ZMod n) + 1 := by push_cast; ring
  have e1 : c - 2 + 2 = c - ((1:ℕ) : ZMod n) + 1 := by push_cast; ring
  refine ⟨?_, ?_, ?_⟩
  · rw [e3]; exact a3
  · rw [e2]; exact a2
  · rw [e1]; exact a1

theorem lenT_le_R (c : ZMod n) (hc : ¬ th (c + 1)) (R : ℕ)
    (hone : ∀ i, ¬ ∀ u : ℕ, u < R → th (i + (u : ZMod n))) : lenT th c ≤ R := by
  obtain ⟨-, -, -, hlt⟩ := lenT_spec th c hc
  by_contra hcon
  push_neg at hcon
  apply hone (c - (R : ZMod n) + 1)
  intro u hu
  have hth := hlt (R - u) (by omega) (by omega)
  have e : c - (R : ZMod n) + 1 + (u : ZMod n) = c - ((R - u : ℕ) : ZMod n) + 1 := by
    rw [Nat.cast_sub hu.le]; ring
  rw [e]; exact hth

end Comb

section ThetaShiftProofs

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {PD : PeriodData G Qp K₀ K B BdR}

theorem hmax_le [NeZero n] (Mi hi : ZMod n → ℕ) (j : ZMod n) :
    Mi j + hi j ≤ Formalism.MainNotions.LiftingTheory.Hmax n Mi hi := by
  unfold Formalism.MainNotions.LiftingTheory.Hmax
  have hj : ((j.val : ℕ) : ZMod n) = j := ZMod.natCast_zmod_val j
  calc Mi j + hi j = (fun k : ℕ => Mi (k : ZMod n) + hi (k : ZMod n)) j.val := by
        simp only [hj]
    _ ≤ _ := Finset.le_sup (f := fun k : ℕ => Mi (k : ZMod n) + hi (k : ZMod n))
        (Finset.mem_range.mpr (ZMod.val_lt j))

theorem killsΔ_mono (W : LocWach PD LL O v n) {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    (c : ZMod n) {r r' : ℕ} (hr : r ≤ r') (h : Formalism.MainNotions.LiftingTheory.KillsΔ W F c (Formalism.MainNotions.LiftingTheory.lp W r)) :
    Formalism.MainNotions.LiftingTheory.KillsΔ W F c (Formalism.MainNotions.LiftingTheory.lp W r') := by
  intro y hy hδ
  have hk := h y hy hδ
  have e : Formalism.MainNotions.LiftingTheory.lp W r' = ((PD.p : ℕ) : LetA O n) ^ (r' - r) * Formalism.MainNotions.LiftingTheory.lp W r := by
    unfold Formalism.MainNotions.LiftingTheory.lp
    rw [← pow_add, Nat.sub_add_cancel hr]
  rw [e, mul_smul]
  exact Submodule.smul_mem _ _ hk

def rrB (l h w S η : ℕ) : ℝ :=
  2 * ((w : ℝ) + S + η) / l + 2 * (h : ℝ) / (l : ℝ) ^ 2 + 2 * Real.logb l (2 * (h : ℝ)) + 3

theorem kill_cut [NeZero n] (W : LocWach PD LL O v n) (hcase : Formalism.MainNotions.LiftingTheory.CaseA W) (CR : ℝ)
    (hWR : Formalism.MainNotions.LiftingTheory.coreWR W CR) {T T' : LocLat G Qp LL O} (Φ : LatHom T.L T'.L)
    (hS : Formalism.MainNotions.LiftingTheory.Sur W Φ) (Mi hi : ZMod n → ℕ) (hJ : Formalism.MainNotions.LiftingTheory.JumpsLet W T Mi hi)
    (hl : 11 ≤ PD.p) (h w S η : ℕ) (hη : η + 1 ≤ h) (hH : ∀ i, Mi i + hi i ≤ h + η) (c : ZMod n)
    (hc : Mi (c + 1) + hi (c + 1) ≤ w + S + η) :
    Formalism.MainNotions.LiftingTheory.KillsΔ W Φ c (Formalism.MainNotions.LiftingTheory.lp W ⌊rrB PD.p h w S η⌋₊) := by
  obtain ⟨hs, -, hr, hk, -⟩ := hWR hcase T T' Φ Mi hi hS hJ c
  have hl' : (11:ℝ) ≤ (PD.p:ℝ) := by exact_mod_cast hl
  have hHm : Formalism.MainNotions.LiftingTheory.Hmax n Mi hi ≤ h + η := by
    unfold Formalism.MainNotions.LiftingTheory.Hmax
    exact Finset.sup_le (fun k _ => hH _)
  have hcc : ((Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℕ) : ℝ) =
      ((cW PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℕ) : ℝ) := rfl
  have hfa : ∀ a : ℕ, (((Mi (c + ((a + 1 : ℕ) : ZMod n)) + hi (c + ((a + 1 : ℕ) : ZMod n)) : ℕ) : ℝ) +
      (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3) ≤
      (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3 := by
    intro a
    have h' : ((Mi (c + ((a + 1 : ℕ) : ZMod n)) + hi (c + ((a + 1 : ℕ) : ZMod n)) : ℕ) : ℝ) ≤
        (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) := by exact_mod_cast hmax_le Mi hi _
    linarith
  have h0 : (((Mi (c + ((0 + 1 : ℕ) : ZMod n)) + hi (c + ((0 + 1 : ℕ) : ZMod n)) : ℕ) : ℝ) +
      (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3) ≤
      ((Mi (c + 1) + hi (c + 1) : ℕ) : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3 := by
    have e0 : c + ((0 + 1 : ℕ) : ZMod n) = c + 1 := by push_cast; ring
    rw [e0]
  have hsum := tsum_three PD.p hl
    (fun a : ℕ => (((Mi (c + ((a + 1 : ℕ) : ZMod n)) + hi (c + ((a + 1 : ℕ) : ZMod n)) : ℕ) : ℝ) +
      (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3))
    (((Mi (c + 1) + hi (c + 1) : ℕ) : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3)
    ((Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3)
    ((Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3)
    (fun a => by positivity) h0 (hfa 1) (fun a _ => hfa a)
  beta_reduce at hsum
  have hs2 := le_trans hs hsum
  have hdiv : ((Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3) /
        ((PD.p : ℝ) - 1) +
      ((Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3) /
        (((PD.p : ℝ) - 1) * ((PD.p : ℝ) - 2)) =
      ((Formalism.MainNotions.LiftingTheory.Hmax n Mi hi : ℝ) + (Formalism.MainNotions.LiftingTheory.cH PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) : ℝ) + 3) /
        ((PD.p : ℝ) - 2) := by
    have h1' : (PD.p : ℝ) - 1 ≠ 0 := by linarith
    have h2' : (PD.p : ℝ) - 2 ≠ 0 := by linarith
    field_simp <;> ring
  have hr' := hr
  rw [hcc] at hr'
  obtain ⟨key, -⟩ := rr_le PD.p hl h w S η (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi) (Mi (c + 1) + hi (c + 1))
    hη hHm hc _ _ (by rw [← hcc]; linarith) hr'
  apply killsΔ_mono W Φ c _ hk
  apply Nat.le_floor
  unfold rrB
  exact key

theorem arcBasic_core [NeZero n] [Fintype (K →ₐ[Qp] LL)]
    (W : LocWach PD LL O v n) {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) {b w S η m : ℕ}
    {up : ZMod n → Bool} {size Mi hi : ZMod n → ℕ} (hB : HypB PD W T₁ T₂ F b w S η m up size Mi hi) :
    let A := arcOf b w S η up size
    A.OK ∧ (∑ c ∈ A.cuts, A.len c) = n ∧
    (Alt b η up size → ∀ c ∈ A.cuts, A.len c ≤ 3) ∧
    (∀ R : ℕ, 1 ≤ R → One b η R up size → ∀ c ∈ A.cuts, A.len c ≤ R) ∧
    (A.σ PD.p : ℝ) ≤ 3 * Formalism.MainNotions.N.Ln17.Sg PD.p b w S η size := by
  intro A
  obtain ⟨hl, ⟨-, -, hηs, -, -, hthin, -⟩, h20w, -, -, hex⟩ := hB
  have hth : ∀ c ∈ A.cuts, ¬ Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size (c + 1) :=
    fun c hc => (Finset.mem_filter.mp hc).2
  have hlen : ∀ c, A.len c = lenT (Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size) c := fun c => rfl
  have hmemc : ∀ c, ¬ Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size (c + 1) → c ∈ A.cuts :=
    fun c hc => Finset.mem_filter.mpr ⟨Finset.mem_univ _, hc⟩
  have hw1 : 1 ≤ w := by
    obtain ⟨i, hi⟩ := hex
    have h1 := hthin i hi
    have h2 := hηs i
    omega
  have hG : w + S ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size := by
    unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
    split_ifs <;> omega
  have h1 : 1 ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size := le_trans (by omega) hG
  have hsz : ∀ i, (A.ty i).size = size i := by
    intro i
    show Formalism.MainNotions.LocalTheoryWindows.LT.size
      (if up i then Formalism.MainNotions.LocalTheoryWindows.LT.up (size i) else Formalism.MainNotions.LocalTheoryWindows.LT.down (size i)) = size i
    split <;> rfl
  have hOK : A.OK := by
    unfold Formalism.MainNotions.ArcLiftingSetup.ArcP.OK
    refine ⟨?_, le_rfl, ?_, ?_, ?_, hG, h1, ?_, ?_⟩
    · obtain ⟨i, hi⟩ := hex
      exact ⟨i - 1, hmemc _ (by rw [sub_add_cancel]; exact hi)⟩
    · intro c hc
      obtain ⟨hl1, hln, hlf, hlt⟩ := lenT_spec _ c (hth c hc)
      rw [hlen]
      exact ⟨hl1, hln, hmemc _ hlf, fun d hd1 hd2 hmem => hth _ hmem (hlt d hd1 hd2)⟩
    · intro c hc
      rw [hlen]
      exact (lenT_spec _ c (hth c hc)).1
    · intro i
      show Formalism.MainNotions.LocalTheoryWindows.LT.ok η
        (if up i then Formalism.MainNotions.LocalTheoryWindows.LT.up (size i) else Formalism.MainNotions.LocalTheoryWindows.LT.down (size i))
      split <;> exact hηs i
    · intro i _
      rw [hsz]
      show size i + S ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size
      by_cases hT : Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size i
      · have hex' : ∃ i, Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size i := ⟨i, hT⟩
        unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
        rw [if_pos hex']
        have := hT.2
        omega
      · have := hthin i hT
        unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
        split_ifs <;> omega
    · right
      refine ⟨rfl, ?_, ?_⟩
      · intro i
        show Formalism.MainNotions.LocalTheoryWindows.LT.thick
          (if up i then Formalism.MainNotions.LocalTheoryWindows.LT.up (size i) else Formalism.MainNotions.LocalTheoryWindows.LT.down (size i)) = true
        split <;> rfl
      · intro c hc
        rw [hsz]
        show size (c + 1) + S ≤ w + S
        have := hthin (c + 1) (hth c hc)
        omega
  refine ⟨hOK, ?_, ?_, ?_, ?_⟩
  · exact sum_lenT (Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size) hex
  · intro hAlt c hc
    rw [hlen]
    exact lenT_le_three _ c (hth c hc) (fun i => (hAlt i).2)
  · intro R _ hOne c hc
    rw [hlen]
    exact lenT_le_R _ c (hth c hc) R hOne.2
  · have hsg := sig_le PD.p hl (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size) w S η h1 hG
    have hσ : A.σ PD.p = ⌈(((2 * (w + S) : ℕ) : ℝ) +
        ((2 * Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size / (PD.p - 1) + 1 : ℕ) : ℝ)) * PD.p /
          ((PD.p : ℝ) - 1) ^ 2 + 1⌉₊ := by
      show ⌈(((2 * (w + S) : ℕ) : ℝ) +
        ((2 * Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size / (PD.p - 1) + 1 : ℕ) : ℝ) / (PD.p : ℝ) ^ (1 - 1)) *
          PD.p / ((PD.p : ℝ) - 1) ^ 2 + 1⌉₊ = _
      rw [Nat.sub_self, pow_zero, div_one]
    rw [hσ]
    exact hsg

theorem arcSetup_of [NeZero n] [Fintype (K →ₐ[Qp] LL)] [FiniteDimensional Qp LL]
    (W : LocWach PD LL O v n) (hcase : Formalism.MainNotions.LiftingTheory.CaseA W)
    {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) {b w S η m : ℕ} {up : ZMod n → Bool}
    {size Mi hi : ZMod n → ℕ} (hB : HypB PD W T₁ T₂ F b w S η m up size Mi hi)
    (CR : ℝ) (hWR : Formalism.MainNotions.LiftingTheory.coreWR W CR) (hJmp : Formalism.MainNotions.CrystallineLiftingBounds.coreJumps PD LL O)
    (hT₂ : ∀ (τ : K →ₐ[Qp] LL) (a : ℤ), IsJumpV PD T₂.ρ τ a → IsJumpV PD T₁.ρ τ a) :
    let A := arcOf b w S η up size
    A.OK ∧ Win W A T₁ ∧ Win W A T₂ ∧ (∑ c ∈ A.cuts, A.len c) = n ∧
    (Alt b η up size → ∀ c ∈ A.cuts, A.len c ≤ 3) ∧
    (∀ R : ℕ, 1 ≤ R → One b η R up size → ∀ c ∈ A.cuts, A.len c ≤ R) ∧
    (A.σ PD.p : ℝ) ≤ 3 * Formalism.MainNotions.N.Ln17.Sg PD.p b w S η size ∧
    ∃ rr : ℕ, (rr : ℝ) ≤ 3 * Formalism.MainNotions.N.Ln17.Sg PD.p b w S η size ∧
      (∀ c ∈ A.cuts, Formalism.MainNotions.LiftingTheory.KillsΔ W F c (Formalism.MainNotions.LiftingTheory.lp W rr)) ∧
      ∀ (Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L) (cc : G → T₂.V),
        cc ∈ latticeCocycles T₂.L → IsCrys PD Y.ρ → Formalism.MainNotions.LiftingTheory.IsExtOf W ι π cc →
          Win W A Y ∧ ∀ c ∈ A.cuts, Formalism.MainNotions.LiftingTheory.KillsΔ W π c (Formalism.MainNotions.LiftingTheory.lp W rr) := by
  intro A
  have hB' := hB
  obtain ⟨hl, ⟨-, hSur, hηs, hJ1, -, hthin, -⟩, h20w, -, -, hex⟩ := hB
  obtain ⟨hOK, hsum, hAlt, hOne, hσ⟩ := arcBasic_core W F hB'
  obtain ⟨hcrone, hjone⟩ := Formalism.MainNotions.LiftingTheory.lone_HOne0 W
  have hwin : ∀ i, (A.ty i).win A.G₀ A.S A.η =
      (if up i then Set.Icc (size i : ℤ) ((size i : ℤ) + S) ∪ Set.Icc (-(η : ℤ)) η
        else Set.Icc (-(size i : ℤ) - S) (-(size i : ℤ)) ∪ Set.Icc (-(η : ℤ)) η) := by
    intro i
    show Formalism.MainNotions.LocalTheoryWindows.LT.win (w + S) S η
      (if up i then Formalism.MainNotions.LocalTheoryWindows.LT.up (size i) else Formalism.MainNotions.LocalTheoryWindows.LT.down (size i)) = _
    split <;> rfl
  have h0win : ∀ i, (0:ℤ) ∈ (A.ty i).win A.G₀ A.S A.η := by
    intro i
    rw [hwin i]
    split
    · exact Set.mem_union_right _ (Set.mem_Icc.mpr ⟨by omega, by omega⟩)
    · exact Set.mem_union_right _ (Set.mem_Icc.mpr ⟨by omega, by omega⟩)
  have hG : w + S ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size := by
    unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
    split_ifs <;> omega
  have hsizeB : ∀ i, size i + S ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size := by
    intro i
    by_cases hT : Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size i
    · have hex' : ∃ i, Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size i := ⟨i, hT⟩
      unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
      rw [if_pos hex']
      have := hT.2
      omega
    · have := hthin i hT
      unfold Formalism.MainNotions.TruncatedSeriesCountingBounds.hB
      split_ifs <;> omega
  have hηB : η + 1 ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size := by
    obtain ⟨i, hi⟩ := hex
    have h1 := hthin i hi
    have h2 := hηs i
    omega
  obtain ⟨Mi', hMi'⟩ : ∃ f : ZMod n → ℕ, ∀ i, f i = if up i then η else size i + S :=
    ⟨_, fun i => rfl⟩
  obtain ⟨hi', hhi'⟩ : ∃ f : ZMod n → ℕ, ∀ i, f i = if up i then size i + S else η :=
    ⟨_, fun i => rfl⟩
  have hMH : ∀ i, Mi' i + hi' i = size i + S + η := by
    intro i; rw [hMi' i, hhi' i]; split_ifs <;> omega
  have hHb : ∀ i, Mi' i + hi' i ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size + η := by
    intro i; rw [hMH i]; have := hsizeB i; omega
  have hcb : ∀ c ∈ A.cuts, Mi' (c + 1) + hi' (c + 1) ≤ w + S + η := by
    intro c hc
    rw [hMH (c + 1)]
    have := hthin (c + 1) (Finset.mem_filter.mp hc).2
    omega
  have hJL : ∀ T : LocLat G Qp LL O, Win W A T → Formalism.MainNotions.LiftingTheory.JumpsLet W T Mi' hi' := by
    intro T hT i τ hτ a ha
    have hm := hT.2 i τ hτ a ha
    rw [hwin i] at hm
    have hsi := hηs i
    rw [Set.mem_Icc, hMi' i, hhi' i]
    by_cases hu : up i = true
    · rw [if_pos hu] at hm
      rw [if_pos hu, if_pos hu]
      rcases hm with hm | hm <;> rw [Set.mem_Icc] at hm <;> constructor <;> omega
    · rw [if_neg hu] at hm
      rw [if_neg hu, if_neg hu]
      rcases hm with hm | hm <;> rw [Set.mem_Icc] at hm <;> constructor <;> omega
  have hW1 : Win W A T₁ := by
    unfold Formalism.MainNotions.ArcLiftingSetup.Win
    refine ⟨hSur.1, fun i => ?_⟩
    rw [hwin i]
    exact hJ1 i
  have hW2 : Win W A T₂ := by
    unfold Formalism.MainNotions.ArcLiftingSetup.Win
    refine ⟨hSur.2.1, fun i τ hτ a ha => ?_⟩
    exact hW1.2 i τ hτ a (hT₂ τ a ha)
  have hrrB : rrB PD.p (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size) w S η ≤
      3 * Formalism.MainNotions.N.Ln17.Sg PD.p b w S η size :=
    (rr_le PD.p hl (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size) w S η 0 0 hηB (Nat.zero_le _) (Nat.zero_le _)
      _ _ le_rfl le_rfl).2
  have hrrB0 : 0 ≤ rrB PD.p (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size) w S η := by
    unfold rrB
    have hp11 : (11:ℝ) ≤ PD.p := by exact_mod_cast hl
    have hp : (1:ℝ) < PD.p := by linarith
    have hB1 : (1:ℝ) ≤ (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size : ℝ) := by
      exact_mod_cast (show 1 ≤ Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size by omega)
    have hL := Real.logb_nonneg hp (show (1:ℝ) ≤ 2 * (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size : ℝ) by linarith)
    have q1 : 0 ≤ 2 * ((w:ℝ) + S + η) / PD.p := by positivity
    have q2 : 0 ≤ 2 * (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size : ℝ) / (PD.p : ℝ) ^ 2 := by positivity
    linarith
  refine ⟨hOK, hW1, hW2, hsum, hAlt, hOne, hσ, ⌊rrB PD.p (Formalism.MainNotions.TruncatedSeriesCountingBounds.hB b w S η size) w S η⌋₊,
    le_trans (Nat.floor_le hrrB0) hrrB, ?_, ?_⟩
  · intro c hc
    exact kill_cut W hcase CR hWR F hSur Mi' hi' (hJL T₁ hW1) hl _ w S η hηB hHb c (hcb c hc)
  · intro Y ι π cc _ hY hext
    obtain ⟨hses, -⟩ := hext
    have hses' := hses
    obtain ⟨-, -, honto, -, -⟩ := hses'
    have hWY : Win W A Y := by
      unfold Formalism.MainNotions.ArcLiftingSetup.Win
      refine ⟨hY, fun i τ hτ a ha => ?_⟩
      rcases (hJmp T₂ Y W.one ι π hses hSur.2.1 hY hcrone τ a).mp ha with h2 | h1
      · exact hW2.2 i τ hτ a h2
      · rw [hjone τ a h1]
        exact h0win i
    refine ⟨hWY, fun c hc => ?_⟩
    have hSπ : Formalism.MainNotions.LiftingTheory.Sur W π := by
      unfold Formalism.MainNotions.LiftingTheory.Sur
      exact ⟨hY, hcrone, honto⟩
    exact kill_cut W hcase CR hWR π hSπ Mi' hi' (hJL Y hWY) hl _ w S η hηB hHb c (hcb c hc)

end ThetaShiftProofs

end Formalism.MainNotions.N.FrobeniusPowerSeries.SetupA
