module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.Bundle
public import Mathlib.Algebra.Module.LocalizedModule.Basic
public import Mathlib.GroupTheory.GroupAction.Ring
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Kleiman

open MvPolynomial

noncomputable section

section Cech

structure CechSystem (ι : Type) (k : Type) [CommRing k] where

  V : Finset ι → Type
  [grp : ∀ I, AddCommGroup (V I)]
  [mod : ∀ I, Module k (V I)]

  res : ∀ {I J : Finset ι}, I ⊆ J → V I →ₗ[k] V J

  piece : ∀ I, Submodule k (V I)

  good : Finset ι → Prop

attribute [instance] CechSystem.grp CechSystem.mod

end Cech

section Graded

variable (S : Type) [CommRing S] (N : ℕ)

abbrev Poly : Type := MvPolynomial (Fin (N + 1)) S

def polyPiece (d : ℤ) : Submodule S (Poly S N) :=
  weightedHomogeneousSubmodule S (fun _ => (1 : ℤ)) d

structure GradedMod (M : Type) [AddCommGroup M] [Module (Poly S N) M] [Module S M]
    [IsScalarTower S (Poly S N) M] where

  piece : ℤ → Submodule S M
  internal : DirectSum.IsInternal piece
  smul_mem : ∀ (d c : ℤ) (f : Poly S N), f ∈ polyPiece S N d → ∀ m ∈ piece c, f • m ∈ piece (d + c)

end Graded

section Cl

open ReciprocityTheory.ChartRestriction.G.Geo

variable (S : Type) [CommRing S] {N : ℕ} {Ω : Type} [Field Ω] [Algebra S Ω]

def chartRingI (x : Fin (N + 1) → Ω) (I : Finset (Fin (N + 1))) : Subalgebra S Ω :=
  Algebra.adjoin S {y | ∃ i ∈ I, ∃ j, y = x j / x i}

theorem chartRingI_singleton (x : Fin (N + 1) → Ω) (i : Fin (N + 1)) :
    chartRingI S x {i} = chartRing S x i := by
  unfold chartRingI chartRing
  congr 1
  ext y
  simp [eq_comm]

variable (E : Type) [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]

variable {S E}

variable (S)

variable {S}

abbrev LineBundle (x : Fin (N + 1) → Ω) : Type := ChartBundle S x 1 Ω

variable (S)

end Cl

section Filtration

open ReciprocityTheory.ChartRestriction.G.Geo

variable (S : Type) [CommRing S] (N : ℕ)
variable {M : Type} [AddCommGroup M] [Module (Poly S N) M] [Module S M] [IsScalarTower S (Poly S N) M]


variable {S N}
variable {Ω : Type} [Field Ω] [Algebra S Ω]

variable (S)

end Filtration

section Comparison₂

open ReciprocityTheory.ChartRestriction.G.Geo

variable {S : Type} [CommRing S] {σ : Type} {Ω : Type} [Field Ω] [Algebra S Ω]


end Comparison₂

section Inhabitants

open ReciprocityTheory.ChartRestriction.G.Geo

variable (S : Type) [CommRing S] (N : ℕ)

variable {S} {Ω : Type} [Field Ω] [Algebra S Ω]

end Inhabitants

section Inhabitants2

open ReciprocityTheory.ChartRestriction.G.Geo

variable {S : Type} [CommRing S] {N : ℕ} {Ω : Type} [Field Ω] [Algebra S Ω]


variable (S N)

end Inhabitants2

end

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Kleiman
