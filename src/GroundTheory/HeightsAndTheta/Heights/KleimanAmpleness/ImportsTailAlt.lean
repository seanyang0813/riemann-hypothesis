module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftVal
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsFieldSubalgebraSelf

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiProjPrime intNum)
open GroundTheory.Heights₂.Heights.FieldNumbers (relDim)
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver)

def SegreLiftIntNum.Statement : Prop :=
  ∀ (F : Type) [Field F] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type)
    [∀ k, Fintype (ι k)] (W : Ideal (MRing ι F)), IsMultiProjPrime W → ∀ β : K → ℤ,
      intNum F (segreLift ι F W) ![IndefiniteRowSideFullHecke.Kleiman2.pullDeg β] = intNum F W ![β]

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
