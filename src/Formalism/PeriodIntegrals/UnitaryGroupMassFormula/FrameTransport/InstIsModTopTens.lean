module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FrameTransport.StepTransl

@[expose] public section

noncomputable section

namespace PI.FT

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Matrix
open scoped TensorProduct

section Mat

variable {F E : Type} [Field F] [Field E] [Algebra F E] {σ : E →ₐ[F] E}
  {R : Type} [CommRing R] [Algebra F R]

abbrev mt {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : HA R σ J) :
    Matrix (Fin n) (Fin n) (R ⊗[F] E) :=
  ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E))

abbrev mtI {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : HA R σ J) :
    Matrix (Fin n) (Fin n) (R ⊗[F] E) :=
  (((HA.mat R σ J g)⁻¹ : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E))

end Mat

section Cont

variable {F E : Type} [Field F] [Field E] [Algebra F E] {σ : E →ₐ[F] E}
variable (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R]

instance instIsModTopTens : IsModuleTopology R (R ⊗[F] E) := ⟨rfl⟩

instance instContAddTens : ContinuousAdd (R ⊗[F] E) :=
  IsModuleTopology.toContinuousAdd R (R ⊗[F] E)

theorem cont_HA_iff {T : Type*} [TopologicalSpace T] {n : ℕ} {J : Matrix (Fin n) (Fin n) E}
    (f : T → HA R σ J) :
    Continuous f ↔ Continuous (fun t => mt (f t)) ∧ Continuous (fun t => mtI (f t)) := by
  constructor
  · intro hf
    have h1 : Continuous (fun t => ((toHR (f t) : HR R σ J) : GL (Fin n) (R ⊗[F] E))) :=
      continuous_subtype_val.comp hf
    exact ⟨Units.continuous_val.comp h1, Units.continuous_coe_inv.comp h1⟩
  · rintro ⟨h1, h2⟩
    have h3 : Continuous (fun t => ((toHR (f t) : HR R σ J) : GL (Fin n) (R ⊗[F] E))) :=
      Units.continuous_iff.2 ⟨h1, h2⟩
    exact h3.subtype_mk (fun t => (toHR (f t)).2)

end Cont

section Frame

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] {σ : E →ₐ[F] E}

instance instNontrivialAF : Nontrivial (AF F) :=
  inferInstanceAs (Nontrivial (NumberField.InfiniteAdeleRing F ×
    IsDedekindDomain.FiniteAdeleRing (NumberField.RingOfIntegers F) F))

end Frame

end PI.FT
