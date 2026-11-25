module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianCovectors.HermBvecLeft
public import Formalism.HermitianCurvature.OperatorsCommuteTranslations
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic

@[expose] public section

open Matrix Finset

namespace Formalism.FourierDecayAlt.P.SignAntidiagonal

open Formalism.FourierDecayAlt.C3 Formalism.REAL Formalism.QuantumDeterminants

theorem herm_bvec_bvec {n : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) (p q : Fin n) :
    herm H (bvec p) (bvec q) = H q p := by
  have hs : star (bvec q) = bvec q := by
    ext i
    by_cases h : i = q <;> simp [bvec, h]
  unfold herm
  rw [hs]
  simp [bvec, Matrix.mulVec, dotProduct, Pi.single_apply]

section dp
variable {k r : ℕ} (z' : Fin (2 * r + k + 1) → ℂ) (p q : Fin (2 * r + k + 1))

theorem dp1 (hp : p.val < r) (hq : q.val < r) : dpsiP k r z' p q = if q.val = p.val + 1 then 1 else 0 := by
  rw [dpsiP, if_pos ⟨hp, hq⟩]
theorem dp2 (hp : p.val < r) (hq1 : r ≤ q.val) (hq2 : q.val ≤ r + k) :
    dpsiP k r z' p q = if p.val + 1 = r then z' q else 0 := by
  rw [dpsiP, if_neg (by omega), if_pos ⟨hp, hq1, hq2⟩]
theorem dp0 (hp : p.val < r) (hq : r + k < q.val) : dpsiP k r z' p q = 0 := by
  rw [dpsiP, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_neg (by omega)]
theorem dp3 (hp1 : r ≤ p.val) (hp2 : p.val ≤ r + k) (hq : r + k < q.val) :
    dpsiP k r z' p q = if q.val = r + k + 1 then herm (Hpk k r) (bvec p) z' else 0 := by
  rw [dpsiP, if_neg (by omega), if_neg (by omega), if_pos ⟨hp1, hp2, hq⟩]
theorem dp4 (hp : r + k < p.val) (hq : r + k < q.val) : dpsiP k r z' p q = if q.val = p.val + 1 then 1 else 0 := by
  rw [dpsiP, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_pos ⟨hp, hq⟩]
end dp

theorem hpk_row_eI {k r : ℕ} (b : Fin r) (p : Fin (2 * r + k + 1)) :
    Hpk k r (eI k r b) p = if p.val = 2 * r + k - b.val then 1 else 0 := by
  have hb := b.isLt
  have heI : (eI k r b).val = b.val := rfl
  simp only [Hpk]
  by_cases h : p.val = 2 * r + k - b.val
  · rw [if_pos h, if_pos ⟨by rw [heI]; exact hb, by rw [heI]; omega⟩]
  · rw [if_neg h, if_neg (fun hc => h (by rw [heI] at hc; omega)),
      if_neg (fun hc => by rw [heI] at hc; omega),
      if_neg (fun hc => by rw [heI] at hc; exact absurd hc.1 (by omega))]

theorem herm_unitary {k r : ℕ} (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (hg : g ∈ UH (Hpk k r))
    (x y : Fin (2 * r + k + 1) → ℂ) : herm (Hpk k r) (g *ᵥ x) (g *ᵥ y) = herm (Hpk k r) x y := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  unfold herm
  rw [Matrix.star_mulVec, Matrix.mulVec_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
    ← Matrix.mul_assoc, hg']

theorem herm_bvec_eI {k r : ℕ} (v : Fin (2 * r + k + 1) → ℂ) (b : Fin r) :
    herm (Hpk k r) v (bvec (eI k r b)) = v (esI k r b) := by
  have h1 : herm (Hpk k r) v (bvec (eI k r b)) = ∑ p, Hpk k r (eI k r b) p * v p := by
    have hs : star (bvec (eI k r b)) = bvec (eI k r b) := by
      ext i
      by_cases h : i = eI k r b <;> simp [bvec, h]
    unfold herm
    rw [hs]
    simp [bvec, Matrix.mulVec, dotProduct, Pi.single_apply]
  rw [h1]
  simp_rw [hpk_row_eI]
  rw [Finset.sum_eq_single (esI k r b)]
  · simp [esI]
  · intro p _ hp
    rw [if_neg, zero_mul]
    intro h
    exact hp (Fin.ext (by simp [esI, h]))
  · simp

theorem xi_Y_zhat_identity : XiYZhat := by
  apply CovecW.covec_entries

end Formalism.FourierDecayAlt.P.SignAntidiagonal
