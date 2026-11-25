module

public import Formalism.SharpRestriction.CuspSpanNormBounds.LocalBesselAndTopKernel

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.J

open NumberField Formalism.HermitianLatticesTheory Formalism.BasicNotions

def IdxColTie (D : D7) : Prop := StandardLattice.idxPi D (D.host.g 0) (D.host.g 1) = S.gaG D

def IdxRowTie (D : D7) : Prop := StandardLattice.idxSig D (D.host.g 0) (D.host.g 1) = LocalBesselAndTopKernel.idxRows D

end Formalism.MainNotions.J

end
