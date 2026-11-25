module

public import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.GlobalEulerFormulaInf
public import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.Devissage
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.MainCoind
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Finite

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

section General

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

theorem card_cohomology_eq_of_iso {A B : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B]
    (e : A ≅ B) (q : ℕ) : Nat.card (cohomology A q) = Nat.card (cohomology B q) := by
  let i : cohomology A q ≅ cohomology B q :=
    { hom := cohomologyMap e.hom q
      inv := cohomologyMap e.inv q
      hom_inv_id := by rw [← cohomologyMap_comp, e.hom_inv_id, cohomologyMap_id]
      inv_hom_id := by rw [← cohomologyMap_comp, e.inv_hom_id, cohomologyMap_id] }
  exact Nat.card_congr i.toLinearEquiv.toEquiv


omit [TopologicalSpace G] [IsTopologicalGroup G] in
theorem card_eq_of_iso {A B : Rep.{u} k G} (e : A ≅ B) : Nat.card A = Nat.card B :=
  Nat.card_congr ((forget (Rep.{u} k G)).mapIso e).toEquiv

theorem card_cohomology_zero_of_subsingleton (A : Rep.{u} k G) [IsDiscreteRep A] [Subsingleton A] :
    Nat.card (cohomology A 0) = 1 := by
  rw [Nat.card_congr (H0Iso A).toLinearEquiv.toEquiv]
  exact Nat.card_unique

theorem card_cohomology_zero_of_forall_eq_one (A : Rep.{u} k G) [IsDiscreteRep A]
    (h : ∀ g, A.ρ g = 1) : Nat.card (cohomology A 0) = Nat.card A := by
  rw [Nat.card_congr (H0Iso A).toLinearEquiv.toEquiv]
  have hmem : ∀ x : A, x ∈ A.ρ.invariants := fun x g => by rw [h g]; rfl
  exact Nat.card_congr (Equiv.subtypeUnivEquiv hmem)

end General

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (M : Rep.{0} (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S)) [IsDiscreteRep M]

section Real

open scoped Classical

variable (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)

theorem gsRealH0Card_pos [Finite M] (v : {v : InfinitePlace K.1 // v.IsReal}) :
    0 < gsRealH0Card S M ιr v := by
  have : Finite (Rep.res (gsRealFamily S ιr v).toMonoidHom M) := inferInstanceAs (Finite M)
  have := finite_cohomology_zero (Rep.res (gsRealFamily S ιr v).toMonoidHom M)
  exact Nat.card_pos

theorem gsEulerRatio_eq_of_iso {N : Rep.{0} (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S)}
    [IsDiscreteRep N] (e : M ≅ N) : gsEulerRatio S M ιr = gsEulerRatio S N ιr := by
  have hv : ∀ v, gsRealH0Card S M ιr v = gsRealH0Card S N ιr v := fun v =>
    card_cohomology_eq_of_iso ((Rep.resFunctor (gsRealFamily S ιr v).toMonoidHom).mapIso e) 0
  simp only [gsEulerRatio, eulerChar_eq_of_iso e, card_eq_of_iso e, hv]

theorem gsEulerRatio_eq_one_of_subsingleton [Subsingleton M] : gsEulerRatio S M ιr = 1 := by
  have hv : ∀ v, gsRealH0Card S M ιr v = 1 := fun v => by
    have : Subsingleton (Rep.res (gsRealFamily S ιr v).toMonoidHom M) :=
      inferInstanceAs (Subsingleton M)
    exact card_cohomology_zero_of_subsingleton _
  have hM : Nat.card M = 1 := Nat.card_unique
  simp [gsEulerRatio, eulerChar_eq_one_of_subsingleton, hv]

theorem eulerChar_gs_pos [Finite S] [Finite M]
    (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((Nat.card M : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S) :
    0 < eulerChar M := by
  refine Finset.prod_pos fun q hq => ?_
  have : Finite (cohomology M q) :=
    finite_cohomology_gs K S M hS q (Nat.lt_succ_iff.1 (Finset.mem_range.1 hq))
  have : (0 : ℚ) < Nat.card (cohomology M q) := by exact_mod_cast Nat.card_pos
  exact zpow_pos this _

theorem gsEulerRatio_pos [Finite S] [Finite M]
    (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((Nat.card M : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S) :
    0 < gsEulerRatio S M ιr := by
  have h1 := eulerChar_gs_pos S M hS
  have h2 : (0 : ℚ) < Nat.card M := by exact_mod_cast Nat.card_pos
  have h3 : (0 : ℚ) < ∏ v : {v : InfinitePlace K.1 // v.IsReal}, (gsRealH0Card S M ιr v : ℚ) :=
    Finset.prod_pos fun v _ => by exact_mod_cast gsRealH0Card_pos S M ιr v
  unfold gsEulerRatio
  convert div_pos (mul_pos h1 (pow_pos h2 (Fintype.card (InfinitePlace K.1)))) h3

end Real

section Infinite

open scoped Classical

variable (ι : ∀ v : InfinitePlace K.1, ℚ̄ →ₐ[K.1] AlgebraicClosure v.Completion)

end Infinite

end

end GroundTheory.ProfCoh
