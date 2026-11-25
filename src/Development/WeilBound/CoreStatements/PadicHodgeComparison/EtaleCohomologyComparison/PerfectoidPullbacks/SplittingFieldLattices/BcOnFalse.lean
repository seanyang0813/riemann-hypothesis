module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.Transport
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocVan
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.SplitField

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem bcOn_true : BcOn True := _root_.GlobalTheory.CompanionTheory.BcLoc.bc_single @loc_bc @_root_.CrystallineSemistableComparison.Pb.Site.poly_tf'

theorem bcOn_false : BcOn False := _root_.GlobalTheory.CompanionTheory.GlobBc.main @glob_bc_st bcOn_true

theorem finO' : True ∧ FinO := ⟨trivial, _root_.GlobalTheory.CompanionTheory.FinOverO.finO _root_.CrystallineSemistableComparison.Pb.locGr_h @_root_.CrystallineSemistableComparison.Pb.Site.poly_tf' _root_.CrystallineSemistableComparison.Pb.globSerreSt_h @_root_.CrystallineSemistableComparison.Pb.gr_cech_fin_pf⟩

theorem afgA : AfgA := _root_.GlobalTheory.CompanionTheory.LatticeFinite.afgA_of_bcOn_finO bcOn_false finO'.2

theorem liftA : LiftA := _root_.GlobalTheory.CompanionTheory.LiftLat.liftA_of_afgA afgA

theorem basisB : BasisB := _root_.GlobalTheory.CompanionTheory.BasisBase.main bcOn_false @k_iso

end CrystallineSemistableComparison.Pb
