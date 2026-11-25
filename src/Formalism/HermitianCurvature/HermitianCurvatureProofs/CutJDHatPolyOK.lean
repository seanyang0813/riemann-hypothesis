module

import Development.AbelianVarietyTheory.Proofs.JetHarmonics.JdPolyOKPolynomialOperators
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatOpA
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZinvBound
import Mathlib.Tactic.Linter.Style
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleOfUnitWords

@[expose] public section

open Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP

noncomputable section

open scoped ContDiff

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity PI.UnitaryCorollaryDerivatives.CRH Formalism.FourierDecayAlt.P.AdmissibleLieWords

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem jdh_pd_star {N κ : ℕ} {P : Matrix (Fin N) (Fin N) ℂ → ℂ} (h : U.IsPolyDeg κ P) :
    U.IsPolyDeg κ (fun g => star (P g)) := by
  obtain ⟨q, hq, he⟩ := h
  refine ⟨MvPolynomial.rename Sum.swap (MvPolynomial.map (starRingEnd ℂ) q), ?_, fun g => ?_⟩
  · refine (MvPolynomial.totalDegree_rename_le _ _).trans (le_trans ?_ hq)
    exact Finset.sup_mono (MvPolynomial.support_map_subset _ _)
  · show star (P g) = _
    rw [he g, MvPolynomial.eval_rename, MvPolynomial.eval_map]
    show (starRingEnd ℂ) (MvPolynomial.eval₂ (RingHom.id ℂ) _ q) = _
    rw [MvPolynomial.eval₂_comp_left, RingHom.comp_id]
    congr 1
    funext x
    rcases x with x | x <;> simp

theorem polynomial_decay_admissible : JDPolyOK := by
  apply GlobalTheory.HatNF.polyOp_ok

end

end Formalism.FourierDecayAlt.P.CutMP
