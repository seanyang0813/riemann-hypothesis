module

public import Formalism.SharpRestriction.GrowthBounds.CornerGLContinuity
public import Formalism.SharpRestriction.ParamsHeightRankConstant
public import Formalism.SharpRestriction.GrowthBounds.WittFrameLocaliserOrders
public import Formalism.SharpRestriction.GrowthBounds.ProjectionLemmaBaseLevel
public import Formalism.SharpRestriction.GrowthBounds.TableLineDegreeFive
import Formalism.GrowthSums.LemmaATwoFactList
public import Formalism.LocalRingCardinality.HostCls
public import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
public import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSa
public import Formalism.SharpRestriction.GrowthBounds.LatticeSystems
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.FrameFacts
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.HostFacts
import Formalism.SubspaceCounting.ChoiceOfTopsRefined
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SubspaceCounting.SubspaceCountingProofs.TopsChoicePartA

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions.CornerGLContinuity

theorem mod_eq_sub_of_lt_two_mul_alt {a n : ℕ} (h1 : n ≤ a) (h2 : a < 2 * n) : a % n = a - n := by
  rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]

theorem bc_fwd_le {n a b : ℕ} (hb : b < n) (hab : a ≤ b) : fwd n a b = b - a := by
  have e : b + n - a = (b - a) + n := by omega
  rw [fwd, e, Nat.add_mod_right, Nat.mod_eq_of_lt (by omega)]

theorem bc_fwd_gt {n a b : ℕ} (ha : a < n) (hab : b < a) : fwd n a b = b + n - a :=
  Nat.mod_eq_of_lt (by omega)

theorem bc_fwd_of {n a b d : ℕ} (ha : a < n) (hd : d < n) (h : (a + d) % n = b) : fwd n a b = d := by
  by_cases hc : a + d < n
  · rw [Nat.mod_eq_of_lt hc] at h
    subst h
    rw [bc_fwd_le hc (by omega)]
    omega
  · rw [mod_eq_sub_of_lt_two_mul_alt (by omega) (by omega)] at h
    subst h
    rw [bc_fwd_gt ha (by omega)]
    omega

theorem bc_iso {n u y a : ℕ} (hy : y < n) (hua : u ≤ a) (han : a + u < n) (h : y + u < a ∨ a + u < y) :
    u < fwd n y a ∧ u < fwd n a y := by
  rcases h with h | h
  · rw [bc_fwd_le (by omega) (by omega), bc_fwd_gt (by omega) (by omega)]
    omega
  · rw [bc_fwd_gt hy (by omega), bc_fwd_le hy (by omega)]
    omega

theorem bc_sub {n' : ℕ} (TT : Finset (Fin n')) : TT.map Fin.valEmbedding ⊆ Finset.range n' := by
  intro a ha
  obtain ⟨b, _, rfl⟩ := Finset.mem_map.mp ha
  exact Finset.mem_range.mpr b.isLt

theorem bc_hyps {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) :
    1 ≤ u ∧ (M₀ + 1) * ((6 * r + 1) * u) ≤ n' ∧ (M₀ + 5) * ((6 * r + 1) * u) ≤ G' ∧ u ≤ G' := by
  obtain ⟨_, h2, h3, h4, _⟩ := h
  have a1 : (M₀ + 1) * ((6 * r + 1) * u) ≤ (M₀ + 5) * ((6 * r + 1) * u) := Nat.mul_le_mul_right _ (by omega)
  have a2 : 1 * (1 * u) ≤ (M₀ + 5) * ((6 * r + 1) * u) :=
    Nat.mul_le_mul (by omega) (Nat.mul_le_mul_right _ (by omega))
  refine ⟨by omega, by omega, by omega, by omega⟩

theorem bc_count {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) : SegmentCountBounds n' TT.card G' N₁ := by
  obtain ⟨c0, c1, c2, _⟩ := bc_hyps h
  have := _root_.Formalism.GrowthSums.top_count_holds n' (TT.map Fin.valEmbedding) L₂ (r - 1) r u M₀ G' N₁ hr c0 c1 c2 (bc_sub TT)
    h.2.2.2.2
  rwa [Finset.card_map] at this

theorem bc_next {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) : ConsecutiveMaximaClose n' (TT.map Fin.valEmbedding) G' N₁ := by
  classical
  obtain ⟨c0, c1, c2, c3⟩ := bc_hyps h
  have hg := h.2.2.2.2
  intro y hy _
  have hyn : y < n' := Finset.mem_range.mp (bc_sub TT hy)
  obtain ⟨Dd, hD, hT, hE⟩ := _root_.Formalism.GrowthSums.next_even_top_holds n' (TT.map Fin.valEmbedding) L₂ (r - 1) r u M₀ G' N₁ hr c0 c1 c2
    (bc_sub TT) hg y hyn
  obtain ⟨hD1, hD2⟩ := Finset.mem_Icc.mp hD
  have hex : ∃ d, 1 ≤ d ∧ (y + d) % n' ∈ TT.map Fin.valEmbedding ∧ Even ((y + d) % n') := ⟨Dd, hD1, hT, hE⟩
  obtain ⟨m1, m2, m3⟩ := Nat.find_spec hex
  have hle : Nat.find hex ≤ Dd := Nat.find_min' hex ⟨hD1, hT, hE⟩
  refine ⟨Nat.find hex, m1, by omega, m2, m3, ?_, ?_⟩
  · intro d' h1 h2 h3 h4
    exact Nat.find_min hex h2 ⟨h1, h3, h4⟩
  · have hn0 : 0 < n' := by omega
    refine le_trans (Finset.card_le_card ?_) (hg.2.2 ((y + 1) % n') (Nat.mod_lt _ hn0))
    apply Finset.inter_subset_inter_left
    intro z hz
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hz
    obtain ⟨j1, j2⟩ := Finset.mem_Ioo.mp hj
    unfold Formalism.G0.window
    refine Finset.mem_image.mpr ⟨j - 1, Finset.mem_range.mpr (by omega), ?_⟩
    rw [Nat.mod_add_mod]
    congr 1
    omega

theorem bc_old {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) : EarliestMaximumFar n' (TT.map Fin.valEmbedding) r L₁ := by
  obtain ⟨c0, c1, c2, c3⟩ := bc_hyps h
  obtain ⟨hL, hLu, _, h3, hg⟩ := h
  intro i hi
  have hin : i < n' := Finset.mem_range.mp (bc_sub TT hi)
  have hL1n : L₁ < n' := by omega
  have hi0 : (if L₁ ≤ i then i - L₁ else i + n' - L₁) < n' := by split_ifs <;> omega
  have hA := hg.1 _ hi0
  refine lt_of_le_of_lt (le_trans (Finset.card_le_card ?_) hA) (by omega)
  intro y hy
  obtain ⟨hyT, _, hd1, hd2⟩ := Finset.mem_filter.mp hy
  have hyn : y < n' := Finset.mem_range.mp (bc_sub TT hyT)
  refine Finset.mem_inter.mpr ⟨hyT, ?_⟩
  unfold Formalism.G0.window
  refine Finset.mem_image.mpr ⟨L₁ - fwd n' y i, Finset.mem_range.mpr (by omega), ?_⟩
  rcases lt_trichotomy y i with hlt | heq | hgt
  · rw [bc_fwd_le hin hlt.le] at hd1 hd2 ⊢
    split_ifs with hc
    · rw [Nat.mod_eq_of_lt (by omega)]; omega
    · rw [mod_eq_sub_of_lt_two_mul_alt (by omega) (by omega)]; omega
  · subst heq
    rw [bc_fwd_le hin le_rfl] at hd1
    omega
  · rw [bc_fwd_gt hyn hgt] at hd1 hd2 ⊢
    rw [if_neg (by omega), Nat.mod_eq_of_lt (by omega)]
    omega

theorem bc_gap {r u : ℕ} {f : Fin (3 * r) → ℕ} (hf : StrictMono f)
    (hgap : ∀ (i : Fin (3 * r)) (hi : i.val + 1 < 3 * r), f i + u < f ⟨i.val + 1, hi⟩) {k i : Fin (3 * r)}
    (hki : k < i) : f k + u < f i := by
  have h1 : k.val + 1 < 3 * r := by have := i.isLt; have : k.val < i.val := hki; omega
  refine lt_of_lt_of_le (hgap k h1) (hf.monotone ?_)
  show k.val + 1 ≤ i.val
  exact hki

theorem bc_tile_end {n' ell s : ℕ} (hs : s < n' / ell) : (s + 1) * ell ≤ n' :=
  le_trans (Nat.mul_le_mul_right _ hs) (Nat.div_mul_le_self _ _)

theorem bc_tile {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ}
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) : MarkedTileMaxima n' (TT.map Fin.valEmbedding) r u := by
  obtain ⟨c0, _, _, _⟩ := bc_hyps h
  intro s hs hm
  obtain ⟨f, hf, himg, hev, hgap, hbd⟩ := _root_.Formalism.G0.marked_run (TT.map Fin.valEmbedding) r u s c0 hm
  refine ⟨f, ⟨hf, himg⟩, hev, hgap, hbd, ?_⟩
  intro i y hy hne
  have hyn : y < n' := Finset.mem_range.mp (bc_sub TT hy)
  have hend := bc_tile_end hs
  obtain ⟨b1, b2⟩ := hbd i
  refine bc_iso hyn (by omega) (by omega) ?_
  by_cases hin : y ∈ Finset.Ico (s * ((6 * r + 1) * u)) ((s + 1) * ((6 * r + 1) * u))
  · have : y ∈ Finset.univ.image f := himg ▸ Finset.mem_inter.mpr ⟨hy, hin⟩
    obtain ⟨k, _, rfl⟩ := Finset.mem_image.mp this
    rcases lt_trichotomy k i with hk | hk | hk
    · exact Or.inl (bc_gap hf hgap hk)
    · exact absurd (by rw [hk]) hne
    · exact Or.inr (bc_gap hf hgap hk)
  · rw [Finset.mem_Ico] at hin
    omega

theorem bc_enum_unique {T : Finset ℕ} {r u s : ℕ} {f g : Fin (3 * r) → ℕ} (hf : Enum T r u s f)
    (hg : Enum T r u s g) : f = g := by
  have hc : (T ∩ Finset.Ico (s * ((6 * r + 1) * u)) ((s + 1) * ((6 * r + 1) * u))).card = 3 * r := by
    rw [hf.2, Finset.card_image_of_injective _ hf.1.injective, Finset.card_univ, Fintype.card_fin]
  rw [Finset.orderEmbOfFin_unique hc (fun x => by rw [hf.2]; exact Finset.mem_image_of_mem _ (Finset.mem_univ _)) hf.1,
    Finset.orderEmbOfFin_unique hc (fun x => by rw [hg.2]; exact Finset.mem_image_of_mem _ (Finset.mem_univ _)) hg.1]

theorem bc_seg {n' : ℕ} {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) : SegmentLengthCondition n' (TT.map Fin.valEmbedding) r L₂ u G' N₁ hr := by
  obtain ⟨c0, c1, c2, c3⟩ := bc_hyps h
  have hLu := h.2.1
  have h3 := h.2.2.2.1
  intro s s' f f' hN hf hf' a b Dd
  obtain ⟨n1, n2, n3, n4, n5⟩ := hN
  obtain ⟨g, hg, hgimg, hgev, hggap, _⟩ := _root_.Formalism.G0.marked_run (TT.map Fin.valEmbedding) r u s c0 n3
  obtain ⟨g', hg', hgimg', hgev', hggap', _⟩ := _root_.Formalism.G0.marked_run (TT.map Fin.valEmbedding) r u s' c0 n4
  have e1 : f = g := bc_enum_unique hf ⟨hg, hgimg⟩
  have e2 : f' = g' := bc_enum_unique hf' ⟨hg', hgimg'⟩
  have hS := _root_.Formalism.GrowthSums.segment_bound_holds n' (TT.map Fin.valEmbedding) L₂ (r - 1) r u M₀ G' N₁ hr c0 c1 c2 (bc_sub TT)
    h.2.2.2.2 s s' f f' n1 n2 n3 n4 n5 hf.1 hf.2 hf'.1 hf'.2
  have hmem : ∀ (φ : Fin (3 * r) → ℕ) (σ : ℕ), Enum (TT.map Fin.valEmbedding) r u σ φ → ∀ i, φ i < n' := by
    intro φ σ hφ i
    have : φ i ∈ Finset.univ.image φ := Finset.mem_image_of_mem _ (Finset.mem_univ _)
    rw [← hφ.2] at this
    exact Finset.mem_range.mp (bc_sub TT (Finset.mem_inter.mp this).1)
  have han : a < n' := hmem f s hf _
  have s1 : (if s < s' then b - a else b + n' - a) < G' := hS.1
  have s2 : (a + (if s < s' then b - a else b + n' - a)) % n' = b := hS.2.1
  have s3 : (TT.map Fin.valEmbedding ∩ (Finset.range ((if s < s' then b - a else b + n' - a) + 1)).image
      (fun j => (a + j) % n')).card ≤ N₁ := hS.2.2
  have hDd : Dd = (if s < s' then b - a else b + n' - a) := bc_fwd_of han (by omega) s2
  rw [hDd]
  refine ⟨by omega, s3, fun i _ => e1 ▸ hgev i, fun i _ => e2 ▸ hgev' i, ?_, ?_⟩
  · intro i hi _
    have := hggap i hi
    rw [e1]
    omega
  · intro i hi _
    have := hggap' i hi
    rw [e2]
    omega

def RestFrames (_D : D7) : Prop :=
  ∀ (n' : ℕ) [NeZero n'] (TT : Finset (Fin n')) (r L₁ L₂ u M₀ G' N₁ : ℕ),
    OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁ → Even n' → 2 ≤ r → OrbitFrames n' TT r L₁ L₂ u G' N₁

theorem orbit_positions_of_frames (D : D7) (hR : RestFrames D) : OrbitPositions D := by
  intro n' _ TT r L₁ L₂ u M₀ G' N₁ hr h
  exact ⟨bc_tile h, bc_seg hr h, bc_old hr h, bc_next hr h, bc_count hr h,
    fun hn h2 => hR n' TT r L₁ L₂ u M₀ G' N₁ h hn h2⟩

theorem bc_size_real (G N1 u M P de h lx R B : ℝ)
    (hR : 1 ≤ R) (hh : 0 ≤ h) (hde : 0 < de) (hlx : 1 ≤ lx) (hP0 : 0 < P) (hP1 : P ≤ 1)
    (hud1 : 1 ≤ u * de) (hud2 : u * de ≤ 2) (hM1 : (h + 3) * lx / P ≤ M) (hM2 : M ≤ (h + 3) * lx / P + 1)
    (hG : G = (M + 5) * (R * u)) (hB : B ≤ 2 * ((h + 3) * lx))
    (hN1 : N1 ≤ max (6 * Real.exp 1 * G * de) B + 2) :
    G * de ≤ (((h + 3) / P + 6) * R * 2) * lx ∧ N1 ≤ 16.8 * (G * de) ∧ 0 < G := by
  have hh3 : 0 ≤ (h + 3) * lx := by positivity
  have hq : 0 ≤ (h + 3) * lx / P := by positivity
  have hq1 : (h + 3) * lx ≤ (h + 3) * lx / P := by
    rw [le_div_iff₀ hP0]
    exact mul_le_of_le_one_right hh3 hP1
  have hM0 : 0 ≤ M := le_trans hq hM1
  have hGde : G * de = (M + 5) * R * (u * de) := by rw [hG]; ring
  have hMR : 0 ≤ (M + 5) * R := by positivity
  have hup : G * de ≤ (M + 5) * R * 2 := by rw [hGde]; exact mul_le_mul_of_nonneg_left hud2 hMR
  have hlo : (M + 5) * R ≤ G * de := by rw [hGde]; exact le_mul_of_one_le_right hMR hud1
  have hc0 : 0 ≤ (h + 3) / P := by positivity
  have hM5 : M + 5 ≤ ((h + 3) / P + 6) * lx := by
    have e : (h + 3) * lx / P = (h + 3) / P * lx := by ring
    rw [e] at hM2
    have he : ((h + 3) / P + 6) * lx = (h + 3) / P * lx + 6 * lx := by ring
    linarith
  have hR0 : 0 ≤ R := by linarith
  have hCe : G * de ≤ (((h + 3) / P + 6) * R * 2) * lx := by
    calc G * de ≤ (M + 5) * R * 2 := hup
      _ ≤ (((h + 3) / P + 6) * lx) * R * 2 := by gcongr
      _ = _ := by ring
  have hMR5 : M + 5 ≤ (M + 5) * R := le_mul_of_one_le_right (by linarith) hR
  have hG5 : 5 ≤ G * de := by linarith
  have hGpos : 0 < G := by
    by_contra hneg
    have : G * de ≤ 0 := mul_nonpos_of_nonpos_of_nonneg (not_lt.mp hneg) hde.le
    linarith
  refine ⟨hCe, ?_, hGpos⟩
  have he1 : 1 ≤ Real.exp 1 := by have := Real.add_one_le_exp (1 : ℝ); linarith
  have he2 := Real.exp_one_lt_d9
  have hA : B ≤ 6 * Real.exp 1 * G * de := by
    have : 6 * (G * de) ≤ 6 * Real.exp 1 * G * de := by
      have := le_mul_of_one_le_right (by linarith : 0 ≤ 6 * (G * de)) he1
      linarith [show 6 * (G * de) * Real.exp 1 = 6 * Real.exp 1 * G * de by ring]
    linarith
  rw [max_eq_left hA] at hN1
  have hmul := mul_le_mul_of_nonneg_right he2.le (by linarith : 0 ≤ 6 * (G * de))
  have he : 6 * Real.exp 1 * G * de = Real.exp 1 * (6 * (G * de)) := by ring
  linarith

def logBoundConstant (r : ℕ) (h : ℝ) : ℝ := ((h + 3) / (10 : ℝ) ^ (-((6 * r + 1 : ℕ) : ℤ)) + 6) * (6 * (r : ℝ) + 1) * 2

theorem logBoundConstant_pos (r : ℕ) (h : ℝ) (hh : 0 ≤ h) : 0 < logBoundConstant r h := by unfold logBoundConstant; positivity

theorem one_le_log_of_three_le_bis {x : ℝ} (hx : 3 ≤ x) : 1 ≤ Real.log x := by
  rw [Real.le_log_iff_exp_le (by linarith)]
  have := Real.exp_one_lt_d9
  linarith

theorem bc_size (r : ℕ) (de h x : ℝ) (hh : 0 ≤ h) (hde : 0 < de) (hde1 : de ≤ 1) (hx : 3 ≤ x) :
    (goodG' r de h x : ℝ) * de ≤ logBoundConstant r h * Real.log x ∧
      (orbitWindowCount r de h x : ℝ) ≤ 16.8 * ((goodG' r de h x : ℝ) * de) ∧ (0 : ℝ) < goodG' r de h x := by
  have hlx := one_le_log_of_three_le_bis hx
  have hP0 : 0 < (10 : ℝ) ^ (-((6 * r + 1 : ℕ) : ℤ)) := by positivity
  have hP1 : (10 : ℝ) ^ (-((6 * r + 1 : ℕ) : ℤ)) ≤ 1 := by
    rw [zpow_neg]
    exact inv_le_one_of_one_le₀ (one_le_zpow₀ (by norm_num) (by positivity))
  have hu1 : 1 / de ≤ (goodU de : ℝ) := Nat.le_ceil _
  have hu2 : (goodU de : ℝ) < 1 / de + 1 := Nat.ceil_lt_add_one (by positivity)
  have hud1 : 1 ≤ (goodU de : ℝ) * de := by rwa [div_le_iff₀ hde] at hu1
  have hud2 : (goodU de : ℝ) * de ≤ 2 := by
    have h' : (goodU de : ℝ) * de < (1 / de + 1) * de := mul_lt_mul_of_pos_right hu2 hde
    have e : (1 / de + 1) * de = 1 + de := by field_simp
    linarith
  have hM1 : (h + 3) * Real.log x / (10 : ℝ) ^ (-((6 * r + 1 : ℕ) : ℤ)) ≤ (orbitSmallMultiplicity r h x : ℝ) := Nat.le_ceil _
  have hM2 : (orbitSmallMultiplicity r h x : ℝ) < (h + 3) * Real.log x / (10 : ℝ) ^ (-((6 * r + 1 : ℕ) : ℤ)) + 1 :=
    Nat.ceil_lt_add_one (by positivity)
  have hG : (goodG' r de h x : ℝ) = ((orbitSmallMultiplicity r h x : ℝ) + 5) * ((6 * (r : ℝ) + 1) * (goodU de : ℝ)) := by
    unfold goodG' goodEll
    push_cast
    ring
  have hB : (h + 3) * Real.logb 2 x ≤ 2 * ((h + 3) * Real.log x) := by
    have hl2 := Real.log_two_gt_d9
    have : Real.logb 2 x ≤ 2 * Real.log x := by
      unfold Real.logb
      rw [div_le_iff₀ (by linarith)]
      have := mul_le_mul_of_nonneg_left (by linarith : (1 / 2 : ℝ) ≤ Real.log 2) (by linarith : 0 ≤ Real.log x)
      linarith
    have := mul_le_mul_of_nonneg_left this (by linarith : 0 ≤ h + 3)
    linarith
  have hN1 : (orbitWindowCount r de h x : ℝ) ≤
      max (6 * Real.exp 1 * (goodG' r de h x : ℝ) * de) ((h + 3) * Real.logb 2 x) + 2 := by
    unfold orbitWindowCount
    push_cast
    have := Nat.ceil_lt_add_one (a := max (6 * Real.exp 1 * (goodG' r de h x : ℝ) * de) ((h + 3) * Real.logb 2 x))
      (le_max_of_le_left (by positivity))
    linarith
  have hR : (1 : ℝ) ≤ 6 * (r : ℝ) + 1 := by
    have : (0 : ℝ) ≤ r := Nat.cast_nonneg r
    linarith
  unfold logBoundConstant
  exact bc_size_real (goodG' r de h x) (orbitWindowCount r de h x) (goodU de) (orbitSmallMultiplicity r h x) _ de h (Real.log x)
    (6 * (r : ℝ) + 1) _ hR hh hde hlx hP0 hP1 hud1 hud2 hM1 hM2.le hG hB hN1

theorem segment_count_log_bounds (r : ℕ) (h : ℝ) (hr : 1 ≤ r) (hh : 0 ≤ h) : ∃ Ce : ℝ, 0 < Ce ∧ ∀ de x : ℝ, 0 < de → de ≤ 1 → 3 ≤ x →
    (goodG' r de h x : ℝ) ≤ Ce * Real.log x / de ∧ (orbitWindowCount r de h x : ℝ) ≤ Ce * Real.log x ∧
    (orbitWindowCount r de h x : ℝ) ≤ 20 * (goodG' r de h x : ℝ) * de ∧
    ∀ (n' : ℕ) (TT : Finset (Fin n')) (L₂ K : ℕ), 3 * goodG' r de h x ≤ n' → IsGoodOrbit n' TT L₂ K r de h x →
      (n' : ℝ) * de / (Ce * Real.log x) ≤ TT.card ∧ (TT.card : ℝ) ≤ 40 * n' * de := by
  have hC := logBoundConstant_pos r h hh
  refine ⟨20 * logBoundConstant r h, by positivity, ?_⟩
  intro de x hde hde1 hx
  obtain ⟨a1, a2, a3⟩ := bc_size r de h x hh hde hde1 hx
  have hlx := one_le_log_of_three_le_bis hx
  have hCl : 0 < logBoundConstant r h * Real.log x := by positivity
  have hGd : 0 < (goodG' r de h x : ℝ) * de := by positivity
  refine ⟨?_, by linarith, by linarith, ?_⟩
  · rw [le_div_iff₀ hde]; linarith
  intro n' TT L₂ K h3 hg
  have c1 : (orbitSmallMultiplicity r h x + 1) * ((6 * r + 1) * goodU de) ≤ n' := by
    have : (orbitSmallMultiplicity r h x + 1) * ((6 * r + 1) * goodU de) ≤ goodG' r de h x := by
      unfold goodG' goodEll
      exact Nat.mul_le_mul_right _ (by omega)
    omega
  obtain ⟨t1, t2⟩ := _root_.Formalism.GrowthSums.top_count_holds n' (TT.map Fin.valEmbedding) L₂ K r (goodU de) (orbitSmallMultiplicity r h x)
    (goodG' r de h x) (orbitWindowCount r de h x) hr (_root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.bd_goodU_pos hde) c1 le_rfl (bc_sub TT) hg
  rw [Finset.card_map] at t1 t2
  have t1' : (n' : ℝ) ≤ (TT.card : ℝ) * (goodG' r de h x : ℝ) := by exact_mod_cast t1
  have t2' : (TT.card : ℝ) * (goodG' r de h x : ℝ) ≤ (orbitWindowCount r de h x : ℝ) * ((n' : ℝ) + (goodG' r de h x : ℝ)) := by
    exact_mod_cast t2
  have h3' : 3 * (goodG' r de h x : ℝ) ≤ (n' : ℝ) := by exact_mod_cast h3
  have hN0 : (0 : ℝ) ≤ TT.card := Nat.cast_nonneg _
  have hn0 : (0 : ℝ) ≤ n' := Nat.cast_nonneg _
  constructor
  · rw [div_le_iff₀ (by positivity)]
    calc (n' : ℝ) * de ≤ (TT.card : ℝ) * (goodG' r de h x : ℝ) * de := by gcongr
      _ = (TT.card : ℝ) * ((goodG' r de h x : ℝ) * de) := by ring
      _ ≤ (TT.card : ℝ) * (20 * logBoundConstant r h * Real.log x) := by
        apply mul_le_mul_of_nonneg_left _ hN0
        linarith
  · have hnG : (n' : ℝ) + (goodG' r de h x : ℝ) ≤ 4 / 3 * n' := by linarith
    have hfin : (TT.card : ℝ) * (goodG' r de h x : ℝ) ≤ (22.4 * de * n') * (goodG' r de h x : ℝ) := by
      calc (TT.card : ℝ) * (goodG' r de h x : ℝ) ≤ (orbitWindowCount r de h x : ℝ) * ((n' : ℝ) + (goodG' r de h x : ℝ)) := t2'
        _ ≤ (16.8 * ((goodG' r de h x : ℝ) * de)) * ((n' : ℝ) + (goodG' r de h x : ℝ)) := by gcongr
        _ ≤ (16.8 * ((goodG' r de h x : ℝ) * de)) * (4 / 3 * n') := by gcongr
        _ = (22.4 * de * n') * (goodG' r de h x : ℝ) := by ring
    have := le_of_mul_le_mul_right hfin a3
    have hnd : 0 ≤ (n' : ℝ) * de := by positivity
    linarith

theorem period_ge_three_gap_eventually (eps : ℝ) (he : 0 < eps) : ∃ x₀ : ℝ, ∀ x : ℝ, x₀ ≤ x → ∀ n' : ℕ, x ^ (eps / 4) ≤ n' →
    3 * goodG' (⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1) (x ^ (-(eps / 8))) (2 + 8 * eps) x ≤ n' := by
  set r := ⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1 with hr
  set h := 2 + 8 * eps with hh
  have hh0 : 0 ≤ h := by rw [hh]; positivity
  have hC := logBoundConstant_pos r h hh0
  set A := 48 * logBoundConstant r h / eps with hA
  have hA0 : 0 < A := by rw [hA]; positivity
  refine ⟨max 3 (A ^ (16 / eps)), ?_⟩
  intro x hx n' hn
  have hx3 : 3 ≤ x := le_trans (le_max_left _ _) hx
  have hx0 : 0 < x := by linarith
  have hxA : A ^ (16 / eps) ≤ x := le_trans (le_max_right _ _) hx
  have hde : 0 < x ^ (-(eps / 8)) := Real.rpow_pos_of_pos hx0 _
  have hde1 : x ^ (-(eps / 8)) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (by linarith)
  obtain ⟨a1, _, _⟩ := bc_size r (x ^ (-(eps / 8))) h x hh0 hde hde1 hx3
  have hy : A ≤ x ^ (eps / 16) := by
    have h1 : (A ^ (16 / eps)) ^ (eps / 16) ≤ x ^ (eps / 16) :=
      Real.rpow_le_rpow (by positivity) hxA (by positivity)
    rwa [← Real.rpow_mul hA0.le, show 16 / eps * (eps / 16) = 1 by field_simp, Real.rpow_one] at h1
  have hlog : Real.log x ≤ x ^ (eps / 16) / (eps / 16) := Real.log_le_rpow_div hx0.le (by positivity)
  set y := x ^ (eps / 16) with hyd
  have hy0 : 0 < y := Real.rpow_pos_of_pos hx0 _
  have e8 : x ^ (eps / 8) = y * y := by
    rw [hyd, ← Real.rpow_add hx0]; congr 1; ring
  have e4 : x ^ (eps / 4) = (y * y) * (y * y) := by
    rw [← e8, ← Real.rpow_add hx0]; congr 1; ring
  have em : x ^ (-(eps / 8)) = (y * y)⁻¹ := by rw [Real.rpow_neg hx0.le, e8]
  rw [em] at a1
  have hyy : 0 < y * y := by positivity
  have a2 : (goodG' r ((y * y)⁻¹) h x : ℝ) ≤ logBoundConstant r h * Real.log x * (y * y) := by
    have := mul_le_mul_of_nonneg_right a1 hyy.le
    rwa [mul_assoc, inv_mul_cancel₀ hyy.ne', mul_one] at this
  have a3 : 3 * (logBoundConstant r h * Real.log x) ≤ y * y := by
    have h1 : 3 * (logBoundConstant r h * Real.log x) ≤ 3 * (logBoundConstant r h * (y / (eps / 16))) := by gcongr
    have h2 : 3 * (logBoundConstant r h * (y / (eps / 16))) = A * y := by rw [hA]; field_simp; ring
    have h3 : A * y ≤ y * y := by gcongr
    linarith
  have fin : (3 * goodG' r ((y * y)⁻¹) h x : ℝ) ≤ n' := by
    calc (3 * goodG' r ((y * y)⁻¹) h x : ℝ) ≤ 3 * (logBoundConstant r h * Real.log x * (y * y)) := by gcongr
      _ = (3 * (logBoundConstant r h * Real.log x)) * (y * y) := by ring
      _ ≤ (y * y) * (y * y) := by gcongr
      _ = x ^ (eps / 4) := e4.symm
      _ ≤ n' := hn
  rw [em]
  exact_mod_cast fin

theorem master_orbit_sizes_hold (D : D7) : OrbitSizeBounds D :=
  ⟨fun r h hr hh => segment_count_log_bounds r h hr hh, fun eps he _ => period_ge_three_gap_eventually eps he⟩

section Frames

open Finset Classical Formalism.MainNotions.G.WittFrameLocaliserOrders

variable {n' : ℕ} [NeZero n']

theorem bc_frames (TT : Finset (Fin n')) (r u L₂ Gp M J : ℕ) (B : ℤ → ℤ) (sidx : ℤ → ℕ) (hr : 2 ≤ r) (hu : 1 ≤ u)
    (hL : L₂ < u) (hG : (M + 3) * ((6 * r + 1) * u) ≤ Gp) (hS : bf_Seq TT r u M J B sidx) :
    ∃ F : Frames n' r, F.TT = TT ∧
      1 ≤ F.J ∧
      (∀ j : ℤ, ∀ i, F.fr (j + F.J) i = F.fr j i + n') ∧
      (∀ j : ℤ, ∀ i, i + 1 < r → F.fr j i < F.fr j (i + 1)) ∧
      (∀ j : ℤ, F.fr j (r - 1) < F.fr (j + 1) 0) ∧
      (∀ j : ℤ, ∀ i, i < r → posOf n' (F.fr j i) ∈ F.TT ∧ Even (F.fr j i)) ∧
      (∀ j : ℤ, ∀ i, ∀ x : ℤ, i + 1 < r → F.fr j i < x → x < F.fr j (i + 1) → posOf n' x ∉ F.TT) ∧
      (∀ j : ℤ, r ≤ (F.LLset j).card ∧
        ∀ x ∈ F.LLset j, (((F.LLset j).filter (· ≤ x)).card ≤ r ∨
          (F.LLset j).card < ((F.LLset j).filter (· ≤ x)).card + r) → Even x) ∧
      (∀ j : ℤ, ∃ s < n' / ((6 * r + 1) * u), Formalism.G0.Marked (TT.map Fin.valEmbedding) r u s ∧
        ∀ i < r, (F.fr j i % (n' : ℤ)).toNat ∈ Formalism.G0.cell r u s (2 * r + 2 + 2 * i)) ∧
      (∀ s < n' / ((6 * r + 1) * u), Formalism.G0.Marked (TT.map Fin.valEmbedding) r u s →
        ∃ j : ℤ, (F.fr j 0 % (n' : ℤ)).toNat ∈ Formalism.G0.cell r u s (2 * r + 2)) ∧
      (∀ j : ℤ, F.fr j (r - 1) - F.fr (j - 1) 0 < Gp) ∧
      (∀ j : ℤ, ∀ x ∈ F.LLset j, (((F.LLset j).filter (· ≤ x)).card ≤ r ∨
          (F.LLset j).card < ((F.LLset j).filter (· ≤ x)).card + r) → F.GapGt L₂ j x) ∧
      (∀ j : ℤ, F.GapGt L₂ j (F.fr j 0)) := by
  obtain ⟨hJ, hper, hMT, hstep, hbd, hidx, hall⟩ := hS
  have hev : ∀ i, Even (2 * r + 2 + 2 * i) := fun i => ⟨r + 1 + i, by ring⟩
  refine ⟨bf_F TT r u J B, rfl, hJ, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro j i
    by_cases hi : i < r
    · show (bf_F TT r u J B).fr (j + (J : ℤ)) i = _
      rw [bf_F_fr TT r u J B _ hi, bf_F_fr TT r u J B _ hi, hper]
      exact bf_tp_shift TT r u (hMT j) (by rw [← hper]; exact hMT _) (by omega) (by omega) (hev i)
    · show (if i < r then _ else B (j + (J : ℤ))) = (if i < r then _ else B j) + (n' : ℤ)
      rw [if_neg hi, if_neg hi]
      exact hper j
  · intro j i hi
    rw [bf_F_fr TT r u J B _ (show i < r by omega), bf_F_fr TT r u J B _ hi]
    exact bf_tp_lt TT r u (hMT j) (by omega) (by omega) (hev i) (hev (i + 1)) (by omega)
  · intro j
    rw [bf_F_fr TT r u J B _ (show r - 1 < r by omega), bf_F_fr TT r u J B _ (show 0 < r by omega)]
    have A := bf_tp_spec TT r u (hMT j) (c := 2 * r + 2 + 2 * (r - 1)) (by omega) (by omega) (hev _)
    have Bq := bf_tp_spec TT r u (hMT (j + 1)) (c := 2 * r + 2 + 2 * 0) (by omega) (by omega) (hev _)
    have h1 := bf_cu (show 2 * r + 2 + 2 * (r - 1) ≤ 6 * r + 1 by omega) u
    have h2 := bf_u_le (show 1 ≤ 2 * r + 2 + 2 * 0 by omega) u
    linarith [A.1.2.1, Bq.1.1, hstep j]
  · intro j i hi
    rw [bf_F_fr TT r u J B _ hi]
    have A := bf_tp_spec TT r u (hMT j) (c := 2 * r + 2 + 2 * i) (by omega) (by omega) (hev _)
    exact ⟨A.1.2.2.1, A.1.2.2.2⟩
  · intro j i x hi h1 h2 hx
    rw [bf_F_fr TT r u J B _ (show i < r by omega)] at h1
    rw [bf_F_fr TT r u J B _ hi] at h2
    have A := bf_tp_spec TT r u (hMT j) (c := 2 * r + 2 + 2 * i) (by omega) (by omega) (hev _)
    have A2 := bf_tp_spec TT r u (hMT j) (c := 2 * r + 2 + 2 * (i + 1)) (by omega) (by omega) (hev _)
    have g1 := bf_u_le (show 1 ≤ 2 * r + 2 + 2 * i by omega) u
    have g2 := bf_cu (show 2 * r + 2 + 2 * (i + 1) ≤ 6 * r + 1 by omega) u
    obtain ⟨c, hce, hc1, hc2, hxc⟩ := bf_class TT r u (hMT j) hu hx (by linarith [A.1.1]) (by linarith [A2.1.2.1])
    obtain ⟨m, hm⟩ := hce
    rcases Nat.lt_trichotomy c (2 * r + 2 + 2 * i) with h | h | h
    · have := bf_tp_lt TT r u (hMT j) hc1 (by omega) ⟨m, hm⟩ (hev i) h
      omega
    · rw [h] at hxc; omega
    · rcases Nat.lt_trichotomy c (2 * r + 2 + 2 * (i + 1)) with h' | h' | h'
      · omega
      · rw [h'] at hxc; omega
      · have := bf_tp_lt TT r u (hMT j) (by omega) hc2 (hev (i + 1)) ⟨m, hm⟩ h'
        omega
  · intro j
    refine ⟨?_, ?_⟩
    · have hS1 := bf_card_image TT r u (hMT (j - 1)) (4 * r + 2) r ⟨2 * r + 1, by ring⟩ (by omega)
        (fun k hk => by omega)
      refine le_trans (le_of_eq hS1.symm) (card_le_card fun y hy => ?_)
      obtain ⟨k, hk, rfl⟩ := mem_image.1 hy
      exact bf_LL_first hr hMT hstep j (mem_range.1 hk)
    · intro x hx hc
      obtain ⟨b, c, hb, he, h1, h2, rfl⟩ := bf_LL_key hr hu hMT hstep j x hx hc
      exact (bf_tp_spec TT r u hb h1 h2 he).1.2.2.2
  · intro j
    obtain ⟨h1, h2, q, hq⟩ := hidx j
    refine ⟨sidx j, h1, h2, fun i hi => ?_⟩
    rw [bf_F_fr TT r u J B _ hi]
    exact bf_cell (hMT j) (sidx j) q hq h1 (by omega) (by omega) (hev i)
  · intro s hs hM
    obtain ⟨j, rfl⟩ := hall s hs hM
    obtain ⟨h1, h2, q, hq⟩ := hidx j
    refine ⟨j, ?_⟩
    rw [bf_F_fr TT r u J B _ (show 0 < r by omega)]
    exact bf_cell (hMT j) (sidx j) q hq h1 (by omega) (by omega) (hev 0)
  · intro j
    rw [bf_F_fr TT r u J B _ (show r - 1 < r by omega), bf_F_fr TT r u J B _ (show 0 < r by omega)]
    have A := bf_tp_spec TT r u (hMT j) (c := 2 * r + 2 + 2 * (r - 1)) (by omega) (by omega) (hev _)
    have Bq := bf_tp_spec TT r u (hMT (j - 1)) (c := 2 * r + 2 + 2 * 0) (by omega) (by omega) (hev _)
    have h1 := bf_cu (show 2 * r + 2 + 2 * (r - 1) ≤ 6 * r + 1 by omega) u
    have h2 := bf_u_le (show 1 ≤ 2 * r + 2 + 2 * 0 by omega) u
    have h3 := hbd (j - 1)
    rw [sub_add_cancel] at h3
    have h4 : ((M + 3 : ℕ) : ℤ) * (((6 * r + 1 : ℕ) : ℤ) * u) ≤ Gp := by exact_mod_cast hG
    have h5 : ((M + 3 : ℕ) : ℤ) * (((6 * r + 1 : ℕ) : ℤ) * u) =
        ((M + 2 : ℕ) : ℤ) * (((6 * r + 1 : ℕ) : ℤ) * u) + ((6 * r + 1 : ℕ) : ℤ) * u := by push_cast; ring
    linarith [A.1.2.1, Bq.1.1]
  · intro j x hx hc
    obtain ⟨b, c, hb, he, h1, h2, rfl⟩ := bf_LL_key hr hu hMT hstep j x hx hc
    exact bf_gapGt hL j hb h1 h2 he
  · intro j
    rw [bf_F_fr TT r u J B _ (show 0 < r by omega)]
    exact bf_gapGt hL j (hMT j) (by omega) (by omega) (hev 0)

theorem bc_letters_card {r : ℕ} (F : Frames n' r) (G' N₁ : ℕ) (hGn : G' ≤ n')
    (hc : Formalism.G0.CondIntervals n' (F.TT.map Fin.valEmbedding) G' N₁) (j : ℤ)
    (hlen : F.fr j (r - 1) - F.fr (j - 1) 0 < G') : (F.letters j).card ≤ N₁ := by
  calc (F.letters j).card
      ≤ ((Finset.Ico (F.fr (j - 1) 0) (F.fr (j - 1) 0 + (G' : ℕ))).filter fun t => posOf n' t ∈ F.TT).card := by
        apply Finset.card_le_card
        intro t ht
        unfold Frames.letters at ht
        simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ico] at ht ⊢
        exact ⟨⟨ht.1.1, by omega⟩, ht.2⟩
    _ ≤ _ := bd_unfold_card F.TT _ _ hGn
    _ ≤ _ := hc _ (bd_toNat_lt _)

theorem bc_oldest_far {r : ℕ} (F : Frames n' r) (L₁ L₂ : ℕ) (hr : 1 ≤ r) (hL : L₁ ≤ L₂)
    (hI : ∀ y : ℤ, ((Finset.Ico y (y + L₂)).filter fun t => posOf n' t ∈ F.TT).card ≤ r - 1)
    (j x : ℤ) (hE : r ≤ ((F.letters j).filter fun z => Even z ∧ z < x).card) :
    (L₁ : ℤ) < x - F.oldest j x := by
  obtain ⟨E, hEdef⟩ : ∃ E, E = (F.letters j).filter fun z => Even z ∧ z < x := ⟨_, rfl⟩
  rw [← hEdef] at hE
  have hidx : E.card - r < E.card := by omega
  have ho : F.oldest j x = E.orderEmbOfFin rfl ⟨E.card - r, hidx⟩ := by
    unfold Frames.oldest
    simp only
    rw [← hEdef, Finset.length_sort, List.getD_eq_getElem _ _ (by rw [Finset.length_sort]; exact hidx),
      Finset.orderEmbOfFin_apply]
    rfl
  by_contra hcon
  have hcon' : x - F.oldest j x ≤ L₁ := not_lt.mp hcon
  have hcard : (Finset.univ : Finset (Fin r)).card ≤
      ((Finset.Ico (F.oldest j x) (F.oldest j x + L₂)).filter fun t => posOf n' t ∈ F.TT).card := by
    apply Finset.card_le_card_of_injOn (fun i : Fin r => E.orderEmbOfFin rfl ⟨E.card - r + i.val, by omega⟩)
    · intro i _
      have hmem : E.orderEmbOfFin rfl ⟨E.card - r + i.val, by omega⟩ ∈ E := Finset.orderEmbOfFin_mem E rfl _
      have hge : F.oldest j x ≤ E.orderEmbOfFin rfl ⟨E.card - r + i.val, by omega⟩ := by
        rw [ho]
        exact (E.orderEmbOfFin rfl).monotone (by rw [Fin.le_def]; simp)
      replace hmem := (Finset.ext_iff.mp hEdef _).mp hmem
      unfold Frames.letters at hmem
      simp only [Finset.mem_filter, Finset.mem_Icc] at hmem
      simp only [Finset.coe_filter, Finset.mem_Ico, Set.mem_ofPred_eq]
      have hLz : (L₁ : ℤ) ≤ L₂ := by exact_mod_cast hL
      exact ⟨⟨hge, by omega⟩, hmem.1.2⟩
    · intro a _ b _ hab
      have := (E.orderEmbOfFin rfl).injective hab
      have h2 := Fin.mk.inj this
      exact Fin.ext (by omega)
  have := hI (F.oldest j x)
  rw [Finset.card_univ, Fintype.card_fin] at hcard
  omega

theorem restFrames_proved (D : D7) : RestFrames D := by
  intro n' _ TT r L₁ L₂ u M₀ G' N₁ h hn hr
  obtain ⟨c0, c1, c2, c3⟩ := bc_hyps h
  obtain ⟨hL, hLu, hG, h3, hA, hTiles, hInt⟩ := h
  have hell : 0 < (6 * r + 1) * u := Nat.mul_pos (by omega) c0
  have hMt : M₀ + 1 < n' / ((6 * r + 1) * u) := by
    have h1 : (M₀ + 2) * ((6 * r + 1) * u) ≤ n' := by
      have h2 : (M₀ + 2) * ((6 * r + 1) * u) ≤ (M₀ + 5) * ((6 * r + 1) * u) := Nat.mul_le_mul_right _ (by omega)
      omega
    exact (Nat.le_div_iff_mul_le hell).2 h1
  obtain ⟨J, B, sidx, hS⟩ := bf_seq TT r u M₀ hn c0 hTiles hMt
  obtain ⟨F, hTT, v1, v2, v3, v4, v5, v6, v7, t1, t2, t3, t4, t5⟩ := bc_frames TT r u L₂ G' M₀ J B sidx hr c0 hLu
    (by rw [hG]; exact Nat.mul_le_mul_right _ (by omega)) hS
  subst hTT
  have hI : ∀ y : ℤ, ((Finset.Ico y (y + L₂)).filter fun t => posOf n' t ∈ F.TT).card ≤ r - 1 :=
    fun y => le_trans (bd_unfold_card F.TT y L₂ (by omega)) (hA _ (bd_toNat_lt y))
  have hcardL := fun j => bc_letters_card F G' N₁ (by omega) hInt j (t3 j)
  exact ⟨F, rfl, ⟨v1, v2, v3, v4, v5, v6,
      fun j => ⟨(v7 j).1, fun x hx hc => ⟨(v7 j).2 x hx hc, bd_gap_mono F hL (t4 j x hx hc)⟩,
        bd_gap_mono F hL (t5 j)⟩,
      hcardL,
      fun j x _ hw => bc_oldest_far F L₁ L₂ (by omega) hL hI j x
        (bd_vectors_before F (by omega) v3 v4 v5 j x hw)⟩,
    t1, t2, fun j => ⟨t3 j, hcardL j⟩, t4, t5⟩

end Frames

theorem orbit_positions_hold (D : D7) : OrbitPositions D := orbit_positions_of_frames D (restFrames_proved D)

theorem master_orbit_lemma_holds (D : D7) : OrbitPositionsAndSizeBounds D := ⟨orbit_positions_hold D, master_orbit_sizes_hold D⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions.CornerGLContinuity

section Seg

variable {n' : ℕ}

theorem bs_mono (TT : Finset (Fin n')) : StrictMono (evenTops TT).get :=
  (Finset.sortedLT_sort _).strictMono_get

theorem bs_mem (TT : Finset (Fin n')) (x : Fin n') : x ∈ evenTops TT ↔ x ∈ TT ∧ Even x.val := by
  unfold evenTops
  rw [Finset.mem_sort, Finset.mem_filter]

theorem bs_numSeg (TT : Finset (Fin n')) : numSeg TT = (TT.filter (fun s => Even s.val)).card := by
  unfold numSeg evenTops
  exact Finset.length_sort _

theorem bs_start_mem (TT : Finset (Fin n')) (j : Fin (numSeg TT)) :
    segStart TT j ∈ TT ∧ Even (segStart TT j).val :=
  (bs_mem TT _).mp (List.get_mem _ _)

theorem bs_fwd_add {n a b : ℕ} (ha : a < n) (hb : b < n) : (a + fwd n a b) % n = b := by
  rcases le_or_gt a b with h | h
  · rw [bc_fwd_le hb h, Nat.add_sub_cancel' h, Nat.mod_eq_of_lt hb]
  · rw [bc_fwd_gt ha h]
    have : a + (b + n - a) = b + n := by omega
    rw [this, Nat.add_mod_right, Nat.mod_eq_of_lt hb]

theorem bs_min (TT : Finset (Fin n')) (h2 : 2 ≤ numSeg TT) (j : Fin (numSeg TT)) (e : Fin n') (he : e ∈ TT)
    (hev : Even e.val) (hne : e ≠ segStart TT j) :
    0 < cdist (segStart TT j) (segNext TT j) ∧
      cdist (segStart TT j) (segNext TT j) ≤ cdist (segStart TT j) e := by
  obtain ⟨k, hk⟩ := List.mem_iff_get.mp ((bs_mem TT e).mpr ⟨he, hev⟩)
  have hm := bs_mono TT
  have hkj : k ≠ j := by
    rintro rfl
    exact hne hk.symm
  have hc : ∀ a b : Fin n', cdist a b = fwd n' a.val b.val := fun _ _ => rfl
  have hx : segStart TT j = (evenTops TT).get j := rfl
  have hkl : k.val < numSeg TT := k.isLt
  by_cases hj : j.val + 1 < numSeg TT
  · have hnext : segNext TT j = (evenTops TT).get ⟨j.val + 1, hj⟩ := by
      unfold segNext
      congr 1
      exact Fin.ext (Nat.mod_eq_of_lt hj)
    have h1 : (evenTops TT).get j < (evenTops TT).get ⟨j.val + 1, hj⟩ := hm (Fin.mk_lt_mk.mpr (Nat.lt_succ_self _))
    rw [hc, hc, hnext, hx, ← hk]
    have h1' : ((evenTops TT).get j).val < ((evenTops TT).get ⟨j.val + 1, hj⟩).val := h1
    have b1 := ((evenTops TT).get j).isLt
    have b2 := ((evenTops TT).get ⟨j.val + 1, hj⟩).isLt
    have b3 := ((evenTops TT).get k).isLt
    rw [bc_fwd_le b2 h1'.le]
    rcases lt_or_gt_of_ne hkj with hlt | hgt
    · have h3 : ((evenTops TT).get k).val < ((evenTops TT).get j).val := hm hlt
      rw [bc_fwd_gt b1 h3]
      omega
    · have h3 : ((evenTops TT).get ⟨j.val + 1, hj⟩).val ≤ ((evenTops TT).get k).val :=
        hm.monotone (Fin.mk_le_of_le_val (Nat.succ_le_of_lt hgt))
      rw [bc_fwd_le b3 (by omega)]
      omega
  · have hjl : j.val < numSeg TT := j.isLt
    have hje : j.val + 1 = numSeg TT := by omega
    have h0 : 0 < numSeg TT := by omega
    have hnext : segNext TT j = (evenTops TT).get ⟨0, h0⟩ := by
      unfold segNext
      congr 1
      apply Fin.ext
      show (j.val + 1) % numSeg TT = 0
      rw [hje, Nat.mod_self]
    have hklt : k < j := by
      apply Fin.lt_def.mpr
      have : k.val ≠ j.val := fun h => hkj (Fin.ext h)
      omega
    have h1 : ((evenTops TT).get ⟨0, h0⟩).val < ((evenTops TT).get j).val :=
      hm (Fin.lt_def.mpr (by show 0 < j.val; omega))
    have h3 : ((evenTops TT).get k).val < ((evenTops TT).get j).val := hm hklt
    have h4 : ((evenTops TT).get ⟨0, h0⟩).val ≤ ((evenTops TT).get k).val :=
      hm.monotone (Fin.le_def.mpr (Nat.zero_le _))
    have b1 := ((evenTops TT).get j).isLt
    rw [hc, hc, hnext, hx, ← hk, bc_fwd_gt b1 h1, bc_fwd_gt b1 h3]
    omega

theorem bs_next {TT : Finset (Fin n')} {r L₁ L₂ u M₀ G' N₁ : ℕ} (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) (x : Fin n') (hx : x ∈ TT) (hev : Even x.val) :
    ∃ (d : ℕ) (e : Fin n'), 1 ≤ d ∧ d ≤ G' ∧ e ∈ TT ∧ Even e.val ∧ e ≠ x ∧ cdist x e = d ∧
      ((TT.map Fin.valEmbedding) ∩ (Finset.Ioo 0 d).image (fun j => (x.val + j) % n')).card ≤ N₁ := by
  obtain ⟨_, _, _, c3⟩ := bc_hyps h
  have h3 : 3 * G' ≤ n' := h.2.2.2.1
  obtain ⟨d, d1, d2, dT, dE, _, dN⟩ := bc_next hr h x.val (Finset.mem_map.mpr ⟨x, hx, rfl⟩) hev
  obtain ⟨e, heT, hev'⟩ := Finset.mem_map.mp dT
  have hev'' : e.val = (x.val + d) % n' := hev'
  have hcd : cdist x e = d := bc_fwd_of x.isLt (by omega) hev''.symm
  refine ⟨d, e, d1, d2, heT, by rw [hev'']; exact dE, ?_, hcd, dN⟩
  rintro rfl
  have : cdist e e = 0 := by
    show fwd n' e.val e.val = 0
    rw [bc_fwd_le e.isLt le_rfl, Nat.sub_self]
  omega

theorem bs_segs (TT : Finset (Fin n')) (r L₁ L₂ u M₀ G' N₁ : ℕ) (hr : 1 ≤ r)
    (h : OrbitRaw n' TT r L₁ L₂ u M₀ G' N₁) :
    (∃ x ∈ TT, IsTypeV x) ∧ 2 ≤ numSeg TT ∧ Formalism.MainNotions.flipOneThree.EvenGapHyp TT G' N₁ := by
  classical
  obtain ⟨c0, c1, c2, c3⟩ := bc_hyps h
  have h3 : 3 * G' ≤ n' := h.2.2.2.1
  have hn0 : 0 < n' := by omega
  obtain ⟨D0, _, hT0, hE0⟩ := _root_.Formalism.GrowthSums.next_even_top_holds n' (TT.map Fin.valEmbedding) L₂ (r - 1) r u M₀ G' N₁ hr c0 c1 c2
    (bc_sub TT) h.2.2.2.2 0 hn0
  obtain ⟨e1, he1, hv1⟩ := Finset.mem_map.mp hT0
  have hv1' : e1.val = (0 + D0) % n' := hv1
  have hE1 : Even e1.val := by rw [hv1']; exact hE0
  obtain ⟨_, e2, _, _, he2, hE2, hne, _, _⟩ := bs_next hr h e1 he1 hE1
  have h2 : 2 ≤ numSeg TT := by
    rw [bs_numSeg]
    exact Finset.one_lt_card.mpr ⟨e1, Finset.mem_filter.mpr ⟨he1, hE1⟩, e2, Finset.mem_filter.mpr ⟨he2, hE2⟩, hne.symm⟩
  refine ⟨⟨e1, he1, hE1⟩, h2, ?_⟩
  intro j
  obtain ⟨hxT, hxE⟩ := bs_start_mem TT j
  obtain ⟨d, e, _, d2, heT, heE, hne', hcd, hN⟩ := bs_next hr h (segStart TT j) hxT hxE
  obtain ⟨m1, m2⟩ := bs_min TT h2 j e heT heE hne'
  have hG : segG TT j = cdist (segStart TT j) (segNext TT j) := by
    unfold segG
    rw [if_neg (by omega)]
  refine ⟨by omega, ?_⟩
  unfold segS segDists
  rw [Finset.length_sort]
  refine le_trans Finset.card_image_le (le_trans ?_ hN)
  rw [← Finset.card_map Fin.valEmbedding]
  apply Finset.card_le_card
  intro y hy
  obtain ⟨s, hs, rfl⟩ := Finset.mem_map.mp hy
  obtain ⟨hsT, _, s1, s2⟩ := Finset.mem_filter.mp hs
  refine Finset.mem_inter.mpr ⟨Finset.mem_map.mpr ⟨s, hsT, rfl⟩, ?_⟩
  refine Finset.mem_image.mpr ⟨cdist (segStart TT j) s, Finset.mem_Ioo.mpr ⟨s1, by omega⟩, ?_⟩
  exact bs_fwd_add (segStart TT j).isLt s.isLt

end Seg

theorem orbit_segments (D : D7) (L : SizeData₂ D) : ∀ (n' : ℕ) (TT : Finset (Fin n')),
    IsGoodOrbit n' TT (L2 D L.sc) (KG L.sc) (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x →
    L2 D L.sc < goodU L.sc.delta1 → 3 * Gp L.sc ≤ n' →
    (∃ x ∈ TT, IsTypeV x) ∧ 2 ≤ numSeg TT ∧ Formalism.MainNotions.flipOneThree.EvenGapHyp TT (Gp L.sc) (N1 L.sc) := by
  intro n' TT hg hu h3
  exact bs_segs TT (rG L.sc) 0 (L2 D L.sc) (goodU L.sc.delta1) (orbitSmallMultiplicity (rG L.sc) (hG L.sc) L.sc.x) (Gp L.sc) (N1 L.sc)
    (by unfold rG; omega) ⟨Nat.zero_le _, hu, rfl, h3, hg⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.MainNotions.G Formalism.MainNotions

theorem orbit_positions_of_master (D : Formalism.BasicNotions.D7) (hL : CornerGLContinuity.OrbitPositionsAndSizeBounds D) : tableLineDegreeFive.adm1 D := by
  intro n' TT r L₁ L₂ de h x hr hO
  obtain ⟨hg, h12, hLu, h3⟩ := hO
  have hu : 0 < goodU de := by omega
  have hG : 0 < goodG' r de h x := by
    unfold goodG' goodEll
    exact Nat.mul_pos (by omega) (Nat.mul_pos (by omega) hu)
  have : NeZero n' := ⟨by omega⟩
  obtain ⟨c1, c2, c3, c4, _, _⟩ := hL.1 n' TT r L₁ L₂ (goodU de) (orbitSmallMultiplicity r h x) (goodG' r de h x)
    (orbitWindowCount r de h x) hr ⟨by omega, hLu, rfl, h3, hg⟩
  intro T u G' N₁
  refine ⟨?_, ?_, c3, c4⟩
  · intro s hs hm
    obtain ⟨f, hE, he, _, _, hiso⟩ := c1 s hs hm
    exact ⟨f, hE, he, hiso⟩
  · intro s s' f f' hN hE hE'
    exact c2 s s' f f' hN hE hE'

theorem orbit_counts_of_master (D : Formalism.BasicNotions.D7) (hL : CornerGLContinuity.OrbitPositionsAndSizeBounds D) : tableLineDegreeFive.adm2 D := by
  intro eps he0 he1
  obtain ⟨hA, hB⟩ := hL.2
  obtain ⟨Ce, _, hC⟩ := hA (⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1) (2 + 8 * eps) (by omega) (by positivity)
  obtain ⟨x₀, hx₀⟩ := hB eps he0 he1
  refine ⟨Ce, max x₀ 3, ?_⟩
  intro x hx
  have hx0 : x₀ ≤ x := le_trans (le_max_left _ _) hx
  have hx3 : (3 : ℝ) ≤ x := le_trans (le_max_right _ _) hx
  have hde0 : 0 < x ^ (-(eps / 8)) := Real.rpow_pos_of_pos (by linarith) _
  have hde1 : x ^ (-(eps / 8)) ≤ 1 := Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (by linarith)
  obtain ⟨a1, a2, _, a4⟩ := hC _ x hde0 hde1 hx3
  intro h r de
  exact ⟨a1, a2, fun n' hn => ⟨hx₀ x hx0 n' hn, fun TT L₂ hg => a4 n' TT L₂ (r - 1) (hx₀ x hx0 n' hn) hg⟩⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G

theorem symbol_space_orbit_of_master (D : D7) (h : Formalism.MainNotions.CornerGLContinuity.OrbitPositionsAndSizeBounds D) : Formalism.MainNotions.SelectionLemmas.PathPairCorrespondence D := by
  intro n' _ TT r L₁ L₂ u M₀ G' N₁ hn hr hL hLu hG h3 hg
  obtain ⟨_, _, _, _, _, hF⟩ := h.1 n' TT r L₁ L₂ u M₀ G' N₁ (by omega) ⟨hL, hLu, hG, h3, hg⟩
  obtain ⟨F, hTT, hV, c1, c2, _, _, _⟩ := hF hn hr
  exact ⟨F, hTT, hV, c1, c2⟩

theorem localiser_orbit_clauses_of_master (D : D7) (h : Formalism.MainNotions.CornerGLContinuity.OrbitPositionsAndSizeBounds D) : Formalism.MainNotions.G.WittFrameLocaliserOrders.bd_RestOrbit D := by
  intro r hh hr _ n' _ TT L₁ L₂ de x hn _ hL12 _ _ _ hLu h3 hg u G' N₁ T ell
  obtain ⟨_, _, _, _, _, hF⟩ := h.1 n' TT r L₁ L₂ (goodU de) (orbitSmallMultiplicity r hh x) (goodG' r de hh x) (orbitWindowCount r de hh x)
    (by omega) ⟨by omega, hLu, rfl, h3, hg⟩
  obtain ⟨F, hTT, hV, c1, c2, c3, c4, c5⟩ := hF hn hr
  refine ⟨F, hTT, hV, ?_, c2, fun j => ⟨(c3 j).1.le, (c3 j).2⟩, c4, c5⟩
  intro j i hi
  obtain ⟨s, hs, hm, hc⟩ := c1 j
  exact ⟨s, hs, hm, hc i hi⟩

theorem goodOrbitPositions_of_orbitLemmaFull (D : D7) (h : Formalism.MainNotions.CornerGLContinuity.OrbitPositionsAndSizeBounds D) : Formalism.MainNotions.SourceCleaning.GoodOrbitPositions D :=
  Formalism.MainNotions.G.WittFrameLocaliserOrders.good_orbits_of_frames D (localiser_orbit_clauses_of_master D h)

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

variable {D : D7} {L : SizeData₂ D}

theorem base_point_add_smul (X : Inst D L) (h t : HH D) (i : ℕ) : X.bs h (t + i • h) = X.bs h t := by
  induction i with
  | zero => simp
  | succ k ih => rw [succ_nsmul, ← add_assoc, X.bs_step, ih]

theorem base_point_idempotent (X : Inst D L) (h t : HH D) : X.bs h (X.bs h t) = X.bs h t := by
  obtain ⟨i, hi⟩ := X.bs_orb h t
  have := base_point_add_smul X h (X.bs h t) i
  rw [hi] at this
  exact this.symm

theorem base_point_of_representative (X : Inst D L) {p : ℕ} (hc : IsResidueClassZero D p) {t0 : HH D} (ht0 : t0 ∈ reps X p) :
    X.bs (hP D p) t0 = t0 := by
  unfold reps at ht0
  rw [J.frobenius_step_large_order hc] at ht0
  obtain ⟨t1, _, rfl⟩ := Finset.mem_image.1 ht0
  exact base_point_idempotent X _ _

theorem period_eq_addOrderOf {p : ℕ} (hc : IsResidueClassZero D p) : nP D p = addOrderOf (hP D p) := by
  unfold nP
  rw [if_neg]
  intro hs
  have h1 : D.host.cls p = PrimeClass.signal := hs
  have h2 : D.host.cls p = PrimeClass.inertClass := hc
  rw [h2] at h1
  cases h1

theorem orbit_index_injective {h : HH D} {i j : ℕ} (hi : i < addOrderOf h) (hj : j < addOrderOf h) (t0 : HH D)
    (e : t0 + i • h = t0 + j • h) : i = j :=
  nsmul_injOn_Iio_addOrderOf hi hj (add_left_cancel e)

theorem mem_tops_positions_iff (p : ℕ) (t0 : HH D) (y : ℕ) :
    y ∈ (topsPos D p t0).map Fin.valEmbedding ↔ y < addOrderOf (hP D p) ∧ t0 + y • hP D p ∈ D.host.TT := by
  simp only [Finset.mem_map, topsPos, Finset.mem_filter, Finset.mem_univ, true_and, Fin.valEmbedding_apply]
  constructor
  · rintro ⟨i, hi, rfl⟩
    exact ⟨i.2, hi⟩
  · rintro ⟨h1, h2⟩
    exact ⟨⟨y, h1⟩, h2, rfl⟩

theorem addOrderOf_pos_shift (h : HH D) : 0 < addOrderOf h := addOrderOf_pos h

theorem mem_tops_on_orbit_iff (X : Inst D L) {p : ℕ} (hc : IsResidueClassZero D p) {t0 : HH D} (ht0 : t0 ∈ reps X p) (s : HH D) :
    s ∈ topsOn X p t0 ↔ ∃ y, y < addOrderOf (hP D p) ∧ s = t0 + y • hP D p ∧ s ∈ D.host.TT := by
  unfold topsOn
  rw [Finset.mem_filter, J.frobenius_step_large_order hc]
  constructor
  · rintro ⟨h1, h2⟩
    obtain ⟨i, hi⟩ := X.bs_orb (hP D p) s
    refine ⟨i % addOrderOf (hP D p), Nat.mod_lt _ (addOrderOf_pos_shift _), ?_, h1⟩
    rw [mod_addOrderOf_nsmul, ← h2, hi]
  · rintro ⟨y, _, rfl, h2⟩
    exact ⟨h2, by rw [base_point_add_smul, base_point_of_representative X hc ht0]⟩

theorem isV_iff_even_index (X : Inst D L) {p : ℕ} (hc : IsResidueClassZero D p) {t0 : HH D} (ht0 : t0 ∈ reps X p) {y : ℕ}
    (hy : y < addOrderOf (hP D p)) : IsV X p (t0 + y • hP D p) ↔ Even y := by
  unfold IsV
  rw [period_eq_addOrderOf hc, J.frobenius_step_large_order hc, base_point_add_smul, base_point_of_representative X hc ht0]
  constructor
  · rintro ⟨i, hi, he, e⟩
    rw [← orbit_index_injective hi hy t0 e]
    exact he
  · intro he
    exact ⟨y, hy, he, rfl⟩

theorem vertex_count_eq_card_tops (X : Inst D L) {p : ℕ} (hc : IsResidueClassZero D p) {t0 : HH D} (ht0 : t0 ∈ reps X p) :
    Nv X p t0 = (topsPos D p t0).card := by
  unfold Nv
  symm
  apply Finset.card_bij (fun (i : Fin (addOrderOf (hP D p))) _ => t0 + i.val • hP D p)
  · intro i hi
    rw [mem_tops_on_orbit_iff X hc ht0]
    have : t0 + i.val • hP D p ∈ D.host.TT := by
      simpa [topsPos] using hi
    exact ⟨i.val, i.2, rfl, this⟩
  · intro i _ j _ e
    exact Fin.ext (orbit_index_injective i.2 j.2 t0 e)
  · intro s hs
    obtain ⟨y, hy, rfl, h2⟩ := (mem_tops_on_orbit_iff X hc ht0 s).1 hs
    exact ⟨⟨y, hy⟩, by simpa [topsPos] using h2, rfl⟩

theorem forward_back_index_eq {n y d : ℕ} (hy : y < n) (hd : d < n) : CornerGLContinuity.fwd n ((y + n - d) % n) y = d := by
  refine bc_fwd_of (Nat.mod_lt _ (by omega)) hd ?_
  rw [Nat.mod_add_mod, Nat.sub_add_cancel (by omega), Nat.add_mod_right, Nat.mod_eq_of_lt hy]

theorem back_smul_eq_sub (h t0 : HH D) {y d : ℕ} (hd : d ≤ addOrderOf h) :
    t0 + ((y + addOrderOf h - d) % addOrderOf h) • h = t0 + y • h - d • h := by
  rw [mod_addOrderOf_nsmul, eq_sub_iff_add_eq, add_assoc, ← add_nsmul]
  have : y + addOrderOf h - d + d = y + addOrderOf h := by omega
  rw [this, add_nsmul, addOrderOf_nsmul_eq_zero, add_zero]

theorem first_length_le_window (D : D7) (s : Scale) {p : ℕ} (hp : p.Prime) (hc : IsResidueClassZero D p) : L1 D s p ≤ L2 D s := by
  unfold L2
  have hb : BddAbove {l | ∃ p : ℕ, p.Prime ∧ D.host.cls p = PrimeClass.inertClass ∧ l = L1 D s p} := by
    refine ⟨⌈|Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4)| / Real.log 2⌉₊, ?_⟩
    rintro l ⟨q, hq, _, rfl⟩
    unfold L1
    apply Nat.ceil_mono
    unfold Real.logb
    have h2 : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
    have hq2 : Real.log 2 ≤ Real.log q := Real.log_le_log (by norm_num) (by exact_mod_cast hq.two_le)
    calc Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4) / Real.log q
        ≤ |Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4)| / Real.log q := by
          gcongr
          exact le_abs_self _
      _ ≤ _ := by gcongr
  have := le_csSup hb (show L1 D s p ∈ _ from ⟨p, hp, hc, rfl⟩)
  omega

theorem add_mod_left_injective {n y e1 e2 : ℕ} (h1 : e1 < n) (h2 : e2 < n) (e : (y + e1) % n = (y + e2) % n) : e1 = e2 := by
  have h : e1 ≡ e2 [MOD n] := Nat.ModEq.add_left_cancel' y e
  unfold Nat.ModEq at h
  rwa [Nat.mod_eq_of_lt h1, Nat.mod_eq_of_lt h2] at h

theorem uniform_constant_of_master (D₀ : D7) (hL : CornerGLContinuity.OrbitPositionsAndSizeBounds D₀) (r : ℕ) (h : ℝ) (hr : 1 ≤ r) (hh : 0 ≤ h) :
    ∃ Ce : ℝ, 0 < Ce ∧ ∀ (D : D7) (L : SizeData₂ D) (X : Inst D L), rG L.sc = r → hG L.sc = h → 3 ≤ L.sc.x →
      ∀ C : ℝ, Ce ≤ C → Formalism.MainNotions.AuxBlock8.adm1 D L X C := by
  classical
  obtain ⟨hpos, hsz, _⟩ := hL
  obtain ⟨Ce, hCe, hC⟩ := hsz r h hr hh
  refine ⟨Ce, hCe, ?_⟩
  intro D L X hrG hhG hx3 C hCC p hp hc hx4 hLu h3 t0 ht0 hgood
  subst hrG
  subst hhG
  have hnpos : 0 < addOrderOf (hP D p) := addOrderOf_pos_shift _
  have : NeZero (addOrderOf (hP D p)) := ⟨hnpos.ne'⟩
  have hδ0 := J.delta1_pos L.sc
  have hδ1 := J.delta1_le_one L.sc
  have hK : rG L.sc - 1 = KG L.sc := by unfold rG; omega
  have hL12 := first_length_le_window D L.sc hp hc
  have hraw : CornerGLContinuity.OrbitRaw (addOrderOf (hP D p)) (topsPos D p t0) (rG L.sc) (L1 D L.sc p) (L2 D L.sc)
      (goodU L.sc.delta1) (orbitSmallMultiplicity (rG L.sc) (hG L.sc) L.sc.x) (goodG' (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x)
      (orbitWindowCount (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x) := by
    refine ⟨hL12, hLu, rfl, h3, ?_⟩
    rw [hK]
    exact hgood
  obtain ⟨_, _, hOld, hNext, _, _⟩ := hpos _ (topsPos D p t0) _ _ _ _ _ _ _ hr hraw
  obtain ⟨_, _, _, hcnt⟩ := hC L.sc.delta1 L.sc.x hδ0 hδ1 hx3
  obtain ⟨hc1, hc2⟩ := hcnt _ (topsPos D p t0) (L2 D L.sc) (KG L.sc) h3 hgood
  have hlog : 0 < Real.log L.sc.x := Real.log_pos (by linarith)
  have huG : goodU L.sc.delta1 ≤ goodG' (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x := by
    unfold goodG' goodEll
    calc goodU L.sc.delta1 ≤ (6 * rG L.sc + 1) * goodU L.sc.delta1 := Nat.le_mul_of_pos_left _ (by omega)
      _ ≤ _ := Nat.le_mul_of_pos_left _ (by omega)
  have h3' : 3 * goodG' (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x ≤ addOrderOf (hP D p) := h3
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩
  · rw [vertex_count_eq_card_tops X hc ht0]
    refine le_trans ?_ hc1
    have : 0 ≤ (addOrderOf (hP D p) : ℝ) * L.sc.delta1 := by positivity
    gcongr
  · rw [vertex_count_eq_card_tops X hc ht0]
    exact hc2
  · intro s hs hV
    obtain ⟨y, hy, rfl, hsT⟩ := (mem_tops_on_orbit_iff X hc ht0 s).1 hs
    have hye : Even y := (isV_iff_even_index X hc ht0 hy).1 hV
    obtain ⟨d, hd1, hdG, hdT, hdE, _, hcard⟩ := hNext y ((mem_tops_positions_iff p t0 y).2 ⟨hy, hsT⟩) hye
    have key : ∀ e : ℕ, t0 + y • hP D p + e • hP D p =
        t0 + ((y + e) % addOrderOf (hP D p)) • hP D p := by
      intro e
      rw [mod_addOrderOf_nsmul, add_nsmul, add_assoc]
    obtain ⟨hdlt, hdTT⟩ := (mem_tops_positions_iff p t0 _).1 hdT
    refine ⟨d, hd1, hdG, ?_, ?_, ?_⟩
    · rw [key]; exact hdTT
    · rw [key]; exact (isV_iff_even_index X hc ht0 hdlt).2 hdE
    · refine le_trans ?_ hcard
      apply Finset.card_le_card_of_injOn (fun e => (y + e) % addOrderOf (hP D p))
      · intro e he
        have he' := Finset.mem_filter.1 (Finset.mem_coe.1 he)
        rw [key] at he'
        rw [Finset.mem_coe, Finset.mem_inter]
        exact ⟨(mem_tops_positions_iff p t0 _).2 ⟨Nat.mod_lt _ hnpos, he'.2⟩, Finset.mem_image.2 ⟨e, he'.1, rfl⟩⟩
      · intro e1 he1 e2 he2 e
        have a1 := (Finset.mem_Ioo.1 (Finset.mem_filter.1 (Finset.mem_coe.1 he1)).1).2
        have a2 := (Finset.mem_Ioo.1 (Finset.mem_filter.1 (Finset.mem_coe.1 he2)).1).2
        exact add_mod_left_injective (by omega) (by omega) e
  · intro i hi
    obtain ⟨y, hy, rfl, hsT⟩ := (mem_tops_on_orbit_iff X hc ht0 i).1 hi
    refine lt_of_le_of_lt ?_ (hOld y ((mem_tops_positions_iff p t0 y).2 ⟨hy, hsT⟩))
    have hdn : ∀ d ∈ Finset.Icc 1 (L1 D L.sc p), d < addOrderOf (hP D p) := by
      intro d hd
      have := (Finset.mem_Icc.1 hd).2
      omega
    apply Finset.card_le_card_of_injOn
      (fun d => (y + addOrderOf (hP D p) - d) % addOrderOf (hP D p))
    · intro d hd
      have hd' := Finset.mem_coe.1 hd
      rw [Finset.mem_filter] at hd'
      have hlt := hdn d hd'.1
      have hI := Finset.mem_Icc.1 hd'.1
      rw [← back_smul_eq_sub (hP D p) t0 hlt.le] at hd'
      have hz : (y + addOrderOf (hP D p) - d) % addOrderOf (hP D p) < addOrderOf (hP D p) := Nat.mod_lt _ hnpos
      rw [Finset.mem_coe, Finset.mem_filter]
      refine ⟨(mem_tops_positions_iff p t0 _).2 ⟨hz, hd'.2.1⟩, (isV_iff_even_index X hc ht0 hz).1 hd'.2.2, ?_, ?_⟩
      · rw [forward_back_index_eq hy hlt]; exact hI.1
      · rw [forward_back_index_eq hy hlt]; exact hI.2
    · intro d1 hd1 d2 hd2 e
      have hd1' := Finset.mem_coe.1 hd1
      have hd2' := Finset.mem_coe.1 hd2
      rw [Finset.mem_filter] at hd1' hd2'
      have a1 := hdn d1 hd1'.1
      have a2 := hdn d2 hd2'.1
      have b1 := forward_back_index_eq hy a1
      have b2 := forward_back_index_eq hy a2
      simp only at e
      rw [e] at b1
      omega

theorem family_uniform_constant_of_master {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) (hL : CornerGLContinuity.FamilyOrbitPositionsAndSizeBounds Fm) :
    ∃ C : ℝ, 0 < C ∧ ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      Formalism.MainNotions.AuxBlock8.adm1 (Fm.D x i) (Fm.L x i) (Fm.Gx x i) C := by
  obtain ⟨i0⟩ := Fm.Ix_zero
  have heps : 0 < eps := by
    have := (Fm.L 0 i0).sc.eps_pos
    rwa [Fm.L_eps] at this
  obtain ⟨Ce, h0, h⟩ := uniform_constant_of_master (Fm.D 0 i0) (hL 0 i0) (⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1) (2 + 8 * eps)
    (by omega) (by linarith)
  refine ⟨Ce, h0, max (Fm.x1 + 1) 3, fun x hx i => ?_⟩
  have hx1 : Fm.x1 < x := by
    have := le_trans (le_max_left _ _) hx
    linarith
  have hx3 : (3 : ℝ) ≤ x := le_trans (le_max_right _ _) hx
  refine h (Fm.D x i) (Fm.L x i) (Fm.Gx x i) ?_ ?_ ?_ Ce le_rfl
  · unfold rG KG hG
    rw [Fm.L_eps]
  · unfold hG
    rw [Fm.L_eps]
  · rw [Fm.L_x x i hx1]
    exact hx3

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

variable {D : D7} {L : SizeData₂ D}

theorem band_ratio_statement_of (K : Consts) (h : CornerGLContinuity.OrdersLargePrimeBound D L K) : AuxBlock8.ArchimedeanSignatureMatching D L K := h

theorem gluing_statement_of_proof (X : Inst D L) (Y : LatInst D) (K : Consts) (h : CornerGLContinuity.LatticeGrowthBound D L X Y K) :
    AuxBlock8.admG1 D L X Y K := h

theorem sandwich_of_exponent_clause (X : Inst D L) (Ce : ℝ) (hT : GatTies D) (h : AuxBlock8.adm9 D L X Ce) : CornerGLContinuity.LatticeSandwich D L X :=
  fun u w hg => h.2 u w hg ⟨hT⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions Formalism.FrobeniusOrbits

theorem inert_primes_lower_bound (D : D7) (L : SizeData₂ D) : CornerGLContinuity.EstimatedPrimesExceedScale D L := by
  intro p hp hc0
  by_contra h
  have h := not_lt.mp h
  have hp4 : p ≤ D.host.splitBound := le_trans (Nat.le_floor h) L.split_tie
  have hc0' : D.host.cls p = PrimeClass.inertClass := hc0
  obtain ⟨hs, -, -, hj', -⟩ := (primeClass_eq_inert_iff D.host.toHostRaw).1 hc0'
  have hne2 : p ≠ 2 := by
    rintro rfl
    exact hs D.host.two_mem_small
  exact hj' (D.host.split_small p hp hne2 hp4)

theorem family_inert_primes_holds {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyInertPrimesLarge Fm :=
  ⟨0, fun x _ i => inert_primes_lower_bound (Fm.D x i) (Fm.L x i)⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

namespace Formalism.MainNotions.G.TopChoiceBounds

end Formalism.MainNotions.G.TopChoiceBounds

namespace Formalism.MainNotions.G.TopChoiceBounds

end Formalism.MainNotions.G.TopChoiceBounds

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

section Scaled

variable {O Kf V : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  [AddCommGroup V] [Module Kf V] [Module O V] [IsScalarTower O Kf V]

theorem bg_mem_scale {c : Kf} {N : Submodule O V} {x : V} : x ∈ scale c N ↔ ∃ n ∈ N, c • n = x := by
  unfold scale
  rw [Submodule.mem_map]
  rfl

theorem bg_scale_le {ϖ ϖ' : O} (h : Irreducible ϖ) (h' : Irreducible ϖ') (z : ℤ) (N : Submodule O V) :
    scale ((algebraMap O Kf ϖ) ^ z) N ≤ scale ((algebraMap O Kf ϖ') ^ z) N := by
  intro x hx
  obtain ⟨n, hn, rfl⟩ := bg_mem_scale.mp hx
  obtain ⟨c, hc⟩ := IsDiscreteValuationRing.associated_of_irreducible O h' h

  refine bg_mem_scale.mpr ⟨((c ^ z : Oˣ) : O) • n, N.smul_mem _ hn, ?_⟩
  have e1 : algebraMap O Kf ((c ^ z : Oˣ) : O) = (algebraMap O Kf (c : O)) ^ z := by
    have h2 : ((Units.map (algebraMap O Kf : O →* Kf) (c ^ z) : Kfˣ) : Kf) =
        (((Units.map (algebraMap O Kf : O →* Kf) c) ^ z : Kfˣ) : Kf) := by rw [map_zpow]
    rw [Units.val_zpow_eq_zpow_val] at h2
    exact h2
  rw [← algebraMap_smul Kf ((c ^ z : Oˣ) : O) n, smul_smul, e1, ← mul_zpow, ← map_mul, hc]

theorem bg_scale_mono [IsFractionRing O Kf] {ϖ : O} (h : Irreducible ϖ) {z z' : ℤ} (hz : z' ≤ z) (N : Submodule O V) :
    scale ((algebraMap O Kf ϖ) ^ z) N ≤ scale ((algebraMap O Kf ϖ) ^ z') N := by
  intro x hx
  obtain ⟨n, hn, rfl⟩ := bg_mem_scale.mp hx
  obtain ⟨k, hk⟩ := Int.le.dest hz
  have ha : algebraMap O Kf ϖ ≠ 0 := by
    intro h0
    exact h.ne_zero ((IsFractionRing.injective O Kf) (by rw [h0, map_zero]))
  refine bg_mem_scale.mpr ⟨(ϖ ^ k) • n, N.smul_mem _ hn, ?_⟩
  rw [← algebraMap_smul Kf (ϖ ^ k) n, smul_smul, map_pow, ← zpow_natCast, ← zpow_add₀ ha, hk]

theorem bg_scale_mul [IsFractionRing O Kf] {ϖ : O} (h : Irreducible ϖ) (q : O) (hq : q ≠ 0) (s : ℕ) (z : ℤ)
    (N : Submodule O V) {x : V} (hx : x ∈ scale ((algebraMap O Kf ϖ) ^ z) N) :
    (q ^ s) • x ∈ scale ((algebraMap O Kf ϖ) ^
      (z + ((IsDiscreteValuationRing.addVal O q).toNat * s : ℕ))) N := by
  obtain ⟨n, hn, rfl⟩ := bg_mem_scale.mp hx
  obtain ⟨e, c, hc⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hq h
  have hv : IsDiscreteValuationRing.addVal O q = e := IsDiscreteValuationRing.addVal_def q c h e hc
  have ha : algebraMap O Kf ϖ ≠ 0 := by
    intro h0
    exact h.ne_zero ((IsFractionRing.injective O Kf) (by rw [h0, map_zero]))
  refine bg_mem_scale.mpr ⟨((c : O) ^ s) • n, N.smul_mem _ hn, ?_⟩
  rw [hv, ENat.toNat_natCast, ← algebraMap_smul Kf ((c : O) ^ s) n, ← algebraMap_smul Kf (q ^ s), smul_smul, smul_smul,
    zpow_add₀ ha, zpow_natCast, hc]
  congr 1
  simp only [map_pow, map_mul]
  ring

end Scaled

section VGe

variable {p : ℕ} (G : GAtP p) {V : Type} [AddCommGroup V] [Module G.Kf V] [Module G.O V] [IsScalarTower G.O G.Kf V]

theorem bg_vGe_iff {ϖ : G.O} (h : Irreducible ϖ) (N : Submodule G.O V) (F : V) (g : ℝ) :
    vGeLat G N F g ↔ F ∈ scale ((algebraMap G.O G.Kf ϖ) ^ ⌈g * vUnit G⌉) N :=
  ⟨fun ⟨_, h', hF⟩ => bg_scale_le h' h _ N hF, fun hF => ⟨ϖ, h, hF⟩⟩

theorem bg_vGe_mono [IsFractionRing G.O G.Kf] (N : Submodule G.O V) (F : V) {g g' : ℝ} (hg : g' ≤ g)
    (h : vGeLat G N F g) : vGeLat G N F g' := by
  obtain ⟨ϖ, hϖ, hF⟩ := h
  refine ⟨ϖ, hϖ, bg_scale_mono hϖ ?_ N hF⟩
  apply Int.ceil_le_ceil
  exact mul_le_mul_of_nonneg_right hg (by unfold vUnit; positivity)

theorem bg_vGe_smul [IsFractionRing G.O G.Kf] (hp : (p : G.O) ≠ 0) (N : Submodule G.O V) (F : V) (g : ℝ) (s : ℕ)
    (h : vGeLat G N F g) : vGeLat G N (((p : G.O) ^ s) • F) (g + s) := by
  obtain ⟨ϖ, hϖ, hF⟩ := h
  refine ⟨ϖ, hϖ, ?_⟩
  have := bg_scale_mul hϖ (p : G.O) hp s _ N hF
  convert this using 3
  unfold vUnit
  rw [add_mul]
  have : (s : ℝ) * ((IsDiscreteValuationRing.addVal G.O (p : G.O)).toNat : ℝ) =
      (((IsDiscreteValuationRing.addVal G.O (p : G.O)).toNat * s : ℕ) : ℝ) := by push_cast; ring
  rw [this, Int.ceil_add_natCast]

end VGe

variable {D : D7} {L : SizeData₂ D}

theorem bg_iter_smul {p : ℕ} (G : GAtP p) (v : Fin G.P.nV) (m : ℕ) (c : G.O) (F : G.Fn) :
    (G.yv v)^[m] (c • F) = c • (G.yv v)^[m] F := by
  rw [← LatticeSystems.yEnd_pow_apply, ← LatticeSystems.yEnd_pow_apply, map_smul]

theorem bg_yProd_smul (Y : LatInst D) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (VV' : Finset (HH D)) (c : (D.gat u w hg).O)
    (F : (D.gat u w hg).Fn) : yProd Y u w hg VV' (c • F) = c • yProd Y u w hg VV' F := by
  unfold yProd
  induction VV'.toList with
  | nil => rfl
  | cons a l ih =>
    simp only [List.map_cons, List.foldr_cons, Function.comp_apply]
    rw [ih, bg_iter_smul]

theorem bg_VV_sub (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) : VV X K a b p ⊆ reps X p := by
  classical
  unfold VV
  split_ifs
  · exact Finset.filter_subset _ _
  · exact Finset.empty_subset _

theorem bg_sig_le (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) (hx : L.sc.x ^ (-L.sc.eps) ≤ 1 / 2) :
    (D.R.m : ℝ) * ∑ t0 ∈ VV X K a b p, kapv X K a b p t0 ≤ 1 / 2 := by
  classical
  unfold VV
  split_ifs with h
  · exact le_trans h.2 hx
  · simp

theorem bg_gain_le (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) (VV' : Finset (HH D))
    (hV : VV' ⊆ VV X K a b p) :
    ∑ j ∈ SizeData₂.lifts D, gainP X K a b p j ≤
      (∑ j ∈ SizeData₂.lifts D,
        ((∑ t0 ∈ VV', max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0)) +
          (∑ t0 ∈ VV X K a b p \ VV', max (g0 X K a b p j t0) 0) +
          ∑ t0 ∈ reps X p \ VV X K a b p, max (g0 X K a b p j t0) 0)) +
      ((∑ t0 ∈ VV X K a b p \ VV', ⌈Sv X K a b p t0⌉.toNat : ℕ) : ℝ) := by
  classical
  set W := VV X K a b p with hW
  have hS : ∀ t0, ∑ j ∈ SizeData₂.lifts D, max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) ≤
      (∑ j ∈ SizeData₂.lifts D, max (g0 X K a b p j t0) 0) + (⌈Sv X K a b p t0⌉.toNat : ℝ) := by
    intro t0
    have h1 : (∑ j ∈ SizeData₂.lifts D, max 0 (gU X K a b p j t0 - Pr X K b p j t0 - max (g0 X K a b p j t0) 0)) ≤
        (⌈Sv X K a b p t0⌉.toNat : ℝ) := by
      unfold Sv
      rw [Int.ceil_intCast]
      refine le_trans (Int.le_ceil _) ?_
      exact_mod_cast Int.self_le_toNat _
    suffices h3 : ∑ j ∈ SizeData₂.lifts D, max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) ≤
        (∑ j ∈ SizeData₂.lifts D, max (g0 X K a b p j t0) 0) +
        ∑ j ∈ SizeData₂.lifts D, max 0 (gU X K a b p j t0 - Pr X K b p j t0 - max (g0 X K a b p j t0) 0) by linarith
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_le_sum
    intro j _
    rcases le_total (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) with h | h
    · rw [max_eq_right h]
      have := le_max_left 0 (gU X K a b p j t0 - Pr X K b p j t0 - max (g0 X K a b p j t0) 0)
      linarith
    · rw [max_eq_left h]
      have := le_max_right 0 (gU X K a b p j t0 - Pr X K b p j t0 - max (g0 X K a b p j t0) 0)
      linarith
  have hnn : ∀ j t0, 0 ≤ max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) :=
    fun j t0 => le_max_of_le_right (le_max_right _ _)
  have hnn0 : ∀ j t0, 0 ≤ max (g0 X K a b p j t0) 0 := fun j t0 => le_max_right _ _

  have hfull : ∑ j ∈ SizeData₂.lifts D,
      ((∑ t0 ∈ W, max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0)) +
        ∑ t0 ∈ reps X p \ W, max (g0 X K a b p j t0) 0) ≤
      (∑ j ∈ SizeData₂.lifts D,
        ((∑ t0 ∈ VV', max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0)) +
          (∑ t0 ∈ W \ VV', max (g0 X K a b p j t0) 0) +
          ∑ t0 ∈ reps X p \ W, max (g0 X K a b p j t0) 0)) +
      ((∑ t0 ∈ W \ VV', ⌈Sv X K a b p t0⌉.toNat : ℕ) : ℝ) := by
    have hsplit : ∀ j, ∑ t0 ∈ W, max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) =
        (∑ t0 ∈ W \ VV', max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0)) +
        ∑ t0 ∈ VV', max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) :=
      fun j => (Finset.sum_sdiff hV).symm
    have hsw : ∑ j ∈ SizeData₂.lifts D, ∑ t0 ∈ W \ VV',
          max (gU X K a b p j t0 - Pr X K b p j t0) (max (g0 X K a b p j t0) 0) ≤
        (∑ j ∈ SizeData₂.lifts D, ∑ t0 ∈ W \ VV', max (g0 X K a b p j t0) 0) +
          ((∑ t0 ∈ W \ VV', ⌈Sv X K a b p t0⌉.toNat : ℕ) : ℝ) := by
      rw [Finset.sum_comm, Finset.sum_comm (s := SizeData₂.lifts D) (t := W \ VV')]
      push_cast
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_le_sum (fun t0 _ => hS t0)
    simp only [hsplit, Finset.sum_add_distrib] at hsw ⊢
    linarith
  refine le_trans ?_ hfull
  apply Finset.sum_le_sum
  intro j _
  unfold gainP
  split_ifs
  · exact add_nonneg (Finset.sum_nonneg (fun t0 _ => hnn j t0)) (Finset.sum_nonneg (fun t0 _ => hnn0 j t0))
  · exact le_refl _

theorem bg_IM_of_Ulow (X : Inst D L) (Y : LatInst D) (K : Consts) (low : D.what₂.Word → D.what₂.places.Pl → ℝ)
    (hU : AuxBlock8.UnitBoundLowTerm D L X Y K low) :
    ∀ hT : GatTies D, LatTied hT X Y → ∀ (u : D.what₂.Word) (w : D.what₂.places.Pl)
      (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)),
      let p := D.what₂.places.resChar w
      ∀ F ∈ CornerGLContinuity.IMP X Y K u w hg,
        Y.vKge u w hg F ((∑ j ∈ SizeData₂.lifts D, gainP X K (aL L) (bL L) p j) + low u w) := by
  classical
  intro hT hTied u w hg p
  let G := D.gat u w hg
  have hsub := bg_VV_sub X K (aL L) (bL L) p

  have hne : (reps X p).Nonempty := by
    unfold reps
    exact (Finset.univ_nonempty (α := HH D)).image _
  obtain ⟨t1, _⟩ := hne
  have hfr : IsFractionRing G.O G.Kf := (G.P.setting (Y.vOf u w hg t1)).frac_O
  have hp0 : (p : G.O) ≠ 0 := by
    intro h0
    exact LatticeSystems.kp_p_ne_zero G (Y.vOf u w hg t1) (by rw [h0, map_zero])
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible G.O
  have kz : (Y.Ch u w hg).chainK D.R.m (0 : G.Fn) = 0 := map_zero ((Y.Ch u w hg).chainK D.R.m)
  have ka : ∀ A B : G.Fn, (Y.Ch u w hg).chainK D.R.m (A + B) =
      (Y.Ch u w hg).chainK D.R.m A + (Y.Ch u w hg).chainK D.R.m B :=
    fun A B => map_add ((Y.Ch u w hg).chainK D.R.m) A B
  have ks : ∀ (c : G.O) (A : G.Fn), (Y.Ch u w hg).chainK D.R.m (c • A) = c • (Y.Ch u w hg).chainK D.R.m A :=
    fun c A => LinearMap.map_smul_of_tower ((Y.Ch u w hg).chainK D.R.m) c A
  intro F hF1
  unfold CornerGLContinuity.IMP at hF1
  unfold LatInst.vKge
  rw [bg_vGe_iff G hϖ]
  induction hF1 using Submodule.span_induction with
  | mem F' h' =>
    obtain ⟨VV', hV', F0, hF0, rfl⟩ := h'
    rw [← bg_vGe_iff G hϖ, bg_yProd_smul, ks]
    have h1 := hU hT hTied u w hg _ VV' hsub hV' F0 hF0
    have h2 := bg_vGe_smul G hp0 _ _ _ (∑ t0 ∈ VV X K (aL L) (bL L) p \ VV', ⌈Sv X K (aL L) (bL L) p t0⌉.toNat) h1
    refine bg_vGe_mono G _ _ ?_ h2
    have := bg_gain_le X K (aL L) (bL L) p VV' hV'
    linarith
  | zero => rw [kz]; exact Submodule.zero_mem _
  | add a b _ _ ha hb => rw [ka]; exact Submodule.add_mem _ ha hb
  | smul c a _ ha => rw [ks]; exact Submodule.smul_mem _ c ha

theorem gluing_statement_holds (K : Consts) : CornerGLContinuity.LatticeGrowthOfGrowthHypotheses D L K := by
  classical
  rintro X Y ⟨hU, _, hS, hLP, hE, hSat, ⟨hm, hx⟩, hS1⟩
  refine ⟨?_, fun hT hTied u w hg => bg_IM_of_Ulow X Y K (AuxBlock8.lowU D) hU hT hTied u w hg⟩
  intro hT hTied u w hg p G Mram
  obtain ⟨_, _, _, _, hinj, hrep⟩ := hTied u w hg
  have hsub := bg_VV_sub X K (aL L) (bL L) p
  have h12 := hS u w hg (8 * (Dp K L p + 1)) (hE u w hg) hm (hinj.mono (by exact_mod_cast hsub))
    (hLP hT hTied u w hg) (hSat u w hg) (bg_sig_le X K (aL L) (bL L) p hx)
  exact ⟨h12.1, h12.2, hS1 hT hTied u w hg⟩

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

theorem family_eps_pos {eps : ℝ} (Fm : FamP eps) : 0 < eps := by
  obtain ⟨i⟩ := Fm.Ix_zero
  have := (Fm.L 0 i).sc.eps_pos
  rwa [Fm.L_eps] at this

theorem family_eps_lt {eps : ℝ} (Fm : FamP eps) : eps < 1 / 52 := by
  obtain ⟨i⟩ := Fm.Ix_zero
  have := (Fm.L 0 i).sc.eps_lt
  rwa [Fm.L_eps] at this

theorem mul_log_le_rpow_eventually_alt (c r : ℝ) (hr : 0 < r) : ∀ᶠ x : ℝ in Filter.atTop, c * Real.log x ≤ x ^ r := by
  have bound := ((isLittleO_log_rpow_atTop hr).const_mul_left c).bound (c := 1) zero_lt_one
  filter_upwards [bound, Filter.eventually_ge_atTop (0 : ℝ)] with x hx hx0
  change ‖c * Real.log x‖ ≤ 1 * ‖x ^ r‖ at hx
  rw [Real.norm_eq_abs, Real.norm_eq_abs, one_mul, abs_of_nonneg (Real.rpow_nonneg hx0 r)] at hx
  exact (le_abs_self _).trans hx

theorem const_le_rpow_eventually (c r : ℝ) (hr : 0 < r) : ∀ᶠ x : ℝ in Filter.atTop, c ≤ x ^ r :=
  (tendsto_rpow_atTop hr).eventually_ge_atTop c

theorem two_mul_first_length_le_window (D : D7) (s : Scale) {p : ℕ} (hp : p.Prime) (hc : IsResidueClassZero D p) : 2 * L1 D s p ≤ L2 D s := by
  unfold L2
  have hb : BddAbove {l | ∃ p : ℕ, p.Prime ∧ D.host.cls p = PrimeClass.inertClass ∧ l = L1 D s p} := by
    refine ⟨⌈|Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4)| / Real.log 2⌉₊, ?_⟩
    rintro l ⟨q, hq, _, rfl⟩
    unfold L1
    apply Nat.ceil_mono
    unfold Real.logb
    have h2 : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
    have hq2 : Real.log 2 ≤ Real.log q := Real.log_le_log (by norm_num) (by exact_mod_cast hq.two_le)
    calc Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4) / Real.log q
        ≤ |Real.log (((D.R.k : ℝ) * s.x ^ Scale.A) ^ 4)| / Real.log q := by
          gcongr
          exact le_abs_self _
      _ ≤ _ := by gcongr
  have := le_csSup hb (show L1 D s p ∈ _ from ⟨p, hp, hc, rfl⟩)
  omega

theorem window_length_le_ceil_at_scale {D : D7} (L : SizeData₂ D) (hI : CornerGLContinuity.EstimatedPrimesExceedScale D L) (hK : SizeK L) :
    L2 D L.sc ≤ 2 * ⌈620 / L.sc.ez⌉₊ := by
  obtain ⟨hK1, hK2⟩ := hK
  set x := L.sc.x with hxdef
  set ε := L.sc.eps with hεdef
  have hx1 : 1 < x := L.sc.one_lt_alt
  have hx0 : 0 < x := lt_trans one_pos hx1
  have hε : 0 < ε := L.sc.eps_pos
  have hε2 : ε < 1 / 52 := L.sc.eps_lt
  have hlx : 0 < Real.log x := Real.log_pos hx1
  have hθ : szTh L = ε / 100 := rfl
  rw [hθ] at hK1 hK2
  have hk0 : (0 : ℝ) < D.R.k := lt_of_lt_of_le (Real.rpow_pos_of_pos hx0 _) hK1
  have hlogk : Real.log D.R.k ≤ (9 / 2 + 10 * ε + ε / 100) * Real.log x := by
    rw [← Real.log_rpow hx0]
    exact Real.log_le_log hk0 hK2
  have hxA : 0 < x ^ Scale.A := Real.rpow_pos_of_pos hx0 _
  have hZ : Real.log (((D.R.k : ℝ) * x ^ Scale.A) ^ 4) ≤ 124 * Real.log x := by
    rw [Real.log_pow, Real.log_mul hk0.ne' hxA.ne', Real.log_rpow hx0]
    have hA : Scale.A = 26 := rfl
    rw [hA]
    have : (9 / 2 + 10 * ε + ε / 100) * Real.log x ≤ 5 * Real.log x := by
      apply mul_le_mul_of_nonneg_right _ hlx.le
      linarith
    push_cast
    linarith
  unfold L2
  apply Nat.mul_le_mul_left
  apply csSup_le'
  rintro l ⟨q, hq, hc, rfl⟩
  unfold L1
  apply Nat.ceil_mono
  have hq1 := hI q hq hc
  have hez := L.sc.ez_pos
  have hlq : L.sc.ez / 5 * Real.log x < Real.log q := by
    rw [← Real.log_rpow hx0]
    exact Real.log_lt_log (Real.rpow_pos_of_pos hx0 _) hq1
  have hlq0 : 0 < L.sc.ez / 5 * Real.log x := by positivity
  unfold Real.logb
  calc Real.log (((D.R.k : ℝ) * x ^ Scale.A) ^ 4) / Real.log q
      ≤ 124 * Real.log x / Real.log q := by
        apply div_le_div_of_nonneg_right hZ (le_of_lt (lt_trans hlq0 hlq))
    _ ≤ 124 * Real.log x / (L.sc.ez / 5 * Real.log x) := by
        apply div_le_div_of_nonneg_left (by positivity) hlq0 hlq.le
    _ = 620 / L.sc.ez := by field_simp; ring

theorem window_length_lt_tile_length {D : D7} (L : SizeData₂ D) (hI : CornerGLContinuity.EstimatedPrimesExceedScale D L) (hK : SizeK L)
    (hx : ((2 * ⌈620 / L.sc.ez⌉₊ : ℕ) : ℝ) + 1 ≤ L.sc.x ^ (L.sc.eps / 8)) :
    L2 D L.sc < goodU L.sc.delta1 := by
  have h1 := window_length_le_ceil_at_scale L hI hK
  have hx0 : 0 < L.sc.x := lt_trans one_pos L.sc.one_lt_alt
  unfold goodU
  rw [Nat.lt_ceil]
  have h2 : 1 / L.sc.delta1 = L.sc.x ^ (L.sc.eps / 8) := by
    unfold Scale.delta1
    rw [Real.rpow_neg hx0.le, one_div, inv_inv]
  rw [h2]
  have h3 : (L2 D L.sc : ℝ) ≤ ((2 * ⌈620 / L.sc.ez⌉₊ : ℕ) : ℝ) := by exact_mod_cast h1
  linarith

theorem family_large_scale_of_master {eps : ℝ} (Fm : FamP eps) (hL : CornerGLContinuity.FamilyOrbitPositionsAndSizeBounds Fm) : CornerGLContinuity.FamilyLargeScaleOfInertPrimesLarge Fm := by
  rintro ⟨xI, hI⟩
  have he := family_eps_pos Fm
  have he2 := family_eps_lt Fm
  obtain ⟨i0⟩ := Fm.Ix_zero
  obtain ⟨xG, hGG⟩ := (hL 0 i0).2.2 eps he he2
  have ev := (const_le_rpow_eventually (((2 * ⌈620 / Fm.ez⌉₊ : ℕ) : ℝ) + 1) (eps / 8) (by positivity)).and
    (Filter.eventually_gt_atTop Fm.x1)
  obtain ⟨x0, hx0⟩ := Filter.eventually_atTop.mp ev
  refine ⟨max (max x0 xI) xG, fun x hx i => ?_⟩
  have b1 : x0 ≤ x := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hx
  have b2 : xI ≤ x := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hx
  have b3 : xG ≤ x := le_trans (le_max_right _ _) hx
  obtain ⟨a1, a3⟩ := hx0 x b1
  have hLx := Fm.L_x x i a3
  have hLe := Fm.L_eps x i
  refine ⟨?_, fun p hp hc => two_mul_first_length_le_window _ _ hp hc, ?_⟩
  · apply window_length_lt_tile_length (Fm.L x i) (hI x b2 i) (Fm.sizes x a3 i).2.2.1
    rw [hLx, hLe, Fm.L_ez]; exact a1
  · intro n' hn
    rw [hLx, hLe] at hn
    have := hGG x b3 n' hn
    unfold Gp rG KG Formalism.MainNotions.G.hG Scale.delta1
    rw [hLx, hLe]
    exact this

theorem prime_power_band_log_sum_le (X ρ P₀ : ℝ) (d : ℕ) (hd : 1 ≤ d) (hX : 1 ≤ X) (hρ0 : 0 ≤ ρ) (hρ : ρ ≤ 1 / 3) (hP : 1 ≤ P₀)
    (S : Finset ℕ)
    (hS : ∀ p ∈ S, P₀ ≤ (p : ℝ) ∧ (p : ℝ) < X ∧ X * (1 - ρ) ≤ (p : ℝ) ^ d ∧ (p : ℝ) ^ d ≤ X * (1 + ρ)) :
    ∑ p ∈ S, Real.log p / p ≤ Real.log X * (3 * ρ + 1 / P₀) := by
  have hlX : 0 ≤ Real.log X := Real.log_nonneg hX
  rcases S.eq_empty_or_nonempty with rfl | hne
  · simp only [Finset.sum_empty]; positivity
  set a := S.min' hne with ha
  set b := S.max' hne with hb
  have haS : a ∈ S := S.min'_mem hne
  have hbS : b ∈ S := S.max'_mem hne
  have hab : a ≤ b := S.min'_le b hbS
  obtain ⟨a1, _, a3, _⟩ := hS a haS
  obtain ⟨_, _, _, b4⟩ := hS b hbS
  have ha0 : (0 : ℝ) < a := by linarith
  have hX0 : 0 < X := by linarith
  have h1ρ : 0 < 1 - ρ := by linarith
  have habR : (a : ℝ) ≤ b := by exact_mod_cast hab
  have ht1 : 1 ≤ (b : ℝ) / a := (one_le_div ha0).2 habR
  have ht : (b : ℝ) / a ≤ 1 + 3 * ρ := by
    calc (b : ℝ) / a ≤ ((b : ℝ) / a) ^ d := le_self_pow₀ ht1 (by omega)
      _ = (b : ℝ) ^ d / (a : ℝ) ^ d := div_pow _ _ _
      _ ≤ X * (1 + ρ) / (X * (1 - ρ)) := div_le_div₀ (by positivity) b4 (by positivity) a3
      _ = (1 + ρ) / (1 - ρ) := mul_div_mul_left _ _ hX0.ne'
      _ ≤ 1 + 3 * ρ := by
          rw [div_le_iff₀ h1ρ]
          have := mul_le_mul_of_nonneg_left (by linarith : 3 * ρ ≤ 1) (by linarith : 0 ≤ ρ)
          linarith [show (1 + 3 * ρ) * (1 - ρ) = 1 + 2 * ρ - 3 * ρ ^ 2 by ring,
            show ρ * (3 * ρ) = 3 * ρ ^ 2 by ring]
  have hba : (b : ℝ) ≤ (1 + 3 * ρ) * a := (div_le_iff₀ ha0).1 ht
  have hcard : (S.card : ℝ) ≤ 3 * ρ * a + 1 := by
    have hsub : S ⊆ Finset.Icc a b := fun p hp => Finset.mem_Icc.2 ⟨S.min'_le p hp, S.le_max' p hp⟩
    have h1 : S.card ≤ b + 1 - a := by
      have := Finset.card_le_card hsub
      rwa [Nat.card_Icc] at this
    have h2 : (S.card : ℝ) ≤ (b : ℝ) + 1 - a := by
      have : S.card + a ≤ b + 1 := by omega
      have : (S.card : ℝ) + a ≤ b + 1 := by exact_mod_cast this
      linarith
    linarith
  have hterm : ∀ p ∈ S, Real.log p / p ≤ Real.log X / a := by
    intro p hp
    obtain ⟨p1, p2, _, _⟩ := hS p hp
    have hp0 : (0 : ℝ) < p := by linarith
    have hap : (a : ℝ) ≤ p := by exact_mod_cast S.min'_le p hp
    exact div_le_div₀ hlX (Real.log_le_log hp0 p2.le) ha0 hap
  calc ∑ p ∈ S, Real.log p / p ≤ ∑ _p ∈ S, Real.log X / a := Finset.sum_le_sum hterm
    _ = S.card * (Real.log X / a) := by rw [Finset.sum_const, nsmul_eq_mul]
    _ ≤ (3 * ρ * a + 1) * (Real.log X / a) := by gcongr
    _ = Real.log X * (3 * ρ + 1 / a) := by field_simp
    _ ≤ Real.log X * (3 * ρ + 1 / P₀) := by gcongr

theorem prime_power_band_log_sum_le_log_sq (X ρ P₀ : ℝ) (hX : 1 ≤ X) (hρ0 : 0 ≤ ρ) (hρ : ρ ≤ 1 / 3) (hP : 1 ≤ P₀) (S : Finset ℕ)
    (hS : ∀ p ∈ S, p.Prime ∧ P₀ ≤ (p : ℝ) ∧ (p : ℝ) < X ∧
      ∃ d : ℕ, 1 ≤ d ∧ X * (1 - ρ) ≤ (p : ℝ) ^ d ∧ (p : ℝ) ^ d ≤ X * (1 + ρ)) :
    ∑ p ∈ S, Real.log p / p ≤ (1 + 2 * Real.log X) * (Real.log X * (3 * ρ + 1 / P₀)) := by
  classical
  have hlX : 0 ≤ Real.log X := Real.log_nonneg hX
  have hX0 : 0 < X := by linarith
  let dOf : ℕ → ℕ := fun p =>
    if h : ∃ d : ℕ, 1 ≤ d ∧ X * (1 - ρ) ≤ (p : ℝ) ^ d ∧ (p : ℝ) ^ d ≤ X * (1 + ρ) then h.choose else 0
  have hdOf : ∀ p ∈ S, 1 ≤ dOf p ∧ X * (1 - ρ) ≤ (p : ℝ) ^ dOf p ∧ (p : ℝ) ^ dOf p ≤ X * (1 + ρ) := by
    intro p hp
    have h := (hS p hp).2.2.2
    simp only [dOf, dif_pos h]
    exact h.choose_spec
  have hmaps : ∀ p ∈ S, dOf p ∈ Finset.Icc 1 ⌊1 + 2 * Real.log X⌋₊ := by
    intro p hp
    obtain ⟨h1, _, h3⟩ := hdOf p hp
    refine Finset.mem_Icc.2 ⟨h1, Nat.le_floor ?_⟩
    have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast (hS p hp).1.two_le
    have hl2 : (1 / 2 : ℝ) ≤ Real.log 2 := by
      have := Real.log_two_gt_d9
      linarith
    have e1 : (dOf p : ℝ) * Real.log 2 ≤ Real.log 2 + Real.log X := by
      calc (dOf p : ℝ) * Real.log 2 ≤ (dOf p : ℝ) * Real.log p := by
            apply mul_le_mul_of_nonneg_left (Real.log_le_log (by norm_num) hp2) (Nat.cast_nonneg _)
        _ = Real.log ((p : ℝ) ^ dOf p) := (Real.log_pow _ _).symm
        _ ≤ Real.log (2 * X) := by
            apply Real.log_le_log (by positivity)
            have := mul_le_mul_of_nonneg_left (by linarith : 1 + ρ ≤ 2) hX0.le
            linarith
        _ = Real.log 2 + Real.log X := Real.log_mul (by norm_num) hX0.ne'
    have hl20 : 0 < Real.log 2 := by linarith
    have e2 : ((dOf p : ℝ) - 1) * Real.log 2 ≤ Real.log X := by linarith
    by_contra hcon
    rw [not_le] at hcon
    have h4 : 2 * Real.log X < (dOf p : ℝ) - 1 := by linarith
    have hlt : 2 * Real.log X * (1 / 2) < ((dOf p : ℝ) - 1) * Real.log 2 :=
      lt_of_lt_of_le (mul_lt_mul_of_pos_right h4 (by norm_num)) (mul_le_mul_of_nonneg_left hl2 (by linarith))
    linarith
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  have hB0 : 0 ≤ Real.log X * (3 * ρ + 1 / P₀) := by positivity
  calc ∑ d ∈ Finset.Icc 1 ⌊1 + 2 * Real.log X⌋₊, ∑ p ∈ S with dOf p = d, Real.log p / p
      ≤ ∑ _d ∈ Finset.Icc 1 ⌊1 + 2 * Real.log X⌋₊, Real.log X * (3 * ρ + 1 / P₀) := by
        apply Finset.sum_le_sum
        intro d hd
        apply prime_power_band_log_sum_le X ρ P₀ d (Finset.mem_Icc.1 hd).1 hX hρ0 hρ hP
        intro p hp
        obtain ⟨hpS, hpd⟩ := Finset.mem_filter.1 hp
        obtain ⟨_, q2, q3, _⟩ := hS p hpS
        obtain ⟨_, r2, r3⟩ := hdOf p hpS
        rw [hpd] at r2 r3
        exact ⟨q2, q3, r2, r3⟩
    _ = (⌊1 + 2 * Real.log X⌋₊ : ℝ) * (Real.log X * (3 * ρ + 1 / P₀)) := by
        rw [Finset.sum_const, Nat.card_Icc, nsmul_eq_mul]
        simp
    _ ≤ _ := by
        apply mul_le_mul_of_nonneg_right _ hB0
        exact Nat.floor_le (by positivity)

theorem prime_power_band_sum_at_scale {D : D7} (L : SizeData₂ D) (r : ℝ) (hρ : r ≤ L.sc.x ^ (-2 : ℝ)) (hK : SizeK L)
    (h2 : 2 ≤ L.sc.x) (h12 : 12 ≤ L.sc.x ^ (1 - 2 * L.sc.eps / 3)) (Pd : ℕ → Prop) {hd : DecidablePred Pd}
    (hP : ∀ p : ℕ, Pd p → p.Prime ∧ L.sc.p0 D.R.k ≤ (p : ℝ) ∧ (p : ℝ) < L.sc.X' ∧
      ∃ d : ℕ, 1 ≤ d ∧ L.sc.X' * (1 - r) ≤ (p : ℝ) ^ d ∧ (p : ℝ) ^ d ≤ L.sc.X' * (1 + r)) :
    ∑ p ∈ (Finset.range ⌈L.sc.X'⌉₊).filter Pd, Real.log p / p ≤ L.sc.x ^ (-1 : ℝ) := by
  set x := L.sc.x with hxdef
  set ε := L.sc.eps with hεdef
  have hx0 : 0 < x := by linarith
  have hx1 : 1 ≤ x := by linarith
  have hε : 0 < ε := L.sc.eps_pos
  have hxm1 : 0 ≤ x ^ (-1 : ℝ) := Real.rpow_nonneg hx0.le _
  rcases lt_or_ge r 0 with hneg | hρ0
  · have hX0 : 0 < L.sc.X' := by unfold Scale.X'; exact Real.exp_pos _
    rw [Finset.sum_eq_zero]
    · exact hxm1
    · intro p hp
      exfalso
      obtain ⟨_, _, _, d, _, e1, e2⟩ := hP p (Finset.mem_filter.1 hp).2
      have := mul_lt_mul_of_pos_left (by linarith : 1 + r < 1 - r) hX0
      linarith
  · have hlX : Real.log L.sc.X' = x ^ (ε / 3) := by unfold Scale.X'; exact Real.log_exp _
    have hB1 : 1 ≤ x ^ (ε / 3) := Real.one_le_rpow hx1 (by positivity)
    have hX1 : 1 ≤ L.sc.X' := by
      unfold Scale.X'
      exact Real.one_le_exp (Real.rpow_nonneg hx0.le _)
    have hx2 : x ^ (-2 : ℝ) ≤ 1 / 4 := by
      rw [Real.rpow_neg hx0.le, ← one_div]
      apply one_div_le_one_div_of_le (by norm_num)
      have : x ^ (2 : ℝ) = x ^ 2 := by exact_mod_cast Real.rpow_natCast x 2
      rw [this]
      have hsq := pow_le_pow_left₀ (by norm_num) h2 2
      norm_num at hsq
      exact hsq
    have hk1 : (1 : ℝ) ≤ D.R.k := by
      have h0 : (0 : ℝ) < D.R.k := lt_of_lt_of_le (Real.rpow_pos_of_pos hx0 _) hK.1
      have : 0 < D.R.k := by exact_mod_cast h0
      exact_mod_cast this
    have hp0 : x ^ (2 : ℝ) ≤ L.sc.p0 D.R.k := by
      show x ^ (2 : ℝ) ≤ (D.R.k : ℝ) ^ 2 * x ^ Scale.A
      have hA : x ^ (2 : ℝ) ≤ x ^ Scale.A := Real.rpow_le_rpow_of_exponent_le hx1 (by unfold Scale.A; norm_num)
      have hk2 : (1 : ℝ) ≤ (D.R.k : ℝ) ^ 2 := one_le_pow₀ hk1
      have hA0 : 0 ≤ x ^ Scale.A := Real.rpow_nonneg hx0.le _
      calc x ^ (2 : ℝ) ≤ x ^ Scale.A := hA
        _ = 1 * x ^ Scale.A := (one_mul _).symm
        _ ≤ (D.R.k : ℝ) ^ 2 * x ^ Scale.A := mul_le_mul_of_nonneg_right hk2 hA0
    have hx22 : 1 ≤ x ^ (2 : ℝ) := Real.one_le_rpow hx1 (by norm_num)
    have hp01 : 1 ≤ L.sc.p0 D.R.k := le_trans hx22 hp0
    have hinv : 1 / L.sc.p0 D.R.k ≤ x ^ (-2 : ℝ) := by
      rw [Real.rpow_neg hx0.le, ← one_div]
      exact one_div_le_one_div_of_le (by linarith) hp0
    have hb := prime_power_band_log_sum_le_log_sq L.sc.X' r (L.sc.p0 D.R.k) hX1 hρ0 (by linarith) hp01
      ((Finset.range ⌈L.sc.X'⌉₊).filter Pd)
      (fun p hp => hP p (Finset.mem_filter.1 hp).2)
    refine le_trans hb ?_
    rw [hlX]
    set B := x ^ (ε / 3) with hB
    have hm2 : 0 ≤ x ^ (-2 : ℝ) := Real.rpow_nonneg hx0.le _
    have s1 : (1 + 2 * B) * (B * (3 * r + 1 / L.sc.p0 D.R.k)) ≤ (3 * B) * (B * (4 * x ^ (-2 : ℝ))) := by
      apply mul_le_mul (by linarith) _ (by positivity) (by positivity)
      apply mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    refine le_trans s1 ?_
    have e : x ^ (-1 : ℝ) = x ^ (1 - 2 * ε / 3) * (B * B * x ^ (-2 : ℝ)) := by
      rw [hB, ← Real.rpow_add hx0, ← Real.rpow_add hx0, ← Real.rpow_add hx0]
      congr 1
      ring
    rw [e]
    have : 3 * B * (B * (4 * x ^ (-2 : ℝ))) = 12 * (B * B * x ^ (-2 : ℝ)) := by ring
    rw [this]
    exact mul_le_mul_of_nonneg_right h12 (by positivity)

theorem band_sum_statement_at_scale {D : D7} (L : SizeData₂ D) (K : Consts) (hle : rho D K L.sc ≤ rhoB D K L.sc)
    (hρ : rhoB D K L.sc ≤ L.sc.x ^ (-2 : ℝ)) (hK : SizeK L)
    (h2 : 2 ≤ L.sc.x) (h12 : 12 ≤ L.sc.x ^ (1 - 2 * L.sc.eps / 3)) : CornerGLContinuity.OrdersLargePrimeBound D L K :=
  ⟨le_trans hle hρ, prime_power_band_sum_at_scale L (rho D K L.sc) (le_trans hle hρ) hK h2 h12 _ (fun _ hp => hp), hle, hρ,
    prime_power_band_sum_at_scale L (rhoB D K L.sc) hρ hK h2 h12 _ (fun _ hp => hp)⟩

theorem lambda_nonneg (K : Consts) (hK : K.Nonneg) (s : Scale) : 0 ≤ La K s := by
  unfold La
  have ha : 1 ≤ s.a := by
    have hx1 := s.one_lt_alt
    have hb1 : 1 ≤ s.b := by unfold Scale.b; exact Real.one_le_exp (by unfold Scale.L; positivity)
    unfold Scale.a
    exact one_le_mul_of_one_le_of_one_le hx1.le hb1
  have h1 : 0 ≤ Real.log s.a := Real.log_nonneg ha
  have h2 := hK.1
  positivity

theorem family_band_ratio_holds {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyOrdersLargePrimeBound Fm := by
  rintro _ ⟨xN, hN⟩
  have he := family_eps_pos Fm
  have he2 := family_eps_lt Fm
  have ev := ((const_le_rpow_eventually 12 (1 - 2 * eps / 3) (by linarith)).and (Filter.eventually_ge_atTop 2)).and
    (Filter.eventually_gt_atTop Fm.x1)
  obtain ⟨x0, hx0⟩ := Filter.eventually_atTop.mp ev
  refine ⟨max x0 xN, fun x hx i => ?_⟩
  obtain ⟨⟨a1, a2⟩, a3⟩ := hx0 x (le_trans (le_max_left _ _) hx)
  have hLx := Fm.L_x x i a3
  have hLe := Fm.L_eps x i
  apply band_sum_statement_at_scale (Fm.L x i) Fm.GK _ _ (Fm.sizes x a3 i).2.2.1
  · rw [hLx]; exact a2
  · rw [hLx, hLe]; exact a1
  · exact rho_le_rhoB _ _ _ Fm.GK_nonneg.2.1 (lambda_nonneg _ Fm.GK_nonneg _) (hN x (le_trans (le_max_right _ _) hx) i)
  · rw [hLx]; exact Fm.rho_le x a3 i

end Formalism.MainNotions.G.TopChoiceBounds

end

namespace Formalism.MainNotions.G.TopChoiceBounds

end Formalism.MainNotions.G.TopChoiceBounds

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

theorem bt_chain {S : ℝ} (h : 40 ≤ S) (i : ℕ) : 40 * S ^ i ≤ S ^ (i + 1) := by
  have : 0 < S ^ i := pow_pos (by linarith) i
  rw [pow_succ]
  have := mul_le_mul_of_nonneg_left h this.le
  linarith [mul_comm (S ^ i) 40]

theorem bt_real_tII {tII r N u1 u2 u3 u4 n' c B : ℝ} (h0 : 0 ≤ tII) (hr : 0 ≤ r) (hN : 0 ≤ N)
    (h1 : u1 ≤ B) (h2 : u2 ≤ B) (h3 : u3 ≤ 3 * B) (h4 : u4 ≤ B) (h5 : n' * c ≤ N * B) :
    tII * r * N * (u1 + u2 + u3 + u4) + 2 * r * n' * c ≤ (6 * tII * r + 2 * r) * (N * B) := by
  have hb : u1 + u2 + u3 + u4 ≤ 6 * B := by linarith
  have hc : tII * r * N * (u1 + u2 + u3 + u4) ≤ tII * r * N * (6 * B) :=
    mul_le_mul_of_nonneg_left hb (mul_nonneg (mul_nonneg h0 hr) hN)
  have hd : 2 * r * (n' * c) ≤ 2 * r * (N * B) := mul_le_mul_of_nonneg_left h5 (by linarith)
  linarith [show tII * r * N * (6 * B) = 6 * tII * r * (N * B) by ring,
    show (6 * tII * r + 2 * r) * (N * B) = 6 * tII * r * (N * B) + 2 * r * (N * B) by ring,
    show 2 * r * n' * c = 2 * r * (n' * c) by ring]

theorem bt_real_DII {DII r Np E lb n' c c0 N B : ℝ} (h0 : 0 ≤ DII) (hr : 0 ≤ r)
    (h1 : Np * E * lb ≤ N * B) (h5 : n' * c ≤ N * B) (h7 : Np * c0 ≤ N * B) :
    DII * Np * E * lb + 2 * r * n' * c + r * Np * c0 ≤ (DII + 3 * r) * (N * B) := by
  have a1 : DII * (Np * E * lb) ≤ DII * (N * B) := mul_le_mul_of_nonneg_left h1 h0
  have a2 : 2 * r * (n' * c) ≤ 2 * r * (N * B) := mul_le_mul_of_nonneg_left h5 (by linarith)
  have a3 : r * (Np * c0) ≤ r * (N * B) := mul_le_mul_of_nonneg_left h7 hr
  linarith [show DII * Np * E * lb = DII * (Np * E * lb) by ring,
    show 2 * r * n' * c = 2 * r * (n' * c) by ring,
    show r * Np * c0 = r * (Np * c0) by ring,
    show (DII + 3 * r) * (N * B) = DII * (N * B) + 2 * r * (N * B) + r * (N * B) by ring]

theorem bt_real_tI {sm kappaThresholdOne kappaThresholdTwo N N1 v br n' c B : ℝ} (h1 : 0 ≤ kappaThresholdOne) (h2 : 0 ≤ kappaThresholdTwo) (hN : 0 ≤ N)
    (hs : sm ≤ 2 * (N * B)) (hv : N1 * v ≤ 2 * B) (hb : br ≤ B) (h5 : n' * c ≤ N * B) :
    sm + kappaThresholdOne * N * N1 * v + kappaThresholdTwo * N * br + 2 * n' * c ≤ (4 + 2 * kappaThresholdOne + kappaThresholdTwo) * (N * B) := by
  have a1 : kappaThresholdOne * N * (N1 * v) ≤ kappaThresholdOne * N * (2 * B) := mul_le_mul_of_nonneg_left hv (mul_nonneg h1 hN)
  have a2 : kappaThresholdTwo * N * br ≤ kappaThresholdTwo * N * B := mul_le_mul_of_nonneg_left hb (mul_nonneg h2 hN)
  linarith [show kappaThresholdOne * N * N1 * v = kappaThresholdOne * N * (N1 * v) by ring,
    show kappaThresholdOne * N * (2 * B) = 2 * kappaThresholdOne * (N * B) by ring,
    show kappaThresholdTwo * N * B = kappaThresholdTwo * (N * B) by ring,
    show (4 + 2 * kappaThresholdOne + kappaThresholdTwo) * (N * B) =
      4 * (N * B) + 2 * kappaThresholdOne * (N * B) + kappaThresholdTwo * (N * B) by ring]

theorem bt_real_NE {S Np N E lb B : ℝ} (hS : 40 ≤ S) (hN : 0 ≤ N) (hNp : Np ≤ 40 * S * N)
    (hE0 : 0 ≤ E) (hE : E ≤ S ^ 8) (hl0 : 0 ≤ lb) (hl : lb ≤ S) (hB : S ^ 20 ≤ B) : Np * E * lb ≤ N * B := by
  have hS0 : 0 ≤ S := by linarith
  have a1 : Np * E * lb ≤ (40 * S * N) * S ^ 8 * S := by
    apply mul_le_mul (mul_le_mul hNp hE hE0 (by positivity)) hl hl0 (by positivity)
  have c10 := bt_chain hS 10
  norm_num at c10
  have a2 : S ^ 11 ≤ S ^ 20 := pow_le_pow_right₀ (by linarith) (by norm_num)
  have a3 : (40 * S * N) * S ^ 8 * S = N * (40 * S ^ 10) := by ring
  rw [a3] at a1
  exact le_trans a1 (mul_le_mul_of_nonneg_left (by linarith) hN)

theorem bt_real_br {S Q DI kappaThresholdTwo N k lb c n' B : ℝ} (hS : 40 ≤ S) (hQ0 : 0 ≤ Q) (hQ : Q ≤ S) (hD0 : 0 ≤ DI)
    (hD : DI ≤ S ^ 13) (ht0 : 0 ≤ kappaThresholdTwo) (ht : kappaThresholdTwo ≤ S) (hN0 : 0 ≤ N) (hN : N ≤ S ^ 2) (hk0 : 0 ≤ k) (hk : k ≤ S)
    (hl0 : 0 ≤ lb) (hl : lb ≤ S) (hc0 : 0 ≤ c) (hc : c ≤ S) (hn0 : 0 ≤ n') (hn : n' ≤ S) (hB : S ^ 20 ≤ B) :
    Q * (8 * (DI + 1) + kappaThresholdTwo * N * k * lb + 4 * N * c + 2 * n' * c) + k * Q + k * lb + c ≤ B := by
  have hS0 : 0 ≤ S := by linarith
  have b1 : kappaThresholdTwo * N * k * lb ≤ S * S ^ 2 * S * S :=
    mul_le_mul (mul_le_mul (mul_le_mul ht hN hN0 hS0) hk hk0 (by positivity)) hl hl0 (by positivity)
  have b2 : N * c ≤ S ^ 2 * S := mul_le_mul hN hc hc0 (by positivity)
  have b3 : n' * c ≤ S * S := mul_le_mul hn hc hc0 hS0
  have b4 : k * Q ≤ S * S := mul_le_mul hk hQ hQ0 hS0
  have b5 : k * lb ≤ S * S := mul_le_mul hk hl hl0 hS0
  have b6 : 8 * (DI + 1) + kappaThresholdTwo * N * k * lb + 4 * N * c + 2 * n' * c ≤
      8 * (S ^ 13 + 1) + S * S ^ 2 * S * S + 4 * (S ^ 2 * S) + 2 * (S * S) := by linarith
  have b60 : 0 ≤ 8 * (DI + 1) + kappaThresholdTwo * N * k * lb + 4 * N * c + 2 * n' * c := by positivity
  have b7 : Q * (8 * (DI + 1) + kappaThresholdTwo * N * k * lb + 4 * N * c + 2 * n' * c) ≤
      S * (8 * (S ^ 13 + 1) + S * S ^ 2 * S * S + 4 * (S ^ 2 * S) + 2 * (S * S)) :=
    mul_le_mul hQ b6 b60 hS0
  have c0 := bt_chain hS 0
  have c1 := bt_chain hS 1
  have c2 := bt_chain hS 2
  have c3 := bt_chain hS 3
  have c4 := bt_chain hS 4
  have c5 := bt_chain hS 5
  have c6 := bt_chain hS 6
  have c7 := bt_chain hS 7
  have c8 := bt_chain hS 8
  have c9 := bt_chain hS 9
  have c10 := bt_chain hS 10
  have c11 := bt_chain hS 11
  have c12 := bt_chain hS 12
  have c13 := bt_chain hS 13
  have c14 := bt_chain hS 14
  have a2 : S ^ 15 ≤ S ^ 20 := pow_le_pow_right₀ (by linarith) (by norm_num)
  have e : S * (8 * (S ^ 13 + 1) + S * S ^ 2 * S * S + 4 * (S ^ 2 * S) + 2 * (S * S)) + S * S + S * S + S =
      8 * S ^ 14 + S ^ 6 + 4 * S ^ 4 + 2 * S ^ 3 + 2 * S ^ 2 + 9 * S := by ring
  simp only [pow_zero, zero_add, pow_one] at c0
  norm_num at c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14
  linarith

theorem bt_fin {t c1 C Z : ℝ} (hc : 0 ≤ c1) (h : c1 + 1 ≤ C) (hZ : 1 ≤ Z) (ht : t ≤ c1 * Z) : ((⌈t⌉₊ : ℕ) : ℝ) ≤ C * Z := by
  have h0 : 0 ≤ c1 * Z := mul_nonneg hc (by linarith)
  have h1 : ((⌈t⌉₊ : ℕ) : ℝ) ≤ ((⌈c1 * Z⌉₊ : ℕ) : ℝ) := by exact_mod_cast Nat.ceil_mono ht
  have h2 := Nat.ceil_lt_add_one h0
  have := mul_le_mul_of_nonneg_right h (by linarith : 0 ≤ Z)
  linarith [show (c1 + 1) * Z = c1 * Z + Z by ring]

theorem bt_logb_le {p a : ℝ} (hp : 2 ≤ p) (ha : 1 ≤ a) : Real.logb p a ≤ 2 * Real.log a := by
  unfold Real.logb
  have hl2 : (1 / 2 : ℝ) ≤ Real.log p := by
    have h1 : Real.log 2 ≤ Real.log p := Real.log_le_log (by norm_num) hp
    have h2 := Real.log_two_gt_d9
    linarith
  have hla : 0 ≤ Real.log a := Real.log_nonneg ha
  rw [div_le_iff₀ (by linarith)]
  have := mul_le_mul_of_nonneg_left hl2 hla
  linarith [show Real.log a * (1 / 2) = 1 / 2 * Real.log a by ring,
    show 2 * Real.log a * Real.log p = 2 * (Real.log a * Real.log p) by ring]

theorem mul_div_le_div_of_le {La a p k : ℝ} (ha : 0 < a) (hp : 0 < p) (hk : 0 < k) (h : La ≤ k) : La * a / (p * k) ≤ a / p := by
  rw [div_le_div_iff₀ (by positivity) hp]
  have := mul_le_mul_of_nonneg_right h (mul_pos ha hp).le
  linarith [show La * (a * p) = La * a * p by ring, show k * (a * p) = a * (p * k) by ring]

theorem mul_rpow_neg_le_div {a p : ℝ} {l : ℕ} (ha : 0 < a) (hp : 1 ≤ p) (hl : 1 ≤ l) : a * p ^ (-(l : ℝ)) ≤ a / p := by
  have h1 : p ^ (-(l : ℝ)) ≤ p ^ (-1 : ℝ) := by
    apply Real.rpow_le_rpow_of_exponent_le hp
    have : (1 : ℝ) ≤ l := by exact_mod_cast hl
    linarith
  rw [Real.rpow_neg_one] at h1
  rw [div_eq_mul_inv]
  exact mul_le_mul_of_nonneg_left h1 ha.le

theorem density_sum_le_two_div {N1 a p La k : ℝ} (ha : 0 < a) (hp : 0 < p) (hk : 0 < k) (h1 : N1 ≤ p) (h2 : N1 * La ≤ k) :
    N1 * (a / p ^ 2 + La * a / (p * k)) ≤ 2 * (a / p) := by
  have e1 : N1 * (a / p ^ 2) ≤ a / p := by
    have : N1 * (a / p ^ 2) = (N1 / p) * (a / p) := by field_simp
    rw [this]
    have h3 : N1 / p ≤ 1 := (div_le_one hp).2 h1
    have h4 : 0 ≤ a / p := by positivity
    exact mul_le_of_le_one_left h4 h3
  have e2 : N1 * (La * a / (p * k)) ≤ a / p := by
    have : N1 * (La * a / (p * k)) = (N1 * La) * a / (p * k) := by ring
    rw [this]
    exact mul_div_le_div_of_le ha hp hk h2
  linarith

theorem bt_nN {n' de S N : ℝ} (hd : 0 < de) (hS : 0 ≤ S) (hN : 0 ≤ N) (h1 : n' * de ≤ S * N) (h2 : 1 / de ≤ S) :
    n' ≤ S * S * N := by
  have e : n' = n' * de * (1 / de) := by field_simp
  rw [e]
  calc n' * de * (1 / de) ≤ (S * N) * S := mul_le_mul h1 h2 (by positivity) (by positivity)
    _ = _ := by ring

theorem bt_a (s : Scale) : 1 < s.a := by
  have hx1 := s.one_lt_alt
  have hb1 : 1 ≤ s.b := by unfold Scale.b; exact Real.one_le_exp (by unfold Scale.L; positivity)
  unfold Scale.a
  calc (1 : ℝ) < s.x := hx1
    _ ≤ s.x * s.b := le_mul_of_one_le_right (by linarith) hb1

theorem pow_sum_le_pow_eight {S u v w : ℝ} (hS : 40 ≤ S) (hu0 : 0 ≤ u) (hu : u ≤ S) (hv0 : 0 ≤ v) (hv : v ≤ S) (hw0 : 0 ≤ w)
    (hw : w ≤ S) : u ^ 3 + v ^ 5 + w ^ 2 ≤ S ^ 8 := by
  have a1 := pow_le_pow_left₀ hu0 hu 3
  have a2 := pow_le_pow_left₀ hv0 hv 5
  have a3 := pow_le_pow_left₀ hw0 hw 2
  have hS1 : (1 : ℝ) ≤ S := by linarith
  have b1 : S ^ 3 ≤ S ^ 5 := pow_le_pow_right₀ hS1 (by norm_num)
  have b2 : S ^ 2 ≤ S ^ 5 := pow_le_pow_right₀ hS1 (by norm_num)
  have c5 := bt_chain hS 5
  norm_num at c5
  have b3 : S ^ 6 ≤ S ^ 8 := pow_le_pow_right₀ hS1 (by norm_num)
  have b4 : 0 < S ^ 5 := by positivity
  linarith

theorem mul_pow_add_pow_le_pow_eight {S z u w : ℝ} (hS : 40 ≤ S) (hz : z ≤ S) (hu0 : 0 ≤ u) (hu : u ≤ S) (hw0 : 0 ≤ w)
    (hw : w ≤ S) : z * (u ^ 5 + w ^ 3) ≤ S ^ 8 := by
  have a1 := pow_le_pow_left₀ hu0 hu 5
  have a2 := pow_le_pow_left₀ hw0 hw 3
  have hS1 : (1 : ℝ) ≤ S := by linarith
  have b1 : S ^ 3 ≤ S ^ 5 := pow_le_pow_right₀ hS1 (by norm_num)
  have h1 : z * (u ^ 5 + w ^ 3) ≤ S * (2 * S ^ 5) := mul_le_mul hz (by linarith) (by positivity) (by linarith)
  have c6 := bt_chain hS 6
  norm_num at c6
  have b3 : S ^ 7 ≤ S ^ 8 := pow_le_pow_right₀ hS1 (by norm_num)
  have b4 : 0 < S ^ 6 := by positivity
  have e : S * (2 * S ^ 5) = 2 * S ^ 6 := by ring
  linarith

theorem bt_DIS {S KD Np E lb : ℝ} (hS : 40 ≤ S) (hK0 : 0 ≤ KD) (hK : KD ≤ S) (hN0 : 0 ≤ Np) (hN : Np ≤ 40 * S)
    (hE0 : 0 ≤ E) (hE : E ≤ S ^ 8) (hl0 : 0 ≤ lb) (hl : lb ≤ S) : ((⌈KD * Np * E * lb⌉₊ : ℕ) : ℝ) ≤ S ^ 13 := by
  have hS0 : (0 : ℝ) ≤ S := by linarith
  have h1 : KD * Np * E * lb ≤ S * (40 * S) * S ^ 8 * S :=
    mul_le_mul (mul_le_mul (mul_le_mul hK hN hN0 hS0) hE hE0 (by positivity)) hl hl0 (by positivity)
  have h0 : 0 ≤ KD * Np * E * lb := by positivity
  have h2 := Nat.ceil_lt_add_one h0
  have c11 := bt_chain hS 11
  norm_num at c11
  have e : S * (40 * S) * S ^ 8 * S = 40 * S ^ 11 := by ring
  have hS1 : (1 : ℝ) ≤ S := by linarith
  have c12 := bt_chain hS 12
  norm_num at c12
  have b4 : (1 : ℝ) ≤ S ^ 12 := one_le_pow₀ hS1
  linarith

variable {D : D7} {L : SizeData₂ D}

structure bt_H (D : D7) (L : SizeData₂ D) (K : Consts) (Ce S : ℝ) : Prop where
  forty_le_bound : 40 ≤ S
  cl0 : 0 < Ce * Real.log L.sc.x
  cl : Ce * Real.log L.sc.x ≤ S
  de : 1 / L.sc.delta1 ≤ S
  k : (D.R.k : ℝ) ≤ S
  n : (D.R.n : ℝ) ≤ S
  r : (rG L.sc : ℝ) ≤ S
  la : 2 * Real.log L.sc.a ≤ S
  c : cG L ≤ S
  xA : L.sc.x ^ Scale.A ≤ S
  Q : L.sc.X' ^ (Gp L.sc) ≤ S
  KDI : K.DI ≤ S
  integral_constant_le_bound : K.kappaThresholdTwo ≤ S
  b' : S ^ 20 ≤ L.sc.b'
  La : (N1 L.sc : ℝ) * La K L.sc ≤ D.R.k
  firstLength_le_prime_bound : (N1 L.sc : ℝ) ≤ L.sc.p0 D.R.k
  pX : 120 * (Ce * Real.log L.sc.x) * L.sc.p0 D.R.k ≤ L.sc.X'
  N1 : (N1 L.sc : ℝ) ≤ Ce * Real.log L.sc.x
  bot : ∀ t, (L.bT t : ℝ) ≤ 2 * L.sc.b'
  cnt : ∀ (n' : ℕ) (TT : Finset (Fin n')), L.sc.x ^ (L.sc.eps / 4) ≤ (n' : ℝ) →
    IsGoodOrbit n' TT (L2 D L.sc) (KG L.sc) (rG L.sc) L.sc.delta1 (hG L.sc) L.sc.x →
    (n' : ℝ) * L.sc.delta1 / (Ce * Real.log L.sc.x) ≤ TT.card ∧ (TT.card : ℝ) ≤ 40 * n' * L.sc.delta1

theorem bt_cand (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) (h : VV X K a b p ≠ ∅) :
    Cand D L K p := by
  unfold VV at h
  by_contra hc
  exact h (if_neg (fun hh => hc hh.1))

theorem bt_good (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) {t0 : HH D} (h : t0 ∈ VV X K a b p) :
    t0 ∈ reps X p ∧ Good X p t0 := by
  classical
  unfold VV at h
  split_ifs at h
  · unfold goodReps at h
    exact Finset.mem_filter.1 h
  · simp at h

structure bt_O (L : SizeData₂ D) (X : Inst D L) (S : ℝ) (p : ℕ) (t0 : HH D) : Prop where
  hp : p.Prime
  hcl : IsResidueClassZero D p
  hrep : t0 ∈ reps X p
  SB : S ^ 20 ≤ L.sc.a / p
  bB : L.sc.b' ≤ L.sc.a / p
  nS : (addOrderOf (hP D p) : ℝ) ≤ S
  N1 : (1 : ℝ) ≤ (Nv X p t0 : ℝ)
  NS : (Nv X p t0 : ℝ) ≤ S ^ 2
  nN : (addOrderOf (hP D p) : ℝ) ≤ S * S * (Nv X p t0 : ℝ)
  Np : NplusF L.sc (addOrderOf (hP D p)) ≤ 40 * S * (Nv X p t0 : ℝ)
  NpS : NplusF L.sc (addOrderOf (hP D p)) ≤ 40 * S
  lb0 : 0 ≤ Real.logb p L.sc.a
  lb : Real.logb p L.sc.a ≤ S
  Q : Qp L.sc p ≤ S

theorem bt_O_of (X : Inst D L) (K : Consts) (Ce S : ℝ) (H : bt_H D L K Ce S) (p : ℕ) (hpX : (p : ℝ) < L.sc.X')
    (t0 : HH D) (ht0 : t0 ∈ VV X K (aL L) (bL L) p) :
    bt_O L X S p t0 ∧ NplusF L.sc (addOrderOf (hP D p)) ≤ 40 * (Ce * Real.log L.sc.x) * (Nv X p t0 : ℝ) := by
  obtain ⟨hp, _, hcl, hord, _⟩ := bt_cand X K _ _ p (Finset.ne_empty_of_mem ht0)
  obtain ⟨hrep, hgood⟩ := bt_good X K _ _ p ht0
  obtain ⟨hlo, hhi⟩ := H.cnt _ (topsPos D p t0) hord hgood
  rw [← vertex_count_eq_card_tops X hcl hrep] at hlo hhi
  have hS := H.forty_le_bound
  have hS0 : (0 : ℝ) ≤ S := by linarith only [hS]
  have hS1 : (1 : ℝ) ≤ S := by linarith only [hS]
  have ha1 := bt_a L.sc
  have ha0 : 0 < L.sc.a := by linarith only [ha1]
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hp0 : (0 : ℝ) < p := by linarith only [hp2]
  have hp1 : (1 : ℝ) < p := by linarith only [hp2]
  have hδ0 := J.delta1_pos L.sc
  have hδ1 := J.delta1_le_one L.sc
  have hB : L.sc.b' ≤ L.sc.a / p := by
    unfold Scale.b'
    exact div_le_div_of_nonneg_left ha0.le hp0 hpX.le
  have hn0' : (0 : ℝ) < (addOrderOf (hP D p) : ℝ) := by exact_mod_cast addOrderOf_pos_shift (hP D p)
  have hnS : (addOrderOf (hP D p) : ℝ) ≤ S := by
    refine le_trans ?_ H.n
    have hd : addOrderOf (hP D p) ∣ D.R.n := by
      have := addOrderOf_dvd_card (x := hP D p)
      rwa [D.R.card_A] at this
    exact_mod_cast Nat.le_of_dvd D.R.n_pos' hd
  have hN0 : (0 : ℝ) < (Nv X p t0 : ℝ) := lt_of_lt_of_le (div_pos (mul_pos hn0' hδ0) H.cl0) hlo
  have hN1 : (1 : ℝ) ≤ (Nv X p t0 : ℝ) := by
    have : 0 < Nv X p t0 := by exact_mod_cast hN0
    exact_mod_cast this
  have hnd : (addOrderOf (hP D p) : ℝ) * L.sc.delta1 ≤ (Nv X p t0 : ℝ) * (Ce * Real.log L.sc.x) :=
    (div_le_iff₀ H.cl0).1 hlo
  have hndS : (addOrderOf (hP D p) : ℝ) * L.sc.delta1 ≤ S * (Nv X p t0 : ℝ) := by
    have := mul_le_mul_of_nonneg_left H.cl hN0.le
    linarith only [this, hnd]
  have h40 : 40 * (addOrderOf (hP D p) : ℝ) * L.sc.delta1 ≤ 40 * S := by
    have : (addOrderOf (hP D p) : ℝ) * L.sc.delta1 ≤ S * 1 := mul_le_mul hnS hδ1 hδ0.le hS0
    linarith only [this]
  have c1 := bt_chain hS 1
  norm_num at c1
  refine ⟨⟨hp, hcl, hrep, le_trans H.b' hB, hB, hnS, hN1, by linarith only [hhi, h40, c1],
    bt_nN hδ0 hS0 hN0.le hndS H.de, by unfold NplusF; linarith only [hndS],
    by unfold NplusF; exact h40, Real.logb_nonneg hp1 ha1.le, le_trans (bt_logb_le hp2 ha1.le) H.la, ?_⟩, ?_⟩
  · refine le_trans ?_ H.Q
    unfold Qp
    exact pow_le_pow_left₀ hp0.le hpX.le _
  · unfold NplusF
    linarith only [hnd]

theorem mul_le_of_density_bounds {Np Cl N c0 a X' p p0 : ℝ} (hCl : 0 < Cl) (hN : 0 ≤ N) (ha : 0 < a) (hX : 0 < X') (hp : 0 < p)
    (hpp : p < p0) (h1 : Np ≤ 40 * Cl * N) (h2 : c0 ≤ 3 * (a / X')) (hc0 : 0 ≤ c0)
    (h3 : 120 * Cl * p0 ≤ X') : Np * c0 ≤ N * (a / p) := by
  have e1 : Np * c0 ≤ (40 * Cl * N) * (3 * (a / X')) := mul_le_mul h1 h2 hc0 (by positivity)
  have e2 : 120 * Cl * (a / X') ≤ a / p := by
    rw [← mul_div_assoc, div_le_div_iff₀ hX hp]
    have h4 : 120 * Cl * p ≤ X' := le_trans (mul_le_mul_of_nonneg_left hpp.le (by positivity)) h3
    have := mul_le_mul_of_nonneg_left h4 ha.le
    linarith
  have e3 := mul_le_mul_of_nonneg_left e2 hN
  linarith

theorem one_le_first_length_at_scale (D : D7) (s : Scale) {p : ℕ} (hp : (1 : ℝ) < p) (hk : (1 : ℝ) ≤ D.R.k) : 1 ≤ L1 D s p := by
  unfold L1
  rw [Nat.one_le_ceil_iff]
  apply Real.logb_pos hp
  have h1 : 1 < s.x ^ Scale.A := Real.one_lt_rpow s.one_lt_alt (by unfold Scale.A; norm_num)
  have h2 : 1 < (D.R.k : ℝ) * s.x ^ Scale.A :=
    calc (1 : ℝ) < s.x ^ Scale.A := h1
      _ ≤ (D.R.k : ℝ) * s.x ^ Scale.A := le_mul_of_one_le_left (by linarith) hk
  exact one_lt_pow₀ h2 (by norm_num)

theorem bt_k (D : D7) : (5 : ℝ) ≤ (D.R.k : ℝ) := by
  have := D.R.m_add_three_le_k
  have h2 := D.R.two_le_m
  exact_mod_cast (by omega : 5 ≤ D.R.k)

theorem initial_constant_bounds (K : Consts) (Ce S : ℝ) (H : bt_H D L K Ce S) : c0num L ≤ 3 * L.sc.b' ∧ 0 ≤ c0num L ∧ 0 ≤ cG L := by
  have hc0' : 0 ≤ cG L := by unfold cG; have := L.Sc_pos; linarith
  have hS := H.forty_le_bound
  have hb : 0 ≤ L.sc.b' := le_trans (by positivity) H.b'
  refine ⟨?_, by unfold c0num; positivity, hc0'⟩
  unfold c0num
  have h2 := H.c
  have h3 := H.b'
  have c1 := bt_chain hS 1
  norm_num at c1
  have p2 : S ^ 2 ≤ S ^ 20 := pow_le_pow_right₀ (by linarith) (by norm_num)
  linarith

theorem vertex_density_lower_bound (X : Inst D L) (K : Consts) (Ce S : ℝ) (H : bt_H D L K Ce S) (p : ℕ) (t0 : HH D) (O : bt_O L X S p t0) :
    (addOrderOf (hP D p) : ℝ) * cG L ≤ (Nv X p t0 : ℝ) * (L.sc.a / p) := by
  have hS := H.forty_le_bound
  have hN0 : (0 : ℝ) ≤ (Nv X p t0 : ℝ) := by linarith only [O.N1]
  have p3 : S ^ 3 ≤ S ^ 20 := pow_le_pow_right₀ (by linarith) (by norm_num)
  calc (addOrderOf (hP D p) : ℝ) * cG L ≤ (S * S * (Nv X p t0 : ℝ)) * S :=
        mul_le_mul O.nN H.c (initial_constant_bounds K Ce S H).2.2 (by positivity)
    _ = (Nv X p t0 : ℝ) * S ^ 3 := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (le_trans p3 O.SB) hN0

theorem bt_NB (X : Inst D L) (S : ℝ) (hS : 40 ≤ S) (p : ℕ) (t0 : HH D) (O : bt_O L X S p t0) :
    1 ≤ (Nv X p t0 : ℝ) * (L.sc.a / p) :=
  one_le_mul_of_one_le_of_one_le O.N1 (le_trans (one_le_pow₀ (by linarith)) O.SB)

def bt_C (K : Consts) (r Ce9 : ℝ) : ℝ :=
  6 * K.tII * r + 5 * r + K.DII + 2 * K.kappaThresholdOne + K.kappaThresholdTwo + K.DI + 6 + Ce9

private theorem bt_window_bounds (X : Inst D L) (K : Consts) (Ce S : ℝ)
    (H : bt_H D L K Ce S) (p : ℕ) (t0 : HH D) (O : bt_O L X S p t0) :
    0 ≤ (Nv X p t0 : ℝ) ∧ 0 ≤ Qp L.sc p ∧ (N1 L.sc : ℝ) ≤ S ∧
      0 ≤ NplusF L.sc (addOrderOf (hP D p)) := by
  refine ⟨?_, ?_, H.N1.trans H.cl, ?_⟩
  · linarith only [O.N1]
  · unfold Qp
    positivity
  · unfold NplusF
    have := J.delta1_pos L.sc
    positivity

theorem bt_II (X : Inst D L) (K : Consts) (hK : K.Nonneg) (Ce S Ce9 : ℝ) (H : bt_H D L K Ce S) (h90 : 0 ≤ Ce9) (p : ℕ)
    (t0 : HH D) (O : bt_O L X S p t0)
    (hNC : NplusF L.sc (addOrderOf (hP D p)) ≤ 40 * (Ce * Real.log L.sc.x) * (Nv X p t0 : ℝ))
    (hpp : (p : ℝ) < L.sc.p0 D.R.k) :
    ((⌈tIIf K L p (addOrderOf (hP D p)) (Nv X p t0)⌉₊ : ℕ) : ℝ) ≤
        bt_C K (rG L.sc) Ce9 * ((Nv X p t0 : ℝ) * (L.sc.a / p)) ∧
      (DIIf K L p (addOrderOf (hP D p)) : ℝ) ≤ bt_C K (rG L.sc) Ce9 * ((Nv X p t0 : ℝ) * (L.sc.a / p)) := by
  obtain ⟨hLa0, _, _, htII, hDII, _, _, hDI, htI1, htI2, _, _, _, _, _⟩ := hK
  have hS := H.forty_le_bound
  have hS0 : (0 : ℝ) ≤ S := by linarith only [hS]
  have ha1 := bt_a L.sc
  have ha0 : 0 < L.sc.a := by linarith only [ha1]
  have hr0 : (0 : ℝ) ≤ (rG L.sc : ℝ) := Nat.cast_nonneg _
  have hk5 := bt_k D
  have hk0 : (0 : ℝ) < (D.R.k : ℝ) := by linarith only [hk5]
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast O.hp.two_le
  have hp0 : (0 : ℝ) < p := by linarith only [hp2]
  obtain ⟨hN0, hQ0, hN1S, hNp0⟩ := bt_window_bounds X K Ce S H p t0 O
  have hN11 : (1 : ℝ) ≤ (N1 L.sc : ℝ) := by
    have : 1 ≤ N1 L.sc := by unfold N1 orbitWindowCount; omega
    exact_mod_cast this
  have hLaN : 0 ≤ La K L.sc := by
    unfold La
    exact mul_nonneg (mul_nonneg hLa0 (by positivity)) (Real.log_nonneg ha1.le)
  have hLak : La K L.sc ≤ D.R.k := le_trans (le_mul_of_one_le_left hLaN hN11) H.La
  obtain ⟨hc0n, hc00, hcG0⟩ := initial_constant_bounds K Ce S H
  have A5 := vertex_density_lower_bound X K Ce S H p t0 O
  have hNB := bt_NB X S hS p t0 O
  have hX0 : 0 < L.sc.X' := by unfold Scale.X'; positivity
  have p2 : S ^ 2 ≤ S ^ 20 := pow_le_pow_right₀ (by linarith only [hS]) (by norm_num)
  have A4 : (D.R.k : ℝ) * Qp L.sc p ≤ L.sc.a / p := by
    have : (D.R.k : ℝ) * Qp L.sc p ≤ S * S := mul_le_mul H.k O.Q hQ0 hS0
    have e : S * S = S ^ 2 := by ring
    linarith only [this, e, p2, O.SB]
  have hrC : 0 ≤ K.tII * (rG L.sc : ℝ) := mul_nonneg htII hr0
  constructor
  · refine bt_fin (c1 := 6 * K.tII * (rG L.sc : ℝ) + 2 * (rG L.sc : ℝ)) (by linarith only [hrC, hr0])
      (by unfold bt_C; linarith only [hr0, hDII, htI1, htI2, hDI, h90]) hNB ?_
    unfold tIIf
    exact bt_real_tII htII hr0 hN0 (mul_div_le_div_of_le ha0 hp0 hk0 hLak)
      (mul_rpow_neg_le_div ha0 (by linarith only [hp2]) (one_le_first_length_at_scale D L.sc (by linarith only [hp2]) (by linarith only [hk5])))
      (by linarith only [hc0n, O.bB]) A4 A5
  · unfold DIIf
    refine bt_fin (c1 := K.DII + 3 * (rG L.sc : ℝ)) (by linarith only [hDII, hr0])
      (by unfold bt_C; linarith only [hr0, hrC, htI1, htI2, hDI, h90]) hNB ?_
    refine bt_real_DII hDII hr0 ?_ A5 ?_
    · exact bt_real_NE hS hN0 O.Np (by positivity)
        (pow_sum_le_pow_eight hS (by positivity) hN1S hr0 H.r hk0.le H.k) O.lb0 O.lb O.SB
    · exact mul_le_of_density_bounds H.cl0 hN0 ha0 hX0 hp0 hpp hNC hc0n hc00 H.pX

theorem rpow_half_sq_eq (s : Scale) : (s.x ^ (Scale.A / 2)) ^ 2 = s.x ^ Scale.A := by
  have hx0 : 0 ≤ s.x := (lt_trans one_pos s.one_lt_alt).le
  rw [← Real.rpow_natCast, ← Real.rpow_mul hx0]
  congr 1
  push_cast
  ring

theorem bt_I (X : Inst D L) (K : Consts) (hK : K.Nonneg) (Ce S Ce9 : ℝ) (H : bt_H D L K Ce S) (h90 : 0 ≤ Ce9) (p : ℕ)
    (t0 : HH D) (O : bt_O L X S p t0) (hpp : L.sc.p0 D.R.k ≤ (p : ℝ)) :
    ((⌈tIf K L p (addOrderOf (hP D p)) (topsPos D p t0) (wPos D p t0 (aL L)) (wPos D p t0 (bL L))⌉₊ : ℕ) : ℝ) ≤
        bt_C K (rG L.sc) Ce9 * ((Nv X p t0 : ℝ) * (L.sc.a / p)) ∧
      (DIf K L p (addOrderOf (hP D p)) : ℝ) ≤ bt_C K (rG L.sc) Ce9 * ((Nv X p t0 : ℝ) * (L.sc.a / p)) := by
  classical
  obtain ⟨hLa0, _, _, htII, hDII, _, _, hDI, htI1, htI2, _, _, _, _, _⟩ := hK
  have hS := H.forty_le_bound
  have hS0 : (0 : ℝ) ≤ S := by linarith only [hS]
  have ha1 := bt_a L.sc
  have ha0 : 0 < L.sc.a := by linarith only [ha1]
  have hr0 : (0 : ℝ) ≤ (rG L.sc : ℝ) := Nat.cast_nonneg _
  have hk5 := bt_k D
  have hk0 : (0 : ℝ) < (D.R.k : ℝ) := by linarith only [hk5]
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast O.hp.two_le
  have hp0 : (0 : ℝ) < p := by linarith only [hp2]
  obtain ⟨hN0, hQ0, hN1S, hNp0⟩ := bt_window_bounds X K Ce S H p t0 O
  obtain ⟨hc0n, hc00, hcG0⟩ := initial_constant_bounds K Ce S H
  have A5 := vertex_density_lower_bound X K Ce S H p t0 O
  have hNB := bt_NB X S hS p t0 O
  have hrC : 0 ≤ K.tII * (rG L.sc : ℝ) := mul_nonneg htII hr0
  have hB0 : 0 ≤ L.sc.a / p := by positivity
  have hE0 : 0 ≤ (L.sc.x ^ (Scale.A / 2)) ^ 2 * ((N1 L.sc : ℝ) ^ 5 + (D.R.k : ℝ) ^ 3) := by positivity
  have hE : (L.sc.x ^ (Scale.A / 2)) ^ 2 * ((N1 L.sc : ℝ) ^ 5 + (D.R.k : ℝ) ^ 3) ≤ S ^ 8 :=
    mul_pow_add_pow_le_pow_eight hS (by rw [rpow_half_sq_eq]; exact H.xA) (by positivity) hN1S hk0.le H.k
  have hDeq : DIf K L p (addOrderOf (hP D p)) = ⌈K.DI * NplusF L.sc (addOrderOf (hP D p)) *
      ((L.sc.x ^ (Scale.A / 2)) ^ 2 * ((N1 L.sc : ℝ) ^ 5 + (D.R.k : ℝ) ^ 3)) * Real.logb p L.sc.a⌉₊ := by
    unfold DIf
    congr 1
    ring
  have hDS : (DIf K L p (addOrderOf (hP D p)) : ℝ) ≤ S ^ 13 := by
    rw [hDeq]
    exact bt_DIS hS hDI H.KDI hNp0 O.NpS hE0 hE O.lb0 O.lb
  constructor
  · refine bt_fin (c1 := 4 + 2 * K.kappaThresholdOne + K.kappaThresholdTwo) (by linarith only [htI1, htI2])
      (by unfold bt_C; linarith only [hr0, hrC, hDII, hDI, h90]) hNB ?_
    unfold tIf c6f
    rw [← vertex_count_eq_card_tops X O.hcl O.hrep]
    refine bt_real_tI htI1 htI2 hN0 ?_ (density_sum_le_two_div ha0 hp0 hk0 (le_trans H.firstLength_le_prime_bound hpp) H.La) ?_ A5
    · refine le_trans (Finset.sum_le_card_nsmul _ _ (2 * (L.sc.a / p)) ?_) ?_
      · intro y hy
        have hyT : y ∈ topsPos D p t0 := (Finset.mem_filter.1 hy).1
        have hyTT : t0 + (y : ℕ) • hP D p ∈ D.host.TT := (Finset.mem_filter.1 hyT).2
        split_ifs
        · linarith only [hB0]
        · refine le_trans (min_le_left _ _) ?_
          have e : wPos D p t0 (bL L) y = L.bT ⟨_, hyTT⟩ := by
            unfold wPos bL
            rw [dif_pos hyTT]
          rw [e]
          have := H.bot ⟨_, hyTT⟩
          linarith only [this, O.bB]
      · rw [nsmul_eq_mul]
        have hc : (((topsPos D p t0).filter (fun y => ¬ IsTypeV y)).card : ℝ) ≤ (Nv X p t0 : ℝ) := by
          rw [vertex_count_eq_card_tops X O.hcl O.hrep]
          exact_mod_cast Finset.card_filter_le _ _
        have := mul_le_mul_of_nonneg_right hc (by linarith only [hB0] : 0 ≤ 2 * (L.sc.a / p))
        linarith only [this]
    · exact bt_real_br hS hQ0 O.Q (by positivity) hDS htI2 H.integral_constant_le_bound hNp0
        (le_trans O.NpS (by
          have := mul_le_mul_of_nonneg_right hS (by linarith : 0 ≤ S)
          linarith [show S * S = S ^ 2 by ring])) hk0.le H.k O.lb0 O.lb hcG0 H.c
        (by positivity) O.nS O.SB
  · rw [hDeq]
    refine bt_fin (c1 := K.DI) hDI (by unfold bt_C; linarith only [hr0, hrC, hDII, htI1, htI2, h90]) hNB ?_
    have := bt_real_NE hS hN0 O.Np hE0 hE O.lb0 O.lb O.SB
    have h2 := mul_le_mul_of_nonneg_left this hDI
    linarith only [h2]

theorem bt_at (X : Inst D L) (K : Consts) (hK : K.Nonneg) (Ce S Ce9 : ℝ) (H : bt_H D L K Ce S) (h90 : 0 ≤ Ce9)
    (h9 : ∀ p : ℕ, p.Prime → (p : ℝ) ≤ L.sc.a →
      (X.ep p : ℝ) ≤ Ce9 * (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * Real.logb p L.sc.a) :
    CornerGLContinuity.CutSizes D L X K (bt_C K (rG L.sc) Ce9) := by
  intro p hpX
  constructor
  · intro t0 ht0
    obtain ⟨O, hNC⟩ := bt_O_of X K Ce S H p hpX t0 ht0
    have hCeq : ∀ C : ℝ, C * (Nv X p t0 : ℝ) * L.sc.a / (p : ℝ) = C * ((Nv X p t0 : ℝ) * (L.sc.a / p)) := by
      intro C; ring
    rw [hCeq]
    unfold tv Dp
    rw [period_eq_addOrderOf O.hcl]
    by_cases hpp : (p : ℝ) < L.sc.p0 D.R.k
    · rw [if_pos hpp, if_pos hpp]
      exact bt_II X K hK Ce S Ce9 H h90 p t0 O hNC hpp
    · rw [if_neg hpp, if_neg hpp]
      exact bt_I X K hK Ce S Ce9 H h90 p t0 O (not_lt.1 hpp)
  · intro hne
    obtain ⟨hp, _, _, _, _⟩ := bt_cand X K _ _ p hne
    obtain ⟨_, _, _, htII, hDII, _, _, hDI, htI1, htI2, _, _, _, _, _⟩ := hK
    have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
    have hlb0 : 0 ≤ Real.logb p L.sc.a := Real.logb_nonneg hp1 (bt_a L.sc).le
    have hr0 : (0 : ℝ) ≤ (rG L.sc : ℝ) := Nat.cast_nonneg _
    have hrC : 0 ≤ K.tII * (rG L.sc : ℝ) := mul_nonneg htII hr0
    have hpa : (p : ℝ) ≤ L.sc.a := by
      have hX0 : 0 < L.sc.X' := by unfold Scale.X'; positivity
      have hb1 : 1 ≤ L.sc.b' := le_trans (one_le_pow₀ (by linarith only [H.forty_le_bound])) H.b'
      unfold Scale.b' at hb1
      have := (one_le_div hX0).1 hb1
      linarith only [this, hpX]
    refine le_trans (h9 p hp hpa) ?_
    have hle : Ce9 ≤ bt_C K (rG L.sc) Ce9 := by unfold bt_C; linarith only [hr0, hrC, hDII, htI1, htI2, hDI]
    have h3 : 0 ≤ (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * Real.logb p L.sc.a := by positivity
    have := mul_le_mul_of_nonneg_right hle h3
    linarith only [this]

theorem bt_rG {eps : ℝ} (Fm : FamP eps) (x : ℝ) (i : Fm.Ix x) :
    rG (Fm.L x i).sc = ⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1 := by
  unfold rG KG hG
  rw [Fm.L_eps]

theorem bt_pw {x : ℝ} (hx : 0 < x) {E w : ℝ} (h : E * Real.log x ≤ w) : x ^ E ≤ Real.exp w := by
  rw [Real.rpow_def_of_pos hx]
  exact Real.exp_le_exp.2 (by linarith)

theorem bt_sq {x : ℝ} (hx : 0 ≤ x) (E : ℝ) : (x ^ (E / 2)) ^ 2 = x ^ E := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul hx]
  congr 1
  push_cast
  ring

theorem bt_loga (s : Scale) : Real.log s.a = Real.log s.x + s.x ^ s.eps := by
  have hx0 : 0 < s.x := lt_trans one_pos s.one_lt_alt
  unfold Scale.a Scale.b Scale.L
  rw [Real.log_mul hx0.ne' (Real.exp_pos _).ne', Real.log_exp]

theorem bt_q {q y : ℝ} (hq : q ^ 2 = y) (h : 3 / 2 ≤ q) : q / 2 ≤ y / 3 := by
  have := mul_le_mul_of_nonneg_right h (by linarith : 0 ≤ q)
  linarith [show q * q = q ^ 2 by ring]

theorem bt_48 {y : ℝ} (h : 48 ≤ y) : 48 * y ≤ y ^ 2 := by
  have := mul_le_mul_of_nonneg_right h (by linarith : 0 ≤ y)
  linarith [show y * y = y ^ 2 by ring]

theorem bt_48' {y : ℝ} (h : 48 ≤ y) : 48 * y ^ 2 ≤ y ^ 3 := by
  have : y ^ 3 = y * y ^ 2 := by ring
  rw [this]
  exact mul_le_mul_of_nonneg_right h (by positivity)



theorem bt_H_of (L : SizeData₂ D) (K : Consts) (hK : K.Nonneg) (Ce : ℝ) (hCe : 0 < Ce) (hsz : SizesAt L)
    (hA : ∀ de x : ℝ, 0 < de → de ≤ 1 → 3 ≤ x →
      (goodG' (rG L.sc) de (hG L.sc) x : ℝ) ≤ Ce * Real.log x / de ∧
      (orbitWindowCount (rG L.sc) de (hG L.sc) x : ℝ) ≤ Ce * Real.log x ∧
      (orbitWindowCount (rG L.sc) de (hG L.sc) x : ℝ) ≤ 20 * (goodG' (rG L.sc) de (hG L.sc) x : ℝ) * de ∧
      ∀ (n' : ℕ) (TT : Finset (Fin n')) (L₂ K : ℕ), 3 * goodG' (rG L.sc) de (hG L.sc) x ≤ n' →
        IsGoodOrbit n' TT L₂ K (rG L.sc) de (hG L.sc) x →
        (n' : ℝ) * de / (Ce * Real.log x) ≤ TT.card ∧ (TT.card : ℝ) ≤ 40 * n' * de)
    (hB : ∀ n' : ℕ, L.sc.x ^ (L.sc.eps / 4) ≤ (n' : ℝ) → 3 * Gp L.sc ≤ n')
    (n1 : 48 ≤ L.sc.x ^ (L.sc.eps / 2)) (n2 : 26 * Real.log L.sc.x ≤ L.sc.x ^ (L.sc.eps / 2))
    (n3 : Ce * Real.log L.sc.x ≤ L.sc.x ^ (L.sc.eps / 24))
    (n4 : (rG L.sc : ℝ) ≤ L.sc.x ^ (L.sc.eps / 2)) (n4' : K.DI ≤ L.sc.x ^ (L.sc.eps / 2))
    (n4'' : K.kappaThresholdTwo ≤ L.sc.x ^ (L.sc.eps / 2)) (n5 : 3 / 2 ≤ L.sc.x ^ (L.sc.eps / 4))
    (n6 : K.La ≤ L.sc.x ^ (1 / 2 : ℝ)) (n6' : Ce * Real.log L.sc.x ≤ L.sc.x ^ (1 / 2 : ℝ))
    (n7 : 120 * (Ce * Real.log L.sc.x) ≤ L.sc.x) (n8 : 37 * Real.log L.sc.x ≤ L.sc.x ^ (L.sc.eps / 3))
    (n9 : 3 ≤ L.sc.x) : bt_H D L K Ce (Real.exp (L.sc.x ^ (L.sc.eps / 2))) := by
  obtain ⟨hN, _, hKk, _, _, _, _, _, hLaS, hRho, hBot, _, _, _, _, _, hDel, _⟩ := hsz
  obtain ⟨hLa0, _⟩ := hK
  have hx1 := L.sc.one_lt_alt
  have hx0 : 0 < L.sc.x := by linarith only [hx1]
  have he := L.sc.eps_pos
  have he2 := L.sc.eps_lt
  have hlx : 0 < Real.log L.sc.x := Real.log_pos hx1
  have hδ0 := J.delta1_pos L.sc
  have hδ1 := J.delta1_le_one L.sc
  obtain ⟨hG', hN1, _, hcnt⟩ := hA L.sc.delta1 L.sc.x hδ0 hδ1 n9
  have hk5 := bt_k D
  generalize hy : L.sc.x ^ (L.sc.eps / 2) = y at *
  have hyS : y ≤ Real.exp y := by linarith only [Real.add_one_le_exp y]
  have hy2 : y ^ 2 = L.sc.x ^ L.sc.eps := by rw [← hy]; exact bt_sq hx0.le _
  have hmono : ∀ E : ℝ, E ≤ L.sc.eps / 2 → L.sc.x ^ E ≤ y := by
    intro E hE
    rw [← hy]
    exact Real.rpow_le_rpow_of_exponent_le hx1.le hE
  have hkx : (D.R.k : ℝ) ≤ L.sc.x ^ (5 : ℝ) := by
    refine le_trans hKk.2 (Real.rpow_le_rpow_of_exponent_le hx1.le ?_)
    unfold szTh
    linarith only [he2]
  have hla := bt_loga L.sc
  have hde : 1 / L.sc.delta1 = L.sc.x ^ (L.sc.eps / 8) := by
    unfold Scale.delta1
    rw [Real.rpow_neg hx0.le, one_div, inv_inv]
  have hy48 : 48 * y ≤ y ^ 2 := bt_48 n1
  have hN1' : (N1 L.sc : ℝ) ≤ Ce * Real.log L.sc.x := hN1
  have hN10 : (0 : ℝ) ≤ (N1 L.sc : ℝ) := Nat.cast_nonneg _
  refine ⟨by linarith only [n1, hyS], mul_pos hCe hlx, ?_, ?_, ?_, ?_, by linarith only [n4, hyS], ?_, ?_, ?_, ?_,
    by linarith only [n4', hyS], by linarith only [n4'', hyS], ?_, ?_, ?_, ?_, hN1', ?_, ?_⟩
  ·
    have := hmono (L.sc.eps / 24) (by linarith only [he])
    linarith only [this, n3, hyS]
  · rw [hde]
    have := hmono (L.sc.eps / 8) (by linarith only [he])
    linarith only [this, hyS]
  · exact le_trans hkx (bt_pw hx0 (by linarith only [n2, hlx]))
  · refine le_trans hN.2 (bt_pw hx0 ?_)
    unfold szTh
    have : (2 + 8 * L.sc.eps + L.sc.eps / 100) * Real.log L.sc.x ≤ 3 * Real.log L.sc.x :=
      mul_le_mul_of_nonneg_right (by linarith only [he2]) hlx.le
    linarith only [this, n2, hlx]
  ·
    rw [hla, ← hy2]
    have h3 := Real.pow_div_factorial_le_exp y (by linarith only [n1]) 3
    have h6 : ((3 : ℕ).factorial : ℝ) = 6 := by norm_num [Nat.factorial]
    rw [h6] at h3
    have h4 : 48 * y ^ 2 ≤ y ^ 3 := bt_48' n1
    linarith only [h3, h4, hy48, n2, hlx, n1]
  ·
    unfold cG
    rw [L.Sc_eq]
    have a1 : (16 : ℝ) ≤ Real.exp (y / 3) := by linarith only [Real.add_one_le_exp (y / 3), n1]
    have a2 : (D.R.k : ℝ) ≤ Real.exp (y / 3) := le_trans hkx (bt_pw hx0 (by linarith only [n2, hlx]))
    have hD0 : (0 : ℝ) ≤ (D.s.Del : ℝ) := le_trans (by positivity) hDel.1
    have a3 : (D.s.Del : ℝ) ≤ Real.exp (y / 3) := by
      rcases hD0.eq_or_lt with h0 | h0
      · rw [← h0]; positivity
      · rw [← Real.exp_log h0]
        apply Real.exp_le_exp.2
        refine le_trans hDel.2.2.1 ?_
        have hq : (L.sc.x ^ (L.sc.eps / 4)) ^ 2 = y := by
          rw [← hy, ← bt_sq hx0.le (L.sc.eps / 2)]
          congr 2
          ring
        exact bt_q hq n5
    have e : Real.exp y = Real.exp (y / 3) * Real.exp (y / 3) * Real.exp (y / 3) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [e]
    have := mul_le_mul (mul_le_mul a1 a2 (by positivity) (by positivity)) a3 hD0 (by positivity)
    linarith only [this]
  · exact bt_pw hx0 (by unfold Scale.A; linarith only [n2])
  ·
    unfold Scale.X'
    rw [← Real.exp_nat_mul]
    apply Real.exp_le_exp.2
    have g1 : (Gp L.sc : ℝ) ≤ L.sc.x ^ (L.sc.eps / 24) * L.sc.x ^ (L.sc.eps / 8) := by
      have : (Gp L.sc : ℝ) ≤ Ce * Real.log L.sc.x / L.sc.delta1 := hG'
      rw [div_eq_mul_one_div, hde] at this
      exact le_trans this (mul_le_mul_of_nonneg_right n3 (by positivity))
    have g2 := mul_le_mul_of_nonneg_right g1 (Real.rpow_nonneg hx0.le (L.sc.eps / 3))
    rw [← Real.rpow_add hx0, ← Real.rpow_add hx0] at g2
    have e : L.sc.eps / 24 + L.sc.eps / 8 + L.sc.eps / 3 = L.sc.eps / 2 := by ring
    rw [e, hy] at g2
    exact g2
  ·
    rw [← Real.exp_nat_mul]
    unfold Scale.b' Scale.a Scale.b Scale.L Scale.X'
    rw [le_div_iff₀ (Real.exp_pos _), ← Real.exp_add]
    have h1 : Real.exp (((20 : ℕ) : ℝ) * y + L.sc.x ^ (L.sc.eps / 3)) ≤ Real.exp (L.sc.x ^ L.sc.eps) := by
      apply Real.exp_le_exp.2
      have := hmono (L.sc.eps / 3) (by linarith only [he])
      rw [← hy2]
      push_cast
      linarith only [this, hy48, n1]
    have h2 : Real.exp (L.sc.x ^ L.sc.eps) ≤ L.sc.x * Real.exp (L.sc.x ^ L.sc.eps) :=
      le_mul_of_one_le_left (Real.exp_pos _).le hx1.le
    exact le_trans h1 h2
  ·
    unfold La
    generalize hz : L.sc.x ^ (1 / 2 : ℝ) = z at *
    have hz2 : z ^ 2 = L.sc.x := by
      rw [← hz]
      have := bt_sq hx0.le 1
      rwa [Real.rpow_one] at this
    have hz0 : 0 ≤ z := by rw [← hz]; positivity
    have hN1z : (N1 L.sc : ℝ) ≤ z := le_trans hN1' n6'
    have hlaz : Real.log L.sc.a ≤ 2 * z ^ 2 := by
      rw [hla, hz2]
      have h1 := Real.log_le_self hx0.le
      have h2 : L.sc.x ^ L.sc.eps ≤ L.sc.x ^ (1 : ℝ) :=
        Real.rpow_le_rpow_of_exponent_le hx1.le (by linarith only [he2])
      rw [Real.rpow_one] at h2
      linarith only [h1, h2]
    have hla0 : 0 ≤ Real.log L.sc.a := Real.log_nonneg (bt_a L.sc).le
    have h1 : (N1 L.sc : ℝ) * (K.La * (N1 L.sc : ℝ) ^ 2 * Real.log L.sc.a) ≤ z * (z * z ^ 2 * (2 * z ^ 2)) :=
      mul_le_mul hN1z (mul_le_mul (mul_le_mul n6 (pow_le_pow_left₀ hN10 hN1z 2) (by positivity) hz0) hlaz hla0
        (by positivity)) (by positivity) hz0
    have h2 : L.sc.x ^ (4 : ℝ) ≤ (D.R.k : ℝ) := by
      refine le_trans (Real.rpow_le_rpow_of_exponent_le hx1.le ?_) hKk.1
      unfold szTh
      linarith only [he]
    have h3 : L.sc.x ^ (4 : ℝ) = z ^ 8 := by
      rw [← hz2]
      have : ((4 : ℝ)) = ((4 : ℕ) : ℝ) := by norm_num
      rw [this, Real.rpow_natCast]
      ring
    have h4 : 2 * z ^ 6 ≤ z ^ 8 := by
      have : z ^ 8 = z ^ 2 * z ^ 6 := by ring
      rw [this, hz2]
      exact mul_le_mul_of_nonneg_right (by linarith only [n9]) (by positivity)
    have h5 : z * (z * z ^ 2 * (2 * z ^ 2)) = 2 * z ^ 6 := by ring
    linarith only [h1, h2, h3, h4, h5]
  ·
    unfold Scale.p0
    have h1 : L.sc.x ^ (1 / 2 : ℝ) ≤ L.sc.x ^ Scale.A :=
      Real.rpow_le_rpow_of_exponent_le hx1.le (by unfold Scale.A; norm_num)
    have h2 : (1 : ℝ) ≤ (D.R.k : ℝ) ^ 2 := one_le_pow₀ (by linarith only [hk5])
    have h3 := le_mul_of_one_le_left (Real.rpow_nonneg hx0.le Scale.A) h2
    linarith only [hN1', n6', h1, h3]
  ·
    unfold Scale.p0 Scale.X' Scale.A
    have h1 : (D.R.k : ℝ) ^ 2 ≤ L.sc.x ^ (10 : ℝ) := by
      have := pow_le_pow_left₀ (by linarith only [hk5]) hkx 2
      have e : (L.sc.x ^ (5 : ℝ)) ^ 2 = L.sc.x ^ (10 : ℝ) := by
        have := bt_sq hx0.le 10
        rw [← this]
        norm_num
      rwa [e] at this
    have h2 : 120 * (Ce * Real.log L.sc.x) * ((D.R.k : ℝ) ^ 2 * L.sc.x ^ (26 : ℝ)) ≤
        L.sc.x ^ (1 : ℝ) * (L.sc.x ^ (10 : ℝ) * L.sc.x ^ (26 : ℝ)) := by
      rw [Real.rpow_one]
      exact mul_le_mul n7 (mul_le_mul_of_nonneg_right h1 (by positivity)) (by positivity) hx0.le
    rw [← Real.rpow_add hx0, ← Real.rpow_add hx0] at h2
    refine le_trans h2 (bt_pw hx0 ?_)
    norm_num
    linarith only [n8]
  ·
    intro t
    refine le_trans (hBot t) ?_
    have hb0 : 0 ≤ L.sc.b' := by unfold Scale.b' Scale.X'; have := bt_a L.sc; positivity
    have hLaG : 0 ≤ L.LaG := le_trans (by positivity) hLaS.1
    have hk0 : (0 : ℝ) < (D.R.k : ℝ) := by linarith only [hk5]
    have h2 : 0 ≤ L.sc.x ^ szTh L * Real.log L.sc.x * L.LaG / D.R.k := by positivity
    have h3 : L.sc.x ^ (-2 : ℝ) ≤ 1 := Real.rpow_le_one_of_one_le_of_nonpos hx1.le (by norm_num)
    have h4 : szNst L * L.sc.x ^ L.sc.eps * L.LaG / D.R.k ≤ 1 := by
      unfold SizeRho at hRho
      have e : 4 * szNst L * L.sc.x ^ L.sc.eps * L.LaG / D.R.k = 4 * (szNst L * L.sc.x ^ L.sc.eps * L.LaG / D.R.k) := by
        ring
      have h5 : 0 ≤ szNst L * L.sc.x ^ L.sc.eps * L.LaG / D.R.k := by unfold szNst; positivity
      linarith only [hRho, e, h2, h3, h5]
    have e : szNst L * L.sc.x ^ L.sc.eps * L.LaG * L.sc.b' / D.R.k =
        (szNst L * L.sc.x ^ L.sc.eps * L.LaG / D.R.k) * L.sc.b' := by ring
    rw [e]
    have := mul_le_mul_of_nonneg_right h4 hb0
    linarith only [this]
  · intro n' TT hn hg
    exact hcnt n' TT _ _ (hB n' hn) hg

theorem bt_hG {eps : ℝ} (Fm : FamP eps) (x : ℝ) (i : Fm.Ix x) : hG (Fm.L x i).sc = 2 + 8 * eps := by
  unfold hG
  rw [Fm.L_eps]

theorem bt_H_ev {eps : ℝ} (Fm : FamP eps) : ∃ Ce x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
    bt_H (Fm.D x i) (Fm.L x i) Fm.GK Ce (Real.exp ((Fm.L x i).sc.x ^ ((Fm.L x i).sc.eps / 2))) := by
  have he := family_eps_pos Fm
  have he2 := family_eps_lt Fm
  obtain ⟨i0⟩ := Fm.Ix_zero
  obtain ⟨hA0, hB0⟩ := master_orbit_sizes_hold (Fm.D 0 i0)
  obtain ⟨Ce, hCe, hA⟩ := hA0 (⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1) (2 + 8 * eps) (by omega) (by positivity)
  obtain ⟨xB, hB⟩ := hB0 eps he he2
  have ev := (const_le_rpow_eventually 48 (eps / 2) (by positivity)).and <| (mul_log_le_rpow_eventually_alt 26 (eps / 2) (by positivity)).and <|
    (mul_log_le_rpow_eventually_alt Ce (eps / 24) (by positivity)).and <|
    (const_le_rpow_eventually ((⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1 : ℕ) : ℝ) (eps / 2) (by positivity)).and <|
    (const_le_rpow_eventually Fm.GK.DI (eps / 2) (by positivity)).and <| (const_le_rpow_eventually Fm.GK.kappaThresholdTwo (eps / 2) (by positivity)).and <|
    (const_le_rpow_eventually (3 / 2) (eps / 4) (by positivity)).and <| (const_le_rpow_eventually Fm.GK.La (1 / 2) (by norm_num)).and <|
    (mul_log_le_rpow_eventually_alt Ce (1 / 2) (by norm_num)).and <| (mul_log_le_rpow_eventually_alt (120 * Ce) 1 (by norm_num)).and <|
    (mul_log_le_rpow_eventually_alt 37 (eps / 3) (by positivity)).and <| (Filter.eventually_ge_atTop 3).and <|
    (Filter.eventually_ge_atTop xB).and (Filter.eventually_gt_atTop Fm.x1)
  obtain ⟨x0, hx0⟩ := Filter.eventually_atTop.1 ev
  refine ⟨Ce, x0, fun x hx i => ?_⟩
  obtain ⟨n1, n2, n3, n4, n4', n4'', n5, n6, n6', n7, n8, n9, hxB, hx1⟩ := hx0 x hx
  have hX := Fm.L_x x i hx1
  have hE := Fm.L_eps x i
  refine bt_H_of (Fm.L x i) Fm.GK Fm.GK_nonneg Ce hCe (Fm.sizes x hx1 i) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · rw [bt_rG, bt_hG]
    exact hA
  · intro n' hn
    unfold Gp Scale.delta1
    rw [bt_rG, bt_hG, hX, hE]
    rw [hX, hE] at hn
    exact hB x hxB n' hn
  · rw [hX, hE]; exact n1
  · rw [hX, hE]; exact n2
  · rw [hX, hE]; exact n3
  · rw [bt_rG, hX, hE]; exact n4
  · rw [hX, hE]; exact n4'
  · rw [hX, hE]; exact n4''
  · rw [hX, hE]; exact n5
  · rw [hX]; exact n6
  · rw [hX]; exact n6'
  · rw [hX]
    rw [Real.rpow_one] at n7
    linarith only [n7]
  · rw [hX, hE]; exact n8
  · rw [hX]; exact n9

section Places

open NumberField IsDedekindDomain

theorem bt_resChar_iff (D : D7) (l : ℕ) (hl : l.Prime) (w : D.what₂.places.Pl) :
    D.what₂.places.resChar w = l ↔ (l : 𝓞 D.what₂.LL) ∈ (D.plEq w).asIdeal := by
  constructor
  · intro h; rw [← h]; exact resChar_mem D w
  · intro hmem
    by_contra hne
    have h1 := resChar_mem D w
    have hcop : Nat.Coprime (D.what₂.places.resChar w) l :=
      (Nat.coprime_primes (D.what₂.places.resChar_prime w) hl).mpr hne
    obtain ⟨a, b, hab⟩ : ∃ a b : ℤ, a * (D.what₂.places.resChar w : ℤ) + b * (l : ℤ) = 1 := by
      refine ⟨Nat.gcdA (D.what₂.places.resChar w) l, Nat.gcdB (D.what₂.places.resChar w) l, ?_⟩
      have := Nat.gcd_eq_gcd_ab (D.what₂.places.resChar w) l
      rw [hcop] at this
      push_cast at this
      linarith
    have h1' : (1 : 𝓞 D.what₂.LL) ∈ (D.plEq w).asIdeal := by
      have : ((a * (D.what₂.places.resChar w : ℤ) + b * (l : ℤ) : ℤ) : 𝓞 D.what₂.LL) ∈ (D.plEq w).asIdeal := by
        push_cast
        exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h1) (Ideal.mul_mem_left _ _ hmem)
      rwa [hab, Int.cast_one] at this
    exact (D.plEq w).isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr h1')

theorem bt_exists_ovr (D : D7) (p : ℕ) (hp : p.Prime) :
    ∃ S : Finset D.what₂.places.Pl, ∀ w, w ∈ S ↔ D.what₂.places.resChar w = p := by
  classical
  obtain ⟨S, hS⟩ := finite_places_over (K := D.what₂.LL) p hp
  refine ⟨S.map D.plEq.symm.toEmbedding, fun w => ?_⟩
  rw [Finset.mem_map_equiv, Equiv.symm_symm, hS, bt_resChar_iff D p hp]

theorem logWeight_nonneg₂ {D : D7} (w : D.what₂.places.Pl) : 0 ≤ SizeData₂.lwP w := by
  unfold SizeData₂.lwP lw
  exact div_nonneg (Real.log_natCast_nonneg _) (Nat.cast_nonneg _)

theorem bt_sum_by_prime {D : D7} (S : Finset D.what₂.places.Pl) (h : ℕ → ℝ) (h0 : ∀ p, 0 ≤ h p) :
    ∑ w ∈ S, SizeData₂.lwP w * (D.what₂.places.ramIdx w : ℝ) * h (D.what₂.places.resChar w) ≤
      ∑ p ∈ S.image D.what₂.places.resChar, Real.log (p : ℝ) * h p := by
  classical
  rw [← Finset.sum_fiberwise_of_maps_to (g := D.what₂.places.resChar) (t := S.image D.what₂.places.resChar)
    (fun w hw => Finset.mem_image_of_mem _ hw)]
  refine Finset.sum_le_sum fun p hp => ?_
  obtain ⟨w0, _, hw0⟩ := Finset.mem_image.1 hp
  have hpp : p.Prime := hw0 ▸ D.what₂.places.resChar_prime w0
  obtain ⟨Sp, hSp⟩ := bt_exists_ovr D p hpp
  have e1 : ∑ w ∈ S.filter (fun w => D.what₂.places.resChar w = p),
      SizeData₂.lwP w * (D.what₂.places.ramIdx w : ℝ) * h (D.what₂.places.resChar w) =
      (∑ w ∈ S.filter (fun w => D.what₂.places.resChar w = p), SizeData₂.lwP w * (D.what₂.places.ramIdx w : ℝ)) * h p := by
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun w hw => ?_
    rw [(Finset.mem_filter.1 hw).2]
  rw [e1]
  refine mul_le_mul_of_nonneg_right ?_ (h0 p)
  rw [← factEtaMean D p hpp Sp hSp]
  exact Finset.sum_le_sum_of_subset_of_nonneg (fun w hw => (hSp w).2 (Finset.mem_filter.1 hw).2)
    fun w _ _ => mul_nonneg (logWeight_nonneg₂ w) (Nat.cast_nonneg _)

end Places

theorem tauP_nonneg (X : Inst D L) (K : Consts) (a b : HH D → ℤ) (p : ℕ) : 0 ≤ tauP X K a b p := by
  classical
  unfold tauP
  split_ifs
  · exact le_refl _
  · exact add_nonneg (Nat.cast_nonneg _) (Finset.sum_nonneg fun t0 _ => by positivity)

theorem bt_sumNv (X : Inst D L) (p : ℕ) (s : Finset (HH D)) :
    ∑ t0 ∈ s, (Nv X p t0 : ℝ) ≤ (D.host.TT.card : ℝ) := by
  classical
  have h : ∑ t0 ∈ s, Nv X p t0 ≤ D.host.TT.card := by
    unfold Nv topsOn
    rw [Finset.sum_card_fiberwise_eq_card_filter]
    exact Finset.card_filter_le _ _
  exact_mod_cast h

theorem bt_tau_pt (X : Inst D L) (K : Consts) (C : ℝ) (hC : 0 ≤ C) (hT : CornerGLContinuity.CutSizes D L X K C)
    (hNB : ∀ p t0, t0 ∈ VV X K (aL L) (bL L) p → 1 ≤ (Nv X p t0 : ℝ) * (L.sc.a / p)) (p : ℕ)
    (hne : VV X K (aL L) (bL L) p ≠ ∅) :
    Real.log p * tauP X K (aL L) (bL L) p ≤ C * D.R.f * (D.R.k : ℝ) ^ 2 * Real.log L.sc.a +
      (2 * C + 1) * D.R.m * (D.host.TT.card : ℝ) * L.sc.a * (Real.log p / p) := by
  classical
  obtain ⟨hp, hpX, _, _, _⟩ := bt_cand X K _ _ p hne
  obtain ⟨h1, h2⟩ := hT p hpX
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hp0 : (0 : ℝ) < p := by linarith only [hp1]
  have hlp : 0 < Real.log p := Real.log_pos hp1
  have ha0 : 0 < L.sc.a := lt_trans one_pos (bt_a L.sc)
  unfold tauP
  rw [if_neg hne]
  have e1 : ∑ t0 ∈ VV X K (aL L) (bL L) p,
      (D.R.m : ℝ) * ((⌈tv X K (aL L) (bL L) p t0⌉₊ : ℝ) + (Dp K L p : ℝ) + 1) ≤
      ∑ t0 ∈ VV X K (aL L) (bL L) p, (D.R.m : ℝ) * ((2 * C + 1) * (L.sc.a / p)) * (Nv X p t0 : ℝ) := by
    refine Finset.sum_le_sum fun t0 ht0 => ?_
    obtain ⟨a1, a2⟩ := h1 t0 ht0
    have a3 := hNB p t0 ht0
    have e : C * (Nv X p t0 : ℝ) * L.sc.a / (p : ℝ) = C * ((Nv X p t0 : ℝ) * (L.sc.a / p)) := by ring
    rw [e] at a1 a2
    have : (⌈tv X K (aL L) (bL L) p t0⌉₊ : ℝ) + (Dp K L p : ℝ) + 1 ≤ (2 * C + 1) * (L.sc.a / p) * (Nv X p t0 : ℝ) := by
      linarith only [a1, a2, a3]
    have := mul_le_mul_of_nonneg_left this (Nat.cast_nonneg (α := ℝ) D.R.m)
    linarith only [this]
  have e1' : ∑ t0 ∈ VV X K (aL L) (bL L) p,
      (D.R.m : ℝ) * ((⌈tv X K (aL L) (bL L) p t0⌉₊ : ℝ) + (Dp K L p : ℝ) + 1) ≤
      (D.R.m : ℝ) * ((2 * C + 1) * (L.sc.a / p)) * ∑ t0 ∈ VV X K (aL L) (bL L) p, (Nv X p t0 : ℝ) := by
    rw [Finset.mul_sum]
    exact e1
  have e2 := bt_sumNv X p (VV X K (aL L) (bL L) p)
  have e3 : (D.R.m : ℝ) * ((2 * C + 1) * (L.sc.a / p)) * ∑ t0 ∈ VV X K (aL L) (bL L) p, (Nv X p t0 : ℝ) ≤
      (D.R.m : ℝ) * ((2 * C + 1) * (L.sc.a / p)) * (D.host.TT.card : ℝ) :=
    mul_le_mul_of_nonneg_left e2 (by positivity)
  have e4 := h2 hne
  have e5 : Real.log p * Real.logb p L.sc.a = Real.log L.sc.a := by
    unfold Real.logb
    field_simp
  have e6 := mul_le_mul_of_nonneg_left (add_le_add e4 (le_trans e1' e3)) hlp.le
  refine le_trans e6 (le_of_eq ?_)
  rw [mul_add]
  congr 1
  · rw [← e5]; ring
  · ring


open Classical in
theorem bt_Ta_at (X : Inst D L) (K : Consts) (C : ℝ) (hC : 0 ≤ C) (hM : CornerGLContinuity.MertensBound D)
    (hF : ∀ w, L.tau w = tauP X K (aL L) (bL L) (D.what₂.places.resChar w)) (hT : CornerGLContinuity.CutSizes D L X K C)
    (hNB : ∀ p t0, t0 ∈ VV X K (aL L) (bL L) p → 1 ≤ (Nv X p t0 : ℝ) * (L.sc.a / p)) :
    CornerGLContinuity.WeightSumBound D L (4 * (2 * C + 1)) (2 * (C * D.R.f * (D.R.k : ℝ) ^ 2 * Real.log L.sc.a * (⌈L.sc.X'⌉₊ : ℝ))) := by
  unfold CornerGLContinuity.WeightSumBound
  have ha1 := bt_a L.sc
  have ha0 : 0 < L.sc.a := lt_trans one_pos ha1
  have hla0 : 0 ≤ Real.log L.sc.a := Real.log_nonneg ha1.le
  have hX1 : (1 : ℝ) ≤ L.sc.X' := by
    unfold Scale.X'
    exact Real.one_le_exp (Real.rpow_nonneg (lt_trans one_pos L.sc.one_lt_alt).le _)
  set A : ℝ := C * D.R.f * (D.R.k : ℝ) ^ 2 * Real.log L.sc.a with hA
  set Bc : ℝ := (2 * C + 1) * D.R.m * (D.host.TT.card : ℝ) * L.sc.a with hBc
  have hA0 : 0 ≤ A := by rw [hA]; positivity
  have hB0 : 0 ≤ Bc := by rw [hBc]; positivity
  set P' : Finset ℕ := (Finset.range ⌈L.sc.X'⌉₊).filter Nat.Prime with hP'
  have s1 : ∑ w ∈ L.supp, SizeData₂.sz w (L.tau w) = 2 * ∑ w ∈ L.supp, SizeData₂.lwP w * (D.what₂.places.ramIdx w : ℝ) *
      tauP X K (aL L) (bL L) (D.what₂.places.resChar w) := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun w _ => ?_
    unfold SizeData₂.sz
    rw [hF w]
    ring
  have s2 := bt_sum_by_prime L.supp (fun p => tauP X K (aL L) (bL L) p) (fun p => tauP_nonneg X K _ _ p)
  have hf0 : ∀ p : ℕ, 0 ≤ A + Bc * (Real.log p / p) := fun p =>
    add_nonneg hA0 (mul_nonneg hB0 (div_nonneg (Real.log_natCast_nonneg p) (Nat.cast_nonneg p)))
  have hpt : ∀ p : ℕ, Real.log p * tauP X K (aL L) (bL L) p ≤ if p ∈ P' then A + Bc * (Real.log p / p) else 0 := by
    intro p
    by_cases hne : VV X K (aL L) (bL L) p = ∅
    · have : tauP X K (aL L) (bL L) p = 0 := by unfold tauP; rw [if_pos hne]
      rw [this, mul_zero]
      split_ifs
      · exact hf0 p
      · exact le_refl _
    · obtain ⟨hp, hpX, _, _, _⟩ := bt_cand X K _ _ p hne
      have hm : p ∈ P' := by
        rw [hP', Finset.mem_filter, Finset.mem_range]
        exact ⟨Nat.lt_ceil.2 hpX, hp⟩
      rw [if_pos hm]
      exact bt_tau_pt X K C hC hT hNB p hne
  have s3 : ∑ p ∈ L.supp.image D.what₂.places.resChar, Real.log (p : ℝ) * tauP X K (aL L) (bL L) p ≤
      ∑ p ∈ P', (A + Bc * (Real.log p / p)) := by
    refine le_trans (Finset.sum_le_sum fun p _ => hpt p) ?_
    rw [Finset.sum_ite_mem]
    exact Finset.sum_le_sum_of_subset_of_nonneg Finset.inter_subset_right (fun p _ _ => hf0 p)
  have s4 : ∑ p ∈ P', (A + Bc * (Real.log p / p)) ≤ (⌈L.sc.X'⌉₊ : ℝ) * A + Bc * (2 * Real.log L.sc.X') := by
    rw [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul, ← Finset.mul_sum]
    have c1 : (P'.card : ℝ) ≤ (⌈L.sc.X'⌉₊ : ℝ) := by
      have := Finset.card_filter_le (Finset.range ⌈L.sc.X'⌉₊) Nat.Prime
      rw [Finset.card_range] at this
      exact_mod_cast this
    exact add_le_add (mul_le_mul_of_nonneg_right c1 hA0) (mul_le_mul_of_nonneg_left (hM L.sc.X' hX1) hB0)
  rw [s1]
  have e : 4 * (2 * C + 1) * D.R.m * (D.host.TT.card : ℝ) * L.sc.a * Real.log L.sc.X' = 2 * (Bc * (2 * Real.log L.sc.X')) := by
    rw [hBc]; ring
  rw [e]
  linarith only [s2, s3, s4]

theorem bt_X'S (s : Scale) : s.X' ≤ Real.exp (s.x ^ (s.eps / 2)) := by
  unfold Scale.X'
  apply Real.exp_le_exp.2
  exact Real.rpow_le_rpow_of_exponent_le s.one_lt_alt.le (by have := s.eps_pos; linarith)

theorem bt_bo {S C f n k la X c : ℝ} (hS : 40 ≤ S) (hC : C ≤ S) (hf : f = 2 * n) (hn0 : 0 ≤ n) (hn : n ≤ S)
    (hk0 : 0 ≤ k) (hk : k ≤ S) (hl0 : 0 ≤ la) (hl : 2 * la ≤ S) (hX : X ≤ S) (hc0 : 0 ≤ c)
    (hc : c ≤ X + 1) : 2 * (C * f * k ^ 2 * la * c) ≤ S ^ 8 := by
  have hS0 : (0 : ℝ) ≤ S := by linarith
  have h1 : C * f * k ^ 2 * la * c ≤ S * (2 * S) * S ^ 2 * S * (2 * S) := by
    have hf' : f ≤ 2 * S := by rw [hf]; linarith
    have hf0 : 0 ≤ f := by rw [hf]; linarith
    exact mul_le_mul (mul_le_mul (mul_le_mul (mul_le_mul hC hf' hf0 hS0) (pow_le_pow_left₀ hk0 hk 2) (by positivity)
      (by positivity)) (by linarith) hl0 (by positivity)) (by linarith) hc0 (by positivity)
  have c6 := bt_chain hS 6
  norm_num at c6
  have p7 : S ^ 7 ≤ S ^ 8 := pow_le_pow_right₀ (by linarith) (by norm_num)
  have e : S * (2 * S) * S ^ 2 * S * (2 * S) = 4 * S ^ 6 := by ring
  have : 0 < S ^ 6 := by positivity
  linarith

theorem stmtFTa_proved {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyWeightSum Fm := by
  rintro hM ⟨C, xT, hT⟩
  have he := family_eps_pos Fm
  obtain ⟨Ce, xH, hH⟩ := bt_H_ev Fm
  obtain ⟨xC, hxC⟩ := Filter.eventually_atTop.1
    ((const_le_rpow_eventually (max C 0) (eps / 2) (by positivity)).and (Filter.eventually_gt_atTop Fm.x1))
  refine ⟨4 * (2 * max C 0 + 1), max (max xT xH) xC, fun x => 8 * x ^ (-(eps / 2)), ?_, fun x hx i => ?_⟩
  · have := (tendsto_rpow_neg_atTop (y := eps / 2) (by positivity)).const_mul 8
    simpa using this
  have hxT : xT ≤ x := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hx
  have hxH : xH ≤ x := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hx
  obtain ⟨hCy, hx1⟩ := hxC x (le_trans (le_max_right _ _) hx)
  have H := hH x hxH i
  have hX := Fm.L_x x i hx1
  have hE := Fm.L_eps x i
  have hx0 : 0 < x := lt_trans (lt_trans one_pos Fm.one_lt_family_threshold) hx1
  have ha1 := bt_a (Fm.L x i).sc

  have hT' : CornerGLContinuity.CutSizes (Fm.D x i) (Fm.L x i) (Fm.Gx x i) Fm.GK (max C 0) := by
    intro p hpX
    obtain ⟨h1, h2⟩ := hT x hxT i p hpX
    have hle : C ≤ max C 0 := le_max_left _ _
    refine ⟨fun t0 ht0 => ?_, fun hne => ?_⟩
    · obtain ⟨a1, a2⟩ := h1 t0 ht0
      have hz : 0 ≤ ((Nv (Fm.Gx x i) p t0 : ℝ)) * (Fm.L x i).sc.a / (p : ℝ) := by
        have : 0 < (Fm.L x i).sc.a := lt_trans one_pos ha1
        positivity
      have := mul_le_mul_of_nonneg_right hle hz
      have e : ∀ c : ℝ, c * (Nv (Fm.Gx x i) p t0 : ℝ) * (Fm.L x i).sc.a / (p : ℝ) =
          c * ((Nv (Fm.Gx x i) p t0 : ℝ) * (Fm.L x i).sc.a / (p : ℝ)) := fun c => by ring
      rw [e] at a1 a2 ⊢
      exact ⟨le_trans a1 this, le_trans a2 this⟩
    · obtain ⟨hp, _, _, _, _⟩ := bt_cand (Fm.Gx x i) Fm.GK _ _ p hne
      have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
      have hz : 0 ≤ ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a :=
        mul_nonneg (by positivity) (Real.logb_nonneg hp1 ha1.le)
      have := mul_le_mul_of_nonneg_right hle hz
      have h3 := h2 hne
      linarith only [this, h3]
  have hNB : ∀ p t0, t0 ∈ VV (Fm.Gx x i) Fm.GK (aL (Fm.L x i)) (bL (Fm.L x i)) p →
      1 ≤ (Nv (Fm.Gx x i) p t0 : ℝ) * ((Fm.L x i).sc.a / p) := by
    intro p t0 ht0
    obtain ⟨_, hpX, _, _, _⟩ := bt_cand (Fm.Gx x i) Fm.GK _ _ p (Finset.ne_empty_of_mem ht0)
    exact bt_NB _ _ H.forty_le_bound p t0 (bt_O_of _ _ Ce _ H p hpX t0 ht0).1
  have hmain := bt_Ta_at (Fm.Gx x i) Fm.GK (max C 0) (le_max_right _ _) (hM x i)
    (fun w => (Fm.fills x hx1 i w).2.2.2.2.1) hT' hNB
  unfold CornerGLContinuity.WeightSumBound at hmain ⊢
  refine le_trans hmain (add_le_add le_rfl ?_)
  beta_reduce

  have hb : (Fm.L x i).sc.b ^ (8 * x ^ (-(eps / 2))) = Real.exp ((Fm.L x i).sc.x ^ ((Fm.L x i).sc.eps / 2)) ^ 8 := by
    unfold Scale.b Scale.L
    rw [hX, hE, ← Real.exp_mul, ← Real.exp_nat_mul]
    congr 1
    have : x ^ eps = x ^ (eps / 2) * x ^ (eps / 2) := by
      rw [← Real.rpow_add hx0]; congr 1; ring
    rw [this, Real.rpow_neg hx0.le]
    have hne : x ^ (eps / 2) ≠ 0 := (Real.rpow_pos_of_pos hx0 _).ne'
    field_simp
    push_cast
    ring
  rw [hb]
  have hX1 : (1 : ℝ) ≤ (Fm.L x i).sc.X' := by
    unfold Scale.X'
    exact Real.one_le_exp (Real.rpow_nonneg (lt_trans one_pos (Fm.L x i).sc.one_lt_alt).le _)
  refine bt_bo H.forty_le_bound ?_ (n := ((Fm.D x i).R.n : ℝ)) ?_ (Nat.cast_nonneg _) H.n (Nat.cast_nonneg _) H.k
    (Real.log_nonneg ha1.le) H.la (bt_X'S _) (Nat.cast_nonneg _) (Nat.ceil_lt_add_one (by linarith only [hX1])).le
  · rw [hX, hE]
    linarith only [hCy, Real.add_one_le_exp (x ^ (eps / 2))]
  · unfold Ranks.f
    push_cast
    ring

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

open scoped BigOperators

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

section Large

variable {D : D7} {L : SizeData₂ D}

theorem x_pos₂ (s : Scale) : 0 < s.x := lt_trans one_pos s.one_lt_alt

theorem one_le_b₂ (s : Scale) : 1 ≤ s.b := by
  unfold Scale.b Scale.L
  exact Real.one_le_exp (Real.rpow_nonneg (x_pos₂ s).le _)

theorem scale_b'_nonneg₂ (s : Scale) : 0 ≤ s.b' := by
  unfold Scale.b' Scale.X'
  exact div_nonneg (le_trans zero_le_one (_root_.Formalism.MainNotions.G.TopChoiceBounds.bt_a s).le) (Real.exp_pos _).le

theorem w''_nonneg₂ (s : Scale) (n : ℕ) : 0 ≤ s.w'' n := by
  unfold Scale.w''
  exact div_nonneg (scale_b'_nonneg₂ s) (mul_nonneg (x_pos₂ s).le (Nat.cast_nonneg n))

theorem bl_Nm_le_Sc (P : ParameterChoice' D L) : (5 : ℝ) ≤ (D.R.k : ℝ) ∧ (D.R.N D.R.m : ℝ) ≤ L.Sc ∧ 100 ≤ L.Sc := by
  have hm : (2 : ℝ) ≤ (D.R.m : ℝ) := by exact_mod_cast D.R.two_le_m
  have hk : (5 : ℝ) ≤ (D.R.k : ℝ) := by
    have := D.R.m_add_three_le_k
    have h2 := D.R.two_le_m
    exact_mod_cast (by omega : 5 ≤ D.R.k)
  have hNk : (D.R.k : ℝ) ≤ (D.R.N D.R.m : ℝ) := by
    have : D.R.k ≤ D.R.N D.R.m := by unfold Ranks.N; omega
    exact_mod_cast this
  have h := P.Del_ge.2.2.2
  have hm10 : (1 : ℝ) ≤ (D.R.m : ℝ) ^ 10 := one_le_pow₀ (by linarith)
  have hN0 : (0 : ℝ) ≤ (D.R.N D.R.m : ℝ) := Nat.cast_nonneg _
  have hND : (D.R.N D.R.m : ℝ) ≤ (D.s.Del : ℝ) := by
    have := mul_le_mul_of_nonneg_left hm10 hN0
    linarith
  have hD : (5 : ℝ) ≤ (D.s.Del : ℝ) := by linarith
  have hkD : 5 * (D.s.Del : ℝ) ≤ (D.R.k : ℝ) * (D.s.Del : ℝ) := mul_le_mul_of_nonneg_right hk (by linarith)
  refine ⟨hk, ?_, ?_⟩ <;> rw [L.Sc_eq] <;> linarith

theorem kappa_le_Sc (P : ParameterChoice' D L) (j : ℕ) (hj : j ∈ SizeData₂.lifts D) : kaJ D j ≤ L.Sc := by
  obtain ⟨hk, hN, _⟩ := bl_Nm_le_Sc P
  have hj2 : (j : ℝ) ≤ (D.R.m : ℝ) := by exact_mod_cast (Finset.mem_Icc.1 hj).2
  have hNe : (D.R.N D.R.m : ℝ) = (D.R.k : ℝ) + (D.R.m : ℝ) * ((D.R.t : ℝ) + 1) := by
    unfold Ranks.N; push_cast; ring
  have ht : (0 : ℝ) ≤ (D.R.t : ℝ) + 1 := by positivity
  have h1 := mul_le_mul_of_nonneg_right hj2 ht
  unfold kaJ
  linarith

theorem w''_le₂ (s : Scale) (n : ℕ) (hn : 1 ≤ n) : s.w'' n ≤ s.b' / s.x ∧ s.b' / s.x ≤ s.b' := by
  have hx := x_pos₂ s
  have hn' : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hb := scale_b'_nonneg₂ s
  constructor
  · unfold Scale.w''
    apply div_le_div_of_nonneg_left hb hx
    have := le_mul_of_one_le_left hx.le hn'
    linarith [mul_comm (n : ℝ) s.x]
  · exact div_le_self hb s.one_lt_alt.le

theorem two_b'_le_a₂ (s : Scale) : 2 * s.b' ≤ s.a := by
  have hX : 2 ≤ s.X' := by
    unfold Scale.X'
    have h1 : 1 ≤ s.x ^ (s.eps / 3) := Real.one_le_rpow s.one_lt_alt.le (by have := s.eps_pos; positivity)
    have := Real.add_one_le_exp (s.x ^ (s.eps / 3))
    linarith
  have hb := scale_b'_nonneg₂ s
  have h : s.b' * s.X' = s.a := by
    unfold Scale.b'
    exact div_mul_cancel₀ _ (by linarith)
  have := mul_le_mul_of_nonneg_left hX hb
  linarith

theorem fill_nonneg₂ (X : Inst D L) (j : ℕ) (z : Bool × HH D) : 0 ≤ fill X (bL L) j z := by
  have hb := scale_b'_nonneg₂ L.sc
  have hx := x_pos₂ L.sc
  unfold fill
  by_cases ht : z.1 = false ∧ z.2 ∈ D.host.TT
  · rw [if_pos ht]
    have h1 := (X.off_top j z ht).1
    have h2 : L.sc.b' ≤ (bL L z.2 : ℝ) := by
      unfold bL
      rw [dif_pos ht.2]
      exact L.bT_ge _
    have h3 : 0 ≤ L.sc.b' / L.sc.x := div_nonneg hb hx.le
    linarith
  · rw [if_neg ht]
    by_cases hth : IsThickPl D z
    · have := (X.off_thick j z hth).1
      have := one_le_b₂ L.sc
      linarith
    · have := (X.off_thin j z ⟨ht, hth⟩).1
      have := w''_nonneg₂ L.sc D.R.n
      linarith

theorem sq_sub_one_pos_and_mul_le {p a : ℝ} (hp2 : 2 ≤ p) (hpa : 2 * a < p) : 0 < p ^ 2 - 1 ∧ p * (6 / 5 * a) ≤ p ^ 2 - 1 := by
  have h1 : p * (6 / 5 * a) ≤ p * (3 / 5 * p) := mul_le_mul_of_nonneg_left (by linarith) (by linarith)
  have h2 : 4 ≤ p ^ 2 := by
    have := pow_le_pow_left₀ (by norm_num) hp2 2
    norm_num at this
    exact this
  have h3 : p * (3 / 5 * p) = 3 / 5 * p ^ 2 := by ring
  constructor <;> linarith

theorem bl_Nv_le (X : Inst D L) (p : ℕ) (t0 : HH D) : Nv X p t0 ≤ nP D p := by
  classical
  have hpos : 0 < addOrderOf (stepP D p) := addOrderOf_pos _
  have hsub : topsOn X p t0 ⊆
      (Finset.range (addOrderOf (stepP D p))).image (fun i : ℕ => t0 + i • stepP D p) := by
    intro t ht
    obtain ⟨_, hb⟩ := Finset.mem_filter.1 ht
    obtain ⟨i, hi⟩ := X.bs_orb (stepP D p) t
    rw [hb] at hi
    refine Finset.mem_image.2 ⟨i % addOrderOf (stepP D p), Finset.mem_range.2 (Nat.mod_lt _ hpos), ?_⟩
    rw [mod_addOrderOf_nsmul, hi]
  have h1 : Nv X p t0 ≤ addOrderOf (stepP D p) := by
    unfold Nv
    calc (topsOn X p t0).card ≤ _ := Finset.card_le_card hsub
      _ ≤ (Finset.range (addOrderOf (stepP D p))).card := Finset.card_image_le
      _ = _ := Finset.card_range _
  refine le_trans h1 ?_
  unfold stepP nP
  split_ifs
  · omega
  · exact le_rfl

theorem hLarge_proved (X : Inst D L) (K : Consts) (hK : K.Nonneg) (h1 : 1 ≤ K.Pr1)
    (P : ParameterChoice' D L) :
    ∀ (w : D.what₂.places.Pl), Real.logb (D.what₂.places.resChar w) (2 * L.sc.a) < 1 →
      ∀ t0 ∈ reps X (D.what₂.places.resChar w), ∀ j ∈ SizeData₂.lifts D,
        gU X K (aL L) (bL L) (D.what₂.places.resChar w) j t0 - Pr X K (bL L) (D.what₂.places.resChar w) j t0 ≤ 0 ∧
        g0 X K (aL L) (bL L) (D.what₂.places.resChar w) j t0 ≤ 0 := by
  classical
  intro w hlog t0 _ j hj
  set p : ℕ := D.what₂.places.resChar w with hpdef
  have hp : p.Prime := D.what₂.places.resChar_prime w
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, hdl1, hdl2, hPr1, _⟩ := hK
  obtain ⟨hk, hN, hSc⟩ := bl_Nm_le_Sc P
  have hn : 1 ≤ D.R.n := D.R.n_pos'
  obtain ⟨hw1, hw2⟩ := w''_le₂ L.sc D.R.n hn
  have hkS := P.kS_le
  have hab := two_b'_le_a₂ L.sc
  have hx := x_pos₂ L.sc
  have ha := _root_.Formalism.MainNotions.G.TopChoiceBounds.bt_a L.sc
  have hb' := scale_b'_nonneg₂ L.sc
  have hw0 := w''_nonneg₂ L.sc D.R.n
  have hη := L.etaSz_pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hp0 : (0 : ℝ) < p := by linarith
  have hpa : 2 * L.sc.a < p := by
    have := (Real.logb_lt_iff_lt_rpow hp1 (by linarith : (0 : ℝ) < 2 * L.sc.a)).1 hlog
    rwa [Real.rpow_one] at this
  have hkSc : 5 * L.Sc ≤ (D.R.k : ℝ) * L.Sc := mul_le_mul_of_nonneg_right hk (by linarith)
  have hw500 : 500 ≤ L.sc.w'' D.R.n := by linarith
  have hlg : 0 ≤ Real.logb p (2 * L.sc.a) := Real.logb_nonneg hp1 (by linarith)
  have hNm0 : 0 ≤ Nm D := by unfold Nm; exact Nat.cast_nonneg _
  have hcG : 0 ≤ cG L := by unfold cG; linarith
  have hTT : ∀ s ∈ topsOn X p t0, s ∈ D.host.TT := fun s hs => (Finset.mem_filter.1 hs).1
  have hal : ∀ s ∈ topsOn X p t0, 0 ≤ al L (aL L) s ∧ al L (aL L) s ≤ 6 / 5 * L.sc.a := by
    intro s hs
    have h1 : aL L s = L.aT ⟨s, hTT s hs⟩ := by unfold aL; rw [dif_pos (hTT s hs)]
    obtain ⟨h2, h3⟩ := L.aT_win ⟨s, hTT s hs⟩
    have h4 : L.sc.a / ((D.R.k : ℝ) * L.sc.x ^ (Scale.A / 2)) ≤ L.sc.a / 5 := by
      apply div_le_div_of_nonneg_left (by linarith) (by norm_num)
      have : 1 ≤ L.sc.x ^ (Scale.A / 2) := Real.one_le_rpow L.sc.one_lt_alt.le (by unfold Scale.A; norm_num)
      exact le_trans (bt_k D) (le_mul_of_one_le_right (by linarith [bt_k D]) this)
    unfold al cG
    rw [h1]
    constructor <;> linarith
  have hdl : 0 ≤ dl X K p t0 := by
    unfold dl
    have h1 : 0 ≤ K.dl1 * (nP D p : ℝ) * Nm D ^ 2 * Real.logb p (2 * L.sc.a) :=
      mul_nonneg (mul_nonneg (mul_nonneg hdl1 (Nat.cast_nonneg _)) (by positivity)) hlg
    have h2 : 0 ≤ K.dl2 * (Nv X p t0 : ℝ) * Real.logb p (2 * L.sc.a) ^ 2 :=
      mul_nonneg (mul_nonneg hdl2 (Nat.cast_nonneg _)) (by positivity)
    linarith
  have hcap : ∀ (s : HH D) (e : ℕ), 1 ≤ capU X (bL L) p j s e := by
    intro s e
    unfold capU fillG cG
    have := fill_nonneg₂ X j (partner D p s e)
    have := kappa_le_Sc P j hj
    linarith
  have hgU : gU X K (aL L) (bL L) p j t0 ≤ gam p * ∑ s ∈ topsOn X p t0, al L (aL L) s := by
    unfold gU
    refine le_trans (sub_le_self _ hdl) (sub_le_self _ ?_)
    apply Finset.sum_nonneg
    intro s hs
    apply tsum_nonneg
    intro e
    split_ifs
    · apply le_min
      · exact div_nonneg (hal s (Finset.mem_filter.1 hs).1).1 (by positivity)
      · linarith [hcap s e]
    · exact le_rfl
  have hbase : 1 ≤ L.sc.w'' D.R.n + L.etaSz + cG L + Nm D := by linarith
  have hNvn : (Nv X p t0 : ℝ) ≤ (nP D p : ℝ) := by exact_mod_cast bl_Nv_le X p t0
  have hNv0 : (0 : ℝ) ≤ (Nv X p t0 : ℝ) := Nat.cast_nonneg _
  have hnP0 : (0 : ℝ) ≤ (nP D p : ℝ) := Nat.cast_nonneg _
  have hPr : (Nv X p t0 : ℝ) ≤ Pr X K (bL L) p j t0 := by
    unfold Pr
    split_ifs with h0
    · have hs0 : 0 ≤ ∑ s ∈ (topsOn X p t0).filter (fun s => ¬ IsV X p s),
          (fillG X (bL L) j (false, s) - (bL L s : ℝ)) := by
        apply Finset.sum_nonneg
        intro s hs
        have hs' := hTT s (Finset.mem_filter.1 hs).1
        have h1 : fill X (bL L) j (false, s) = (bL L s : ℝ) + X.off j (false, s) := by
          unfold fill
          rw [if_pos ⟨rfl, hs'⟩]
        have h2 := (X.off_top j (false, s) ⟨rfl, hs'⟩).1
        have h3 := kappa_le_Sc P j hj
        unfold fillG
        rw [h1]
        linarith
      have h3 : (nP D p : ℝ) ≤ K.Pr1 * (nP D p : ℝ) * (L.sc.w'' D.R.n + L.etaSz + cG L + Nm D) := by
        have h4 : (nP D p : ℝ) ≤ K.Pr1 * (nP D p : ℝ) := le_mul_of_one_le_left hnP0 h1
        have h5 : K.Pr1 * (nP D p : ℝ) ≤ K.Pr1 * (nP D p : ℝ) * (L.sc.w'' D.R.n + L.etaSz + cG L + Nm D) :=
          le_mul_of_one_le_right (by linarith) hbase
        linarith
      linarith
    · have hr : (1 : ℝ) ≤ (rG L.sc : ℝ) := by
        have : 1 ≤ rG L.sc := by unfold rG; omega
        exact_mod_cast this
      have hb1 : (1 : ℝ) ≤ L.sc.b' := by linarith
      have h3 : (Nv X p t0 : ℝ) ≤ (Nv X p t0 : ℝ) * (2 * L.sc.b' + cG L) +
          (nP D p : ℝ) * (L.sc.w'' D.R.n + L.etaSz + cG L + Nm D) := by
        have h4 : (Nv X p t0 : ℝ) ≤ (Nv X p t0 : ℝ) * (2 * L.sc.b' + cG L) :=
          le_mul_of_one_le_right hNv0 (by linarith)
        have h5 : 0 ≤ (nP D p : ℝ) * (L.sc.w'' D.R.n + L.etaSz + cG L + Nm D) := mul_nonneg hnP0 (by linarith)
        linarith
      have h7 : 0 ≤ (Nv X p t0 : ℝ) * (2 * L.sc.b' + cG L) +
          (nP D p : ℝ) * (L.sc.w'' D.R.n + L.etaSz + cG L + Nm D) := by linarith
      have h8 := le_mul_of_one_le_left h7 hr
      linarith
  have hgam : 0 ≤ gam p ∧ gam p * (6 / 5 * L.sc.a) ≤ 1 := by
    obtain ⟨hd, hle⟩ := sq_sub_one_pos_and_mul_le hp2 hpa
    unfold gam
    refine ⟨div_nonneg hp0.le hd.le, ?_⟩
    rw [div_mul_eq_mul_div, div_le_one hd]
    exact hle
  have hsum : ∑ s ∈ topsOn X p t0, al L (aL L) s ≤ (Nv X p t0 : ℝ) * (6 / 5 * L.sc.a) := by
    unfold Nv
    rw [← nsmul_eq_mul]
    exact Finset.sum_le_card_nsmul _ _ _ (fun s hs => (hal s hs).2)
  constructor
  · have h4 := mul_le_mul_of_nonneg_left hsum hgam.1
    have h5 := mul_le_mul_of_nonneg_left hgam.2 hNv0
    have h6 : gam p * ((Nv X p t0 : ℝ) * (6 / 5 * L.sc.a)) = (Nv X p t0 : ℝ) * (gam p * (6 / 5 * L.sc.a)) := by ring
    linarith
  · unfold g0
    have hz : ∑ s ∈ topsOn X p t0, ∑' e : ℕ,
        (if Odd e ∧ ¬ Excl D p s e then max 0 (al L (aL L) s / (p : ℝ) ^ e - capU X (bL L) p j s e) else 0) = 0 := by
      apply Finset.sum_eq_zero
      intro s hs
      have hf : (fun e : ℕ => if Odd e ∧ ¬ Excl D p s e then
          max 0 (al L (aL L) s / (p : ℝ) ^ e - capU X (bL L) p j s e) else 0) = fun _ => (0 : ℝ) := by
        funext e
        split_ifs with he
        · apply max_eq_left
          have he0 : e ≠ 0 := by
            rintro rfl
            exact (Nat.not_odd_iff_even.2 (by decide)) he.1
          have hpe : (p : ℝ) ≤ (p : ℝ) ^ e := le_self_pow₀ hp1.le he0
          have hq : al L (aL L) s / (p : ℝ) ^ e ≤ 1 := by
            rw [div_le_one (by positivity)]
            have := (hal s hs).2
            linarith
          linarith [hcap s e]
        · rfl
      rw [hf, tsum_zero]
    rw [hz]
    linarith

end Large

end Formalism.MainNotions.G.TopChoiceBounds

end

noncomputable section

namespace Formalism.MainNotions.G.TopChoiceBounds

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.MainNotions

theorem family_master_orbit_holds {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyOrbitPositionsAndSizeBounds Fm := fun x i => master_orbit_lemma_holds (Fm.D x i)
theorem orbit_positions_admitted_holds (D : D7) : tableLineDegreeFive.adm1 D := orbit_positions_of_master D (master_orbit_lemma_holds D)
theorem orbit_counts_admitted_holds (D : D7) : tableLineDegreeFive.adm2 D := orbit_counts_of_master D (master_orbit_lemma_holds D)
theorem symbol_space_orbit_holds (D : D7) : SelectionLemmas.PathPairCorrespondence D := symbol_space_orbit_of_master D (master_orbit_lemma_holds D)
theorem localiser_orbit_holds (D : D7) : SourceCleaning.GoodOrbitPositions D := goodOrbitPositions_of_orbitLemmaFull D (master_orbit_lemma_holds D)
theorem family_uniform_constant_holds {eps : ℝ} (Fm : FamP eps) :
    ∃ C : ℝ, 0 < C ∧ ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, AuxBlock8.adm1 (Fm.D x i) (Fm.L x i) (Fm.Gx x i) C :=
  family_uniform_constant_of_master Fm (family_master_orbit_holds Fm)

theorem family_large_scale_conditions_hold {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyLargeScale Fm :=
  family_large_scale_of_master Fm (family_master_orbit_holds Fm) (family_inert_primes_holds Fm)

theorem family_log_bound_threshold (eps : ℝ) : ∃ C₀ : ℝ, ∀ Fm : FamP eps, C₀ ≤ Fm.GK.CN → CornerGLContinuity.FamilyWindowLogBound Fm := by
  by_cases hne : Nonempty (FamP eps)
  · obtain ⟨Fm0⟩ := hne
    have he := family_eps_pos Fm0
    obtain ⟨i0⟩ := Fm0.Ix_zero
    obtain ⟨Ce, hCe, hC⟩ := (master_orbit_lemma_holds (Fm0.D 0 i0)).2.1 (⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1) (2 + 8 * eps)
      (by omega) (by positivity)
    refine ⟨Ce, fun Fm hCN => ⟨max 3 (Fm.x1 + 1), fun x hx i => ?_⟩⟩
    have a4 : 3 ≤ x := le_trans (le_max_left _ _) hx
    have a5 : Fm.x1 < x := by
      have := le_trans (le_max_right _ _) hx
      linarith
    have hLx := Fm.L_x x i a5
    have hLe := Fm.L_eps x i
    have hde0 : 0 < x ^ (-(eps / 8)) := Real.rpow_pos_of_pos (by linarith) _
    have hde1 : x ^ (-(eps / 8)) ≤ 1 := Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (by linarith)
    obtain ⟨_, hN1, _, _⟩ := hC _ x hde0 hde1 a4
    unfold CornerGLContinuity.WindowLogBound CbLarge N1 rG KG Formalism.MainNotions.G.hG Scale.delta1
    rw [hLx, hLe]
    exact le_trans hN1 (mul_le_mul_of_nonneg_right hCN (Real.log_nonneg (by linarith)))
  · exact ⟨0, fun Fm => absurd ⟨Fm⟩ hne⟩

theorem family_log_bound_closed (𝒞 : FamClass) : Closed 𝒞 fun Fm _ => CornerGLContinuity.FamilyWindowLogBound Fm := by
  refine ⟨1, one_pos, fun eps _ _ => ?_⟩
  obtain ⟨C₀, h⟩ := family_log_bound_threshold eps
  refine ⟨⟨0, fun _ => 0, fun _ => 0, fun _ => C₀⟩, fun Fm CH _ hL => h Fm (hL.2.2.2 Fm.GK.CN ?_)⟩
  simp [FamP.cLast]

theorem family_band_sum_holds {eps : ℝ} (Fm : FamP eps) (hCN : CornerGLContinuity.FamilyWindowLogBound Fm) : CornerGLContinuity.FamilyOrdersLargePrimeBoundConstant Fm :=
  family_band_ratio_holds Fm (family_master_orbit_holds Fm) hCN

theorem family_band_ratio_statement {eps : ℝ} (Fm : FamP eps) (hCN : CornerGLContinuity.FamilyWindowLogBound Fm) :
    ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, AuxBlock8.ArchimedeanSignatureMatching (Fm.D x i) (Fm.L x i) Fm.GK := family_band_sum_holds Fm hCN

theorem family_exponent_sizes_hold {eps : ℝ} (Fm : FamP eps) : CornerGLContinuity.FamilyCutSizes Fm := by
  obtain ⟨Ce, x0, hH⟩ := bt_H_ev Fm
  refine ⟨bt_C Fm.GK ((⌈8 * ((2 + 8 * eps) + 2) / eps⌉₊ + 1 : ℕ) : ℝ) (max Fm.cX.Ce 0 + 1), max x0 (Fm.x1 + 1),
    fun x hx i => ?_⟩
  have hx1 : Fm.x1 < x := by
    have := le_trans (le_max_right _ _) hx
    linarith
  have H := hH x (le_trans (le_max_left _ _) hx) i
  have h9 : ∀ p : ℕ, p.Prime → (p : ℝ) ≤ (Fm.L x i).sc.a → ((Fm.Gx x i).ep p : ℝ) ≤
      (max Fm.cX.Ce 0 + 1) * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a := by
    intro p hp hpa
    have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
    have hlb1 : 1 ≤ Real.logb p (Fm.L x i).sc.a := by
      rw [Real.le_logb_iff_rpow_le hp1 (by linarith only [hp1, hpa]), Real.rpow_one]
      exact hpa
    have hf1 : (1 : ℝ) ≤ ((Fm.D x i).R.f : ℝ) := by
      have : 1 ≤ (Fm.D x i).R.f := by
        have := (Fm.D x i).R.ord_pos
        rw [Ranks.f_eq_ord]
        omega
      exact_mod_cast this
    have hk1 : (1 : ℝ) ≤ ((Fm.D x i).R.k : ℝ) ^ 2 := one_le_pow₀ (by linarith only [bt_k (Fm.D x i)])
    have h31 : 1 ≤ ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a :=
      one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le hf1 hk1) hlb1
    have h3 : 0 ≤ ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a := by
      linarith only [h31]
    rw [(Fm.ex x hx1 i).ep_def p]
    have h4 : Fm.cX.Ce * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a ≤
        max Fm.cX.Ce 0 * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a := by
      have := mul_le_mul_of_nonneg_right (le_max_left Fm.cX.Ce 0) h3
      linarith only [this]
    have h5 : 0 ≤ max Fm.cX.Ce 0 * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 *
        Real.logb p (Fm.L x i).sc.a := by
      have := mul_nonneg (le_max_right Fm.cX.Ce 0) h3
      linarith only [this]
    have h6 : (max Fm.cX.Ce 0 + 1) * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a =
        max Fm.cX.Ce 0 * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a +
          ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 * Real.logb p (Fm.L x i).sc.a := by ring
    rcases le_total 0 (Fm.cX.Ce * ((Fm.D x i).R.f : ℝ) * ((Fm.D x i).R.k : ℝ) ^ 2 *
        Real.logb p (Fm.L x i).sc.a) with hy | hy
    · have := Nat.ceil_lt_add_one hy
      linarith only [this, h4, h6, h31]
    · rw [Nat.ceil_eq_zero.2 hy, Nat.cast_zero]
      linarith only [h5, h6, h31]
  have := bt_at (Fm.Gx x i) Fm.GK Fm.GK_nonneg Ce _ (max Fm.cX.Ce 0 + 1) H
    (by have := le_max_right Fm.cX.Ce 0; linarith only [this]) h9
  rwa [bt_rG] at this

theorem tau_sum_family_of_mertens {eps : ℝ} (Fm : FamP eps) (hM : CornerGLContinuity.FamilyMertensBound Fm) : CornerGLContinuity.FamilyWeightSumBound Fm :=
  stmtFTa_proved Fm hM (family_exponent_sizes_hold Fm)

end Formalism.MainNotions.G.TopChoiceBounds

end
