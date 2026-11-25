module

public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealSheafOrder
import Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens
public import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits Opposite AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem exists_mem_mul_mem_of_map_le {R S : Type u} [CommRing R] [CommRing S]
    [Algebra R S] (M : Submonoid R) (hM : IsLocalization M S) (A B : Ideal R)
    (hA : Submodule.FG A)
    (hAB : Ideal.map (algebraMap R S) A ≤ Ideal.map (algebraMap R S) B) :
    ∃ u : R, u ∈ M ∧ ∀ a ∈ A, u * a ∈ B := by
  classical
  have := hM
  obtain ⟨G, hG⟩ := hA
  have key : ∀ a : R, ∃ u : R, u ∈ M ∧ (a ∈ A → u * a ∈ B) := by
    intro a
    by_cases ha : a ∈ A
    · have h1 : algebraMap R S a ∈ Ideal.map (algebraMap R S) B :=
        hAB (Ideal.mem_map_of_mem _ ha)
      rw [IsLocalization.mem_map_algebraMap_iff (M := M) (S := S)] at h1
      obtain ⟨⟨b, s⟩, hEq⟩ := h1
      rw [← map_mul] at hEq
      obtain ⟨c, hc⟩ := (IsLocalization.eq_iff_exists (M := M) (S := S)).mp hEq
      refine ⟨(c : R) * (s : R), M.mul_mem c.2 s.2, fun _ => ?_⟩
      have hcalc : (c : R) * (s : R) * a = (c : R) * (b : R) := by linear_combination hc
      rw [hcalc]
      exact Ideal.mul_mem_left B _ b.2
    · exact ⟨1, M.one_mem, fun hmem => absurd hmem ha⟩
  choose u huM huB using key
  refine ⟨∏ g ∈ G, u g, (Submonoid.prod_mem M fun g _ => huM g), ?_⟩
  intro a ha
  rw [← hG] at ha
  induction ha using Submodule.span_induction with
  | mem z hz =>
      have hzG : z ∈ G := Finset.mem_coe.mp hz
      have hzA : z ∈ A := by rw [← hG]; exact Submodule.subset_span hz
      rw [← Finset.mul_prod_erase G u hzG]
      have hre : u z * (∏ g ∈ G.erase z, u g) * z
          = (∏ g ∈ G.erase z, u g) * (u z * z) := by ring
      rw [hre]
      exact Ideal.mul_mem_left B _ (huB z hzA)
  | zero => rw [mul_zero]; exact B.zero_mem
  | add y z _ _ hy hz => rw [mul_add]; exact B.add_mem hy hz
  | smul c y _ hy =>
      rw [smul_eq_mul, mul_left_comm]
      exact Ideal.mul_mem_left B c hy

private theorem map_le_map_of_isUnit_mul_mem {R S : Type u} [CommRing R] [CommRing S]
    (φ : R →+* S) (w : R) (hw : IsUnit (φ w)) (A B : Ideal R)
    (hAB : ∀ a ∈ A, w * a ∈ B) :
    Ideal.map φ A ≤ Ideal.map φ B := by
  rw [Ideal.map_le_iff_le_comap]
  intro a ha
  obtain ⟨t, ht⟩ := hw.exists_right_inv
  have h1 : φ (w * a) ∈ Ideal.map φ B := Ideal.mem_map_of_mem φ (hAB a ha)
  have h4 : t * φ (w * a) ∈ Ideal.map φ B := Ideal.mul_mem_left _ _ h1
  rw [map_mul, ← mul_assoc, mul_comm t (φ w), ht, one_mul] at h4
  exact Ideal.mem_comap.mpr h4

theorem exists_opens_stalkIdeal_eq {X : Scheme.{u}} [IsLocallyNoetherian X]
    (I J : X.IdealSheafData) (x : X) (h : stalkIdeal I x = stalkIdeal J x) :
    ∃ W : X.Opens, x ∈ W ∧ ∀ y : X, y ∈ W → stalkIdeal I y = stalkIdeal J y := by
  obtain ⟨U, hxU, hU⟩ := Scheme.exists_isAffineOpen_mem x
  have hUaff : IsAffineOpen U := hU
  have : IsNoetherianRing Γ(X, U) := IsLocallyNoetherian.component_noetherian ⟨U, hU⟩
  let instAlg : Algebra Γ(X, U) ↑(X.presheaf.stalk x) :=
    (X.presheaf.germ U x hxU).hom.toAlgebra
  have halg : (algebraMap Γ(X, U) ↑(X.presheaf.stalk x)) = (X.presheaf.germ U x hxU).hom := rfl
  have hloc : IsLocalization (hUaff.primeIdealOf ⟨x, hxU⟩).asIdeal.primeCompl
      ↑(X.presheaf.stalk x) := hUaff.isLocalization_stalk ⟨x, hxU⟩
  have hmapeq : Ideal.map (algebraMap Γ(X, U) ↑(X.presheaf.stalk x)) (I.ideal ⟨U, hU⟩)
      = Ideal.map (algebraMap Γ(X, U) ↑(X.presheaf.stalk x)) (J.ideal ⟨U, hU⟩) := by
    have h1 := stalkIdeal_eq_map_germ I x ⟨U, hU⟩ hxU
    have h2 := stalkIdeal_eq_map_germ J x ⟨U, hU⟩ hxU
    rw [h1, h2] at h
    rw [halg]
    exact h
  obtain ⟨u₁, hu₁M, hu₁⟩ := exists_mem_mul_mem_of_map_le _ hloc (I.ideal ⟨U, hU⟩)
    (J.ideal ⟨U, hU⟩) (IsNoetherian.noetherian _) (le_of_eq hmapeq)
  obtain ⟨u₂, hu₂M, hu₂⟩ := exists_mem_mul_mem_of_map_le _ hloc (J.ideal ⟨U, hU⟩)
    (I.ideal ⟨U, hU⟩) (IsNoetherian.noetherian _) (le_of_eq hmapeq.symm)
  have hmb : ∀ (z : ↥X) (hz : z ∈ U),
      z ∈ X.basicOpen (u₁ * u₂) ↔ IsUnit ((X.presheaf.germ U z hz).hom (u₁ * u₂)) := by
    intro z hz
    exact X.mem_basicOpen (u₁ * u₂) z hz
  have hxunit : IsUnit ((X.presheaf.germ U x hxU).hom (u₁ * u₂)) := by
    have hmem : u₁ * u₂ ∈ (hUaff.primeIdealOf ⟨x, hxU⟩).asIdeal.primeCompl :=
      Submonoid.mul_mem _ hu₁M hu₂M
    have hone := IsLocalization.map_units
      (M := (hUaff.primeIdealOf ⟨x, hxU⟩).asIdeal.primeCompl)
      (S := ↑(X.presheaf.stalk x)) ⟨u₁ * u₂, hmem⟩
    rw [halg] at hone
    exact hone
  refine ⟨X.basicOpen (u₁ * u₂), (hmb x hxU).mpr hxunit, ?_⟩
  intro y hy
  have hyU : y ∈ U := X.basicOpen_le (u₁ * u₂) hy
  have hyunit : IsUnit ((X.presheaf.germ U y hyU).hom (u₁ * u₂)) := (hmb y hyU).mp hy
  have hv1 : ∀ a ∈ I.ideal ⟨U, hU⟩, u₁ * u₂ * a ∈ J.ideal ⟨U, hU⟩ := by
    intro a ha
    have he : u₁ * u₂ * a = u₂ * (u₁ * a) := by ring
    rw [he]
    exact Ideal.mul_mem_left _ _ (hu₁ a ha)
  have hv2 : ∀ a ∈ J.ideal ⟨U, hU⟩, u₁ * u₂ * a ∈ I.ideal ⟨U, hU⟩ := by
    intro a ha
    have he : u₁ * u₂ * a = u₁ * (u₂ * a) := by ring
    rw [he]
    exact Ideal.mul_mem_left _ _ (hu₂ a ha)
  rw [stalkIdeal_eq_map_germ I y ⟨U, hU⟩ hyU, stalkIdeal_eq_map_germ J y ⟨U, hU⟩ hyU]
  exact le_antisymm
    (map_le_map_of_isUnit_mul_mem (X.presheaf.germ U y hyU).hom (u₁ * u₂) hyunit _ _ hv1)
    (map_le_map_of_isUnit_mul_mem (X.presheaf.germ U y hyU).hom (u₁ * u₂) hyunit _ _ hv2)

private theorem ideal_eq_of_stalkIdeal_eq {Y : Scheme.{u}} (A B : Y.IdealSheafData)
    (W : Y.affineOpens) (h : ∀ x : ↥Y, x ∈ W.1 → stalkIdeal A x = stalkIdeal B x) :
    A.ideal W = B.ideal W := by
  refine Ideal.eq_of_localization_maximal fun m hm => ?_
  have := hm.isPrime
  set y : PrimeSpectrum Γ(Y, W.1) := ⟨m, hm.isPrime⟩
  set x : ↥Y := W.2.fromSpec.base y
  have hy : x ∈ W.1 := by
    have hmem : x ∈ Set.range W.2.fromSpec.base := ⟨y, rfl⟩
    rwa [W.2.range_fromSpec] at hmem
  let _ : Algebra Γ(Y, W.1) ↑(Y.presheaf.stalk x) := (Y.presheaf.germ W.1 x hy).hom.toAlgebra
  have : IsLocalization m.primeCompl ↑(Y.presheaf.stalk x) := W.2.isLocalization_stalk' y hy
  let e : ↑(Y.presheaf.stalk x) ≃ₐ[Γ(Y, W.1)] Localization.AtPrime m :=
    IsLocalization.algEquiv m.primeCompl _ _
  have hmapeq : ∀ I : Y.IdealSheafData,
      Ideal.map (algebraMap Γ(Y, W.1) (Localization.AtPrime m)) (I.ideal W) =
        Ideal.map e.toAlgHom.toRingHom (stalkIdeal I x) := fun I => by
    rw [stalkIdeal_eq_map_germ I x W hy, Ideal.map_map]
    congr 1
    exact RingHom.ext fun r => (e.commutes r).symm
  rw [hmapeq A, hmapeq B, h x hy]

theorem restrictIdeal_eq_of_stalkIdeal_eq {X : Scheme.{u}} (I J : X.IdealSheafData) (U : X.Opens)
    (h : ∀ y : X, y ∈ U → stalkIdeal I y = stalkIdeal J y) :
    restrictIdeal I U = restrictIdeal J U := by
  have key : ∀ V : U.toScheme.affineOpens,
      (restrictIdeal I U).ideal V = (restrictIdeal J U).ideal V := by
    intro V
    have hWaff : IsAffineOpen (U.ι ''ᵁ V.1) := V.2.image_of_isOpenImmersion U.ι
    have hWU : (U.ι ''ᵁ V.1) ≤ U := by
      intro z hz
      have hz' : z ∈ (fun w => U.ι.base w) '' (↑V.1 : Set U.toScheme) := hz
      obtain ⟨v, -, rfl⟩ := hz'
      exact v.2
    have e : V.1 ≤ U.ι ⁻¹ᵁ (U.ι ''ᵁ V.1) := by
      intro v hv
      have h2 : U.ι.base v ∈ (fun w => U.ι.base w) '' (↑V.1 : Set U.toScheme) := ⟨v, hv, rfl⟩
      exact h2
    have hIJ : I.ideal ⟨U.ι ''ᵁ V.1, hWaff⟩ = J.ideal ⟨U.ι ''ᵁ V.1, hWaff⟩ := by
      refine ideal_eq_of_stalkIdeal_eq I J ⟨U.ι ''ᵁ V.1, hWaff⟩ ?_
      intro z hz
      exact h z (hWU hz)
    show (I.comap U.ι).ideal V = (J.comap U.ι).ideal V
    rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE I U.ι ⟨U.ι ''ᵁ V.1, hWaff⟩ V e,
      Scheme.IdealSheafData.comap_ideal_eq_map_appLE J U.ι ⟨U.ι ''ᵁ V.1, hWaff⟩ V e, hIJ]
  have h1 : ∀ V : U.toScheme.affineOpens,
      (restrictIdeal I U).ideal V ≤ (restrictIdeal J U).ideal V := fun V => le_of_eq (key V)
  have h2 : ∀ V : U.toScheme.affineOpens,
      (restrictIdeal J U).ideal V ≤ (restrictIdeal I U).ideal V := fun V => le_of_eq (key V).symm
  exact le_antisymm h1 h2

end FunctorialResolution.EmbeddedResolution
