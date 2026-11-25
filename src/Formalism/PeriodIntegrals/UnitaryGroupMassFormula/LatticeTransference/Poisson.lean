module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.DualTransport
public import Mathlib.LinearAlgebra.BilinearForm.DualLattice
public import Formalism.LatticeTheta.ThetaShiftInversion
public import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Analysis.SpecialFunctions.Gaussian.PoissonSummation
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.InstIsZLatticeDualLat, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Poisson

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.InstIsZLatticeDualLat =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.InstIsZLatticeDualLat", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.DualTransport\npublic import Mathlib.LinearAlgebra.BilinearForm.DualLattice\npublic import Formalism.LatticeTheta.ThetaShiftInversion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module

noncomputable section

namespace PI.Tr

variable {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

theorem dualLat_eq (Λ : Submodule ℤ E) :
    dualLat Λ = LinearMap.BilinForm.dualSubmodule (innerₗ E) Λ := by
  ext y
  rw [LinearMap.BilinForm.mem_dualSubmodule]
  show (∀ x ∈ Λ, ∃ n : ℤ, inner ℝ x y = (n : ℝ)) ↔ _
  refine forall₂_congr fun x _ => ?_
  rw [innerₗ_apply_apply, real_inner_comm, Submodule.mem_one]
  simp only [algebraMap_int_eq, eq_intCast]
  exact ⟨fun ⟨n, hn⟩ => ⟨n, hn.symm⟩, fun ⟨n, hn⟩ => ⟨n, hn.symm⟩⟩

section lattice

variable [FiniteDimensional ℝ E] (Λ : Submodule ℤ E) [DiscreteTopology Λ] [IsZLattice ℝ Λ]

instance instDiscreteDualLat : DiscreteTopology (dualLat Λ) := by
  letI : MeasurableSpace E := borel E
  haveI : BorelSpace E := ⟨rfl⟩
  rw [dualLat_eq]
  exact (Formalism.H.dualIsLattice E Λ).1

end lattice

end PI.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.InstIsZLatticeDualLat =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Poisson =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Poisson", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.DualTransport\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.InstIsZLatticeDualLat\nimport Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Fourier.AddCircleMulti\npublic import Mathlib.Analysis.InnerProductSpace.Dual\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Module
open scoped Real FourierTransform RealInnerProductSpace

noncomputable section

namespace PI.Tr

private theorem isBigO_cexp_neg_mul_norm_sq {E : Type} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [FiniteDimensional ℝ E] {a : ℝ} (ha : 0 < a) (b : ℝ) :
    (fun v : E => (Real.exp (-a * ‖v‖ ^ 2) : ℂ)) =O[Filter.cocompact E]
      (fun v => ‖v‖ ^ (-b)) := by
  have h1 : (fun x : ℝ => Real.exp (-a * x ^ 2)) =o[Filter.atTop] (· ^ (-b)) := by
    simpa using rexp_neg_quadratic_isLittleO_rpow_atTop (neg_lt_zero.mpr ha) 0 (-b)
  have h2 := (h1.comp_tendsto (tendsto_norm_cocompact_atTop (E := E))).isBigO
  exact Asymptotics.IsBigO.of_norm_left <| by
    simpa only [Function.comp_def, Complex.norm_real, Real.norm_of_nonneg (Real.exp_pos _).le]
      using h2

private theorem fourier_gauss_eq {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E] {t : ℝ} (ht : 0 < t) :
    (𝓕 fun v : E => (Real.exp (-π * t * ‖v‖ ^ 2) : ℂ)) =
      fun w : E => ((t ^ (-(finrank ℝ E : ℝ) / 2) * Real.exp (-π * ‖w‖ ^ 2 / t) : ℝ) : ℂ) := by
  ext w
  have hfun : (fun v : E => (Real.exp (-π * t * ‖v‖ ^ 2) : ℂ)) =
      fun v : E => Complex.exp (-((π * t : ℝ) : ℂ) * (‖v‖ : ℂ) ^ 2) := by
    ext v
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  rw [hfun, fourier_gaussian_innerProductSpace (by simp; positivity) w]
  have e1 : ((π : ℂ) / ((π * t : ℝ) : ℂ)) ^ ((finrank ℝ E : ℂ) / 2) =
      ((t ^ (-(finrank ℝ E : ℝ) / 2) : ℝ) : ℂ) := by
    rw [show ((π : ℂ) / ((π * t : ℝ) : ℂ)) = ((t⁻¹ : ℝ) : ℂ) by push_cast; field_simp,
      show ((finrank ℝ E : ℂ) / 2) = (((finrank ℝ E : ℝ) / 2 : ℝ) : ℂ) by push_cast; rfl,
      ← Complex.ofReal_cpow (by positivity), Real.inv_rpow ht.le, ← Real.rpow_neg ht.le, neg_div]
  have e2 : Complex.exp (-(π : ℂ) ^ 2 * (‖w‖ : ℂ) ^ 2 / ((π * t : ℝ) : ℂ)) =
      (Real.exp (-π * ‖w‖ ^ 2 / t) : ℂ) := by
    rw [Complex.ofReal_exp]
    congr 1
    have : (π : ℂ) ≠ 0 := mod_cast Real.pi_ne_zero
    push_cast
    field_simp
  rw [e1, e2, ← Complex.ofReal_mul]

theorem poissonGauss : PoissonGauss := by
  intro E _ _ _ Λ _ _
  let _ : MeasurableSpace E := borel E
  have : BorelSpace E := ⟨rfl⟩
  obtain ⟨hDisc, hZLat⟩ := Formalism.H.dualIsLattice E Λ
  have : DiscreteTopology (Formalism.H.dual Λ) := hDisc
  have : IsZLattice ℝ (Formalism.H.dual Λ) := hZLat
  rw [show dualLat Λ = Formalism.H.dual Λ from dualLat_eq Λ]
  let b : ℝ := (finrank ℝ E : ℝ) + 1
  have hb : (finrank ℝ E : ℝ) < b := lt_add_one _
  have hfO : ∀ {t : ℝ}, 0 < t →
      (fun w : E => (Real.exp (-π * t * ‖w‖ ^ 2) : ℂ)) =O[Filter.cocompact E]
        (fun w => ‖w‖ ^ (-b)) := fun ht =>
    (isBigO_cexp_neg_mul_norm_sq (mul_pos Real.pi_pos ht) b).congr_left fun _ => by congr 2; ring
  have hgO : ∀ {t : ℝ}, 0 < t →
      (fun w : E => (Real.exp (-π * ‖w‖ ^ 2 / t) : ℂ)) =O[Filter.cocompact E]
        (fun w => ‖w‖ ^ (-b)) := fun ht =>
    (isBigO_cexp_neg_mul_norm_sq (div_pos Real.pi_pos ht) b).congr_left fun _ => by congr 2; ring
  refine ⟨fun t ht v => Complex.summable_ofReal.mp
      ((Formalism.H.poisson_periodization E Λ _ (by fun_prop) b hb (hfO ht)).2.1 v),
    fun t ht => Complex.summable_ofReal.mp
      (Formalism.H.lattice_summable_decay E (Formalism.H.dual Λ) _ b hb (hgO ht)),
    (ZLattice.covolume Λ)⁻¹, inv_pos.mpr (ZLattice.covolume_pos Λ MeasureTheory.volume),
    fun t ht v => ?_⟩
  set f : E → ℂ := fun w => (Real.exp (-π * t * ‖w‖ ^ 2) : ℂ)
  have hFf := fourier_gauss_eq (E := E) ht
  have hFO : (𝓕 f : E → ℂ) =O[Filter.cocompact E] (fun w => ‖w‖ ^ (-b)) := by
    rw [hFf]
    simpa only [Complex.ofReal_mul] using
      (hgO ht).const_mul_left ((t ^ (-(finrank ℝ E : ℝ) / 2) : ℝ) : ℂ)
  obtain ⟨hsum, hhas⟩ := Formalism.H.poissonDecay E Λ f (by fun_prop) b hb (hfO ht) hFO v
  have hre := (Complex.reCLM.hasSum hhas).tsum_eq
  have htsum := Complex.reCLM.map_tsum hsum
  simp only [f, Complex.reCLM_apply, Complex.ofReal_re, ← Complex.ofReal_inv,
    Complex.re_ofReal_mul] at hre htsum
  rw [hre, htsum, ← tsum_mul_left, ← tsum_mul_left]
  refine tsum_congr fun μ => ?_
  simp only [hFf, Complex.re_ofReal_mul]
  rw [show 2 * π * Complex.I * ((⟪(μ : E), v⟫ : ℝ) : ℂ) =
      ((2 * π * inner ℝ (μ : E) v : ℝ) : ℂ) * Complex.I by push_cast; ring,
    Complex.exp_ofReal_mul_I_re]
  ring

end PI.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Poisson =====
