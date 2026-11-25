module

import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPolynomialLocalizedLength
public import Mathlib.RingTheory.Length
public import Mathlib.RingTheory.Localization.AtPrime.Basic
import Mathlib.Tactic.Linter.HaveILetI
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights

namespace ObjectsChow

namespace VerticalPartMultiplicity

open MvPolynomial NumberField
open ReciprocityTheory.ChartRestriction.G.Geo (MRing PBlk Xc)

theorem length_localizedModule_quotient {A : Type*} [CommRing A] (K W : Ideal A) [W.IsPrime] :
    Module.length (Localization.AtPrime W) (LocalizedModule W.primeCompl (A ⧸ K)) =
      Module.length (Localization.AtPrime W)
        (Localization.AtPrime W ⧸ K.map (algebraMap A (Localization.AtPrime W))) := by
  apply _root_.GroundTheory.Heights₂.Heights.NumbersDVR.length_localizedModule_quotient_eq

theorem length_self_eq_of_ringEquiv {Q Q' : Type*} [CommRing Q] [CommRing Q'] (τ : Q ≃+* Q') :
    Module.length Q Q = Module.length Q' Q' := by
  letI := RingHomInvPair.of_ringEquiv τ
  letI := RingHomInvPair.symm (↑τ : Q →+* Q') (τ.symm : Q' →+* Q)
  apply WithBot.coe_injective
  rw [Module.coe_length, Module.coe_length,
    Order.krullDim_eq_of_orderIso (Submodule.orderIsoMapComap τ.toSemilinearEquiv)]

variable {n : ℕ}

end VerticalPartMultiplicity

end ObjectsChow

end GroundTheory.Heights₂.Heights
