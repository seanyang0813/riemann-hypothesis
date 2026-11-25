module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TunedMarkedBlowupSeq
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem BlowupSequenceData.iteratedStrictTransform_top {X : Scheme.{u}} (d : BlowupSequenceData X) (i : ℕ) :
    d.iteratedStrictTransform i ⊤ = ⊤ := by
  induction i with
  | zero =>
      rw [BlowupSequenceData.iteratedStrictTransform_zero]
      simp
  | succ i ih =>
      rw [BlowupSequenceData.iteratedStrictTransform_succ, ih, _root_.FunctorialResolution.EmbeddedResolution.strictTransform_top]

end FunctorialResolution.EmbeddedResolution

end
