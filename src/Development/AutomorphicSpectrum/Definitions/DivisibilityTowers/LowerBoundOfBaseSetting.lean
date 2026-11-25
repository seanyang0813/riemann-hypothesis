module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting

@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GroundTheory.Heights₂.Heights.LowerBoundFree

namespace GlobalTheory.CompanionTheory.Ar.Top.HhModel

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem hhFl_monomial (II : IntersectionSystem) (m : Ψ × Fin N →₀ ℕ) (a : ℝ) :
    hhFl Ψ N II (monomial m a) = a * ((-1) ^ m.degree * hFlMono Ψ N II m) := by
  have h : (monomial m a : RP Ψ N) = a • basisMonomials (Ψ × Fin N) ℝ m := by
    simp [coe_basisMonomials, smul_monomial]
  rw [h, map_smul, hhFl, Module.Basis.constr_basis, smul_eq_mul]

theorem hhFl_monomial_of_ne (II : IntersectionSystem) (m : Ψ × Fin N →₀ ℕ) (a : ℝ)
    (h : m.degree ≠ GlobalTheory.CompanionTheory.Ar.Top.dimFl Ψ N + 1) : hhFl Ψ N II (monomial m a) = 0 := by
  rw [hhFl_monomial, hFlMono, if_neg]
  · simp
  · exact h

end GlobalTheory.CompanionTheory.Ar.Top.HhModel
