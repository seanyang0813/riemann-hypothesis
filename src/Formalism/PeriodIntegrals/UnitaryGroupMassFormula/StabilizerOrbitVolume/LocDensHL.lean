module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.ExistsUnifFv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.VolFromSW

@[expose] public section

noncomputable section

namespace PI.VolStabSW

namespace LatFactsW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Filter Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] [FiniteDimensional F E]
  {d : ℕ} (b : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F))

instance contSMul_herm (σ : E →ₐ[F] E) (a : ℕ) : ContinuousSMul (Fv F v) (HermR (Fv F v) σ a) := by
  refine ⟨continuous_induced_rng.2 ?_⟩
  show Continuous fun p : Fv F v × HermR (Fv F v) σ a =>
    p.1 • (p.2 : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E))
  exact continuous_fst.smul (continuous_subtype_val.comp continuous_snd)

end LatFactsW

open scoped TensorProduct
open NumberField IsDedekindDomain Topology Filter Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes PI.VolFromSW LatFactsW

end PI.VolStabSW
