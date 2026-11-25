module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.KappaSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Inter

open MeasureTheory MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI ReciprocityTheory.ChartRestriction.G.AI.I4

noncomputable section

def wwLinPot {K : Type*} [Fintype K] {ι : K → Type*} [∀ k, Fintype (ι k)] {e : ℕ} (X₀ X₁ A₀ : HermLine ι) (k : ℕ)
    (u : ℕ → Fin 2 → ℝ) : Fin e → ((Σ k, ι k) → ℂ) → ℝ :=
  fun j z =>
    if (j : ℕ) < 2 * k then u j 0 * Real.log (X₀.h z) + u j 1 * Real.log (X₁.h z) else Real.log (A₀.h z)

def wwLinProd (k : ℕ) (u : ℕ → Fin 2 → ℝ) : MvPolynomial (Fin 2) ℝ :=
  ∏ n ∈ Finset.range (2 * k), (C (u n 0) * X 0 + C (u n 1) * X 1)

def wwLogWeight (p : S2 × S2) : ℝ :=
  (1 / 2 : ℝ) * Real.log ((1 - inner ℝ (p.1 : E3) (p.2 : E3)) / 2)

end

end GroundTheory.Heights₂.Heights.Inter
