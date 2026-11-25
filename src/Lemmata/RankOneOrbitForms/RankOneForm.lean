module

public import Mathlib.LinearAlgebra.Trace
public import Mathlib.RepresentationTheory.Basic

@[expose] public section

open Module

namespace Bl.RankOneOrbitForms

variable {K : Type} [Field K] {G : Type} [Group G] {T : Type} [AddCommGroup T] [Module K T] [FiniteDimensional K T]

private lemma rank_one_form (f : T →ₗ[K] T) (h1 : finrank K (LinearMap.range f) = 1) :
    ∃ (φ : T →ₗ[K] K) (v : T), v ≠ 0 ∧ φ ≠ 0 ∧ f = φ.smulRight v := by
  let e : LinearMap.range f ≃ₗ[K] K := LinearEquiv.ofFinrankEq _ _ (by simpa using h1)
  let φ := e.toLinearMap.comp f.rangeRestrict
  let v := e.symm (1 : K)
  have hv : v ≠ 0 := by
    simpa only [v, map_zero] using e.symm.injective.ne (one_ne_zero : (1 : K) ≠ 0)
  have hφ : Function.Surjective φ := e.surjective.comp f.surjective_rangeRestrict
  refine ⟨φ, v, fun h => hv (Subtype.ext h), LinearMap.ne_zero_of_surjective hφ, ?_⟩
  ext x
  change f x = ((e (f.rangeRestrict x) • e.symm 1 : LinearMap.range f) : T)
  rw [← e.symm.map_smul, smul_eq_mul, mul_one, e.symm_apply_apply]
  rfl

private lemma span_orbit (τ : Representation K G T)
    (hirr : ∀ W : Submodule K T, (∀ g : G, ∀ w ∈ W, τ g w ∈ W) → W = ⊥ ∨ W = ⊤)
    (v : T) (hv : v ≠ 0) : Submodule.span K (Set.range fun g => τ g v) = ⊤ := by
  have hinvar : ∀ g : G, ∀ w ∈ Submodule.span K (Set.range fun g => τ g v),
      τ g w ∈ Submodule.span K (Set.range fun g => τ g v) := by
    intro g
    change Submodule.span K (Set.range fun h => τ h v) ≤
      (Submodule.span K (Set.range fun h => τ h v)).comap (τ g)
    refine Submodule.span_le.mpr ?_
    rintro _ ⟨h, rfl⟩
    exact Submodule.subset_span ⟨g * h, by simp [map_mul]⟩
  have hvspan : v ∈ Submodule.span K (Set.range fun g => τ g v) :=
    Submodule.subset_span ⟨1, by simp⟩
  exact (hirr _ hinvar).resolve_left fun h => hv (by simpa [h] using hvspan)

private lemma orbit_ker (τ : Representation K G T)
    (hirr : ∀ W : Submodule K T, (∀ g : G, ∀ w ∈ W, τ g w ∈ W) → W = ⊥ ∨ W = ⊤)
    (φ : T →ₗ[K] K) (hφ : φ ≠ 0) (x : T) (hx : ∀ g, φ (τ g x) = 0) : x = 0 := by
  by_contra hx0
  have hle : Submodule.span K (Set.range fun g => τ g x) ≤ LinearMap.ker φ := by
    rw [Submodule.span_le]
    rintro _ ⟨g, rfl⟩
    exact hx g
  rw [span_orbit τ hirr x hx0] at hle
  exact hφ (LinearMap.ker_eq_top.mp (top_le_iff.mp hle))

private lemma select {ι M : Type} [AddCommGroup M] [Module K M] [FiniteDimensional K M]
    (f : ι → M) (r : ℕ) (hr : finrank K (Submodule.span K (Set.range f)) = r) :
    ∃ s : Fin r → ι, LinearIndependent K (f ∘ s) := by
  obtain ⟨κ, a, -, hsp, hli⟩ := exists_linearIndependent' K f
  have : Finite κ := hli.finite
  let _ : Fintype κ := Fintype.ofFinite κ
  have hc : Fintype.card κ = r := by
    rw [← finrank_span_eq_card hli, hsp, hr]
  let e : Fin r ≃ κ := (Fintype.equivFinOfCardEq hc).symm
  exact ⟨a ∘ e, hli.comp e e.injective⟩

theorem goal1 (τ : Representation K G T)
    (hirr : ∀ W : Submodule K T, (∀ g : G, ∀ w ∈ W, τ g w ∈ W) → W = ⊥ ∨ W = ⊤)
    (ε₀ ε : T →ₗ[K] T) (h1 : finrank K (LinearMap.range ε₀) = 1) :
    ∃ (γ δ : Fin (finrank K (LinearMap.range ε)) → G)
      (c : Matrix (Fin (finrank K (LinearMap.range ε))) (Fin (finrank K (LinearMap.range ε))) K),
      c.det ≠ 0 ∧
      (∀ i j, c i j = LinearMap.trace K T (ε₀ ∘ₗ τ (δ i) ∘ₗ ε ∘ₗ τ (γ j))) ∧
      (∀ i j, ε₀ ∘ₗ τ (δ i) ∘ₗ ε ∘ₗ τ (γ j) ∘ₗ ε₀ = c i j • ε₀) ∧
      ∑ j, ∑ i, c⁻¹ j i • (ε ∘ₗ τ (γ j) ∘ₗ ε₀ ∘ₗ τ (δ i) ∘ₗ ε) = ε := by
  obtain ⟨φ, v, hv, hφ, rfl⟩ := rank_one_form ε₀ h1
  have hspanT := span_orbit τ hirr v hv
  have hspanR : Submodule.span K (Set.range fun g => ε (τ g v)) = LinearMap.range ε := by
    rw [Set.range_comp', ← Submodule.map_span, hspanT, Submodule.map_top]
  obtain ⟨γ, hγ⟩ := select (fun g => ε (τ g v)) (finrank K (LinearMap.range ε)) (by rw [hspanR])
  have hle : Submodule.span K (Set.range ((fun g => ε (τ g v)) ∘ γ)) ≤ LinearMap.range ε := by
    rw [Submodule.span_le]
    rintro _ ⟨j, rfl⟩
    exact LinearMap.mem_range_self _ _
  have hueq : Submodule.span K (Set.range ((fun g => ε (τ g v)) ∘ γ)) = LinearMap.range ε :=
    Submodule.eq_of_le_of_finrank_eq hle (by rw [finrank_span_eq_card hγ, Fintype.card_fin])
  let w : G → Fin (finrank K (LinearMap.range ε)) → K := fun g j => φ (τ g (ε (τ (γ j) v)))
  have hw : Submodule.span K (Set.range w) = ⊤ := by
    by_contra hne
    obtain ⟨ℓ, hℓ, hle'⟩ := Submodule.exists_le_ker_of_lt_top _ (lt_top_iff_ne_top.mpr hne)
    apply hℓ
    let b : Fin (finrank K (LinearMap.range ε)) → K := fun j => ℓ (fun k => if j = k then 1 else 0)
    have key : ∀ g, ∑ j, w g j • b j = 0 := by
      intro g
      have := hle' (Submodule.subset_span ⟨g, rfl⟩)
      rw [LinearMap.mem_ker, LinearMap.pi_apply_eq_sum_univ] at this
      exact this
    have hx : ∑ j, b j • ε (τ (γ j) v) = 0 := by
      apply orbit_ker τ hirr φ hφ
      intro g

      simp only [map_sum, map_smul, smul_eq_mul]
      have := key g
      simp only [w, smul_eq_mul] at this
      rw [← this]
      exact Finset.sum_congr rfl fun j _ => mul_comm _ _
    have hz := Fintype.linearIndependent_iff.mp hγ b hx
    refine LinearMap.ext fun y => ?_
    rw [LinearMap.pi_apply_eq_sum_univ, LinearMap.zero_apply]
    exact Finset.sum_eq_zero fun j _ => by
      have : ℓ (fun k => if j = k then 1 else 0) = 0 := hz j
      rw [this, smul_zero]
  obtain ⟨δ, hδ⟩ := select w (finrank K (LinearMap.range ε))
    (by rw [hw, finrank_top, Module.finrank_fin_fun])
  let c : Matrix (Fin (finrank K (LinearMap.range ε))) (Fin (finrank K (LinearMap.range ε))) K :=
    Matrix.of fun i j => φ (τ (δ i) (ε (τ (γ j) v)))
  have hc : IsUnit c := Matrix.linearIndependent_rows_iff_isUnit.mp hδ
  have hcd : IsUnit c.det := (Matrix.isUnit_iff_isUnit_det c).mp hc
  refine ⟨γ, δ, c, hcd.ne_zero, ?_, ?_, ?_⟩
  · intro i j
    rw [show (φ.smulRight v) ∘ₗ τ (δ i) ∘ₗ ε ∘ₗ τ (γ j)
        = (φ ∘ₗ τ (δ i) ∘ₗ ε ∘ₗ τ (γ j)).smulRight v from LinearMap.ext fun _ => rfl,
      LinearMap.trace_smulRight]
    rfl
  · intro i j
    ext x
    simp [c, smul_smul, mul_comm]
  · ext x
    have hx : ε x ∈ Submodule.span K (Set.range ((fun g => ε (τ g v)) ∘ γ)) :=
      by rw [hueq]; exact LinearMap.mem_range_self ε x
    obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun K).mp hx
    simp only [Function.comp_apply] at ha
    have hcoef : ∀ i, φ (τ (δ i) (ε x)) = ∑ k, c i k * a k := by
      intro i
      rw [← ha]

      simp [c, map_sum, map_smul, mul_comm]
    have hinv : ∀ j, ∑ i, c⁻¹ j i * ∑ k, c i k * a k = a j := by
      intro j
      have := congrFun (show Matrix.mulVec c⁻¹ (Matrix.mulVec c a) = a by
        rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul c hcd, Matrix.one_mulVec]) j
      simpa [Matrix.mulVec, dotProduct] using this
    simp only [LinearMap.sum_apply, LinearMap.smul_apply, LinearMap.comp_apply,
      LinearMap.smulRight_apply, map_smul, hcoef]
    rw [← ha]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← hinv j, Finset.sum_smul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [smul_smul]

end Bl.RankOneOrbitForms
