module

public import ReciprocityTheory.L2DbarEstimates.IsLocalHomeomorph
public import Mathlib.Analysis.Calculus.FDeriv.Star
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import ReciprocityTheory.L2DbarEstimates.LeviForms.LogNormSq
import ReciprocityTheory.L2DbarEstimates.LeviForms.OfRealNormSqSumMul
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.Deriv.Inv
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv

@[expose] public section

namespace ReciprocityTheory.L2DbarEstimates.Y

open MeasureTheory Filter Topology Complex
open scoped ContDiff ENNReal ComplexConjugate

noncomputable section

theorem leviV_log_normSq {n : ℕ} {G : V n → ℂ} {x : V n} (hG : ContDiffAt ℂ 2 G x)
    (h0 : G x ≠ 0) (ξ : Fin n → ℂ) :
    leviV n (fun v => ((Real.log (Complex.normSq (G v)) : ℝ) : ℂ)) x ξ = 0 := by
  have hv := contDiffAt_normSq_comp hG
  have hpos : 0 < Complex.normSq (G x) := Complex.normSq_pos.2 h0
  have hk : ContDiffAt ℝ 2 Real.log (Complex.normSq (G x)) := Real.contDiffAt_log.2 hpos.ne'
  have h := leviChain n Real.log (fun y => Complex.normSq (G y)) x ξ hv hk
  rw [h, leviV_normSq_comp hG]
  simp only [wd_normSq_comp hG]
  have hfac : ∑ j, wd n j G x * conj (G x) * ξ j = conj (G x) * ∑ j, wd n j G x * ξ j := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun j _ => by ring
  rw [hfac, Complex.normSq_mul, Complex.normSq_conj, Real.deriv_log', deriv_inv]
  have hne : (Complex.normSq (G x) : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  push_cast
  field_simp
  ring

end

end ReciprocityTheory.L2DbarEstimates.Y
