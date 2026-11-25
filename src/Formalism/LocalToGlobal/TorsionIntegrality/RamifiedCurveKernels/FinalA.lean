module

public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementS
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.CurveFormalFirstLevelHolds
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Hurwitz
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.HurwitzB
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.InverseEndoIntegralHolds
public import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.PairedSquareJets.Several

@[expose] public section

namespace Formalism.L2.Th1.G

alias jetsInNorm := _root_.Formalism.L2.Th1.G.jets_in_norm_holds
alias jetsFourth := _root_.Formalism.L2.Th1.G.jets_fourth_holds
alias curveNegNorm := _root_.Formalism.L2.Th1.G.curve_neg_norm_holds
alias weierstrass_biadditive_mod_equiv := _root_.Formalism.L2.Th1.G.curve_formal_first_level_holds
theorem curveRamified : CurveRamified := CurveRamified_of_shape _root_.Formalism.L2.Th1.G.ramified_shape_holds _root_.Formalism.L2.Th1.G.adjoint_unit_norm_holds _root_.Formalism.L2.Th1.G.inverse_endo_integral_holds

alias shapeCong := _root_.Formalism.L2.Th1.G.shape_congruence_holds
alias shapeOrth := _root_.Formalism.L2.Th1.G.shape_orthogonal_holds

end Formalism.L2.Th1.G
