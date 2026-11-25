module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowups
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.SmoothBaseChangeOnDivisor
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IsoBlowupRemovalBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

theorem smooth_id :
    ∀ (X : Scheme.{u}), AlgebraicGeometry.Smooth (CategoryTheory.CategoryStruct.id X) := by
  intro X
  infer_instance

theorem surjective_id :
    ∀ (X : Scheme.{u}), AlgebraicGeometry.Surjective (CategoryTheory.CategoryStruct.id X) := by
  intro X
  constructor
  intro x
  exact ⟨x, rfl⟩

theorem comap_ne_top_of_surjective :
    ∀ (X Y : Scheme.{u}) (h : Y ⟶ X) [AlgebraicGeometry.Surjective h] (Z : X.IdealSheafData),
      Z ≠ ⊤ → Z.comap h ≠ ⊤ := by
  intro X Y h hsurj Z hZ
  have hne : (↑Z.support : Set ↥X).Nonempty := by
    rw [Set.nonempty_iff_ne_empty]
    intro he
    exact hZ ((Scheme.IdealSheafData.eq_top_iff_support_eq_empty Z).mpr he)
  obtain ⟨x, hx⟩ := hne
  obtain ⟨y, hy⟩ := hsurj.1 x
  subst hy
  refine (Scheme.IdealSheafData.support_nonempty_iff_ne_top _).mp ⟨y, ?_⟩
  simpa [AlgebraicGeometry.Scheme.IdealSheafData.support_comap] using hx

end FunctorialResolution.EmbeddedResolution
