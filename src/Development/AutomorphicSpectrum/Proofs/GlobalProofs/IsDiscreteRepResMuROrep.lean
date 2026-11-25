module

public import GroundTheory.GlobalFields.IdeleClassGroup.IdeleClassMapIdeleClassMap
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.MaxUnramifiedOutside
public import Mathlib.RepresentationTheory.Rep.Basic

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.GSCd

open NumberField IsDedekindDomain CategoryTheory GroundTheory.ProfCoh GroundTheory.Global FiniteSubfield
open GroundTheory.Global.IdeleGroup GroundTheory.Global.SemiLocal GroundTheory.Global.AdeleBaseChange
open scoped DirectSum

noncomputable section

attribute [local instance 2000] Rep.hV2

variable (K : FiniteSubfield) (S : Finset (HeightOneSpectrum (𝓞 K.1)))

abbrev Gs : Type := galUnramifiedOutside K.1 (AlgebraicClosure ℚ) (S : Set (HeightOneSpectrum (𝓞 K.1)))

end
end GlobalTheory.CompanionTheory.GSCd
