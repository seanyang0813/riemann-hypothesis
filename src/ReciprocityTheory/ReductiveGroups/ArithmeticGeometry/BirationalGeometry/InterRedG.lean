module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily
import Mathlib.Tactic.TypeStar
import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.Geo

open MvPolynomial ReciprocityTheory.AnForm.M

section Alg

variable {K : Type*} [Fintype K] {ι : K → Type*} [∀ k, Fintype (ι k)]

open Classical in
theorem blockDeg_single (q : Σ k, ι k) (m : ℕ) (k' : K) :
    ∑ i, (Finsupp.single q m : (Σ k, ι k) →₀ ℕ) ⟨k', i⟩ = if q.1 = k' then m else 0 := by
  obtain ⟨k0, i0⟩ := q
  by_cases h : k0 = k'
  · subst h
    simp [Finsupp.single_apply]
  · simp [h]

def secOf (i : ∀ k, ι k) (b : K → ℕ) : MRing ι := ∏ k, X ⟨k, i k⟩ ^ b k

theorem secOf_eq (i : ∀ k, ι k) (b : K → ℕ) :
    secOf i b = monomial (∑ k, Finsupp.single (⟨k, i k⟩ : Σ k, ι k) (b k)) 1 := by
  rw [secOf, MvPolynomial.monomial_sum_one]
  simp [MvPolynomial.X_pow_eq_monomial]

theorem isMultiHomog_secOf (i : ∀ k, ι k) (b : K → ℕ) : IsMultiHomog (secOf i b) b := by
  classical
  intro m hm k
  rw [secOf_eq, MvPolynomial.support_monomial, if_neg one_ne_zero, Finset.mem_singleton] at hm
  subst hm
  simp only [Finsupp.finsetSum_apply]
  rw [Finset.sum_comm]
  simp only [blockDeg_single]
  simp

end Alg

end ReciprocityTheory.ChartRestriction.G.Geo
