module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.DetCharacterMemPrincipalCongruenceFixedVectors

@[expose] public section

noncomputable section

namespace DiscreteGroups.sglob.DzType.Rt

open Polynomial GlobalTheory.GLq GlobalTheory.GLp Formalism.BasicNotions Formalism.MainNotions.N Formalism.MainNotions.ArithmeticCylinders GlobalTheory.SerSys
open scoped Classical

attribute [local instance] GlobalTheory.SerSys.factTypePrime

variable {g : ℕ} [Fact g.Prime]

def SerParamLe (b : ℕ) (e : ∀ n : ℕ, (ZMod g)[X] → MonoidAlgebra ℂ (Gn g n)) (τ : Formalism.CyclotomicNorms.Fbar g →* ℂ)
    (ine : ∀ n, QRep g n → ℂ[X]) : Prop :=
  ∀ n, n ≤ b → ∀ (π : QRep g n), IrrSm π → ∀ f, (∃ v ∈ fixK1 π.ρ, actK π.ρ (e n f) v ≠ 0) →
    ine n π = ((Formalism.CyclotomicNorms.rootsBar f).map fun x => X - C (τ x)).prod

def LabParamLe (b : ℕ) (D : D7) (L : ∀ k, LabelDatum (D.host.g k)) (rc : Corr D) : Prop :=
  ∀ k v, SerParamLe b (eSerC (L k)) (L k).teich fun n π => D.naut.inePol (rc k v n π) (D.ntypes.tg k v)

theorem one_le_nV (D : D7) : 1 ≤ D.R.nV := by
  have ht : 0 < D.R.t := D.R.t_odd.pos
  unfold Formalism.BasicNotions.Ranks.nV
  omega

theorem r_le_nV (D : D7) : D.R.r ≤ D.R.nV := by
  unfold Formalism.BasicNotions.Ranks.nV
  omega

end DiscreteGroups.sglob.DzType.Rt

end
