module

public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CoarseMultiplicityAtIdentity
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.TopDegreeLeTwoB
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.CoarseDegreeAlternative
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.ThresholdLowerBounds
public import Mathlib.Algebra.Order.Field.GeomSum
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

theorem poly_upper_bound_delta {de ε : ℝ} (hε : 0 ≤ ε) (h40 : 40 * ε ≤ de) (h6 : de < 1 / 6) :
    (1 - de / 2) * (1 - de / 4) ≤ (1 - de / 2 + 17 * ε) * (1 - de / 4 - ε) - ε := by
  grind [mul_nonneg hε (by linarith : 0 ≤ 15 - 15 / 4 * de - 17 * ε)]

theorem poly_lower_bound_delta {de : ℝ} (h0 : 0 ≤ de) (h6 : de < 1 / 6) : 1 ≤ (1 + 2 * de) * ((1 - de / 2) * (1 - de / 4)) := by
  have h1 : 0 ≤ 5 / 4 - 11 / 8 * de := by linarith
  grind [mul_nonneg h0 h1, mul_nonneg (mul_nonneg h0 h0) h0]

theorem upper_real_bound {b' d ε t P c A La k g be : ℝ} (hb : 0 < b') (hP0 : 0 < P) (hε0 : 0 ≤ ε) (h40 : 40 * ε ≤ d)
    (hd0 : 0 ≤ d) (hd6 : d < 1 / 6) (htb : t * (1 + 2 * d) < b') (hcap : P * c ≤ t + ε * b')
    (hg : b' * (1 - be) ≤ g) (hbe : be ≤ d / 2 - 18 * ε) (hkP : k * P ≤ ε * b') (hlow : g - k * P < A * P)
    (hLk : La / k ≤ ε) : c + La * A / k ≤ A * (1 - d / 4) := by
  have hAP : b' * (1 - d / 2 + 17 * ε) < A * P := by
    have a : b' * be ≤ b' * (d / 2 - 18 * ε) := mul_le_mul_of_nonneg_left hbe hb.le
    have e : b' * (1 - d / 2 + 17 * ε) = b' - b' * (d / 2 - 18 * ε) - ε * b' := by ring
    have e' : b' * (1 - be) = b' - b' * be := by ring
    rw [e]
    rw [e'] at hg
    linarith
  have hu0 : 0 ≤ 1 - d / 2 + 17 * ε := by linarith
  have hv0 : 0 < 1 - d / 4 - ε := by linarith
  have hpoly : 1 ≤ (1 + 2 * d) * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) := by
    have a1 := poly_upper_bound_delta hε0 h40 hd6
    have a2 := poly_lower_bound_delta hd0 hd6
    have : (1 + 2 * d) * ((1 - d / 2) * (1 - d / 4)) ≤
        (1 + 2 * d) * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) :=
      mul_le_mul_of_nonneg_left a1 (by linarith)
    linarith
  have htlt : t < b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) := by
    have a1 : b' * 1 ≤ b' * ((1 + 2 * d) * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε)) :=
      mul_le_mul_of_nonneg_left hpoly hb.le
    have a2 : t * (1 + 2 * d) < b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) * (1 + 2 * d) := by
      calc t * (1 + 2 * d) < b' := htb
        _ = b' * 1 := (mul_one _).symm
        _ ≤ b' * ((1 + 2 * d) * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε)) := a1
        _ = b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) * (1 + 2 * d) := by ring
    exact lt_of_mul_lt_mul_right a2 (by linarith)
  have hPc : P * c < b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε)) := by
    have e : b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) - ε) =
        b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε)) - ε * b' := by ring
    rw [e] at htlt
    linarith
  have hAP0 : 0 ≤ A * P := le_trans (mul_nonneg hb.le hu0) hAP.le
  have hfin : P * (c + La * A / k) ≤ P * (A * (1 - d / 4)) := by
    have a1 : P * (La * A / k) = La / k * (A * P) := by ring
    have a2 : La / k * (A * P) ≤ ε * (A * P) := mul_le_mul_of_nonneg_right hLk hAP0
    have a3 : b' * (1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) ≤ A * P * (1 - d / 4 - ε) :=
      mul_le_mul_of_nonneg_right hAP.le hv0.le
    have e2 : A * P * (1 - d / 4 - ε) + ε * (A * P) = P * (A * (1 - d / 4)) := by ring
    have e3 : b' * (1 - d / 2 + 17 * ε) * (1 - d / 4 - ε) = b' * ((1 - d / 2 + 17 * ε) * (1 - d / 4 - ε)) := by ring
    rw [mul_add, a1, ← e2]
    rw [e3] at a3
    linarith
  exact le_of_mul_le_mul_left hfin hP0

variable {s r : ℕ} {p : ℕ} {S : SegData s} {b' de be aS Q : ℝ}

theorem SegHyp.geo (H : SegHyp p S b' de be aS Q) : ∑ i : Fin s, 1 / (p : ℝ) ^ (S.G - S.d i) ≤ 5 / 4 / (p : ℝ) := by
  classical
  have hp5 := H.p0
  have hp0 : (0 : ℝ) < p := by linarith
  set x : ℝ := 1 / (p : ℝ) with hx
  have hx0 : 0 ≤ x := by positivity
  have hx5 : x ≤ 1 / 5 := by
    rw [hx]
    exact one_div_le_one_div_of_le (by norm_num) hp5
  have hx1 : x < 1 := by linarith
  have e1 : ∀ i : Fin s, 1 / (p : ℝ) ^ (S.G - S.d i) = x ^ (S.G - S.d i) := fun i => by rw [hx, one_div_pow]
  have hinj : Set.InjOn (fun i : Fin s => S.G - S.d i) (Finset.univ : Finset (Fin s)) := by
    intro i _ i' _ h
    have a1 := (H.dlt i).2
    have a2 := (H.dlt i').2
    have : S.d i = S.d i' := by
      simp only at h
      omega
    exact H.dmono.injective this
  calc ∑ i : Fin s, 1 / (p : ℝ) ^ (S.G - S.d i) = ∑ i : Fin s, x ^ (S.G - S.d i) := Finset.sum_congr rfl fun i _ => e1 i
    _ = ∑ n ∈ (Finset.univ : Finset (Fin s)).image (fun i => S.G - S.d i), x ^ n := (Finset.sum_image hinj).symm
    _ ≤ ∑ n ∈ Finset.Ico 1 S.G, x ^ n := by
        refine Finset.sum_le_sum_of_subset_of_nonneg ?_ fun n _ _ => pow_nonneg hx0 n
        intro n hn
        obtain ⟨i, _, rfl⟩ := Finset.mem_image.1 hn
        have a1 := (H.dlt i).1
        have a2 := (H.dlt i).2
        exact Finset.mem_Ico.2 ⟨by omega, by omega⟩
    _ ≤ x ^ 1 / (1 - x) := geom_sum_Ico_le_of_lt_one hx0 hx1
    _ ≤ 5 / 4 / (p : ℝ) := by
        rw [pow_one, div_le_iff₀ (by linarith)]
        have : 5 / 4 / (p : ℝ) = 5 / 4 * x := by rw [hx]; ring
        rw [this]
        nlinarith

variable {C0 Cde CE1 CE2 : ℝ} {X : Loc}

theorem Std.forty_epsilon_le_delta (St : Std C0 Cde CE1 CE2 1 X) : 40 * eps X C0 ≤ X.de C0 Cde := by
  simpa only [eps, div_eq_mul_inv, mul_assoc] using St.LaK

theorem Std.be18 (St : Std C0 Cde CE1 CE2 1 X) :
    _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0 ≤ X.de C0 Cde / 2 - 18 * eps X C0 := by
  simpa only [eps, div_eq_mul_inv, mul_assoc] using St.beLe

theorem Std.Laeps (St : Std C0 Cde CE1 CE2 1 X) : X.La C0 / X.k ≤ eps X C0 := by
  have hk0 : 0 < X.k := by linarith [St.k5]
  have h1 : (1 : ℝ) ≤ X.N1 := by exact_mod_cast St.N1pos
  have hLa0 : 0 ≤ X.La C0 := by linarith [St.La1]
  unfold eps
  exact div_le_div_of_nonneg_right (le_mul_of_one_le_left hLa0 h1) hk0.le

theorem Std.twoP (St : Std C0 Cde CE1 CE2 1 X) : 2 * (X.b' / X.p) ≤ eps X C0 * X.b' := by
  have hk0 : 0 < X.k := by linarith [St.k5]
  have hp0 : (0 : ℝ) < X.p := by linarith [St.p1]
  have hpk : X.k ^ 2 ≤ (X.p : ℝ) := by
    have h3 : (1 : ℝ) ≤ X.Y ^ 2 := one_le_pow₀ St.Y1
    exact (le_mul_of_one_le_right (sq_nonneg X.k) h3).trans St.pk
  have h1 : 2 / (X.p : ℝ) ≤ 1 / X.k := by
    rw [div_le_div_iff₀ hp0 hk0]
    have hk2 : 5 * X.k ≤ X.k ^ 2 := by
      rw [sq]; exact mul_le_mul_of_nonneg_right St.k5 hk0.le
    linarith [hpk]
  have h2 : 2 * (X.b' / X.p) = 2 / (X.p : ℝ) * X.b' := by ring
  rw [h2]
  exact mul_le_mul_of_nonneg_right (h1.trans St.eps_ge) St.bpos.le

theorem kept_upper_level_bound (St : Std C0 Cde CE1 CE2 1 X) (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m)
    (hdig : DigitsOK X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b) (i : Fin (segS X.TT j))
    (hi : (X.seg C0 CE1 CE2 j).sigma ≤ (i : ℕ)) :
    (cap X.p (X.seg C0 CE1 CE2 j) b i : ℝ) +
        (X.seg C0 CE1 CE2 j).La * (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) / ((X.m : ℝ) + 1) ≤
      (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) * (1 - X.de C0 Cde / 4) := by
  have H : SegHyp X.p (X.seg C0 CE1 CE2 j) X.b' (X.de C0 Cde) (_root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) (X.aT (segStart X.TT j) : ℝ) X.Q := by
    exact {
    p5 := St.p5
    G2 := by
      show 2 ≤ segG X.TT j
      have h1 := segG_even St.nEven X.TT j
      have h2 : 0 < segG X.TT j := by
        unfold segG
        split_ifs with h
        · have := St.n2
          omega
        · omega
      rw [Nat.even_iff] at h1
      omega
    dlt := dist_pos_lt X.TT j
    dodd := dist_odd St.nEven X.TT j
    dmono := dist_strictMono X.TT j
    sig := fun i => sigma_iff X.p (by have := St.p5; omega) X.TT X.bT X.a X.b' X.Y _ _ j i
    bpos := St.bpos
    La0 := by
      show 0 ≤ X.La C0
      linarith [St.La1]
    errorNonneg := St.E0nn
    bT := fun i => St.winB _ (pos_mem X.TT j i).1
    bP := (St.winB _ (next_mem X.TT j).1).2
    be0 := St.be0
    beLe := by
      have h1 := St.beLe
      have h2 := St.La1
      have hk : 0 < X.k := by
        unfold Loc.k
        positivity
      have h3 : 0 ≤ 18 * (X.N1 : ℝ) * X.La C0 / X.k := by positivity
      linarith
    de6 := St.de6
    band := St.band
    aS := (St.winA _ (start_mem X.TT j).1).1
    sp := by
      have h1 : (segS X.TT j : ℝ) ≤ (X.N1 : ℝ) := by exact_mod_cast (St.segB j).2
      have h2 := St.N1k
      have h3 := St.pk
      have h4 := St.Y1
      have h5 : (0 : ℝ) ≤ (X.N1 : ℝ) := Nat.cast_nonneg _
      have hk1 : 1 ≤ X.k := by linarith
      have h6 : X.k ≤ X.k ^ 2 := by rw [sq]; exact le_mul_of_one_le_right (by linarith) hk1
      have h7 : X.k ^ 2 * 1 ≤ X.k ^ 2 * X.Y ^ 2 := mul_le_mul_of_nonneg_left (one_le_pow₀ h4) (by positivity)
      linarith
    Q := by
      show (X.p : ℝ) ^ (segG X.TT j) ≤ (X.p : ℝ) ^ X.G'
      have hp : (1 : ℝ) ≤ (X.p : ℝ) := by
        have := St.p5
        exact_mod_cast (by omega : 1 ≤ X.p)
      exact pow_le_pow_right₀ hp (St.segB j).1
    }
  have hb := St.bpos
  obtain ⟨hP0, hpd0, hQj, hQ, hPQ⟩ := St.levels j i
  have hcb := coarse_bounds (X.bT (segPos X.TT j i)) (X.p ^ (segG X.TT j - (segDists X.TT j).get i)) (b.rz i)
    (fun c => (hdig.1 i c).1) (hdig.2.1 i).1 (hdig.2.1 i).2
  have hcap := H.Pcap b i
  have hPe : (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).G - (X.seg C0 CE1 CE2 j).d i) =
      ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) := by
    push_cast; rfl
  rw [hPe] at hcap
  have hpd : (0 : ℝ) < (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).d i) := hpd0
  have hns : ¬ (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).d i) < ((X.seg C0 CE1 CE2 j).a : ℝ) / X.b' := fun hh =>
    absurd ((H.sig i).2 hh) (not_lt.2 hi)
  have hge := not_lt.1 hns
  have hab0 : 0 ≤ ((X.seg C0 CE1 CE2 j).a : ℝ) / X.b' := div_nonneg (Nat.cast_nonneg _) hb.le
  have hband := H.band _ (H.dodd i)
  have hde0 := H.de0
  have hgt : ((X.seg C0 CE1 CE2 j).a : ℝ) / X.b' * (1 + 2 * X.de C0 Cde) <
      (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).d i) := by
    by_contra hcon
    refine hband ⟨?_, not_lt.1 hcon⟩
    have : ((X.seg C0 CE1 CE2 j).a : ℝ) / X.b' * (1 - 2 * X.de C0 Cde) ≤ ((X.seg C0 CE1 CE2 j).a : ℝ) / X.b' * 1 :=
      mul_le_mul_of_nonneg_left (by linarith) hab0
    linarith
  have htb : ((X.seg C0 CE1 CE2 j).a : ℝ) / (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).d i) * (1 + 2 * X.de C0 Cde) < X.b' := by
    rw [div_mul_eq_mul_div, div_lt_iff₀ hpd]
    rw [div_mul_eq_mul_div, div_lt_iff₀ hb] at hgt
    linarith
  have hbT : X.b' * (1 - _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) ≤ (X.bT (segPos X.TT j i) : ℝ) := (H.bT i).1
  have hkP : ((X.m : ℝ) + 1) * ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) ≤ eps X C0 * X.b' := by
    have h5 := St.kQeps le_rfl
    have : ((X.m : ℝ) + 1) * ((X.p ^ (segG X.TT j - (segDists X.TT j).get i) : ℕ) : ℝ) ≤ X.k * X.Q :=
      mul_le_mul_of_nonneg_left (hPQ.trans hQ) (by positivity)
    linarith
  have hcap' := hcap.trans (add_le_add_right St.twoP _)
  exact upper_real_bound hb hP0 St.eps0 St.forty_epsilon_le_delta hde0 St.de6 htb hcap' hbT St.be18 hkP hcb.2 St.Laeps

theorem extra_order_le_maximal (St : Std C0 Cde CE1 CE2 1 X) (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m) :
    Oplus X.p X.m (X.seg C0 CE1 CE2 j) b ≤ localOrderCap C0 X := by
  have H : SegHyp X.p (X.seg C0 CE1 CE2 j) X.b' (X.de C0 Cde) (_root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) (X.aT (segStart X.TT j) : ℝ) X.Q := by
    exact {
    p5 := St.p5
    G2 := by
      show 2 ≤ segG X.TT j
      have h1 := segG_even St.nEven X.TT j
      have h2 : 0 < segG X.TT j := by
        unfold segG
        split_ifs with h
        · have := St.n2
          omega
        · omega
      rw [Nat.even_iff] at h1
      omega
    dlt := dist_pos_lt X.TT j
    dodd := dist_odd St.nEven X.TT j
    dmono := dist_strictMono X.TT j
    sig := fun i => sigma_iff X.p (by have := St.p5; omega) X.TT X.bT X.a X.b' X.Y _ _ j i
    bpos := St.bpos
    La0 := by
      show 0 ≤ X.La C0
      linarith [St.La1]
    errorNonneg := St.E0nn
    bT := fun i => St.winB _ (pos_mem X.TT j i).1
    bP := (St.winB _ (next_mem X.TT j).1).2
    be0 := St.be0
    beLe := by
      have h1 := St.beLe
      have h2 := St.La1
      have hk : 0 < X.k := by
        unfold Loc.k
        positivity
      have h3 : 0 ≤ 18 * (X.N1 : ℝ) * X.La C0 / X.k := by positivity
      linarith
    de6 := St.de6
    band := St.band
    aS := (St.winA _ (start_mem X.TT j).1).1
    sp := by
      have h1 : (segS X.TT j : ℝ) ≤ (X.N1 : ℝ) := by exact_mod_cast (St.segB j).2
      have h2 := St.N1k
      have h3 := St.pk
      have h4 := St.Y1
      have h5 : (0 : ℝ) ≤ (X.N1 : ℝ) := Nat.cast_nonneg _
      have hk1 : 1 ≤ X.k := by linarith
      have h6 : X.k ≤ X.k ^ 2 := by rw [sq]; exact le_mul_of_one_le_right (by linarith) hk1
      have h7 : X.k ^ 2 * 1 ≤ X.k ^ 2 * X.Y ^ 2 := mul_le_mul_of_nonneg_left (one_le_pow₀ h4) (by positivity)
      linarith
    Q := by
      show (X.p : ℝ) ^ (segG X.TT j) ≤ (X.p : ℝ) ^ X.G'
      have hp : (1 : ℝ) ≤ (X.p : ℝ) := by
        have := St.p5
        exact_mod_cast (by omega : 1 ≤ X.p)
      exact pow_le_pow_right₀ hp (St.segB j).1
    }
  have hp5 := H.p0
  have hp0 : (0 : ℝ) < X.p := by linarith
  have hb := St.bpos
  have hk0 : 0 < X.k := by linarith [St.k5]
  have hLa0 : 0 ≤ X.La C0 := by linarith [St.La1]
  have ha0 : (0 : ℝ) ≤ (X.a : ℝ) := Nat.cast_nonneg _
  have hgeo := H.geo
  have hcapS := cap_le X.p (X.seg C0 CE1 CE2 j) b (segS X.TT j)
  have hA0 := base_exponent_le_a X.p (by have := St.p5; omega) (X.seg C0 CE1 CE2 j) H.errorNonneg
  have hA0' : ((X.seg C0 CE1 CE2 j).A0 X.p : ℝ) ≤ (X.a : ℝ) / (X.p : ℝ) ^ 2 := by
    refine hA0.trans ?_
    show (X.a : ℝ) / (X.p : ℝ) ^ (X.seg C0 CE1 CE2 j).G ≤ _
    exact div_le_div_of_nonneg_left ha0 (by positivity) (pow_le_pow_right₀ (by linarith) H.G2)
  have hsumA : (∑ i : Fin (segS X.TT j), if (i : ℕ) < segS X.TT j then
      (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) else 0) ≤ 3 * X.b' / X.p := by
    calc (∑ i : Fin (segS X.TT j), if (i : ℕ) < segS X.TT j then
          (coarseA X.p (X.seg C0 CE1 CE2 j) b i : ℝ) else 0)
        ≤ ∑ i : Fin (segS X.TT j), 2 * X.b' *
            (1 / (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).G - (X.seg C0 CE1 CE2 j).d i)) := by
          refine Finset.sum_le_sum fun i _ => ?_
          rw [if_pos i.2]
          have a1 := coarseA_mul X.p (X.seg C0 CE1 CE2 j) b i
          have a2 := H.top_degree_le_two_b i
          have a3 : (0 : ℝ) < (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).G - (X.seg C0 CE1 CE2 j).d i) := by positivity
          rw [mul_one_div, le_div_iff₀ a3]
          linarith
      _ = 2 * X.b' * ∑ i : Fin (segS X.TT j),
            1 / (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).G - (X.seg C0 CE1 CE2 j).d i) := by rw [Finset.mul_sum]
      _ ≤ 2 * X.b' * (5 / 4 / (X.p : ℝ)) := mul_le_mul_of_nonneg_left hgeo (by linarith)
      _ ≤ 3 * X.b' / X.p := by
          have : 2 * X.b' * (5 / 4 / (X.p : ℝ)) = 5 / 2 * X.b' / X.p := by ring
          rw [this]
          exact div_le_div_of_nonneg_right (by linarith) hp0.le
  have hsumP : (∑ i : Fin (segS X.TT j), 2 * ((X.seg C0 CE1 CE2 j).a : ℝ) / ((X.seg C0 CE1 CE2 j).P X.p i : ℝ)) ≤
      4 * (X.a : ℝ) / X.p := by
    calc (∑ i : Fin (segS X.TT j), 2 * ((X.seg C0 CE1 CE2 j).a : ℝ) / ((X.seg C0 CE1 CE2 j).P X.p i : ℝ))
        = 2 * (X.a : ℝ) * ∑ i : Fin (segS X.TT j),
            1 / (X.p : ℝ) ^ ((X.seg C0 CE1 CE2 j).G - (X.seg C0 CE1 CE2 j).d i) := by
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          unfold SegData.P
          push_cast
          rw [mul_one_div]
          rfl
      _ ≤ 2 * (X.a : ℝ) * (5 / 4 / (X.p : ℝ)) := mul_le_mul_of_nonneg_left hgeo (by linarith)
      _ ≤ 4 * (X.a : ℝ) / X.p := by
          have : 2 * (X.a : ℝ) * (5 / 4 / (X.p : ℝ)) = 5 / 2 * (X.a : ℝ) / X.p := by ring
          rw [this]
          exact div_le_div_of_nonneg_right (by linarith) hp0.le
  have hbP : ((X.seg C0 CE1 CE2 j).bPlus : ℝ) ≤ 2 * X.b' := by
    have a1 := H.bP
    have a2 := H.beLe
    have a3 := H.de6
    have a4 : X.b' * (1 + _root_.Formalism.MainNotions.ColumnSystems.Pf.be X C0) ≤ X.b' * 2 := mul_le_mul_of_nonneg_left (by linarith) hb.le
    linarith
  have hcoef : 0 ≤ X.La C0 / X.k + 4 / (X.p : ℝ) ^ 2 := by positivity
  unfold Oplus localOrderCap
  have a1 : ((X.seg C0 CE1 CE2 j).La / ((X.m : ℝ) + 1) + 4 / (X.p : ℝ) ^ 2) *
      (∑ i : Fin (segS X.TT j), 2 * ((X.seg C0 CE1 CE2 j).a : ℝ) / ((X.seg C0 CE1 CE2 j).P X.p i : ℝ)) ≤
      (X.La C0 / X.k + 4 / (X.p : ℝ) ^ 2) * (4 * (X.a : ℝ) / X.p) :=
    mul_le_mul_of_nonneg_left hsumP hcoef
  have a2 : (X.seg C0 CE1 CE2 j).La * ((X.seg C0 CE1 CE2 j).bPlus : ℝ) / ((X.m : ℝ) + 1) ≤
      2 * X.La C0 * X.b' / X.k := by
    show X.La C0 * ((X.seg C0 CE1 CE2 j).bPlus : ℝ) / X.k ≤ _
    refine div_le_div_of_nonneg_right ?_ hk0.le
    have := mul_le_mul_of_nonneg_left hbP hLa0
    linarith
  linarith

theorem maximal_order_le_a (St : Std C0 Cde CE1 CE2 1 X) : localOrderCap C0 X ≤ (X.a : ℝ) := by
  have hp5 : (5 : ℝ) ≤ X.p := by exact_mod_cast St.p5
  have hp0 : (0 : ℝ) < X.p := by linarith
  have hb := St.bpos
  have hk0 : 0 < X.k := by linarith [St.k5]
  have hLa0 : 0 ≤ X.La C0 := by linarith [St.La1]
  have ha0 : (0 : ℝ) ≤ (X.a : ℝ) := Nat.cast_nonneg _
  have hbp : X.b' ≤ (X.a : ℝ) / X.p := by
    have := St.pab
    rw [lt_div_iff₀ hb] at this
    rw [le_div_iff₀ hp0]
    linarith
  have hLak : X.La C0 / X.k ≤ 1 / 4 := by
    rw [div_le_iff₀ hk0]
    have a1 := St.LaN
    have a2 := mul_le_mul_of_nonneg_right St.N2 hLa0
    linarith
  have hp25 : (25 : ℝ) ≤ (X.p : ℝ) ^ 2 := by
    calc (25 : ℝ) = 5 ^ 2 := by norm_num
      _ ≤ (X.p : ℝ) ^ 2 := pow_le_pow_left₀ (by norm_num) hp5 2
  have b1 : (X.a : ℝ) / (X.p : ℝ) ^ 2 ≤ (X.a : ℝ) / 25 := div_le_div_of_nonneg_left ha0 (by norm_num) hp25
  have b0 : (X.a : ℝ) / X.p ≤ (X.a : ℝ) / 5 := div_le_div_of_nonneg_left ha0 (by norm_num) hp5
  have b2 : 3 * X.b' / X.p ≤ 3 * (X.a : ℝ) / 25 := by
    have c0 : X.b' ≤ (X.a : ℝ) / 5 := hbp.trans b0
    have c1 : 3 * X.b' / X.p ≤ 3 * X.b' / 5 := div_le_div_of_nonneg_left (by linarith) (by norm_num) hp5
    linarith
  have b3 : 4 / (X.p : ℝ) ^ 2 ≤ 4 / 25 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) hp25
  have b4 : (X.La C0 / X.k + 4 / (X.p : ℝ) ^ 2) * (4 * (X.a : ℝ) / X.p) ≤ (1 / 4 + 4 / 25) * (4 * ((X.a : ℝ) / 5)) := by
    have c1 : 4 * (X.a : ℝ) / X.p = 4 * ((X.a : ℝ) / X.p) := by ring
    rw [c1]
    exact mul_le_mul (by linarith) (by linarith) (by positivity) (by norm_num)
  have b5 : 2 * X.La C0 * X.b' / X.k ≤ 2 * (1 / 4) * ((X.a : ℝ) / 5) := by
    have c1 : 2 * X.La C0 * X.b' / X.k = 2 * (X.La C0 / X.k) * X.b' := by ring
    rw [c1]
    exact mul_le_mul (by linarith) (hbp.trans b0) hb.le (by norm_num)
  unfold localOrderCap
  linarith

theorem keptBL_of_std (St : Std C0 Cde CE1 CE2 1 X) (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m)
    (hK : Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b) : BLk C0 Cde CE1 CE2 X 0 j b := by
  obtain ⟨hdig, hU, hSt, hX⟩ := hK
  refine ⟨hdig, ?_, ?_, ?_⟩
  · intro i hi
    obtain ⟨h1, h2, h3, h4⟩ := hU i hi
    refine ⟨h1, ?_, h3, h4⟩
    rw [add_zero]
    exact h2.trans (kept_upper_level_bound St j b hdig i hi)
  · intro i hi
    obtain ⟨h1, h2, h3, _, h5⟩ := hSt i hi
    refine ⟨h1, h2, h3, ?_⟩
    rw [add_zero]
    exact h5
  · have hoO : (b.oPlus : ℝ) ≤ localOrderCap C0 X := hX.trans (extra_order_le_maximal St j b)
    refine ⟨?_, by rw [add_zero]; exact hoO⟩
    have haP : (X.a : ℝ) ≤ (segAPlus X.TT X.aT j : ℝ) := (St.winA _ (next_mem X.TT j).1).1
    exact_mod_cast hoO.trans ((maximal_order_le_a St).trans haP)

theorem restKeptBL : RestKeptBL :=
  TransportedAlt.mono (fun _ _ _ _ _ _ _ _ _ _ h X hD hH hc j b hK => keptBL_of_std (h.2 X hD hH hc) j b hK) thr_std

end Formalism.MainNotions.ColumnSystems.Pf
