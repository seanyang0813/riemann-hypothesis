module

public import ReciprocityTheory.AnalyticForms.RegularLocalRings.FinalTheorems

@[expose] public section

namespace ReciprocityTheory.AnForm.R

open AlgebraicGeometry CategoryTheory

noncomputable section

theorem algebraMap_mem_nonZeroDivisors_of_isLocalization {R S : Type*} [CommRing R] [CommRing S]
    [Algebra R S] (M : Submonoid R) [IsLocalization M S] {a : R} (ha : a ∈ nonZeroDivisors R) :
    algebraMap R S a ∈ nonZeroDivisors S := by
  rw [mem_nonZeroDivisors_iff_right] at ha ⊢
  intro x hx
  obtain ⟨⟨y, m⟩, rfl⟩ := IsLocalization.mk'_surjective M x
  have h1 : algebraMap R S (y * a) = 0 := by
    rw [map_mul, ← IsLocalization.mk'_spec S y m, mul_right_comm, hx, zero_mul]
  obtain ⟨c, hc⟩ := (IsLocalization.map_eq_zero_iff M S _).1 h1
  exact (IsLocalization.mk'_eq_zero_iff y m).2 ⟨c, ha _ (by rw [← hc, mul_assoc])⟩

theorem ringEquiv_mem_nonZeroDivisors {A B : Type*} [CommRing A] [CommRing B] (e : A ≃+* B) {a : A}
    (ha : a ∈ nonZeroDivisors A) : e a ∈ nonZeroDivisors B := by
  rw [mem_nonZeroDivisors_iff_right] at ha ⊢
  intro x hx
  have : e.symm x * a = 0 := by
    apply e.injective; rw [map_mul, e.apply_symm_apply, hx, map_zero]
  simpa using congrArg e (ha _ this)

theorem effCartier_comap_of_isOpenImmersion' {X Y : Scheme.{0}} (I : Y.IdealSheafData) (f : X ⟶ Y)
    [IsOpenImmersion f] (hI : FinalTheorems.EffCartier I) : FinalTheorems.EffCartier (I.comap f) := by
  intro x
  obtain ⟨U, h, hxU, hh, hU⟩ := hI (f x)
  obtain ⟨r, hrle, hxr⟩ := U.2.exists_basicOpen_le (V := f.opensRange) ⟨f x, ⟨x, rfl⟩⟩ hxU
  have himg : f ''ᵁ (f ⁻¹ᵁ Y.basicOpen r) = Y.basicOpen r := by
    rw [f.image_preimage_eq_opensRange_inf, inf_eq_right.2 hrle]
  have hUX : IsAffineOpen (f ⁻¹ᵁ Y.basicOpen r) := by
    rw [← f.isAffineOpen_iff_of_isOpenImmersion, himg]; exact U.2.basicOpen r
  have hle : f ''ᵁ (f ⁻¹ᵁ Y.basicOpen r) ≤ U.1 := himg.le.trans (Y.basicOpen_le r)
  have hnzd : ∀ (O : Y.Opens) (hO : O = Y.basicOpen r) (hOU : O ≤ U.1),
      Y.presheaf.map (homOfLE hOU).op h ∈ nonZeroDivisors Γ(Y, O) := by
    rintro O rfl hOU
    have := U.2.isLocalization_basicOpen r
    exact algebraMap_mem_nonZeroDivisors_of_isLocalization (Submonoid.powers r) hh
  let e := (f.appIso (f ⁻¹ᵁ Y.basicOpen r)).commRingCatIsoToRingEquiv
  refine ⟨⟨_, hUX⟩, e (Y.presheaf.map (homOfLE hle).op h), hxr, ?_, ?_⟩
  · exact ringEquiv_mem_nonZeroDivisors e (hnzd _ himg hle)
  · rw [Scheme.IdealSheafData.ideal_comap_of_isOpenImmersion]
    rw [← I.map_ideal (U := ⟨_, (f.isAffineOpen_iff_of_isOpenImmersion).2 hUX⟩) (V := U) hle, hU,
      Ideal.map_span, Set.image_singleton]
    rw [show ((f.appIso (f ⁻¹ᵁ Y.basicOpen r)).inv.hom : _ →+* _) = (e.symm : _ →+* _) from rfl,
      Ideal.comap_coe, Ideal.comap_symm, Ideal.map_span, Set.image_singleton]
    rfl

end

end ReciprocityTheory.AnForm.R
