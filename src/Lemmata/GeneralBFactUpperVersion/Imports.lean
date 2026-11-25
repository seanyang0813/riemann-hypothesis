module

public import Mathlib.RingTheory.Ideal.Defs
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Algebra.Ring.GeomSum
public import Mathlib.RingTheory.Ideal.Quotient.Defs

@[expose] public section

namespace Bl.general_b_fact_upper_version

/-- If a nontrivial `M`-th root of unity is congruent to one modulo `P`, then `M` lies in `P`. -/
theorem goal1 {R : Type} [CommRing R] [IsDomain R] (ζ : R) (M : ℕ) (P : Ideal R)
    (h1 : ζ ≠ 1) (hM : ζ ^ M = 1) (hP : ζ - 1 ∈ P) : (M : R) ∈ P := by
  have hs : (∑ i ∈ Finset.range M, ζ ^ i) = 0 := by
    have h := geom_sum_mul ζ M
    rw [hM, sub_self] at h
    exact (mul_eq_zero.mp h).resolve_right (sub_ne_zero.mpr h1)
  rw [← Ideal.Quotient.eq_zero_iff_mem] at hP ⊢
  have h2 : Ideal.Quotient.mk P ζ = 1 := by
    rw [map_sub, map_one, sub_eq_zero] at hP
    exact hP
  simpa [map_sum, map_pow, h2] using congrArg (Ideal.Quotient.mk P) hs

end Bl.general_b_fact_upper_version
