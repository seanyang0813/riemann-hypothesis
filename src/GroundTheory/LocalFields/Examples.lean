module

public import Mathlib.NumberTheory.LocalField.Basic
public import Mathlib.NumberTheory.Padics.LocalField
public import Mathlib.NumberTheory.Padics.ValuativeRel
import Mathlib.NumberTheory.Padics.LocalField
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.HahnSeries.Basic
import Mathlib.RingTheory.LaurentSeries

@[expose] public section

namespace GroundTheory.LocalField

open ValuativeRel WithZero

theorem isValuativeTopology_of_valued {R : Type*} [CommRing R] [ValuativeRel R]
    {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀] [Valued R Γ₀]
    [(Valued.v : Valuation R Γ₀).Compatible] : IsValuativeTopology R :=
  IsValuativeTopology.of_mem_nhds_zero_iff_vle (Valued.v : Valuation R Γ₀) fun {s} => by
    simpa using (Valued.hasBasis_nhds_zero R Γ₀).mem_iff (t := s)

namespace Padic

variable (p : ℕ) [hp : Fact p.Prime]

theorem mulValuation_le_iff_norm_le (x y : ℚ_[p]) :
    Padic.mulValuation x ≤ Padic.mulValuation y ↔ ‖x‖ ≤ ‖y‖ := by
  by_cases hx : x = 0
  · simp [hx]
  by_cases hy : y = 0
  · simp [hx, hy]
  rw [Padic.norm_eq_zpow_neg_valuation hx, Padic.norm_eq_zpow_neg_valuation hy,
    zpow_le_zpow_iff_right₀ (by exact_mod_cast hp.out.one_lt)]
  simp [hx, hy, -exp_neg]

end Padic

namespace LaurentSeries

open _root_.LaurentSeries HahnSeries

variable (K : Type*) [Field K]

section Finite

variable {K}

variable (K) [Finite K]

end Finite

end LaurentSeries

end GroundTheory.LocalField
