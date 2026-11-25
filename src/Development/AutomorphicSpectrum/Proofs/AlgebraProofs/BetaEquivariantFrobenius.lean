module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalHermitianActionPairing
public import Mathlib.LinearAlgebra.Matrix.DotProduct

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Conj

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv

theorem beta_rhoH_eq : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type) [CommRing O]
    [StarRing O] (B : FB R d O) (a : O) (y : (Fin d → R) × (Fin d → R)),
    beta B p (rhoH B a y) = ((rho B (star a)).transpose.map (· ^ p)).mulVec (beta B p y) := by
  intro R _ p _ _ d O _ _ B a y
  refine dotProduct_eq _ _ fun u => ?_
  have hadj := (_root_.GlobalTheory.CompanionTheory.Ar.Conj.rhoH_hom_adjoint R d O B).2.2 (star a) (alpha B p u) y
  rw [star_star] at hadj
  have htw := _root_.GlobalTheory.CompanionTheory.Ar.Conj.AlphaAct.alpha_comm_act R p d O B (star a) u
  rw [dotProduct_comm, dotProduct_beta, ← hadj, ← htw, ← dotProduct_beta, dotProduct_comm _ (beta B p y),
    Matrix.dotProduct_mulVec, Matrix.transpose_map, Matrix.mulVec_transpose]

end GlobalTheory.CompanionTheory.Ar.Conj
