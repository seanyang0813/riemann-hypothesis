module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInt
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WuBesselLoc
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyIntLoc
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyIntOm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyIntQ
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.MuNcHaar
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopTermLem
import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCSB
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.NumericSettingWithGapSatisfiable
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.TopsChoicePartA
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ConjEApply

@[expose] public section

noncomputable section

open MeasureTheory NumberField Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf Formalism.L2.SG.Pf.Choice
open Formalism.L2.SG.RealObj.EnergyIntTor Formalism.L2.SG.Pf.WuBL
open scoped InnerProductSpace ENNReal

namespace Formalism.L2.SG.RealObj.EnergyIntLoc

variable {k r : ℕ}

def rmulE (b bi : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (hb : b * bi = 1) (hbi : bi * b = 1) :
    Formalism.QuantumDeterminants.Mt k r ≃ᵐ Formalism.QuantumDeterminants.Mt k r where
  toFun := Formalism.FourierDecayAlt.B.rmulF b
  invFun := Formalism.FourierDecayAlt.B.rmulF bi
  left_inv x := by
    show Matrix.of x * b * bi = x
    rw [Matrix.mul_assoc, hb, Matrix.mul_one]; rfl
  right_inv x := by
    show Matrix.of x * bi * b = x
    rw [Matrix.mul_assoc, hbi, Matrix.mul_one]; rfl
  measurable_toFun := by
    have h := (cont_conj (k := k) (r := r) 1 b).measurable
    convert h using 1
    funext x i j
    simp [Formalism.FourierDecayAlt.B.rmulF]
  measurable_invFun := by
    have h := (cont_conj (k := k) (r := r) 1 bi).measurable
    convert h using 1
    funext x i j
    simp [Formalism.FourierDecayAlt.B.rmulF]

theorem rmulE_coe (b bi : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (hb : b * bi = 1)
    (hbi : bi * b = 1) : ⇑(rmulE (k := k) (r := r) b bi hb hbi) = Formalism.FourierDecayAlt.B.rmulF b := rfl

variable {D : D7} {X : HidaSetting D} {θ : ℝ}


end Formalism.L2.SG.RealObj.EnergyIntLoc
