module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.IsSplitFrame
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary

@[expose] public section

noncomputable section

open scoped Classical TensorProduct
open Matrix NumberField Formalism.MainNotions.S Formalism.L2.SG.HidaSetting

namespace PI.UnitaryDimensionFormula

theorem idxDSig : IdxDSig := by
  intro I
  refine ⟨Formalism.L2.SG.Pf.unitaryCongruence.sigA_sigA (I := I), ?_⟩
  unfold Formalism.UG.IsHerm Formalism.UG.cT
  ext i j
  simp [JA, sigA, Formalism.UG.inclE, Formalism.UG.sigR]
  congr 1
  rw [← Formalism.L2.SG.Pf.unitaryCongruence.J_conj (I := I) j i]
  first
  | rfl

theorem idxDInt : IdxDInt := fun I =>
  ⟨fun _ hx _ hy => Formalism.L2.SG.Pf.unitaryCongruence.hA_int I hx hy, fun _ hc => Formalism.L2.SG.Pf.unitaryCongruence.sigA_mem I hc⟩

end PI.UnitaryDimensionFormula
