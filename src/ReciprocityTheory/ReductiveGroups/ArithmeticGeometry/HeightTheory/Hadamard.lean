module

import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.LinearIndependentRealOfIntOfDiscrete
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.ExistsOrthonormalOfLinearIndependent
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.SchurAverage
public import Mathlib.Analysis.Complex.Order
public import Mathlib.LinearAlgebra.Matrix.PosDef
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.Analysis.Complex.Exponential

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open scoped BigOperators ComplexOrder
open Finset Matrix

theorem psd_det_re_le_one_of_diag (N : ℕ) (H : Matrix (Fin N) (Fin N) ℂ) (hH : H.PosSemidef)
    (hd : ∀ c, H c c = 1) : H.det.re ≤ 1 := by
  have hHerm := hH.isHermitian
  have htr : ∑ i, hHerm.eigenvalues i = N := by
    have h := hHerm.trace_eq_sum_eigenvalues
    have h2 : H.trace = N := by simp [Matrix.trace, hd]
    rw [h2] at h
    have h4 := congrArg (RCLike.re : ℂ → ℝ) h

    simp only [map_sum, RCLike.ofReal_re, RCLike.natCast_re] at h4
    linarith
  have hre : H.det.re = ∏ i, hHerm.eigenvalues i := by
    rw [hHerm.det_eq_prod_eigenvalues]
    first
      | (norm_cast)
  rw [hre]
  calc ∏ i, hHerm.eigenvalues i ≤ ∏ i, Real.exp (hHerm.eigenvalues i - 1) :=
        Finset.prod_le_prod₀ (fun i _ => hH.eigenvalues_nonneg i)
          (fun i _ => by linarith [Real.add_one_le_exp (hHerm.eigenvalues i - 1)])
    _ = Real.exp (∑ i, (hHerm.eigenvalues i - 1)) := (Real.exp_sum _ _).symm
    _ = 1 := by simp [Finset.sum_sub_distrib, htr]

theorem psd_det_re_le_prod_diag (N : ℕ) (G : Matrix (Fin N) (Fin N) ℂ) (hG : G.PosSemidef) :
    G.det.re ≤ ∏ c, (G c c).re := by
  have hd (i : Fin N) : ((G i i).re : ℂ) = G i i :=
    Complex.conj_eq_iff_re.mp (by simpa [conjTranspose_apply] using congrFun (congrFun hG.1 i) i)
  have h := (Complex.le_def.mp (GlobalTheory.posSemidef_det_le_prod_diag hG)).1
  rwa [← Complex.ofReal_re (∏ i, (G i i).re), Complex.ofReal_prod,
    Finset.prod_congr rfl (fun i _ => hd i)]

theorem hadamard_det_le {n : ℕ} (A : Matrix (Fin n) (Fin n) ℂ) :
    ‖A.det‖ ≤ ∏ i, Real.sqrt (∑ j, ‖A i j‖ ^ 2) := by
  apply Formalism.HermitianLatticeCounting.P.norm_det_le_prod_row_norms

end ReciprocityTheory.ChartRestriction.G.T0
