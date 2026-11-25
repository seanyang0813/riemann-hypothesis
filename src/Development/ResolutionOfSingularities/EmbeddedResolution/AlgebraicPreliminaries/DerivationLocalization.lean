module

public import Mathlib.Algebra.Module.FinitePresentation
public import Mathlib.RingTheory.Kaehler.Basic
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u v w x

variable {R : Type u} {S : Type v} {S' : Type w} {N : Type x}
variable [CommRing R] [CommRing S] [CommRing S'] [AddCommGroup N]
variable [Algebra R S] [Algebra R S'] [Algebra S S']
variable [IsScalarTower R S S']
variable [Module R N] [Module S N] [Module S' N]
variable [IsScalarTower R S N] [IsScalarTower S S' N] [IsScalarTower R S' N]

namespace Derivation

private theorem exists_liftToLocalization (D : Derivation R S N) (M : Submonoid S)
    [IsLocalization M S'] :
    ∃ D' : Derivation R S' N, ∀ s : S, D' (algebraMap S S' s) = D s := by
  have hu : ∀ y : M, IsUnit ((algebraMap S (Module.End S N)) (y : S)) := fun y => by
    rw [← (Algebra.lsmul S (A := S') S N).commutes (y : S)]
    exact (IsLocalization.map_units (M := M) S' y).map (Algebra.lsmul S (A := S') S N).toMonoidHom
  have : IsLocalizedModule M (KaehlerDifferential.map R R S S') := inferInstance
  refine ⟨(LinearMap.extendScalarsOfIsLocalization M S'
      (IsLocalizedModule.lift M (KaehlerDifferential.map R R S S')
        D.liftKaehlerDifferential hu)).compDer (KaehlerDifferential.D R S'), fun s => ?_⟩
  show IsLocalizedModule.lift M (KaehlerDifferential.map R R S S') D.liftKaehlerDifferential hu
      (KaehlerDifferential.D R S' (algebraMap S S' s)) = D s
  have key : IsLocalizedModule.lift M (KaehlerDifferential.map R R S S')
        D.liftKaehlerDifferential hu
        (KaehlerDifferential.map R R S S' (KaehlerDifferential.D R S s))
      = D.liftKaehlerDifferential (KaehlerDifferential.D R S s) :=
    LinearMap.congr_fun
      (IsLocalizedModule.lift_comp M (KaehlerDifferential.map R R S S')
        D.liftKaehlerDifferential hu) (KaehlerDifferential.D R S s)
  rw [← KaehlerDifferential.map_D R R S S' s, key]
  exact D.liftKaehlerDifferential_comp_D s

theorem exists_mapToLocalization (D : Derivation R S S) (M : Submonoid S)
    [IsLocalization M S'] :
    ∃ D' : Derivation R S' S', ∀ s : S,
      D' (algebraMap S S' s) = algebraMap S S' (D s) := by
  obtain ⟨D', hD'⟩ :=
    exists_liftToLocalization (S' := S') (N := S') ((Algebra.linearMap S S').compDer D) M
  exact ⟨D', fun s => hD' s⟩

noncomputable def mapToLocalization (D : Derivation R S S) (M : Submonoid S)
    [IsLocalization M S'] : Derivation R S' S' :=
  (exists_mapToLocalization (S' := S') D M).choose

@[simp]
theorem mapToLocalization_algebraMap (D : Derivation R S S) (M : Submonoid S)
    [IsLocalization M S'] (s : S) :
    (D.mapToLocalization (S' := S') M) (algebraMap S S' s) = algebraMap S S' (D s) :=
  (exists_mapToLocalization (S' := S') D M).choose_spec s

theorem exists_derivation_mul_eq (M : Submonoid S) [IsLocalization M S']
    [Module.FinitePresentation S (KaehlerDifferential R S)] (D : Derivation R S S') :
    ∃ (m : M) (D₀ : Derivation R S S), ∀ s : S,
      algebraMap S S' (m : S) * D s = algebraMap S S' (D₀ s) := by
  obtain ⟨ψ, m, hψ⟩ := Module.FinitePresentation.exists_lift_of_isLocalizedModule
    M (Algebra.linearMap S S') D.liftKaehlerDifferential
  refine ⟨m, LinearMap.compDer ψ (KaehlerDifferential.D R S), fun s => ?_⟩
  have h1 : algebraMap S S' (ψ (KaehlerDifferential.D R S s))
      = (m : S) • D.liftKaehlerDifferential (KaehlerDifferential.D R S s) :=
    LinearMap.congr_fun hψ (KaehlerDifferential.D R S s)
  rw [Derivation.liftKaehlerDifferential_comp_D, Algebra.smul_def] at h1
  exact h1.symm

theorem exists_derivation_mul_eq_of_isLocalization (M : Submonoid S) [IsLocalization M S']
    [Module.FinitePresentation S (KaehlerDifferential R S)] (D : Derivation R S' S') :
    ∃ (m : M) (D₀ : Derivation R S S), ∀ s : S,
      algebraMap S S' (m : S) * D (algebraMap S S' s) = algebraMap S S' (D₀ s) := by
  obtain ⟨m, D₀, h⟩ := exists_derivation_mul_eq (S' := S') M (D.compAlgebraMap S)
  exact ⟨m, D₀, fun s => h s⟩

end Derivation
