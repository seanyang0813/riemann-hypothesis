module

public import Formalism.HermitianCurvature.BlockKernelPropertiesOfSteps
public import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.MulInvBlockDiagApplySameBlock
public import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.IsIntOfLatOfLe
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

open Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5 Matrix
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.A5x7

section Supp
variable {K : Type} [CommRing K] (R : Subring K)

theorem blk_app (l : List ℕ) (s : ℕ) (hs : 1 ≤ s) : blk (l ++ [s]) l.sum = l.length := by
  induction l with
  | nil => simp only [List.nil_append, List.sum_nil, List.length_nil, blk]; simp [Nat.lt_of_lt_of_le Nat.zero_lt_one hs]
  | cons a l ih =>
    rw [List.cons_append, List.sum_cons, List.length_cons]
    simp only [blk]
    rw [if_neg (by omega), Nat.add_sub_cancel_left, ih]
    omega

theorem revIn_app (l : List ℕ) (s : ℕ) (hs : 1 ≤ s) :
    revIn (l ++ [s]) l.sum = l.sum + (s - 1) := by
  induction l with
  | nil => simp only [List.nil_append, List.sum_nil, revIn]; simp [Nat.lt_of_lt_of_le Nat.zero_lt_one hs]
  | cons a l ih =>
    rw [List.cons_append, List.sum_cons]
    simp only [revIn]
    rw [if_neg (by omega), Nat.add_sub_cancel_left, ih]
    omega

theorem blk_app_lt (s : ℕ) : ∀ (l : List ℕ) (j : ℕ), j < l.sum → blk (l ++ [s]) j = blk l j
  | [], j, h => by simp at h
  | a :: l, j, h => by
    simp only [List.cons_append, blk]
    split_ifs with hj
    · rfl
    · rw [blk_app_lt s l (j - a) (by simp only [List.sum_cons] at h; omega)]

theorem revIn_app_lt (s : ℕ) : ∀ (l : List ℕ) (j : ℕ), j < l.sum → revIn (l ++ [s]) j = revIn l j
  | [], j, h => by simp at h
  | a :: l, j, h => by
    simp only [List.cons_append, revIn]
    split_ifs with hj
    · rfl
    · rw [revIn_app_lt s l (j - a) (by simp only [List.sum_cons] at h; omega)]

theorem blk_lt_length : ∀ (l : List ℕ) (j : ℕ), j < l.sum → blk l j < l.length
  | [], j, h => by simp at h
  | a :: l, j, h => by
    simp only [blk, List.length_cons]
    split_ifs with hj
    · omega
    · have := blk_lt_length l (j - a) (by simp only [List.sum_cons] at h; omega)
      omega

theorem sum_sub {k n : ℕ} (e : Fin k → Fin n) (he : Function.Injective e) (f : Fin n → K)
    (hf : ∀ b, b ∉ Set.range e → f b = 0) : ∑ b, f b = ∑ i, f (e i) := by
  classical
  rw [← Finset.sum_image (s := Finset.univ) (g := e) (f := f) (fun x _ y _ h => he h)]
  symm
  apply Finset.sum_subset (Finset.subset_univ _)
  intro b _ hb
  apply hf
  rintro ⟨i, rfl⟩
  exact hb (Finset.mem_image_of_mem e (Finset.mem_univ i))

theorem det_sub_mem {k n : ℕ} {Z : Matrix (Fin n) (Fin n) K} (hZ : IsInt R Z)
    (r c : Fin k → Fin n) : (Z.submatrix r c).det ∈ R := by
  let M : Matrix (Fin k) (Fin k) R := fun a b => ⟨Z (r a) (c b), hZ _ _⟩
  have h : Z.submatrix r c = R.subtype.mapMatrix M := by ext a b; rfl
  rw [h, ← RingHom.map_det]
  exact M.det.2

theorem minor_lemma {n m : ℕ} (hmn : m < n) (x w y : Matrix (Fin n) (Fin n) K)
    (H : Matrix (Fin m) (Fin m) K) (t : K) (hx : IsLowUni x) (hy : IsUpUni y)
    (hw1 : ∀ (a b : Fin n) (ha : a.val < m),
      w a b = if hb : b.val < m then H ⟨a.val, ha⟩ ⟨b.val, hb⟩ else 0)
    (hw2 : ∀ a b : Fin n, a.val = m → w a b = if b.val + 1 = n then t else 0)
    (hI : IsInt R (x * w * y)) : H.det * t ∈ R := by
  obtain ⟨hxT, hxD⟩ := hx
  obtain ⟨hyT, hyD⟩ := hy
  have hn1 : n - 1 < n := by omega
  let r : Fin (m + 1) → Fin n := fun i => ⟨i.val, lt_of_le_of_lt (Nat.lt_succ_iff.mp i.isLt) hmn⟩
  let c : Fin (m + 1) → Fin n := fun j =>
    if hj : j.val < m then ⟨j.val, lt_trans hj hmn⟩ else ⟨n - 1, hn1⟩
  let e : Fin m → Fin n := fun k => ⟨k.val, lt_trans k.isLt hmn⟩
  have hr : Function.Injective r := fun a b hab => by
    have h0 := congrArg Fin.val hab
    exact Fin.ext h0
  have he : Function.Injective e := fun a b hab => by
    have h0 := congrArg Fin.val hab
    exact Fin.ext h0
  have hmem := det_sub_mem R hI r c
  suffices hdet : ((x * w * y).submatrix r c).det = H.det * t by
    rw [← hdet]
    exact hmem

  have hsplit : (x * w * y).submatrix r c = x.submatrix r r * (w * y).submatrix r c := by
    rw [Matrix.mul_assoc]
    ext i j
    show ∑ k, x (r i) k * (w * y) k (c j) = ∑ k, x (r i) (r k) * (w * y) (r k) (c j)
    refine sum_sub r hr (fun k => x (r i) k * (w * y) k (c j)) (fun k hk => ?_)
    have hkm : m < k.val := by
      by_contra hc
      push_neg at hc
      exact hk (Set.mem_range.2 ⟨⟨k.val, Nat.lt_succ_of_le hc⟩, Fin.ext rfl⟩)
    have hlt : r i < k := by
      show i.val < k.val
      have := i.isLt
      omega
    show x (r i) k * (w * y) k (c j) = 0
    rw [hxT hlt, zero_mul]
  have hX : (x.submatrix r r).det = 1 := by
    have hlow : (x.submatrix r r).BlockTriangular OrderDual.toDual := by
      intro i j hij
      exact hxT (show r i < r j from hij)
    rw [Matrix.det_of_lowerTriangular (h := hlow)]
    exact Finset.prod_eq_one (fun i _ => hxD (r i))

  have hrowsum : ∀ j : Fin (m + 1),
      ((w * y).submatrix r c) (Fin.last m) j = t * y ⟨n - 1, hn1⟩ (c j) := by
    intro j
    show ∑ k, w (r (Fin.last m)) k * y k (c j) = t * y ⟨n - 1, hn1⟩ (c j)
    rw [Finset.sum_eq_single ⟨n - 1, hn1⟩]
    · rw [hw2 (r (Fin.last m)) ⟨n - 1, hn1⟩ rfl]
      split_ifs with hc
      · rfl
      · exact absurd (Nat.sub_add_cancel (by omega : 1 ≤ n)) hc
    · intro k _ hk
      rw [hw2 (r (Fin.last m)) k rfl]
      split_ifs with hc
      · exact absurd (Fin.ext (show k.val = n - 1 by omega)) hk
      · rw [zero_mul]
    · intro hn
      exact absurd (Finset.mem_univ _) hn
  have hcl : c (Fin.last m) = ⟨n - 1, hn1⟩ := by simp [c]
  have hB : ((w * y).submatrix r c).det =
      t * (((w * y).submatrix r c).submatrix Fin.castSucc Fin.castSucc).det := by
    rw [Matrix.det_succ_row _ (Fin.last m), Fin.sum_univ_castSucc]
    have hz : ∀ j : Fin m, ((w * y).submatrix r c) (Fin.last m) (Fin.castSucc j) = 0 := by
      intro j
      rw [hrowsum]
      have hcj : c (Fin.castSucc j) = e j := by simp [c, e, j.isLt]
      rw [hcj, hyT (show e j < ⟨n - 1, hn1⟩ from Fin.mk_lt_mk.2 (by have := j.isLt; omega)),
        mul_zero]
    simp only [hz, mul_zero, zero_mul, Finset.sum_const_zero, zero_add]
    rw [hrowsum (Fin.last m), hcl, hyD, mul_one, Fin.succAbove_last, Fin.val_last, ← two_mul,
      pow_mul, neg_one_sq, one_pow, one_mul]

  have hTL : ((w * y).submatrix r c).submatrix Fin.castSucc Fin.castSucc = H * y.submatrix e e := by
    ext i j
    have hcj : c (Fin.castSucc j) = e j := by simp [c, e, j.isLt]
    have hri : r (Fin.castSucc i) = e i := rfl
    show ∑ k, w (r (Fin.castSucc i)) k * y k (c (Fin.castSucc j)) = ∑ k, H i k * y (e k) (e j)
    rw [hcj, hri]
    have hrow : ∀ k, w (e i) k = if hk : k.val < m then H i ⟨k.val, hk⟩ else 0 :=
      fun k => hw1 (e i) k i.isLt
    rw [show (∑ k, w (e i) k * y k (e j)) = ∑ k, w (e i) (e k) * y (e k) (e j) from
      sum_sub e he (fun k => w (e i) k * y k (e j)) (fun k hk => by
        have hkm : ¬ k.val < m := fun hc => hk (Set.mem_range.2 ⟨⟨k.val, hc⟩, Fin.ext rfl⟩)
        show w (e i) k * y k (e j) = 0
        rw [hrow, dite_eq_right hkm, zero_mul])]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [hrow]
    split_ifs with hk
    · rfl
    · exact absurd k.isLt hk
  have hYt : (y.submatrix e e).det = 1 := by
    have hup : (y.submatrix e e).BlockTriangular id := by
      intro i j hij
      exact hyT (show e j < e i from hij)
    rw [Matrix.det_of_upperTriangular (h := hup)]
    exact Finset.prod_eq_one (fun i _ => hyD (e i))
  rw [hsplit, Matrix.det_mul, hX, one_mul, hB, hTL, Matrix.det_mul, hYt, mul_one, mul_comm]

theorem supp_one (h : Point K) (s : ℕ) (hs : 1 ≤ s) (t : Kˣ)
    (p : lowW K (addBlock h s t).1 (addBlock h s t).2 × upUniG K (addBlock h s t).1.sum)
    (hI : IsInt R (orbZ (addBlock h s t) p)) : (pt h.1 h.2).det * (t : K) ∈ R := by
  obtain ⟨hv, _⟩ := p.1.2
  have hu := p.2.2
  have hsum : (h.1 ++ [s]).sum = h.1.sum + s := by simp
  have hmn : h.1.sum < (addBlock h s t).1.sum := by
    show h.1.sum < (h.1 ++ [s]).sum
    omega
  refine minor_lemma R hmn _ (pt (addBlock h s t).1 (addBlock h s t).2) _ (pt h.1 h.2) (t : K)
    hv hu ?_ ?_ hI
  · intro a b ha
    have hrev := _root_.Formalism.DoubleCosetMeasures.P.Phase.revIn_lt h.1 a.val ha
    show (if (b : ℕ) = revIn (h.1 ++ [s]) a then
        ((Function.update h.2 h.1.length t (blk (h.1 ++ [s]) a) : Kˣ) : K) else 0) = _
    rw [revIn_app_lt s h.1 a.val ha, blk_app_lt s h.1 a.val ha, Function.update_apply,
      if_neg (ne_of_lt (blk_lt_length h.1 a.val ha))]
    by_cases hb : b.val < h.1.sum
    · rw [dite_eq_left hb]
      rfl
    · have hne : ¬ ((b : ℕ) = revIn h.1 a) := fun hc => hb (by rw [hc]; exact hrev)
      rw [dite_eq_right hb, if_neg hne]
  · intro a b ha
    show (if (b : ℕ) = revIn (h.1 ++ [s]) a then
        ((Function.update h.2 h.1.length t (blk (h.1 ++ [s]) a) : Kˣ) : K) else 0) =
      if (b : ℕ) + 1 = (h.1 ++ [s]).sum then (t : K) else 0
    rw [ha, revIn_app h.1 s hs, blk_app h.1 s hs, Function.update_apply, if_pos rfl]
    split_ifs <;> first | rfl | omega

end Supp
end Formalism.FourierDecayAlt.P.A5x7

open Formalism.FourierDecayAlt.P.A5x7 in
theorem Formalism.FourierDecayAlt.P.added_block_kernel_support : Formalism.FourierDecayAlt.A5.NsSupport := by
  intro K _ R ψ s hs h h' t t' hN
  have hK : Kp R ψ (addBlock h s t) (addBlock h' s t') ≠ 0 := by
    intro h0
    apply hN
    unfold Ns
    rw [h0, mul_zero]
  obtain ⟨q, hq⟩ : ∃ q, pairTerm R ψ (addBlock h s t) (addBlock h' s t') q ≠ 0 := by
    by_contra hc
    push_neg at hc
    apply hK
    unfold Kp
    simp only [hc, finsum_zero]
  have hc : IsInt R (orbZ (addBlock h s t) (rep R q.1)) ∧
      IsInt R (orbZ (addBlock h' s t') (rep R q.2)) := by
    by_contra hc
    apply hq
    unfold pairTerm
    rw [if_neg hc, zero_mul, zero_mul]
  exact ⟨supp_one R h s hs t _ hc.1, supp_one R h' s hs t' _ hc.2⟩

namespace Formalism.FourierDecayAlt.P.A5x7

section Ones
variable {K : Type} [CommRing K] (R : Subring K)

theorem lu_int {n : ℕ} {h u : Matrix (Fin n) (Fin n) K} (hh : IsLowUni h) (hu : IsUpUni u)
    (hI : IsInt R (h * u)) : IsInt R h ∧ IsInt R u := by
  obtain ⟨hhT, hhD⟩ := hh
  obtain ⟨huT, huD⟩ := hu
  have key : ∀ m : ℕ, ∀ i j : Fin n, min i.val j.val = m → h i j ∈ R ∧ u i j ∈ R := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
    intro i j hm
    have IH : ∀ a b : Fin n, min a.val b.val < m → h a b ∈ R ∧ u a b ∈ R :=
      fun a b hab => ih _ hab a b rfl
    have hM : (h * u) i j = ∑ k, h i k * u k j := Matrix.mul_apply
    by_cases hij : i.val ≤ j.val
    · have hterm : ∀ k ∈ Finset.univ.erase i, h i k * u k j ∈ R := by
        intro k hk
        have hki : k ≠ i := Finset.ne_of_mem_erase hk
        rcases lt_or_gt_of_ne hki with hlt | hgt
        · have hv := Fin.lt_iff_val_lt_val.1 hlt
          exact R.mul_mem (IH i k (by omega)).1 (IH k j (by omega)).2
        · rw [hhT hgt, zero_mul]
          exact R.zero_mem
      have hsum : h i i * u i j + ∑ k ∈ Finset.univ.erase i, h i k * u k j = ∑ k, h i k * u k j :=
        Finset.add_sum_erase Finset.univ (fun k => h i k * u k j) (Finset.mem_univ i)
      have hu' : u i j ∈ R := by
        have e : u i j = (h * u) i j - ∑ k ∈ Finset.univ.erase i, h i k * u k j := by
          rw [hM, ← hsum, hhD i, one_mul, add_sub_cancel_right]
        rw [e]
        exact R.sub_mem (hI i j) (Subring.sum_mem _ hterm)
      refine ⟨?_, hu'⟩
      rcases lt_or_eq_of_le hij with hlt | heq
      · rw [hhT (show i < j from hlt)]
        exact R.zero_mem
      · rw [Fin.ext heq, hhD j]
        exact R.one_mem
    · push_neg at hij
      have hterm : ∀ k ∈ Finset.univ.erase j, h i k * u k j ∈ R := by
        intro k hk
        have hkj : k ≠ j := Finset.ne_of_mem_erase hk
        rcases lt_or_gt_of_ne hkj with hlt | hgt
        · have hv := Fin.lt_iff_val_lt_val.1 hlt
          exact R.mul_mem (IH i k (by omega)).1 (IH k j (by omega)).2
        · rw [huT hgt, mul_zero]
          exact R.zero_mem
      have hsum : h i j * u j j + ∑ k ∈ Finset.univ.erase j, h i k * u k j = ∑ k, h i k * u k j :=
        Finset.add_sum_erase Finset.univ (fun k => h i k * u k j) (Finset.mem_univ j)
      have hh' : h i j ∈ R := by
        have e : h i j = (h * u) i j - ∑ k ∈ Finset.univ.erase j, h i k * u k j := by
          rw [hM, ← hsum, huD j, mul_one, add_sub_cancel_right]
        rw [e]
        exact R.sub_mem (hI i j) (Subring.sum_mem _ hterm)
      refine ⟨hh', ?_⟩
      rw [huT (show j < i from hij)]
      exact R.zero_mem
  exact ⟨fun a b => (key _ a b rfl).1, fun a b => (key _ a b rfl).2⟩

theorem pt_inv (w : Point K) : (pt w.1 w.2)⁻¹ = P.Phase.ptI w.1 w.2 := Matrix.inv_eq_right_inv (P.Phase.pt_mul_ptI w.1 w.2)

theorem mem_intSub {n : ℕ} (H : Subgroup (GL (Fin n) K)) (g : H) :
    g ∈ intSub R H ↔ IsInt R ((g : GL (Fin n) K) : Matrix (Fin n) (Fin n) K) ∧
      IsInt R (((g : GL (Fin n) K)⁻¹ : GL (Fin n) K) : Matrix (Fin n) (Fin n) K) := Iff.rfl

theorem int_of_orb (w : Point K) (hw : InGLR R w) (p : lowW K w.1 w.2 × upUniG K w.1.sum)
    (hZ : IsInt R (orbZ w p)) :
    p.1 ∈ intSub R (lowW K w.1 w.2) ∧ p.2 ∈ intSub R (upUniG K w.1.sum) := by
  obtain ⟨hw1, hw2⟩ := hw
  obtain ⟨hv, hmat, hhl, he⟩ := p.1.2
  have hu : IsUpUni ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) := p.2.2
  have hZ' : IsInt R (((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
      pt w.1 w.2 * ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)) := hZ
  have hHU : IsInt R (hmat * ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)) := by
    have e : hmat * ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) =
        (pt w.1 w.2)⁻¹ * (((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
          pt w.1 w.2 * ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)) := by
      rw [he, pt_inv w, ← Matrix.mul_assoc, ← Matrix.mul_assoc, P.Phase.ptI_mul_pt, Matrix.one_mul]
    rw [e]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_mul R hw2 hZ'
  obtain ⟨hH, hU⟩ := lu_int R hhl hu hHU
  have hV : IsInt R ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) := by
    have e : ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) =
        pt w.1 w.2 * hmat * (pt w.1 w.2)⁻¹ := by
      rw [← he, pt_inv w, Matrix.mul_assoc, P.Phase.pt_mul_ptI, Matrix.mul_one]
    rw [e]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_mul R (_root_.Formalism.DoubleCosetMeasures.P.isInt_mul R hw1 hH) hw2
  have hdV := ((Formalism.DoubleCosetMeasures.P.uniGroup K _ ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)
    ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)).2.2.1 hv).2
  have hdU := ((Formalism.DoubleCosetMeasures.P.uniGroup K _ ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)
    ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)).2.2.2 hu).2
  refine ⟨(mem_intSub R _ p.1).2 ⟨hV, ?_⟩, (mem_intSub R _ p.2).2 ⟨hU, ?_⟩⟩
  · rw [Matrix.coe_units_inv]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_inv R hV hdV
  · rw [Matrix.coe_units_inv]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_inv R hU hdU

theorem orb_of_int (w : Point K) (hw : InGLR R w) (p : lowW K w.1 w.2 × upUniG K w.1.sum)
    (h1 : p.1 ∈ intSub R (lowW K w.1 w.2)) (h2 : p.2 ∈ intSub R (upUniG K w.1.sum)) :
    IsInt R (orbZ w p) ∧ IsInt R (orbZ w p)⁻¹ ∧ orbZ w p * (orbZ w p)⁻¹ = 1 := by
  obtain ⟨hw1, hw2⟩ := hw
  obtain ⟨hV, hV'⟩ := (mem_intSub R _ p.1).1 h1
  obtain ⟨hU, hU'⟩ := (mem_intSub R _ p.2).1 h2
  have hVV : ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
      (((p.1 : GL (Fin w.1.sum) K)⁻¹ : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) = 1 :=
    Units.mul_inv _
  have hUU : ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
      (((p.2 : GL (Fin w.1.sum) K)⁻¹ : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) = 1 :=
    Units.mul_inv _
  have hO : orbZ w p = ((p.1 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
      pt w.1 w.2 * ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) := rfl
  have hX : orbZ w p *
      ((((p.2 : GL (Fin w.1.sum) K)⁻¹ : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K) *
        P.Phase.ptI w.1 w.2 *
        (((p.1 : GL (Fin w.1.sum) K)⁻¹ : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K)) = 1 := by
    rw [hO]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc ((p.2 : GL (Fin w.1.sum) K) : Matrix (Fin w.1.sum) (Fin w.1.sum) K), hUU,
      Matrix.one_mul, ← Matrix.mul_assoc (pt w.1 w.2), P.Phase.pt_mul_ptI, Matrix.one_mul, hVV]
  have hinv := Matrix.inv_eq_right_inv hX
  refine ⟨?_, ?_, ?_⟩
  · rw [hO]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_mul R (_root_.Formalism.DoubleCosetMeasures.P.isInt_mul R hV hw1) hU
  · rw [hinv, ← pt_inv w]
    exact _root_.Formalism.DoubleCosetMeasures.P.isInt_mul R (_root_.Formalism.DoubleCosetMeasures.P.isInt_mul R hU' hw2) hV'
  · rw [hinv]
    exact hX

theorem mulVec_int {n : ℕ} {A : Matrix (Fin n) (Fin n) K} (hA : IsInt R A) (v : Fin n → R)
    (j : Fin n) : (A *ᵥ coeLin R v) j ∈ R := by
  show (∑ i, A j i * coeLin R v i) ∈ R
  refine Subring.sum_mem _ (fun i _ => Subring.mul_mem _ (hA j i) ?_)
  exact (v i).2

theorem lamLin_zero {n : ℕ} {Z : Matrix (Fin n) (Fin n) K} (hZ : IsInt R Z⁻¹) (v : Fin n → R) :
    lamLin R Z v = 0 := by
  have hmem : lastCoord R (Z⁻¹ *ᵥ coeLin R v) ∈ R := by
    unfold lastCoord
    rw [LinearMap.sum_apply]
    refine Subring.sum_mem _ (fun j _ => ?_)
    split_ifs
    · exact mulVec_int R hZ v j
    · exact R.zero_mem
  show Submodule.Quotient.mk (lastCoord R (Z⁻¹ *ᵥ coeLin R v)) = 0
  rw [Submodule.Quotient.mk_eq_zero, LinearMap.mem_range]
  exact ⟨⟨_, hmem⟩, rfl⟩

theorem coker_subsingleton {n : ℕ} {Z : Matrix (Fin n) (Fin n) K} (hZ : IsInt R Z⁻¹)
    (h1 : Z * Z⁻¹ = 1) : Subsingleton (coker R Z) := by
  rw [Submodule.Quotient.subsingleton_iff, eq_top_iff]
  intro v _
  let w : Fin n → R := fun i => ⟨(Z⁻¹ *ᵥ coeLin R v) i, mulVec_int R hZ v i⟩
  show coeLin R v ∈ LinearMap.range ((Z.mulVecLin.restrictScalars R).comp (coeLin R))
  rw [LinearMap.mem_range]
  refine ⟨w, ?_⟩
  have hw : coeLin R w = Z⁻¹ *ᵥ coeLin R v := by
    funext i
    rfl
  show Z *ᵥ coeLin R w = coeLin R v
  rw [hw, Matrix.mulVec_mulVec, h1, Matrix.one_mulVec]

theorem card_iso_one {n n' : ℕ} {Z : Matrix (Fin n) (Fin n) K} {Z' : Matrix (Fin n') (Fin n') K}
    (hZ : IsInt R Z⁻¹) (h1 : Z * Z⁻¹ = 1) (hZ' : IsInt R Z'⁻¹) (h1' : Z' * Z'⁻¹ = 1) :
    Nat.card (isoZZ R Z Z') = 1 := by
  haveI := coker_subsingleton R hZ h1
  haveI := coker_subsingleton R hZ' h1'
  rw [Nat.card_eq_one_iff_unique]
  refine ⟨⟨fun a b => Subtype.ext (LinearEquiv.ext fun x => Subsingleton.elim _ _)⟩, ⟨⟨LinearEquiv.ofSubsingleton _ _, ?_⟩⟩⟩
  simp only [isoZZ, Set.mem_setOf_eq]
  exact ⟨Subsingleton.elim _ _, fun v v' _ => by rw [lamLin_zero R hZ, lamLin_zero R hZ']⟩

def cos1 (w : Point K) : Cos R w := (Quotient.mk _ 1, QuotientGroup.mk 1)

theorem cos_eq_iff (w : Point K) (q : Cos R w) : q = cos1 R w ↔
    (rep R q).1 ∈ intSub R (lowW K w.1 w.2) ∧ (rep R q).2 ∈ intSub R (upUniG K w.1.sum) := by
  obtain ⟨q1, q2⟩ := q
  simp only [cos1, rep, Prod.mk.injEq]
  apply and_congr
  · constructor
    · intro hq
      have h := QuotientGroup.rightRel_apply.mp (Quotient.exact ((Quotient.out_eq q1).trans hq))
      simpa using h
    · intro hq
      rw [← Quotient.out_eq q1]
      apply Quotient.sound
      exact QuotientGroup.rightRel_apply.mpr (by simpa using hq)
  · constructor
    · intro hq
      have h := QuotientGroup.eq.1 ((Quotient.out_eq q2).trans hq)
      simpa using h
    · intro hq
      rw [← Quotient.out_eq q2]
      exact QuotientGroup.eq.2 (by simpa using hq)

theorem int_iff (w : Point K) (hw : InGLR R w) (q : Cos R w) :
    IsInt R (orbZ w (rep R q)) ↔ q = cos1 R w := by
  rw [cos_eq_iff]
  constructor
  · exact int_of_orb R w hw (rep R q)
  · rintro ⟨h1, h2⟩
    exact (orb_of_int R w hw (rep R q) h1 h2).1

theorem phase_one (ψ : AddChar K ℂ) (hψ : ∀ r ∈ R, ψ r = 1) (w : Point K)
    (p : lowW K w.1 w.2 × upUniG K w.1.sum)
    (h1 : p.1 ∈ intSub R (lowW K w.1 w.2)) (h2 : p.2 ∈ intSub R (upUniG K w.1.sum)) :
    phase ψ p = 1 := by
  have hV := ((mem_intSub R _ p.1).1 h1).1
  have hU := ((mem_intSub R _ p.2).1 h2).1
  unfold phase
  apply hψ
  refine R.add_mem ?_ ?_
  · unfold sLow
    refine Subring.sum_mem _ (fun j _ => ?_)
    split_ifs
    · exact hV _ _
    · exact R.zero_mem
  · unfold sUp
    refine Subring.sum_mem _ (fun j _ => ?_)
    split_ifs
    · exact hU _ _
    · exact R.zero_mem

end Ones
end Formalism.FourierDecayAlt.P.A5x7

open Formalism.FourierDecayAlt.P.A5x7 in
theorem Formalism.FourierDecayAlt.P.zero_kernel_all_ones : Formalism.FourierDecayAlt.A5.BaseKernelOne := by
  intro K _ R ψ hψ h h' _ hh hh'
  unfold N0 Kp
  rw [finsum_eq_single _ (cos1 R h, cos1 R h')]
  · obtain ⟨a1, a2⟩ := (cos_eq_iff R h (cos1 R h)).1 rfl
    obtain ⟨b1, b2⟩ := (cos_eq_iff R h' (cos1 R h')).1 rfl
    obtain ⟨i1, j1, k1⟩ := orb_of_int R h hh _ a1 a2
    obtain ⟨i2, j2, k2⟩ := orb_of_int R h' hh' _ b1 b2
    unfold pairTerm
    dsimp only
    rw [if_pos ⟨i1, i2⟩, card_iso_one R j1 k1 j2 k2, phase_one R ψ hψ h _ a1 a2,
      phase_one R ψ hψ h' _ b1 b2]
    simp
  · rintro ⟨q1, q2⟩ hq
    have hnc : ¬ (IsInt R (orbZ h (rep R q1)) ∧ IsInt R (orbZ h' (rep R q2))) := by
      rintro ⟨c1, c2⟩
      exact hq (by rw [(int_iff R h hh q1).1 c1, (int_iff R h' hh' q2).1 c2])
    unfold pairTerm
    dsimp only
    rw [if_neg hnc, zero_mul, zero_mul]

namespace Formalism.FourierDecayAlt.P.A5x7

end Formalism.FourierDecayAlt.P.A5x7
