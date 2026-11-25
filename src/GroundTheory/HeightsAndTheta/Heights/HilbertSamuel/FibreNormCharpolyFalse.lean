module

public import Mathlib.Algebra.Algebra.Rat
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.ProjDefs
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry MvPolynomial

noncomputable section

namespace FibreNormCharpoly

theorem aeval_mul_of_isHomogeneous {σ' Ω : Type*} [Field Ω] [CharZero Ω] {p : MvPolynomial σ' ℚ} {d : ℕ}
    (hp : p.IsHomogeneous d) (μ : Ω) (f : σ' → Ω) :
    aeval (fun j => μ * f j) p = μ ^ d * aeval f p := by
  classical
  conv_lhs => rw [p.as_sum]
  conv_rhs => rw [p.as_sum]

  rw [map_sum, map_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun m hm => ?_
  rw [aeval_monomial, aeval_monomial]
  have hdeg : ∑ i ∈ m.support, m i = d := by
    have := hp (mem_support_iff.mp hm)
    simpa [Finsupp.weight_apply, Finsupp.sum] using this
  simp only [Finsupp.prod, mul_pow, Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, hdeg]
  ring

end FibreNormCharpoly

namespace ProjLine

open ProjLine

end ProjLine

namespace FibreNormCharpoly

open ProjLine

end FibreNormCharpoly

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
