module

public import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.AdBridge
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes

@[expose] public section

noncomputable section

namespace PI.InvTopW

open NumberField IsDedekindDomain Matrix Topology Filter
open scoped TensorProduct Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.MainNotions.S (AutInst uMat)
open Formalism.L2.SG.AdBridge

def KgMat (I : AutInst) (g : ℕ) (M : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F)) :
    Prop :=
  (∀ y, y ∈ I.Lf ↔ M *ᵥ y ∈ I.Lf) ∧
    ∀ y ∈ I.Lf, ∃ z ∈ I.Lf, (M - 1) *ᵥ y = (g : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) • z

def InNInt (I : AutInst) (N : ℕ) (x : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) : Prop :=
  ∃ z ∈ Formalism.MainNotions.S.IntAf I.F I.E, x = (N : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * z

def EntriesLat : Prop :=
  ∀ (I : AutInst) (g : ℕ), 1 ≤ g → ∃ N : ℕ, 1 ≤ N ∧
    ∀ M M' : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F), M * M' = 1 →
      (∀ i j, InNInt I N ((M - 1) i j)) → (∀ i j, InNInt I N ((M' - 1) i j)) → KgMat I g M

def FinNhdA : Prop :=
  ∀ (F : Type) [Field F] [NumberField F] (N : ℕ), 1 ≤ N →
    {a : FiniteAdeleRing (𝓞 F) F | ∃ z ∈ Formalism.UG.intAd F, a = (N : FiniteAdeleRing (𝓞 F) F) * z} ∈
      𝓝 (0 : FiniteAdeleRing (𝓞 F) F)

def FinNhdB : Prop :=
  ∀ (F : Type) [Field F] [NumberField F], ∀ U ∈ 𝓝 (0 : FiniteAdeleRing (𝓞 F) F),
    ∃ N : ℕ, 1 ≤ N ∧ ∀ z ∈ Formalism.UG.intAd F, (N : FiniteAdeleRing (𝓞 F) F) * z ∈ U

end PI.InvTopW
