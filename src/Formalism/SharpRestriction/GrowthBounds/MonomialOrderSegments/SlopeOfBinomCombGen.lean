module

public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MemPolKIff
public import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.PlaneGram

variable {K : Type} [Field K] (v : AddValuation K (WithTop ℚ)) {σ : Type}

def Slope (TotallyRealRoots : ℕ → ((σ →₀ ℕ) → K) → Prop) (c : ℕ) (f : (σ →₀ ℕ) → K) : Prop :=
  ∃ (ι : Type) (_ : Fintype ι) (lam : ι → K) (n : ι → ℕ) (b : ι → (σ →₀ ℕ) → K),
    (∀ k, ((n k : ℕ) : WithTop ℚ) ≤ v (lam k ^ 6)) ∧ (∀ k, TotallyRealRoots (n k) (b k)) ∧
    (∀ k α, 0 ≤ v (b k α)) ∧ ∀ α, (c : WithTop ℚ) ≤ v (f α - ∑ k, lam k * b k α)

structure CostOK (TotallyRealRoots : ℕ → ((σ →₀ ℕ) → K) → Prop) : Prop where
  one : TotallyRealRoots 0 (fun _ => 1)
  mul : ∀ m n f g, TotallyRealRoots m f → TotallyRealRoots n g → TotallyRealRoots (m + n) (fun α => f α * g α)
  add : ∀ n f g, TotallyRealRoots n f → TotallyRealRoots n g → TotallyRealRoots n (fun α => f α + g α)
  smul : ∀ n (a : K) f, TotallyRealRoots n f → TotallyRealRoots n (fun α => a * f α)
  mono : ∀ m n f, m ≤ n → TotallyRealRoots m f → TotallyRealRoots n f

variable {v}

theorem v_natCast_nonneg_monomial_order_segments (n : ℕ) : 0 ≤ v (n : K) := by
  induction n with
  | zero => rw [Nat.cast_zero, AddValuation.map_zero]; exact le_top
  | succ k ih =>
    rw [Nat.cast_succ]
    exact le_trans (le_min ih (le_of_eq (AddValuation.map_one v).symm)) (AddValuation.map_add v _ _)

theorem v_sum_nonneg {ι : Type} (s : Finset ι) (f : ι → K) (h : ∀ i ∈ s, 0 ≤ v (f i)) :
    0 ≤ v (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.sum_empty, AddValuation.map_zero]; exact le_top
  | @insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact le_trans (le_min (h a (Finset.mem_insert_self a s))
      (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))) (AddValuation.map_add v _ _)

theorem v_mul_nonneg {x y : K} (hx : 0 ≤ v x) (hy : 0 ≤ v y) : 0 ≤ v (x * y) := by
  rw [AddValuation.map_mul]
  exact add_nonneg hx hy

theorem v_prod_nonneg {ι : Type} (s : Finset ι) (f : ι → K) (h : ∀ i ∈ s, 0 ≤ v (f i)) :
    0 ≤ v (∏ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.prod_empty, AddValuation.map_one]
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha, AddValuation.map_mul]
    exact add_nonneg (h a (Finset.mem_insert_self a s))
      (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))

theorem v_mul_ge_left {x y : K} {c : WithTop ℚ} (hx : c ≤ v x) (hy : 0 ≤ v y) : c ≤ v (x * y) := by
  rw [AddValuation.map_mul]
  exact le_add_of_le_of_nonneg hx hy

theorem v_mul_ge_right {x y : K} {c : WithTop ℚ} (hx : 0 ≤ v x) (hy : c ≤ v y) : c ≤ v (x * y) := by
  rw [AddValuation.map_mul]
  exact le_add_of_nonneg_of_le hx hy

theorem v_add_ge {x y : K} {c : WithTop ℚ} (hx : c ≤ v x) (hy : c ≤ v y) : c ≤ v (x + y) := by
  exact le_trans (le_min hx hy) (AddValuation.map_add v x y)

namespace Slope

variable {TotallyRealRoots : ℕ → ((σ →₀ ℕ) → K) → Prop} {c : ℕ}

end Slope

namespace CostOK

variable {TotallyRealRoots : ℕ → ((σ →₀ ℕ) → K) → Prop}

theorem zero (hC : CostOK TotallyRealRoots) (n : ℕ) : TotallyRealRoots n (fun _ => 0) := by
  have h0 := hC.smul 0 (0 : K) _ hC.one
  simp only [zero_mul] at h0
  exact hC.mono 0 n _ (Nat.zero_le n) h0

theorem sum (hC : CostOK TotallyRealRoots) {κ : Type} (s : Finset κ) (n : ℕ) (f : κ → (σ →₀ ℕ) → K)
    (h : ∀ i ∈ s, TotallyRealRoots n (f i)) : TotallyRealRoots n (fun α => ∑ i ∈ s, f i α) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.sum_empty]
    exact hC.zero n
  | @insert a s ha ih =>
    have e : (fun α => ∑ i ∈ insert a s, f i α) = fun α => f a α + ∑ i ∈ s, f i α := by
      funext α
      rw [Finset.sum_insert ha]
    rw [e]
    exact hC.add n _ _ (h a (Finset.mem_insert_self a s))
      (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))

end CostOK

theorem one_add_X_pow_eq (P : ℕ) :
    ∃ Q : Polynomial ℕ, (1 + Polynomial.X : Polynomial ℕ) ^ P = 1 + Polynomial.X * Q := by
  induction P with
  | zero => exact ⟨0, by simp⟩
  | succ k ih =>
    obtain ⟨Q, hQ⟩ := ih
    exact ⟨Q + 1 + Polynomial.X * Q, by rw [pow_succ, hQ]; ring⟩

theorem choose_affine (ρ P m : ℕ) : ∃ z : ℕ → ℕ, ∀ β : ℕ,
    (ρ + P * β).choose m = ∑ i ∈ range (m + 1), z i * β.choose i := by
  obtain ⟨Q, hQ⟩ := one_add_X_pow_eq P
  refine ⟨fun i => (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i).coeff m,
    fun β => ?_⟩
  have hz : ∀ i, m < i →
      (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i).coeff m = 0 := by
    intro i hi
    rw [show ((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i =
        ((1 + Polynomial.X) ^ ρ * Q ^ i) * Polynomial.X ^ i by ring,
      Polynomial.coeff_mul_X_pow', if_neg (by omega)]
  have hL : ∀ i, (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) *
      ((Polynomial.X * Q) ^ i * 1 ^ (β - i) * ((β.choose i : ℕ) : Polynomial ℕ))).coeff m =
      (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i).coeff m * β.choose i := by
    intro i
    rw [one_pow, mul_one, ← mul_assoc, Polynomial.coeff_mul_natCast, Nat.cast_id]
  have h1 : (ρ + P * β).choose m = ((1 + Polynomial.X : Polynomial ℕ) ^ (ρ + P * β)).coeff m := by
    rw [Polynomial.coeff_one_add_X_pow, Nat.cast_id]
  rw [h1, pow_add, pow_mul, hQ, add_comm (1 : Polynomial ℕ) (Polynomial.X * Q), add_pow (Polynomial.X * Q) 1 β,
    Finset.mul_sum, Polynomial.finsetSum_coeff]
  simp_rw [hL]
  show ∑ i ∈ Finset.range (β + 1),
      (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i).coeff m * β.choose i =
    ∑ i ∈ Finset.range (m + 1),
      (((1 + Polynomial.X : Polynomial ℕ) ^ ρ) * (Polynomial.X * Q) ^ i).coeff m * β.choose i
  rw [Finset.sum_subset (Finset.range_mono (show β + 1 ≤ β + m + 1 by omega))
      (fun i _ hi => by
        rw [Finset.mem_range, not_lt] at hi
        rw [Nat.choose_eq_zero_of_lt (by omega), mul_zero]),
    Finset.sum_subset (Finset.range_mono (show m + 1 ≤ β + m + 1 by omega))
      (fun i _ hi => by
        rw [Finset.mem_range, not_lt] at hi
        rw [hz i (by omega), zero_mul])]

section Binom

variable {TotallyRealRoots : ℕ → ((σ →₀ ℕ) → K) → Prop}

theorem cost_prod (h1 : TotallyRealRoots 0 (fun _ => 1))
    (hmul : ∀ m n f g, TotallyRealRoots m f → TotallyRealRoots n g → TotallyRealRoots (m + n) (fun α => f α * g α))
    {κ : Type} (s : Finset κ) (n : κ → ℕ) (f : κ → (σ →₀ ℕ) → K)
    (h : ∀ i ∈ s, TotallyRealRoots (n i) (f i)) : TotallyRealRoots (∑ i ∈ s, n i) (fun α => ∏ i ∈ s, f i α) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.prod_empty, Finset.sum_empty]
    exact h1
  | @insert a s ha ih =>
    have e : (fun α => ∏ i ∈ insert a s, f i α) = fun α => f a α * ∏ i ∈ s, f i α := by
      funext α
      rw [Finset.prod_insert ha]
    rw [e, Finset.sum_insert ha]
    exact hmul _ _ _ _ (h a (Finset.mem_insert_self a s))
      (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))

theorem cost_prod_choose_gen (h1 : TotallyRealRoots 0 (fun _ => 1))
    (hmul : ∀ m n f g, TotallyRealRoots m f → TotallyRealRoots n g → TotallyRealRoots (m + n) (fun α => f α * g α))
    {κ : Type} [Fintype κ] (u : κ → (σ →₀ ℕ) → ℕ)
    (hu : ∀ a k, TotallyRealRoots k (fun α => ((u a α).choose k : K))) (m : κ → ℕ) :
    TotallyRealRoots (∑ a, m a) (fun α => ∏ a, ((u a α).choose (m a) : K)) := by
  exact cost_prod h1 hmul Finset.univ m (fun a α => ((u a α).choose (m a) : K))
    (fun a _ => hu a (m a))

theorem cost_choose_affine (hC : CostOK TotallyRealRoots) (u : (σ →₀ ℕ) → ℕ)
    (hu : ∀ k, TotallyRealRoots k (fun α => ((u α).choose k : K))) (ρ P m : ℕ) :
    TotallyRealRoots m (fun α => ((ρ + P * u α).choose m : K)) := by
  obtain ⟨z, hz⟩ := choose_affine ρ P m
  have e : (fun α => (((ρ + P * u α).choose m : ℕ) : K)) =
      fun α => ∑ i ∈ Finset.range (m + 1), (z i : K) * ((u α).choose i : K) := by
    funext α
    rw [hz (u α)]
    push_cast
    rfl
  rw [e]
  exact hC.sum (Finset.range (m + 1)) m (fun i α => (z i : K) * ((u α).choose i : K))
    (fun i hi => hC.smul m (z i : K) _
      (hC.mono i m _ (by have := Finset.mem_range.mp hi; omega) (hu i)))

theorem approx_of_trunc_gen (hC : CostOK TotallyRealRoots) {κ : Type} [Fintype κ] (u : κ → (σ →₀ ℕ) → ℕ)
    (hu : ∀ a k, TotallyRealRoots k (fun α => ((u a α).choose k : K)))
    (T : Finset (κ → ℕ)) (lam : (κ → ℕ) → K) {c n : ℕ}
    (hlam : ∀ m ∈ T, 0 ≤ v (lam m) ∧ ∑ a, m a ≤ n) (f : (σ →₀ ℕ) → K)
    (hf : ∀ α, (c : WithTop ℚ) ≤ v (f α - binomComb T lam (fun a => u a α))) :
    ∃ g : (σ →₀ ℕ) → K, (∀ α, 0 ≤ v (g α)) ∧ (∀ α, (c : WithTop ℚ) ≤ v (f α - g α)) ∧ TotallyRealRoots n g := by
  refine ⟨fun α => binomComb T lam (fun a => u a α), fun α => ?_, hf, ?_⟩
  · show 0 ≤ v (∑ m ∈ T, lam m * ∏ a, ((u a α).choose (m a) : K))
    exact v_sum_nonneg _ _ (fun m hm => v_mul_nonneg (hlam m hm).1
      (v_prod_nonneg _ _ (fun a _ => v_natCast_nonneg_monomial_order_segments _)))
  · exact hC.sum T n (fun m α => lam m * ∏ a, ((u a α).choose (m a) : K))
      (fun m hm => hC.smul n (lam m) _
        (hC.mono _ n _ (hlam m hm).2 (cost_prod_choose_gen hC.one hC.mul u hu m)))

theorem approx_of_trunc [Fintype σ] (hC : CostOK TotallyRealRoots)
    (hch : ∀ x k, TotallyRealRoots k (fun α => ((α x).choose k : K)))
    (T : Finset (σ → ℕ)) (lam : (σ → ℕ) → K) {c n : ℕ}
    (hlam : ∀ m ∈ T, 0 ≤ v (lam m) ∧ ∑ x, m x ≤ n) (f : (σ →₀ ℕ) → K)
    (hf : ∀ α, (c : WithTop ℚ) ≤ v (f α - binomComb T lam (fun x => α x))) :
    ∃ g : (σ →₀ ℕ) → K, (∀ α, 0 ≤ v (g α)) ∧ (∀ α, (c : WithTop ℚ) ≤ v (f α - g α)) ∧ TotallyRealRoots n g := by
  exact approx_of_trunc_gen hC (fun x α => α x) hch T lam hlam f hf

end Binom

section DiagCost

open MvPolynomial

theorem dg_one_fun (F : MvPolynomial σ K) : dg (fun _ => (1 : K)) F = F := by
  ext α
  simp only [coeff_dg]
  ring

theorem dg_mul_fun (f g : (σ →₀ ℕ) → K) (F : MvPolynomial σ K) :
    dg (fun α => f α * g α) F = dg f (dg g F) := by
  ext α
  simp only [coeff_dg]
  ring

theorem dg_add_fun (f g : (σ →₀ ℕ) → K) (F : MvPolynomial σ K) :
    dg (fun α => f α + g α) F = dg f F + dg g F := by
  ext α
  simp only [coeff_dg, MvPolynomial.coeff_add]
  ring

theorem dg_smul_fun (a : K) (f : (σ →₀ ℕ) → K) (F : MvPolynomial σ K) :
    dg (fun α => a * f α) F = a • dg f F := by
  ext α
  simp only [coeff_dg, MvPolynomial.coeff_smul, smul_eq_mul]
  ring

theorem dg_sub_fun (f g : (σ →₀ ℕ) → K) (F : MvPolynomial σ K) :
    dg (fun α => f α - g α) F = dg f F - dg g F := by
  ext α
  simp only [coeff_dg, MvPolynomial.coeff_sub]
  ring

def CostV {L : Type} [DecidableEq L] {r : ℕ} (sg : L → Bool) (fam : Set (Finset L)) (n : ℕ)
    (f : (L × Fin r →₀ ℕ) → K) : Prop :=
  ∀ S ∈ fam, ∀ (θ : ℝ) (F : MvPolynomial (L × Fin r) K), vala sg S θ F → vala sg S (θ - n) (dg f F)

theorem costV_ok {L : Type} [DecidableEq L] {r : ℕ} (sg : L → Bool) (fam : Set (Finset L))
    (hadd : ∀ S ∈ fam, ∀ (θ : ℝ) (F G : MvPolynomial (L × Fin r) K),
      vala sg S θ F → vala sg S θ G → vala sg S θ (F + G))
    (hsmul : ∀ S ∈ fam, ∀ (θ : ℝ) (a : K) (F : MvPolynomial (L × Fin r) K),
      vala sg S θ F → vala sg S θ (a • F)) :
    CostOK (CostV (K := K) (r := r) sg fam) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro S _ θ F h
    rw [dg_one_fun]
    simpa using h
  · intro m n f g hf hg S hS θ F h
    rw [dg_mul_fun]
    have := hf S hS _ _ (hg S hS θ F h)
    have e : θ - ((m + n : ℕ) : ℝ) = θ - n - m := by push_cast; ring
    rw [e]; exact this
  · intro n f g hf hg S hS θ F h
    rw [dg_add_fun]
    exact hadd S hS _ _ _ (hf S hS θ F h) (hg S hS θ F h)
  · intro n a f hf S hS θ F h
    rw [dg_smul_fun]
    exact hsmul S hS _ _ _ (hf S hS θ F h)
  · intro m n f hmn hf S hS θ F h
    have h1 := hf S hS θ F h
    unfold vala at h1 ⊢
    refine le_trans ?_ h1
    have : θ - (n : ℝ) ≤ θ - (m : ℝ) := by
      have : (m : ℝ) ≤ n := by exact_mod_cast hmn
      linarith
    exact_mod_cast this

end DiagCost

end Formalism.MainNotions.PlaneGram
