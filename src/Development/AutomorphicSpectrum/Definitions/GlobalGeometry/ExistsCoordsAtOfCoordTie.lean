module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.CoordModel

open AlgebraicGeometry CategoryTheory

variable (A : Type) [CommRing A] (Ω : Type) [Field Ω] [Algebra A Ω]


variable [IsDomain A] [IsFractionRing A Ω]



section General

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {R : Type} [CommRing R] [IsLocalRing R]
  {ξ : Spec (CommRingCat.of Ω) ⟶ X} {z : Spec (CommRingCat.of R) ⟶ X}

theorem valAt_unique (hξ : IsCptGen ξ) {a : Ω} {r r' : R} (h : ValAt ξ z a r) (h' : ValAt ξ z a r') : r = r' := by
  obtain ⟨hz, s, rfl, rfl⟩ := h
  obtain ⟨_, s', e, rfl⟩ := h'
  rw [hξ.inj ⟨centre z, hz⟩ e]

theorem valAt_mul {a b : Ω} {r s : R} (h : ValAt ξ z a r) (h' : ValAt ξ z b s) : ValAt ξ z (a * b) (r * s) := by
  obtain ⟨hz, t, rfl, rfl⟩ := h
  obtain ⟨_, t', rfl, rfl⟩ := h'
  exact ⟨hz, t * t', map_mul _ _ _, map_mul _ _ _⟩

theorem valAt_inv {a : Ω} {r : Rˣ} (h : ValAt ξ z a r) : a ≠ 0 ∧ ValAt ξ z a⁻¹ ↑r⁻¹ := by
  obtain ⟨hz, t, rfl, e⟩ := h
  have ht : IsUnit t := (Scheme.isLocalHom_stalkClosedPointTo' z).map_nonunit t (by have := r.isUnit; rw [← e] at this; exact this)
  obtain ⟨u, rfl⟩ := ht
  refine ⟨(u.isUnit.map (genMap ξ ⟨centre z, hz⟩)).ne_zero, hz, ↑u⁻¹, map_units_inv _ u, ?_⟩
  refine (Units.inv_eq_of_mul_eq_one_right ?_).symm
  rw [← e]
  exact (map_mul _ _ _).symm.trans ((congrArg _ u.mul_inv).trans (map_one _))

theorem exists_coordsAt {K : Type} {ι : K → Type} (y : (Σ k, ι k) → Ω) (hz : genPt ξ ⤳ centre z)
    (h : ∀ k, ∃ c, InChart ξ (fun i => y ⟨k, i⟩) c ⟨centre z, hz⟩) (hξ : IsCptGen ξ) :
    ∃ w, CoordsAt ξ y z w := by
  choose c hc using h
  have hv : ∀ j : Σ k, ι k, ∃ r, ValAt ξ z (y j / y ⟨j.1, c j.1⟩) r := by
    rintro ⟨k, i⟩
    obtain ⟨s, hs⟩ := (hc k).2 i
    exact ⟨_, hz, s, hs, rfl⟩
  choose w hw using hv
  refine ⟨w, fun k => ⟨c k, ?_⟩, fun k d hd => ?_⟩
  · have h1 : ValAt ξ z 1 1 := ⟨hz, 1, map_one _, map_one _⟩
    have h2 := hw ⟨k, c k⟩
    rw [div_self (hc k).1] at h2
    rw [valAt_unique hξ h2 h1]; exact isUnit_one
  · obtain ⟨u, hu⟩ := hd
    have h1 := hw ⟨k, d⟩
    rw [← hu] at h1
    obtain ⟨h0, h2⟩ := valAt_inv h1
    have hd0 : y ⟨k, d⟩ ≠ 0 := fun e => h0 (by simp [e])
    refine ⟨hd0, fun i => ⟨w ⟨k, i⟩ * ↑u⁻¹, ?_, by rw [← hu]; simp⟩⟩
    have h3 := valAt_mul (hw ⟨k, i⟩) h2
    have hc0 : y ⟨k, c k⟩ ≠ 0 := (hc k).1
    convert h3 using 1
    field_simp

end General

end GlobalTheory.CompanionTheory.Ar.CoordModel
