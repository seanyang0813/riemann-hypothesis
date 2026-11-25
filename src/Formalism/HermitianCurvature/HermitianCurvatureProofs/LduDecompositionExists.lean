module

public import Formalism.HermitianCurvature.MemParahoricTimesPrincipalCongruenceIff
public import Mathlib.RingTheory.DiscreteValuationRing.Basic

@[expose] public section

namespace Formalism.FourierDecayAlt.P.S3x7

open Matrix Finset
open Formalism.DoubleCosetMeasures (IsUpUni IsLowUni isUpUni_mul isLowUni_mul isUpUni_inv isLowUni_inv isUpUni_one isLowUni_one
  isUpUni_det isLowUni_det)
open Formalism.FourierDecayAlt.S3

section Minors

variable {A : Type} [CommRing A]

theorem submatrix_mul_left {l r : ℕ} {m : Type} (e : Fin l → Fin r) (he : Function.Injective e)
    (P M : Matrix (Fin r) (Fin r) A) (f : m → Fin r)
    (h : ∀ a k, k ∉ Set.range e → P (e a) k = 0) :
    (P * M).submatrix e f = P.submatrix e e * M.submatrix e f := by
  ext a b
  simp only [Matrix.submatrix_apply, Matrix.mul_apply]
  refine (Fintype.sum_of_injective e he _ _ ?_ ?_).symm
  · intro k hk; rw [h a k hk, zero_mul]
  · intro k; rfl

theorem submatrix_mul_right {l r : ℕ} {m : Type} (e : Fin l → Fin r) (he : Function.Injective e)
    (M P : Matrix (Fin r) (Fin r) A) (f : m → Fin r)
    (h : ∀ k b, k ∉ Set.range e → P k (e b) = 0) :
    (M * P).submatrix f e = M.submatrix f e * P.submatrix e e := by
  ext a b
  simp only [Matrix.submatrix_apply, Matrix.mul_apply]
  refine (Fintype.sum_of_injective e he _ _ ?_ ?_).symm
  · intro k hk; rw [h k b hk, mul_zero]
  · intro k; rfl

theorem low_apply {r : ℕ} {L : Matrix (Fin r) (Fin r) A} (hL : IsLowUni L) {i j : Fin r} (h : i < j) :
    L i j = 0 := hL.1 (by simpa using h)

theorem up_apply {r : ℕ} {U : Matrix (Fin r) (Fin r) A} (hU : IsUpUni U) {i j : Fin r} (h : j < i) :
    U i j = 0 := hU.1 (by simpa using h)

theorem mk_low {r : ℕ} {L : Matrix (Fin r) (Fin r) A} (h : ∀ i j, i < j → L i j = 0)
    (h1 : ∀ i, L i i = 1) : IsLowUni L :=
  ⟨fun i j hij => h i j (by simpa using hij), h1⟩

theorem mk_up {r : ℕ} {U : Matrix (Fin r) (Fin r) A} (h : ∀ i j, j < i → U i j = 0)
    (h1 : ∀ i, U i i = 1) : IsUpUni U :=
  ⟨fun i j hij => h i j (by simpa using hij), h1⟩

theorem not_range_castLE {l r : ℕ} (hl : l ≤ r) {k : Fin r} (hk : k ∉ Set.range (Fin.castLE hl)) :
    l ≤ k.val := by
  by_contra hlt
  exact hk ⟨⟨k.val, by omega⟩, Fin.ext rfl⟩

theorem lead_invariant {r : ℕ} {L M U : Matrix (Fin r) (Fin r) A} (hL : IsLowUni L) (hU : IsUpUni U)
    (l : ℕ) (hl : l ≤ r) : lead (L * M * U) l hl = lead M l hl := by
  unfold lead
  rw [submatrix_mul_right _ (Fin.castLE_injective hl), submatrix_mul_left _ (Fin.castLE_injective hl),
    Matrix.det_mul, Matrix.det_mul]
  · have h1 : IsLowUni (L.submatrix (Fin.castLE hl) (Fin.castLE hl)) :=
      mk_low (fun i j hij => low_apply hL (by rw [Fin.lt_def] at hij ⊢; exact hij)) (fun i => hL.2 _)
    have h2 : IsUpUni (U.submatrix (Fin.castLE hl) (Fin.castLE hl)) :=
      mk_up (fun i j hij => up_apply hU (by rw [Fin.lt_def] at hij ⊢; exact hij)) (fun i => hU.2 _)
    rw [isLowUni_det A h1, isUpUni_det A h2, one_mul, mul_one]
  · intro a k hk
    have := not_range_castLE hl hk
    exact low_apply hL (by rw [Fin.lt_def]; have := a.isLt; simp only [Fin.val_castLE]; omega)
  · intro k b hk
    have := not_range_castLE hl hk
    exact up_apply hU (by rw [Fin.lt_def]; have := b.isLt; simp only [Fin.val_castLE]; omega)

theorem lead_diagonal {r : ℕ} (d : Fin r → A) (l : ℕ) (hl : l ≤ r) :
    lead (Matrix.diagonal d) l hl = ∏ i : Fin l, d (Fin.castLE hl i) := by
  unfold lead
  rw [Matrix.submatrix_diagonal _ _ (Fin.castLE_injective hl), Matrix.det_diagonal]
  rfl

theorem lead_ldu {r : ℕ} {L U : Matrix (Fin r) (Fin r) A} (d : Fin r → A) (hL : IsLowUni L)
    (hU : IsUpUni U) (l : ℕ) (hl : l ≤ r) :
    lead (L * Matrix.diagonal d * U) l hl = ∏ i : Fin l, d (Fin.castLE hl i) := by
  rw [lead_invariant hL hU, lead_diagonal]

theorem lead_ldu_succ {r : ℕ} {L U : Matrix (Fin r) (Fin r) A} (d : Fin r → A) (hL : IsLowUni L)
    (hU : IsUpUni U) (l : ℕ) (hl : l < r) :
    lead (L * Matrix.diagonal d * U) (l + 1) hl = d ⟨l, hl⟩ * lead (L * Matrix.diagonal d * U) l hl.le := by
  rw [lead_ldu d hL hU, lead_ldu d hL hU, Fin.prod_univ_castSucc, mul_comm]
  rfl

theorem ldu_unique {r : ℕ} {L U L' U' : Matrix (Fin r) (Fin r) A} {d d' : Fin r → A}
    (hL : IsLowUni L) (hU : IsUpUni U) (hL' : IsLowUni L') (hU' : IsUpUni U')
    (hd : lead (L * Matrix.diagonal d * U) r le_rfl ∈ nonZeroDivisors A)
    (e : L * Matrix.diagonal d * U = L' * Matrix.diagonal d' * U') : L = L' ∧ d = d' ∧ U = U' := by
  rw [lead_ldu d hL hU] at hd
  have hnz : ∀ (i : Fin r) (x : A), x * d i = 0 → x = 0 := by
    intro i x hx
    refine (mem_nonZeroDivisors_iff_right.mp hd) x ?_
    have : (∏ i : Fin r, d (Fin.castLE le_rfl i)) = d i * ∏ j ∈ Finset.univ.erase i, d j :=
      (Finset.mul_prod_erase Finset.univ d (Finset.mem_univ i)).symm
    rw [this, ← mul_assoc, hx, zero_mul]
  have uL' : IsUnit L'.det := by rw [isLowUni_det A hL']; exact isUnit_one
  have uU : IsUnit U.det := by rw [isUpUni_det A hU]; exact isUnit_one
  have hP : IsLowUni (L'⁻¹ * L) := isLowUni_mul A (isLowUni_inv A hL') hL
  have hQ : IsUpUni (U' * U⁻¹) := isUpUni_mul A hU' (isUpUni_inv A hU)
  have key : (L'⁻¹ * L) * Matrix.diagonal d = Matrix.diagonal d' * (U' * U⁻¹) := by
    have h1 : L'⁻¹ * (L * Matrix.diagonal d * U) * U⁻¹ = L'⁻¹ * (L' * Matrix.diagonal d' * U') * U⁻¹ := by
      rw [e]
    have h2 : L'⁻¹ * (L * Matrix.diagonal d * U) * U⁻¹ = (L'⁻¹ * L) * Matrix.diagonal d := by
      rw [Matrix.mul_assoc L'⁻¹, Matrix.mul_nonsing_inv_cancel_right _ _ uU, Matrix.mul_assoc]
    have h3 : L'⁻¹ * (L' * Matrix.diagonal d' * U') * U⁻¹ = Matrix.diagonal d' * (U' * U⁻¹) := by
      rw [Matrix.mul_assoc L', Matrix.nonsing_inv_mul_cancel_left _ _ uL', Matrix.mul_assoc]
    rw [← h2, h1, h3]
  have ent : ∀ i j, (L'⁻¹ * L) i j * d j = d' i * (U' * U⁻¹) i j := by
    intro i j
    have := congrFun (congrFun key i) j
    rwa [Matrix.mul_diagonal, Matrix.diagonal_mul] at this
  have hdd : d = d' := by
    funext i
    have := ent i i
    rwa [hP.2, hQ.2, one_mul, mul_one] at this
  have hP1 : L'⁻¹ * L = 1 := by
    ext i j
    rcases lt_trichotomy i j with h | h | h
    · rw [low_apply hP h, Matrix.one_apply_ne h.ne]
    · subst h; rw [hP.2, Matrix.one_apply_eq]
    · rw [Matrix.one_apply_ne h.ne']
      refine hnz j _ ?_
      rw [ent, up_apply hQ h, mul_zero]
  have hQ1 : U' * U⁻¹ = 1 := by
    ext i j
    rcases lt_trichotomy i j with h | h | h
    · rw [Matrix.one_apply_ne h.ne]
      refine hnz i _ ?_
      rw [mul_comm, hdd, ← ent, low_apply hP h, zero_mul]
    · subst h; rw [hQ.2, Matrix.one_apply_eq]
    · rw [up_apply hQ h, Matrix.one_apply_ne h.ne']
  refine ⟨?_, hdd, ?_⟩
  · have := congrArg (L' * ·) hP1
    simpa [Matrix.mul_nonsing_inv_cancel_left _ _ uL'] using this
  · have := congrArg (· * U) hQ1
    simpa [Matrix.nonsing_inv_mul_cancel_right _ _ uU] using this.symm

end Minors

section Border

variable {A : Type} [CommRing A]

def border {r : ℕ} (B : Matrix (Fin r) (Fin r) A) (v u : Fin r → A) (c : A) :
    Matrix (Fin (r + 1)) (Fin (r + 1)) A :=
  Matrix.of fun i j =>
    Fin.lastCases (motive := fun _ => A) (Fin.lastCases (motive := fun _ => A) c u j)
      (fun i' => Fin.lastCases (motive := fun _ => A) (v i') (B i') j) i

@[simp] theorem border_cc {r : ℕ} (B : Matrix (Fin r) (Fin r) A) (v u : Fin r → A)
    (c : A) (i j : Fin r) : border B v u c i.castSucc j.castSucc = B i j := by
  simp [border]

@[simp] theorem border_cl {r : ℕ} (B : Matrix (Fin r) (Fin r) A) (v u : Fin r → A)
    (c : A) (i : Fin r) : border B v u c i.castSucc (Fin.last r) = v i := by
  simp [border]

@[simp] theorem border_lc {r : ℕ} (B : Matrix (Fin r) (Fin r) A) (v u : Fin r → A)
    (c : A) (j : Fin r) : border B v u c (Fin.last r) j.castSucc = u j := by
  simp [border]

@[simp] theorem border_ll {r : ℕ} (B : Matrix (Fin r) (Fin r) A) (v u : Fin r → A)
    (c : A) : border B v u c (Fin.last r) (Fin.last r) = c := by
  simp [border]

theorem border_eta {r : ℕ} (M : Matrix (Fin (r + 1)) (Fin (r + 1)) A) :
    M = border (M.submatrix Fin.castSucc Fin.castSucc) (fun i => M i.castSucc (Fin.last r))
      (fun j => M (Fin.last r) j.castSucc) (M (Fin.last r) (Fin.last r)) := by
  ext i j
  refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;> simp

theorem border_mul {r : ℕ} (B B' : Matrix (Fin r) (Fin r) A) (v u v' u' : Fin r → A) (c c' : A) :
    border B v u c * border B' v' u' c' =
      border (B * B' + Matrix.vecMulVec v u') (B *ᵥ v' + c' • v) (u ᵥ* B' + c • u')
        (u ⬝ᵥ v' + c * c') := by
  ext i j
  refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;>
    simp [Matrix.mul_apply, Fin.sum_univ_castSucc, Matrix.vecMulVec_apply, Matrix.mulVec,
      Matrix.vecMul, dotProduct, mul_comm]

theorem border_diagonal {r : ℕ} (d : Fin r → A) (s : A) :
    Matrix.diagonal (Fin.snoc (α := fun _ => A) d s) = border (Matrix.diagonal d) 0 0 s := by
  ext i j
  refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;>
    simp [Matrix.diagonal_apply, Fin.castSucc_ne_last, (Fin.castSucc_ne_last _).symm]

theorem border_low {r : ℕ} {L : Matrix (Fin r) (Fin r) A} (hL : IsLowUni L) (u : Fin r → A) :
    IsLowUni (border L 0 u 1) := by
  refine mk_low ?_ ?_
  · intro i j
    refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j
    · intro h; exact absurd h (lt_irrefl _)
    · intro h; exact absurd h (not_lt.mpr (Fin.le_last _))
    · intro _; simp
    · intro h; rw [border_cc]; exact low_apply hL (by simpa using h)
  · intro i
    refine Fin.lastCases ?_ (fun i => ?_) i
    · simp
    · rw [border_cc]; exact hL.2 i

theorem border_up {r : ℕ} {U : Matrix (Fin r) (Fin r) A} (hU : IsUpUni U) (v : Fin r → A) :
    IsUpUni (border U v 0 1) := by
  refine mk_up ?_ ?_
  · intro i j
    refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j
    · intro h; exact absurd h (lt_irrefl _)
    · intro _; simp
    · intro h; exact absurd h (not_lt.mpr (Fin.le_last _))
    · intro h; rw [border_cc]; exact up_apply hU (by simpa using h)
  · intro i
    refine Fin.lastCases ?_ (fun i => ?_) i
    · simp
    · rw [border_cc]; exact hU.2 i

theorem border_ldu {r : ℕ} (B L₀ D₀ U₀ : Matrix (Fin r) (Fin r) A) (v u : Fin r → A) (c : A)
    (uB : IsUnit B.det) (e₀ : B = L₀ * D₀ * U₀) :
    border B v u c = border L₀ 0 (u ᵥ* (B⁻¹ * L₀)) 1 *
      border D₀ 0 0 (c - ((u ᵥ* (B⁻¹ * L₀)) ᵥ* D₀) ⬝ᵥ ((U₀ * B⁻¹) *ᵥ v)) *
      border U₀ ((U₀ * B⁻¹) *ᵥ v) 0 1 := by
  have h1 : (L₀ * D₀) *ᵥ ((U₀ * B⁻¹) *ᵥ v) = v := by
    rw [Matrix.mulVec_mulVec, ← Matrix.mul_assoc, ← e₀, Matrix.mul_nonsing_inv _ uB,
      Matrix.one_mulVec]
  have h2 : ((u ᵥ* (B⁻¹ * L₀)) ᵥ* D₀) ᵥ* U₀ = u := by
    rw [Matrix.vecMul_vecMul, Matrix.vecMul_vecMul, Matrix.mul_assoc,
      ← Matrix.mul_assoc L₀, ← e₀, Matrix.nonsing_inv_mul _ uB, Matrix.vecMul_one]
  rw [border_mul, border_mul]
  simp only [Matrix.zero_vecMulVec, add_zero, Matrix.mulVec_zero, smul_zero, dotProduct_zero, one_mul,
    zero_add, mul_one, h1, h2, ← e₀, add_sub_cancel]

theorem ldu_exists : ∀ (r : ℕ) (M : Matrix (Fin r) (Fin r) A),
    (∀ (l : ℕ) (hl : l < r), IsUnit (lead M l hl.le)) →
    ∃ (L U : Matrix (Fin r) (Fin r) A) (d : Fin r → A), IsLowUni L ∧ IsUpUni U ∧
      M = L * Matrix.diagonal d * U := by
  intro r
  induction r with
  | zero =>
    intro M _
    exact ⟨1, 1, fun i => i.elim0, isLowUni_one A, isUpUni_one A, by ext i; exact i.elim0⟩
  | succ r ih =>
    intro M hM
    have hlead : ∀ (l : ℕ) (hl : l ≤ r), lead (M.submatrix Fin.castSucc Fin.castSucc) l hl =
        lead M l (hl.trans (Nat.le_succ r)) := by
      intro l hl; rfl
    obtain ⟨L₀, U₀, d₀, hL₀, hU₀, e₀⟩ := ih (M.submatrix Fin.castSucc Fin.castSucc)
      (fun l hl => by rw [hlead]; exact hM l (by omega))
    have uB : IsUnit (M.submatrix Fin.castSucc Fin.castSucc).det := hM r (Nat.lt_succ_self r)
    have key := border_ldu _ L₀ (Matrix.diagonal d₀) U₀ (fun i => M i.castSucc (Fin.last r))
      (fun j => M (Fin.last r) j.castSucc) (M (Fin.last r) (Fin.last r)) uB e₀
    rw [← border_eta M, ← border_diagonal] at key
    exact ⟨_, _, _, border_low hL₀ _, border_up hU₀ _, key⟩

end Border

section Blocks

variable {A : Type} [CommRing A] {r k : ℕ}

end Blocks

section Corner

variable {o : Type} [CommRing o] [IsDomain o] [IsDiscreteValuationRing o]

end Corner

end Formalism.FourierDecayAlt.P.S3x7

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt.P.S3x7

theorem ldu_decomposition_exists : Formalism.FourierDecayAlt.S3.LDUExists := by
  intro A _ r M hM
  obtain ⟨L, U, d, hL, hU, e⟩ := ldu_exists r M hM
  refine ⟨L, U, d, hL, hU, e, fun l hl => ?_⟩
  rw [e]
  exact lead_ldu_succ d hL hU l hl

end Formalism.FourierDecayAlt.P
