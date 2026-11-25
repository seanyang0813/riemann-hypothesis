module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass
public import Mathlib.Algebra.Homology.HomotopyCategory.KInjective

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

def LateralTheory.EtaleFoundations.EtaleKInjectiveHomExtendsAlongQuasiIso : Prop :=
  ∀ (R : Type) [CommRing R] (F : Shv R) (T I : Cx R) [I.IsKInjective] [I.IsStrictlyGE 0] (ε : sgl F ⟶ T) [QuasiIso ε], (∀ a : sgl F ⟶ I, ∃ m : T ⟶ I, ε ≫ m = a) ∧ ∀ m m' : T ⟶ I, ε ≫ m = ε ≫ m' → Nonempty (Homotopy m m')
