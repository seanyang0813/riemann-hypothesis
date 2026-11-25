module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.IsKumCoc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernClassTateTwistCocycleUniqueNaturalAddi
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsKummerTorsorSplittingKummerTorsorSplitting
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NeZeroOfDvd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchClsCocycleSec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothSurjectiveCechDescentCohomology
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistReductionResolutionMapGenerator
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistResolutionPairingSpecAndCupUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistSectionsLocallyGenerated
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EvExt

@[expose] public section

set_option linter.unusedVariables false
set_option backward.isDefEq.respectTransparency false

open CategoryTheory GlobalTheory.EtC

namespace CrystallineSemistableComparison.E

theorem inGen : InGen := by
  intro q _ i
  let t := GlobalTheory.EtC.twist_sections q i
  exact ⟨t.2.1, t.2.2.1, t.2.2.2.2.1⟩

theorem inSch : InSch := GlobalTheory.EtC.sch_cls_cocycle_sec

theorem inTw : InTw := fun q _ i j => (GlobalTheory.EtC.TwPairUniq.main q i j).1

theorem inRed : InRed := GlobalTheory.EtC.RedExists.red_exists

theorem inKum : InKum := GlobalTheory.EtC.KummerSplit.isKum_kumT

theorem firstChern_cocycle_naturality : InC1 := fun q _ E L h => (GlobalTheory.EtC.firstChernClassTateTwist_cocycle_naturality_additivity q).1 L h

theorem etIn : EtIn := ⟨_root_.GlobalTheory.EtC.smooth_surjective_cech_descent_cohomology, _root_.GlobalTheory.EtC.RedCoef.a11, inGen, inSch, inTw, inRed, inOp, inKum, firstChern_cocycle_naturality⟩

end CrystallineSemistableComparison.E
