module

public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.DualWeylIn
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormSK
import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingDividedAdjoint
import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingHighestWeightProof
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingRowAction
import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal

@[expose] public section

namespace Formalism.L2.G.Model.TS.Top

open Formalism.L2.G.Model.TS Formalism.GradedWeylDivisibility

alias fockRBilin := _root_.Formalism.L2.G.Model.TS.fock_pairing_bilinear
alias fockRMap := _root_.Formalism.L2.G.Model.TS.fock_pairing_map
alias hWNorm := _root_.Formalism.L2.G.Model.TS.highest_weight_norm
alias fockRRowAct := _root_.Formalism.L2.G.Model.TS.fock_pairing_row_action
alias fock_pairing_highest_weight := _root_.Formalism.L2.G.Model.TS.fock_pairing_highest_weight_proof
alias dualWeylIn := _root_.Formalism.L2.G.Model.TS.dual_weyl_inclusion
alias nondegK := _root_.Formalism.L2.G.Model.TS.nondegenerate_over_field
theorem formCoreSK : FormCoreSK := Formalism.L2.G.Model.TS.formCoreSK_of Formalism.L2.G.Model.TS.weyl_form_nondegenerate_global

end Formalism.L2.G.Model.TS.Top
