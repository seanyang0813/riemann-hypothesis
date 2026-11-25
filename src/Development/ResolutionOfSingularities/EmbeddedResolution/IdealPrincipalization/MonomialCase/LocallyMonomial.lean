module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReductionProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.CenterInvariant

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace MonomialCenter

def IsMonomialNear {X : Scheme.{u}} (E : List X.IdealSheafData) (M : X.IdealSheafData)
    (x : ↥X) : Prop :=
  ∃ U : X.Opens, x ∈ U ∧ ∃ a : Fin E.length → ℕ,
    M.comap U.ι =
      (List.ofFn (fun i : Fin E.length => (E.get i).comap U.ι ^ a i)).foldr (· * ·) ⊤

structure IsLocallyMonomialTriple (T : MarkedIdealWithBoundary.{u}) : Prop where
  valid : T.IsAdmissible
  monomialNear : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, IsMonomialNear T.boundary T.ideal x

structure IsLocallyMonomialPrincipalization (P : ℕ → Prop) (F : PrincipalizationAssignment.{u}) : Prop where
  cert :
    ∀ (T : MarkedIdealWithBoundary.{u}), IsLocallyMonomialTriple T → P T.krullDimSucc →
      ∀ i < (F T).length,
        PrincipalizationCertificate ((F T).schemeAt i) (MarkedSequenceOfBlowups.projectionToSpec (F T) i) ((F T).ideal i) T.mult
          (MarkedSequenceOfBlowups.boundaryLocus (F T) i) ((F T).center i)
  center_nonempty :
    ∀ (T : MarkedIdealWithBoundary.{u}), IsLocallyMonomialTriple T → P T.krullDimSucc →
      ∀ i < (F T).length, (↑((F T).center i).support : Set ↥((F T).schemeAt i)).Nonempty
  resolves :
    ∀ (T : MarkedIdealWithBoundary.{u}), IsLocallyMonomialTriple T → P T.krullDimSucc →
      MarkedSequenceOfBlowups.IsResolution (F T)
  trivial_of_coSupport_empty :
    ∀ (T : MarkedIdealWithBoundary.{u}), IsLocallyMonomialTriple T → P T.krullDimSucc →
      orderAtLeastLocus T.ideal T.mult = ∅ → (F T).length = 0

end MonomialCenter

end FunctorialResolution.EmbeddedResolution

end
