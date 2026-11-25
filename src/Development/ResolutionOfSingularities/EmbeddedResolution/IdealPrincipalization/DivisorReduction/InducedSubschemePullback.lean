module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.SmoothPullbackCompatibility

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace DivisorReduction

theorem isPullback_subschemeMapOfComap (X Y : Scheme.{u}) (h : Y ⟶ X) (D : X.IdealSheafData)
    (D' : Y.IdealSheafData) (hD : D' = D.comap h) :
    IsPullback (subschemeMapOfComap h D D' hD) D'.subschemeι D.subschemeι h :=
  (isPullback_of_isClosedImmersion D'.subschemeι D.subschemeι (subschemeMapOfComap h D D' hD) h
    (subschemeMapOfComap_comp h D D' hD).symm
    (by simp [Scheme.IdealSheafData.ker_subschemeι, hD])).flip

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
