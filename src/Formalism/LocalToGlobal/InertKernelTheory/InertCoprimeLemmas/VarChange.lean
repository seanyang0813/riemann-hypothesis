module

public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.GenusOneWittExistsOf
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveEndoAll
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.DegreeLeOfMemAntidiagonal
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.Points
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CurveSer
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.EqWSerSubst

@[expose] public section

open PowerSeries

noncomputable section

namespace Formalism.L2.KerInert.VC

open Formalism.L2.Th1.A

section Ring

variable {R : Type} [CommRing R] (W : WeierstrassCurve R) (C : WeierstrassCurve.VariableChange R)

end Ring

section Subst

variable {R : Type} [CommRing R]

end Subst

section Field

variable {K : Type} [Field K] [CharZero K] (W : WeierstrassCurve K) (C : WeierstrassCurve.VariableChange K)

end Field

section Integral

open Formalism.L2.Th1.C

variable {K : Type} [Field K] [CharZero K] (R' : Subring K)

variable {R'}

end Integral

end Formalism.L2.KerInert.VC
