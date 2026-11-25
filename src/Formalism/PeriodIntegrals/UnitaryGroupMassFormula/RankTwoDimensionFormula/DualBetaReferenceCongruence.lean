module

import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LeviMul
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermOp
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate TensorProduct
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Matrix Formalism.L2.SG.TermOp Formalism.L2.SG.HidaSetting
  Formalism.L2.SG.Pf.unitaryCongruence

namespace PI.UnitaryDimensionFormula.NormCutK

section LeviMul

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} (TR : TypedRed X)

theorem resT_of_mem (v : TR.Pl) {z : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F} (hz : z ∈ IntAf X.B.I.F X.B.I.E) :
    resT TR v z = TR.res v ⟨z, hz⟩ := by
  unfold resT; rw [dite_eq_left hz]

theorem dual_beta_reference_congruence (i : Fin D.R.k) (a : Fin D.R.rS) : ZMod' X.B.I X.B.g (hA X.B.I (X.bwd i) (X.e0 a)) := by
  rw [hA_symm]
  exact Z_sig X.B.I X.B.g ((X.weightVectorsIntegral i).2.2 a).2.2.1

theorem leviM_mul {x y : X.B.I.Gf} (hx : x ∈ X.B.I.Kset) (hy : y ∈ X.B.I.Kset)
    (hyb : ∀ j, X.B.I.fmat y *ᵥ X.bw j ∈ Mo X.B.I X.B.g (Set.range X.e0 ∪ Set.range X.bw))
    (hxe : ∀ a, X.B.I.fmat x *ᵥ X.e0 a ∈ Mo X.B.I X.B.g (Set.range X.e0)) (v : TR.Pl) :
    leviM TR (x * y) v = leviM TR x v * leviM TR y v := by
  apply Formalism.L2.SG.NormCut.leviM_mul <;> assumption

end LeviMul

end PI.UnitaryDimensionFormula.NormCutK
