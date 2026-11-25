module

public import GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.StWWFibrePoly
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Inter

open MeasureTheory MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI ReciprocityTheory.ChartRestriction.G.AI.I4

noncomputable section

namespace DiagonalFibreFubini

def wordCoef (i : ℕ) : ℕ → Fin 2 → ℝ := fun n =>
  if n = 0 then ![1, -1] else if n = 1 then ![0, 1] else if n < 2 + 2 * i then ![1, 0] else ![0, 1]

variable {K : Type*} [Fintype K] {ι : K → Type*} [∀ k, Fintype (ι k)]

theorem linProd_word (k i : ℕ) (hik : i < k) :
    wwLinProd k (wordCoef i) = (X 0 - X 1) * X 0 ^ (2 * i) * X 1 ^ (2 * k - 1 - 2 * i) := by
  obtain ⟨r, hr⟩ : ∃ r, 2 * k = 2 + 2 * i + r := ⟨2 * k - 2 - 2 * i, by omega⟩
  rw [wwLinProd, hr, Finset.prod_range_add, Finset.prod_range_add]
  have h1 : ∏ x ∈ Finset.range 2, (C (wordCoef i x 0) * X 0 + C (wordCoef i x 1) * X 1 : MvPolynomial (Fin 2) ℝ) =
      (X 0 - X 1) * X 1 := by
    simp [Finset.prod_range_succ, wordCoef]
    ring
  have h2 : ∏ x ∈ Finset.range (2 * i),
      (C (wordCoef i (2 + x) 0) * X 0 + C (wordCoef i (2 + x) 1) * X 1 : MvPolynomial (Fin 2) ℝ) = X 0 ^ (2 * i) := by
    rw [← Finset.card_range (2 * i), ← Finset.prod_const]
    refine Finset.prod_congr (by rw [Finset.card_range]) fun x hx => ?_
    have hx' : x < 2 * i := Finset.mem_range.1 hx
    simp [wordCoef, show 2 + x ≠ 1 by omega, show 2 + x < 2 + 2 * i by omega]
  have h3 : ∏ x ∈ Finset.range r,
      (C (wordCoef i (2 + 2 * i + x) 0) * X 0 + C (wordCoef i (2 + 2 * i + x) 1) * X 1 : MvPolynomial (Fin 2) ℝ) =
        X 1 ^ r := by
    rw [← Finset.card_range r, ← Finset.prod_const]
    refine Finset.prod_congr (by rw [Finset.card_range]) fun x _ => ?_
    simp [wordCoef, show 2 + 2 * i + x ≠ 1 by omega,
      show ¬ 2 + 2 * i + x < 2 + 2 * i by omega]
  rw [h1, h2, h3, show 2 + 2 * i + r - 1 - 2 * i = r + 1 by omega, pow_succ]
  ring

end DiagonalFibreFubini


end

end GroundTheory.Heights₂.Heights.Inter
