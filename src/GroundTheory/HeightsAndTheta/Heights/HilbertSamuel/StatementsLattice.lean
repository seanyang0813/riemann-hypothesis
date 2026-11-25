module

public import GroundTheory.HeightsAndTheta.Heights.HermitianTensor
public import Mathlib.Algebra.Module.ZLattice.Covolume
public import GroundTheory.HeightsAndTheta.Heights.ArithDegree
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Tactic.TypeStar

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open NumberField NumberField.ComplexEmbedding TensorProduct ComplexAt MeasureTheory Module Filter
  Topology Asymptotics Matrix
open scoped ComplexOrder

noncomputable section

section Had

variable {K : Type*} [Field K] [NumberField K]

def fibreNorm (E : HermitianBundle K) (σ : K →+* ℂ) (x : Fibre σ E.carrier) : ℝ :=
  ‖FibreSpace.equiv E.metric σ x‖

abbrev bundleRank (E : HermitianBundle K) : ℕ := Module.finrank (𝓞 K) E.carrier


structure BoundedInjection (E' E : HermitianBundle K) (A : (K →+* ℂ) → ℝ) where

  toLinearMap : E'.carrier →ₗ[𝓞 K] E.carrier
  injective : Function.Injective toLinearMap
  norm_le : ∀ (σ : K →+* ℂ) (x : Fibre σ E'.carrier),
    fibreNorm E σ (toLinearMap.lTensor (ComplexAt σ) x) ≤ A σ * fibreNorm E' σ x

structure ShortFamily (E : HermitianBundle K) (lam : (K →+* ℂ) → ℝ) where

  vec : Fin (bundleRank E) → E.carrier
  linearIndependent : LinearIndependent (𝓞 K) vec
  norm_le : ∀ (σ : K →+* ℂ) (i : Fin (bundleRank E)),
    fibreNorm E σ ((1 : ComplexAt σ) ⊗ₜ[𝓞 K] vec i) ≤ lam σ

end Had

section HadExamples

variable (K : Type*) [Field K] [NumberField K]


variable {K} in
def BoundedInjection.id (E : HermitianBundle K) : BoundedInjection E E (fun _ ↦ 1) where
  toLinearMap := LinearMap.id
  injective := Function.injective_id
  norm_le σ x := by rw [LinearMap.lTensor_id, LinearMap.id_apply, one_mul]

end HadExamples

def LogDetDerivative.Statement : Prop :=
  ∀ (m : ℕ) (G G' : ℝ → Matrix (Fin m) (Fin m) ℂ), (∀ t, (G t).PosDef) →
    (∀ t i j, HasDerivAt (fun s ↦ G s i j) (G' t i j) t) →
    ∀ t, HasDerivAt (fun s ↦ -(1 / 2) * Real.log (G s).det.re)
      (-(1 / 2) * ((G t)⁻¹ * G' t).trace.re) t

def GridSum.Statement : Prop :=
  ∀ D i : ℕ, i ≤ D →
    (fun n : ℕ ↦ (∑ a ∈ Finset.range n,
        (a : ℝ) ^ i * ((n - 1 - a : ℕ) : ℝ) ^ (D - i) / ((i.factorial : ℝ) * ((D - i).factorial : ℝ))) -
      (n : ℝ) ^ (D + 1) / ((D + 1).factorial : ℝ)) =O[atTop] fun n : ℕ ↦ (n : ℝ) ^ D

def unitBallVolume (R : ℕ) : ℝ := (volume (Metric.ball (0 : EuclideanSpace ℝ (Fin R)) 1)).toReal

structure ShortLatticeBasis {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    (La : Submodule ℤ V) (c : ℝ) where

  vec : Fin (Module.finrank ℝ V) → V
  mem : ∀ i, vec i ∈ La
  linearIndependent : LinearIndependent ℝ vec
  norm_le : ∀ i, ‖vec i‖ ≤ c

def LatticeCount.Statement : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    [MeasurableSpace V] [BorelSpace V] (La : Submodule ℤ V) [DiscreteTopology La]
    [IsZLattice ℝ La] (c b : ℝ), ShortLatticeBasis La c → 0 ≤ b →
      {x : V | x ∈ La ∧ ‖x‖ ≤ b}.Finite ∧
      ({x : V | x ∈ La ∧ ‖x‖ ≤ b}.ncard : ℝ) * ZLattice.covolume La ≤
        unitBallVolume (Module.finrank ℝ V) *
          (b + (Module.finrank ℝ V : ℝ) * c) ^ Module.finrank ℝ V

def SmallBallVolume.Statement : Prop := ∀ R : ℕ, unitBallVolume R ≤ 6

def MinkowskiCount.Statement : Prop :=
  (∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    [MeasurableSpace V] [BorelSpace V] (La : Submodule ℤ V) [DiscreteTopology La]
    [IsZLattice ℝ La] (ρ : ℝ), 0 < ρ →
      Real.log (unitBallVolume (Module.finrank ℝ V)) +
          (Module.finrank ℝ V : ℝ) * Real.log (ρ / 2) - Real.log (ZLattice.covolume La) ≤
        Real.log ({x : V | x ∈ La ∧ ‖x‖ ≤ ρ}.ncard : ℝ)) ∧
  ∀ R : ℕ, (2 / Real.sqrt R) ^ R ≤ unitBallVolume R

def Packing.Statement : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] (La : Submodule ℤ V) [Module.Finite ℤ La]
    (S : Finset V) (b : ℝ), 0 ≤ b → (∀ s ∈ S, s ∈ La) → (∀ s ∈ S, ‖s‖ ≤ 1) →
    (∀ s ∈ S, ∀ t ∈ S, s ≠ t → Real.exp (-b) ≤ ‖s - t‖) →
      Real.log S.card ≤ Module.finrank ℤ La * (b + Real.log 3)

section LatticeExamples

end LatticeExamples

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
