module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsChartNormSep
import GroundTheory.HeightsAndTheta.Heights.ChowForms.PNormOfDividedForm
public import GroundTheory.HeightsAndTheta.Heights.ChowForms.StatementsNormForm
public import Mathlib.Algebra.Module.StablyFree.Basic
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.LocalProperties.Reduced
public import Mathlib.Algebra.MvPolynomial.Nilpotent
public import Mathlib.RingTheory.Localization.NormTrace

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

noncomputable section

theorem NormOfDividedFormSep.proof (hEval : NormFormEval.Statement) (hDvd : NormFormDvd.Statement)
    (hPrime : PrimeMapFractionRing.Statement) : NormOfDividedFormSep.Statement :=
  fun O B _ _ _ _ _ _ _ _ n η t P hsep hgen ht hP hdvd u =>
    NormOfDividedForm.det_mulLeft_eq hEval hDvd hPrime O B n η t P hsep hgen ht hP hdvd u

end

end GroundTheory.Heights₂.Heights
