module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx

@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GroundTheory.Heights₂.Heights.LowerBoundFree

namespace GlobalTheory.CompanionTheory.Ar.Top

def hhFl (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (II : IntersectionSystem) : RP Ψ N →ₗ[ℝ] ℝ :=
  (basisMonomials (Ψ × Fin N) ℝ).constr ℝ fun m => (-1) ^ m.degree * hFlMono Ψ N II m

def HhTestBound {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (j : ℕ) (hh : RP Ψ N → ℝ) : Prop :=
  hh (testPoly j) ≤ ((dimX Ψ N j : ℝ) + 1) * testDeg Ψ N j *
    (Fintype.card Ψ * ((min j (N - j) : ℕ) / 2 * Real.log (N + 1)))

end GlobalTheory.CompanionTheory.Ar.Top
