module

public import Development.AbelianVarietyTheory.Definitions.Degenerations.NotAllMatchRankZero
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero
import Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNorms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNormsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNorms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNorms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.NotAllMatchRankZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.MBLow

theorem exists_form_of_discrete_norms : ∀ (C : Type) [NormedField C] [IsAlgClosed C] (N : NumD C) (q : QuadraticMap ℤ N.X ℝ) (t : C), N.Int q → t ≠ 0 → ‖t‖ < 1 → (∀ χ, ∃ n : ℤ, ‖(N.ψ χ : C)‖ = ‖t‖ ^ n) → ∀ m : ℕ, 1 ≤ m → ∃ (β : N.Form (m ^ 2)) (π : C), π ≠ 0 ∧ ‖π‖ < 1 ∧ (∀ n : ℕ, {α | (β.be α α / (2 * m ^ 2)).toNat = n}.Finite) ∧ ∀ α, Real.exp (-(q α / (m : ℝ) ^ 2)) = ‖π‖ ^ (β.be α α / (2 * m ^ 2)).toNat := by
  intro C _ _ N q t hI ht0 ht1 hψ m hm
  have htpos : 0 < ‖t‖ := norm_pos_iff.2 ht0
  set L : ℝ := -Real.log ‖t‖ with hL
  have hLpos : 0 < L := by
    have := Real.log_neg htpos ht1
    linarith
  clear_value L
  choose Q hQ using hψ
  have hq : ∀ χ, q χ = (Q χ : ℝ) * L := by
    intro χ
    have h1 := hI.ψ χ
    rw [hQ χ] at h1
    have h2 : Real.log (‖t‖ ^ Q χ) = -q χ := by rw [h1, Real.log_exp]
    rw [Real.log_zpow] at h2
    rw [hL]; linarith
  set Bf : N.X → N.X → ℤ := fun x y => Q (x + y) - Q x - Q y with hBf
  have hB : ∀ x y, (Bf x y : ℝ) = QuadraticMap.polar q x y / L := by
    intro x y
    rw [eq_div_iff hLpos.ne']
    simp only [hBf, QuadraticMap.polar, hq]
    push_cast; ring
  have inj : ∀ a b : ℤ, (a : ℝ) = b → a = b := fun a b h => Int.cast_inj.1 h
  let Bm : LinearMap.BilinForm ℤ N.X := LinearMap.mk₂ ℤ Bf
    (fun x x' y => inj _ _ (by rw [Int.cast_add, hB, hB, hB, QuadraticMap.polar_add_left, add_div]))
    (fun c x y => inj _ _ (by rw [smul_eq_mul, Int.cast_mul, hB, hB, QuadraticMap.polar_smul_left, zsmul_eq_mul, mul_div_assoc]))
    (fun x y y' => inj _ _ (by rw [Int.cast_add, hB, hB, hB, QuadraticMap.polar_add_right, add_div]))
    (fun c x y => inj _ _ (by rw [smul_eq_mul, Int.cast_mul, hB, hB, QuadraticMap.polar_smul_right, zsmul_eq_mul, mul_div_assoc]))
  have hBm : ∀ x y, Bm x y = Bf x y := fun x y => rfl
  have hdiag : ∀ x, Bf x x = 2 * Q x := by
    intro x
    apply inj
    rw [hB, QuadraticMap.polar_self, hq, nsmul_eq_mul]
    push_cast
    field_simp
  have hsymm : ∀ x y, Bf x y = Bf y x := by
    intro x y; simp only [hBf, add_comm x y]; ring
  have hpos : ∀ y, y ≠ 0 → 0 < q y := by
    intro y hy
    by_contra hn
    push_neg at hn
    have hfin : {α | ¬ (0 < q α)}.Finite :=
      Filter.eventually_cofinite.1 (hI.pos.eventually (Filter.eventually_gt_atTop 0))
    have hinf : (Set.range fun c : ℤ => c • y).Infinite :=
      Set.infinite_range_of_injective (smul_left_injective ℤ hy)
    refine hinf (hfin.subset ?_)
    rintro _ ⟨c, rfl⟩
    simp only [Set.mem_setOf_eq, not_lt]
    rw [QuadraticMap.map_smul, zsmul_eq_mul]
    push_cast
    nlinarith [mul_self_nonneg (c : ℝ)]
  have hQnn : ∀ y, 0 ≤ Q y := by
    intro y
    by_cases hy : y = 0
    · subst hy
      have : (Q 0 : ℝ) * L = 0 := by rw [← hq, QuadraticMap.map_zero]
      have : (Q 0 : ℝ) = 0 := by
        rcases mul_eq_zero.1 this with h | h
        · exact h
        · exact absurd h hLpos.ne'
      exact_mod_cast this.ge
    · have := hpos y hy
      rw [hq] at this
      have : (0 : ℝ) < Q y := pos_of_mul_pos_left this hLpos.le
      exact_mod_cast this.le
  have hQpos : ∀ y, y ≠ 0 → 0 < Q y := by
    intro y hy
    have := hpos y hy
    rw [hq] at this
    have : (0 : ℝ) < Q y := pos_of_mul_pos_left this hLpos.le
    exact_mod_cast this
  have hm0 : (2 * (m : ℤ) ^ 2) ≠ 0 := by positivity
  let β : N.Form (m ^ 2) :=
    { be := (2 * (m : ℤ) ^ 2) • Bm
      symm := fun y z => by
        simp only [LinearMap.smul_apply, hBm, hsymm y z]
      pos := fun y hy => by
        simp only [LinearMap.smul_apply, hBm, hdiag, smul_eq_mul]
        have := hQpos y hy
        positivity
      dvd := fun y z => ⟨Bf y z, by simp [LinearMap.smul_apply, hBm]⟩ }
  have hβ : ∀ α, β.be α α / (2 * m ^ 2) = 2 * Q α := by
    intro α
    show ((2 * (m : ℤ) ^ 2) • Bm) α α / (2 * m ^ 2) = 2 * Q α
    rw [LinearMap.smul_apply, LinearMap.smul_apply, smul_eq_mul, hBm, hdiag, Int.mul_ediv_cancel_left _ hm0]
  have hn : 0 < 2 * m ^ 2 := by positivity
  obtain ⟨π, hπ⟩ := IsAlgClosed.exists_pow_nat_eq t hn
  have hπ0 : π ≠ 0 := by rintro rfl; exact ht0 (by rw [← hπ, zero_pow hn.ne'])
  have hπn : ‖π‖ ^ (2 * m ^ 2) = ‖t‖ := by rw [← norm_pow, hπ]
  have hπpos : 0 < ‖π‖ := norm_pos_iff.2 hπ0
  have hπ1 : ‖π‖ < 1 := by
    by_contra h
    push_neg at h
    have := one_le_pow₀ (n := 2 * m ^ 2) h
    rw [hπn] at this
    linarith
  have hlp : Real.log ‖π‖ * (2 * (m : ℝ) ^ 2) = -L := by
    rw [hL, ← hπn, Real.log_pow]; push_cast; ring
  refine ⟨β, π, hπ0, hπ1, fun n => ?_, fun α => ?_⟩
  · have hfin : {α | ¬ ((n : ℝ) * L < q α)}.Finite :=
      Filter.eventually_cofinite.1 (hI.pos.eventually (Filter.eventually_gt_atTop _))
    refine hfin.subset fun α hα => ?_
    simp only [Set.mem_setOf_eq, hβ] at hα ⊢
    rw [not_lt, hq]
    have h1 : (2 * Q α) = (n : ℤ) := by
      rw [← hα, Int.toNat_of_nonneg (by linarith [hQnn α])]
    have h2 : (Q α : ℝ) ≤ n := by
      have : Q α ≤ (n : ℤ) := by linarith [hQnn α]
      exact_mod_cast this
    nlinarith
  · have hc : ((2 * Q α).toNat : ℝ) = 2 * (Q α : ℝ) := by
      have := Int.toNat_of_nonneg (show 0 ≤ 2 * Q α by linarith [hQnn α])
      exact_mod_cast this
    rw [hβ, ← Real.exp_log hπpos, ← Real.exp_nat_mul, hc, hq]
    congr 1
    have hm2 : (0 : ℝ) < (m : ℝ) ^ 2 := by
      have : (0 : ℝ) < m := by exact_mod_cast hm
      positivity
    have e : Real.log ‖π‖ = -L / (2 * (m : ℝ) ^ 2) := by
      rw [eq_div_iff (by positivity)]; exact hlp
    rw [e]
    field_simp

end GlobalTheory.MBLow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNorms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNormsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNormsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.NotAllMatchRankZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNorms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralFormParameterOfDiscreteNormsStatement =====
