module

public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.StInterNumCut
public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.StCutRestrLenExact
public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.StMixedTwistShift
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsCycleSplitFilt
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.TensorSubInsertion

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial Filter

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

universe u w

section Combinatorics

end Combinatorics

section Snoc

variable {S : Type u} [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ} {x : Fin (N + 1) → Ω}

end Snoc

section Dim

end Dim

alias InterNumCut.proof := _root_.UpperTheory.Reformulated.B.KleimanIntersectionNumberCut.proof

end

end GroundTheory.Heights₂.Heights.Kleiman
