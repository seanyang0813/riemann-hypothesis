module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionAlgorithm
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactReduction
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.PrincipalizationConstruction
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IsoInvariance
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.NoetherianBlowup

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem blowupPreservesNoetherian : BlowupPreservesNoetherian.{u} := by
  repeat intro _
  rename_i h
  exact isNoetherian_of_isBlowupAlongIdealSheaf h

def canonicalAlgorithmRules (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}) : PrincipalizationRules.{u} where
  divisorRed := fun T alg j =>
    DivisorReduction.divisorReductionSeq hres blowupPreservesNoetherian T alg j
  maxOrderRed := fun T rc => orderReductionSeq comapIsoInvariance T rc
  orderRed := fun T rc => MaxContactReduction.reduceOrder comapIsoInvariance T rc

def canonicalPrincipalization (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hrad : SmoothSubschemeIdealIsRadical.{u}) : PrincipalizationAlgorithm.{u} :=
  (canonicalAlgorithmRules hres).principalization hrad

theorem isFunctorialPrincipalization_canonicalPrincipalization (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hB : (canonicalAlgorithmRules hres).ReducesInductivelyOnDimension) (hrad : SmoothSubschemeIdealIsRadical.{u})
    (hemb : CommutesWithClosedImmersion.{u} (canonicalAlgorithmRules hres)) :
    IsFunctorialPrincipalization (canonicalPrincipalization hres hrad) :=
  PrincipalizationRules.isFunctorialPrincipalization_principalization (canonicalAlgorithmRules hres) hB hrad hemb

end FunctorialResolution.EmbeddedResolution

end
