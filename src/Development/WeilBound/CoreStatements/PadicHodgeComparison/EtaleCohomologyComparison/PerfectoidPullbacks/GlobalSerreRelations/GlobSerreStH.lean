module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.Transport
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocVan

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem locGr_h : KH.LocGr := _root_.GlobalTheory.CompanionTheory.LocGrInd.loc_gr
theorem locVan_h : KH.LocVan := loc_van
theorem polyTf_h : KH.PolyTf := _root_.CrystallineSemistableComparison.Pb.Site.poly_tf'
theorem globSerreSt_h : KH.GlobSerreSt := glob_serre_st
theorem globVanSt_h : KH.GlobVanSt := glob_van_st

end CrystallineSemistableComparison.Pb
