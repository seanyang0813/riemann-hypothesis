module

public import Formalism.SharpRestriction.GrowthBounds.RootWeights.BinomialStableContainsComponents
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.LaurentCoefficientsMemProperty
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.SubstitutionPreservesOfGenerators
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees

@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

def binomialFunctions : AddSubgroup (ℤ → ℤ) := AddSubgroup.closure (Set.range fun k : ℕ => fun w : ℤ => Ring.choose w k)

theorem binomialFunctions_shift_mem (s : ℤ) (k : ℕ) : (fun w : ℤ => Ring.choose (w + s) k) ∈ binomialFunctions := by
  have h : (fun w : ℤ => Ring.choose (w + s) k) =
      ∑ ij ∈ Finset.HasAntidiagonal.antidiagonal k, Ring.choose s ij.2 • (fun w : ℤ => Ring.choose w ij.1) := by
    funext w
    rw [Ring.add_choose_eq (h := Commute.all w s), Finset.sum_apply]
    refine Finset.sum_congr rfl fun ij _ => ?_
    simp [mul_comm]
  rw [h]
  exact AddSubgroup.sum_mem _ fun ij _ =>
    AddSubgroup.zsmul_mem _ (AddSubgroup.subset_closure (Set.mem_range_self ij.1)) _

theorem binomialFunctions_window_indicator (w0 : ℤ) (B : ℕ) : ∃ f ∈ binomialFunctions, ∀ w : ℤ, -(B : ℤ) ≤ w → w ≤ B →
    f w = if w = w0 then 1 else 0 := by
  by_cases hw0 : -(B : ℤ) ≤ w0 ∧ w0 ≤ B
  · obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le (show 0 ≤ w0 + (B : ℤ) by omega)
    let c (j : ℕ) : ℤ := (-1)^j * (m + j).choose m
    let f : ℤ → ℤ := ∑ j ∈ Finset.range (2 * B + 1), c j • (fun w : ℤ => Ring.choose (w + B) (m + j))
    refine ⟨f, ?_, ?_⟩
    · exact AddSubgroup.sum_mem _ fun j _ =>
        AddSubgroup.zsmul_mem _ (binomialFunctions_shift_mem (B : ℤ) (m + j)) _
    · intro w hw1 hw2
      obtain ⟨x, hx⟩ := Int.eq_ofNat_of_zero_le (show 0 ≤ w + (B : ℤ) by omega)
      have hxB : x ≤ 2 * B := by omega
      have heq : w = w0 ↔ x = m := by omega
      change (∑ j ∈ Finset.range (2 * B + 1), c j • (fun u : ℤ => Ring.choose (u + B) (m + j))) w = _
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hx, Ring.choose_natCast]
      have hterm (j : ℕ) : c j * (x.choose (m + j) : ℤ) =
          (x.choose m : ℤ) * ((-1)^j * (x - m).choose j) := by
        have h := Nat.choose_mul (n := x) (k := m + j) (s := m) (by omega)
        rw [show m + j - m = j by omega] at h
        have hi : (x.choose (m + j) : ℤ) * ((m + j).choose m : ℤ) =
            (x.choose m : ℤ) * ((x - m).choose j : ℤ) := by exact_mod_cast h
        calc c j * (x.choose (m + j) : ℤ) =
            (-1 : ℤ)^j * ((x.choose (m + j) : ℤ) * ((m + j).choose m : ℤ)) := by dsimp [c]; ring
          _ = _ := by rw [hi]; ring
      simp_rw [hterm]
      rw [← Finset.mul_sum]
      have hcut :
          (∑ j ∈ Finset.range (2 * B + 1), ((-1)^j * (x - m).choose j : ℤ)) =
            ∑ j ∈ Finset.range (x - m + 1), ((-1)^j * (x - m).choose j : ℤ) := by
        symm
        apply Finset.sum_subset (Finset.range_mono (by omega))
        intro j _ hj
        have hj' : x - m < j := by simp only [Finset.mem_range, not_lt] at hj; omega
        simp [Nat.choose_eq_zero_of_lt hj']
      rw [hcut, Int.alternating_sum_range_choose]
      rcases lt_trichotomy x m with hxm | hxm | hxm
      · simp [mt heq.mp hxm.ne, Nat.choose_eq_zero_of_lt hxm]
      · simp [hxm, heq.mpr hxm]
      · have hsub : x - m ≠ 0 := by omega
        simp [mt heq.mp hxm.ne', hsub]
  · refine ⟨0, binomialFunctions.zero_mem, ?_⟩
    intro w hw1 hw2
    have hne : w ≠ w0 := by omega
    simp [hne]

section graded

variable {R : Type*} [CommRing R] {ι : Type*} [Fintype ι] {n : ℕ} (LL : Letters ι) (S : Set ι)

def diagonalMultiplier (a : Fin n) (f : ℤ → ℤ) (x : MvPolynomial (ι × Fin n) R) : MvPolynomial (ι × Fin n) R :=
  ∑ m ∈ x.support, monomial m (x.coeff m * ((f (wtS LL S m a) : ℤ) : R))


open Classical in
def monomialRestriction (q : (ι × Fin n →₀ ℕ) → Prop) (x : MvPolynomial (ι × Fin n) R) : MvPolynomial (ι × Fin n) R :=
  ∑ m ∈ x.support.filter q, monomial m (x.coeff m)

theorem coeff_diagonalMultiplier (a : Fin n) (f : ℤ → ℤ) (x : MvPolynomial (ι × Fin n) R) (m : ι × Fin n →₀ ℕ) :
    AddMonoidAlgebra.coeff (diagonalMultiplier LL S a f x) m = x.coeff m * ((f (wtS LL S m a) : ℤ) : R) := by
  classical
  simp only [diagonalMultiplier, coeff_sum, coeff_monomial]
  rw [Finset.sum_ite_eq']
  split_ifs with h
  · rfl
  · rw [MvPolynomial.mem_support_iff, not_not] at h
    rw [h, zero_mul]

open Classical in
theorem coeff_monomialRestriction (q : (ι × Fin n →₀ ℕ) → Prop) (x : MvPolynomial (ι × Fin n) R) (m : ι × Fin n →₀ ℕ) :
    AddMonoidAlgebra.coeff (monomialRestriction q x) m = if q m then x.coeff m else 0 := by
  rw [monomialRestriction, AddMonoidAlgebra.coeff_sum]
  change ((∑ i ∈ x.coeff.support.filter q, Finsupp.single i (x.coeff i)) : _ →₀ R) m = _
  rw [← Finsupp.filter_eq_sum, Finsupp.filter_apply]

theorem diagonalMultiplier_mem (W : Submodule R (MvPolynomial (ι × Fin n) R))
    (hW : ∀ a k, ∀ x ∈ W, binomPol R LL S a k x ∈ W) (a : Fin n) (f : ℤ → ℤ) (hf : f ∈ binomialFunctions) :
    ∀ x ∈ W, diagonalMultiplier LL S a f x ∈ W := by
  have hb : ∀ (k : ℕ) (x : MvPolynomial (ι × Fin n) R),
      binomPol R LL S a k x = diagonalMultiplier LL S a (fun w => Ring.choose w k) x := by
    intro k x
    rw [binomPol, Module.Basis.constr_apply]
    simp only [Finsupp.sum, MvPolynomial.smul_monomial, smul_eq_mul]
    rfl
  intro x hx
  let multiplier : (ℤ → ℤ) →+ MvPolynomial (ι × Fin n) R :=
    { toFun := fun g => diagonalMultiplier LL S a g x
      map_zero' := by
        ext m
        simp [coeff_diagonalMultiplier]
      map_add' := by
        intro g g'
        ext m
        simp [coeff_diagonalMultiplier, mul_add] }
  have hclosure : binomialFunctions ≤ W.toAddSubgroup.comap multiplier := by
    rw [binomialFunctions, AddSubgroup.closure_le]
    rintro g ⟨k, rfl⟩
    change diagonalMultiplier LL S a (fun w => Ring.choose w k) x ∈ W
    rw [← hb]
    exact hW a k x hx
  exact hclosure hf

theorem weightEntry_restriction_mem (W : Submodule R (MvPolynomial (ι × Fin n) R))
    (hW : ∀ a k, ∀ x ∈ W, binomPol R LL S a k x ∈ W) (a : Fin n) (w0 : ℤ) :
    ∀ x ∈ W, monomialRestriction (fun m => wtS LL S m a = w0) x ∈ W := by
  intro x hx
  obtain ⟨B, hB⟩ : ∃ B : ℕ, ∀ m ∈ x.support, -(B : ℤ) ≤ wtS LL S m a ∧ wtS LL S m a ≤ B := by
    refine ⟨∑ m ∈ x.support, (wtS LL S m a).natAbs, fun m hm => ?_⟩
    have h := Finset.single_le_sum (f := fun m => (wtS LL S m a).natAbs) (fun _ _ => Nat.zero_le _) hm
    have h2 : |wtS LL S m a| ≤ ((∑ m ∈ x.support, (wtS LL S m a).natAbs : ℕ) : ℤ) := by
      rw [Int.abs_eq_natAbs]
      exact_mod_cast h
    exact ⟨by linarith [neg_abs_le (wtS LL S m a)], by linarith [le_abs_self (wtS LL S m a)]⟩
  obtain ⟨f, hf, hfw⟩ := binomialFunctions_window_indicator w0 B
  have e : monomialRestriction (fun m => wtS LL S m a = w0) x = diagonalMultiplier LL S a f x := by
    ext m
    rw [coeff_monomialRestriction, coeff_diagonalMultiplier]
    by_cases hm : m ∈ x.support
    · rw [hfw _ (hB m hm).1 (hB m hm).2]
      split_ifs <;> simp
    · rw [MvPolynomial.mem_support_iff, not_not] at hm
      simp [hm]
  rw [e]
  exact diagonalMultiplier_mem LL S W hW a f hf x hx

end graded

theorem binomial_stable_contains_components : BinomialStableContainsComponents := by
  intro R _ ι _ LL n S W hW x hx nu
  classical
  have key (s : Finset (Fin n)) : monomialRestriction (fun m => ∀ a ∈ s, wtS LL S m a = nu a) x ∈ W := by
    induction s using Finset.induction_on with
    | empty =>
      have e : monomialRestriction (fun m => ∀ a ∈ (∅ : Finset (Fin n)), wtS LL S m a = nu a) x = x := by
        ext m
        simp [coeff_monomialRestriction]
      rw [e]
      exact hx
    | @insert a s _ ih =>
      have e : monomialRestriction (fun m => ∀ b ∈ insert a s, wtS LL S m b = nu b) x =
          monomialRestriction (fun m => wtS LL S m a = nu a) (monomialRestriction (fun m => ∀ b ∈ s, wtS LL S m b = nu b) x) := by
        ext m
        simp only [coeff_monomialRestriction, Finset.forall_mem_insert]
        by_cases ha : wtS LL S m a = nu a <;> simp [ha]
      rw [e]
      exact weightEntry_restriction_mem LL S W hW a (nu a) _ ih
  have e : weightComponent LL S nu x = monomialRestriction (fun m => ∀ a ∈ Finset.univ, wtS LL S m a = nu a) x := by
    ext m
    simp only [coeff_weightComponent, coeff_monomialRestriction, Finset.mem_univ, true_implies, _root_.funext_iff]
    by_cases h : ∀ a : Fin n, wtS LL S m a = nu a <;> simp [h]
  rw [e]
  exact key Finset.univ

end Formalism.MainNotions.G.GLWeightTheory
