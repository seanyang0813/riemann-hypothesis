module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PmatIsHermitian
public import Mathlib.Algebra.Order.Chebyshev

@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

theorem pmat_eq_zero_of_eq {ε : Fin n → Bool} (z : PCoord ε → ℂ) {a b : Fin n} (h : ε a = ε b) :
    pmat z a b = 0 := by
  simp [pmat, h]

theorem pmat_mul_evU {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    pmat z * ((pmat_isHermitian z).eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) =
      ((pmat_isHermitian z).eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) *
        diagonal (fun a => (pev z a : ℂ)) := by
  refine (congrArg (· * _) (pmat_isHermitian z).spectral_theorem).trans ?_
  rw [Unitary.conjStarAlgAut_apply, Matrix.mul_assoc, Unitary.coe_star_mul_self, Matrix.mul_one]
  simp only [Function.comp_def, RCLike.ofReal_eq_complex_ofReal]
  rfl

theorem neg_pmat_eq {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    -pmat z = ((pmat_isHermitian z).eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) *
        diagonal (fun a => ((-pev z a : ℝ) : ℂ)) *
        star ((pmat_isHermitian z).eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) := by
  conv_lhs => rw [(pmat_isHermitian z).spectral_theorem]
  rw [Unitary.conjStarAlgAut_apply, ← Matrix.neg_mul, ← Matrix.mul_neg, Matrix.diagonal_neg]
  simp only [Function.comp_apply, RCLike.ofReal_eq_complex_ofReal, ← Complex.ofReal_neg]
  rfl

theorem jm_conj_pmat {ε : Fin n → Bool} (z : PCoord ε → ℂ) : Jm ε * (pmat z * Jm ε) = -pmat z := by
  ext a b
  unfold Jm
  simp only [diagonal_mul, mul_diagonal, Matrix.neg_apply]
  by_cases h : ε a = ε b
  · rw [pmat_eq_zero_of_eq z h]; simp
  · rcases hA : ε a <;> rcases hB : ε b <;> simp_all

theorem pev_neg_multiset {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    Multiset.map (fun a => -pev z a) univ.val = Multiset.map (pev z) univ.val := by
  have hcp : (-pmat z).charpoly = (pmat z).charpoly := by
    rw [← jm_conj_pmat z, Matrix.charpoly_mul_comm, Matrix.mul_assoc,
      _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self, Matrix.mul_one]
  have h2 : (-pmat z).charpoly = ∏ i, (Polynomial.X - Polynomial.C ((-pev z i : ℝ) : ℂ)) := by
    rw [neg_pmat_eq z, Matrix.charpoly_mul_comm, ← Matrix.mul_assoc,
      Unitary.star_mul_self_of_mem (pmat_isHermitian z).eigenvectorUnitary.2, Matrix.one_mul,
      Matrix.charpoly_diagonal]
  have h3 : (-pmat z).charpoly.roots = Multiset.map (fun a => ((-pev z a : ℝ) : ℂ)) univ.val := by
    rw [h2, Polynomial.roots_prod]
    · simp
    · exact Finset.prod_ne_zero_iff.mpr fun _ _ => Polynomial.X_sub_C_ne_zero _
  have h4 : (univ.val.map fun a => -pev z a).map (fun x : ℝ => (x : ℂ)) =
      (univ.val.map (pev z)).map (fun x : ℝ => (x : ℂ)) := by
    rw [Multiset.map_map, Multiset.map_map]
    exact h3.symm.trans ((congrArg Polynomial.roots hcp).trans
      (pmat_isHermitian z).roots_charpoly_eq_eigenvalues)
  exact Multiset.map_injective Complex.ofReal_injective h4

theorem sum_pev_neg {ε : Fin n → Bool} (z : PCoord ε → ℂ) (g : ℝ → ℝ) :
    ∑ a, g (-pev z a) = ∑ a, g (pev z a) := by
  have h := congrArg (fun s => (s.map g).sum) (pev_neg_multiset z)
  simp only [Multiset.map_map, Function.comp_def] at h
  rw [Finset.sum_eq_multiset_sum, Finset.sum_eq_multiset_sum]
  exact h

def pevU {ε : Fin n → Bool} (z : PCoord ε → ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  ((pmat_isHermitian z).eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ)

theorem quad_evU {ε : Fin n → Bool} (z : PCoord ε → ℂ) (c : Fin n → ℂ) :
    star (pevU z *ᵥ c) ⬝ᵥ (pmat z *ᵥ (pevU z *ᵥ c)) = ((∑ a, ‖c a‖ ^ 2 * pev z a : ℝ) : ℂ) := by
  have hAU := pmat_mul_evU z
  unfold pevU
  rw [Matrix.mulVec_mulVec, hAU, ← Matrix.mulVec_mulVec, Matrix.star_mulVec,
    Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, ← Matrix.star_eq_conjTranspose,
    Unitary.star_mul_self_of_mem (pmat_isHermitian z).eigenvectorUnitary.2, Matrix.vecMul_one]
  simp only [dotProduct, mulVec_diagonal, Pi.star_apply]
  push_cast
  refine Finset.sum_congr rfl (fun a _ => ?_)
  have h1 : star (c a) * c a = ((‖c a‖ : ℂ)) ^ 2 := by
    first
    | exact Complex.conj_mul' (c a)
  rw [← h1]
  ring

theorem quad_zero_of_support {ε : Fin n → Bool} (z : PCoord ε → ℂ) (b : Bool) (v : Fin n → ℂ)
    (hv : ∀ j, ε j = b → v j = 0) : star v ⬝ᵥ (pmat z *ᵥ v) = 0 := by
  simp only [dotProduct, mulVec, Finset.mul_sum]
  apply Finset.sum_eq_zero
  intro i _
  apply Finset.sum_eq_zero
  intro j _
  by_cases hi : ε i = b
  · simp [hv i hi]
  by_cases hj : ε j = b
  · simp [hv j hj]
  have hij : ε i = ε j := by
    cases h1 : ε i <;> cases h2 : ε j <;> cases b <;> simp_all
  simp [pmat_eq_zero_of_eq z hij]

def pevExt {ε : Fin n → Bool} (z : PCoord ε → ℂ) : ({a // 0 < pev z a} → ℂ) →ₗ[ℂ] (Fin n → ℂ) where
  toFun c a := if h : 0 < pev z a then c ⟨a, h⟩ else 0
  map_add' c d := by
    funext a; simp only [Pi.add_apply]; split_ifs <;> simp
  map_smul' r c := by
    funext a; simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; split_ifs <;> simp

theorem card_pos_le {ε : Fin n → Bool} (z : PCoord ε → ℂ) (b : Bool) :
    (univ.filter (fun a => 0 < pev z a)).card ≤ (univ.filter fun a => ε a = b).card := by
  classical
  let Φ : ({a // 0 < pev z a} → ℂ) →ₗ[ℂ] ({j // ε j = b} → ℂ) :=
    (LinearMap.funLeft ℂ ℂ (Subtype.val : {j // ε j = b} → Fin n)) ∘ₗ
      ((Matrix.mulVecLin (pevU z)) ∘ₗ pevExt z)
  have hinj : Function.Injective Φ := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro c hc
    rw [LinearMap.mem_ker] at hc
    rw [Submodule.mem_bot]
    have hv : ∀ j, ε j = b → (pevU z *ᵥ pevExt z c) j = 0 := by
      intro j hj
      have e := congrFun hc ⟨j, hj⟩
      simpa [Φ, LinearMap.funLeft_apply] using e
    have h0 := quad_zero_of_support z b _ hv
    rw [quad_evU] at h0
    have h1 : ∑ a, ‖pevExt z c a‖ ^ 2 * pev z a = 0 := by exact_mod_cast h0
    have hterm : ∀ a, 0 ≤ ‖pevExt z c a‖ ^ 2 * pev z a := by
      intro a
      by_cases ha : 0 < pev z a
      · exact mul_nonneg (sq_nonneg _) ha.le
      · have e : pevExt z c a = 0 := by simp [pevExt, ha]
        simp [e]
    have hz := (Finset.sum_eq_zero_iff_of_nonneg (fun a _ => hterm a)).mp h1
    funext x
    obtain ⟨a, ha⟩ := x
    have e := hz a (Finset.mem_univ a)
    have hext : pevExt z c a = c ⟨a, ha⟩ := by simp [pevExt, ha]
    rw [hext] at e
    have e2 : ‖c ⟨a, ha⟩‖ ^ 2 = 0 := by
      rcases mul_eq_zero.mp e with h | h
      · exact h
      · exact absurd h ha.ne'
    simpa using e2
  have hle := LinearMap.finrank_le_finrank_of_injective hinj
  first
  | simpa [Fintype.card_subtype] using hle

theorem pev_card_pos {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    (univ.filter (fun a => 0 < pev z a)).card ≤ q0 ε := by
  exact le_min (card_pos_le z true) (card_pos_le z false)

theorem pev_pos_sum_sq {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a ^ 2 = hs (pmat z) / 2 := by
  have h1 : (pmat z * pmat z).trace = ∑ a, ((pev z a : ℂ)) ^ 2 := by
    conv_lhs => rw [(pmat_isHermitian z).spectral_theorem]
    rw [← map_mul, Unitary.conjStarAlgAut_apply, Matrix.trace_mul_comm, ← Matrix.mul_assoc,
      Unitary.coe_star_mul_self, Matrix.one_mul, diagonal_mul_diagonal, trace_diagonal]
    simp only [Function.comp_apply, RCLike.ofReal_eq_complex_ofReal, sq]
    rfl
  have h2 : (pmat z * pmat z).trace = ((∑ i, ∑ j, ‖pmat z i j‖ ^ 2 : ℝ) : ℂ) := by
    simp only [Matrix.trace, Matrix.diag, Matrix.mul_apply]
    push_cast
    refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
    have hh : pmat z j i = star (pmat z i j) := by
      first
      | exact ((pmat_isHermitian z).apply j i).symm
    rw [hh]
    first
    | exact Complex.mul_conj' _
  have hsum : ∑ a, pev z a ^ 2 = ∑ i, ∑ j, ‖pmat z i j‖ ^ 2 := by
    have e := h1.symm.trans h2
    exact_mod_cast e
  have hsplit : ∑ a, pev z a ^ 2 = ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a ^ 2 +
      ∑ a, (if pev z a < 0 then pev z a ^ 2 else 0) := by
    rw [Finset.sum_filter, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun a _ => ?_)
    rcases lt_trichotomy (pev z a) 0 with h | h | h
    · simp [h, lt_asymm h]
    · simp [h]
    · simp [h, lt_asymm h]
  have hneg : ∑ a, (if pev z a < 0 then pev z a ^ 2 else 0) =
      ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a ^ 2 := by
    have e := sum_pev_neg z (fun x => if x < 0 then x ^ 2 else 0)
    rw [Finset.sum_filter]
    refine Eq.trans e.symm ?_
    refine Finset.sum_congr rfl (fun a _ => ?_)
    simp only [neg_lt_zero, neg_sq]
  unfold hs
  rw [← hsum, hsplit, hneg]
  ring

theorem sum_max_pev {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    ∑ a, max (pev z a) 0 = ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a := by
  rw [Finset.sum_filter]
  refine Finset.sum_congr rfl (fun a _ => ?_)
  split_ifs with h
  · exact max_eq_left h.le
  · exact max_eq_right (not_lt.mp h)

theorem sum_pos_pev_le {ε : Fin n → Bool} (z : PCoord ε → ℂ) :
    ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a ≤ rhoP z / 2 := by
  set S := ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a with hS
  have hcs : S ^ 2 ≤ ((univ.filter (fun a => 0 < pev z a)).card : ℝ) *
      ∑ a ∈ univ.filter (fun a => 0 < pev z a), pev z a ^ 2 := by
    first
    | exact sq_sum_le_card_mul_sum_sq
  rw [pev_pos_sum_sq] at hcs
  have hq : ((univ.filter (fun a => 0 < pev z a)).card : ℝ) ≤ q0 ε := by exact_mod_cast pev_card_pos z
  have hhs : 0 ≤ hs (pmat z) := by unfold hs; positivity
  have hR : (rhoP z / 2) ^ 2 = (q0 ε : ℝ) * (hs (pmat z) / 2) := by
    unfold rhoP
    rw [div_pow, mul_pow, Real.sq_sqrt (by positivity), Real.sq_sqrt hhs]
    ring
  have hRnn : 0 ≤ rhoP z / 2 := by unfold rhoP; positivity
  have h2 : S ^ 2 ≤ (rhoP z / 2) ^ 2 := by
    rw [hR]
    exact hcs.trans (mul_le_mul_of_nonneg_right hq (div_nonneg hhs zero_le_two))
  have h3 := Real.sqrt_le_sqrt h2
  rw [Real.sqrt_sq_eq_abs, Real.sqrt_sq hRnn] at h3
  exact (le_abs_self S).trans h3

theorem abs_sum_pev_le {ε : Fin n → Bool} (z : PCoord ε → ℂ) (S : Finset (Fin n)) :
    |∑ s ∈ S, pev z s| ≤ rhoP z / 2 := by
  have hup : ∀ T : Finset (Fin n), ∑ s ∈ T, pev z s ≤ rhoP z / 2 := by
    intro T
    calc ∑ s ∈ T, pev z s ≤ ∑ s ∈ T, max (pev z s) 0 := Finset.sum_le_sum (fun s _ => le_max_left _ _)
      _ ≤ ∑ s, max (pev z s) 0 :=
          Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ T) (fun s _ _ => le_max_right _ _)
      _ = _ := sum_max_pev z
      _ ≤ rhoP z / 2 := sum_pos_pev_le z
  have hdown : ∀ T : Finset (Fin n), ∑ s ∈ T, -pev z s ≤ rhoP z / 2 := by
    intro T
    calc ∑ s ∈ T, -pev z s ≤ ∑ s ∈ T, max (-pev z s) 0 := Finset.sum_le_sum (fun s _ => le_max_left _ _)
      _ ≤ ∑ s, max (-pev z s) 0 :=
          Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ T) (fun s _ _ => le_max_right _ _)
      _ = ∑ s, max (pev z s) 0 := sum_pev_neg z (fun x => max x 0)
      _ = _ := sum_max_pev z
      _ ≤ rhoP z / 2 := sum_pos_pev_le z
  rw [abs_le]
  constructor
  · have e := hdown S
    rw [Finset.sum_neg_distrib] at e
    linarith
  · exact hup S

end ReciprocityTheory.ChartRestriction.DS
