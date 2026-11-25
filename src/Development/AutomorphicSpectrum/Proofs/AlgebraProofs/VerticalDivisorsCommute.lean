module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Statements
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CutEffectiveDivisor
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyCN
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorsCommute

@[expose] public section

namespace GlobalTheory.CompanionTheory.CommAlg.VerticalDivisors

open GroundTheory.Heights₂.Heights.NumbersDVR

theorem verticalDivisorsCommute : VerticalDivisorsCommute.Statement.{0} :=
  VerticalDivisorsCommute.proof _root_.GlobalTheory.CompanionTheory.Ar.Num.CutClosed.main Representative.full
    IntNumAddFirst.full DivCycleFiniteSupport.full MinimalPrimeMultiHomog.full
    SupSpanMultiHomog.full SpecialQuotDim.full SpecialIdealCorresp.full SpecialIdealMultiHomog.full
    DimStrictDrop.full

end GlobalTheory.CompanionTheory.CommAlg.VerticalDivisors
