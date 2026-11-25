module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ContinuousHermNormGroup
public import Mathlib.RingTheory.GradedAlgebra.Radical

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory NumberField

noncomputable section

section Lemmas

variable {R : Type*} [CommRing R]

theorem IsWeightedHomogeneous.bind₁ {σ τ : Type*} {w : σ → ℕ} {w' : τ → ℕ} {f : MvPolynomial σ R}
    {m : ℕ} (hf : IsWeightedHomogeneous w f m) (φ : σ → MvPolynomial τ R)
    (hφ : ∀ x, IsWeightedHomogeneous w' (φ x) (w x)) :
    IsWeightedHomogeneous w' (bind₁ φ f) m := by
  classical

  rw [f.as_sum, map_sum]
  apply IsWeightedHomogeneous.sum
  intro d hd
  rw [bind₁_monomial]
  have hw : Finsupp.weight w d = m := hf (mem_support_iff.mp hd)
  have h1 : IsWeightedHomogeneous w' (∏ x ∈ d.support, φ x ^ d x) (∑ x ∈ d.support, d x * w x) :=
    IsWeightedHomogeneous.prod _ _ _ fun x _ => by
      simpa [mul_comm] using (hφ x).pow (d x)
  have h2 := h1.C_mul (AddMonoidAlgebra.coeff f d)
  convert h2 using 1
  rw [← hw, Finsupp.weight_apply, Finsupp.sum]
  simp [smul_eq_mul]

variable {k n : ℕ}

theorem IsMultiHomog.specFirst {δ : ℕ} {f : MvPolynomial (Fin (k + 1) × Fin n) R}
    (hf : Heights.IsMultiHomog δ f) (u : Fin n → R) : Heights.IsMultiHomog δ (specFirst f u) := by
  rw [isMultiHomog_iff] at hf ⊢
  intro i
  refine IsWeightedHomogeneous.bind₁ (hf i.succ) _ fun x => ?_
  obtain ⟨a, j⟩ := x
  induction a using Fin.cases with
  | zero =>
    have : inGroup (n := n) i.succ ((0 : Fin (k + 1)), j) = 0 := by
      simp [inGroup, (Fin.succ_ne_zero i).symm]
    rw [this]
    exact isWeightedHomogeneous_C _ _
  | succ a =>
    have : inGroup (n := n) i.succ (a.succ, j) = inGroup (n := n) i (a, j) := by
      simp [inGroup, Fin.succ_inj]
    rw [this]
    exact isWeightedHomogeneous_X R _ (a, j)

theorem IsWeightedHomogeneous.map' {σ S : Type*} [CommSemiring S] {w : σ → ℕ} {f : MvPolynomial σ R}
    {m : ℕ} (hf : IsWeightedHomogeneous w f m) (φ : R →+* S) :
    IsWeightedHomogeneous w (MvPolynomial.map φ f) m := by
  intro d hd
  rw [coeff_map] at hd
  exact hf fun h => hd (by rw [h, map_zero])

end Lemmas

section Components

attribute [local instance] MvPolynomial.gradedAlgebra

variable {R : Type*} [CommRing R] {n : ℕ}

theorem isHomogIdeal_iff (I : Ideal (MvPolynomial (Fin n) R)) :
    IsHomogIdeal I ↔ I.IsHomogeneous (homogeneousSubmodule (Fin n) R) := by
  constructor
  · intro h i r hr
    have := h r hr i
    rwa [← decomposition.decompose'_apply] at this
  · intro h f hf d
    exact homogeneousComponent_mem_of_mem h hf d

theorem isHomogIdeal_sup_span_linForm {I : Ideal (MvPolynomial (Fin n) R)} (hI : IsHomogIdeal I)
    (u : Fin n → R) : IsHomogIdeal (I ⊔ Ideal.span {linForm u}) := by
  rw [isHomogIdeal_iff] at hI ⊢
  refine hI.sup (Ideal.homogeneous_span _ _ fun x hx => ?_)
  rw [Set.mem_singleton_iff] at hx
  subst hx
  refine ⟨1, ?_⟩
  rw [mem_homogeneousSubmodule]
  exact IsHomogeneous.sum _ _ _ fun j _ => isHomogeneous_C_mul_X _ _

variable [IsNoetherianRing R]

theorem isProjPrime_of_mem_support_fundCycle {J : Ideal (MvPolynomial (Fin n) R)} (hJ : IsHomogIdeal J)
    {W : Ideal (MvPolynomial (Fin n) R)} (hW : W ∈ (fundCycle J).support) : IsProjPrime W := by
  classical
  have hval : (fundCycle J) W ≠ 0 := Finsupp.mem_support_iff.mp hW
  have hrel : W ∈ relComps J := by
    by_contra h
    apply hval
    unfold fundCycle
    rw [Finsupp.onFinset_apply, if_neg h]
  obtain ⟨hmin, hW'⟩ := hrel
  have hprime : W.IsPrime := hmin.1.1
  have hJh := (isHomogIdeal_iff J).mp hJ
  refine ⟨hprime, (isHomogIdeal_iff W).mpr ?_, hW'⟩
  set core := (W.homogeneousCore (homogeneousSubmodule (Fin n) R)).toIdeal
  have hcore_prime : core.IsPrime := hprime.homogeneousCore
  have hJcore : J ≤ core := by
    rw [← hJh.toIdeal_homogeneousCore_eq_self]
    exact Ideal.homogeneousCore_mono _ hmin.1.2
  have hle : core ≤ W := Ideal.toIdeal_homogeneousCore_le _ _
  have heq : core = W := le_antisymm hle (hmin.2 ⟨hcore_prime, hJcore⟩ hle)
  rw [Ideal.IsHomogeneous.iff_eq]
  exact heq

end Components

section Height

variable {K : Type} [Field K] [NumberField K] {n : ℕ}

theorem chowHt_zero_groups (H : ArchData K n) (δ : ℕ) (g : MvPolynomial (Fin 0 × Fin n) K) :
    chowHt H 0 δ g = chowHt H 0 0 g := by
  simp [chowHt]

theorem chowHt_zero_groups_eq_zero (H : ArchData K n) (δ : ℕ) {g : MvPolynomial (Fin 0 × Fin n) K}
    (hg : g ≠ 0) : chowHt H 0 δ g = 0 := by
  rw [chowHt_zero_groups, eq_C_of_isEmpty g]
  rw [eq_C_of_isEmpty g] at hg
  exact chowHeightConst K n 0 H _ fun h => hg (by rw [h, map_zero])

theorem chowHt_pow (hMul : ChowHeightMul.Statement) (H : ArchData K n) {k : ℕ} (d : ℕ)
    {g : MvPolynomial (Fin k × Fin n) K} (hg : g ≠ 0) (m : ℕ) :
    chowHt H k (m * d) (g ^ m) = m * chowHt H k d g := by
  induction m with
  | zero =>
    rw [zero_mul, pow_zero, Nat.cast_zero, zero_mul, ← C_1]
    exact chowHeightConst K n k H 1 one_ne_zero
  | succ m ih =>
    rw [pow_succ, Nat.succ_mul, hMul K n H k _ _ _ _ (pow_ne_zero _ hg) hg, ih]
    push_cast
    ring

theorem chowHt_C_mul_prod (hMul : ChowHeightMul.Statement) (H : ArchData K n) {k : ℕ} {ι : Type*}
    (s : Finset ι) (m d : ι → ℕ) (g : ι → MvPolynomial (Fin k × Fin n) K) (hg : ∀ i ∈ s, g i ≠ 0)
    {c : K} (hc : c ≠ 0) :
    chowHt H k (∑ i ∈ s, m i * d i) (C c * ∏ i ∈ s, g i ^ m i) =
      ∑ i ∈ s, (m i : ℝ) * chowHt H k (d i) (g i) := by
  classical
  have hP : ∀ t ⊆ s, ∏ i ∈ t, g i ^ m i ≠ 0 := fun t ht =>
    Finset.prod_ne_zero_iff.mpr fun i hi => pow_ne_zero _ (hg i (ht hi))
  have hprod : ∀ t ⊆ s, chowHt H k (∑ i ∈ t, m i * d i) (∏ i ∈ t, g i ^ m i) =
      ∑ i ∈ t, (m i : ℝ) * chowHt H k (d i) (g i) := by
    intro t
    induction t using Finset.induction_on with
    | empty =>
      intro _
      rw [Finset.sum_empty, Finset.prod_empty, Finset.sum_empty, ← C_1]
      exact chowHeightConst K n k H 1 one_ne_zero
    | insert a t ha ih =>
      intro hts
      rw [Finset.sum_insert ha, Finset.prod_insert ha, Finset.sum_insert ha,
        hMul K n H k _ _ _ _ (pow_ne_zero _ (hg a (hts (Finset.mem_insert_self a t))))
          (hP t (fun x hx => hts (Finset.mem_insert_of_mem hx))),
        chowHt_pow hMul H _ (hg a (hts (Finset.mem_insert_self a t))),
        ih (fun x hx => hts (Finset.mem_insert_of_mem hx))]
  have := hMul K n H k 0 (∑ i ∈ s, m i * d i) (C c) _ (C_ne_zero.mpr hc) (hP s le_rfl)
  rw [zero_add] at this
  rw [this, chowHeightConst K n k H c hc, zero_add, hprod s le_rfl]



end Height


end

end GroundTheory.Heights₂.Heights
