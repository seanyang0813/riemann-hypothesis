module

public import GroundTheory.GlobalFields.TateThesis.AdelicChar
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.GaussQ
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import GroundTheory.AutomorphicForms.GL2.GJMatrixInfinite
import GroundTheory.HeightsAndTheta.Theta.AdelicFourierCoord

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Fth

section Gen
open NumberField IsDedekindDomain MeasureTheory
open GroundTheory.Global GroundTheory.Automorphic.GJMatrix GroundTheory.Heights₂.Theta
open scoped TensorProduct ENNReal Matrix NumberField.AdeleRing

variable {F : Type} [Field F] [NumberField F] {ι : Type} [Fintype ι] [DecidableEq ι]

def chiG (G : Matrix ι ι F) (u v : ι → 𝔸[F]) : ℂ :=
  (adelicChar F (u ⬝ᵥ (G.map (algebraMap F 𝔸[F]) *ᵥ v)) : ℂ)

end Gen

section Link
open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.CompanionTheory.SW.BB
open scoped TensorProduct ENNReal Matrix

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

end Link

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Fth
