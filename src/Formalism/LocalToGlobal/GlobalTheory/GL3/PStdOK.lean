module

public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SpanRangeEmb4EqTop
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PHfArith
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PFamily
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdChar
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.CayleyGaussianIntegralsCongrFact
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlock
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlockFirstBlockEmb
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq
import Formalism.SharpRestriction.GlobalSchurBounds.StandardIntegralLatticeExists
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.SO

open Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H
open Formalism.L2.Th1.F (cmTheta)

theorem selfDual_img {V W : Type*} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W] (H : Sesq V) (H' : Sesq W)
    (g : V ≃ₗ[ℂ] W) (hg : IsIsom H H' (g : V →ₗ[ℂ] W)) (Λ : AddSubgroup V) (h : IsSelfDual H Λ) :
    IsSelfDual H' (imgLat (g : V →ₗ[ℂ] W) Λ) := by
  apply le_antisymm
  · intro x hx
    refine ⟨g.symm x, ?_, g.apply_symm_apply x⟩
    rw [← h]
    intro y hy
    obtain ⟨m, hm⟩ := hx (g y) ⟨y, hy, rfl⟩
    refine ⟨m, ?_⟩
    rw [← hm]
    have := hg (g.symm x) y
    simp only [LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply] at this
    simp only [altE, this]
  · rintro _ ⟨x, hx, rfl⟩ _ ⟨y, hy, rfl⟩
    rw [← h] at hx
    obtain ⟨m, hm⟩ := hx y hy
    refine ⟨m, ?_⟩
    rw [← hm]
    have := hg x y
    simp only [altE]
    exact congrArg Complex.im this

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem gen_mem {Λ : AddSubgroup ℂ} {w : ℂ} (hw : w ∈ Λ) {y : Fin 4 → D.host.E} (hy : ∀ a, y a ∈ D.host.AA0) :
    w • emb4 D y ∈ pow4 (lamMM D Λ) :=
  fun a => AddSubgroup.subset_closure ⟨w, hw, y a, hy a, rfl⟩

theorem fourth_power_le_closure_embeddings (Λ : AddSubgroup ℂ) : pow4 (lamMM D Λ) ≤
    AddSubgroup.closure {z | ∃ w ∈ Λ, ∃ y : Fin 4 → D.host.E, (∀ a, y a ∈ D.host.AA0) ∧ z = w • emb4 D y} := by
  apply GlobalTheory.FourthRootStd.fourth_power_le_closure_embeddings

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.SO

end
