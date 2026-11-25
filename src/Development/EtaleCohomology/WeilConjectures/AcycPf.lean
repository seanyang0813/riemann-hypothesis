module

public import Mathlib.AlgebraicGeometry.Sites.Etale
import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.EWeil.AcycPf

def incl (S : Scheme.{0}) : S.Etale ⥤ Over S := MorphismProperty.Over.forget _ _ _

def RestrInj : Prop := ∀ (R : Type) [CommRing R] (S : Scheme.{0})
  (G : Sheaf (Scheme.etaleTopology.over S) (ModuleCat.{1} (ULift.{1} R))) [Injective G],
  ∃ h : Presheaf.IsSheaf S.smallEtaleTopology ((incl S).op ⋙ G.obj),
    Injective (⟨_, h⟩ : Sheaf S.smallEtaleTopology (ModuleCat.{1} (ULift.{1} R)))

end LateralTheory.EWeil.AcycPf
