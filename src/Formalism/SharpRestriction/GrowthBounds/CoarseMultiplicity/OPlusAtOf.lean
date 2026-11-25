module

public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymbolFormOfOrthogonality
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

theorem oPlusAt_of {C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ}
    (hstd : ∀ X : Loc, D1num X → HIext C0 CYb Cde Ck CD Cb X → CBound Cc X → Std C0 Cde CE1 CE2 1 X) :
    OPlusAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc := by
  intro X hD hH hC j b hk
  have St := hstd X hD hH hC
  have hk4 := hk.2.2.2

  have hSa : (((X.seg C0 CE1 CE2 j).a : ℕ) : ℝ) = (X.a : ℝ) := rfl
  have hSLa : (X.seg C0 CE1 CE2 j).La = X.La C0 := rfl
  set A : ℝ := (X.a : ℝ) with hA
  set P : ℝ := (X.p : ℝ) with hPdef
  set La : ℝ := X.La C0 with hLadef
  set s : ℝ := (segS X.TT j : ℝ) with hsdef
  set q : ℝ := (X.m : ℝ) + 1 with hq
  have hP5 : (5 : ℝ) ≤ P := by
    show (5 : ℝ) ≤ (X.p : ℝ)
    exact_mod_cast St.p5
  have hP : (0 : ℝ) < P := by linarith
  have ha : (0 : ℝ) ≤ A := Nat.cast_nonneg _
  have hb : 0 < X.b' := St.bpos
  have hbp : X.b' * P < A := by
    have h1 : P < A / X.b' := St.pab
    rw [lt_div_iff₀ hb] at h1
    linarith
  have hY := St.Y1
  have hk2 : X.k ^ 2 ≤ P := by
    have h1 : X.k ^ 2 * X.Y ^ 2 ≤ P := St.pk
    have hY2 : (1 : ℝ) ≤ X.Y ^ 2 := one_le_pow₀ hY
    have h2 : X.k ^ 2 * 1 ≤ X.k ^ 2 * X.Y ^ 2 := mul_le_mul_of_nonneg_left hY2 (sq_nonneg X.k)
    linarith
  have hN1 : (1 : ℝ) ≤ X.N1 := by exact_mod_cast St.N1pos
  have hk5 : 5 ≤ X.k := by linarith [St.N1k]
  have hkP : 5 * X.k ≤ P :=
    calc 5 * X.k ≤ X.k * X.k := mul_le_mul_of_nonneg_right hk5 (by linarith)
      _ = X.k ^ 2 := (sq _).symm
      _ ≤ P := hk2
  have hN2 : (2 : ℝ) ≤ X.N := by exact_mod_cast St.N2
  have hLa1 : 1 ≤ La := St.La1
  have hLaN : 2 * X.N * La ≤ X.k := St.LaN
  have hLa : 4 * La ≤ X.k := by
    have := mul_le_mul_of_nonneg_right (show (4 : ℝ) ≤ 2 * X.N by linarith) (show (0 : ℝ) ≤ La by linarith)
    linarith
  have hsN : s ≤ X.N1 := by
    show ((segS X.TT j : ℕ) : ℝ) ≤ (X.N1 : ℝ)
    exact_mod_cast (St.segB j).2
  have hs0 : 0 ≤ s := Nat.cast_nonneg _
  have hs2 : 2 * s ≤ X.k := by linarith [St.N1k]
  have hq1 : 1 ≤ q := by rw [hq]; linarith [(Nat.cast_nonneg X.m : (0 : ℝ) ≤ X.m)]

  have e1 : A / P ^ 2 ≤ A / 25 := div_le_div_of_nonneg_left ha (by norm_num) (by
    have := mul_le_mul hP5 hP5 (by norm_num) hP.le
    rw [sq]
    linarith)
  have e2 : s * (2 * (X.b' / P)) ≤ A / 25 := by
    rw [show s * (2 * (X.b' / P)) = 2 * s * X.b' / P by ring, div_le_div_iff₀ hP (by norm_num)]
    have f1 := mul_le_mul_of_nonneg_right hs2 hb.le
    have f2 := mul_le_mul_of_nonneg_right hkP hb.le
    have f3 := mul_le_mul_of_nonneg_right hP5 ha
    calc 2 * s * X.b' * 25 ≤ X.k * X.b' * 25 := by linarith
      _ = 5 * (5 * X.k * X.b') := by ring
      _ ≤ 5 * (P * X.b') := by linarith
      _ = 5 * (X.b' * P) := by ring
      _ ≤ 5 * A := by linarith
      _ ≤ P * A := f3
      _ = A * P := by ring
  have e3 : (La / q + 4 / P ^ 2) * (s * (2 * A / P)) ≤ A / 4 + 4 * A / 125 := by
    have hsA : 0 ≤ s * (2 * A / P) := by positivity
    have g1 : (La / q + 4 / P ^ 2) * (s * (2 * A / P)) ≤ (La + 4 / P ^ 2) * (s * (2 * A / P)) :=
      mul_le_mul_of_nonneg_right (by
        have := div_le_self (show (0 : ℝ) ≤ La by linarith) hq1
        linarith) hsA
    have g2 : (La + 4 / P ^ 2) * (s * (2 * A / P)) = 2 * La * s * A / P + 8 * s * A / P ^ 3 := by
      field_simp
      ring
    have g3 : 2 * La * s * A / P ≤ A / 4 := by
      rw [div_le_div_iff₀ hP (by norm_num)]
      have hm := mul_le_mul hLa hs2 (by positivity) (by linarith)
      have h8 : 8 * (La * s) ≤ P := by
        have e : X.k * X.k = X.k ^ 2 := by ring
        linarith
      have h9 := mul_le_mul_of_nonneg_right h8 ha
      linarith
    have g4 : 8 * s * A / P ^ 3 ≤ 4 * A / 125 := by
      rw [div_le_div_iff₀ (by positivity) (by norm_num)]
      have h1 : 8 * s ≤ 4 * P / 5 := by linarith
      have h2 : (25 : ℝ) ≤ P ^ 2 := by
        have := mul_le_mul hP5 hP5 (by norm_num) hP.le
        rw [sq]
        linarith
      have h3 : 8 * s * A * 125 ≤ 100 * P * A := by
        have := mul_le_mul_of_nonneg_right h1 ha
        linarith
      have h4 : 100 * P * A ≤ 4 * A * P ^ 3 := by
        have h5 := mul_le_mul_of_nonneg_left h2 (by positivity : (0 : ℝ) ≤ 4 * A * P)
        have e : 4 * A * P * P ^ 2 = 4 * A * P ^ 3 := by ring
        linarith
      linarith
    linarith
  have e4 : 2 * (La * X.b' / q) ≤ A / 10 := by
    have g1 : La * X.b' / q ≤ La * X.b' := div_le_self (by positivity) hq1
    have g2 : 20 * (La * X.b') ≤ A := by
      have f1 := mul_le_mul_of_nonneg_right hLa hb.le
      have f2 := mul_le_mul_of_nonneg_right hkP hb.le
      linarith
    linarith
  have coarseA_mul {s r : ℕ} (p : ℕ) (S : SegData s) (b : SegBlock s r) (i : Fin s) :
      (coarseA p S b i : ℝ) * (p : ℝ) ^ (S.G - S.d i) ≤ (S.bTop i : ℝ) := by
    have h : coarseA p S b i * p ^ (S.G - S.d i) ≤ S.bTop i := by
      unfold coarseA SegData.P
      exact (Nat.div_mul_le_self _ _).trans (Nat.sub_le _ _)
    exact_mod_cast h
  
  have cap_le {s r : ℕ} (p : ℕ) (S : SegData s) (b : SegBlock s r) (l : ℕ) :
      (cap p S b l : ℝ) ≤ (S.A0 p : ℝ) + ∑ i : Fin s, if (i : ℕ) < l then (coarseA p S b i : ℝ) else 0 := by
    unfold cap
    push_cast
    apply add_le_add le_rfl
    apply Finset.sum_le_sum
    intro i _
    split_ifs
    · have h0 : (0 : ℝ) ≤ (oEff S b i : ℝ) := Nat.cast_nonneg _
      linarith
    · exact le_rfl
  
  have base_exponent_le_a {s : ℕ} (p : ℕ) (hp : 0 < p) (S : SegData s) (hE : 0 ≤ S.E0) :
      (S.A0 p : ℝ) ≤ (S.a : ℝ) / (p : ℝ) ^ S.G := by
    unfold SegData.A0 SegData.Qj
    push_cast
    have hp' : (0 : ℝ) < (p : ℝ) := by exact_mod_cast hp
    have hq : (0 : ℝ) < (p : ℝ) ^ S.G := pow_pos hp' _
    refine (Int.floor_le _).trans ?_
    gcongr
    linarith
  let S := X.seg C0 CE1 CE2 j
  let p := X.p
  let s := segS X.TT j
  let r := X.m
  let b' := X.b'
  let be := _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0
  have hp5nat_real : (5 : ℝ) ≤ p := by exact_mod_cast St.p5
  have hla0 : 0 ≤ S.La := by change 0 ≤ X.La C0; linarith [St.La1]
  have hG2 : 2 ≤ S.G := by
    change 2 ≤ segG X.TT j
    have h1 := segG_even St.nEven X.TT j
    have h2 : 0 < segG X.TT j := by
      unfold segG
      split_ifs
      · have := St.n2; omega
      · omega
    rw [Nat.even_iff] at h1
    omega
  have hbeLe : be ≤ X.de C0 Cde / 2 := by
    have h1 := St.beLe
    have h2 := St.La1
    have hk : 0 < X.k := by unfold Loc.k; positivity
    have h3 : 0 ≤ 18 * (X.N1 : ℝ) * X.La C0 / X.k := by positivity
    linarith
  have htop (i : Fin s) : (S.bTop i : ℝ) ≤ 2 * b' := by
    change (X.bT (segPos X.TT j i) : ℝ) ≤ 2 * X.b'
    have h1 := (St.winB _ (pos_mem X.TT j i).1).2
    have hbe : be ≤ 1 := by linarith [hbeLe, St.de6, St.be0]
    linarith [mul_le_mul_of_nonneg_left (show 1 + be ≤ 2 by linarith) St.bpos.le]
  have hplus : (S.bPlus : ℝ) ≤ b' * (1 + be) := (St.winB _ (next_mem X.TT j).1).2
  have hO : Oplus p r S b ≤ S.a / (p : ℝ) ^ 2 + (s : ℝ) * (2 * (b' / p)) +
      (S.La / ((r : ℝ) + 1) + 4 / (p : ℝ) ^ 2) * ((s : ℝ) * (2 * (S.a : ℝ) / p)) + 2 * (S.La * b' / ((r : ℝ) + 1)) := by
    have hp5 : (5 : ℝ) ≤ p := hp5nat_real
    have hp0 : (0 : ℝ) < p := by linarith
    have hb0 := St.bpos
    have hLa := hla0
    have hr0 : (0 : ℝ) < (r : ℝ) + 1 := by positivity
    have ha0 : (0 : ℝ) ≤ (S.a : ℝ) := Nat.cast_nonneg _
    have hPi : ∀ i : Fin s, (p : ℝ) ≤ (S.P p i : ℝ) := by
      intro i
      have h1 : 1 ≤ S.G - S.d i := by
        change 1 ≤ segG X.TT j - (segDists X.TT j).get i
        have := (dist_pos_lt X.TT j i).2
        omega
      unfold SegData.P
      push_cast
      calc (p : ℝ) = (p : ℝ) ^ 1 := (pow_one _).symm
        _ ≤ (p : ℝ) ^ (S.G - S.d i) := pow_le_pow_right₀ (by linarith) h1
    have hcoarse : ∀ i : Fin s, (coarseA p S b i : ℝ) ≤ 2 * (b' / p) := by
      intro i
      have hc := coarseA_mul p S b i
      have hb := htop i
      have hP := hPi i
      have hP' : (S.P p i : ℝ) = (p : ℝ) ^ (S.G - S.d i) := by simp [SegData.P]
      rw [← hP'] at hc
      have hca : (0 : ℝ) ≤ (coarseA p S b i : ℝ) := Nat.cast_nonneg _
      rw [mul_div_assoc', le_div_iff₀ hp0]
      linarith [mul_le_mul_of_nonneg_left hP hca]
    have hcap : (cap p S b s : ℝ) ≤ (S.a : ℝ) / (p : ℝ) ^ 2 + (s : ℝ) * (2 * (b' / p)) := by
      have h1 := cap_le p S b s
      have h2 : (S.A0 p : ℝ) ≤ (S.a : ℝ) / (p : ℝ) ^ 2 := by
        have h3 := base_exponent_le_a p (by have := St.p5; omega) S St.E0nn
        have hq : (p : ℝ) ^ 2 ≤ (p : ℝ) ^ S.G := pow_le_pow_right₀ (by linarith) hG2
        have hq0 : (0 : ℝ) < (p : ℝ) ^ 2 := by positivity
        exact h3.trans (div_le_div_of_nonneg_left ha0 hq0 hq)
      have h4 : (∑ i : Fin s, if (i : ℕ) < s then (coarseA p S b i : ℝ) else 0) ≤
          (s : ℝ) * (2 * (b' / p)) := by
        calc (∑ i : Fin s, if (i : ℕ) < s then (coarseA p S b i : ℝ) else 0)
            ≤ ∑ _i : Fin s, 2 * (b' / p) := by
              apply Finset.sum_le_sum
              intro i _
              rw [if_pos i.2]
              exact hcoarse i
          _ = (s : ℝ) * (2 * (b' / p)) := by simp
      linarith
    have hsumP : (∑ i, 2 * (S.a : ℝ) / (S.P p i : ℝ)) ≤ (s : ℝ) * (2 * (S.a : ℝ) / p) := by
      calc (∑ i, 2 * (S.a : ℝ) / (S.P p i : ℝ)) ≤ ∑ _i : Fin s, 2 * (S.a : ℝ) / p := by
            apply Finset.sum_le_sum
            intro i _
            exact div_le_div_of_nonneg_left (by positivity) hp0 (hPi i)
        _ = (s : ℝ) * (2 * (S.a : ℝ) / p) := by simp
    have hcoef : 0 ≤ S.La / ((r : ℝ) + 1) + 4 / (p : ℝ) ^ 2 :=
      add_nonneg (div_nonneg hLa hr0.le) (by positivity)
    have hbP : (S.bPlus : ℝ) ≤ 2 * b' := by
      have h1 := hplus
      have hbe : be ≤ 1 := by linarith [hbeLe, St.de6, St.be0]
      linarith [mul_le_mul_of_nonneg_left (show 1 + be ≤ 2 by linarith) hb0.le]
    have h3 : S.La * (S.bPlus : ℝ) / ((r : ℝ) + 1) ≤ 2 * (S.La * b' / ((r : ℝ) + 1)) := by
      have hnum : S.La * (S.bPlus : ℝ) ≤ 2 * (S.La * b') :=
        (mul_le_mul_of_nonneg_left hbP hLa).trans_eq (by ring)
      rw [show 2 * (S.La * b' / ((r : ℝ) + 1)) = 2 * (S.La * b') / ((r : ℝ) + 1) by ring]
      exact div_le_div_of_nonneg_right hnum hr0.le
    have h2 : (S.La / ((r : ℝ) + 1) + 4 / (p : ℝ) ^ 2) * (∑ i, 2 * (S.a : ℝ) / (S.P p i : ℝ)) ≤
        (S.La / ((r : ℝ) + 1) + 4 / (p : ℝ) ^ 2) * ((s : ℝ) * (2 * (S.a : ℝ) / p)) :=
      mul_le_mul_of_nonneg_left hsumP hcoef
    unfold Oplus
    linarith [hcap, h2, h3]
  change Oplus X.p X.m (X.seg C0 CE1 CE2 j) b ≤ _ at hO
  rw [hSa, hSLa] at hO
  have hwin := ((St.winA _ (next_mem X.TT j).1).1)
  have hfin : (b.oPlus : ℝ) ≤ (X.aT (segNext X.TT j) : ℝ) := by
    have := hO
    linarith
  unfold segAPlus
  exact_mod_cast hfin

theorem restOPlus : RestOPlus := by
  exact TransportedAlt.mono (fun C0 CYb Cde Ck CD Cb CE1 CE2 Cm Cc h => oPlusAt_of h.2) thr_std

end Formalism.MainNotions.ColumnSystems.Pf
