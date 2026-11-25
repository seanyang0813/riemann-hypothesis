module

public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.FiniteDimensionalOfOrtho
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassSt
public import Formalism.HermitianLattices.StatementMass
public import Formalism.HermitianLattices.HermitianLatticesProofs.MassBasic
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

open NumberField Module

noncomputable section

namespace ReciprocityTheory.ChartRestriction.L3
open Formalism.HermitianLattices.Ext.L3 (finiteDimensional_of_ortho isFullLattice_of_ortho isTotPosDef_of_ortho)

section Ortho

variable {K V : Type} [Field K] [NumberField K] [StarRing K] [AddCommGroup V] [Module K V]
  [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]

namespace StandardSymmetricSums

end StandardSymmetricSums

open StandardSymmetricSums

theorem trace_pos_of_ortho (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) {h : V →ₗ⋆[K] V →ₗ[K] K}
    (hs : h.IsSymm) {L : Submodule (𝓞 K) V} {n : ℕ} (hL : Formalism.HermitianLatticesTheory.IsOrthoLattice h L n) :
    ∀ x : V, x ≠ 0 → 0 < Algebra.trace ℚ K (h x x) := by
  intro x hx
  have hp := isTotPosDef_of_ortho hK hs hL x hx
  have ht := trace_eq_sum_embeddings (K := ℚ) (L := K) ℂ (x := h x x)
  have hre := congrArg Complex.re ht
  rw [Complex.re_sum] at hre
  have hpos : 0 < ∑ σ : K →ₐ[ℚ] ℂ, (σ (h x x)).re :=
    Finset.sum_pos (fun σ _ => hp σ.toRingHom)
      ⟨(Classical.arbitrary (K →+* ℂ)).toRatAlgHom, Finset.mem_univ _⟩
  rw [← hre] at hpos
  have : (algebraMap ℚ ℂ (Algebra.trace ℚ K (h x x))).re = ((Algebra.trace ℚ K (h x x) : ℚ) : ℝ) := by
    simp
  rw [this] at hpos
  exact_mod_cast hpos

theorem mass_pos_of_ortho (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) {h : V →ₗ⋆[K] V →ₗ[K] K}
    (hs : h.IsSymm) {L : Submodule (𝓞 K) V} {n : ℕ} (hL : Formalism.HermitianLatticesTheory.IsOrthoLattice h L n) :
    0 < Formalism.HermitianLatticesTheory.mass h L := by
  have := finiteDimensional_of_ortho hL
  exact (Formalism.HermitianLatticesTheory.massBasic K V h hs (trace_pos_of_ortho hK hs hL) L (isFullLattice_of_ortho hL)).2.2

end Ortho

end ReciprocityTheory.ChartRestriction.L3
