module

import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGapLoc
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import ReciprocityTheory.Automorphisms.InstMainA

@[expose] public section

noncomputable section

namespace ReciprocityTheory.Bridge.ResidueFieldCardinality

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum

variable {F : Type} [Field F] [NumberField F]



theorem card_residue (v : HeightOneSpectrum (𝓞 F)) :
    Nat.card (IsLocalRing.ResidueField (v.adicCompletionIntegers F)) = Nat.card (𝓞 F ⧸ v.asIdeal) := by
  apply Formalism.MainNotions.Gaps.LG.fm_card_residue

end ReciprocityTheory.Bridge.ResidueFieldCardinality
