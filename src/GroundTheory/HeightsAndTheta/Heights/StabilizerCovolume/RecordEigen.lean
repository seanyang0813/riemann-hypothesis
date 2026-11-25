module

public import GroundTheory.HeightsAndTheta.Heights.StabilizerCovolume.RecordEigenInputs

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.NineStatements

open NumberField IsDedekindDomain
open scoped nonZeroDivisors

theorem extDifferent_ne_bot {E L : Type} [Field E] [NumberField E] [Field L] [NumberField L] (ι : E →+* L) :
    extDifferent ι ≠ ⊥ := by
  rw [extDifferent, Ne, Ideal.map_eq_bot_iff_of_injective]
  · exact differentIdeal_ne_bot
  · intro x y h
    have h' := congrArg (fun z : 𝓞 L => (z : L)) h
    simp only [RingOfIntegers.mapRingHom_apply] at h'
    exact RingOfIntegers.ext (ι.injective h')

end GroundTheory.Heights₂.Heights.NineStatements
