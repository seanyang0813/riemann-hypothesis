module

public import Mathlib.Algebra.Algebra.Rat
public import Mathlib.Algebra.Group.Subgroup.Map
public import Mathlib.Basic.Real.Basic
import Mathlib.NumberTheory.Height.NumberField
public import Mathlib.Data.Fintype.Defs

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Complex
open scoped Classical

namespace GlobalTheory.CompanionTheory.OM

abbrev W (κ R : Type) : Type := (κ → R) × (κ → R)

variable {κ : Type} [Fintype κ]

def ofQ (κ R : Type) [CommRing R] [Algebra ℚ R] : W κ ℚ →+ W κ R where
  toFun w := (fun i => algebraMap ℚ R (w.1 i), fun i => algebraMap ℚ R (w.2 i))
  map_zero' := by ext <;> simp
  map_add' a b := by ext <;> simp

def re (Γ : AddSubgroup (W κ ℚ)) : AddSubgroup (W κ ℝ) := Γ.map (ofQ κ ℝ)

end GlobalTheory.CompanionTheory.OM

end
