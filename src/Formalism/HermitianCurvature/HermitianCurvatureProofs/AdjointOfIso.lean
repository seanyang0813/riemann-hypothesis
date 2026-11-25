module

public import Formalism.HermitianCurvature.BesselNonvanishingReduction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.OpNormLeOneOfIso
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.ConvGrp
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OppositeWeylSubgroupClosed
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace ENNReal

namespace Formalism.FourierDecayAlt.P.S3dx6

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData

variable {k r : ℕ}

theorem unit_of_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g * g⁻¹ = 1 ∧ g⁻¹ * g = 1 := by
  obtain ⟨-, h2, -⟩ := PI.WBL.Cv.grpAll k r 0
  exact ⟨(h2 g hg).1, (h2 g hg).2.1⟩

theorem inv_inv_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g⁻¹⁻¹ = g :=
  Matrix.inv_eq_left_inv (unit_of_uh hg).1

theorem inner_sig {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] {σ : Mx k r → (H →L[ℂ] H)}
    (hU : PI.WBL.Cv.SigU σ) {a : Mx k r} (ha : a ∈ UH (Hpk k r)) (u v : H) :
    ⟪σ a u, v⟫_ℂ = ⟪u, σ a⁻¹ v⟫_ℂ := by
  let T : H →ₗᵢ[ℂ] H := { toLinearMap := (σ a : H →ₗ[ℂ] H), norm_map' := hU.2.2 a ha }
  have hai : a⁻¹ ∈ UH (Hpk k r) := WeylGroupFacts.uh_inv ha
  have hv : σ a (σ a⁻¹ v) = v := by
    rw [← ContinuousLinearMap.comp_apply, ← hU.2.1 a ha _ hai, (unit_of_uh ha).1, hU.1]; rfl
  calc ⟪σ a u, v⟫_ℂ = ⟪T u, T (σ a⁻¹ v)⟫_ℂ := by
        show ⟪σ a u, v⟫_ℂ = ⟪σ a u, σ a (σ a⁻¹ v)⟫_ℂ
        rw [hv]
    _ = ⟪u, σ a⁻¹ v⟫_ℂ := T.inner_map_map _ _

theorem measurePreserving_invM_of_isHaarOn {z : Fin (2 * r + k + 1) → ℂ} {μ : Measure (Mt k r)} (h : B.IsHaarOn (UWset k r z) μ) :
    MeasurePreserving (B7.invM (k := k) (r := r)) μ μ :=
  ⟨B7.measurable_invM, Formalism.FourierDecayAlt.P.haar_measure_inversion k r _ μ (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r z) h⟩

theorem mp_inv_N {μ : Measure (Mt k r)} (h : B.IsHaarOn (Nset k r) μ) :
    MeasurePreserving (B7.invM (k := k) (r := r)) μ μ :=
  ⟨B7.measurable_invM, Formalism.FourierDecayAlt.P.haar_measure_inversion k r _ μ (Formalism.FourierDecayAlt.P.unipotent_radical_closed k r) h⟩

end Formalism.FourierDecayAlt.P.S3dx6
