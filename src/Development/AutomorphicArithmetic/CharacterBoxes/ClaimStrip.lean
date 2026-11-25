module

public import Development.AutomorphicArithmetic.CharacterBoxes.HalfPlane
public import Mathlib.NumberTheory.LSeries.Nonvanishing

@[expose] public section

open Complex

namespace Claim

theorem gamma_ne_zero {M : ℕ} [NeZero M] (φ : DirichletCharacter ℂ M) {t : ℂ} (ht : 0 < t.re) :
    DirichletCharacter.gammaFactor φ t ≠ 0 := by
  rcases φ.even_or_odd with hφ | hφ
  · rw [hφ.gammaFactor_def]; exact Complex.Gammaℝ_ne_zero_of_re_pos ht
  · rw [hφ.gammaFactor_def]
    exact Complex.Gammaℝ_ne_zero_of_re_pos (by rw [Complex.add_re, Complex.one_re]; linarith)

/-- The functional equation reflects a primitive zero at `s` to a zero for the inverse
character at `1 - s`. The gamma factors are nonzero in the open critical strip. -/
theorem prim_reflect {M : ℕ} [NeZero M] (ψ : DirichletCharacter ℂ M) (hψ : ψ.IsPrimitive) {s : ℂ}
    (hs0 : 0 < s.re) (hs1 : s.re < 1) (h : DirichletCharacter.LFunction ψ s = 0) :
    DirichletCharacter.LFunction ψ⁻¹ (1 - s) = 0 := by
  have ht0 : 0 < (1 - s).re := by rw [Complex.sub_re, Complex.one_re]; linarith
  have hc : DirichletCharacter.completedLFunction ψ s = 0 := by
    rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor ψ s
      (Or.inl (ne_zero_of_re_pos hs0)), div_eq_zero_iff] at h
    exact h.resolve_right (gamma_ne_zero ψ hs0)
  have fe := hψ.inv.completedLFunction_one_sub s
  rw [inv_inv, hc, mul_zero] at fe
  rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor ψ⁻¹ (1 - s)
    (Or.inl (ne_zero_of_re_pos ht0)), fe, zero_div]

/-- Right-half-plane nonvanishing for all Dirichlet characters forces all zeros in the
open critical strip onto the critical line. A zero to the left is first reduced to a
primitive character and then reflected into the right half-plane. -/
theorem strip (h : DirichletLNonvanishingRightOfHalf) : DirichletLZerosOnLine := by
  intro N _ χ s hs0 hs1 hz
  have hs : s ≠ 1 := fun e => by rw [e, Complex.one_re] at hs1; exact lt_irrefl _ hs1
  have hs0' : s ≠ 0 := fun e => by rw [e, Complex.zero_re] at hs0; exact lt_irrefl _ hs0
  rcases lt_trichotomy s.re (1 / 2) with hlt | heq | hgt
  · exfalso
    have : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
    have hprimitive := (LFunction_eq_zero_iff_primitiveCharacter χ hs0 (Or.inr hs)).mp hz
    have hreflected := prim_reflect χ.primitiveCharacter χ.primitiveCharacter_isPrimitive hs0 hs1 hprimitive
    have ht : (1 : ℂ) - s ≠ 1 := fun e => hs0' (sub_eq_self.mp e)
    exact h χ.conductor χ.primitiveCharacter⁻¹ (1 - s)
      (by rw [Complex.sub_re, Complex.one_re]; linarith) (Or.inr ht) hreflected
  · exact heq
  · exact absurd hz (h N χ s hgt (Or.inr hs))

/-- Specialize the strip result to the character of modulus one. Outside the open
critical strip, use zeta nonvanishing for real part at least one and the classification
of zeros for nonpositive real part. -/
theorem zeta (h : DirichletLNonvanishingRightOfHalf) : RiemannZetaZerosOnLine := by
  intro s hz htriv _
  by_cases hpos : 0 < s.re
  · by_cases hlt : s.re < 1
    · exact strip h 1 1 s hpos hlt (by simpa only [DirichletCharacter.LFunction_modOne_eq] using hz)
    · exact absurd hz (riemannZeta_ne_zero_of_one_le_re (le_of_not_gt hlt))
  · exact (htriv ((riemannZeta_eq_zero_iff_of_re_nonpos (le_of_not_gt hpos)).mp hz)).elim

end Claim
