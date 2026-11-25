module

public import Formalism.HermitianCurvature.StatementB
public import Formalism.FormalDegreeBessel.FinalG
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.StatementJF

@[expose] public section

open Matrix MeasureTheory Filter

noncomputable section

namespace Formalism.FourierDecayAlt.P.BigCellInversePair

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

variable {k r : ℕ}

theorem uw_inv {z : Fin (2 * r + k + 1) → ℂ} {h : Mat k r} (hh : h ∈ UWset k r z) : h⁻¹ ∈ UWset k r z := by
  have hu := WeylGroupFacts.isUnit_of_uh hh.1
  have key : ∀ v : Fin (2 * r + k + 1) → ℂ, h *ᵥ v = v → h⁻¹ *ᵥ v = v := by
    intro v hv
    calc h⁻¹ *ᵥ v = h⁻¹ *ᵥ (h *ᵥ v) := by rw [hv]
      _ = v := by rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hu, Matrix.one_mulVec]
  exact ⟨WeylGroupFacts.uh_inv hh.1, fun a => ⟨key _ (hh.2.1 a).1, key _ (hh.2.1 a).2⟩, key _ hh.2.2⟩

def invP (p : SS k r) : SS k r :=
  ((((Matrix.of p.1.1 : Mat k r)⁻¹ : Mat k r),
      ((Matrix.of p.1.1 : Mat k r)⁻¹ * (Matrix.of p.1.2 : Mat k r)⁻¹ * (Matrix.of p.1.1 : Mat k r) : Mat k r)),
    (((Matrix.of p.2.1 : Mat k r)⁻¹ : Mat k r),
      ((Matrix.of p.2.1 : Mat k r)⁻¹ * (Matrix.of p.2.2 : Mat k r)⁻¹ * (Matrix.of p.2.1 : Mat k r) : Mat k r)))

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

theorem invP_inSS (D : RealPlaceData k r Wp Wq) {p : SS k r} (hp : D.inSS p) : D.inSS (invP p) := by
  obtain ⟨h1, h2, h3, h4⟩ := hp
  have hu1 := WeylGroupFacts.isUnit_of_uh h1.1
  have hu3 := WeylGroupFacts.isUnit_of_uh h3.1
  refine ⟨uw_inv h1, ?_, uw_inv h3, ?_⟩
  · have := (uWNormal k r D.z D.z_mem (Matrix.of p.1.1)⁻¹ (uw_inv h1) _ (WeylGroupFacts.mem_n_inv h2)).1
    rwa [Matrix.nonsing_inv_nonsing_inv _ hu1] at this
  · have := (uWNormal k r D.z' D.z'_mem (Matrix.of p.2.1)⁻¹ (uw_inv h3) _ (WeylGroupFacts.mem_n_inv h4)).1
    rwa [Matrix.nonsing_inv_nonsing_inv _ hu3] at this

theorem sgs_invP (p : SS k r) (hp1 : IsUnit (Matrix.of p.1.1 : Mat k r).det) (hp2 : IsUnit (Matrix.of p.1.2 : Mat k r).det)
    (hp3 : IsUnit (Matrix.of p.2.1 : Mat k r).det) (hp4 : IsUnit (Matrix.of p.2.2 : Mat k r).det) (x : Mat k r) :
    sgs (invP p) (sgs p x) = x := by
  show (Matrix.of p.1.1 : Mat k r)⁻¹⁻¹ * ((Matrix.of p.1.1 : Mat k r)⁻¹ * (Matrix.of p.1.2 : Mat k r)⁻¹ *
      Matrix.of p.1.1)⁻¹ * ((Matrix.of p.1.1 : Mat k r)⁻¹ * (Matrix.of p.1.2 : Mat k r)⁻¹ * x *
      Matrix.of p.2.2 * Matrix.of p.2.1) * ((Matrix.of p.2.1 : Mat k r)⁻¹ * (Matrix.of p.2.2 : Mat k r)⁻¹ *
      Matrix.of p.2.1) * (Matrix.of p.2.1 : Mat k r)⁻¹ = x
  generalize (Matrix.of p.1.1 : Mat k r) = A at hp1 ⊢
  generalize (Matrix.of p.1.2 : Mat k r) = B at hp2 ⊢
  generalize (Matrix.of p.2.1 : Mat k r) = C at hp3 ⊢
  generalize (Matrix.of p.2.2 : Mat k r) = D at hp4 ⊢
  rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv A hp1,
    Matrix.nonsing_inv_nonsing_inv B hp2]
  simp only [mul_assoc, Matrix.mul_nonsing_inv_cancel_left, Matrix.mul_nonsing_inv, hp1, hp2, hp3, hp4, mul_one]

end Formalism.FourierDecayAlt.P.BigCellInversePair

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

end Formalism.FourierDecayAlt.P
