module

public import Mathlib.Algebra.Field.ZMod
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.RingTheory.PowerSeries.Basic
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Mathlib.RingTheory.Ideal.Maps
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic

@[expose] public section

noncomputable section

open PowerSeries

namespace ReciprocityTheory.PGsh

namespace TowerExample

variable (p : ℕ) [Fact p.Prime]

lemma ne_top (m : ℕ) (hm : 0 < m) : Ideal.span {(X : (ZMod p)⟦X⟧) ^ m} ≠ ⊤ := by
  rw [Ne, Ideal.span_singleton_eq_top, PowerSeries.isUnit_iff_constantCoeff]
  simp [zero_pow hm.ne']

end TowerExample


end ReciprocityTheory.PGsh
