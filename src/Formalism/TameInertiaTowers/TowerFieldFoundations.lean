module

public import Formalism.TameInertiaTowers.StatementField
public import Formalism.TameInertiaTowers.CentralOrderTwo.ConjEqInvOfPowEqOne
public import Formalism.TameInertiaTowers.CentralOrderTwo.DecompositionSubgroupIndex
public import Formalism.TameInertiaTowers.CentralOrderTwo.Galois
public import Formalism.TameInertiaTowers.CentralOrderTwo.OddEqOneOfSubOneMem

@[expose] public section

namespace Formalism.TwoAdicCyclotomicDecomposition

theorem layerConj : LayerConj := layerConj_of layerGalois
theorem layerReal : LayerReal := layerReal_of layerGalois layerConj
theorem layerDecompTwo : LayerDecompTwo := layerDecompTwo_of layerGalois
theorem layerInertiaTwo : LayerInertiaTwo := layerInertiaTwo_of layerGalois
theorem layerEFGTwo : LayerEFGTwo := layerEFGTwo_of layerGalois layerReal
theorem layerInertiaTame : LayerInertiaTame := layerInertiaTame_of layerGalois
theorem layerFrob : LayerFrob := layerFrob_of layerGalois

end Formalism.TwoAdicCyclotomicDecomposition
