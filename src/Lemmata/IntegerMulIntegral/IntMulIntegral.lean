module

import Lemmata.NatMulIsIntegral.ExistsNatMulIsIntegral
public import Mathlib.NumberTheory.NumberField.Basic

@[expose] public section

namespace Bl.IntegerMulIntegral

theorem goal1 {E : Type} [Field E] [NumberField E] {n : ℕ}
    (L : Submodule (NumberField.RingOfIntegers E) (Fin n → E)) (v : Fin n → E)
    (hv : v ∈ Submodule.span E (L : Set (Fin n → E))) :
    ∃ m : ℤ, m ≠ 0 ∧ m • v ∈ L := by
  obtain ⟨m, hm, hmv⟩ := Bl.NatMulIsIntegral.goal1 hv
  exact ⟨m, Int.natCast_ne_zero.mpr hm.ne', by simpa only [natCast_zsmul] using hmv⟩

end Bl.IntegerMulIntegral
