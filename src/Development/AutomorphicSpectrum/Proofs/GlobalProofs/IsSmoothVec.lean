module

public import Development.AutomorphicSpectrum.PublishedTheorems.Jets₂.IsPermissibleOfCentre
public import Formalism.LocalToGlobal.BesselHermitianTheta.TiedType
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DefClassNum
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule

@[expose] public section

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.LinRed GlobalTheory.FlagMeas GlobalTheory.RealInd
open scoped InnerProductSpace ContDiff

namespace GlobalTheory.CompanionTheory.Hypotheses₂.HCA

variable {n : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

def IsSmoothVec (G : Set (Matrix (Fin n) (Fin n) ℂ)) (π : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)) (v : H) : Prop :=
  ∃ F : (Fin n → Fin n → ℂ) → H, ContDiff ℝ ∞ F ∧ ∀ z, Matrix.of z ∈ G → π (Matrix.of z) v = F z

end GlobalTheory.CompanionTheory.Hypotheses₂.HCA

end
