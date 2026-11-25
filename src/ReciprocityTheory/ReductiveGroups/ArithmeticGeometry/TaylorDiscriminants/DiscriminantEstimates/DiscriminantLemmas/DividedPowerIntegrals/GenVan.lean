module

import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.DiscriminantEstimates.DiscriminantLemmas.WickFormula.GenVan
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.DiscriminantEstimates.DiscriminantLemmas.DividedPowerIntegrals.GenDefs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.DiscriminantEstimates.DiscriminantLemmas.DividedPowerIntegrals.GenPow

@[expose] public section

open MvPolynomial

namespace PI.DivPowInteg.Gen

section
variable {K σ ι : Type} [CommRing K] [Fintype ι]

noncomputable def lowDeg (f : ι → σ) (t : ℕ) : Submodule K (MvPolynomial σ K) :=
  restrictSupport K {m | ∑ i, m (f i) < t}

theorem mem_lowDeg {f : ι → σ} {t : ℕ} {R : MvPolynomial σ K} :
    R ∈ lowDeg f t ↔ ∀ m ∈ R.support, ∑ i, m (f i) < t := by
  unfold lowDeg
  rw [mem_restrictSupport_iff]
  exact ⟨fun h m hm => h (Finset.mem_coe.mpr hm), fun h m hm => h m (Finset.mem_coe.mp hm)⟩

theorem eq_zero_of_mem_lowDeg_zero {f : ι → σ} {R : MvPolynomial σ K}
    (h : R ∈ lowDeg f 0) : R = 0 := by
  rw [mem_lowDeg] at h
  by_contra hR
  obtain ⟨m, hm⟩ := Finset.nonempty_of_ne_empty (mt MvPolynomial.support_eq_empty.mp hR)
  exact absurd (h m hm) (Nat.not_lt_zero _)

theorem pderiv_mem_lowDeg {f : ι → σ} {t : ℕ} (k : σ) {R : MvPolynomial σ K}
    (h : R ∈ lowDeg f t) : pderiv k R ∈ lowDeg f t :=
  _root_.PI.WickFormula.Gen.pderiv_mem_lowDeg k h

theorem pderiv_mem_lowDeg_of_succ {f : ι → σ} {t : ℕ} (i : ι) {R : MvPolynomial σ K}
    (h : R ∈ lowDeg f (t + 1)) : pderiv (f i) R ∈ lowDeg f t := by
  apply PI.WickFormula.Gen.pderiv_mem_lowDeg_of_succ <;> assumption

theorem pow_apply_eq_zero_of_lowDeg (D : Module.End K (MvPolynomial σ K)) (f : ι → σ)
    (hD : ∀ t R, R ∈ lowDeg f (t + 1) → D R ∈ lowDeg f t) :
    ∀ n R, R ∈ lowDeg f n → (D ^ n) R = 0 :=
  _root_.PI.WickFormula.Gen.pow_apply_eq_zero_of_lowDeg D f hD

end

section
variable {K I J : Type} [CommRing K] [Fintype I] [Fintype J]

theorem gdelta_mem_lowDeg_inl (κ : I → J → K) {t : ℕ} {R : MvPolynomial (I ⊕ J) K}
    (h : R ∈ lowDeg (Sum.inl : I → I ⊕ J) (t + 1)) :
    gdelta κ R ∈ lowDeg (Sum.inl : I → I ⊕ J) t := by
  rw [gdelta_apply]
  refine Submodule.sum_mem _ (fun i _ => Submodule.sum_mem _ (fun j _ => Submodule.smul_mem _ _ ?_))
  exact pderiv_mem_lowDeg_of_succ (f := Sum.inl) i (pderiv_mem_lowDeg (Sum.inr j) h)

theorem gdelta_mem_lowDeg_inr (κ : I → J → K) {t : ℕ} {R : MvPolynomial (I ⊕ J) K}
    (h : R ∈ lowDeg (Sum.inr : J → I ⊕ J) (t + 1)) :
    gdelta κ R ∈ lowDeg (Sum.inr : J → I ⊕ J) t := by
  rw [gdelta_apply]
  refine Submodule.sum_mem _ (fun i _ => Submodule.sum_mem _ (fun j _ => Submodule.smul_mem _ _ ?_))
  exact pderiv_mem_lowDeg (Sum.inl i) (pderiv_mem_lowDeg_of_succ (f := Sum.inr) j h)

end

theorem vanL_holds : VanL := by
  intro K I J _ _ _ κ R n h
  exact pow_apply_eq_zero_of_lowDeg (gdelta κ) Sum.inl (fun t R hR => gdelta_mem_lowDeg_inl κ hR) n R
    (mem_lowDeg.mpr h)

theorem vanR_holds : VanR := by
  intro K I J _ _ _ κ R n h
  exact pow_apply_eq_zero_of_lowDeg (gdelta κ) Sum.inr (fun t R hR => gdelta_mem_lowDeg_inr κ hR) n R
    (mem_lowDeg.mpr h)

end PI.DivPowInteg.Gen
