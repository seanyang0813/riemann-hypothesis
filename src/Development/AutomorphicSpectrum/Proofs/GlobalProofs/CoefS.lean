module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV
open scoped TensorProduct ENNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

def boxF {M : ℕ} (A : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fin 1 → Fin M → Fv F v ⊗[F] E)) :
    Set (Fin 1 → Fin M → Af F ⊗[F] E) :=
  {X | ∀ v, projV v X ∈ A v}

def intF (S : Finset (HeightOneSpectrum (𝓞 F))) : Set (Af F) :=
  {y | ∀ v, v ∉ S → y v ∈ v.adicCompletionIntegers F}

def boxA (S : Finset (HeightOneSpectrum (𝓞 F))) (U : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v)) : Set (Af F) :=
  {y | (∀ v ∈ S, y v ∈ U v) ∧ ∀ v, v ∉ S → y v ∈ v.adicCompletionIntegers F}

def testT (ρ : Ainf F → ℝ) (S : Finset (HeightOneSpectrum (𝓞 F)))
    (U : ∀ v : HeightOneSpectrum (𝓞 F), Set (Fv F v)) (y : AF F) : ℂ :=
  (ρ (fstA F y) : ℂ) * (boxA S U).indicator (fun _ => (1 : ℂ)) (sndA F y)

def fouA (ψ : AddChar (AF F) ℂ) (db : Measure (AF F)) (T : AF F → ℂ) (b : AF F) : ℂ :=
  ∫ y, T y * ψ (y * b) ∂db

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.Coef
